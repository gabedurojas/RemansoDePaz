unit CapaDatos;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, ADODB, Provider, DBClient,
  Variants, WSDLIntf, MidasLib;

type
  TCapaDatos = Class(TObject)
  private
  { Private declarations }
    FConceccionSQL:TADOConnection;
    FADOQuery:TADOQuery;
    FConnectionString:widestring;
    FDataSetProvider: TDataSetProvider;
    FADOStoredProc: TADOStoredProc;
    procedure SetConection(Cn:TADOConnection);
    procedure SetConnectionString(value:widestring);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent); //override;

    property ConceccionSQL:TADOConnection read FConceccionSQL write SetConection;
    property ConnectionString:widestring read FConnectionString write SetConnectionString;

    Function BuscarSP(NombreSP:string; SQLParametros:TWideStrings; var TablaResult:TClientDataSet; MaxRecord:integer):boolean;
    Function EjecutarSinResp(NombreSP:string; SQLParametros:TWideStrings):boolean;
    Function QueryLibre(Consulta:widestring; var TablaResult:TClientDataSet):boolean;
    Function QueryLibreSinResp(Consulta:widestring):boolean;
    Procedure EnviarLog(NombreVentana:string;Texto:widestring);
  end;

implementation

constructor TCapaDatos.Create(AOwner:TComponent);
begin
  inherited Create();
end;

procedure TCapaDatos.SetConection(Cn:TADOConnection);
begin
  FConceccionSQL:=Cn;
end;

procedure TCapaDatos.SetConnectionString(value:widestring);
begin
  FConnectionString:=value;
end;

Function TCapaDatos.BuscarSP(NombreSP:string; SQLParametros:TWideStrings; var TablaResult:TClientDataSet;
          MaxRecord:integer):boolean;
var Rfg,LstPrm:integer;
begin
 try
  //Instancio la Conexion
  FConceccionSQL:=TADOConnection.Create(nil);
  FConceccionSQL.LoginPrompt:=false;
  FConceccionSQL.ConnectionString:=FConnectionString;

  //Instancio el StoredProc
  FADOStoredProc:=TADOStoredProc.Create(nil);
  FADOStoredProc.Connection:=FConceccionSQL;
  FADOStoredProc.ProcedureName:=NombreSP;

  //Instancio el Provider
  FDataSetProvider:=TDataSetProvider.Create(nil);
  FDataSetProvider.DataSet:=FADOStoredProc;

  //defino que el Provider va ser mi enlace de datos
  TablaResult.SetProvider(FDataSetProvider);

  //Obtengo la lista de parametros y tipo de los mismos
  FADOStoredProc.Parameters.Refresh;
  if (SQLParametros.Count = 0) then begin
   with FADOStoredProc do begin
    for Rfg:=0 to FADOStoredProc.Parameters.Count-1 do begin
     if (Parameters[Rfg].Direction = pdInput) then begin
      if Parameters[Rfg].Name = '@Top' then Parameters[Rfg].Value:=MaxRecord
      else begin
        Parameters[Rfg].Value:=null;
        Parameters[Rfg].Attributes:=[paNullable];
      end;
     end;
    end;
   end;
  end
  else begin
   LstPrm:=0;
   with FADOStoredProc do begin
    //Recorro los parametros y busco solo los de input
    for Rfg:=0 to FADOStoredProc.Parameters.Count-1 do begin
     if (Parameters[Rfg].Direction = pdInput) then begin
      if Parameters[Rfg].Name = '@Top' then Parameters[Rfg].Value:=MaxRecord
      else begin
       if (LstPrm >= SQLParametros.Count) then begin
        Parameters[Rfg].Attributes:=[paNullable];
        Parameters[Rfg].Value:=null;
       end
       else begin
        if (trim(SQLParametros[LstPrm]) = '') then begin
         Parameters[Rfg].Attributes:=[paNullable];
         Parameters[Rfg].Value:=null;
        end
        else begin
         if Parameters[Rfg].DataType = ftInteger then Parameters[Rfg].Value:=strtoint(SQLParametros[LstPrm])
         else if Parameters[Rfg].DataType = ftSmallint then Parameters[Rfg].Value:=strtoint(SQLParametros[LstPrm])
         else if Parameters[Rfg].DataType = ftBytes then Parameters[Rfg].Value:=strtoint(SQLParametros[LstPrm])
         else if Parameters[Rfg].DataType = ftWord then Parameters[Rfg].Value:=strtoint(SQLParametros[LstPrm])
         else if Parameters[Rfg].DataType = ftLargeint then Parameters[Rfg].Value:=strtoint64(SQLParametros[LstPrm])
         else if (Parameters[Rfg].DataType = ftFloat) or (Parameters[Rfg].DataType = ftBCD) then Parameters[Rfg].Value:=strtofloat(SQLParametros[LstPrm])
         else if Parameters[Rfg].DataType = ftBoolean then begin
          if (UpperCase(SQLParametros[LstPrm]) = 'TRUE') or (UpperCase(SQLParametros[LstPrm]) = 'SI') or (UpperCase(SQLParametros[LstPrm]) = '1') then
           Parameters[Rfg].Value:=1
           else Parameters[Rfg].Value:=0;
         end
         else if Parameters[Rfg].DataType = ftDateTime then Parameters[Rfg].Value:=strtoDateTime(SQLParametros[LstPrm])
         else begin
           if length(SQLParametros[LstPrm])> Parameters[Rfg].Size then Parameters[Rfg].Value:=LeftStr(SQLParametros[LstPrm],Parameters[Rfg].Size)
           else Parameters[Rfg].Value:=SQLParametros[LstPrm];
         end;
        end;
       end;
       LstPrm:=LstPrm + 1;
      end;
     end;
    end;
   end;
  end;
  //Obtengo el Resultado del SP
  FADOStoredProc.Open;
  //Se copian los datos al DataSet pasado por referencia
  TablaResult.Open;

  FADOStoredProc.Close;
  FConceccionSQL.Close;

  FADOStoredProc.Free;
  FDataSetProvider.Free;
  FConceccionSQL.Free;
  Result:=true;        
 except
  On E : Exception  do begin
    EnviarLog('SP con Respuesta: ' + NombreSP,E.Message);
    Result:=false;
  end;
 end;
end;

Function TCapaDatos.EjecutarSinResp(NombreSP:string; SQLParametros:TWideStrings):boolean;
var Rfg,LstPrm:integer;
begin
 try
  //Instancio la Conexion
  FConceccionSQL:=TADOConnection.Create(nil);
  FConceccionSQL.LoginPrompt:=false;
  FConceccionSQL.ConnectionString:=FConnectionString;

  //Instancio el StoredProc
  FADOStoredProc:=TADOStoredProc.Create(nil);
  FADOStoredProc.Connection:=FConceccionSQL;
  FADOStoredProc.ProcedureName:=NombreSP;

  //Obtengo la lista de parametros y tipo de los mismos
  FADOStoredProc.Parameters.Refresh;
  if (SQLParametros.Count = 0) then begin
   with FADOStoredProc do begin
    for Rfg:=0 to FADOStoredProc.Parameters.Count-1 do begin
     if (Parameters[Rfg].Direction = pdInput) then begin
      Parameters[Rfg].Attributes:=[paNullable];
      if Parameters[Rfg].Name = '@Top' then Parameters[Rfg].Value:=0
       else Parameters[Rfg].Value:=null;
     end;
    end;
   end;
  end
  else begin
   LstPrm:=0;
   with FADOStoredProc do begin
    //Recorro los parametros y busco solo los de input
    for Rfg:=0 to FADOStoredProc.Parameters.Count-1 do begin
     if (Parameters[Rfg].Direction = pdInput) then begin
      if (LstPrm >= SQLParametros.Count) then begin
        Parameters[Rfg].Attributes:=[paNullable];
        Parameters[Rfg].Value:=null;
      end
      else begin
       if (trim(SQLParametros[LstPrm]) = '') then begin
        Parameters[Rfg].Attributes:=[paNullable];
        Parameters[Rfg].Value:=null;
       end
       else begin
        if Parameters[Rfg].DataType = ftInteger then Parameters[Rfg].Value:=strtoint(SQLParametros[LstPrm])
        else if Parameters[Rfg].DataType = ftSmallint then Parameters[Rfg].Value:=strtoint(SQLParametros[LstPrm])
        else if Parameters[Rfg].DataType = ftBytes then Parameters[Rfg].Value:=strtoint(SQLParametros[LstPrm])
        else if Parameters[Rfg].DataType = ftWord then Parameters[Rfg].Value:=strtoint(SQLParametros[LstPrm])
        else if Parameters[Rfg].DataType = ftLargeint then Parameters[Rfg].Value:=strtoint64(SQLParametros[LstPrm])
        else if (Parameters[Rfg].DataType = ftFloat) or (Parameters[Rfg].DataType = ftBCD) then Parameters[Rfg].Value:=strtofloat(SQLParametros[LstPrm])
        else if Parameters[Rfg].DataType = ftBoolean then begin
         if (UpperCase(SQLParametros[LstPrm]) = 'TRUE') or (UpperCase(SQLParametros[LstPrm]) = 'SI') or (UpperCase(SQLParametros[LstPrm]) = '1') then
          Parameters[Rfg].Value:=true
         else
          Parameters[Rfg].Value:=false;
        end
        else if Parameters[Rfg].DataType = ftDateTime then Parameters[Rfg].Value:=strtoDateTime(SQLParametros[LstPrm])
        //else if Parameters[Rfg].DataType = ftInteger then Parameters[Rfg].Value:=strtointeger(SQLParametros[LstPrm])
        else begin
         if length(SQLParametros[LstPrm])> Parameters[Rfg].Size then Parameters[Rfg].Value:=LeftStr(SQLParametros[LstPrm],Parameters[Rfg].Size)
         else Parameters[Rfg].Value:=SQLParametros[LstPrm];
        end;
       end;
      end;
      LstPrm:=LstPrm + 1;
     end;
    end;
   end;
  end;
  //Ejecuto el Transac SQL sin espera de respuesta
  FADOStoredProc.ExecProc;

  FADOStoredProc.Close;
  FConceccionSQL.Close;

  FADOStoredProc.Free;
  FConceccionSQL.Free;
  Result:=true;
 except
  On E : Exception do begin
    EnviarLog('SP sin Respuesta: ' + NombreSP,E.Message);
    Result:=false;
  end;
 end;
end;

Function TCapaDatos.QueryLibre(Consulta:widestring; var TablaResult:TClientDataSet):boolean;
begin
 try
  //Instancio la Conexion
  FConceccionSQL:=TADOConnection.Create(nil);
  FConceccionSQL.LoginPrompt:=false;
  FConceccionSQL.ConnectionString:=FConnectionString;

  //Instancio el Query
  FADOQuery:=TADOQuery.Create(nil);
  FADOQuery.Connection:=FConceccionSQL;
  FADOQuery.SQL.Text:=Consulta;

  //Instancio el Provider
  FDataSetProvider:=TDataSetProvider.Create(nil);
  FDataSetProvider.DataSet:=FADOQuery;

  //defino que el Provider va ser mi enlace de datos
  TablaResult.SetProvider(FDataSetProvider);

   //Obtengo el Resultado del SP
  FADOQuery.Open;
  //Se copian los datos al DataSet pasado por referencia
  TablaResult.Open;

  FADOQuery.Free;
  FDataSetProvider.Free;
  FConceccionSQL.Free;
  Result:=true;
  except
  On E : Exception do begin
    EnviarLog('Consulta Libre : ' + Consulta,E.Message);
    Result:=false;
  end;
 end;
end;

Function TCapaDatos.QueryLibreSinResp(Consulta:widestring):boolean;
var CantReg:integer;
begin
 try
  //Instancio la Conexion
  FConceccionSQL:=TADOConnection.Create(nil);
  FConceccionSQL.LoginPrompt:=false;
  FConceccionSQL.ConnectionString:=FConnectionString;

  //Instancio el Query
  FADOQuery:=TADOQuery.Create(nil);
  FADOQuery.Connection:=FConceccionSQL;
  FADOQuery.SQL.Text:=Consulta;

   //Obtengo el Resultado del SP
  CantReg:=FADOQuery.ExecSQL;
  if CantReg > 0 then Result:=true
  else Result:=false;
  FADOQuery.Free;
  FConceccionSQL.Free;
  except
  On E : Exception do begin
    EnviarLog('Consulta Libre : ' + Consulta,E.Message);
    Result:=false;
  end;
 end;
end;

Procedure TCapaDatos.EnviarLog(NombreVentana:string;Texto:widestring);
var ru1:string;
       fichero1:textfile;
       ty:char;rt,hf,hg:byte;
begin
  ru1:=getcurrentdir() + '\Datos\Log.txt';
  assignfile(fichero1,ru1);
  if not FileExists(ru1) then Rewrite(fichero1)
  else Append(fichero1);
  Writeln(fichero1,NombreVentana + ' - ' + DateTimeToStr(now()) + ' - ' + Texto);
  closefile(fichero1);
end;

end.

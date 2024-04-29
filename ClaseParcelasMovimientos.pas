unit ClaseParcelasMovimientos;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TParcelasMovimientos= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    Fid:variant;
    FNroAccion:variant;
    Fusua_a:variant;
    FFecha:string;
    FObser:widestring;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure Setid(Value:variant);
    procedure SetNroAccion(Value:variant);
    procedure Setusua_a(Value:variant);
    procedure SetFecha(Value:string);
    procedure SetObser(Value:widestring);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_id_PK:variant read Fid write Setid;
    property C_NroAccion:variant read FNroAccion write SetNroAccion;
    property C_usua_a:variant read Fusua_a write Setusua_a;
    property C_Fecha:string read FFecha write SetFecha;
    property C_Obser:widestring read FObser write SetObser;

  {Declaracion de Metodos}
    Function BuscarPK(ValorBuscado:String):boolean;
    Function ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; MaxRecord:integer):boolean;
    Function Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
    Function ListarSinResp(Consulta:widestring):boolean;
    Function Agrega():boolean;
    Function Borrar(ValorBuscado:string):boolean;
    Function Modificar():boolean;

  Published
    { Published declarations }
  end;

  var FCapaDatos:TCapaDatos;

implementation

constructor TParcelasMovimientos.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=5;
end;

procedure TParcelasMovimientos.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TParcelasMovimientos.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TParcelasMovimientos.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TParcelasMovimientos.Setid(Value:variant);
begin
  Fid:=Value;
end;

procedure TParcelasMovimientos.SetNroAccion(Value:variant);
begin
  FNroAccion:=Value;
end;

procedure TParcelasMovimientos.Setusua_a(Value:variant);
begin
  Fusua_a:=Value;
end;

procedure TParcelasMovimientos.SetFecha(Value:string);
begin
  FFecha:=Value;
end;

procedure TParcelasMovimientos.SetObser(Value:widestring);
begin
  FObser:=Value;
end;

Function TParcelasMovimientos.BuscarPK(ValorBuscado:String):boolean;
var DataSet:TClientDataSet;
    Parametros:TWideStrings;
begin
//Instancio el DataSet
DataSet:=TClientDataSet.Create(nil);

//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(ValorBuscado);

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasMovimientosConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_id_PK:=DataSet.FieldByName('id').AsVariant;
  C_NroAccion:=DataSet.FieldByName('NroAccion').AsVariant;
  C_usua_a:=DataSet.FieldByName('usua_a').AsVariant;
  C_Fecha:=DataSet.FieldByName('Fecha').AsString;
  C_Obser:=DataSet.FieldByName('Obser').AsVariant;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TParcelasMovimientos.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasMovimientosConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasMovimientos.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasMovimientos.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasMovimientos.Agrega():boolean;
var DataSet:TClientDataSet;
    Parametros:TWideStrings;
begin
//Instancio el DataSet
DataSet:=TClientDataSet.Create(nil);

//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
if (C_NroAccion = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroAccion));
if (C_usua_a = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_usua_a));
Parametros.Add(C_Fecha);
Parametros.Add(C_Obser);

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasMovimientosInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TParcelasMovimientos.Borrar(ValorBuscado:string):boolean;
var Parametros:TWideStrings;
begin

//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(ValorBuscado);

//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasMovimientosEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TParcelasMovimientos.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_id_PK));
if (C_NroAccion = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroAccion));
if (C_usua_a = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_usua_a));
Parametros.Add(C_Fecha);
Parametros.Add(C_Obser);


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasMovimientosModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

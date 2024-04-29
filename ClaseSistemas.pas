unit ClaseSistemas;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TSistemas= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FResultado: string;
    procedure SetConnectionString(Value:widestring);
    procedure SetResultado(Value:string);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Resultado:string read FResultado write SetResultado;

  {Declaracion de Metodos}
    Function Run_DarMaximoNro(var Parametros:TWideStrings):boolean;
    Function Run_FechaServidor():boolean;
    Function Run_Encriptar(var Parametros:TWideStrings):boolean;
    Function Run_TodosLoginSinMod(var Parametros:TWideStrings):boolean;
    Function Run_TodosLoginConMod(var Parametros:TWideStrings):boolean;
    Function Run_CreaCUIM(var Parametros:TWideStrings):boolean;
    Function ExecProcSinResp(NombreSP:string; var Parametros:TWideStrings):boolean;
    Function Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
    Function ListarSinResp(Consulta:widestring):boolean;
    Function ListarSP(var Parametros:TWideStrings; StoredProcName:string; var DataSet:TClientDataSet):boolean;
  Published
    { Published declarations }
  end;

  var FCapaDatos:TCapaDatos;

implementation

constructor TSistemas.Create(AOwner:TComponent);
begin
  inherited Create();
end;

procedure TSistemas.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TSistemas.SetResultado(Value:string);
begin
  FResultado:=Value;
end;


Function TSistemas.Run_DarMaximoNro(var Parametros:TWideStrings):boolean;
var DataSet:TClientDataSet;
begin
//Instancio el DataSet
DataSet:=TClientDataSet.Create(nil);

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('darmaximonro',Parametros,DataSet,0);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  Resultado:=DataSet.Fields[0].AsString;
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
end;

Function TSistemas.Run_CreaCUIM(var Parametros:TWideStrings):boolean;
var DataSet:TClientDataSet;
    ConsultaSql:widestring;
begin
//Instancio el DataSet
DataSet:=TClientDataSet.Create(nil);

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

ConsultaSql:= 'SELECT * FROM TodosCUIF (' + Parametros[0] + ' , '  + chr(39) +
  Parametros[1] + chr(39) + ');';
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(ConsultaSql,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  Resultado:=DataSet.Fields[0].AsString;
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
end;

Function TSistemas.Run_FechaServidor():boolean;
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
Parametros.Add('');

//Realizo la Consulta
Result:=Fcapadatos.BuscarSP('Fecha',Parametros,Dataset,0) ;
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  Resultado:=DataSet.Fields[0].AsString; 
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TSistemas.Run_Encriptar(var Parametros:TWideStrings):boolean;
var DataSet:TClientDataSet;
begin
//Instancio el DataSet
DataSet:=TClientDataSet.Create(nil);

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('Encriptar',Parametros,DataSet,0);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  Resultado:=DataSet.Fields[0].AsString;
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
end;

Function TSistemas.Run_TodosLoginSinMod(var Parametros:TWideStrings):boolean;
var DataSet:TClientDataSet;
begin
//Instancio el DataSet
DataSet:=TClientDataSet.Create(nil);

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('todos_loguinSinmod',Parametros,DataSet,0);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  Resultado:=DataSet.Fields[0].AsString;
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
end;


Function TSistemas.Run_TodosLoginConMod(var Parametros:TWideStrings):boolean;
var DataSet:TClientDataSet;
begin
//Instancio el DataSet
DataSet:=TClientDataSet.Create(nil);

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('todos_loguinConmod',Parametros,DataSet,0);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  Resultado:=DataSet.Fields[0].AsString;
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
end;

Function TSistemas.ExecProcSinResp(NombreSP:string; var Parametros:TWideStrings):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp(NombreSP,Parametros);

//Libero Memoria
FCapaDatos.Free;
end;

Function TSistemas.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TSistemas.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;


Function TSistemas.ListarSP(var Parametros:TWideStrings; StoredProcName:string; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP(StoredProcName,Parametros,DataSet,0);

//Libero Memoria
FCapaDatos.Free;
end;
end.

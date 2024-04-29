unit ClasePosnet_Terminales;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TPosnet_Terminales= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FIdTerminal:variant;
    FNombre:string;
    FDeshabilitado:boolean;
    FCuifCobrador:variant;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetIdTerminal(Value:variant);
    procedure SetNombre(Value:string);
    procedure SetDeshabilitado(Value:boolean);
    procedure SetCuifCobrador(Value:variant);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_IdTerminal_PK:variant read FIdTerminal write SetIdTerminal;
    property C_Nombre:string read FNombre write SetNombre;
    property C_Deshabilitado:boolean read FDeshabilitado write SetDeshabilitado;
    property C_CuifCobrador:variant read FCuifCobrador write SetCuifCobrador;

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

constructor TPosnet_Terminales.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=4;
end;

procedure TPosnet_Terminales.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TPosnet_Terminales.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TPosnet_Terminales.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TPosnet_Terminales.SetIdTerminal(Value:variant);
begin
  FIdTerminal:=Value;
end;

procedure TPosnet_Terminales.SetNombre(Value:string);
begin
  FNombre:=Value;
end;

procedure TPosnet_Terminales.SetDeshabilitado(Value:boolean);
begin
  FDeshabilitado:=Value;
end;

procedure TPosnet_Terminales.SetCuifCobrador(Value:variant);
begin
  FCuifCobrador:=Value;
end;

Function TPosnet_Terminales.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_Posnet_TerminalesConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_IdTerminal_PK:=DataSet.FieldByName('IdTerminal').AsVariant;
  C_Nombre:=DataSet.FieldByName('Nombre').AsString;
  C_Deshabilitado:=DataSet.FieldByName('Deshabilitado').AsBoolean;
  C_CuifCobrador:=StrToInt64(DataSet.FieldByName('CuifCobrador').AsString);
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TPosnet_Terminales.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_Posnet_TerminalesConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TPosnet_Terminales.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TPosnet_Terminales.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TPosnet_Terminales.Agrega():boolean;
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
if (C_IdTerminal_PK = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdTerminal_PK));
Parametros.Add(C_Nombre);
if C_Deshabilitado then Parametros.Add('1')
else Parametros.Add('0');
if (C_CuifCobrador = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuifCobrador));

//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_Posnet_TerminalesInsertar',Parametros);

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TPosnet_Terminales.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_Posnet_TerminalesEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TPosnet_Terminales.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
if (C_IdTerminal_PK = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdTerminal_PK));
Parametros.Add(C_Nombre);
if C_Deshabilitado then Parametros.Add('1')
else Parametros.Add('0');
if (C_CuifCobrador = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuifCobrador));


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_Posnet_TerminalesModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

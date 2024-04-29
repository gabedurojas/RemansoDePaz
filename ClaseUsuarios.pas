unit ClaseUsuarios;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TUsuarios= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FCodUsu:integer;
    FNombre:string;
    FClave:integer;
    FIntentos:byte;
    FDNI:integer;
    FVencimiento:string;
    FFechaBaja:string;
    FNivel:integer;
    FNroPrestador:integer;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetCodUsu(Value:integer);
    procedure SetNombre(Value:string);
    procedure SetClave(Value:integer);
    procedure SetIntentos(Value:byte);
    procedure SetDNI(Value:integer);
    procedure SetVencimiento(Value:string);
    procedure SetFechaBaja(Value:string);
    procedure SetNivel(Value:integer);
    procedure SetNroPrestador(Value:integer);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_CodUsu_PK:integer read FCodUsu write SetCodUsu;
    property C_Nombre_IX1:string read FNombre write SetNombre;
    property C_Clave:integer read FClave write SetClave;
    property C_Intentos:byte read FIntentos write SetIntentos;
    property C_DNI:integer read FDNI write SetDNI;
    property C_Vencimiento:string read FVencimiento write SetVencimiento;
    property C_FechaBaja:string read FFechaBaja write SetFechaBaja;
    property C_Nivel:integer read FNivel write SetNivel;
    property C_NroPrestador:integer read FNroPrestador write SetNroPrestador;

  {Declaracion de Metodos}
    Function BuscarPK(ValorBuscado:String):boolean;
    Function ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; MaxRecord:integer):boolean;
    Function Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
    Function Agrega():boolean;
    Function Borrar(ValorBuscado:string):boolean;
    Function Modificar():boolean;

  Published
    { Published declarations }
  end;

  var FCapaDatos:TCapaDatos;

implementation

constructor TUsuarios.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=9;
end;

procedure TUsuarios.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TUsuarios.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TUsuarios.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TUsuarios.SetCodUsu(Value:integer);
begin
  FCodUsu:=Value;
end;

procedure TUsuarios.SetNombre(Value:string);
begin
  FNombre:=Value;
end;

procedure TUsuarios.SetClave(Value:integer);
begin
  FClave:=Value;
end;

procedure TUsuarios.SetIntentos(Value:byte);
begin
  FIntentos:=Value;
end;

procedure TUsuarios.SetDNI(Value:integer);
begin
  FDNI:=Value;
end;

procedure TUsuarios.SetVencimiento(Value:string);
begin
  FVencimiento:=Value;
end;

procedure TUsuarios.SetFechaBaja(Value:string);
begin
  FFechaBaja:=Value;
end;

procedure TUsuarios.SetNivel(Value:integer);
begin
  FNivel:=Value;
end;

procedure TUsuarios.SetNroPrestador(Value:integer);
begin
  FNroPrestador:=Value;
end;

Function TUsuarios.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_UsuariosConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_CodUsu_PK:=DataSet.FieldByName('CodUsu').AsInteger;
  C_Nombre_IX1:=DataSet.FieldByName('Nombre').AsString;
  C_Clave:=DataSet.FieldByName('Clave').AsInteger;
  C_Intentos:=DataSet.FieldByName('Intentos').AsInteger;
  C_DNI:=DataSet.FieldByName('DNI').AsInteger;
  C_Vencimiento:=DataSet.FieldByName('Vencimiento').AsString;
  C_FechaBaja:=DataSet.FieldByName('FechaBaja').AsString;
  C_Nivel:=DataSet.FieldByName('Nivel').AsInteger;
  C_NroPrestador:=DataSet.FieldByName('NroPrestador').AsInteger;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TUsuarios.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_UsuariosConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TUsuarios.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TUsuarios.Agrega():boolean;
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
Parametros.Add(IntToStr(C_CodUsu_PK));
Parametros.Add(C_Nombre_IX1);
Parametros.Add(IntToStr(C_Clave));
Parametros.Add(IntToStr(C_Intentos));
Parametros.Add(IntToStr(C_DNI));
Parametros.Add(C_Vencimiento);
Parametros.Add(C_FechaBaja);
Parametros.Add(IntToStr(C_Nivel));
Parametros.Add(IntToStr(C_NroPrestador));

//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_UsuariosInsertar',Parametros);

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TUsuarios.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_UsuariosEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TUsuarios.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
//Cargo los Parmetros
Parametros.Add(IntToStr(C_CodUsu_PK));
Parametros.Add(C_Nombre_IX1);
Parametros.Add(IntToStr(C_Clave));
Parametros.Add(IntToStr(C_Intentos));
Parametros.Add(IntToStr(C_DNI));
Parametros.Add(C_Vencimiento);
Parametros.Add(C_FechaBaja);
Parametros.Add(IntToStr(C_Nivel));
Parametros.Add(IntToStr(C_NroPrestador));


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_UsuariosModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

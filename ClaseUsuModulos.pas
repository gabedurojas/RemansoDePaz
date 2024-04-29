unit ClaseUsuModulos;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TUsuModulos= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    Fid:integer;
    FCodUsu:integer;
    FModulo:integer;
    FNivel:integer;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure Setid(Value:integer);
    procedure SetCodUsu(Value:integer);
    procedure SetModulo(Value:integer);
    procedure SetNivel(Value:integer);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_id_PK:integer read Fid write Setid;
    property C_CodUsu:integer read FCodUsu write SetCodUsu;
    property C_Modulo:integer read FModulo write SetModulo;
    property C_Nivel:integer read FNivel write SetNivel;

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

constructor TUsuModulos.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=4;
end;

procedure TUsuModulos.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TUsuModulos.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TUsuModulos.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TUsuModulos.Setid(Value:integer);
begin
  Fid:=Value;
end;

procedure TUsuModulos.SetCodUsu(Value:integer);
begin
  FCodUsu:=Value;
end;

procedure TUsuModulos.SetModulo(Value:integer);
begin
  FModulo:=Value;
end;

procedure TUsuModulos.SetNivel(Value:integer);
begin
  FNivel:=Value;
end;

Function TUsuModulos.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_UsuModulosConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_id_PK:=DataSet.FieldByName('id').AsInteger;
  C_CodUsu:=DataSet.FieldByName('CodUsu').AsInteger;
  C_Modulo:=DataSet.FieldByName('Modulo').AsInteger;
  C_Nivel:=DataSet.FieldByName('Nivel').AsInteger;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TUsuModulos.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_UsuModulosConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TUsuModulos.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TUsuModulos.Agrega():boolean;
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
Parametros.Add(IntToStr(C_CodUsu));
Parametros.Add(IntToStr(C_Modulo));
Parametros.Add(IntToStr(C_Nivel));

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_UsuModulosInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TUsuModulos.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_UsuModulosEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TUsuModulos.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
//Cargo los Parmetros
Parametros.Add(IntToStr(C_id_PK));
Parametros.Add(IntToStr(C_CodUsu));
Parametros.Add(IntToStr(C_Modulo));
Parametros.Add(IntToStr(C_Nivel));


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_UsuModulosModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

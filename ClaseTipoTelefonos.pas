unit ClaseTipoTelefonos;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TTipoTelefonos= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FTipoTelefono:integer;
    FDetalleTipo:string;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetTipoTelefono(Value:integer);
    procedure SetDetalleTipo(Value:string);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_TipoTelefono_PK:integer read FTipoTelefono write SetTipoTelefono;
    property C_DetalleTipo_IX1:string read FDetalleTipo write SetDetalleTipo;

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

constructor TTipoTelefonos.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=2;
end;

procedure TTipoTelefonos.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TTipoTelefonos.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TTipoTelefonos.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TTipoTelefonos.SetTipoTelefono(Value:integer);
begin
  FTipoTelefono:=Value;
end;

procedure TTipoTelefonos.SetDetalleTipo(Value:string);
begin
  FDetalleTipo:=Value;
end;

Function TTipoTelefonos.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_TipoTelefonosConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_TipoTelefono_PK:=DataSet.FieldByName('TipoTelefono').AsInteger;
  C_DetalleTipo_IX1:=DataSet.FieldByName('DetalleTipo').AsString;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TTipoTelefonos.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_TipoTelefonosConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TTipoTelefonos.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TTipoTelefonos.Agrega():boolean;
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
Parametros.Add(C_DetalleTipo_IX1);

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_TipoTelefonosInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TTipoTelefonos.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_TipoTelefonosEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TTipoTelefonos.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
//Cargo los Parmetros
Parametros.Add(IntToStr(C_TipoTelefono_PK));
Parametros.Add(C_DetalleTipo_IX1);


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_TipoTelefonosModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

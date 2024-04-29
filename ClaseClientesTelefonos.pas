unit ClaseClientesTelefonos;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TClientesTelefonos= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FIdTelefono:integer;
    FCuif:int64;
    FNroTelefono:integer;
    FCaracteristica:integer;
    FTipoTelefono:byte;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetIdTelefono(Value:integer);
    procedure SetCuif(Value:int64);
    procedure SetNroTelefono(Value:integer);
    procedure SetCaracteristica(Value:integer);
    procedure SetTipoTelefono(Value:byte);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_IdTelefono_PK:integer read FIdTelefono write SetIdTelefono;
    property C_Cuif_IX1:int64 read FCuif write SetCuif;
    property C_NroTelefono:integer read FNroTelefono write SetNroTelefono;
    property C_Caracteristica:integer read FCaracteristica write SetCaracteristica;
    property C_TipoTelefono_IX2:byte read FTipoTelefono write SetTipoTelefono;

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

constructor TClientesTelefonos.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=5;
end;

procedure TClientesTelefonos.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TClientesTelefonos.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TClientesTelefonos.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TClientesTelefonos.SetIdTelefono(Value:integer);
begin
  FIdTelefono:=Value;
end;

procedure TClientesTelefonos.SetCuif(Value:int64);
begin
  FCuif:=Value;
end;

procedure TClientesTelefonos.SetNroTelefono(Value:integer);
begin
  FNroTelefono:=Value;
end;

procedure TClientesTelefonos.SetCaracteristica(Value:integer);
begin
  FCaracteristica:=Value;
end;

procedure TClientesTelefonos.SetTipoTelefono(Value:byte);
begin
  FTipoTelefono:=Value;
end;

Function TClientesTelefonos.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_ClientesTelefonosConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_IdTelefono_PK:=DataSet.FieldByName('IdTelefono').AsInteger;
  C_Cuif_IX1:=StrToInt64(DataSet.FieldByName('Cuif').AsString);
  C_NroTelefono:=DataSet.FieldByName('NroTelefono').AsInteger;
  C_Caracteristica:=DataSet.FieldByName('Caracteristica').AsInteger;
  C_TipoTelefono_IX2:=DataSet.FieldByName('TipoTelefono').AsInteger;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TClientesTelefonos.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ClientesTelefonosConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TClientesTelefonos.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TClientesTelefonos.Agrega():boolean;
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
Parametros.Add(IntToStr(C_Cuif_IX1));
Parametros.Add(IntToStr(C_NroTelefono));
Parametros.Add(IntToStr(C_Caracteristica));
Parametros.Add(IntToStr(C_TipoTelefono_IX2));

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ClientesTelefonosInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TClientesTelefonos.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_ClientesTelefonosEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TClientesTelefonos.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
//Cargo los Parmetros
Parametros.Add(IntToStr(C_IdTelefono_PK));
Parametros.Add(IntToStr(C_Cuif_IX1));
Parametros.Add(IntToStr(C_NroTelefono));
Parametros.Add(IntToStr(C_Caracteristica));
Parametros.Add(IntToStr(C_TipoTelefono_IX2));


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_ClientesTelefonosModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

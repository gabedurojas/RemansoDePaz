unit ClaseTiposEstados;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TTiposEstados= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FNroEstado:integer;
    FDetalle:string;
    FEnconomico:boolean;
    FMantenimiento:boolean;
    FConsolidado:boolean;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetNroEstado(Value:integer);
    procedure SetDetalle(Value:string);
    procedure SetEnconomico(Value:boolean);
    procedure SetMantenimiento(Value:boolean);
    procedure SetConsolidado(Value:boolean);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_NroEstado_PK:integer read FNroEstado write SetNroEstado;
    property C_Detalle_IX1:string read FDetalle write SetDetalle;
    property C_Enconomico:boolean read FEnconomico write SetEnconomico;
    property C_Mantenimiento:boolean read FMantenimiento write SetMantenimiento;
    property C_Consolidado:boolean read FConsolidado write SetConsolidado;

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

constructor TTiposEstados.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=5;
end;

procedure TTiposEstados.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TTiposEstados.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TTiposEstados.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TTiposEstados.SetNroEstado(Value:integer);
begin
  FNroEstado:=Value;
end;

procedure TTiposEstados.SetDetalle(Value:string);
begin
  FDetalle:=Value;
end;

procedure TTiposEstados.SetEnconomico(Value:boolean);
begin
  FEnconomico:=Value;
end;

procedure TTiposEstados.SetMantenimiento(Value:boolean);
begin
  FMantenimiento:=Value;
end;

procedure TTiposEstados.SetConsolidado(Value:boolean);
begin
  FConsolidado:=Value;
end;

Function TTiposEstados.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_TiposEstadosConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_NroEstado_PK:=DataSet.FieldByName('NroEstado').AsInteger;
  C_Detalle_IX1:=DataSet.FieldByName('Detalle').AsString;
  C_Enconomico:=DataSet.FieldByName('Enconomico').AsBoolean;
  C_Mantenimiento:=DataSet.FieldByName('Mantenimiento').AsBoolean;
  C_Consolidado:=DataSet.FieldByName('Consolidado').AsBoolean;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TTiposEstados.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_TiposEstadosConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TTiposEstados.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TTiposEstados.Agrega():boolean;
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
Parametros.Add(C_Detalle_IX1);
if C_Enconomico then Parametros.Add('1')
else Parametros.Add('0');
if C_Mantenimiento then Parametros.Add('1')
else Parametros.Add('0');
if C_Consolidado then Parametros.Add('1')
else Parametros.Add('0');

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_TiposEstadosInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TTiposEstados.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_TiposEstadosEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TTiposEstados.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
//Cargo los Parmetros
Parametros.Add(IntToStr(C_NroEstado_PK));
Parametros.Add(C_Detalle_IX1);
if C_Enconomico then Parametros.Add('1')
else Parametros.Add('0');
if C_Mantenimiento then Parametros.Add('1')
else Parametros.Add('0');
if C_Consolidado then Parametros.Add('1')
else Parametros.Add('0');


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_TiposEstadosModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

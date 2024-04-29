unit ClaseTiposOrigenMovimientos;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TTiposOrigenMovimientos= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FNroTipoOrigen:integer;
    FDetalle:string;
    FAbreviatura:string;
    FOperando:string;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetNroTipoOrigen(Value:integer);
    procedure SetDetalle(Value:string);
    procedure SetAbreviatura(Value:string);
    procedure SetOperando(Value:string);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_NroTipoOrigen_PK:integer read FNroTipoOrigen write SetNroTipoOrigen;
    property C_Detalle_IX1:string read FDetalle write SetDetalle;
    property C_Abreviatura_IX2:string read FAbreviatura write SetAbreviatura;
    property C_Operando:string read FOperando write SetOperando;

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

constructor TTiposOrigenMovimientos.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=4;
end;

procedure TTiposOrigenMovimientos.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TTiposOrigenMovimientos.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TTiposOrigenMovimientos.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TTiposOrigenMovimientos.SetNroTipoOrigen(Value:integer);
begin
  FNroTipoOrigen:=Value;
end;

procedure TTiposOrigenMovimientos.SetDetalle(Value:string);
begin
  FDetalle:=Value;
end;

procedure TTiposOrigenMovimientos.SetAbreviatura(Value:string);
begin
  FAbreviatura:=Value;
end;

procedure TTiposOrigenMovimientos.SetOperando(Value:string);
begin
  FOperando:=Value;
end;

Function TTiposOrigenMovimientos.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_TiposOrigenMovimientosConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_NroTipoOrigen_PK:=DataSet.FieldByName('NroTipoOrigen').AsInteger;
  C_Detalle_IX1:=DataSet.FieldByName('Detalle').AsString;
  C_Abreviatura_IX2:=DataSet.FieldByName('Abreviatura').AsString;
  C_Operando:=DataSet.FieldByName('Operando').AsString;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TTiposOrigenMovimientos.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_TiposOrigenMovimientosConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TTiposOrigenMovimientos.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TTiposOrigenMovimientos.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TTiposOrigenMovimientos.Agrega():boolean;
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
Parametros.Add(C_Abreviatura_IX2);
Parametros.Add(C_Operando);

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_TiposOrigenMovimientosInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TTiposOrigenMovimientos.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_TiposOrigenMovimientosEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TTiposOrigenMovimientos.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_NroTipoOrigen_PK));
Parametros.Add(C_Detalle_IX1);
Parametros.Add(C_Abreviatura_IX2);
Parametros.Add(C_Operando);


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_TiposOrigenMovimientosModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

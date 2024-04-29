unit ClaseTiposTarjetasCredito;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TTiposTarjetasCredito= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FNroTarjeta:integer;
    FDetalleTarjeta:string;
    FDescuento:real;
    FMaxCuotas:byte;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetNroTarjeta(Value:integer);
    procedure SetDetalleTarjeta(Value:string);
    procedure SetDescuento(Value:real);
    procedure SetMaxCuotas(Value:byte);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_NroTarjeta_PK:integer read FNroTarjeta write SetNroTarjeta;
    property C_DetalleTarjeta_IX1:string read FDetalleTarjeta write SetDetalleTarjeta;
    property C_Descuento:real read FDescuento write SetDescuento;
    property C_MaxCuotas:byte read FMaxCuotas write SetMaxCuotas;

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

constructor TTiposTarjetasCredito.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=4;
end;

procedure TTiposTarjetasCredito.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TTiposTarjetasCredito.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TTiposTarjetasCredito.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TTiposTarjetasCredito.SetNroTarjeta(Value:integer);
begin
  FNroTarjeta:=Value;
end;

procedure TTiposTarjetasCredito.SetDetalleTarjeta(Value:string);
begin
  FDetalleTarjeta:=Value;
end;

procedure TTiposTarjetasCredito.SetDescuento(Value:real);
begin
  FDescuento:=Value;
end;

procedure TTiposTarjetasCredito.SetMaxCuotas(Value:byte);
begin
  FMaxCuotas:=Value;
end;

Function TTiposTarjetasCredito.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_TiposTarjetasCreditoConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_NroTarjeta_PK:=DataSet.FieldByName('NroTarjeta').AsInteger;
  C_DetalleTarjeta_IX1:=DataSet.FieldByName('DetalleTarjeta').AsString;
  C_Descuento:=DataSet.FieldByName('Descuento').AsFloat;
  C_MaxCuotas:=DataSet.FieldByName('MaxCuotas').AsInteger;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TTiposTarjetasCredito.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_TiposTarjetasCreditoConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TTiposTarjetasCredito.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TTiposTarjetasCredito.Agrega():boolean;
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
Parametros.Add(C_DetalleTarjeta_IX1);
Parametros.Add(FloatToStr(C_Descuento));
Parametros.Add(IntToStr(C_MaxCuotas));

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_TiposTarjetasCreditoInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TTiposTarjetasCredito.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_TiposTarjetasCreditoEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TTiposTarjetasCredito.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
//Cargo los Parmetros
Parametros.Add(IntToStr(C_NroTarjeta_PK));
Parametros.Add(C_DetalleTarjeta_IX1);
Parametros.Add(FloatToStr(C_Descuento));
Parametros.Add(IntToStr(C_MaxCuotas));


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_TiposTarjetasCreditoModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

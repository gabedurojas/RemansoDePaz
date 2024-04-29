unit ClaseParcelasPagosCuotas;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TParcelasPagosCuotas= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FId:integer;
    FIdRecibo:integer;
    FPeriodo:integer;
    FNroFormaPago:byte;
    FNroEntidad:integer;
    FNroSucursal:integer;
    FFecha:string;
    FNroChequera:integer;
    FNroCheque:integer;
    FSerie:string;
    FTitular:string;
    FNroCuenta:string;
    FCantPagos:byte;
    FMonto:real;
    FInteres:real;
    FNroCuota:byte;
    FEnMovimientos:boolean;
    FDetalleCuota:string;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetId(Value:integer);
    procedure SetIdRecibo(Value:integer);
    procedure SetPeriodo(Value:integer);
    procedure SetNroFormaPago(Value:byte);
    procedure SetNroEntidad(Value:integer);
    procedure SetNroSucursal(Value:integer);
    procedure SetFecha(Value:string);
    procedure SetNroChequera(Value:integer);
    procedure SetNroCheque(Value:integer);
    procedure SetSerie(Value:string);
    procedure SetTitular(Value:string);
    procedure SetNroCuenta(Value:string);
    procedure SetCantPagos(Value:byte);
    procedure SetMonto(Value:real);
    procedure SetInteres(Value:real);
    procedure SetNroCuota(Value:byte);
    procedure SetEnMovimientos(Value:boolean);
    procedure SetDetalleCuota(Value:string);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_Id_PK:integer read FId write SetId;
    property C_IdRecibo_IX1:integer read FIdRecibo write SetIdRecibo;
    property C_Periodo:integer read FPeriodo write SetPeriodo;
    property C_NroFormaPago_IX2:byte read FNroFormaPago write SetNroFormaPago;
    property C_NroEntidad:integer read FNroEntidad write SetNroEntidad;
    property C_NroSucursal:integer read FNroSucursal write SetNroSucursal;
    property C_Fecha_IX3:string read FFecha write SetFecha;
    property C_NroChequera:integer read FNroChequera write SetNroChequera;
    property C_NroCheque:integer read FNroCheque write SetNroCheque;
    property C_Serie:string read FSerie write SetSerie;
    property C_Titular:string read FTitular write SetTitular;
    property C_NroCuenta:string read FNroCuenta write SetNroCuenta;
    property C_CantPagos:byte read FCantPagos write SetCantPagos;
    property C_Monto:real read FMonto write SetMonto;
    property C_Interes:real read FInteres write SetInteres;
    property C_NroCuota:byte read FNroCuota write SetNroCuota;
    property C_EnMovimientos:boolean read FEnMovimientos write SetEnMovimientos;
    property C_DetalleCuota:string read FDetalleCuota write SetDetalleCuota;

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

constructor TParcelasPagosCuotas.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=18;
end;

procedure TParcelasPagosCuotas.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TParcelasPagosCuotas.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TParcelasPagosCuotas.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TParcelasPagosCuotas.SetId(Value:integer);
begin
  FId:=Value;
end;

procedure TParcelasPagosCuotas.SetIdRecibo(Value:integer);
begin
  FIdRecibo:=Value;
end;

procedure TParcelasPagosCuotas.SetPeriodo(Value:integer);
begin
  FPeriodo:=Value;
end;

procedure TParcelasPagosCuotas.SetNroFormaPago(Value:byte);
begin
  FNroFormaPago:=Value;
end;

procedure TParcelasPagosCuotas.SetNroEntidad(Value:integer);
begin
  FNroEntidad:=Value;
end;

procedure TParcelasPagosCuotas.SetNroSucursal(Value:integer);
begin
  FNroSucursal:=Value;
end;

procedure TParcelasPagosCuotas.SetFecha(Value:string);
begin
  FFecha:=Value;
end;

procedure TParcelasPagosCuotas.SetNroChequera(Value:integer);
begin
  FNroChequera:=Value;
end;

procedure TParcelasPagosCuotas.SetNroCheque(Value:integer);
begin
  FNroCheque:=Value;
end;

procedure TParcelasPagosCuotas.SetSerie(Value:string);
begin
  FSerie:=Value;
end;

procedure TParcelasPagosCuotas.SetTitular(Value:string);
begin
  FTitular:=Value;
end;

procedure TParcelasPagosCuotas.SetNroCuenta(Value:string);
begin
  FNroCuenta:=Value;
end;

procedure TParcelasPagosCuotas.SetCantPagos(Value:byte);
begin
  FCantPagos:=Value;
end;

procedure TParcelasPagosCuotas.SetMonto(Value:real);
begin
  FMonto:=Value;
end;

procedure TParcelasPagosCuotas.SetInteres(Value:real);
begin
  FInteres:=Value;
end;

procedure TParcelasPagosCuotas.SetNroCuota(Value:byte);
begin
  FNroCuota:=Value;
end;

procedure TParcelasPagosCuotas.SetEnMovimientos(Value:boolean);
begin
  FEnMovimientos:=Value;
end;

procedure TParcelasPagosCuotas.SetDetalleCuota(Value:string);
begin
  FDetalleCuota:=Value;
end;

Function TParcelasPagosCuotas.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_ParcelasPagosCuotasConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_Id_PK:=DataSet.FieldByName('Id').AsInteger;
  C_IdRecibo_IX1:=DataSet.FieldByName('IdRecibo').AsInteger;
  C_Periodo:=DataSet.FieldByName('Periodo').AsInteger;
  C_NroFormaPago_IX2:=DataSet.FieldByName('NroFormaPago').AsInteger;
  C_NroEntidad:=DataSet.FieldByName('NroEntidad').AsInteger;
  C_NroSucursal:=DataSet.FieldByName('NroSucursal').AsInteger;
  C_Fecha_IX3:=DataSet.FieldByName('Fecha').AsString;
  C_NroChequera:=DataSet.FieldByName('NroChequera').AsInteger;
  C_NroCheque:=DataSet.FieldByName('NroCheque').AsInteger;
  C_Serie:=DataSet.FieldByName('Serie').AsString;
  C_Titular:=DataSet.FieldByName('Titular').AsString;
  C_NroCuenta:=DataSet.FieldByName('NroCuenta').AsString;
  C_CantPagos:=DataSet.FieldByName('CantPagos').AsInteger;
  C_Monto:=DataSet.FieldByName('Monto').AsFloat;
  C_Interes:=DataSet.FieldByName('Interes').AsFloat;
  C_NroCuota:=DataSet.FieldByName('NroCuota').AsInteger;
  C_EnMovimientos:=DataSet.FieldByName('EnMovimientos').AsBoolean;
  C_DetalleCuota:=DataSet.FieldByName('DetalleCuota').AsString;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TParcelasPagosCuotas.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasPagosCuotasConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasPagosCuotas.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasPagosCuotas.Agrega():boolean;
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
Parametros.Add(IntToStr(C_IdRecibo_IX1));
Parametros.Add(IntToStr(C_Periodo));
Parametros.Add(IntToStr(C_NroFormaPago_IX2));
Parametros.Add(IntToStr(C_NroEntidad));
Parametros.Add(IntToStr(C_NroSucursal));
Parametros.Add(C_Fecha_IX3);
Parametros.Add(IntToStr(C_NroChequera));
Parametros.Add(IntToStr(C_NroCheque));
Parametros.Add(C_Serie);
Parametros.Add(C_Titular);
Parametros.Add(C_NroCuenta);
Parametros.Add(IntToStr(C_CantPagos));
Parametros.Add(FloatToStr(C_Monto));
Parametros.Add(FloatToStr(C_Interes));
Parametros.Add(IntToStr(C_NroCuota));
if C_EnMovimientos then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_DetalleCuota);

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasPagosCuotasInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TParcelasPagosCuotas.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasPagosCuotasEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TParcelasPagosCuotas.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
//Cargo los Parmetros
Parametros.Add(IntToStr(C_Id_PK));
Parametros.Add(IntToStr(C_IdRecibo_IX1));
Parametros.Add(IntToStr(C_Periodo));
Parametros.Add(IntToStr(C_NroFormaPago_IX2));
Parametros.Add(IntToStr(C_NroEntidad));
Parametros.Add(IntToStr(C_NroSucursal));
Parametros.Add(C_Fecha_IX3);
Parametros.Add(IntToStr(C_NroChequera));
Parametros.Add(IntToStr(C_NroCheque));
Parametros.Add(C_Serie);
Parametros.Add(C_Titular);
Parametros.Add(C_NroCuenta);
Parametros.Add(IntToStr(C_CantPagos));
Parametros.Add(FloatToStr(C_Monto));
Parametros.Add(FloatToStr(C_Interes));
Parametros.Add(IntToStr(C_NroCuota));
if C_EnMovimientos then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_DetalleCuota);


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasPagosCuotasModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

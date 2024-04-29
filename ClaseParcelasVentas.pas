unit ClaseParcelasVentas;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TParcelasVentas= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FIdVenta:variant;
    FNroAccion:variant;
    FCuentaCliente:variant;
    FNroTipo:variant;
    FFecha:string;
    FPrecioReal:variant;
    FPorcentajeDescuento:variant;
    FMontoDescuento:variant;
    FMontoPagado:variant;
    FDeudaPendiente:variant;
    FDonacion:boolean;
    FFinanciado:boolean;
    FCantCuotas:variant;
    FValorCuota:variant;
    FComisionVenta:variant;
    FCuifVendedor:variant;
    FObservaciones:string;
    FIdFormaPago:variant;
    FConfirmado:boolean;
    FFechaConfirma:string;
    FUsuConfirma:variant;
    FAnulado:boolean;
    FFechaAnula:string;
    FUsuAnula:variant;
    FMotivoAnula:string;
    FFecha_A:string;
    FUsu_A:variant;
    FIdCuentaPar:variant;
    FConError:boolean;
    FTipoFormaPago:string;
    FNroEntidad:variant;
    FNroTarjeta:variant;
    FNroCheque:variant;
    FSerie:string;
    FTitular:string;
    FNroComprobante:variant;
    FImporte:variant;
    FNroCuotas:variant;
    FFecha1:string;
    FFechaCobro:string;
    FNroRecibo:string;
    FPrecioContado:string;
    FPrecioFinanciado:string;
    FConInhu:boolean;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetIdVenta(Value:variant);
    procedure SetNroAccion(Value:variant);
    procedure SetCuentaCliente(Value:variant);
    procedure SetNroTipo(Value:variant);
    procedure SetFecha(Value:string);
    procedure SetPrecioReal(Value:variant);
    procedure SetPorcentajeDescuento(Value:variant);
    procedure SetMontoDescuento(Value:variant);
    procedure SetMontoPagado(Value:variant);
    procedure SetDeudaPendiente(Value:variant);
    procedure SetDonacion(Value:boolean);
    procedure SetFinanciado(Value:boolean);
    procedure SetCantCuotas(Value:variant);
    procedure SetValorCuota(Value:variant);
    procedure SetComisionVenta(Value:variant);
    procedure SetCuifVendedor(Value:variant);
    procedure SetObservaciones(Value:string);
    procedure SetIdFormaPago(Value:variant);
    procedure SetConfirmado(Value:boolean);
    procedure SetFechaConfirma(Value:string);
    procedure SetUsuConfirma(Value:variant);
    procedure SetAnulado(Value:boolean);
    procedure SetFechaAnula(Value:string);
    procedure SetUsuAnula(Value:variant);
    procedure SetMotivoAnula(Value:string);
    procedure SetFecha_A(Value:string);
    procedure SetUsu_A(Value:variant);
    procedure SetIdCuentaPar(Value:variant);
    procedure SetConError(Value:boolean);
    procedure SetTipoFormaPago(Value:string);
    procedure SetNroEntidad(Value:variant);
    procedure SetNroTarjeta(Value:variant);
    procedure SetNroCheque(Value:variant);
    procedure SetSerie(Value:string);
    procedure SetTitular(Value:string);
    procedure SetNroComprobante(Value:variant);
    procedure SetImporte(Value:variant);
    procedure SetNroCuotas(Value:variant);
    procedure SetFecha1(Value:string);
    procedure SetFechaCobro(Value:string);
    procedure SetNroRecibo(Value:string);
    procedure SetPrecioContado(Value:string);
    procedure SetPrecioFinanciado(Value:string);
    procedure SetConInhu(Value:boolean);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_IdVenta_PK:variant read FIdVenta write SetIdVenta;
    property C_NroAccion_IX1:variant read FNroAccion write SetNroAccion;
    property C_CuentaCliente_IX2:variant read FCuentaCliente write SetCuentaCliente;
    property C_NroTipo:variant read FNroTipo write SetNroTipo;
    property C_Fecha_IX3:string read FFecha write SetFecha;
    property C_PrecioReal:variant read FPrecioReal write SetPrecioReal;
    property C_PorcentajeDescuento:variant read FPorcentajeDescuento write SetPorcentajeDescuento;
    property C_MontoDescuento:variant read FMontoDescuento write SetMontoDescuento;
    property C_MontoPagado:variant read FMontoPagado write SetMontoPagado;
    property C_DeudaPendiente:variant read FDeudaPendiente write SetDeudaPendiente;
    property C_Donacion:boolean read FDonacion write SetDonacion;
    property C_Financiado:boolean read FFinanciado write SetFinanciado;
    property C_CantCuotas:variant read FCantCuotas write SetCantCuotas;
    property C_ValorCuota:variant read FValorCuota write SetValorCuota;
    property C_ComisionVenta:variant read FComisionVenta write SetComisionVenta;
    property C_CuifVendedor_IX4:variant read FCuifVendedor write SetCuifVendedor;
    property C_Observaciones:string read FObservaciones write SetObservaciones;
    property C_IdFormaPago:variant read FIdFormaPago write SetIdFormaPago;
    property C_Confirmado:boolean read FConfirmado write SetConfirmado;
    property C_FechaConfirma_IX5:string read FFechaConfirma write SetFechaConfirma;
    property C_UsuConfirma:variant read FUsuConfirma write SetUsuConfirma;
    property C_Anulado:boolean read FAnulado write SetAnulado;
    property C_FechaAnula_IX6:string read FFechaAnula write SetFechaAnula;
    property C_UsuAnula:variant read FUsuAnula write SetUsuAnula;
    property C_MotivoAnula:string read FMotivoAnula write SetMotivoAnula;
    property C_Fecha_A:string read FFecha_A write SetFecha_A;
    property C_Usu_A:variant read FUsu_A write SetUsu_A;
    property C_IdCuentaPar:variant read FIdCuentaPar write SetIdCuentaPar;
    property C_ConError:boolean read FConError write SetConError;
    property C_TipoFormaPago:string read FTipoFormaPago write SetTipoFormaPago;
    property C_NroEntidad:variant read FNroEntidad write SetNroEntidad;
    property C_NroTarjeta:variant read FNroTarjeta write SetNroTarjeta;
    property C_NroCheque:variant read FNroCheque write SetNroCheque;
    property C_Serie:string read FSerie write SetSerie;
    property C_Titular:string read FTitular write SetTitular;
    property C_NroComprobante:variant read FNroComprobante write SetNroComprobante;
    property C_Importe:variant read FImporte write SetImporte;
    property C_NroCuotas:variant read FNroCuotas write SetNroCuotas;
    property C_Fecha1:string read FFecha1 write SetFecha1;
    property C_FechaCobro:string read FFechaCobro write SetFechaCobro;
    property C_NroRecibo:string read FNroRecibo write SetNroRecibo;
    property C_PrecioContado:string read FPrecioContado write SetPrecioContado;
    property C_PrecioFinanciado:string read FPrecioFinanciado write SetPrecioFinanciado;
    property C_ConInhu:boolean read FConInhu write SetConInhu;

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

constructor TParcelasVentas.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=44;
end;

procedure TParcelasVentas.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TParcelasVentas.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TParcelasVentas.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TParcelasVentas.SetIdVenta(Value:variant);
begin
  FIdVenta:=Value;
end;

procedure TParcelasVentas.SetNroAccion(Value:variant);
begin
  FNroAccion:=Value;
end;

procedure TParcelasVentas.SetCuentaCliente(Value:variant);
begin
  FCuentaCliente:=Value;
end;

procedure TParcelasVentas.SetNroTipo(Value:variant);
begin
  FNroTipo:=Value;
end;

procedure TParcelasVentas.SetFecha(Value:string);
begin
  FFecha:=Value;
end;

procedure TParcelasVentas.SetPrecioReal(Value:variant);
begin
  FPrecioReal:=Value;
end;

procedure TParcelasVentas.SetPorcentajeDescuento(Value:variant);
begin
  FPorcentajeDescuento:=Value;
end;

procedure TParcelasVentas.SetMontoDescuento(Value:variant);
begin
  FMontoDescuento:=Value;
end;

procedure TParcelasVentas.SetMontoPagado(Value:variant);
begin
  FMontoPagado:=Value;
end;

procedure TParcelasVentas.SetDeudaPendiente(Value:variant);
begin
  FDeudaPendiente:=Value;
end;

procedure TParcelasVentas.SetDonacion(Value:boolean);
begin
  FDonacion:=Value;
end;

procedure TParcelasVentas.SetFinanciado(Value:boolean);
begin
  FFinanciado:=Value;
end;

procedure TParcelasVentas.SetCantCuotas(Value:variant);
begin
  FCantCuotas:=Value;
end;

procedure TParcelasVentas.SetValorCuota(Value:variant);
begin
  FValorCuota:=Value;
end;

procedure TParcelasVentas.SetComisionVenta(Value:variant);
begin
  FComisionVenta:=Value;
end;

procedure TParcelasVentas.SetCuifVendedor(Value:variant);
begin
  FCuifVendedor:=Value;
end;

procedure TParcelasVentas.SetObservaciones(Value:string);
begin
  FObservaciones:=Value;
end;

procedure TParcelasVentas.SetIdFormaPago(Value:variant);
begin
  FIdFormaPago:=Value;
end;

procedure TParcelasVentas.SetConfirmado(Value:boolean);
begin
  FConfirmado:=Value;
end;

procedure TParcelasVentas.SetFechaConfirma(Value:string);
begin
  FFechaConfirma:=Value;
end;

procedure TParcelasVentas.SetUsuConfirma(Value:variant);
begin
  FUsuConfirma:=Value;
end;

procedure TParcelasVentas.SetAnulado(Value:boolean);
begin
  FAnulado:=Value;
end;

procedure TParcelasVentas.SetFechaAnula(Value:string);
begin
  FFechaAnula:=Value;
end;

procedure TParcelasVentas.SetUsuAnula(Value:variant);
begin
  FUsuAnula:=Value;
end;

procedure TParcelasVentas.SetMotivoAnula(Value:string);
begin
  FMotivoAnula:=Value;
end;

procedure TParcelasVentas.SetFecha_A(Value:string);
begin
  FFecha_A:=Value;
end;

procedure TParcelasVentas.SetUsu_A(Value:variant);
begin
  FUsu_A:=Value;
end;

procedure TParcelasVentas.SetIdCuentaPar(Value:variant);
begin
  FIdCuentaPar:=Value;
end;

procedure TParcelasVentas.SetConError(Value:boolean);
begin
  FConError:=Value;
end;

procedure TParcelasVentas.SetTipoFormaPago(Value:string);
begin
  FTipoFormaPago:=Value;
end;

procedure TParcelasVentas.SetNroEntidad(Value:variant);
begin
  FNroEntidad:=Value;
end;

procedure TParcelasVentas.SetNroTarjeta(Value:variant);
begin
  FNroTarjeta:=Value;
end;

procedure TParcelasVentas.SetNroCheque(Value:variant);
begin
  FNroCheque:=Value;
end;

procedure TParcelasVentas.SetSerie(Value:string);
begin
  FSerie:=Value;
end;

procedure TParcelasVentas.SetTitular(Value:string);
begin
  FTitular:=Value;
end;

procedure TParcelasVentas.SetNroComprobante(Value:variant);
begin
  FNroComprobante:=Value;
end;

procedure TParcelasVentas.SetImporte(Value:variant);
begin
  FImporte:=Value;
end;

procedure TParcelasVentas.SetNroCuotas(Value:variant);
begin
  FNroCuotas:=Value;
end;

procedure TParcelasVentas.SetFecha1(Value:string);
begin
  FFecha1:=Value;
end;

procedure TParcelasVentas.SetFechaCobro(Value:string);
begin
  FFechaCobro:=Value;
end;

procedure TParcelasVentas.SetNroRecibo(Value:string);
begin
  FNroRecibo:=Value;
end;

procedure TParcelasVentas.SetPrecioContado(Value:string);
begin
  FPrecioContado:=Value;
end;

procedure TParcelasVentas.SetPrecioFinanciado(Value:string);
begin
  FPrecioFinanciado:=Value;
end;

procedure TParcelasVentas.SetConInhu(Value:boolean);
begin
  FConInhu:=Value;
end;

Function TParcelasVentas.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_ParcelasVentasConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_IdVenta_PK:=DataSet.FieldByName('IdVenta').AsVariant;
  C_NroAccion_IX1:=DataSet.FieldByName('NroAccion').AsVariant;
  C_CuentaCliente_IX2:=DataSet.FieldByName('CuentaCliente').AsVariant;
  C_NroTipo:=DataSet.FieldByName('NroTipo').AsVariant;
  C_Fecha_IX3:=DataSet.FieldByName('Fecha').AsString;
  C_PrecioReal:=DataSet.FieldByName('PrecioReal').AsVariant;
  C_PorcentajeDescuento:=DataSet.FieldByName('PorcentajeDescuento').AsVariant;
  C_MontoDescuento:=DataSet.FieldByName('MontoDescuento').AsVariant;
  C_MontoPagado:=DataSet.FieldByName('MontoPagado').AsVariant;
  C_DeudaPendiente:=DataSet.FieldByName('DeudaPendiente').AsVariant;
  C_Donacion:=DataSet.FieldByName('Donacion').AsBoolean;
  C_Financiado:=DataSet.FieldByName('Financiado').AsBoolean;
  C_CantCuotas:=DataSet.FieldByName('CantCuotas').AsVariant;
  C_ValorCuota:=DataSet.FieldByName('ValorCuota').AsVariant;
  C_ComisionVenta:=DataSet.FieldByName('ComisionVenta').AsVariant;
  C_CuifVendedor_IX4:=StrToInt64(DataSet.FieldByName('CuifVendedor').AsString);
  C_Observaciones:=DataSet.FieldByName('Observaciones').AsString;
  C_IdFormaPago:=DataSet.FieldByName('IdFormaPago').AsVariant;
  C_Confirmado:=DataSet.FieldByName('Confirmado').AsBoolean;
  C_FechaConfirma_IX5:=DataSet.FieldByName('FechaConfirma').AsString;
  C_UsuConfirma:=DataSet.FieldByName('UsuConfirma').AsVariant;
  C_Anulado:=DataSet.FieldByName('Anulado').AsBoolean;
  C_FechaAnula_IX6:=DataSet.FieldByName('FechaAnula').AsString;
  C_UsuAnula:=DataSet.FieldByName('UsuAnula').AsVariant;
  C_MotivoAnula:=DataSet.FieldByName('MotivoAnula').AsString;
  C_Fecha_A:=DataSet.FieldByName('Fecha_A').AsString;
  C_Usu_A:=DataSet.FieldByName('Usu_A').AsVariant;
  C_IdCuentaPar:=DataSet.FieldByName('IdCuentaPar').AsVariant;
  C_ConError:=DataSet.FieldByName('ConError').AsBoolean;
  C_TipoFormaPago:=DataSet.FieldByName('TipoFormaPago').AsString;
  C_NroEntidad:=DataSet.FieldByName('NroEntidad').AsVariant;
  C_NroTarjeta:=DataSet.FieldByName('NroTarjeta').AsVariant;
  C_NroCheque:=DataSet.FieldByName('NroCheque').AsVariant;
  C_Serie:=DataSet.FieldByName('Serie').AsString;
  C_Titular:=DataSet.FieldByName('Titular').AsString;
  C_NroComprobante:=DataSet.FieldByName('NroComprobante').AsVariant;
  C_Importe:=DataSet.FieldByName('Importe').AsVariant;
  C_NroCuotas:=DataSet.FieldByName('NroCuotas').AsVariant;
  C_Fecha1:=DataSet.FieldByName('Fecha1').AsString;
  C_FechaCobro:=DataSet.FieldByName('FechaCobro').AsString;
  C_NroRecibo:=DataSet.FieldByName('NroRecibo').AsString;
  C_PrecioContado:=DataSet.FieldByName('PrecioContado').AsString;
  C_PrecioFinanciado:=DataSet.FieldByName('PrecioFinanciado').AsString;
  C_ConInhu:=DataSet.FieldByName('ConInhu').AsBoolean;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TParcelasVentas.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasVentasConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasVentas.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasVentas.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasVentas.Agrega():boolean;
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
if (C_NroAccion_IX1 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroAccion_IX1));
if (C_CuentaCliente_IX2 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuentaCliente_IX2));
if (C_NroTipo = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroTipo));
Parametros.Add(C_Fecha_IX3);
if (C_PrecioReal = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_PrecioReal));
if (C_PorcentajeDescuento = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_PorcentajeDescuento));
if (C_MontoDescuento = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_MontoDescuento));
if (C_MontoPagado = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_MontoPagado));
if (C_DeudaPendiente = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_DeudaPendiente));
if C_Donacion then Parametros.Add('1')
else Parametros.Add('0');
if C_Financiado then Parametros.Add('1')
else Parametros.Add('0');
if (C_CantCuotas = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CantCuotas));
if (C_ValorCuota = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_ValorCuota));
if (C_ComisionVenta = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_ComisionVenta));
if (C_CuifVendedor_IX4 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuifVendedor_IX4));
Parametros.Add(C_Observaciones);
if (C_IdFormaPago = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdFormaPago));
if C_Confirmado then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_FechaConfirma_IX5);
if (C_UsuConfirma = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_UsuConfirma));
if C_Anulado then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_FechaAnula_IX6);
if (C_UsuAnula = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_UsuAnula));
Parametros.Add(C_MotivoAnula);
if (C_Usu_A = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_A));
if (C_IdCuentaPar = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdCuentaPar));
if C_ConError then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_TipoFormaPago);
if (C_NroEntidad = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroEntidad));
if (C_NroTarjeta = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroTarjeta));
if (C_NroCheque = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroCheque));
Parametros.Add(C_Serie);
Parametros.Add(C_Titular);
if (C_NroComprobante = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroComprobante));
if (C_Importe = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Importe));
if (C_NroCuotas = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroCuotas));
Parametros.Add(C_Fecha1);
Parametros.Add(C_FechaCobro);
Parametros.Add(C_NroRecibo);
Parametros.Add(C_PrecioContado);
Parametros.Add(C_PrecioFinanciado);
if C_ConInhu then Parametros.Add('1')
else Parametros.Add('0');

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasVentasInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TParcelasVentas.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasVentasEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TParcelasVentas.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_IdVenta_PK));
if (C_NroAccion_IX1 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroAccion_IX1));
if (C_CuentaCliente_IX2 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuentaCliente_IX2));
if (C_NroTipo = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroTipo));
Parametros.Add(C_Fecha_IX3);
if (C_PrecioReal = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_PrecioReal));
if (C_PorcentajeDescuento = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_PorcentajeDescuento));
if (C_MontoDescuento = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_MontoDescuento));
if (C_MontoPagado = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_MontoPagado));
if (C_DeudaPendiente = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_DeudaPendiente));
if C_Donacion then Parametros.Add('1')
else Parametros.Add('0');
if C_Financiado then Parametros.Add('1')
else Parametros.Add('0');
if (C_CantCuotas = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CantCuotas));
if (C_ValorCuota = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_ValorCuota));
if (C_ComisionVenta = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_ComisionVenta));
if (C_CuifVendedor_IX4 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuifVendedor_IX4));
Parametros.Add(C_Observaciones);
if (C_IdFormaPago = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdFormaPago));
if C_Confirmado then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_FechaConfirma_IX5);
if (C_UsuConfirma = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_UsuConfirma));
if C_Anulado then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_FechaAnula_IX6);
if (C_UsuAnula = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_UsuAnula));
Parametros.Add(C_MotivoAnula);
if (C_IdCuentaPar = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdCuentaPar));
if C_ConError then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_TipoFormaPago);
if (C_NroEntidad = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroEntidad));
if (C_NroTarjeta = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroTarjeta));
if (C_NroCheque = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroCheque));
Parametros.Add(C_Serie);
Parametros.Add(C_Titular);
if (C_NroComprobante = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroComprobante));
if (C_Importe = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Importe));
if (C_NroCuotas = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroCuotas));
Parametros.Add(C_Fecha1);
Parametros.Add(C_FechaCobro);
Parametros.Add(C_NroRecibo);
Parametros.Add(C_PrecioContado);
Parametros.Add(C_PrecioFinanciado);
if C_ConInhu then Parametros.Add('1')
else Parametros.Add('0');


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasVentasModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

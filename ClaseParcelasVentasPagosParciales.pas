unit ClaseParcelasVentasPagosParciales;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TParcelasVentasPagosParciales= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FIdPago:variant;
    FNroAccion:variant;
    FCuentaCliente:variant;
    FIdVenta:variant;
    FIdFormaPago:variant;
    FFecha:string;
    FNroCuota:variant;
    FNroEntidad:variant;
    FNroSucursal:variant;
    FNroChequera:variant;
    FNroCheque:variant;
    FSerie:string;
    FTitular:string;
    FNroCuenta:string;
    FComprobante:string;
    FMonto:variant;
    FIDTipoComprobante:variant;
    FPuntoVenta:variant;
    FNroFactura:variant;
    FNroComprobante:string;
    FObservaciones:string;
    FFecha_A:string;
    FUsu_A:variant;
    FEnMovimientos:boolean;
    FConfirmado:boolean;
    FUsuConfirma:variant;
    FFechaConfirma:string;
    FAnulado:boolean;
    FUsuAnula:variant;
    FFechaAnula:string;
    FMotivoAnula:string;
    FIdCobro:variant;
    FEsEntrega:boolean;
    FIdCuentaPar:variant;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetIdPago(Value:variant);
    procedure SetNroAccion(Value:variant);
    procedure SetCuentaCliente(Value:variant);
    procedure SetIdVenta(Value:variant);
    procedure SetIdFormaPago(Value:variant);
    procedure SetFecha(Value:string);
    procedure SetNroCuota(Value:variant);
    procedure SetNroEntidad(Value:variant);
    procedure SetNroSucursal(Value:variant);
    procedure SetNroChequera(Value:variant);
    procedure SetNroCheque(Value:variant);
    procedure SetSerie(Value:string);
    procedure SetTitular(Value:string);
    procedure SetNroCuenta(Value:string);
    procedure SetComprobante(Value:string);
    procedure SetMonto(Value:variant);
    procedure SetIDTipoComprobante(Value:variant);
    procedure SetPuntoVenta(Value:variant);
    procedure SetNroFactura(Value:variant);
    procedure SetNroComprobante(Value:string);
    procedure SetObservaciones(Value:string);
    procedure SetFecha_A(Value:string);
    procedure SetUsu_A(Value:variant);
    procedure SetEnMovimientos(Value:boolean);
    procedure SetConfirmado(Value:boolean);
    procedure SetUsuConfirma(Value:variant);
    procedure SetFechaConfirma(Value:string);
    procedure SetAnulado(Value:boolean);
    procedure SetUsuAnula(Value:variant);
    procedure SetFechaAnula(Value:string);
    procedure SetMotivoAnula(Value:string);
    procedure SetIdCobro(Value:variant);
    procedure SetEsEntrega(Value:boolean);
    procedure SetIdCuentaPar(Value:variant);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_IdPago_PK:variant read FIdPago write SetIdPago;
    property C_NroAccion:variant read FNroAccion write SetNroAccion;
    property C_CuentaCliente:variant read FCuentaCliente write SetCuentaCliente;
    property C_IdVenta:variant read FIdVenta write SetIdVenta;
    property C_IdFormaPago:variant read FIdFormaPago write SetIdFormaPago;
    property C_Fecha:string read FFecha write SetFecha;
    property C_NroCuota:variant read FNroCuota write SetNroCuota;
    property C_NroEntidad:variant read FNroEntidad write SetNroEntidad;
    property C_NroSucursal:variant read FNroSucursal write SetNroSucursal;
    property C_NroChequera:variant read FNroChequera write SetNroChequera;
    property C_NroCheque:variant read FNroCheque write SetNroCheque;
    property C_Serie:string read FSerie write SetSerie;
    property C_Titular:string read FTitular write SetTitular;
    property C_NroCuenta:string read FNroCuenta write SetNroCuenta;
    property C_Comprobante:string read FComprobante write SetComprobante;
    property C_Monto:variant read FMonto write SetMonto;
    property C_IDTipoComprobante:variant read FIDTipoComprobante write SetIDTipoComprobante;
    property C_PuntoVenta:variant read FPuntoVenta write SetPuntoVenta;
    property C_NroFactura:variant read FNroFactura write SetNroFactura;
    property C_NroComprobante:string read FNroComprobante write SetNroComprobante;
    property C_Observaciones:string read FObservaciones write SetObservaciones;
    property C_Fecha_A:string read FFecha_A write SetFecha_A;
    property C_Usu_A:variant read FUsu_A write SetUsu_A;
    property C_EnMovimientos:boolean read FEnMovimientos write SetEnMovimientos;
    property C_Confirmado:boolean read FConfirmado write SetConfirmado;
    property C_UsuConfirma:variant read FUsuConfirma write SetUsuConfirma;
    property C_FechaConfirma:string read FFechaConfirma write SetFechaConfirma;
    property C_Anulado:boolean read FAnulado write SetAnulado;
    property C_UsuAnula:variant read FUsuAnula write SetUsuAnula;
    property C_FechaAnula:string read FFechaAnula write SetFechaAnula;
    property C_MotivoAnula:string read FMotivoAnula write SetMotivoAnula;
    property C_IdCobro:variant read FIdCobro write SetIdCobro;
    property C_EsEntrega:boolean read FEsEntrega write SetEsEntrega;
    property C_IdCuentaPar:variant read FIdCuentaPar write SetIdCuentaPar;

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

constructor TParcelasVentasPagosParciales.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=34;
end;

procedure TParcelasVentasPagosParciales.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TParcelasVentasPagosParciales.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TParcelasVentasPagosParciales.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TParcelasVentasPagosParciales.SetIdPago(Value:variant);
begin
  FIdPago:=Value;
end;

procedure TParcelasVentasPagosParciales.SetNroAccion(Value:variant);
begin
  FNroAccion:=Value;
end;

procedure TParcelasVentasPagosParciales.SetCuentaCliente(Value:variant);
begin
  FCuentaCliente:=Value;
end;

procedure TParcelasVentasPagosParciales.SetIdVenta(Value:variant);
begin
  FIdVenta:=Value;
end;

procedure TParcelasVentasPagosParciales.SetIdFormaPago(Value:variant);
begin
  FIdFormaPago:=Value;
end;

procedure TParcelasVentasPagosParciales.SetFecha(Value:string);
begin
  FFecha:=Value;
end;

procedure TParcelasVentasPagosParciales.SetNroCuota(Value:variant);
begin
  FNroCuota:=Value;
end;

procedure TParcelasVentasPagosParciales.SetNroEntidad(Value:variant);
begin
  FNroEntidad:=Value;
end;

procedure TParcelasVentasPagosParciales.SetNroSucursal(Value:variant);
begin
  FNroSucursal:=Value;
end;

procedure TParcelasVentasPagosParciales.SetNroChequera(Value:variant);
begin
  FNroChequera:=Value;
end;

procedure TParcelasVentasPagosParciales.SetNroCheque(Value:variant);
begin
  FNroCheque:=Value;
end;

procedure TParcelasVentasPagosParciales.SetSerie(Value:string);
begin
  FSerie:=Value;
end;

procedure TParcelasVentasPagosParciales.SetTitular(Value:string);
begin
  FTitular:=Value;
end;

procedure TParcelasVentasPagosParciales.SetNroCuenta(Value:string);
begin
  FNroCuenta:=Value;
end;

procedure TParcelasVentasPagosParciales.SetComprobante(Value:string);
begin
  FComprobante:=Value;
end;

procedure TParcelasVentasPagosParciales.SetMonto(Value:variant);
begin
  FMonto:=Value;
end;

procedure TParcelasVentasPagosParciales.SetIDTipoComprobante(Value:variant);
begin
  FIDTipoComprobante:=Value;
end;

procedure TParcelasVentasPagosParciales.SetPuntoVenta(Value:variant);
begin
  FPuntoVenta:=Value;
end;

procedure TParcelasVentasPagosParciales.SetNroFactura(Value:variant);
begin
  FNroFactura:=Value;
end;

procedure TParcelasVentasPagosParciales.SetNroComprobante(Value:string);
begin
  FNroComprobante:=Value;
end;

procedure TParcelasVentasPagosParciales.SetObservaciones(Value:string);
begin
  FObservaciones:=Value;
end;

procedure TParcelasVentasPagosParciales.SetFecha_A(Value:string);
begin
  FFecha_A:=Value;
end;

procedure TParcelasVentasPagosParciales.SetUsu_A(Value:variant);
begin
  FUsu_A:=Value;
end;

procedure TParcelasVentasPagosParciales.SetEnMovimientos(Value:boolean);
begin
  FEnMovimientos:=Value;
end;

procedure TParcelasVentasPagosParciales.SetConfirmado(Value:boolean);
begin
  FConfirmado:=Value;
end;

procedure TParcelasVentasPagosParciales.SetUsuConfirma(Value:variant);
begin
  FUsuConfirma:=Value;
end;

procedure TParcelasVentasPagosParciales.SetFechaConfirma(Value:string);
begin
  FFechaConfirma:=Value;
end;

procedure TParcelasVentasPagosParciales.SetAnulado(Value:boolean);
begin
  FAnulado:=Value;
end;

procedure TParcelasVentasPagosParciales.SetUsuAnula(Value:variant);
begin
  FUsuAnula:=Value;
end;

procedure TParcelasVentasPagosParciales.SetFechaAnula(Value:string);
begin
  FFechaAnula:=Value;
end;

procedure TParcelasVentasPagosParciales.SetMotivoAnula(Value:string);
begin
  FMotivoAnula:=Value;
end;

procedure TParcelasVentasPagosParciales.SetIdCobro(Value:variant);
begin
  FIdCobro:=Value;
end;

procedure TParcelasVentasPagosParciales.SetEsEntrega(Value:boolean);
begin
  FEsEntrega:=Value;
end;

procedure TParcelasVentasPagosParciales.SetIdCuentaPar(Value:variant);
begin
  FIdCuentaPar:=Value;
end;

Function TParcelasVentasPagosParciales.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_ParcelasVentasPagosParcialesConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_IdPago_PK:=DataSet.FieldByName('IdPago').AsVariant;
  C_NroAccion:=DataSet.FieldByName('NroAccion').AsVariant;
  C_CuentaCliente:=DataSet.FieldByName('CuentaCliente').AsVariant;
  C_IdVenta:=DataSet.FieldByName('IdVenta').AsVariant;
  C_IdFormaPago:=DataSet.FieldByName('IdFormaPago').AsVariant;
  C_Fecha:=DataSet.FieldByName('Fecha').AsString;
  C_NroCuota:=DataSet.FieldByName('NroCuota').AsVariant;
  C_NroEntidad:=DataSet.FieldByName('NroEntidad').AsVariant;
  C_NroSucursal:=DataSet.FieldByName('NroSucursal').AsVariant;
  C_NroChequera:=DataSet.FieldByName('NroChequera').AsVariant;
  C_NroCheque:=DataSet.FieldByName('NroCheque').AsVariant;
  C_Serie:=DataSet.FieldByName('Serie').AsString;
  C_Titular:=DataSet.FieldByName('Titular').AsString;
  C_NroCuenta:=DataSet.FieldByName('NroCuenta').AsString;
  C_Comprobante:=DataSet.FieldByName('Comprobante').AsString;
  C_Monto:=DataSet.FieldByName('Monto').AsVariant;
  C_IDTipoComprobante:=DataSet.FieldByName('IDTipoComprobante').AsVariant;
  C_PuntoVenta:=DataSet.FieldByName('PuntoVenta').AsVariant;
  C_NroFactura:=DataSet.FieldByName('NroFactura').AsVariant;
  C_NroComprobante:=DataSet.FieldByName('NroComprobante').AsString;
  C_Observaciones:=DataSet.FieldByName('Observaciones').AsString;
  C_Fecha_A:=DataSet.FieldByName('Fecha_A').AsString;
  C_Usu_A:=DataSet.FieldByName('Usu_A').AsVariant;
  C_EnMovimientos:=DataSet.FieldByName('EnMovimientos').AsBoolean;
  C_Confirmado:=DataSet.FieldByName('Confirmado').AsBoolean;
  C_UsuConfirma:=DataSet.FieldByName('UsuConfirma').AsVariant;
  C_FechaConfirma:=DataSet.FieldByName('FechaConfirma').AsString;
  C_Anulado:=DataSet.FieldByName('Anulado').AsBoolean;
  C_UsuAnula:=DataSet.FieldByName('UsuAnula').AsVariant;
  C_FechaAnula:=DataSet.FieldByName('FechaAnula').AsString;
  C_MotivoAnula:=DataSet.FieldByName('MotivoAnula').AsString;
  C_IdCobro:=DataSet.FieldByName('IdCobro').AsVariant;
  C_EsEntrega:=DataSet.FieldByName('EsEntrega').AsBoolean;
  C_IdCuentaPar:=DataSet.FieldByName('IdCuentaPar').AsVariant;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TParcelasVentasPagosParciales.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasVentasPagosParcialesConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasVentasPagosParciales.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasVentasPagosParciales.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasVentasPagosParciales.Agrega():boolean;
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
if (C_NroAccion = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroAccion));
if (C_CuentaCliente = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuentaCliente));
if (C_IdVenta = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdVenta));
if (C_IdFormaPago = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdFormaPago));
Parametros.Add(C_Fecha);
if (C_NroCuota = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroCuota));
if (C_NroEntidad = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroEntidad));
if (C_NroSucursal = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroSucursal));
if (C_NroChequera = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroChequera));
if (C_NroCheque = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroCheque));
Parametros.Add(C_Serie);
Parametros.Add(C_Titular);
Parametros.Add(C_NroCuenta);
Parametros.Add(C_Comprobante);
if (C_Monto = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Monto));
if (C_IDTipoComprobante = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IDTipoComprobante));
if (C_PuntoVenta = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_PuntoVenta));
if (C_NroFactura = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroFactura));
Parametros.Add(C_NroComprobante);
Parametros.Add(C_Observaciones);
if (C_Usu_A = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_A));
if C_EnMovimientos then Parametros.Add('1')
else Parametros.Add('0');
if C_Confirmado then Parametros.Add('1')
else Parametros.Add('0');
if (C_UsuConfirma = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_UsuConfirma));
Parametros.Add(C_FechaConfirma);
if C_Anulado then Parametros.Add('1')
else Parametros.Add('0');
if (C_UsuAnula = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_UsuAnula));
Parametros.Add(C_FechaAnula);
Parametros.Add(C_MotivoAnula);
if (C_IdCobro = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdCobro));
if C_EsEntrega then Parametros.Add('1')
else Parametros.Add('0');
if (C_IdCuentaPar = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdCuentaPar));

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasVentasPagosParcialesInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TParcelasVentasPagosParciales.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasVentasPagosParcialesEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TParcelasVentasPagosParciales.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_IdPago_PK));
if (C_NroAccion = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroAccion));
if (C_CuentaCliente = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuentaCliente));
if (C_IdVenta = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdVenta));
if (C_IdFormaPago = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdFormaPago));
Parametros.Add(C_Fecha);
if (C_NroCuota = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroCuota));
if (C_NroEntidad = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroEntidad));
if (C_NroSucursal = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroSucursal));
if (C_NroChequera = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroChequera));
if (C_NroCheque = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroCheque));
Parametros.Add(C_Serie);
Parametros.Add(C_Titular);
Parametros.Add(C_NroCuenta);
Parametros.Add(C_Comprobante);
if (C_Monto = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Monto));
if (C_IDTipoComprobante = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IDTipoComprobante));
if (C_PuntoVenta = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_PuntoVenta));
if (C_NroFactura = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroFactura));
Parametros.Add(C_NroComprobante);
Parametros.Add(C_Observaciones);
if C_EnMovimientos then Parametros.Add('1')
else Parametros.Add('0');
if C_Confirmado then Parametros.Add('1')
else Parametros.Add('0');
if (C_UsuConfirma = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_UsuConfirma));
Parametros.Add(C_FechaConfirma);
if C_Anulado then Parametros.Add('1')
else Parametros.Add('0');
if (C_UsuAnula = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_UsuAnula));
Parametros.Add(C_FechaAnula);
Parametros.Add(C_MotivoAnula);
if (C_IdCobro = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdCobro));
if C_EsEntrega then Parametros.Add('1')
else Parametros.Add('0');
if (C_IdCuentaPar = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdCuentaPar));


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasVentasPagosParcialesModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

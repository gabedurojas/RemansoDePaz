unit ClaseFunciones;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TFuncionesVarias= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIsEmpty: boolean;
    procedure SetConnectionString(Value:widestring);
    procedure SetIsEmpty(Value:boolean);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

  {Declaracion de Metodos}
    Function Run_AccionesParaResumen(NroAccion:variant; TipoAccionista:variant;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
    Function Run_AsignaPosicionInhumados(NroAccion:variant; Objeto:string;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
    Function Run_BuscarCUIF(CUIF:variant;  var DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
    Function Run_CompletaCHR(Valor:string; Tpo:variant; LargoString:variant;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
    Function Run_CompletaTexto(Valor:string; Caracter:string; Tamanio:variant;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
    Function Run_ConsultaXML(var DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
    Function Run_CreaCUIF(NroDni:variant; Prefijo:variant;  var DataSet:TClientDataSet; FilterString:string; 
MaxRecord:integer):boolean;
    Function Run_CreaDeudasVentas(nromov:variant; fecha:string; entrega:variant; capital:variant; CantCuotas:variant; 
ConInt:boolean;  var DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
    Function Run_CuentasPorAccion(NroObjeto:variant; NroAccion:variant; Tpo:variant;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
    Function Run_DarNroSa(var DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
    Function Run_DeudasMantenimientoFaltantes(NroAccion:variant; PeriodoTope:variant;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
    Function Run_DeudasMantenimientoFaltantesMayoritarios(NroCuenta:variant; PeriodoTope:variant;  var 
DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
    Function Run_DigitoVerificador(Valor:string; Tpo:variant;  var DataSet:TClientDataSet; FilterString:string; 
MaxRecord:integer):boolean;
    Function Run_EstadoCuentaConsolidados(NroAccion:variant;  var DataSet:TClientDataSet; FilterString:string; 
MaxRecord:integer):boolean;
    Function Run_EstadoCuentaMantenimiento(NroAccion:variant;  var DataSet:TClientDataSet; FilterString:string; 
MaxRecord:integer):boolean;
    Function Run_EstadoCuentaServicios(NroAccion:variant;  var DataSet:TClientDataSet; FilterString:string; 
MaxRecord:integer):boolean;
    Function Run_EstadoCuentaVentas(NroAccion:variant;  var DataSet:TClientDataSet; FilterString:string; 
MaxRecord:integer):boolean;
    Function Run_Fn_ComprobantesLibroIVA(PeriodoI:variant; PeriodoF:variant;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
    Function Run_Fn_VistaAcreditaciones(IdRegistro:variant; IdObjeto:variant; FechaCarga:string; NroObjeto:variant;  var 
DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
    Function Run_Fn_VistaClientes(IdCliente:variant; RazonSocial:string; NroDni:variant; NroAccion:variant; 
NroParcela:variant; Sector:string;  var DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
    Function Run_Fn_VistaClientesTelefonos(Cuif:variant;  var DataSet:TClientDataSet; FilterString:string; 
MaxRecord:integer):boolean;
    Function Run_Fn_VistaComprobantesAgrupados(CuifCobrador:variant; NroPlanilla:variant; TipoFormulario:string;  var 
DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
    Function Run_Fn_VistaComprobantesCobrados(NroFormulario:string; NroPlanilla:variant; FechaPlanilla:string; 
CuifCobrador:variant; NroComprobante:string;  var DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
    Function Run_Fn_VistaComprobantesConPlanillas(NroPlanilla:variant; FechaPlanilla:string; CuifCobrador:variant;  var 
DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
    Function Run_Fn_VistaComprobantesEntrega(IdComprobante:variant; NroDni:variant; RazonSocial:string; Fecha:string; 
PorComprobante:variant;  var DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
    Function Run_Fn_VistaComprobantesEntregaConfig(IdConfig:variant; IdComprobante:variant; IdTipoComprobante:variant; 
NroComprobante:string; CuifCobrador:variant;  var DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
    Function Run_Fn_VistaComprobantesEntregaConfigPV(IdConfig:variant; IdComprobante:variant; IdTipoComprobante:variant; 
NroComprobante:string; CuifCobrador:variant;  var DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
    Function Run_Fn_VistaComprobantesTalonarios(NroTalonario:variant; IdTipoComprobante:variant; PuntoVenta:variant;  var 
DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
    Function Run_Fn_VistaControlComprobantes(NroTalonario:variant; NroComprobante:variant; CuifCobrador:variant;  var 
DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
    Function Run_Fn_VistaInhumadosPorParcela(NroAccion:variant;  var DataSet:TClientDataSet; FilterString:string; 
MaxRecord:integer):boolean;
    Function Run_Fn_VistaLasParcelasCuentas(Id:variant; NroDni:variant; Cuif:variant; Cliente:string;  var 
DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
    Function Run_Fn_VistaLosFormularios(NroGestion:variant;  var DataSet:TClientDataSet; FilterString:string; 
MaxRecord:integer):boolean;
    Function Run_Fn_VistaLosObjetosPrecios(NroTipoServicio:variant;  var DataSet:TClientDataSet; FilterString:string; 
MaxRecord:integer):boolean;
    Function Run_Fn_VistaParcelas(NroAccion:variant; Sector:string; Parcela:variant; NroActa:variant;  var 
DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
    Function Run_Fn_VistaParcelasConsolidadosMayoristas(CuentaCliente:variant; FechaVigencia:string; RazonSocial:string; 
NroDni:variant;  var DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
    Function Run_Fn_VistaParcelasConsolidadosTitulares(NroAccion:variant; FechaVigencia:string; RazonSocial:string; 
NroDni:variant;  var DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
    Function Run_Fn_VistaParcelasCuentas(NroDni:variant; RazonSocial:string; CuentaCliente:variant;  var 
DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
    Function Run_Fn_VistaParcelasFechaMantenimiento(NroAccion:variant;  var DataSet:TClientDataSet; FilterString:string; 
MaxRecord:integer):boolean;
    Function Run_Fn_VistaParcelasInhumados(IdHabitante:variant; NroAccion:variant; DniTitular:variant; 
NombreTitular:string; DniFallecido:variant; NombreFallecido:string; FechaFallecimiento:string;  var 
DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
    Function Run_Fn_VistaParcelasInhumadosServicios(IdServicio:variant; NroAccion:variant;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
    Function Run_Fn_VistaParcelasInhumadosTestigos(IdHabitante:variant;  var DataSet:TClientDataSet; FilterString:string; 
MaxRecord:integer):boolean;
    Function Run_Fn_VistaParcelasInhumadosTitulares(NroAccion:variant; Inhumado:string; NroDni:variant;  var 
DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
    Function Run_Fn_VistaParcelasLasVentas(NroAccion:variant; NroMov:variant;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
    Function Run_Fn_VistaParcelasMantenimientoMayoristas(CuentaCliente:variant; FechaVigencia:string; RazonSocial:string; 
NroDni:variant;  var DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
    Function Run_Fn_VistaParcelasMantenimientoTitulares(NroAccion:variant; Fecha:string; RazonSocial:string; 
NroDni:variant;  var DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
    Function Run_Fn_VistaParcelasMovimientosMant(NroAccion:variant;  var DataSet:TClientDataSet; FilterString:string; 
MaxRecord:integer):boolean;
    Function Run_Fn_VistaParcelasMovimientosServ(NroAccion:variant;  var DataSet:TClientDataSet; FilterString:string; 
MaxRecord:integer):boolean;
    Function Run_Fn_VistaParcelasMovimientosVent(NroAccion:variant;  var DataSet:TClientDataSet; FilterString:string; 
MaxRecord:integer):boolean;
    Function Run_Fn_VistaParcelasOperaciones(Ventas:boolean;  var DataSet:TClientDataSet; FilterString:string; 
MaxRecord:integer):boolean;
    Function Run_Fn_VistaParcelasParaEspVerdes(NroAccion:variant; NroTitulo:variant; Sector:string;  var 
DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
    Function Run_Fn_VistaParcelasParaVenta(NroAccion:variant;  var DataSet:TClientDataSet; FilterString:string; 
MaxRecord:integer):boolean;
    Function Run_Fn_VistaParcelasPreciosColores(TipoColor:variant; Sector:string;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
    Function Run_Fn_VistaParcelasPreciosHistorico(TipoColor:variant; Detalle:string;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
    Function Run_Fn_VistaParcelasResponsables(NroAccion:variant;  var DataSet:TClientDataSet; FilterString:string; 
MaxRecord:integer):boolean;
    Function Run_Fn_VistaParcelasResponsablesNombres(NroAccion:variant;  var DataSet:TClientDataSet; FilterString:string; 
MaxRecord:integer):boolean;
    Function Run_Fn_VistaParcelasServicios(IdServicio:variant; NroAccion:variant;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
    Function Run_Fn_VistaParcelasServiciosDetalleObjetos(IdServicio:variant;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
    Function Run_Fn_VistaParcelasServiciosInhumados(NroAccion:variant;  var DataSet:TClientDataSet; FilterString:string; 
MaxRecord:integer):boolean;
    Function Run_Fn_VistaParcelasServiciosMayoristas(CuentaCliente:variant; Fecha:string; Confirmado:boolean; 
Anulado:boolean; RazonSocial:string; NroDni:variant;  var DataSet:TClientDataSet; FilterString:string; 
MaxRecord:integer):boolean;
    Function Run_Fn_VistaParcelasServiciosTitulares(IdServicio:variant; NroAccion:variant; Fecha:string; 
Confirmado:boolean; Anulado:boolean; RazonSocial:string; NroDni:variant;  var DataSet:TClientDataSet; FilterString:string; 
MaxRecord:integer):boolean;
    Function Run_Fn_VistaParcelasServicosDeudas(IdServicio:variant; NroAccion:variant;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
    Function Run_Fn_VistaParcelasTiposServiciosInhumados(NroAccion:variant;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
    Function Run_Fn_VistaParcelasTitulares(Cuif:variant; NroAccion:variant;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
    Function Run_Fn_VistaParcelasTitularesNivel1(NroAccion:variant;  var DataSet:TClientDataSet; FilterString:string; 
MaxRecord:integer):boolean;
    Function Run_Fn_VistaParcelasVentasDeudas(NroAccion:variant;  var DataSet:TClientDataSet; FilterString:string; 
MaxRecord:integer):boolean;
    Function Run_Fn_VistaParcelasVentasMayoristas(CuentaCliente:variant; Fecha:string; Confirmado:boolean; 
Anulado:boolean; RazonSocial:string; NroDni:variant;  var DataSet:TClientDataSet; FilterString:string; 
MaxRecord:integer):boolean;
    Function Run_Fn_VistaParcelasVentasTitulares(IdVenta:variant; NroAccion:variant; Fecha:string; Confirmado:boolean; 
Anulado:boolean; RazonSocial:string; NroDni:variant;  var DataSet:TClientDataSet; FilterString:string; 
MaxRecord:integer):boolean;
    Function Run_Fn_VistaPersonal(Cuif:variant; RazonSocial:string; NroDni:variant;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
    Function Run_Fn_VistaPersonalAreas(NroArea:variant; FechaEgreso:string; cuif:variant;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
    Function Run_Fn_VistaPersonalAreasComision(Cuif:variant;  var DataSet:TClientDataSet; FilterString:string; 
MaxRecord:integer):boolean;
    Function Run_Fn_VistaPersonalSubCobradores(CuifCobrador:variant; Cuif:variant;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
    Function Run_Fn_VistaPlanillaCobranzas(Id:variant; NroFormulario:string; NroPlanilla:variant;  var 
DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
    Function Run_Fn_VistaPlanillaCobranzasNumeros(NroFormulario:string; NroPlanilla:variant;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
    Function Run_Fn_VistaServicioNivel(NroTipoServicio:variant; IdTipoServicioNivel:variant;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
    Function Run_Fn_VistaServiciosObjetos(NroTipoServicio:variant; Activo:boolean;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
    Function Run_Fn_VistaServiciosObjetosValores(Detalle:string; Objeto:string;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
    Function Run_Fn_VistaTitularesParaResumen(NroAccion:variant;  var DataSet:TClientDataSet; FilterString:string; 
MaxRecord:integer):boolean;
    Function Run_FnCalculaCierreCaja(fecha:string; NroOperador:variant;  var DataSet:TClientDataSet; FilterString:string; 
MaxRecord:integer):boolean;
    Function Run_FnCierreCaja(fecha:string; NroOperador:variant;  var DataSet:TClientDataSet; FilterString:string; 
MaxRecord:integer):boolean;
    Function Run_FnCierreCajaTotal(fecha:string; NroOperador:variant;  var DataSet:TClientDataSet; FilterString:string; 
MaxRecord:integer):boolean;
    Function Run_FnCierreCajaxFechas(fecha:string; fecha1:string; NroOperador:variant;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
    Function Run_FnCierreCajaxFechasTotal(fecha:string; fecha1:string; usuario:variant;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
    Function Run_FnCierreSaldoAnterior(Fecha:string;  var DataSet:TClientDataSet; FilterString:string; 
MaxRecord:integer):boolean;
    Function Run_ObtieneNumerosPlanillasCobranzas(NroFormulario:string;  var DataSet:TClientDataSet; FilterString:string; 
MaxRecord:integer):boolean;
    Function Run_SaldoCaja(FechaIni:string; FechaFin:string;  var DataSet:TClientDataSet; FilterString:string; 
MaxRecord:integer):boolean;
    Function Run_SaldosPorAccion(NroObjeto:variant; NroAccion:variant; Periodo:variant; EsMinorista:boolean;  var 
DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
    Function Run_TodosCUIF(NroDni:variant; Sexo:string;  var DataSet:TClientDataSet; FilterString:string; 
MaxRecord:integer):boolean;
    Function Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
    Function ListarSinResp(Consulta:widestring):boolean;

  Published
    { Published declarations }
  end;

  var FCapaDatos:TCapaDatos;

implementation

constructor TFuncionesVarias.Create(AOwner:TComponent);
begin
  inherited Create();
end;

procedure TFuncionesVarias.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TFuncionesVarias.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;

Function TFuncionesVarias.Run_AccionesParaResumen(NroAccion:variant; TipoAccionista:variant;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if NroAccion = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroAccion) + ',';
if TipoAccionista = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(TipoAccionista) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM AccionesParaResumen(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_AsignaPosicionInhumados(NroAccion:variant; Objeto:string;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if NroAccion = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroAccion) + ',';
if Objeto = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + Objeto + chr(39) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM AsignaPosicionInhumados(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_BuscarCUIF(CUIF:variant;  var DataSet:TClientDataSet; FilterString:string; 
MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if CUIF = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(CUIF) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM BuscarCUIF(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_CompletaCHR(Valor:string; Tpo:variant; LargoString:variant;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if Valor = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + Valor + chr(39) + ',';
if Tpo = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(Tpo) + ',';
if LargoString = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(LargoString) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM CompletaCHR(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_CompletaTexto(Valor:string; Caracter:string; Tamanio:variant;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if Valor = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + Valor + chr(39) + ',';
if Caracter = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + Caracter + chr(39) + ',';
if Tamanio = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(Tamanio) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM CompletaTexto(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_ConsultaXML(var DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM ConsultaXML(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_CreaCUIF(NroDni:variant; Prefijo:variant;  var DataSet:TClientDataSet; FilterString:string; 
MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if NroDni = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroDni) + ',';
if Prefijo = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(Prefijo) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM CreaCUIF(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_CreaDeudasVentas(nromov:variant; fecha:string; entrega:variant; capital:variant; 
CantCuotas:variant; ConInt:boolean;  var DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if nromov = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(nromov) + ',';
if fecha = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + fecha + chr(39) + ',';
if entrega = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(entrega) + ',';
if capital = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(capital) + ',';
if CantCuotas = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(CantCuotas) + ',';
if ConInt then Parametros:=Parametros + '1,'
else Parametros:=Parametros + '0,';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM CreaDeudasVentas(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_CuentasPorAccion(NroObjeto:variant; NroAccion:variant; Tpo:variant;  var 
DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if NroObjeto = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroObjeto) + ',';
if NroAccion = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroAccion) + ',';
if Tpo = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(Tpo) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM CuentasPorAccion(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_DarNroSa(var DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM DarNroSa(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_DeudasMantenimientoFaltantes(NroAccion:variant; PeriodoTope:variant;  var 
DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if NroAccion = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroAccion) + ',';
if PeriodoTope = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(PeriodoTope) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM DeudasMantenimientoFaltantes(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_DeudasMantenimientoFaltantesMayoritarios(NroCuenta:variant; PeriodoTope:variant;  var 
DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if NroCuenta = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroCuenta) + ',';
if PeriodoTope = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(PeriodoTope) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM DeudasMantenimientoFaltantesMayoritarios(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_DigitoVerificador(Valor:string; Tpo:variant;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if Valor = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + Valor + chr(39) + ',';
if Tpo = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(Tpo) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM DigitoVerificador(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_EstadoCuentaConsolidados(NroAccion:variant;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if NroAccion = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroAccion) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM EstadoCuentaConsolidados(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_EstadoCuentaMantenimiento(NroAccion:variant;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if NroAccion = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroAccion) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM EstadoCuentaMantenimiento(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_EstadoCuentaServicios(NroAccion:variant;  var DataSet:TClientDataSet; FilterString:string; 
MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if NroAccion = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroAccion) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM EstadoCuentaServicios(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_EstadoCuentaVentas(NroAccion:variant;  var DataSet:TClientDataSet; FilterString:string; 
MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if NroAccion = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroAccion) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM EstadoCuentaVentas(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_ComprobantesLibroIVA(PeriodoI:variant; PeriodoF:variant;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if PeriodoI = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(PeriodoI) + ',';
if PeriodoF = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(PeriodoF) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_ComprobantesLibroIVA(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaAcreditaciones(IdRegistro:variant; IdObjeto:variant; FechaCarga:string; 
NroObjeto:variant;  var DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if IdRegistro = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(IdRegistro) + ',';
if IdObjeto = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(IdObjeto) + ',';
if FechaCarga = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + FechaCarga + chr(39) + ',';
if NroObjeto = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroObjeto) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaAcreditaciones(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaClientes(IdCliente:variant; RazonSocial:string; NroDni:variant; NroAccion:variant; 
NroParcela:variant; Sector:string;  var DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if IdCliente = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(IdCliente) + ',';
if RazonSocial = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + RazonSocial + chr(39) + ',';
if NroDni = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroDni) + ',';
if NroAccion = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroAccion) + ',';
if NroParcela = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroParcela) + ',';
if Sector = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + Sector + chr(39) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaClientes(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaClientesTelefonos(Cuif:variant;  var DataSet:TClientDataSet; FilterString:string; 
MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if Cuif = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(Cuif) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaClientesTelefonos(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaComprobantesAgrupados(CuifCobrador:variant; NroPlanilla:variant; 
TipoFormulario:string;  var DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if CuifCobrador = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(CuifCobrador) + ',';
if NroPlanilla = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroPlanilla) + ',';
if TipoFormulario = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + TipoFormulario + chr(39) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaComprobantesAgrupados(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaComprobantesCobrados(NroFormulario:string; NroPlanilla:variant; 
FechaPlanilla:string; CuifCobrador:variant; NroComprobante:string;  var DataSet:TClientDataSet; FilterString:string; 
MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if NroFormulario = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + NroFormulario + chr(39) + ',';
if NroPlanilla = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroPlanilla) + ',';
if FechaPlanilla = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + FechaPlanilla + chr(39) + ',';
if CuifCobrador = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(CuifCobrador) + ',';
if NroComprobante = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + NroComprobante + chr(39) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaComprobantesCobrados(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaComprobantesConPlanillas(NroPlanilla:variant; FechaPlanilla:string; 
CuifCobrador:variant;  var DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if NroPlanilla = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroPlanilla) + ',';
if FechaPlanilla = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + FechaPlanilla + chr(39) + ',';
if CuifCobrador = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(CuifCobrador) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaComprobantesConPlanillas(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaComprobantesEntrega(IdComprobante:variant; NroDni:variant; RazonSocial:string; 
Fecha:string; PorComprobante:variant;  var DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if IdComprobante = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(IdComprobante) + ',';
if NroDni = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroDni) + ',';
if RazonSocial = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + RazonSocial + chr(39) + ',';
if Fecha = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + Fecha + chr(39) + ',';
if PorComprobante = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(PorComprobante) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaComprobantesEntrega(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaComprobantesEntregaConfig(IdConfig:variant; IdComprobante:variant; 
IdTipoComprobante:variant; NroComprobante:string; CuifCobrador:variant;  var DataSet:TClientDataSet; FilterString:string; 
MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if IdConfig = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(IdConfig) + ',';
if IdComprobante = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(IdComprobante) + ',';
if IdTipoComprobante = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(IdTipoComprobante) + ',';
if NroComprobante = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + NroComprobante + chr(39) + ',';
if CuifCobrador = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(CuifCobrador) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaComprobantesEntregaConfig(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaComprobantesEntregaConfigPV(IdConfig:variant; IdComprobante:variant; 
IdTipoComprobante:variant; NroComprobante:string; CuifCobrador:variant;  var DataSet:TClientDataSet; FilterString:string; 
MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if IdConfig = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(IdConfig) + ',';
if IdComprobante = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(IdComprobante) + ',';
if IdTipoComprobante = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(IdTipoComprobante) + ',';
if NroComprobante = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + NroComprobante + chr(39) + ',';
if CuifCobrador = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(CuifCobrador) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaComprobantesEntregaConfigPV(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaComprobantesTalonarios(NroTalonario:variant; IdTipoComprobante:variant; 
PuntoVenta:variant;  var DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if NroTalonario = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroTalonario) + ',';
if IdTipoComprobante = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(IdTipoComprobante) + ',';
if PuntoVenta = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(PuntoVenta) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaComprobantesTalonarios(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaControlComprobantes(NroTalonario:variant; NroComprobante:variant; 
CuifCobrador:variant;  var DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if NroTalonario = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroTalonario) + ',';
if NroComprobante = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroComprobante) + ',';
if CuifCobrador = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(CuifCobrador) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaControlComprobantes(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaInhumadosPorParcela(NroAccion:variant;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if NroAccion = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroAccion) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaInhumadosPorParcela(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaLasParcelasCuentas(Id:variant; NroDni:variant; Cuif:variant; Cliente:string;  var 
DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if Id = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(Id) + ',';
if NroDni = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroDni) + ',';
if Cuif = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(Cuif) + ',';
if Cliente = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + Cliente + chr(39) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaLasParcelasCuentas(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaLosFormularios(NroGestion:variant;  var DataSet:TClientDataSet; FilterString:string; 
MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if NroGestion = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroGestion) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaLosFormularios(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaLosObjetosPrecios(NroTipoServicio:variant;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if NroTipoServicio = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroTipoServicio) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaLosObjetosPrecios(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaParcelas(NroAccion:variant; Sector:string; Parcela:variant; NroActa:variant;  var 
DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if NroAccion = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroAccion) + ',';
if Sector = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + Sector + chr(39) + ',';
if Parcela = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(Parcela) + ',';
if NroActa = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroActa) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaParcelas(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaParcelasConsolidadosMayoristas(CuentaCliente:variant; FechaVigencia:string; 
RazonSocial:string; NroDni:variant;  var DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if CuentaCliente = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(CuentaCliente) + ',';
if FechaVigencia = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + FechaVigencia + chr(39) + ',';
if RazonSocial = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + RazonSocial + chr(39) + ',';
if NroDni = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroDni) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaParcelasConsolidadosMayoristas(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaParcelasConsolidadosTitulares(NroAccion:variant; FechaVigencia:string; 
RazonSocial:string; NroDni:variant;  var DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if NroAccion = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroAccion) + ',';
if FechaVigencia = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + FechaVigencia + chr(39) + ',';
if RazonSocial = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + RazonSocial + chr(39) + ',';
if NroDni = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroDni) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaParcelasConsolidadosTitulares(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaParcelasCuentas(NroDni:variant; RazonSocial:string; CuentaCliente:variant;  var 
DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if NroDni = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroDni) + ',';
if RazonSocial = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + RazonSocial + chr(39) + ',';
if CuentaCliente = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(CuentaCliente) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaParcelasCuentas(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaParcelasFechaMantenimiento(NroAccion:variant;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if NroAccion = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroAccion) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaParcelasFechaMantenimiento(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaParcelasInhumados(IdHabitante:variant; NroAccion:variant; DniTitular:variant; 
NombreTitular:string; DniFallecido:variant; NombreFallecido:string; FechaFallecimiento:string;  var 
DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if IdHabitante = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(IdHabitante) + ',';
if NroAccion = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroAccion) + ',';
if DniTitular = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(DniTitular) + ',';
if NombreTitular = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + NombreTitular + chr(39) + ',';
if DniFallecido = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(DniFallecido) + ',';
if NombreFallecido = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + NombreFallecido + chr(39) + ',';
if FechaFallecimiento = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + FechaFallecimiento + chr(39) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaParcelasInhumados(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaParcelasInhumadosServicios(IdServicio:variant; NroAccion:variant;  var 
DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if IdServicio = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(IdServicio) + ',';
if NroAccion = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroAccion) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaParcelasInhumadosServicios(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaParcelasInhumadosTestigos(IdHabitante:variant;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if IdHabitante = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(IdHabitante) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaParcelasInhumadosTestigos(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaParcelasInhumadosTitulares(NroAccion:variant; Inhumado:string; NroDni:variant;  var 
DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if NroAccion = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroAccion) + ',';
if Inhumado = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + Inhumado + chr(39) + ',';
if NroDni = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroDni) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaParcelasInhumadosTitulares(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaParcelasLasVentas(NroAccion:variant; NroMov:variant;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if NroAccion = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroAccion) + ',';
if NroMov = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroMov) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaParcelasLasVentas(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaParcelasMantenimientoMayoristas(CuentaCliente:variant; FechaVigencia:string; 
RazonSocial:string; NroDni:variant;  var DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if CuentaCliente = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(CuentaCliente) + ',';
if FechaVigencia = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + FechaVigencia + chr(39) + ',';
if RazonSocial = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + RazonSocial + chr(39) + ',';
if NroDni = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroDni) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaParcelasMantenimientoMayoristas(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaParcelasMantenimientoTitulares(NroAccion:variant; Fecha:string; RazonSocial:string; 
NroDni:variant;  var DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if NroAccion = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroAccion) + ',';
if Fecha = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + Fecha + chr(39) + ',';
if RazonSocial = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + RazonSocial + chr(39) + ',';
if NroDni = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroDni) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaParcelasMantenimientoTitulares(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaParcelasMovimientosMant(NroAccion:variant;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if NroAccion = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroAccion) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaParcelasMovimientosMant(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaParcelasMovimientosServ(NroAccion:variant;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if NroAccion = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroAccion) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaParcelasMovimientosServ(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaParcelasMovimientosVent(NroAccion:variant;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if NroAccion = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroAccion) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaParcelasMovimientosVent(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaParcelasOperaciones(Ventas:boolean;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if Ventas then Parametros:=Parametros + '1,'
else Parametros:=Parametros + '0,';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaParcelasOperaciones(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaParcelasParaEspVerdes(NroAccion:variant; NroTitulo:variant; Sector:string;  var 
DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if NroAccion = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroAccion) + ',';
if NroTitulo = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroTitulo) + ',';
if Sector = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + Sector + chr(39) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaParcelasParaEspVerdes(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaParcelasParaVenta(NroAccion:variant;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if NroAccion = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroAccion) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaParcelasParaVenta(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaParcelasPreciosColores(TipoColor:variant; Sector:string;  var 
DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if TipoColor = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(TipoColor) + ',';
if Sector = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + Sector + chr(39) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaParcelasPreciosColores(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaParcelasPreciosHistorico(TipoColor:variant; Detalle:string;  var 
DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if TipoColor = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(TipoColor) + ',';
if Detalle = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + Detalle + chr(39) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaParcelasPreciosHistorico(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaParcelasResponsables(NroAccion:variant;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if NroAccion = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroAccion) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaParcelasResponsables (' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaParcelasResponsablesNombres(NroAccion:variant;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if NroAccion = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroAccion) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaParcelasResponsablesNombres(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaParcelasServicios(IdServicio:variant; NroAccion:variant;  var 
DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if IdServicio = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(IdServicio) + ',';
if NroAccion = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroAccion) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaParcelasServicios(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaParcelasServiciosDetalleObjetos(IdServicio:variant;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if IdServicio = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(IdServicio) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaParcelasServiciosDetalleObjetos(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaParcelasServiciosInhumados(NroAccion:variant;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if NroAccion = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroAccion) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaParcelasServiciosInhumados(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaParcelasServiciosMayoristas(CuentaCliente:variant; Fecha:string; Confirmado:boolean; 
Anulado:boolean; RazonSocial:string; NroDni:variant;  var DataSet:TClientDataSet; FilterString:string; 
MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if CuentaCliente = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(CuentaCliente) + ',';
if Fecha = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + Fecha + chr(39) + ',';
if Confirmado then Parametros:=Parametros + '1,'
else Parametros:=Parametros + '0,';
if Anulado then Parametros:=Parametros + '1,'
else Parametros:=Parametros + '0,';
if RazonSocial = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + RazonSocial + chr(39) + ',';
if NroDni = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroDni) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaParcelasServiciosMayoristas(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaParcelasServiciosTitulares(IdServicio:variant; NroAccion:variant; Fecha:string; 
Confirmado:boolean; Anulado:boolean; RazonSocial:string; NroDni:variant;  var DataSet:TClientDataSet; FilterString:string; 
MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if IdServicio = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(IdServicio) + ',';
if NroAccion = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroAccion) + ',';
if Fecha = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + Fecha + chr(39) + ',';
if Confirmado then Parametros:=Parametros + '1,'
else Parametros:=Parametros + '0,';
if Anulado then Parametros:=Parametros + '1,'
else Parametros:=Parametros + '0,';
if RazonSocial = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + RazonSocial + chr(39) + ',';
if NroDni = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroDni) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaParcelasServiciosTitulares(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaParcelasServicosDeudas(IdServicio:variant; NroAccion:variant;  var 
DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if IdServicio = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(IdServicio) + ',';
if NroAccion = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroAccion) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaParcelasServicosDeudas(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaParcelasTiposServiciosInhumados(NroAccion:variant;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if NroAccion = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroAccion) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaParcelasTiposServiciosInhumados(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaParcelasTitulares(Cuif:variant; NroAccion:variant;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if Cuif = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(Cuif) + ',';
if NroAccion = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroAccion) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaParcelasTitulares(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaParcelasTitularesNivel1(NroAccion:variant;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if NroAccion = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroAccion) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaParcelasTitularesNivel1(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaParcelasVentasDeudas(NroAccion:variant;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if NroAccion = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroAccion) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaParcelasVentasDeudas(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaParcelasVentasMayoristas(CuentaCliente:variant; Fecha:string; Confirmado:boolean; 
Anulado:boolean; RazonSocial:string; NroDni:variant;  var DataSet:TClientDataSet; FilterString:string; 
MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if CuentaCliente = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(CuentaCliente) + ',';
if Fecha = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + Fecha + chr(39) + ',';
if Confirmado then Parametros:=Parametros + '1,'
else Parametros:=Parametros + '0,';
if Anulado then Parametros:=Parametros + '1,'
else Parametros:=Parametros + '0,';
if RazonSocial = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + RazonSocial + chr(39) + ',';
if NroDni = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroDni) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaParcelasVentasMayoristas(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaParcelasVentasTitulares(IdVenta:variant; NroAccion:variant; Fecha:string; 
Confirmado:boolean; Anulado:boolean; RazonSocial:string; NroDni:variant;  var DataSet:TClientDataSet; FilterString:string; 
MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if IdVenta = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(IdVenta) + ',';
if NroAccion = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroAccion) + ',';
if Fecha = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + Fecha + chr(39) + ',';
if Confirmado then Parametros:=Parametros + '1,'
else Parametros:=Parametros + '0,';
if Anulado then Parametros:=Parametros + '1,'
else Parametros:=Parametros + '0,';
if RazonSocial = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + RazonSocial + chr(39) + ',';
if NroDni = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroDni) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaParcelasVentasTitulares(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaPersonal(Cuif:variant; RazonSocial:string; NroDni:variant;  var 
DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if Cuif = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(Cuif) + ',';
if RazonSocial = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + RazonSocial + chr(39) + ',';
if NroDni = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroDni) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaPersonal(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaPersonalAreas(NroArea:variant; FechaEgreso:string; cuif:variant;  var 
DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if NroArea = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroArea) + ',';
if FechaEgreso = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + FechaEgreso + chr(39) + ',';
if cuif = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(cuif) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaPersonalAreas(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaPersonalAreasComision(Cuif:variant;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if Cuif = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(Cuif) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaPersonalAreasComision(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaPersonalSubCobradores(CuifCobrador:variant; Cuif:variant;  var 
DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if CuifCobrador = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(CuifCobrador) + ',';
if Cuif = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(Cuif) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaPersonalSubCobradores(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaPlanillaCobranzas(Id:variant; NroFormulario:string; NroPlanilla:variant;  var 
DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if Id = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(Id) + ',';
if NroFormulario = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + NroFormulario + chr(39) + ',';
if NroPlanilla = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroPlanilla) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaPlanillaCobranzas(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaPlanillaCobranzasNumeros(NroFormulario:string; NroPlanilla:variant;  var 
DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if NroFormulario = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + NroFormulario + chr(39) + ',';
if NroPlanilla = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroPlanilla) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaPlanillaCobranzasNumeros(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaServicioNivel(NroTipoServicio:variant; IdTipoServicioNivel:variant;  var 
DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if NroTipoServicio = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroTipoServicio) + ',';
if IdTipoServicioNivel = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(IdTipoServicioNivel) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaServicioNivel(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaServiciosObjetos(NroTipoServicio:variant; Activo:boolean;  var 
DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if NroTipoServicio = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroTipoServicio) + ',';
if Activo then Parametros:=Parametros + '1,'
else Parametros:=Parametros + '0,';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaServiciosObjetos(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaServiciosObjetosValores(Detalle:string; Objeto:string;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if Detalle = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + Detalle + chr(39) + ',';
if Objeto = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + Objeto + chr(39) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaServiciosObjetosValores(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_Fn_VistaTitularesParaResumen(NroAccion:variant;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if NroAccion = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroAccion) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM Fn_VistaTitularesParaResumen(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_FnCalculaCierreCaja(fecha:string; NroOperador:variant;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if fecha = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + fecha + chr(39) + ',';
if NroOperador = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroOperador) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM FnCalculaCierreCaja(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_FnCierreCaja(fecha:string; NroOperador:variant;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if fecha = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + fecha + chr(39) + ',';
if NroOperador = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroOperador) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM FnCierreCaja(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_FnCierreCajaTotal(fecha:string; NroOperador:variant;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if fecha = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + fecha + chr(39) + ',';
if NroOperador = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroOperador) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM FnCierreCajaTotal(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_FnCierreCajaxFechas(fecha:string; fecha1:string; NroOperador:variant;  var 
DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if fecha = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + fecha + chr(39) + ',';
if fecha1 = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + fecha1 + chr(39) + ',';
if NroOperador = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroOperador) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM FnCierreCajaxFechas(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_FnCierreCajaxFechasTotal(fecha:string; fecha1:string; usuario:variant;  var 
DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if fecha = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + fecha + chr(39) + ',';
if fecha1 = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + fecha1 + chr(39) + ',';
if usuario = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(usuario) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM FnCierreCajaxFechasTotal(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_FnCierreSaldoAnterior(Fecha:string;  var DataSet:TClientDataSet; FilterString:string; 
MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if Fecha = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + Fecha + chr(39) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM FnCierreSaldoAnterior(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_ObtieneNumerosPlanillasCobranzas(NroFormulario:string;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if NroFormulario = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + NroFormulario + chr(39) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM ObtieneNumerosPlanillasCobranzas(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_SaldoCaja(FechaIni:string; FechaFin:string;  var DataSet:TClientDataSet; 
FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if FechaIni = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + FechaIni + chr(39) + ',';
if FechaFin = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + FechaFin + chr(39) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM SaldoCaja(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_SaldosPorAccion(NroObjeto:variant; NroAccion:variant; Periodo:variant; EsMinorista:boolean;  
var DataSet:TClientDataSet; FilterString:string; MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if NroObjeto = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroObjeto) + ',';
if NroAccion = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroAccion) + ',';
if Periodo = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(Periodo) + ',';
if EsMinorista then Parametros:=Parametros + '1,'
else Parametros:=Parametros + '0,';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM SaldosPorAccion(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Run_TodosCUIF(NroDni:variant; Sexo:string;  var DataSet:TClientDataSet; FilterString:string; 
MaxRecord:integer):boolean;
var Parametros:widestring;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

Parametros:='';
//Cargo los Parmetros
if NroDni = NULL then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros + VarToStr(NroDni) + ',';
if Sexo = '' then Parametros:=Parametros + 'NULL,'
else Parametros:=Parametros  + chr(39) + Sexo + chr(39) + ',';
Parametros:=Parametros + IntToStr(MaxRecord);

Parametros:='SELECT * FROM TodosCUIF(' + Parametros + ') ';
if FilterString <> '' then Parametros:=Parametros + FilterString;
//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Parametros,DataSet);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
end;
//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TFuncionesVarias.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;


end.

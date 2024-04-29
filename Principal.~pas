unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Menus, jpeg, StdCtrls, Buttons, JvExButtons,
  JvBitBtn, ToolWin,DBClient,ClaseFunciones, ImgList, LMDCustomControl,
  LMDCustomPanel, LMDCustomBevelPanel, LMDCustomParentPanel,StrUtils,
  LMDCustomPanelFill, LMDButtonBar, JvImageList, LMDCustomComponent, DB, ADODB,
  LMDBaseController, LMDCustomContainer, LMDCustomImageList, LMDImageList,
  JvComponentBase, JvComputerInfoEx;

type
  TMenuPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Mantenimiento1: TMenuItem;
    N1: TMenuItem;
    Acercade1: TMenuItem;
    ProblemasdeConexin1: TMenuItem;
    Salir1: TMenuItem;
    Otros1: TMenuItem;
    Image1: TImage;
    SBarra1: TStatusBar;
    clientes1: TMenuItem;
    ConsultasClientes1: TMenuItem;
    Parcelas1: TMenuItem;
    Consultas1: TMenuItem;
    Precios1: TMenuItem;
    ClienteBasico1: TMenuItem;
    N2: TMenuItem;
    Ventas1: TMenuItem;
    Servicios1: TMenuItem;
    Mantenimiento2: TMenuItem;
    VentaParcelas1: TMenuItem;
    ransferencias1: TMenuItem;
    Consultas2: TMenuItem;
    GrficoParcelario1: TMenuItem;
    Auditora1: TMenuItem;
    MovimientosVentas1: TMenuItem;
    MovimientosServicios1: TMenuItem;
    MovimientosMantenimiento1: TMenuItem;
    Inhumados1: TMenuItem;
    AltasyModificaciones1: TMenuItem;
    Confirmacin1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    VentaServicios1: TMenuItem;
    N5: TMenuItem;
    Confirmacin2: TMenuItem;
    N6: TMenuItem;
    ListadePrecios1: TMenuItem;
    Consultas3: TMenuItem;
    Consultas4: TMenuItem;
    N7: TMenuItem;
    N9: TMenuItem;
    Consultas5: TMenuItem;
    Cobradores1: TMenuItem;
    AsignacinTalonarios1: TMenuItem;
    AltasyModificaciones2: TMenuItem;
    Consultas6: TMenuItem;
    N10: TMenuItem;
    AltasyModificacionesdePagos1: TMenuItem;
    N11: TMenuItem;
    Confirmacin4: TMenuItem;
    N12: TMenuItem;
    Pagos1: TMenuItem;
    EstadodeCuenta1: TMenuItem;
    Pagos2: TMenuItem;
    EstadodeCuenta2: TMenuItem;
    Pagos3: TMenuItem;
    EstadodeCuenta3: TMenuItem;
    N13: TMenuItem;
    Acreditaciones1: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    Consultas8: TMenuItem;
    alonariosNuevos1: TMenuItem;
    N17: TMenuItem;
    Consultas9: TMenuItem;
    ResumendeCaja1: TMenuItem;
    DeterminacindeIVA1: TMenuItem;
    Caja1: TMenuItem;
    PlanillaCobranzas1: TMenuItem;
    AltasdePlanillas1: TMenuItem;
    Anulacin1: TMenuItem;
    Ipresion1: TMenuItem;
    CajaxFechas1: TMenuItem;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    Cobro: TJvBitBtn;
    ToolButton2: TToolButton;
    GUARDA: TJvBitBtn;
    ToolButton3: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    JvBitBtn2: TJvBitBtn;
    JvBitBtn3: TJvBitBtn;
    ClienteCuentas1: TMenuItem;
    Impresiones1: TMenuItem;
    DetallePorGestor1: TMenuItem;
    MasivadeEstadosdeCuenta2: TMenuItem;
    N18: TMenuItem;
    EntregadeComprobantes1: TMenuItem;
    ActivarMantenimiento1: TMenuItem;
    N19: TMenuItem;
    ImprimirLibroIVA1: TMenuItem;
    MovimientosConsolidados1: TMenuItem;
    Donacin1: TMenuItem;
    ParcelasaEspaciosVerde1: TMenuItem;
    N20: TMenuItem;
    CambiodeVAl1: TMenuItem;
    CambiodeFecha1: TMenuItem;
    Reasigna1: TMenuItem;
    AnulaciondePago1: TMenuItem;
    Panel1: TPanel;
    JvBitBtn4: TJvBitBtn;
    Timer1: TTimer;
    Label1: TLabel;
    HistorialdeMovimientos1: TMenuItem;
    CambioTiutularporNroAccion1: TMenuItem;
    VentasReservas1: TMenuItem;
    JvBitBtn5: TJvBitBtn;
    ToolButton1: TToolButton;
    N21: TMenuItem;
    ComprobantesFaltentes1: TMenuItem;
    Timer2: TTimer;
    Image2: TImage;
    Image3: TImage;
    ImageList1: TImageList;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    JvBitBtn6: TJvBitBtn;
    ToolButton5: TToolButton;
    LibroVentas1: TMenuItem;
    Consolidados1: TMenuItem;
    ConfigDeuda1: TMenuItem;
    CambiosdeTitulares1: TMenuItem;
    AisgnaciondeCobrador1: TMenuItem;
    AnulaciondeTalonarios1: TMenuItem;
    ConsultadeComisiones1: TMenuItem;
    CargaPeriodosPagos1: TMenuItem;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    CargadeComprobantesGastosCorreo1: TMenuItem;
    Estadisticas1: TMenuItem;
    ComprobantesFaltantes1: TMenuItem;
    CantideVentasyServicios1: TMenuItem;
    MovimientosdeFacturasporMes1: TMenuItem;
    MovimientosdePlanillas1: TMenuItem;
    IngresosDiarios1: TMenuItem;
    ImpresiondeMorosos1: TMenuItem;
    JvBitBtn7: TJvBitBtn;
    LMDImageList1: TLMDImageList;
    ReimpresiondeEstadosdeCuenta1: TMenuItem;
    ImpresionesAccionesxCajas1: TMenuItem;
    MovimientosPagosAnuales1: TMenuItem;
    InhumadosProvisoriosSinServicios1: TMenuItem;
    ConsultaGeneralporAccion1: TMenuItem;
    EntregadeTitulos1: TMenuItem;
    MasivadeEstadosdeCuentasALDIA1: TMenuItem;
    ImpresionTitulares1: TMenuItem;
    ResolverNovedades1: TMenuItem;
    ListadodeParcelasDisponiblesyVendidas1: TMenuItem;
    FacturacionElectronica1: TMenuItem;
    IniciarProcesos1: TMenuItem;
    ActualizarComprobantes1: TMenuItem;
    ImpresionNotaMuniciapal1: TMenuItem;
    DardeBajaInhumados1: TMenuItem;
    MutualesInstituciones1: TMenuItem;
    DatosdelaFicha1: TMenuItem;
    CargaPagosPosnet1: TMenuItem;
    CargadeTicket1: TMenuItem;
    Consultas7: TMenuItem;
    Label2: TLabel;
    ToolButton10: TToolButton;
    JvBitBtn8: TJvBitBtn;
    CargadeInhumadosFaltantes1: TMenuItem;
    DevoluciondeTalonarios1: TMenuItem;
    vernov: TJvBitBtn;
    Label3: TLabel;
    IniciarProcesosFactElectronicaEsp1: TMenuItem;
    ImpresionIntimacionesaMorosos1: TMenuItem;
    CuentasCorrientes1: TMenuItem;
    ConfecciondeCtaCte1: TMenuItem;
    ConfirmaciondePAGO1: TMenuItem;
    INFOPC: TJvComputerInfoEx;
    Timer3: TTimer;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ConsultasSepelios1: TMenuItem;
    raslados1: TMenuItem;
    ABMTraslados1: TMenuItem;
    ConsultasTraslados1: TMenuItem;
    ActualizarImportesKilimotraje1: TMenuItem;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    Exhumaciones1: TMenuItem;
    ImpNOTAExhumacion1: TMenuItem;
    Confirmar1: TMenuItem;
    Consultas11: TMenuItem;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    AgregarNuevosConvenios1: TMenuItem;
    ConfirmarPagoCtaCte1: TMenuItem;
    ReimpreciondeDocumentos1: TMenuItem;
    SpeedButton14: TSpeedButton;
    Calculodeimporte1: TMenuItem;
    DevoluciondeAccionalaEmpresa1: TMenuItem;
    SolictuddeEntregadeTitulo1: TMenuItem;
    ConstanciadeEntregadeTitulo1: TMenuItem;
    VentasParcelasMayoritarios1: TMenuItem;
    CambiarValor1: TMenuItem;
    CambiodeValor1: TMenuItem;
    CambiarValor2: TMenuItem;
    Proveedores1: TMenuItem;
    PagosRealizados1: TMenuItem;
    CambiarPeriodosPagos1: TMenuItem;
    CamibarAcciondelPago1: TMenuItem;
    ABMPosnet1: TMenuItem;
    ABMTarjetasCreditos1: TMenuItem;
    N8: TMenuItem;
    EliminarServiciodeInhumacion1: TMenuItem;
    N22: TMenuItem;
    EliminarInhumado1: TMenuItem;
    SpeedButton15: TSpeedButton;
    ABMOrigenes1: TMenuItem;
    ABMDestinos1: TMenuItem;
    SpeedButton16: TSpeedButton;
    ListadodeDeudoresparaVERAZ1: TMenuItem;
    ActualizarVALORENELMES1: TMenuItem;
    ACTUALIZARVALORPARCELAS1: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure BotoneraSections1Items1Click(Sender: TObject);
    procedure clientes1Click(Sender: TObject);
    procedure ConsultasClientes1Click(Sender: TObject);
    procedure Precios1Click(Sender: TObject);
    procedure ClienteBasico1Click(Sender: TObject);
    procedure MovimientosVentas1Click(Sender: TObject);
    procedure MovimientosServicios1Click(Sender: TObject);
    procedure MovimientosMantenimiento1Click(Sender: TObject);
    procedure AltasyModificaciones1Click(Sender: TObject);
    procedure AsignacinTalonarios1Click(Sender: TObject);
    procedure AltasyModificacionesdePagos1Click(Sender: TObject);
    procedure Confirmacin4Click(Sender: TObject);
    procedure alonariosNuevos1Click(Sender: TObject);
    procedure VentaParcelas1Click(Sender: TObject);
    procedure ResumendeCaja1Click(Sender: TObject);
    procedure VentaServicios1Click(Sender: TObject);
    procedure AltasyModificaciones2Click(Sender: TObject);
    procedure Consultas6Click(Sender: TObject);
    procedure AltasdePlanillas1Click(Sender: TObject);
    procedure Anulacin1Click(Sender: TObject);
    procedure Acreditaciones1Click(Sender: TObject);
    procedure Confirmacin1Click(Sender: TObject);
    procedure Ipresion1Click(Sender: TObject);
    procedure CajaxFechas1Click(Sender: TObject);
    procedure ClienteCuentas1Click(Sender: TObject);
    procedure Confirmacin2Click(Sender: TObject);
    procedure MasivadeEstadosdeCuenta2Click(Sender: TObject);
    procedure DetallePorGestor1Click(Sender: TObject);
    procedure EntregadeComprobantes1Click(Sender: TObject);
    procedure Consultas2Click(Sender: TObject);
    procedure ActivarMantenimiento1Click(Sender: TObject);
    procedure ImprimirLibroIVA1Click(Sender: TObject);
    procedure MovimientosConsolidados1Click(Sender: TObject);
    procedure Consultas8Click(Sender: TObject);
    procedure Donacin1Click(Sender: TObject);
    procedure ransferencias1Click(Sender: TObject);
    procedure ParcelasaEspaciosVerde1Click(Sender: TObject);
    procedure CambiodeVAl1Click(Sender: TObject);
    procedure GrficoParcelario1Click(Sender: TObject);
    procedure CambiodeFecha1Click(Sender: TObject);
    procedure Reasigna1Click(Sender: TObject);
    procedure ListadePrecios1Click(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure AnulaciondePago1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure JvBitBtn4Click(Sender: TObject);
    procedure HistorialdeMovimientos1Click(Sender: TObject);
    procedure CambioTiutularporNroAccion1Click(Sender: TObject);
    procedure VentasReservas1Click(Sender: TObject);
    procedure JvBitBtn5Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Pagos1Click(Sender: TObject);
    procedure JvBitBtn6Click(Sender: TObject);
    procedure LibroVentas1Click(Sender: TObject);
    procedure ConfigDeuda1Click(Sender: TObject);
    procedure CambiosdeTitulares1Click(Sender: TObject);
    procedure AisgnaciondeCobrador1Click(Sender: TObject);
    procedure Consultas5Click(Sender: TObject);
    procedure AnulaciondeTalonarios1Click(Sender: TObject);
    procedure ConsultadeComisiones1Click(Sender: TObject);
    procedure CargaPeriodosPagos1Click(Sender: TObject);
    procedure ComprobantesFaltantes1Click(Sender: TObject);
    procedure MovimientosdeFacturasporMes1Click(Sender: TObject);
    procedure MovimientosdePlanillas1Click(Sender: TObject);
    procedure CantideVentasyServicios1Click(Sender: TObject);
    procedure IngresosDiarios1Click(Sender: TObject);
    procedure ImpresiondeMorosos1Click(Sender: TObject);
    procedure JvBitBtn7Click(Sender: TObject);
    procedure ReimpresiondeEstadosdeCuenta1Click(Sender: TObject);
    procedure ImpresionesAccionesxCajas1Click(Sender: TObject);
    procedure MovimientosPagosAnuales1Click(Sender: TObject);
    procedure ComprobantesFaltentes1Click(Sender: TObject);
    procedure CargadeComprobantesGastosCorreo1Click(Sender: TObject);
    procedure InhumadosProvisoriosSinServicios1Click(Sender: TObject);
    procedure ConsultaGeneralporAccion1Click(Sender: TObject);
    procedure MasivadeEstadosdeCuentasALDIA1Click(Sender: TObject);
    procedure ImpresionTitulares1Click(Sender: TObject);
    procedure ResolverNovedades1Click(Sender: TObject);
    procedure ListadodeParcelasDisponiblesyVendidas1Click(Sender: TObject);
    procedure IniciarProcesos1Click(Sender: TObject);
    procedure ActualizarComprobantes1Click(Sender: TObject);
    procedure ImpresionNotaMuniciapal1Click(Sender: TObject);
    procedure DardeBajaInhumados1Click(Sender: TObject);
    procedure DatosdelaFicha1Click(Sender: TObject);
    procedure CargadeTicket1Click(Sender: TObject);
    function GetAppVersion: string;
    procedure CargadeInhumadosFaltantes1Click(Sender: TObject);
    procedure DevoluciondeTalonarios1Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure vernovClick(Sender: TObject);
    procedure IniciarProcesosFactElectronicaEsp1Click(Sender: TObject);
    procedure ImpresionIntimacionesaMorosos1Click(Sender: TObject);
    procedure ConfecciondeCtaCte1Click(Sender: TObject);
    procedure ConfirmaciondePAGO1Click(Sender: TObject);
    procedure JvBitBtn8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Timer3Timer(Sender: TObject);
    function MinutesBetween(aNow, aThen :TDateTime) :Int64;
    function NewMinutesBetween(aNow, aThen :TDateTime) :Int64;
    procedure ProblemasdeConexin1Click(Sender: TObject);
    procedure Acercade1Click(Sender: TObject);
    procedure ConsultasSepelios1Click(Sender: TObject);
    procedure ABMTraslados1Click(Sender: TObject);
    procedure ActualizarImportesKilimotraje1Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure ImpNOTAExhumacion1Click(Sender: TObject);
    procedure Confirmar1Click(Sender: TObject);
    procedure Consultas11Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure AgregarNuevosConvenios1Click(Sender: TObject);
    procedure ConfirmarPagoCtaCte1Click(Sender: TObject);
    procedure ReimpreciondeDocumentos1Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure Calculodeimporte1Click(Sender: TObject);
    procedure ConsultasTraslados1Click(Sender: TObject);
    procedure DevoluciondeAccionalaEmpresa1Click(Sender: TObject);
    procedure ConstanciadeEntregadeTitulo1Click(Sender: TObject);
    procedure VentasParcelasMayoritarios1Click(Sender: TObject);
    procedure CambiarValor1Click(Sender: TObject);
    procedure CambiodeValor1Click(Sender: TObject);
    procedure CambiarValor2Click(Sender: TObject);
    procedure Proveedores1Click(Sender: TObject);
    procedure CambiarPeriodosPagos1Click(Sender: TObject);
    procedure CamibarAcciondelPago1Click(Sender: TObject);
    procedure ABMPosnet1Click(Sender: TObject);
    procedure ABMTarjetasCreditos1Click(Sender: TObject);
    procedure EliminarServiciodeInhumacion1Click(Sender: TObject);
    procedure EliminarInhumado1Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure ABMOrigenes1Click(Sender: TObject);
    procedure ABMDestinos1Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure VerArea(nro:integer;modu:integer);
    procedure ListadodeDeudoresparaVERAZ1Click(Sender: TObject);
    procedure ActualizarVALORENELMES1Click(Sender: TObject);
    procedure ACTUALIZARVALORPARCELAS1Click(Sender: TObject);
    { Private declarations }
  public
    FechaHora,FechaHora2:TTime;
    qwe:boolean;{ Public declarations }
  private
    level,ElIp,ELHOST,hora,elniv :string;
    DtCombo:TClientDataSet;
    Funciones:TFuncionesVarias;

    DataSetUni:TADODataSet;
  end;

var
  MenuPrincipal: TMenuPrincipal;
  parp:boolean;
  vTimer,min:integer;

implementation

 uses Modulo, Unidad, Login, //acerca,
  AM_Clientes,Consu_Clientes,CON_ParcelasVentas,
  AM_PreciosParcelas,//,ValidarArchivos,
  AuditMovi, AM_Inhumado, Confirma_Inhumado, AM_Entrega,
  AM_Comprobantes, AM_Planilla, AM_Talon, VEN_Parcelas, Resu_Caja,
  AM_Servicios, AM_Cobradores, CON_Cobra, AM_TalonCobro, Anula_Planilla,
  AM_Acreditacion,Confirma_InhuVenta,Imprime_Placa,SaldosCuentas,
  Imp_Resumenes,AM_ParcelasCuentas,Imp_LosResumenesGestor, AM_EntregaEsp,
  Consul_General, AM_FechaMant, Imp_LibroIva, Con_Comprob,VEN_ParcelasNew,
  VEN_ServiciosNew,ParcelasEspaciosVerdes, AM_VenGenerica,
  CambioValorMante,Graf_Parc,CambioFechaPlanilla,ReasignarCobrador,ObjetosPrecios,
  Inhu_Movim,Elimina_PagoPlanilla,VentasSinTresTitulares,ParcelasMovimientos,ChangeTitular,
  ReservasParcelas,ComprobantesFaltantes,ConfirmaVtaServ,Est_MoviCaja,Est_MoviVentas,
  ParcelasConsilidados,ABM_Titulares,Imp_LosTitularesxAcciones,ReasignarParcelasxCobrador,
  Consu_Inhumados,Anula_Talon,CobradoresComision,CargaPeriodosPagos,
  Movim_Facturas,Movim_Planillas,Movim_VentasServicios,Movim_Diarios,
  Imp_ResumenesMorosos,Movim_Novedades,ReImp_ResumenesxAccion,ParcelasNewConsilidados,
  Con_AccionesxCajas,Con_PagosAnuales,AMComprobantesCorreos,AM_InhumadoProvisorio,
  Consul_PorAccionl,Imp_ResumenesAccionesAldia,Imp_LosClientes, AM_Proveedores,
  Imp_ResumenesPsP,LasNovedadesParcelas,Imp_AccionesDispoYVendidas,
  GeneraFactuMAsiva,ActualizaComprob,NotaMuni_Inhumados,Borra_Inhumados,
  LasMutualesInstituicones,Consul_MantencionPanteones,CargaPagosPosnet,Imp_ResumenesGeneral,
  GeneraPasosImp,AM_InhumadoEspeciales,Devolucion_Talon,AM_Exhumado,GeneraPasosImpEsp,
  Imp_ResumenesMorososIntimaciones,Consu_Exhumados,AM_EntregaTitulo,AM_Sepelios,
  AM_CuentaCorrientes,ImpSolic_Exhumado,EnvioMail,AM_Cremacion,AM_Comprobantes_Sepelios,
  Consu_Sepelios,Consu_Crmaciones,AM_Traslados,AM_TrasladosImporte,AM_CremacionesImporte,CambioValorInhumacion,
  AM_CuentaCorrientesMutuales,ReimpPapeles_Titulares,  NewPagos_CuentaCorrientes,CambioValorCremacion,
  CalculoImp_Traslados,Consu_Traslados,DevolucionAccion,VEN_ParcelasMayoritarios,CambioValorSepelio,
  CambioValorTraslados,CambioPagosRecibos,CambioPagosRecibosAccion,EliminaServiciosInhum,
  ActualizarValorMante,
  EliminaUltimoInhumado,CambiaOrigenDestinorCremacion,ResumenesMorososVeraz,Cambia_ValorVenta;

{$R *.dfm}

function TMenuPrincipal.MinutesBetween(aNow, aThen :TDateTime) :Int64;
begin
  Result := Trunc((aThen -aNow) *24 *60);
end;

function TMenuPrincipal.NewMinutesBetween(aNow, aThen :TDateTime) :Int64;
var
  MinDiff :Extended;
begin
  MinDiff := (aThen -aNow) *24 *60;
  if (MinDiff -Trunc(MinDiff)) > 0.9999 then
    MinDiff := Round(MinDiff);

  Result := Trunc(MinDiff);
end;

procedure TMenuPrincipal.FormActivate(Sender: TObject);
var Acces: TAcceso;
    txt:string;
begin
 image1.Picture.LoadFromFile(modulo2.path_todo + '\Imagenes\LogoSistemaRemanso.jpg');
 //image1.Picture.LoadFromFile(modulo2.path_todo + '\Fotos\LogoSistemaRemanso.jpg');
 //image2.Picture.LoadFromFile(modulo2.path_todo + '\Fotos\10.jpg');
 //image3.Picture.LoadFromFile(modulo2.path_todo + '\Fotos\11.jpg');
 //image4.Picture.LoadFromFile(modulo2.path_todo + '\Fotos\12.jpg');
 //image5.Picture.LoadFromFile(modulo2.path_todo + '\Fotos\13.jpg');
 //image6.Picture.LoadFromFile(modulo2.path_todo + '\Fotos\14.jpg');
 //image7.Picture.LoadFromFile(modulo2.path_todo + '\Fotos\15.jpg');
 //image8.Picture.LoadFromFile(modulo2.path_todo + '\Fotos\16.jpg');
 //image9.Picture.LoadFromFile(modulo2.path_todo + '\Fotos\17.jpg');
 //image10.Picture.LoadFromFile(modulo2.path_todo + '\Fotos\18.jpg');
// txt:=modulo2.path_todo + '\Imagenes\' + modulo2.INI1.ReadString('Imagenes','ArchivoImagen2','');
// SBarra1.Panels[4].Text:='Ver ' + modulo2.GetAppVersion;
// if fileExists(txt) then begin
//  try
//    Image1.Picture.LoadFromFile(txt);
//  except
//  end;
// end;
 MODULO2.ElIp:= INFOPC.Identification.IPAddress;
 MODULO2.ElHost := INFOPC.Identification.LocalComputerName;
 if not(qwe) then begin
  SBarra1.Panels[4].Text:=ElIp + '/' + ElHost;
  Acces:= TAcceso.create(self);
  try
   Acces.ShowModal;
   if Acces.control = false then close
   else begin
    SBarra1.Panels[0].Text:='N° Usuario: ' + inttostr(modulo2.nro_usu);
    SBarra1.Panels[1].Text:='Nombre Usuario: ' + modulo2.nom_usu;
    SBarra1.Panels[2].Text:='Servidor: \\' + modulo2.server;
    SBarra1.Panels[3].Text:='Base Datos: ' + modulo2.BaseDatos;
    label2.Caption:='Version - ' + GetAppVersion;
   end;
  finally
   if Acces.control = false then close;
   qwe:=true;
   Acces.destroy;
  end;
  coloca1(1);
  coloca1(2);
  coloca1(3);
 end;
 FechaHora := Now();
 label4.Caption := FormatDateTime('hh:mm:ss',FechaHora);//LeftStr(timetostr(FechaHora),5);
 if modulo2.nro_usu = 1 then toolbar1.Visible :=true
  else  toolbar1.Visible :=false;
 label1.Visible:=false;
 label3.Visible:=false;
 vernov.Visible :=false;
 JvBitBtn4.Visible :=false;
   //label4.Refresh;
end;

function TMenuPrincipal.GetAppVersion: string;
var
    Size, Size2: DWord;
    Pt, Pt2: Pointer;
begin
 Size := GetFileVersionInfoSize(PChar(ParamStr(0)), Size2);
 if Size > 0 then  begin
  GetMem(Pt, Size);
  try
   GetFileVersionInfo(PChar(ParamStr(0)), 0, Size, Pt);
   VerQueryValue(Pt, '\', Pt2, Size2);
   with TVSFixedFileInfo(Pt2^) do
   begin
    Result := '' +
    IntToStr(HiWord(dwFileVersionMS)) + '.' +
    IntToStr(LoWord(dwFileVersionMS)) + '.' +
    IntToStr(HiWord(dwFileVersionLS))
    + IntToStr(LoWord(dwFileVersionLS));
   end;
  finally
   FreeMem(Pt);
  end;
 end;
end;

procedure TMenuPrincipal.VerArea(nro:integer;modu:integer);
var t,b:integer;
    Cnx2:TADOConnection;
begin
 Cnx2:=TADOConnection.Create(nil);
 Cnx2.LoginPrompt:=false;
 Cnx2.ConnectionString:=Modulo2.Conexion;
 if nro=1 then begin
  DataSetUni:=TADODataSet.Create(nil);
  DataSetUni.Close;
  DataSetUni.Connection:=Cnx2;
  DataSetUni.CommandText:='SELECT Nivel FROM [UsuariosRem].[dbo].[UsuModulos] WHERE (codusu=' + inttostr(modulo2.nro_usu) + ') AND (modulo = ' + inttostr(modu) + ')';
  DataSetUni.Open;
  if not DataSetUni.IsEmpty  then elniv:= INTTOSTR(DataSetUni.Fields[0].asinteger)
    else elniv:='0';
  DataSetUni.Connection:=nil;
 end;
 Cnx2.Close;
 FreeAndNil(Cnx2);
end;


procedure TMenuPrincipal.Coloca1(nro:byte);
var txt,diasemana:string;
var Inhu_FecNacFalle: TInhu_FecNacFalle;
var tot,tot1:integer;
begin
if nro=1 then begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txt:='SELECT dia from  BuscarDiaSemana ()';
  if not Funciones.Listar(txt,DtCombo) then
   messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
  diasemana:=trim(DtCombo.Fields[0].AsString);
  if (diasemana='LUNES') or (diasemana='MIERCOLES') or (diasemana='VIERNES') then  begin
   Inhu_FecNacFalle:= TInhu_FecNacFalle.create(self);
   try
     Inhu_FecNacFalle.ShowModal;
   finally
    Inhu_FecNacFalle.destroy;
   end;
  end;
  end;
end;
if nro=2 then begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txt:='SELECT * from LasAccionesVentasSinTresTitulares';
  if not Funciones.Listar(txt,DtCombo) then
   messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
   tot:=dtcombo.RecordCount;
   if tot > 0 then  panel1.Visible:=true
      else panel1.Visible:=false;
  end;
end;
if nro=3 then begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txt:='SELECT id, ParcelasNovedades.Nroaccion,parcelas.Sector ,parcelas.Parcela, Novedad,'
   +'CASE WHEN fecharesuelto is not null THEN ''SI'' ELSE ''NO'' END AS Resuelto, '
   +' convert(char(10),fechaalta,103) as fechaalta'
   +' FROM ParcelasNovedades inner join Parcelas on Parcelas.NroAccion = ParcelasNovedades.Nroaccion'
   +' where fecharesuelto is null and fechaalta is not null '
   +' order by convert(char(10),fechaalta,103) desc';
  if not Funciones.Listar(txt,DtCombo) then
   messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
   tot1:=dtcombo.RecordCount;
   {if tot1 > 0 then begin
    label3.Visible:=true;
    vernov.Visible:=true ;
   end
   else begin
     label3.Visible:=false;
     vernov.Visible:=false;
   end; }
  end;
end;
Funciones.Free;
end;

procedure TMenuPrincipal.BotoneraSections1Items1Click(Sender: TObject);
begin
Close;
end;

procedure TMenuPrincipal.clientes1Click(Sender: TObject);
var AM_Cli: TAM_Cli;
  niv:integer;
begin
  AM_Cli:= TAM_Cli.create(self);
  AM_Cli.TipoCliente:=0;
  try
    AuditAccesos('Modulo 2','INGRESO A CLIENTES - Usu ' + inttostr(modulo2.nro_usu));
    AM_Cli.ShowModal;
  finally
   AM_Cli.destroy;
   FechaHora := Now();
   label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
end;

procedure TMenuPrincipal.ConsultasClientes1Click(Sender: TObject);
var Con_Cliente: TCon_Cliente;
begin
  Con_Cliente:= TCon_Cliente.create(self);
  try
    AuditAccesos('Mdulo 2','INGRESO CONSULTA DE CLIENTES - Usu ' + inttostr(modulo2.nro_usu));
    Con_Cliente.ShowModal;
  finally
    Con_Cliente.destroy;
    FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
end;

procedure TMenuPrincipal.Precios1Click(Sender: TObject);
var AM_PrePar: TAM_PrePar;
begin
//if Modulo2.usu_level = 0 then usu_level(modulo2.nro_usu,1);
  //if Modulo2.usu_level <= 2 then begin
  if modulo2.nro_usu <= 1 then begin
     AuditAccesos('Modulo 2','INGRESO MODIF DE PRECIO PARCELA - Usu ' + inttostr(modulo2.nro_usu)) ;
    AM_PrePar:= TAM_PrePar.create(self);
    try
      AM_PrePar.ShowModal;
    finally
      AM_PrePar.Free;
      FechaHora := Now();
      label4.Caption := LeftStr(timetostr(FechaHora),5);
    end;
  end
  else begin
    messagedlgpos('Permisos Insuficiente para el Usuario ' + modulo2.nom_usu
    + chr(13) + ' para el Ingreso a este Módulo del Programa.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
  end;
end;

procedure TMenuPrincipal.ClienteBasico1Click(Sender: TObject);
var AM_Cli: TAM_Cli;
begin
  AM_Cli:= TAM_Cli.create(self);
  try
    AuditAccesos('Mdulo 2','INGRESO A CLIENTES BASICO - Usu ' + inttostr(modulo2.nro_usu));
    AM_Cli.TipoCliente:=1;
    AM_Cli.ShowModal;
  finally
    AM_Cli.destroy;
    FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
end;

procedure TMenuPrincipal.MovimientosVentas1Click(Sender: TObject);
var AuditaMovim: TAuditaMovim;
begin
if usu_level(modulo2.nro_usu,1) < 2 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
else begin
  AuditaMovim:= TAuditaMovim.create(self);
  try
    AuditaMovim.Caption:='Control de Movimientos - VENTAS';
    AuditaMovim.NroOpcion:=1;
    AuditaMovim.ShowModal;
  finally
    AuditaMovim.destroy;
    FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
end;
end;

procedure TMenuPrincipal.MovimientosServicios1Click(Sender: TObject);
var AuditaMovim: TAuditaMovim;
begin
if usu_level(modulo2.nro_usu,1) < 2 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
else begin
  AuditaMovim:= TAuditaMovim.create(self);
  try
    AuditaMovim.Caption:='Control de Movimientos - SERVICIOS';
    AuditaMovim.NroOpcion:=2;
    AuditaMovim.ShowModal;
  finally
    AuditaMovim.destroy;
    FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
end;
end;

procedure TMenuPrincipal.MovimientosMantenimiento1Click(Sender: TObject);
var AuditaMovim: TAuditaMovim;
begin
if usu_level(modulo2.nro_usu,1) < 2 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
else begin
  AuditaMovim:= TAuditaMovim.create(self);
  try
    AuditaMovim.Caption:='Control de Movimientos - MANTENIMIENTO';
    AuditaMovim.NroOpcion:=3;
    AuditaMovim.ShowModal;
  finally
    AuditaMovim.destroy;
    FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
end;
end;

procedure TMenuPrincipal.AltasyModificaciones1Click(Sender: TObject);
var AM_Inhu: TAM_Inhu;
begin
 IF modulo2.nro_usu <= 2 THEN BEGIN
  AM_Inhu:= TAM_Inhu.create(self);
  try
    AuditAccesos('Modulo 2','INGRESO A MODIF. INHUMADO - Usu ' + inttostr(modulo2.nro_usu)) ;
    AM_Inhu.ShowModal;
  finally
    AM_Inhu.destroy;
    FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end
 else begin
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 end;
end;

procedure TMenuPrincipal.AsignacinTalonarios1Click(Sender: TObject);
var AM_EntregaTalon: TAM_EntregaTalon;
begin
 IF (modulo2.nro_usu >= 3) or (modulo2.nro_usu = 7)  THEN
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  AM_EntregaTalon:= TAM_EntregaTalon.create(self);
  try
    AM_EntregaTalon.ShowModal;
  finally
    AM_EntregaTalon.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end;
end;

procedure TMenuPrincipal.AltasyModificacionesdePagos1Click(Sender: TObject);
var AM_Comprob: TAM_Comprob;
begin
 IF modulo2.nro_usu >=3 THEN
 //if usu_level(modulo2.nro_usu,1) > 3 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  AM_Comprob:= TAM_Comprob.create(self);
  try
    AM_Comprob.ShowModal;
  finally
    AM_Comprob.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end;
end;

procedure TMenuPrincipal.Confirmacin4Click(Sender: TObject);
var AM_PlanillaPago: TAM_PlanillaPago;
begin
 IF modulo2.nro_usu >= 3 THEN
//if usu_level(modulo2.nro_usu,1) > 3 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  AM_PlanillaPago:= TAM_PlanillaPago.create(self);
  try
    AM_PlanillaPago.ShowModal;
  finally
    AM_PlanillaPago.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
end;
end;

procedure TMenuPrincipal.alonariosNuevos1Click(Sender: TObject);
var AM_Talonarios: TAM_Talonarios;
begin
 IF modulo2.nro_usu >= 3  THEN
//if usu_level(modulo2.nro_usu,1) > 3 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  AM_Talonarios:=TAM_Talonarios.create(self);
  try
    AM_Talonarios.ShowModal;
  finally
    AM_Talonarios.destroy;
    FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end;
end;

procedure TMenuPrincipal.VentaParcelas1Click(Sender: TObject);
var VEN_PARCELAGER: TVen_ParcelaGer;
    nivel:string;
begin
 if modulo2.nvl_usu >= 3 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  VEN_PARCELAGER:= TVen_ParcelaGer.create(self);
  try
    VEN_PARCELAGER.NroOpcion:=1;
    ven_PARCELAGER.Caption:='V E N T A     P A R C E L A S';
    AuditAccesos('Modulo 2','INGRESO A VENTA DE PARCELAS - Usu ' + inttostr(modulo2.nro_usu));
    FechaHora := Now();
    FechaHora2 := Now();
    label4.Caption := FormatDateTime('hh:mm:ss',FechaHora);
    label4.Refresh;
    VEN_PARCELAGER.ShowModal;
    VTimer:=NewMinutesBetween(FechaHora2,FechaHora);
    label5.Caption := inttostr(VTimer);
    label5.Refresh ;
  finally
    VEN_PARCELAGER.destroy;
    FechaHora := Now();
    FechaHora2 := Now();
    label4.Caption := FormatDateTime('hh:mm:ss',FechaHora);
    label4.Refresh;
    VTimer:=NewMinutesBetween(FechaHora2,FechaHora);
    label5.Caption := inttostr(VTimer);
    label5.Refresh ;
  end;
 end;
end;

procedure TMenuPrincipal.ResumendeCaja1Click(Sender: TObject);
var Resumen_Caja: TResumen_Caja;
begin
if usu_level(modulo2.nro_usu,1) < 2 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
else begin
  Resumen_Caja:=TResumen_Caja.create(self);
  try
    Resumen_Caja.ShowModal;
  finally
    Resumen_Caja.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
end;
end;

procedure TMenuPrincipal.VentaServicios1Click(Sender: TObject);
var Ven_ServGer: TVen_ServGer;
begin
 if modulo2.nvl_usu >= 3 then begin
 //if usu_level(modulo2.nro_usu,1) < 2 then begin
 //if Modulo2.usu_level >= 3 then begin
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 end else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  Ven_ServGer:= TVen_ServGer.create(self);
  try
    AuditAccesos('Modulo 2','INGRESO A CONFIGURAR SERVICIOS - Usu ' + inttostr(modulo2.nro_usu));
    Ven_ServGer.ShowModal;
  finally
    Ven_ServGer.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end;
end;

procedure TMenuPrincipal.AltasyModificaciones2Click(Sender: TObject);
var AM_Cobra: TAM_Cobra;
begin
 IF modulo2.nro_usu <= 2 THEN BEGIN
  AM_Cobra:= TAM_Cobra.create(self);
  try
    AM_Cobra.ShowModal;
  finally
    AM_Cobra.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end
 else begin
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 end;
end;

procedure TMenuPrincipal.Consultas6Click(Sender: TObject);
var Consulta_Cobrador: TConsulta_Cobrador;
begin
 IF modulo2.nro_usu <= 2 THEN
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  Consulta_Cobrador:= TConsulta_Cobrador.create(self);
  try
    Consulta_Cobrador.ShowModal;
  finally
    Consulta_Cobrador.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end;
end;

procedure TMenuPrincipal.AltasdePlanillas1Click(Sender: TObject);
var AM_TalonCobranzas: TAM_TalonCobranzas;
begin
 IF modulo2.nro_usu >=3 THEN
//if usu_level(modulo2.nro_usu,1) > 3 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
else begin
  AM_TalonCobranzas:= TAM_TalonCobranzas.create(self);
  try
    AM_TalonCobranzas.ShowModal;
  finally
    AM_TalonCobranzas.destroy;
    FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
end;
end;

procedure TMenuPrincipal.Anulacin1Click(Sender: TObject);
var Anula_PlanillaCobranza: TAnula_PlanillaCobranza;
begin
 IF modulo2.nro_usu >=3 THEN
//if usu_level(modulo2.nro_usu,1) > 3 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
else begin
  Anula_PlanillaCobranza:= TAnula_PlanillaCobranza.create(self);
  try
    Anula_PlanillaCobranza.ShowModal;
  finally
    Anula_PlanillaCobranza.destroy;
    FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
end;
end;

procedure TMenuPrincipal.Acreditaciones1Click(Sender: TObject);
var AM_Acreditaciones: TAM_Acreditaciones;
begin
 IF modulo2.nro_usu >=3 THEN
  //if usu_level(modulo2.nro_usu,1) > 3 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  AM_Acreditaciones:= TAM_Acreditaciones.create(self);
  try
    AM_Acreditaciones.ShowModal;
  finally
    AM_Acreditaciones.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end;
end;

procedure TMenuPrincipal.Confirmacin1Click(Sender: TObject);
var cambiavalorvta: Tcambiavalorvta;
begin
 IF modulo2.nro_usu >= 2 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  cambiavalorvta:= Tcambiavalorvta.create(self);
  try
    AuditAccesos('Mdulo 2','INGRESO IMP. PLACA DE INHUMADO - Usu ' + inttostr(modulo2.nro_usu));
    cambiavalorvta.ShowModal;
  finally
    cambiavalorvta.destroy;
    //    FechaHora := Now();
    //label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end;
end;



{var cambiavalorvta: Tcambiavalorvta;
begin
 //VerArea(modulo2.nro_usu,256);
 if modulo2.nvl_usu <= 1 then
     cambiavalorvta:= Tcambiavalorvta.create(self);
    try
     AuditAccesos('Mdulo 2','INGRESO CONSULTA DE DATOS GRAL - Usu ' + inttostr(modulo2.nro_usu));
     cambiavalorvta.ShowModal;
    finally
      cambiavalorvta.destroy;
    end;
 end
 else begin
  messagedlg('ATENCION.. Esta ventana NO esta Habilitada' + chr(13)
  + 'para el Usuario Nro: ' + inttostr(modulo2.nro_usu) + ' Consulte con un Administrador...',mtInformation,[mbok],0);
 end;
end;  }

procedure TMenuPrincipal.Ipresion1Click(Sender: TObject);
var ImpPlaca: TImpPlaca;
begin
 IF modulo2.nro_usu >= 3 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  ImpPlaca:= TImpPlaca.create(self);
  try
    AuditAccesos('Mdulo 2','INGRESO IMP. PLACA DE INHUMADO - Usu ' + inttostr(modulo2.nro_usu));
    ImpPlaca.ShowModal;
  finally
    ImpPlaca.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end;
end;

procedure TMenuPrincipal.CajaxFechas1Click(Sender: TObject);
var Estad_movCaja: TEstad_movCaja;
begin
if usu_level(modulo2.nro_usu,1) < 2 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
else begin
  Estad_movCaja:= TEstad_movCaja.create(self);
  try
    Estad_movCaja.ShowModal;
  finally
    Estad_movCaja.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
end;
end;

procedure TMenuPrincipal.ClienteCuentas1Click(Sender: TObject);
var AM_PCuentas: TAM_PCuentas;
begin
if usu_level(modulo2.nro_usu,1) < 2 then
//if usu_level(modulo2.nro_usu,1) > 3 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
else begin
  AM_PCuentas:= TAM_PCuentas.create(self);
  try
    AM_PCuentas.TipoCliente:=1;
    AM_PCuentas.ShowModal;
  finally
    AM_PCuentas.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
end;
end;

procedure TMenuPrincipal.Confirmacin2Click(Sender: TObject);
var Confirma_InhuVen: TConfirma_InhuVen;
begin
if usu_level(modulo2.nro_usu,1) < 2 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
else begin
  Confirma_InhuVen:= TConfirma_InhuVen.create(self);
  try
    Confirma_InhuVen.NroOpcion:=3;
    Confirma_inhuven.Caption:='Confirmacion de SERVICIOS';
    Confirma_InhuVen.ShowModal;
  finally
    Confirma_InhuVen.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
end;
end;

procedure TMenuPrincipal.MasivadeEstadosdeCuenta2Click(Sender: TObject);
var Impresion_Resumen: TImpresion_Resumen;
begin
 VerArea(modulo2.nro_usu,255);
 if elniv = '1' then begin
     Impresion_Resumen:= TImpresion_Resumen.create(self);
    try
     AuditAccesos('Mdulo 2','INGRESO CONSULTA DE DATOS GRAL - Usu ' + inttostr(modulo2.nro_usu));
     Impresion_Resumen.ShowModal;
    finally
      Impresion_Resumen.destroy;
          FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
    end;
 end
 else begin
  messagedlg('ATENCION.. Esta ventana NO esta Habilitada' + chr(13)
  + 'para el Usuario Nro: ' + inttostr(modulo2.nro_usu) + ' Consulte con un Administrador...',mtInformation,[mbok],0);
 end;
end;

procedure TMenuPrincipal.DetallePorGestor1Click(Sender: TObject);
var ImpTitxAcciones: TImpTitxAcciones;
begin
  ImpTitxAcciones:= TImpTitxAcciones.create(self);
  try
   AuditAccesos('Mdulo 2','INGRESO ACCIONES POR GESTOR - Usu ' + inttostr(modulo2.nro_usu));
    ImpTitxAcciones.ShowModal;
  finally
    ImpTitxAcciones.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
end;


procedure TMenuPrincipal.EntregadeComprobantes1Click(Sender: TObject);
var AM_EntregaComprob: TAM_EntregaComprob;
begin
if modulo2.nro_usu >= 3  then
//if usu_level(modulo2.nro_usu,1) > 3 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
else begin
  AM_EntregaComprob:=TAM_EntregaComprob.create(self);
  try
    AM_EntregaComprob.ShowModal;
  finally
    AM_EntregaComprob.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
end;
end;

procedure TMenuPrincipal.Consultas2Click(Sender: TObject);
var Con_Gral: TCon_Gral;
begin
//if usu_level(modulo2.nro_usu,1) > 3 then
//  messagedlgpos('Permisos de Usuario Insuficiente'
//  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
//else if modulo2.NoPermitido then
//   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
//  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
//else begin
  Con_Gral:=TCon_Gral.create(self);
  try
     AuditAccesos('Mdulo 2','INGRESO CONSULTA DE DATOS GRAL - Usu ' + inttostr(modulo2.nro_usu));
    Con_Gral.ShowModal;
  finally
    Con_Gral.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
//end;
end;

procedure TMenuPrincipal.ActivarMantenimiento1Click(Sender: TObject);
var AM_FechaMantenimiento: TAM_FechaMantenimiento;
begin
 IF modulo2.nro_usu >= 3  THEN
//if usu_level(modulo2.nro_usu,1) > 3 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  AM_FechaMantenimiento:= TAM_FechaMantenimiento.create(self);
  try
    AM_FechaMantenimiento.ShowModal;
  finally
    AM_FechaMantenimiento.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end;
end;

procedure TMenuPrincipal.ImprimirLibroIVA1Click(Sender: TObject);
var Imp_LIVA: TImp_LIVA;
begin
if usu_level(modulo2.nro_usu,1) < 2 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
else begin
  Imp_LIVA:= TImp_LIVA.create(self);
  try
    Imp_LIVA.ShowModal;
  finally
    Imp_LIVA.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
end;
end;

procedure TMenuPrincipal.MovimientosConsolidados1Click(Sender: TObject);
var AuditaMovim: TAuditaMovim;
begin
if usu_level(modulo2.nro_usu,1) < 2 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
else begin
  AuditaMovim:= TAuditaMovim.create(self);
  try
    AuditaMovim.Caption:='Control de Movimientos - CONSOLIDADOS';
    AuditaMovim.NroOpcion:=4;
    AuditaMovim.ShowModal;
  finally
    AuditaMovim.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
end;
end;

procedure TMenuPrincipal.Consultas8Click(Sender: TObject);
var Cons_Compr: TCons_Compr;
begin
{ IF modulo2.nro_usu >= 3 THEN
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  AM_EntregaTalon:= TAM_EntregaTalon.create(self);
  try
    AM_EntregaTalon.ShowModal;
  finally
    AM_EntregaTalon.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end;
end;}
 IF modulo2.nro_usu >= 3 THEN
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  try
    Cons_Compr:= TCons_Compr.create(self);
    Cons_Compr.ShowModal;
  finally
    Cons_Compr.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end;
end;

procedure TMenuPrincipal.Donacin1Click(Sender: TObject);
var VEN_PARCELAGER: TVen_ParcelaGer;
begin
 if modulo2.nvl_usu >= 3 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  VEN_PARCELAGER:= TVen_ParcelaGer.create(self);
  try
    VEN_PARCELAGER.NroOpcion:=2;
    ven_PARCELAGER.Caption:=' C E S I O N   G R A T U I T A ';
    AuditAccesos('Modulo 2','INFRESO CESION GRATUITA PARCELAS - Usu ' + inttostr(modulo2.nro_usu));
    VEN_PARCELAGER.ShowModal;
  finally
    VEN_PARCELAGER.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end;
end;

procedure TMenuPrincipal.ransferencias1Click(Sender: TObject);
var VEN_PARCELAGER: TVen_ParcelaGer;
begin
 if modulo2.nvl_usu >= 3 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  VEN_PARCELAGER:= TVen_ParcelaGer.create(self);
  try
    VEN_PARCELAGER.NroOpcion:=3;
    Ven_ParcelaGer.Caption:=' T R A N S F E R E N C I A S ';
    AuditAccesos('Modulo 2','INGRESO TRANSFERENCIAS PARCELAS - Usu ' + inttostr(modulo2.nro_usu));
    VEN_PARCELAGER.ShowModal;
  finally
    VEN_PARCELAGER.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end;
end;

procedure TMenuPrincipal.ParcelasaEspaciosVerde1Click(Sender: TObject);
var PEspVerdes: TPEspVerdes;
begin
 // if modulo2.nvl_usu >= 3 then
 IF modulo2.nro_usu >= 3 THEN
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
    PEspVerdes:= TPEspVerdes.create(self);
  try
     AuditAccesos('Mdulo 2','INGRESO RESERVA ACCIONES A ESP. VERDES - Usu ' + inttostr(modulo2.nro_usu));
    PEspVerdes.ShowModal;
  finally
    PEspVerdes.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end;
end;

procedure TMenuPrincipal.CambiodeVAl1Click(Sender: TObject);
var CamValorMante: TCamValorMante;
begin
  if modulo2.nro_usu <= 2 then begin
    CamValorMante:= TCamValorMante.create(self);
    try
      CamValorMante.ShowModal;
    finally
      CamValorMante.Destroy;
          FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
    end;
  end
  else begin
    messagedlgpos('Permisos Insuficiente para el Usuario ' + modulo2.nom_usu
    + chr(13) + ' para el Ingreso a este Módulo  del Programa.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
  end;
end;

procedure TMenuPrincipal.GrficoParcelario1Click(Sender: TObject);
var Grafico_Parcelario: TGrafico_Parcelario;
begin
if usu_level(modulo2.nro_usu,1) > 6 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
else begin
  Grafico_Parcelario:= TGrafico_Parcelario.create(self);
  try
    AuditAccesos('Modulo 2','INGRESO GRAFICO PARCELARIO - Usu ' + inttostr(modulo2.nro_usu));
    Grafico_Parcelario.ShowModal;
  finally
    Grafico_Parcelario.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
end;
end;

procedure TMenuPrincipal.CambiodeFecha1Click(Sender: TObject);
var CambioFecPlanilla: TCambioFecPlanilla;
begin
 IF modulo2.nro_usu >=3 THEN
//if usu_level(modulo2.nro_usu,1) > 3 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
else begin
  CambioFecPlanilla:= TCambioFecPlanilla.create(self);
  try
    CambioFecPlanilla.ShowModal;
  finally
    CambioFecPlanilla.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
end;
end;

procedure TMenuPrincipal.Reasigna1Click(Sender: TObject);
var CambiaCobrador: TCambiaCobrador;
begin
 IF modulo2.nro_usu >= 3 THEN
//if usu_level(modulo2.nro_usu,1) > 3 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  CambiaCobrador:= TCambiaCobrador.create(self);
  try
    CambiaCobrador.ShowModal;
  finally
    CambiaCobrador.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
end;
end;

procedure TMenuPrincipal.ListadePrecios1Click(Sender: TObject);
var CamValorInhuma: TCamValorInhuma;
begin
  if Modulo2.nro_usu <= 2 then begin
    CamValorInhuma:= TCamValorInhuma.create(self);
    try
      CamValorInhuma.ShowModal;
    finally
      CamValorInhuma.Destroy;
      FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
    end;
  end
  else begin
    messagedlgpos('Permisos Insuficiente para el Usuario ' + modulo2.nom_usu
    + chr(13) + ' para el Ingreso a este Módulo  del Programa.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
  end;
end;

procedure TMenuPrincipal.AnulaciondePago1Click(Sender: TObject);
var Elim_PagodePlanilla: TElim_PagodePlanilla;
begin
 IF modulo2.nro_usu >=3 THEN
//if usu_level(modulo2.nro_usu,1) > 3 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
    Elim_PagodePlanilla:= TElim_PagodePlanilla.create(self);
  try
    Elim_PagodePlanilla.ShowModal;
  finally
    Elim_PagodePlanilla.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end;
end;

procedure TMenuPrincipal.Timer1Timer(Sender: TObject);
begin
  //Label1.visible := not (Label1.visible);
  //Label1.Repaint;
end;

procedure TMenuPrincipal.Label1Click(Sender: TObject);
begin
//Timer1.Enabled := False;
end;

procedure TMenuPrincipal.JvBitBtn4Click(Sender: TObject);
var Form1: TForm1;
begin
  Form1:= TForm1.create(self);
  try
    Form1.ShowModal;
  finally
    Form1.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
end;

procedure TMenuPrincipal.HistorialdeMovimientos1Click(Sender: TObject);
var MovimParcelas: TMovimParcelas;
begin
  MovimParcelas:= TMovimParcelas.create(self);
  try
    MovimParcelas.ShowModal;
  finally
    MovimParcelas.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
end;

procedure TMenuPrincipal.CambioTiutularporNroAccion1Click(Sender: TObject);
var CambioTit: TCambioTit;
begin
if usu_level(modulo2.nro_usu,1) >= 3 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
else begin
  CambioTit:= TCambioTit.create(self);
  try
    CambioTit.ShowModal;
  finally
    CambioTit.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
end;
end;

procedure TMenuPrincipal.VentasReservas1Click(Sender: TObject);
var Parce_Reserv: TParce_Reserv;
begin
 IF modulo2.nro_usu <= 2 THEN BEGIN
  Parce_Reserv:= TParce_Reserv.create(self);
  try
    AuditAccesos('Modulo 2','INGRESO RESERVA DE PARCELA - Usu ' + inttostr(modulo2.nro_usu));
    Parce_Reserv.ShowModal;
  finally
    Parce_Reserv.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end
 else begin
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 end;
end;

procedure TMenuPrincipal.JvBitBtn5Click(Sender: TObject);
var Confirma_InhuVen: TConfirma_InhuVen;
begin
 IF modulo2.nro_usu >=3 THEN
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  Confirma_InhuVen:= TConfirma_InhuVen.create(self);
  try
    Confirma_InhuVen.ShowModal;
  finally
    Confirma_InhuVen.Destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end;
end;
{
  IF modulo2.nro_usu <= 2 THEN BEGIN
  //if Modulo2.usu_level = 0 then usu_level(modulo2.nro_usu,1);
  //if Modulo2.usu_level <= 2 then begin
    Confirma_InhuVen:= TConfirma_InhuVen.create(self);
    try
      Confirma_inhuven.Caption:='Confirmacion de VENTAS';
      Confirma_InhuVen.ShowModal;
    finally
      Confirma_InhuVen.Free;
    end;
  end
  else begin
    messagedlgpos('Permisos Insuficiente para el Usuario ' + modulo2.nom_usu
    + chr(13) + ' para el Ingreso a este Módulo Nº: ''1'' del Programa.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
  end;   
end;     }


procedure TMenuPrincipal.Timer2Timer(Sender: TObject);
const
  archivos: array [1 .. 10] of string = ('LogoSistemaRemanso.jpg', '10.jpg',
    '11.jpg','12.jpg','13.jpg','14.jpg','15.jpg','16.jpg','17.jpg','18.jpg');
var
  images: array [1 .. 10] of TImage;
  k: integer;
begin
  //Label3.visible := not (Label3.visible);
  //Label3.Repaint;
//  images[1] := Image1;
//  images[2] := Image2;
//  images[3] := Image3;
//  images[4] := Image4;
//  images[5] := Image5;
//  images[6] := Image6;
//  images[7] := Image7;
//  images[8] := Image8;
//  images[9] := Image9;
//  images[10] := Image10;
//  for k := low(images) to high(images) do
//  begin
//    images[k].Picture.LoadFromFile(modulo2.path_todo + '\Fotos\' + archivos[images[k].Tag]);
//    images[k].AutoSize:=true;
//    case images[k].Tag of
//      1:  images[k].Tag := 2;
//      2:  images[k].Tag := 3;
//      3:  images[k].Tag := 4;
//      4:  images[k].Tag := 5;
//      5:  images[k].Tag := 6;
//      6:  images[k].Tag := 7;
//      7:  images[k].Tag := 8;
//      8:  images[k].Tag := 9;
//      9:  images[k].Tag := 10;
//      10: images[k].Tag := 1;
//    end;
//  end;
end;

procedure TMenuPrincipal.Pagos1Click(Sender: TObject);
var CON_VPar: TCON_VPar;
begin
  CON_VPar:= TCON_VPar.create(self);
  try
    CON_VPar.ShowModal;
  finally
    CON_VPar.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
end;

procedure TMenuPrincipal.JvBitBtn6Click(Sender: TObject);
var Con_Gral: TCon_Gral;
begin
  Con_Gral:= TCon_Gral.create(self);
  try
   AuditAccesos('Mdulo 2','INGRESO CONSULTA DE DATOS GRAL -  Usuario ' + inttostr(modulo2.nro_usu));
   FechaHora := Now();
   FechaHora2 := Now();
   label4.Caption := FormatDateTime('hh:mm:ss',FechaHora);
   label4.Refresh;
   Con_Gral.ShowModal;
   VTimer:=NewMinutesBetween(FechaHora2,FechaHora);
   label5.Caption := inttostr(VTimer);
   label5.Refresh ;
  finally
    Con_Gral.destroy;
    FechaHora := Now();
    FechaHora2 := Now();
    label4.Caption := FormatDateTime('hh:mm:ss',FechaHora);
    label4.Refresh;
    VTimer:=NewMinutesBetween(FechaHora2,FechaHora);
    label5.Caption := inttostr(VTimer);
    label5.Refresh ;
  end;
end;

procedure TMenuPrincipal.LibroVentas1Click(Sender: TObject);
var Estad_movVentas: TEstad_movVentas;
begin
if usu_level(modulo2.nro_usu,1) > 3 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
else begin
  Estad_movVentas:=TEstad_movVentas.create(self);
  try
    Estad_movVentas.ShowModal;
  finally
    Estad_movVentas.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
end;
end;

procedure TMenuPrincipal.ConfigDeuda1Click(Sender: TObject);
var LasParcelasConso: TLasParcelasConso;
begin
 IF modulo2.nro_usu >= 3  THEN
//if usu_level(modulo2.nro_usu,1) > 3 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  LasParcelasConso:=TLasParcelasConso.create(self);
  try
    LasParcelasConso.ShowModal;
  finally
    LasParcelasConso.destroy;
    FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end;
end;

procedure TMenuPrincipal.CambiosdeTitulares1Click(Sender: TObject);
var AM_Titulares: TAM_Titulares;
begin
 if modulo2.nvl_usu >= 3 then
 //if usu_level(modulo2.nro_usu,1) > 3 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  AM_Titulares:=TAM_Titulares.create(self);
  try
    AuditAccesos('Mdulo 2','INGRESO CAMBIO DE TITULARES - Usu ' + inttostr(modulo2.nro_usu));
    AM_Titulares.ShowModal;
  finally
    AM_Titulares.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end;
end;

procedure TMenuPrincipal.AisgnaciondeCobrador1Click(Sender: TObject);
var CambiaParcelaCobrador: TCambiaParcelaCobrador;
begin
 //IF modulo2.nro_usu >= 3  THEN
 if modulo2.nvl_usu >= 3 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  CambiaParcelaCobrador:=TCambiaParcelaCobrador.create(self);
  try
    CambiaParcelaCobrador.ShowModal;
  finally
    CambiaParcelaCobrador.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end;
end;

procedure TMenuPrincipal.Consultas5Click(Sender: TObject);
var InhumaConsulta: TInhumaConsulta;
begin
//if usu_level(modulo2.nro_usu,1) > 3 then
//  messagedlgpos('Permisos de Usuario Insuficiente'
//  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
//else if modulo2.NoPermitido then
//   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
//  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
//else begin
  AuditAccesos('Mdulo 2','INGRESO CONSULTA DE INHUMADOS- Usu ' + inttostr(modulo2.nro_usu));
  InhumaConsulta:=TInhumaConsulta.create(self);
  try
    InhumaConsulta.ShowModal;
  finally
    InhumaConsulta.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
//end;
end;

procedure TMenuPrincipal.AnulaciondeTalonarios1Click(Sender: TObject);
var Anula_Talonario: TAnula_Talonario;
begin
 IF modulo2.nro_usu >= 3 THEN
//if usu_level(modulo2.nro_usu,1) > 3 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
else begin
  Anula_Talonario:=TAnula_Talonario.create(self);
  try
    Anula_Talonario.ShowModal;
  finally
    Anula_Talonario.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
end;
end;

procedure TMenuPrincipal.ConsultadeComisiones1Click(Sender: TObject);
var CobradorComi: TCobradorComi;
begin
 IF modulo2.nro_usu <= 2 THEN BEGIN
    CobradorComi:=TCobradorComi.create(self);
  try
    CobradorComi.ShowModal;
  finally
    CobradorComi.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end
 else begin
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 end;

end;

procedure TMenuPrincipal.CargaPeriodosPagos1Click(Sender: TObject);
var CremacionConsulta: TCremacionConsulta;
begin
 if modulo2.nvl_usu >= 3 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  CremacionConsulta:= TCremacionConsulta.create(self);
  try
      AuditAccesos('Modulo 2','INGRESO A SEPELIOS- Usu ' + inttostr(modulo2.nro_usu)) ;
      CremacionConsulta.ShowModal;
  finally
      CremacionConsulta.Destroy ;
      FechaHora := Now();
      label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end;
end;

procedure TMenuPrincipal.ComprobantesFaltantes1Click(Sender: TObject);
var CompFaltantes: TCompFaltantes;
begin
//if Modulo2.usu_level = 0 then usu_level(modulo2.nro_usu,1);
  //if Modulo2.usu_level <= 2 then begin
  if modulo2.nro_usu <= 2 then begin
    CompFaltantes:= TCompFaltantes.create(self);
    try
      CompFaltantes.ShowModal;
    finally
      CompFaltantes.Destroy;
          FechaHora := Now();
      label4.Caption := LeftStr(timetostr(FechaHora),5);
    end;
  end
  else begin
    messagedlgpos('Permisos Insuficiente para el Usuario ' + modulo2.nom_usu
    + chr(13) + ' para el Ingreso a este Módulo del Programa.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
  end;
end;

procedure TMenuPrincipal.MovimientosdeFacturasporMes1Click(
  Sender: TObject);
var Mov_Facturas: TMov_Facturas;
begin
//if Modulo2.usu_level = 0 then usu_level(modulo2.nro_usu,1);
  //if Modulo2.usu_level <= 2 then begin
  if modulo2.nro_usu <= 2 then begin
    Mov_Facturas:= TMov_Facturas.create(self);
    try
      Mov_Facturas.ShowModal;
    finally
      Mov_Facturas.Destroy ;
          FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
    end;
  end
  else begin
    messagedlgpos('Permisos Insuficiente para el Usuario ' + modulo2.nom_usu
    + chr(13) + ' para el Ingreso a este Módulo  del Programa.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
  end;
end;

procedure TMenuPrincipal.MovimientosdePlanillas1Click(Sender: TObject);
var Mov_planillas: TMov_planillas;
begin
//if Modulo2.usu_level = 0 then usu_level(modulo2.nro_usu,1);
  //if Modulo2.usu_level <= 2 then begin
  if modulo2.nro_usu <= 2 then begin
    Mov_planillas:= TMov_planillas.create(self);
    try
      Mov_planillas.ShowModal;
    finally
      Mov_planillas.Destroy;
          FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
    end;
  end
  else begin
    messagedlgpos('Permisos Insuficiente para el Usuario ' + modulo2.nom_usu
    + chr(13) + ' para el Ingreso a este Módulo del Programa.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
  end;
end;

procedure TMenuPrincipal.CantideVentasyServicios1Click(Sender: TObject);
var Mov_MantServ: TMov_MantServ;
begin
//if Modulo2.usu_level = 0 then usu_level(modulo2.nro_usu,1);
  //if Modulo2.usu_level <= 2 then begin
  if modulo2.nro_usu <= 2 then begin
    Mov_MantServ:= TMov_MantServ.create(self);
    try
      Mov_MantServ.ShowModal;
    finally
      Mov_MantServ.Destroy ;
          FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
    end;
  end
  else begin
    messagedlgpos('Permisos Insuficiente para el Usuario ' + modulo2.nom_usu
    + chr(13) + ' para el Ingreso a este Módulo  del Programa.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
  end;
end;

procedure TMenuPrincipal.IngresosDiarios1Click(Sender: TObject);
var Mov_Diariospla: TMov_Diariospla;
begin
//if Modulo2.usu_level = 0 then usu_level(modulo2.nro_usu,1);
  //if Modulo2.usu_level <= 2 then begin
  if modulo2.nro_usu <= 2 then begin
    Mov_Diariospla:= TMov_Diariospla.create(self);
    try
      Mov_Diariospla.ShowModal;
    finally
      Mov_Diariospla.Destroy ;
          FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
    end;
  end
  else begin
    messagedlgpos('Permisos Insuficiente para el Usuario ' + modulo2.nom_usu
    + chr(13) + ' para el Ingreso a este Módulo  del Programa.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
  end;
end;

procedure TMenuPrincipal.ImpresiondeMorosos1Click(Sender: TObject);
var Imp_ResumenMorosos: TImp_ResumenMorosos;
begin
  Imp_ResumenMorosos:= TImp_ResumenMorosos.create(self);
  try
     AuditAccesos('Mdulo 2','INGRESO A ACCIONES MOROSAS - Usu ' + inttostr(modulo2.nro_usu));
     Imp_ResumenMorosos.ShowModal;
  finally
    Imp_ResumenMorosos.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
end;

procedure TMenuPrincipal.JvBitBtn7Click(Sender: TObject);
var ParcelasNov: TParcelasNov;
begin
  ParcelasNov:= TParcelasNov.create(self);
  try
    ParcelasNov.ShowModal;
  finally
    ParcelasNov.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
end;

procedure TMenuPrincipal.ReimpresiondeEstadosdeCuenta1Click(
  Sender: TObject);
var ReImp_ResumxAccion: TReImp_ResumxAccion;
begin
  ReImp_ResumxAccion:= TReImp_ResumxAccion.create(self);
  try
      ReImp_ResumxAccion.ShowModal;
  finally
    ReImp_ResumxAccion.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
end;

procedure TMenuPrincipal.ImpresionesAccionesxCajas1Click(Sender: TObject);
var Cons_AccixCajas: TCons_AccixCajas;
begin
 if usu_level(modulo2.nro_usu,1) < 2 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  Cons_AccixCajas:= TCons_AccixCajas.create(self);
  try
      Cons_AccixCajas.ShowModal;
  finally
    Cons_AccixCajas.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 //end
 //else begin
 // messagedlgpos('Permisos de Usuario Insuficiente'
 // + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
end;
end;


procedure TMenuPrincipal.MovimientosPagosAnuales1Click(Sender: TObject);
var Cons_LosPagosAnuales: TCons_LosPagosAnuales;
begin
//if Modulo2.usu_level = 0 then usu_level(modulo2.nro_usu,1);
  //if Modulo2.usu_level <= 2 then begin
  if modulo2.nro_usu <= 2 then begin
    Cons_LosPagosAnuales:= TCons_LosPagosAnuales.create(self);
    try
      Cons_LosPagosAnuales.ShowModal;
    finally
      Cons_LosPagosAnuales.Free;
          FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
    end;
  end
  else begin
    messagedlgpos('Permisos Insuficiente para el Usuario ' + modulo2.nom_usu
    + chr(13) + ' para el Ingreso a este Módulo del Programa.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
  end;
end;

procedure TMenuPrincipal.ComprobantesFaltentes1Click(Sender: TObject);
var CompFaltantes: TCompFaltantes;
begin
  if modulo2.nro_usu <= 2  then BEGIN
    CompFaltantes:= TCompFaltantes.create(self);
    try
      CompFaltantes.ShowModal;
    finally
      CompFaltantes.Free;
          FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
    end;
  end
  else begin
    messagedlgpos('Permisos Insuficiente para el Usuario ' + modulo2.nom_usu
    + chr(13) + ' para el Ingreso a este Módulo del Programa.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
  end;
end;

procedure TMenuPrincipal.CargadeComprobantesGastosCorreo1Click(
  Sender: TObject);
var CompCorreo: TCompCorreo;
begin
  if modulo2.nro_usu <= 2 then begin
    CompCorreo:= TCompCorreo.create(self);
    try
      CompCorreo.ShowModal;
    finally
      CompCorreo.Free;
          FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
    end;
  end
  else begin
    messagedlgpos('Permisos Insuficiente para el Usuario ' + modulo2.nom_usu
    + chr(13) + ' para el Ingreso a este Módulo  del Programa.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
  end;
end;

procedure TMenuPrincipal.InhumadosProvisoriosSinServicios1Click(Sender: TObject);
var AM_InhuProvisorio: TAM_InhuProvisorio;
begin
 if modulo2.nvl_usu >= 3 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  AM_InhuProvisorio:= TAM_InhuProvisorio.create(self);
  try
      AuditAccesos('Modulo 2','INGRESO CARGA DE INHUMADOS - Usu ' + inttostr(modulo2.nro_usu)) ;
      AM_InhuProvisorio.ShowModal;
  finally
      AM_InhuProvisorio.Destroy;
          FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end;
end;

procedure TMenuPrincipal.ConsultaGeneralporAccion1Click(Sender: TObject);
var Consul_Panteones: TConsul_Panteones;
begin
  //if Modulo2.nro_usu <= 2 then begin
   Consul_Panteones:=TConsul_Panteones.create(self);
   try
    AuditAccesos('Mdulo 2','INGRESO MANTEN. PATEON - Usu ' + inttostr(modulo2.nro_usu));
    Consul_Panteones.ShowModal;
   finally
    Consul_Panteones.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
   end;
  //end
  //else begin
  //  messagedlgpos('Permisos Insuficiente para el Usuario ' + modulo2.nom_usu
  //  + chr(13) + ' para el Ingreso a este Módulo Nº: ''1'' del Programa.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
  //end;
end;

procedure TMenuPrincipal.MasivadeEstadosdeCuentasALDIA1Click(
  Sender: TObject);
var Imp_ResumenAldia: TImp_ResumenAldia;
begin
//usu_level(modulo2.nro_usu,2) ;
//level:=inttostr(modulo2.nvl_usu) ;
//if strtoint(level) <= 1 then  begin
    Imp_ResumenAldia:= TImp_ResumenAldia.create(self);
    try
        Imp_ResumenAldia.ShowModal;
    finally
      Imp_ResumenAldia.destroy;
          FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
    end;
//end
//else begin
//  messagedlgpos('Permisos de Usuario Insuficiente'
//  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
//end;
end;

procedure TMenuPrincipal.ImpresionTitulares1Click(Sender: TObject);
var ImpTodosLosClientes: TImpTodosLosClientes;
begin
  ImpTodosLosClientes:= TImpTodosLosClientes.create(self);
  ImpTodosLosClientes.TipoCliente:=0;
  try
    AuditAccesos('Mdulo 2','INGRESO A IMP. CLIENTES - Usu ' + inttostr(modulo2.nro_usu));
    ImpTodosLosClientes.ShowModal;
  finally
    ImpTodosLosClientes.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
end;

procedure TMenuPrincipal.ResolverNovedades1Click(Sender: TObject);
var ParcelasNov: TParcelasNov;
begin
    ParcelasNov:= TParcelasNov.create(self);
  try
    ParcelasNov.LaOpcion :=1;
    AuditAccesos('Mdulo 2','INGRESO A NOVEDADES DE ACCIONES- Usu ' + inttostr(modulo2.nro_usu));
    ParcelasNov.ShowModal;
  finally
    ParcelasNov.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
end;


procedure TMenuPrincipal.ListadodeParcelasDisponiblesyVendidas1Click(
  Sender: TObject);
var ImpAccionesDispoyVend: TImpAccionesDispoyVend;
begin
//usu_level(modulo2.nro_usu,2) ;
//level:=inttostr(modulo2.nvl_usu) ;
//if strtoint(level) <= 1 then  begin
     ImpAccionesDispoyVend:= TImpAccionesDispoyVend.create(self);
    try
        ImpAccionesDispoyVend.ShowModal;
    finally
      ImpAccionesDispoyVend.destroy;
          FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
    end;
//end
//else begin
//  messagedlgpos('Permisos de Usuario Insuficiente'
//  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
//end;
end;

procedure TMenuPrincipal.IniciarProcesos1Click(Sender: TObject);
//var FactuMasiva:= TFactuMasiva;
begin
//usu_level(modulo2.nro_usu,2) ;
//level:=inttostr(modulo2.nvl_usu) ;
//if strtoint(level) <= 1 then  begin
 IF modulo2.nro_usu <= 2 THEN BEGIN
  FactuMasiva:= TFactuMasiva.create(self);
  try
   AuditAccesos('Mdulo 2','INICIA PROCESO DE FACTU. NORMAL - Usu ' + inttostr(modulo2.nro_usu));
   FactuMasiva.ShowModal;
  finally
   FactuMasiva.destroy;
       FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  End;
end
else begin
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
end;
end;

procedure TMenuPrincipal.ActualizarComprobantes1Click(Sender: TObject);
var Actucomprob:  TActucomprob;
begin
 IF modulo2.nro_usu <= 2 THEN BEGIN
   Actucomprob:= TActucomprob.create(self);
  try
     AuditAccesos('Mdulo 2','ACT. COMPROBANTES DE PAGOS - Usu ' + inttostr(modulo2.nro_usu));
    Actucomprob.ShowModal;
  finally
    Actucomprob.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end
 else begin
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 end;
end;

procedure TMenuPrincipal.ImpresionNotaMuniciapal1Click(Sender: TObject);
var NotaInhumaConsulta: TNotaInhumaConsulta;
begin
//if usu_level(modulo2.nro_usu,1) > 3 then
//  messagedlgpos('Permisos de Usuario Insuficiente'
 // + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
//else if modulo2.NoPermitido then
//   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
//  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
//else begin
  NotaInhumaConsulta:=TNotaInhumaConsulta.create(self);
  try
      AuditAccesos('Mdulo 2','INGRESO IMP. NOTA MUNICIPAL - Usu ' + inttostr(modulo2.nro_usu));
    NotaInhumaConsulta.ShowModal;
  finally
    NotaInhumaConsulta.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
//end;
end;

procedure TMenuPrincipal.DardeBajaInhumados1Click(Sender: TObject);
var Elimina_Inhum: TElimina_Inhum;
begin
if usu_level(modulo2.nro_usu,1) > 3 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
else begin
  Elimina_Inhum:=TElimina_Inhum.create(self);
  try
    Elimina_Inhum.ShowModal;
  finally
    Elimina_Inhum.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
end;
end;

procedure TMenuPrincipal.DatosdelaFicha1Click(Sender: TObject);
var LasMutales:  TLasMutales;
  niv:integer;
begin
  LasMutales:= TLasMutales.create(self);
  try
    AuditAccesos('Mdulo 2','INGRESO DATOS MUTUALES- Usu ' + inttostr(modulo2.nro_usu));
    LasMutales.ShowModal;
  finally
   LasMutales.destroy;
       FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
end;

procedure TMenuPrincipal.CargadeTicket1Click(Sender: TObject);
var CargaPosnetPagos:  TCargaPosnetPagos;
begin
 IF modulo2.nro_usu = 1 THEN BEGIN
     CargaPosnetPagos:= TCargaPosnetPagos.create(self);
    try
        CargaPosnetPagos.ShowModal;
    finally
      CargaPosnetPagos.destroy;
          FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
    end;
end
else begin
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
end;
end;

procedure TMenuPrincipal.CargadeInhumadosFaltantes1Click(Sender: TObject);
var AM_InhumadosEsp: TAM_InhumadosEsp;
begin
//if Modulo2.usu_level = 0 then usu_level(modulo2.nro_usu,1);
  if modulo2.nro_usu <= 2 then begin
    AM_InhumadosEsp:= TAM_InhumadosEsp.create(self);
    try
      AuditAccesos('Mdulo 2','INGRESO INHUMADOS FALTANTES- Usu ' + inttostr(modulo2.nro_usu));
      AM_InhumadosEsp.ShowModal;
    finally
      AM_InhumadosEsp.Destroy ;
          FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
    end;
  end
  else begin
    messagedlgpos('Permisos Insuficiente para el Usuario ' + modulo2.nom_usu
    + chr(13) + ' para el Ingreso a este Módulo  del Programa.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
  end;
end;

procedure TMenuPrincipal.DevoluciondeTalonarios1Click(Sender: TObject);
var Dev_Talonarios: TDev_Talonarios;
begin
  IF modulo2.nro_usu <= 2 THEN  begin
    Dev_Talonarios:= TDev_Talonarios.create(self);
    try
      Dev_Talonarios.ShowModal;
    finally
      Dev_Talonarios.Destroy ;
          FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
    end;
  end
  else begin
    messagedlgpos('Permisos Insuficiente para el Usuario ' + modulo2.nom_usu
    + chr(13) + ' para el Ingreso a este Módulo  del Programa.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
  end;
end;

procedure TMenuPrincipal.Label3Click(Sender: TObject);
begin
//Timer2.Enabled := False;
end;

procedure TMenuPrincipal.vernovClick(Sender: TObject);
var ParcelasNov: TParcelasNov;
begin
    ParcelasNov:= TParcelasNov.create(self);
  try
    ParcelasNov.LaOpcion:=2;
    ParcelasNov.ShowModal;
  finally
    ParcelasNov.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
end;

procedure TMenuPrincipal.IniciarProcesosFactElectronicaEsp1Click(
  Sender: TObject);
begin
 IF modulo2.nro_usu <= 2 THEN BEGIN
  FactuMasivaEsp:= TFactuMasivaEsp.create(self);
   try
     FactuMasivaEsp.ShowModal;
   finally
     FactuMasivaEsp.destroy;
         FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
   end;
 end
 else begin
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 end;
end;


procedure TMenuPrincipal.ImpresionIntimacionesaMorosos1Click(
  Sender: TObject);
var Imp_ResumMorososIntima: TImp_ResumMorososIntima;
begin
 if usu_level(modulo2.nro_usu,1) < 2 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  Imp_ResumMorososIntima:= TImp_ResumMorososIntima.create(self);
  try
      Imp_ResumMorososIntima.ShowModal;
  finally
    Imp_ResumMorososIntima.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end;
end;

procedure TMenuPrincipal.ConfecciondeCtaCte1Click(Sender: TObject);
//var AM_AccionCtaCte: TAM_AccionCtaCte;
begin
{  if modulo2.nro_usu <= 2 then begin
    AM_AccionCtaCte:= TAM_AccionCtaCte.create(self);
    try
      AM_AccionCtaCte.NroOpcion:=false;
      AM_AccionCtaCte.ShowModal;
    finally
      AM_AccionCtaCte.Destroy ;
          FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
    end;
  end
  else begin
    messagedlgpos('Permisos Insuficiente para el Usuario ' + modulo2.nom_usu
    + chr(13) + ' para el Ingreso a este Módulo  del Programa.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
  end;   }
end;

procedure TMenuPrincipal.ConfirmaciondePAGO1Click(Sender: TObject);
var AM_NewPagosCtaCte: TAM_NewPagosCtaCte;
begin
  if modulo2.nro_usu <= 2 then begin
    AM_NewPagosCtaCte:= TAM_NewPagosCtaCte.create(self);
    try
      //AM_NewPagosCtaCte;.NroOpcion:=true;
      AM_NewPagosCtaCte.ShowModal;
    finally
      AM_NewPagosCtaCte.Destroy ;
      FechaHora := Now();
      label4.Caption := LeftStr(timetostr(FechaHora),5);
    end;
  end
  else begin
    messagedlgpos('Permisos Insuficiente para el Usuario ' + modulo2.nom_usu
    + chr(13) + ' para el Ingreso a este Módulo Del Programa.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
  end;
end;

procedure TMenuPrincipal.JvBitBtn8Click(Sender: TObject);
var AM_ComprobSepelios: TAM_ComprobSepelios;
begin
 IF modulo2.nro_usu <= 2 THEN BEGIN
   AM_ComprobSepelios:= TAM_ComprobSepelios.create(self);
  try
     AuditAccesos('Mdulo 2','COBROS SEPELIOS- Usu ' + inttostr(modulo2.nro_usu));
    AM_ComprobSepelios.ShowModal;
  finally
    AM_ComprobSepelios.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end
 else begin
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 end;
end;

procedure TMenuPrincipal.FormCreate(Sender: TObject);
begin
// Application.on
// vTimer:=0;
// Timer3.Enabled :=false;
// Timer3.Interval:=60000;//un minuto
// Timer3.Enabled :=true;
end;

procedure TMenuPrincipal.FormMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   vTimer:=0;
end;

procedure TMenuPrincipal.Timer3Timer(Sender: TObject);
begin
  FechaHora2 := Now();
  label5.Caption := FormatDateTime('hh:mm:ss',now()-FechaHora);   //  //FormatDateTime('hh:mm:ss',now()-FechaHora2);
  label5.Refresh ;
  VTimer:=MinutesBetween(FechaHora2,FechaHora);
  label6.Caption := RightStr(inttostr(VTimer),1);
  label6.Refresh ;
end;

procedure TMenuPrincipal.ProblemasdeConexin1Click(Sender: TObject);
var AM_Cremaciones: TAM_Cremaciones;
begin
 if modulo2.nvl_usu >= 3 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  AM_Cremaciones:= TAM_Cremaciones.create(self);
  try
      AuditAccesos('Modulo 2','INGRESO A CREMACIONES- Usu ' + inttostr(modulo2.nro_usu)) ;
      AM_Cremaciones.ShowModal;
  finally
      AM_Cremaciones.Destroy ;
      FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end;
end;

procedure TMenuPrincipal.Acercade1Click(Sender: TObject);
var AM_LosSepelios: TAM_LosSepelios;
begin
 if modulo2.nvl_usu >= 3 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  AM_LosSepelios:= TAM_LosSepelios.create(self);
  try
      AuditAccesos('Modulo 2','INGRESO A SEPELIOS- Usu ' + inttostr(modulo2.nro_usu)) ;
      AM_LosSepelios.ShowModal;
  finally
      AM_LosSepelios.Destroy ;
      FechaHora := Now();
      label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end;
end;

procedure TMenuPrincipal.ConsultasSepelios1Click(Sender: TObject);
var SepelioConsulta: TSepelioConsulta;
begin
 if modulo2.nvl_usu >= 3 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  SepelioConsulta:= TSepelioConsulta.create(self);
  try
      AuditAccesos('Modulo 2','INGRESO A SEPELIOS- Usu ' + inttostr(modulo2.nro_usu)) ;
      SepelioConsulta.ShowModal;
  finally
      SepelioConsulta.Destroy ;
      FechaHora := Now();
      label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end;
end;

procedure TMenuPrincipal.ABMTraslados1Click(Sender: TObject);
var AM_LosTraslados: TAM_LosTraslados;
begin
 if modulo2.nvl_usu >= 3 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  AM_LosTraslados:= TAM_LosTraslados.create(self);
  try
      AuditAccesos('Modulo 2','INGRESO A TRASLADOS- Usu ' + inttostr(modulo2.nro_usu)) ;
      AM_LosTraslados.ShowModal;
  finally
      AM_LosTraslados.Destroy ;
      FechaHora := Now();
      label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end;
end;

procedure TMenuPrincipal.ActualizarImportesKilimotraje1Click(
  Sender: TObject);
var AM_ImpTraslados: TAM_ImpTraslados;
begin
 if modulo2.nvl_usu >= 3 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  AM_ImpTraslados:= TAM_ImpTraslados.create(self);
  try
      AuditAccesos('Modulo 2','INGRESO A ImpTralados- Usu ' + inttostr(modulo2.nro_usu)) ;
      AM_ImpTraslados.ShowModal;
  finally
      AM_ImpTraslados.Destroy ;
      FechaHora := Now();
      label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end;
end;

procedure TMenuPrincipal.SpeedButton8Click(Sender: TObject);
begin
CLOSE;
end;

procedure TMenuPrincipal.ImpNOTAExhumacion1Click(Sender: TObject);
var ImpSol_Exhum: TImpSol_Exhum;
begin
 if modulo2.nvl_usu >= 3 then begin
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 end else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  ImpSol_Exhum:= TImpSol_Exhum.create(self);
  try
    AuditAccesos('Modulo 2','INGRESO A CONFIGURAR SERVICIOS- Usu ' + inttostr(modulo2.nro_usu));
    ImpSol_Exhum.ShowModal;
  finally
    ImpSol_Exhum.Destroy ;
    FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end;
end;

procedure TMenuPrincipal.Confirmar1Click(Sender: TObject);
var Inserta_Exhum: TInserta_Exhum;
begin
 if modulo2.nvl_usu >= 3 then begin
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 end else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  Inserta_Exhum:= TInserta_Exhum.create(self);
  try
    AuditAccesos('Modulo 2','INGRESO A CONFIRMAR EXHUMACIONES - Usu ' + inttostr(modulo2.nro_usu));
    Inserta_Exhum.ShowModal;
  finally
    Inserta_Exhum.Destroy ;
    FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end;
{//if Modulo2.usu_level = 0 then usu_level(modulo2.nro_usu,1);
  if modulo2.nro_usu = 1 then begin
    Inserta_Exhum:= TInserta_Exhum.create(self);
    try
      Inserta_Exhum.ShowModal;
    finally
      Inserta_Exhum.Destroy ;
          FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
    end;
  end
  else begin
    messagedlgpos('Permisos Insuficiente para el Usuario ' + modulo2.nom_usu
    + chr(13) + ' para el Ingreso a este Módulo del Programa.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
  end;   }
end;

procedure TMenuPrincipal.Consultas11Click(Sender: TObject);
var ExhumaConsulta: TExhumaConsulta;
begin
//if Modulo2.usu_level = 0 then usu_level(modulo2.nro_usu,1);
  if Modulo2.usu_level <= 2 then begin
    ExhumaConsulta:= TExhumaConsulta.create(self);
    try
      ExhumaConsulta.ShowModal;
    finally
      ExhumaConsulta.Destroy ;
          FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
    end;
  end
  else begin
    messagedlgpos('Permisos Insuficiente para el Usuario ' + modulo2.nom_usu
    + chr(13) + ' para el Ingreso a este Módulo del Programa.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
  end;
end;

procedure TMenuPrincipal.SpeedButton10Click(Sender: TObject);
var AM_LosSepelios: TAM_LosSepelios;
begin
 if modulo2.nvl_usu >= 3 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  AM_LosSepelios:= TAM_LosSepelios.create(self);
  try
      AuditAccesos('Modulo 2','INGRESO A SEPELIOS- Usu ' + inttostr(modulo2.nro_usu)) ;
      AM_LosSepelios.ShowModal;
  finally
      AM_LosSepelios.Destroy ;
      FechaHora := Now();
      label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end;
end;
procedure TMenuPrincipal.SpeedButton1Click(Sender: TObject);
var AM_Cli: TAM_Cli;
  niv:integer;
begin
  AM_Cli:= TAM_Cli.create(self);
  AM_Cli.TipoCliente:=0;
  try
    AuditAccesos('Modulo 2','INGRESO A CLIENTES - Usu ' + inttostr(modulo2.nro_usu));
    AM_Cli.ShowModal;
  finally
   AM_Cli.destroy;
   FechaHora := Now();
   label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
end;

procedure TMenuPrincipal.SpeedButton2Click(Sender: TObject);
var Con_Gral: TCon_Gral;
begin
  Con_Gral:= TCon_Gral.create(self);
  try
   AuditAccesos('Mdulo 2','INGRESO CONSULTA DE DATOS GRAL -  Usuario ' + inttostr(modulo2.nro_usu));
   FechaHora := Now();
   FechaHora2 := Now();
   label4.Caption := FormatDateTime('hh:mm:ss',FechaHora);
   label4.Refresh;
   Con_Gral.ShowModal;
   VTimer:=NewMinutesBetween(FechaHora2,FechaHora);
   label5.Caption := inttostr(VTimer);
   label5.Refresh ;
  finally
   Con_Gral.destroy;
   FechaHora := Now();
   FechaHora2 := Now();
   label4.Caption := FormatDateTime('hh:mm:ss',FechaHora);
   label4.Refresh;
   VTimer:=NewMinutesBetween(FechaHora2,FechaHora);
   label5.Caption := inttostr(VTimer);
   label5.Refresh ;
  end;
end;

procedure TMenuPrincipal.SpeedButton3Click(Sender: TObject);
var Grafico_Parcelario: TGrafico_Parcelario;
begin
///
if usu_level(modulo2.nro_usu,1) > 6 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
else begin
  Grafico_Parcelario:= TGrafico_Parcelario.create(self);
  try
    AuditAccesos('Modulo 2','INGRESO GRAFICO PARCELARIO - Usu ' + inttostr(modulo2.nro_usu));
    Grafico_Parcelario.ShowModal;
  finally
    Grafico_Parcelario.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
end;
end;

procedure TMenuPrincipal.SpeedButton4Click(Sender: TObject);
var VEN_PARCELAGER: TVen_ParcelaGer;
    nivel:string;
begin
 if modulo2.nvl_usu >= 3 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  VEN_PARCELAGER:= TVen_ParcelaGer.create(self);
  try
    VEN_PARCELAGER.NroOpcion:=1;
    ven_PARCELAGER.Caption:='V E N T A     P A R C E L A S';
    AuditAccesos('Modulo 2','INGRESO A VENTA DE PARCELAS - Usu ' + inttostr(modulo2.nro_usu));
    FechaHora := Now();
    FechaHora2 := Now();
    label4.Caption := FormatDateTime('hh:mm:ss',FechaHora);
    label4.Refresh;
    VEN_PARCELAGER.ShowModal;
    VTimer:=NewMinutesBetween(FechaHora2,FechaHora);
    label5.Caption := inttostr(VTimer);
    label5.Refresh ;
  finally
    VEN_PARCELAGER.destroy;
    FechaHora := Now();
    FechaHora2 := Now();
    label4.Caption := FormatDateTime('hh:mm:ss',FechaHora);
    label4.Refresh;
    VTimer:=NewMinutesBetween(FechaHora2,FechaHora);
    label5.Caption := inttostr(VTimer);
    label5.Refresh ;
  end;
 end;
end;

procedure TMenuPrincipal.SpeedButton6Click(Sender: TObject);
var VEN_PARCELAGER: TVen_ParcelaGer;
begin
 if modulo2.nvl_usu >= 3 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  VEN_PARCELAGER:= TVen_ParcelaGer.create(self);
  try
    VEN_PARCELAGER.NroOpcion:=2;
    ven_PARCELAGER.Caption:=' C E S I O N   G R A T U I T A ';
    AuditAccesos('Modulo 2','INFRESO CESION GRATUITA PARCELAS - Usu ' + inttostr(modulo2.nro_usu));
    VEN_PARCELAGER.ShowModal;
  finally
    VEN_PARCELAGER.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end;
end;
procedure TMenuPrincipal.SpeedButton7Click(Sender: TObject);
var VEN_PARCELAGER: TVen_ParcelaGer;
begin
 if modulo2.nvl_usu >= 3 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  VEN_PARCELAGER:= TVen_ParcelaGer.create(self);
  try
    VEN_PARCELAGER.NroOpcion:=3;
    Ven_ParcelaGer.Caption:=' T R A N S F E R E N C I A S ';
    AuditAccesos('Modulo 2','INGRESO TRANSFERENCIAS PARCELAS - Usu ' + inttostr(modulo2.nro_usu));
    VEN_PARCELAGER.ShowModal;
  finally
    VEN_PARCELAGER.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end;
end;
procedure TMenuPrincipal.SpeedButton5Click(Sender: TObject);
var AM_InhuProvisorio: TAM_InhuProvisorio;
begin
 if modulo2.nvl_usu >= 3 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  AM_InhuProvisorio:= TAM_InhuProvisorio.create(self);
  try
      AuditAccesos('Modulo 2','INGRESO CARGA DE INHUMADOS - Usu ' + inttostr(modulo2.nro_usu)) ;
      AM_InhuProvisorio.ShowModal;
  finally
      AM_InhuProvisorio.Destroy;
          FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end;
end;

procedure TMenuPrincipal.SpeedButton9Click(Sender: TObject);
var AM_Cremaciones: TAM_Cremaciones;
begin
 if modulo2.nvl_usu >= 3 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  AM_Cremaciones:= TAM_Cremaciones.create(self);
  try
      AuditAccesos('Modulo 2','INGRESO A CREMACIONES- Usu ' + inttostr(modulo2.nro_usu)) ;
      AM_Cremaciones.ShowModal;
  finally
      AM_Cremaciones.Destroy ;
      FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end;
end;

procedure TMenuPrincipal.SpeedButton11Click(Sender: TObject);
var AM_LosTraslados: TAM_LosTraslados;
begin
 if modulo2.nvl_usu >= 3 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  AM_LosTraslados:= TAM_LosTraslados.create(self);
  try
      AuditAccesos('Modulo 2','INGRESO A TRASLADOS- Usu ' + inttostr(modulo2.nro_usu)) ;
      AM_LosTraslados.ShowModal;
  finally
      AM_LosTraslados.Destroy ;
      FechaHora := Now();
      label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end;
end;

procedure TMenuPrincipal.SpeedButton12Click(Sender: TObject);
var ImpSol_Exhum: TImpSol_Exhum;
begin
 if modulo2.nvl_usu >= 3 then begin
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 end else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  ImpSol_Exhum:= TImpSol_Exhum.create(self);
  try
    AuditAccesos('Modulo 2','INGRESO A CONFIGURAR SERVICIOS- Usu ' + inttostr(modulo2.nro_usu));
    ImpSol_Exhum.ShowModal;
  finally
    ImpSol_Exhum.Destroy ;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end;
end;

procedure TMenuPrincipal.SpeedButton13Click(Sender: TObject);
var LasMutales:  TLasMutales;
  niv:integer;
begin
  LasMutales:= TLasMutales.create(self);
  try
    AuditAccesos('Mdulo 2','INGRESO DATOS MUTUALES- Usu ' + inttostr(modulo2.nro_usu));
    LasMutales.ShowModal;
  finally
   LasMutales.destroy;
       FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
end;

procedure TMenuPrincipal.AgregarNuevosConvenios1Click(Sender: TObject);
var AM_ImpCremacion: TAM_ImpCremacion;
begin
 if modulo2.nvl_usu >= 3 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  AM_ImpCremacion:= TAM_ImpCremacion.create(self);
  try
    AuditAccesos('Modulo 2','INGRESO A CREMACIONES- Usu ' + inttostr(modulo2.nro_usu)) ;
    AM_ImpCremacion.ShowModal;
  finally
    AM_ImpCremacion.Destroy ;
    FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end;
end;

procedure TMenuPrincipal.ConfirmarPagoCtaCte1Click(Sender: TObject);
var MutualesCtaCtes: TMutualesCtaCtes;
begin
  if modulo2.nro_usu <= 2 then begin
    MutualesCtaCtes:= TMutualesCtaCtes.create(self);
    try
      MutualesCtaCtes.NroOpcion:=false;
      MutualesCtaCtes.ShowModal;
    finally
     MutualesCtaCtes.Destroy ;
     FechaHora := Now();
     label4.Caption := LeftStr(timetostr(FechaHora),5);
    end;
  end
  else begin
    messagedlgpos('Permisos Insuficiente para el Usuario ' + modulo2.nom_usu
    + chr(13) + ' para el Ingreso a este Módulo  del Programa.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
  end;
end;

procedure TMenuPrincipal.ReimpreciondeDocumentos1Click(Sender: TObject);
var ReimpPapel_Titulares: TReimpPapel_Titulares;
begin
 if modulo2.nvl_usu >= 3 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  ReimpPapel_Titulares:=TReimpPapel_Titulares.create(self);
  try
    AuditAccesos('Mdulo 2','INGRESO REIMP. DOCUMENTOS - Usu ' + inttostr(modulo2.nro_usu));
    ReimpPapel_Titulares.ShowModal;
  finally
    ReimpPapel_Titulares.destroy;
    FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end;
end;

procedure TMenuPrincipal.SpeedButton14Click(Sender: TObject);
var ReimpPapel_Titulares: TReimpPapel_Titulares;
begin
 if modulo2.nvl_usu >= 3 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  ReimpPapel_Titulares:=TReimpPapel_Titulares.create(self);
  try
    AuditAccesos('Mdulo 2','INGRESO REIMP. DOCUMENTOS - Usu ' + inttostr(modulo2.nro_usu));
    ReimpPapel_Titulares.ShowModal;
  finally
    ReimpPapel_Titulares.destroy;
    FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end;
end;

procedure TMenuPrincipal.Calculodeimporte1Click(Sender: TObject);
var caulculo_LosTraslados: Tcaulculo_LosTraslados;
begin
 if modulo2.nvl_usu >= 3 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  caulculo_LosTraslados:=Tcaulculo_LosTraslados.create(self);
  try
    //AuditAccesos('Mdulo 2','INGRESO REIMP. DOCUMENTOS - Usu ' + inttostr(modulo2.nro_usu));
    caulculo_LosTraslados.ShowModal;
  finally
    caulculo_LosTraslados.destroy;
    //FechaHora := Now();
    //label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end;
end;

procedure TMenuPrincipal.ConsultasTraslados1Click(Sender: TObject);
var TrasladosConsultas: TTrasladosConsultas;
begin
 if modulo2.nvl_usu >= 3 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  TrasladosConsultas:= TTrasladosConsultas.create(self);
  try
    AuditAccesos('Modulo 2','INGRESO A SEPELIOS- Usu ' + inttostr(modulo2.nro_usu)) ;
    TrasladosConsultas.ShowModal;
  finally
    TrasladosConsultas.Destroy ;
      //FechaHora := Now();
      //label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end;
end;

procedure TMenuPrincipal.DevoluciondeAccionalaEmpresa1Click(
  Sender: TObject);
var DevAccion: TDevAccion;
begin
 if modulo2.nvl_usu >= 3 then
 //if usu_level(modulo2.nro_usu,1) > 3 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  DevAccion:=TDevAccion.create(self);
  try
    AuditAccesos('Mdulo 2','INGRESO DEVOLUCION DE ACCIONES - Usu ' + inttostr(modulo2.nro_usu));
    DevAccion.ShowModal;
  finally
    DevAccion.destroy;
    //FechaHora := Now();
    //abel4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end;
end;

procedure TMenuPrincipal.ConstanciadeEntregadeTitulo1Click(
  Sender: TObject);
var EntregaTitulo: TEntregaTitulo;
begin
 if modulo2.nvl_usu >= 3 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
 + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  EntregaTitulo:=TEntregaTitulo.create(self);
  try
    AuditAccesos('Modulo 2','INGRESO INTREGA DE TITULOS - Usu ' + inttostr(modulo2.nro_usu));
    EntregaTitulo.ShowModal;
  finally
    EntregaTitulo.destroy;
    //FechaHora := Now();
    //label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end;
end;

procedure TMenuPrincipal.VentasParcelasMayoritarios1Click(Sender: TObject);
var Ven_ParcelaMayorista: TVen_ParcelaMayorista;
begin
 IF (modulo2.nro_usu >= 3) or (modulo2.nro_usu = 7)  THEN
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  Ven_ParcelaMayorista:= TVen_ParcelaMayorista.create(self);
  try
    Ven_ParcelaMayorista.NroOpcion:=1;
    Ven_ParcelaMayorista.Caption:='V E N T A     P A R C E L A S';
    AuditAccesos('Modulo 2','INGRESO A VENTA DE PARCELAS MAYOTISTA - Usu ' + inttostr(modulo2.nro_usu));
    Ven_ParcelaMayorista.ShowModal;
  finally
    Ven_ParcelaMayorista.destroy;
  end;
 end;
end;

procedure TMenuPrincipal.CambiarValor1Click(Sender: TObject);
var CamValorCrema: TCamValorCrema;
begin

  if modulo2.nro_usu <= 2 then begin
    CamValorCrema:= TCamValorCrema.create(self);
    try
      CamValorCrema.ShowModal;
    finally
      CamValorCrema.Destroy;
    end;
  end
  else begin
    messagedlgpos('Permisos Insuficiente para el Usuario ' + modulo2.nom_usu
    + chr(13) + ' para el Ingreso a este Módulo  del Programa.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
  end;
end;

procedure TMenuPrincipal.CambiodeValor1Click(Sender: TObject);
var CamValorSepe: TCamValorSepe;
begin
  if modulo2.nro_usu <= 2 then begin
   CamValorSepe:= TCamValorSepe.create(self);
   try
    CamValorSepe.ShowModal;
   finally
    CamValorSepe.Destroy;
   end;
  end
  else begin
    messagedlgpos('Permisos Insuficiente para el Usuario ' + modulo2.nom_usu
    + chr(13) + ' para el Ingreso a este Módulo  del Programa.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
  end;
end;

procedure TMenuPrincipal.CambiarValor2Click(Sender: TObject);
var CamValorTraslado: TCamValorTraslado;
begin
  if modulo2.nro_usu <= 2 then begin
   CamValorTraslado:= TCamValorTraslado.create(self);
   try
    CamValorTraslado.ShowModal;
   finally
    CamValorTraslado.Destroy;
   end;
  end
  else begin
    messagedlgpos('Permisos Insuficiente para el Usuario ' + modulo2.nom_usu
    + chr(13) + ' para el Ingreso a este Módulo  del Programa.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
  end;
end;

procedure TMenuPrincipal.Proveedores1Click(Sender: TObject);
var AM_Provee: TAM_Provee;
begin
  if modulo2.nro_usu <= 2 then begin
   AM_Provee:= TAM_Provee.create(self);
   try
    AM_Provee.ShowModal;
   finally
    AM_Provee.Destroy;
   end;
  end
  else begin
    messagedlgpos('Permisos Insuficiente para el Usuario ' + modulo2.nom_usu
    + chr(13) + ' para el Ingreso a este Módulo  del Programa.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
  end;
end;

procedure TMenuPrincipal.CambiarPeriodosPagos1Click(Sender: TObject);
var ChangeRecibos: TChangeRecibos;
begin
 if modulo2.nro_usu <= 2 then begin
  ChangeRecibos:= TChangeRecibos.create(self);
  try
    ChangeRecibos.ShowModal;
  finally
    ChangeRecibos.Destroy;
  end;
 end
 else begin
  messagedlgpos('Permisos Insuficiente para el Usuario ' + modulo2.nom_usu
   + chr(13) + ' para el Ingreso a este Módulo  del Programa.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 end;
end;

procedure TMenuPrincipal.CamibarAcciondelPago1Click(Sender: TObject);
var ChangeRecibosAccion: TChangeRecibosAccion;
begin
 If modulo2.nro_usu <= 2 then begin
  ChangeRecibosAccion:= TChangeRecibosAccion.create(self);
  try
    ChangeRecibosAccion.ShowModal;
  finally
    ChangeRecibosAccion.Destroy;
   end;
 End
 else begin
   messagedlgpos('Permisos Insuficiente para el Usuario ' + modulo2.nom_usu
   + chr(13) + ' para el Ingreso a este Módulo  del Programa.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 end;
end;

procedure TMenuPrincipal.ABMPosnet1Click(Sender: TObject);
var AM_Generico:TAM_Generico;
begin
 AM_Generico:=TAM_Generico.Create(self);
 try
  AM_Generico.NroOpcion:=10;
  AM_Generico.Titulo1:='Terminal Posnet';
  AM_Generico.Label2.Caption:='ID';
  AM_Generico.ShowModal;
 finally
  AM_Generico.Destroy;
  //Coloca1(12);
  //nacio.SetFocus;
 end;
end;

procedure TMenuPrincipal.ABMTarjetasCreditos1Click(Sender: TObject);
var AM_Generico:TAM_Generico;
begin
 AM_Generico:=TAM_Generico.Create(self);
 try
  AM_Generico.NroOpcion:=11;
  AM_Generico.Titulo1:='Tipos Tarjetas Creditos';
  AM_Generico.Label2.Caption:='ID';
  AM_Generico.ShowModal;
 finally
  AM_Generico.Destroy;
  //Coloca1(12);
  //nacio.SetFocus;
 end;
end;

procedure TMenuPrincipal.EliminarServiciodeInhumacion1Click(
  Sender: TObject);
var BorraServicioInhum: TBorraServicioInhum;
begin
 if modulo2.nvl_usu >= 3 then begin
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 end else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  BorraServicioInhum:= TBorraServicioInhum.create(self);
  try
    AuditAccesos('Modulo 2','INGRESO ELIMINACION DE SERVICIOS - Usu ' + inttostr(modulo2.nro_usu));
    BorraServicioInhum.ShowModal;
  finally
    BorraServicioInhum.destroy;
    //    FechaHora := Now();
    //label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end;
end;

procedure TMenuPrincipal.EliminarInhumado1Click(Sender: TObject);
var BorraUltimoInhum: TBorraUltimoInhum;
begin
 if modulo2.nvl_usu >= 3 then begin
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 end else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  BorraUltimoInhum:= TBorraUltimoInhum.create(self);
  try
    AuditAccesos('Modulo 2','INGRESO ELIMINACION DE INHUMADO - Usu ' + inttostr(modulo2.nro_usu));
    BorraUltimoInhum.ShowModal;
  finally
    BorraUltimoInhum.destroy;
    //    FechaHora := Now();
    //label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end;
end;

procedure TMenuPrincipal.SpeedButton15Click(Sender: TObject);
var CambiaParcelaCobrador: TCambiaParcelaCobrador;
begin
 //IF modulo2.nro_usu >= 3  THEN
 if modulo2.nro_usu > 1 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  CambiaParcelaCobrador:=TCambiaParcelaCobrador.create(self);
  try
    CambiaParcelaCobrador.ShowModal;
  finally
    CambiaParcelaCobrador.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end;
end;

procedure TMenuPrincipal.ABMOrigenes1Click(Sender: TObject);
var Cambiadestinoorigen: TCambiadestinoorigen;
begin
 if modulo2.nvl_usu > 1 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  Cambiadestinoorigen:= TCambiadestinoorigen.create(self);
  try
    Cambiadestinoorigen.nroopion:=0;
    //Cambiadestinoorigen.Caption:='Confirmacion de SERVICIOS';
    Cambiadestinoorigen.ShowModal;
  finally
    Cambiadestinoorigen.destroy;
    //FechaHora := Now();
    //label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end;
end;

procedure TMenuPrincipal.ABMDestinos1Click(Sender: TObject);
var Cambiadestinoorigen: TCambiadestinoorigen;
begin
 if modulo2.nvl_usu > 1 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  Cambiadestinoorigen:= TCambiadestinoorigen.create(self);
  try
    Cambiadestinoorigen.nroopion:=1;
    //Cambiadestinoorigen.Caption:='Confirmacion de SERVICIOS';
    Cambiadestinoorigen.ShowModal;
  finally
    Cambiadestinoorigen.destroy;
    //FechaHora := Now();
    //label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end;
end;

procedure TMenuPrincipal.SpeedButton16Click(Sender: TObject);
var AM_Comprob: TAM_Comprob;
begin
 IF modulo2.nro_usu >=3 THEN
 //if usu_level(modulo2.nro_usu,1) > 3 then
  messagedlgpos('Permisos de Usuario Insuficiente'
  + chr(13) + 'para el Ingreso a esta Parte del Programa!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else if modulo2.NoPermitido then
   messagedlgpos('Error de Versión del Sistema, La misma esta caducada'
  + chr(13) + 'Debe Actualizar el Sistema desde el Menú!!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
 else begin
  AM_Comprob:= TAM_Comprob.create(self);
  try
    AM_Comprob.ShowModal;
  finally
    AM_Comprob.destroy;
        FechaHora := Now();
    label4.Caption := LeftStr(timetostr(FechaHora),5);
  end;
 end;
end;

procedure TMenuPrincipal.ListadodeDeudoresparaVERAZ1Click(Sender: TObject);
var ListaResumenMorososVeraz: TListaResumenMorososVeraz;
begin
 VerArea(modulo2.nro_usu,256);
 if elniv = '1' then begin
     ListaResumenMorososVeraz:= TListaResumenMorososVeraz.create(self);
    try
     AuditAccesos('Mdulo 2','INGRESO CONSULTA DE DATOS GRAL - Usu ' + inttostr(modulo2.nro_usu));
     ListaResumenMorososVeraz.ShowModal;
    finally
      ListaResumenMorososVeraz.destroy;
      //    FechaHora := Now();
      //label4.Caption := LeftStr(timetostr(FechaHora),5);
    end;
 end
 else begin
  messagedlg('ATENCION.. Esta ventana NO esta Habilitada' + chr(13)
  + 'para el Usuario Nro: ' + inttostr(modulo2.nro_usu) + ' Consulte con un Administrador...',mtInformation,[mbok],0);
 end;
end;

procedure TMenuPrincipal.ActualizarVALORENELMES1Click(Sender: TObject);
var ctuValorManteMes: TActuValorManteMes;
begin
  if modulo2.nro_usu <= 2 then begin
    ctuValorManteMes:= TActuValorManteMes.create(self);
    try
      ctuValorManteMes.ShowModal;
    finally
      ctuValorManteMes.Destroy;
      FechaHora := Now();
      label4.Caption := LeftStr(timetostr(FechaHora),5);
    end;
  end
  else begin
    messagedlgpos('Permisos Insuficiente para el Usuario ' + modulo2.nom_usu
    + chr(13) + ' para el Ingreso a este Módulo  del Programa.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
  end;
end;

procedure TMenuPrincipal.ACTUALIZARVALORPARCELAS1Click(Sender: TObject);
var ctuValorManteMes: TActuValorManteMes;
begin
  if modulo2.nro_usu <= 2 then begin
    ctuValorManteMes:= TActuValorManteMes.create(self);
    try
      ctuValorManteMes.ShowModal;
    finally
      ctuValorManteMes.Destroy;
      FechaHora := Now();
      label4.Caption := LeftStr(timetostr(FechaHora),5);
    end;
  end
  else begin
    messagedlgpos('Permisos Insuficiente para el Usuario ' + modulo2.nom_usu
    + chr(13) + ' para el Ingreso a este Módulo del Programa.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3)
  end;
end;

end.

program Remanso;

uses
  Forms,
  Principal in 'Principal.pas' {MenuPrincipal},
  Unidad in 'Unidad.pas',
  Modulo in 'Modulo.pas' {Modulo2: TDataModule},
  Login in '..\..\Proyecto XE5\Proyecto EscuelaConductores\Login.pas' {Acceso},
  acerca in 'Acerca.pas' {Acerca_de},
  Busqueda in 'Busqueda.pas' {LA_BUSQUEDA},
  AM_VenGenerica in 'AM_VenGenerica.pas' {AM_Generico},
  Consu_Clientes in 'Consu_Clientes.pas' {Con_Cliente},
  CapaDatos in 'CapaDatos.pas',
  AM_Captura in 'AM_Captura.pas',
  ValidarArchivos in 'ValidarArchivos.pas' {ValidaArchivos},
  AuditMovi in 'AuditMovi.pas' {AuditaMovim},
  AM_InhumadoEspeciales in 'AM_InhumadoEspeciales.pas' {AM_InhumadosEsp},
  Anula_Talon in 'Anula_Talon.pas' {Anula_Talonario},
  Anula_Generica in 'Anula_Generica.pas' {Anula_General},
  Conf_Generica in 'Conf_Generica.pas' {Confirma_Gen},
  Confirma_Inhumado in 'Confirma_Inhumado.pas' {Confirma_Inhu},
  Movim_VentasServicios in 'Movim_VentasServicios.pas' {Mov_MantServ},
  NotaMuni_Inhumados in 'NotaMuni_Inhumados.pas' {NotaInhumaConsulta},
  AM_Talon in 'AM_Talon.pas' {AM_Talonarios},
  Borra_Inhumados in 'Borra_Inhumados.pas' {Elimina_Inhum},
  AM_PreciosParcelas in 'AM_PreciosParcelas.pas' {AM_PREPAR},
  Bus_Talon in 'Bus_Talon.pas' {Busca_Talonario},
  VEN_ServiciosNuevosValores in 'VEN_ServiciosNuevosValores.pas' {Ven_ServNuevo},
  Resu_Caja in 'Resu_Caja.pas' {Resumen_Caja},
  AM_Servicios in 'AM_Servicios.pas' {AM_Servicio},
  AM_Cobradores in 'AM_Cobradores.pas' {AM_Cobra},
  AM_Sepelios in 'AM_Sepelios.pas' {AM_LosSepelios},
  AM_TalonCobro in 'AM_TalonCobro.pas' {AM_TalonCobranzas},
  Devolucion_Talon in 'Devolucion_Talon.pas' {Dev_Talonarios},
  AM_CuentaCorrientesMutuales in 'AM_CuentaCorrientesMutuales.pas' {MutualesCtaCtes},
  Imp_ResumenesAccionesAldia in 'Imp_ResumenesAccionesAldia.pas' {Imp_ResumenAldia},
  Imp_LosClientes in 'Imp_LosClientes.pas' {ImpTodosLosClientes},
  AM_EntregaEsp in 'AM_EntregaEsp.pas' {AM_EntregaComprob},
  Consul_MantencionPanteones in 'Consul_MantencionPanteones.pas' {Consul_Panteones},
  AM_CremacionesImporte in 'AM_CremacionesImporte.pas' {AM_ImpCremacion},
  Imp_LibroIva in 'Imp_LibroIva.pas' {Imp_LIVA},
  Con_PagosAnuales in 'Con_PagosAnuales.pas' {Cons_LosPagosAnuales},
  CambioValorTraslados in 'CambioValorTraslados.pas' {CamValorTraslado},
  Graf_Parc in 'Graf_Parc.pas' {Grafico_Parcelario},
  ParcelasEspaciosVerdes in 'ParcelasEspaciosVerdes.pas' {PEspVerdes},
  PreciosConsultas in 'PreciosConsultas.pas' {ConsulPrecios},
  ObjetosPrecios in 'ObjetosPrecios.pas' {PreciosObjetos},
  ParcelasMovimientos in 'ParcelasMovimientos.pas' {MovimParcelas: CambioValorCremacion},
  ChangeTitular in 'ChangeTitular.pas' {CambioTit},
  CobradoresComision in 'CobradoresComision.pas' {CobradorComi},
  ConfirmaVtaServ in 'ConfirmaVtaServ.pas' {NewConfVtaServ},
  ParcelasNewConsilidados in 'ParcelasNewConsilidados.pas' {LosConsolidados},
  SelecDeGestor in 'SelecDeGestor.pas' {SelGestor},
  CalculoSaldosAutom in 'CalculoSaldosAutom.pas' {CalAutomSaldos},
  DatosCheque in 'DatosCheque.pas' {ChequeDato},
  CargaPeriodosPagos in 'CargaPeriodosPagos.pas' {cperiodospagps},
  InhumaSinServicios in 'InhumaSinServicios.pas' {InhuSinServ},
  LasNovedadesParcelas in 'LasNovedadesParcelas.pas' {ParcelasNov},
  GeneraPasosImp in 'GeneraPasosImp.pas' {FactuMasiva},
  CargaPagosPosnet in 'CargaPagosPosnet.pas' {CargaPosnetPagos},
  LasMutualesInstituicones in 'LasMutualesInstituicones.pas' {LasMutales},
  ResumenesMorososVeraz in 'ResumenesMorososVeraz.pas' {ListaResumenMorososVeraz};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Gestión Integral - Remanso de Paz';
  Application.CreateForm(TModulo2, Modulo2);
  Application.CreateForm(TMenuPrincipal, MenuPrincipal);
  Application.CreateForm(TParcelasNov, ParcelasNov);
  Application.CreateForm(TFactuMasiva, FactuMasiva);
  Application.CreateForm(TCargaPosnetPagos, CargaPosnetPagos);
  Application.CreateForm(TLasMutales, LasMutales);
  Application.CreateForm(TListaResumenMorososVeraz, ListaResumenMorososVeraz);
  //Application.CreateForm(TLosConsolidados, LosConsolidados);
  Application.CreateForm(TSelGestor, SelGestor);
  Application.CreateForm(TCalAutomSaldos, CalAutomSaldos);
  Application.CreateForm(TChequeDato, ChequeDato);
  Application.CreateForm(Tcperiodospagps, cperiodospagps);
  Application.Run;
end.

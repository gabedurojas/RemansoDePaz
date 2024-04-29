unit VEN_ParcelasMayoritarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,DBClient, RpDefine, RpBase, RpSystem, DB, ComCtrls, ToolWin,
  ExtCtrls, StdCtrls, Grids, JvExGrids, JvStringGrid,
  JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  JvgGroupBox, JvExExtCtrls, JvExtComponent, JvPanel, Mask, DBCtrls,
  Buttons, JvExButtons, JvBitBtn, DBGrids, JvExDBGrids, JvDBGrid,
  ClaseParcelasVentas,ClaseParcelasVentasDeudas,ClaseParcelasTitulares,
  ClaseFunciones,StrUtils, WSDLIntf, Unidad, ClaseParcelas, LMDControl,
  LMDBaseControl, LMDBaseGraphicControl, LMDGraphicControl, LMDScrollText,
  ClaseTiposSectores,ClaseTiposFormasPago, JvExStdCtrls, JvEdit,
  JvValidateEdit, Menus, JvExControls, JvAnimatedImage, JvGIFCtrl,
  LMDCustomComponent, LMDContainerComponent, LMDMsg,ClaseSistemas,
  ClaseParcelasNovedades,JvSimLogic,RpRenderPDF,RpRender,ClaseParcelasVentasDetalle,ClaseParcelasMovimientosDiarrioDetalle;

type LasFilas = array[1..2] of integer;
type HackTable = class(TClientDataSet);//       class(TADOTable);
type THackStringGrid = class(TStringGrid);
type
  TVen_ParcelaMayorista = class(TForm)
    Barra1: TStatusBar;
    DataSource1: TDataSource;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TJvDBGrid;
    todos: TRichEdit;
    LB1: TLabel;
    ODNI: TEdit;
    Busca: TJvBitBtn;
    DataSource2: TDataSource;
    FPago: TTabSheet;
    gb1: TGroupBox;
    Label11: TLabel;
    GDatos: TPageControl;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    GRILLA1: TDBGrid;
    DataSource3: TDataSource;
    TabSheet9: TTabSheet;
    GroupBox1: TGroupBox;
    Label15: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    Label13: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    Label8: TLabel;
    D1: TDBEdit;
    D2: TDBEdit;
    D8: TDBEdit;
    Panel: TJvPanel;
    D4: TDBEdit;
    D6: TDBEdit;
    D3: TDBEdit;
    D5: TDBEdit;
    D13: TDBEdit;
    D14: TDBEdit;
    RvS: TRvSystem;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    EXPORTAR: TJvBitBtn;
    ToolButton5: TToolButton;
    bGuardar: TJvBitBtn;
    ToolButton1: TToolButton;
    BORRA: TJvBitBtn;
    ToolButton3: TToolButton;
    bSalir: TJvBitBtn;
    GBDatos: TJvgGroupBox;
    DPrecio: TEdit;
    Label2: TLabel;
    Label5: TLabel;
    IMPORTEE: TEdit;
    Label1: TLabel;
    grupo1: TJvgGroupBox;
    Label12: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label36: TLabel;
    Saldo: TEdit;
    VALCUOTA: TEdit;
    IMPORTE: TEdit;
    Label17: TLabel;
    tpopago: TComboBox;
    TabSheet3: TTabSheet;
    grilla5: TStringGrid;
    TabSheet6: TTabSheet;
    JvgGroupBox5: TJvgGroupBox;
    Label43: TLabel;
    NROCREDITO: TEdit;
    CB1: TCheckBox;
    grupo7: TJvgGroupBox;
    Label27: TLabel;
    Label32: TLabel;
    Label31: TLabel;
    Label30: TLabel;
    CAPITAL: TEdit;
    INTERESES: TEdit;
    INTERTOT: TEdit;
    TOTAL1: TEdit;
    TabSheet8: TTabSheet;
    JvgGroupBox1: TJvgGroupBox;
    Label21: TLabel;
    Label53: TLabel;
    Edit1: TEdit;
    Button2: TJvBitBtn;
    NIVEL: TComboBox;
    Agrega2: TJvBitBtn;
    Modifica2: TJvBitBtn;
    Quita2: TJvBitBtn;
    Borra2: TJvBitBtn;
    GrillaT: TJvStringGrid;
    grupotestigos: TJvgGroupBox;
    Image2: TImage;
    JvDBGrid1: TJvDBGrid;
    DataSource4: TDataSource;
    DBEdit2: TEdit;
    DBEdit7: TEdit;
    DBEdit4: TEdit;
    DBEdit8: TEdit;
    Label20: TLabel;
    TabSheet10: TTabSheet;
    JvgGroupBox4: TJvgGroupBox;
    Image1: TImage;
    Label16: TLabel;
    DC: TDBEdit;
    GroupBox6: TGroupBox;
    Shape3: TShape;
    Shape2: TShape;
    Label55: TLabel;
    Label56: TLabel;
    Shape1: TShape;
    Label63: TLabel;
    Label14: TLabel;
    Label29: TLabel;
    ElSector: TComboBox;
    LaAccion: TComboBox;
    preciop: TEdit;
    Edit2: TEdit;
    Label44: TLabel;
    CODIGO: TComboBox;
    grupo6: TJvgGroupBox;
    Label33: TLabel;
    Label34: TLabel;
    COEF: TEdit;
    INTERES: TEdit;
    saldop: TEdit;
    Label35: TLabel;
    FECHA: TJvDatePickerEdit;
    grupoTarje: TGroupBox;
    Label18: TLabel;
    Label19: TLabel;
    Label22: TLabel;
    TARJETA: TComboBox;
    NROCB: TJvValidateEdit;
    NroCuota: TEdit;
    GrupoCheq: TGroupBox;
    Label39: TLabel;
    banco: TComboBox;
    LB12: TLabel;
    E1: TEdit;
    LB3: TLabel;
    E2: TEdit;
    LB5: TLabel;
    Fcheque: TMaskEdit;
    Label40: TLabel;
    ftarje: TMaskEdit;
    LB7: TLabel;
    E5: TEdit;
    Label41: TLabel;
    fpagocheque: TMaskEdit;
    Label42: TLabel;
    Edit3: TEdit;
    Label45: TLabel;
    titcheq: TEdit;
    Label46: TLabel;
    tittarje: TEdit;
    Label47: TLabel;
    Porcen: TComboBox;
    PopupMenu1: TPopupMenu;
    reserva: TJvgGroupBox;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    GroupBox3: TGroupBox;
    Label57: TLabel;
    reserd: TEdit;
    reserh: TEdit;
    dif: TEdit;
    names: TEdit;
    Image3: TImage;
    Dialogo: TLMDMessageBoxDlg;
    RvD: TRvSystem;
    Label54: TLabel;
    recibonro: TEdit;
    GroupBox5: TGroupBox;
    Label52: TLabel;
    OBSERV: TEdit;
    Coninhu: TCheckBox;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    GroupBox9: TGroupBox;
    GroupBox10: TGroupBox;
    GroupBox11: TGroupBox;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit10: TEdit;
    Edit12: TEdit;
    Edit11: TEdit;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    JvSIMConnector1: TJvSIMConnector;
    JvSIMConnector2: TJvSIMConnector;
    JvSIMConnector3: TJvSIMConnector;
    JvSIMConnector4: TJvSIMConnector;
    JvSIMConnector5: TJvSIMConnector;
    JvSIMConnector6: TJvSIMConnector;
    JvSIMConnector7: TJvSIMConnector;
    JvSIMConnector8: TJvSIMConnector;
    JvSIMConnector9: TJvSIMConnector;
    GroupBox12: TGroupBox;
    JvBitBtn1: TJvBitBtn;
    JvBitBtn2: TJvBitBtn;
    JvBitBtn3: TJvBitBtn;
    RvRenderPDF1: TRvRenderPDF;
    RvSCarta: TRvSystem;
    GrupoPago: TGroupBox;
    GroupBox2: TGroupBox;
    c4: TCheckBox;
    C6: TCheckBox;
    CE: TCheckBox;
    GrupoImp: TGroupBox;
    ImprimirActa: TJvBitBtn;
    ImprimirCesion: TJvBitBtn;
    ImprimirClausular: TJvBitBtn;
    ImprimirGarantia: TJvBitBtn;
    ImprimeReglamento: TJvBitBtn;
    ImprimirCarta: TJvBitBtn;
    grillaformu: TJvStringGrid;
    Label67: TLabel;
    TPOTALON: TComboBox;
    Label70: TLabel;
    PV: TComboBox;
    Label71: TLabel;
    actu: TBitBtn;
    elcomprob: TEdit;
    GroupBox4: TGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label28: TLabel;
    Label58: TLabel;
    D16: TDBEdit;
    D15: TDBEdit;
    Panel2: TJvPanel;
    D17: TDBEdit;
    IDVenta: TDBEdit;
    D20: TDBEdit;
    Edit13: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure CargaDatos(nro:byte);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BuscaClick(Sender: TObject);
    procedure JvBitBtn3Click(Sender: TObject);
    procedure bExportarClick(Sender: TObject);
    procedure ONOMBKeyPress(Sender: TObject; var Key: Char);
    procedure IMPORTEEExit(Sender: TObject);
    procedure IMPORTEEKeyPress(Sender: TObject; var Key: Char);
    procedure FECHAKeyPress(Sender: TObject; var Key: Char);
    procedure FECHAExit(Sender: TObject);
    procedure DPrecioKeyPress(Sender: TObject; var Key: Char);
    procedure DPrecioExit(Sender: TObject);
    procedure bGuardarClick(Sender: TObject);
    procedure ImprimirActaClick(Sender: TObject);
    procedure ImprimeReglamentoClick(Sender: TObject);
    procedure ImprimirCesionClick(Sender: TObject);
    procedure ImprimirClausularClick(Sender: TObject);
    procedure ImprimirGarantiaClick(Sender: TObject);
    procedure ImprimirCartaClick(Sender: TObject);
    procedure bSalirClick(Sender: TObject);
    Procedure SolicitudAdquisicion();
    procedure Cesion();
    procedure Clausulas();
    procedure Garantias();
    procedure Reglamento();
    procedure Reglamento1();
    procedure Carta();
    procedure RvSPrint(Sender: TObject);
    procedure tpopagoKeyPress(Sender: TObject; var Key: Char);
    procedure tpopagoExit(Sender: TObject);
    procedure OBSERVKeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure Agrega2Click(Sender: TObject);
    procedure Modifica2Click(Sender: TObject);
    procedure Quita2Click(Sender: TObject);
    procedure Borra2Click(Sender: TObject);
    procedure GrillaTClick(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure grillaformuClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ElSectorExit(Sender: TObject);
    procedure ElSectorKeyPress(Sender: TObject; var Key: Char);
    procedure LaAccionExit(Sender: TObject);
    procedure LaAccionKeyPress(Sender: TObject; var Key: Char);
    procedure Edit2Change(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2Exit(Sender: TObject);
    procedure TARJETAExit(Sender: TObject);
    procedure NroCuotaExit(Sender: TObject);
    procedure NroCuotaKeyPress(Sender: TObject; var Key: Char);
    procedure NROCBKeyPress(Sender: TObject; var Key: Char);
    procedure TARJETAKeyPress(Sender: TObject; var Key: Char);
    procedure NROCBExit(Sender: TObject);
    procedure bancoKeyPress(Sender: TObject; var Key: Char);
    procedure E1KeyPress(Sender: TObject; var Key: Char);
    procedure E2KeyPress(Sender: TObject; var Key: Char);
    procedure ftarjeKeyPress(Sender: TObject; var Key: Char);
    procedure ftarjeExit(Sender: TObject);
    procedure FchequeExit(Sender: TObject);
    procedure fpagochequeExit(Sender: TObject);
    procedure FchequeKeyPress(Sender: TObject; var Key: Char);
    procedure fpagochequeKeyPress(Sender: TObject; var Key: Char);
    procedure E5KeyPress(Sender: TObject; var Key: Char);
    procedure E5Exit(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure titcheqKeyPress(Sender: TObject; var Key: Char);
    procedure tittarjeKeyPress(Sender: TObject; var Key: Char);
    procedure BORRAClick(Sender: TObject);
    procedure bancoExit(Sender: TObject);
    procedure ControlTitulares();
    procedure PorcenExit(Sender: TObject);
    procedure PorcenKeyPress(Sender: TObject; var Key: Char);
    procedure PorcenChange(Sender: TObject);
    procedure titcheqExit(Sender: TObject);
    procedure preciopExit(Sender: TObject);
    procedure preciopKeyPress(Sender: TObject; var Key: Char);
    procedure VALCUOTAKeyPress(Sender: TObject; var Key: Char);
    procedure RvDPrint(Sender: TObject);
    procedure recibonroKeyPress(Sender: TObject; var Key: Char);
    procedure E2Exit(Sender: TObject);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure JvBitBtn2Click(Sender: TObject);
    procedure EXPORTARClick(Sender: TObject);
    procedure RvSCartaPrint(Sender: TObject);
    procedure actuClick(Sender: TObject);
    procedure TPOTALONExit(Sender: TObject);
    procedure PVExit(Sender: TObject);
    procedure elcomprobChange(Sender: TObject);
    procedure elcomprobExit(Sender: TObject);
    procedure TPOTALONKeyPress(Sender: TObject; var Key: Char);
    procedure PVKeyPress(Sender: TObject; var Key: Char);
    procedure elcomprobKeyPress(Sender: TObject; var Key: Char);
    procedure VALCUOTAExit(Sender: TObject);
  private
    gh:boolean;{Controla que no hubiere errores en la carga de datos}
    NroOpc:byte;{ Private declarations }
    cantt:integer;
    action:integer;

  public
    NroOpcion,tipopago,tottit:integer;
    pt:boolean;
    coefi,inter,porcent,name,coninter,nivelusu,elcob,detalledeimp,profesion,laprov,laloca,CUITtransf,tipocomprob:string;
    Adress,NroDocu,TProfesion,TNacimiento,TNacion,Resultado,TCuif,nomtransf,dnitransf,domtransf,valtransf,VColor: string;
    TTel,TCel,TTipo,Naci,Nacio,TECivil,TCiudad,TEstado,TCP,TProvincia,TDoc,TDom,TNivel,TTelef,TTelefcelular,totalfinanciado: string;
    Funciones:TFuncionesVarias;
    DtcomboC,DataSetC,DataSet,DataSet1,DataSetCli,DataSetT,DataGer,DataVenta,DataSetTransf,Datasetupcn:TClientDataSet; //declaro los DataSet
    IdCombos:array of array of string; // para los combobox
    ///// para la impresion de datos segun parametros
    PosH1:Array [0..9] of Double;//Posiciones
    Camp1:Array [0..9] of Integer;//Campos a Tomar en cuenta
    TxtCamp1:Array [0..9] of String;//Textos de los Campos a Tomar en cuenta
    TCuota,TCodigos,TColores:Unidad.TablaXML;
    Parcelas:TParcelas;
    ParcelasVentas:TParcelasVentas;
    ParcelasVentasDeudas:TParcelasVentasDeudas;
    ParcelasTitulares:TParcelasTitulares;
    ParcelasVentasDetalle:TParcelasVentasDetalle;
    ParcelasMovimientosDiarrioDetalle:TParcelasMovimientosDiarrioDetalle;
    Sistemas:TSistemas;
    ParcelasNovedades:TParcelasNovedades;
  end;

var
  Ven_ParcelaMayorista: TVen_ParcelaMayorista;
    parp:boolean;
implementation

{
nroopcion=1   Ventas (Contado / Financiado)
nroopcion=2   Donacion
nroopcion=3   Transferencia
}

uses Modulo,Busqueda,AM_VenGenerica,ValidarArchivos,ClaseParcelasCoeficientes,
     ClaseTiposCodigos,SelecCuotas,SelecDeGestor;
{$R *.dfm}

procedure TVen_ParcelaMayorista.FormActivate(Sender: TObject);
var niv:integer;
begin
 if not gh then begin
  gh:=true;
  setlength(IdCombos,5);
  barra1.Panels[2].Text:=modulo2.nivel;
  grilla5.Cells[0,0]:='N° Cuota';             grilla5.Cells[1,0]:='Periodo Envio';
  grilla5.Cells[2,0]:='Fechas Vtos';          grilla5.Cells[3,0]:='Capital';
  grilla5.Cells[4,0]:='Interes';              grilla5.Cells[5,0]:='Importe Cuota';
  grilla5.Cells[6,0]:='Detalle';

  GrillaT.Cells[0,0]:='Orden';                GrillaT.Cells[1,0]:='Id';
  GrillaT.Cells[2,0]:='Nombre';               GrillaT.Cells[3,0]:='TipoDNI';
  GrillaT.Cells[4,0]:='DNI';                  GrillaT.Cells[5,0]:='Domicilio';
  GrillaT.Cells[6,0]:='NroT';                 GrillaT.Cells[7,0]:='MDF';
  GrillaT.Cells[8,0]:='Cuif';                 GrillaT.Cells[9,0]:='FecNac';
  GrillaT.Cells[10,0]:='Nacionalidad';        GrillaT.Cells[11,0]:='EstCivil';
  GrillaT.Cells[12,0]:='Localidad';           GrillaT.Cells[13,0]:='Telefono';
  GrillaT.Cells[14,0]:='Profesion';           GrillaT.Cells[15,0]:='Celuar';
  GrillaT.Cells[16,0]:='Provincia';

  grillaformu.Cells[0,0]:='Nro.Formulario';   grillaformu.Cells[1,0]:='Detalle';
  grillaformu.Cells[2,0]:='SeImprime';        grillaformu.Cells[3,0]:='Selecc.';

  if nroopcion=1 then begin
   tpopago.Items.Delete(tpopago.Items.IndexOf('Donacion'));
   tpopago.Items.Delete(tpopago.Items.IndexOf('Transferencias'));
   tpopago.ItemIndex:=0;
   label26.Visible:=false;
   d17.Visible:=false;
   label47.Visible:=false;
   porcen.Visible:=false;
   coninhu.Visible:=true;
   grupopago.Enabled :=true;
   grupoimp.Enabled:=false;
  end;
  {if nroopcion=2 then begin
   tpopago.Items.Delete(tpopago.Items.IndexOf('Contado'));
   tpopago.Items.Delete(tpopago.Items.IndexOf('Financiado'));
   tpopago.Items.Delete(tpopago.Items.IndexOf('Transferencias'));
   tpopago.Items.Delete(tpopago.Items.IndexOf('Cheque'));
   tpopago.Items.Delete(tpopago.Items.IndexOf('Tarjeta Credito'));
   tpopago.Items.Delete(tpopago.Items.IndexOf('Financiado sin interes'));
   tpopago.Items.Delete(tpopago.Items.IndexOf('Cuenta Corriente'));
   tpopago.ItemIndex:=0;
   label26.Visible:=false;
   d17.Visible:=false;
   label47.Visible:=false;
   porcen.Visible:=false;
   LABEL5.Visible:=FALSE;
   IMPORTEE.Visible:=FALSE;
   coninhu.Visible:=false;
   grupopago.Enabled :=false;
   grupoimp.Enabled:=true;
  end;}
  {if nroopcion=3 then begin
   //valtransf:=modulo2.INI1.ReadString('Transferencia','Valor','');
   tpopago.Items.Delete(tpopago.Items.IndexOf('Contado'));
   tpopago.Items.Delete(tpopago.Items.IndexOf('Financiado'));
   tpopago.Items.Delete(tpopago.Items.IndexOf('Donacion'));
   tpopago.Items.Delete(tpopago.Items.IndexOf('Cheque'));
   tpopago.Items.Delete(tpopago.Items.IndexOf('Tarjeta Credito'));
   tpopago.Items.Delete(tpopago.Items.IndexOf('Financiado sin interes'));
   tpopago.Items.Delete(tpopago.Items.IndexOf('Cuenta Corriente'));
   tpopago.ItemIndex:=0;
   label26.Visible:=true;
   d17.Visible:=true;
   label47.Visible:=true;
   porcen.Visible:=true;
   LABEL5.Visible:=FALSE;
   IMPORTEE.Visible:=FALSE;
   coninhu.Visible:=false;
   grupopago.Enabled :=true;
   grupoimp.Enabled:=false;
  end; }
  PC1.ActivePage:=PC1.Pages[0];
  GDatos.ActivePage:=GDatos.Pages[0];
  PC1.Images:=modulo2.ImageList1;
  grupocheq.Visible:=false;
  grupotarje.Visible:=false;
  Fcheque.Text:=strcut(Fec_System(),10);
  Ftarje.Text:=strcut(Fec_System(),10);
  Fpagocheque.Text:=strcut(Fec_System(),10);
  nivelusu:=inttostr(modulo2.usu_level);
  Coloca1(10); // grilla formularios
  Coloca1(6);  //carga de sectores
  coloca1(15);
  coloca1(17);  //carga las tarjeta
  coloca1(18);  // carga los bancos
  coloca1(22);
  coloca1(23);
  elsector.SetFocus;
  gdatos.Images:=modulo2.ImageList1;
  GroupBox8.Visible :=false;
  GroupBox9.Visible :=false;
  GroupBox10.Visible :=false;
  GroupBox11.Visible :=false;
  GroupBox12.Visible :=false;
  actu.Enabled :=false;
 end; 
end;

procedure TVen_ParcelaMayorista.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TVen_ParcelaMayorista.Coloca1(nro:byte);
var t,y,p,b:integer;
    txt,sex,sec:string;   //,VColor
    ty,tot,tot1,tot2,tot3:real;
    txtw:widestring;
    NroAccion:variant;
    Param:TWideStrings;
    DataSetTit,DataSetInh,DtCombo,DataSeTCtas,DataCta,DataGer:TClientDataSet;
    TColores:Unidad.TablaXML;
    TColorInt: integer;
    TiposCodigos:TTiposCodigos;
    Funciones:TFuncionesVarias;
    CuotasCoeficientes:TParcelasCoeficientes;
    TiposSectores:TTiposSectores;
    TiposFormasPago:TTiposFormasPago;
    accion:variant;
    var SelGestor: TSelGestor;
begin
if nro=0 then begin //Identificar COLOR
  TColores:=LeeXML('TiposColores','(TipoColor=' +  D8.Text  + ')');
  if length(TColores) <> 0 then begin
    VColor:=TColores[2,0];
    Panel.Color:=stringtocolor(VColor);
    Panel2.Color:=stringtocolor(VColor);
  end;
end;
if nro=1 then begin
  DataSet.Free;
  DataSet:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=DataSet;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  sec:=trim(odni.text);
  if not Funciones.Run_Fn_VistaParcelasParaVenta(sec,DataSet,'',0) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
end;
if nro=2 then begin
  DataSet.Free;
  DataSet:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  sec:=IdCombos[1,ELSECTOR.ItemIndex];
  txtw:='SELECT * FROM Fn_VistaParcelas (null,' + chr(39) + sec + chr(39) + ',' + 'null,null,0)  where (parcela = '+  trim(laaccion.Text)+')';
  if not Funciones.Listar(txtw,DataSet) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  odni.Text:=DataSet.Fields[0].AsString;
  Funciones.Free;
end;
if nro=3 then begin   /// Precio de Parcela Segun COLOR
 if nroopcion=3 then begin
  DataSetC.Free;
  datasetC:=TClientdataSet.Create(nil);
  DataSource3.DataSet:=DatasetC;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if (VColor='clWhite') and
   ((trim(d3.Text)='U') or (trim(d3.Text)='V') or (trim(d3.Text)='W')
   or (trim(d3.Text)='X')) then begin
   txtw:='SELECT Valor FROM ParcelasTransferenciasValor where (Activo = 1)';
   if not Funciones.Listar(txtw,datasetC) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
   d14.Text:=datasetC.Fields[0].AsString;
   d17.Text:=datasetC.Fields[0].AsString;
   dprecio.Text:=datasetC.Fields[0].AsString;
   preciop.Text:=datasetC.Fields[0].AsString;
   d15.Text:=datasetC.Fields[0].AsString;
   saldo.Text:=datasetC.Fields[0].AsString;
   valcuota.Text:=datasetC.Fields[0].AsString;
   Funciones.Free;
  end
  else begin
   if not Funciones.Run_Fn_VistaParcelasPreciosColores(trim(D8.Text),trim(D3.Text),DataSetC,'',0) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador', mtError,[mbok],0);
   preciop.Text:=DataSetC.Fields[6].AsString;
   dprecio.Text:=DataSetC.Fields[5].AsString;
   saldo.Text := floattostr((strtofloat(dprecio.Text)*strtoint(porcen.Text))/100);
   valcuota.Text:=floattostr((strtofloat(dprecio.Text)*strtoint(porcen.Text))/100);
   d17.Text:=floattostr((strtofloat(dprecio.Text)*strtoint(porcen.Text))/100);
   D14.DataField:='PrecioLista';
   D15.DataField:='PrecioLista';
   dc.DataField:='Detalle';
   Funciones.Free;
  end;
 end
 else begin
  DataSetC.Free;
  datasetC:=TClientdataSet.Create(nil);
  DataSource3.DataSet:=DatasetC;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if not Funciones.Run_Fn_VistaParcelasPreciosColores(trim(D8.Text),trim(D3.Text),DataSetC,'',0) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  preciop.Text:=DataSetC.Fields[6].AsString;
  dprecio.Text:=DataSetC.Fields[5].AsString;
  importee.Text:=DataSetC.Fields[7].AsString;
  saldop.Text:=DataSetC.Fields[12].AsString;
  if not(DataSetC.IsEmpty) then begin
   D14.DataField:='PrecioLista';
   D15.DataField:='PrecioLista';
   dc.DataField:='Detalle';
   SALDO.Text:=DPRECIO.Text;
   IMPORTE.Text:=DPRECIO.Text;
  end
 end;
end;
if nro=4 then begin   /// carga de las acciones
  LAACCION.Clear;
  DtComboC.Free;
  DtcomboC:=TClientDataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  sec:=IdCombos[1,ELSECTOR.ItemIndex];
  if NroOpcion = 3 then begin
   txtw:='SELECT dbo.Parcelas.Parcela FROM dbo.Parcelas INNER JOIN dbo.TiposPlazas ON dbo.Parcelas.IdPlaza = dbo.TiposPlazas.IdPlaza '
   + ' WHERE (dbo.Parcelas.Sector = ' + chr(39) + sec + chr(39) + ') ORDER BY dbo.Parcelas.Parcela ';
   if Funciones.Listar(txtw,DtcomboC) then begin
    SetLength(IdCombos[0],DtcomboC.RecordCount);
    for t:=1 to DtcomboC.RecordCount  do begin
     DtcomboC.RecNo:=t;
     LAACCION.Items.Insert(t-1,trim(DtcomboC.Fields[0].AsString));
     IdCombos[0,t-1]:=DtcomboC.Fields[0].AsString;
     action:=strtoint(DtcomboC.Fields[0].AsString);
    end;
   end
   else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador', mtError,[mbok],0);
  end
  else begin
   if Funciones.Run_Fn_VistaParcelasParaEspVerdes(null,null,sec,DtComboC,'ORDER BY PARCELA',0) then  begin
    SetLength(IdCombos[0],DtcomboC.RecordCount);
    for t:=1 to DtcomboC.RecordCount  do begin
     DtcomboC.RecNo:=t;
     LAACCION.Items.Insert(t-1,trim(DtcomboC.Fields[5].AsString));
     IdCombos[0,t-1]:=DtcomboC.Fields[0].AsString;
     action:=strtoint(DtcomboC.Fields[0].AsString);
    end;
   end
   else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  end;
  funciones.Free;
  LAACCION.ItemIndex:=0;
end;
if nro=5 then begin //  financiado sin interes
  DataSeTCtas.Free;
  DataSeTCtas:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='select nrocuota,Periodo,fechavto,capital,interes,montocuota,detalle from CreaDeudasVentasSinInteres (1,'+ chr(39)
  + trim(fecha.Text)+ chr(39)+',0,'+ trim(valcuota.Text)+','+ trim(edit2.Text)+',0)';
  if not Funciones.Listar(txtw,DataSeTCtas) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  for t:=0 to grilla5.ColCount-1 do
    for y:=1 to grilla5.RowCount-1 do grilla5.Cells[t,y]:='';
  for t:=1 to DataSeTCtas.RecordCount  do begin
   DataSeTCtas.RecNo:=t;
   grilla5.RowCount:=t+1;
   grilla5.Cells[0,t]:=trim(DataSeTCtas.Fields[0].AsString);
   grilla5.Cells[1,t]:=trim(DataSeTCtas.Fields[1].AsString);
   grilla5.Cells[2,t]:=trim(DataSeTCtas.Fields[2].AsString);
   grilla5.Cells[3,t]:=trim(valcuota.Text);
   grilla5.Cells[4,t]:=trim(DataSeTCtas.Fields[4].AsString);
   grilla5.Cells[5,t]:=trim(valcuota.Text);
   grilla5.Cells[6,t]:=trim(DataSeTCtas.Fields[6].AsString);
  end;
end;
if nro=6 then begin   //tipos sectores
  ELSECTOR.Clear;
  DtCombo.Free;
  Dtcombo:=TClientDataSet.Create(nil);
  TiposSectores:=TTiposSectores.Create(nil);
  TiposSectores.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT Sector FROM TiposSectores';
  if TiposSectores.Listar(txtw,DtCombo) then begin
   SetLength(IdCombos[1],DtCombo.RecordCount);
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    ELSECTOR.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
    IdCombos[1,t-1]:=DtCombo.Fields[0].AsString;
   end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  TiposSectores.Free;
  ELSECTOR.ItemIndex:=0;
end;
if nro=7  then begin
  DataSetCli.Free;
  DataSetCli:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if not Funciones.Run_Fn_VistaClientes(null,'',strtoint(trim(edit1.Text)),null,null,'',DataSetCli,'',0) then
   messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
   TCuif:=DataSetCli.Fields[1].AsString;          //CUIf
   edit1.Text:=DataSetCli.Fields[5].AsString;     //DNI
   name:=DataSetCli.Fields[2].AsString;           //Nombre
   tdom:=DataSetCli.Fields[15].AsString;          //Domicilio
   Tdoc:=DataSetCli.Fields[4].AsString;           //Tipo Doc
   naci:=DataSetCli.Fields[11].AsString;          //fecnac
   Nacio:=DataSetCli.Fields[9].AsString;          //NAcionalidad
   TECivil:=DataSetCli.Fields[10].AsString;       //ecivil
   TCiudad:=DataSetCli.Fields[13].AsString;       //ciudad
   Funciones.Free;
end;
if nro=8 then begin
  DataSetT.Free;
  DataSetT:=TClientdataSet.Create(nil);
  DataSource4.DataSet:=DataSetT;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if not Funciones.Run_Fn_VistaParcelasResponsables(strtoint(odni.Text),DataSetT,' where TipoAccionista=1 and nivel=0 order by nivel',0) then
  //  if not Funciones.Run_Fn_VistaParcelasResponsables(strtoint(odni.Text),DataSetT,' where nivel=0 order by nivel',0) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  d16.Text:=DataSetT.Fields[3].AsString;
  Funciones.Free;
  JvDBGrid1.Columns[2].Width:=120;
  JvDBGrid1.Columns[3].Width:=80;
  JvDBGrid1.Columns[4].Width:=80;
  nomtransf:=trim(JvDBGrid1.Fields[3].AsString);
  dnitransf:=trim(JvDBGrid1.Fields[0].AsString);
  domtransf:=trim(JvDBGrid1.Fields[5].AsString);
  CUITtransf:=trim(JvDBGrid1.Fields[1].AsString);
  {if nroopcion=3 then begin
   DataSetT.Free;
   DataSetT:=TClientdataSet.Create(nil);
   DataSource4.DataSet:=DataSetT;
   Funciones:=TFuncionesVarias.Create(nil);
   Funciones.ConnectionString:=modulo2.Conexion;
   if not Funciones.Run_Fn_VistaParcelasResponsables(strtoint(odni.Text),DataSetT,' where TipoAccionista=2 and nivel=1 order by nivel',0) then
   //if not Funciones.Run_Fn_VistaParcelasResponsables(strtoint(odni.Text),DataSetT,' order by nivel',0) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
   d16.Text:=DataSetT.Fields[3].AsString;
   edit13.Text:=DataSetT.Fields[1].AsString;
   if d16.Text = '' then begin
    DataSetT.Free;
    DataSetT:=TClientdataSet.Create(nil);
    DataSource4.DataSet:=DataSetT;
    if not Funciones.Run_Fn_VistaParcelasResponsables(strtoint(odni.Text),DataSetT,' where TipoAccionista=3 and nivel=0 order by nivel',0) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    d16.Text:=DataSetT.Fields[3].AsString;
    edit13.Text:=DataSetT.Fields[1].AsString;
   end;
   JvDBGrid1.Columns[2].Width:=120;
   JvDBGrid1.Columns[3].Width:=80;
   JvDBGrid1.Columns[4].Width:=80;
   nomtransf:=trim(JvDBGrid1.Fields[3].AsString);
   dnitransf:=trim(JvDBGrid1.Fields[0].AsString);
   domtransf:=trim(JvDBGrid1.Fields[5].AsString);
   CUITtransf:=trim(JvDBGrid1.Fields[1].AsString);
   Funciones.Free;
  end;}
end;
if nro=9  then begin
 if c6.Checked = false then begin
  if c4.Checked=true then begin
   for p:=1 to GrillaT.RowCount-1 do begin
    if trim(grillaT.Cells[1,p]) = '?' then begin
     ParcelasTitulares:=TParcelasTitulares.Create(nil);
     ParcelasTitulares.ConnectionString:=modulo2.Conexion;
     parcelastitulares.C_Cuif:=strtoint64(GrillaT.Cells[8,p]);
     parcelastitulares.C_Fecha_IX1:=fecha.Text;
     parcelastitulares.C_NroAccion_IX2:=strtoint(d1.Text);
     parcelastitulares.C_NroTipoAcc_IX3:=2;
     parcelastitulares.C_Nivel_IX4:=strtoint(GrillaT.Cells[6,p]);
     parcelastitulares.C_Activo:=true;
     parcelastitulares.C_Observaciones:='';
     parcelastitulares.C_Fecha_A:=strcut(Fec_System(),10);
     parcelastitulares.C_Usu_A:=modulo2.nro_usu;
     pt:=parcelastitulares.Agrega;
     if nroopcion = 3  then begin
      if pt then begin
       messagedlg('La TRANSFERENCIA se ha Guardado con Exito',mtConfirmation,[mbok],0);
       /// pongo en false el anterior titular
       txtw:='UPDATE ParcelasTitulares SET Activo= 0 WHERE (NroTipoAcc=3) and (nivel=0) and (NroAccion= ' + trim(d1.Text) + ')';
       parcelastitulares.ListarSinResp(txtw);
       end
       else messagedlg('Error al Guardar esta TRANSFERENCIA. Consulte con un Administrador',mtError,[mbok],0);
     end
     else begin
      if pt then Barra1.SimpleText:='Se ha Guardado los Titulares con Exito'
       else Barra1.SimpleText:='Error al Guardar los Titulares';
     end;
     parcelastitulares.Free;
    end;
   end;
  end;
 end
 else begin
  if c4.Checked=true then begin
   /// cesion gratuito
   for p:=1 to GrillaT.RowCount-1 do begin
    if trim(grillaT.Cells[1,p]) = '?' then begin
     ParcelasTitulares:=TParcelasTitulares.Create(nil);
     ParcelasTitulares.ConnectionString:=modulo2.Conexion;
     parcelastitulares.C_Cuif:=strtoint64(GrillaT.Cells[8,p]);
     parcelastitulares.C_Fecha_IX1:=fecha.Text;
     parcelastitulares.C_NroAccion_IX2:=strtoint(d1.Text);
     parcelastitulares.C_NroTipoAcc_IX3:=2;
     parcelastitulares.C_Nivel_IX4:=strtoint(GrillaT.Cells[6,p]);
     parcelastitulares.C_Activo:=true;
     parcelastitulares.C_Observaciones:='';
     parcelastitulares.C_Fecha_A:=strcut(Fec_System(),10);
     parcelastitulares.C_Usu_A:=modulo2.nro_usu;
     pt:=parcelastitulares.Agrega;
     if nroopcion = 3  then begin
      if pt then begin
       messagedlg('La TRANSFERENCIA se ha Guardado con Exito',mtConfirmation,[mbok],0);
             /// pongo en false el anterior titular
       txtw:='UPDATE ParcelasTitulares SET Activo= 0 WHERE (NroTipoAcc=3) and (nivel=0) and (NroAccion= ' + trim(d1.Text) + ')';
       parcelastitulares.ListarSinResp(txtw);
       end
       else messagedlg('Error al Guardar esta TRANSFERENCIA. Consulte con un Administrador',mtError,[mbok],0);
     end
     else begin
      // aca entro en la cesion gratuita
      if pt then begin
        messagedlg('La TRANSFERENCIA se ha Guardado con Exito',mtConfirmation,[mbok],0);
        txtw:='UPDATE ParcelasTitulares SET Activo= 0 WHERE (NroTipoAcc=3) and (NroAccion= ' + trim(d1.Text) + ')';
        parcelastitulares.ListarSinResp(txtw);
      end
       else Barra1.SimpleText:='Error al Guardar los Titulares';
     end;
     parcelastitulares.Free;
    end
    else begin
     if trim(grillaT.Cells[7,t]) = 'X' then begin
      ParcelasTitulares:=TParcelasTitulares.Create(nil);
      ParcelasTitulares.ConnectionString:=modulo2.Conexion;
      parcelastitulares.C_Cuif:=strtoint64(GrillaT.Cells[8,p]);
      parcelastitulares.C_Fecha_IX1:=fecha.Text;
      parcelastitulares.C_NroAccion_IX2:=strtoint(d1.Text);
      parcelastitulares.C_NroTipoAcc_IX3:=2;
      parcelastitulares.C_Nivel_IX4:=strtoint(GrillaT.Cells[6,p]);
      parcelastitulares.C_Activo:=true;
      parcelastitulares.C_Observaciones:='';
      parcelastitulares.C_Fecha_A:=strcut(Fec_System(),10);
      parcelastitulares.C_Usu_A:=modulo2.nro_usu;
      pt:=parcelastitulares.Modificar;
      if nroopcion = 3  then begin
       if pt then messagedlg('La TRANSFERENCIA se ha Guardado con Exito',mtConfirmation,[mbok],0)
       else messagedlg('Error al Guardar esta TRANSFERENCIA. Consulte con un Administrador',mtError,[mbok],0);
      end
      else begin
       if pt then Barra1.SimpleText:='Se ha Guardado los Titulares con Exito'
        else Barra1.SimpleText:='Error al Guardar los Titulares';
      end;
       parcelastitulares.Free;
     end;
    end;
   end;
  end;
 end;
 SelGestor:= TSelGestor.Create(self);
 try
  SelGestor.accion:=trim(d1.Text);
  SelGestor.ShowModal;
 finally
  elcob:=SelGestor.COBRADOR.Text;
  SelGestor.destroy;
 end;
end;
if nro = 10 then begin  //cargo la grilla de los testigos
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if not Funciones.Run_Fn_VistaLosFormularios(1,DtCombo,'',0) then
   messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  for t:=0 to grillaformu.ColCount-1 do
    for y:=1 to grillaformu.RowCount-1 do grillaformu.Cells[t,y]:='';
  for t:=1 to DtCombo.RecordCount  do begin
   DtCombo.RecNo:=t;
   grillaformu.RowCount:=t+1;
   grillaformu.Cells[0,t]:=trim(DtCombo.Fields[0].AsString);
   grillaformu.Cells[1,t]:=trim(DtCombo.Fields[2].AsString);
   grillaformu.Cells[2,t]:=trim(DtCombo.Fields[3].AsString);
  end;
end;
if nro=11 then begin   /// para cargar grilla testigos
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  accion:=strtoint(d1.Text);
  if not Funciones.Run_Fn_VistaParcelasResponsables(accion,DtCombo,'',0) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
end;
if nro=12 then begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='Select *,(SELECT * FROM LosTelefonosClientes (Cuif)) as telef  FROM vistalostitularesminoristas Where (NroAccion = ' + trim(odni.Text) +') and (nivel > 0) ';
  if not Funciones.listar(txtw,DtCombo) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  for t:=0 to grillat.ColCount-1 do
    for y:=1 to grillat.RowCount-1 do grillat.Cells[t,y]:='';
  for t:=1 to DtCombo.RecordCount  do begin
   DtCombo.RecNo:=t;
   grillat.RowCount:=t+1;
   grillat.Cells[0,t]:=completa1(inttostr(t),2,'0');
   grillat.Cells[1,t]:=trim(DtCombo.Fields[0].AsString);
   grillat.Cells[2,t]:=trim(DtCombo.Fields[1].AsString);
   grillat.Cells[3,t]:=trim(DtCombo.Fields[2].AsString);
   grillat.Cells[4,t]:=trim(DtCombo.Fields[3].AsString);
   grillat.Cells[5,t]:=trim(DtCombo.Fields[4].AsString);
   grillat.Cells[6,t]:=trim(DtCombo.Fields[5].AsString);
   grillat.Cells[7,t]:=trim(DtCombo.Fields[6].AsString);
   grillat.Cells[8,t]:=trim(DtCombo.Fields[7].AsString);
   grillat.Cells[9,t]:=trim(DtCombo.Fields[9].AsString);
   grillat.Cells[10,t]:=trim(DtCombo.Fields[8].AsString);
   grillat.Cells[11,t]:=trim(DtCombo.Fields[10].AsString);
   grillat.Cells[12,t]:=trim(DtCombo.Fields[11].AsString);
   grillat.Cells[13,t]:=trim(DtCombo.Fields[13].AsString);
  end;
  tottit:=DtCombo.RecordCount;
end;
if nro=13 then begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT NroCuota,Periodo,FechaVencimiento,Monto,Interes,Capital FROM Fn_VistaParcelasVentasDeudas (' +trim(odni.Text)+' ,0)';
  if not Funciones.listar(txtw,DtCombo) then
   messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  for t:=0 to grilla5.ColCount-1 do
    for y:=1 to grilla5.RowCount-1 do grilla5.Cells[t,y]:='';
  for t:=1 to DtCombo.RecordCount  do begin
   DtCombo.RecNo:=t;
   grilla5.RowCount:=t+1;
   grilla5.Cells[0,t]:=trim(DtCombo.Fields[0].AsString);
   grilla5.Cells[1,t]:='';
   grilla5.Cells[2,t]:=trim(DtCombo.Fields[1].AsString);
   grilla5.Cells[3,t]:=trim(DtCombo.Fields[5].AsString);
   grilla5.Cells[4,t]:=trim(DtCombo.Fields[4].AsString);
   grilla5.Cells[5,t]:=trim(DtCombo.Fields[3].AsString);
   grilla5.Cells[6,t]:=trim(DtCombo.Fields[2].AsString);
  end;
end;
if nro=14 then begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  IF (trim(codigo.Text)='CONTADO') or (trim(codigo.Text)='TRANSFERENCIAS')
  or (trim(codigo.Text)='DONACION') OR (trim(codigo.Text)='CUENTA CORRIENTE') THEN
   txtw:='SELECT * FROM CreaDeudasVentasTransCesi (1,' + chr(39) + trim(fecha.Text) +    chr(39) +',0,'+ trim(preciop.Text) +',1,0)';
  if trim(codigo.Text)='CHEQUE' then
   txtw:='select nrocuota,periodo,fechavto,capital,interes,montocuota,''Cheque'' as detalle '
   +' FROM CreaDeudasVentas (1,' + chr(39) + trim(fecha.Text) + chr(39) +',0,'+ trim(dprecio.Text) +',1,0)';
  if trim(codigo.Text)='TARJETA DE CREDITO' then
    txtw:='select nrocuota,periodo,fechavto,capital,interes,montocuota,''Tarjeta Credito'' as detalle '
    +' FROM CreaDeudasVentas (1,' + chr(39) + trim(fecha.Text) + chr(39) +',0,'+ trim(dprecio.Text) +',1,0)';
  if not Funciones.Listar(txtw,DtCombo) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  for t:=0 to grilla5.ColCount-1 do
    for y:=1 to grilla5.RowCount-1 do grilla5.Cells[t,y]:='';
  for t:=1 to DtCombo.RecordCount  do begin
   DtCombo.RecNo:=t;
   grilla5.RowCount:=t+1;
   grilla5.Cells[0,t]:=trim(DtCombo.Fields[0].AsString);
   grilla5.Cells[1,t]:=trim(DtCombo.Fields[1].AsString);
   grilla5.Cells[2,t]:=trim(DtCombo.Fields[2].AsString);
   if (nroopcion=2) or (nroopcion=3) then begin
    grilla5.Cells[3,t]:=trim(saldo.Text)
   end
   else begin
    if t=1 then grilla5.Cells[3,t]:=trim(DtCombo.Fields[3].AsString)
     else grilla5.Cells[3,t]:=trim(valcuota.Text);
   end;
   grilla5.Cells[4,t]:=trim(DtCombo.Fields[4].AsString);
   if (nroopcion=2) or (nroopcion=3) then begin
    grilla5.Cells[5,t]:=trim(saldo.Text)
   end
   else begin
    if t=1 then grilla5.Cells[5,t]:=trim(DtCombo.Fields[5].AsString)
     else grilla5.Cells[5,t]:=trim(valcuota.Text);
   end;
   if (nroopcion=1) then  grilla5.Cells[6,t]:=trim(DtCombo.Fields[6].AsString);
   //if (nroopcion=2) then  grilla5.Cells[6,t]:=trim(codigo.Text);
   //if (nroopcion=3) then  grilla5.Cells[6,t]:=trim(codigo.Text);
  end;
end;
if nro=15 then begin   //tipos DE FINANCIACION
  CODIGO.Clear;
  DtComboC.Free;
  DtcomboC:=TClientDataSet.Create(nil);
  TiposFormasPago:=TTiposFormasPago.Create(nil);
  TiposFormasPago.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT IdFormaPago,FormaPago FROM TiposFormasPago order by 1';// WHERE (HabilitaOpc = 0)';
  if TiposFormasPago.Listar(txtw,DtcomboC)  then begin
   SetLength(IdCombos[3],DtcomboC.RecordCount);
   for t:=1 to DtcomboC.RecordCount  do begin
    DtcomboC.RecNo:=t;
    CODIGO.Items.Insert(t-1,trim(DtcomboC.Fields[1].AsString));
    IdCombos[3,t-1]:=DtcomboC.Fields[0].AsString;
   end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  CODIGO.ItemIndex:=0;
end;
if nro=16 then begin   // financiado con intereses
  DataCta.Free;
  DataCta:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='select nrocuota,Periodo,fechavto,capital,interes,montocuota,detalle from CreaDeudasVentasSinInteres (1,'+ chr(39)
  + trim(fecha.Text)+ chr(39)+',0,'+ trim(valcuota.Text)+','+ trim(edit2.Text)+',0)';
  if not Funciones.Listar(txtw,DataCta) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  for t:=0 to grilla5.ColCount-1 do
    for y:=1 to grilla5.RowCount-1 do grilla5.Cells[t,y]:='';
  for t:=1 to DataCta.RecordCount  do begin
   DataCta.RecNo:=t;
   grilla5.RowCount:=t+1;
   grilla5.Cells[0,t]:=trim(DataCta.Fields[0].AsString);
   grilla5.Cells[1,t]:=trim(DataCta.Fields[1].AsString);
   grilla5.Cells[2,t]:=trim(DataCta.Fields[2].AsString);
   grilla5.Cells[3,t]:=trim(valcuota.Text);
   grilla5.Cells[4,t]:=trim(DataCta.Fields[4].AsString);
   grilla5.Cells[5,t]:=trim(valcuota.Text);
   grilla5.Cells[6,t]:=trim(DataCta.Fields[6].AsString);
  end;
end;
if nro=17 then begin
  TARJETA.Clear;
  DtComboC.Free;
  DtcomboC:=TClientDataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT DetalleTarjeta,NroTarjeta FROM TiposTarjetasCredito order by 1';
  if Funciones.Listar(txtw,DtComboC)  then  begin
   SetLength(IdCombos[2],DtcomboC.RecordCount);
   for t:=1 to DtcomboC.RecordCount  do begin
    DtcomboC.RecNo:=t;
    TARJETA.Items.Insert(t-1,trim(DtcomboC.Fields[0].AsString));
    IdCombos[2,t-1]:=DtcomboC.Fields[1].AsString;
   end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  funciones.Free;
  TARJETA.ItemIndex:=0;
end;
if nro=18 then begin
  banco.Clear;
  DtComboC.Free;
  DtcomboC:=TClientDataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT NroEntidad, Nombre from EntidadesBancarias WHERE (NroEntidad > 0) order by 1';
  if Funciones.Listar(txtw,DtComboC)  then  begin
   SetLength(IdCombos[4],DtcomboC.RecordCount);
   for t:=1 to DtcomboC.RecordCount  do begin
    DtcomboC.RecNo:=t;
    banco.Items.Insert(t-1,trim(DtcomboC.Fields[1].AsString));
    IdCombos[4,t-1]:=DtcomboC.Fields[0].AsString;
   end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  funciones.Free;
  banco.ItemIndex:=0;
end;
if nro=19 then begin
  DtComboC.Free;
  DtcomboC:=TClientDataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT ParcelasReservas.IdReserva, Clientes.RazonSocial, ParcelasReservas.cuif,DATEDIFF(day, Fechadesde, Fechahasta) as dif,'
  + ' ParcelasReservas.NroAccion, ParcelasReservas.Fechadesde, ParcelasReservas.Fechahasta,ParcelasReservas.Activo '
  + ' FROM ParcelasReservas INNER JOIN  Clientes ON Clientes.Cuif = ParcelasReservas.cuif'
  + ' WHERE (ParcelasReservas.NroAccion = ' + trim(odni.Text) +') and (ParcelasReservas.Activo=1) order by 1';
  if not Funciones.Listar(txtw,DtComboC) then
   messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if dtcomboc.RecordCount > 0 then begin
   reserva.Visible:=true;
   reserd.Text:=dtcomboc.Fields[5].AsString;
   reserh.Text:=dtcomboc.Fields[6].AsString;
   dif.Text:=dtcomboc.Fields[3].AsString;
   names.text:=dtcomboc.Fields[1].AsString;
   PC1.Pages[1].TabVisible:=false;
   PC1.Pages[2].TabVisible:=false;
  end
  else begin
   reserva.Visible:=false;
   PC1.Pages[1].TabVisible:=true;
   PC1.Pages[2].TabVisible:=true;
  end;
end;
if nro=20 then  begin
  Sistemas:=TSistemas.Create(nil);
  Sistemas.ConnectionString:=modulo2.Conexion;
  Param:=TWideStrings.Create;
  Param.Add(odni.Text);
  Param.Add(inttostr(modulo2.nro_usu));
  Param.Add(fecha.Text) ;
  Param.Add(observ.Text) ;
  Param.Add(valcuota.Text) ;
  if not Sistemas.ExecProcSinResp('AgregaTitulareHistorico',Param) then begin
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  end;
  Param.Free;
  Sistemas.Free;
end;
if nro=21 then begin
  Datasetupcn.Free;
  Datasetupcn:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT SUM(TotalCuota) FROM EstadoCuentaMantenimiento (0,GETDATE(),0) where Periodo >=201812 and EstadoVto <> ''SIN VENCER''';
  if not Funciones.Listar(txtw,Datasetupcn) then
   messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  dprecio.Text:=Datasetupcn.Fields[0].AsString;
  preciop.Text:=Datasetupcn.Fields[0].AsString;
  d15.Text:=Datasetupcn.Fields[0].AsString;
  saldo.Text:=Datasetupcn.Fields[0].AsString;
  valcuota.Text:=Datasetupcn.Fields[0].AsString;
  Funciones.Free;
end;
if nro=22 then begin //Combo Puntos de Venta
 PV.Clear;
 DtCombo.Free;
 DtCombo:=TClientdataSet.Create(nil);
 Funciones:=TFuncionesVarias.Create(nil);
 Funciones.ConnectionString:=modulo2.Conexion;
 if Funciones.listar('SELECT distinct PuntoVenta FROM ComprobantesEntregaConfig order by 1',DtCombo) then begin
  for t:=1 to DtCombo.RecordCount  do begin
   DtCombo.RecNo:=t;
   PV.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
  end;
 end
 else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
 Funciones.Free;
 PV.ItemIndex:=0;
end;
if nro=23 then begin //Combo Talonarios
 TPOTALON.Clear;
 DtCombo.Free;
 DtCombo:=TClientdataSet.Create(nil);
 Funciones:=TFuncionesVarias.Create(nil);
 Funciones.ConnectionString:=modulo2.Conexion;
 if not Funciones.Listar('SELECT IDTipoComprobante,DetalleComprobante FROM TiposComprobantes WHERE '
 +' (Cobranzas=1) and IDTipoComprobante in (6,7,20) order by 1 desc',DtCombo) then
 messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
 else begin
  for t:=1 to DtCombo.RecordCount  do begin
   DtCombo.RecNo:=t;
   TPOTALON.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
  end;
 end;
 Funciones.Free;
 TPOTALON.ItemIndex:=0;
end;
end;

procedure TVen_ParcelaMayorista.CargaDatos(nro:byte);
begin
 if nro=1 then begin
  if (nroopcion=1) or (nroopcion=2) then begin
   Coloca1(12);  //carga titulares
   Coloca1(13);
   D1.DataField:='NroAccion';
   D2.DataField:='NroTitulo';
   D3.DataField:='Sector';
   D4.DataField:='Detalle';
   D5.DataField:='Parcela';
   D6.DataField:='Activo';
   D8.DataField:='TipoColor';
   D13.DataField:='RazonSocial';
   D16.DataField:='RazonSocial';
   D17.DataField:='PorcTransf';
   D20.DataField:='Nrocaja';
   coloca1(8); // grilla de titulares de la accion
   Coloca1(0); //Color de Parcela
   Coloca1(3); //Precio
   coloca1(13);//detalle de la forma de pago
  end;
  {if (nroopcion=3) then begin
   Coloca1(13);
   D1.DataField:='NroAccion';
   D2.DataField:='NroTitulo';
   D3.DataField:='Sector';
   D4.DataField:='Detalle';
   D5.DataField:='Parcela';
   D6.DataField:='Activo';
   D8.DataField:='TipoColor';
   D13.DataField:='RazonSocial';
   D16.DataField:='RazonSocial';
   //D17.DataField:='PorcTransf';
   coloca1(8);  // grilla de titulares de la accion
   Coloca1(0);  //Color de Parcela
   Coloca1(3);
   coloca1(13); //detalle de la forma de pago
  end;  }
 end;
end;

procedure TVen_ParcelaMayorista.DBGrid1CellClick(Column: TColumn);
var niv:integer;
begin
 if not (DataSet.IsEmpty) then begin
  if nroopcion=1 then begin    //Ventas
   if (trim(DBGrid1.Fields[11].Text) <> '') then begin
    idventa.DataField:='IdVenta';
    if (trim(DBGrid1.Fields[9].Text) = 'True') then begin
     messagedlg('ATENCION Esta Venta ya se encuentra Confirmada, imposible su Modificacion...',mtWarning,[mbok],0);
     cargadatos(1);
     PC1.Pages[1].Enabled:=false;
     PC1.Pages[2].Enabled:=false;
    end
    else begin
     PC1.Pages[1].Enabled:=true;
     PC1.Pages[2].Enabled:=true;
     cargadatos(1);
     coloca1(12);
     c6.Checked:=true;
     Coloca1(3);  //Precio
     if not (DataSetC.IsEmpty) then begin
       D14.DataField:='PrecioLista';
       D15.DataField:='PrecioLista';
       dc.DataField:='Detalle';
       SALDO.Text:=DPRECIO.Text;
       SALDO.Text:=DPRECIO.Text;
       IMPORTE.Text:=DPRECIO.Text;
     end;
     PC1.ActivePage:=PC1.Pages[1];
     //porcen.SetFocus;
     preciop.SetFocus;
    end;
    if (trim(DBGrid1.Fields[10].Text) = 'True') then begin
     messagedlg('ATENCION Esta Venta se encuentra ANULADA, imposible su Modificacion...',mtWarning,[mbok],0);
     cargadatos(1);
     PC1.Pages[1].Enabled:=false;
     PC1.Pages[2].Enabled:=false;
    end;
   end
   else begin
    c6.Checked:=false;
    PC1.Pages[1].Enabled:=true;
    PC1.Pages[2].Enabled:=true;
    cargadatos(1);
    coloca1(12);
    Coloca1(3);  //Precio
    if not (DataSetC.IsEmpty) then begin
     D14.DataField:='PrecioLista';
     D15.DataField:='PrecioLista';
     dc.DataField:='Detalle';
     SALDO.Text:=DPRECIO.Text;
     SALDO.Text:=DPRECIO.Text;
     IMPORTE.Text:=DPRECIO.Text;
    end;
    PC1.ActivePage:=PC1.Pages[1];
    preciop.SetFocus;

    /// aca controlo solo acciones disponibles para la venta
    //if (trim(d16.Text) = 'COSENZA HORACIO JAVIER') or (trim(d16.Text) = 'READ GUSTAVO ALBERTO')
    // or (trim(d16.Text) = 'APONTE MIGUEL') then begin
    // PC1.ActivePage:=PC1.Pages[1];
    // preciop.SetFocus;
    //end
    //else begin
    // messagedlg('Accion NO Habilitada para la Venta..' + chr(13)
    // + 'Tit. Mayoritario: ' + trim(d16.Text),mtWarning,[mbok],0);
    // PC1.ActivePage:=PC1.Pages[0];
    //end;
   end;
  end;

  {if nroopcion=2 then begin    //donacion
   if (trim(DBGrid1.Fields[11].Text) <> '') then begin
    if (trim(DBGrid1.Fields[14].Text) = 'True') then begin
     if (trim(DBGrid1.Fields[12].Text) = 'True') then begin
      messagedlg('ATENCION Esta DONACION ya se encuentra Confirmada, imposible su Modificacion...',mtWarning,[mbok],0);
      PC1.Pages[1].Enabled:=false;
      PC1.Pages[2].Enabled:=false;
     end
     else begin
      PC1.Pages[1].Enabled:=true;
      PC1.Pages[2].Enabled:=true;
      c6.Checked:=true;
      cargadatos(1);
      Coloca1(3);  //Precio
      if not (DataSetC.IsEmpty) then begin
      D14.DataField:='PrecioLista';
      D15.DataField:='PrecioLista';
      dc.DataField:='Detalle';
      SALDO.Text:=DPRECIO.Text;
      SALDO.Text:=DPRECIO.Text;
      IMPORTE.Text:=DPRECIO.Text;
      end;
      PC1.ActivePage:=PC1.Pages[1];
      if modulo2.nvl_usu <= 1  then  preciop.SetFocus
       else tpopago.SetFocus;
     end;
    end
    else begin
     messagedlgpos('Error!! Este Nro. de Accion no correponde a una DONACION',mtError,[mbok],0,screen.Width div 3,screen.Height div 3);
     PC1.ActivePage:=PC1.Pages[0];
     laaccion.SetFocus;
     c6.Checked:=false;
    end;
   end
   else begin
    PC1.Pages[1].Enabled:=true;
    PC1.Pages[2].Enabled:=true;
    c6.Checked:=true;
    cargadatos(1);
    Coloca1(3);  //Precio
    if not (DataSetC.IsEmpty) then begin
     D14.DataField:='PrecioLista';
     D15.DataField:='PrecioLista';
     dc.DataField:='Detalle';
     SALDO.Text:=DPRECIO.Text;
     SALDO.Text:=DPRECIO.Text;
     IMPORTE.Text:=DPRECIO.Text;
    end;
    PC1.ActivePage:=PC1.Pages[1];
    if modulo2.nvl_usu > 1  then  tpopago.SetFocus
     else preciop.SetFocus;
   end;
  end; }

  {if nroopcion=3 then begin   // transferencias
   if (trim(DBGrid1.Fields[11].Text) <> '')  then begin
    PC1.Pages[1].Enabled:=true;
    PC1.Pages[2].Enabled:=true;
    cargadatos(1);
    //if not(DataSetC.IsEmpty) then begin
    //end
    //else begin
    //end;
    PC1.ActivePage:=PC1.Pages[1];
    porcen.ItemIndex  :=2;
    porcen.SetFocus;
    c6.Checked:=true;
   end
   else begin
    PC1.Pages[1].Enabled:=true;
    PC1.Pages[2].Enabled:=true;
    cargadatos(1);
    if trim(edit13.Text)='96800004591' then coloca1(21)
     else Coloca1(3);
    if not (DataSetC.IsEmpty) then begin
     D14.DataField:='PrecioLista';
     D15.DataField:='PrecioLista';
     dc.DataField:='Detalle';
     SALDO.Text:=DPRECIO.Text;
     SALDO.Text:=DPRECIO.Text;
     IMPORTE.Text:=DPRECIO.Text;
     IMPORTEE.Text:='00000.00';
    end
    else begin
    ///
    end;
    PC1.ActivePage:=PC1.Pages[1];
    porcen.ItemIndex  :=2;
    porcen.SetFocus;
    c6.Checked:=true;
   end;
  end; }
 end;
end;

procedure TVen_ParcelaMayorista.BuscaClick(Sender: TObject);
var p,u:integer;
begin
 Coloca1(1);
 if (Datasource1.DataSet.RecordCount = 0) then begin
  Barra1.Panels[0].Text:='Sin Datos en Grilla';
  IF application.MessageBox('PARCELA NO encontrado, !Desea Buscar otra Parcela!?','Advertencia'
   ,mb_OKcancel+mb_IconHAnd) = IdOk then begin
   PC1.Enabled:=true;
   laaccion.SetFocus;
  end
  else begin
   PC1.Enabled:=true;
   Barra1.Panels[0].Text:='La opcion Busqueda fue Cancelada';
   BUSCA.SetFocus;
  end;
 end
 else begin
  Barra1.Panels[1].Text:='Registos encontrados: ' + inttostr(Datasource1.DataSet.RecordCount);
  dbgrid1.SetFocus;
 end;
end;

procedure TVen_ParcelaMayorista.JvBitBtn3Click(Sender: TObject);
begin
  GroupBox12.Visible :=FALSE;
end;

procedure TVen_ParcelaMayorista.bExportarClick(Sender: TObject);
var texto:widestring;
var txt:string;
var t,y:integer;
begin
 todos.Clear;
 texto:='';
 for t:=0 to DataSet.FieldCount-1 do begin
  texto:=texto + DataSet.Fields[t].FieldName + chr(9);
 end;
 todos.Lines.Add(texto);
 for y:=1 to DataSet.RecordCount do begin
  DataSet.RecNo:=y;
  texto:='';
  for t:=0 to DataSet.FieldCount-1 do begin
   texto:=texto + DataSet.Fields[t].AsString + chr(9);
  end;
  todos.Lines.Add(texto);
 end;
 todos.SelectAll;
 todos.CopyToClipboard;
 messagedlgpos('Se Copiaron los Datos, listo para pegarlos a Excel',mtwarning,[mbok],0,screen.Width div 3,screen.Height div 3);
end;

procedure TVen_ParcelaMayorista.ONOMBKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then busca.SetFocus;

end;

procedure TVen_ParcelaMayorista.IMPORTEEExit(Sender: TObject);
//var vSaldo:double;
//var Seleccion_Cuotas: TSeleccion_Cuotas;
begin
{ if (trim(ImporteE.text)='') or (trim(ImporteE.text)='0') then begin
  ImporteE.text:='00000.00';
  ImporteE.SetFocus;
 end
 else begin
  if tpopago.ItemIndex=0 then  begin
    SALDO.Text:=trim(DPRECIO.text);
  end;
  if tpopago.ItemIndex=1 then begin
   vSaldo:= strtofloat(DPRECIO.text) - strtofloat(IMPORTEE.text);
   SALDO.Text:=FloatToStr(vsaldo);
   IMPORTE.Text:=FloatToStr(vsaldo);
   Seleccion_Cuotas:= TSeleccion_Cuotas.create(self);
   try
    Seleccion_Cuotas.NroOpcion:=1;
    Seleccion_Cuotas.nromov:=1;
    Seleccion_Cuotas.niv:=modulo2.nvl_usu;
    Seleccion_Cuotas.entrega:=strtofloat(importee.Text);
    Seleccion_Cuotas.capital:=strtofloat(dprecio.Text);
    Seleccion_Cuotas.fecha:=strcut(fec_system(),10);
    Seleccion_Cuotas.ShowModal;
   finally
    edit2.Text:=Seleccion_Cuotas.Nrocta.Text;
    valcuota.Text:=strcut_midle(Seleccion_cuotas.ImpCta.Text,3,10);
    codigo.Text:=Seleccion_cuotas.Edit1.Text;
    Seleccion_Cuotas.destroy;
   end;
  end;
  if tpopago.ItemIndex=2 then  begin
    SALDO.Text:=trim(DPRECIO.text);
  end;
  if tpopago.ItemIndex=3 then  begin
    SALDO.Text:=trim(DPRECIO.text);
  end;
  fecha.SetFocus;
 end;  }
end;

procedure TVen_ParcelaMayorista.IMPORTEEKeyPress(Sender: TObject; var Key: Char);
begin
{ if key = #13 then begin
  if tpopago.itemindex = 0 then begin
   Key := #0;
   CODIGO.text:='CONTADO';
   edit2.Text:='0';
   fecha.setfocus;
   codigo.Enabled:=false;
  end
  else begin
   Key := #0;
   codigo.Enabled:=true;
   codigo.ItemIndex:=0;
   codigo.SetFocus;
   importee.Enabled:=true;
  end;
 end
 else begin
  if ( StrScan('0123456789.',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
  else Key := #0;
 end; }
end;

procedure TVen_ParcelaMayorista.FECHAKeyPress(Sender: TObject; var Key: Char);
var Seleccion_Cuotas: TSeleccion_Cuotas;
begin
if key = #13 then begin
 Key := #0;
 if tpopago.ItemIndex=4 then begin  // finaciado sin interes
  Seleccion_Cuotas:= TSeleccion_Cuotas.create(self);
  try
   Seleccion_Cuotas.NroOpcion:=3;
   Seleccion_Cuotas.nromov:=1;
   Seleccion_Cuotas.niv:=modulo2.nvl_usu;
   Seleccion_Cuotas.entrega:=strtofloat(preciop.Text);
   Seleccion_Cuotas.capital:=strtofloat(preciop.Text);
   Seleccion_Cuotas.fecha:=strcut(fec_system(),10);
   Seleccion_Cuotas.ShowModal;
  finally
   edit2.Text:=Seleccion_Cuotas.Nrocta.Text;
   valcuota.Text:=Seleccion_cuotas.ImpCta.Text;
   //valcuota.Text:=strcut_midle(Seleccion_cuotas.ImpCta.Text,3,10);
   totalfinanciado:=trim(Seleccion_Cuotas.totalfinan);
   //codigo.Text:=Seleccion_cuotas.Edit1.Text;
   Seleccion_Cuotas.destroy;
  end;
  dprecio.Text := totalfinanciado;
  d14.Text := totalfinanciado;
  d15.Text := totalfinanciado;
 end;
 if tpopago.ItemIndex=1 then begin  // finaciado
  Seleccion_Cuotas:= TSeleccion_Cuotas.create(self);
  try
   Seleccion_Cuotas.NroOpcion:=1;
   Seleccion_Cuotas.nromov:=1;
   Seleccion_Cuotas.niv:=modulo2.nvl_usu;
   Seleccion_Cuotas.entrega:=strtofloat(importee.Text);
   Seleccion_Cuotas.capital:=strtofloat(dprecio.Text);
   Seleccion_Cuotas.fecha:=strcut(fec_system(),10);
   Seleccion_Cuotas.ShowModal;
  finally
   edit2.Text:=Seleccion_Cuotas.Nrocta.Text;
   valcuota.Text:=Seleccion_cuotas.ImpCta.Text;
   //valcuota.Text:=strcut_midle(Seleccion_cuotas.ImpCta.Text,3,10);
   //codigo.Text:=Seleccion_cuotas.Edit1.Text;
   totalfinanciado:=trim(Seleccion_Cuotas.totalfinan);
   Seleccion_Cuotas.destroy;
  end;
  dprecio.Text := totalfinanciado;
  d14.Text := totalfinanciado;
  d15.Text := totalfinanciado;
  saldo.Text := totalfinanciado;
 end;
 if tpopago.ItemIndex=3 then begin  // tarjeta
  Seleccion_Cuotas:= TSeleccion_Cuotas.create(self);
  try
   Seleccion_Cuotas.NroOpcion:=4;
   Seleccion_Cuotas.nromov:=1;
   Seleccion_Cuotas.niv:=modulo2.nvl_usu;
   Seleccion_Cuotas.entrega:=strtofloat(dprecio.Text);
   Seleccion_Cuotas.capital:=strtofloat(dprecio.Text);
   Seleccion_Cuotas.fecha:=strcut(fec_system(),10);
   Seleccion_Cuotas.ShowModal;
  finally
   edit2.Text:=Seleccion_Cuotas.Nrocta.Text;
   nrocuota.Text:=Seleccion_Cuotas.Nrocta.Text;
   valcuota.Text:=Seleccion_cuotas.ImpCta.Text;
   //valcuota.Text:=strcut_midle(Seleccion_cuotas.ImpCta.Text,3,10);
   //codigo.Text:=Seleccion_cuotas.Edit1.Text;
   totalfinanciado:=trim(Seleccion_Cuotas.totalfinan);
   Seleccion_Cuotas.destroy;
  end;
  dprecio.Text := totalfinanciado;
  d14.Text := totalfinanciado;
  d15.Text := totalfinanciado;
  saldo.Text := totalfinanciado;
 end;
  if trim(codigo.Text)='FINANCIADO SIN INTERES' then begin
   coloca1(5);
   tipopago:=7;
  end;
  if (trim(codigo.Text)='CONTADO') then  begin
   edit2.Text :='1';
   coloca1(14);
   tipopago:=2;
  end;
  IF (trim(codigo.Text)='CUENTA CORRIENTE') then  begin
   edit2.Text :='1';
   coloca1(14);
   tipopago:=2;
  end;
  if (trim(codigo.Text)='TRANSFERENCIAS') or (trim(codigo.Text)='DONACION')  then  begin
   coloca1(14);
   tipopago:=2;
  end;
  if trim(codigo.Text)='FINANCIADO' then begin
   coloca1(16);
   tipopago:=8;
  end;
  if trim(codigo.Text)='CHEQUE' then begin
   edit2.Text :='1';
   coloca1(14);
   tipopago:=4;
  end;
  if trim(codigo.Text)='TARJETA DE CREDITO' then begin
   coloca1(14);
   tipopago:=3;
  end;
 valcuota.SetFocus;
end;
end;

procedure TVen_ParcelaMayorista.FECHAExit(Sender: TObject);
var fec:Tdatetime;
begin
try
 fec:=strtodate(trim(FECHA.Text));
except
  messagedlgpos('La fecha es Erronea!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  FECHA.SetFocus;
end;
end;

procedure TVen_ParcelaMayorista.DPrecioKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  tpopago.SetFocus;
 end
 else begin
  if ( StrScan('0123456789.',Key) <> nil ) or  ( Key = Char(VK_BACK) ) then
  else Key := #0;
 end;
end;

procedure TVen_ParcelaMayorista.DPrecioExit(Sender: TObject);
begin
 if trim(DPrecio.text)=''  then begin
  messagedlg('EL Valor Ingresado No es Válido',mterror,[mbok],0);
  DPrecio.SetFocus;
 end;
end;

procedure TVen_ParcelaMayorista.bGuardarClick(Sender: TObject);
var el_dni,ElId,eltipo,idvta,elcheque,dato,eldet:string;
var ac,ct,pt,b,bt,alta:boolean;
var gf,t,p,estat,estac:integer;
var txtw,txt:widestring;

  Procedure mostrando(cadena:string);
  begin
    Dialogo.MessageFont.Size:=15;
    Dialogo.MessageFont.Color:=clRed;
    Dialogo.CaptionTitle:='DATOS DE LA VENTA';
    Dialogo.ShowMessage(cadena);
  end;

begin
 eldet:='';
 ParcelasVentasDetalle:=TParcelasVentasDetalle.Create(nil);
 ParcelasVentasDetalle.ConnectionString:=modulo2.Conexion;
 if NroOpcion = 2 then begin   //cesion gratuita
  eltipo:='CESION DE PARCELA ';
  DataGer.Free;
  DataGer:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT count(*) FROM ParcelasVentas where (NroAccion = '+  trim(odni.Text)+')';
  if not Funciones.Listar(txtw,DataGer) then messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  estac:=strtoint(DataGer.Fields[0].AsString);
  if estac = 0 then begin
   ParcelasVentas:=TParcelasVentas.Create(nil);
   ParcelasVentas.ConnectionString:=modulo2.Conexion;
   gf:=messagedlgpos('Desea Agregar los Datos de esta CESION?',mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
   if gf = 1 then begin
    ParcelasVentas.C_NroAccion_IX1:=StrToInt(d1.Text);
    ParcelasVentas.C_CuentaCliente_IX2:=null;
    ParcelasVentas.C_NroTipo:=1;
    ParcelasVentas.C_IdFormaPago:=trim(IdCombos[3,codigo.ItemIndex]);
    ParcelasVentas.C_Fecha_IX3:=trim(fecha.Text);
    ParcelasVentas.C_PrecioReal:=StrToFloat(D14.Text);
    ParcelasVentas.C_PorcentajeDescuento:=(interes.Text);
    ParcelasVentas.C_MontoDescuento:=0;
    ParcelasVentas.C_MontoPagado:=StrToFloat(IMPORTEE.Text);
    ParcelasVentas.C_DeudaPendiente:=StrToFloat(SALDO.Text);
    ParcelasVentas.C_Donacion:=true;
    ParcelasVentas.C_Financiado:=false;
    ParcelasVentas.C_CantCuotas:=StrToInt(edit2.Text);
    ParcelasVentas.C_ValorCuota:=StrToFloat(VALCUOTA.Text);
    ParcelasVentas.C_ComisionVenta:=0;
    ParcelasVentas.C_CuifVendedor_IX4:=null;
    ParcelasVentas.C_Observaciones:=trim(OBSERV.text);
    PArcelasVentas.C_Confirmado:=false;
    PArcelasVentas.C_FechaConfirma_IX5:='';
    ParcelasVentas.C_UsuConfirma:=null;
    ParcelasVentas.C_Anulado:=false;
    PArcelasVentas.C_FechaAnula_IX6:='';
    PArcelasVEntas.C_UsuAnula:=null;
    ParcelasVentas.C_MotivoAnula:='';
    ParcelasVentas.C_Usu_A:=modulo2.nro_usu;
    ParcelasVentas.C_IdCuentaPar:=null;
    PArcelasVentas.C_ConError:=false;
    ParcelasVentas.C_IdFormaPago:=tipopago;
    parcelasventas.C_TipoFormaPago:=trim(codigo.Text);
    PArcelasVentas.C_NroRecibo:=trim(recibonro.Text);
    ParcelasVentas.C_PrecioContado:=trim(preciop.Text);
    ParcelasVEntas.C_PrecioFinanciado:=trim(dprecio.Text);
    ac:=ParcelasVentas.Agrega;
    ElId:=ParcelasVentas.Identidad;
    ParcelasVentas.Free;
    if ac then begin
     for t:=1 to Grilla5.RowCount-1 do begin
      ParcelasVentasDeudas:=TParcelasVentasDeudas.Create(nil);
      ParcelasVentasDeudas.ConnectionString:=modulo2.Conexion;
      PArcelasVentasDeudas.C_IdVenta_IX2:=strtoint(ElId);
      ParcelasVentasDeudas.C_CuentaCliente_IX1:=null;
      ParcelasVentasDeudas.C_NroAccion:=strtoint(D1.Text);
      ParcelasVentasDeudas.C_NroCuota:=strtoint(trim(Grilla5.Cells[0,t]));
      ParcelasVentasDeudas.C_Periodo_IX3:=strtoint(Grilla5.Cells[1,t]);
      ParcelasVentasDeudas.C_FechaVencimiento_IX4:=trim(Grilla5.Cells[2,t]);
      ParcelasVentasDeudas.C_Monto:=StrtoFloat(trim(Grilla5.Cells[5,t]));
      ParcelasVentasDeudas.C_Interes:=StrtoFloat(trim(Grilla5.Cells[4,t]));
      ParcelasVentasDeudas.C_Capital:=StrtoFloat(trim(Grilla5.Cells[3,t]));
      parcelasventasdeudas.C_DetalleCuota:=trim(Grilla5.Cells[6,p]);
      ParcelasVentasDeudas.C_EnMovimientos:=False;
      ParcelasVentasDeudas.C_DetalleCuota:='';
      ParcelasVentasDeudas.C_BloqueoMonto:=False;
      ParcelasVentasDeudas.C_Usu_A:=(modulo2.nro_usu);
      b:=ParcelasVentasDeudas.Agrega;
      ParcelasVentasDeudas.Free;
     end;
     coloca1(9);  ///inserto los titulares nuevos de las parcelas
     mostrando('El IdCesion es: ' + ElId + ' - Nro Accion: ' + trim(odni.Text)+ chr(13) + 'Pertenece a la Caja Nº:' + trim(d20.Text));
     rvd.Execute;
     AuditAccesos('Modulo 2','CESION DE PARCELA: ' + trim(odni.Text)+ chr(13) + 'Usuario '+ inttostr(modulo2.nro_usu));
     ParcelasMovimientosDiarrioDetalle:=TParcelasMovimientosDiarrioDetalle.Create(nil);
     ParcelasMovimientosDiarrioDetalle.ConnectionString:=modulo2.Conexion;
     eldet := 'Accion: ' + trim(d1.Text) + ' Sector: ' + trim(d3.Text) + ' Parcela:' + trim(d5.Text);
     txt:=  ElId
     + ' , null '
	   + ' , null '
	   + ' , null '
     + ' , ' + chr(39) + strcut(Fec_System(),10) + chr(39)
     + ' , ' + trim(d1.Text)
     + ' , ' + trim(saldo.Text)
     + ' , ' + chr(39) + trim(tpopago.Text) + chr(39)
     + ' , ' + trim(edit2.Text)
     + ' , ' + trim(valcuota.Text)
     + ' , ' + chr(39) + trim(observ.Text) +  ' ' + eldet + chr(39);
     if (trim(tpopago.Text)= 'CONTADO') or (trim(tpopago.Text)= 'DONACION')
      or (trim(tpopago.Text)= 'TRANSFERENCIAS') OR (trim(tpopago.Text)= 'CUENTA CORRIENTE')  then begin
      txt := txt + ' , null , null , null , null , null  , ' + inttostr(modulo2.nro_usu)
      + ' , ' + chr(39) + eltipo + chr(39);
     end;
     if trim(tpopago.Text)= 'CHEQUE' then begin  // cheque
      elcheque := trim(e1.Text) + '-' + trim(e2.Text) ;
      txt := txt
      + ' , ' + chr(39) + trim(banco.Text) + chr(39)
      + ' , ' + chr(39) + trim(titcheq.Text) + chr(39)
      + ' , null '
      + ' , null '
      + ' , ' + chr(39) + elcheque + chr(39)
      + ' , ' + inttostr(modulo2.nro_usu)
      + ' , ' + chr(39) + eltipo + chr(39);
     end;
     if trim(tpopago.Text)= 'TARJETA CREDITO' then begin  // tarje credito debito
      txt := txt
      + ' , ' + chr(39) + trim(tarjeta.Text) + chr(39)
      + ' , ' + chr(39) + trim(tittarje.Text) + chr(39)
      + ' , ' + trim(nrocuota.Text)
      + ' , ' + trim(nrocb.Text)
      + ' , null '
      + ' , ' + inttostr(modulo2.nro_usu)
      + ' , ' + chr(39) + eltipo + chr(39);
     end;
     if (trim(tpopago.Text)= 'FINANCIADO') or (trim(tpopago.Text)='FINANCIADO SIN INTERES') then begin
      txt := txt + ' , null , null , null , null , null  , ' + inttostr(modulo2.nro_usu)
      + ' , ' + chr(39) + eltipo + chr(39);
     end;
     txtw:='INSERT INTO ParcelasMovimientosDiarrioDetalle (IdVenta,IdServicio,IdExhumacion,IdCremacion,Fecha,NroAccion,'
     +'Importe,FormaPago,NroCuotas,ValorCouta,Observaciones,Tarjeta,TarjetaTitular,TarjetaNroCuotas,TarjetaComprobante,' +
     'SerieCheque,Usu_A,TipoVenta) VALUES (' +  txt + ')';
     pt:=ParcelasMovimientosDiarrioDetalle.ListarSinResp(txtw);
     ParcelasMovimientosDiarrioDetalle.Free;
     borra.Click;
    end
    else begin
      messagedlg('Error al Guardar esta TRANSFERENCIA. Consulte con un Administrador',mtError,[mbok],0);
    end;
   end;
  end
  else begin
   coloca1(20);
   coloca1(9);
  end;
 end;

 if NroOpcion = 3 then begin  /// transferencias
  eltipo:='TRANSF. DE PARCELA ';
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  DataVenta.Free;
  DataVenta:=TClientdataSet.Create(nil);
  txtw:='SELECT idventa FROM ParcelasVentas where (NroAccion = '+  trim(odni.Text)+')';
  if not Funciones.Listar(txtw,DataVenta) then messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  idvta:=trim(DataVenta.Fields[0].AsString);
  DataGer.Free;
  DataGer:=TClientdataSet.Create(nil);
  txtw:='SELECT count(*) FROM ParcelasVentas where (NroAccion = '+  trim(odni.Text)+')';
  if not Funciones.Listar(txtw,DataGer) then messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  estat:=strtoint(DataGer.Fields[0].AsString);
  if estat = 0 then begin
   ParcelasVentas:=TParcelasVentas.Create(nil);
   ParcelasVentas.ConnectionString:=modulo2.Conexion;
   gf:=messagedlgpos('Desea Agregar los Datos de esta TRANSFERENCIA?',mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
   if gf = 1 then begin
    ParcelasVentas.C_NroAccion_IX1:=StrToInt(d1.Text);
    ParcelasVentas.C_CuentaCliente_IX2:=null;
    ParcelasVentas.C_NroTipo:=1;
    ParcelasVentas.C_IdFormaPago:=trim(IdCombos[3,codigo.ItemIndex]);
    ParcelasVentas.C_Fecha_IX3:=trim(fecha.Text);
    ParcelasVentas.C_PrecioReal:=StrToFloat(valcuota.Text); //StrToFloat(D14.Text);
    ParcelasVentas.C_PorcentajeDescuento:=0;
    ParcelasVentas.C_MontoDescuento:=0;
    ParcelasVentas.C_MontoPagado:=StrToFloat(IMPORTEE.Text);
    ParcelasVentas.C_DeudaPendiente:=StrToFloat(SALDO.Text);
    ParcelasVentas.C_Donacion:=false;
    ParcelasVentas.C_Financiado:=false;
    ParcelasVentas.C_CantCuotas:=StrToInt(edit2.Text);
    ParcelasVentas.C_ValorCuota:=StrToFloat(VALCUOTA.Text);
    ParcelasVentas.C_ComisionVenta:=0;
    ParcelasVentas.C_CuifVendedor_IX4:=null;
    ParcelasVentas.C_Observaciones:=trim(OBSERV.text);
    PArcelasVentas.C_Confirmado:=false;
    PArcelasVentas.C_FechaConfirma_IX5:='';
    ParcelasVentas.C_UsuConfirma:=null;
    ParcelasVentas.C_Anulado:=false;
    PArcelasVentas.C_FechaAnula_IX6:='';
    PArcelasVEntas.C_UsuAnula:=null;
    ParcelasVentas.C_MotivoAnula:='';
    ParcelasVentas.C_Usu_A:=modulo2.nro_usu;
    ParcelasVentas.C_IdCuentaPar:=null;
    PArcelasVentas.C_ConError:=false;
    ParcelasVentas.C_IdFormaPago:=tipopago;
    parcelasventas.C_TipoFormaPago:=trim(codigo.Text);
    PArcelasVentas.C_NroRecibo:=trim(recibonro.Text);
    ParcelasVentas.C_PrecioContado:=trim(preciop.Text);
    ParcelasVEntas.C_PrecioFinanciado:=trim(dprecio.Text);
    ac:=ParcelasVentas.Agrega;
    ElId:=ParcelasVentas.Identidad;
    ParcelasVentas.Free;
    if ac then begin
     for t:=1 to Grilla5.RowCount-1 do begin
      ParcelasVentasDeudas:=TParcelasVentasDeudas.Create(nil);
      ParcelasVentasDeudas.ConnectionString:=modulo2.Conexion;
      PArcelasVentasDeudas.C_IdVenta_IX2:=strtoint(ElId);
      ParcelasVentasDeudas.C_CuentaCliente_IX1:=null;
      ParcelasVentasDeudas.C_NroAccion:=strtoint(D1.Text);
      ParcelasVentasDeudas.C_NroCuota:=strtoint(trim(Grilla5.Cells[0,t]));
      ParcelasVentasDeudas.C_Periodo_IX3:=strtoint(Grilla5.Cells[1,t]);
      ParcelasVentasDeudas.C_FechaVencimiento_IX4:=trim(Grilla5.Cells[2,t]);
      ParcelasVentasDeudas.C_Monto:=StrtoFloat(trim(Grilla5.Cells[5,t]));
      ParcelasVentasDeudas.C_Interes:=StrtoFloat(trim(Grilla5.Cells[4,t]));
      ParcelasVentasDeudas.C_Capital:=StrtoFloat(trim(Grilla5.Cells[3,t]));
      parcelasventasdeudas.C_DetalleCuota:=trim(Grilla5.Cells[6,p]);
      ParcelasVentasDeudas.C_EnMovimientos:=False;
      ParcelasVentasDeudas.C_DetalleCuota:='';
      ParcelasVentasDeudas.C_BloqueoMonto:=False;
      ParcelasVentasDeudas.C_Usu_A:=(modulo2.nro_usu);
      b:=ParcelasVentasDeudas.Agrega;
      ParcelasVentasDeudas.Free;
     end;
     coloca1(9);  ///inserto los titulares nuevos de las parcelas
     mostrando('El IdTransferencia es: ' + ElId + ' - Nro Accion: ' + trim(odni.Text) + chr(13)  + 'Pertenece a la Caja Nº:' + trim(d20.Text));
     rvd.Execute;
     AuditAccesos('Modulo 2','TRANSF. DE PARCELA: ' + trim(odni.Text)+ chr(13) + 'Usuario '+ inttostr(modulo2.nro_usu));
     ParcelasMovimientosDiarrioDetalle:=TParcelasMovimientosDiarrioDetalle.Create(nil);
     ParcelasMovimientosDiarrioDetalle.ConnectionString:=modulo2.Conexion;
     if idvta = '' then txt:= 'null'
      else  txt:= idvta;
     eldet := 'Accion: ' + trim(d1.Text) + ' Sector: ' + trim(d3.Text) + ' Parcela:' + trim(d5.Text);
     txt:=txt
     +  ' , null '
	   + ' , null '
	   + ' , null '
     + ' , ' + chr(39) + strcut(Fec_System(),10) + chr(39)
     + ' , ' + trim(d1.Text)
     + ' , ' + trim(saldo.Text)
     + ' , ' + chr(39) + trim(tpopago.Text) + chr(39)
     + ' , ' + trim(edit2.Text)
     + ' , ' + trim(valcuota.Text)
     + ' , ' + chr(39) + trim(observ.Text) + ' ' + eldet +  chr(39);
     if (trim(tpopago.Text)= 'CONTADO') or (trim(tpopago.Text)= 'DONACION')
      or (trim(tpopago.Text)= 'TRANSFERENCIAS') OR (trim(tpopago.Text)= 'CUENTA CORRIENTE') then begin
      txt := txt + ' , null , null , null , null , null  , ' + inttostr(modulo2.nro_usu)
      + ' , ' + chr(39) + eltipo + chr(39);
     end;
     if trim(tpopago.Text)= 'CHEQUE' then begin  // cheque
      elcheque:=trim(e1.Text) + '-' + trim(e2.Text) ;
      txt := txt
      + ' , ' + chr(39) + trim(banco.Text) + chr(39)
      + ' , ' + chr(39) + trim(titcheq.Text) + chr(39)
      + ' , null '
      + ' , null '
      + ' , ' + chr(39) + elcheque + chr(39)
      + ' , ' + inttostr(modulo2.nro_usu)
      + ' , ' + chr(39) + eltipo + chr(39);
     end;
     if trim(tpopago.Text)= 'TARJETA CREDITO' then begin  // tarje credito debito
      txt := txt
      + ' , ' + chr(39) + trim(tarjeta.Text) + chr(39)
      + ' , ' + chr(39) + trim(tittarje.Text) + chr(39)
      + ' , ' + trim(nrocuota.Text)
      + ' , ' + trim(nrocb.Text)
      + ' , null '
      + ' , ' + inttostr(modulo2.nro_usu)
      + ' , ' + chr(39) + eltipo + chr(39);
     end;
     if (trim(tpopago.Text)= 'FINANCIADO') or (trim(tpopago.Text)='FINANCIADO SIN INTERES') then begin  // tarje credito debito
      txt := txt + ' , null , null , null , null , null  , ' + inttostr(modulo2.nro_usu)
      + ' , ' + chr(39) + eltipo + chr(39);
     end;
     txtw:='INSERT INTO ParcelasMovimientosDiarrioDetalle (IdVenta,IdServicio,IdExhumacion,IdCremacion,Fecha,NroAccion,'
     +'Importe,FormaPago,NroCuotas,ValorCouta,Observaciones,Tarjeta,TarjetaTitular,TarjetaNroCuotas,TarjetaComprobante,' +
     'SerieCheque,Usu_A,TipoVenta) VALUES (' +  txt + ')';
     pt:=ParcelasMovimientosDiarrioDetalle.ListarSinResp(txtw);
     ParcelasMovimientosDiarrioDetalle.Free;

     dato:='Transf. de Titulares Nuevo Titular ' +trim(GrillaT.Cells[2,1]) + ' Titular Anterior: ' + trim(d16.Text);
     ParcelasNovedades:=TParcelasNovedades.Create(nil);
     ParcelasNovedades.ConnectionString:=modulo2.Conexion;
     txtw:='INSERT INTO ParcelasNovedades (Nroaccion,Novedad,Resuelto,Prioridad) VALUES ('
     + trim(d1.text) + ' , ' + chr(39) + dato + chr(39)  + ' , 0 , 1)';
     alta:=ParcelasNovedades.ListarSinResp(txtw);
     ParcelasNovedades.Free;
     borra.Click;
     //BGUARDAR.Enabled :=FALSE;
    end
    else begin
      messagedlg('Error al Guardar esta TRANSFERENCIA. Consulte con un Administrador',mtError,[mbok],0);
    end;
   end;
  end
  else begin
   coloca1(20);
   coloca1(9);
   AuditAccesos('Modulo 2','TRANSF. DE PARCELA: ' + trim(odni.Text)+ chr(13));
   /// obtengo el iddeventa para la transferencia
   ParcelasMovimientosDiarrioDetalle:=TParcelasMovimientosDiarrioDetalle.Create(nil);
   ParcelasMovimientosDiarrioDetalle.ConnectionString:=modulo2.Conexion;
   if idvta = '' then txt:= 'null'
      else  txt:= idvta;
   eldet := 'Accion: ' + trim(d1.Text) + ' Sector: ' + trim(d3.Text) + ' Parcela:' + trim(d5.Text);
   txt:=txt
   + ' , null '
   + ' , null '
	 + ' , null '
   + ' , ' + chr(39) + strcut(Fec_System(),10) + chr(39)
   + ' , ' + trim(d1.Text)
   + ' , ' + trim(saldo.Text)
   + ' , ' + chr(39) + trim(tpopago.Text) + chr(39)
   + ' , ' + trim(edit2.Text)
   + ' , ' + trim(valcuota.Text)
   + ' , ' + chr(39) + trim(observ.Text) + ' ' + eldet + chr(39);
   if (trim(tpopago.Text)= 'CONTADO') or (trim(tpopago.Text)= 'DONACION')
    or (trim(tpopago.Text)= 'TRANSFERENCIAS') OR (trim(tpopago.Text)= 'CUENTA CORRIENTE') then begin
    txt := txt + ' , null , null , null , null , null  , ' + inttostr(modulo2.nro_usu)
    + ' , ' + chr(39) + eltipo + chr(39);
   end;
   if trim(tpopago.Text)= 'CHEQUE' then begin  // cheque
    elcheque:=trim(e1.Text) + '-' + trim(e2.Text) ;
    txt := txt
    + ' , ' + chr(39) + trim(banco.Text) + chr(39)
    + ' , ' + chr(39) + trim(titcheq.Text) + chr(39)
    + ' , null '
    + ' , null '
    + ' , ' + chr(39) + elcheque + chr(39)
    + ' , ' + inttostr(modulo2.nro_usu)
    + ' , ' + chr(39) + eltipo + chr(39);
   end;
   if trim(tpopago.Text)= 'TARJETA CREDITO' then begin  // tarje credito debito
    txt := txt
    + ' , ' + chr(39) + trim(tarjeta.Text) + chr(39)
    + ' , ' + chr(39) + trim(tittarje.Text) + chr(39)
    + ' , ' + trim(nrocuota.Text)
    + ' , ' + trim(nrocb.Text)
    + ' , null '
    + ' , ' + inttostr(modulo2.nro_usu)
    + ' , ' + chr(39) + eltipo + chr(39);
   end;
    if (trim(tpopago.Text)= 'FINANCIADO') or (trim(tpopago.Text)='FINANCIADO SIN INTERES') then begin  // tarje credito debito
    txt := txt + ' , null , null , null , null , null  , ' + inttostr(modulo2.nro_usu)
    + ' , ' + chr(39) + eltipo + chr(39);
   end;
   txtw:='INSERT INTO ParcelasMovimientosDiarrioDetalle (IdVenta,IdServicio,IdExhumacion,IdCremacion,Fecha,NroAccion,'
   +'Importe,FormaPago,NroCuotas,ValorCouta,Observaciones,Tarjeta,TarjetaTitular,TarjetaNroCuotas,TarjetaComprobante,' +
   'SerieCheque,Usu_A,TipoVenta) VALUES (' +  txt + ')';
   pt:=ParcelasMovimientosDiarrioDetalle.ListarSinResp(txtw);
   ParcelasMovimientosDiarrioDetalle.Free;

   dato:='Transf. de Titulares Nuevo Titular ' +trim(GrillaT.Cells[2,1]) + ' Titular Anterior: ' + trim(d16.Text);
   ParcelasNovedades:=TParcelasNovedades.Create(nil);
   ParcelasNovedades.ConnectionString:=modulo2.Conexion;
   txtw:='INSERT INTO ParcelasNovedades (Nroaccion,Novedad,Resuelto,Prioridad) VALUES ('
   + trim(d1.text) + ' , ' + chr(39) + dato + chr(39) + ' , 0 , 1)';
   alta:=ParcelasNovedades.ListarSinResp(txtw);
   AuditAccesos('Modulo 2','TRANSF PARCELA TITULO: ' + trim(d1.Text) + ' Usuario '+ inttostr(modulo2.nro_usu)) ;
   ParcelasNovedades.Free;
  end;
 end;

 if NroOpcion = 1 then begin  /// ventas
  eltipo:='VENTA DE PARCELA ';
  if C6.Checked = false then begin
   controltitulares();
   ParcelasVentas:=TParcelasVentas.Create(nil);
   ParcelasVentas.ConnectionString:=modulo2.Conexion;
   if (trim(DBGrid1.Fields[11].Text) = '') then begin   //hacemos el insert de un nueva venta
    gf:=messagedlgpos('Desea Agregar los Datos de esta VENTA?',mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
    if gf = 1 then begin
     ParcelasVentas.C_NroAccion_IX1:=StrToInt(D1.Text);
     ParcelasVentas.C_CuentaCliente_IX2:=null;
     ParcelasVentas.C_NroTipo:=1;
     ParcelasVentas.C_IdFormaPago:=trim(IdCombos[3,codigo.ItemIndex]);
     ParcelasVentas.C_Fecha_IX3:=trim(fecha.Text);
     ParcelasVentas.C_PrecioReal:=StrToFloat(D14.Text);
     ParcelasVentas.C_PorcentajeDescuento:=(interes.Text);
     ParcelasVentas.C_MontoDescuento:=0;
     ParcelasVentas.C_MontoPagado:=StrToFloat(IMPORTEE.Text);
     ParcelasVentas.C_DeudaPendiente:=StrToFloat(SALDO.Text);
     if coninhu.Checked then ParcelasVentas.C_ConInhu:=True
      else ParcelasVentas.C_ConInhu:=false;
     if nroopcion=1 then begin  // ventas - contado o financiado
      ParcelasVentas.C_Donacion:=false;
      if tpopago.ItemIndex=0 then ParcelasVentas.C_Financiado:=false
       else ParcelasVentas.C_Financiado:=True;
     end;
     ParcelasVentas.C_CantCuotas:=StrToInt(edit2.Text);
     ParcelasVentas.C_ValorCuota:=StrToFloat(VALCUOTA.Text);
     ParcelasVentas.C_ComisionVenta:=0;
     ParcelasVentas.C_CuifVendedor_IX4:=null;
     ParcelasVentas.C_Observaciones:=trim(OBSERV.text);
     PArcelasVentas.C_Confirmado:=false;
     PArcelasVentas.C_FechaConfirma_IX5:='';
     ParcelasVentas.C_UsuConfirma:=null;
     ParcelasVentas.C_Anulado:=false;
     PArcelasVentas.C_FechaAnula_IX6:='';
     PArcelasVEntas.C_UsuAnula:=null;
     ParcelasVentas.C_MotivoAnula:='';
     ParcelasVentas.C_Usu_A:=modulo2.nro_usu;
     ParcelasVentas.C_IdCuentaPar:=null;
     PArcelasVentas.C_ConError:=false;
     ParcelasVentas.C_IdFormaPago:=tipopago;
     parcelasventas.C_TipoFormaPago:=trim(codigo.Text);
     PArcelasVentas.C_NroRecibo:=trim(recibonro.Text);
     ParcelasVentas.C_PrecioContado:=trim(preciop.Text);
     ParcelasVEntas.C_PrecioFinanciado:=trim(dprecio.Text);
     if trim(codigo.Text)='CHEQUE' then begin
      parcelasventas.C_NroEntidad:=strtoint(IdCombos[4,banco.ItemIndex]);
      parcelasventas.C_Titular:=trim(titcheq.Text);
      parcelasventas.C_Serie:=trim(e1.Text);
      parcelasventas.C_NroCheque:=trim(e2.Text);
      parcelasventas.C_Fecha1:=trim(fcheque.Text);
      parcelasventas.C_FechaCobro:=trim(fpagocheque.Text);
      parcelasventas.C_Importe:=Trim(E5.Text);
     end;
     if trim(codigo.Text)='TARJETA DE CREDITO' then begin
      parcelasventas.C_NroTarjeta:=strtoint(IdCombos[2,tarjeta.ItemIndex]);
      parcelasventas.C_Titular:=trim(tittarje.Text);
      parcelasventas.C_NroCuotas:=strtoint(nrocuota.Text);
      parcelasventas.C_NroComprobante:=trim(nrocb.text);
      parcelasventas.C_Fecha1:=trim(ftarje.Text);
      parcelasventas.C_Importe:=Trim(edit3.Text);
     end;
     ac:=ParcelasVentas.Agrega;
     ElId:=ParcelasVentas.Identidad;
     ParcelasVentas.Free;
     if ac then begin
      for t:=1 to Grilla5.RowCount-1 do begin
       ParcelasVentasDeudas:=TParcelasVentasDeudas.Create(nil);
       ParcelasVentasDeudas.ConnectionString:=modulo2.Conexion;
       PArcelasVentasDeudas.C_IdVenta_IX2:=strtoint(ElId);
       ParcelasVentasDeudas.C_CuentaCliente_IX1:=null;
       ParcelasVentasDeudas.C_NroAccion:=strtoint(D1.Text);
       ParcelasVentasDeudas.C_NroCuota:=strtoint(trim(Grilla5.Cells[0,t]));
       ParcelasVentasDeudas.C_Periodo_IX3:=strtoint(Grilla5.Cells[1,t]);
       ParcelasVentasDeudas.C_FechaVencimiento_IX4:=trim(Grilla5.Cells[2,t]);
       ParcelasVentasDeudas.C_Monto:=StrtoFloat(trim(Grilla5.Cells[5,t]));
       ParcelasVentasDeudas.C_Interes:=StrtoFloat(trim(Grilla5.Cells[4,t]));
       ParcelasVentasDeudas.C_Capital:=StrtoFloat(trim(Grilla5.Cells[3,t]));
       parcelasventasdeudas.C_DetalleCuota:=trim(Grilla5.Cells[6,p]);
       ParcelasVentasDeudas.C_EnMovimientos:=False;
       ParcelasVentasDeudas.C_DetalleCuota:='';
       ParcelasVentasDeudas.C_BloqueoMonto:=False;
       ParcelasVentasDeudas.C_Usu_A:=(modulo2.nro_usu);
       b:=ParcelasVentasDeudas.Agrega;
       ParcelasVentasDeudas.Free;
      end;
      coloca1(9);  ///inserto los titulares nuevos de las parcelas
      rvd.Execute;
      mostrando('El IDVenta es: ' + ElId + ' - Nro Accion: ' + trim(odni.Text)+ chr(13) + 'Pertenece a la Caja Nº:' + trim(d20.Text));
      AuditAccesos('Modulo 2','VENTA DE PARCELA: ' + trim(odni.Text)+ chr(13) + 'Usuario ' + inttostr(modulo2.nro_usu));
      ParcelasMovimientosDiarrioDetalle:=TParcelasMovimientosDiarrioDetalle.Create(nil);
      ParcelasMovimientosDiarrioDetalle.ConnectionString:=modulo2.Conexion;
      eldet := 'Accion: ' + trim(d1.Text) + ' Sector: ' + trim(d3.Text) + ' Parcela:' + trim(d5.Text);
      txt:=  ElId
      + ' , null '
   	  + ' , null '
	    + ' , null '
      + ' , ' + chr(39) + strcut(Fec_System(),10) + chr(39)
      + ' , ' + trim(d1.Text)
      + ' , ' + trim(saldo.Text)
      + ' , ' + chr(39) + trim(tpopago.Text) + chr(39)
      + ' , ' + trim(edit2.Text)
      + ' , ' + trim(valcuota.Text)
      + ' , ' + chr(39) + trim(observ.Text) + ' ' + eldet +  chr(39);
      if (trim(tpopago.Text)= 'CONTADO') or (trim(tpopago.Text)= 'DONACION')
       or (trim(tpopago.Text)= 'TRANSFERENCIAS') OR (trim(tpopago.Text)= 'CUENTA CORRIENTE') then begin
       txt := txt + ' , null , null , null , null , null  , ' + inttostr(modulo2.nro_usu)
       + ' , ' + chr(39) + eltipo + chr(39);
      end;
      if trim(tpopago.Text)= 'CHEQUE' then begin  // cheque
       elcheque:=trim(e1.Text) + '-' + trim(e2.Text) ;
       txt := txt
       + ' , ' + chr(39) + trim(banco.Text) + chr(39)
       + ' , ' + chr(39) + trim(titcheq.Text) + chr(39)
       + ' , null '
       + ' , null '
       + ' , ' + chr(39) + elcheque + chr(39)
       + ' , ' + inttostr(modulo2.nro_usu)
       + ' , ' + chr(39) + eltipo + chr(39);
      end;
      if trim(tpopago.Text)= 'TARJETA CREDITO' then begin  // tarje credito debito
       txt := txt
       + ' , ' + chr(39) + trim(tarjeta.Text) + chr(39)
       + ' , ' + chr(39) + trim(tittarje.Text) + chr(39)
       + ' , ' + trim(nrocuota.Text)
       + ' , ' + trim(nrocb.Text)
       + ' , null '
       + ' , ' + inttostr(modulo2.nro_usu)
       + ' , ' + chr(39) + eltipo + chr(39);
      end;
       if (trim(tpopago.Text)= 'FINANCIADO') or (trim(tpopago.Text)='FINANCIADO SIN INTERES') then begin  // tarje credito debito
       txt := txt + ' , null , null , null , null , null  , ' + inttostr(modulo2.nro_usu)
       + ' , ' + chr(39) + eltipo + chr(39);
      end;
      txtw:='INSERT INTO ParcelasMovimientosDiarrioDetalle (IdVenta,IdServicio,IdExhumacion,IdCremacion,Fecha,NroAccion,'
      +'Importe,FormaPago,NroCuotas,ValorCouta,Observaciones,Tarjeta,TarjetaTitular,TarjetaNroCuotas,TarjetaComprobante,' +
      'SerieCheque,Usu_A,TipoVenta) VALUES (' +  txt + ')';
      pt:=ParcelasMovimientosDiarrioDetalle.ListarSinResp(txtw);
      ParcelasMovimientosDiarrioDetalle.Free;
      borra.Click;
      //BGUARDAR.Enabled :=FALSE;
     end
     else begin
       messagedlg('Error al Guardar esta VENTA. Consulte con un Administrador',mtError,[mbok],0);
     end;
    end;
   end;
  end
  else begin  // aca hacemos las modificaciones
   ParcelasVentas:=TParcelasVentas.Create(nil);
   ParcelasVentas.ConnectionString:=modulo2.Conexion;
   gf:=messagedlgpos('Desea Modificar los Datos de esta VENTA?',mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
   if gf = 1 then begin
    parcelasventas.C_IdVenta_PK:=StrToInt(idventa.Text);
    ParcelasVentas.C_NroAccion_IX1:=StrToInt(D1.Text);
    ParcelasVentas.C_CuentaCliente_IX2:=null;
    ParcelasVentas.C_NroTipo:=1;
    ParcelasVentas.C_Fecha_IX3:=fecha.Text;
    ParcelasVentas.C_PrecioReal:=StrToFloat(D14.Text);
    ParcelasVentas.C_PorcentajeDescuento:=(interes.Text);
    ParcelasVentas.C_MontoDescuento:=0;
    ParcelasVentas.C_MontoPagado:=StrToFloat(IMPORTEE.Text);
    ParcelasVentas.C_DeudaPendiente:=StrToFloat(SALDO.Text);
    if nroopcion=1 then begin  // ventas - contado o financiado
     ParcelasVentas.C_Donacion:=false;
     if tpopago.ItemIndex=0 then ParcelasVentas.C_Financiado:=false
      else ParcelasVentas.C_Financiado:=True;
    end;
    {if nroopcion=2 then begin  // donacion
     ParcelasVentas.C_Donacion:=True;
     ParcelasVentas.C_Financiado:=false;
    end;
    if nroopcion=3 then begin  // transferencias
     ParcelasVentas.C_Donacion:=false;
     ParcelasVentas.C_Financiado:=false;
    end;  }
    ParcelasVentas.C_CantCuotas:=StrToInt(edit2.Text);
    ParcelasVentas.C_ValorCuota:=StrToFloat(VALCUOTA.Text);
    ParcelasVentas.C_ComisionVenta:=0;
    ParcelasVentas.C_CuifVendedor_IX4:=null;
    ParcelasVentas.C_Observaciones:=trim(OBSERV.text);
    PArcelasVentas.C_Confirmado:=false;
    PArcelasVentas.C_FechaConfirma_IX5:='';
    ParcelasVentas.C_UsuConfirma:=null;
    ParcelasVentas.C_Anulado:=false;
    PArcelasVentas.C_FechaAnula_IX6:='';
    PArcelasVEntas.C_UsuAnula:=null;
    ParcelasVentas.C_MotivoAnula:='';
    ParcelasVentas.C_Usu_A:=modulo2.nro_usu;
    ParcelasVentas.C_IdCuentaPar:=null;
    PArcelasVentas.C_ConError:=false;
    ac:=ParcelasVentas.Modificar;
    ParcelasVentas.Free;
    if ac then begin
     ParcelasVentasDeudas:=TParcelasVentasDeudas.Create(nil);
     ParcelasVentasDeudas.ConnectionString:=modulo2.Conexion;
     bt:=ParcelasVentasDeudas.Borrar(idventa.Text);
     ParcelasVentasDeudas.Free;
     if bt then  begin
      for t:=1 to Grilla5.RowCount-1 do begin
       ParcelasVentasDeudas:=TParcelasVentasDeudas.Create(nil);
       ParcelasVentasDeudas.ConnectionString:=modulo2.Conexion;
       PArcelasVentasDeudas.C_IdVenta_IX2:=strtoint(idventa.Text);
       ParcelasVentasDeudas.C_CuentaCliente_IX1:=null;
       ParcelasVentasDeudas.C_NroAccion:=strtoint(D1.Text);
       ParcelasVentasDeudas.C_NroCuota:=strtoint(trim(Grilla5.Cells[0,t]));
       ParcelasVentasDeudas.C_Periodo_IX3:=strtoint(Grilla5.Cells[1,t]);
       ParcelasVentasDeudas.C_FechaVencimiento_IX4:=trim(Grilla5.Cells[2,t]);
       ParcelasVentasDeudas.C_Monto:=StrtoFloat(trim(Grilla5.Cells[5,t]));
       ParcelasVentasDeudas.C_Interes:=StrtoFloat(trim(Grilla5.Cells[4,t]));
       ParcelasVentasDeudas.C_Capital:=StrtoFloat(trim(Grilla5.Cells[3,t]));
       parcelasventasdeudas.C_DetalleCuota:=trim(Grilla5.Cells[6,p]);
       ParcelasVentasDeudas.C_EnMovimientos:=False;
       ParcelasVentasDeudas.C_DetalleCuota:='';
       ParcelasVentasDeudas.C_BloqueoMonto:=False;
       ParcelasVentasDeudas.C_Usu_A:=(modulo2.nro_usu);
       b:=ParcelasVentasDeudas.Agrega;
       ParcelasVentasDeudas.Free;
      end;
      messagedlg('Se ha Modificado esta VENTA con Exito',mtConfirmation,[mbok],0);
      BGUARDAR.Enabled :=FALSE;
      coloca1(9);  ///inserto los titulares nuevos de las parcelas
     end
     else begin
      messagedlg('Error al Modificar esta VENTA. Consulte con un Administrador',mtError,[mbok],0);
     end;
    end
    else begin
     Barra1.SimpleText:='Error al Borrar el telefono del  Cliente';
    end;
   end;
  end;
 end;
 BGUARDAR.Enabled :=FALSE;
end;

procedure TVen_ParcelaMayorista.ImprimirActaClick(Sender: TObject);
var gf:integer;
begin
 gf:=messagedlgpos('Desea Imprimir la SOLICITUD DE ADQUISICION correspondiente?'
    ,mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
 if gf = 1 then begin
  Rvs.SystemPrinter.Copies :=2;
  NroOpc:=1;
  RvS.Execute;
 end;
end;

procedure TVen_ParcelaMayorista.ImprimeReglamentoClick(Sender: TObject);
var gf:integer;
begin
 gf:=messagedlgpos('Desea Imprimir el REGLAMENTO INTERNO?'
    ,mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
 if gf = 1 then begin
  GroupBox12.Visible :=TRUE;
  JvBitBtn1.SetFocus;
 end;
end;

procedure TVen_ParcelaMayorista.ImprimirCesionClick(Sender: TObject);
var gf:integer;
begin
 gf:=messagedlgpos('Desea Imprimir la CESION Y TRANSFERENCIA DE ACCIONES?'
    ,mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
 if gf = 1 then begin
  Rvs.SystemPrinter.Copies :=3;
  NroOpc:=2;
  RvS.Execute;
 end;
end;

procedure TVen_ParcelaMayorista.ImprimirClausularClick(Sender: TObject);
var gf:integer;
begin
 gf:=messagedlgpos('Desea Imprimir las CLAUSULAS PARTICULARES?'
    ,mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
 if gf = 1 then begin
  Rvs.SystemPrinter.Copies :=3;
  NroOpc:=3;
  RvS.Execute;
 end;
end;

procedure TVen_ParcelaMayorista.ImprimirGarantiaClick(Sender: TObject);
var gf:integer;
begin
gf:=messagedlgpos('Desea Imprimir la CONSTITUCION DE GARANTIA?'
    ,mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
 if gf = 1 then begin
  NroOpc:=4;
  RvS.Execute;
 end;
end;

procedure TVen_ParcelaMayorista.ImprimirCartaClick(Sender: TObject);
var gf:integer;
begin
 gf:=messagedlgpos('Desea Imprimir la CARTA DE CESION?'
    ,mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
 if gf = 1 then begin
   RvSCarta.Execute;
 end;
end;

procedure TVen_ParcelaMayorista.bSalirClick(Sender: TObject);
begin
 Close;
end;

Procedure TVen_ParcelaMayorista.SolicitudAdquisicion();
var posx,posy:double;
    t,hoja:integer;
    Imagen1:TBitmap;
    PathLogo:string;
    ElMes,ElAnio,ElDia,txt:string;
begin
 posx:=0;
 posy:=0;
 hoja:=1;
 with RvS do begin
  Imagen1 := TBitMap.Create;
  PathLogo:=modulo2.path_todo + '\Formularios\FRM-01-01.jpg';
  if FileExists(PathLogo) then begin
   Image1.Picture.LoadFromFile(PathLogo);
   Imagen1.Assign(Image1.Picture.Graphic);
   BaseReport.PrintBitmapRect(1,1,posx+215,posy+290,Imagen1);
  end;
  Imagen1.Free;
  ElMes:=el_mes(strtoint(strcut_midle(FECHA.Text,4,5)));
  ElAnio:=strcut_midle(FECHA.Text,7,10);
  ElDia:=LeftStr(FECHA.Text,2);
  BaseReport.SetFont('Arial Black',8);
  BaseReport.FontColor:=clRED;
  BaseReport.PrintXY(posx+143,posy+32,ElDia);
  BaseReport.PrintXY(posx+154,posy+32,ElMes);
  BaseReport.PrintXY(posx+195,posy+32,ElAnio);
  BaseReport.PrintXY(posx+37,posy+40,trim(grillaT.Cells[2,1]));//trim(DBEdit7.text));     //Nombre
  BaseReport.PrintXY(posx+159,posy+40,trim(grillat.cells[3,1]));//trim(DBEdit2.text));    //Tipo
  BaseReport.PrintXY(posx+180,posy+40,trim(grillat.cells[4,1]));//trim(DBEdit8.text));    //Nro Doc
  BaseReport.PrintXY(posx+38,posy+45,trim(grillat.cells[5,1]));//trim(DBEdit4.text));    //Domicilio
  BaseReport.PrintXY(posx+150,posy+45,trim(grillat.cells[12,1]));//trim(DBEdit1.text));   //Ciudad
  BaseReport.PrintXY(posx+113,posy+67,trim(D4.text));   //Plaza
  BaseReport.PrintXY(posx+174,posy+67,trim(D3.text));   //Sector
  BaseReport.PrintXY(posx+17,posy+72,trim(D5.text));    //Parcela
  BaseReport.PrintXY(posx+23,posy+78,'.');               //Zona
  BaseReport.PrintXY(posx+57,posy+78,trim(DC.text));     //Categoria
  BaseReport.PrintXY(posx+89,posy+78,'.');               //Calificada
  BaseReport.PrintXY(posx+114,posy+76,'.');              //Plan
  for t:=1 to GrillaT.RowCount-1 do begin
   if t=1 then begin //Titular Nivel 1
    BaseReport.PrintXY(posx+78,posy+88,TRIM(GrillaT.Cells[2,t]));    //Nombre
    BaseReport.PrintXY(posx+194,posy+88,TRIM(GrillaT.Cells[3,t]));   //Tipo
    BaseReport.PrintXY(posx+19,posy+93,TRIM(GrillaT.Cells[4,t]));    //Nro Doc
    BaseReport.PrintXY(posx+68,posy+93,TRIM(GrillaT.Cells[10,t]));    //Nacionalidad
    BaseReport.PrintXY(posx+132,posy+93,TRIM(GrillaT.Cells[11,t]));  //Estado Civil
    BaseReport.PrintXY(posx+175,posy+93,TRIM(GrillaT.Cells[9,t]));  //Fecha Nacimiento
    BaseReport.PrintXY(posx+28,posy+99,TRIM(GrillaT.Cells[5,t]));    //Domicilio
    BaseReport.PrintXY(posx+120,posy+99,TRIM(GrillaT.Cells[12,t]));  //Ciudad
    BaseReport.PrintXY(posx+167,posy+99,trim(grillat.cells[16,t]));//prov
    BaseReport.PrintXY(posx+30,posy+104,TRIM(GrillaT.Cells[13,t])); //:=ttelef;       //telefo
    BaseReport.PrintXY(posx+73,posy+104,TRIM(GrillaT.Cells[15,t]));  // celulcar
    BaseReport.PrintXY(posx+135,posy+104,TRIM(GrillaT.Cells[14,t]));  ///profesion
   end;
   if t=2 then begin //Titular Nivel 2
    BaseReport.PrintXY(posx+95,posy+110,TRIM(GrillaT.Cells[2,t]));    //Nombre
    BaseReport.PrintXY(posx+196,posy+110,TRIM(GrillaT.Cells[3,t]));   //Tipo
    BaseReport.PrintXY(posx+19,posy+115,TRIM(GrillaT.Cells[4,t]));    //Nro Doc
    BaseReport.PrintXY(posx+68,posy+115,TRIM(GrillaT.Cells[10,t]));    //Nacionalidad
    BaseReport.PrintXY(posx+132,posy+115,TRIM(GrillaT.Cells[11,t]));  //Estado Civil
    BaseReport.PrintXY(posx+175,posy+115,TRIM(GrillaT.Cells[9,t]));  //Fecha Nacimiento
    BaseReport.PrintXY(posx+28,posy+120,TRIM(GrillaT.Cells[5,t]));    //Domicilio
    BaseReport.PrintXY(posx+117,posy+120,TRIM(GrillaT.Cells[12,t]));  //Ciudad
    BaseReport.PrintXY(posx+167,posy+120,trim(grillat.cells[16,t]));//prov
    BaseReport.PrintXY(posx+30,posy+125,TRIM(GrillaT.Cells[13,t])); //:=ttelef;       //telefo
    BaseReport.PrintXY(posx+73,posy+125,TRIM(GrillaT.Cells[15,t]));  // celulcar
    BaseReport.PrintXY(posx+135,posy+125,TRIM(GrillaT.Cells[14,t]));  ///
   end;
   if t=3 then begin     //Titular Nivel 3
    BaseReport.PrintXY(posx+97,posy+131,TRIM(GrillaT.Cells[2,t]));    //Nombre
    BaseReport.PrintXY(posx+196,posy+131,TRIM(GrillaT.Cells[3,t]));   //Tipo
    BaseReport.PrintXY(posx+19,posy+136,TRIM(GrillaT.Cells[4,t]));    //Nro Doc
    BaseReport.PrintXY(posx+68,posy+136,TRIM(GrillaT.Cells[10,t]));    //Nacionalidad
    BaseReport.PrintXY(posx+132,posy+136,TRIM(GrillaT.Cells[11,t]));  //Estado Civil
    BaseReport.PrintXY(posx+175,posy+136,TRIM(GrillaT.Cells[9,t]));  //Fecha Nacimiento
    BaseReport.PrintXY(posx+28,posy+141,TRIM(GrillaT.Cells[5,t]));    //Domicilio
    BaseReport.PrintXY(posx+117,posy+141,TRIM(GrillaT.Cells[12,t]));  //Ciudad
    BaseReport.PrintXY(posx+167,posy+141,trim(grillat.cells[16,t]));//prov
    BaseReport.PrintXY(posx+30,posy+146,TRIM(GrillaT.Cells[13,t])); //:=ttelef;       //telefo
    BaseReport.PrintXY(posx+73,posy+146,TRIM(GrillaT.Cells[15,t]));  // celulcar
    BaseReport.PrintXY(posx+135,posy+146,TRIM(GrillaT.Cells[14,t]));  ///
   end;
  end;
  //Importe Venta
  //Anticipo
  if nroopcion=3 then begin
   BaseReport.PrintXY(posx+27,posy+157,NumToPesos(trim(d17.text))); //Precio Letras
   BaseReport.PrintXY(posx+159,posy+157,trim(d17.text));
   BaseReport.PrintXY(posx+27,posy+168,NumToPesos(trim(IMPORTEE.text))); //Precio Letras
   BaseReport.PrintXY(posx+159,posy+168,trim(IMPORTEE.text));            //
   BaseReport.PrintXY(posx+25,posy+178,NumToPesos(trim(SALDO.text))); //Precio Letras
   BaseReport.PrintXY(posx+157,posy+178,trim(SALDO.text));            //Precio
  end
  else begin
   if (trim(tpopago.text)='CONTADO') OR (trim(tpopago.Text)= 'CUENTA CORRIENTE') then begin
   BaseReport.PrintXY(posx+27,posy+157,NumToPesos(trim(PRECIOP.text))); //Precio Letras
   BaseReport.PrintXY(posx+159,posy+157,trim(PRECIOP.text));
   BaseReport.PrintXY(posx+27,posy+168,NumToPesos(trim(IMPORTEE.text))); //Precio Letras
   BaseReport.PrintXY(posx+159,posy+168,trim(IMPORTEE.text));            //
   BaseReport.PrintXY(posx+25,posy+178,NumToPesos(trim(SALDO.text))); //Precio Letras
   BaseReport.PrintXY(posx+157,posy+178,trim(SALDO.text));            //Precio
   end
   else begin
   BaseReport.PrintXY(posx+27,posy+157,NumToPesos(trim(DPRECIO.text))); //Precio Letras
   BaseReport.PrintXY(posx+159,posy+157,trim(DPRECIO.text));
   BaseReport.PrintXY(posx+27,posy+168,NumToPesos(trim(IMPORTEE.text))); //Precio Letras
   BaseReport.PrintXY(posx+159,posy+168,trim(IMPORTEE.text));
   BaseReport.PrintXY(posx+25,posy+178,NumToPesos(trim(SALDO.text))); //Precio Letras
   BaseReport.PrintXY(posx+157,posy+178,trim(SALDO.text));
   end;
  end;

  if length(trim(observ.Text)) < 80 then BaseReport.PrintXY(posx+50,posy+184,trim(observ.Text))
    else BaseReport.PrintXY(posx+14,posy+188,trim(observ.Text));

  BaseReport.SetFont('Arial Black',9);
  BaseReport.FontColor:=clBlack;
  BaseReport.PrintXY(posx+165,posy+251,'CUENTA: ' + trim(odni.text));
 end;
end;

procedure TVen_ParcelaMayorista.Cesion();
var posx,posy:double;
    ElMes,ElAnio,ElDia: string;
    t,hoja:integer;
    Imagen1:  TBitmap;
    PathLogo:string;
begin
 posx:=1;
 posy:=2;
 hoja:=1;
 with RvS do begin
  Imagen1 := TBitMap.Create;
  {if nroopcion=3 then begin
   PathLogo:=modulo2.path_todo + '\Formularios\cesionparticulares.jpg';
   if FileExists(PathLogo) then begin
    Image1.Picture.LoadFromFile(PathLogo);
    Imagen1.Assign(Image1.Picture.Graphic);
    BaseReport.PrintBitmapRect(1,1,posx+215,posy+290,Imagen1);
    Imagen1.Free;
    ElMes:=el_mes(strtoint(strcut_midle(FECHA.Text,4,5)));
    ElAnio:=strcut_midle(FECHA.Text,7,10);
    ElDia:=LeftStr(FECHA.Text,2);

    BaseReport.SetFont('Arial Black',10);
    BaseReport.FontColor:=clRED;
    BaseReport.PrintXY(posx+160,posy+45,ElDia);
    BaseReport.PrintXY(posx+30,posy+50,ElMes);
    BaseReport.PrintXY(posx+75,posy+50,ElAnio);

    BaseReport.PrintXY(posx+110,posy+50,nomtransf);//trim(DBEdit7.text));     //Nombre
    BaseReport.PrintXY(posx+55,posy+54,dnitransf);//trim(DBEdit7.text));     //dni
    BaseReport.PrintXY(posx+115,posy+54,domtransf);//trim(DBEdit4.text));    //Domicilio

    BaseReport.PrintXY(posx+120,posy+59,trim(grillaT.Cells[2,1]));
    BaseReport.PrintXY(posx+65,posy+65,trim(grillat.cells[5,1]));

    BaseReport.PrintXY(posx+180,posy+104,trim(D1.text)); // accion
    BaseReport.PrintXY(posx+114,posy+119,trim(D5.text)); // parcela
    BaseReport.PrintXY(posx+133,posy+119,trim(D3.text)); // sector

    BaseReport.PrintXY(posx+45,posy+147,trim(grillaT.Cells[2,1]));//trim(DBEdit7.text));     //Nombre

    BaseReport.PrintXY(posx+30,posy+174,ElMes);
    BaseReport.PrintXY(posx+75,posy+174,ElAnio);
   end;
  end
  else begin }
    //Imagen1 := TBitMap.Create;
    if trim(tpopago.text)='Contado' then begin
     PathLogo:=modulo2.path_todo + '\Formularios\FRM-02-01.jpg';
    end
    else begin
     PathLogo:=modulo2.path_todo + '\Formularios\FRM-02-02.jpg';
    end;
    if FileExists(PathLogo) then begin
     Image1.Picture.LoadFromFile(PathLogo);
     Imagen1.Assign(Image1.Picture.Graphic);
     BaseReport.PrintBitmapRect(1,1,posx+215,posy+290,Imagen1);
     end;
     Imagen1.Free;
     ElMes:=el_mes(strtoint(strcut_midle(FECHA.Text,4,5)));
     ElAnio:=strcut_midle(FECHA.Text,7,10);
     ElDia:=LeftStr(FECHA.Text,2);
     BaseReport.SetFont('Arial Black',8);
     BaseReport.FontColor:=clRED;
     BaseReport.PrintXY(posx+149,posy+29,ElDia);
     BaseReport.PrintXY(posx+178,posy+29,ElMes);
     BaseReport.PrintXY(posx+16,posy+33,ElAnio);
     BaseReport.PrintXY(posx+151,posy+33,'READ GUSTAVO ALBERTO');
     BaseReport.PrintXY(posx+27,posy+44,trim(grillaT.Cells[2,1]));//trim(DBEdit7.text));     //Nombre
     BaseReport.PrintXY(posx+159,posy+44,trim(grillat.cells[3,1]));//trim(DBEdit2.text));    //Tipo
     BaseReport.PrintXY(posx+176,posy+44,trim(grillat.cells[4,1]));//trim(DBEdit8.text));    //Nro Doc
     BaseReport.PrintXY(posx+30,posy+47,trim(grillat.cells[5,1]));//trim(DBEdit4.text));    //Domicilio
     BaseReport.PrintXY(posx+177,posy+47,trim(grillat.cells[12,1]));//trim(DBEdit1.text));   //Ciudad
     BaseReport.PrintXY(posx+30,posy+52,trim(grillat.cells[16,1]));//trim(DBEdit1.text));   //prov

     //if nroopcion=3 then begin
      //BaseReport.PrintXY(posx+108,posy+83,NumToPesos(trim(d17.text))); //Precio Letras
      //BaseReport.PrintXY(posx+15,posy+86,trim(d17.text));
     //end
     //else begin
      //Importe Venta
      if (trim(tpopago.text)='CONTADO') OR (trim(tpopago.Text)= 'CUENTA CORRIENTE') then begin
       BaseReport.PrintXY(posx+108,posy+83,NumToPesos(trim(saldo.text))); //Precio Letras
       BaseReport.PrintXY(posx+15,posy+86,trim(saldo.text));            //Precio
      end
      else begin
       BaseReport.PrintXY(posx+108,posy+83,NumToPesos(trim(DPrecio.text))); //Precio Letras
       BaseReport.PrintXY(posx+15,posy+86,trim(DPrecio.text));              //Precio Numero
      end;
      //importe anticipo
      if trim(tpopago.text)='FINANCIADO' then begin
       BaseReport.PrintXY(posx+12,posy+91,NumToPesos(trim(importee.text))); //Precio Letras
       BaseReport.PrintXY(posx+125,posy+91,trim(importee.text));            //Precio Numero
        //saldo
       BaseReport.PrintXY(posx+12,posy+98,NumToPesos(trim(saldo.text))); //Precio Letras
       BaseReport.PrintXY(posx+125,posy+98,trim(saldo.text));            //
      end;
      //importe cuotas
      if (trim(tpopago.text)='CONTADO')  OR (trim(tpopago.Text)= 'CUENTA CORRIENTE')  then begin
       BaseReport.PrintXY(posx+99,posy+94,''); //Precio Letras
       BaseReport.PrintXY(posx+12,posy+97,'');            //Precio
      end
      else begin
       BaseReport.PrintXY(posx+52,posy+101,trim(valcuota.text));             //Precio Numero
       BaseReport.PrintXY(posx+12,posy+104,trim(grilla5.Cells[2,1]));
      end;
     //end;

    /// BaseReport.PrintXY(posx+155,posy+94,trim(D1.text));   //Titulo
     BaseReport.PrintXY(posx+85,posy+110,trim(D2.text));    //Accion
     BaseReport.PrintXY(posx+45,posy+117,trim(D4.text));  //Plaza
     BaseReport.PrintXY(posx+113,posy+117,trim(D3.text));  //Sector
     BaseReport.PrintXY(posx+142,posy+117,trim(D5.text));   //Parcela

     //if (trim(tpopago.text)='CONTADO')  OR (trim(tpopago.Text)= 'CUENTA CORRIENTE')  then begin
     // BaseReport.PrintXY(posx+155,posy+94,trim(D1.text));   //Titulo
     // BaseReport.PrintXY(posx+85,posy+97,trim(D2.text));    //Accion
     // BaseReport.PrintXY(posx+113,posy+101,trim(D4.text));  //Plaza
     // BaseReport.PrintXY(posx+177,posy+101,trim(D3.text));  //Sector
     // BaseReport.PrintXY(posx+12,posy+105,trim(D5.text));   //Parcela
     //end
     //else begin
     // BaseReport.PrintXY(posx+85,posy+111,trim(D1.text));   //Titulo
     // BaseReport.PrintXY(posx+16,posy+115,trim(D2.text));    //Accion
     // BaseReport.PrintXY(posx+50,posy+119,trim(D4.text));  //Plaza
     // BaseReport.PrintXY(posx+115,posy+119,trim(D3.text));  //Sector
     // BaseReport.PrintXY(posx+150,posy+119,trim(D5.text));   //Parcela
     //end;
     BaseReport.PrintXY(posx+34,posy+201,trim(grillaT.Cells[2,2]));//trim(DBEdit7.text));     //Nombre
     BaseReport.PrintXY(posx+165,posy+201,trim(grillat.cells[3,2]));//trim(DBEdit2.text));    //Tipo
     BaseReport.PrintXY(posx+181,posy+201,trim(grillat.cells[4,2]));//trim(DBEdit8.text));    //Nro Doc
     BaseReport.PrintXY(posx+40,posy+212,trim(grillat.cells[5,2]));//trim(DBEdit4.text));    //Domicilio
     BaseReport.PrintXY(posx+170,posy+212,trim(grillat.cells[12,2]));//trim(DBEdit1.text));   //Ciudad
     for t:=1 to GrillaT.RowCount-1 do begin
      if  t=1 then BaseReport.PrintXY(posx+85,posy+263,TRIM(GrillaT.Cells[2,t]));     //Nombre 1º Cesionario
      if  t=2 then BaseReport.PrintXY(posx+150,posy+263,TRIM(GrillaT.Cells[2,t]));    //Nombre 2º Cesionario
    end;
  //end;
 end;
end;

procedure TVen_ParcelaMayorista.Clausulas();
var posx,posy:double;
    t,hoja:integer;
    ElMes,ElAnio,ElDia: string;
    Imagen1:  TBitmap;
    PathLogo:string;
begin
 posx:=1;
 posy:=2;
 hoja:=1;
 with RvS do begin
  Imagen1 := TBitMap.Create;
  PathLogo:=modulo2.path_todo + '\Formularios\FRM-03-01.jpg';
  if FileExists(PathLogo) then begin
   Image1.Picture.LoadFromFile(PathLogo);
   Imagen1.Assign(Image1.Picture.Graphic);
   BaseReport.PrintBitmapRect(1,1,posx+215,posy+290,Imagen1);
  end;
  Imagen1.Free;
  ElMes:=el_mes(strtoint(strcut_midle(FECHA.Text,4,5)));
  ElAnio:=strcut_midle(FECHA.Text,7,10);
  ElDia:=LeftStr(FECHA.Text,2);
  BaseReport.SetFont('Arial Black',8);
  BaseReport.FontColor:=clRED;
  BaseReport.PrintXY(posx+147,posy+32,ElDia);
  BaseReport.PrintXY(posx+177,posy+32,ElMes);
  BaseReport.PrintXY(posx+15,posy+35,ElAnio);
  BaseReport.PrintXY(posx+43,posy+35,trim(grillaT.Cells[2,1]));//trim(DBEdit7.text));     //Nombre
  BaseReport.PrintXY(posx+166,posy+35,trim(grillat.cells[3,1]));//trim(DBEdit2.text));    //Tipo
  BaseReport.PrintXY(posx+184,posy+35,trim(grillat.cells[4,1]));//trim(DBEdit8.text));    //Nro Doc
  BaseReport.PrintXY(posx+40,posy+39,trim(grillat.cells[5,1]));//trim(DBEdit4.text));    //Domicilio
  BaseReport.PrintXY(posx+10,posy+42,'Formosa');//trim(grillat.cells[12,1]));   //Ciudad
  BaseReport.PrintXY(posx+167,posy+42,trim(D2.text));    //Accion
  BaseReport.PrintXY(posx+50,posy+46,trim(D1.text));    //Titulo
  BaseReport.PrintXY(posx+29,posy+50,trim(D4.text));   //Plaza
  BaseReport.PrintXY(posx+82,posy+50,trim(D3.text));   //Sector
  BaseReport.PrintXY(posx+108,posy+50,trim(D5.text));   //Parcela
  for t:=1 to GrillaT.RowCount-1 do begin
   if  t=1 then BaseReport.PrintXY(posx+20,posy+250,TRIM(GrillaT.Cells[2,t]));     //Nombre 1º Cesionario
   if  t=2 then BaseReport.PrintXY(posx+140,posy+250,TRIM(GrillaT.Cells[2,t]));    //Nombre 2º Cesionario
  end;
 end;
end;

procedure TVen_ParcelaMayorista.Garantias();
var posx,posy:double;
    hoja:integer;
    ElMes,ElAnio,ElDia: string;
    Imagen1:  TBitmap;
    PathLogo:string;
begin
 posx:=1;posy:=2;hoja:=1;
 with RvS do begin
  Imagen1 := TBitMap.Create;
  PathLogo:=modulo2.path_todo + '\Formularios\FRM-06-01.jpg';
  if FileExists(PathLogo) then begin
   Image1.Picture.LoadFromFile(PathLogo);
   Imagen1.Assign(Image1.Picture.Graphic);
   BaseReport.PrintBitmapRect(1,1,posx+215,posy+290,Imagen1);
  end;
  Imagen1.Free;
  ElMes:=el_mes(strtoint(strcut_midle(FECHA.Text,4,5)));
  ElAnio:=strcut_midle(FECHA.Text,7,10);
  ElDia:=LeftStr(FECHA.Text,2);
  BaseReport.SetFont('Arial Black',8);
  BaseReport.FontColor:=clRED;
  BaseReport.PrintXY(posx+185,posy+28,'XXXX');
  BaseReport.PrintXY(posx+96,posy+36,ElDia);
  BaseReport.PrintXY(posx+126,posy+36,ElMes);
  BaseReport.PrintXY(posx+173,posy+36,ElAnio);
  BaseReport.PrintXY(posx+10,posy+41,trim(grillaT.Cells[2,1]));//trim(DBEdit7.text));     //Nombre
  BaseReport.PrintXY(posx+33,posy+41,trim(grillat.cells[3,1]));//trim(DBEdit2.text));    //Tipo
  BaseReport.PrintXY(posx+153,posy+41,trim(grillat.cells[4,1]));//trim(DBEdit8.text));    //Nro Doc
  BaseReport.PrintXY(posx+10,posy+44,trim(grillat.cells[10,1]));//trim(DBEdit3.text));    //Nacionalidad
  BaseReport.PrintXY(posx+65,posy+44,trim(grillat.cells[11,1]));//trim(DBEdit6.text));    //Estado Civil
  BaseReport.PrintXY(posx+113,posy+44,trim(grillat.cells[5,1]));//trim(DBEdit4.text));    //Domicilio
  BaseReport.PrintXY(posx+33,posy+47,trim(grillat.cells[12,1]));//trim(DBEdit1.text));   //Ciudad
  BaseReport.PrintXY(posx+10,posy+52,trim(D2.text));    //Accion
  BaseReport.PrintXY(posx+82,posy+52,trim(D1.text));    //Titulo
  BaseReport.PrintXY(posx+60,posy+55,trim(D4.text));   //Plaza
  BaseReport.PrintXY(posx+122,posy+55,trim(D3.text));   //Sector
  BaseReport.PrintXY(posx+143,posy+55,trim(D5.text));   //Parcela
  BaseReport.PrintXY(posx+91,posy+62,ElDia);
  BaseReport.PrintXY(posx+103,posy+62,ElMes);
  BaseReport.PrintXY(posx+135,posy+62,ElAnio);

  //Importe Venta
  BaseReport.PrintXY(posx+10,posy+68,NumToPesos(trim(DPrecio.text))); //Precio Letras
  BaseReport.PrintXY(posx+113,posy+68,trim(DPrecio.text));            //Precio Numero
  BaseReport.PrintXY(posx+10,posy+98,'AYACUCHO Nº 160');
  BaseReport.PrintXY(posx+126,posy+98,'FORMOSA');

  //CESIONARIO
  BaseReport.PrintXY(posx+73,posy+130,trim(grillaT.Cells[2,1]));//trim(DBEdit7.text));     //Nombre
  BaseReport.PrintXY(posx+10,posy+134,trim(grillat.cells[5,1]));//ttrim(DBEdit4.text));    //Domicilio
  BaseReport.PrintXY(posx+105,posy+134,trim(grillat.cells[12,1]));//trim(DBEdit1.text));   //Ciudad
  BaseReport.PrintXY(posx+43,posy+145,'AYACUCHO Nº 160');
  BaseReport.PrintXY(posx+151,posy+145,'FORMOSA');
  BaseReport.PrintXY(posx+25,posy+178,NumToPesos(trim(SALDO.text))); //Precio Letras
  BaseReport.PrintXY(posx+157,posy+178,trim(SALDO.text));            //Precio Numero
  BaseReport.PrintXY(posx+35,posy+178,trim(grillaT.Cells[2,1]));//trim(DBEdit7.text));     //Nombre
  BaseReport.PrintXY(posx+165,posy+204,trim(DPrecio.text));            //Precio Numero
  BaseReport.PrintXY(posx+43,posy+226,NumToPesos(trim(DPrecio.text))); //Precio Letras
  BaseReport.PrintXY(posx+30,posy+246,trim(grillaT.Cells[2,1]));//trim(DBEdit7.text));     //Nombre
  BaseReport.PrintXY(posx+30,posy+253,trim(grillat.cells[5,1]));//trim(DBEdit4.text));    //Domicilio
  BaseReport.PrintXY(posx+30,posy+260,trim(grillat.cells[12,1]));//trim(DBEdit1.text));   //Ciudad
 end;
end;

procedure TVen_ParcelaMayorista.Reglamento();
var posx,posy:double;
    t,hoja:integer;
    Imagen1:  TBitmap;
    Fuente,PathLogo:string;
begin
 posx:=1;
 posy:=2;
 hoja:=1;
 with RvS do begin
  Imagen1 := TBitMap.Create;
  PathLogo:=modulo2.path_todo + '\Formularios\FRM-04-01.jpg';
  if FileExists(PathLogo) then begin
   Image1.Picture.LoadFromFile(PathLogo);
   Imagen1.Assign(Image1.Picture.Graphic);
   BaseReport.PrintBitmapRect(1,1,posx+215,posy+290,Imagen1);
  end;
  Imagen1.Free;
 end;
end;

procedure TVen_ParcelaMayorista.Reglamento1();
var posx,posy:double;
    t,hoja:integer;
    Imagen1:  TBitmap;
    Fuente,PathLogo:string;
begin
 posx:=1;
 posy:=2;
 hoja:=1;
 with RvS do begin
  Imagen1 := TBitMap.Create;
  PathLogo:=modulo2.path_todo + '\Formularios\FRM-04-02.jpg';
  if FileExists(PathLogo) then begin
   Image1.Picture.LoadFromFile(PathLogo);
   Imagen1.Assign(Image1.Picture.Graphic);
   BaseReport.PrintBitmapRect(1,1,posx+215,posy+290,Imagen1);
   for t:=1 to GrillaT.RowCount-1 do begin
    if  t=1 then BaseReport.PrintXY(posx+20,posy+262,TRIM(GrillaT.Cells[2,t]));     //Nombre 1º Cesionario
    if  t=2 then BaseReport.PrintXY(posx+85,posy+262,TRIM(GrillaT.Cells[2,t]));     //Nombre 2º Cesionario
    if  t=3 then BaseReport.PrintXY(posx+155,posy+262,TRIM(GrillaT.Cells[2,t]));     //Nombre 3º Cesionario
   end;
  end;
  Imagen1.Free;
 end;
end;

procedure TVen_ParcelaMayorista.RvSCartaPrint(Sender: TObject);
var gf:integer;
begin
  Carta;
end;

procedure TVen_ParcelaMayorista.Carta();
var posx,posy:double;
    hoja:integer;
    ElMes,ElAnio,ElDia: string;
    Imagen1,Imagen2:  TBitmap;
    PathLogo:string;
begin
 if NroOpcion <> 3 then begin  /// venta y cesion gratuita
   posx:=1;
   posy:=2;
   hoja:=1;
   with RvSCarta do begin
    RvSCarta.SystemPrinter.Copies:=1;
    Imagen1 := TBitMap.Create;
    PathLogo:=modulo2.path_todo + '\Formularios\FRM-05-01.jpg';
    if FileExists(PathLogo) then begin
      Image1.Picture.LoadFromFile(PathLogo);
      Imagen1.Assign(Image1.Picture.Graphic);
      BaseReport.PrintBitmapRect(1,1,posx+215,posy+290,Imagen1);
    end;
    Imagen1.Free;
    ElMes:=el_mes(strtoint(strcut_midle(FECHA.Text,4,5)));
    ElAnio:=strcut_midle(FECHA.Text,7,10);
    ElDia:=LeftStr(FECHA.Text,2);
    BaseReport.SetFont('Arial Black',8);
    BaseReport.FontColor:=clRED;
    BaseReport.PrintXY(posx+147,posy+20,ElDia);
    BaseReport.PrintXY(posx+159,posy+20,ElMes);
    BaseReport.PrintXY(posx+192,posy+20,ElAnio);
    BaseReport.PrintXY(posx+106,posy+69,trim(grillaT.Cells[2,1]));//trim(DBEdit7.text));     //Nombre
    BaseReport.PrintXY(posx+50,posy+77,trim(grillat.cells[3,1]));//trim(DBEdit2.text));    //Tipo
    BaseReport.PrintXY(posx+65,posy+77,trim(grillat.cells[4,1]));//trim(DBEdit8.text));    //Nro Doc
    BaseReport.PrintXY(posx+115,posy+77,trim(grillat.cells[5,1]));//trim(DBEdit4.text));    //Domicilio
    BaseReport.PrintXY(posx+123,posy+85,ElDia);
    BaseReport.PrintXY(posx+135,posy+85,ElMes);
    BaseReport.PrintXY(posx+175,posy+85,ElAnio);

    BaseReport.PrintXY(posx+33,posy+92,nomtransf);
    BaseReport.PrintXY(posx+174,posy+92,dnitransf);
    BaseReport.PrintXY(posx+50,posy+102,CUITTransf);
    BaseReport.PrintXY(posx+115,posy+102,domtransf);

    BaseReport.PrintXY(posx+91,posy+115,trim(D2.text));    //Accion
    BaseReport.PrintXY(posx+151,posy+140,trim(D1.text));    //Titulo
    BaseReport.PrintXY(posx+168,posy+148,trim(D4.text));   //Plaza
    BaseReport.PrintXY(posx+43,posy+156,trim(D3.text));   //Sector
    BaseReport.PrintXY(posx+72,posy+156,trim(D5.text));   //Parcela
    BaseReport.PrintXY(posx+110,posy+247,trim(grillaT.Cells[2,1]));//trim(DBEdit7.text));     //Nombre
    basereport.NewPage ;
    posx:=1;
    posy:=2;
    hoja:=1;
    Imagen1 := TBitMap.Create;
    PathLogo:=modulo2.path_todo + '\Formularios\FRM-05-01.jpg';
    if FileExists(PathLogo) then begin
      Image1.Picture.LoadFromFile(PathLogo);
      Imagen1.Assign(Image1.Picture.Graphic);
      BaseReport.PrintBitmapRect(1,1,posx+215,posy+290,Imagen1);
    end;
    Imagen1.Free;
    ElMes:=el_mes(strtoint(strcut_midle(FECHA.Text,4,5)));
    ElAnio:=strcut_midle(FECHA.Text,7,10);
    ElDia:=LeftStr(FECHA.Text,2);
    BaseReport.SetFont('Arial Black',8);
    BaseReport.FontColor:=clRED;
    BaseReport.PrintXY(posx+147,posy+20,ElDia);
    BaseReport.PrintXY(posx+159,posy+20,ElMes);
    BaseReport.PrintXY(posx+192,posy+20,ElAnio);
    BaseReport.PrintXY(posx+106,posy+69,trim(grillaT.Cells[2,1]));//trim(DBEdit7.text));     //Nombre
    BaseReport.PrintXY(posx+50,posy+77,trim(grillat.cells[3,1]));//trim(DBEdit2.text));    //Tipo
    BaseReport.PrintXY(posx+65,posy+77,trim(grillat.cells[4,1]));//trim(DBEdit8.text));    //Nro Doc
    BaseReport.PrintXY(posx+115,posy+77,trim(grillat.cells[5,1]));//trim(DBEdit4.text));    //Domicilio
    BaseReport.PrintXY(posx+123,posy+85,ElDia);
    BaseReport.PrintXY(posx+135,posy+85,ElMes);
    BaseReport.PrintXY(posx+175,posy+85,ElAnio);

    BaseReport.PrintXY(posx+33,posy+92,nomtransf);
    BaseReport.PrintXY(posx+174,posy+92,dnitransf);
    BaseReport.PrintXY(posx+50,posy+102,CUITTransf);
    BaseReport.PrintXY(posx+115,posy+102,domtransf);

    BaseReport.PrintXY(posx+91,posy+115,trim(D2.text));    //Accion
    BaseReport.PrintXY(posx+151,posy+140,trim(D1.text));    //Titulo
    BaseReport.PrintXY(posx+168,posy+148,trim(D4.text));   //Plaza
    BaseReport.PrintXY(posx+43,posy+156,trim(D3.text));   //Sector
    BaseReport.PrintXY(posx+72,posy+156,trim(D5.text));   //Parcela
    BaseReport.PrintXY(posx+110,posy+247,trim(grillaT.Cells[2,1]));//trim(
   end;
 {end
 else begin   /// transferencia de titulares
   posx:=1;
   posy:=2;
   hoja:=1;
   with RvSCarta do begin
    Imagen2 := TBitMap.Create;
    RvSCarta.SystemPrinter.Copies:=1;
    PathLogo:=modulo2.path_todo + '\Formularios\FRM-05-01.jpg';
    if FileExists(PathLogo) then begin
     Image1.Picture.LoadFromFile(PathLogo);
     Imagen2.Assign(Image1.Picture.Graphic);
     BaseReport.PrintBitmapRect(1,1,posx+215,posy+290,Imagen2);
    end;
    Imagen2.Free;
    ElMes:=el_mes(strtoint(strcut_midle(FECHA.Text,4,5)));
    ElAnio:=strcut_midle(FECHA.Text,7,10);
    ElDia:=LeftStr(FECHA.Text,2);
    BaseReport.SetFont('Arial Black',8);
    BaseReport.FontColor:=clRED;
    BaseReport.PrintXY(posx+147,posy+20,ElDia);
    BaseReport.PrintXY(posx+159,posy+20,ElMes);
    BaseReport.PrintXY(posx+192,posy+20,ElAnio);
    BaseReport.PrintXY(posx+106,posy+69,trim(grillaT.Cells[2,1]));//trim(DBEdit7.text));     //Nombre
    BaseReport.PrintXY(posx+50,posy+77,trim(grillat.cells[3,1]));//trim(DBEdit2.text));    //Tipo
    BaseReport.PrintXY(posx+65,posy+77,trim(grillat.cells[4,1]));//trim(DBEdit8.text));    //Nro Doc
    BaseReport.PrintXY(posx+115,posy+77,trim(grillat.cells[5,1]));//trim(DBEdit4.text));    //Domicilio
    BaseReport.PrintXY(posx+123,posy+85,ElDia);
    BaseReport.PrintXY(posx+135,posy+85,ElMes);
    BaseReport.PrintXY(posx+175,posy+85,ElAnio);
    BaseReport.PrintXY(posx+33,posy+92,nomtransf);
    BaseReport.PrintXY(posx+174,posy+92,dnitransf);
    BaseReport.PrintXY(posx+50,posy+102,CUITTransf);
    BaseReport.PrintXY(posx+115,posy+102,domtransf);
    BaseReport.PrintXY(posx+91,posy+115,trim(D2.text));    //Accion
    BaseReport.PrintXY(posx+151,posy+140,trim(D1.text));    //Titulo
    BaseReport.PrintXY(posx+168,posy+148,trim(D4.text));   //Plaza
    BaseReport.PrintXY(posx+43,posy+156,trim(D3.text));   //Sector
    BaseReport.PrintXY(posx+72,posy+156,trim(D5.text));   //Parcela
    BaseReport.PrintXY(posx+110,posy+247,trim(grillaT.Cells[2,1]));//trim(DBEdit7.text));     //Nombre
    basereport.NewPage ;
    posx:=1;
    posy:=2;
    hoja:=1;
    Imagen1 := TBitMap.Create;
    PathLogo:=modulo2.path_todo + '\Formularios\FRM-05-01.jpg';
    if FileExists(PathLogo) then begin
     Image1.Picture.LoadFromFile(PathLogo);
     Imagen1.Assign(Image1.Picture.Graphic);
     BaseReport.PrintBitmapRect(1,1,posx+215,posy+290,Imagen1);
    end;
    Imagen1.Free;
    ElMes:=el_mes(strtoint(strcut_midle(FECHA.Text,4,5)));
    ElAnio:=strcut_midle(FECHA.Text,7,10);
    ElDia:=LeftStr(FECHA.Text,2);
    BaseReport.SetFont('Arial Black',8);
    BaseReport.FontColor:=clRED;
    BaseReport.PrintXY(posx+147,posy+20,ElDia);
    BaseReport.PrintXY(posx+159,posy+20,ElMes);
    BaseReport.PrintXY(posx+192,posy+20,ElAnio);
    BaseReport.PrintXY(posx+108,posy+69,trim(grillaT.Cells[2,1]));//trim(DBEdit7.text));     //Nombre
    BaseReport.PrintXY(posx+50,posy+77,trim(grillat.cells[3,1]));//trim(DBEdit2.text));    //Tipo
    BaseReport.PrintXY(posx+65,posy+77,trim(grillat.cells[4,1]));//trim(DBEdit8.text));    //Nro Doc
    BaseReport.PrintXY(posx+112,posy+77,trim(grillat.cells[5,1]));//trim(DBEdit4.text));    //Domicilio
    BaseReport.PrintXY(posx+123,posy+85,ElDia);
    BaseReport.PrintXY(posx+135,posy+85,ElMes);
    BaseReport.PrintXY(posx+175,posy+85,ElAnio);
    BaseReport.PrintXY(posx+33,posy+92,nomtransf);
    BaseReport.PrintXY(posx+174,posy+92,dnitransf);
    BaseReport.PrintXY(posx+50,posy+102,CUITTransf);
    BaseReport.PrintXY(posx+115,posy+102,domtransf);
    BaseReport.PrintXY(posx+91,posy+117,trim(D2.text));    //Accion
    BaseReport.PrintXY(posx+151,posy+140,trim(D1.text));    //Titulo
    BaseReport.PrintXY(posx+168,posy+148,trim(D4.text));   //Plaza
    BaseReport.PrintXY(posx+43,posy+156,trim(D3.text));   //Sector
    BaseReport.PrintXY(posx+72,posy+156,trim(D5.text));   //Parcela
    BaseReport.PrintXY(posx+110,posy+247,trim(grillaT.Cells[2,1]));//trim(
   end;  }
 end
end;

procedure TVen_ParcelaMayorista.RvSPrint(Sender: TObject);
begin
if NroOpc = 1 then SolicitudAdquisicion;
if NroOpc = 2 then Cesion;
if NroOpc = 3 then Clausulas;
if NroOpc = 4 then Garantias;
if NroOpc = 5 then Reglamento;
//if NroOpc = 6 then Carta;
if NroOpc = 7 then Reglamento1;
end;

procedure TVen_ParcelaMayorista.tpopagoKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  if tpopago.itemindex = 0 then begin
   if trim(tpopago.Text)='TRANSFERENCIAS' then begin
    Key := #0;
    CODIGO.text:='TRANSFERENCIAS';
    edit2.Text:='0';
    tipopago:=2;
    fecha.setfocus;
    codigo.Enabled:=false;
   end;
   if trim(tpopago.Text)='DONACION' then begin
    Key := #0;
    saldo.Text:='0.02';
    importe.Text:='0.02';
    Codigo.Text:='DONACION';
    VALCUOTA.Text:='0.02';
    CODIGO.text:='DONACION';
    importee.Text:='00000.00';
    edit2.Text:='0';
    tipopago:=2;
    fecha.setfocus;
    codigo.Enabled:=false;
   end;
   if trim(tpopago.Text)='CONTADO' then begin
    Key := #0;
    CODIGO.text:='CONTADO';
    d15.Text:=preciop.Text;
    importee.Text:='00000.00';
    edit2.Text:='0';
    tipopago:=2;
    fecha.setfocus;
    codigo.Enabled:=false;
   end;
   if trim(tpopago.Text)='CUENTA CORRIENTE' then begin
    Key := #0;
    CODIGO.text:='CUENTA CORRIENTE';
    d15.Text:=preciop.Text;
    importee.Text:='00000.00';
    edit2.Text:='0';
    tipopago:=2;
    fecha.setfocus;
    codigo.Enabled:=false;
   end;
   if trim(tpopago.Text)='FINANCIADO SIN INTERES' then begin
    Key := #0;
    CODIGO.text:='FINANCIADO SIN INTERES';
    d15.Text:=preciop.Text;
    importee.Text:='00000.00';
    tipopago:=7;
    fecha.setfocus;
    codigo.Enabled:=false;
   end;
   if trim(tpopago.Text)='FINANCIADO' then begin
    Key := #0;
    CODIGO.text:='FINANCIADO';
    d15.Text:=preciop.Text;
    importee.Text:='00000.00';
    tipopago:=8;
    fecha.setfocus;
    codigo.Enabled:=false;
   end;
   if trim(codigo.Text)='TARJETA DE CREDITO' then begin
    Key := #0;
    CODIGO.text:='TARJETA DE CREDITO';
    importee.Text:='00000.00';
    edit2.Text:='0';
    tipopago:=3;
    fecha.setfocus;
    codigo.Enabled:=false;
   end;
  end;
  if tpopago.itemindex = 1 then begin
   CODIGO.text:='FINANCIADO';
   Key := #0;
   importee.Text:='00000.00';
   edit2.Text:='0';
   tipopago:=8;
   fecha.setfocus;
   codigo.Enabled:=false;
  end;
  if tpopago.itemindex = 2 then begin
   Key := #0;
   CODIGO.text:='CHECHE';
   importee.Text:='00000.00';
   edit2.Text:='0';
   tipopago:=4;
   fecha.setfocus;
   codigo.Enabled:=false;
  end;
  if tpopago.itemindex = 3 then begin
   Key := #0;
   CODIGO.text:='TARJETA DE CREDITO';
   importee.Text:='00000.00';
   edit2.Text:='0';
   tipopago:=3;
   fecha.setfocus;
   codigo.Enabled:=false;
  end;
  if tpopago.itemindex = 4 then begin
   Key := #0;
   CODIGO.text:='FINANCIADO SIN INTERES';
   saldo.Text :=preciop.Text;
   d15.Text:=preciop.Text;
   importee.Text:='00000.00';
   edit2.Text:='0';
   tipopago:=7;
   fecha.setfocus;
   codigo.Enabled:=false;
  end;
  if tpopago.itemindex = 5 then begin
   CODIGO.text:='CUENTA CORRIENTE';
   Key := #0;
   importee.Text:='00000.00';
   edit2.Text:='0';
   tipopago:=3;
   fecha.setfocus;
   codigo.Enabled:=false;
  end;
 { if trim(codigo.Text)='FINANCIADO SIN INTERES' then begin
    coloca1(5);
    tipopago:=7;
  end;
  if  (trim(codigo.Text)='CONTADO') or (trim(codigo.Text)='TRANSFERENCIAS') or (trim(codigo.Text)='DONACION')  then  begin
   coloca1(14);
   tipopago:=2;
  end;
  if trim(codigo.Text)='FINANCIADO CON INTERESES' then begin
   coloca1(16);
   tipopago:=8;
  end;
  if trim(codigo.Text)='CHEQUE' then begin
   coloca1(14);
   tipopago:=4;
  end;
  if trim(codigo.Text)='TARJETA DE CREDITO' then begin
   coloca1(14);
   tipopago:=3;
  end; }
 end;
end;

procedure TVen_ParcelaMayorista.tpopagoExit(Sender: TObject);
var t:integer;
var val,tot:real;
begin
 if tpopago.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Pago Ingresado!!',mterror,[mbok],0);
  tpopago.SetFocus;
 end
 else begin
  if tpopago.itemindex = 0 then begin
   grupocheq.Visible:=false;
   grupotarje.Visible:=false;
   CODIGO.ItemIndex:=0;
   if trim(tpopago.Text)='CONTADO' then begin
    codigo.Text:='CONTADO';
    saldo.Text:=preciop.Text;
    VALCUOTA.Text:=preciop.Text;
    IMPORTE.Text:=preciop.Text;
    d15.Text:=preciop.Text;
    edit2.Text:='0';
    tipopago:=2;
    fecha.SetFocus;
   end;
   if trim(tpopago.Text)='CUENTA CORRIENTE' then begin
    codigo.Text:='CUENTA CORRIENTE';
    saldo.Text:=preciop.Text;
    VALCUOTA.Text:=preciop.Text;
    IMPORTE.Text:=preciop.Text;
    d15.Text:=preciop.Text;
    edit2.Text:='0';
    tipopago:=2;
    fecha.SetFocus;
   end;
   if trim(tpopago.Text)='DONACION' then begin
    saldo.Text:='0.02';
    importe.Text:='0.02';
    codigo.Text:='DONACION';
    VALCUOTA.Text:='0.02';
    edit2.Text:='0';
    fecha.SetFocus;
   end;
   if trim(tpopago.Text)='FINANCIADO SIN INTERES' then begin
    saldo.Text:=preciop.Text;
    importe.Text:='0';
    codigo.Text:='FINANCIADO SIN INTERES';
    fecha.SetFocus;
   end;
   if trim(tpopago.Text)='FINANCIADO' then begin
    importe.Text:='0';
    codigo.Text:='FINANCIADO';
    fecha.SetFocus;
   end;
   if trim(tpopago.Text)='TRANSFERENCIAS' then begin
    codigo.Text:='TRANSFERENCIAS';
    IMPORTE.Text:=d15.Text;
    edit2.Text:='0';
   end;
  end;
  if tpopago.itemindex = 1 then begin
   grupocheq.Visible:=false;
   grupotarje.Visible:=false;
   FECHA.SetFocus;
  end;
  if tpopago.itemindex = 2 then begin   //cheque
   grupocheq.Visible:=true;
   grupotarje.Visible:=false;
   //coloca1(3);
   importee.Text:='00000.00';
   codigo.Text:='CHEQUE';
   saldo.Text:=dprecio.Text;
   VALCUOTA.Text:=dprecio.Text;
   IMPORTE.Text:=dprecio.Text;
   e5.Text:=trim(dprecio.Text);
   edit2.Text:='0';
   tipopago:=4;
   fecha.SetFocus;
  end;
  if tpopago.itemindex = 3 then begin   //tarje credito
   grupocheq.Visible:=false;
   grupotarje.Visible:=true;
   //coloca1(3);
   importee.Text:='00000.00';
   codigo.Text:='TARJETA DE CREDITO';
   saldo.Text:=dprecio.Text;
   VALCUOTA.Text:=dprecio.Text;
   IMPORTE.Text:=dprecio.Text;
   Edit3.text:=dprecio.Text;
   edit2.Text:='0';
   tipopago:=3;
   fecha.SetFocus;
  end;
  if tpopago.itemindex = 5 then begin
   grupocheq.Visible:=false;
   grupotarje.Visible:=false;
   saldo.Text:=dprecio.Text;
   VALCUOTA.Text:=dprecio.Text;
   IMPORTE.Text:=dprecio.Text;
   d15.Text:=dprecio.Text;
   edit2.Text:='0';
   tipopago:=2;
   fecha.SetFocus;
   FECHA.SetFocus;
  end;
{  if trim(codigo.Text)='FINANCIADO SIN INTERES' then begin
   coloca1(5);
   tipopago:=7;
  end;
  if (trim(codigo.Text)='CONTADO') or (trim(codigo.Text)='TRANSFERENCIAS') or (trim(codigo.Text)='DONACION')  then  begin
   coloca1(14);
   tipopago:=2;
  end;
  if trim(codigo.Text)='FINANCIADO CON INTERESES' then begin
   coloca1(16);
   tipopago:=8;
  end;
  if trim(codigo.Text)='CHEQUE' then begin
   coloca1(14);
   tipopago:=4;
  end;
  if trim(codigo.Text)='TARJETA DE CREDITO' then begin
   coloca1(14);
   tipopago:=3;
  end;  }
 end;
end;

procedure TVen_ParcelaMayorista.OBSERVKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  gdatos.ActivePage:=gdatos.Pages[0];
  if tottit = 3 then begin
   messagedlg('ERROR!! No se puede seguir Ingresando Titulares, ya existen   TRES Titulares para esta Venta!!',mterror,[mbok],0);
  end
  else begin
   if button2.Enabled then  button2.Click;
  end;
 end;
end;

procedure TVen_ParcelaMayorista.Button2Click(Sender: TObject);
var Busqueda:TLA_BUSQUEDA;

begin
 Busqueda:=TLA_BUSQUEDA.Create(self);
 try
  Busqueda.NroOpcion:=3;
  Busqueda.Caption:='Busqueda y Seleccion de Titulares';
  Busqueda.ShowModal;
  TCuif:=busqueda.DB2.Text;    //CUIf
  edit1.Text:=busqueda.DB1.Text;     //DNI
  name:=busqueda.DB4.Text;   //Nombre
  tdom:='Bº: ' + busqueda.DB6.Text + '-' +busqueda.DB5.Text;   //Domicilio
  TDoc:=busqueda.DB3.Text;   //Tipo Doc
  Nacio:=busqueda.DB8.Text;          //NAcionalidad
  TECivil:=busqueda.DB9.Text;       //ecivil
  naci:=busqueda.DB10.Text;          //fecnaci
  TTelef:=busqueda.eltelef;
  TTelefcelular:= busqueda.eltelefcelular;
  profesion:=busqueda.DB13.Text;
  laprov:=busqueda.DB7.Text;
  laloca:=busqueda.DB14.Text;
 finally
  Busqueda.Destroy;
  Agrega2.Enabled:=true;
  Agrega2.SetFocus;
  Agrega2.Click;
 end;
 c4.Checked:=true;
 bGuardar.Enabled:=true;
end;

procedure TVen_ParcelaMayorista.ControlTitulares();
var t:integer;
begin
  cantt:=0;
  for t:=1 to GrillaT.RowCount-1 do begin
    if trim(grillaT.Cells[1,t]) <> '' then begin
       cantt:=cantt + 1;
    end;
  end;
end;

procedure TVen_ParcelaMayorista.Agrega2Click(Sender: TObject);
var t:integer;
  function busca():boolean;
    var p:integer;
  begin
   busca:=true;
   if GrillaT.Cells[0,1] <> '' then begin
    for p:=1 to GrillaT.RowCount-1 do
     if (GrillaT.Cells[2,p]=trim(name))
     and (GrillaT.Cells[3,p]=trim(TDoc))
     and (GrillaT.Cells[8,p]=trim(tcuif))
     then busca:=false;
   end;
  end;

begin
 if busca() then begin
  if (GrillaT.RowCount > 1) and (trim(GrillaT.Cells[0,1])<>'') then begin
    t:=GrillaT.RowCount;
    GrillaT.RowCount:=GrillaT.RowCount+1;
  end
  else t:=1;
  if  GrillaT.RowCount = 5 then begin
   messagedlg('Error No se Puede seguir ingresando Titulares ',mtError,[mbok],0);
   GrillaT.Cells[0,t]:='';              GrillaT.Cells[1,t]:='';
   GrillaT.Cells[2,t]:='';              GrillaT.Cells[3,t]:='';
   GrillaT.Cells[4,t]:='';              GrillaT.Cells[5,t]:='';
   GrillaT.Cells[6,t]:='';              GrillaT.RowCount:=GrillaT.RowCount-1;
  end
  else begin
   GrillaT.Cells[0,t]:=completa1(inttostr(t),2,'0'); //
   GrillaT.Cells[1,t]:='?';                          //
   GrillaT.Cells[2,t]:=trim(name);           //Nombre
   GrillaT.Cells[3,t]:=trim(TDoc);           //TipoDNI
   GrillaT.Cells[4,t]:=trim(edit1.Text);     //DNI
   GrillaT.Cells[5,t]:=trim(tdom);           //dom
   GrillaT.Cells[6,t]:=completa1(inttostr(t),2,'0');//trim(NIVEL.text);      //nrotit
   GrillaT.Cells[7,t]:='X';                   //mdf
   GrillaT.Cells[8,t]:=trim(tcuif);          //cuif
   GrillaT.Cells[9,t]:=trim(naci);           //fecnac
   GrillaT.Cells[10,t]:=trim(nacio);         //nacionalidad
   GrillaT.Cells[11,t]:=trim(TECivil);       //ecivil
   GrillaT.Cells[12,t]:=laloca;
   GrillaT.Cells[13,t]:=ttelef;       //telefoPARTI
   GrillaT.Cells[14,t]:=profesion;
   GrillaT.Cells[15,t]:=TTelefcelular; //telefocelular
   GrillaT.Cells[16,t]:=laprov;
   C4.Checked:=true;
   tottit:=tottit + 1;
  end;
  if modifica2.Enabled = false then Agrega2.Enabled:=true;
  Agrega2.Enabled:=FALSE;
  EDIT1.Text:='00000000000';
  dbedit7.Clear;
  name:='';
  tdoc:='';
  tcuif:='';
  nacio:='';
  tecivil:='';
  TNivel:='';
 end
 else messagedlg('ERROR!! No Puede Existir dos Titulares del mismo NIVEL!!',mterror,[mbok],0);
 Button2.SetFocus;
end;

procedure TVen_ParcelaMayorista.Modifica2Click(Sender: TObject);
  function busca(ht:integer):boolean;
    var p:integer;
  begin
    busca:=true;
   if GrillaT.Cells[0,1] <> '' then begin
    for p:=1 to GrillaT.RowCount-1 do
     if (GrillaT.Cells[2,p]=trim(name))
      and (GrillaT.Cells[3,p]=trim(Tdoc))
      and (GrillaT.Cells[6,p]=trim(Tnivel))
      and (GrillaT.Cells[8,p]=trim(tcuif))
      and (ht<>p)
       then busca:=false;
   end;
  end;

begin
 if busca(GrillaT.Row) then begin
  if GrillaT.Cells[1,GrillaT.Row] <> '?' then begin
    GrillaT.Cells[7,GrillaT.Row]:='X';
  end;
  GrillaT.Cells[2,GrillaT.Row]:=trim(name);         //Nombre
  GrillaT.Cells[3,GrillaT.Row]:=trim(tdoc);         //TipoDNI
  GrillaT.Cells[4,GrillaT.Row]:=trim(edit1.Text);   //DNI
  GrillaT.Cells[5,GrillaT.Row]:=trim(tdom);         //dom
  GrillaT.Cells[6,GrillaT.Row]:=trim(TNivel);//  trim(NIVEL.text);   //nrotit
  GrillaT.Cells[8,GrillaT.Row]:=trim(tcuif);        //cuif
  GrillaT.Cells[9,GrillaT.Row]:=trim(naci);         //fecnac
  GrillaT.Cells[10,GrillaT.Row]:=trim(nacio);       //cuif
  GrillaT.Cells[11,GrillaT.Row]:=trim(tecivil);     //fecnac
  C4.Checked:=true;
  Agrega2.Enabled:=false;
  Borra2.Enabled:=false;
  Modifica2.Enabled:=false;
  button2.SetFocus;
 end
 else messagedlg('ERROR!! No Puede Existir dos Clientes con el mismo NIVEL!!',mterror,[mbok],0);
end;

procedure TVen_ParcelaMayorista.Quita2Click(Sender: TObject);
begin
  EDIT1.Text:='00000000000';
  name:='';
  tdoc:='';
  tcuif:='';nacio:='';tecivil:='';tnivel:='';
  Modifica2.Enabled:=false;
  Borra2.Enabled:=false;
  Agrega2.Enabled:=true;
  Quita2.Enabled:=false;
end;

procedure TVen_ParcelaMayorista.Borra2Click(Sender: TObject);
var t,p,gf:integer;
var bt:boolean;
begin
 if trim(GrillaT.Cells[0,1])<>'' then begin
  gf:=1;t:=0;
  if GrillaT.Cells[1,GrillaT.Row] = '?' then t:=1
  else gf:=messagedlg('Desea Borrar los datos del Titular Seleccionado??' + chr(13)
       + 'Se eliminará definitivamente de la Base de Datos',mtWarning,[mbok,mbCancel],0);
  if gf = 1 then begin
   if t=0 then begin
    ParcelasTitulares:=TParcelasTitulares.Create(nil);
    ParcelasTitulares.ConnectionString:=modulo2.Conexion;
    bt:=ParcelasTitulares.Borrar(GrillaT.Cells[1,GrillaT.Row]);
    ParcelasTitulares.Free;
    if bt then  begin
     messagedlg('Se ha Borrado el Testigo Correctamente',mtConfirmation,[mbok],0);
     Barra1.SimpleText:='Se ha Borrado el Testigo Correctamente';
     coloca1(12);
    end
    else begin
     messagedlg('Error al Borrar el Titular. Consulte con un Administrador',mtError,[mbok],0);
     Barra1.SimpleText:='Error al Borrar el Titular';
    end;
   end;
   t:=GrillaT.Row;
   if (t >= 1) and (GrillaT.RowCount > 2) then begin
     THackStringGrid(GrillaT).DeleteRow(t);
   end
   else begin
    for t:=0 to GrillaT.ColCount-1 do GrillaT.Cells[t,1]:='';
   end;
  end;
  Borra2.Enabled:=false;
  Modifica2.Enabled:=false;
  button2.SetFocus;
 end;
end;

procedure TVen_ParcelaMayorista.GrillaTClick(Sender: TObject);
begin
  Agrega2.Enabled:=false;
  Borra2.Enabled:=true;
  Quita2.Enabled:=true;
  Modifica2.Enabled:=true;
  edit1.Text:=trim(GrillaT.Cells[4,GrillaT.Row]);
  name:=trim(GrillaT.Cells[2,GrillaT.Row]);
  tdoc:=trim(GrillaT.Cells[3,GrillaT.Row]);
  Tnivel:=trim(GrillaT.Cells[6,GrillaT.Row]);
  tcuif:=trim(GrillaT.Cells[8,GrillaT.Row]);
  naci:=trim(GrillaT.Cells[9,GrillaT.Row]);
  nacio:=trim(GrillaT.Cells[10,GrillaT.Row]);
  tecivil:=trim(GrillaT.Cells[11,GrillaT.Row]);
  button2.SetFocus;
end;

procedure TVen_ParcelaMayorista.Edit1Exit(Sender: TObject);
begin
 if (trim(Edit1.Text)='' ) or (trim(Edit1.Text)='0') then begin
  messagedlg('ERROR!!... El N° de DNI no puede tener el valor 0 (Cero)'
  ,mterror,[mbok],0);
  Edit1.setfocus;
 end;
 if trim(Edit1.Text) = '00000000' then button2.setfocus;
 if trim(Edit1.Text) > '0' then begin
   coloca1(7);
 end;
end;

procedure TVen_ParcelaMayorista.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  if (trim(Edit1.Text)='' ) or (trim(Edit1.Text)='0') or (trim(Edit1.Text) = '00000000') then begin
   button2.Click;
  end
  else begin
   coloca1(7);
   agrega2.Enabled:=true;
   agrega2.SetFocus;
  end;
 end;
end;

procedure TVen_ParcelaMayorista.grillaformuClick(Sender: TObject);
var t,y:integer;
begin
 detalledeimp:='';
 GroupBox8.Visible :=false;
 GroupBox9.Visible :=false;
 GroupBox10.Visible :=false;
 GroupBox11.Visible :=false;
 if trim(grillaformu.Cells[2,grillaformu.Row])= 'True' then begin
  if trim(grillaformu.Cells[3,grillaformu.Row])='' then begin
   grillaformu.Cells[3,grillaformu.Row]:='X';
   for t:=1 to grillaformu.RowCount-1 do begin
    if trim(grillaformu.Cells[3,t]) = 'X' then begin
     if trim(grillaformu.Cells[0,t]) = 'FRM-01-01' then begin
      imprimiracta.Enabled:=true;
      detalledeimp:=trim(grillaformu.Cells[1,t]);
      GroupBox8.Caption := detalledeimp;
      GroupBox8.Visible :=true;
      GroupBox9.Visible :=false;
      GroupBox10.Visible :=false;
      GroupBox11.Visible :=false;
     end;
     if trim(grillaformu.Cells[0,t]) = 'FRM-02-01' then begin
      imprimircesion.Enabled:=true;
      detalledeimp:=trim(grillaformu.Cells[1,t]);
      GroupBox9.Caption := detalledeimp;
      GroupBox9.Visible :=true;
      GroupBox8.Visible :=false;
      GroupBox10.Visible :=false;
      GroupBox11.Visible :=false;
     end;
     if trim(grillaformu.Cells[0,t]) = 'FRM-03-01' then begin
      ImprimirClausular.Enabled:=true;
      detalledeimp:=trim(grillaformu.Cells[1,t]);
      GroupBox9.Caption := detalledeimp;
      GroupBox9.Visible :=true;
      GroupBox8.Visible :=false;
      GroupBox10.Visible :=false;
      GroupBox11.Visible :=false;
     end;
     if trim(grillaformu.Cells[0,t]) = 'FRM-04-02' then begin
      ImprimeReglamento.Enabled:=true;
      detalledeimp:=trim(grillaformu.Cells[1,t]);
      GroupBox10.Caption := detalledeimp;
      GroupBox10.Visible :=true;
      GroupBox8.Visible :=false;
      GroupBox9.Visible :=false;
      GroupBox11.Visible :=false;
     end;
     if trim(grillaformu.Cells[0,t]) = 'FRM-05-01' then begin
      Imprimircarta.Enabled:=true;
      detalledeimp:=trim(grillaformu.Cells[1,t]);
      GroupBox11.Caption := detalledeimp;
      GroupBox11.Visible :=true;
      GroupBox8.Visible :=false;
      GroupBox9.Visible :=false;
      GroupBox10.Visible :=false;
     end;
    end;
   end;
  end
 end;
end;

procedure TVen_ParcelaMayorista.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
 if (trim(DBGrid1.Fields[9].Text) = 'False')  then begin   //and (strtoint(DBGrid1.Fields[12].Text) < 15
  DBGrid1.Canvas.Brush.Color:=clskyblue;
  DBGrid1.Canvas.FillRect(Rect);
  DBGrid1.Canvas.Font.Color:= clBlack;
 end;
 if (trim(DBGrid1.Fields[9].Text) = 'True') then begin   //and (strtoint(DBGrid1.Fields[11].Text) < 15)  then begin
  DBGrid1.Canvas.Brush.Color:=clwindow;
  DBGrid1.Canvas.FillRect(Rect);
  DBGrid1.Canvas.Font.Color:= clBlack;
 end;
 if (trim(DBGrid1.Fields[10].Text) = 'True') then begin   //and (strtoint(DBGrid1.Fields[11].Text) > 15) then begin
  DBGrid1.Canvas.Brush.Color:=clYellow;
  DBGrid1.Canvas.FillRect(Rect);
  DBGrid1.Canvas.Font.Color:= clBlack;
 end;
 DBGrid1.DefaultDrawColumnCell(Rect,Datacol,Column,State);
end;

procedure TVen_ParcelaMayorista.ElSectorExit(Sender: TObject);
begin
if ElSector.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Sector Ingresado!!',mterror,[mbok],0);
  ElSector.SetFocus;
end;
end;

procedure TVen_ParcelaMayorista.ElSectorKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  coloca1(4);
  laaccion.Enabled:=true;
  laaccion.SetFocus;
 end;
end;

procedure TVen_ParcelaMayorista.LaAccionExit(Sender: TObject);
begin
 if LaAccion.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el N° de Acción Ingresado!!',mterror,[mbok],0);
  LaAccion.SetFocus;
 end
 else begin
  Coloca1(19);
 end;
end;

procedure TVen_ParcelaMayorista.LaAccionKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  coloca1(2);
  busca.SetFocus;
 end;
end;

procedure TVen_ParcelaMayorista.Edit2Change(Sender: TObject);
begin
  if trim(codigo.Text)='FINANCIADO SIN INTERES' then begin
   coloca1(5);
   tipopago:=7;
  end;
  if trim(codigo.Text)='CONTADO'  then  begin // contado
   coloca1(14);
   tipopago:=2;
  end;
  if trim(codigo.Text)='CUENTA CORRIENTE'  then  begin // contado
   coloca1(14);
   tipopago:=2;
  end;
  if trim(codigo.Text)='FINANCIADO' then begin
   coloca1(16);
   tipopago:=8;
  end;
  if trim(codigo.Text)='CHEQUE' then begin
   coloca1(14);
   tipopago:=4;
  end;
  if trim(codigo.Text)='TARJETA DE CREDITO' then begin
   coloca1(14);
   tipopago:=3;
  end;
  //bGuardar.Enabled:=true;
  if tpopago.ItemIndex=0 then BEGIN
   if nroopcion=1 then observ.Text:='Pago Contado ' + NumToPesos(trim(valcuota.text)) + ' $' + trim(valcuota.text);
   //if nroopcion=2 then observ.Text:='Cesion a Titulo gratuito ' + NumToPesos(trim(valcuota.text)) + ' $' + trim(valcuota.text);
   //if nroopcion=3 then observ.Text:='Transferencia S/Importe: ' + NumToPesos(trim(valcuota.text)) + ' $' + trim(valcuota.text);
  END;
  if tpopago.ItemIndex=1 then begin
   if trim(importee.Text)='00000.00' then begin
    observ.Text:='Precio de Venta $ ' + trim(dprecio.Text) + ', Financiado en ' + trim(edit2.text) + ' pagos iguales y consec. de $' + trim(valcuota.text);
   end
   else begin
    observ.Text:='Precio de Venta $ ' + trim(dprecio.Text) + ', Financiado en ' + trim(edit2.text) + ' pagos iguales y consec. de $' + trim(valcuota.text);
    //observ.Text:='Precio de Venta $ ' + trim(dprecio.Text) + ', Entrega $' + trim(importee.Text)
    //+', Saldo de $' + trim(saldo.text)  + ' en ' + trim(edit2.text) + ' pagos iguales y consec. de $' + trim(valcuota.text);
   end;
  end;
  if tpopago.ItemIndex=2 then begin
   observ.Text:='Pago segun CHEQUE ';
  end;
  if tpopago.ItemIndex=3 then begin
   observ.Text:='Pago segun Tarjeta de Credito';
  end;
  if tpopago.ItemIndex=4 then begin
    observ.Text:='Financiado sin Interes en ' + trim(edit2.text) + ' pagos iguales y consec. de $' + trim(valcuota.text);
  end;
  if tpopago.ItemIndex=5 then begin
   observ.Text:='Pago Contado ' + NumToPesos(trim(valcuota.text)) + ' $' + trim(valcuota.text);
  end;
end;

procedure TVen_ParcelaMayorista.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then valcuota.SetFocus
  else begin
    if ( StrScan('0123456789',Key) <> nil ) or
       ( Key = Char(VK_BACK) ) then
    else Key := #0;
  end;
  if tpopago.ItemIndex=0 then BEGIN
   if nroopcion=1 then observ.Text:='Pago Contado ' + NumToPesos(trim(valcuota.text)) + ' $' + trim(valcuota.text);
   //if nroopcion=2 then observ.Text:='Cesion a Titulo gratuito ' + NumToPesos(trim(valcuota.text)) + ' $' + trim(valcuota.text);
   //if nroopcion=3 then observ.Text:='Transferencia S/Importe: ' + NumToPesos(trim(valcuota.text)) + ' $' + trim(valcuota.text);
  END;
  if tpopago.ItemIndex=1 then begin
   if trim(importee.Text)='00000.00' then begin
     observ.Text:='Precio de Venta $ ' + trim(dprecio.Text) + ', Financiado en ' + trim(edit2.text) + ' pagos iguales y consec. de $' + trim(valcuota.text);
   end
   else begin
     observ.Text:='Precio de Venta $ ' + trim(dprecio.Text) + ', Financiado en ' + trim(edit2.text) + ' pagos iguales y consec. de $' + trim(valcuota.text);
     //observ.Text:='Precio de Venta $ ' + trim(dprecio.Text) + ', Entrega $' + trim(importee.Text)
     //+', Saldo de $' + trim(saldo.text)  + ' en ' + trim(edit2.text) + ' pagos iguales y consec. de $' + trim(valcuota.text);
   end;
  end;
  if tpopago.ItemIndex=2 then begin
    observ.Text:='Pago segun CHEQUE ';
  end;
  if tpopago.ItemIndex=3 then begin
    observ.Text:='Pago segun Tarjeta de Credito';
  end;
  if tpopago.ItemIndex=4 then begin
    observ.Text:='Financiado sin Interes en ' + trim(edit2.text) + ' pagos iguales y consec. de $' + trim(valcuota.text);
  end;
  if tpopago.ItemIndex=5 then begin
   observ.Text:='Pago Contado ' + NumToPesos(trim(valcuota.text)) + ' $' + trim(valcuota.text);
  end;
end;

procedure TVen_ParcelaMayorista.Edit2Exit(Sender: TObject);
begin
  if trim(codigo.Text)='FINANCIADO SIN INTERES' then begin
   coloca1(5);
   tipopago:=7;
  end;
  if trim(codigo.Text)='CONTADO'  then  begin
   coloca1(14);
   tipopago:=2;
  end;
  if trim(codigo.Text)='CUENTA CORRIENTE'  then  begin
   coloca1(14);
   tipopago:=2;
  end;
  if trim(codigo.Text)='FINANCIADO' then begin
   coloca1(16);
   tipopago:=8;
  end;
  if trim(codigo.Text)='CHEQUE' then begin
   coloca1(14);
   tipopago:=4;
  end;
  if trim(codigo.Text)='TARJETA DE CREDITO' then begin
   coloca1(14);
   tipopago:=3;
  end;
  if tpopago.ItemIndex=0 then BEGIN
   if nroopcion=1 then observ.Text:='Pago Contado ' + NumToPesos(trim(valcuota.text)) + ' $' + trim(valcuota.text);
   //if nroopcion=2 then observ.Text:='Cesion a Titulo gratuito ' + NumToPesos(trim(valcuota.text)) + ' $' + trim(valcuota.text);
   //if nroopcion=3 then observ.Text:='Transferencia S/Importe: ' + NumToPesos(trim(valcuota.text)) + ' $' + trim(valcuota.text);
  END;
  if tpopago.ItemIndex=1 then begin
   if trim(importee.Text)='00000.00' then begin
    observ.Text:='Precio de Venta $ ' + trim(dprecio.Text) + ', Financiado en ' + trim(edit2.text) + ' pagos iguales y consec. de $' + trim(valcuota.text);
   end
   else begin
    observ.Text:='Precio de Venta $ ' + trim(dprecio.Text) + ', Financiado en ' + trim(edit2.text) + ' pagos iguales y consec. de $' + trim(valcuota.text);
    //observ.Text:='Precio de Venta $ ' + trim(dprecio.Text) + ', Entrega $' + trim(importee.Text)
    //+', Saldo de $' + trim(saldo.text)  + ' en ' + trim(edit2.text) + ' pagos iguales y consec. de $' + trim(valcuota.text);
   end;
  end;
  if tpopago.ItemIndex=2 then begin
   observ.Text:='Pago segun CHEQUE ';
  end;
  if tpopago.ItemIndex=3 then begin
   observ.Text:='Pago segun Tarjeta de Credito';
  end;
  if tpopago.ItemIndex=4 then begin
    observ.Text:='Financiado sin Interes en ' + trim(edit2.text) + ' pagos iguales y consec. de $' + trim(valcuota.text);
  end;
  if tpopago.ItemIndex=5 then begin
   observ.Text:='Pago Contado ' + NumToPesos(trim(valcuota.text)) + ' $' + trim(valcuota.text);
  end;
  valcuota.SetFocus;
end;

procedure TVen_ParcelaMayorista.TARJETAExit(Sender: TObject);
begin
if TARJETA.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe la Tarjeta Ingresada!!',mterror,[mbok],0);
  TARJETA.SetFocus;
end;
end;

procedure TVen_ParcelaMayorista.NroCuotaExit(Sender: TObject);
var tot:real;
begin
  if (trim(NroCuota.Text) = '') OR (trim(NroCuota.Text) = '00') OR (trim(NroCuota.Text) = '0') then begin
    messagedlgpos('Error!! Nro de Cuota Ingresado Incorrectamente.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
    NroCuota.SetFocus;
  end
  else begin
   tot:= strtofloat(saldo.Text) / strtoint(nrocuota.Text);
   edit3.Text:=floattostr(tot);
  end;
end;

procedure TVen_ParcelaMayorista.NroCuotaKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then NroCb.SetFocus
 else begin
  if ( StrScan('0123456789',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;
end;

procedure TVen_ParcelaMayorista.NROCBKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then ftarje.SetFocus
else begin
  if ( StrScan('0123456789.',Key) <> nil ) or  ( Key = Char(VK_BACK) ) then
   else Key := #0;
  end;
end;

procedure TVen_ParcelaMayorista.TARJETAKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then tittarje.SetFocus;
end;

procedure TVen_ParcelaMayorista.NROCBExit(Sender: TObject);
begin
if (trim(NROCB.Text) = '') OR (trim(NROCB.Text) = '0') then begin
  messagedlgpos('Error!! Nro de Comprobante Ingresado Incorrectamente.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  NROCB.SetFocus;
end;
end;

procedure TVen_ParcelaMayorista.bancoKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then titcheq.SetFocus;
end;

procedure TVen_ParcelaMayorista.E1KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then E2.SetFocus
 else begin
  if ( StrScan('ABCDEFGHIJKLMNÑOPQRSTUVWXYZ',Key) <> nil ) or  ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;
end;

procedure TVen_ParcelaMayorista.E2KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then fcheque.SetFocus
else begin
  if ( StrScan('1234567890',Key) <> nil ) or  ( Key = Char(VK_BACK) ) then
   else Key := #0;
  end;
end;

procedure TVen_ParcelaMayorista.ftarjeKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then edit3.SetFocus;
end;

procedure TVen_ParcelaMayorista.ftarjeExit(Sender: TObject);
var fec:Tdatetime;
begin
try
 fec:=strtodate(trim(ftarje.Text));
except
  messagedlgpos('La fecha es Erronea!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  ftarje.SetFocus;
end;
end;

procedure TVen_ParcelaMayorista.FchequeExit(Sender: TObject);
var fec:Tdatetime;
begin
try
 fec:=strtodate(trim(Fcheque.Text));
except
  messagedlgpos('La fecha es Erronea!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  Fcheque.SetFocus;
end;
end;

procedure TVen_ParcelaMayorista.fpagochequeExit(Sender: TObject);
var fec:Tdatetime;
begin
try
 fec:=strtodate(trim(fpagocheque.Text));
 coloca1(14);
except
  messagedlgpos('La fecha es Erronea!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  fpagocheque.SetFocus;
end;
end;

procedure TVen_ParcelaMayorista.FchequeKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then fpagocheque.SetFocus;
end;

procedure TVen_ParcelaMayorista.fpagochequeKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then begin
  observ.Text:='Pago S/Cheque ' + trim(e1.Text) + '-' + trim(e2.Text) + ' de banco: ' +  trim(banco.Text)
  + ' de fecha: ' + trim(fcheque.Text) + ' con importe de $'+ trim(e5.Text);
  gdatos.ActivePage:=gdatos.Pages[0];
  observ.SetFocus
 end;
end;

procedure TVen_ParcelaMayorista.E5KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then observ.SetFocus
  else begin
    if ( StrScan('0123456789.',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
    else Key := #0;
  end;
  observ.Text:='Pago S/Cheque ' + trim(e1.Text) + '-' + trim(e2.Text) + ' de banco: ' +  trim(banco.Text)
  + ' de fecha: ' + trim(fcheque.Text) + ' con importe de $'+ trim(e5.Text);
  gdatos.ActivePage:=gdatos.Pages[0];
end;

procedure TVen_ParcelaMayorista.E5Exit(Sender: TObject);
begin
 if (trim(E5.text)='') or (trim(E5.text)='0') then begin
  messagedlg('EL Valor Ingresado del Cheque No es Válido',mterror,[mbok],0);
  E5.text:='00000.00';
  E5.SetFocus;
 end
 else begin
  coloca1(14);
 end;
end;

procedure TVen_ParcelaMayorista.Edit3Exit(Sender: TObject);
begin
  if (trim(Edit3.text)='') or (trim(Edit3.text)='0') then begin
   messagedlg('EL Valor Ingresado del Cheque No es Válido',mterror,[mbok],0);
   Edit3.text:='00000.00';
   Edit3.SetFocus;
  end
  else begin
  // coloca1(14);
  end;
end;

procedure TVen_ParcelaMayorista.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then //OBSERV.SetFocus
   if button2.Enabled then  button2.Click
 else begin
  if ( StrScan('0123456789',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
  else Key := #0;
 end;
 observ.Text:='Pago S/Tarjeta ' + trim(tarjeta.Text) + ' en ' +  trim(nrocuota.Text) + ' cuotas s/comprobante: ' + trim(nrocb.Text)
             + ' de fecha: ' + trim(ftarje.Text) + ' con importe de $'+ trim(edit3.Text);
end;

procedure TVen_ParcelaMayorista.titcheqKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then E1.SetFocus;
end;

procedure TVen_ParcelaMayorista.tittarjeKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then nrocuota.SetFocus;
end;

procedure TVen_ParcelaMayorista.BORRAClick(Sender: TObject);
var u,p:integer;
begin
 fecha.Text:=strcut(fec_system(),10);
 for p:=0 to grillat.ColCount-1 do
    for u:=1 to grillat.RowCount-1 do grillat.Cells[p,u]:='';
  grillat.RowCount:=2;

  preciop.Text:='00000.00';     dprecio.Text:='00000.00';
  saldop.Text:='00000.00';      tpopago.ItemIndex:=0;
  importee.Text:='00000.00';

  d16.Clear;      d15.Clear;
  d17.Clear;      idventa.Clear;
  codigo.Clear;
  saldo.Text:='00000.00';
  edit2.Text:='0';  valcuota.Text:='0';
  observ.Clear;

  tarjeta.ItemIndex:=0;   tittarje.Clear;
  nrocuota.Text:='00';    nrocb.Text:='0';
  ftarje.Clear;           edit3.Text:='0000.00';
  grupotarje.Visible:=false;

  banco.ItemIndex:=0;   titcheq.Clear;
  e1.Text:='A';         e2.Text:='000000000000';
  fcheque.Clear;        fpagocheque.Clear;
  e5.Text:='0000.00';   grupocheq.Enabled:=false;

  edit1.Text:='00000000000';
  agrega2.Enabled:=false;
  modifica2.Enabled:=false;
  quita2.Enabled:=false;
  borra2.Enabled:=false;

  d6.Clear;      d4.Clear;
  d3.Clear;      d8.Clear;
  d2.Clear;      d1.Clear;
  d5.Clear;      d13.Clear;
  d4.Clear;      dc.Clear;

  DataSource1.DataSet.Free;
  DataSource4.DataSet.Free;

  for p:=0 to grilla5.ColCount-1 do
    for u:=1 to grilla5.RowCount-1 do grilla5.Cells[p,u]:='';
  grilla5.RowCount:=2;

  nrocredito.Text:='000000000';
  cb1.Checked:=false;
  capital.Clear;
  intereses.Clear;
  intertot.Clear;
  total1.Clear;
  coef.Clear;
  interes.Clear;

  PC1.ActivePage:=PC1.Pages[0];
  odni.Text:='00000000';
  laaccion.Clear;
  elsector.ItemIndex:=0;
  elsector.SetFocus;
  BGUARDAR.Enabled :=FALSE;
end;

procedure TVen_ParcelaMayorista.bancoExit(Sender: TObject);
begin
if banco.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Banco Ingresada!!',mterror,[mbok],0);
  banco.SetFocus;
end;
end;

procedure TVen_ParcelaMayorista.PorcenExit(Sender: TObject);
begin
if Porcen.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe Porcentaje de Descuento Ingresado!!',mterror,[mbok],0);
  Porcen.SetFocus;
end
end;

procedure TVen_ParcelaMayorista.PorcenKeyPress(Sender: TObject; var Key: Char);
var tot:real;
begin
 if key = #13 then begin
  Key := #0;
  if trim(porcen.text) <> '0' then begin
   tot:= strtofloat(dprecio.Text) * strtoint(porcen.text)/ 100;
   d17.Text:=floattostr(tot);
   saldo.Text:=floattostr(tot);
   valcuota.Text:=floattostr(tot);
  end
  else begin
   d17.Text:=dprecio.Text;
   saldo.Text:=dprecio.Text;
   valcuota.Text:=dprecio.Text;
  end;
  tpopago.SetFocus
 end
 else begin
  if ( StrScan('0123456789',Key) <> nil ) or  ( Key = Char(VK_BACK) ) then
  else Key := #0;
 end;
end;

procedure TVen_ParcelaMayorista.PorcenChange(Sender: TObject);
var tot:real;
begin
 if trim(porcen.text) <> '0' then begin
  tot:= strtofloat(dprecio.Text) * strtoint(porcen.text)/ 100;
  d17.Text:=floattostr(tot);
  saldo.Text:=floattostr(tot);
  valcuota.Text:=floattostr(tot);
 end
 else begin
  d17.Text:=dprecio.Text;
  saldo.Text:=dprecio.Text;
  valcuota.Text:=dprecio.Text;
 end;
end;

procedure TVen_ParcelaMayorista.titcheqExit(Sender: TObject);
begin
if trim(titcheq.Text) = '' then begin
  messagedlg('Error!! No hay Titular del Cheque Ingresado.',mterror,[mbok],0);
  titcheq.SetFocus
end;
end;

procedure TVen_ParcelaMayorista.preciopExit(Sender: TObject);
begin
 if trim(preciop.text)=''  then begin
  messagedlg('EL Valor Ingresado No es Válido',mterror,[mbok],0);
  preciop.SetFocus;
 end
 else begin
   If StrToFloat(trim(preciop.text)) <= 0 then begin
      messagedlg('EL Valor Ingresado No es Válido',mterror,[mbok],0);
      preciop.SetFocus;
   end;
 end;
end;

procedure TVen_ParcelaMayorista.preciopKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
   dprecio.SetFocus;
 end
 else begin
  if ( StrScan('0123456789.',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
  else Key := #0;
 end;
end;

procedure TVen_ParcelaMayorista.VALCUOTAKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  if trim(codigo.Text)='FINANCIADO SIN INTERES' then begin
     coloca1(5);
     tipopago:=7;
  end;
  if trim(codigo.Text)='CONTADO'  then  begin
    coloca1(14);
    tipopago:=2;
  end;
  if trim(codigo.Text)='CUENTA CORRIENTE'  then  begin
    coloca1(14);
    tipopago:=2;
  end;
  if trim(codigo.Text)='FINANCIADO' then begin
    coloca1(16);
    tipopago:=8;
  end;
  if trim(codigo.Text)='CHEQUE' then begin
   coloca1(14);
    tipopago:=4;
  end;
  if trim(codigo.Text)='TARJETA DE CREDITO' then begin
    coloca1(14);
    tipopago:=3;
  end;
  if trim(codigo.Text)='CUENTA CORRIENTE'  then  begin
    coloca1(14);
    tipopago:=2;
  end;
  if tpopago.ItemIndex=0 then BEGIN
   if nroopcion=1 then observ.Text:='Pago Contado ' + NumToPesos(trim(valcuota.text)) + ' $' + trim(valcuota.text);
   //if nroopcion=2 then observ.Text:='Cesion a Titulo gratuito ' + NumToPesos(trim(valcuota.text)) + ' $' + trim(valcuota.text);
   //if nroopcion=3 then observ.Text:='Transferencia S/Importe: ' + NumToPesos(trim(valcuota.text)) + ' $' + trim(valcuota.text);
   observ.SetFocus;
  END;
  if tpopago.ItemIndex=1 then begin
   observ.Text:='Precio de Venta $' + trim(dprecio.Text) +  ', Entrega $' + trim(importee.Text)
   +',Saldo de $' + trim(saldo.text)  + ' en ' + trim(edit2.text) + ' pagos iguales y consec. de $' + trim(valcuota.text);
   observ.SetFocus;
  end;
  if tpopago.ItemIndex=2 then begin
   banco.SetFocus;
   observ.Text:='Pago segun CHEQUE ';
  end;
  if tpopago.ItemIndex=3 then begin
   tarjeta.SetFocus;
   observ.Text:='Pago segun Tarjeta de Credito';
  end;
  if tpopago.ItemIndex=4 then begin
   observ.Text:='Pago segun Financiado sin Interes en '  + trim(edit2.text) + ' pagos iguales y consec. de $' + trim(valcuota.text);
   observ.SetFocus;
  end;
  if tpopago.ItemIndex=5 then begin
   observ.Text:='Pago Cuenta Corriente  ' + NumToPesos(trim(valcuota.text)) + ' $' + trim(valcuota.text);
   observ.SetFocus;
  end;
 end;
end;

procedure TVen_ParcelaMayorista.RvDPrint(Sender: TObject);
var posfx,posfy,posfin,pos_y,salto:double;
    hoja,m,t:integer;
   Imagen3:TBitMap;

   Function Logo(posx,posy:double;vaf:integer):double;
   var Imagen1:TBitMap;
       Fuente,PathLogo:string;
       Tamanio,hoja:integer;
   begin
    with RvD do begin
     Imagen1 := TBitMap.Create;
     PathLogo:=modulo2.path_todo + '\Imagenes\logo_carmelo.jpg';
     if FileExists(PathLogo) then begin
       Image1.Picture.LoadFromFile(PathLogo);
       Imagen1.Assign(Image1.Picture.Graphic);
       BaseReport.PrintBitmapRect(posx+5,posy+5,posx+50,posy+20,Imagen1);
     end;
     Imagen1.Free;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+20);
     Fuente:=modulo2.INI1.ReadString('Titulo3 Facturas','Fuente','Arial Black');
     try
       Tamanio:=strtoint(modulo2.INI1.ReadString('Titulo3 Facturas','Tamaño','10'));
     except
       Tamanio:=10;
     end;
     BaseReport.SetFont(Fuente,Tamanio);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+50,posy+15,'Servicios & Mandatos S.A.');
     BaseReport.PrintXY(posx+140,posy+15,modulo2.INI1.ReadString('Titulo3 Facturas','Titulo0','')+ ' - Parque de los Recuerdos');
     BaseReport.SetFont('Arial Black',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+30);
    end;
    Logo:=posy+20;
   end;

   Function Datos(posx,posy:double):double;
   var posn,salto:double;
       j,mn,m,t:integer;
       Imagen2:TBitMap;
   begin
    with RvD do begin
      Imagen2 := TBitMap.Create;  // creo la variable Imagen1
      salto:=5;
      BaseReport.RoundRect(posx+60,posy+11,posx+130,posy+16,5,5);
      if nroopcion=1 then BaseReport.PrintXY(posx+70,posy+15,'DATOS DE LA VENTA');
      //if nroopcion=2 then BaseReport.PrintXY(posx+70,posy+15,'DATOS DE LA CESION GRATUITA');
      //if nroopcion=3 then BaseReport.PrintXY(posx+70,posy+15,'DATOS DE LA TRANSFERENCIA');
      BaseReport.SetFont('Arial',9);
      BaseReport.PrintXY(posx+4,posy+20,'Nº Accion:');
      BaseReport.PrintXY(posx+40,posy+20,'Nº Caja:');
      BaseReport.PrintXY(posx+75,posy+20,'Sector:');
      BaseReport.PrintXY(posx+95,posy+20,'Parcela:');
      BaseReport.PrintXY(posx+130,posy+20,'Plaza:');
      BaseReport.PrintXY(posx+4,posy+25,'Forma Pago:');
      BaseReport.PrintXY(posx+80,posy+25,'Precio Contado:');
      BaseReport.PrintXY(posx+122,posy+25,'Precio Financiado:');
      BaseReport.PrintXY(posx+4,posy+30,'Gestor:');
      BaseReport.SetFont('Arial',8);
      BaseReport.PrintXY(posx+19,posy+30,elcob);
      BaseReport.SetFont('Arial Black',8);
      BaseReport.PrintXY(posx+25,posy+25,trim(codigo.Text));
      BaseReport.PrintXY(posx+105,posy+25,trim(preciop.Text));
      BaseReport.PrintXY(posx+150,posy+25,trim(dprecio.Text));
      BaseReport.PrintXY(posx+19,posy+20,trim(d1.Text));
      BaseReport.PrintXY(posx+53,posy+20,trim(d20.Text));
      BaseReport.PrintXY(posx+88,posy+20,trim(d3.Text));
      BaseReport.PrintXY(posx+109,posy+20,trim(d5.Text));
      BaseReport.PrintXY(posx+140,posy+20,trim(d4.Text));
      posy:=posy + 20;
      BaseReport.RoundRect(posx+60,posy+11,posx+130,posy+16,5,5);
      BaseReport.PrintXY(posx+70,posy+15,'FORMA DE PAGO DE LA VENTA');
      BaseReport.SetFont('Arial',9);
      BaseReport.PrintXY(posx+4,posy+20,'Saldo:');
      BaseReport.PrintXY(posx+70,posy+20,'Cant. Cuotas:');
      BaseReport.PrintXY(posx+100,posy+20,'Valor Coutas:');
      BaseReport.PrintXY(posx+4,posy+25,'Observ.:');
      if nroopcion=1 then  BaseReport.PrintXY(posx+150,posy+20,'Fecha Venta:');
      //if nroopcion=2 then  BaseReport.PrintXY(posx+145,posy+20,'Fecha Cesion:');
      //if nroopcion=3 then  BaseReport.PrintXY(posx+137,posy+20,'Fecha Transferencia:');
      BaseReport.SetFont('Arial Black',7);
      BaseReport.PrintXY(posx+22,posy+20,'$ ' +trim(saldo.Text));
      BaseReport.PrintXY(posx+90,posy+20,trim(edit2.Text));
      BaseReport.PrintXY(posx+123,posy+20,'$ ' + trim(valcuota.Text));
      BaseReport.PrintXY(posx+173,posy+20,trim(fecha.Text));
      BaseReport.PrintXY(posx+22,posy+25,trim(observ.Text));
      if grupocheq.Visible then begin
       posy := posy + 5;
       BaseReport.SetFont('Arial',9);
       BaseReport.PrintXY(posx+4,posy+25,'Banco:');
       BaseReport.PrintXY(posx+70,posy+25,'Titular:');
       BaseReport.PrintXY(posx+140,posy+25,'Nro Cheque:');
       BaseReport.PrintXY(posx+4,posy+30,'Fecha Cheque:');
       BaseReport.PrintXY(posx+70,posy+30,'Fecha Cobro:');
       BaseReport.PrintXY(posx+130,posy+30,'Importe:');
       BaseReport.SetFont('Arial Black',8);
       BaseReport.PrintXY(posx+22,posy+25,trim(banco.Text));
       BaseReport.PrintXY(posx+83,posy+25,trim(titcheq.Text));
       BaseReport.PrintXY(posx+163,posy+25,trim(e1.Text) + '-' + trim(e2.Text));
       BaseReport.PrintXY(posx+29,posy+30,trim(fcheque.Text));
       BaseReport.PrintXY(posx+90,posy+30,trim(fpagocheque.Text));
       BaseReport.PrintXY(posx+153,posy+30,'$ ' + trim(e5.Text));
      end;
      if grupotarje.Visible then begin
       posy := posy + 5;
       BaseReport.SetFont('Arial',9);
       BaseReport.PrintXY(posx+4,posy+25,'Tarjeta:');
       BaseReport.PrintXY(posx+70,posy+25,'Titular:');
       BaseReport.PrintXY(posx+150,posy+25,'NroCuota:');
       BaseReport.PrintXY(posx+4,posy+30,'Comprobante:');
       BaseReport.PrintXY(posx+70,posy+30,'Fecha Cobro:');
       BaseReport.PrintXY(posx+135,posy+30,'Importe:');
       BaseReport.SetFont('Arial Black',8);
       BaseReport.PrintXY(posx+22,posy+25,trim(tarjeta.Text));
       BaseReport.PrintXY(posx+80,posy+25,trim(tittarje.Text));
       BaseReport.PrintXY(posx+168,posy+25,trim(nrocuota.Text));
       BaseReport.PrintXY(posx+26,posy+30,trim(nrocb.Text));
       BaseReport.PrintXY(posx+90,posy+30,trim(ftarje.Text));
       BaseReport.PrintXY(posx+153,posy+30,'$ ' + trim(edit3.Text));
      end;
      posy:=posy + 25;
      BaseReport.SetFont('Arial Black',9);
      BaseReport.RoundRect(posx+60,posy+11,posx+130,posy+16,5,5);
      BaseReport.PrintXY(posx+77,posy+15,'Lista de Titulares');
      BaseReport.Rectangle(posx+4,posy+18,posx+200,posy+22);
      BaseReport.SetFont('Arial',8);
      BaseReport.PrintXY(posx+5,posy+21,'TipoDoc');
      BaseReport.PrintXY(posx+18,posy+21,'Nº Dni');
      BaseReport.PrintXY(posx+35,posy+21,'Nombre');
      BaseReport.PrintXY(posx+95,posy+21,'Domicilio');
      BaseReport.PrintXY(posx+159,posy+21,'Telefonos');
      posn:=posy + 22;
      for j:=1  to GRILLAT.RowCount-1   do begin
       salto:=j*4;
       BaseReport.SetFont('Arial',8);
       BaseReport.PrintXY(posx+5,posn+salto,trim(GRILLAT.Cells[3,j]));
       BaseReport.PrintXY(posx+19,posn+salto,trim(GRILLAT.Cells[4,j]));
       BaseReport.PrintXY(posx+36,posn+salto,trim(GRILLAT.Cells[2,j]));
       BaseReport.PrintXY(posx+95,posn+salto,trim(GRILLAT.Cells[5,j]));
       BaseReport.PrintXY(posx+160,posn+salto,trim(GRILLAT.Cells[13,j]));
      end;
      posn:=posn + salto + 1;
      BaseReport.Rectangle(posx+4,posy+18,posx+200,posn);
      BaseReport.Rectangle(posx+17,posy+18,posx+200,posn);
      BaseReport.Rectangle(posx+34,posy+18,posx+200,posn);
      BaseReport.Rectangle(posx+94,posy+18,posx+200,posn);
      BaseReport.Rectangle(posx+159,posy+18,posx+200,posn);
    end;
   end;

   Function Mostrar2(posx,posy:double):double;
      var a,y,pos,maxfil:integer;
      sd,sd1,posn,posw:double;
      tot,maxfila,val:real;
   begin
    posn:=posy + 5;
    posw:=posx + 4;
    with RvD do begin
      BaseReport.Rectangle(posx+4,posy+2,posx+90,posy+100);
      BaseReport.SetFont('Arial Black',9);
      BaseReport.PrintXY(posw+5,posn+4,'REMANSO DE PAZ S.A.');
      BaseReport.SetFont('Arial Black',7);
      BaseReport.PrintXY(posw+5,posn+8,'Parque de los Recuerdos');
      BaseReport.SetFont('Arial',9);
      BaseReport.PrintXY(posw+5,posn+16,'TITULO:');
      BaseReport.SetFont('Arial Black',12);
      BaseReport.PrintXY(posw+20,posn+16,trim(d1.Text));
      BaseReport.SetFont('Arial',9);
      BaseReport.PrintXY(posw+5,posn+22,'Sector:');
      BaseReport.SetFont('Arial Black',12);
      BaseReport.PrintXY(posw+18,posn+22,trim(d3.Text));
      BaseReport.SetFont('Arial',9);
      BaseReport.PrintXY(posw+30,posn+22,'Parcela Nº:');
      BaseReport.SetFont('Arial Black',12);
      BaseReport.PrintXY(posw+48,posn+22,trim(d5.Text));
      BaseReport.SetFont('Arial',9);
      BaseReport.PrintXY(posw+5,posn+28,'TITULAR:');
      BaseReport.SetFont('Arial Black',9);
      BaseReport.PrintXY(posw+5,posn+32,trim(GRILLAT.Cells[2,1]));
      BaseReport.SetFont('Arial',9);
      BaseReport.PrintXY(posw+5,posn+37,'Fecha Cesión:');
      BaseReport.SetFont('Arial Black',9);
      BaseReport.PrintXY(posw+28,posn+37,trim(fecha.Text));
      BaseReport.SetFont('Arial',9);
      BaseReport.PrintXY(posw+5,posn+43,'Domicilio:');
      BaseReport.SetFont('Arial Black',10);
      BaseReport.PrintXY(posw+5,posn+50,trim(GRILLAT.Cells[5,1]));
      BaseReport.SetFont('Arial',9);
      BaseReport.PrintXY(posw+5,posn+61,'Telefono:');
      BaseReport.SetFont('Arial',9);
      BaseReport.PrintXY(posw+5,posn+66,trim(GRILLAT.Cells[13,1]));
    end;
   end;

   Function Mostrar3(posx,posy:double):double;
      var a,y,pos,maxfil,j:integer;
      sd,sd1,posn,posw:double;
      tot,maxfila,val:real;
   begin
    posn:=posy + 5;
    posw:=posx + 4;
    with RvD do begin
     BaseReport.SetFont('Arial Black',9);
     BaseReport.RoundRect(posx+60,posy+11,posx+130,posy+16,5,5);
     BaseReport.PrintXY(posx+62,posy+15,'Detalle de Finaciacion de la Venta' + trim(tpopago.Text));
     BaseReport.Rectangle(posx+4,posy+18,posx+200,posy+22);
     BaseReport.SetFont('Arial',8);
     BaseReport.PrintXY(posx+5,posy+21,'NroCuota');
     BaseReport.PrintXY(posx+27,posy+21,'Vencimiento Cuota');
     BaseReport.PrintXY(posx+62,posy+21,'Importe Cuota');
     posn:=posy + 22;
     for j:=1  to GRILLA5.RowCount-1   do begin
      salto:=j*4;
      BaseReport.SetFont('Arial',8);
      BaseReport.PrintXY(posx+5,posn+salto,trim(GRILLA5.Cells[0,j]));
      BaseReport.PrintXY(posx+27,posn+salto,trim(GRILLA5.Cells[2,j]));
      BaseReport.PrintXY(posx+62,posn+salto, '$ ' + trim(GRILLA5.Cells[5,j]));
     end;
     posn:=posn + salto + 1;
     BaseReport.Rectangle(posx+4,posy+18,posx+200,posn);
     BaseReport.Rectangle(posx+25,posy+18,posx+200,posn);
     BaseReport.Rectangle(posx+59,posy+18,posx+200,posn);
    end;
   end;

   Function Logo1(posx,posy:double;vaf:integer):double;
   var Imagen1:TBitMap;
       Fuente,PathLogo:string;
       Tamanio,hoja:integer;
   begin
    with RvD do begin
     Imagen1 := TBitMap.Create;
     PathLogo:=modulo2.path_todo + '\Imagenes\logo_carmelo.jpg';
     if FileExists(PathLogo) then begin
      Image1.Picture.LoadFromFile(PathLogo);
      Imagen1.Assign(Image1.Picture.Graphic);
      BaseReport.PrintBitmapRect(posx+5,posy+5,posx+50,posy+20,Imagen1);
     end;
     Imagen1.Free;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+20);
     Fuente:=modulo2.INI1.ReadString('Titulo3 Facturas','Fuente','Arial Black');
     try
      Tamanio:=strtoint(modulo2.INI1.ReadString('Titulo3 Facturas','Tamaño','10'));
     except
      Tamanio:=10;
     end;
     BaseReport.SetFont(Fuente,Tamanio);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+50,posy+15,'Servicios & Mandatos S.A.');
     BaseReport.PrintXY(posx+140,posy+15,modulo2.INI1.ReadString('Titulo3 Facturas','Titulo0','')+ ' - Parque de los Recuerdos');
     BaseReport.SetFont('Arial Black',12);
     BaseReport.FontColor:=clBlack;
     //BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+30);
     BaseReport.PrintXY(posx+5,posy+26,'EXCLUSIVAMENTE P/CONTROL GERENCIAL E INFORMATICO');
     BaseReport.PrintXY(posx+5,posy+30,'SIN EXCEPCION Y DE CARACTER OBLIGATORIO');
     BaseReport.PrintXY(posx+5,posy+35,tipocomprob);

     //BaseReport.PrintXY(posx+5,posy+28,'EXCLUSIVAMENTE P/CONTROL ADMINISTRATIVO SIN EXCEPCION Y DE CARACTER OBLIGATORIO');
     BaseReport.SetFont('Arial ',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+39,'OPERADOR VENTA: ' + MODULO2.nom_usu + '  FechaHora: ' + Fec_System());
    end;
    Logo1:=posy+25;
   end;

begin
  posfx:=6;
  posfy:=5;
  salto:=4;
  hoja:=1;
  posfy:=Logo(posfx,posfy,hoja);
  posfy:=Datos(posfx,posfy);
  if tpopago.ItemIndex =1 then begin
   posfy:=Mostrar3(posfx,posfy+110);
   posfy:=Mostrar2(posfx,posfy+150);
  end
  else posfy:=Mostrar2(posfx,posfy+120);

  hoja:=hoja+1;
  RvD.BaseReport.NewPage;
  posfx:=6;
  posfy:=5;
  salto:=4;
  posfy:=Logo1(posfx,posfy,hoja);
  posfy:=posfy+ 10;
  posfy:=Datos(posfx,posfy);
  if tpopago.ItemIndex =1 then begin
   posfy:=Mostrar3(posfx,posfy+110);
   posfy:=Mostrar2(posfx,posfy+150);
  end ;
end;

procedure TVen_ParcelaMayorista.recibonroKeyPress(Sender: TObject;
  var Key: Char);
begin
//if key = #13 then OBSERV.SetFocus;
end;

procedure TVen_ParcelaMayorista.E2Exit(Sender: TObject);
begin
if (trim(E2.Text) = '') OR (trim(E2.Text) = '000000000000') OR (trim(E2.Text) = '0') then begin
  messagedlgpos('Error!! Nro de Cheque Ingresado Incorrectamente.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  E2.SetFocus;
end;
end;

procedure TVen_ParcelaMayorista.JvBitBtn1Click(Sender: TObject);
begin
  Rvs.SystemPrinter.Copies :=2;
  NroOpc:=5;
  RvS.Execute;
end;

procedure TVen_ParcelaMayorista.JvBitBtn2Click(Sender: TObject);
begin
  Rvs.SystemPrinter.Copies :=2;
  NroOpc:=7;
  RvS.Execute;
end;

procedure TVen_ParcelaMayorista.EXPORTARClick(Sender: TObject);
begin
 rvd.Execute;
end;

procedure TVen_ParcelaMayorista.actuClick(Sender: TObject);
begin
 tipocomprob:='Segun pago ' + trim(tpotalon.Text) + ' - ' + StrFill(PV.Text,3,'0','') + '-' + StrFill(elcomprob.Text,8,'0','');
 grupoimp.Enabled :=true;
end;

procedure TVen_ParcelaMayorista.TPOTALONExit(Sender: TObject);
begin
 if TPOTALON.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe un Tipo de Comprobante Valido!!',mterror,[mbok],0);
  TPOTALON.SetFocus;
 end;
end;

procedure TVen_ParcelaMayorista.PVExit(Sender: TObject);
begin
 if PV.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe un Tipo de Punto de Venta Valido!!',mterror,[mbok],0);
  PV.SetFocus;
 end;
end;

procedure TVen_ParcelaMayorista.elcomprobChange(Sender: TObject);
begin
 actu.Enabled :=true;
end;

procedure TVen_ParcelaMayorista.elcomprobExit(Sender: TObject);
begin
 if (trim(elcomprob.Text) = '00000000') or (trim(elcomprob.Text) = '')  then begin
  messagedlg('ERROR!!... El N° de Comprobante es invalido',mterror,[mbok],0);
  elcomprob.SetFocus;
 end;
end;

procedure TVen_ParcelaMayorista.TPOTALONKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
    Key := #0;
    pv.SetFocus;
 end;
end;

procedure TVen_ParcelaMayorista.PVKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
    Key := #0;
    elcomprob.SetFocus;
 end;
end;

procedure TVen_ParcelaMayorista.elcomprobKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then begin
    Key := #0;
    actu.SetFocus;
  end
  else begin
    if ( StrScan('0123456789',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
     else Key := #0;
  end;
end;

procedure TVen_ParcelaMayorista.VALCUOTAExit(Sender: TObject);
begin
 if (trim(VALCUOTA.text)='')  or (trim(VALCUOTA.text)='0') then begin
  messagedlg('EL Valor de la Cuota No es Válido',mterror,[mbok],0);
  VALCUOTA.SetFocus;
 end;
end;

end.


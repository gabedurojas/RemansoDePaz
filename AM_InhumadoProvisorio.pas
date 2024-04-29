unit AM_InhumadoProvisorio;

interface

uses
  Classes, Windows, Messages, SysUtils, Variants,  Graphics, ExtCtrls,
  RpDefine,RpBase, RpSystem, DB, ComCtrls, ToolWin, JvExStdCtrls,
  JvGroupBox, Mask, Grids, JvExGrids, JvStringGrid, JvgGroupBox, StdCtrls,
  Buttons, JvExButtons, JvBitBtn, Controls, JvgPage, ADODB,
  midas, StrUtils,DBClient,Forms,ClaseFunciones,ClaseParcelasInhumados,
  ClaseClientes,DateUtils,ClaseParcelasInhumadosTestigos,Unidad,
  ClaseTiposSectores, WSDLIntf,Dialogs,ClaseTiposServiciosNivel,
  ClaseParcelasServicios,ClaseParcelasServiciosDeudas,
  ClaseParcelasInhumadosDetalle, ClaseParcelasMovimientosDiarrioDetalle,
  ClaseParcelasServiciosDetalle, JvSimLogic, JvEdit, JvValidateEdit,RpRenderPDF,
  RpRender, DBCtrls;

type LasFilas = array[1..2] of integer;
type HackTable = class(TClientDataSet);
type THackStringGrid = class(TStringGrid);        
type
  TAM_InhuProvisorio = class(TForm)
    Barra1: TStatusBar;
    DataSource1: TDataSource;
    PC1: TJvgPageControl;
    TabSheet1: TTabSheet;
    todos: TRichEdit;
    TabSheet8: TTabSheet;
    RvActa: TRvSystem;
    Image1: TImage;
    RvSol: TRvSystem;
    RvOrden: TRvSystem;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    BORRA: TJvBitBtn;
    ToolButton3: TToolButton;
    Sale: TJvBitBtn;
    JvgGroupBox2: TJvgGroupBox;
    Label52: TLabel;
    Edit1: TEdit;
    Button2: TJvBitBtn;
    NewCliente: TJvBitBtn;
    Label53: TLabel;
    lostestigos: TComboBox;
    Label51: TLabel;
    Parentezco: TComboBox;
    Agrega2: TJvBitBtn;
    Modifica2: TJvBitBtn;
    grillaTestigos: TJvStringGrid;
    Borra2: TJvBitBtn;
    Quita2: TJvBitBtn;
    impform: TJvgGroupBox;
    grillaformu: TJvStringGrid;
    ImpActa: TJvBitBtn;
    ImpOrdServ: TJvBitBtn;
    ToolButton1: TToolButton;
    RvDep: TRvSystem;
    GroupBox1: TGroupBox;
    RDniTit: TRadioButton;
    RAccion: TRadioButton;
    ElSector: TComboBox;
    LB1: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    LaAccion: TComboBox;
    ODNI: TEdit;
    Edit2: TEdit;
    Busca: TJvBitBtn;
    PC3: TJvgPageControl;
    TabSheet4: TTabSheet;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label43: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label73: TLabel;
    dnitit: TEdit;
    buscliente: TJvBitBtn;
    cuift: TEdit;
    tipodoct: TEdit;
    nomt: TEdit;
    domt: TEdit;
    barriot: TEdit;
    provt: TEdit;
    religiont: TEdit;
    naciot: TEdit;
    estcivilt: TEdit;
    JvgGroupBox1: TJvgGroupBox;
    Label47: TLabel;
    Label11: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    nroacc: TEdit;
    nroacta: TEdit;
    sector: TEdit;                    
    parcela: TEdit;
    codplaza: TEdit;
    plaza: TEdit;
    Idclien: TEdit;
    TabSheet5: TTabSheet;
    Label21: TLabel;
    Label6: TLabel;
    Label28: TLabel;
    Label7: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label74: TLabel;
    dnis: TEdit;
    JvBitBtn3: TJvBitBtn;
    cuifs: TEdit;
    tipodocs: TEdit;
    noms: TEdit;
    doms: TEdit;
    barrios: TEdit;
    provs: TEdit;
    tels: TEdit;
    TabSheet3: TTabSheet;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label75: TLabel;
    dnir: TEdit;
    Button5: TJvBitBtn;
    cuifr: TEdit;
    tipodocr: TEdit;
    nomr: TEdit;
    domr: TEdit;
    barrior: TEdit;
    provr: TEdit;
    telr: TEdit;
    TabSheet9: TTabSheet;
    JvgGroupBox6: TJvgGroupBox;
    GrillaT: TJvStringGrid;
    PC2: TJvgPageControl;
    TabSheet6: TTabSheet;
    Label20: TLabel;
    Label4: TLabel;
    Label15: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label58: TLabel;
    Label62: TLabel;
    DNIfalle: TEdit;
    Button4: TJvBitBtn;
    APEYNOM: TEdit;
    CUIF: TEdit;
    tipodoc: TEdit;
    nacio: TEdit;
    estcivil: TEdit;
    fecnac: TMaskEdit;
    edad: TEdit;
    domi: TEdit;
    datopadre: TEdit;
    datomadre: TEdit;
    religionfalle: TEdit;
    loca: TEdit;
    TabSheet7: TTabSheet;
    Label8: TLabel;
    Label14: TLabel;
    Label10: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label72: TLabel;
    Fecing: TMaskEdit;
    horasale: TMaskEdit;
    horallega: TMaskEdit;
    fecinhu: TMaskEdit;
    horafalle: TMaskEdit;
    JvgGroupBox4: TJvgGroupBox;
    Label9: TLabel;
    Label12: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label39: TLabel;
    Label54: TLabel;
    fecfalle: TMaskEdit;
    nrosec: TEdit;
    acta: TEdit;
    nrofolio: TEdit;
    nrotomo: TEdit;
    NroReligion: TJvBitBtn;
    losMedicos: TComboBox;
    diag: TComboBox;
    JvBitBtn2: TJvBitBtn;
    fecdefun: TMaskEdit;
    JvgGroupBox5: TJvgGroupBox;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label71: TLabel;
    tipoobjeto: TComboBox;
    Observa: TComboBox;
    nroobserv: TJvBitBtn;
    Label55: TLabel;
    tiposer: TComboBox;
    RadioButton1: TRadioButton;
    LasMutuales: TComboBox;
    Label5: TLabel;
    nivel1: TEdit;
    Label13: TLabel;
    cocheria: TComboBox;
    Timer1: TTimer;
    Label42: TLabel;
    NroInhumado: TEdit;
    Label50: TLabel;
    NroOrdServicio: TEdit;
    posicion1: TEdit;
    LaObserv: TEdit;
    Label57: TLabel;
    nacios: TEdit;
    Label61: TLabel;
    estcivils: TEdit;
    Edit5: TEdit;
    TabSheet2: TTabSheet;
    grillaobjetos: TStringGrid;
    GUARDA: TJvBitBtn;
    RvD: TRvSystem;
    RvRenderPDF1: TRvRenderPDF;
    TabSheet10: TTabSheet;
    panelNroOrden: TJvGroupBox;
    Label79: TLabel;
    Label56: TLabel;
    Label63: TLabel;
    Label78: TLabel;
    Label80: TLabel;
    Label82: TLabel;
    JvBitBtn1: TJvBitBtn;
    Edit3: TEdit;
    ImpSolInhu: TJvBitBtn;
    ImpDepTransi: TJvBitBtn;
    Edit4: TEdit;
    PrecioXn: TEdit;
    PrecioL: TEdit;
    precioche: TEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    tpopago: TComboBox;
    Edit6: TEdit;
    VALCUOTA: TEdit;
    GrupoCheq: TGroupBox;
    Label81: TLabel;
    LB12: TLabel;
    LB3: TLabel;
    LB5: TLabel;
    Label83: TLabel;
    banco: TComboBox;
    E1: TEdit;
    E2: TEdit;
    Fcheque: TMaskEdit;
    titcheq: TEdit;
    grupoTarje: TGroupBox;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label89: TLabel;
    TARJETA: TComboBox;
    NROCB: TJvValidateEdit;
    NroCuota: TEdit;
    ftarje: TMaskEdit;
    tittarje: TEdit;
    laobserva: TEdit;
    Panel1: TPanel;
    Label88: TLabel;
    Label90: TLabel;
    TPOTALON: TComboBox;
    actu: TBitBtn;
    Label91: TLabel;
    TPOTALON1: TComboBox;
    Label92: TLabel;
    PV: TComboBox;
    PV1: TComboBox;
    Label93: TLabel;
    Label94: TLabel;
    elcomprob: TEdit;
    elcomprob1: TEdit;
    CBMutual: TCheckBox;
    GroupBox3: TGroupBox;
    Panel2: TPanel;
    JvSIMConnector4: TJvSIMConnector;
    Label95: TLabel;
    Label96: TLabel;
    JvSIMConnector1: TJvSIMConnector;
    Label97: TLabel;
    impactacircu: TJvBitBtn;
    Edit11: TEdit;
    Edit7: TEdit;
    GroupBox2: TGroupBox;
    Label98: TLabel;
    Label99: TLabel;
    cb: TCheckBox;
    JvBitBtn5: TJvBitBtn;
    chofer: TDBEdit;
    CUIF3: TDBEdit;
    dominio: TEdit;
    cierra: TJvBitBtn;
    Label100: TLabel;
    Label101: TLabel;
    procedure Coloca1(nro:byte);
    procedure FormActivate(Sender: TObject);
    procedure RTituloClick(Sender: TObject);
    procedure RAccionClick(Sender: TObject);
    procedure BuscaClick(Sender: TObject);
    procedure JvBitBtn3Click(Sender: TObject);
    procedure ODNIKeyPress(Sender: TObject; var Key: Char);
    procedure actaExit(Sender: TObject);
    procedure nrofolioExit(Sender: TObject);
    procedure nrotomoExit(Sender: TObject);
    procedure NroReligionClick(Sender: TObject);
    procedure GUARDAClick(Sender: TObject);
    procedure saleClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure fecnacExit(Sender: TObject);
    procedure FecingExit(Sender: TObject);
    procedure fecfalleExit(Sender: TObject);
    procedure JvBitBtn2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Agrega2Click(Sender: TObject);
    procedure lostestigosKeyPress(Sender: TObject; var Key: Char);
    procedure ParentezcoKeyPress(Sender: TObject; var Key: Char);
    procedure FecingKeyPress(Sender: TObject; var Key: Char);
    procedure horasaleKeyPress(Sender: TObject; var Key: Char);
    procedure horallegaKeyPress(Sender: TObject; var Key: Char);
    procedure nrosecKeyPress(Sender: TObject; var Key: Char);
    procedure actaKeyPress(Sender: TObject; var Key: Char);
    procedure nrofolioKeyPress(Sender: TObject; var Key: Char);
    procedure nrotomoKeyPress(Sender: TObject; var Key: Char);
    procedure fecfalleKeyPress(Sender: TObject; var Key: Char);
    procedure horafalleKeyPress(Sender: TObject; var Key: Char);
    procedure losMedicosKeyPress(Sender: TObject; var Key: Char);
    procedure diagKeyPress(Sender: TObject; var Key: Char);
    procedure NewClienteClick(Sender: TObject);
    procedure Modifica2Click(Sender: TObject);
    procedure Quita2Click(Sender: TObject);
    procedure Borra2Click(Sender: TObject);
    procedure BORRAClick(Sender: TObject);
    procedure fecdefunExit(Sender: TObject);
    procedure fecdefunKeyPress(Sender: TObject; var Key: Char);
    procedure RvActaPrint(Sender: TObject);
    procedure RvOrdenPrint(Sender: TObject);
    procedure ImpOrdServClick(Sender: TObject);
    procedure losMedicosExit(Sender: TObject);
    procedure diagExit(Sender: TObject);
    procedure ImpSolInhuClick(Sender: TObject);
    procedure RvSolPrint(Sender: TObject);
    procedure grillaTestigosClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure nroobservClick(Sender: TObject);
    procedure ImpDepTransiClick(Sender: TObject);
    procedure RvDepPrint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lostestigosExit(Sender: TObject);
    procedure ParentezcoExit(Sender: TObject);
    procedure ObservaExit(Sender: TObject);
    procedure ObservaKeyPress(Sender: TObject; var Key: Char);
    procedure ElSectorExit(Sender: TObject);
    procedure ElSectorKeyPress(Sender: TObject; var Key: Char);
    procedure LaAccionExit(Sender: TObject);
    procedure LaAccionKeyPress(Sender: TObject; var Key: Char);
    procedure fecinhuKeyPress(Sender: TObject; var Key: Char);
    procedure fecinhuExit(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure LasMutualesExit(Sender: TObject);
    procedure LasMutualesKeyPress(Sender: TObject; var Key: Char);
    procedure tipoobjetoExit(Sender: TObject);
    procedure tipoobjetoKeyPress(Sender: TObject; var Key: Char);
    procedure nivel1Exit(Sender: TObject);
    procedure nivel1KeyPress(Sender: TObject; var Key: Char);
    procedure cocheriaExit(Sender: TObject);
    procedure cocheriaKeyPress(Sender: TObject; var Key: Char);
    procedure posicion1Exit(Sender: TObject);
    procedure posicion1KeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
    procedure Label79Click(Sender: TObject);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure LaObservKeyPress(Sender: TObject; var Key: Char);
    procedure fecnacKeyPress(Sender: TObject; var Key: Char);
    procedure tiposerExit(Sender: TObject);
    procedure tiposerKeyPress(Sender: TObject; var Key: Char);
    procedure grillaformuClick(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4Exit(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure Edit6Exit(Sender: TObject);
    procedure VALCUOTAExit(Sender: TObject);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure VALCUOTAKeyPress(Sender: TObject; var Key: Char);
    procedure bancoExit(Sender: TObject);
    procedure bancoKeyPress(Sender: TObject; var Key: Char);
    procedure titcheqExit(Sender: TObject);
    procedure titcheqKeyPress(Sender: TObject; var Key: Char);
    procedure E1KeyPress(Sender: TObject; var Key: Char);
    procedure E2Exit(Sender: TObject);
    procedure E2KeyPress(Sender: TObject; var Key: Char);
    procedure FchequeExit(Sender: TObject);
    procedure FchequeKeyPress(Sender: TObject; var Key: Char);
    procedure TARJETAExit(Sender: TObject);
    procedure TARJETAKeyPress(Sender: TObject; var Key: Char);
    procedure tittarjeExit(Sender: TObject);
    procedure tittarjeKeyPress(Sender: TObject; var Key: Char);
    procedure NroCuotaExit(Sender: TObject);
    procedure NroCuotaKeyPress(Sender: TObject; var Key: Char);
    procedure NROCBExit(Sender: TObject);
    procedure NROCBKeyPress(Sender: TObject; var Key: Char);
    procedure RvDAfterPrint(Sender: TObject);
    procedure tpopagoExit(Sender: TObject);
    procedure tpopagoKeyPress(Sender: TObject; var Key: Char);
    procedure ftarjeKeyPress(Sender: TObject; var Key: Char);
    procedure ftarjeExit(Sender: TObject);
    procedure PrecioXnChange(Sender: TObject);
    procedure PrecioLChange(Sender: TObject);
    procedure preciocheChange(Sender: TObject);
    procedure laobservaKeyPress(Sender: TObject; var Key: Char);
    procedure tpopagoChange(Sender: TObject);
    procedure PrecioXnKeyPress(Sender: TObject; var Key: Char);
    procedure PrecioLKeyPress(Sender: TObject; var Key: Char);
    procedure preciocheKeyPress(Sender: TObject; var Key: Char);
    procedure nrosecExit(Sender: TObject);
    procedure TPOTALONExit(Sender: TObject);
    procedure TPOTALON1Exit(Sender: TObject);
    procedure actuClick(Sender: TObject);
    procedure elcomprob1Change(Sender: TObject);
    procedure TPOTALONKeyPress(Sender: TObject; var Key: Char);
    procedure elcomprobKeyPress(Sender: TObject; var Key: Char);
    procedure TPOTALON1KeyPress(Sender: TObject; var Key: Char);
    procedure elcomprobExit(Sender: TObject);
    procedure elcomprob1Exit(Sender: TObject);
    procedure elcomprob1KeyPress(Sender: TObject; var Key: Char);
    procedure PVKeyPress(Sender: TObject; var Key: Char);
    procedure PVExit(Sender: TObject);
    procedure PV1Exit(Sender: TObject);
    procedure PV1KeyPress(Sender: TObject; var Key: Char);
    procedure CBMutualClick(Sender: TObject);
    procedure horasaleExit(Sender: TObject);
    procedure horallegaExit(Sender: TObject);
    procedure horafalleExit(Sender: TObject);
    procedure CBMutualKeyPress(Sender: TObject; var Key: Char);
    procedure RDniTitClick(Sender: TObject);
    procedure RvDPrint(Sender: TObject);
    procedure cbClick(Sender: TObject);
    procedure JvBitBtn5Click(Sender: TObject);
    procedure dominioExit(Sender: TObject);
    procedure dominioKeyPress(Sender: TObject; var Key: Char);
    procedure impactacircuClick(Sender: TObject);
    procedure cbExit(Sender: TObject);
    procedure cierraClick(Sender: TObject);
  private
    gh,control:boolean;{Controla que no hubiere errores en la carga de datos}
    { Private declarations }
  public
    Resultado,nroorden,FechaActual,elperiodo,cantiinhu,ger,tipocomprob,tipocomprob1,nromutual,actacircu,numactacircu: string;
    name,adress,nrodocu,tabla,max,fecaltainhu,TTelef,ElId,cantiser,cantiseranio,elobjeto,elidserv,nroactacircu:string;
    // aca instancio la clase si la clase esta definida en el uses de la ventana
    Funciones:TFuncionesVarias;
    ac,ai,at,ct:boolean;
    Cliente:TClientes;
    ParcelasInhumados:TParcelasInhumados;
    ParcelasInhumadosTestigos:TParcelasInhumadosTestigos;
    maxi:integer;
    DataSetCli,DtCombo,DataSetT,DtComboOrdenS,DataSetNivPos,DataSet1,DtComboO:TClientDataSet; //declaro los DataSet
    IdCombos:array of array of string;
    paso:boolean;
    PosH1:Array [0..9] of Double;//Posiciones
    Camp1:Array [0..9] of Integer;//Campos a Tomar en cuenta
    TxtCamp1:Array [0..9] of String;//Textos de los Campos a Tomar en cuenta
    TMedico,TCliente,TDiag,TParentesco,TTestigo,TTiposObserv:Unidad.TablaXML;
    ParcelasServicios:TParcelasServicios;
    ParcelasServiciosDeudas:TParcelasServiciosDeudas;
    ParcelasServiciosDetalle:TParcelasServiciosDetalle;
    ParcelasInhumadosDetalle:TParcelasInhumadosDetalle;
    ParcelasMovimientosDiarrioDetalle:TParcelasMovimientosDiarrioDetalle;
    Filename: string;
  end;

var
  AM_InhuProvisorio: TAM_InhuProvisorio;

implementation

uses Modulo,Busqueda,AM_VenGenerica,AM_Clientes,ClaseTiposMedicos,ClaseParcelas,
     ClaseTiposDiagnosticos,ClaseTiposParentesco, SelecCuotas,
     ClaseTiposTestigos,ClaseSistemas,ClaseTiposObservaciones,InhumaSinServicios;

{$R *.dfm}


procedure TAM_InhuProvisorio.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TAM_InhuProvisorio.FormActivate(Sender: TObject);
var elmes,elmeses,elanio,elday,eldiaentero:string;
begin
 if not gh then begin
  gh:=true;
  setlength(IdCombos,12);
  Label78.Visible :=false;    Label80.Visible :=false;
  edit6.Visible :=false;      valcuota.Visible :=false;
  grupocheq.Visible:=false;
  grupotarje.Visible:=false;
  barra1.Panels[2].Text:=modulo2.nivel;
  FechaActual:=LeftStr(Fec_System(),10);
  Fcheque.Text:=LeftStr(Fec_System(),10);
  Ftarje.text:=LeftStr(Fec_System(),10);
  elperiodo:= strcut_midle(FechaActual,7,10) + strcut_midle(FechaActual,4,5);
  fecing.Text:=FechaActual;
  fecinhu.Text:=FechaActual;
  fecfalle.Text:=FechaActual;
  fecdefun.Text:=FechaActual;
  PC1.ActivePage:=PC1.Pages[0];
  PC1.Images:=modulo2.ImageList1;
  PC2.ActivePage:=PC2.Pages[0];
  PC3.ActivePage:=PC3.Pages[0];
  coloca1(0);    coloca1(2);
  coloca1(3);    coloca1(7);
  coloca1(8);    coloca1(14);
  coloca1(21);   coloca1(23);
  coloca1(26);   coloca1(20);
  coloca1(30);   coloca1(31);
  coloca1(33);   coloca1(34);
  //Raccion.OnClick(sender);
   raccion.Checked :=true;
  odni.SetFocus;
  tpopago.ItemIndex :=0;
  grillaTestigos.Cells[0,0]:='Orden';               grillaTestigos.Cells[1,0]:='Id';
  grillaTestigos.Cells[2,0]:='Nombre';              grillaTestigos.Cells[3,0]:='Dni';
  grillaTestigos.Cells[4,0]:='Domicilio';           grillaTestigos.Cells[5,0]:='TipoTestigo';
  grillaTestigos.Cells[6,0]:='Parentesco';          grillaTestigos.Cells[7,0]:='NroT';
  grillaTestigos.Cells[8,0]:='NroP';                grillaTestigos.Cells[9,0]:='MDF';
  grillaTestigos.Cells[10,0]:='Cuif';
  grillaformu.Cells[0,0]:='Nro.Formulario';         grillaformu.Cells[1,0]:='Detalle';
  grillaformu.Cells[2,0]:='SeImprime';              grillaformu.Cells[3,0]:='Selecc.';
  GrillaT.Cells[0,0]:='Orden';                      GrillaT.Cells[1,0]:='NroDNI';
  GrillaT.Cells[2,0]:='Nombre';                     GrillaT.Cells[3,0]:='TipoDNI';
  GrillaT.Cells[4,0]:='TipoTitular';                GrillaT.Cells[5,0]:='Domicilio';
  GrillaT.Cells[6,0]:='NroT';                       GrillaT.Cells[7,0]:='MDF';
  GrillaT.Cells[8,0]:='Cuif';                       GrillaT.Cells[9,0]:='FecNac';
  GrillaT.Cells[10,0]:='Nacionalidad';              GrillaT.Cells[11,0]:='EstCivil';
  GrillaT.Cells[12,0]:='Ciudad';
  //JvBitBtn1.Enabled :=false;
  ImpDepTransi.Enabled :=false;
  impsolinhu.Enabled:=false;
  lasmutuales.Visible :=false;
  Panel1.Visible :=false;
  GroupBox3.Visible :=false;
  Filename:= modulo2.path_todo + '\Formularios\ActadeDepositoTransitorioenPanteon.jpg';
  //Panel2.Visible :=false;
  actu.Enabled :=false;
 end;
end;

procedure TAM_InhuProvisorio.Coloca1(nro:byte);
var InhuSinServ: TInhuSinServ;
var t,y:integer;
    NroDni,IdHabitante,NroAccion,DniTitular,DniFallecido,idcliente,idhabi,nrogestion:variant;
    razonsocial,NombreTitular,NombreFallecido,fechafallecimiento,sec:string;
    TiposMedicos:TTiposMedicos;
    Cliente:TClientes;
    TiposDiagnosticos:TTiposDiagnosticos;
    ParcelasServicios:TParcelasServicios;
    TiposSectores:TTiposSectores;
    Parcelas:TParcelas;
    TiposParantesco:TTiposParentesco;
    TiposTestigos:TTiposTestigos;
    txtw:widestring;
    Param:TWideStrings;
    Sistema:TSistemas;
    TiposObservaciones:TTiposObservaciones;
    TiposServiciosNivel:TTiposServiciosNivel;
    ct,ci:boolean;
    accio:variant;
begin
 if nro= 0 then begin
  for t:=1 to grillaformu.RowCount-1 do begin
   grillaformu.Cells[3,t] := 'X';
  end;
  impacta.Enabled:=false;
  impordserv.Enabled:=false;
  //impsolinhu.Enabled:=false;
  //impdeptransi.Enabled:=false;
 end;
 if nro=1 then begin  // buscamos los datos de la accion en servicios
  DataSetCli.Free;
  DataSetCli:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT dbo.Clientes.NroDni, dbo.Clientes.Cuif, dbo.TiposDni.Abreviatura AS TipoDoc, dbo.Clientes.IdCliente,'
  +' dbo.Clientes.RazonSocial, dbo.Paises.Nacionalidad, dbo.Clientes.Domicilio, dbo.TiposEstadoCivil.DetalleEstado AS EstadoCivil,'
  +' dbo.Barrios.DetalleBarrio, dbo.Provincias.Provincia,(SELECT telef FROM dbo.LosTelefonosClientes(dbo.Clientes.Cuif) AS LosTelefonosClientes_1) AS telef,'
  +' dbo.TiposReligion.Detalle AS Religion, dbo.ParcelasTitulares.Nivel  FROM  dbo.Parcelas INNER JOIN '
  +' dbo.ParcelasTitulares ON dbo.Parcelas.NroAccion =  dbo.ParcelasTitulares.NroAccion RIGHT OUTER JOIN '
  +' dbo.Clientes ON dbo.ParcelasTitulares.Cuif = dbo.Clientes.Cuif LEFT OUTER JOIN '
  +' dbo.TiposProfesiones ON dbo.Clientes.NroProfesion = dbo.TiposProfesiones.NroProfesion LEFT OUTER JOIN '
  +' dbo.ClientesCategoria ON dbo.Clientes.IdCategoria = dbo.ClientesCategoria.IdCategoria LEFT OUTER JOIN '
  +' dbo.CodigoPostal ON dbo.Clientes.CodigoPostal = dbo.CodigoPostal.CODIGO LEFT OUTER JOIN '
  +' dbo.Barrios ON dbo.Clientes.IdBarrio = dbo.Barrios.IdBarrio LEFT OUTER JOIN  dbo.TiposSexos ON dbo.Clientes.Sexo = dbo.TiposSexos.Sexo LEFT OUTER JOIN '
  +' dbo.Localidades ON dbo.Clientes.IdLocalidad = dbo.Localidades.IdLocalidad LEFT OUTER JOIN dbo.Provincias ON dbo.Clientes.IdProvincia = dbo.Provincias.IdProvincia LEFT OUTER JOIN '
  +' dbo.TiposReligion ON dbo.Clientes.NroReligion = dbo.TiposReligion.NroReligion LEFT OUTER JOIN '
  +' dbo.TiposEstadoCivil ON dbo.Clientes.IdEstado = dbo.TiposEstadoCivil.IdEstado LEFT OUTER JOIN '
  +' dbo.Paises ON dbo.Clientes.NroNacionalidad = dbo.Paises.IdPais LEFT OUTER ' +
  'JOIN dbo.TiposDni ON dbo.Clientes.TipoDoc = dbo.TiposDni.TipoDoc ';
  if rdnitit.Checked  then begin
    txtw:= txtw + ' WHERE  (dbo.ParcelasTitulares.NroAccion = ' + trim(nroacc.Text) + ') AND (dbo.ParcelasTitulares.Nrotipoacc = 2) AND (dbo.ParcelasTitulares.Nivel = 1)';
  end;
  if raccion.Checked  then  begin
    txtw:= txtw + ' WHERE  (dbo.ParcelasTitulares.NroAccion = ' + trim(nroacc.Text) + ') AND (dbo.ParcelasTitulares.Nrotipoacc = 2)  AND (dbo.ParcelasTitulares.Nivel = 1)';
  end;
  if RadioButton1.Checked then  begin
    txtw:= txtw + ' WHERE  (dbo.ParcelasTitulares.NroAccion = ' + trim(nroacc.Text) + ') ';
  end;
  if  Funciones.Listar(txtw,DataSetCli) then begin
    /// datos del titular
    dnitit.Text:=DataSetCli.Fields[0].AsString;
    cuift.Text:=DataSetCli.Fields[1].AsString;
    tipodoct.Text:=DataSetCli.Fields[2].asstring;
    nomt.Text:=DataSetCli.Fields[4].AsString;
    domt.Text:=DataSetCli.Fields[6].asstring;
    barriot.Text:=DataSetCli.Fields[8].AsString;
    provt.Text:=DataSetCli.Fields[9].asstring;
    religiont.Text:=DataSetCli.Fields[11].AsString;
    naciot.Text:=DataSetCli.Fields[5].AsString;
    estcivilt.Text:=DataSetCli.Fields[7].AsString;
    // datos del solicitante
    dnis.Text:=DataSetCli.Fields[0].AsString;
    cuifs.Text:=DataSetCli.Fields[1].AsString;
    tipodocs.Text:=DataSetCli.Fields[2].asstring;
    noms.Text:=DataSetCli.Fields[4].AsString;
    doms.Text:=DataSetCli.Fields[6].asstring;
    barrios.Text:=DataSetCli.Fields[8].AsString;
    provs.Text:=DataSetCli.Fields[9].asstring;
    // datos del resposable
    dnir.Text:=DataSetCli.Fields[0].AsString;
    cuifr.Text:=DataSetCli.Fields[1].AsString;
    tipodocr.Text:=DataSetCli.Fields[2].asstring;
    nomr.Text:=DataSetCli.Fields[4].AsString;
    domr.Text:=DataSetCli.Fields[6].asstring;
    barrior.Text:=DataSetCli.Fields[8].AsString;
    provr.Text:=DataSetCli.Fields[9].asstring;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador', mtError,[mbok],0);
   Funciones.Free;
 end;
 if nro=2 then begin   /// combo medicos
  losMedicos.Clear;
  DtCombo.Free;
  Dtcombo:=TClientDataSet.Create(nil);
  TiposMedicos:=TTiposMedicos.Create(nil);
  TiposMedicos.ConnectionString:=modulo2.Conexion;
  if TiposMedicos.listar('SELECT detalle,nromedico FROM TiposMedicos ORDER BY detalle',DtCombo) then begin
   SetLength(IdCombos[0],DtCombo.RecordCount);
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    losMedicos.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
    IdCombos[0,t-1]:=DtCombo.Fields[1].AsString;
   end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  TiposMedicos.Free;
  losmedicos.ItemIndex:=0;
 end;
 if nro = 3 then begin
  diag.Clear;
  DtCombo.Free;
  Dtcombo:=TClientDataSet.Create(nil);
  TiposDiagnosticos:=TTiposDiagnosticos.Create(nil);
  TiposDiagnosticos.ConnectionString:=modulo2.Conexion;
  if TiposDiagnosticos.listar('SELECT Diagnostico,NroDiagnostico FROM TiposDiagnosticos ORDER BY Diagnostico',DtCombo) then begin
   SetLength(IdCombos[1],DtCombo.RecordCount);
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    diag.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
    IdCombos[1,t-1]:=DtCombo.Fields[1].AsString;
   end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  TiposDiagnosticos.Free;
  diag.ItemIndex:=0;
 end;
 if nro=4 then begin
  DataSetCli.Free;
  DataSetCli:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT distinct dbo.Clientes.NroDni, dbo.Clientes.Cuif, dbo.TiposDni.Abreviatura AS TipoDoc, dbo.Clientes.IdCliente,'
  +' dbo.Clientes.RazonSocial, dbo.Paises.Nacionalidad, dbo.Clientes.Domicilio, dbo.TiposEstadoCivil.DetalleEstado AS EstadoCivil,'
  +' dbo.Barrios.DetalleBarrio, dbo.Provincias.Provincia,(SELECT telef FROM dbo.LosTelefonosClientes(dbo.Clientes.Cuif) AS LosTelefonosClientes_1) AS telef,'
  +' dbo.TiposReligion.Detalle AS Religion, dbo.ParcelasTitulares.Nivel  FROM  dbo.Parcelas INNER JOIN '
  +' dbo.ParcelasTitulares ON dbo.Parcelas.NroAccion =  dbo.ParcelasTitulares.NroAccion RIGHT OUTER JOIN '
  +' dbo.Clientes ON dbo.ParcelasTitulares.Cuif = dbo.Clientes.Cuif LEFT OUTER JOIN '
  +' dbo.TiposProfesiones ON dbo.Clientes.NroProfesion = dbo.TiposProfesiones.NroProfesion LEFT OUTER JOIN '
  +' dbo.ClientesCategoria ON dbo.Clientes.IdCategoria = dbo.ClientesCategoria.IdCategoria LEFT OUTER JOIN '
  +' dbo.CodigoPostal ON dbo.Clientes.CodigoPostal = dbo.CodigoPostal.CODIGO LEFT OUTER JOIN '
  +' dbo.Barrios ON dbo.Clientes.IdBarrio = dbo.Barrios.IdBarrio LEFT OUTER JOIN  dbo.TiposSexos ON dbo.Clientes.Sexo = dbo.TiposSexos.Sexo LEFT OUTER JOIN '
  +' dbo.Localidades ON dbo.Clientes.IdLocalidad = dbo.Localidades.IdLocalidad LEFT OUTER JOIN dbo.Provincias ON dbo.Clientes.IdProvincia = dbo.Provincias.IdProvincia LEFT OUTER JOIN '
  +' dbo.TiposReligion ON dbo.Clientes.NroReligion = dbo.TiposReligion.NroReligion LEFT OUTER JOIN '
  +' dbo.TiposEstadoCivil ON dbo.Clientes.IdEstado = dbo.TiposEstadoCivil.IdEstado LEFT OUTER JOIN '
  +' dbo.Paises ON dbo.Clientes.NroNacionalidad = dbo.Paises.IdPais LEFT OUTER JOIN dbo.TiposDni ON dbo.Clientes.TipoDoc = dbo.TiposDni.TipoDoc '
  +' WHERE (dbo.ParcelasTitulares.cuif = ' + IdCombos[8,lasmutuales.ItemIndex] + ') AND ((dbo.ParcelasTitulares.Nivel = 1) or (dbo.ParcelasTitulares.Nivel = 0))';
  if  Funciones.Listar(txtw,DataSetCli) then begin
   nroacc.Text:=trim(edit2.Text);
   /// datos del titular
   dnitit.Text:=DataSetCli.Fields[0].AsString;
   cuift.Text:=DataSetCli.Fields[1].AsString;
   tipodoct.Text:=DataSetCli.Fields[2].asstring;
   nomt.Text:=DataSetCli.Fields[4].AsString;
   domt.Text:=DataSetCli.Fields[6].asstring;
   barriot.Text:=DataSetCli.Fields[8].AsString;
   provt.Text:=DataSetCli.Fields[9].asstring;
   religiont.Text:=DataSetCli.Fields[11].AsString;
   naciot.Text:=DataSetCli.Fields[5].AsString;
   estcivilt.Text:=DataSetCli.Fields[7].AsString;
   // datos del solicitante
   {dnis.Text:=DataSetCli.Fields[0].AsString;
   cuifs.Text:=DataSetCli.Fields[1].AsString;
   tipodocs.Text:=DataSetCli.Fields[2].asstring;
   noms.Text:=DataSetCli.Fields[4].AsString;
   doms.Text:=DataSetCli.Fields[6].asstring;   }
   // datos del resposable
   dnir.Text:=DataSetCli.Fields[0].AsString;
   cuifr.Text:=DataSetCli.Fields[1].AsString;
   tipodocr.Text:=DataSetCli.Fields[2].asstring;
   nomr.Text:=DataSetCli.Fields[4].AsString;
   domr.Text:=DataSetCli.Fields[6].asstring;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador', mtError,[mbok],0);
   Funciones.Free;
 end;
 if nro=5 then begin
  DtComboOrdenS.Free;
  DtComboOrdenS:=TClientDataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT maximonro FROM Maximos WHERE (tabla = ''OrdenServicio'')';
  if not Funciones.Listar(txtw,DtComboOrdenS)  then
   messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
   nroorden:=DtComboOrdenS.Fields[0].AsString;
   Funciones.Free;
 end;
 if nro = 6  then begin
  DtCombo.Free;
  Dtcombo:=TClientDataSet.Create(nil);
  Parcelas:=TParcelas.Create(nil);
  Parcelas.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT dbo.Parcelas.NroAccion, dbo.Parcelas.NroActa, dbo.Parcelas.Sector,'
  + 'dbo.Parcelas.Parcela, dbo.TiposPlazas.Codigo,dbo.TiposPlazas.Detalle'
  + ' FROM dbo.Parcelas INNER JOIN dbo.TiposPlazas ON dbo.Parcelas.IdPlaza = dbo.TiposPlazas.IdPlaza'
  + ' WHERE (dbo.Parcelas.NroAccion=' + trim(nroacc.Text) + ') ORDER BY dbo.Parcelas.NroAccion';
  if Parcelas.Listar(txtw,DtCombo)  then begin
   nroacta.Text:=DtCombo.Fields[0].AsString;
   sector.Text:=DtCombo.Fields[2].AsString;
   parcela.Text:=DtCombo.Fields[3].AsString;
   codplaza.Text:=DtCombo.Fields[4].AsString;
   plaza.Text:=DtCombo.Fields[5].AsString;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Parcelas.Free;
 end;
 if nro = 7 then begin
  Parentezco.Clear;
  TParentesco:=LeeXml('TiposParantesco','');
  if length(TParentesco) <> 0 then begin
   SetLength(IdCombos[2],High(TParentesco[1]) + 1);
   for t:=0 to High(TParentesco[1])  do begin
    Parentezco.Items.Insert(t,TParentesco[1,t]);
    IdCombos[2,t]:=TParentesco[0,t];
   end;
  end
  else begin
   DtCombo.Free;
   Dtcombo:=TClientDataSet.Create(nil);
   TiposParantesco:=TTiposParentesco.Create(nil);
   TiposParantesco.ConnectionString:=modulo2.Conexion;
   if TiposParantesco.listar('SELECT NroParentesco,detalle FROM TiposParentesco ORDER BY detalle', DtCombo) then begin
    SetLength(IdCombos[2],DtCombo.RecordCount);
    for t:=1 to DtCombo.RecordCount  do begin
     DtCombo.RecNo:=t;
     Parentezco.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
     IdCombos[2,t-1]:=DtCombo.Fields[0].AsString;
    end;
   end
   else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
   TiposParantesco.Free;
  end;
  Parentezco.ItemIndex:=0;
 end;
 if nro = 8 then begin
  lostestigos.Clear;
  TTestigo:=LeeXml('TiposTestigos','');
  if length(TTestigo) <> 0 then begin
   SetLength(IdCombos[3],High(TTestigo[1]) + 1);
   for t:=0 to High(TTestigo[1])  do begin
     lostestigos.Items.Insert(t,TTestigo[1,t]);
     IdCombos[3,t]:=TTestigo[0,t];
   end;
  end
  else begin
   DtCombo.Free;
   Dtcombo:=TClientDataSet.Create(nil);
   TiposTestigos:=TTiposTestigos.Create(nil);
   TiposTestigos.ConnectionString:=modulo2.Conexion;
   if TiposTestigos.listar('SELECT Tipotestigo,detalle FROM TiposTestigos order by detalle', DtCombo) then begin
    SetLength(IdCombos[3],DtCombo.RecordCount);
    for t:=1 to DtCombo.RecordCount  do begin
     DtCombo.RecNo:=t;
     lostestigos.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
     IdCombos[3,t-1]:=DtCombo.Fields[1].AsString;
    end;
   end
   else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
   TiposTestigos.Free;
  end;
  lostestigos.ItemIndex:=0;
 end;
 if nro = 9 then begin
  DtComboOrdenS.Free;
  DtComboOrdenS:=TClientDataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT Clientes.RazonSocial FROM ParcelasInhumados inner join Clientes '
  + ' on Clientes.Cuif = ParcelasInhumados.CuifFallecido  where (NroOrdenServicio = ' + trim(edit3.Text) + ')';
  if Funciones.Listar(txtw,DtComboOrdenS)  then begin
   if not DtComboOrdenS.IsEmpty  then begin
    messagedlg('ERROR.. Nro Orden de Servicio ya Existente para el Inhumado: ' +  trim(DtComboOrdenS.Fields[0].AsString)
    + chr(13)+ 'Ingrese otro Valor',mtError,[mbok],0);
    edit3.SetFocus;
   end
   else begin
    nroorden:=trim(edit3.Text);
    JvBitBtn1.SetFocus;
   end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
 end;
 if nro = 10 then begin
 DtCombo.Free;
 Dtcombo:=TClientDataSet.Create(nil);
 Funciones:=TFuncionesVarias.Create(nil);
 Funciones.ConnectionString:=modulo2.Conexion;
 NroDni:=strtoint(strcut_midle(trim(DataSetCli.Fields[4].AsString),3,10));
 if not Funciones.Run_Fn_VistaClientes(null,'',NroDni,null,null,'',DtCombo,'',0) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  dnifalle.Text:=DtCombo.Fields[5].AsString;
  cuif.Text:=DtCombo.Fields[1].AsString;
  apeynom.Text:=DtCombo.Fields[2].AsString;
  tipodoc.Text:=DtCombo.Fields[4].AsString;
  nacio.Text:=DtCombo.Fields[9].AsString;
  estcivil.Text:=DtCombo.Fields[10].AsString;
  fecnac.Text:=DtCombo.Fields[11].AsString;
  edad.Text:=unidad.edad(strcut(Fec_System(),10),trim(fecnac.Text));
  domi.Text:=DtCombo.Fields[15].AsString;
  religionfalle.Text:=DtCombo.Fields[8].AsString;
  loca.Text:=DtCombo.Fields[13].AsString;
  Funciones.Free;
 end;
 if nro = 11 then begin
  DtCombo.Free;
  DtCombo:=TClientDataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if raccion.Checked then txtw:='SELECT * FROM VParcelasInhumadosxAccion where (NroAccion = ' + trim(odni.Text) + ')';
  if (rdnitit.Checked) or (RadioButton1.Checked) then txtw:='SELECT * FROM VParcelasInhumadosxAccion where (NroAccion = ' + trim(edit2.Text) + ')';
  if Funciones.Listar(txtw,DtCombo)  then begin
   if not DtCombo.IsEmpty  then begin
    InhuSinServ:= TInhuSinServ.create(self);
    try
     InhuSinServ.NroOpcion:=4;
     InhuSinServ.Caption:='Listado de Inhumados';
     InhuSinServ.nroacc:=trim(edit2.Text);
     InhuSinServ.ShowModal;
    finally
     nroinhumado.Text:=InhuSinServ.IdHabitante;
     dnifalle.Text:=InhuSinServ.DniFallecido;
     apeynom.Text:=InhuSinServ.NombreFallecido;
     cuif.Text:=InhuSinServ.CuifFallecido;
     tipodoc.Text:=InhuSinServ.Abreviatura;
     nacio.Text:=InhuSinServ.Nacionalidad;
     estcivil.Text:=InhuSinServ.DetalleEstado;
     fecnac.Text:=InhuSinServ.FechaNacimiento;
     edad.Text:=InhuSinServ.Edad;
     religionfalle.Text:=InhuSinServ.Detalle;
     loca.text:=InhuSinServ.Localidad;
     domi.Text:=InhuSinServ.Domicilio;
     fecing.Text:=InhuSinServ.FechaIngreso;
     horasale.Text:=InhuSinServ.HoraSalida;
     horallega.Text:=InhuSinServ.HoraLlegada;
     fecinhu.Text:=InhuSinServ.FechaInhumacion;
     horafalle.Text:=InhuSinServ.HoraFallecimiento;
     fecfalle.Text:=InhuSinServ.FechaFallecimiento;
     nrosec.Text:=InhuSinServ.NroSeccion;
     acta.Text:=InhuSinServ.NroActa;
     nrofolio.Text:=InhuSinServ.NroFolio;
     nrotomo.Text:=InhuSinServ.NroTomo;
     fecdefun.Text:=InhuSinServ.FecActaDefuncion;
     losmedicos.ItemIndex:=losmedicos.Items.IndexOf(trim(InhuSinServ.Medico));
     diag.ItemIndex:=diag.Items.IndexOf(trim(InhuSinServ.Diagnostico));
     tipoobjeto.ItemIndex:=tipoobjeto.Items.IndexOf(trim(InhuSinServ.Objeto));
     nivel1.Text:=InhuSinServ.Nivel;
     posicion1.Text:=InhuSinServ.Posicion;
     NroOrdServicio.text:=InhuSinServ.NroOrdenServ;
     InhuSinServ.destroy;
    end;
    busca.SetFocus;
   end
   else button4.Click;;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
   Funciones.Free;
 end;
 if nro = 12 then begin
  DtCombo.Free;
  Dtcombo:=TClientDataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  idcliente:=null;razonsocial:='';//NroDni:=trim(dnis.Text);
  NroDni:=strtoint(strcut_midle(trim(DataSetCli.Fields[9].AsString),3,10));
  if not Funciones.Run_Fn_VistaClientes(idcliente,razonsocial,NroDni,null,null,'',DtCombo,'',0) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  cuifs.Text:=DtCombo.Fields[1].AsString;
  dnis.Text:=DtCombo.Fields[5].AsString;
  noms.Text:=DtCombo.Fields[2].AsString;
  tipodocs.Text:=DtCombo.Fields[4].AsString;
  doms.Text:=DtCombo.Fields[15].AsString;
  barrios.Text:=DtCombo.Fields[14].AsString;
  provs.Text:=DtCombo.Fields[12].AsString;
  Funciones.Free;
 end;
 if nro = 13 then begin  //cargo la grilla de los testigos
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  nrogestion:=4;
  if not Funciones.Run_Fn_VistaLosFormularios(nrogestion,DtCombo,'',0) then
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
 if nro=14 then begin   /// combo observaciones
  observa.Clear;
  TTiposObserv:=LeeXml('TiposObservaciones','');
  if length(TTiposObserv) <> 0 then begin
   SetLength(IdCombos[4],High(TTiposObserv[1]) + 1);
   for t:=0 to High(TTiposObserv[1])  do begin
    observa.Items.Insert(t,TTiposObserv[1,t]);
    IdCombos[4,t]:=TTiposObserv[0,t];
   end;
  end
  else begin
   DtCombo.Free;
   Dtcombo:=TClientDataSet.Create(nil);
   TiposObservaciones:=TTiposObservaciones.Create(nil);
   TiposObservaciones.ConnectionString:=modulo2.Conexion;
   if TiposObservaciones.listar('SELECT IdObserv,DetalleObserv FROM TiposObservaciones order by DetalleObserv',DtCombo) then begin
    SetLength(IdCombos[4],DtCombo.RecordCount);
    for t:=1 to DtCombo.RecordCount  do begin
     DtCombo.RecNo:=t;
     observa.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
     IdCombos[4,t-1]:=DtCombo.Fields[1].AsString;
    end;
   end
   else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
   TiposObservaciones.Free;
  end;
  observa.ItemIndex:=0;
 end;
 if nro = 15 then begin  // cargo el responsable
  DtCombo.Free;
  Dtcombo:=TClientDataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  idcliente:=null;razonsocial:='';
  NroDni:=strtoint(strcut_midle(trim(DataSetCli.Fields[8].AsString),3,10));
  if not Funciones.Run_Fn_VistaClientes(idcliente,razonsocial,NroDni,null,null,'',DtCombo,'',0) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  cuifr.Text:=DtCombo.Fields[1].AsString;
  dnir.Text:=DtCombo.Fields[5].AsString;
  nomr.Text:=DtCombo.Fields[2].AsString;
  tipodocr.Text:=DtCombo.Fields[4].AsString;
  domr.Text:=DtCombo.Fields[15].AsString;
  barrior.Text:=DtCombo.Fields[14].AsString;
  provr.Text:=DtCombo.Fields[12].AsString;
  Funciones.Free;
 end;
 if nro=16 then begin   /// para cargar grilla testigos
  DataSetNivPos.Free;
  DataSetNivPos:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if (RadioButton1.Checked) or (RDniTit.Checked)  then begin
   accio:=trim(edit2.Text);
  end;
  if RAccion.Checked  then begin
   accio:=trim(odni.Text);
  end;
  elobjeto:=leftstr(trim(tipoobjeto.text),1);
  txtw:='SELECT * FROM AsignaPosicionInhumados (' + accio + ' , ' + chr(39) + elobjeto + chr(39) + ')';
  if not Funciones.Listar(txtw,DataSetNivPos) then begin
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  end;
  nivel1.Text:=trim(DataSetNivPos.Fields[0].AsString);
  posicion1.Text:=trim(DataSetNivPos.Fields[1].AsString);
  Funciones.Free;
  nivel1.SetFocus;
 end;
 if nro=17 then begin   /// Titulares activos
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if not Funciones.Run_Fn_VistaParcelasResponsables(strtoint(trim(nroacc.Text)),DtCombo,'where tipoaccionista =2 order by nivel' ,0) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  for t:=0 to grillat.ColCount-1 do
  for y:=1 to grillat.RowCount-1 do grillat.Cells[t,y]:='';
  for t:=1 to DtCombo.RecordCount  do begin
   DtCombo.RecNo:=t;
   grillat.RowCount:=t+1;
   grillat.Cells[0,t]:=completa1(inttostr(t),2,'0');
   grillat.Cells[1,t]:=trim(DtCombo.Fields[0].AsString);
   grillat.Cells[2,t]:=trim(DtCombo.Fields[3].AsString);
   grillat.Cells[3,t]:=trim(DtCombo.Fields[2].AsString);
   grillat.Cells[4,t]:=trim(DtCombo.Fields[4].AsString);
   grillat.Cells[5,t]:=trim(DtCombo.Fields[5].AsString);
   grillat.Cells[8,t]:=trim(DtCombo.Fields[1].AsString);
  end;
  Funciones.Free;
 end;
 if nro=18 then begin
  DtCombo.Free;
  Dtcombo:=TClientDataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT * FROM CantServiciosxMes ('+ chr(39) + strcut(Fec_System(),10) + chr(39)+ ',0)';
  if Funciones.Listar(txtw,DtCombo) then begin
   cantiser:=DtCombo.Fields[0].AsString;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  funciones.Free;
 end;
 if nro=19 then begin
  DtCombo.Free;
  Dtcombo:=TClientDataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT * FROM CantServiciosxMes ('+ chr(39) + strcut(Fec_System(),10) + chr(39)+ ',1)';
  if Funciones.Listar(txtw,DtCombo) then begin
   cantiseranio:=DtCombo.Fields[0].AsString;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  funciones.Free;
 end;
 if nro = 20 then begin
  tiposer.Clear;
  DtCombo.Free;
  Dtcombo:=TClientDataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  //txtw:='SELECT Detalle,NroTipoServicio FROM TiposServicios where NroTipoServicio not  in (4,6,2,3) order by 2';
  txtw:='SELECT Detalle,NroTipoServicio FROM TiposServicios where NroTipoServicio not  in (2) order by 2';
  if Funciones.Listar(txtw,DtCombo) then begin
   SetLength(IdCombos[9],DtCombo.RecordCount);
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    tiposer.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
    IdCombos[9,t-1]:=DtCombo.Fields[1].AsString;
   end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  funciones.Free;
  tiposer.ItemIndex:=0;
 end;
 if nro = 21 then begin //Combo cocheria
  cocheria.Clear;
  DtCombo.Free;
  Dtcombo:=TClientDataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT NroCocheria, Detalle FROM TiposCocherias';
  if Funciones.Listar(txtw,DtCombo) then begin
   SetLength(IdCombos[6],DtCombo.RecordCount);
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    cocheria.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
    IdCombos[6,t-1]:=DtCombo.Fields[0].AsString;
   end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  funciones.Free;
  cocheria.ItemIndex:=0;
 end;
 if nro=22 then begin   //precio del servicio por nivel
  DataSet1.Free;
  DataSet1:=TClientDataSet.Create(nil);
  TiposServiciosNivel:=TTiposServiciosNivel.Create(nil);
  TiposServiciosNivel.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT PrecioContado,PrecioLista,PrecioCheque,anticipo FROM TiposServiciosNivel  '
   + '  where (NroTipoServicio=1) and (Nivel=' + trim(nivel1.Text) + ') AND (Activo = 1)';
  if TiposServiciosNivel.Listar(txtw,DataSet1)  then begin
   if trim(trim(nivel1.Text)) = '1' then begin
     if ((nromutual= '50002') or (nromutual='50010')) then begin
      precioxn.Text:='0.01';
      preciol.Text:='0.01';
      precioche.Text:='0.01';
     end
     else begin
      precioxn.Text:=trim(DataSet1.Fields[0].AsString);
      preciol.Text:=trim(DataSet1.Fields[1].AsString);
      precioche.Text:=trim(DataSet1.Fields[2].AsString);
     end;
   end
   else begin
     precioxn.Text:=trim(DataSet1.Fields[0].AsString);
     preciol.Text:=trim(DataSet1.Fields[1].AsString);
     precioche.Text:=trim(DataSet1.Fields[2].AsString);
   end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
 end;
 if nro=23 then begin
  ELSECTOR.Clear;
  DtCombo.Free;
  Dtcombo:=TClientDataSet.Create(nil);
  TiposSectores:=TTiposSectores.Create(nil);
  TiposSectores.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT Sector FROM TiposSectores';
  if TiposSectores.Listar(txtw,DtCombo) then begin
   SetLength(IdCombos[5],DtCombo.RecordCount);
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    ELSECTOR.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
    IdCombos[5,t-1]:=DtCombo.Fields[0].AsString;
   end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  TiposSectores.Free;
  ELSECTOR.ItemIndex:=0;
 end;
 if nro=24 then begin   /// carga de las acciones
  LAACCION.Clear;
  DtCombo.Free;
  Dtcombo:=TClientDataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  sec:=IdCombos[5,ELSECTOR.ItemIndex];
  txtw:='SELECT dbo.Parcelas.Parcela FROM dbo.Parcelas INNER JOIN '
  + ' dbo.TiposPlazas ON dbo.Parcelas.IdPlaza = dbo.TiposPlazas.IdPlaza '
  + ' WHERE (dbo.Parcelas.Sector = ' + chr(39) + sec + chr(39) + ') ORDER BY dbo.Parcelas.Parcela ';
  if Funciones.Listar(txtw,Dtcombo) then begin
   SetLength(IdCombos[7],Dtcombo.RecordCount);
   for t:=1 to Dtcombo.RecordCount  do begin
    Dtcombo.RecNo:=t;
    LAACCION.Items.Insert(t-1,trim(Dtcombo.Fields[0].AsString));
    IdCombos[7,t-1]:=Dtcombo.Fields[0].AsString;
   end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  funciones.Free;
  LAACCION.ItemIndex:=0;
 end;
 if nro=25 then begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  sec:=IdCombos[5,ELSECTOR.ItemIndex];
  txtw:='SELECT * FROM Fn_VistaParcelas (null,' + chr(39) + sec + chr(39) + ',' +
    'null,null,0)  where (parcela = '+  trim(laaccion.Text)+')';
  if not Funciones.Listar(txtw,DtCombo) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  edit2.Text:=DtCombo.Fields[0].AsString;
  Funciones.Free;
 end;
 if nro =  26 then begin
  lasmutuales.Clear;
  DtCombo.Free;
  Dtcombo:=TClientDataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT distinct clientes.RazonSocial,tit.Cuif '
  +' FROM ParcelasTitulares tit inner join Clientes on Clientes.Cuif = tit.Cuif WHERE (NroTipoAcc = 3)';
  if Funciones.Listar(txtw,DtCombo)then begin
   SetLength(IdCombos[8],DtCombo.RecordCount);
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    lasmutuales.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
    IdCombos[8,t-1]:=DtCombo.Fields[1].AsString;
   end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  lasmutuales.ItemIndex:=0;
 end;
 if nro = 27 then begin
  ParcelasInhumados:=TParcelasInhumados.Create(nil);
  ParcelasInhumados.ConnectionString:=modulo2.Conexion;
  txtw:='UPDATE ParcelasInhumados SET NroOrdenServicio= ' + nroorden
  + ' WHERE (IdHabitante=' + ElId + ') and (nroaccion='+ trim(nroacc.Text) +')';
  ci:=ParcelasInhumados.ListarSinResp(txtw);
  ParcelasInhumados.Free;
 end;
 if nro=28 then begin   //precio del servicio por nivel
  DtCombo.Free;
  DtCombo:=TClientDataSet.Create(nil);
  TiposServiciosNivel:=TTiposServiciosNivel.Create(nil);
  TiposServiciosNivel.ConnectionString:=modulo2.Conexion;
  if IdCombos[2,tiposer.ItemIndex]='2' then begin  /// exhumacion
   txtw:='SELECT PrecioContado,PrecioLista,PrecioCheque,anticipo FROM TiposServiciosNivel  '
   + ' where (NroTipoServicio=' + IdCombos[9,tiposer.ItemIndex] + ') and (Nivel=1) AND (Activo = 1)';
  end
  else begin
   txtw:='SELECT PrecioContado,PrecioLista,PrecioCheque,anticipo FROM TiposServiciosNivel  '
   + ' where (NroTipoServicio=' + IdCombos[9,tiposer.ItemIndex] + ') and (Nivel=' + trim(nivel1.Text) + ') AND (Activo = 1)';
  end;
  if TiposServiciosNivel.Listar(txtw,DtCombo)  then begin
   edit3.Text:=trim(DtCombo.Fields[1].AsString);
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
 end;
 if nro=29 then begin
  DtComboO.Free;
  DtComboO:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  IF (TRIM(EDIT5.Text)='5') OR (TRIM(EDIT5.Text)='2') then begin
    txtw:='SELECT idservicioobjeto,objeto,valor FROM Fn_VistaLosObjetosPrecios('+trim(edit5.text)  +',0)'
  END
  ELSE BEGIN
   txtw:='SELECT idservicioobjeto,objeto,valor FROM Fn_VistaLosObjetosPrecios('+ trim(edit5.text)  +',0)'
   + ' where (nivel = ' + trim(nivel1.Text) +')';
  END;
  if not Funciones.Listar(txtw,DtComboO) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  for t:=0 to grillaobjetos.ColCount-1 do
  for y:=1 to grillaobjetos.RowCount-1 do grillaobjetos.Cells[t,y]:='';
  for t:=1 to DtComboO.RecordCount  do begin
   DtComboO.RecNo:=t;
   grillaobjetos.RowCount:=t+1;
   grillaobjetos.Cells[0,t]:=trim(DtComboO.Fields[0].AsString);
   grillaobjetos.Cells[1,t]:=trim(DtComboO.Fields[1].AsString);
   grillaobjetos.Cells[2,t]:=trim(DtComboO.Fields[2].AsString);
  end;
 end;
 if nro=30 then begin
  banco.Clear;
  DtCombo.Free;
  Dtcombo:=TClientDataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT NroEntidad, Nombre from EntidadesBancarias WHERE (NroEntidad > 0) order by 1';
  if Funciones.Listar(txtw,DtCombo)  then  begin
   SetLength(IdCombos[10],Dtcombo.RecordCount);
   for t:=1 to Dtcombo.RecordCount  do begin
    Dtcombo.RecNo:=t;
    banco.Items.Insert(t-1,trim(Dtcombo.Fields[1].AsString));
    IdCombos[10,t-1]:=Dtcombo.Fields[0].AsString;
   end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  funciones.Free;
  banco.ItemIndex:=0;
 end;
 if nro=31 then begin
  TARJETA.Clear;
  DtCombo.Free;
  Dtcombo:=TClientDataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT DetalleTarjeta,NroTarjeta FROM TiposTarjetasCredito order by 1';
  if Funciones.Listar(txtw,DtCombo)  then  begin
   SetLength(IdCombos[11],Dtcombo.RecordCount);
   for t:=1 to Dtcombo.RecordCount  do begin
    Dtcombo.RecNo:=t;
    TARJETA.Items.Insert(t-1,trim(Dtcombo.Fields[0].AsString));
    IdCombos[11,t-1]:=Dtcombo.Fields[1].AsString;
   end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  funciones.Free;
  TARJETA.ItemIndex:=0;
 end;
 if nro=32 then begin
  DtCombo.Free;
  Dtcombo:=TClientDataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT NroAccion,Sector,Parcela,Nivel,Posicion FROM VParcelasInhumadosNew where (CuifFallecido = '+ trim(cuif.Text) + ')';
  if Funciones.Listar(txtw,DtCombo) then begin
   if not DtCombo.IsEmpty then begin
    messagedlg('ATENCION este Inhumado ya se encuentra en la Parcela' + trim(Dtcombo.Fields[2].AsString)
    + chr(13) + ' Sector: '  +trim(Dtcombo.Fields[1].AsString)  + ' Accion: '  + trim(Dtcombo.Fields[0].AsString)
    + chr(13) + ' Nivel: '  +trim(Dtcombo.Fields[3].AsString)  + ' Posicion: '  + trim(Dtcombo.Fields[4].AsString)
    + chr(13) + ' IMPOSIBLE CARGAR EL INHUMADO..',mtError,[mbok],0);
    cantiinhu:='1';
   end
   else cantiinhu:='0';
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  funciones.Free;
 end;
 if nro=33 then begin //Combo Talonarios
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

  TPOTALON1.Clear;
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
    TPOTALON1.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
   end;
  end;
  Funciones.Free;
  TPOTALON1.ItemIndex:=0;
 end;
 if nro=34 then begin //Combo Puntos de Venta
  PV.Clear;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if Funciones.listar('SELECT distinct PuntoVenta FROM ComprobantesEntregaConfig order by 1',DtCombo) then begin
   //SetLength(IdCombos[0],DtCombo.RecordCount);
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    PV.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
    //IdCombos[0,t-1]:=DtCombo.Fields[1].AsString;
   end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  PV.ItemIndex:=0;

  PV1.Clear;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if Funciones.listar('SELECT distinct PuntoVenta FROM ComprobantesEntregaConfig order by 1',DtCombo) then begin
   //SetLength(IdCombos[0],DtCombo.RecordCount);
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    PV1.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
    //IdCombos[0,t-1]:=DtCombo.Fields[1].AsString;
   end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  PV1.ItemIndex:=0;
 end;
 if nro = 35  then begin
  DtCombo.Free;
  Dtcombo:=TClientDataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT distinct Clientes.alias FROM ParcelasTitulares tit inner join Clientes on Clientes.Cuif = tit.Cuif '
   +' WHERE (tit.NroTipoAcc = 3) AND (clientes.RazonSocial = ' + chr(39) + TRIM(LASMUTUALES.Text) + chr(39) + ')';
  if Funciones.Listar(txtw,DtCombo)  then begin
   nromutual:=DtCombo.Fields[0].AsString;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    Funciones.Free;
 end;
 if nro = 36 then begin
  ParcelasInhumados:=TParcelasInhumados.Create(nil);
  ParcelasInhumados.ConnectionString:=modulo2.Conexion;
  txtw:='UPDATE ParcelasInhumados SET NroAcaCirculacion= ' + chr(39) + nroactacircu  + chr(39)
  + ' WHERE (IdHabitante=' + ElId + ') and (nroaccion='+ trim(nroacc.Text) +')';
  ci:=ParcelasInhumados.ListarSinResp(txtw);
  ParcelasInhumados.Free;
 end;
end;

procedure TAM_InhuProvisorio.RTituloClick(Sender: TObject);
begin
 //   raccion.Checked :=false;
  //rdnitit.Checked :=false;
  //cbmutual.Checked :=false;

  //label76.Visible:=true;
 // label77.Visible:=true;
  //elsector.Visible:=true;
 // laaccion.Visible:=true;
  //edit2.Visible:=true;
//  LB1.Visible:=false;
 // lasmutuales.Visible:=false;
//  ODNI.Visible:=false;
//  ODNI.Text:='00000000';
 // Busca.Enabled:=true;
//  elsector.SetFocus;
end;

procedure TAM_InhuProvisorio.RAccionClick(Sender: TObject);
begin
if raccion.Checked then begin
  //raccion.Checked :=false;
  rdnitit.Checked :=false;
  RadioButton1.Checked :=false;
  label76.Visible:=false;
  label77.Visible:=false;
  elsector.Visible:=false;
  laaccion.Visible:=false;
  lasmutuales.Visible:=false;
  lb1.Visible:=true;
  LB1.Caption:='Ingrese el Nro de Accion:';
  ODNI.Visible:=true;
  ODNI.Text:='00000000';
  Busca.Enabled:=true;
  ODNI.SetFocus;
end;
end;

procedure TAM_InhuProvisorio.BuscaClick(Sender: TObject);
var p,u,t,y:integer;
begin
  for t:=0 to grillat.ColCount-1 do
  for y:=1 to grillat.RowCount-1 do grillat.Cells[t,y]:='';

 if rdnitit.Checked  then begin
  PC3.ActivePage:=PC3.Pages[0];
  nroacc.Text:=edit2.Text;
 end;
 if raccion.Checked  then  begin
   PC3.ActivePage:=PC3.Pages[0];
  nroacc.Text:=odni.Text;
 end;
 if (rdnitit.Checked) or (raccion.Checked ) then begin
  Coloca1(1);   //  datos de las parcelas
  coloca1(17);  // cargo los titulares activos
 end;
 if RadioButton1.Checked then begin
  Coloca1(4);
  PC3.ActivePage:=PC3.Pages[1];
  JvBitBtn3.Click;
 end;
 if (trim(dnitit.Text)='') and (trim(nomt.Text)='') then begin
  messagedlgpos('ATENCION!! Accion No Transferida. Imposible Generar la Orden de Servicio',mtError,[mbok],0,screen.Width div 3,screen.Height div 3);
  busca.SetFocus;
  pc2.Enabled:=false;
 end
 else  begin
  pc2.Enabled:=true;
  Coloca1(6);   //  datos de las parcelas
  coloca1(13);  // cargamos los formularios
  PC2.ActivePage:=PC2.Pages[0];
  tiposer.SetFocus ;
 end
end;

procedure TAM_InhuProvisorio.JvBitBtn3Click(Sender: TObject);
var Busqueda:TLA_BUSQUEDA;
begin
 Busqueda:=TLA_BUSQUEDA.Create(self);
 try
  Busqueda.NroOpcion:=9;  //7
  busqueda.Edit1.Text:=trim(NROACC.Text);
  busqueda.valor:=trim(NROACC.Text);
  Busqueda.ShowModal;
  dnis.Text:=busqueda.DB1.Text;
  CUIFs.Text:=busqueda.DB2.Text;
  tipodocs.Text:=busqueda.DB3.Text;
  noms.Text:=busqueda.DB4.Text;
  doms.Text:=busqueda.DB5.Text;
  tels.Text:=busqueda.eltelef;
  barrios.Text:=busqueda.DB6.Text;
  provs.Text:=busqueda.DB7.Text;
  nacios.Text := busqueda.DB8.Text;
  estcivils.Text := busqueda.DB9.Text;
 finally
  Busqueda.Destroy;
  PC3.ActivePage:=PC3.Pages[1];
  PC2.ActivePage:=PC2.Pages[0];
  tiposer.SetFocus;
 end;
end;

procedure TAM_InhuProvisorio.ODNIKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then busca.SetFocus;
end;

procedure TAM_InhuProvisorio.actaExit(Sender: TObject);
begin
if trim(nroacta.Text)='' then nroacta.Text:='0';
end;

procedure TAM_InhuProvisorio.nrofolioExit(Sender: TObject);
begin
if trim(nrofolio.Text)='' then nrofolio.Text:='0';
end;

procedure TAM_InhuProvisorio.nrotomoExit(Sender: TObject);
begin
if trim(nrotomo.Text)='' then nrotomo.Text:='0';
end;

procedure TAM_InhuProvisorio.NroReligionClick(Sender: TObject);
var AM_Generico:TAM_Generico;
begin
 AM_Generico:=TAM_Generico.Create(self);
 try
  AM_Generico.NroOpcion:=9;
  AM_Generico.Titulo1:='Medicos';
  AM_Generico.ShowModal;
 finally
  AM_Generico.Destroy;
  Coloca1(2);
  losmedicos.SetFocus;
 end;
end;

procedure TAM_InhuProvisorio.GUARDAClick(Sender: TObject);
var el_dni:string;
var txtw,txt:widestring;
var lafecha,ct,pt:boolean;
var gf,t:integer;
begin
 ParcelasInhumados:=TParcelasInhumados.Create(nil);
 ParcelasInhumados.ConnectionString:=modulo2.Conexion;
 if noms.Text='' then begin
  messagedlgpos('Error!! Debe Ingresar el Dato del Solicitante.',mtError,[mbok],0,screen.Width div 3,screen.Height div 3);
  PC3.ActivePage:=PC3.Pages[1];
 end
 else begin
  gf:=messagedlgpos('Desea Agregar los Datos de esta Inhumacion?',mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
  if gf = 1 then begin
   if not paso then begin
    Cliente:=TClientes.Create(nil);
    Cliente.ConnectionString:=modulo2.Conexion;
    txtw:='UPDATE Clientes SET FechaNacimiento= ' + chr(39) +  trim(fecnac.Text) + chr(39)
    + ' WHERE (Cuif=' + trim(cuif.Text) + ') and (NroDni= ' + trim(dnifalle.Text) + ')';
    Cliente.ListarSinResp(txtw);
    Cliente.Free;
   end;
   ParcelasInhumados.C_NroAccion_IX1:=strtoint(nroacc.Text);
   ParcelasInhumados.C_Nivel_IX2:=strtoint(trim(nivel1.Text));
   ParcelasInhumados.C_Posicion_IX3:=strtoint(trim(posicion1.Text));
   ParcelasInhumados.C_Objeto_IX4:=strcut_midle(trim(tipoobjeto.text),1,1);
   ParcelasInhumados.C_CuifTitular_IX5:=strtoint64(trim(cuift.Text)); //strtoint64
   ParcelasInhumados.C_CuifFallecido_IX6:=strtoint64(trim(cuif.Text)); //strtoint64
   PArcelasInhumados.C_CuifSolicitante:=strtoint64(trim(cuifs.Text));  //strtoint64
   parcelasinhumados.C_CuifResponsable:=strtoint64(trim(cuifr.Text));
   PArcelasInhumados.C_FechaIngreso:=trim(fecing.Text);
   PArcelasInhumados.C_FechaFallecimiento:=trim(fecfalle.Text);
   PArcelasInhumados.C_HoraFallecimiento:=trim(horafalle.Text);
   PArcelasInhumados.C_NroDiagnostico_IX7:=strtoint(IdCombos[1,diag.ItemIndex]);
   PArcelasInhumados.C_HoraSalida:=trim(horasale.Text);
   PArcelasInhumados.C_HoraLlegada:=trim(horallega.Text);
   PArcelasInhumados.C_ActaInhumado_IX8:=strtoint(nroacta.Text);
   PArcelasInhumados.C_ObservPlaca:=trim(cocheria.Text);
   PArcelasInhumados.C_TipoServicio := strtoint(IdCombos[9,tiposer.ItemIndex]);
   PArcelasInhumados.C_NroSeccion:=strtoint(nrosec.Text);
   PArcelasInhumados.C_NroActa_IX10:=strtoint(acta.Text);
   PArcelasInhumados.C_NroFolio:=strtoint(nrofolio.Text);
   PArcelasInhumados.C_NroTomo:=trim(nrotomo.Text);
   PArcelasInhumados.C_NroMedico_IX11:=strtoint(IdCombos[0,losmedicos.ItemIndex]);
   PArcelasInhumados.C_PadreFallecido:='';//trim(datopadre.Text);
   PArcelasInhumados.C_MadreFallecido:='';//trim(datomadre.Text);
   PArcelasInhumados.C_Usu_A:=modulo2.nro_usu;
   parcelasinhumados.C_NroActaInhumado:=strtoint(DarMaximo('ActaInhumado'));//strtoint(max);  //aca se ingresa de maximo
   if trim(fecinhu.Text) = '/  /' then parcelasinhumados.C_FechaInhumacion:=''
    else parcelasinhumados.C_FechaInhumacion:=trim(fecinhu.Text);
   parcelasinhumados.C_Fecactadefuncion:=trim(fecdefun.Text);
   parcelasinhumados.C_DetalleObjeto:=trim(tipoobjeto.Text);
   parcelasinhumados.C_MotivoAnula :=trim(laobserv.Text);  /// aca meto la observacion de la inhumacion
   parcelasinhumados.C_IdObserv:=0;
   parcelasinhumados.C_Confirmado:=true;
   parcelasinhumados.C_Usu_Conf:=modulo2.nro_usu;
   parcelasinhumados.C_Fecha_Conf:=strcut(Fec_System(),10);
   ac:=ParcelasInhumados.Agrega;
   ElId:=ParcelasInhumados.Identidad;
   ParcelasInhumados.Free;
   if ac then begin
    nroorden:=DarMaximo('OrdenServicio');
    ger:='SERV. INHUMACION Orden Nro: ' +  nroorden;
    rvorden.Execute;
    coloca1(27);
    Coloca1(18);
    Coloca1(19);
    PC1.Enabled:=true;
    messagedlg('Se ha Guardado el nuevo Inhumado con Exito',mtConfirmation,[mbok],0);
    AuditAccesos('Modulo 2','INHUMADO GUARDADO CON EXITO ' + TRIM(CUIF.Text)) ;
    { }
    EDIT3.Text := nroorden;
    PC1.ActivePage:=PC1.Pages[2];
    //if (nromutual= '50002') or (nromutual='50010') then begin
    //
    //end;
    tpopago.SetFocus;
    GUARDA.Enabled:=FALSE;
    sale.Enabled :=false;
   end
   else begin
    messagedlg('Error al Guardar el nuevo Inhumado. Consulte con un Administrador',mtError,[mbok],0);
   end;
  end;
 end;
end;

procedure TAM_InhuProvisorio.saleClick(Sender: TObject);
begin
close;
end;

procedure TAM_InhuProvisorio.Button4Click(Sender: TObject);
var Busqueda:TLA_BUSQUEDA;
var control:boolean;
var txt:string;
begin
 control:=true;
 if trim(dnis.Text)='00000000' then begin
  control:=false;
  txt:='ERROR falta datos del Solicitante' + chr(13)
  + 'Por Favor complete estos datos para proseguir la carga del inhumado';
 end;

 if trim(dnir.Text)='00000000' then begin
  control:=false;
  txt:='ERROR falta datos del Responsable'+ chr(13)
  + 'Por Favor complete estos datos para proseguir la carga del inhumado';
 end;

 if not control then begin
  messagedlg(txt ,mtError,[mbok],0);
 end
 else begin
  paso:=true;
  Busqueda:=TLA_BUSQUEDA.Create(self);
  try
   Busqueda.NroOpcion:=9;
   Busqueda.Caption:='Busqueda y Seleccion de Inhumados';
   Busqueda.ShowModal;
   dnifalle.Text:=busqueda.DB1.Text;
   CUIF.Text:=busqueda.DB2.Text;
   tipodoc.Text:=busqueda.DB3.Text;
   apeynom.Text:=busqueda.DB4.Text;
   domi.Text:=busqueda.DB5.Text;
   nacio.Text:=busqueda.DB8.Text;
   estcivil.Text:=busqueda.DB9.Text;
   if busqueda.DB10.Text='' then begin
    paso:=false;
   end
   else begin
    fecnac.Text:=busqueda.DB10.Text;
    edad.Text:=floattostr(trunc((Date - StrToDate(fecnac.Text))/365));
   end;
   religionfalle.Text:=busqueda.DB11.Text;
  finally
   Busqueda.Destroy;
  end;
  coloca1(32);
  if trim(dnifalle.Text) = trim(dnitit.Text) then begin
   messagedlg('Error el Fallecido NO puede ser el Mismo Primer Titular' + chr(13)
   + 'Por Favor seleccione otra Persona o modifique los Titulares de esta Accion' ,mtError,[mbok],0);
   button4.Click;
   guarda.Enabled:=false;
  end
  else begin
   if trim(dnifalle.Text) = trim(dnis.Text) then begin
    messagedlg('Error el Fallecido NO puede ser el mismo Solicitante' + chr(13)
    + 'Por Favor seleccione otra Persona o modifique los Titulares de esta Accion' ,mtError,[mbok],0);
    button4.Click;
    guarda.Enabled:=false;
   end
   else begin
    if not paso then begin
     messagedlg('Error el Fallecido NO puede Fecha de Nacimiento Vacio' + chr(13)
     + 'Por Favor complete ese Dato para seguir con la carga de Datos...' ,mtError,[mbok],0);
     PC2.ActivePage:=PC2.Pages[0];
     fecnac.ReadOnly:=false;
     fecnac.SetFocus;
     IF NOT GUARDA.Enabled THEN guarda.Enabled:=true;
    end
    else begin
     coloca1(32);
     IF cantiinhu <> '0' then begin
      PC2.ActivePage:=PC2.Pages[0];
      tiposer.SetFocus;       dnifalle.Clear;
      CUIF.Clear;             tipodoc.Clear;
      apeynom.Clear;          domi.Clear;
      nacio.Clear;            estcivil.Clear;
      fecnac.Clear;           edad.Clear;
      PC2.Pages[1].TabVisible :=false;
      PC2.Pages[2].TabVisible :=false;
     end
     else begin
      PC2.Pages[1].TabVisible :=true;
      PC2.Pages[2].TabVisible :=true;
      fecnac.ReadOnly:=true;
      PC2.ActivePage:=PC2.Pages[1];
      fecing.SetFocus;
      IF NOT GUARDA.Enabled THEN guarda.Enabled:=true;
     end
    end;
   end;
  end;
 end;
end;

procedure TAM_InhuProvisorio.fecnacExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(FECNAC.Text));
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  fecnac.SetFocus;
end;
end;

procedure TAM_InhuProvisorio.FecingExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(Fecing.Text));
  fecinhu.Text := trim(Fecing.Text);
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  Fecing.SetFocus;
end;
end;

procedure TAM_InhuProvisorio.fecfalleExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(fecfalle.Text));
  fecdefun.Text := trim(fecfalle.Text);
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  fecfalle.SetFocus;
end;
end;

procedure TAM_InhuProvisorio.JvBitBtn2Click(Sender: TObject);
var AM_Generico:TAM_Generico;
begin
 AM_Generico:=TAM_Generico.Create(self);
 try
  AM_Generico.NroOpcion:=7;
  AM_Generico.Titulo1:='Diagnosticos';
  AM_Generico.ShowModal;
 finally
  AM_Generico.Destroy;
  Coloca1(3);
  diag.SetFocus;
 end;
end;

procedure TAM_InhuProvisorio.Button2Click(Sender: TObject);
var Busqueda:TLA_BUSQUEDA;
begin
 Busqueda:=TLA_BUSQUEDA.Create(self);
 try
  Busqueda.NroOpcion:=3;
  Busqueda.ShowModal;
  nrodocu:=busqueda.DB1.Text;
  edit1.Text:=busqueda.DB2.Text;
  name:=busqueda.DB4.Text;
  adress:=busqueda.DB5.Text;
  TTelef:=busqueda.eltelef;
 finally
  Busqueda.Destroy;
  lostestigos.SetFocus;
 end;
end;

procedure TAM_InhuProvisorio.Agrega2Click(Sender: TObject);
var t:integer;

  function busca():boolean;
    var p:integer;
  begin
    busca:=true;
  if grillaTestigos.Cells[0,1] <> '' then begin
    for p:=1 to grillaTestigos.RowCount-1 do
      if (grillaTestigos.Cells[2,p]=trim(name))
      and (grillaTestigos.Cells[3,p]=trim(nrodocu))
      and (grillaTestigos.Cells[5,p]=trim(lostestigos.Text))
      then busca:=false;
  end;
  end;

begin
 if busca() then begin
  if (grillaTestigos.RowCount > 1) and (trim(grillaTestigos.Cells[0,1])<>'') then begin
    t:=grillaTestigos.RowCount;
    grillaTestigos.RowCount:=grillaTestigos.RowCount+1;
  end
  else t:=1;
  if  grillaTestigos.RowCount = 5 then begin
   messagedlg('Error No se Puede seguir ingresando Testigos ',mtError,[mbok],0);
   grillaTestigos.Cells[0,t]:='';
   grillaTestigos.Cells[1,t]:='';
   grillaTestigos.Cells[2,t]:='';
   grillaTestigos.Cells[3,t]:='';
   grillaTestigos.Cells[4,t]:='';
   grillaTestigos.Cells[5,t]:='';
   grillaTestigos.Cells[6,t]:='';
   grillaTestigos.Cells[7,t]:='';
   grillaTestigos.Cells[8,t]:='';
   grillaTestigos.Cells[9,t]:='';
   grillaTestigos.Cells[10,t]:='';
   grillaTestigos.RowCount:=grillaTestigos.RowCount-1;
  end
  else begin
   grillaTestigos.Cells[0,t]:=completa1(inttostr(t),2,'0');
   grillaTestigos.Cells[1,t]:='?';
   grillaTestigos.Cells[2,t]:=trim(name);
   grillaTestigos.Cells[3,t]:=trim(nrodocu);
   grillaTestigos.Cells[4,t]:=trim(adress);
   grillaTestigos.Cells[5,t]:=trim(lostestigos.text);
   grillaTestigos.Cells[6,t]:=trim(parentezco.Text);
   grillaTestigos.Cells[7,t]:=trim(IdCombos[3,lostestigos.ItemIndex]);
   grillaTestigos.Cells[8,t]:=trim(IdCombos[2,parentezco.ItemIndex]);
   grillaTestigos.Cells[9,t]:='X';
   grillaTestigos.Cells[10,t]:=trim(edit1.text);
  end;
  if modifica2.Enabled = false then Agrega2.Enabled:=true;
  Agrega2.Enabled:=FALSE;
  EDIT1.Text:='00000000000';
  name:='';
  nrodocu:='';
  adress:='';
 end
 else messagedlg('ERROR!! No Puede Existir dos Testigos del mismo Tipo !!',mterror,[mbok],0);
 Button2.SetFocus;
end;

procedure TAM_InhuProvisorio.Modifica2Click(Sender: TObject);

  function busca(ht:integer):boolean;
    var p:integer;
  begin
   busca:=true;
   if grillaTestigos.Cells[0,1] <> '' then begin
    for p:=1 to grillaTestigos.RowCount-1 do
      if (grillaTestigos.Cells[2,p]=trim(name))
      and (grillaTestigos.Cells[3,p]=trim(nrodocu))
      and (grillaTestigos.Cells[5,p]=trim(lostestigos.Text))
      and (ht<>p) then busca:=false;
   end;
  end;

begin
 if busca(grillaTestigos.Row) then begin
  if grillaTestigos.Cells[1,grillaTestigos.Row] <> '?' then begin
    grillaTestigos.Cells[9,grillaTestigos.Row]:='X';
  end;
  grillaTestigos.Cells[2,grillaTestigos.Row]:=trim(name);
  grillaTestigos.Cells[3,grillaTestigos.Row]:=trim(nrodocu);
  grillaTestigos.Cells[4,grillaTestigos.Row]:=trim(adress);
  grillaTestigos.Cells[5,grillaTestigos.Row]:=trim(lostestigos.text);
  grillaTestigos.Cells[6,grillaTestigos.Row]:=trim(parentezco.Text);
  grillaTestigos.Cells[7,grillaTestigos.Row]:=trim(IdCombos[3,lostestigos.ItemIndex]);
  grillaTestigos.Cells[8,grillaTestigos.Row]:=trim(IdCombos[2,parentezco.ItemIndex]);
  grillaTestigos.Cells[10,grillaTestigos.Row]:=trim(edit1.text);
  Agrega2.Enabled:=false;
  Borra2.Enabled:=false;
  Modifica2.Enabled:=false;
  button2.SetFocus;
 end
 else messagedlg('ERROR!! No Puede Existir dos N° Teléfonos del mismo Tipo y Número!!',mterror,[mbok],0);
end;

procedure TAM_InhuProvisorio.Quita2Click(Sender: TObject);
begin
  EDIT1.Text:='00000000000';
  lostestigos.ItemIndex:=0;
  parentezco.ItemIndex:=0;
  name:='';
  nrodocu:='';
  adress:='';
  Modifica2.Enabled:=false;
  Borra2.Enabled:=false;
  Agrega2.Enabled:=true;
  Quita2.Enabled:=false;
end;

procedure TAM_InhuProvisorio.Borra2Click(Sender: TObject);
var t,p,gf:integer;
var bt:boolean;
begin
 if trim(grillaTestigos.Cells[0,1])<>'' then begin
  gf:=1;t:=0;
  if grillaTestigos.Cells[1,grillaTestigos.Row] = '?' then t:=1
  else gf:=messagedlg('Desea Borrar los datos del Testigo Seleccionado??' + chr(13)
       + 'Se eliminará definitivamente de la Base de Datos',mtWarning,[mbok,mbCancel],0);
  if gf = 1 then begin
   if t=0 then begin
    ParcelasInhumadosTestigos:=TParcelasInhumadosTestigos.Create(nil);
    ParcelasInhumadosTestigos.ConnectionString:=modulo2.Conexion;
    bt:=ParcelasInhumadosTestigos.Borrar(grillaTestigos.Cells[1,grillaTestigos.Row]);
    ParcelasInhumadosTestigos.Free;
    if bt then  begin
     messagedlg('Se ha Borrado el Testigo Correctamente',mtConfirmation,[mbok],0);
     Barra1.SimpleText:='Se ha Borrado el Testigo Correctamente';
    end
    else begin
     messagedlg('Error al Borrar el Testigo del Inhumado. Consulte con un Administrador',mtError,[mbok],0);
     Barra1.SimpleText:='Error al Borrar el Testigo';
    end;
   end;
   t:=grillaTestigos.Row;
   if (t >= 1) and (grillaTestigos.RowCount > 2) then begin
    THackStringGrid(grillaTestigos).DeleteRow(t);
   end
   else begin
    for t:=0 to grillaTestigos.ColCount-1 do grillaTestigos.Cells[t,1]:='';
   end;
  end;
  Borra2.Enabled:=false;
  Modifica2.Enabled:=false;
  button2.SetFocus;
 end;
end;

procedure TAM_InhuProvisorio.lostestigosKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  parentezco.SetFocus;
end;
end;

procedure TAM_InhuProvisorio.ParentezcoKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  Agrega2.Enabled:=true;
  Agrega2.SetFocus;
 end;
end;

procedure TAM_InhuProvisorio.FecingKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  horasale.SetFocus;
 end;
end;

procedure TAM_InhuProvisorio.horasaleKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  // JvBitBtn0.SetFocus;
  horallega.SetFocus;
 end;
end;

procedure TAM_InhuProvisorio.horallegaKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  fecinhu.SetFocus;
 end;
end;

procedure TAM_InhuProvisorio.nrosecKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  acta.SetFocus;
end;
end;

procedure TAM_InhuProvisorio.actaKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  nrofolio.SetFocus;
end;
end;

procedure TAM_InhuProvisorio.nrofolioKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  nrotomo.SetFocus;
end;
end;

procedure TAM_InhuProvisorio.nrotomoKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  fecdefun.SetFocus;
end;
end;

procedure TAM_InhuProvisorio.fecfalleKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  nrosec.SetFocus;
end;
end;

procedure TAM_InhuProvisorio.horafalleKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  fecfalle.SetFocus;
end;
end;

procedure TAM_InhuProvisorio.losMedicosKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  diag.SetFocus;
end;
end;

procedure TAM_InhuProvisorio.diagKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  tipoobjeto.SetFocus;
end;
end;

procedure TAM_InhuProvisorio.NewClienteClick(Sender: TObject);
var AM_Cli: TAM_Cli;
begin
  AM_Cli:= TAM_Cli.create(self);
  try
    AM_Cli.TipoCliente:=1;
    AM_Cli.ShowModal;
  finally
    AM_Cli.destroy;
  end;
end;

procedure TAM_InhuProvisorio.BORRAClick(Sender: TObject);
var p,u:integer;
begin
  coloca1(2);      coloca1(3);
  coloca1(7);      coloca1(8);
  dnitit.Text:='00000000';
  cuift.Text:='00000000000';
  tipodoct.Clear;         nomt.Clear;
  domt.Clear;             barriot.Clear;
  provt.Clear;            religiont.Clear;
  estcivilt.Clear;        naciot.Clear;
  nroacc.Clear;           nroacta.Text:='00';
  sector.Clear;           parcela.Clear;
  codplaza.Clear;         plaza.Clear;
  dnis.Text:='00000000';cuifs.Text:='00000000000';
  tipodocs.Clear;noms.Clear;doms.Clear;barrios.Clear;provs.Clear;
  dnifalle.Text:='00000000';apeynom.Clear;cuif.Text:='00000000000';
  tipodoc.Clear;nacio.Clear;estcivil.Clear;religionfalle.Clear;
  fecnac.Clear;edad.Clear;domi.Clear;datopadre.Clear;datomadre.Clear;
  fecing.Clear;horasale.Text:='00:00';horallega.Text:='00:00';nrosec.Text:='0';
  acta.Text:='0';nrofolio.Text:='0';nrotomo.Text:='0';fecfalle.Clear;fecinhu.Clear;
  horafalle.Text:='00:00';fecdefun.Clear;
  losmedicos.ItemIndex:=0;diag.ItemIndex:=0;tipoobjeto.ItemIndex:=0;
  nivel1.Clear;posicion1.Clear; fecdefun.Clear;
  edit1.Text:='00000000000';
  lostestigos.ItemIndex:=0;parentezco.ItemIndex:=0;cocheria.ItemIndex:=0;
  name:='';
  nrodocu:='';
  adress:='';

  for p:=0 to grillatestigos.ColCount-1 do
    for u:=1 to grillatestigos.RowCount-1 do grillatestigos.Cells[p,u]:='';
  grillatestigos.RowCount:=2;

  for p:=0 to grillaformu.ColCount-1 do
    for u:=1 to grillaformu.RowCount-1 do grillaformu.Cells[p,u]:='';
  grillaformu.RowCount:=2;

  for p:=0 to grillat.ColCount-1 do
    for u:=1 to grillat.RowCount-1 do grillat.Cells[p,u]:='';
  grillat.RowCount:=2;
  guarda.Enabled:=false;

  PC1.ActivePage:=PC1.Pages[0];
  PC3.ActivePage:=PC3.Pages[0];
  PC2.ActivePage:=PC2.Pages[0];

  LB1.Caption:='Ingrese el Nro Inhumado:';
  ODNI.Visible:=true;                   ODNI.Text:='00000000';
  edit3.Text:='0';                      edit4.Text:='0';
  precioxn.Text:='00000.00';            preciol.Text:='00000.00';
  precioche.Text:='00000.00';
  Busca.Enabled:=true;
  ODNI.SetFocus;
end;

procedure TAM_InhuProvisorio.fecdefunExit(Sender: TObject);
var kl:Tdatetime;
begin
 try
  kl:=strtodate(trim(fecdefun.Text));
 except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  fecdefun.SetFocus;
 end;
end;

procedure TAM_InhuProvisorio.fecdefunKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  losmedicos.SetFocus;
end;
end;

procedure TAM_InhuProvisorio.RvActaPrint(Sender: TObject);
var posfx,posfy,posfin,pos_y,salto:double;
var hoja:integer;

   Function Imagenjpg(posx,posy:double;vaf:integer):double;
   var Imagen1:  TBitmap;
       Fuente,PathLogo,tipot,nombret,tipodoct,dnit,domt:string;
       Tamanio,t:integer;
   begin
    with RvActa do begin
     Imagen1 := TBitMap.Create;

     PathLogo:=modulo2.path_todo + '\Formularios\FRM-07-01.jpg';
     if FileExists(PathLogo) then begin
       Image1.Picture.LoadFromFile(PathLogo);
       Imagen1.Assign(Image1.Picture.Graphic);
       BaseReport.PrintBitmapRect(posx+5,posy,posx+215,posy+290,Imagen1);
     end;
     Imagen1.Free;

     for t:=1 to grillaTestigos.RowCount-1 do begin
      if trim(grillaTestigos.Cells[1,t]) <> '?' then begin
       BaseReport.SetFont('Arial Black',8);
       BaseReport.FontColor:=clBlack;
       BaseReport.PrintXY(posx+60,posy+34,TRIM(fec_texto(trim(fecfalle.Text))));
       BaseReport.PrintXY(posx+20,posy+40,TRIM(nroacc.text));
       BaseReport.PrintXY(posx+125,posy+40,TRIM(apeynom.text));
       BaseReport.PrintXY(posx+45,posy+49,TRIM(tipodoc.text));
       BaseReport.PrintXY(posx+59,posy+49,TRIM(dnifalle.text));
       BaseReport.PrintXY(posx+97,posy+49,TRIM(fecnac.text));
       BaseReport.PrintXY(posx+172,posy+49,TRIM(nacio.text));
       BaseReport.PrintXY(posx+32,posy+55,TRIM(estcivil.text));
       if trim(grillaTestigos.Cells[5,t]) = 'CONYUGUE' then begin
        BaseReport.PrintXY(posx+111,posy+55,TRIM(grillaTestigos.Cells[2,t]));
        BaseReport.PrintXY(posx+20,posy+63,TRIM(grillaTestigos.Cells[4,t]));
       end;
       BaseReport.PrintXY(posx+133,posy+70,TRIM(fecfalle.text));
       BaseReport.PrintXY(posx+30,posy+77,TRIM(horafalle.text));
       BaseReport.PrintXY(posx+50,posy+77,TRIM(diag.text));
       BaseReport.PrintXY(posx+15,posy+84,TRIM(losmedicos.text));
       BaseReport.PrintXY(posx+137,posy+84,TRIM(acta.text));
       BaseReport.PrintXY(posx+164,posy+84,TRIM(fecdefun.text));
       if trim(grillaTestigos.Cells[5,t]) = '1° TESTIGO' then begin
        BaseReport.PrintXY(posx+121,posy+92,TRIM(grillaTestigos.Cells[2,t]));
        BaseReport.PrintXY(posx+65,posy+98,TRIM(grillaTestigos.Cells[3,t]));
        BaseReport.PrintXY(posx+117,posy+98,TRIM(grillaTestigos.Cells[4,t]));
        BaseReport.PrintXY(posx+40,posy+106,TRIM(grillaTestigos.Cells[6,t]));
       end;
       if  trim(grillaTestigos.Cells[5,t]) = '2° TESTIGO' then begin
        BaseReport.PrintXY(posx+70,posy+106,TRIM(grillaTestigos.Cells[2,t]));
        BaseReport.PrintXY(posx+24,posy+112.5,TRIM(grillaTestigos.Cells[3,t]));
        BaseReport.PrintXY(posx+75,posy+112.5,TRIM(grillaTestigos.Cells[4,t]));
        BaseReport.PrintXY(posx+15,posy+120,TRIM(grillaTestigos.Cells[6,t]));
       end;
       BaseReport.PrintXY(posx+165,posy+120,TRIM(nivel1.text));
       BaseReport.PrintXY(posx+15,posy+127,TRIM(parcela.text));
       BaseReport.PrintXY(posx+44,posy+127,TRIM(sector.text));
       BaseReport.PrintXY(posx+15,posy+134,TRIM(nomt.text));
       BaseReport.PrintXY(posx+150,posy+134,TRIM(dnitit.text));
       BaseReport.PrintXY(posx+47,posy+141,TRIM(nroacc.text));
      end;
     end;
    end;
   end;

begin
 posfx:=1;posfy:=1;salto:=4;hoja:=1;
 posfy:=Imagenjpg(posfx,posfy,hoja);

 RvActa.BaseReport.SetFont('Arial',7);
 RvActa.BaseReport.FontColor:=clBlack;
 RvActa.BaseReport.PrintXY(posfx+157,posfy+270,' ------- ORIGINAL -------');

 hoja:=hoja+1;
 RvActa.BaseReport.NewPage;
 posfy:=Imagenjpg(posfx,posfy,hoja);

 RvActa.BaseReport.SetFont('Arial',7);
 RvActa.BaseReport.FontColor:=clBlack;
 RvActa.BaseReport.PrintXY(posfx+157,posfy+270,' ------- DUPLICADO -------');

 hoja:=hoja+1;
 RvActa.BaseReport.NewPage;
 posfy:=Imagenjpg(posfx,posfy,hoja);

 RvActa.BaseReport.SetFont('Arial',7);
 RvActa.BaseReport.FontColor:=clBlack;
 RvActa.BaseReport.PrintXY(posfx+157,posfy+270,' ------- TRIPLICADO -------');
end;

procedure TAM_InhuProvisorio.RvOrdenPrint(Sender: TObject);
var posfx,posfy,posfin,pos_y,salto:double;
      hoja:integer;

   Function Logo(posx,posy:double;vaf:integer):double;
   var Imagen1:TBitMap;
       Fuente,PathLogo:string;
       Tamanio,hoja:integer;

   begin
    with RvOrden do begin
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
     BaseReport.SetFont('Arial',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+140,posy+15,'Remanso de Paz - Parque de los Recuerdos');

     BaseReport.SetFont('Arial Black',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+30);
     BaseReport.PrintXY(posx+5,posy+27,'REGISTRO DE INHUMACIONES');
     BaseReport.PrintXY(posx+130,posy+27,'ORDEN DE SERVICIO Nº: ' + nroorden);

     BaseReport.SetFont('Arial',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+40);
     BaseReport.PrintXY(posx+5,posy+37,'DATOS DEL FALLECIDO Y ORIGEN DEL SERVICIO');
     BaseReport.PrintXY(posx+130,posy+37,'Nº ORDEN:  ' + cantiser + '  |  ' + cantiseranio);
     BaseReport.SetFont('Arial',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+180,posy+37,'UsuServicio: ' + inttostr(modulo2.nro_usu));


     BaseReport.SetFont('Arial Black',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+60);
     BaseReport.PrintXY(posx+5,posy+43,'Fecha Ingreso');
     BaseReport.PrintXY(posx+25,posy+43,'Hora');
     BaseReport.PrintXY(posx+35,posy+43,'Nombre del Extinto');
     BaseReport.PrintXY(posx+88,posy+43,'Tipo y N° Doc.');
     BaseReport.PrintXY(posx+110,posy+43,'Nacio.');
     BaseReport.PrintXY(posx+130,posy+43,'Est. Civil');
     BaseReport.PrintXY(posx+155,posy+43,'Edad');
     BaseReport.PrintXY(posx+165,posy+43,'Fec. Nac.');
     BaseReport.SetFont('Arial ',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+47,trim(fecing.Text));
     BaseReport.PrintXY(posx+25,posy+47,trim(horafalle.Text));
     BaseReport.PrintXY(posx+35,posy+47,trim(apeynom.Text));
     BaseReport.PrintXY(posx+88,posy+47,trim(tipodoc.Text) + '-' + trim(dnifalle.Text));
     BaseReport.PrintXY(posx+110,posy+47,trim(nacio.Text));
     BaseReport.PrintXY(posx+130,posy+47,trim(estcivil.Text));
     BaseReport.PrintXY(posx+155,posy+47,trim(edad.Text));
     BaseReport.PrintXY(posx+165,posy+47,trim(fecnac.Text));

     BaseReport.SetFont('Arial Black',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+53,'Domicilio');
     BaseReport.PrintXY(posx+65,posy+53,'Seccion');
     BaseReport.PrintXY(posx+80,posy+53,'Acta');
     BaseReport.PrintXY(posx+90,posy+53,'Folio');
     BaseReport.PrintXY(posx+110,posy+53,'Tomo');
     BaseReport.PrintXY(posx+130,posy+53,'Fec. Defuncion');
     BaseReport.SetFont('Arial ',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+57,trim(domi.Text));
     BaseReport.PrintXY(posx+68,posy+57,trim(nrosec.Text));
     BaseReport.PrintXY(posx+83,posy+57,trim(acta.Text));
     BaseReport.PrintXY(posx+93,posy+57,trim(nrofolio.Text));
     BaseReport.PrintXY(posx+113,posy+57,trim(nrotomo.Text));
     BaseReport.PrintXY(posx+130,posy+57,trim(fecfalle.Text));

     BaseReport.SetFont('Arial',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+70);
     BaseReport.PrintXY(posx+5,posy+67,' REFERENCIAS DEL SERVICIO DEL PARQUE');

     BaseReport.SetFont('Arial Black',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+88);
     BaseReport.PrintXY(posx+5,posy+73,'Cocheria');
     BaseReport.PrintXY(posx+40,posy+73,'Tipo Servicio');
     BaseReport.PrintXY(posx+65,posy+73,'Religion');
     BaseReport.PrintXY(posx+108,posy+73,'Fec. Inhu.');
     BaseReport.PrintXY(posx+125,posy+73,'H/Salida ');
     BaseReport.PrintXY(posx+142,posy+73,'H/Llegada ');
     BaseReport.PrintXY(posx+158,posy+73,'Sector');
     BaseReport.PrintXY(posx+170,posy+73,'Parcela');
     BaseReport.PrintXY(posx+185,posy+73,'Nivel');
     BaseReport.SetFont('Arial ',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+77,trim(cocheria.Text));
     BaseReport.PrintXY(posx+40,posy+77,'Inhumacion');  //trim(tiposerv.Text)
     BaseReport.PrintXY(posx+65,posy+77,trim(religionfalle.Text));
     BaseReport.PrintXY(posx+108,posy+77,trim(fecinhu.Text));
     BaseReport.PrintXY(posx+125,posy+77,trim(horasale.Text));
     BaseReport.PrintXY(posx+142,posy+77,trim(horallega.Text));
     BaseReport.PrintXY(posx+158,posy+77,trim(sector.Text));
     BaseReport.PrintXY(posx+170,posy+77,trim(parcela.Text));
     BaseReport.PrintXY(posx+185,posy+77,trim(nivel1.Text));

     BaseReport.SetFont('Arial Black',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+81,'Titular Parcela');
     BaseReport.PrintXY(posx+65,posy+81,'N° Titulo');
     BaseReport.PrintXY(posx+108,posy+81,'Objeto');
     BaseReport.PrintXY(posx+142,posy+81,'Posicion');
     BaseReport.SetFont('Arial ',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+84,trim(nomt.Text));
     BaseReport.PrintXY(posx+65,posy+84,trim(nroacc.Text));
     BaseReport.PrintXY(posx+108,posy+84,trim(tipoobjeto.Text));
     BaseReport.PrintXY(posx+142,posy+84,trim(posicion1.Text));

     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+106);
     BaseReport.SetFont('Arial Black',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+93,'Solicitante:');
     BaseReport.PrintXY(posx+5,posy+98,'Responsable');
     BaseReport.PrintXY(posx+58,posy+98,'Tipo y N° Doc');
     BaseReport.PrintXY(posx+90,posy+98,'Domicilio');
     BaseReport.PrintXY(posx+155,posy+98,'Barrio');
     BaseReport.SetFont('Arial ',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+30,posy+93,trim(noms.Text));
     BaseReport.PrintXY(posx+5,posy+102,trim(nomr.Text));
     BaseReport.PrintXY(posx+58,posy+102,trim(tipodocr.Text) + '-' + trim(dnir.Text));
     BaseReport.PrintXY(posx+90,posy+102,trim(domr.Text));
     BaseReport.PrintXY(posx+155,posy+102,trim(barrior.Text));

     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+125);
     BaseReport.SetFont('Arial Black',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.SetFont('Arial ',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+110,' OBSERVACIONES');
     BaseReport.PrintXY(posx+5,posy+115,trim(laobserv.Text));
     Logo:=posy+30;
    end;
   end;

begin
  posfx:=2;
  posfy:=5;
  salto:=4;
  hoja:=1;
  posfy:=Logo(posfx,posfy,hoja);

  hoja:=hoja+1;
  posfx:=6;posfy:=5;salto:=4;
  RvOrden.BaseReport.NewPage;
  posfy:=Logo(posfx,posfy,hoja);

end;

procedure TAM_InhuProvisorio.ImpOrdServClick(Sender: TObject);
begin
{gf:=messagedlgpos('Desea Imprimir la ORDEN DE SERVICIO correspondiente?'
    ,mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
if gf = 1 then begin
  coloca1(18);
  coloca1(19);
  panelnroorden.Visible:=true;
  //nroorden:=DarMaximo('OrdenServicio');
  coloca1(5);
  edit3.Text:=nroorden;
  edit3.SetFocus;
  for t:=1 to grillaformu.RowCount-1 do begin
   if (trim(grillaformu.Cells[1,t]) = 'REGISTRO DE INHUMACION (ORDEN DE SERVICIO)') and (trim(grillaformu.Cells[3,t]) = 'X') then begin
     grillaformu.Cells[3,t]:='';
   end;
  end;
  PC1.ActivePage:=PC1.Pages[1];
end;   }
end;

procedure TAM_InhuProvisorio.losMedicosExit(Sender: TObject);
begin
if losMedicos.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el MEdico Ingresado!!',mterror,[mbok],0);
  losMedicos.SetFocus;
end;
end;

procedure TAM_InhuProvisorio.diagExit(Sender: TObject);
begin
if diag.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Diagnostico Ingresado!!',mterror,[mbok],0);
  diag.SetFocus;
end;
end;

procedure TAM_InhuProvisorio.ImpSolInhuClick(Sender: TObject);
var gf,t:integer;
   pt:boolean;
   txtw,txt,eldet:widestring;
begin
 gf:=messagedlgpos('Desea Imprimir la SOLICITUD DE INHUMACION correspondiente?'
    ,mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
 if gf = 1 then begin
  AuditAccesos('Modulo 2','IMP SOLICITUD INHUMACION ' + TRIM(NroACC.Text)) ;
  ParcelasMovimientosDiarrioDetalle:=TParcelasMovimientosDiarrioDetalle.Create(nil);
  ParcelasMovimientosDiarrioDetalle.ConnectionString:=modulo2.Conexion;
  eldet := 'Inhumado:' + trim(apeynom.Text) + ' Accion:' + trim(nroacc.Text) + '/Nivel:' + trim(nivel1.Text) + '/Posicion:' + trim(posicion1.Text);
       // + ' Importe: ' + trim(saldo.Text) + ' FormaPago:' + trim(tpopago.Text);
  txt:= ' null , ' + ElId
  + ' , null '
  + ' , null '
  + ' , ' + chr(39) + strcut(Fec_System(),10) + chr(39)
  + ' , ' + trim(nroacc.Text)
  + ' , ' + trim(edit4.Text)
  + ' , ' + chr(39) + trim(tpopago.Text) + chr(39)
  + ' , ' + trim(edit6.Text)
  + ' , ' + trim(valcuota.Text)
  + ' , ' + chr(39) + trim(laobserva.Text) + ' ' + eldet + chr(39);
  if (trim(tpopago.Text)= 'CONTADO')  or (trim(tpopago.Text)= 'CUENTA CORRIENTE') then begin
   txt := txt + ' , null , null , null , null , null  , ' + inttostr(modulo2.nro_usu)
   + ' , ' + chr(39) + ger + chr(39);
  end;
  //if (trim(tpopago.Text)= 'FINANCIADO') or (trim(tpopago.Text)='FINANCIADO SIN INTERES') then begin
  //  txt := txt + ' , null , null , null , null , null  , ' + inttostr(modulo2.nro_usu)
  //  + ' , ' + chr(39) + ger + chr(39);
  //end;
  if trim(tpopago.Text)= 'CHEQUE' then begin  // cheque
   txt := txt + ' , ' + chr(39) + trim(banco.Text) + chr(39)
   + ' , ' + chr(39) + trim(titcheq.Text) + chr(39)
   + ' , null '
   + ' , null '
   + ' , ' + chr(39) + trim(e1.Text) + trim(e2.Text) + chr(39)
   + ' , ' + inttostr(modulo2.nro_usu)
   + ' , ' + chr(39) + ger + chr(39);
  end;
  if trim(tpopago.Text)= 'TARJETA CREDITO' then begin  // tarje credito debito
   txt := txt + ' , ' + chr(39) + trim(tarjeta.Text) + chr(39)
   + ' , ' + chr(39) + trim(tittarje.Text) + chr(39)
   + ' , ' + trim(nrocuota.Text)
   + ' , ' + trim(nrocb.Text)
   + ' , null '
   + ' , ' + inttostr(modulo2.nro_usu)
   + ' , ' + chr(39) + ger + chr(39);
  end;
  txtw:='INSERT INTO ParcelasMovimientosDiarrioDetalle (IdVenta,IdServicio,IdExhumacion,IdCremacion,Fecha,NroAccion,'
  +'Importe,FormaPago,NroCuotas,ValorCouta,Observaciones,Tarjeta,TarjetaTitular,TarjetaNroCuotas,TarjetaComprobante,' +
  'SerieCheque,Usu_A,TipoVenta) VALUES (' +  txt + ')';
  pt:=ParcelasMovimientosDiarrioDetalle.ListarSinResp(txtw);
  ParcelasMovimientosDiarrioDetalle.Free;
  RVSOL.Execute;
  for t:=1 to grillaformu.RowCount-1 do begin
   if (trim(grillaformu.Cells[1,t]) = 'SOLICITUD DE INHUMACION') and (trim(grillaformu.Cells[3,t]) = 'X') then begin
     grillaformu.Cells[3,t]:='';
   end;
  end;
 end;
 ImpDepTransi.Enabled :=true;
end;

procedure TAM_InhuProvisorio.RvSolPrint(Sender: TObject);
var posfx,posfy,posfin,pos_y,salto:double;
   Tamanio,hoja:integer;

   Function Imagen(posx,posy:double;vaf:integer):double;
   var Imagen1:  TBitmap;
       Fuente,PathLogo:string;
       ElMes,ElAnio,ElDia,txt:string;
   begin
    with RvSol do begin
     Imagen1 := TBitMap.Create;
     PathLogo:=modulo2.path_todo + '\Formularios\FRM-08-01.jpg';
     if FileExists(PathLogo) then begin
      Image1.Picture.LoadFromFile(PathLogo);
      Imagen1.Assign(Image1.Picture.Graphic);
      BaseReport.PrintBitmapRect(posx,posy,posx+215,posy+290,Imagen1);
     end;
     Imagen1.Free;

     ElMes:=el_mes(strtoint(strcut_midle(trim(FechaActual),4,5)));
     ElAnio:=strcut_midle(trim(FechaActual),7,10);
     ElDia:=LeftStr(trim(FechaActual),2);

     BaseReport.SetFont('Arial Black',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+123,posy+28,ElDia);
     BaseReport.PrintXY(posx+145,posy+28,ElMes);
     BaseReport.PrintXY(posx+187,posy+28,ElAnio);

     if RadioButton1.Checked then begin
      BaseReport.PrintXY(posx+70,posy+66,trim(noms.Text));
      BaseReport.PrintXY(posx+170,posy+66,trim(nacios.Text));
      BaseReport.PrintXY(posx+21,posy+72,trim(estcivils.Text));
      BaseReport.PrintXY(posx+67,posy+72,trim(tipodocs.Text));
      BaseReport.PrintXY(posx+83,posy+72,trim(dnis.Text));
      BaseReport.PrintXY(posx+118,posy+72,'Bº:'+ trim(barrios.Text) + ' '+  trim(doms.Text));
      BaseReport.PrintXY(posx+30,posy+79,trim(provs.Text));
     end
     else begin
      BaseReport.PrintXY(posx+70,posy+66,trim(noms.Text));
      BaseReport.PrintXY(posx+170,posy+66,trim(nacios.Text));
      BaseReport.PrintXY(posx+21,posy+72,trim(estcivils.Text));
      BaseReport.PrintXY(posx+67,posy+72,trim(tipodocs.Text));
      BaseReport.PrintXY(posx+83,posy+72,trim(dnis.Text));
      BaseReport.PrintXY(posx+118,posy+72,'Bº:'+ trim(barrios.Text) + ' '+  trim(doms.Text));
      BaseReport.PrintXY(posx+30,posy+79,trim(provs.Text));
     end;

     BaseReport.PrintXY(posx+122,posy+79,trim(parcela.Text));
     BaseReport.PrintXY(posx+165,posy+79,trim(sector.Text));
     BaseReport.PrintXY(posx+193,posy+79,trim(codplaza.Text));
     BaseReport.PrintXY(posx+5,posy+85,trim(plaza.Text));
     BaseReport.PrintXY(posx+93,posy+92,trim(nroacc.Text));
     BaseReport.PrintXY(posx+156,posy+92,trim(nroacc.Text));
     BaseReport.PrintXY(posx+140,posy+104,trim(edit3.Text));//nroorden);
     BaseReport.PrintXY(posx+167,posy+104,FechaActual);   // trim(fecservicio.Text)
     BaseReport.PrintXY(posx+110,posy+111,trim(apeynom.Text));
     BaseReport.PrintXY(posx+30,posy+117,trim(nacio.Text));
     BaseReport.PrintXY(posx+83,posy+117,trim(estcivil.Text));
     BaseReport.PrintXY(posx+135,posy+117,trim(tipodoc.Text));
     BaseReport.PrintXY(posx+155,posy+117,trim(dnifalle.Text));

     BaseReport.PrintXY(posx+50,posy+261,trim(edit3.Text));//nroorden);
     BaseReport.PrintXY(posx+80,posy+261,FechaActual);   //trim(fecservicio.Text)
     BaseReport.PrintXY(posx+5,posy+266,trim(parcela.Text));
     BaseReport.PrintXY(posx+33,posy+266,trim(sector.Text));
     BaseReport.PrintXY(posx+72,posy+266,trim(codplaza.Text) + ' - ' + trim(plaza.Text) );

     BaseReport.SetFont('Arial',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posfx+125,posfy+240,'Documento: .................................');
    end;
   end;

   Function Logo(posx,posy:double;vaf:integer):double;
   var Imagen1:TBitMap;
       Fuente,PathLogo:string;
       Tamanio,hoja:integer;

   begin
    with RvSol do begin
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
     BaseReport.SetFont('Arial',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+140,posy+15,'Remanso de Paz - Parque de los Recuerdos');

     BaseReport.SetFont('Arial Black',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+30);
     BaseReport.PrintXY(posx+5,posy+27,'REGISTRO DE INHUMACIONES');
     BaseReport.PrintXY(posx+130,posy+27,'ORDEN DE SERVICIO Nº: ' + nroorden);
     BaseReport.SetFont('Arial',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+180,posy+37,'UsuServicio: ' + inttostr(modulo2.nro_usu));

     BaseReport.SetFont('Arial',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+40);
     BaseReport.PrintXY(posx+5,posy+37,'DATOS DEL FALLECIDO Y ORIGEN DEL SERVICIO');
     BaseReport.PrintXY(posx+130,posy+37,'Nº ORDEN:  ' + cantiser + '  |  ' + cantiseranio);

     BaseReport.SetFont('Arial Black',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+60);
     BaseReport.PrintXY(posx+5,posy+43,'Fecha Ingreso');
     BaseReport.PrintXY(posx+25,posy+43,'Hora');
     BaseReport.PrintXY(posx+35,posy+43,'Nombre del Extinto');
     BaseReport.PrintXY(posx+88,posy+43,'Tipo y N° Doc.');
     BaseReport.PrintXY(posx+110,posy+43,'Nacio.');
     BaseReport.PrintXY(posx+130,posy+43,'Est. Civil');
     BaseReport.PrintXY(posx+155,posy+43,'Edad');
     BaseReport.PrintXY(posx+165,posy+43,'Fec. Nac.');
     BaseReport.SetFont('Arial ',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+47,trim(fecing.Text));
     BaseReport.PrintXY(posx+25,posy+47,trim(horafalle.Text));
     BaseReport.PrintXY(posx+35,posy+47,trim(apeynom.Text));
     BaseReport.PrintXY(posx+88,posy+47,trim(tipodoc.Text) + '-' + trim(dnifalle.Text));
     BaseReport.PrintXY(posx+110,posy+47,trim(nacio.Text));
     BaseReport.PrintXY(posx+130,posy+47,trim(estcivil.Text));
     BaseReport.PrintXY(posx+155,posy+47,trim(edad.Text));
     BaseReport.PrintXY(posx+165,posy+47,trim(fecnac.Text));

     BaseReport.SetFont('Arial Black',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+53,'Domicilio');
     BaseReport.PrintXY(posx+65,posy+53,'Seccion');
     BaseReport.PrintXY(posx+80,posy+53,'Acta');
     BaseReport.PrintXY(posx+90,posy+53,'Folio');
     BaseReport.PrintXY(posx+110,posy+53,'Tomo');
     BaseReport.PrintXY(posx+130,posy+53,'Fec. Defuncion');
     BaseReport.SetFont('Arial ',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+57,trim(domi.Text));
     BaseReport.PrintXY(posx+68,posy+57,trim(nrosec.Text));
     BaseReport.PrintXY(posx+83,posy+57,trim(acta.Text));
     BaseReport.PrintXY(posx+93,posy+57,trim(nrofolio.Text));
     BaseReport.PrintXY(posx+113,posy+57,trim(nrotomo.Text));
     BaseReport.PrintXY(posx+130,posy+57,trim(fecfalle.Text));

     BaseReport.SetFont('Arial',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+70);
     BaseReport.PrintXY(posx+5,posy+67,' REFERENCIAS DEL SERVICIO DEL PARQUE');

     BaseReport.SetFont('Arial Black',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+88);
     BaseReport.PrintXY(posx+5,posy+73,'Cocheria');
     BaseReport.PrintXY(posx+40,posy+73,'Tipo Servicio');
     BaseReport.PrintXY(posx+65,posy+73,'Religion');
     BaseReport.PrintXY(posx+108,posy+73,'Fec. Inhu.');
     BaseReport.PrintXY(posx+125,posy+73,'H/Salida ');
     BaseReport.PrintXY(posx+142,posy+73,'H/Llegada ');
     BaseReport.PrintXY(posx+158,posy+73,'Sector');
     BaseReport.PrintXY(posx+170,posy+73,'Parcela');
     BaseReport.PrintXY(posx+185,posy+73,'Nivel');
     BaseReport.SetFont('Arial ',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+77,trim(cocheria.Text));
     BaseReport.PrintXY(posx+40,posy+77,'Inhumacion');  //trim(tiposerv.Text)
     BaseReport.PrintXY(posx+65,posy+77,trim(religionfalle.Text));
     BaseReport.PrintXY(posx+108,posy+77,trim(fecinhu.Text));
     BaseReport.PrintXY(posx+125,posy+77,trim(horasale.Text));
     BaseReport.PrintXY(posx+142,posy+77,trim(horallega.Text));
     BaseReport.PrintXY(posx+158,posy+77,trim(sector.Text));
     BaseReport.PrintXY(posx+170,posy+77,trim(parcela.Text));
     BaseReport.PrintXY(posx+185,posy+77,trim(nivel1.Text));

     BaseReport.SetFont('Arial Black',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+81,'Titular Parcela');
     BaseReport.PrintXY(posx+65,posy+81,'N° Titulo');
     BaseReport.PrintXY(posx+108,posy+81,'Objeto');
     BaseReport.PrintXY(posx+142,posy+81,'Posicion');
     BaseReport.SetFont('Arial ',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+84,trim(nomt.Text));
     BaseReport.PrintXY(posx+65,posy+84,trim(nroacc.Text));
     BaseReport.PrintXY(posx+108,posy+84,trim(tipoobjeto.Text));
     BaseReport.PrintXY(posx+142,posy+84,trim(posicion1.Text));

     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+106);
     BaseReport.SetFont('Arial Black',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+93,'Solicitante:');
     BaseReport.PrintXY(posx+5,posy+98,'Responsable');
     BaseReport.PrintXY(posx+58,posy+98,'Tipo y N° Doc');
     BaseReport.PrintXY(posx+90,posy+98,'Domicilio');
     BaseReport.PrintXY(posx+155,posy+98,'Barrio');
     BaseReport.SetFont('Arial ',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+30,posy+93,trim(noms.Text));
     BaseReport.PrintXY(posx+5,posy+102,trim(nomr.Text));
     BaseReport.PrintXY(posx+58,posy+102,trim(tipodocr.Text) + '-' + trim(dnir.Text));
     BaseReport.PrintXY(posx+90,posy+102,trim(domr.Text));
     BaseReport.PrintXY(posx+155,posy+102,trim(barrior.Text));

     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+125);
     BaseReport.SetFont('Arial Black',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.SetFont('Arial ',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+110,' OBSERVACIONES: ' + trim(laobserv.Text));

     BaseReport.SetFont('Arial Black',12);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+115,'EXCLUSIVAMENTE P/CONTROL GERENCIAL E INFORMATICO');
     BaseReport.PrintXY(posx+5,posy+120,'SIN EXCEPCION Y DE CARACTER OBLIGATORIO');
     BaseReport.SetFont('Arial ',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+130,'OPERADOR SERVICIO: ' + MODULO2.nom_usu + ' FechaHora: ' + Fec_System());
     Logo:=posy+30;
    end;
   end;

   Function Mostrar3(posx,posy:double;vaf:integer):double;
    var a,y,pos,maxfil,j:integer;
    sd,sd1,posn,posw:double;
    tot,maxfila,val:real;
   begin
    with RvSol do begin
     BaseReport.SetFont('Arial Black',10);
     BaseReport.RoundRect(posx+60,posy+11,posx+130,posy+16,5,5);
     BaseReport.PrintXY(posx+62,posy+15,'Detalle del Pago del Servicio');
     //BaseReport.PrintXY(posx+4,posy+22,'OBSERVACIONES' + trim(laobserva.text));
     BaseReport.PrintXY(posx+4,posy+22,tipocomprob);
     BaseReport.PrintXY(posx+4,posy+27,tipocomprob1);
     BaseReport.SetFont('Arial',8);
     if tpopago.ItemIndex = 0 then begin
      posy := posy + 8;
      BaseReport.SetFont('Arial',9);
      BaseReport.PrintXY(posx+4,posy+32,'CONTADO');
     end;
     {if tpopago.ItemIndex = 1 then begin
      posy := posy + 8;
      BaseReport.SetFont('Arial Black',8);
      BaseReport.PrintXY(posx+4,posy+32,'FINANCIADO');
      BaseReport.SetFont('Arial',9);
      BaseReport.PrintXY(posx+80,posy+32,'Nro Cuotas:');
      BaseReport.PrintXY(posx+140,posy+32,'Imp. Cuotas:');
      BaseReport.SetFont('Arial Black',8);
      BaseReport.PrintXY(posx+100,posy+32,trim(edit6.Text));  //ctas
      BaseReport.PrintXY(posx+160,posy+32,trim(valcuota.Text));  // importe
     end;}
     if tpopago.ItemIndex = 1 then begin
      posy := posy + 8;
      BaseReport.SetFont('Arial',9);
      BaseReport.PrintXY(posx+4,posy+32,'Banco:');
      BaseReport.PrintXY(posx+70,posy+32,'Titular:');
      BaseReport.PrintXY(posx+140,posy+32,'Nro Cheque:');
      //BaseReport.PrintXY(posx+4,posy+32,'Fecha Cheque:');
      //BaseReport.PrintXY(posx+70,posy+36,'Fecha Cobro:');
      BaseReport.PrintXY(posx+130,posy+36,'Importe:');
      BaseReport.SetFont('Arial Black',8);
      BaseReport.PrintXY(posx+22,posy+32,trim(banco.Text));
      BaseReport.PrintXY(posx+83,posy+32,trim(titcheq.Text));
      BaseReport.PrintXY(posx+163,posy+32,trim(e1.Text) + '-' + trim(e2.Text));
      //BaseReport.PrintXY(posx+29,posy+36,trim(fcheque.Text));
      BaseReport.PrintXY(posx+153,posy+36,'$ ' + trim(edit4.Text));
     end;
     if tpopago.ItemIndex = 2 then begin
      posy := posy + 8;
      BaseReport.SetFont('Arial',9);
      BaseReport.PrintXY(posx+4,posy+32,'Tarjeta:');
      BaseReport.PrintXY(posx+70,posy+32,'Titular:');
      BaseReport.PrintXY(posx+160,posy+32,'NroCuota:');
      BaseReport.PrintXY(posx+4,posy+36,'Comprobante:');
    //  BaseReport.PrintXY(posx+70,posy+36,'Fecha Cobro:');
      BaseReport.PrintXY(posx+130,posy+36,'Importe:');
      BaseReport.SetFont('Arial Black',8);
      BaseReport.PrintXY(posx+22,posy+32,trim(tarjeta.Text));
      BaseReport.PrintXY(posx+85,posy+32,trim(tittarje.Text));
      BaseReport.PrintXY(posx+185,posy+32,trim(nrocuota.Text));
      BaseReport.PrintXY(posx+28,posy+36,trim(nrocb.Text));
     // BaseReport.PrintXY(posx+90,posy+36,trim(ftarje.Text));
      BaseReport.PrintXY(posx+153,posy+36,'$ ' + trim(valcuota.Text));
     end;
     if tpopago.ItemIndex = 3 then begin
       posy := posy + 8;
       BaseReport.SetFont('Arial',9);
       BaseReport.PrintXY(posx+4,posy+25,'CUENTA CORRIENTE');
     end;
     {if tpopago.ItemIndex = 4 then begin
      posy := posy + 8;
      BaseReport.SetFont('Arial Black',8);
      BaseReport.PrintXY(posx+4,posy+32,'FINANCIADO SIN INTERESES');
      BaseReport.SetFont('Arial',9);
      BaseReport.PrintXY(posx+80,posy+32,'Nro Cuotas:');
      BaseReport.PrintXY(posx+140,posy+32,'Imp. Cuotas:');
      BaseReport.SetFont('Arial Black',8);
      BaseReport.PrintXY(posx+100,posy+32,trim(edit6.Text));  //ctas
      BaseReport.PrintXY(posx+160,posy+32,trim(valcuota.Text));  // importe
     end; }
    end;
   end;

begin
 posfx:=1;
 posfy:=1;
 salto:=4;
 hoja:=1;
 posfy:=Imagen(posfx+3,posfy,hoja);

 rvsol.BaseReport.SetFont('Arial',7);
 rvsol.BaseReport.FontColor:=clBlack;
 rvsol.BaseReport.PrintXY(posfx+157,posfy+275,' p/CARMELO MONTE S.A.');
 rvsol.BaseReport.PrintXY(posfx+157,posfy+285,' ------- ORIGINAL -------');

 hoja:=hoja+1;
 rvsol.BaseReport.NewPage;
 posfy:=Imagen(posfx+5,posfy,hoja);
 rvsol.BaseReport.SetFont('Arial',7);
 rvsol.BaseReport.FontColor:=clBlack;
 rvsol.BaseReport.PrintXY(posfx+157,posfy+275,' p/CARMELO MONTE S.A.');
 rvsol.BaseReport.PrintXY(posfx+157,posfy+285,' ------- DUPLICADO -------');

 hoja:=hoja+1;
 rvsol.BaseReport.NewPage;
 posfy:=Imagen(posfx+5,posfy,hoja);
 rvsol.BaseReport.SetFont('Arial',7);
 rvsol.BaseReport.FontColor:=clBlack;
 rvsol.BaseReport.PrintXY(posfx+157,posfy+275,' p/CARMELO MONTE S.A.');
 rvsol.BaseReport.PrintXY(posfx+157,posfy+285,' ------- TRIPLICADO -------');

 hoja:=hoja+1;
 rvsol.BaseReport.NewPage;
 posfy:=Logo(posfx+5,posfy,hoja);
 posfx:=5;
 posfy:=posfy + 95;
 posfy:=Mostrar3(posfx,posfy,hoja);
end;

procedure TAM_InhuProvisorio.grillaTestigosClick(Sender: TObject);
begin
  Agrega2.Enabled:=false;
  Borra2.Enabled:=true;
  Quita2.Enabled:=true;
  Modifica2.Enabled:=true;
  edit1.Text:=trim(grillaTestigos.Cells[10,grillaTestigos.Row]);
  lostestigos.ItemIndex:=lostestigos.Items.IndexOf(trim(grillaTestigos.Cells[5,grillaTestigos.Row]));
  parentezco.ItemIndex:=parentezco.Items.IndexOf(trim(grillaTestigos.Cells[6,grillaTestigos.Row]));
  button2.SetFocus;
end;

procedure TAM_InhuProvisorio.Button5Click(Sender: TObject);
var Busqueda:TLA_BUSQUEDA;
begin
 Busqueda:=TLA_BUSQUEDA.Create(self);
 try
  Busqueda.NroOpcion:=9; //7
  busqueda.Edit1.Text:=trim(nroacc.Text);
  busqueda.valor:=trim(nroacc.Text);
  Busqueda.ShowModal;
  dnir.Text:=busqueda.DB1.Text;
  CUIFr.Text:=busqueda.DB2.Text;
  tipodocr.Text:=busqueda.DB3.Text;
  nomr.Text:=busqueda.DB4.Text;
  domr.Text:=busqueda.DB6.Text;
  barrior.Text:=busqueda.DB7.Text;
  provr.Text:=busqueda.DB8.Text;
  telr.Text:=busqueda.eltelef;
 finally
  Busqueda.Destroy;
  PC3.ActivePage:=PC3.Pages[2];
 end;
end;

procedure TAM_InhuProvisorio.nroobservClick(Sender: TObject);
var AM_Generico:TAM_Generico;
begin
 AM_Generico:=TAM_Generico.Create(self);
 try
  AM_Generico.NroOpcion:=8;
  AM_Generico.Titulo1:='Observaciones';
  AM_Generico.ShowModal;
 finally
  AM_Generico.Destroy;
  Coloca1(14);
  observa.SetFocus;
 end;
end;

procedure TAM_InhuProvisorio.ImpDepTransiClick(Sender: TObject);
var gf,t:integer;
begin
gf:=messagedlgpos('Desea Imprimir la NOTA DE PEDIDO de Inhumación?'
    ,mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
 if gf = 1 then begin
  AuditAccesos('Modulo 2','IMP NOTA PEDIDO INHUMACION ' + TRIM(NroACC.Text)) ;
  RVdep.Execute;
  //rvdep.DefaultDest := rdFile;
  //rvdep.DoNativeOutput := False;
  //rvdep.RenderObject := RvRenderPDF1;
  //rvdep.OutputFileName := modulo2.path_todo + '\PDF\Nota.Inhumacion Accion '+trim(nroacc.Text)+ ' - Nivel ' + trim(nivel1.text) + '.pdf';
  //rvdep.SystemSetups := rvdep.SystemSetups - [ssAllowSetup];
  //rvdep.Execute;
  //JvBitBtn1.Enabled :=true;
  JvBitBtn1.Enabled :=TRUE;
  JvBitBtn1.SetFocus;
 end;
end;

procedure TAM_InhuProvisorio.RvDepPrint(Sender: TObject);
var posfx,posfy,posfin,pos_y,salto:double;
   Tamanio,hoja:integer;

   Function Imagen(posx,posy:double;vaf:integer):double;
   var Imagen1:  TBitmap;
       Fuente,PathLogo:string;
       ElMes,ElAnio,ElDia,txt:string;
   begin
    with RvDep do begin
     Imagen1 := TBitMap.Create;
     PathLogo:=modulo2.path_todo + '\Formularios\FRM-12.01.jpg';
     if FileExists(PathLogo) then begin
      Image1.Picture.LoadFromFile(PathLogo);
      Imagen1.Assign(Image1.Picture.Graphic);
      BaseReport.PrintBitmapRect(posx,posy,posx+215,posy+290,Imagen1);
     end;
     Imagen1.Free;

     ElMes:=el_mes(strtoint(strcut_midle(trim(fecfalle.Text),4,5)));
     ElAnio:=strcut_midle(trim(fecfalle.Text),7,10);
     ElDia:=LeftStr(trim(fecfalle.Text),2);

     BaseReport.SetFont('Arial Black',12);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+180,posy+24,trim(edit3.Text));

     BaseReport.SetFont('Arial Black',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+135,posy+33,ElDia);
     BaseReport.PrintXY(posx+147,posy+33,ElMes);
     BaseReport.PrintXY(posx+187,posy+33,ElAnio);

     BaseReport.PrintXY(posx+32,posy+38,trim(noms.Text));
     BaseReport.PrintXY(posx+140,posy+38,trim(tipodocs.Text));
     BaseReport.PrintXY(posx+157,posy+38,trim(dnis.Text));
     BaseReport.PrintXY(posx+32,posy+43,trim(doms.Text));
     BaseReport.PrintXY(posx+8,posy+53,trim(apeynom.Text));
     BaseReport.PrintXY(posx+23,posy+57,trim(fecfalle.Text));
     BaseReport.PrintXY(posx+18,posy+62,trim(cocheria.Text));
     BaseReport.PrintXY(posx+113,posy+62,trim(sector.Text));
     BaseReport.PrintXY(posx+140,posy+62,trim(parcela.Text));
     BaseReport.PrintXY(posx+25,posy+67,trim(nomt.Text));
     BaseReport.PrintXY(posx+22,posy+72,trim(tipodoct.Text));
     BaseReport.PrintXY(posx+39,posy+72,trim(dnitit.Text));
     BaseReport.PrintXY(posx+112,posy+72,trim(nroacc.Text));
     BaseReport.PrintXY(posx+181,posy+132,trim(edit4.Text));
     BaseReport.PrintXY(posx+110,posy+164,'Total de los Servicios y Provisiones          $   ' + trim(edit4.Text));
     BaseReport.PrintXY(posx+113,posy+201, trim(edit4.Text));
     BaseReport.PrintXY(posx+5,posy+207, NumToPesos(trim(edit4.Text)));
     BaseReport.PrintXY(posx+8,posy+250,'Observaciones:' + trim(laobserv.Text));
     BaseReport.PrintXY(posx+8,posy+255,'Forma Pago ' + trim(laobserva.Text));

    end;
   end;

   Function Logo2(posx,posy:double;vaf:integer):double;
   var Imagen1:TBitMap;
       Fuente,PathLogo:string;
       Tamanio,hoja:integer;

   begin
    with RvDep do begin
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
     BaseReport.SetFont('Arial',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+140,posy+15,'Remanso de Paz - Parque de los Recuerdos');

     BaseReport.SetFont('Arial Black',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+30);
     BaseReport.PrintXY(posx+5,posy+27,'REGISTRO DE INHUMACIONES');
     BaseReport.PrintXY(posx+130,posy+27,'ORDEN DE SERVICIO Nº: ' + nroorden);
     BaseReport.SetFont('Arial',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+180,posy+37,'UsuServicio: ' + inttostr(modulo2.nro_usu));

     BaseReport.SetFont('Arial',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+40);
     BaseReport.PrintXY(posx+5,posy+37,'DATOS DEL FALLECIDO Y ORIGEN DEL SERVICIO');
     BaseReport.PrintXY(posx+130,posy+37,'Nº ORDEN:  ' + cantiser + '  |  ' + cantiseranio);

     BaseReport.SetFont('Arial Black',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+60);
     BaseReport.PrintXY(posx+5,posy+43,'Fecha Ingreso');
     BaseReport.PrintXY(posx+25,posy+43,'Hora');
     BaseReport.PrintXY(posx+35,posy+43,'Nombre del Extinto');
     BaseReport.PrintXY(posx+88,posy+43,'Tipo y N° Doc.');
     BaseReport.PrintXY(posx+110,posy+43,'Nacio.');
     BaseReport.PrintXY(posx+130,posy+43,'Est. Civil');
     BaseReport.PrintXY(posx+155,posy+43,'Edad');
     BaseReport.PrintXY(posx+165,posy+43,'Fec. Nac.');
     BaseReport.SetFont('Arial ',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+47,trim(fecing.Text));
     BaseReport.PrintXY(posx+25,posy+47,trim(horafalle.Text));
     BaseReport.PrintXY(posx+35,posy+47,trim(apeynom.Text));
     BaseReport.PrintXY(posx+88,posy+47,trim(tipodoc.Text) + '-' + trim(dnifalle.Text));
     BaseReport.PrintXY(posx+110,posy+47,trim(nacio.Text));
     BaseReport.PrintXY(posx+130,posy+47,trim(estcivil.Text));
     BaseReport.PrintXY(posx+155,posy+47,trim(edad.Text));
     BaseReport.PrintXY(posx+165,posy+47,trim(fecnac.Text));

     BaseReport.SetFont('Arial Black',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+53,'Domicilio');
     BaseReport.PrintXY(posx+65,posy+53,'Seccion');
     BaseReport.PrintXY(posx+80,posy+53,'Acta');
     BaseReport.PrintXY(posx+90,posy+53,'Folio');
     BaseReport.PrintXY(posx+110,posy+53,'Tomo');
     BaseReport.PrintXY(posx+130,posy+53,'Fec. Defuncion');
     BaseReport.SetFont('Arial ',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+57,trim(domi.Text));
     BaseReport.PrintXY(posx+68,posy+57,trim(nrosec.Text));
     BaseReport.PrintXY(posx+83,posy+57,trim(acta.Text));
     BaseReport.PrintXY(posx+93,posy+57,trim(nrofolio.Text));
     BaseReport.PrintXY(posx+113,posy+57,trim(nrotomo.Text));
     BaseReport.PrintXY(posx+130,posy+57,trim(fecfalle.Text));

     BaseReport.SetFont('Arial',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+70);
     BaseReport.PrintXY(posx+5,posy+67,' REFERENCIAS DEL SERVICIO DEL PARQUE');

     BaseReport.SetFont('Arial Black',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+88);
     BaseReport.PrintXY(posx+5,posy+73,'Cocheria');
     BaseReport.PrintXY(posx+40,posy+73,'Tipo Servicio');
     BaseReport.PrintXY(posx+65,posy+73,'Religion');
     BaseReport.PrintXY(posx+108,posy+73,'Fec. Inhu.');
     BaseReport.PrintXY(posx+125,posy+73,'H/Salida ');
     BaseReport.PrintXY(posx+142,posy+73,'H/Llegada ');
     BaseReport.PrintXY(posx+158,posy+73,'Sector');
     BaseReport.PrintXY(posx+170,posy+73,'Parcela');
     BaseReport.PrintXY(posx+185,posy+73,'Nivel');
     BaseReport.SetFont('Arial ',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+77,trim(cocheria.Text));
     BaseReport.PrintXY(posx+40,posy+77,'Inhumacion');  //trim(tiposerv.Text)
     BaseReport.PrintXY(posx+65,posy+77,trim(religionfalle.Text));
     BaseReport.PrintXY(posx+108,posy+77,trim(fecinhu.Text));
     BaseReport.PrintXY(posx+125,posy+77,trim(horasale.Text));
     BaseReport.PrintXY(posx+142,posy+77,trim(horallega.Text));
     BaseReport.PrintXY(posx+158,posy+77,trim(sector.Text));
     BaseReport.PrintXY(posx+170,posy+77,trim(parcela.Text));
     BaseReport.PrintXY(posx+185,posy+77,trim(nivel1.Text));

     BaseReport.SetFont('Arial Black',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+81,'Titular Parcela');
     BaseReport.PrintXY(posx+65,posy+81,'N° Titulo');
     BaseReport.PrintXY(posx+108,posy+81,'Objeto');
     BaseReport.PrintXY(posx+142,posy+81,'Posicion');
     BaseReport.SetFont('Arial ',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+84,trim(nomt.Text));
     BaseReport.PrintXY(posx+65,posy+84,trim(nroacc.Text));
     BaseReport.PrintXY(posx+108,posy+84,trim(tipoobjeto.Text));
     BaseReport.PrintXY(posx+142,posy+84,trim(posicion1.Text));

     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+106);
     BaseReport.SetFont('Arial Black',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+93,'Solicitante:');
     BaseReport.PrintXY(posx+5,posy+98,'Responsable');
     BaseReport.PrintXY(posx+58,posy+98,'Tipo y N° Doc');
     BaseReport.PrintXY(posx+90,posy+98,'Domicilio');
     BaseReport.PrintXY(posx+155,posy+98,'Barrio');
     BaseReport.SetFont('Arial ',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+30,posy+93,trim(noms.Text));
     BaseReport.PrintXY(posx+5,posy+102,trim(nomr.Text));
     BaseReport.PrintXY(posx+58,posy+102,trim(tipodocr.Text) + '-' + trim(dnir.Text));
     BaseReport.PrintXY(posx+90,posy+102,trim(domr.Text));
     BaseReport.PrintXY(posx+155,posy+102,trim(barrior.Text));

     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+125);
     BaseReport.SetFont('Arial Black',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.SetFont('Arial ',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+110,' OBSERVACIONES');
     //BaseReport.PrintXY(posx+5,posy+115,trim(laobserv.Text));
     Logo2:=posy+30;
    end;
   end;

begin
 posfx:=1;
 posfy:=1;
 salto:=4;
 hoja:=1;
 posfy:=Imagen(posfx,posfy,hoja);
 hoja:=hoja+1;
 RvDep.BaseReport.NewPage;
 posfy:=Imagen(posfx,posfy,hoja);
end;

procedure TAM_InhuProvisorio.lostestigosExit(Sender: TObject);
begin
 if lostestigos.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Testigo Ingresado!!',mterror,[mbok],0);
  lostestigos.SetFocus;
 end;
end;

procedure TAM_InhuProvisorio.ParentezcoExit(Sender: TObject);
begin
 if Parentezco.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Parentezco Ingresado!!',mterror,[mbok],0);
  Parentezco.SetFocus;
 end;
end;

procedure TAM_InhuProvisorio.ObservaExit(Sender: TObject);
begin
 if Observa.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Observacion Ingresado!!',mterror,[mbok],0);
  Observa.SetFocus;
 end;
end;

procedure TAM_InhuProvisorio.ObservaKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  guarda.SetFocus;
 end;
end;

procedure TAM_InhuProvisorio.ElSectorExit(Sender: TObject);
begin
 if ElSector.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Sector Ingresado!!',mterror,[mbok],0);
  ElSector.SetFocus;
 end;
end;

procedure TAM_InhuProvisorio.ElSectorKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  coloca1(24);
  laaccion.Enabled:=true;
  laaccion.SetFocus;
 end;
end;

procedure TAM_InhuProvisorio.LaAccionExit(Sender: TObject);
begin
 if LaAccion.ItemIndex < 0 then begin
   messagedlg('ERROR!! No Existe el N° de Acción Ingresado!!',mterror,[mbok],0);
   LaAccion.SetFocus;
 end;
end;

procedure TAM_InhuProvisorio.LaAccionKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  coloca1(25);
  busca.SetFocus;
 end;
end;

procedure TAM_InhuProvisorio.fecinhuKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  horafalle.SetFocus;
 end;
end;

procedure TAM_InhuProvisorio.fecinhuExit(Sender: TObject);
var kl:Tdatetime;
begin
  try
    kl:=strtodate(trim(fecinhu.Text));
  except
    messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
    fecinhu.SetFocus;
  end;
end;

procedure TAM_InhuProvisorio.RadioButton1Click(Sender: TObject);
begin
if RadioButton1.Checked then begin
  raccion.Checked :=false;
  rdnitit.Checked :=false;
  cbmutual.Checked :=true;
  dnis.Clear ;
  cuifs.Clear ;
  tipodocs.Clear ;
  noms.Clear ;
  doms.Clear ;
  // datos del resposable
  dnir.Clear ;
  cuifr.Clear ;
  tipodocr.Clear ;
  nomr.Clear ;
  domr.Clear;
  label76.Visible:=false;
  label77.Visible:=false;
  elsector.Visible:=false;
  laaccion.Visible:=false;
  edit2.Visible:=true;
  lb1.Visible:=false;
  ODNI.Visible:=false;
  lasmutuales.Visible:=true;
  lasmutuales.SetFocus;
end;
end;

procedure TAM_InhuProvisorio.LasMutualesExit(Sender: TObject);
var InhuSinServ: TInhuSinServ;
begin
 if LasMutuales.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe la Mutual/Sindicato Ingresado!!',mterror,[mbok],0);
  LasMutuales.SetFocus;
 end
 else begin
  InhuSinServ:= TInhuSinServ.create(self);
  try
   InhuSinServ.NroOpcion:=2;
   InhuSinServ.Caption:='Listado de Acciones';
   InhuSinServ.mutu:=trim(lasmutuales.Text);
   InhuSinServ.ElIdServ:=IdCombos[8,lasmutuales.ItemIndex];
   InhuSinServ.ShowModal;
  finally
   edit2.Text:=InhuSinServ.idinhu.Text;
   InhuSinServ.destroy;
  end;
  Coloca1(35);
  busca.SetFocus;
  busca.Click;
 end;
end;

procedure TAM_InhuProvisorio.LasMutualesKeyPress(Sender: TObject;
  var Key: Char);
begin
    busca.SetFocus;
end;

procedure TAM_InhuProvisorio.tipoobjetoExit(Sender: TObject);
begin
 if tipoobjeto.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el tipo de objeto Ingresado!!',mterror,[mbok],0);
  tipoobjeto.SetFocus;
 end
 else begin
  coloca1(16);
 end;
end;

procedure TAM_InhuProvisorio.tipoobjetoKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  coloca1(16);
  nivel1.SetFocus;
 end;
end;

procedure TAM_InhuProvisorio.nivel1Exit(Sender: TObject);
begin
 if (trim(nivel1.Text)='') or (trim(nivel1.Text)='0') then begin
   messagedlg('ERROR!! Numero de Nivel Incorrecto!!',mterror,[mbok],0);
   nivel1.SetFocus;
 end;
end;

procedure TAM_InhuProvisorio.nivel1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then begin
    Key := #0;
    coloca1(22);
    posicion1.SetFocus;
  end
  else begin
    if ( StrScan('123',Key) <> nil ) or  ( Key = Char(VK_BACK) ) then
     else Key := #0;
  end;
end;

procedure TAM_InhuProvisorio.cocheriaExit(Sender: TObject);
begin
  if cocheria.ItemIndex < 0 then begin
    messagedlg('ERROR!! No Existe la cocheria Ingresada!!',mterror,[mbok],0);
    cocheria.SetFocus;
  end;
end;

procedure TAM_InhuProvisorio.cocheriaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then begin
    Key := #0;
    edit4.Text :=precioxn.Text;
    laobserv.SetFocus;
  end;
end;

procedure TAM_InhuProvisorio.posicion1Exit(Sender: TObject);
begin
 if (trim(posicion1.Text)='') or (trim(posicion1.Text)='0') then begin
   messagedlg('ERROR!! Numero de posicion Incorrecto!!',mterror,[mbok],0);
   posicion1.SetFocus;
 end;
end;

procedure TAM_InhuProvisorio.posicion1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then begin
   Key := #0;
   Coloca1(28);
   cocheria.SetFocus;
  end
  else begin
   if ( StrScan('123',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
   else Key := #0;
  end;
end;

procedure TAM_InhuProvisorio.Timer1Timer(Sender: TObject);
begin
  Label79.visible := not (Label79.visible);
  Label79.Repaint;
end;

procedure TAM_InhuProvisorio.Label79Click(Sender: TObject);
begin
Timer1.Enabled := False;
end;

procedure TAM_InhuProvisorio.JvBitBtn1Click(Sender: TObject);
//var gf,t:integer;
begin
   GroupBox3.Visible :=true;
   if FileExists(FileName) then begin
    /// imprimo el acta de circulacion  de cremacion
    //GroupBox3.Visible :=true;
    impactacircu.Enabled :=true;
    impactacircu.SetFocus ;
    label101.Caption := Filename;
   end
   else begin
     //GroupBox3.Visible :=true;
     impactacircu.Enabled :=false;
     label101.Caption := 'ATENCION No se Encuentra el Archivo de Autorizacion';
     //messagedlg('ATENCION No se Encuentra el Archivo de Autorizacion',mtError,[mbok],0);
   end;
 // GroupBox3.Visible :=true;
 // cb.SetFocus;
 { AuditAccesos('Modulo 2','IMP ACTA DE CIRCULACION INHUMACION ' + TRIM(NroACC.Text)) ;
  actacircu:=DarMaximo('ActaCircuInhumado');
  numactacircu:='\PDF\ActaCirculacionInhumacion Accion '+ trim(nroacc.Text) + ' Nro' + trim(actacircu) + '.pdf';
  RVD.SystemPrinter.Copies :=2;
  RVD.Execute;
  RVD.DefaultDest := rdFile;
  RVD.DoNativeOutput := False;
  RVD.RenderObject := RvRenderPDF1;
  RVD.OutputFileName := modulo2.path_todo + numactacircu; //'\PDF\ActaCirculacionInhumacion Accion '+ trim(nroacc.Text) + ' Nro:' + numactacircu + '.pdf';
  RVD.SystemSetups := RVD.SystemSetups - [ssAllowSetup];
  RVD.Execute;
  SALE.Enabled :=TRUE;
  SALE.SetFocus;  }
end;

procedure TAM_InhuProvisorio.LaObservKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  if guarda.Enabled then  guarda.SetFocus;
 end;
end;

procedure TAM_InhuProvisorio.fecnacKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  PC2.ActivePage:=PC2.Pages[1];
  edad.Text:=unidad.edad(strcut(Fec_System(),10),trim(fecnac.Text));
  fecing.SetFocus;
 end;
end;

procedure TAM_InhuProvisorio.tiposerExit(Sender: TObject);
begin
 if tiposer.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el tipo de Servicio Ingresado!!',mterror,[mbok],0);
  tiposer.SetFocus;
 end
 else begin
  edit5.Text:=IdCombos[9,tiposer.ItemIndex];
  coloca1(29);
 end;
end;

procedure TAM_InhuProvisorio.tiposerKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  edit5.Text:=IdCombos[9,tiposer.ItemIndex];
  coloca1(29);
  button4.Click;
 end;
end;

procedure TAM_InhuProvisorio.grillaformuClick(Sender: TObject);
var t,y:integer;
begin
   if trim(grillaformu.Cells[3,grillaformu.Row])='' then begin
      grillaformu.Cells[3,grillaformu.Row]:='X';
   end
end;

procedure TAM_InhuProvisorio.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  tpopago.SetFocus; //impsolinhu.SetFocus;
 end
 else begin
  if ( StrScan('0123456789.',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
    else Key := #0;
 end;
end;

procedure TAM_InhuProvisorio.Edit4Exit(Sender: TObject);
begin
 if trim(Edit4.Text)='' then Edit4.Text:='0';
 if trim(Edit4.Text)='00' then Edit4.Text:='0';
 if trim(Edit4.Text) = '0' then begin
  messagedlg('ERROR!!... El Importe del Servicio no puede ser 0 (Cero)' ,mterror,[mbok],0);
  Edit4.SetFocus;
 end
 else tpopago.SetFocus; //impsolinhu.SetFocus;
end;

procedure TAM_InhuProvisorio.CheckBox1Click(Sender: TObject);
begin
 if CheckBox1.Checked  then begin
    edit4.Text := precioxn.Text;
    CheckBox2.Checked:=false;
    CheckBox3.Checked:=false;
    tpopago.SetFocus;
  end;
end;

procedure TAM_InhuProvisorio.CheckBox2Click(Sender: TObject);
begin
  if CheckBox2.Checked  then begin
    edit4.Text := preciol.Text;
    CheckBox1.Checked:=false;
    CheckBox3.Checked:=false;
    tpopago.SetFocus;
  end;
end;

procedure TAM_InhuProvisorio.CheckBox3Click(Sender: TObject);
begin
  if CheckBox3.Checked  then begin
    edit4.Text := precioche.Text;
    CheckBox1.Checked:=false;
    CheckBox2.Checked:=false;
    tpopago.SetFocus;
  end;
end;

procedure TAM_InhuProvisorio.Edit6Exit(Sender: TObject);
begin
  if (trim(Edit6.Text) = '0') or (trim(Edit6.Text) = '') then begin
   messagedlg('ERROR!!... La Cantidad de Cuotas no puede ser 0 (Cero)' ,mterror,[mbok],0);
   Edit6.SetFocus;
  end
  else begin
   valcuota.Text:= floattostr(strtofloat(trim(edit4.Text))/strtoint(trim(edit6.Text)));
   impsolinhu.SetFocus;
  end;
end;

procedure TAM_InhuProvisorio.VALCUOTAExit(Sender: TObject);
begin
  if (trim(VALCUOTA.Text) = '0') or (trim(VALCUOTA.Text) = '') then begin
   messagedlg('ERROR!!... El Importe de la Cuota no puede ser 0 (Cero)' ,mterror,[mbok],0);
   VALCUOTA.SetFocus;
  end
  else impsolinhu.SetFocus;
end;

procedure TAM_InhuProvisorio.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
    Key := #0;
    valcuota.Text:= floattostr(strtofloat(trim(edit4.Text))/strtoint(trim(edit6.Text)));
    impsolinhu.SetFocus;
  end
  else begin
    if ( StrScan('123456789',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
     else Key := #0;
  end;
end;

procedure TAM_InhuProvisorio.VALCUOTAKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then begin
    Key := #0;
    if (trim(tpopago.Text)= 'FINANCIADO') or (trim(tpopago.Text)='FINANCIADO SIN INTERES')  then begin
     laobserva.Text := 'Forma de Pago' + trim(tpopago.Text) +  ' Nro Cuotas: ' +
     trim(edit6.Text) +  ' Importe Cuota: $' +  trim(valcuota.Text);
    end
    else laobserva.Clear;
    laobserva.SetFocus;
  end
  else begin
    if ( StrScan('0123456789.',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
     else Key := #0;
  end;
end;

procedure TAM_InhuProvisorio.bancoExit(Sender: TObject);
begin
 if banco.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Banco Ingresada!!',mterror,[mbok],0);
  banco.SetFocus;
 end;
end;

procedure TAM_InhuProvisorio.bancoKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then titcheq.SetFocus;
end;

procedure TAM_InhuProvisorio.titcheqExit(Sender: TObject);
begin
 if trim(titcheq.Text) = '' then begin
  messagedlg('Error!! No hay Titular del Cheque Ingresado.',mterror,[mbok],0);
  titcheq.SetFocus
 end;
end;

procedure TAM_InhuProvisorio.titcheqKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = chr(13) then E1.SetFocus;
end;

procedure TAM_InhuProvisorio.E1KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then E2.SetFocus
 else begin
  if ( StrScan('ABCDEFGHIJKLMNÑOPQRSTUVWXYZ',Key) <> nil ) or  ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;
end;

procedure TAM_InhuProvisorio.E2Exit(Sender: TObject);
begin
 if (trim(E2.Text) = '') OR (trim(E2.Text) = '000000000000') OR (trim(E2.Text) = '0') then begin
  messagedlgpos('Error!! Nro de Cheque Ingresado Incorrectamente.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  E2.SetFocus;
 end
 else laobserva.Text := 'Pago por: ' + trim(tpopago.Text) + ' - ' + trim(banco.Text) + ' en ' + trim(edit6.Text) + ' cuotas de $' + trim(valcuota.Text);

end;

procedure TAM_InhuProvisorio.E2KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
   laobserva.SetFocus;
  // fcheque.SetFocus
 end
 else begin
  if ( StrScan('1234567890',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;
end;

procedure TAM_InhuProvisorio.FchequeExit(Sender: TObject);
//var fec:Tdatetime;
begin
{ try
  fec:=strtodate(trim(Fcheque.Text));
 except
  messagedlgpos('La fecha es Erronea!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  Fcheque.SetFocus;
 end;  }
end;

procedure TAM_InhuProvisorio.FchequeKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then laobserva.SetFocus;
end;

procedure TAM_InhuProvisorio.TARJETAExit(Sender: TObject);
begin
if TARJETA.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe la TARJETA Ingresada!!',mterror,[mbok],0);
  TARJETA.SetFocus;
end;
end;

procedure TAM_InhuProvisorio.TARJETAKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = chr(13) then tittarje.SetFocus;
end;

procedure TAM_InhuProvisorio.tittarjeExit(Sender: TObject);
begin
if trim(tittarje.Text) = '' then begin
  messagedlg('Error!! No hay Titular de la Tarjeta Ingresado.',mterror,[mbok],0);
  tittarje.SetFocus
end;
end;

procedure TAM_InhuProvisorio.tittarjeKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = chr(13) then nrocuota.SetFocus;
end;

procedure TAM_InhuProvisorio.NroCuotaExit(Sender: TObject);
var tot:real;
begin
  if (trim(NroCuota.Text) = '') OR (trim(NroCuota.Text) = '00') OR (trim(NroCuota.Text) = '0') then begin
    messagedlgpos('Error!! Nro de Cuota Ingresado Incorrectamente.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
    NroCuota.SetFocus;
  end
  else begin
   tot:= strtofloat(edit4.Text) / strtoint(nrocuota.Text);
   laobserva.Text := 'Pago por: ' + trim(tpopago.Text) + ' - ' + trim(tarjeta.Text) + ' en ' + trim(edit6.Text) + ' cuotas de $' + trim(valcuota.Text);

   //edit3.Text:=floattostr(tot);
  end;
end;

procedure TAM_InhuProvisorio.NroCuotaKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then NroCb.SetFocus
 else begin
  if ( StrScan('0123456789',Key) <> nil ) or  ( Key = Char(VK_BACK) ) then
   else Key := #0;
  end;
end;

procedure TAM_InhuProvisorio.NROCBExit(Sender: TObject);
begin
if (trim(NROCB.Text) = '') OR (trim(NROCB.Text) = '0') then begin
  messagedlgpos('Error!! Nro de Comprobante Ingresado Incorrectamente.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  NROCB.SetFocus;
end;
end;

procedure TAM_InhuProvisorio.NROCBKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
   laobserva.Text := 'Pago por: ' + trim(tpopago.Text) + ' - ' + trim(tarjeta.Text) + ' en ' + trim(edit6.Text) + ' cuotas de $' + trim(valcuota.Text);
   laobserva.SetFocus
 end
 else begin
  if ( StrScan('0123456789.',Key) <> nil ) or  ( Key = Char(VK_BACK) ) then
   else Key := #0;
  end;
end;

procedure TAM_InhuProvisorio.RvDAfterPrint(Sender: TObject);
//var posfx,posfy,posfin,pos_y,salto:double;
 //   hoja,m,t:integer;
 //  Imagen3:TBitMap;

{   Function Logo(posx,posy:double;vaf:integer):double;
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
   end;              }

  { Function Datos(posx,posy:double):double;
   var posn,salto:double;
       j,mn,m,t:integer;
       Imagen2:TBitMap;
   begin
    with RvD do begin
      Imagen2 := TBitMap.Create;  // creo la variable Imagen1
      salto:=5;
      BaseReport.RoundRect(posx+60,posy+11,posx+130,posy+16,5,5);
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
      BaseReport.SetFont('Arial Black',8);

      posy:=posy + 20;
      BaseReport.RoundRect(posx+60,posy+11,posx+130,posy+16,5,5);
      BaseReport.PrintXY(posx+70,posy+15,'FORMA DE PAGO DE LA VENTA');
      BaseReport.SetFont('Arial',9);
      BaseReport.PrintXY(posx+4,posy+20,'Saldo:');
      BaseReport.PrintXY(posx+70,posy+20,'Cant. Cuotas:');
      BaseReport.PrintXY(posx+100,posy+20,'Valor Coutas:');
      BaseReport.PrintXY(posx+4,posy+25,'Observ.:');
      BaseReport.SetFont('Arial Black',7);
      //BaseReport.PrintXY(posx+22,posy+20,'$ ' +trim(saldo.Text));
      //BaseReport.PrintXY(posx+90,posy+20,trim(edit2.Text));
      BaseReport.PrintXY(posx+123,posy+20,'$ ' + trim(valcuota.Text));
      if grupocheq.Visible then begin
       posy := posy + 5;
       BaseReport.SetFont('Arial',9);
       BaseReport.PrintXY(posx+4,posy+25,'Banco:');
       BaseReport.PrintXY(posx+70,posy+25,'Titular:');
       BaseReport.PrintXY(posx+140,posy+25,'Nro Cheque:');
       //BaseReport.PrintXY(posx+4,posy+30,'Fecha Cheque:');
       //BaseReport.PrintXY(posx+70,posy+30,'Fecha Cobro:');
       BaseReport.PrintXY(posx+130,posy+30,'Importe:');
       BaseReport.SetFont('Arial Black',8);
       BaseReport.PrintXY(posx+22,posy+25,trim(banco.Text));
       BaseReport.PrintXY(posx+83,posy+25,trim(titcheq.Text));
       BaseReport.PrintXY(posx+163,posy+25,trim(e1.Text) + '-' + trim(e2.Text));
       //BaseReport.PrintXY(posx+29,posy+30,trim(fcheque.Text));
      end;
      if grupotarje.Visible then begin
       posy := posy + 5;
       BaseReport.SetFont('Arial',9);
       BaseReport.PrintXY(posx+4,posy+25,'Tarjeta:');
       BaseReport.PrintXY(posx+70,posy+25,'Titular:');
       BaseReport.PrintXY(posx+100,posy+25,'NroCuota:');
       BaseReport.PrintXY(posx+4,posy+30,'Comprobante:');
      // BaseReport.PrintXY(posx+70,posy+30,'Fecha Cobro:');
       BaseReport.PrintXY(posx+130,posy+30,'Importe:');
       BaseReport.SetFont('Arial Black',8);
       BaseReport.PrintXY(posx+22,posy+25,trim(tarjeta.Text));
       BaseReport.PrintXY(posx+90,posy+25,trim(tittarje.Text));
       BaseReport.PrintXY(posx+123,posy+25,trim(nrocuota.Text));
       BaseReport.PrintXY(posx+22,posy+30,trim(nrocb.Text));
      // BaseReport.PrintXY(posx+90,posy+30,trim(ftarje.Text));
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
   end;  }

begin
  coloca1(36);
 // posfx:=6;
 // posfy:=5;
 // salto:=4;
 // hoja:=1;
 // posfy:=Logo(posfx,posfy,hoja);
 // posfy:=Datos(posfx,posfy);
end;

procedure TAM_InhuProvisorio.tpopagoExit(Sender: TObject);
begin
 if tpopago.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de pago Ingresado!!',mterror,[mbok],0);
  tpopago.SetFocus;
 end;
end;

procedure TAM_InhuProvisorio.tpopagoKeyPress(Sender: TObject;
  var Key: Char);
  var Seleccion_Cuotas: TSeleccion_Cuotas;
begin
 if key = chr(13) then begin
  Key := #0;
   grupotarje.Visible :=false;
   grupocheq.Visible :=false;
   if tpopago.ItemIndex = 0 then begin  // contado
    checkbox1.Checked:=true;
    checkbox2.Checked:=false;
    checkbox3.Checked:=false;
    grupotarje.Visible :=false;
    grupocheq.Visible :=false;
    edit6.Visible :=false;
    valcuota.Visible :=false;
    label78.Visible :=false;
    label80.Visible :=false;
    laobserva.Text := 'Pago Servicios de ' + trim(tpopago.Text) + ' por $' + trim(precioxn.Text);
    laobserva.SetFocus;
   end;
   {if tpopago.ItemIndex = 1 then begin  // financiado
    checkbox1.Checked:=false;
    checkbox2.Checked:=true;
    checkbox3.Checked:=false;
    grupotarje.Visible :=false;
    grupocheq.Visible :=false;
    edit6.Visible :=true;
    valcuota.Visible :=true;
    label78.Visible :=true;
    label80.Visible :=true;
    Seleccion_Cuotas:= TSeleccion_Cuotas.create(self);
    try
     Seleccion_Cuotas.NroOpcion:=1;
     Seleccion_Cuotas.niv:=modulo2.nvl_usu;
     Seleccion_Cuotas.entrega:=strtofloat(preciol.Text);
     Seleccion_Cuotas.capital:=strtofloat(preciol.Text);
     Seleccion_Cuotas.fecha:=strcut(fec_system(),10);
     Seleccion_Cuotas.ShowModal;
    finally
     edit6.Text:=Seleccion_Cuotas.Nrocta.Text;
     valcuota.Text:=Seleccion_cuotas.ImpCta.Text;
     preciol.Text:=trim(Seleccion_Cuotas.totalfinan);
     Seleccion_Cuotas.destroy;
    end;
    laobserva.Text := 'Pago Servicios por: ' + trim(tpopago.Text) + ' en ' + trim(edit6.Text) + ' cuotas de $' + trim(valcuota.Text);
    laobserva.SetFocus;
   end;  }
   if tpopago.ItemIndex = 1 then begin  // cheque
    checkbox1.Checked:=false;
    checkbox2.Checked:=false;
    checkbox3.Checked:=true;
    grupotarje.Visible :=false;
    grupocheq.Visible :=true;
    edit6.Visible :=false;
    valcuota.Visible :=false;
    label78.Visible :=false;
    label80.Visible :=false;
    laobserva.Text := 'Pago por: ' + trim(tpopago.Text) + ' de ' + trim(banco.Text) + ' s/Nro Cheque ' + trim(e1.Text) + '-' + trim(e2.Text);
    banco.SetFocus;
   end;
   if tpopago.ItemIndex = 2 then begin  // tarje credito debito
    grupotarje.Visible :=true;
    grupocheq.Visible :=false;
    edit6.Visible :=true;
    valcuota.Visible :=true;
    label78.Visible :=true;
    label80.Visible :=true;
    checkbox1.Checked:=false;
    checkbox2.Checked:=true;
    checkbox3.Checked:=false;
    Seleccion_Cuotas:= TSeleccion_Cuotas.create(self);
    try
     Seleccion_Cuotas.NroOpcion:=4;
     Seleccion_Cuotas.niv:=modulo2.nvl_usu;
     Seleccion_Cuotas.entrega:=strtofloat(preciol.Text);
     Seleccion_Cuotas.capital:=strtofloat(preciol.Text);
     Seleccion_Cuotas.fecha:=strcut(fec_system(),10);
     Seleccion_Cuotas.ShowModal;
    finally
     edit6.Text:=Seleccion_Cuotas.Nrocta.Text;
     nrocuota.Text:=Seleccion_Cuotas.Nrocta.Text;
     valcuota.Text:=Seleccion_cuotas.ImpCta.Text;
     preciol.Text:=trim(Seleccion_Cuotas.totalfinan);
     Seleccion_Cuotas.destroy;
    end;
    //laobserva.Text := 'Pago Servicios por: ' + trim(tpopago.Text) + ' - ' + trim(tarjeta.Text) + ' en ' + trim(edit6.Text) + ' cuotas de $' + trim(valcuota.Text);
    tarjeta.SetFocus;
   end;
   {if tpopago.ItemIndex = 4 then begin  // finanaciado sin interes
    checkbox1.Checked:=true;
    checkbox2.Checked:=false;
    checkbox3.Checked:=false;
    grupotarje.Visible :=false;
    grupocheq.Visible :=false;
    edit6.Visible :=true;
    valcuota.Visible :=true;
    label78.Visible :=true;
    label80.Visible :=true;
    Seleccion_Cuotas:= TSeleccion_Cuotas.create(self);
    try
     Seleccion_Cuotas.NroOpcion:=3;
     Seleccion_Cuotas.nromov:=1;
     Seleccion_Cuotas.niv:=modulo2.nvl_usu;
     Seleccion_Cuotas.entrega:=strtofloat(precioxn.Text);
     Seleccion_Cuotas.capital:=strtofloat(precioxn.Text);
     Seleccion_Cuotas.fecha:=strcut(fec_system(),10);
     Seleccion_Cuotas.ShowModal;
    finally
     edit6.Text:=Seleccion_Cuotas.Nrocta.Text;
     valcuota.Text:=Seleccion_cuotas.ImpCta.Text;
     precioxn.Text:=trim(Seleccion_Cuotas.totalfinan);
     Seleccion_Cuotas.destroy;
    end;
    laobserva.Text := 'Pago Servicios por: ' + trim(tpopago.Text) + ' en ' + trim(edit6.Text) + ' cuotas de $' + trim(valcuota.Text);
    laobserva.SetFocus;
   end;  }
   if tpopago.ItemIndex = 3 then begin  // CUENTA CORRIENTE
    checkbox1.Checked:=true;
    checkbox2.Checked:=false;
    checkbox3.Checked:=false;
    grupotarje.Visible :=false;
    grupocheq.Visible :=false;
    edit6.Visible :=false;
    valcuota.Visible :=false;
    label78.Visible :=false;
    label80.Visible :=false;
    laobserva.Text := 'Pago Servicios por ' + trim(tpopago.Text) + ' por $' + trim(precioxn.Text);
    laobserva.SetFocus;
   end;
 end;
end;

procedure TAM_InhuProvisorio.ftarjeKeyPress(Sender: TObject;
  var Key: Char);
begin
 //if key = #13 then begin
 // laobserva.SetFocus;
 // laobserva.Text := 'Pago Servicios por: ' + trim(tpopago.Text) + ' - ' + trim(tarjeta.Text) + ' en ' + trim(edit6.Text) + ' cuotas de $' + trim(valcuota.Text);
 //end;
end;

procedure TAM_InhuProvisorio.ftarjeExit(Sender: TObject);
var fec:Tdatetime;
begin
{ try
  fec:=strtodate(trim(ftarje.Text));
 except
  messagedlgpos('La fecha es Erronea!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  ftarje.SetFocus;
 end;  }
end;

procedure TAM_InhuProvisorio.PrecioXnChange(Sender: TObject);
begin
 edit4.Text := precioxn.Text;
end;

procedure TAM_InhuProvisorio.PrecioLChange(Sender: TObject);
begin
 edit4.Text := preciol.Text;
end;

procedure TAM_InhuProvisorio.preciocheChange(Sender: TObject);
begin
edit4.Text := precioche.Text;
end;

procedure TAM_InhuProvisorio.laobservaKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
 panel1.Visible:=true;
 CBMutual.SetFocus;
 //impsolinhu.SetFocus; //tpotalon.SetFocus;
{   if tpopago.ItemIndex = 0 then begin  // contado
    impsolinhu.SetFocus;
   end;
   if tpopago.ItemIndex = 1 then begin  // financiado
    edit6.SetFocus;
   end;
   if tpopago.ItemIndex = 2 then begin  // cheque
    banco.SetFocus;
   end;
   if tpopago.ItemIndex = 3 then begin  // tarje credito debito
    tarjeta.SetFocus; }
   end;
end;

procedure TAM_InhuProvisorio.tpopagoChange(Sender: TObject);
begin
 edit6.Visible :=false;
 valcuota.Visible :=false;
 label78.Visible :=false;
 label80.Visible :=false;
 grupotarje.Visible :=false;
 grupocheq.Visible :=false;
 impsolinhu.Enabled :=true;
end;

procedure TAM_InhuProvisorio.PrecioXnKeyPress(Sender: TObject;
  var Key: Char);
begin
 if checkbox1.Checked then begin
  if key = #13 then begin
   Key := #0;
   tpopago.SetFocus; //impsolinhu.SetFocus;
  end
  else begin
   if ( StrScan('0123456789.',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
    else Key := #0;
  end;
 end;
end;

procedure TAM_InhuProvisorio.PrecioLKeyPress(Sender: TObject;
  var Key: Char);
begin
 if checkbox2.Checked then begin
  if key = #13 then begin
   Key := #0;
   tpopago.SetFocus; //impsolinhu.SetFocus;
  end
  else begin
   if ( StrScan('0123456789.',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
    else Key := #0;
  end;
 end;
end;

procedure TAM_InhuProvisorio.preciocheKeyPress(Sender: TObject;
  var Key: Char);
begin
 if checkbox3.Checked then begin
  if key = #13 then begin
   Key := #0;
   tpopago.SetFocus; //impsolinhu.SetFocus;
  end
  else begin
   if ( StrScan('0123456789.',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
    else Key := #0;
  end;
 end;
end;

procedure TAM_InhuProvisorio.nrosecExit(Sender: TObject);
begin
if trim(nrosec.Text)='' then nrosec.Text:='0';
end;

procedure TAM_InhuProvisorio.TPOTALONExit(Sender: TObject);
begin
 if TPOTALON.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe un Tipo de Comprobante Valido!!',mterror,[mbok],0);
  TPOTALON.SetFocus;
 end;
end;

procedure TAM_InhuProvisorio.TPOTALON1Exit(Sender: TObject);
begin
 if TPOTALON1.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe un Tipo de Comprobante Valido!!',mterror,[mbok],0);
  TPOTALON1.SetFocus;
 end;
end;

procedure TAM_InhuProvisorio.actuClick(Sender: TObject);
begin
  impsolinhu.Enabled:=true;
  impsolinhu.SetFocus;
  if cbmutual.Checked then begin
    if RadioButton1.Checked then tipocomprob:='Segun Convenio : '+ trim(lasmutuales.Text)
     else tipocomprob:='';
  end
  else begin
    tipocomprob:='Pago del Servcio s/Comprobante ' + trim(tpotalon.Text) + ' - ' + StrFill(PV.Text,3,'0','') + '-' + StrFill(elcomprob.Text,8,'0','');
  end;
  tipocomprob1:='Pago del Tram. Municipal s/Comprobante ' + trim(tpotalon1.Text)   + ' - ' + StrFill(PV1.Text,3,'0','') + '-' + StrFill(elcomprob1.Text,8,'0','');;
  //if cbmutual.Checked then begin
  //  if RadioButton1.Checked then tipocomprob:='Segun Convenio : '+ trim(lasmutuales.Text)
  //  else tipocomprob:='';
  //end else
  //  tipocomprob:='Segun pago del Servcio por ' + trim(tpotalon.Text) + ' - ' + StrFill(PV.Text,3,'0','') + '-' + StrFill(elcomprob.Text,8,'0','');
  //tipocomprob1:='y segun pago del Tram. Municipal de ' + trim(tpotalon1.Text)   + ' - ' + StrFill(PV1.Text,3,'0','') + '-' + StrFill(elcomprob1.Text,8,'0','');;
end;

procedure TAM_InhuProvisorio.elcomprob1Change(Sender: TObject);
begin
  actu.Enabled :=true;
end;

procedure TAM_InhuProvisorio.TPOTALONKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then pv.SetFocus;
end;

procedure TAM_InhuProvisorio.elcomprobKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then begin
    Key := #0;
    tpotalon1.SetFocus;
  end
  else begin
    if ( StrScan('0123456789',Key) <> nil ) or  ( Key = Char(VK_BACK) ) then
     else Key := #0;
  end;
end;

procedure TAM_InhuProvisorio.TPOTALON1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then pv1.SetFocus;
end;

procedure TAM_InhuProvisorio.elcomprobExit(Sender: TObject);
begin
 if (trim(elcomprob.Text) = '0') or (trim(elcomprob.Text) = '00000000') or (trim(elcomprob.Text) = '')  then begin
  messagedlg('ERROR!!... El N° de Comprobante del Servicio es invalido',mterror,[mbok],0);
  elcomprob.SetFocus;
 end;
end;

procedure TAM_InhuProvisorio.elcomprob1Exit(Sender: TObject);
begin
 if (trim(elcomprob1.Text) = '0') or (trim(elcomprob1.Text) = '00000000') or (trim(elcomprob1.Text) = '')  then begin
  messagedlg('ERROR!!... El N° de Comprobante del Tramite municipal es invalido',mterror,[mbok],0);
  elcomprob1.SetFocus;
 end;
end;

procedure TAM_InhuProvisorio.elcomprob1KeyPress(Sender: TObject;
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

procedure TAM_InhuProvisorio.PVKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
  elcomprob.SetFocus;
  end;
end;

procedure TAM_InhuProvisorio.PVExit(Sender: TObject);
begin
 if PV.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe un Punto de Venta Valido!!',mterror,[mbok],0);
  PV.SetFocus;
 end;
end;

procedure TAM_InhuProvisorio.PV1Exit(Sender: TObject);
begin
 if PV1.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe un Punto de Venta Valido!!',mterror,[mbok],0);
  PV1.SetFocus;
 end;
end;

procedure TAM_InhuProvisorio.PV1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
   elcomprob1.SetFocus;
  end;
end;

procedure TAM_InhuProvisorio.CBMutualClick(Sender: TObject);
begin
 if CBMutual.Checked then begin
   tpotalon.Enabled :=false;
   pv.Enabled :=false;
   elcomprob.Enabled :=false;
   //tpotalon1.SetFocus;
 end
 else begin
   tpotalon.Enabled :=true;
   pv.Enabled :=true;
   elcomprob.Enabled :=true;
   //tpotalon.SetFocus;
 end;
end;

procedure TAM_InhuProvisorio.horasaleExit(Sender: TObject);
begin
try
 StrToTime(horasale.text);
 except ShowMEssage('Hora NO válida!');
 horasale.SetFocus;
end;
end;

procedure TAM_InhuProvisorio.horallegaExit(Sender: TObject);
begin
try
 StrToTime(horallega.text);
 except ShowMEssage('Hora NO válida!');
 horallega.SetFocus;
end;
end;

procedure TAM_InhuProvisorio.horafalleExit(Sender: TObject);
begin
try
 StrToTime(horafalle.text);
 except ShowMEssage('Hora NO válida!');
 horafalle.SetFocus;
end;
end;

procedure TAM_InhuProvisorio.CBMutualKeyPress(Sender: TObject;
  var Key: Char);
begin
 if CBMutual.Checked then begin
   tpotalon.Enabled :=false;
   pv.Enabled :=false;
   elcomprob.Enabled :=false;
   tpotalon1.SetFocus;
 end
 else begin
   tpotalon.Enabled :=true;
   pv.Enabled :=true;
   elcomprob.Enabled :=true;
   tpotalon.SetFocus;
 end;
end;

procedure TAM_InhuProvisorio.RDniTitClick(Sender: TObject);
begin
if RDniTit.Checked then begin
  raccion.Checked :=false;
  RadioButton1.Checked :=false;
  cbmutual.Checked :=false;

  label76.Visible:=true;
  label77.Visible:=true;
  elsector.Visible:=true;
  laaccion.Visible:=true;
  edit2.Visible:=true;
  LB1.Visible:=false;
  lasmutuales.Visible:=false;
  ODNI.Visible:=false;
  ODNI.Text:='00000000';
  Busca.Enabled:=true;
  elsector.SetFocus;
end;
end;

procedure TAM_InhuProvisorio.RvDPrint(Sender: TObject);
var posfx,posfy,posfin,pos_y,salto:double;
   hoja,m,t:integer;
   mes,meses,anio,day:string;
   Imagen3:TBitMap;

   Function Logo(posx,posy:double;vaf:integer):double;
   var Imagen1:TBitMap;
       Fuente,PathLogo:string;
       Tamanio,hoja:integer;
   begin
    with RvD do begin
     Imagen1 := TBitMap.Create;
     PathLogo:=modulo2.path_todo + '\Formularios\ActadeDepositoTransitorioenPanteon.jpg';
     if FileExists(PathLogo) then begin
      Image1.Picture.LoadFromFile(PathLogo);
      Imagen1.Assign(Image1.Picture.Graphic);
      BaseReport.PrintBitmapRect(posx,posy,posx+215,posy+290,Imagen1);
     end;
     Imagen1.Free;

     Mes:=el_mes(strtoint(strcut_midle(trim(fecing.Text),4,5)));
     //meses:=el_mes(strtoint(Mes));
     Anio:=strcut_midle(trim(fecing.Text),7,10);
     day:=LeftStr(trim(fecing.Text),2);

     //actacircu:=DarMaximo('ActaCircuInhumado');
     //numactacircu:='\PDF\ActaCirculacionInhumacion Accion '+ trim(nroacc.Text) + ' Nro:' + actacircu + '.pdf';

     BaseReport.SetFont('Arial Black',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+175,posy+30,actacircu );
     BaseReport.PrintXY(posx+195,posy+30,Anio );

     nroactacircu:= actacircu + '/'+ Anio;

     BaseReport.PrintXY(posx+80,posy+38,day);
     BaseReport.PrintXY(posx+85,posy+38, ' de ' + mes);
     BaseReport.PrintXY(posx+125,posy+38,' del ' + Anio);
     BaseReport.PrintXY(posx+176,posy+38,trim(horallega.Text));

     BaseReport.PrintXY(posx+65,posy+44,nroorden);

     BaseReport.PrintXY(posx+100,posy+51,trim(apeynom.Text));

     BaseReport.PrintXY(posx+45,posy+58,trim(dnifalle.Text));
     BaseReport.PrintXY(posx+90,posy+58,trim(fecnac.Text));

     BaseReport.PrintXY(posx+35,posy+65,trim(nacio.Text));
     BaseReport.PrintXY(posx+80,posy+65,trim(estcivil.Text));
     BaseReport.PrintXY(posx+115,posy+65,trim(edad.Text));

     BaseReport.PrintXY(posx+5,posy+72,trim(domi.Text));
     BaseReport.PrintXY(posx+144,posy+72,trim(fecinhu.Text));

     BaseReport.PrintXY(posx+22,posy+79,trim(horafalle.Text));
     BaseReport.PrintXY(posx+45,posy+79,trim(diag.Text));

     BaseReport.PrintXY(posx+8,posy+86,trim(losmedicos.Text));
     BaseReport.PrintXY(posx+142,posy+86,trim(acta.Text));
     BaseReport.PrintXY(posx+175,posy+86,trim(fecdefun.Text));

     BaseReport.PrintXY(posx+47,posy+102,trim(parcela.Text));
     BaseReport.PrintXY(posx+82,posy+102,trim(sector.Text));
     BaseReport.PrintXY(posx+140,posy+102,trim(nomt.Text));

     BaseReport.PrintXY(posx+95,posy+110,trim(dnitit.Text));

     BaseReport.PrintXY(posx+8,posy+117,trim(nroacc.Text));

     BaseReport.PrintXY(posx+55,posy+125,trim(nomr.Text));
     BaseReport.PrintXY(posx+178,posy+125,trim(dnir.Text));

     BaseReport.PrintXY(posx+38,posy+132,trim(domr.Text));

     ///datos del chofer y unida de traslado
     if cb.Checked then begin
       BaseReport.SetFont('Arial Black',10);
       BaseReport.FontColor:=clBlack;
       BaseReport.PrintXY(posx+8,posy+255,'UNIDAD PERTENECIENTE A LA EMPRESA');
       BaseReport.PrintXY(posx+8,posy+260,'Chofer: ' + trim(chofer.Text));
       BaseReport.PrintXY(posx+150,posy+260,'Unidad Traslado: '+trim(dominio.Text));
     end;
    end;
   end;

begin
  posfx:=0;
  posfy:=0;
  salto:=4;
  hoja:=1;
  posfy:=Logo(posfx,posfy,hoja);
end;

procedure TAM_InhuProvisorio.cbClick(Sender: TObject);
begin
if cb.Checked then begin
 JvBitBtn5.Enabled:=true;
 JvBitBtn5.SetFocus;
 dominio.Enabled :=true;
end
else begin
 JvBitBtn5.Enabled:=false;
 dominio.Enabled :=false;
 impactacircu.SetFocus;
end;
end;

procedure TAM_InhuProvisorio.JvBitBtn5Click(Sender: TObject);
var Busqueda:TLA_BUSQUEDA;
begin
 Busqueda:=TLA_BUSQUEDA.Create(self);
 try
  Busqueda.NroOpcion:=3;
  Busqueda.Caption:='Busqueda y Seleccion de Clientes';
  Busqueda.ShowModal;
  CUIF3.Text:=busqueda.DB2.Text;
  CHOFER.Text:=busqueda.DB4.Text;
 finally
  Busqueda.Destroy;
 end;
 dominio.SetFocus;
end;

procedure TAM_InhuProvisorio.dominioExit(Sender: TObject);
begin
 if (trim(dominio.Text) = '') then begin
  messagedlgpos('Error!! Dominio de la unidad de traslado Ingresado Incorrectamente.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  dominio.SetFocus;
 end;
end;

procedure TAM_InhuProvisorio.dominioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then begin
   impactacircu.SetFocus;
  end;
end;

procedure TAM_InhuProvisorio.impactacircuClick(Sender: TObject);
var gf,t:integer;
begin
  AuditAccesos('Modulo 2','IMP ACTA DE CIRCULACION INHUMACION ' + TRIM(NroACC.Text)) ;
  actacircu:=DarMaximo('ActaCircuInhumado');
  numactacircu:='\PDF\ActaCirculacionInhumacion Accion '+ trim(nroacc.Text) + ' Nro' + trim(actacircu) + '.pdf';
  RVD.SystemPrinter.Copies :=2;
  RVD.Execute;
  RVD.DefaultDest := rdFile;
  RVD.DoNativeOutput := False;
  RVD.RenderObject := RvRenderPDF1;
  RVD.OutputFileName := modulo2.path_todo + numactacircu; //'\PDF\ActaCirculacionInhumacion Accion '+ trim(nroacc.Text) + ' Nro:' + numactacircu + '.pdf';
  RVD.SystemSetups := RVD.SystemSetups - [ssAllowSetup];
  RVD.Execute;
  cierra.SetFocus;
  SALE.Enabled :=TRUE;
end;

procedure TAM_InhuProvisorio.cbExit(Sender: TObject);
begin
if cb.Checked then begin
 JvBitBtn5.Enabled:=true;
 JvBitBtn5.SetFocus;
 dominio.Enabled :=true;
end
else begin
 JvBitBtn5.Enabled:=false;
 dominio.Enabled :=false;
 impactacircu.SetFocus;
end;
end;

procedure TAM_InhuProvisorio.cierraClick(Sender: TObject);
begin
  GroupBox3.Visible :=false;
  sale.Enabled :=true;
  SALE.SetFocus;
end;

end.

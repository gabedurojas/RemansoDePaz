unit AM_Cremacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, JvExGrids, JvStringGrid, StdCtrls, JvgGroupBox, Mask,DBClient,
  DBGrids, JvExDBGrids, JvDBGrid, Buttons, JvExButtons, JvBitBtn, ExtCtrls,
  ComCtrls, DB,DBCtrls,StrUtils, ToolWin,ClaseSistemas,ClaseFunciones,ADODB,
  RpDefine, RpBase, RpSystem, JvExStdCtrls, JvEdit, JvValidateEdit,
  ClaseTiposMedicos,ClaseParcelasMovimientosDiarrioDetalle, ClaseParcelasCremacionesDeudas, ClaseParcelasCremaciones,
  ClaseAtaudUsos, ClaseParcelasCremacionesEstados,ClaseParcelasCremacionesChoferVehi, JvSimLogic, RpRender, RpRenderPDF;

type LosDts = class(TDataSource);
type HackTable = class(TADOTable);

type THackStringGrid = class(TStringGrid);
type
  TAM_Cremaciones = class(TForm)
    PC1: TPageControl;
    TabSheet3: TTabSheet;
    grupo1: TGroupBox;
    Barra1: TStatusBar;
    ToolBar1: TToolBar;
    exporta: TJvBitBtn;
    JvBitBtn3: TJvBitBtn;
    Label35: TLabel;
    apeynom: TDBEdit;
    Label40: TLabel;
    Edit4: TEdit;
    Label36: TLabel;
    JvBitBtn1: TJvBitBtn;
    apeynom1: TDBEdit;
    Label38: TLabel;
    JvBitBtn2: TJvBitBtn;
    apeynom2: TDBEdit;
    Label37: TLabel;
    FECNAC: TMaskEdit;
    LB7: TLabel;
    E5: TEdit;
    Label31: TLabel;
    tpopago: TComboBox;
    Grupotarje: TGroupBox;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label52: TLabel;
    CUOTA: TComboBox;
    TARJETA: TComboBox;
    NROCB: TJvValidateEdit;
    NroCuota: TEdit;
    ftarje: TMaskEdit;
    tittarje: TEdit;
    GrupoCheq: TGroupBox;
    Label41: TLabel;
    LB12: TLabel;
    LB3: TLabel;
    LB5: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    banco: TComboBox;
    E1: TEdit;
    E2: TEdit;
    Fcheque: TMaskEdit;
    fpagocheque: TMaskEdit;
    titcheq: TEdit;
    JvBitBtn0: TJvBitBtn;
    cuif: TDBEdit;
    CUIF1: TDBEdit;
    CUIF2: TDBEdit;
    Label1: TLabel;
    JvBitBtn4: TJvBitBtn;
    inhumado: TDBEdit;
    cuifinhu: TDBEdit;
    Bevel2: TBevel;
    Label2: TLabel;
    fecinhu: TMaskEdit;
    Label16: TLabel;
    acta: TEdit;
    Label17: TLabel;
    nrofolio: TEdit;
    Label18: TLabel;
    nrotomo: TEdit;
    Label19: TLabel;
    losMedicos: TComboBox;
    NroReligion: TJvBitBtn;
    regcivil: TEdit;
    Label3: TLabel;
    Image1: TImage;
    RvOrden: TRvSystem;
    Panel1: TPanel;
    Label20: TLabel;
    TPOTALON: TComboBox;
    Label4: TLabel;
    actu: TBitBtn;
    SALE: TJvBitBtn;
    PV: TComboBox;
    Label5: TLabel;
    elcomprob: TEdit;
    Label78: TLabel;
    Edit2: TEdit;
    Label80: TLabel;
    VALCUOTA: TEdit;
    Label6: TLabel;
    origen: TComboBox;
    TP: TClientDataSet;
    DataSource1: TDataSource;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    Label7: TLabel;
    JvBitBtn5: TJvBitBtn;
    chofer: TDBEdit;
    CUIF3: TDBEdit;
    Label8: TLabel;
    dominio: TEdit;
    Label9: TLabel;
    destino: TComboBox;
    RvLlerandi: TRvSystem;
    Label10: TLabel;
    horasale: TMaskEdit;
    Label11: TLabel;
    Label12: TLabel;
    fecentrada: TMaskEdit;
    horaentra: TMaskEdit;
    idser: TEdit;
    Label39: TLabel;
    diag: TComboBox;
    JvBitBtn7: TJvBitBtn;
    RvRenderPDF1: TRvRenderPDF;
    GroupBox1: TGroupBox;
    Panel2: TPanel;
    JvSIMConnector4: TJvSIMConnector;
    Label59: TLabel;
    Label60: TLabel;
    JvSIMConnector1: TJvSIMConnector;
    Label13: TLabel;
    impactacircu: TJvBitBtn;
    Edit11: TEdit;
    Edit1: TEdit;
    cierra: TJvBitBtn;
    RvD: TRvSystem;
    RVActa: TRvSystem;
    Edit3: TEdit;
    StringAgrupD: TStringGrid;
    CheckBox1: TCheckBox;
    Label14: TLabel;
    Label15: TLabel;
    RvDyR: TRvSystem;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure FormActivate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure JvBitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FECNACExit(Sender: TObject);
    procedure FECNACKeyPress(Sender: TObject; var Key: Char);
    procedure JvBitBtn0Click(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure JvBitBtn2Click(Sender: TObject);
    procedure E5Exit(Sender: TObject);
    procedure E5KeyPress(Sender: TObject; var Key: Char);
    procedure tpopagoExit(Sender: TObject);
    procedure JvBitBtn4Click(Sender: TObject);
    procedure fecinhuExit(Sender: TObject);
    procedure losMedicosExit(Sender: TObject);
    procedure losMedicosKeyPress(Sender: TObject; var Key: Char);
    procedure fecinhuKeyPress(Sender: TObject; var Key: Char);
    procedure actaKeyPress(Sender: TObject; var Key: Char);
    procedure nrotomoKeyPress(Sender: TObject; var Key: Char);
    procedure nrofolioKeyPress(Sender: TObject; var Key: Char);
    procedure TARJETAExit(Sender: TObject);
    procedure bancoExit(Sender: TObject);
    procedure TARJETAKeyPress(Sender: TObject; var Key: Char);
    procedure bancoKeyPress(Sender: TObject; var Key: Char);
    procedure tittarjeExit(Sender: TObject);
    procedure titcheqExit(Sender: TObject);
    procedure tittarjeKeyPress(Sender: TObject; var Key: Char);
    procedure titcheqKeyPress(Sender: TObject; var Key: Char);
    procedure NroCuotaExit(Sender: TObject);
    procedure E1Exit(Sender: TObject);
    procedure E1KeyPress(Sender: TObject; var Key: Char);
    procedure NroCuotaKeyPress(Sender: TObject; var Key: Char);
    procedure NROCBExit(Sender: TObject);
    procedure NROCBKeyPress(Sender: TObject; var Key: Char);
    procedure E2Exit(Sender: TObject);
    procedure E2KeyPress(Sender: TObject; var Key: Char);
    procedure ftarjeKeyPress(Sender: TObject; var Key: Char);
    procedure ftarjeExit(Sender: TObject);
    procedure FchequeExit(Sender: TObject);
    procedure fpagochequeExit(Sender: TObject);
    procedure FchequeKeyPress(Sender: TObject; var Key: Char);
    procedure fpagochequeKeyPress(Sender: TObject; var Key: Char);
    procedure tpopagoKeyPress(Sender: TObject; var Key: Char);
    procedure exportaClick(Sender: TObject);
    procedure regcivilKeyPress(Sender: TObject; var Key: Char);
    procedure RvOrdenPrint(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure TPOTALONExit(Sender: TObject);
    procedure comprobKeyPress(Sender: TObject; var Key: Char);
    procedure TPOTALONKeyPress(Sender: TObject; var Key: Char);
    procedure actuClick(Sender: TObject);
    procedure elcomprobKeyPress(Sender: TObject; var Key: Char);
    procedure elcomprobExit(Sender: TObject);
    procedure elcomprobChange(Sender: TObject);
    procedure PVExit(Sender: TObject);
    procedure PVKeyPress(Sender: TObject; var Key: Char);
    procedure origenExit(Sender: TObject);
    procedure origenKeyPress(Sender: TObject; var Key: Char);
    procedure NroReligionClick(Sender: TObject);
    procedure SALEClick(Sender: TObject);
    procedure JvBitBtn5Click(Sender: TObject);
    procedure dominioExit(Sender: TObject);
    procedure dominioKeyPress(Sender: TObject; var Key: Char);
    procedure Limpiar(nro:byte);
    procedure destinoExit(Sender: TObject);
    procedure destinoKeyPress(Sender: TObject; var Key: Char);
    procedure RvLlerandiPrint(Sender: TObject);
    procedure horasaleKeyPress(Sender: TObject; var Key: Char);
    procedure fecentradaExit(Sender: TObject);
    procedure fecentradaKeyPress(Sender: TObject; var Key: Char);
    procedure horaentraKeyPress(Sender: TObject; var Key: Char);
    procedure horaentraExit(Sender: TObject);
    procedure horasaleExit(Sender: TObject);
    procedure impactacircuClick(Sender: TObject);
    procedure JvBitBtn7Click(Sender: TObject);
    procedure diagKeyPress(Sender: TObject; var Key: Char);
    procedure diagExit(Sender: TObject);
    procedure cierraClick(Sender: TObject);
    procedure RvDPrint(Sender: TObject);
    procedure JvBitBtn5Exit(Sender: TObject);
    procedure regcivilExit(Sender: TObject);
    procedure RvDAfterPrint(Sender: TObject);
    procedure RVActaPrint(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure ControlaSelec(nro:byte);
    procedure StringAgrupDClick(Sender: TObject);
    procedure RvDyRPrint(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
   control,gh,ci:boolean;
   cants,cantis,cant:integer;
   Funciones:TFuncionesVarias;
   Sistemas:TSistemas;
   AtaudUsos:TAtaudUsos;
   ParcelasMovimientosDiarrioDetalle:TParcelasMovimientosDiarrioDetalle;
   IdCombos:array of array of string;
   edadsusc,dnisusc,domsusc,edadinhu,dniinhu,dominhu,sexoinhu,nroorden,nacioinhu,estcivilinhu,actacircu,numactacircu ,
   edadt1,dnit1,domt1,edadt2,dnit2,domt2,fecnacinhu,tipocomprob,laobserva,idcrema,iddestino,nroactacircu:string;
   ParcelasCremacionesDeudas:TParcelasCremacionesDeudas;
   ParcelasCremacionesEstados:TParcelasCremacionesEstados;
   ParcelasCremaciones:TParcelasCremaciones;
   ParcelasCremacionesChoferVehi:TParcelasCremacionesChoferVehi;
   Filename: string;
    { Private declarations }
  public
    PROCESO: TADODataSet;
    DataSet,DtCombo,DtComboC,DtComboO,DataSetSaldo:TClientDataSet; //declaro el DAtaset de los Combobox
    DSGral:TClientDataSet;//declaro el DAtaset de la grilla
    ///// para la impresion de datos segun parametros
    PosH2:Array [0..4] of Double;//Posiciones
    Camp2:Array [0..4] of Integer;//Campos a Tomar en cuenta
    TxtCamp2:Array [0..4] of String;//Textos de los Campos a Tomar en cuenta
    { Public declarations }
  end;

var
  AM_Cremaciones: TAM_Cremaciones;

implementation

uses Modulo,Unidad,SelecCuotas,Busqueda,AM_VenGenerica,ClaseTiposDiagnosticos,CambiaOrigenDestinorCremacion;

{$R *.dfm}

procedure TAM_Cremaciones.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TAM_Cremaciones.FormActivate(Sender: TObject);
begin
 if not(gh) then begin
  gh:=true;
  PROCESO:=TADODataSet.Create(nil);
  PROCESO.ConnectionString:=modulo2.Conexion;
  setlength(IdCombos,7);
  StringAgrupD.Cells[0,0]:='Stock';               StringAgrupD.Cells[1,0]:='TipoAtaud';
  StringAgrupD.Cells[2,0]:='ID';                  StringAgrupD.Cells[3,0]:='Selec';
  PC1.ActivePage:=PC1.Pages[0];
  fecentrada.Text:=LeftStr(Fec_System(),10);
  fecnac.Text:=LeftStr(Fec_System(),10);
  fecinhu.Text:=LeftStr(Fec_System(),10);
  fcheque.Text:=LeftStr(Fec_System(),10);
  fpagocheque.Text:=LeftStr(Fec_System(),10);
  ftarje.Text:=LeftStr(Fec_System(),10);
  apeynom1.Text :='DESCONOCIDO';
  apeynom2.Text :='DESCONOCIDO';
  cuif1.Text :='20000000001';
  cuif2.Text :='20000000001';
  tipocomprob:='';
  grupocheq.Visible:=false;
  grupotarje.Visible:=false;
  edit2.Visible :=false;
  valcuota.Visible :=false;
  label78.Visible :=false;
  label80.Visible :=false;
  coloca1(3);         coloca1(7);
  coloca1(8);         coloca1(9);
  coloca1(10);        coloca1(11);
  coloca1(12);        coloca1(16);
  coloca1(17);        coloca1(18);
  coloca1(14);
  panel1.Visible :=false;
  sale.Enabled :=false;
  actu.Enabled :=false;
  GroupBox1.Visible :=false;
  origen.SetFocus;
 end;
end;

procedure TAM_Cremaciones.limpiar(nro:byte);
begin
{CONTADO
CHEQUE
TARJETA CREDITO
CUENTA CORRIENTE   }
end;

procedure TAM_Cremaciones.Coloca1(nro:byte);
var t,y,p,u:integer;
    txt,sex,nrosoli:string;
    txtw:widestring;
    Funciones:TFuncionesVarias;
    Sistema:TSistemas;
    NroDni,NroCuif,NroArea:variant;
    TiposMedicos:TTiposMedicos;
    TiposDiagnosticos:TTiposDiagnosticos;
begin
 if nro = 3 then begin
  diag.Clear;
  DtCombo.Free;
  Dtcombo:=TClientDataSet.Create(nil);
  TiposDiagnosticos:=TTiposDiagnosticos.Create(nil);
  TiposDiagnosticos.ConnectionString:=modulo2.Conexion;
  if TiposDiagnosticos.listar('SELECT Diagnostico,NroDiagnostico FROM TiposDiagnosticos ORDER BY Diagnostico',DtCombo) then begin
   SetLength(IdCombos[6],DtCombo.RecordCount);
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    diag.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
    IdCombos[6,t-1]:=DtCombo.Fields[1].AsString;
   end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  TiposDiagnosticos.Free;
  diag.ItemIndex:=0;
 end;
 if nro=7 then begin
  tpopago.Clear;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if not Funciones.Listar('SELECT idformapago,formapago FROM Fn_FormasPago (0)',DtCombo) then
  //if not Funciones.Listar('SELECT IdFormaPago,FormaPago FROM TiposFormasPago WHERE (IdFormaPago IN (0,2, 4, 5, 6)) ORDER BY IdFormaPago',DtCombo) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
   SetLength(IdCombos[5],DtCombo.RecordCount);
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    tpopago.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
    IdCombos[5,t-1]:=DtCombo.Fields[0].AsString;
   end;
  end;
  Funciones.Free;
  tpopago.ItemIndex:=0;
 end;
 if nro=8 then begin //Combo Talonarios
  for p:=0 to StringAgrupD.ColCount-1 do
   for u:=1 to StringAgrupD.RowCount-1 do StringAgrupD.Cells[p,u]:='';
  StringAgrupD.RowCount:=2;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  //txtw:='SELECT Objeto, Importe ,Id FROM ParcelasServiciosSepeliosObjetos WHERE (Activo = 1)';
  txtw:='SELECT stock,TipoAtaud,id FROM [StockAtaud] (1)';
  if not Funciones.Listar(txtw,DtCombo) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if not DtCombo.IsEmpty then begin
   for t:=1 to DtCombo.RecordCount do begin
    DtCombo.RecNo:=t;
    StringAgrupD.RowCount:=t+1;
    StringAgrupD.Cells[0,t]:=trim(DtCombo.Fields[0].AsString);
    StringAgrupD.Cells[1,t]:=trim(DtCombo.Fields[1].AsString);
    StringAgrupD.Cells[2,t]:=trim(DtCombo.Fields[2].AsString);
    StringAgrupD.Cells[3,t]:='';
   end;
  end;
 end;
 if nro=9 then begin //Combo Talonarios   idcombo 4
  DESTINO.Clear;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if Funciones.listar('SELECT Id, Destino FROM ParcelasCremacionesDestino where activo = 1 order by 1 asc',DtCombo) then begin
   SetLength(IdCombos[4],DtCombo.RecordCount);
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    DESTINO.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
    IdCombos[4,t-1]:=DtCombo.Fields[0].AsString;
   end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  DESTINO.ItemIndex:=0;
 end;
 if nro=10 then begin //Combo origen servicio   idcombo 3
  Origen.Clear;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if Funciones.listar('SELECT Id,Descripcion FROM ParcelasCremacionesOrigen WHERE Fechavigenciahasta is null order by 1 asc',DtCombo) then begin
   SetLength(IdCombos[3],DtCombo.RecordCount);
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    Origen.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
    IdCombos[3,t-1]:=DtCombo.Fields[0].AsString;
   end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  Origen.ItemIndex:=0;
 end;
 if nro=11 then begin //Combo Talonarios
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
 if nro=12 then begin   /// combo medicos     idcombo 0
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
 if nro=14 then begin //Combo Puntos de Venta
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
 if nro=16 then begin   // idcombo 1
  TARJETA.Clear;
  DtCombo.Free;
  Dtcombo:=TClientDataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT DetalleTarjeta,NroTarjeta FROM TiposTarjetasCredito order by 1';
  if Funciones.Listar(txtw,DtCombo)  then  begin
   SetLength(IdCombos[1],Dtcombo.RecordCount);
   for t:=1 to Dtcombo.RecordCount  do begin
    Dtcombo.RecNo:=t;
    TARJETA.Items.Insert(t-1,trim(Dtcombo.Fields[0].AsString));
    IdCombos[1,t-1]:=Dtcombo.Fields[1].AsString;
   end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  funciones.Free;
  TARJETA.ItemIndex:=0;
 end;
 if nro=17 then begin      //  idcombo 2
  banco.Clear;
  DtComboC.Free;
  DtcomboC:=TClientDataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT NroEntidad, Nombre from EntidadesBancarias WHERE (NroEntidad > 0) order by 1';
  if Funciones.Listar(txtw,DtComboC)  then  begin
   SetLength(IdCombos[2],DtcomboC.RecordCount);
   for t:=1 to DtcomboC.RecordCount  do begin
    DtcomboC.RecNo:=t;
    banco.Items.Insert(t-1,trim(DtcomboC.Fields[1].AsString));
    IdCombos[2,t-1]:=DtcomboC.Fields[0].AsString;
   end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  funciones.Free;
  banco.ItemIndex:=0;
 end;
 if nro=18 then begin
  DtComboO.Free;
  DtComboO:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if tpopago.itemindex = 0  then begin  // EFECTIVO
   txtw:='SELECT preciocontado FROM Fn_VistaLosServiciosPrecios(''CREMACION'')'
  end;
  if tpopago.itemindex = 1 then begin   //cheque
   txtw:='SELECT preciocheque FROM Fn_VistaLosServiciosPrecios(''CREMACION'')'
  end;
  if (tpopago.itemindex = 2) or (tpopago.itemindex = 3) then begin   //tarje credito   -- CUENTA CORRIENTE
   txtw:='SELECT preciolista FROM Fn_VistaLosServiciosPrecios(''CREMACION'') '
  end;
  if not Funciones.Listar(txtw,DtComboO) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  e5.Text :=trim(DtComboO.Fields[0].AsString);
 end;
 if nro=19 then begin
  DtComboO.Free;
  DtComboO:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT top 1 IdCremacion FROM ParcelasCremaciones order by 1 desc';
  if not Funciones.Listar(txtw,DtComboO) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  idcrema:=trim(DtComboO.Fields[0].AsString);
 end;
 if nro=20 then begin
  DtComboO.Free;
  DtComboO:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if trim(origen.Text)= 'CONVENIO - COCHERIA PARANA' then
    txtw:=' SELECT COUNT(*) FROM [ParcelasCremaciones] where IdOrigen = ('+ trim(idser.Text) + ')'; // decarmelomento
  //if (trim(origen.Text)= 'CARMELO MONTE') or (trim(origen.Text)= 'LLERANDI') then
  IF (trim(origen.Text) <> 'CONVENIO - COCHERIA PARANA') then
   txtw :='SELECT COUNT(*) FROM [ParcelasCremaciones] where IdOrigen not in (SELECT Id FROM ParcelasCremacionesOrigen'
   + ' WHERE (Descripcion = ''Convenio - Cocheria Parana''))' ;
  if not Funciones.Listar(txtw,DtComboO) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  nroorden:=trim(DtComboO.Fields[0].AsString);
 end;
 if nro=21 then begin
  if trim(origen.Text) = 'CONVENIO - COCHERIA PARANA' then nrosoli:= nroorden + '/20'
    else  nrosoli:= nroorden ;
  modulo2.Com1.ConnectionString:=modulo2.Conexion;
  modulo2.Com1.CommandText:='UPDATE ParcelasCremaciones SET NroSolicitud=' + chr(39) + nrosoli + chr(39) + ' WHERE (IdCremacion=' + idcrema + ');';
  modulo2.Com1.Execute;
 end;
 if nro = 22 then begin
  DataSetSaldo.Free;
  DataSetSaldo:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=DataSetSaldo;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:= 'select orden,fechacremacion,referencia,debe,haber from [CremacionesSaldos] (1)';
  if not Funciones.Listar(txtw,DataSetSaldo) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
 end;
 if nro = 36 then begin
  ParcelasCremaciones:=TParcelasCremaciones.Create(nil);
  ParcelasCremaciones.ConnectionString:=modulo2.Conexion;
  txtw:='UPDATE ParcelasCremaciones SET NroAcaCirculacion= ' + chr(39) + nroactacircu + chr(39) + ' WHERE (IdCremacion=' + idcrema + ')';
  ci:=ParcelasCremaciones.ListarSinResp(txtw);
  ParcelasCremaciones.Free;
 end;
end;

procedure TAM_Cremaciones.JvBitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TAM_Cremaciones.FECNACExit(Sender: TObject);
var kl:Tdatetime;
begin
 try
  kl:=strtodate(trim(FECNAC.Text));
 except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  FECNAC.SetFocus;
 end;
end;

procedure TAM_Cremaciones.FECNACKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  horasale.SetFocus;
 end;
end;

procedure TAM_Cremaciones.JvBitBtn0Click(Sender: TObject);
var Busqueda:TLA_BUSQUEDA;
begin
 Busqueda:=TLA_BUSQUEDA.Create(self);
 try
  Busqueda.NroOpcion:=3;
  Busqueda.Caption:='Busqueda y Seleccion de Clientes';
  Busqueda.ShowModal;
  CUIF.Text:=busqueda.DB2.Text;
  apeynom.Text:=busqueda.DB4.Text;
  edadsusc:=unidad.edad(strcut(Fec_System(),10),trim(busqueda.DB10.Text));
  dnisusc:=busqueda.DB1.Text;
  domsusc:=busqueda.DB5.Text;
 finally
  Busqueda.Destroy;
 end;
 edit4.SetFocus;
end;

procedure TAM_Cremaciones.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  JvBitBtn4.SetFocus;
 end;
end;

procedure TAM_Cremaciones.JvBitBtn1Click(Sender: TObject);
var Busqueda:TLA_BUSQUEDA;
begin
 Busqueda:=TLA_BUSQUEDA.Create(self);
 try
  Busqueda.NroOpcion:=3;
  Busqueda.Caption:='Busqueda y Seleccion de Clientes';
  Busqueda.ShowModal;
  CUIF1.Text:=busqueda.DB2.Text;
  apeynom1.Text:=busqueda.DB4.Text;
  edadt1:=unidad.edad(strcut(Fec_System(),10),trim(busqueda.DB10.Text));
  dnit1:=busqueda.DB1.Text;
  domt1:=busqueda.DB5.Text;
 finally
  Busqueda.Destroy;
 end;

 if trim(apeynom1.Text) = trim (inhumado.Text) then begin
  messagedlg('Error.. El inhumado no puede ser igual al Testigo..',mterror,[mbok],0);
  jvbitbtn4.Click;
 end
 else JvBitBtn2.SetFocus;
end;

procedure TAM_Cremaciones.JvBitBtn2Click(Sender: TObject);
var Busqueda:TLA_BUSQUEDA;
begin
 Busqueda:=TLA_BUSQUEDA.Create(self);
 try
  Busqueda.NroOpcion:=3;
  Busqueda.Caption:='Busqueda y Seleccion de Clientes';
  Busqueda.ShowModal;
  CUIF2.Text:=busqueda.DB2.Text;
  apeynom2.Text:=busqueda.DB4.Text;
  edadt2:=unidad.edad(strcut(Fec_System(),10),trim(busqueda.DB10.Text));
  dnit2:=busqueda.DB1.Text;
  domt2:=busqueda.DB5.Text;
 finally
  Busqueda.Destroy;
 end;

 if trim(apeynom2.Text) = trim (inhumado.Text) then begin
  messagedlg('Error.. El inhumado no puede ser igual al Testigo..',mterror,[mbok],0);
  jvbitbtn2.Click;
 end
 else regcivil.SetFocus;
end;

procedure TAM_Cremaciones.E5Exit(Sender: TObject);
begin
 if (trim(E5.Text) = '')  or (trim(E5.Text) = '0') then begin
  messagedlgpos('Error!! El Importe de la Cremacion esta Ingresado Incorrectamente.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  E5.SetFocus;
 end;
end;

procedure TAM_Cremaciones.E5KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  if (tpopago.itemindex = 0) or (tpopago.itemindex = 3) then begin TPOTALON.SetFocus;
  end;
  if (tpopago.itemindex = 1) then begin banco.SetFocus;
  end;
  if (tpopago.itemindex =2) then begin tarjeta.SetFocus;
  end;
 end
 else begin
  if ( StrScan('0123456789.',Key) <> nil) or (Key = Char(VK_BACK) ) then
    else Key := #0;
 end;
end;

procedure TAM_Cremaciones.tpopagoExit(Sender: TObject);
begin
 if tpopago.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Pago Ingresado!!',mterror,[mbok],0);
  tpopago.SetFocus;
 end;
end;

procedure TAM_Cremaciones.JvBitBtn4Click(Sender: TObject);
var Busqueda:TLA_BUSQUEDA;
begin
 Busqueda:=TLA_BUSQUEDA.Create(self);
 try
  Busqueda.NroOpcion:=3;
  Busqueda.Caption:='Busqueda y Seleccion de Clientes';
  Busqueda.ShowModal;
  cuifinhu.Text:=busqueda.DB2.Text;
  inhumado.Text:=busqueda.DB4.Text;
  edadinhu:=unidad.edad(strcut(Fec_System(),10),trim(busqueda.DB10.Text));
  dniinhu:=busqueda.DB1.Text;
  dominhu:=busqueda.DB5.Text;
  sexoinhu:=busqueda.DB15.Text;
  fecnacinhu:=busqueda.DB10.Text;
  nacioinhu:= busqueda.DB8.Text;
  estcivilinhu:= busqueda.DB9.Text;
 finally
  Busqueda.Destroy;
 end;

 if trim(apeynom.Text ) = trim (inhumado.Text) then begin
  messagedlg('Error.. El inhumado no puede ser igual al que suscribe..',mterror,[mbok],0);
  jvbitbtn4.Click;
 end
 else fecinhu.SetFocus;
end;

procedure TAM_Cremaciones.fecinhuExit(Sender: TObject);
var kl:Tdatetime;
begin
 try
  kl:=strtodate(trim(fecinhu.Text));
 except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  fecinhu.SetFocus;
 end;
end;

procedure TAM_Cremaciones.losMedicosExit(Sender: TObject);
begin
 if losMedicos.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el MEdico Ingresado!!',mterror,[mbok],0);
  losMedicos.SetFocus;
 end;
end;

procedure TAM_Cremaciones.losMedicosKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  diag.SetFocus;
 end;
end;

procedure TAM_Cremaciones.fecinhuKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  acta.SetFocus;
end;
end;

procedure TAM_Cremaciones.actaKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  nrotomo.SetFocus;
end;
end;

procedure TAM_Cremaciones.nrotomoKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  nrofolio.SetFocus;
end;
end;

procedure TAM_Cremaciones.nrofolioKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  losmedicos.SetFocus;
end;
end;

procedure TAM_Cremaciones.TARJETAExit(Sender: TObject);
begin
if TARJETA.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe la Tarjeta Ingresada!!',mterror,[mbok],0);
  TARJETA.SetFocus;
end;
end;

procedure TAM_Cremaciones.bancoExit(Sender: TObject);
begin
if banco.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe un Banco Ingresado!!',mterror,[mbok],0);
  banco.SetFocus;
end;
end;

procedure TAM_Cremaciones.TARJETAKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  tittarje.SetFocus;
 end;
end;

procedure TAM_Cremaciones.bancoKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  titcheq.SetFocus;
 end;
end;

procedure TAM_Cremaciones.tittarjeExit(Sender: TObject);
begin
if trim(tittarje.Text) = '' then begin
  messagedlg('Error!! No hay Titular de la Tarjeta Ingresada.',mterror,[mbok],0);
  tittarje.SetFocus
end;
end;

procedure TAM_Cremaciones.titcheqExit(Sender: TObject);
begin
if trim(titcheq.Text) = '' then begin
  messagedlg('Error!! No hay Titular del Cheque Ingresada.',mterror,[mbok],0);
  titcheq.SetFocus
end;
end;

procedure TAM_Cremaciones.tittarjeKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  nrocuota.SetFocus;
end;
end;

procedure TAM_Cremaciones.titcheqKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  e1.SetFocus;
 end;
end;

procedure TAM_Cremaciones.NroCuotaExit(Sender: TObject);
begin
 if (trim(NroCuota.Text) = '') OR (trim(NroCuota.Text) = '00') OR (trim(NroCuota.Text) = '0') then begin
  messagedlgpos('Error!! Nro de Cuota Ingresado Incorrectamente.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  NroCuota.SetFocus;
 end;
end;

procedure TAM_Cremaciones.E1Exit(Sender: TObject);
begin
 if (trim(E1.Text) = '') then begin
  messagedlgpos('Error!! Nro de Serie Incorrecto.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  E1.SetFocus;
 end;
end;

procedure TAM_Cremaciones.E1KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then E2.SetFocus
 else begin
  if ( StrScan('ABCDEFGHIJKLMNÑOPQRSTUVWXYZ',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;
end;

procedure TAM_Cremaciones.NroCuotaKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then NroCb.SetFocus
 else begin
  if ( StrScan('0123456789',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;
end;

procedure TAM_Cremaciones.NROCBExit(Sender: TObject);
begin
 if (trim(NROCB.Text) = '') OR (trim(NROCB.Text) = '0') then begin
  messagedlgpos('Error!! Nro de Comprobante Ingresado Incorrectamente.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  NROCB.SetFocus;
 end;
end;

procedure TAM_Cremaciones.NROCBKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then ftarje.SetFocus
 else begin
  if ( StrScan('0123456789.',Key) <> nil ) or  ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;
end;

procedure TAM_Cremaciones.E2Exit(Sender: TObject);
begin
 if (trim(E2.Text) = '') OR (trim(E2.Text) = '000000000000') OR (trim(E2.Text) = '0') then begin
  messagedlgpos('Error!! Nro de Cheque Ingresado Incorrectamente.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  E2.SetFocus;
 end;
end;

procedure TAM_Cremaciones.E2KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then fcheque.SetFocus
 else begin
  if ( StrScan('1234567890',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;
end;

procedure TAM_Cremaciones.ftarjeKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  panel1.Visible:=true;
  tpotalon.SetFocus;
 end;
end;

procedure TAM_Cremaciones.ftarjeExit(Sender: TObject);
var fec:Tdatetime;
begin
 try
  fec:=strtodate(trim(ftarje.Text));
 except
  messagedlgpos('La fecha es Erronea!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  ftarje.SetFocus;
 end;
end;

procedure TAM_Cremaciones.FchequeExit(Sender: TObject);
var fec:Tdatetime;
begin
 try
  fec:=strtodate(trim(Fcheque.Text));
 except
  messagedlgpos('La fecha es Erronea!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  Fcheque.SetFocus;
 end;
end;

procedure TAM_Cremaciones.fpagochequeExit(Sender: TObject);
var fec:Tdatetime;
begin
 try
  fec:=strtodate(trim(fpagocheque.Text));
 except
  messagedlgpos('La fecha es Erronea!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  fpagocheque.SetFocus;
 end;
end;

procedure TAM_Cremaciones.FchequeKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  panel1.Visible:=true;
  tpotalon.SetFocus;
 end;
end;

procedure TAM_Cremaciones.fpagochequeKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
    sale.Enabled :=true;
    sale.SetFocus ;
 end;
end;

procedure TAM_Cremaciones.tpopagoKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
 Key := #0;
 if tpopago.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Pago Ingresado!!',mterror,[mbok],0);
  tpopago.SetFocus;
 end
 else begin
  if tpopago.itemindex = 0 then begin   //EFECTIVO
   coloca1(18);
   edit2.Visible :=false;
   valcuota.Visible :=false;
   label78.Visible :=false;
   label80.Visible :=false;
   grupocheq.Visible:=false;
   grupotarje.Visible:=false;
   sale.Enabled :=true;
   laobserva:= 'Pago Cremacion de ' + trim(tpopago.Text) + ' por $' + trim(e5.Text);
   panel1.Visible:=true;
   e5.SetFocus;
  end;
  { if tpopago.itemindex = 1 then begin  // FINANCIADO
   grupocheq.Visible:=false;
   grupotarje.Visible:=false;
   edit2.Visible :=true;
   valcuota.Visible :=true;
   label78.Visible :=true;
   label80.Visible :=true;
   Seleccion_Cuotas:= TSeleccion_Cuotas.create(self);
   try
    Seleccion_Cuotas.NroOpcion:=1;
    Seleccion_Cuotas.niv:=modulo2.nvl_usu;
    Seleccion_Cuotas.entrega:=strtofloat(e5.Text);
    Seleccion_Cuotas.capital:=strtofloat(e5.Text);
    Seleccion_Cuotas.fecha:=strcut(fec_system(),10);
    Seleccion_Cuotas.ShowModal;
   finally
    edit2.Text:=Seleccion_Cuotas.Nrocta.Text;
    valcuota.Text:=Seleccion_cuotas.ImpCta.Text;
    e5.Text:=trim(Seleccion_Cuotas.totalfinan);
    Seleccion_Cuotas.destroy;
   end;
   laobserva := 'Pago Cremacion por: ' + trim(tpopago.Text) + ' en ' + trim(edit2.Text) + ' cuotas de $' + trim(valcuota.Text);
   //exporta.Enabled :=true;
   //exporta.SetFocus ;
   panel1.Visible:=true;
   tpotalon.SetFocus;
  end; }
  if tpopago.itemindex = 1 then begin   //cheque
    coloca1(18);
   grupocheq.Visible:=true;
   grupotarje.Visible:=false;
   edit2.Visible :=false;
   valcuota.Visible :=false;
   label78.Visible :=false;
   label80.Visible :=false;
   laobserva:= 'Pago Cremacion por: ' + trim(tpopago.Text) + ' de ' + trim(banco.Text) + ' s/Nro Cheque ' + trim(e1.Text) + '-' + trim(e2.Text);
   BANCO.SetFocus;
  end;
  if tpopago.itemindex = 2 then begin   //tarje credito
   coloca1(18);
   edit2.Visible :=true;
   valcuota.Visible :=true;
   label78.Visible :=true;
   label80.Visible :=true;
   grupocheq.Visible:=false;
   grupotarje.Visible:=true;
   Seleccion_Cuotas:= TSeleccion_Cuotas.create(self);
   try
    Seleccion_Cuotas.NroOpcion:=4;
    Seleccion_Cuotas.niv:=modulo2.nvl_usu;
    Seleccion_Cuotas.entrega:=strtofloat(e5.Text);
    Seleccion_Cuotas.capital:=strtofloat(e5.Text);
    Seleccion_Cuotas.fecha:=strcut(fec_system(),10);
    Seleccion_Cuotas.ShowModal;
   finally
    edit2.Text:=Seleccion_Cuotas.Nrocta.Text;
    nrocuota.Text:=Seleccion_Cuotas.Nrocta.Text;
    valcuota.Text:=Seleccion_cuotas.ImpCta.Text;
    e5.Text:=trim(Seleccion_Cuotas.totalfinan);
    Seleccion_Cuotas.destroy;
   end;
   laobserva:= 'Pago Cremacion por: ' + trim(tpopago.Text) + ' - ' + trim(tarjeta.Text) + ' en ' + trim(edit2.Text) + ' cuotas de $' + trim(valcuota.Text);
   TARJETA.SetFocus;
  end;
  {if tpopago.itemindex = 4 then begin   // FINACIADOS SIN INTERES
   grupocheq.Visible:=false;
   grupotarje.Visible:=FALSE;
   edit2.Visible :=true;
   valcuota.Visible :=true;
   label78.Visible :=true;
   label80.Visible :=true;
   Seleccion_Cuotas:= TSeleccion_Cuotas.create(self);
   try
    Seleccion_Cuotas.NroOpcion:=3;
    Seleccion_Cuotas.nromov:=1;
    Seleccion_Cuotas.niv:=modulo2.nvl_usu;
    Seleccion_Cuotas.entrega:=strtofloat(e5.Text);
    Seleccion_Cuotas.capital:=strtofloat(e5.Text);
    Seleccion_Cuotas.fecha:=strcut(fec_system(),10);
    Seleccion_Cuotas.ShowModal;
   finally
    edit2.Text:=Seleccion_Cuotas.Nrocta.Text;
    valcuota.Text:=Seleccion_cuotas.ImpCta.Text;
    e5.Text:=trim(Seleccion_Cuotas.totalfinan);
    Seleccion_Cuotas.destroy;
   end;
   laobserva := 'Pago Cremacion por: ' + trim(tpopago.Text) + ' en ' + trim(edit2.Text) + ' cuotas de $' + trim(valcuota.Text);
   //exporta.SetFocus;
   panel1.Visible:=true;
   tpotalon.SetFocus;
  end;  }
  if tpopago.itemindex = 3 then begin   //CUENTA CORRIENTE
   coloca1(18);
   edit2.Visible :=false;
   valcuota.Visible :=false;
   label78.Visible :=false;
   label80.Visible :=false;
   grupocheq.Visible:=false;
   grupotarje.Visible:=false;
   sale.Enabled :=true;
   laobserva:= 'Pago Cremacion por ' + trim(tpopago.Text) + ' de $' + trim(e5.Text);
   panel1.Visible:=true;
   e5.SetFocus;
  end;
 end;
end;
end;

procedure TAM_Cremaciones.exportaClick(Sender: TObject);
//var gf,p,t:integer;
//    txt,elcheque,txtw,eltipo,elorigen:widestring;
//var ac,at,ct,pt,pd,pe:boolean;
//    elmes,elanio:string;
begin
{ gf:=messagedlgpos('Desea Confirmar esta Cremacion',mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
 if gf = 1 then begin
  PROCESO.Close;
  PROCESO.CommandText:='exec SPC_ParcelasCremacionesInsertar ' + Chr(39) + trim(fecnac.Text)+ chr(39)
  + ', null' ///+ nrosolicitud
  + ', ' + trim(cuif.Text)
  + ', ' + trim(cuifinhu.Text)
  + ', null' //+ edad
  + ', ' + Chr(39) + trim(fecinhu.Text)+ chr(39)
  + ', ' + IdCombos[0,losmedicos.ItemIndex]
  + ', ' + trim(acta.Text)
  + ', ' + trim(nrotomo.Text)
  + ', ' + trim(nrofolio.Text)
  + ', ' + Chr(39) + trim(regcivil.Text)+ chr(39)
  + ', null '
  + ', ' + Chr(39) + trim(edit4.Text)+ chr(39)
  + ', ' + trim(cuif1.Text)
  + ', ' + trim(cuif2.Text)
  + ', ' + Chr(39) + tipocomprob + chr(39)
  + ', ' + IdCombos[3,origen.ItemIndex]
  + ', ' + Chr(39) + trim(destino.Text) + chr(39) // nroorden
  + ', ' + Chr(39) + trim(horasale.Text) + chr(39)
  + ', ' + Chr(39) + trim(fecentrada.Text) + chr(39)
  + ', ' + Chr(39) + trim(horaentra.Text) + chr(39)  ;
  PROCESO.Open;
  if PROCESO.Fields[0].AsString = 'OK' then begin
   //traigo la ultima cremacion guardada
   coloca1(19);
   // inserto la deuda
   ElMes:=strcut_midle(fecnac.Text,4,5);
   ElAnio:=strcut_midle(fecnac.Text,7,10);
   ParcelasCremacionesDeudas:=TParcelasCremacionesDeudas.Create(nil);
   ParcelasCremacionesDeudas.ConnectionString:=modulo2.Conexion;
   txt:= idcrema
   +' , 1 '
   +' , ' + ElAnio + ElMes
   +' , ' + chr(39) + trim(fecnac.text) + chr(39)
   +' , ' + trim(e5.text)
   +' , 0 '
   +' , ' + trim(e5.text)
   +' , 1 , null '
   +' , ' + inttostr(modulo2.nro_usu);
   txtw:='SPC_ParcelasCremacionesDeudasInsertar ' +  txt;
   pd:=ParcelasCremacionesDeudas.ListarSinResp(txtw);
   ParcelasCremacionesDeudas.Free;

   ///insertamos el estado
   ParcelasCremacionesEstados:=TParcelasCremacionesEstados.create(nil);
   ParcelasCremacionesEstados.ConnectionString:=modulo2.Conexion;
   txt:= idcrema
   +' , 1 '
   +' , 1 '
   +' , null '
   +' , ' + inttostr(modulo2.nro_usu);
   txtw:='SPC_ParcelasCremacionesEstadosInsertar ' +  txt;
   pe:=ParcelasCremacionesEstados.ListarSinResp(txtw);
   ParcelasCremacionesEstados.Free;

   messagedlg('EXITO.... El Servicio de CREMACION se guardo correctamente..', mtConfirmation,[mbok],0);
   AuditAccesos('Modulo 2','SERVICIO DE CREMACION - Usu ' + inttostr(modulo2.nro_usu)) ;
   eltipo:='SERV. CREMACION - ' + trim(origen.Text) ;
   elorigen:= 'Fallecido ' + trim(inhumado.Text) ;
   //////
   ParcelasMovimientosDiarrioDetalle:=TParcelasMovimientosDiarrioDetalle.Create(nil);
   ParcelasMovimientosDiarrioDetalle.ConnectionString:=modulo2.Conexion;
   txt:= ' null , null '
   + ' , null '
   + ' , ' + idcrema
   + ' , ' + chr(39) + strcut(Fec_System(),10) + chr(39)
   + ' , null ' //+ trim(d1.Text)
   + ' , ' + trim(e5.Text)
   + ' , ' + chr(39) + trim(tpopago.Text) + chr(39)
   + ' , ' + trim(edit2.Text)
   + ' , ' + trim(valcuota.Text)
   + ' , ' + chr(39) + elorigen + chr(39) ;  // + chr(39) + trim(observ.Text) + chr(39);
   if (trim(tpopago.Text)= 'CONTADO') or (trim(tpopago.Text)= 'CUENTA CORRIENTE') then begin
    txt := txt + ' , null , null , null , null , null  , ' + inttostr(modulo2.nro_usu)
    + ' , ' + chr(39) + eltipo + chr(39);
   end;
   if trim(tpopago.Text)= 'CHEQUE' then begin  // cheque
    elcheque := trim(e1.Text) + '-' + trim(e2.Text) ;
    txt := txt + ' , ' + chr(39) + trim(banco.Text) + chr(39)
    + ' , ' + chr(39) + trim(titcheq.Text) + chr(39)
    + ' , null '
    + ' , null '
    + ' , ' + chr(39) + elcheque + chr(39)
    + ' , ' + inttostr(modulo2.nro_usu)
    + ' , ' + chr(39) + eltipo + chr(39);
   end;
   if trim(tpopago.Text)= 'TARJETA CREDITO' then begin  // tarje credito debito
    txt := txt + ' , ' + chr(39) + trim(tarjeta.Text) + chr(39)
    + ' , ' + chr(39) + trim(tittarje.Text) + chr(39)
    + ' , ' + trim(nrocuota.Text)
    + ' , ' + trim(nrocb.Text)
    + ' , null '
    + ' , ' + inttostr(modulo2.nro_usu)
    + ' , ' + chr(39) + eltipo + chr(39);
   end;
   //if (trim(tpopago.Text)= 'FINANCIADO') or (trim(tpopago.Text)='FINANCIADO SIN INTERES')
   // txt := txt + ' , null , null , null , null , null  , ' + inttostr(modulo2.nro_usu) + ' , ' + chr(39) + eltipo + chr(39);
   //end;
   txtw:='INSERT INTO ParcelasMovimientosDiarrioDetalle (IdVenta,IdServicio,IdExhumacion,IdCremacion,Fecha,NroAccion,'
   +'Importe,FormaPago,NroCuotas,ValorCouta,Observaciones,Tarjeta,TarjetaTitular,TarjetaNroCuotas,TarjetaComprobante,' +
   'SerieCheque,Usu_A,TipoVenta) VALUES (' +  txt + ')';
   pt:=ParcelasMovimientosDiarrioDetalle.ListarSinResp(txtw);
   ParcelasMovimientosDiarrioDetalle.Free;
   ///
   coloca1(20);
   coloca1(21);
   rvorden.Execute;
   panel1.Visible:=false;
   exporta.Enabled :=false;
  end
  else messagedlg('Error al Guardar este SERVICIO de CREMACION. Consulte con un Administrador',mtError,[mbok],0);
 end;}
end;

procedure TAM_Cremaciones.regcivilKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  JvBitBtn5.SetFocus;
end;
end;

procedure TAM_Cremaciones.RvOrdenPrint(Sender: TObject);
var posfx,posfy,posfin,pos_y,salto,final:double;
   Tamanio,hoja,y:integer;
   txtw:string;
   pso:boolean;

   Function Imagen(posx,posy:double;vaf:integer):double;
   var Imagen1:  TBitmap;
       Fuente,PathLogo:string;
       ElMes,ElAnio,ElDia,txt:string;
   begin
    with RvOrden do begin
     Imagen1 := TBitMap.Create;
     PathLogo:=modulo2.path_todo + '\Formularios\FRM_NotaPedidodeCremacion.jpg';
     if FileExists(PathLogo) then begin
      Image1.Picture.LoadFromFile(PathLogo);
      Imagen1.Assign(Image1.Picture.Graphic);
      BaseReport.PrintBitmapRect(posx,posy,posx+215,posy+290,Imagen1);
     end;
     Imagen1.Free;
     ElMes:=el_mes(strtoint(strcut_midle(trim(fecnac.text),4,5)));
     ElAnio:=strcut_midle(trim(fecnac.text),7,10);
     ElDia:=LeftStr(trim(fecnac.text),2);
     BaseReport.SetFont('Arial Black',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+120,posy+41,ElDia);
     BaseReport.PrintXY(posx+141,posy+41,ElMes);
     BaseReport.PrintXY(posx+189,posy+41,ElAnio);
     BaseReport.PrintXY(posx+92,posy+66,trim(apeynom.Text));
     BaseReport.PrintXY(posx+14,posy+73,edadsusc);
     BaseReport.PrintXY(posx+50,posy+73,dnisusc);
     BaseReport.PrintXY(posx+124,posy+73,domsusc);
     BaseReport.PrintXY(posx+80,posy+86,trim(edit4.Text));
     BaseReport.PrintXY(posx+60,posy+93,trim(inhumado.Text));
     BaseReport.PrintXY(posx+60,posy+99,edadinhu);
     BaseReport.PrintXY(posx+105,posy+99,dniinhu);
     BaseReport.PrintXY(posx+150,posy+99,sexoinhu);
     BaseReport.PrintXY(posx+55,posy+105,dominhu);
     BaseReport.PrintXY(posx+150,posy+111,trim(fecinhu.Text));
     BaseReport.PrintXY(posx+110,posy+119,trim(losmedicos.Text));
     BaseReport.PrintXY(posx+55,posy+125,trim(acta.Text));
     BaseReport.PrintXY(posx+95,posy+125,trim(nrotomo.Text));
     BaseReport.PrintXY(posx+135,posy+125,trim(nrofolio.Text));
     BaseReport.PrintXY(posx+30,posy+131,trim(regcivil.Text));
     if trim(cuif1.Text)='20000000001' then begin
      BaseReport.PrintXY(posx+40,posy+187,'');
      BaseReport.PrintXY(posx+20,posy+193,'');
      BaseReport.PrintXY(posx+46,posy+193,'');
      BaseReport.PrintXY(posx+110,posy+193,'');
     end
     else begin
      BaseReport.PrintXY(posx+45,posy+187,trim(apeynom1.Text));
      BaseReport.PrintXY(posx+25,posy+193,dnit1);
      BaseReport.PrintXY(posx+54,posy+193,edadt1);
      BaseReport.PrintXY(posx+118,posy+193,domt1);
     end;
     if trim(cuif2.Text)='20000000001' then begin
      BaseReport.PrintXY(posx+115,posy+199,'');
      BaseReport.PrintXY(posx+20,posy+205,'');
      BaseReport.PrintXY(posx+46,posy+205,'');
      BaseReport.PrintXY(posx+110,posy+205,'');
     end
     else begin
      BaseReport.PrintXY(posx+115,posy+199,trim(apeynom2.Text));
      BaseReport.PrintXY(posx+25,posy+205,dnit2);
      BaseReport.PrintXY(posx+54,posy+205,edadt2);
      BaseReport.PrintXY(posx+118,posy+205,domt2);
     end;
    end;
   end;

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
     BaseReport.PrintXY(posx+50,posy+19,'Remanso de Paz - Parque de los Recuerdos');
     BaseReport.SetFont('Arial Black',10);
     BaseReport.FontColor:=clBlack;
     if origen.ItemIndex = 0 then BaseReport.PrintXY(posx+150,posy+17,'CREMACION Nº: ' + nroorden)
      else BaseReport.PrintXY(posx+150,posy+17,'CREMACION Nº: ' + nroorden + '/20');
     BaseReport.SetFont('Arial Black',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+30);
     BaseReport.PrintXY(posx+5,posy+27,'REGISTRO DE CREMACIONES   - ORIGEN:  ' + trim(origen.Text));
     BaseReport.PrintXY(posx+150,posy+27,'DESTINO: ' + trim(destino.Text));
     BaseReport.SetFont('Arial',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+40);
     BaseReport.PrintXY(posx+5,posy+37,'DATOS DEL FALLECIDO');
     BaseReport.SetFont('Arial',9);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+165,posy+37,'--> Id Nº:' + idcrema );// + cantiser + '  |  ' + cantiseranio);

     BaseReport.SetFont('Arial Black',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+60);
     BaseReport.PrintXY(posx+5,posy+43,'Fec. Serv.');
     BaseReport.PrintXY(posx+25,posy+43,'Hora Servicio');
     BaseReport.PrintXY(posx+50,posy+43,'Fec. Cremacion');
     BaseReport.PrintXY(posx+75,posy+43,'Hora Cremacion');
     BaseReport.PrintXY(posx+105,posy+43,'Nombre del Extinto');
     BaseReport.PrintXY(posx+150,posy+43,'N° Doc.');
     BaseReport.PrintXY(posx+165,posy+43,'Edad');
     BaseReport.PrintXY(posx+180,posy+43,'Fec. Nac.');

     BaseReport.PrintXY(posx+5,posy+47,trim(fecentrada.Text));
     BaseReport.PrintXY(posx+25,posy+47,trim(horaentra.Text));
     BaseReport.PrintXY(posx+50,posy+47,trim(fecnac.Text));
     BaseReport.PrintXY(posx+75,posy+47,trim(horasale.Text));   //dniinhu
     BaseReport.PrintXY(posx+105,posy+47,trim(inhumado.Text));
     BaseReport.PrintXY(posx+150,posy+47,dniinhu);
     BaseReport.PrintXY(posx+165,posy+47,edadinhu);
     BaseReport.PrintXY(posx+180,posy+47,fecnacinhu);

    //BaseReport.PrintXY(posx+5,posy+47,trim(fecnac.Text));
   //  BaseReport.PrintXY(posx+35,posy+47,trim(inhumado.Text));
    // BaseReport.PrintXY(posx+90,posy+47,dniinhu);   //dniinhu
    //  BaseReport.PrintXY(posx+155,posy+47,edadinhu);
    // BaseReport.PrintXY(posx+170,posy+47,fecnacinhu); }

     BaseReport.PrintXY(posx+5,posy+53,'Medico');
     BaseReport.PrintXY(posx+80,posy+53,'Acta');
     BaseReport.PrintXY(posx+95,posy+53,'Folio');
     BaseReport.PrintXY(posx+110,posy+53,'Tomo');
     BaseReport.PrintXY(posx+130,posy+53,'Fec. Defuncion');

     BaseReport.PrintXY(posx+5,posy+57,trim(losmedicos.Text));
     BaseReport.PrintXY(posx+83,posy+57,trim(acta.Text));
     BaseReport.PrintXY(posx+98,posy+57,trim(nrofolio.Text));
     BaseReport.PrintXY(posx+113,posy+57,trim(nrotomo.Text));
     BaseReport.PrintXY(posx+130,posy+57,trim(fecinhu.Text));

     BaseReport.SetFont('Arial',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+100);
     BaseReport.PrintXY(posx+5,posy+67,' REFERENCIAS DEL SERVICIO');

     BaseReport.SetFont('Arial Black',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+88);
     BaseReport.PrintXY(posx+5,posy+70,'Suscribe / Responsable del Servicio');
     BaseReport.PrintXY(posx+65,posy+70,'Nº doc.');
     BaseReport.PrintXY(posx+5,posy+74,trim(apeynom.Text));
     BaseReport.PrintXY(posx+65,posy+74,dnisusc);

     BaseReport.PrintXY(posx+5,posy+81,'1º Testigo');
     BaseReport.PrintXY(posx+108,posy+81,'Nº Doc');

     if trim(cuif1.Text)='20000000001' then begin    // desconcido
      BaseReport.PrintXY(posx+5,posy+84,'');
      BaseReport.PrintXY(posx+108,posy+84,'');
     end
     else begin
      BaseReport.PrintXY(posx+5,posy+81,'1º Testigo');
      BaseReport.PrintXY(posx+108,posy+81,'Nº Doc');
      BaseReport.SetFont('Arial ',7);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posx+5,posy+84,trim(apeynom1.Text));
      BaseReport.PrintXY(posx+108,posy+84,dnit1);
     end;
     BaseReport.PrintXY(posx+5,posy+92,'2º Testigo');
     if trim(cuif2.Text)='20000000001' then begin
      BaseReport.PrintXY(posx+30,posy+93,'');
      BaseReport.PrintXY(posx+108,posy+100,'');
     end
     else begin
      BaseReport.PrintXY(posx+5,posy+93,trim(apeynom2.Text));
      BaseReport.PrintXY(posx+108,posy+93,dnit2);
     end;

     BaseReport.Rectangle(posx+4,posy+10,posx+200,posy+135);
     BaseReport.SetFont('Arial ',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+105,'Chofer : ' + trim(chofer.Text));
     BaseReport.PrintXY(posx+100,posy+105,'Unidad Traslado : ' + trim(dominio.Text));

     BaseReport.SetFont('Arial Black',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+110,'Cremacion : ' + tipocomprob);
     BaseReport.SetFont('Arial Black',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+115,'EXCLUSIVAMENTE P/CONTROL GERENCIAL E INFORMATICO');
     BaseReport.PrintXY(posx+5,posy+120,'SIN EXCEPCION Y DE CARACTER OBLIGATORIO');
     BaseReport.SetFont('Arial ',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+129,'OPERADOR SERVICIO: ' + MODULO2.nom_usu + ' FechaHora: ' + Fec_System());
     Logo:=posy+30;
    end;
   end;

   Function Mostrar3(posx,posy:double;vaf:integer):double;
    var a,y,pos,maxfil,j:integer;
    sd,sd1,posn,posw:double;
    tot,maxfila,val:real;
   begin
    with RvOrden do begin
      BaseReport.SetFont('Arial Black',9);
      BaseReport.RoundRect(posx+60,posy+11,posx+130,posy+16,5,5);
      BaseReport.PrintXY(posx+62,posy+15,'Detalle del Pago de la Cremacion');
      BaseReport.SetFont('Arial',8);
      if tpopago.ItemIndex = 0 then begin
       BaseReport.SetFont('Arial',9);
       BaseReport.PrintXY(posx+4,posy+19,'CONTADO IMPORTE:$ ' + TRIM(E5.Text));
      end;
      if tpopago.ItemIndex = 3 then begin
       BaseReport.SetFont('Arial',9);
       BaseReport.PrintXY(posx+4,posy+19,'CUENTA CORRIENTE IMPORTE:$ ' + TRIM(E5.Text));
      end;
      {if tpopago.ItemIndex = 1 then begin
       BaseReport.SetFont('Arial Black',8);
       BaseReport.PrintXY(posx+4,posy+19,'FINANCIADO');
       BaseReport.SetFont('Arial',9);
       BaseReport.PrintXY(posx+80,posy+19,'Nro Cuotas:');
       BaseReport.PrintXY(posx+140,posy+19,'Imp. Cuotas:');
       BaseReport.SetFont('Arial Black',8);
       BaseReport.PrintXY(posx+100,posy+19,trim(edit2.Text));
       BaseReport.PrintXY(posx+160,posy+19,trim(valcuota.Text));
      end;   }
      if tpopago.ItemIndex = 1 then begin    /// cheque
       BaseReport.SetFont('Arial',9);
       BaseReport.PrintXY(posx+4,posy+19,'Banco:');
       BaseReport.PrintXY(posx+70,posy+19,'Titular:');
       BaseReport.PrintXY(posx+140,posy+19,'Nro Cheque:');
       BaseReport.PrintXY(posx+4,posy+23,'Fecha Cheque:');
       BaseReport.PrintXY(posx+140,posy+23,'Importe:');
       BaseReport.SetFont('Arial Black',8);
       BaseReport.PrintXY(posx+22,posy+19,trim(banco.Text));
       BaseReport.PrintXY(posx+83,posy+19,trim(titcheq.Text));
       BaseReport.PrintXY(posx+163,posy+19,trim(e1.Text) + '-' + trim(e2.Text));
       BaseReport.PrintXY(posx+29,posy+23,trim(fcheque.Text));
       BaseReport.PrintXY(posx+163,posy+23,'$ ' + trim(E5.Text));
      end;
      if tpopago.ItemIndex = 2 then begin    // tarje credito
       BaseReport.SetFont('Arial',9);
       BaseReport.PrintXY(posx+4,posy+19,'Tarjeta:');
       BaseReport.PrintXY(posx+70,posy+19,'Titular:');
       BaseReport.PrintXY(posx+130,posy+19,'NroCuota:');
       BaseReport.PrintXY(posx+170,posy+19,'Cuota $:');
       BaseReport.PrintXY(posx+4,posy+23,'Comprobante:');
       BaseReport.PrintXY(posx+70,posy+23,'Fecha Cobro:');
       BaseReport.PrintXY(posx+130,posy+23,'Importe Total:');
       BaseReport.SetFont('Arial Black',8);
       BaseReport.PrintXY(posx+22,posy+19,trim(tarjeta.Text));
       BaseReport.PrintXY(posx+85,posy+19,trim(tittarje.Text));
       BaseReport.PrintXY(posx+155,posy+19,trim(nrocuota.Text));
       BaseReport.PrintXY(posx+185,posy+19,trim(valcuota.Text));
       BaseReport.PrintXY(posx+28,posy+23,trim(nrocb.Text));
       BaseReport.PrintXY(posx+90,posy+23,trim(ftarje.Text));
       BaseReport.PrintXY(posx+153,posy+23,'$ ' + trim(E5.Text));
      end;
      {if tpopago.ItemIndex = 4 then begin
       BaseReport.SetFont('Arial Black',8);
       BaseReport.PrintXY(posx+4,posy+19,'FINANCIADO SIN INTERES');
       BaseReport.SetFont('Arial',9);
       BaseReport.PrintXY(posx+80,posy+19,'Nro Cuotas:');
       BaseReport.PrintXY(posx+140,posy+19,'Imp. Cuotas:');
       BaseReport.SetFont('Arial Black',8);
       BaseReport.PrintXY(posx+100,posy+19,trim(edit2.Text));  //ctas
       BaseReport.PrintXY(posx+160,posy+19,trim(valcuota.Text));  // importe
      end; }
    end;
   end;

   Function GrillaCabecera(posx,posy:double;texto:string):double;
   var t:integer;
   begin
    with RvOrden do begin
     BaseReport.Rectangle(posx+2,posy,posx+200,posy+5);
     for t:=1 to length(Camp2)-1 do begin
      BaseReport.Rectangle(posx + PosH2[t]-2,posy,posx + PosH2[t]-2,posy+5);
     end;
    end;
    RvOrden.BaseReport.SetFont('Arial Black',6);
    RvOrden.BaseReport.FontColor:=clBlack;
    for t:=0 to length(Camp2)-1 do begin
      RvOrden.BaseReport.PrintXY(posx + PosH2[t],posy+4,TxtCamp2[t]);
    end;
    Result:=posy+5;
   end;

   /// Grilla Detalle
   Function GrillaDetalle(posx,posy:double;texto:string):double;
   var t:integer;
   begin
    RvOrden.BaseReport.SetFont('Arial',7);
    RvOrden.BaseReport.FontColor:=clBlack;
    for t:=0 to length(Camp2)-1 do
     RvOrden.BaseReport.PrintXY(posx + PosH2[t],posy+4,HackTable(FindComponent(texto)).Fields[Camp2[t]].AsString);
    Result:=posy+4;
   end;

   //// Grilla Recuadro
   Function GrillaRecuadro(posx,posy,posy2:double):double;
   var t:integer;
   begin
    with RvOrden do begin
     BaseReport.Rectangle(posx+2,posy,posx+200,posy2);
     for t:=1 to length(Camp2)-1 do begin
      BaseReport.Rectangle(posx + PosH2[t]-2,posy,posx + PosH2[t]-2,posy2);
     end;
    Result:=posy+4;
    end;
   end;

begin
 posfx:=1;
 posfy:=1;
 salto:=4;
 hoja:=1;
 posfy:=Imagen(posfx,posfy,hoja);
 hoja:=hoja+1;
 RvOrden.BaseReport.NewPage;
 posfy:=Logo(posfx,posfy,hoja);
 posfx:=5;
 posfy:=posfy + 100;
 posfy:=Mostrar3(posfx,posfy,hoja);
 if origen.ItemIndex = 2 then begin
  Coloca1(22);
  posfy:=posfy + 155;
  Camp2[0]:=0; Camp2[1]:=1; Camp2[2]:=2;  Camp2[3]:=3; Camp2[4]:=4;
  TxtCamp2[0]:='Orden';    TxtCamp2[1]:='FechaCremacion'; TxtCamp2[2]:='Referencia - Cremaciones:' + trim(origen.Text);
  TxtCamp2[3]:='DEBE';  TxtCamp2[4]:='HABER';
  PosH2[0]:=3;   PosH2[1]:=20;  PosH2[2]:=45; PosH2[3]:=160;   PosH2[4]:=180;
  tp.Close;
  TP.CloneCursor(DAtaSetSaldo,false,true);
  txtw:='TP';
  final:=GrillaCabecera(posfx,posfy+5,txtw);
  posfy:=final;
  pso:=false;
  for y:=1 to HackTable(findcomponent(txtw)).RecordCount do begin
   HackTable(FindComponent(txtw)).RecNo:=y;
   if pso then RvOrden.BaseReport.Rectangle(posfx+2,posfy+1,posfx+200,posfy+1)
   else pso:=true;
   posfy:=GrillaDetalle(posfx,posfy,txtw);
   if posfy > 280 then begin
    posfy:=GrillaRecuadro(posfx,final,posfy+2);
    posfx:=1.5;
    posfy:=2;
    hoja:=hoja+1;
    RvOrden.BaseReport.NewPage;
    posfy:=Logo(posfx,posfy,hoja);
    final:=GrillaCabecera(posfx,posfy+5,txtw);
    posfy:=final;pso:=false;
   end;
  end;
  RvOrden.BaseReport.SetFont('Arial Black',9);
  RvOrden.BaseReport.FontColor:=clBlack;
  if pso then posfy:=GrillaRecuadro(posfx,final,posfy+2);
  //except
 end;

 //2da pagina
 hoja:=hoja+1;
 posfx:=1;
 posfy:=1;
 salto:=4;
 RvOrden.BaseReport.NewPage;
 posfy:=Logo(posfx,posfy,hoja);
 posfx:=5;
 posfy:=posfy + 100;
 posfy:=Mostrar3(posfx,posfy,hoja);
 if origen.ItemIndex = 2 then begin
  Coloca1(22);
  posfy:=posfy + 155;
  Camp2[0]:=0; Camp2[1]:=1; Camp2[2]:=2;  Camp2[3]:=3; Camp2[4]:=4;
  TxtCamp2[0]:='Orden';    TxtCamp2[1]:='FechaCremacion'; TxtCamp2[2]:='Referencia';
  TxtCamp2[3]:='DEBE';  TxtCamp2[4]:='HABER';
  PosH2[0]:=3;   PosH2[1]:=20;  PosH2[2]:=45; PosH2[3]:=160;   PosH2[4]:=180;
  tp.Close;
  TP.CloneCursor(DAtaSetSaldo,false,true);
  txtw:='TP';
  final:=GrillaCabecera(posfx,posfy+5,txtw);
  posfy:=final;
  pso:=false;
  for y:=1 to HackTable(findcomponent(txtw)).RecordCount do begin
   HackTable(FindComponent(txtw)).RecNo:=y;
   if pso then RvOrden.BaseReport.Rectangle(posfx+2,posfy+1,posfx+200,posfy+1)
   else pso:=true;
   posfy:=GrillaDetalle(posfx,posfy,txtw);
   if posfy > 280 then begin
    posfy:=GrillaRecuadro(posfx,final,posfy+2);
    posfx:=1.5;
    posfy:=2;
    hoja:=hoja+1;
    RvOrden.BaseReport.NewPage;
    posfy:=Logo(posfx,posfy,hoja);
    final:=GrillaCabecera(posfx,posfy+5,txtw);
    posfy:=final;pso:=false;
   end;
  end;
  RvOrden.BaseReport.SetFont('Arial Black',9);
  RvOrden.BaseReport.FontColor:=clBlack;
  if pso then posfy:=GrillaRecuadro(posfx,final,posfy+2);
  //except
 end;
end;

procedure TAM_Cremaciones.Edit4Exit(Sender: TObject);
begin
if trim(Edit4.Text) = '' then begin
  messagedlg('Error!! No hay Parentezco Ingresado.',mterror,[mbok],0);
  Edit4.SetFocus
end;
end;

procedure TAM_Cremaciones.TPOTALONExit(Sender: TObject);
begin
 if TPOTALON.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe un Tipo de Comprobante Valido!!',mterror,[mbok],0);
  TPOTALON.SetFocus;
 end;
end;

procedure TAM_Cremaciones.comprobKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = chr(13) then actu.SetFocus;
 //if key = #13 then begin
 // Key := #0;
 // actu.enabled:=true;
 // actu.SetFocus;
 //end
 // else begin
 // if ( StrScan('0123456789-',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
 //  else Key := #0;
 //end;
end;

procedure TAM_Cremaciones.TPOTALONKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  pv.SetFocus;
end;
end;

procedure TAM_Cremaciones.actuClick(Sender: TObject);
begin
  tipocomprob:='Segun pago ' + trim(tpotalon.Text) + ' - ' + StrFill(PV.Text,3,'0','') + '-' + StrFill(elcomprob.Text,8,'0','');
  sale.Enabled :=true;
  sale.SetFocus;
end;

procedure TAM_Cremaciones.elcomprobKeyPress(Sender: TObject; var Key: Char);
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

procedure TAM_Cremaciones.elcomprobExit(Sender: TObject);
begin
 if (trim(elcomprob.Text) = '0') or (trim(elcomprob.Text) = '00000000') or (trim(elcomprob.Text) = '')  then begin
  messagedlg('ERROR!!... El N° de Comprobante es invalido',mterror,[mbok],0);
  elcomprob.SetFocus;
 end;
end;

procedure TAM_Cremaciones.elcomprobChange(Sender: TObject);
begin
 actu.Enabled :=true;
end;

procedure TAM_Cremaciones.PVExit(Sender: TObject);
begin
 if PV.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe un Tipo de Punto de Venta Valido!!',mterror,[mbok],0);
  PV.SetFocus;
 end;
end;

procedure TAM_Cremaciones.PVKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  elcomprob.SetFocus;
end;
end;

procedure TAM_Cremaciones.origenExit(Sender: TObject);
begin
 if origen.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe un origen de Servicio Ingresado!!',mterror,[mbok],0);
  origen.SetFocus;
 end
 else begin
  idser.Clear;
  idser.Text := IdCombos[3,origen.ItemIndex];
 end;
end;

procedure TAM_Cremaciones.origenKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
   Key := #0;
   DESTINO.SetFocus;
 end;
end;

procedure TAM_Cremaciones.NroReligionClick(Sender: TObject);
var AM_Generico:TAM_Generico;
begin
 AM_Generico:=TAM_Generico.Create(self);
 try
  AM_Generico.NroOpcion:=9;
  AM_Generico.Titulo1:='Medicos';
  AM_Generico.ShowModal;
 finally
  AM_Generico.Destroy;
  Coloca1(12);
  losmedicos.SetFocus;
 end;
end;

procedure TAM_Cremaciones.SALEClick(Sender: TObject);
var gf,p,t:integer;
    txt,elcheque,txtw,eltipo,elorigen,chof:widestring;
var ac,at,ct,pt,pd,pe,pc:boolean;
    elmes,elanio:string;
begin
 gf:=messagedlgpos('Desea Confirmar esta Cremacion',mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
 if gf = 1 then begin
   PROCESO.Close;
   txtw:= Chr(39) + trim(fecnac.Text) + chr(39)
   + ', null' ///+ nrosolicitud
   + ', ' + trim(cuif.Text)
   + ', ' + trim(cuifinhu.Text)
   + ', null' //+ edad
   + ', ' + Chr(39) + trim(fecinhu.Text)+ chr(39)
   + ', ' + IdCombos[0,losmedicos.ItemIndex]
   + ', ' + trim(acta.Text)
   + ', ' + trim(nrotomo.Text)
   + ', ' + trim(nrofolio.Text)
   + ', ' + Chr(39) + trim(regcivil.Text)+ chr(39)
   + ', null '
   + ', ' + Chr(39) + trim(edit4.Text)+ chr(39)
   + ', ' + trim(cuif1.Text)
   + ', ' + trim(cuif2.Text)
   + ', ' + Chr(39) + tipocomprob + chr(39)
   + ', ' + IdCombos[3,origen.ItemIndex]
   + ', ' + Chr(39) + trim(destino.Text) + chr(39)
   + ', ' + Chr(39) + trim(horasale.Text)+ chr(39)
   + ', ' + Chr(39) + trim(fecentrada.Text)+ chr(39)
   + ', ' + Chr(39) + trim(horaentra.Text)+ chr(39)
   + ', ' + IdCombos[5,tpopago.ItemIndex];
   if (trim(tpopago.Text)= 'EFECTIVO') or (trim(tpopago.Text)= 'CUENTA CORRIENTE') then begin
    txtw := txtw + ' , null , null , null , null , null  , null , null , null, ' + IdCombos[6,diag.ItemIndex];
   end;
   if trim(tpopago.Text)= 'CHEQUE' then begin  // cheque
    elcheque := trim(e1.Text) + '-' + trim(e2.Text) ;
    txtw := txtw + ' , ' + chr(39) + trim(tpopago.Text) + chr(39)
    + ' , ' + IdCombos[2,banco.ItemIndex] // nroentidad
    + ' , null'                                     // nrotarje
    + ' , ' + trim(e2.Text)                                      //nrocheque
    + ' , ' + trim(e1.Text)                                      //serie
    + ' , ' + chr(39) + trim(titcheq.Text) + chr(39)             // tituar
    + ' , null , null , ' + IdCombos[6,diag.ItemIndex];                // comprob    /// inmporte
   end;
   if trim(tpopago.Text)= 'TARJETA DE CREDITO' then begin  // tarje credito debito
    txtw := txtw  + ' , ' + chr(39) + trim(tpopago.Text) + chr(39)
    + ' , null , ' + IdCombos[1,tarjeta.ItemIndex]
    + ' , null , null , ' + chr(39) + trim(tittarje.Text) + chr(39)
    + ' , ' + chr(39) + trim(nrocb.Text) + chr(39) + ' , null , ' + IdCombos[6,diag.ItemIndex];
   end;
   /// las formas de pago
   PROCESO.CommandText:='exec SPC_ParcelasCremacionesInsertar ' + txtw; //trim(cuif.Text) //
   PROCESO.Open;
   if PROCESO.Fields[0].AsString = 'OK' then begin
     //traigo la ultima cremacion guardada
     coloca1(19);
     // inserto la deuda
     ElMes:=strcut_midle(fecnac.Text,4,5);
     ElAnio:=strcut_midle(fecnac.Text,7,10);
     ParcelasCremacionesDeudas:=TParcelasCremacionesDeudas.Create(nil);
     ParcelasCremacionesDeudas.ConnectionString:=modulo2.Conexion;
     txt:= idcrema
     +' , ' + trim(edit2.text)
     +' , ' + ElAnio + ElMes
     +' , ' + chr(39) + trim(fecnac.text) + chr(39)
     +' , ' + trim(e5.text)
     +' , 0 '
     +' , ' + trim(e5.text)
     +' , 1 , null '
     +' , ' + inttostr(modulo2.nro_usu);
     txtw:='SPC_ParcelasCremacionesDeudasInsertar ' +  txt;
     pd:=ParcelasCremacionesDeudas.ListarSinResp(txtw);
     ParcelasCremacionesDeudas.Free;

     ///insertamos el estado
     ParcelasCremacionesEstados:=TParcelasCremacionesEstados.create(nil);
     ParcelasCremacionesEstados.ConnectionString:=modulo2.Conexion;
     txt:= idcrema
     +' , 1 '
     +' , 1 '
     +' , ' + Chr(39) + tipocomprob + chr(39)
     +' , ' + inttostr(modulo2.nro_usu);
     txtw:='SPC_ParcelasCremacionesEstadosInsertar ' +  txt;
     pe:=ParcelasCremacionesEstados.ListarSinResp(txtw);
     ParcelasCremacionesEstados.Free;

     ///insertamos datos chofer
     modulo2.Com1.ConnectionString:=modulo2.Conexion;
     modulo2.Com1.CommandText:='insert into ParcelasCremacionesChoferVehi (IdCremacion,CuifChofer,Dominio,Observaciones) VALUES (' + idcrema
     +' , ' + trim(cuif3.Text)
     +' , ' + chr(39) + trim(dominio.text) + chr(39)
     + ' , null );';
     modulo2.Com1.Execute;

     ////insertamos el uso del ataud
    { if checkbox1.Checked then begin
      AtaudUsos:=TAtaudUsos.Create(nil);
      AtaudUsos.ConnectionString:=modulo2.Conexion;
      for t:=1 to StringAgrupD.RowCount-1 do begin
       if trim(StringAgrupD.Cells[3,t]) = '?' then begin
         txt:= trim(StringAgrupD.Cells[2,t])
         + ', null , null ,' + idcrema ;
         txtw:='SPC_AtaudUsosInsertar ' +  txt;
         pd:=AtaudUsos.ListarSinResp(txtw);
       end;
      end;
      AtaudUsos.Free;
     end;  }

     messagedlg('EXITO.... El Servicio de CREMACION se guardo correctamente..', mtConfirmation,[mbok],0);

     /// insertamos el mov diario
     AuditAccesos('Modulo 2','SERVICIO DE CREMACION - Usu ' + inttostr(modulo2.nro_usu)) ;
     eltipo:='SERV. CREMACION - ' + trim(origen.Text) ;
     elorigen:= 'Fallecido ' + trim(inhumado.Text)  + ' Destino: ' + trim(destino.Text)
              + ' Importe: ' + trim(e5.Text) + ' FormaPago:' + trim(tpopago.Text);
     ParcelasMovimientosDiarrioDetalle:=TParcelasMovimientosDiarrioDetalle.Create(nil);
     ParcelasMovimientosDiarrioDetalle.ConnectionString:=modulo2.Conexion;
     txt:= ' null , null '
     + ' , null '
     + ' , ' + idcrema
     + ' , ' + chr(39) + strcut(Fec_System(),10) + chr(39)
     + ' , null ' //+ trim(d1.Text)
     + ' , ' + trim(e5.Text)
     + ' , ' + chr(39) + trim(tpopago.Text) + chr(39)
     + ' , ' + trim(edit2.Text)
     + ' , ' + trim(valcuota.Text)
     + ' , ' + chr(39) + elorigen + chr(39);  // + chr(39) + trim(observ.Text) + chr(39);
     if (trim(tpopago.Text)= 'EFECTIVO') or (trim(tpopago.Text)= 'CUENTA CORRIENTE') then begin
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
     if trim(tpopago.Text)= 'TARJETA DE CREDITO' then begin  // tarje credito debito
      txt := txt
      + ' , ' + chr(39) + trim(tarjeta.Text) + chr(39)
      + ' , ' + chr(39) + trim(tittarje.Text) + chr(39)
      + ' , ' + trim(nrocuota.Text)
      + ' , ' + trim(nrocb.Text)
      + ' , null '
      + ' , ' + inttostr(modulo2.nro_usu)
      + ' , ' + chr(39) + eltipo + chr(39);
     end;
     txtw:='INSERT INTO ParcelasMovimientosDiarrioDetalle (IdVenta,IdServicio,IdExhumacion,IdCremacion,Fecha,NroAccion,'
     +'Importe,FormaPago,NroCuotas,ValorCouta,Observaciones,Tarjeta,TarjetaTitular,TarjetaNroCuotas,TarjetaComprobante,' +
     'SerieCheque,Usu_A,TipoVenta) VALUES (' +  txt + ')';
     pt:=ParcelasMovimientosDiarrioDetalle.ListarSinResp(txtw);
     ParcelasMovimientosDiarrioDetalle.Free;
     coloca1(20);
     coloca1(21);
     if iddestino = '1' then rvorden.Execute ;
     if iddestino = '2' then rvllerandi.Execute ;
     if iddestino = '3' then RvDyR.Execute ;
       
     panel1.Visible:=false;
     sale.Enabled :=false;

     StringAgrupD.Enabled :=false;
     coloca1(8);

     /// busco el archivo
     if iddestino = '2'  then begin
       Filename:= modulo2.path_todo + '\Formularios\AutorizacionparaCremacionLlerandi.jpg';
     end;
     if (iddestino = '3') or (iddestino = '0') or (iddestino = '1') then begin  
      Filename:=modulo2.path_todo + '\Formularios\AutorizacionparaCremacionDyR.jpg';
     end;
     if FileExists(FileName) then begin
      /// imprimo el acta de circulacion  de cremacion
      GroupBox1.Visible :=true;
      impactacircu.Enabled :=true;
      impactacircu.SetFocus ;
      label15.Caption := Filename;
     end
     else begin
      GroupBox1.Visible :=true;
      impactacircu.Enabled :=false;
      label15.Caption := 'ATENCION No se Encuentra el Archivo de Autorizacion';
     end;
   end
   else  messagedlg('Error al Guardar este SERVICIO de CREMACION. Consulte con un Administrador',mtError,[mbok],0);
 end;
end;

procedure TAM_Cremaciones.JvBitBtn5Click(Sender: TObject);
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

procedure TAM_Cremaciones.dominioExit(Sender: TObject);
begin
   if (trim(dominio.Text) = '') then begin
    messagedlgpos('Error!! Dominio de la unidad de traslado Ingresado Incorrectamente.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
    dominio.SetFocus;
   end;
end;

procedure TAM_Cremaciones.dominioKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
   Key := #0;
   tpopago.SetFocus;
  end;
end;

procedure TAM_Cremaciones.destinoExit(Sender: TObject);
begin
 if DESTINO.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe un origen de Servicio Ingresado!!',mterror,[mbok],0);
  DESTINO.SetFocus;
 end
 else begin
   iddestino:= IdCombos[4,destino.ItemIndex];
   edit3.Text := iddestino;
 end;
end;

procedure TAM_Cremaciones.destinoKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  fecentrada.SetFocus;
 end;
end;

procedure TAM_Cremaciones.RvLlerandiPrint(Sender: TObject);
var posfx,posfy,posfin,pos_y,salto,final:double;
   Tamanio,hoja,y:integer;
   txtw:string;
   pso:boolean;

   Function Logo(posx,posy:double;vaf:integer):double;
   var Imagen1:TBitMap;
       Fuente,PathLogo:string;
       Tamanio,hoja:integer;

   begin
    with RvLlerandi do begin
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
     BaseReport.PrintXY(posx+50,posy+19,'Remanso de Paz - Parque de los Recuerdos');
     if origen.ItemIndex = 0 then BaseReport.PrintXY(posx+150,posy+15,'CREMACION Nº: ' + nroorden)
      else BaseReport.PrintXY(posx+150,posy+15,'CREMACION Nº: ' + nroorden + '/20');
     BaseReport.SetFont('Arial Black',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+30);
     BaseReport.PrintXY(posx+5,posy+27,'REGISTRO DE CREMACIONES - ORIGEN: ' + trim(origen.Text));
     BaseReport.PrintXY(posx+150,posy+27,'DESTINO: ' + trim(destino.Text));
     BaseReport.SetFont('Arial',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+40);
     BaseReport.PrintXY(posx+5,posy+37,'DATOS DEL FALLECIDO');
     BaseReport.SetFont('Arial',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+175,posy+37,'Id:' + idcrema );// + cantiser + '  |  ' + cantiseranio);

     BaseReport.SetFont('Arial Black',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+60);
     BaseReport.PrintXY(posx+5,posy+43,'Fec. Serv.');
     BaseReport.PrintXY(posx+25,posy+43,'Hora Servicio');
     BaseReport.PrintXY(posx+50,posy+43,'Fec. Cremacion');
     BaseReport.PrintXY(posx+75,posy+43,'Hora Cremacion');
     BaseReport.PrintXY(posx+105,posy+43,'Nombre del Extinto');
     BaseReport.PrintXY(posx+150,posy+43,'N° Doc.');
     BaseReport.PrintXY(posx+165,posy+43,'Edad');
     BaseReport.PrintXY(posx+180,posy+43,'Fec. Nac.');

     BaseReport.PrintXY(posx+5,posy+47,trim(fecentrada.Text));
     BaseReport.PrintXY(posx+25,posy+47,trim(horaentra.Text));
     BaseReport.PrintXY(posx+50,posy+47,trim(fecnac.Text));
     BaseReport.PrintXY(posx+75,posy+47,trim(horasale.Text));   //dniinhu
     BaseReport.PrintXY(posx+105,posy+47,trim(inhumado.Text));
     BaseReport.PrintXY(posx+150,posy+47,dniinhu);
     BaseReport.PrintXY(posx+165,posy+47,edadinhu);
     BaseReport.PrintXY(posx+180,posy+47,fecnacinhu);

     BaseReport.PrintXY(posx+5,posy+53,'Medico');
     BaseReport.PrintXY(posx+80,posy+53,'Acta');
     BaseReport.PrintXY(posx+95,posy+53,'Folio');
     BaseReport.PrintXY(posx+110,posy+53,'Tomo');
     BaseReport.PrintXY(posx+130,posy+53,'Fec. Defuncion');

     BaseReport.PrintXY(posx+5,posy+57,trim(losmedicos.Text));
     BaseReport.PrintXY(posx+83,posy+57,trim(acta.Text));
     BaseReport.PrintXY(posx+98,posy+57,trim(nrofolio.Text));
     BaseReport.PrintXY(posx+113,posy+57,trim(nrotomo.Text));
     BaseReport.PrintXY(posx+130,posy+57,trim(fecinhu.Text));

     BaseReport.SetFont('Arial',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+100);
     BaseReport.PrintXY(posx+5,posy+67,' REFERENCIAS DEL SERVICIO');

     BaseReport.SetFont('Arial Black',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+88);
     BaseReport.PrintXY(posx+5,posy+73,'Suscribe');
     BaseReport.PrintXY(posx+65,posy+73,'Nº doc.');
     BaseReport.PrintXY(posx+5,posy+77,trim(apeynom.Text));
     BaseReport.PrintXY(posx+65,posy+77,dnisusc);

     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+125);
     BaseReport.SetFont('Arial ',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+95,'Chofer : ' + trim(chofer.Text));
     BaseReport.PrintXY(posx+100,posy+95,'Unidad Traslado : ' + trim(dominio.Text));

     BaseReport.SetFont('Arial Black',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+110,'Cremacion : ' + tipocomprob);
     BaseReport.SetFont('Arial Black',12);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+115,'EXCLUSIVAMENTE P/CONTROL GERENCIAL E INFORMATICO');
     BaseReport.PrintXY(posx+5,posy+120,'SIN EXCEPCION Y DE CARACTER OBLIGATORIO');
     BaseReport.SetFont('Arial ',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+129,'OPERADOR SERVICIO: ' + MODULO2.nom_usu + ' FechaHora: ' + Fec_System());
     Logo:=posy+30;
    end;
   end;

   Function Imagen(posx,posy:double;vaf:integer):double;
   var Imagen1:  TBitmap;
       Fuente,PathLogo:string;
       ElMes,ElAnio,ElDia,txt:string;
   begin
    with RvLlerandi do begin
     Imagen1 := TBitMap.Create;
     PathLogo:=modulo2.path_todo + '\Formularios\Lallerandi.jpg';
     if FileExists(PathLogo) then begin
      Image1.Picture.LoadFromFile(PathLogo);
      Imagen1.Assign(Image1.Picture.Graphic);
      BaseReport.PrintBitmapRect(posx,posy,posx+215,posy+290,Imagen1);
     end;
     Imagen1.Free;

     ElMes:=el_mes(strtoint(strcut_midle(trim(fecnac.text),4,5)));
     ElAnio:=strcut_midle(trim(fecnac.text),7,10);
     ElDia:=LeftStr(trim(fecnac.text),2);

     BaseReport.SetFont('Arial Black',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+86,posy+75,ElDia);
     BaseReport.PrintXY(posx+130,posy+75,ElMes);
     BaseReport.PrintXY(posx+183,posy+75,ElAnio);

     BaseReport.PrintXY(posx+65,posy+87,trim(apeynom.Text));
     BaseReport.PrintXY(posx+60,posy+95,dnisusc);
     BaseReport.PrintXY(posx+120,posy+95,trim(edit4.Text));

     BaseReport.PrintXY(posx+35,posy+125,trim(inhumado.Text));
     BaseReport.PrintXY(posx+160,posy+125,dniinhu);
    end;
   end;

   Function Mostrar3(posx,posy:double;vaf:integer):double;
    var a,y,pos,maxfil,j:integer;
    sd,sd1,posn,posw:double;
    tot,maxfila,val:real;
   begin
    with RvLlerandi do begin
     BaseReport.SetFont('Arial Black',9);
     BaseReport.RoundRect(posx+60,posy+11,posx+130,posy+16,5,5);
     BaseReport.PrintXY(posx+62,posy+15,'Detalle del Pago de la Cremacion');
     BaseReport.SetFont('Arial',8);
     if tpopago.ItemIndex = 0 then begin
      BaseReport.SetFont('Arial',9);
      BaseReport.PrintXY(posx+4,posy+19,'CONTADO IMPORTE:$ ' + TRIM(E5.Text));
     end;
     {if tpopago.ItemIndex = 1 then begin
      BaseReport.SetFont('Arial Black',8);
      BaseReport.PrintXY(posx+4,posy+19,'FINANCIADO');
      BaseReport.SetFont('Arial',9);
      BaseReport.PrintXY(posx+80,posy+19,'Nro Cuotas:');
      BaseReport.PrintXY(posx+140,posy+19,'Imp. Cuotas:');
      BaseReport.SetFont('Arial Black',8);
      BaseReport.PrintXY(posx+100,posy+19,trim(edit2.Text));
      BaseReport.PrintXY(posx+160,posy+19,trim(valcuota.Text));
     end;}
     if tpopago.ItemIndex = 1 then begin    // cheque
      BaseReport.SetFont('Arial',9);
      BaseReport.PrintXY(posx+4,posy+19,'Banco:');
      BaseReport.PrintXY(posx+70,posy+19,'Titular:');
      BaseReport.PrintXY(posx+140,posy+19,'Nro Cheque:');
      BaseReport.PrintXY(posx+4,posy+23,'Fecha Cheque:');
      //BaseReport.PrintXY(posx+70,posy+23,'Fecha Cobro:');
      BaseReport.PrintXY(posx+140,posy+23,'Importe:');
      BaseReport.SetFont('Arial Black',8);
      BaseReport.PrintXY(posx+22,posy+19,trim(banco.Text));
      BaseReport.PrintXY(posx+83,posy+19,trim(titcheq.Text));
      BaseReport.PrintXY(posx+163,posy+19,trim(e1.Text) + '-' + trim(e2.Text));
      BaseReport.PrintXY(posx+29,posy+23,trim(fcheque.Text));
      BaseReport.PrintXY(posx+163,posy+23,'$ ' + trim(E5.Text));
     end;
     if tpopago.ItemIndex = 2 then begin  // tarje credito
      BaseReport.SetFont('Arial',9);
      BaseReport.PrintXY(posx+4,posy+19,'Tarjeta:');
      BaseReport.PrintXY(posx+70,posy+19,'Titular:');
      BaseReport.PrintXY(posx+130,posy+19,'NroCuota:');
      BaseReport.PrintXY(posx+170,posy+19,'Cuota $:');
      BaseReport.PrintXY(posx+4,posy+23,'Comprobante:');
      BaseReport.PrintXY(posx+70,posy+23,'Fecha Cobro:');
      BaseReport.PrintXY(posx+130,posy+23,'Importe Total:');
      BaseReport.SetFont('Arial Black',8);
      BaseReport.PrintXY(posx+22,posy+19,trim(tarjeta.Text));
      BaseReport.PrintXY(posx+85,posy+19,trim(tittarje.Text));
      BaseReport.PrintXY(posx+155,posy+19,trim(nrocuota.Text));
      BaseReport.PrintXY(posx+185,posy+19,trim(valcuota.Text));
      BaseReport.PrintXY(posx+28,posy+23,trim(nrocb.Text));
      BaseReport.PrintXY(posx+90,posy+23,trim(ftarje.Text));
      BaseReport.PrintXY(posx+153,posy+23,'$ ' + trim(E5.Text));
     end;
     if tpopago.ItemIndex = 3 then begin
      BaseReport.SetFont('Arial',9);
      BaseReport.PrintXY(posx+4,posy+19,'CUENTA CORRIENTE IMPORTE:$ ' + TRIM(E5.Text));
     end;
     {if tpopago.ItemIndex = 4 then begin
      BaseReport.SetFont('Arial Black',8);
      BaseReport.PrintXY(posx+4,posy+19,'FINANCIADO SIN INTERES');
      BaseReport.SetFont('Arial',9);
      BaseReport.PrintXY(posx+80,posy+19,'Nro Cuotas:');
      BaseReport.PrintXY(posx+140,posy+19,'Imp. Cuotas:');
      BaseReport.SetFont('Arial Black',8);
      BaseReport.PrintXY(posx+100,posy+19,trim(edit2.Text));  //ctas
      BaseReport.PrintXY(posx+160,posy+19,trim(valcuota.Text));  // importe
     end; }
    end;
   end;

   Function GrillaCabecera(posx,posy:double;texto:string):double;
   var t:integer;
   begin
    with RvLlerandi do begin
     BaseReport.Rectangle(posx+2,posy,posx+200,posy+5);
     for t:=1 to length(Camp2)-1 do begin
      BaseReport.Rectangle(posx + PosH2[t]-2,posy,posx + PosH2[t]-2,posy+5);
     end;
    end;
    RvLlerandi.BaseReport.SetFont('Arial Black',6);
    RvLlerandi.BaseReport.FontColor:=clBlack;
    for t:=0 to length(Camp2)-1 do begin
      RvLlerandi.BaseReport.PrintXY(posx + PosH2[t],posy+4,TxtCamp2[t]);
    end;
    Result:=posy+5;
   end;

   /// Grilla Detalle
   Function GrillaDetalle(posx,posy:double;texto:string):double;
   var t:integer;
   begin
    RvLlerandi.BaseReport.SetFont('Arial',7);
    RvLlerandi.BaseReport.FontColor:=clBlack;
    for t:=0 to length(Camp2)-1 do
     RvLlerandi.BaseReport.PrintXY(posx + PosH2[t],posy+4,HackTable(FindComponent(texto)).Fields[Camp2[t]].AsString);
    Result:=posy+4;
   end;

   //// Grilla Recuadro
   Function GrillaRecuadro(posx,posy,posy2:double):double;
   var t:integer;
   begin
    with RvLlerandi do begin
     BaseReport.Rectangle(posx+2,posy,posx+200,posy2);
     for t:=1 to length(Camp2)-1 do begin
      BaseReport.Rectangle(posx + PosH2[t]-2,posy,posx + PosH2[t]-2,posy2);
     end;
    Result:=posy+4;
    end;
   end;

begin
 posfx:=1;
 posfy:=1;
 salto:=4;
 hoja:=1;
 posfy:=Imagen(posfx,posfy,hoja);
 hoja:=hoja+1;
 RvLlerandi.BaseReport.NewPage;
 posfy:=Logo(posfx,posfy,hoja);
 posfx:=5;
 posfy:=posfy + 90;
 posfy:=Mostrar3(posfx,posfy,hoja);
 if origen.ItemIndex = 1 then begin
  Coloca1(22);
  posfy:=posfy + 140;
  Camp2[0]:=0; Camp2[1]:=1; Camp2[2]:=2;  Camp2[3]:=3; Camp2[4]:=4;
  TxtCamp2[0]:='Orden';    TxtCamp2[1]:='FechaCremacion'; TxtCamp2[2]:='Referencia - Cremaciones:' + trim(origen.Text);
  TxtCamp2[3]:='DEBE';  TxtCamp2[4]:='HABER';
  PosH2[0]:=3;   PosH2[1]:=20;  PosH2[2]:=45; PosH2[3]:=160;   PosH2[4]:=180;

  tp.Close;
  TP.CloneCursor(DAtaSetSaldo,false,true);
  txtw:='TP';
  final:=GrillaCabecera(posfx,posfy+5,txtw);
  posfy:=final;
  pso:=false;
  for y:=1 to HackTable(findcomponent(txtw)).RecordCount do begin
   HackTable(FindComponent(txtw)).RecNo:=y;
   if pso then RvLlerandi.BaseReport.Rectangle(posfx+2,posfy+1,posfx+200,posfy+1)
   else pso:=true;
   posfy:=GrillaDetalle(posfx,posfy,txtw);
   if posfy > 280 then begin
    posfy:=GrillaRecuadro(posfx,final,posfy+2);
    posfx:=1.5;
    posfy:=2;
    hoja:=hoja+1;
    RvLlerandi.BaseReport.NewPage;
    posfy:=Logo(posfx,posfy,hoja);
    final:=GrillaCabecera(posfx,posfy+5,txtw);
    posfy:=final;pso:=false;
   end;
  end;
  RvLlerandi.BaseReport.SetFont('Arial Black',9);
  RvLlerandi.BaseReport.FontColor:=clBlack;
  if pso then posfy:=GrillaRecuadro(posfx,final,posfy+2);
  //except
 end;
end;

procedure TAM_Cremaciones.horasaleKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  JvBitBtn0.SetFocus;
 end;
end;

procedure TAM_Cremaciones.fecentradaExit(Sender: TObject);
var kl:Tdatetime;
begin
 try
  kl:=strtodate(trim(fecentrada.Text));
 except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  fecentrada.SetFocus;
 end;
end;

procedure TAM_Cremaciones.fecentradaKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  horaentra.SetFocus;
 end;
end;

procedure TAM_Cremaciones.horaentraKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  fecnac.SetFocus;
 end;
end;

procedure TAM_Cremaciones.horaentraExit(Sender: TObject);
begin
try
 StrToTime(horaentra.text);
 except ShowMEssage('Hora NO válida!');
 horaentra.SetFocus;
end;
end;

procedure TAM_Cremaciones.horasaleExit(Sender: TObject);
begin
 try
  StrToTime(horasale.text);
  except ShowMEssage('Hora NO válida!');
  horasale.SetFocus;
 end;
end;

procedure TAM_Cremaciones.impactacircuClick(Sender: TObject);
var gf,t:integer;
    path2:string;
begin
 //  RVActa.Execute;
  actacircu:=DarMaximo('ActaCircuCremacion');
  AuditAccesos('Modulo 2','IMP ACTA DE CIRCULACION CREMACION ' + trim(actacircu)) ;
  numactacircu:='\PDF\AutorizacionCremacionNro' + trim(actacircu) + '.pdf';
  RVD.SystemPrinter.Copies :=2;
  RVD.Execute;
  RVD.DefaultDest := rdFile;
  RVD.DoNativeOutput := False;
  RVD.RenderObject := RvRenderPDF1;
  RVD.OutputFileName := modulo2.path_todo + numactacircu; //'\PDF\ActaCirculacionInhumacion Accion '+ trim(nroacc.Text) + ' Nro:' + numactacircu + '.pdf';
  RVD.SystemSetups := RVD.SystemSetups - [ssAllowSetup];
  RVD.Execute;

  path2:=getcurrentdir();
  RVActa.SystemPrinter.Copies :=2;
  RVActa.Execute;
  RVActa.DefaultDest := rdFile;
  RVActa.DoNativeOutput := False;
  RVActa.RenderObject := RvRenderPDF1;
  RVActa.OutputFileName := path2 + '\PDF\ActaCirculacionCremacionNro' + trim(actacircu) + '.pdf';   // trim(idcrema)
  RVActa.SystemSetups := RVActa.SystemSetups - [ssAllowSetup];
  RVActa.Execute;

  cierra.SetFocus;
  JvBitBtn3.Enabled :=TRUE;
end;

procedure TAM_Cremaciones.JvBitBtn7Click(Sender: TObject);
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

procedure TAM_Cremaciones.diagKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  JvBitBtn1.SetFocus;
 end;
end;

procedure TAM_Cremaciones.diagExit(Sender: TObject);
begin
if diag.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Diagnostico Ingresado!!',mterror,[mbok],0);
  diag.SetFocus;
end;
end;

procedure TAM_Cremaciones.cierraClick(Sender: TObject);
begin
  GroupBox1.Visible :=false;
  sale.Enabled :=true;
  JvBitBtn3.SetFocus;
end;

procedure TAM_Cremaciones.RvDPrint(Sender: TObject);
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
     Mes:=el_mes(strtoint(strcut_midle(trim(fecentrada.Text),4,5)));
     Anio:=strcut_midle(trim(fecentrada.Text),7,10);
     day:=LeftStr(trim(fecentrada.Text),2);
     nroactacircu:= actacircu + '/'+ Anio;
     Imagen1 := TBitMap.Create;
     if iddestino = '2'  then begin  //llerandi
      PathLogo:=modulo2.path_todo + '\Formularios\AutorizacionparaCremacionLlerandi.jpg';
      if FileExists(PathLogo) then begin
       Image1.Picture.LoadFromFile(PathLogo);
       Imagen1.Assign(Image1.Picture.Graphic);
       BaseReport.PrintBitmapRect(posx,posy,posx+215,posy+290,Imagen1);
      end;
      Imagen1.Free;
      BaseReport.SetFont('Arial Black',12);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posx+75,posy+75,day);
      BaseReport.PrintXY(posx+118,posy+75, mes);
      BaseReport.PrintXY(posx+170,posy+75, Anio);
      BaseReport.PrintXY(posx+40,posy+85,trim(apeynom.Text));
      BaseReport.PrintXY(posx+25,posy+95,trim(dnisusc));
      BaseReport.PrintXY(posx+85,posy+95,trim(edit4.Text));
      BaseReport.PrintXY(posx+110,posy+115,trim(inhumado.Text));
      BaseReport.PrintXY(posx+65,posy+125,trim(dniinhu));

      BaseReport.RoundRect(posx+18,posy+270,posx+200,posy+282,5,5);
      BaseReport.SetFont('Arial Black',8);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posx+20,posy+275,'Acta de Circulacion Nro: ' + nroactacircu);
      BaseReport.PrintXY(posx+20,posy+280,'Chofer: ' + trim(chofer.Text));
      BaseReport.PrintXY(posx+120,posy+280,'Unidad Traslado: '+trim(dominio.Text));
     end;
     if (iddestino = '3') or (iddestino = '0') or (iddestino = '1') then begin  // ryd
      PathLogo:=modulo2.path_todo + '\Formularios\AutorizacionparaCremacionDyR.jpg';
      if FileExists(PathLogo) then begin
       Image1.Picture.LoadFromFile(PathLogo);
       Imagen1.Assign(Image1.Picture.Graphic);
       BaseReport.PrintBitmapRect(posx,posy,posx+215,posy+290,Imagen1);
      end;
      Imagen1.Free;
      BaseReport.SetFont('Arial Black',12);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posx+70,posy+77,'Formosa');
      BaseReport.PrintXY(posx+110,posy+77,day);
      BaseReport.PrintXY(posx+150,posy+77, mes);

      BaseReport.PrintXY(posx+20,posy+85, Anio);
      BaseReport.PrintXY(posx+70,posy+85,trim(apeynom.Text));
      BaseReport.PrintXY(posx+50,posy+93,trim(dnisusc));
      BaseReport.PrintXY(posx+105,posy+93,trim(edit4.Text));
      BaseReport.PrintXY(posx+20,posy+135,trim(inhumado.Text));
      BaseReport.PrintXY(posx+170,posy+135,trim(dniinhu));

      BaseReport.RoundRect(posx+18,posy+270,posx+200,posy+282,5,5);
      BaseReport.SetFont('Arial Black',8);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posx+20,posy+275,'Acta de Circulacion Nro: ' + nroactacircu);
       BaseReport.PrintXY(posx+20,posy+280,'Chofer: ' + trim(chofer.Text));
      BaseReport.PrintXY(posx+120,posy+280,'Unidad Traslado: '+trim(dominio.Text));
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

procedure TAM_Cremaciones.JvBitBtn5Exit(Sender: TObject);
begin
 if (trim(chofer.Text) = '') then begin
  messagedlgpos('Error!! Debe Seleccionar un Chofer para este servivio.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  JvBitBtn5.SetFocus;
 end
 else begin
  if (trim(chofer.Text) = trim(inhumado.Text)) then begin
    messagedlgpos('Error!! EL Chofer no pueder el mismo que el Inhumado.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
   JvBitBtn5.SetFocus;
  end;
  if (trim(chofer.Text) = trim(apeynom.Text)) then begin
    messagedlgpos('Error!! EL Chofer no pueder el mismo que el que Suscribe.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
    JvBitBtn5.SetFocus;
  end;
 end;
end;

procedure TAM_Cremaciones.regcivilExit(Sender: TObject);
begin
   if (trim(regcivil.Text) = '') then begin
    messagedlgpos('Error!! Debe ingresar una Enitdad de Reg. civil.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
    regcivil.SetFocus;
   end;
end;

procedure TAM_Cremaciones.RvDAfterPrint(Sender: TObject);
var path:string;
begin
  coloca1(36);
end;

procedure TAM_Cremaciones.RVActaPrint(Sender: TObject);
var posfx,posfy,posfin,pos_y,salto:double;
   hoja,m,t:integer;
   mes,meses,anio,day:string;
   Imagen3:TBitMap;

   Function Logo(posx,posy:double;vaf:integer):double;
   var Imagen1:TBitMap;
       Fuente,PathLogo:string;
       Tamanio,hoja:integer;
   begin
    with RVActa do begin
     Mes:=el_mes(strtoint(strcut_midle(trim(fecnac.Text),4,5)));
     Anio:=strcut_midle(trim(fecnac.Text),7,10);
     day:=LeftStr(trim(fecnac.Text),2);
     nroactacircu:= actacircu + '/'+ Anio;
     Imagen1 := TBitMap.Create;
     //if iddestino = '2'  then begin  //llerandi
      PathLogo:=modulo2.path_todo + '\Formularios\ActaCiruclacionCREMACION.jpg';
      if FileExists(PathLogo) then begin
       Image1.Picture.LoadFromFile(PathLogo);
       Imagen1.Assign(Image1.Picture.Graphic);
       BaseReport.PrintBitmapRect(posx,posy,posx+215,posy+290,Imagen1);
      end;
      Imagen1.Free;
      BaseReport.SetFont('Arial Black',12);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posx+23,posy+165,actacircu);

      BaseReport.SetFont('Arial Black',10);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posx+84,posy+32,day);
      BaseReport.PrintXY(posx+96,posy+32, 'de ' + mes);
      BaseReport.PrintXY(posx+140,posy+32, 'del ' + Anio);
      BaseReport.PrintXY(posx+172,posy+32,trim(horasale.Text));

      if origen.ItemIndex = 0 then BaseReport.PrintXY(posx+75,posy+37,nroorden)
        else BaseReport.PrintXY(posx+75,posy+37,nroorden + '/20');

      BaseReport.PrintXY(posx+110,posy+44,trim(inhumado.Text));
      BaseReport.PrintXY(posx+55,posy+50,trim(dniinhu));
      BaseReport.PrintXY(posx+96,posy+50,trim(fecnacinhu));
      BaseReport.PrintXY(posx+150,posy+50,trim(nacioinhu));

      BaseReport.SetFont('Arial Black',9);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posx+35,posy+57,trim(estcivilinhu));
      BaseReport.SetFont('Arial Black',10);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posx+68,posy+57,trim(edadinhu));
      BaseReport.PrintXY(posx+130,posy+57,trim(dominhu));

      BaseReport.PrintXY(posx+60,posy+65,trim(fecinhu.Text));
      BaseReport.PrintXY(posx+130,posy+65,trim(losmedicos.Text));

      BaseReport.PrintXY(posx+85,posy+72,trim(acta.Text));
      BaseReport.PrintXY(posx+115,posy+72,'');
      BaseReport.PrintXY(posx+18,posy+78,trim(regcivil.Text));

      BaseReport.PrintXY(posx+75,posy+87,trim(apeynom.Text));
      BaseReport.PrintXY(posx+180,posy+87,dnisusc);
      BaseReport.PrintXY(posx+45,posy+94,domsusc);

      BaseReport.PrintXY(posx+50,posy+207,trim(origen.Text));
      BaseReport.PrintXY(posx+50,posy+213,trim(destino.Text));

     //BaseReport.RoundRect(posx+18,posy+270,posx+200,posy+282,5,5);
      BaseReport.SetFont('Arial Black',9);
      BaseReport.FontColor:=clBlack;
     // BaseReport.PrintXY(posx+20,posy+275,'Acta de Circulacion Nro: ' + nroactacircu);
      BaseReport.PrintXY(posx+18,posy+230,'Chofer: ' + trim(chofer.Text));
      BaseReport.PrintXY(posx+120,posy+230,'Unidad Traslado: '+trim(dominio.Text));
    end;
   end;

begin
  posfx:=0;
  posfy:=0;
  salto:=4;
  hoja:=1;
  posfy:=Logo(posfx,posfy,hoja);
end;

procedure TAM_Cremaciones.CheckBox1Click(Sender: TObject);
begin
//  if checkbox1.Checked then StringAgrupD.Enabled :=true
//    else StringAgrupD.Enabled :=false;
end;

procedure TAM_Cremaciones.StringAgrupDClick(Sender: TObject);
begin
 if (trim(StringAgrupD.Cells[3,StringAgrupD.Row])='') then StringAgrupD.Cells[3,StringAgrupD.Row]:='x'
  else StringAgrupD.Cells[3,StringAgrupD.Row]:='';
  ControlaSelec(1);
end;

procedure TAM_Cremaciones.ControlaSelec(nro:byte);
var t,y,gf:integer;
begin
 cant:=0;
 cants:=0;
 if nro = 1 then begin
  for t:=1 to StringAgrupD.RowCount-1 do begin
   if (StringAgrupD.Cells[3,t] = 'x') then begin
    cant:=cant+1;
   end;
  end;
  if cant > 1 then begin
   messagedlg('Error!! No Se Puede seleccionar mas de un Tipo de Ataud..',mtWarning,[mbok],0);
  end;
 end;
end;

procedure TAM_Cremaciones.RvDyRPrint(Sender: TObject);
var posfx,posfy,posfin,pos_y,salto,final:double;
   Tamanio,hoja,y:integer;
   txtw:string;
   pso:boolean;

   Function Logo(posx,posy:double;vaf:integer):double;
   var Imagen1:TBitMap;
       Fuente,PathLogo:string;
       Tamanio,hoja:integer;

   begin
    with RvDyR do begin
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
     BaseReport.PrintXY(posx+50,posy+19,'Remanso de Paz - Parque de los Recuerdos');
     if origen.ItemIndex = 0 then BaseReport.PrintXY(posx+150,posy+15,'CREMACION Nº: ' + nroorden)
      else BaseReport.PrintXY(posx+150,posy+15,'CREMACION Nº: ' + nroorden + '/20');
     BaseReport.SetFont('Arial Black',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+30);
     BaseReport.PrintXY(posx+5,posy+27,'REGISTRO DE CREMACIONES - ORIGEN: ' + trim(origen.Text));
     BaseReport.PrintXY(posx+150,posy+27,'DESTINO: ' + trim(destino.Text));
     BaseReport.SetFont('Arial',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+40);
     BaseReport.PrintXY(posx+5,posy+37,'DATOS DEL FALLECIDO');
     BaseReport.SetFont('Arial',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+175,posy+37,'Id:' + idcrema );// + cantiser + '  |  ' + cantiseranio);
     //BaseReport.PrintXY(posx+130,posy+37,'Nº ORDEN:  ');// + cantiser + '  |  ' + cantiseranio);

     BaseReport.SetFont('Arial Black',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+60);
     BaseReport.PrintXY(posx+5,posy+43,'Fec. Serv.');
     BaseReport.PrintXY(posx+25,posy+43,'Hora Servicio');
     BaseReport.PrintXY(posx+50,posy+43,'Fec. Cremacion');
     BaseReport.PrintXY(posx+75,posy+43,'Hora Cremacion');
     BaseReport.PrintXY(posx+105,posy+43,'Nombre del Extinto');
     BaseReport.PrintXY(posx+150,posy+43,'N° Doc.');
     BaseReport.PrintXY(posx+165,posy+43,'Edad');
     BaseReport.PrintXY(posx+180,posy+43,'Fec. Nac.');

     BaseReport.PrintXY(posx+5,posy+47,trim(fecentrada.Text));
     BaseReport.PrintXY(posx+25,posy+47,trim(horaentra.Text));
     BaseReport.PrintXY(posx+50,posy+47,trim(fecnac.Text));
     BaseReport.PrintXY(posx+75,posy+47,trim(horasale.Text));   //dniinhu
     BaseReport.PrintXY(posx+105,posy+47,trim(inhumado.Text));
     BaseReport.PrintXY(posx+150,posy+47,dniinhu);
     BaseReport.PrintXY(posx+165,posy+47,edadinhu);
     BaseReport.PrintXY(posx+180,posy+47,fecnacinhu);

     BaseReport.PrintXY(posx+5,posy+53,'Medico');
     BaseReport.PrintXY(posx+80,posy+53,'Acta');
     BaseReport.PrintXY(posx+95,posy+53,'Folio');
     BaseReport.PrintXY(posx+110,posy+53,'Tomo');
     BaseReport.PrintXY(posx+130,posy+53,'Fec. Defuncion');

     BaseReport.PrintXY(posx+5,posy+57,trim(losmedicos.Text));
     BaseReport.PrintXY(posx+83,posy+57,trim(acta.Text));
     BaseReport.PrintXY(posx+98,posy+57,trim(nrofolio.Text));
     BaseReport.PrintXY(posx+113,posy+57,trim(nrotomo.Text));
     BaseReport.PrintXY(posx+130,posy+57,trim(fecinhu.Text));

     BaseReport.SetFont('Arial',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+100);
     BaseReport.PrintXY(posx+5,posy+67,' REFERENCIAS DEL SERVICIO');

     BaseReport.SetFont('Arial Black',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+88);
     BaseReport.PrintXY(posx+5,posy+73,'Suscribe');
     BaseReport.PrintXY(posx+65,posy+73,'Nº doc.');

     BaseReport.PrintXY(posx+5,posy+77,trim(apeynom.Text));
     BaseReport.PrintXY(posx+65,posy+77,dnisusc);

     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+125);
     BaseReport.SetFont('Arial ',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+95,'Chofer : ' + trim(chofer.Text));
     BaseReport.PrintXY(posx+100,posy+95,'Unidad Traslado : ' + trim(dominio.Text));

     BaseReport.SetFont('Arial Black',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+110,'Cremacion : ' + tipocomprob);
     BaseReport.SetFont('Arial Black',12);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+115,'EXCLUSIVAMENTE P/CONTROL GERENCIAL E INFORMATICO');
     BaseReport.PrintXY(posx+5,posy+120,'SIN EXCEPCION Y DE CARACTER OBLIGATORIO');
     BaseReport.SetFont('Arial ',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+129,'OPERADOR SERVICIO: ' + MODULO2.nom_usu + ' FechaHora: ' + Fec_System());
     Logo:=posy+30;
    end;
   end;

   Function Imagen(posx,posy:double;vaf:integer):double;
   var Imagen1:  TBitmap;
       Fuente,PathLogo:string;
       ElMes,ElAnio,ElDia,txt:string;
   begin
    with RvDyR do begin
     Imagen1 := TBitMap.Create;
     PathLogo:=modulo2.path_todo + '\Formularios\DyRServicios.jpg';
     if FileExists(PathLogo) then begin
      Image1.Picture.LoadFromFile(PathLogo);
      Imagen1.Assign(Image1.Picture.Graphic);
      BaseReport.PrintBitmapRect(posx,posy,posx+215,posy+290,Imagen1);
     end;
     Imagen1.Free;

     ElMes:=el_mes(strtoint(strcut_midle(trim(fecnac.text),4,5)));
     ElAnio:=strcut_midle(trim(fecnac.text),7,10);
     ElDia:=LeftStr(trim(fecnac.text),2);

     BaseReport.SetFont('Arial Black',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+55,posy+65,'Formosa');
     BaseReport.PrintXY(posx+110,posy+65,ElDia);
     BaseReport.PrintXY(posx+150,posy+65,ElMes);

     BaseReport.PrintXY(posx+25,posy+75,ElAnio);
     BaseReport.PrintXY(posx+75,posy+75,trim(apeynom.Text));

     BaseReport.PrintXY(posx+55,posy+83,dnisusc);
     BaseReport.PrintXY(posx+120,posy+83,trim(edit4.Text));

     BaseReport.PrintXY(posx+35,posy+125,trim(inhumado.Text));
     BaseReport.PrintXY(posx+160,posy+125,dniinhu);
    end;
   end;

   Function Mostrar3(posx,posy:double;vaf:integer):double;
    var a,y,pos,maxfil,j:integer;
    sd,sd1,posn,posw:double;
    tot,maxfila,val:real;
   begin
    with RvDyR do begin
     BaseReport.SetFont('Arial Black',9);
     BaseReport.RoundRect(posx+60,posy+11,posx+130,posy+16,5,5);
     BaseReport.PrintXY(posx+62,posy+15,'Detalle del Pago de la Cremacion');
     BaseReport.SetFont('Arial',8);
     if tpopago.ItemIndex = 0 then begin
      BaseReport.SetFont('Arial',9);
      BaseReport.PrintXY(posx+4,posy+19,'CONTADO IMPORTE:$ ' + TRIM(E5.Text));
     end;
     {if tpopago.ItemIndex = 1 then begin
      BaseReport.SetFont('Arial Black',8);
      BaseReport.PrintXY(posx+4,posy+19,'FINANCIADO');
      BaseReport.SetFont('Arial',9);
      BaseReport.PrintXY(posx+80,posy+19,'Nro Cuotas:');
      BaseReport.PrintXY(posx+140,posy+19,'Imp. Cuotas:');
      BaseReport.SetFont('Arial Black',8);
      BaseReport.PrintXY(posx+100,posy+19,trim(edit2.Text));
      BaseReport.PrintXY(posx+160,posy+19,trim(valcuota.Text));
     end;}
     if tpopago.ItemIndex = 1 then begin    // cheque
      BaseReport.SetFont('Arial',9);
      BaseReport.PrintXY(posx+4,posy+19,'Banco:');
      BaseReport.PrintXY(posx+70,posy+19,'Titular:');
      BaseReport.PrintXY(posx+140,posy+19,'Nro Cheque:');
      BaseReport.PrintXY(posx+4,posy+23,'Fecha Cheque:');
      //BaseReport.PrintXY(posx+70,posy+23,'Fecha Cobro:');
      BaseReport.PrintXY(posx+140,posy+23,'Importe:');
      BaseReport.SetFont('Arial Black',8);
      BaseReport.PrintXY(posx+22,posy+19,trim(banco.Text));
      BaseReport.PrintXY(posx+83,posy+19,trim(titcheq.Text));
      BaseReport.PrintXY(posx+163,posy+19,trim(e1.Text) + '-' + trim(e2.Text));
      BaseReport.PrintXY(posx+29,posy+23,trim(fcheque.Text));
      BaseReport.PrintXY(posx+163,posy+23,'$ ' + trim(E5.Text));
     end;
     if tpopago.ItemIndex = 2 then begin  // tarje credito
      BaseReport.SetFont('Arial',9);
      BaseReport.PrintXY(posx+4,posy+19,'Tarjeta:');
      BaseReport.PrintXY(posx+70,posy+19,'Titular:');
      BaseReport.PrintXY(posx+130,posy+19,'NroCuota:');
      BaseReport.PrintXY(posx+170,posy+19,'Cuota $:');
      BaseReport.PrintXY(posx+4,posy+23,'Comprobante:');
      BaseReport.PrintXY(posx+70,posy+23,'Fecha Cobro:');
      BaseReport.PrintXY(posx+130,posy+23,'Importe Total:');
      BaseReport.SetFont('Arial Black',8);
      BaseReport.PrintXY(posx+22,posy+19,trim(tarjeta.Text));
      BaseReport.PrintXY(posx+85,posy+19,trim(tittarje.Text));
      BaseReport.PrintXY(posx+155,posy+19,trim(nrocuota.Text));
      BaseReport.PrintXY(posx+185,posy+19,trim(valcuota.Text));
      BaseReport.PrintXY(posx+28,posy+23,trim(nrocb.Text));
      BaseReport.PrintXY(posx+90,posy+23,trim(ftarje.Text));
      BaseReport.PrintXY(posx+153,posy+23,'$ ' + trim(E5.Text));
     end;
     if tpopago.ItemIndex = 3 then begin
      BaseReport.SetFont('Arial',9);
      BaseReport.PrintXY(posx+4,posy+19,'CUENTA CORRIENTE IMPORTE:$ ' + TRIM(E5.Text));
     end;
     {if tpopago.ItemIndex = 4 then begin
      BaseReport.SetFont('Arial Black',8);
      BaseReport.PrintXY(posx+4,posy+19,'FINANCIADO SIN INTERES');
      BaseReport.SetFont('Arial',9);
      BaseReport.PrintXY(posx+80,posy+19,'Nro Cuotas:');
      BaseReport.PrintXY(posx+140,posy+19,'Imp. Cuotas:');
      BaseReport.SetFont('Arial Black',8);
      BaseReport.PrintXY(posx+100,posy+19,trim(edit2.Text));  //ctas
      BaseReport.PrintXY(posx+160,posy+19,trim(valcuota.Text));  // importe
     end; }
    end;
   end;

   Function GrillaCabecera(posx,posy:double;texto:string):double;
   var t:integer;
   begin
    with RvDyR do begin
     BaseReport.Rectangle(posx+2,posy,posx+200,posy+5);
     for t:=1 to length(Camp2)-1 do begin
      BaseReport.Rectangle(posx + PosH2[t]-2,posy,posx + PosH2[t]-2,posy+5);
     end;
    end;
    RvDyR.BaseReport.SetFont('Arial Black',6);
    RvDyR.BaseReport.FontColor:=clBlack;
    for t:=0 to length(Camp2)-1 do begin
      RvDyR.BaseReport.PrintXY(posx + PosH2[t],posy+4,TxtCamp2[t]);
    end;
    Result:=posy+5;
   end;

   /// Grilla Detalle
   Function GrillaDetalle(posx,posy:double;texto:string):double;
   var t:integer;
   begin
    RvDyR.BaseReport.SetFont('Arial',7);
    RvDyR.BaseReport.FontColor:=clBlack;
    for t:=0 to length(Camp2)-1 do
     RvDyR.BaseReport.PrintXY(posx + PosH2[t],posy+4,HackTable(FindComponent(texto)).Fields[Camp2[t]].AsString);
    Result:=posy+4;
   end;

   //// Grilla Recuadro
   Function GrillaRecuadro(posx,posy,posy2:double):double;
   var t:integer;
   begin
    with RvDyR do begin
     BaseReport.Rectangle(posx+2,posy,posx+200,posy2);
     for t:=1 to length(Camp2)-1 do begin
      BaseReport.Rectangle(posx + PosH2[t]-2,posy,posx + PosH2[t]-2,posy2);
     end;
    Result:=posy+4;
    end;
   end;

begin
 posfx:=1;
 posfy:=1;
 salto:=4;
 hoja:=1;
 posfy:=Imagen(posfx,posfy,hoja);
 hoja:=hoja+1;
 RvDyR.BaseReport.NewPage;
 posfy:=Logo(posfx,posfy,hoja);
 posfx:=5;
 posfy:=posfy + 90;
 posfy:=Mostrar3(posfx,posfy,hoja);
 if origen.ItemIndex = 1 then begin
  Coloca1(22);
  posfy:=posfy + 140;
  Camp2[0]:=0; Camp2[1]:=1; Camp2[2]:=2;  Camp2[3]:=3; Camp2[4]:=4;
  TxtCamp2[0]:='Orden';    TxtCamp2[1]:='FechaCremacion'; TxtCamp2[2]:='Referencia - Cremaciones:' + trim(origen.Text);
  TxtCamp2[3]:='DEBE';  TxtCamp2[4]:='HABER';
  PosH2[0]:=3;   PosH2[1]:=20;  PosH2[2]:=45; PosH2[3]:=160;   PosH2[4]:=180;

  tp.Close;
  TP.CloneCursor(DAtaSetSaldo,false,true);
  txtw:='TP';
  final:=GrillaCabecera(posfx,posfy+5,txtw);
  posfy:=final;
  pso:=false;
  for y:=1 to HackTable(findcomponent(txtw)).RecordCount do begin
   HackTable(FindComponent(txtw)).RecNo:=y;
   if pso then RvLlerandi.BaseReport.Rectangle(posfx+2,posfy+1,posfx+200,posfy+1)
   else pso:=true;
   posfy:=GrillaDetalle(posfx,posfy,txtw);
   if posfy > 280 then begin
    posfy:=GrillaRecuadro(posfx,final,posfy+2);
    posfx:=1.5;
    posfy:=2;
    hoja:=hoja+1;
    RvDyR.BaseReport.NewPage;
    posfy:=Logo(posfx,posfy,hoja);
    final:=GrillaCabecera(posfx,posfy+5,txtw);
    posfy:=final;pso:=false;
   end;
  end;
  RvDyR.BaseReport.SetFont('Arial Black',9);
  RvDyR.BaseReport.FontColor:=clBlack;
  if pso then posfy:=GrillaRecuadro(posfx,final,posfy+2);
  //except
 end;
end;

procedure TAM_Cremaciones.SpeedButton1Click(Sender: TObject);
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
 coloca1(10); 
end;

procedure TAM_Cremaciones.SpeedButton2Click(Sender: TObject);
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
 coloca1(9);
end;

end.



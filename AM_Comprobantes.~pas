unit AM_Comprobantes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExButtons, JvBitBtn, StdCtrls, Buttons, ComCtrls, ToolWin,
  Grids, DBGrids, ExtCtrls, Mask, JvgGroupBox, DBCtrls, Unidad, DBClient,
  WSDLIntf, ClaseFunciones, StrUtils, DB, ClaseComprobantesCobrados,
  ClaseSistemas, ImgList, LMDCustomButton, LMDButton, JvSimLogic,
  ClaseComprobantesCobradosPeriodos,ClaseComprobantesCobradosParciales,
  ClaseParcelasVentasPagosCuotas,ClaseParcelasVentasPagosParciales,
  ClaseComprobantesCobradosCuotasVentas, ClaseComprobantesEntrega,
  JvExGrids, JvStringGrid,ClasePosnet_Pagos;

type LosEdit = class(TEdit);
type
  TAM_Comprob = class(TForm)
    Barra1: TStatusBar;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    Limpiar: TJvBitBtn;
    ToolButton2: TToolButton;
    GUARDA: TJvBitBtn;
    ToolButton3: TToolButton;
    JvBitBtn1: TJvBitBtn;
    PC1: TPageControl;
    TabSheet4: TTabSheet;
    JvgGroupBox5: TJvgGroupBox;
    grupo2: TJvgGroupBox;
    Label11: TLabel;
    IDENTIF: TEdit;
    Label7: TLabel;
    TPOFORM: TComboBox;
    Label19: TLabel;
    COBRADOR: TComboBox;
    Label6: TLabel;
    NROPLAN: TEdit;
    Label3: TLabel;
    FECPLAN: TMaskEdit;
    Label8: TLabel;
    NROCUENTA: TEdit;
    Label9: TLabel;
    TPOOBJ: TComboBox;
    BusCodPos: TJvBitBtn;
    Label13: TLabel;
    FECPAGO: TMaskEdit;
    Label21: TLabel;
    IMPORTE: TEdit;
    TabSheet1: TTabSheet;
    Label15: TLabel;
    Bevel1: TBevel;
    C1: TRadioButton;
    C2: TRadioButton;
    C0: TRadioButton;
    ODNI: TEdit;
    Buscar: TJvBitBtn;
    CB1: TCheckBox;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    FEC: TMaskEdit;
    Label4: TLabel;
    GroupBox6: TGroupBox;
    Shape3: TShape;
    Shape2: TShape;
    Label12: TLabel;
    Label14: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    PV: TComboBox;
    COMPROB: TEdit;
    grupo1: TJvgGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    Label2: TLabel;
    Shape1: TShape;
    Label5: TLabel;
    IMP: TEdit;
    GST: TEdit;
    PORCEN: TEdit;
    GroupBox3: TGroupBox;
    C5: TCheckBox;
    C7: TCheckBox;
    Label20: TLabel;
    TPOTALON: TComboBox;
    DataSource1: TDataSource;
    COBRA: TComboBox;
    C3: TRadioButton;
    ACCION: TComboBox;
    Label1: TLabel;
    CR1: TCheckBox;
    C4: TRadioButton;
    CR2: TCheckBox;
    PC3: TPageControl;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    PC2: TPageControl;
    TabSheet2: TTabSheet;
    JvgGroupBox7: TJvgGroupBox;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    D29: TEdit;
    D30: TEdit;
    D31: TEdit;
    D32: TEdit;
    D33: TEdit;
    D34: TEdit;
    D36: TEdit;
    D37: TEdit;
    D38: TEdit;
    D35: TEdit;
    TabSheet3: TTabSheet;
    JvgGroupBox2: TJvgGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    Label22: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    D1: TEdit;
    D2: TEdit;
    D3: TEdit;
    D4: TEdit;
    D5: TEdit;
    D6: TEdit;
    D7: TEdit;
    D8: TEdit;
    D9: TCheckBox;
    TabSheet5: TTabSheet;
    JvgGroupBox4: TJvgGroupBox;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label16: TLabel;
    D10: TEdit;
    D11: TEdit;
    D12: TEdit;
    D13: TEdit;
    D14: TEdit;
    D15: TEdit;
    D16: TEdit;
    D17: TEdit;
    D18: TEdit;
    D19: TEdit;
    TabSheet6: TTabSheet;
    JvgGroupBox6: TJvgGroupBox;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    D20: TEdit;
    D21: TEdit;
    D22: TEdit;
    D23: TEdit;
    D24: TEdit;
    D25: TEdit;
    D26: TEdit;
    D27: TEdit;
    D28: TEdit;
    PC4: TPageControl;
    TabSheet9: TTabSheet;
    JvgGroupBox1: TJvgGroupBox;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    M1: TEdit;
    M2: TEdit;
    M3: TEdit;
    M4: TEdit;
    M5: TEdit;
    M6: TEdit;
    M7: TEdit;
    M8: TEdit;
    TabSheet10: TTabSheet;
    JvgGroupBox3: TJvgGroupBox;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    M10: TEdit;
    M13: TEdit;
    M14: TEdit;
    M15: TEdit;
    M16: TEdit;
    M17: TEdit;
    TabSheet11: TTabSheet;
    JvgGroupBox8: TJvgGroupBox;
    Label78: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    M19: TEdit;
    M21: TEdit;
    M22: TEdit;
    M23: TEdit;
    M24: TEdit;
    M25: TEdit;
    TabSheet12: TTabSheet;
    JvgGroupBox9: TJvgGroupBox;
    Label88: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    M27: TEdit;
    M29: TEdit;
    M30: TEdit;
    M31: TEdit;
    M32: TEdit;
    M33: TEdit;
    Label66: TLabel;
    M11: TEdit;
    Label69: TLabel;
    M12: TEdit;
    Label74: TLabel;
    M9: TEdit;
    Label75: TLabel;
    M18: TEdit;
    Label87: TLabel;
    M26: TEdit;
    Label97: TLabel;
    M34: TEdit;
    Label79: TLabel;
    M20: TEdit;
    Label83: TLabel;
    M28: TEdit;
    ImageList1: TImageList;
    Buscar1: TLMDButton;
    Observ: TEdit;
    JvSIMConnector1: TJvSIMConnector;
    GroupBox2: TGroupBox;
    Label89: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label98: TLabel;
    CPA: TCheckBox;
    Aniopago: TEdit;
    Label99: TLabel;
    Label100: TLabel;
    FPAGO: TComboBox;
    Label101: TLabel;
    idser: TEdit;
    Label10: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    D39: TEdit;
    TabSheet13: TTabSheet;
    Label104: TLabel;
    FECNAC: TMaskEdit;
    Label105: TLabel;
    tarjeta: TComboBox;
    Label106: TLabel;
    Terminal: TComboBox;
    Label107: TLabel;
    Edit1: TEdit;
    Label108: TLabel;
    Edit7: TEdit;
    Edit2: TEdit;
    Label109: TLabel;
    TabSheet14: TTabSheet;
    Label110: TLabel;
    banco: TComboBox;
    LB12: TLabel;
    seriecheque: TEdit;
    nrocheque: TEdit;
    LB3: TLabel;
    LB7: TLabel;
    impcheque: TEdit;
    DataSource2: TDataSource;
    Edit3: TEdit;
    PeriActual: TCheckBox;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure C0Click(Sender: TObject);
    procedure BuscarClick(Sender: TObject);
    procedure TPOFORMKeyPress(Sender: TObject; var Key: Char);
    procedure TPOFORMExit(Sender: TObject);
    procedure COBRADORKeyPress(Sender: TObject; var Key: Char);
    procedure COBRADORExit(Sender: TObject);
    procedure NROPLANKeyPress(Sender: TObject; var Key: Char);
    procedure NROPLANExit(Sender: TObject);
    procedure FECPLANKeyPress(Sender: TObject; var Key: Char);
    procedure FECPLANExit(Sender: TObject);
    procedure TPOTALONKeyPress(Sender: TObject; var Key: Char);
    procedure TPOTALONExit(Sender: TObject);
    procedure TPOOBJKeyPress(Sender: TObject; var Key: Char);
    procedure TPOOBJExit(Sender: TObject);
    procedure NROCUENTAKeyPress(Sender: TObject; var Key: Char);
    procedure NROCUENTAExit(Sender: TObject);
    procedure FECPAGOKeyPress(Sender: TObject; var Key: Char);
    procedure FECPAGOExit(Sender: TObject);
    procedure PVKeyPress(Sender: TObject; var Key: Char);
    procedure PVExit(Sender: TObject);
    procedure COMPROBKeyPress(Sender: TObject; var Key: Char);
    procedure COMPROBExit(Sender: TObject);
    procedure IMPORTEKeyPress(Sender: TObject; var Key: Char);
    procedure BusCodPosClick(Sender: TObject);
    procedure IMPORTEChange(Sender: TObject);
    procedure GUARDAClick(Sender: TObject);                        
    procedure LimpiarVentana(nro:byte);
    procedure LimpiarClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure TPOFORMChange(Sender: TObject);
    procedure FECExit(Sender: TObject);
    procedure ODNIKeyPress(Sender: TObject; var Key: Char);
    procedure COBRAExit(Sender: TObject);
    procedure ACCIONKeyPress(Sender: TObject; var Key: Char);
    procedure ACCIONExit(Sender: TObject);
    procedure CR1KeyPress(Sender: TObject; var Key: Char);
    procedure CR2KeyPress(Sender: TObject; var Key: Char);
    procedure CR2Exit(Sender: TObject);
    procedure Buscar1Click(Sender: TObject);
    procedure ObservKeyPress(Sender: TObject; var Key: Char);
    procedure CPAClick(Sender: TObject);
    procedure AniopagoKeyPress(Sender: TObject; var Key: Char);
    procedure AniopagoExit(Sender: TObject);
    procedure FPAGOKeyPress(Sender: TObject; var Key: Char);
    procedure FPAGOExit(Sender: TObject);
    procedure IMPORTEExit(Sender: TObject);
    procedure CPAKeyPress(Sender: TObject; var Key: Char);
    procedure FECNACExit(Sender: TObject);
    procedure FECNACKeyPress(Sender: TObject; var Key: Char);
    procedure tarjetaExit(Sender: TObject);
    procedure tarjetaKeyPress(Sender: TObject; var Key: Char);
    procedure TerminalExit(Sender: TObject);
    procedure TerminalKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure Edit7Exit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure bancoExit(Sender: TObject);
    procedure bancoKeyPress(Sender: TObject; var Key: Char);
    procedure seriechequeKeyPress(Sender: TObject; var Key: Char);
    procedure nrochequeExit(Sender: TObject);
    procedure nrochequeKeyPress(Sender: TObject; var Key: Char);
    procedure impchequeExit(Sender: TObject);
    procedure impchequeKeyPress(Sender: TObject; var Key: Char);
    procedure PeriActualKeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3Exit(Sender: TObject);
  private
    IdCombos:array of array of string;
    IdPagos:array of array of string;
    PosSelec,PosPv,elIdConfig,elIdComproba:integer;
    DataSet0,DataSet1,DtCombo,DtComboComp,DtComboCompAnulado,DtComboF,DataSet2:TClientDataSet;
    ComprobantesCobradosPeriodos:TComprobantesCobradosPeriodos;
    ComprobantesCobradosParciales:TComprobantesCobradosParciales;
    ComprobantesCobradosCuotasVentas:TComprobantesCobradosCuotasVentas;
    ParcelasVentasPagosCuotas:TParcelasVentasPagosCuotas;
    ParcelasVentasPagosParciales:TParcelasVentasPagosParciales;
    Funciones:TFuncionesVarias;
    Sistemas:TSistemas;
    ComprobantesCobrados:TComprobantesCobrados;
    ComprobantesEntrega:TComprobantesEntrega;
    habventana:boolean;
    FechaActual,MotAnula,FecAnula,elbanco,elcheque,bank,letracheque,cheque,elperiodo,pericobrado:string;
    TiposFormularios,TiposObjetos,TiposComprobantes:Unidad.TablaXML;
    Posnet_Pagos:TPosnet_Pagos;{ Private declarations }
  public
    gh:boolean;{ Public declarations }
  end;

var
  AM_Comprob: TAM_Comprob;

implementation

uses Modulo, Busqueda, Anula_Generica,AM_TalonCobro,DatosCheque,SelecPagos;

{$R *.dfm}

procedure TAM_Comprob.FormActivate(Sender: TObject);
begin
 if not(gh) then begin
  gh:=true;
  setlength(IdCombos,7);
  PosPv:=0;
  FechaActual:=LeftStr(Fec_System(),10);
  PC1.ActivePage:=PC1.Pages[0];       PC2.ActivePage:=PC2.Pages[0];
  PC3.ActivePage:=PC3.Pages[0];       PC4.ActivePage:=PC4.Pages[0];
  FECPLAN.Text:=FechaActual;
  FEC.Text:=FechaActual;
  ACCION.ItemIndex:=0;
  C5.Checked:=false;
  Coloca1(0);      Coloca1(1);
  Coloca1(2);      Coloca1(3);
  Coloca1(7);      Coloca1(13);
  Coloca1(14);     Coloca1(15);
  ODNI.SetFocus;
  JvSIMConnector1.Visible:=false;
  GroupBox2.Visible:=false
 end;
end;

procedure TAM_Comprob.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TAM_Comprob.Coloca1(nro:byte);
var t,y,r,s:integer;
    NroDni,ValNull,SubCob:variant;
    txt,txt1,NroCompr,Msn,NroComp:string;
    txtw:widestring;
    tot:real;
    TodoOk1:boolean;
begin
 if nro=0 then begin //Combo Formularios
  TPOFORM.Clear;
  TiposFormularios:=LeeXML('TiposFormularios','(Cobranzas=' + chr(39) + 'True' + chr(39) + ')');
  if length(TiposFormularios) <> 0 then begin
   SetLength(IdCombos[0],High(TiposFormularios[1]) + 1);
   for t:=0 to High(TiposFormularios[1])  do begin
    TPOFORM.Items.Insert(t,TiposFormularios[1,t]);
    IdCombos[0,t]:=TiposFormularios[0,t];
   end;
  end
  else begin
   if not Funciones.Listar('SELECT NroFormulario,Detalle FROM TiposFormularios WHERE (Cobranzas=1)',DtCombo) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
   else begin
    SetLength(IdCombos[0],DtCombo.RecordCount);
    for t:=1 to DtCombo.RecordCount  do begin
     DtCombo.RecNo:=t;
     TPOFORM.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
     IdCombos[0,t-1]:=DtCombo.Fields[0].AsString;
    end;
   end;
   Funciones.Free;
  end;
  TPOFORM.ItemIndex:=0;
 end;
 if nro=1 then begin //Combo Cobradores
  COBRADOR.Clear;
  COBRA.Clear;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  NroDni:=2;
  txtw:='SELECT distinct Nombre,cuif FROM VLosCobradores ORDER BY Nombre';
  if not Funciones.Listar(txtw,DtCombo) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
   SetLength(IdCombos[1],DtCombo.RecordCount);
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    COBRADOR.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
    COBRA.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
    IdCombos[1,t-1]:=DtCombo.Fields[1].AsString;
   end;
  end;
  Funciones.Free;
  COBRADOR.ItemIndex:=0;
  COBRA.ItemIndex:=0;
 end;
 if nro=2 then begin //Combo Talonarios
  TPOTALON.Clear;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if not Funciones.Listar('SELECT IDTipoComprobante,DetalleComprobante FROM TiposComprobantes WHERE (Cobranzas=1) ',DtCombo) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
   SetLength(IdCombos[2],DtCombo.RecordCount);
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    TPOTALON.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
    IdCombos[2,t-1]:=DtCombo.Fields[0].AsString;
   end;
  end;
  Funciones.Free;
  TPOTALON.ItemIndex:=0;
  PosSelec:=0;
 end;
 if nro=3 then begin //Combo TipoObjetos
  TPOOBJ.Clear;
  TiposObjetos:=LeeXML('TiposObjetos','(nrotipo <> 9)');
  //  if length(TiposObjetos) <> 0 then begin
  //    SetLength(IdCombos[3],High(TiposObjetos[1]) + 1);
  //    for t:=0 to High(TiposObjetos[1])  do begin
  //      TPOOBJ.Items.Insert(t,TiposObjetos[1,t]);
  //      IdCombos[3,t]:=TiposObjetos[0,t];
  //    end;
  //  end
  //  else begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;          //
  //if not Funciones.Listar('SELECT NroTipo,Detalle FROM TiposObjetos WHERE (nrotipo <> 9) Order by Detalle',DtCombo) then
  if not Funciones.Listar('SELECT NroTipo,Detalle FROM TiposObjetos WHERE (Operaciones = 1) Order by Detalle',DtCombo) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
   SetLength(IdCombos[3],DtCombo.RecordCount);
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    TPOOBJ.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
    IdCombos[3,t-1]:=DtCombo.Fields[0].AsString;
   end;
  end;
  Funciones.Free;
  TPOOBJ.ItemIndex:=0;
 end;
 if nro=4 then begin //Combo Puntos de Venta
  PV.Clear;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if TPOTALON.ItemIndex >= 1 then txt1:='null'
    else txt1:=IdCombos[1,COBRADOR.ItemIndex];
  if not Funciones.Listar('SELECT PuntoVenta from Fn_VistaComprobantesEntregaConfigPV(null,null,'
  //+ IdCombos[2,TPOTALON.ItemIndex] + ',null,' + IdCombos[1,OBRADOR.ItemIndex] + ',0) ',DtCombo) then
  + IdCombos[2,TPOTALON.ItemIndex] + ',null,' + txt1 + ',0) union select 4',DtCombo) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    PV.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
   end;
  end;
  Funciones.Free;
  PV.ItemIndex:=0;
 end;
 if nro=5 then begin //Datos de las Acciones
  for t:=1 to 38 do begin
    if t = 9 then D9.Checked:=false
    else LosEdit(FindComponent('D'+inttostr(t))).Clear;
  end;
  Label5.Caption:='0000.00';
  IMPORTE.Text:='000.00';
  PORCEN.Text:='000.00';
  GST.Text:='000.00';
  DataSet1.Free;
  DataSet1:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if CR2.Checked then begin
   if IdCombos[3,TPOOBJ.ItemIndex] = '4' then begin  //Consolidados
    NroDni:=NROCUENTA.Text;
    ValNull:=null;
    if not Funciones.Run_Fn_VistaParcelasConsolidadosTitulares(NroDni,'','',ValNull,DataSet1,'',0) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
    else begin
     if not DataSet1.IsEmpty then begin
      D29.Text:=DataSet1.Fields[0].AsString;
      D30.Text:=DataSet1.Fields[1].AsString;
      D31.Text:=DataSet1.Fields[8].AsString;
      D32.Text:=DataSet1.Fields[6].AsString;
      D33.Text:=DataSet1.Fields[2].AsString;
      D35.Text:=DataSet1.Fields[9].AsString;
      D36.Text:=DataSet1.Fields[3].AsString;
      D37.Text:=DataSet1.Fields[5].AsString;
      D38.Text:=DataSet1.Fields[4].AsString;
      DtCombo.Free;
      DtCombo:=TClientdataSet.Create(nil);
      Sistemas:=TSistemas.Create(nil);
      Sistemas.ConnectionString:=modulo2.Conexion;
      Sistemas.Listar('SELECT Saldo FROM EstadoCuentaConsolidados(' + NROCUENTA.Text + ',0) WHERE (Estado=' + chr(39)
       + 'SALDO FINAL' + chr(39) + ')',DtCombo);
      if not DtCombo.IsEmpty then D34.Text:=DtCombo.Fields[0].AsString
      else D34.Text:='0000.00';
      Sistemas.Free;
      IMPORTE.Text:=D34.Text;
     end
     else messagedlg('ERROR!! Consolidado NO encontrado. Verifique el valor ingresado',mtError,[mbok],0);
    end;
   end;

   if IdCombos[3,TPOOBJ.ItemIndex] = '3' then begin  //Mantenimiento
    NroDni:=NROCUENTA.Text;
    ValNull:=null;
    if not Funciones.Run_Fn_VistaParcelasMantenimientoTitulares(NroDni,'','',ValNull,DataSet1,'',0) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
    else begin
     if not DataSet1.IsEmpty then begin
      D1.Text:=DataSet1.Fields[1].AsString;
      D2.Text:=DataSet1.Fields[13].AsString;
      D3.Text:=DataSet1.Fields[11].AsString;
      D4.Text:=DataSet1.Fields[2].AsString;
      if DataSet1.Fields[15].AsString = 'True' then D9.Checked:=true
      else D9.Checked:=false;
      if D9.Checked then D5.Text:=DataSet1.Fields[4].AsString
      else D5.Text:=DataSet1.Fields[3].AsString;
      D6.Text:=DataSet1.Fields[8].AsString;
      D7.Text:=DataSet1.Fields[10].AsString;
      D8.Text:=DataSet1.Fields[9].AsString;
      if (C7.Checked) and (D5.Text <> DataSet0.Fields[15].AsString) then Barra1.Panels[0].Text:='Importe Original: ' + DataSet0.Fields[15].AsString;;
      IMPORTE.Text:=D5.Text;
      PORCEN.Text:=DataSet1.Fields[5].AsString;
      try
        tot:=StrToFloat(IMPORTE.Text) * DataSet1.Fields[5].AsFloat/100;
      except
       tot:=0;
      end;
      GST.Text:=FloatToStr(tot);
     end
     else messagedlg('ERROR!! N° ACCION NO encontrado. Verifique el valor ingresado',mtError,[mbok],0);
    end;
   end;

   if (IdCombos[3,TPOOBJ.ItemIndex] = '1')  then begin   //Ventas
    NroDni:=NROCUENTA.Text;
    ValNull:=null;
    if not Funciones.Run_Fn_VistaParcelasVentasTitulares(ValNull,NroDni,'',true,false,'',ValNull,DataSet1,'',0) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
    else begin
     if not DataSet1.IsEmpty then begin
      D20.Text:=DataSet1.Fields[0].AsString;
      D21.Text:=DataSet1.Fields[1].AsString;
      D22.Text:=DataSet1.Fields[21].AsString;
      D23.Text:=DataSet1.Fields[19].AsString;
      D24.Text:=DataSet1.Fields[2].AsString;
      D25.Text:=DataSet1.Fields[5].AsString;
      D26.Text:=DataSet1.Fields[14].AsString;
      D27.Text:=DataSet1.Fields[16].AsString;
      D28.Text:=DataSet1.Fields[15].AsString;
      IMPORTE.Text:=D25.Text;
     end
     else messagedlg('ERROR!! N° de VENTA NO encontrado. Verifique el valor ingresado',mtError,[mbok],0);
    end;
   end;

   if IdCombos[3,TPOOBJ.ItemIndex] = '2' then begin   //Servicios
    NroDni:=NROCUENTA.Text;
    ValNull:=null;
    if not Funciones.Run_Fn_VistaParcelasServiciosTitulares(ValNull,NroDni,'',true,false,'',ValNull,DataSet1,'',0) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
    else begin
     if not DataSet1.IsEmpty then begin
      D10.Text:=DataSet1.Fields[0].AsString;
      D11.Text:=DataSet1.Fields[1].AsString;
      D12.Text:=DataSet1.Fields[24].AsString;
      D13.Text:=DataSet1.Fields[22].AsString;
      D14.Text:=DataSet1.Fields[2].AsString;
      D15.Text:=DataSet1.Fields[7].AsString;
      D16.Text:=DataSet1.Fields[19].AsString;
      D17.Text:=DataSet1.Fields[21].AsString;
      D18.Text:=DataSet1.Fields[20].AsString;
      D19.Text:=DataSet1.Fields[26].AsString;
      IMPORTE.Text:=D15.Text;
     end
     else messagedlg('ERROR!! N° de SERVICIO NO encontrado. Verifique el valor ingresado',mtError,[mbok],0);
    end;
   end;

   if (IdCombos[3,TPOOBJ.ItemIndex] = '5')  then begin   // tramite varios
    txtw:='SELECT ValorFijo FROM TiposObjetos WHERE (ValorFijo > 0) and (nrotipo=5)';
    if not  Funciones.Listar(txtw,DataSet1) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador', mtError,[mbok],0)
    else begin
     if not DataSet1.IsEmpty then begin
      IMPORTE.Text:=DataSet1.Fields[0].AsString;
     end;
    end;
   end;

   if (IdCombos[3,TPOOBJ.ItemIndex] = '10')  then begin   // traslado
    txtw:='SELECT ValorFijo FROM  TiposObjetos WHERE (ValorFijo > 0) and (nrotipo=10)';
    if not  Funciones.Listar(txtw,DataSet1) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
    else begin
     if not DataSet1.IsEmpty then begin
      IMPORTE.Text:=DataSet1.Fields[0].AsString;
     end;
    end;
   end;

   if (IdCombos[3,TPOOBJ.ItemIndex] = '11')  then begin   // TRANSFERENCIAS
    txtw:='SELECT ValorFijo FROM  TiposObjetos WHERE (ValorFijo > 0) and (nrotipo=11)';
    if not  Funciones.Listar(txtw,DataSet1) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
    else begin
     if not DataSet1.IsEmpty then begin
      IMPORTE.Text:=DataSet1.Fields[0].AsString;
     end;
    end;
   end;

   if (IdCombos[3,TPOOBJ.ItemIndex] = '6')  then begin   // PSP
    txtw:='SELECT ValorFijo FROM  TiposObjetos WHERE (ValorFijo > 0) and (nrotipo=6)';
    if not  Funciones.Listar(txtw,DataSet1) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
    else begin
     if not DataSet1.IsEmpty then begin
      IMPORTE.Text:=DataSet1.Fields[0].AsString;
     end;
    end;
   end;

   if (IdCombos[3,TPOOBJ.ItemIndex] = '8')  then begin   // manten de panteones
    txtw:='SELECT ValorFijo FROM  TiposObjetos WHERE (ValorFijo > 0) and (nrotipo=8)';
    if not  Funciones.Listar(txtw,DataSet1) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
    else begin
     if not DataSet1.IsEmpty then begin
      IMPORTE.Text:=DataSet1.Fields[0].AsString;
     end;
    end;
   end;
  end
  else begin
  //Caso de los Mayoristas con cuenta
   if IdCombos[3,TPOOBJ.ItemIndex] = '4' then begin  //Consolidados
    NroDni:=NROCUENTA.Text;
    ValNull:=null;
    if not Funciones.Run_Fn_VistaParcelasConsolidadosMayoristas(NroDni,'','',ValNull,DataSet1,'',0) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
    else begin
     if not DataSet1.IsEmpty then begin
      M1.Text:=DataSet1.Fields[0].AsString;
      M2.Text:=DataSet1.Fields[1].AsString;
      M3.Text:=DataSet1.Fields[2].AsString;
      M4.Text:=DataSet1.Fields[3].AsString;
      M6.Text:=DataSet1.Fields[4].AsString;
      M7.Text:=DataSet1.Fields[5].AsString;
      M8.Text:=DataSet1.Fields[6].AsString;
      M9.Text:=DataSet1.Fields[7].AsString;
      DtCombo.Free;
      DtCombo:=TClientdataSet.Create(nil);
      Sistemas:=TSistemas.Create(nil);
      Sistemas.ConnectionString:=modulo2.Conexion;
      Sistemas.Listar('SELECT Saldo FROM EstadoCuentaConsolidados(' + NROCUENTA.Text  + ',0) WHERE (Estado=' + chr(39) + 'SALDO FINAL' + chr(39) + ')',DtCombo);
      if not DtCombo.IsEmpty then M5.Text:=DtCombo.Fields[0].AsString
      else M5.Text:='0000.00';
      Sistemas.Free;
      IMPORTE.Text:=M5.Text;
     end
     else messagedlg('ERROR!! Consolidado NO encontrado. Verifique el valor ingresado',mtError,[mbok],0);
    end;
   end;

   if IdCombos[3,TPOOBJ.ItemIndex] = '3' then begin  //Mantenimiento
    NroDni:=NROCUENTA.Text;
    ValNull:=null;
    if not Funciones.Run_Fn_VistaParcelasMantenimientoMayoristas(NroDni,'','',ValNull,DataSet1,'',0) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
    else begin
     if not DataSet1.IsEmpty then begin
      M10.Text:=DataSet1.Fields[0].AsString;
      M11.Text:=DataSet1.Fields[1].AsString;
      M12.Text:=DataSet1.Fields[2].AsString;
      M13.Text:=DataSet1.Fields[3].AsString;
      M15.Text:=DataSet1.Fields[4].AsString;
      M16.Text:=DataSet1.Fields[5].AsString;
      M17.Text:=DataSet1.Fields[6].AsString;
      M18.Text:=DataSet1.Fields[7].AsString;
      M14.Text:=DataSet1.Fields[8].AsString;
      IMPORTE.Text:=M14.Text;
      PORCEN.Text:=DataSet1.Fields[9].AsString;
      try
       tot:=StrToFloat(IMPORTE.Text) * DataSet1.Fields[9].AsFloat/100;
      except
       tot:=0;
      end;
      GST.Text:=FloatToStr(tot);
     end
     else messagedlg('ERROR!! N° CUENTA NO encontrado. Verifique el valor ingresado',mtError,[mbok],0);
    end;
   end;

   if IdCombos[3,TPOOBJ.ItemIndex] = '2' then begin   //Servicios
    PC3.ActivePage:=PC3.Pages[1];
    PC4.ActivePage:=PC4.Pages[2];
    NroDni:=NROCUENTA.Text;
    ValNull:=null;
    if not Funciones.Run_Fn_VistaParcelasServiciosMayoristas(NroDni,'',true,false,'',ValNull,DataSet1,'',0) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
    else begin
     if not DataSet1.IsEmpty then begin
      M19.Text:=DataSet1.Fields[0].AsString;
      M20.Text:=DataSet1.Fields[1].AsString;
      M21.Text:=DataSet1.Fields[2].AsString;
      M22.Text:=DataSet1.Fields[6].AsString;
      M23.Text:=DataSet1.Fields[18].AsString;
      M24.Text:=DataSet1.Fields[17].AsString;
      M25.Text:=DataSet1.Fields[16].AsString;
      M26.Text:=DataSet1.Fields[19].AsString;
      IMPORTE.Text:=M22.Text;
     end
     else messagedlg('ERROR!! N° de SERVICIO NO encontrado. Verifique el valor ingresado',mtError,[mbok],0);
    end;
   end;

   if (IdCombos[3,TPOOBJ.ItemIndex] = '1')  then begin   //Ventas  or (IdCombos[3,TPOOBJ.ItemIndex] = '5')
    NroDni:=NROCUENTA.Text;
    ValNull:=null;
    if not Funciones.Run_Fn_VistaParcelasVentasMayoristas(NroDni,'',true,false,'',ValNull,DataSet1,'',0) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
    else begin
     if not DataSet1.IsEmpty then begin
      M27.Text:=DataSet1.Fields[0].AsString;
      M28.Text:=DataSet1.Fields[1].AsString;
      M29.Text:=DataSet1.Fields[3].AsString;
      M30.Text:=DataSet1.Fields[6].AsString;
      M31.Text:=DataSet1.Fields[15].AsString;
      M32.Text:=DataSet1.Fields[17].AsString;
      M33.Text:=DataSet1.Fields[16].AsString;
      M34.Text:=DataSet1.Fields[18].AsString;
      IMPORTE.Text:=M30.Text;
     end
     else messagedlg('ERROR!! N° de VENTA NO encontrado. Verifique el valor ingresado',mtError,[mbok],0);
    end;
   end;

   if (IdCombos[3,TPOOBJ.ItemIndex] = '5')  then begin   // tramite varios
     txtw:='SELECT ValorFijo FROM  TiposObjetos WHERE (ValorFijo > 0) and (nrotipo=5)';
    if not  Funciones.Listar(txtw,DataSet1) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
    else begin
     if not DataSet1.IsEmpty then begin
      IMPORTE.Text:=DataSet1.Fields[0].AsString;
     end;
    end;
   end;

   if (IdCombos[3,TPOOBJ.ItemIndex] = '10')  then begin   // traslado
     txtw:='SELECT ValorFijo FROM  TiposObjetos WHERE (ValorFijo > 0) and (nrotipo=10)';
    if not  Funciones.Listar(txtw,DataSet1) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
    else begin
     if not DataSet1.IsEmpty then begin
      IMPORTE.Text:=DataSet1.Fields[0].AsString;
     end;
    end;
   end;

   if (IdCombos[3,TPOOBJ.ItemIndex] = '11')  then begin   // TRANSFERENCIAS
    txtw:='SELECT ValorFijo FROM  TiposObjetos WHERE (ValorFijo > 0) and (nrotipo=11)';
    if not  Funciones.Listar(txtw,DataSet1) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
    else begin
     if not DataSet1.IsEmpty then begin
      IMPORTE.Text:=DataSet1.Fields[0].AsString;
     end;
    end;
   end;

   if (IdCombos[3,TPOOBJ.ItemIndex] = '6')  then begin   // PSP
    txtw:='SELECT ValorFijo FROM  TiposObjetos WHERE (ValorFijo > 0) and (nrotipo=6)';
    if not  Funciones.Listar(txtw,DataSet1) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
    else begin
     if not DataSet1.IsEmpty then begin
      IMPORTE.Text:=DataSet1.Fields[0].AsString;
     end;
    end;
   end;

   if (IdCombos[3,TPOOBJ.ItemIndex] = '8')  then begin   // manten de panteones
    txtw:='SELECT ValorFijo FROM  TiposObjetos WHERE (ValorFijo > 0) and (nrotipo=8)';
    if not  Funciones.Listar(txtw,DataSet1) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
    else begin
     if not DataSet1.IsEmpty then begin
      IMPORTE.Text:=DataSet1.Fields[0].AsString;
     end;
    end;
   end;
  end;
  Funciones.Free;
 end;
 if nro = 6 then begin //Combo Puntos de Venta
  DataSet0.Free;
  DataSet0:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=DataSet0;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if C1.Checked then begin
   txtw:='SELECT  Id, NroComprobante, DetalleComprobante, IdTipoComprobante, NroFormulario, Formulario,'
   + ' NroPlanilla, FechaPlanilla, CuifCobrador, Cobrador, NroDni, Identificador, NroTipoObjeto, Objeto,'
   + ' FechaCobro, Importe, GastoAdmin, Porcentaje, Anulado, FechaAnula, MotivoAnula, Cargado, EsMinoritario, Observ, DeAdmin, '
   + ' pagoanual,anioanual,formapago,nrocheque,banco FROM VLosComprobantesCobrados where (FechaPlanilla= '
   + chr(39) + trim(FEC.Text) + chr(39)+ ') order by NroPlanilla desc';
  end;
  if C2.Checked then begin
   txtw:='SELECT  Id, NroComprobante, DetalleComprobante, IdTipoComprobante, NroFormulario, Formulario,'
   + ' NroPlanilla, FechaPlanilla, CuifCobrador, Cobrador, NroDni, Identificador, NroTipoObjeto, Objeto,'
   + ' FechaCobro, Importe, GastoAdmin, Porcentaje, Anulado, FechaAnula, MotivoAnula, Cargado, EsMinoritario, Observ, DeAdmin, '
   + ' pagoanual,anioanual,formapago,nrocheque,banco FROM VLosComprobantesCobrados where (NroPlanilla= '
   + trim(ODNI.Text) + ') order by NroPlanilla desc';
  end;
  if C3.Checked then begin
   txtw:='SELECT  Id, NroComprobante, DetalleComprobante, IdTipoComprobante, NroFormulario, Formulario,'
   + ' NroPlanilla, FechaPlanilla, CuifCobrador, Cobrador, NroDni, Identificador, NroTipoObjeto, Objeto,'
   + ' FechaCobro, Importe, GastoAdmin, Porcentaje, Anulado, FechaAnula, MotivoAnula, Cargado, EsMinoritario, Observ, DeAdmin, '
   + ' pagoanual,anioanual,formapago,nrocheque,banco FROM VLosComprobantesCobrados where (CuifCobrador= '
   + IdCombos[1,COBRA.ItemIndex] + ') order by FechaPlanilla desc';
  end;
  if C4.Checked then begin
   txtw:='SELECT  Id, NroComprobante, DetalleComprobante, IdTipoComprobante, NroFormulario, Formulario,'
   + ' NroPlanilla, FechaPlanilla, CuifCobrador, Cobrador, NroDni, Identificador, NroTipoObjeto, Objeto,'
   + ' FechaCobro, Importe, GastoAdmin, Porcentaje, Anulado, FechaAnula, MotivoAnula, Cargado, EsMinoritario, Observ, DeAdmin, '
   + ' pagoanual,anioanual,formapago,nrocheque,banco FROM VLosComprobantesCobrados where (NroComprobante like '
   + chr(39)  + chr(37) + trim(ODNI.Text) + chr(37) + chr(39) + ') order by FechaPlanilla desc';
  end;
  if C0.Checked then begin
    NroDni:=null;txt1:='';txt:='';ValNull:=null;NroCompr:='';
  end;
  if not  Funciones.Listar(txtw,DataSet0) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if not DataSet0.IsEmpty then begin
   Barra1.Panels[1].Text:='Cant. Reg.: ' + IntToStr(DataSet0.RecordCount)
  end
  else begin
   IF application.MessageBox('PLANILLA SIN COMPROBANTES ASIGNADOS, !Desea Cargar los Comprobnates!?','Advertencia',mb_OKcancel+mb_IconHAnd) = IdOk then begin
    PC1.ActivePage:=PC1.Pages[1];
    if c1.Checked=true then begin
     fecplan.Text:=fec.Text;
     nroplan.Text:='0000000';
    end;
    if c2.Checked=true then nroplan.Text:=ODNI.Text;
    periactual.Checked :=true;
    //coloca1(15);
   end
   else begin
    PC1.ActivePage:=PC1.Pages[0];
    if c2.Checked=true then odni.SetFocus;
    if c1.Checked=true then fec.SetFocus;
    if c3.Checked=true then cobra.SetFocus;
    Barra1.Panels[0].Text:='La opcion de Carga de comprobantes fue Cancelada';
   end;
  end;
 end;
 if nro=7 then begin
  FPAGO.Clear;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if not Funciones.Listar('SELECT idformapago,formapago FROM Fn_FormasPago (1)',DtCombo) then
  //if not Funciones.Listar('SELECT IdFormaPago,FormaPago FROM TiposFormasPago WHERE (IdFormaPago IN (0,2, 4, 5, 6)) ORDER BY IdFormaPago',DtCombo) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
   SetLength(IdCombos[4],DtCombo.RecordCount);
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    FPAGO.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
    IdCombos[4,t-1]:=DtCombo.Fields[0].AsString;
   end;
  end;
  Funciones.Free;
  FPAGO.ItemIndex:=0;
 end;
 if nro=8 then begin
  Msn:='';
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  NroComp:=StrFill(PV.Text,3,'0','') + '-' + StrFill(COMPROB.Text,7,'0','');
  txtw:='SELECT Nombre,FechaCobro,IdCobro FROM VComprobantesCorreo WHERE (NroComprobante='
  + chr(39) + NroComp + chr(39) + ') AND (IdTipoComprobante=' + IdCombos[2,TPOTALON.ItemIndex] + ');';
  if not Funciones.Listar(txtw,DtCombo) then begin
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  end
  else begin
   if DtCombo.RecordCount > 0 then begin
    messagedlg('ERROR!! Comprobante CARGADO como GASTO CORREO!!' + chr(13) + 'Fecha Carga: '
    + DtCombo.Fields[1].AsString + ' - IdCobro: ' + DtCombo.Fields[2].AsString
    + chr(13) + 'Cobrador: ' + DtCombo.Fields[0].AsString,mtError,[ mbok],0);
    comprob.SetFocus;
   end
   else begin
     //
   end;
  end;
  Funciones.Free;
 end;
 if nro=9 then  begin
  DtComboCompAnulado.Free;
  DtComboCompAnulado:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  NroComp:=StrFill(PV.Text,3,'0','') + '-' + StrFill(COMPROB.Text,7,'0','');
  txtw:='SELECT dbo.ComprobantesTalonarios.NroTalonario,dbo.ComprobantesTalonarios.IdTipoComprobante, '
  +' dbo.ComprobantesEntregaDetalle.NroComprobante FROM dbo.ComprobantesEntregaDetalle INNER JOIN '
  +' dbo.ComprobantesEntregaConfig ON dbo.ComprobantesEntregaDetalle.IdConfig = dbo.ComprobantesEntregaConfig.IdConfig INNER JOIN '
  +' dbo.ComprobantesTalonarios ON dbo.ComprobantesEntregaConfig.NroTalonario = dbo.ComprobantesTalonarios.NroTalonario '
  +' WHERE (dbo.ComprobantesEntregaDetalle.NroComprobante = '+ chr(39) + NroComp + chr(39) + ')'
  +' AND (dbo.ComprobantesTalonarios.IdTipoComprobante=' + IdCombos[2,TPOTALON.ItemIndex] + ')';
  if not Funciones.Listar(txtw,DtComboCompAnulado) then begin
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  end
  else begin
   if DtComboCompAnulado.RecordCount > 0 then begin
    if trim(DtComboCompAnulado.Fields[1].AsString)='9' then begin
     messagedlg('ERROR!! Comprobante ANULADO en el Talonario Nº: ' + DtComboCompAnulado.Fields[0].AsString,mtError,[ mbok],0);
     comprob.SetFocus;
    end;
   end
   else begin
     //
   end;
  end;
  Funciones.Free;
 end;
 if nro = 10 then begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if not d9.Checked then begin
   if not Funciones.Listar('SELECT ValorActual FROM ParcelasMantenimientoPreciosAnuales WHERE (Activo = 1)',DtCombo) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
   else begin
    Importe.Text:=DtCombo.Fields[0].AsString;
   end;
  end;
  if d9.Checked then begin
   if not Funciones.Listar('SELECT ValorActualJubilado FROM ParcelasMantenimientoPreciosAnuales WHERE (Activo = 1)',DtCombo) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
   else begin
    Importe.Text:=DtCombo.Fields[0].AsString;
   end;
  end;
  Funciones.Free;
 end;
 if nro = 11  then begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if not Funciones.Listar('SELECT nivel FROM Fn_PeriodosDeudaServ ('+ trim(nrocuenta.Text) +')',DtCombo) then
   messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
   else begin
    d39.Text:=DtCombo.Fields[0].AsString;
   end;
  Funciones.Free;
 end;
 if nro = 12 then begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Sistemas:=TSistemas.Create(nil);
  Sistemas.ConnectionString:=modulo2.Conexion;
  Sistemas.Listar('SELECT IdConfig FROM ComprobantesEntregaDetalle where NroComprobante = '+ chr(39) + StrFill(PV.Text,3,'0','')
  + '-' + StrFill(COMPROB.Text,7,'0','') + chr(39)+ ' and IdTipoComprobante = ' + IdCombos[2,TPOTALON.ItemIndex],DtCombo);
  if not DtCombo.IsEmpty then elIdConfig:=strtoint(DtCombo.Fields[0].AsString)
   else elIdConfig:=0;
  Sistemas.Free;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Sistemas:=TSistemas.Create(nil);
  Sistemas.ConnectionString:=modulo2.Conexion;
  Sistemas.Listar('SELECT IdComprobante FROM ComprobantesEntregaConfig where IdConfig = ' + inttostr(elIdConfig),DtCombo);
  if not DtCombo.IsEmpty then elIdComproba:=strtoint(DtCombo.Fields[0].AsString)
   else elIdComproba:=0;
  Sistemas.Free;
 end;
 if nro=13 then begin //Combo terminales  5
  terminal.Clear;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if not Funciones.Listar('SELECT  CuifCobrador, IdTerminal FROM  Posnet_Terminales WHERE (Deshabilitado = 0) order by 1 desc',DtCombo) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
   SetLength(IdCombos[5],DtCombo.RecordCount);
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    terminal.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
    IdCombos[5,t-1]:=DtCombo.Fields[0].AsString;
   end;
  end;
  Funciones.Free;
  terminal.ItemIndex:=0;
 end;
 if nro = 14 then begin  //combo tarjetas    6
  tarjeta.Clear;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if not Funciones.Listar('SELECT  NroTarjeta,DetalleTarjeta FROM  TiposTarjetasCredito',DtCombo) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
   SetLength(IdCombos[6],DtCombo.RecordCount);
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    tarjeta.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
    IdCombos[6,t-1]:=DtCombo.Fields[0].AsString;
   end;
  end;
  Funciones.Free;
  tarjeta.ItemIndex:=0;
 end;
 if nro=15 then begin
  DataSet2.Free;
  DataSet2:=TClientdataSet.Create(nil);
  DataSource2.DataSet:=DataSet2;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT * FROM PeriodoImpresion ( '+ chr(39) + FechaActual+ chr(39) + ')';
  if not Funciones.Listar(txtw,DataSet2) then
   messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  if DataSet2.IsEmpty then begin
    messagedlg('ATENCION ACCCION sin Titular Activo...' + chr(13) + ' O Pertenece a un Mayorista', mtError,[mbok],0);
  end
  else begin
   edit3.Text:=trim(Datasource2.DataSet.Fields[0].AsString);
  end;
  Funciones.Free;
 end;
 if nro=16 then begin
  DataSet2.Free;
  DataSet2:=TClientdataSet.Create(nil);
  DataSource2.DataSet:=DataSet2;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if IdCombos[3,TPOOBJ.ItemIndex] = '3' then begin
   txtw:='SELECT TOP 1 Periodo FROM ComprobantesCobradosPeriodos WHERE IdComprobanteCobrado IN '
   +' (SELECT  TOP 1 Id FROM  ComprobantesCobrados  WHERE (Identificador = '+ trim(nrocuenta.Text) +') ORDER BY Id DESC) '
   +' ORDER BY Periodo DESC';
   if not Funciones.Listar(txtw,DataSet2) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    if DataSet2.IsEmpty then begin
     //messagedlg('ATENCION ACCCION sin Titular Activo...' + chr(13) + 'O Pertenece a un Mayorista', mtError,[mbok],0);
    end
    else begin
     pericobrado:=trim(Datasource2.DataSet.Fields[0].AsString);
    end;
  end;
  Funciones.Free;
 end;
end;

procedure TAM_Comprob.JvBitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TAM_Comprob.C1Click(Sender: TObject);
begin
 Label15.Visible:=true;
 ODNI.Visible:=false;
 FEC.Visible:=false;
 COBRA.Visible:=false;
 if C1.Checked then begin
  Label15.Caption:='Ingrese Fecha:';
  FEC.Visible:=true;
  FEC.SetFocus;
 end;
 if C2.Checked then begin
  Label15.Caption:='Ingrese N° Planilla:';
  ODNI.Visible:=true;
  ODNI.SetFocus;
 end;
 if C3.Checked then begin
  Label15.Caption:='Seleccione Cobrador:';
  COBRA.Visible:=true;
  COBRA.SetFocus;
 end;
 if C4.Checked then begin
  Label15.Caption:='Ingrese N° Comprobante:';
  ODNI.Visible:=true;
  ODNI.SetFocus;
 end;
end;

procedure TAM_Comprob.C0Click(Sender: TObject);
begin
Label15.Visible:=false;
ODNI.Visible:=false;
FEC.Visible:=false;
Buscar.SetFocus;
end;

procedure TAM_Comprob.BuscarClick(Sender: TObject);
begin
Coloca1(6);
end;

procedure TAM_Comprob.TPOFORMKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  COBRADOR.SetFocus;
end;
end;

procedure TAM_Comprob.TPOFORMExit(Sender: TObject);
begin
if TPOFORM.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Formulario Ingresado!!',mterror,[mbok],0);
  TPOFORM.SetFocus;
end
else begin
  Grupo2.Enabled:=true;
  Self.Update;
end;
end;

procedure TAM_Comprob.COBRADORKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  NROPLAN.SetFocus;
end;
end;

procedure TAM_Comprob.COBRADORExit(Sender: TObject);
begin
 if COBRADOR.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Cobrador Ingresado!!',mterror,[mbok],0);
  COBRADOR.SetFocus;
 end
 else begin
 // label99.Caption:=inttostr(COBRADOR.ItemIndex) ; //IdCombos[1,COBRADOR.ItemIndex];
 end;
end;

procedure TAM_Comprob.NROPLANKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  FECPLAN.SetFocus;
 end
 else begin
  if ( StrScan('0123456789',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;
end;

procedure TAM_Comprob.NROPLANExit(Sender: TObject);
var ValNull,NroPlanilla:variant;
    Paso:boolean;
    Msn,nroform:string;
    txtw:widestring;
    t:integer;
begin
if COBRADOR.Focused or TPOFORM.Focused then NROPLAN.Text:='0000000'
else begin
  Paso:=true;
  Msn:='';
  if trim(NROPLAN.Text) = '' then begin     //Comprobamos que no esté vacía
     Msn:='ERROR!... N° Planilla vacío.';
    Paso:=false;
  end;

  if Paso then begin       //Comprobamos que no sea cero
   try
    if StrToInt(trim(NROPLAN.Text)) = 0 then begin
     Paso:=false;
     Msn:='ERROR!... El CERO no se permite como N° de Planilla';
    end;
   except
    Paso:=false;
    Msn:='ERROR!... Existen caracteres no permitidos';
   end;
  end;

  if Paso then begin      //Buscamos que exista como N° de Planilla y que no esté anulado
   DtCombo.Free;
   DtCombo:=TClientdataSet.Create(nil);
   Funciones:=TFuncionesVarias.Create(nil);
   Funciones.ConnectionString:=modulo2.Conexion;
   NroPlanilla:=NROPLAN.Text;
   txtw:='SELECT * FROM Fn_VistaPlanillaCobranzasNumeros ('+ chr(39) + IdCombos[0,TPOFORM.ItemIndex] + chr(39)+','+NroPlanilla+',0)';
   Funciones.Listar(txtw,DtCombo);
   Funciones.Free;
   if DtCombo.RecordCount = 0 then begin
    Paso:=false;
    Msn:='ERROR!! Se debe REGISTRAR el N° de Planilla ingresado!!';
    buscar1.Enabled:=true;
   end
   else begin
    if DtCombo.Fields[3].AsString = 'True' then begin
     Paso:=false;
     Msn:='ERROR!! El N° de Planilla se encuentra ANULADO!!';
    end;
   end;
  end;

  if Paso then begin    //Comprobamos si el N° Planilla lo tienen 2 cobradores distintos
   DtCombo.Free;
   DtCombo:=TClientdataSet.Create(nil);
   Funciones:=TFuncionesVarias.Create(nil);
   Funciones.ConnectionString:=modulo2.Conexion;
   NroPlanilla:=NROPLAN.Text;
   txtw:='SELECT * FROM Fn_VistaComprobantesCobrados('+ chr(39) + IdCombos[0,TPOFORM.ItemIndex]+ chr(39) + ',' + NroPlanilla+ ',null,null,null,0) ';
   Funciones.Listar(txtw,DtCombo);
   Funciones.Free;
   if DtCombo.RecordCount <> 0 then begin
    for t:=1 to DtCombo.RecordCount do begin
     DtCombo.RecNo:=t;
     if (DtCombo.Fields[8].AsString <> IdCombos[1,COBRADOR.ItemIndex]) then begin
      Paso:=false;
      Msn:='ERROR!! La Planilla apunta a comprobantes de otro COBRADOR' + chr(13)
            + 'Nombre Cobrador: ' + DtCombo.Fields[9].AsString;
      break;
     end;
    end;
   end;
  end;

  if Paso then begin //Buscamos que no exista ya cargada la planilla.
   ValNull:=null;
   DtCombo.Free;
   DtCombo:=TClientdataSet.Create(nil);
   Funciones:=TFuncionesVarias.Create(nil);
   Funciones.ConnectionString:=modulo2.Conexion;
   NroPlanilla:=NROPLAN.Text;
   txtw:='select * FROM Fn_VistaPlanillaCobranzas (null,'+ chr(39) + IdCombos[0,TPOFORM.ItemIndex]+ chr(39) + ',' + NroPlanilla+ ',0) ';
   Funciones.Listar(txtw,DtCombo);
   Funciones.Free;
   if DtCombo.RecordCount > 0 then begin
    Paso:=false;
    Msn:='ERROR!! Ya Existe CONFIRMADO el N° de Planilla!!';
   end;
  end;
  
  if not Paso then begin
    if Msn <> '' then messagedlg(Msn,mterror,[mbok],0);
      if buscar1.Enabled then buscar1.SetFocus
       else NROPLAN.SetFocus;
  end;
end;
end;

procedure TAM_Comprob.FECPLANKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  CR1.SetFocus;
end;
end;

procedure TAM_Comprob.FECPLANExit(Sender: TObject);
var kl:Tdatetime;
    txtw:widestring;
    Msn:string;
    t:integer;
    Paso:boolean;
begin
 try
  kl:=strtodate(trim(FECPLAN.Text));
  Paso:=true;Msn:='';
  //Comprobamos que el comprobante ya no fue cargado
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT DISTINCT FechaPlanilla FROM VComprobantesCobrados WHERE (NroPlanilla='  + trim(NROPLAN.Text) + ');';
  if not Funciones.Listar(txtw,DtCombo) then begin
   messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
   Paso:=false;
  end
  else begin
   if DtCombo.RecordCount > 0 then begin
    for t:=1 to DtCombo.RecordCount do begin
     if DtCombo.Fields[0].AsString <> trim(FECPLAN.Text) then begin
      Msn:='ERROR!! El N° de Planilla ya se encuentra REGISTRADO pero con otra Fecha!!'
      + chr(13) + 'Fecha Registrada: ' + DtCombo.Fields[0].AsString;
      Paso:=false;
     end;
    end;
   end;
  end;
  Funciones.Free;
  if not Paso then begin
    if Msn <> '' then messagedlg(Msn,mterror,[mbok],0);
    FECPLAN.SetFocus;
  end
  else FECPAGO.Text:=FECPLAN.Text;
 except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  FECPLAN.SetFocus;
 end;
end;

procedure TAM_Comprob.TPOTALONKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  ACCION.SetFocus;
end;
end;

procedure TAM_Comprob.TPOTALONExit(Sender: TObject);
begin
 if TPOTALON.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Comprobante Ingresado!!',mterror,[mbok],0);
  TPOTALON.SetFocus;
 end
 else begin
  //Cargamos los posibles puntos de ventas existentes
  Coloca1(4);
  if PosSelec <> TPOTALON.ItemIndex then begin
    PosSelec:=TPOTALON.ItemIndex;
    COMPROB.Text:='0000000';
  end
  else PV.ItemIndex:=PosPv;      
 end;
end;

procedure TAM_Comprob.TPOOBJKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  PV.SetFocus;
end;
end;

procedure TAM_Comprob.TPOOBJExit(Sender: TObject);
begin
 if TPOOBJ.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Objeto Ingresado!!',mterror,[mbok],0);
  TPOOBJ.SetFocus;
 end
 else begin
 {
  **con gastos de correo
  alquiler de nichera    0          consolidado             1
  ***gastosde correos          2
  mantenimiento          3          mantenimiento panteon   4
  psp                    5          servicios               6
  todos                  7          tramites varios         8
  transferencias         9          traslados               10
  ventas                 11
  }
  NROCUENTA.Enabled:=true;
  if TPOOBJ.ItemIndex <= 1 then PC2.ActivePage:=PC2.Pages[TPOOBJ.ItemIndex];
  if TPOOBJ.ItemIndex = 3 then PC2.ActivePage:=PC2.Pages[1]; // mante   if TPOOBJ.ItemIndex = 2 then PC2.ActivePage:=PC2.Pages[1];
  if TPOOBJ.ItemIndex = 12 then PC2.ActivePage:=PC2.Pages[3];// ventas if TPOOBJ.ItemIndex = 7 then PC2.ActivePage:=PC2.Pages[3];
  if TPOOBJ.ItemIndex = 7 then PC2.ActivePage:=PC2.Pages[2]; // servi   if TPOOBJ.ItemIndex = 5 then PC2.ActivePage:=PC2.Pages[2];
  if TPOOBJ.ItemIndex = 1 then PC2.ActivePage:=PC2.Pages[0]; // conso if TPOOBJ.ItemIndex = 1 then PC2.ActivePage:=PC2.Pages[0];
  if IdCombos[3,TPOOBJ.ItemIndex] = '7' then begin
    NROCUENTA.Enabled:=false;
    NROCUENTA.Text:='0';
  end;
  // mantenimiento
  if (IdCombos[3,TPOOBJ.ItemIndex] = '3') then begin
    periactual.Visible:=true;
    //coloca1(15);
    edit3.Visible :=true;
  end
  else begin
    periactual.Visible:=false;
    edit3.Visible :=false;
  end;
 end;
end;

procedure TAM_Comprob.NROCUENTAKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
   {
  **con gastos de correo
  alquiler de nichera    0          consolidado             1
  ***gastosde correos    2
  mantenimiento          3          mantenimiento panteon   4
  psp                    5          servicios               6
  todos                  7          tramites varios         8
  transferencias         9          traslados               10
  ventas                 11
  }
  if cr2.Checked then PC3.ActivePage:=PC3.Pages[0];
  if TPOOBJ.ItemIndex <= 1 then PC2.ActivePage:=PC2.Pages[TPOOBJ.ItemIndex];
  if TPOOBJ.ItemIndex = 3 then PC2.ActivePage:=PC2.Pages[1];  //mante  if TPOOBJ.ItemIndex = 2 then PC2.ActivePage:=PC2.Pages[1];
  if TPOOBJ.ItemIndex = 12 then PC2.ActivePage:=PC2.Pages[3]; //servi if TPOOBJ.ItemIndex = 7 then PC2.ActivePage:=PC2.Pages[3];
  if TPOOBJ.ItemIndex = 7 then PC2.ActivePage:=PC2.Pages[2];  // venta if TPOOBJ.ItemIndex = 5 then PC2.ActivePage:=PC2.Pages[2];
  if TPOOBJ.ItemIndex = 1 then PC2.ActivePage:=PC2.Pages[0];
  cpa.SetFocus;
 end
 else begin
  if ( StrScan('0123456789',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;
end;

procedure TAM_Comprob.NROCUENTAExit(Sender: TObject);
var Paso:boolean;
begin            
 if BusCodPos.Focused or TPOOBJ.Focused or TPOTALON.Focused or TPOFORM.Focused then
 else begin
  Paso:=true;
  if trim(NROCUENTA.Text) = '' then Paso:=false;
  if Paso then begin
  //Comprobamos que no sea cero
   try
    if StrToInt(trim(NROCUENTA.Text)) = 0 then Paso:=false;
   Except
    Paso:=false;
   end;
  end;
  if Paso then begin
   //if (TPOOBJ.ItemIndex <= 2) or (TPOOBJ.ItemIndex = 4) or (TPOOBJ.ItemIndex = 6)
   //or (TPOOBJ.ItemIndex = 5) or (TPOOBJ.ItemIndex = 7) then begin
   if (TPOOBJ.ItemIndex <= 3) or (TPOOBJ.ItemIndex = 5) or (TPOOBJ.ItemIndex = 7)
   or (TPOOBJ.ItemIndex = 6) or (TPOOBJ.ItemIndex = 8) then begin
    Coloca1(5);
    if DataSet1.IsEmpty then nrocuenta.SetFocus;
   end;
  end
  else BusCodPos.SetFocus;
 end;
end;

procedure TAM_Comprob.FECPAGOKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  if ACCION.ItemIndex = 1 then GUARDA.SetFocus
  else CR2.SetFocus;
end;
end;

procedure TAM_Comprob.FECPAGOExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(FECPAGO.Text));
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  FECPAGO.SetFocus;
end;
end;

procedure TAM_Comprob.PVKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  COMPROB.SetFocus;
end;
end;

procedure TAM_Comprob.PVExit(Sender: TObject);
begin
 if PV.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Punto de Venta Ingresado!!',mterror,[mbok],0);
  PV.SetFocus;
 end
 else begin
  if PV.ItemIndex <> PosPv then PosPv:=PV.ItemIndex;
 end;
end;

procedure TAM_Comprob.COMPROBKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  cr2.SetFocus;
 end
 else begin
  if ( StrScan('0123456789',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;
end;

procedure TAM_Comprob.COMPROBExit(Sender: TObject);
var ValNull,NroPlanilla,SubCob:variant;
    Paso:boolean;
    Msn,NroComp,ger:string;
    txtw:widestring;
    Anula_General:TAnula_General;
begin
 //if (strtoint(PV.Text) <> 4) then begin
 if (strtoint(PV.Text) = 2) or (strtoint(PV.Text) = 4) then begin
  if PV.Focused or TPOTALON.Focused then
  else begin
    Msn:='';
    Paso:=true;
    ValNull:=null;
    DtComboComp.Free;
    DtComboComp:=TClientdataSet.Create(nil);
    Funciones:=TFuncionesVarias.Create(nil);
    Funciones.ConnectionString:=modulo2.Conexion;
    NroComp:=StrFill(PV.Text,3,'0','') + '-' + StrFill(COMPROB.Text,7,'0','');
    ger:=IdCombos[2,TPOTALON.ItemIndex];
    if ger = '5' then begin
      Paso:=true;
    end
    else begin
     if (TPOTALON.ItemIndex = 1) or ((TPOTALON.ItemIndex = 2) and (strtoint(PV.Text)=1)) then SubCob:=null
     else SubCob:=IdCombos[1,COBRADOR.ItemIndex];
     if not Funciones.Run_Fn_VistaComprobantesEntregaConfig(ValNull,ValNull,IdCombos[2,TPOTALON.ItemIndex],
      NroComp,SubCob,DtComboComp,'',0) then begin
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
      Paso:=false;
     end
     else begin
      if DtComboComp.RecordCount = 0 then begin
       Paso:=false;
       Msn:='ERROR!! No Existe Comprobante para el Tipo de Talonario entregado!!';
      end;
     end;
    END;
    Funciones.Free;

    if Paso then begin
      ValNull:=null;
      DtCombo.Free;
      DtCombo:=TClientdataSet.Create(nil);
      Funciones:=TFuncionesVarias.Create(nil);
      Funciones.ConnectionString:=modulo2.Conexion;
      NroComp:=StrFill(PV.Text,3,'0','') + '-' + StrFill(COMPROB.Text,7,'0','');
      txtw:='SELECT NroPlanilla,Cobrador,FechaCobro,Id FROM VComprobantesCobrados WHERE (NroComprobante='
      + chr(39) + NroComp + chr(39) + ') AND (IdTipoComprobante=' + IdCombos[2,TPOTALON.ItemIndex] + ') and (anulado=0);';
      if not Funciones.Listar(txtw,DtCombo) then begin
       messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
       Paso:=false;
      end
      else begin
       if DtCombo.RecordCount > 0 then begin
        if C7.Checked then begin
         if trim(DtCombo.Fields[3].AsString) <> trim(IDENTIF.Text) then begin
          Paso:=false;
          Msn:='ERROR!! Comprobante CARGADO en otro IDENTIFICADOR!!' + chr(13)  + 'N° Id: ' + DtCombo.Fields[3].AsString + 'N° Planilla: '
           + DtCombo.Fields[0].AsString + chr(13) + 'Fecha: ' + DtCombo.Fields[2].AsString + ' - Cobrador: ' + DtCombo.Fields[1].AsString;
         end;
        end
        else begin
         Paso:=false;
         Msn:='ERROR!! Comprobante CARGADO!!' + chr(13) + 'N° Planilla: '
          + DtCombo.Fields[0].AsString + ' - Fecha: ' + DtCombo.Fields[2].AsString
         + chr(13) + 'Cobrador: ' + DtCombo.Fields[1].AsString;
        end;
       end;
      end;
      Funciones.Free;
      ///preguntamos si no esta cargado como gasto de correo
      coloca1(8);
      ///preguntamos si el comprobante no esta anualdo
      coloca1(9);
    end;

    ///   preguntamos si no es un comprobante de adm central entregado a un gestor
    if ger <> '5' then begin
     if inttostr(COBRADOR.ItemIndex)<> '0' then begin
      if DtComboComp.Fields[14].AsString = '' then begin
       if GroupBox2.Visible then GroupBox2.Visible:=false;
       if JvSIMConnector1.Visible then JvSIMConnector1.Visible:=false;
      end
      else begin
       if not GroupBox2.Visible then GroupBox2.Visible:=true;
       if not JvSIMConnector1.Visible then JvSIMConnector1.Visible:=true;
       label93.Caption:=trim(DtComboComp.Fields[13].AsString);
       label98.Caption:=trim(DtComboComp.Fields[1].AsString);
      end;
     end
     else begin
     //
     end;
    end;
   
    if not Paso then begin
     if Msn <> '' then messagedlg(Msn,mtError,[mbok],0);
     COMPROB.SetFocus;
     GUARDA.Enabled:=false;
    end
    else begin
     GUARDA.Enabled:=true;
     if ACCION.ItemIndex = 1 then begin
      MotAnula:='';
      Anula_General:= TAnula_General.create(self);
      try
       Anula_General.MOTIVO.Text:='ERROR DE CARGA DEL GESTOR: ' + trim(cobrador.Text);
       Anula_General.ShowModal;
       MotAnula:=AnsiReplaceStr(trim(Anula_General.MOTIVO.Text),chr(39),chr(33));
      finally
       Anula_General.destroy;
      end;
      if ACCION.ItemIndex = 1 then GUARDA.SetFocus
       else CR2.SetFocus;
      //FECPAGO.SetFocus;
     end;
    end;
  end;
 end
 else begin

  /// inserto el comprobante para este cobrador con el punto de venta 4
  if (TPOTALON.ItemIndex <> 2) and (COBRADOR.ItemIndex <> 0 )then begin
   coloca1(12);
   if Paso then begin
    ValNull:=null;
    DtCombo.Free;
    DtCombo:=TClientdataSet.Create(nil);
    Funciones:=TFuncionesVarias.Create(nil);
    Funciones.ConnectionString:=modulo2.Conexion;
    NroComp:=StrFill(PV.Text,3,'0','') + '-' + StrFill(COMPROB.Text,7,'0','');
    txtw:='SELECT NroPlanilla,Cobrador,FechaCobro,Id FROM VComprobantesCobrados WHERE (NroComprobante='
    + chr(39) + NroComp + chr(39) + ') AND (IdTipoComprobante=' + IdCombos[2,TPOTALON.ItemIndex] + ') and (anulado=0);';
    if not Funciones.Listar(txtw,DtCombo) then begin
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
      Paso:=false;
    end
    else begin
     if DtCombo.RecordCount > 0 then begin
      if C7.Checked then begin
       if trim(DtCombo.Fields[3].AsString) <> trim(IDENTIF.Text) then begin
        Paso:=false;
        Msn:='ERROR!! Comprobante CARGADO en otro IDENTIFICADOR!!' + chr(13) + 'N° Id: ' + DtCombo.Fields[3].AsString + 'N° Planilla: '
         + DtCombo.Fields[0].AsString + chr(13) + 'Fecha: ' + DtCombo.Fields[2].AsString + ' - Cobrador: ' + DtCombo.Fields[1].AsString;
       end;
      end
      else begin
       Paso:=false;
       Msn:='ERROR!! Comprobante CARGADO!!' + chr(13) + 'N° Planilla: ' + DtCombo.Fields[0].AsString + ' - Fecha: '
       + DtCombo.Fields[2].AsString  + chr(13) + 'Cobrador: ' + DtCombo.Fields[1].AsString;
      end;
     end;
    end;
    Funciones.Free;
    ///preguntamos si no esta cargado como gasto de correo
    coloca1(8);
    ///preguntamos si el comprobante no esta anualdo
    coloca1(9);
   end;
  end;

  if not Paso then begin
    if Msn <> '' then messagedlg(Msn,mtError,[mbok],0);
    COMPROB.SetFocus;
    GUARDA.Enabled:=false;
  end
  else begin
   GUARDA.Enabled:=true;
   if ACCION.ItemIndex = 1 then begin
    MotAnula:='';
    Anula_General:= TAnula_General.create(self);
    try
     //Anula_General.MOTIVO.Text:='ERROR DE CARGA DEL GESTOR: ' + trim(cobrador.Text);
     Anula_General.MOTIVO.Text:='NOTA DE CREDITO A B : ' + StrFill(PV.Text,3,'0','') + '-' +  StrFill(COMPROB.Text,7,'0','');
     Anula_General.ShowModal;
     MotAnula:=AnsiReplaceStr(trim(Anula_General.MOTIVO.Text),chr(39),chr(33));
    finally
     Anula_General.destroy;
    end;
     If ACCION.ItemIndex = 1 then GUARDA.SetFocus
       else CR2.SetFocus;
    //FECPAGO.SetFocus;
   end;
  end;
 end;
end;

procedure TAM_Comprob.IMPORTEKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
   Key := #0;
   if (cpa.Checked) and (trim(aniopago.Text) <> '0') then begin
    observ.Text:='Pago Anual ' + trim(aniopago.Text);
   end
   else begin
    if (periactual.Checked) and (trim(importe.Text) <> '0') then observ.Text:='Pago Periodo ' + trim(edit3.Text) ;
   end;
   observ.SetFocus;
  end
  else begin
   if ( StrScan('0123456789.',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
    else Key := #0;
  end;
end;

procedure TAM_Comprob.BusCodPosClick(Sender: TObject);
var Busqueda:TLA_BUSQUEDA;
begin
 Busqueda:=TLA_BUSQUEDA.Create(self);
 try
  if CR2.Checked then begin
    if IdCombos[3,TPOOBJ.ItemIndex] = '1' then Busqueda.NroOpcion:=4;
    if IdCombos[3,TPOOBJ.ItemIndex] = '3' then Busqueda.NroOpcion:=5;
    if IdCombos[3,TPOOBJ.ItemIndex] = '4' then Busqueda.NroOpcion:=6;
  end
  else Busqueda.NroOpcion:=8;
  Busqueda.ShowModal;
  NROCUENTA.Text:=Busqueda.DB1.Text;
 finally
  Busqueda.Destroy;
 end;
 NROCUENTA.SetFocus;
end;

procedure TAM_Comprob.IMPORTEChange(Sender: TObject);
var h,j,s:real;
begin
 C5.Checked:=true;
 if (trim(IMPORTE.Text) <> '') and (IdCombos[3,TPOOBJ.ItemIndex] = '3') then begin
  if RightStr(trim(IMPORTE.Text),1) <> '.' then begin
   try
    h:=StrToFloat(trim(IMPORTE.Text));
    j:=StrToFloat(trim(PORCEN.Text));
    s:=h * j / 100;
    GST.Text:=Redondeo(FloatToStr(s),2);
    s:=h - s;
    IMP.Text:=Redondeo(FloatToStr(s),2);
    Label5.Caption:=Redondeo(FloatToStr(StrToFloat(trim(IMP.Text)) + StrToFloat(trim(GST.Text))),2);
   except
    IMP.Text:='000.00';
    Label5.Caption:='0000.00';
   end;
  end;
 end;
end;

procedure TAM_Comprob.GUARDAClick(Sender: TObject);
var TodoOk1,TodoOk,TodoOkPosnet:boolean;
var t,p:integer;
var ElId:string;
var txtw:widestring;
begin
 if not C7.Checked then begin //Altas
  ComprobantesCobrados:=TComprobantesCobrados.Create(nil);
  ComprobantesCobrados.ConnectionString:=modulo2.Conexion;
  ComprobantesCobrados.C_NroComprobante_IX1:=StrFill(PV.Text,3,'0','') + '-' + StrFill(COMPROB.Text,7,'0','');
  ComprobantesCobrados.C_IdTipoComprobante_IX2:=IdCombos[2,TPOTALON.ItemIndex];
  ComprobantesCobrados.C_NroFormulario_IX3:=IdCombos[0,TPOFORM.ItemIndex];
  ComprobantesCobrados.C_NroPlanilla_IX4:=trim(NROPLAN.Text);
  ComprobantesCobrados.C_FechaPlanilla_IX5:=trim(FECPLAN.Text);
  ComprobantesCobrados.C_CuifCobrador_IX6:=IdCombos[1,COBRADOR.ItemIndex];
  ComprobantesCobrados.C_Observ:=trim(observ.Text);
  if CR2.Checked then ComprobantesCobrados.C_EsMinoritario:=true
   else ComprobantesCobrados.C_EsMinoritario:=false;
  if cpa.Checked=true then begin
   ComprobantesCobrados.C_PagoAnual:=true;
   ComprobantesCobrados.C_AnioAnual:=trim(aniopago.Text);
  end
  else begin
   ComprobantesCobrados.C_PagoAnual:=false;
   ComprobantesCobrados.C_AnioAnual:=null;
  end;
  if ACCION.ItemIndex = 0 then begin //Caso Normal
   ComprobantesCobrados.C_Identificador:=trim(NROCUENTA.Text);
   ComprobantesCobrados.C_NroTipoObjeto_IX7:=IdCombos[3,TPOOBJ.ItemIndex];
   ComprobantesCobrados.C_FechaCobro_IX8:=trim(FECPAGO.Text);
   ComprobantesCobrados.C_Importe:=AnsiReplaceStr(trim(IMPORTE.Text),chr(44),chr(46));
   ComprobantesCobrados.C_GastoAdmin:=AnsiReplaceStr(trim(GST.Text),chr(44),chr(46));
   ComprobantesCobrados.C_Porcentaje:=AnsiReplaceStr(trim(PORCEN.Text),chr(44),chr(46));
   ComprobantesCobrados.C_Usu_A:=IntToStr(modulo2.nro_usu);
   ComprobantesCobrados.C_Anulado:=false;
   ComprobantesCobrados.C_FechaAnula:='';
   ComprobantesCobrados.C_UsuAnula:=null;
   ComprobantesCobrados.C_MotivoAnula:='';
  end;
  if ACCION.ItemIndex = 1 then begin //Es una anulacion
   ComprobantesCobrados.C_Identificador:=null;
   ComprobantesCobrados.C_NroTipoObjeto_IX7:=null;
   ComprobantesCobrados.C_FechaCobro_IX8:=trim(FECPAGO.Text);
   ComprobantesCobrados.C_Importe:='0.00';
   ComprobantesCobrados.C_GastoAdmin:='0.00';
   ComprobantesCobrados.C_Porcentaje:='0.00';
   ComprobantesCobrados.C_Usu_A:=IntToStr(modulo2.nro_usu);
   ComprobantesCobrados.C_Anulado:=true;
   ComprobantesCobrados.C_FechaAnula:=FechaActual;
   ComprobantesCobrados.C_UsuAnula:=IntToStr(modulo2.nro_usu);
   ComprobantesCobrados.C_MotivoAnula:=MotAnula;
  end;
  if ACCION.ItemIndex = 2 then begin //SEMESTRAL
   ComprobantesCobrados.C_Identificador:=trim(NROCUENTA.Text);
   ComprobantesCobrados.C_NroTipoObjeto_IX7:=IdCombos[3,TPOOBJ.ItemIndex];
   ComprobantesCobrados.C_FechaCobro_IX8:=trim(FECPLAN.Text);
   ComprobantesCobrados.C_Importe:=AnsiReplaceStr(trim(IMPORTE.Text),chr(44),chr(46));
   ComprobantesCobrados.C_GastoAdmin:=AnsiReplaceStr(trim(GST.Text),chr(44),chr(46));
   ComprobantesCobrados.C_Porcentaje:=AnsiReplaceStr(trim(PORCEN.Text),chr(44),chr(46));
   ComprobantesCobrados.C_Usu_A:=IntToStr(modulo2.nro_usu);
   ComprobantesCobrados.C_Anulado:=false;
   ComprobantesCobrados.C_FechaAnula:='';
   ComprobantesCobrados.C_UsuAnula:=null;
   ComprobantesCobrados.C_MotivoAnula:='';
  end;
  if groupbox2.Visible then ComprobantesCobrados.C_DeAdmin:=true
   else ComprobantesCobrados.C_DeAdmin:=false;
  if IdCombos[4,FPAGO.ItemIndex] = '4' then begin
   ComprobantesCobrados.C_NroCheque:=elcheque;
   ComprobantesCobrados.C_Banco:=elbanco;
  end;
  ComprobantesCobrados.C_IdFormaPago:=IdCombos[4,FPAGO.ItemIndex];
  //ComprobantesCobrados.C_IdServicio:=null;
  //ComprobantesCobrados.C_NroFactura_IX9 :=null;
  {if trim(pv.Text) = '2' then BEGIN
   if (IdCombos[3,TPOOBJ.ItemIndex] = '4') or (IdCombos[3,TPOOBJ.ItemIndex] = '5')
    or (IdCombos[3,TPOOBJ.ItemIndex] = '6') then begin
    ComprobantesCobrados.C_IdServicio:='1';
    ComprobantesCobrados.C_NroFactura_IX9 :='.';
   end;
   if (IdCombos[3,TPOOBJ.ItemIndex] = '2') then ComprobantesCobrados.C_IdServicio:=trim(idser.Text)
     else ComprobantesCobrados.C_IdServicio:='1';
  end;  }
  if trim(pv.Text) = '4' then BEGIN
    if (IdCombos[3,TPOOBJ.ItemIndex] = '2') then ComprobantesCobrados.C_IdServicio:=trim(idser.Text);
     //else ComprobantesCobrados.C_IdServicio:='1';
    IF (IdCombos[2,TPOTALON.ItemIndex] = '7' ) THEN  ComprobantesCobrados.C_NroFactura_IX9 :='FACT B '
                                             + StrFill(PV.Text,3,'0','') + '-' +  StrFill(COMPROB.Text,7,'0','') ;
    IF (IdCombos[2,TPOTALON.ItemIndex] = '6' ) THEN ComprobantesCobrados.C_NroFactura_IX9 :='FACT A '
                                             + StrFill(PV.Text,3,'0','') + '-' +  StrFill(COMPROB.Text,7,'0','');
  END;
  TodoOk1:=ComprobantesCobrados.Agrega;
  ElId:=ComprobantesCobrados.Identidad;
  ComprobantesCobrados.Free;
  if  trim(IMPORTE.Text) <> '000.00' then begin
   if (ACCION.ItemIndex = 0)  or (ACCION.ItemIndex = 2) then begin
      //genero los periodos del pagototal deuda de un año
     if (cpa.Checked) and (trim(aniopago.Text) <> '0') then begin
      Funciones:=TFuncionesVarias.Create(nil);
      Funciones.ConnectionString:=modulo2.Conexion;
      txtw:=' exec CargaPeriodosComprobantesCobradosPeriodos ' + ElId + ','+ trim(aniopago.Text) + '01,'+ trim(aniopago.Text) + '12';
      if not Funciones.ListarSinResp(txtw) then
          messagedlg('ERROR al realizar Transac-SQL. Consulte con  Administrador',mtError,[mbok],0);
      Funciones.Free;
     end
     else begin
      // mantenimiento
      if (IdCombos[3,TPOOBJ.ItemIndex] = '3')  then begin
       if PeriActual.Checked then begin
        ComprobantesCobradosPeriodos:=TComprobantesCobradosPeriodos.Create(nil);
        ComprobantesCobradosPeriodos.ConnectionString:=modulo2.Conexion;
        ComprobantesCobradosPeriodos.C_IdComprobanteCobrado:=strtoint(ElId);
        ComprobantesCobradosPeriodos.C_Periodo:=strtoint64(trim(edit3.Text));
        TodoOk1:=ComprobantesCobradosPeriodos.Agrega;
        ComprobantesCobradosPeriodos.Free;
       end
       else begin
        for t:=0 to high(IdPagos[0]) do begin
         if IdPagos[3,t] = '1' then begin
          ComprobantesCobradosPeriodos:=TComprobantesCobradosPeriodos.Create(nil);
          ComprobantesCobradosPeriodos.ConnectionString:=modulo2.Conexion;
          ComprobantesCobradosPeriodos.C_IdComprobanteCobrado:=strtoint(ElId);
          ComprobantesCobradosPeriodos.C_Periodo:=strtoint64(IdPagos[0,t]);
          TodoOk1:=ComprobantesCobradosPeriodos.Agrega;
          ComprobantesCobradosPeriodos.Free;
         end;
         if IdPagos[3,t] = '2' then begin  // PAGOS PARCIALES
          ComprobantesCobradosPeriodos:=TComprobantesCobradosPeriodos.Create(nil);
          ComprobantesCobradosPeriodos.ConnectionString:=modulo2.Conexion;
          ComprobantesCobradosPeriodos.C_IdComprobanteCobrado:=strtoint(ElId);
          ComprobantesCobradosPeriodos.C_Periodo:=strtoint64(IdPagos[0,t]);
          TodoOk1:=ComprobantesCobradosPeriodos.Agrega;
          ComprobantesCobradosPeriodos.Free;
         end;
        end;
       end;
      end;
     end;

     // ventas o servicios
     if (IdCombos[3,TPOOBJ.ItemIndex] = '1') or (IdCombos[3,TPOOBJ.ItemIndex] = '2')  then begin
      for t:=0 to high(IdPagos[0]) do begin
       if IdPagos[3,t] = '1' then begin
        ComprobantesCobradosPeriodos:=TComprobantesCobradosPeriodos.Create(nil);
        ComprobantesCobradosPeriodos.ConnectionString:=modulo2.Conexion;
        ComprobantesCobradosPeriodos.C_IdComprobanteCobrado:=strtoint(ElId);
        ComprobantesCobradosPeriodos.C_Periodo:=strtoint64(IdPagos[0,t]);
        TodoOk1:=ComprobantesCobradosPeriodos.Agrega;
        ComprobantesCobradosPeriodos.Free;
       end;
       if IdPagos[3,t] = '2' then begin  // PAGOS PARCIALES
        ComprobantesCobradosParciales:=TComprobantesCobradosParciales.Create(nil);
        ComprobantesCobradosParciales.ConnectionString:=modulo2.Conexion;
        ComprobantesCobradosParciales.C_IdComprobanteCobrado:=strtoint(ElId);
        ComprobantesCobradosParciales.C_Periodo:=strtoint64(IdPagos[0,t]);
        ComprobantesCobradosParciales.C_Importe:=AnsiReplaceStr(IdPagos[4,t],chr(44),chr(46));
        TodoOk1:=ComprobantesCobradosParciales.Agrega;
        ComprobantesCobradosParciales.Free;
       end;
      end;
     end;

     //psp
     if (IdCombos[3,TPOOBJ.ItemIndex] = '6')   then begin
      for t:=0 to high(IdPagos[0]) do begin
       if IdPagos[3,t] = '1' then begin
        ComprobantesCobradosPeriodos:=TComprobantesCobradosPeriodos.Create(nil);
        ComprobantesCobradosPeriodos.ConnectionString:=modulo2.Conexion;
        ComprobantesCobradosPeriodos.C_IdComprobanteCobrado:=strtoint(ElId);
        ComprobantesCobradosPeriodos.C_Periodo:=strtoint64(IdPagos[0,t]);
        TodoOk1:=ComprobantesCobradosPeriodos.Agrega;
        ComprobantesCobradosPeriodos.Free;
       end;
       if IdPagos[3,t] = '2' then begin  // PAGOS PARCIALES
        ComprobantesCobradosParciales:=TComprobantesCobradosParciales.Create(nil);
        ComprobantesCobradosParciales.ConnectionString:=modulo2.Conexion;
        ComprobantesCobradosParciales.C_IdComprobanteCobrado:=strtoint(ElId);
        ComprobantesCobradosParciales.C_Periodo:=strtoint64(IdPagos[0,t]);
        ComprobantesCobradosParciales.C_Importe:=AnsiReplaceStr(IdPagos[4,t],chr(44),chr(46));
        TodoOk1:=ComprobantesCobradosParciales.Agrega;
        ComprobantesCobradosParciales.Free;
       end;
      end;
     end;

     //mantenim de panteon
     if (IdCombos[3,TPOOBJ.ItemIndex] = '8')   then begin
      for t:=0 to high(IdPagos[0]) do begin
       if IdPagos[3,t] = '1' then begin
        ComprobantesCobradosPeriodos:=TComprobantesCobradosPeriodos.Create(nil);
        ComprobantesCobradosPeriodos.ConnectionString:=modulo2.Conexion;
        ComprobantesCobradosPeriodos.C_IdComprobanteCobrado:=strtoint(ElId);
        ComprobantesCobradosPeriodos.C_Periodo:=strtoint64(IdPagos[0,t]);
        TodoOk1:=ComprobantesCobradosPeriodos.Agrega;
        ComprobantesCobradosPeriodos.Free;
       end;
      end;
     end;

   end;
  end;
  if TodoOk1 then begin
    /// si el pago es posnet guardamos los datos
   if IdCombos[4,FPAGO.ItemIndex] = '5' then begin   /// posnet
    Posnet_Pagos:=TPosnet_Pagos.Create(nil);
    Posnet_Pagos.ConnectionString:=modulo2.Conexion;
    Posnet_Pagos.C_IdComprobanteCobrado:=strtoint(ElId);
    Posnet_Pagos.C_NroTarjeta:=strtoint(IdCombos[6,tarjeta.ItemIndex]);
    Posnet_Pagos.C_IdTerminal:=trim(terminal.Text);
    Posnet_Pagos.C_Lote:=trim(edit1.Text);
    Posnet_Pagos.C_Ticket:=trim(edit7.Text);
    Posnet_Pagos.C_Importe:=AnsiReplaceStr(trim(edit2.Text),chr(44),chr(46));;
    Posnet_Pagos.C_FechaHora:= trim(fecnac.Text);
    TodoOkPosnet:=Posnet_Pagos.Agrega;
    messagedlg('Se ha Guardado el Comprobante del POSNET con Exito',mtConfirmation,[mbok],0);
    TPOTALON.SetFocus;
    //edit3.Text:=trim(Datasource2.DataSet.Fields[0].AsString);
   end;
   messagedlg('Se ha Guardado el Comprobante de Pago con Exito',mtConfirmation,[mbok],0);
   LimpiarVentana(1);
   TPOTALON.SetFocus;
   //Coloca1(15);
   IF NOT PERIACTUAL.Checked THEN PERIACTUAL.Checked :=TRUE;
  end
  else messagedlg('ERROR!!... Al Guardar los Datos.',mtError,[mbok],0);
 end
 else begin    //Modificaciones
  if C5.Checked then begin
   ComprobantesCobrados:=TComprobantesCobrados.Create(nil);
   ComprobantesCobrados.ConnectionString:=modulo2.Conexion;
   ComprobantesCobrados.C_Id_PK:=trim(IDENTIF.Text);
   ComprobantesCobrados.C_NroComprobante_IX1:=StrFill(PV.Text,3,'0','') + '-' + StrFill(COMPROB.Text,7,'0','');
   ComprobantesCobrados.C_IdTipoComprobante_IX2:=IdCombos[2,TPOTALON.ItemIndex];
   ComprobantesCobrados.C_NroFormulario_IX3:=IdCombos[0,TPOFORM.ItemIndex];
   ComprobantesCobrados.C_NroPlanilla_IX4:=trim(NROPLAN.Text);
   ComprobantesCobrados.C_FechaPlanilla_IX5:=trim(FECPLAN.Text);
   ComprobantesCobrados.C_CuifCobrador_IX6:=IdCombos[1,COBRADOR.ItemIndex];
   ComprobantesCobrados.C_Observ:=trim(observ.Text);
   if CR2.Checked then ComprobantesCobrados.C_EsMinoritario:=true
    else ComprobantesCobrados.C_EsMinoritario:=false;
   if cpa.Checked=true then begin
    ComprobantesCobrados.C_PagoAnual:=true;
    ComprobantesCobrados.C_AnioAnual:=trim(aniopago.Text);
   end
   else begin
    ComprobantesCobrados.C_PagoAnual:=false;
    ComprobantesCobrados.C_AnioAnual:=null;
   end;
   if ACCION.ItemIndex = 0 then begin //Es Normal
    ComprobantesCobrados.C_Identificador:=trim(NROCUENTA.Text);
    ComprobantesCobrados.C_NroTipoObjeto_IX7:=IdCombos[3,TPOOBJ.ItemIndex];
    ComprobantesCobrados.C_FechaCobro_IX8:=trim(FECPAGO.Text);
    ComprobantesCobrados.C_Importe:=AnsiReplaceStr(trim(IMPORTE.Text),chr(44),chr(46));
    ComprobantesCobrados.C_GastoAdmin:=AnsiReplaceStr(trim(GST.Text),chr(44),chr(46));
    ComprobantesCobrados.C_Porcentaje:=AnsiReplaceStr(trim(PORCEN.Text),chr(44),chr(46));
    ComprobantesCobrados.C_Usu_M:=IntToStr(modulo2.nro_usu);
    ComprobantesCobrados.C_Fecha_M:=FechaActual;
    ComprobantesCobrados.C_Anulado:=false;
    ComprobantesCobrados.C_FechaAnula:='';
    ComprobantesCobrados.C_UsuAnula:=null;
    ComprobantesCobrados.C_MotivoAnula:='';
   end;
   if ACCION.ItemIndex = 1 then begin //Es una anulacion
    ComprobantesCobrados.C_Identificador:=null;
    ComprobantesCobrados.C_NroTipoObjeto_IX7:=null;
    ComprobantesCobrados.C_FechaCobro_IX8:='';
    ComprobantesCobrados.C_Importe:='0.00';
    ComprobantesCobrados.C_GastoAdmin:='0.00';
    ComprobantesCobrados.C_Porcentaje:='0.00';
    ComprobantesCobrados.C_Usu_M:=IntToStr(modulo2.nro_usu);
    ComprobantesCobrados.C_Fecha_M:=FechaActual;
    ComprobantesCobrados.C_Anulado:=true;
    ComprobantesCobrados.C_FechaAnula:=FecAnula;
    ComprobantesCobrados.C_UsuAnula:=IntToStr(modulo2.nro_usu);
    ComprobantesCobrados.C_MotivoAnula:=MotAnula;
   end;
   if ACCION.ItemIndex = 2 then begin //Es Tramite varios
    ComprobantesCobrados.C_Identificador:=trim(NROCUENTA.Text);
    ComprobantesCobrados.C_NroTipoObjeto_IX7:=null;
    ComprobantesCobrados.C_FechaCobro_IX8:=trim(FECPAGO.Text);
    ComprobantesCobrados.C_Importe:=AnsiReplaceStr(trim(IMPORTE.Text),chr(44),chr(46));
    ComprobantesCobrados.C_GastoAdmin:=AnsiReplaceStr(trim(GST.Text),chr(44),chr(46));
    ComprobantesCobrados.C_Porcentaje:=AnsiReplaceStr(trim(PORCEN.Text),chr(44),chr(46));
    ComprobantesCobrados.C_Usu_M:=IntToStr(modulo2.nro_usu);
    ComprobantesCobrados.C_Fecha_M:=FechaActual;
    ComprobantesCobrados.C_Anulado:=false;
    ComprobantesCobrados.C_FechaAnula:='';
    ComprobantesCobrados.C_UsuAnula:=null;
    ComprobantesCobrados.C_MotivoAnula:='';
   end;
   if groupbox2.Visible then ComprobantesCobrados.C_DeAdmin:=true
    else ComprobantesCobrados.C_DeAdmin:=false;
   ComprobantesCobrados.C_IdFormaPago:=IdCombos[4,FPAGO.ItemIndex];
   if IdCombos[4,FPAGO.ItemIndex] = '4' then begin
    ComprobantesCobrados.C_NroCheque:=elcheque;
    ComprobantesCobrados.C_Banco:=elbanco;
   end
   else begin
    ComprobantesCobrados.C_NroCheque:='';
    ComprobantesCobrados.C_Banco:='';
   end;
   TodoOk:=ComprobantesCobrados.Modificar;
   ComprobantesCobrados.Free;
   if trim(IMPORTE.Text) <> '000.00' then begin
    ComprobantesCobradosPeriodos:=TComprobantesCobradosPeriodos.Create(nil);
    ComprobantesCobradosPeriodos.ConnectionString:=modulo2.Conexion;
    TodoOk:=ComprobantesCobradosPeriodos.Borrar(IDENTIF.Text);
    ComprobantesCobradosPeriodos.Free;
    ComprobantesCobradosParciales:=TComprobantesCobradosParciales.Create(nil);
    ComprobantesCobradosParciales.ConnectionString:=modulo2.Conexion;
    TodoOk1:=ComprobantesCobradosParciales.Borrar(IDENTIF.Text);
    ComprobantesCobradosParciales.Free;

    ParcelasVentasPagosCuotas:=TParcelasVentasPagosCuotas.Create(nil);
    ParcelasVentasPagosCuotas.ConnectionString:=modulo2.Conexion;
    TodoOk:=ParcelasVentasPagosCuotas.Borrar(IDENTIF.Text);
    ParcelasVentasPagosCuotas.Free;

    ParcelasVentasPagosParciales:=TParcelasVentasPagosParciales.Create(nil);
    ParcelasVentasPagosParciales.ConnectionString:=modulo2.Conexion;
    TodoOk1:=ParcelasVentasPagosParciales.Borrar(IDENTIF.Text);
    ParcelasVentasPagosParciales.Free;

    if (ACCION.ItemIndex = 0)  or (ACCION.ItemIndex = 2) then begin
     if(IdCombos[3,TPOOBJ.ItemIndex] = '3')  or (IdCombos[3,TPOOBJ.ItemIndex] = '1')
     or (IdCombos[3,TPOOBJ.ItemIndex] = '2') or (IdCombos[3,TPOOBJ.ItemIndex] = '6')
     or (IdCombos[3,TPOOBJ.ItemIndex] = '8') then begin
      for t:=0 to high(IdPagos[0]) do begin
       if IdPagos[3,t] = '1' then begin
        ComprobantesCobradosPeriodos:=TComprobantesCobradosPeriodos.Create(nil);
        ComprobantesCobradosPeriodos.ConnectionString:=modulo2.Conexion;
        ComprobantesCobradosPeriodos.C_IdComprobanteCobrado:=IDENTIF.Text;
        ComprobantesCobradosPeriodos.C_Periodo:=strtoint64(IdPagos[0,t]);
        TodoOk1:=ComprobantesCobradosPeriodos.Agrega;
        ComprobantesCobradosPeriodos.Free;
       end;
       if IdPagos[3,t] = '2' then begin  // PAGOS PARCIALES
        ComprobantesCobradosPeriodos:=TComprobantesCobradosPeriodos.Create(nil);
        ComprobantesCobradosPeriodos.ConnectionString:=modulo2.Conexion;
        ComprobantesCobradosPeriodos.C_IdComprobanteCobrado:=strtoint(ElId);
        ComprobantesCobradosPeriodos.C_Periodo:=strtoint64(IdPagos[0,t]);
        TodoOk1:=ComprobantesCobradosPeriodos.Agrega;
        ComprobantesCobradosPeriodos.Free;
       end;
      end;
     end;
    end;
   end;
   if TodoOk then begin
    messagedlg('Se han Guardado las Modificaciones con Exito',mtConfirmation,[mbok],0);
    LimpiarVentana(0);
    TPOFORM.SetFocus;
    IF NOT PERIACTUAL.Checked THEN PERIACTUAL.Checked :=TRUE;
   end
   else messagedlg('ERROR!!... Al modificar los Datos.',mtError,[mbok],0);
  end;
 end;
end;

procedure TAM_Comprob.LimpiarVentana(nro:byte);
var t,r,p,u:integer;
begin
 if nro = 0 then begin
  DataSource1.DataSet:=nil;
  CR2.Checked:=true;
  if cpa.Checked then cpa.Checked:=false;
  TPOFORM.ItemIndex:=0;
  COBRADOR.ItemIndex:=0;
  TPOTALON.ItemIndex:=0;
  TPOOBJ.ItemIndex:=0;
  fpago.ItemIndex:=0;
  PV.Clear;
  observ.Clear;
  IDENTIF.Text:='00000';
  NROPLAN.Text:='0000000';
  FECPLAN.Text:=FechaActual;
  elcheque:='';
  elbanco:='';
  grupo2.Enabled:=false;
  tarjeta.ItemIndex :=0;
  terminal.ItemIndex :=0;
  edit1.Clear;
  edit7.Clear;
  JvSIMConnector1.Visible:=false;
  GroupBox2.Visible:=false;
 end;
 if nro = 1 then begin
  for t:=1 to 38 do begin
    if t = 9 then D9.Checked:=false
   else LosEdit(FindComponent('D' + inttostr(t))).Clear;
  end;
  Label5.Caption:='0000.00';
  IMPORTE.Text:='000.00';
  observ.Clear;
  if cpa.Checked then cpa.Checked:=false;
  PORCEN.Text:='000.00';
  GST.Text:='000.00';
  elcheque:='';
  elbanco:='';
  NROCUENTA.Text:='000000';
  if CR1.Checked and (COMPROB.Text <> '0000000')then begin
   try
    t:=strtoint(trim(COMPROB.Text));
    t:=t+1;
    COMPROB.Text:=inttostr(t);
   except
    COMPROB.Text:='0000000';
   end;
  end
  else COMPROB.Text:='0000000';
  IMPORTE.Text:='0000.00';
  fpago.ItemIndex:=0;
  tarjeta.ItemIndex :=0;
  terminal.ItemIndex :=0;
  edit1.Clear;
  edit7.Clear;
  JvSIMConnector1.Visible:=false;
  GroupBox2.Visible:=false;
 end;
 C5.Checked:=false;
 C7.Checked:=false;
 GUARDA.Enabled:=false;
end;

procedure TAM_Comprob.LimpiarClick(Sender: TObject);
begin
LimpiarVentana(0);
end;

procedure TAM_Comprob.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var h:byte;
begin
 h:=0;
 if trim(DataSet0.Fields[21].Text) = 'True' then h:=1
 else if trim(DataSet0.Fields[18].Text) = 'True' then h:=2;
 case h of
  0:begin
    DBGrid1.Canvas.Brush.Color:=clWindow;
    DBGrid1.Canvas.FillRect(Rect);
    DBGrid1.Canvas.Font.Color:= clBlack;
    end;
  1:begin // sin confirmar
    DBGrid1.Canvas.Brush.Color:=$00C7D8C7;
    DBGrid1.Canvas.FillRect(Rect);
    DBGrid1.Canvas.Font.Color:= clBlack;
    end;
  2:begin
    DBGrid1.Canvas.Brush.Color:=clWindow;
    DBGrid1.Canvas.FillRect(Rect);
    DBGrid1.Canvas.Font.Style:= [fsbold];
    DBGrid1.Canvas.Font.Color:= clRed;
    end;
 end;
 DBGrid1.DefaultDrawColumnCell(Rect,Datacol,Column,State);
end;

procedure TAM_Comprob.DBGrid1CellClick(Column: TColumn);
var nro:integer;
begin
 if not DataSet0.IsEmpty then begin
  if DataSet0.Fields[21].AsString <> 'True' then begin
    PC1.ActivePage:=PC1.Pages[1];
    IDENTIF.Text:=DataSet0.Fields[0].AsString;
    TPOFORM.ItemIndex:=TPOFORM.Items.IndexOf(trim(DataSet0.Fields[5].AsString));
    COBRADOR.ItemIndex:=COBRADOR.Items.IndexOf(trim(DataSet0.Fields[9].AsString));
    NROPLAN.Text:=DataSet0.Fields[6].AsString;
    FECPLAN.Text:=DataSet0.Fields[7].AsString;
    TPOTALON.ItemIndex:=TPOTALON.Items.IndexOf(trim(DataSet0.Fields[2].AsString));
    nro:=StrToInt(LeftStr(DataSet0.Fields[1].AsString,3));
    PV.ItemIndex:=PV.Items.IndexOf(IntToStr(nro));
    COMPROB.Text:=RightStr(DataSet0.Fields[1].AsString,7);
    FECPAGO.Text:=DataSet0.Fields[14].AsString;
    observ.Text:=DataSet0.Fields[23].AsString;
    if DataSet0.Fields[22].AsString = 'True' then CR2.Checked
     else CR2.Checked:=false;
    if DataSet0.Fields[25].AsString = 'True' then begin
      CPA.Checked;
      aniopago.Text:=DataSet0.Fields[26].AsString;
    end
    else CPA.Checked:=false;
    FPAGO.ItemIndex:=FPAGO.Items.IndexOf(trim(DataSet0.Fields[27].AsString));
    letracheque:=LeftStr(DataSet0.Fields[28].AsString,1);
    cheque:=strcut_midle(trim(DataSet0.Fields[28].AsString),3,20);
    bank:=DataSet0.Fields[29].AsString;
    if DataSet0.Fields[18].AsString = 'True' then begin
     ACCION.ItemIndex:=1;
     TPOOBJ.Enabled:=false;
     FECPAGO.Enabled:=false;
     NROCUENTA.Enabled:=false;
     BusCodPos.Enabled:=false;
     IMPORTE.Enabled:=false;
     MotAnula:=DataSet0.Fields[20].AsString;
     FecAnula:=DataSet0.Fields[19].AsString;
     CR2.Checked:=true;
    end
    else begin
     ACCION.ItemIndex:=0;
     TPOOBJ.Enabled:=true;
     FECPAGO.Enabled:=true;
     NROCUENTA.Enabled:=true;
     BusCodPos.Enabled:=true;
     IMPORTE.Enabled:=true;
     TPOOBJ.ItemIndex:=TPOOBJ.Items.IndexOf(trim(DataSet0.Fields[13].AsString));
      {
  **con gastos de correo
  alquiler de nichera    0          consolidado             1
  ***gastosde correos          2
  mantenimiento          3          mantenimiento panteon   4
  psp                    5          servicios               6
  todos                  7          tramites varios         8
  transferencias         9          traslados               10
  ventas                 11
  }

     if TPOOBJ.ItemIndex <= 1 then PC2.ActivePage:=PC2.Pages[TPOOBJ.ItemIndex];
     if TPOOBJ.ItemIndex = 3 then PC2.ActivePage:=PC2.Pages[1];
     if TPOOBJ.ItemIndex = 8 then PC2.ActivePage:=PC2.Pages[3];
     if TPOOBJ.ItemIndex = 6 then PC2.ActivePage:=PC2.Pages[2];
     if TPOOBJ.ItemIndex = 1 then PC2.ActivePage:=PC2.Pages[0];
     if DataSet0.Fields[22].AsString = 'True' then CR2.Checked:=true
       else CR2.Checked:=false;
     Coloca1(4);
     NROCUENTA.Text:=DataSet0.Fields[11].AsString;
     Coloca1(5);
    end;
    IMPORTE.Text:=DataSet0.Fields[15].AsString;
    Label5.Caption:=DataSet0.Fields[15].AsString;
    GST.Text:=DataSet0.Fields[16].AsString;
    PORCEN.Text:=DataSet0.Fields[17].AsString;
    IMP.Text:=FloatToStr(DataSet0.Fields[15].AsFloat - DataSet0.Fields[16].AsFloat);
    grupo2.Enabled:=true;
    C5.Checked:=false;
    C7.Checked:=true;
    Self.Update;
    TPOFORM.SetFocus;
  end
  else messagedlg('ERROR!!... Comprobante ya Confirmado.',mtError,[mbok],0);
 end;
end;

procedure TAM_Comprob.TPOFORMChange(Sender: TObject);
begin
C5.Checked:=true;
if C7.Checked then GUARDA.Enabled:=true;
end;

procedure TAM_Comprob.FECExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(FECPLAN.Text));
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  FECPLAN.SetFocus;
end;
end;

procedure TAM_Comprob.ODNIKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  Buscar.SetFocus;
end
else begin
  if ( StrScan('0123456789',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
   else Key := #0;
end;
end;

procedure TAM_Comprob.COBRAExit(Sender: TObject);
begin
if COBRA.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Cobrador Ingresado!!',mterror,[mbok],0);
  COBRA.SetFocus;
end;
end;

procedure TAM_Comprob.ACCIONKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  if TPOOBJ.Enabled then TPOOBJ.SetFocus
  else PV.SetFocus;
end;
end;

procedure TAM_Comprob.ACCIONExit(Sender: TObject);
begin
 if ACCION.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Acción Ingresado!!',mterror,[mbok],0);
  ACCION.SetFocus;
 end
 else begin
  if ACCION.ItemIndex = 0 then begin
   TPOOBJ.Enabled:=true;
   NROCUENTA.Enabled:=true;
   BusCodPos.Enabled:=true;
   IMPORTE.Enabled:=true;
   TPOOBJ.SetFocus
  end;
  if ACCION.ItemIndex = 1 then begin
   TPOOBJ.ItemIndex:=4;
   TPOOBJ.Enabled:=false;
   NROCUENTA.Enabled:=false;
   BusCodPos.Enabled:=false;
   IMPORTE.Enabled:=false;
   CR2.Checked:=true;
   PV.SetFocus;
  end;
  if ACCION.ItemIndex = 2 then begin
    observ.Text:='PAGO '+ trim(accion.Text);
  end;
 end;
end;

procedure TAM_Comprob.CR1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  TPOTALON.SetFocus;
end;
end;

procedure TAM_Comprob.CR2KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  if (IdCombos[3,TPOOBJ.ItemIndex] = '3') then begin
   PeriActual.SetFocus;
  end
  else begin
   FPAGO.SetFocus;
  end;
 end;
end;

procedure TAM_Comprob.CR2Exit(Sender: TObject);
begin
if CR2.Checked then PC3.ActivePage:=PC3.Pages[0]
else PC3.ActivePage:=PC3.Pages[1];
end;

procedure TAM_Comprob.Buscar1Click(Sender: TObject);
var AM_TalonCobranzas: TAM_TalonCobranzas;
begin
 if usu_level(modulo2.nro_usu,1) > 3 then
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
    buscar1.Enabled:=false;
    nroplan.SetFocus;
  end;
 end;
end;

procedure TAM_Comprob.ObservKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  if (trim(Aniopago.Text) = '0') then cpa.Checked:=false;
  // VERIFICO QUE EL PERIODO NO ESTE PAGADO
  if periactual.Checked then begin
   coloca1(16);
   if trim(pericobrado) = trim(edit3.Text) then begin
    messagedlg('ATENCION el Periodo Ingresado ya se encuentra pagado' + chr(13)
    +'Por favor.. Ingrese otro distinto' ,mtWarning,[mbok],0);
    edit3.SetFocus ;
    GUARDA.Enabled:=false;
   end else GUARDA.Enabled:=true;
  end;
  if GUARDA.Enabled then GUARDA.SetFocus;
 end;
end;

procedure TAM_Comprob.CPAClick(Sender: TObject);
var year:string;
begin
 if cpa.Checked then begin
  label99.Visible:=true;
  aniopago.Visible:=true;
  aniopago.SetFocus;
 end
 else begin
  label99.Visible:=false;
  aniopago.Visible:=false;
  observ.Clear;
 end;
end;

procedure TAM_Comprob.AniopagoKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  IF Length(Aniopago.Text) < 4 THEN BEGIN
   messagedlg('EL Valor del Año Incorrecto',mterror,[mbok],0);
   Aniopago.SetFocus;
  END
  else begin
   if cpa.Checked then begin
     coloca1(10);
   end
   else begin
    ///
   end;
   importe.SetFocus;
  end;
 end
 else begin
    if ( StrScan('0123456789',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
     else Key := #0;
 end;
end;

procedure TAM_Comprob.AniopagoExit(Sender: TObject);
begin
  if (trim(Aniopago.Text) = '0000') then begin
     messagedlg('ERROR!!... El Año Pago ingresado es incorrecto',mterror,[mbok],0);
     Aniopago.SetFocus;
  end;
end;

procedure TAM_Comprob.FPAGOKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  if NROCUENTA.Enabled then NROCUENTA.SetFocus
  else IMPORTE.SetFocus;
 end;
end;

procedure TAM_Comprob.FPAGOExit(Sender: TObject);
var ChequeDato:TChequeDato;
var dato:string;
begin
 if FPAGO.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Forma de Pago Ingresado!!',mterror,[mbok],0);
  FPAGO.SetFocus;
 end
 else begin
  if IdCombos[4,FPAGO.ItemIndex] = '5' then begin   /// posnet
   PC3.ActivePage:=PC3.Pages[2];
   fecnac.Text:=trim(fecpago.Text);
   fecnac.SetFocus;
  end
  else begin
   if IdCombos[4,FPAGO.ItemIndex] = '4' then begin  /// cheque
    ChequeDato:= TChequeDato.create(self);
    if c7.Checked then  begin
     ChequeDato.E1.Text:=letracheque;
     ChequeDato.E2.Text:=cheque;
     ChequeDato.datobanco:=bank;
    end;
    try
     ChequeDato.ShowModal;
     elcheque:=trim(ChequeDAto.E1.Text) + '-' + trim(ChequeDato.E2.Text);
     elbanco:=trim(ChequeDato.banco.Text);
    finally
      ChequeDato.destroy;
    end;
   end
   else begin
     ///
   end;
  end;
 end;
end;

procedure TAM_Comprob.IMPORTEExit(Sender: TObject);
var Selec_Pagos:TSelec_Pagos;
    t:integer;
    valor:string;
begin
 if trim(IMPORTE.Text)='' then IMPORTE.Text:='000.00';
 if trim(IMPORTE.Text)='0' then IMPORTE.Text:='000.00';
 if trim(IMPORTE.Text) <> '000.00' then begin
  //mantenimiento
  if (IdCombos[3,TPOOBJ.ItemIndex] = '3') and ((ACCION.ItemIndex = 0) or (ACCION.ItemIndex = 2))then begin
   if not periactual.Checked then begin
    if (cpa.Checked) and (trim(aniopago.Text) <> '0') then begin
     if (trim(Aniopago.Text) <> '0') then observ.Text:='PAGO ANUAL ' + trim(aniopago.Text);
    end
    else begin
     try
      label101.Visible:=false;
      idser.Visible:=false;
      Selec_Pagos:=TSelec_Pagos.Create(nil);
      Selec_Pagos.NroAccion:=trim(nrocuenta.Text);
      Selec_Pagos.Importe:=strtofloat(importe.Text);
      Selec_Pagos.NroObjeto:='3';
      if cpa.Checked=true then begin
       Selec_Pagos.CB1.Checked:=false;
       if (trim(Aniopago.Text) <> '0') then Selec_Pagos.anio := trim(aniopago.Text);
      end
      else begin
       Selec_Pagos.CB1.Checked:=false;
       iF ACCION.ItemIndex = 2 THEN Selec_Pagos.CB1.Checked:=false;
       iF ACCION.ItemIndex = 1 THEN Selec_Pagos.CB1.Checked:=false;
      end;
      Selec_Pagos.ShowModal;
      SetLength(IdPagos,6);
      SetLength(IdPagos[0], Selec_Pagos.CntRecords);
      SetLength(IdPagos[1], Selec_Pagos.CntRecords);
      SetLength(IdPagos[2], Selec_Pagos.CntRecords);
      SetLength(IdPagos[3], Selec_Pagos.CntRecords);
      SetLength(IdPagos[4], Selec_Pagos.CntRecords);
      SetLength(IdPagos[5], Selec_Pagos.CntRecords);
      for t:=0 to Selec_Pagos.CntRecords-1 do begin
       IdPagos[0,t]:=Selec_Pagos.IdCombos[0,t];
       IdPagos[1,t]:=Selec_Pagos.IdCombos[1,t];
       IdPagos[2,t]:=Selec_Pagos.IdCombos[2,t];
       IdPagos[3,t]:=Selec_Pagos.IdCombos[3,t];
       IdPagos[4,t]:=Selec_Pagos.IdCombos[4,t];
       IdPagos[5,t]:=Selec_Pagos.IdCombos[5,t];
      end;
     finally
      if cpa.Checked then begin
       if (trim(Aniopago.Text) <> '0') then observ.Text:='PAGO ANUAL ' + trim(aniopago.Text)
         else observ.Text:='';
      end
      else begin
       observ.Text:='Pago Periodo ' + Selec_Pagos.barra.Panels[1].Text;
      end;
      Selec_Pagos.Free;
     end;
    end;
   end;
  end;

  // VENTAS
  if (IdCombos[3,TPOOBJ.ItemIndex] = '1') and  ((ACCION.ItemIndex = 0) or (ACCION.ItemIndex = 2))then begin
   try
    label101.Visible:=false;
    idser.Visible:=false;
    Selec_Pagos:=TSelec_Pagos.Create(nil);
    Selec_Pagos.NroAccion:=trim(nrocuenta.Text);
    Selec_Pagos.Importe:=strtofloat(importe.Text);
    Selec_Pagos.NroObjeto:='1';
    Selec_Pagos.CB1.Checked:=FALSE;
    Selec_Pagos.ShowModal;
    SetLength(IdPagos,6);
    SetLength(IdPagos[0], Selec_Pagos.CntRecords);
    SetLength(IdPagos[1], Selec_Pagos.CntRecords);
    SetLength(IdPagos[2], Selec_Pagos.CntRecords);
    SetLength(IdPagos[3], Selec_Pagos.CntRecords);
    SetLength(IdPagos[4], Selec_Pagos.CntRecords);
    SetLength(IdPagos[5], Selec_Pagos.CntRecords);
    for t:=0 to Selec_Pagos.CntRecords-1 do begin
     IdPagos[0,t]:=Selec_Pagos.IdCombos[0,t];
     IdPagos[1,t]:=Selec_Pagos.IdCombos[1,t];
     IdPagos[2,t]:=Selec_Pagos.IdCombos[2,t];
     IdPagos[3,t]:=Selec_Pagos.IdCombos[3,t];
     IdPagos[4,t]:=Selec_Pagos.IdCombos[4,t];
     IdPagos[5,t]:=Selec_Pagos.IdCombos[5,t];
    end;
   finally
    observ.Text:='Pago Parcela Cta Nro ' + Selec_Pagos.barra.Panels[1].Text;
    Selec_Pagos.Free;
   end;
  end;

  // SERVICIOS
  if (IdCombos[3,TPOOBJ.ItemIndex] = '2') and  ((ACCION.ItemIndex = 0) or (ACCION.ItemIndex = 2))then begin
   try
    coloca1(11);
    label101.Visible:=true;
    idser.Visible:=true;
    Selec_Pagos:=TSelec_Pagos.Create(nil);
    Selec_Pagos.NroAccion:=trim(nrocuenta.Text);
    Selec_Pagos.Importe:=strtofloat(importe.Text);
    Selec_Pagos.NroObjeto:='2';
    Selec_Pagos.CB1.Checked:=FALSE;
    //Selec_Pagos.CB1.Checked:=true;
    Selec_Pagos.ShowModal;
    SetLength(IdPagos,6);
    SetLength(IdPagos[0], Selec_Pagos.CntRecords);
    SetLength(IdPagos[1], Selec_Pagos.CntRecords);
    SetLength(IdPagos[2], Selec_Pagos.CntRecords);
    SetLength(IdPagos[3], Selec_Pagos.CntRecords);
    SetLength(IdPagos[4], Selec_Pagos.CntRecords);
    SetLength(IdPagos[5], Selec_Pagos.CntRecords);
    for t:=0 to Selec_Pagos.CntRecords-1 do begin
     IdPagos[0,t]:=Selec_Pagos.IdCombos[0,t];
     IdPagos[1,t]:=Selec_Pagos.IdCombos[1,t];
     IdPagos[2,t]:=Selec_Pagos.IdCombos[2,t];
     IdPagos[3,t]:=Selec_Pagos.IdCombos[3,t];
     IdPagos[4,t]:=Selec_Pagos.IdCombos[4,t];
     IdPagos[5,t]:=Selec_Pagos.IdCombos[5,t];
    end;
   finally
    idser.Text:=Selec_Pagos.Label1.Caption;
    observ.Text:='Pago Servicio Inhum - Nivel: ' + trim(d39.Text) + ' Cta Nro ' + trim(Selec_Pagos.barra.Panels[1].Text) + '';
    Selec_Pagos.Free;
   end;
  end;

  // PSP
  if (IdCombos[3,TPOOBJ.ItemIndex] = '6') and  ((ACCION.ItemIndex = 0) or (ACCION.ItemIndex = 2))then begin
   try
    label101.Visible:=true;
    idser.Visible:=true;
    Selec_Pagos:=TSelec_Pagos.Create(nil);
    Selec_Pagos.NroAccion:=trim(nrocuenta.Text);
    Selec_Pagos.Importe:=strtofloat(importe.Text);
    Selec_Pagos.NroObjeto:='6';
    Selec_Pagos.CB1.Checked:=FALSE;
    //Selec_Pagos.CB1.Checked:=true;
    Selec_Pagos.ShowModal;
    SetLength(IdPagos,6);
    SetLength(IdPagos[0], Selec_Pagos.CntRecords);
    SetLength(IdPagos[1], Selec_Pagos.CntRecords);
    SetLength(IdPagos[2], Selec_Pagos.CntRecords);
    SetLength(IdPagos[3], Selec_Pagos.CntRecords);
    SetLength(IdPagos[4], Selec_Pagos.CntRecords);
    SetLength(IdPagos[5], Selec_Pagos.CntRecords);
    for t:=0 to Selec_Pagos.CntRecords-1 do begin
     IdPagos[0,t]:=Selec_Pagos.IdCombos[0,t];
     IdPagos[1,t]:=Selec_Pagos.IdCombos[1,t];
     IdPagos[2,t]:=Selec_Pagos.IdCombos[2,t];
     IdPagos[3,t]:=Selec_Pagos.IdCombos[3,t];
     IdPagos[4,t]:=Selec_Pagos.IdCombos[4,t];
     IdPagos[5,t]:=Selec_Pagos.IdCombos[5,t];
    end;
   finally
    idser.Text:=Selec_Pagos.Label1.Caption;
    observ.Text:='pago PSP periodos ' + trim(Selec_Pagos.barra.Panels[1].Text);
    Selec_Pagos.Free;
   end;
  end;

   // MANTENIMIENTO DE PANTEONES
  if (IdCombos[3,TPOOBJ.ItemIndex] = '8') and  ((ACCION.ItemIndex = 0) or (ACCION.ItemIndex = 2))then begin
   try
    label101.Visible:=true;
    idser.Visible:=true;
    Selec_Pagos:=TSelec_Pagos.Create(nil);
    Selec_Pagos.NroAccion:=trim(nrocuenta.Text);
    Selec_Pagos.Importe:=strtofloat(importe.Text);
    Selec_Pagos.NroObjeto:='8';
    Selec_Pagos.CB1.Checked:=FALSE;
    //Selec_Pagos.CB1.Checked:=true;
    Selec_Pagos.ShowModal;
    SetLength(IdPagos,6);
    SetLength(IdPagos[0], Selec_Pagos.CntRecords);
    SetLength(IdPagos[1], Selec_Pagos.CntRecords);
    SetLength(IdPagos[2], Selec_Pagos.CntRecords);
    SetLength(IdPagos[3], Selec_Pagos.CntRecords);
    SetLength(IdPagos[4], Selec_Pagos.CntRecords);
    SetLength(IdPagos[5], Selec_Pagos.CntRecords);
    for t:=0 to Selec_Pagos.CntRecords-1 do begin
     IdPagos[0,t]:=Selec_Pagos.IdCombos[0,t];
     IdPagos[1,t]:=Selec_Pagos.IdCombos[1,t];
     IdPagos[2,t]:=Selec_Pagos.IdCombos[2,t];
     IdPagos[3,t]:=Selec_Pagos.IdCombos[3,t];
     IdPagos[4,t]:=Selec_Pagos.IdCombos[4,t];
     IdPagos[5,t]:=Selec_Pagos.IdCombos[5,t];
    end;
   finally
    idser.Text:=Selec_Pagos.Label1.Caption;
    observ.Text:='pago Manten. De Panteon periodos ' + trim(Selec_Pagos.barra.Panels[1].Text);
    Selec_Pagos.Free;
   end;
  end;
 end;
end;

procedure TAM_Comprob.CPAKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  if cpa.Checked then aniopago.SetFocus
    else importe.SetFocus;
end;
end;

procedure TAM_Comprob.FECNACExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(FECNAC.Text));
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  FECNAC.SetFocus;
end;
end;

procedure TAM_Comprob.FECNACKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  tarjeta.SetFocus;
end;
end;

procedure TAM_Comprob.tarjetaExit(Sender: TObject);
begin
if tarjeta.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Nombre de tarjeta Ingresado!!',mterror,[mbok],0);
  tarjeta.SetFocus;
end;
end;

procedure TAM_Comprob.tarjetaKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  terminal.SetFocus;
end;
end;

procedure TAM_Comprob.TerminalExit(Sender: TObject);
begin
if terminal.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Comprobante Ingresado!!',mterror,[mbok],0);
  terminal.SetFocus;
end;
end;

procedure TAM_Comprob.TerminalKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  edit1.SetFocus;
end;
end;

procedure TAM_Comprob.Edit1Exit(Sender: TObject);
begin
if (trim(Edit1.Text) = '0') or (trim(Edit1.Text) = '')  then begin
  messagedlg('ERROR!!... El N° de Lote es invalido',mterror,[mbok],0);
  Edit1.SetFocus;
end;
end;

procedure TAM_Comprob.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  edit7.SetFocus;
 end
 else begin
  if ( StrScan('0123456789',Key) <> nil ) or  ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;
end;

procedure TAM_Comprob.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  edit2.setfocus;
  //nrocuenta.SetFocus;
 end
 else begin
  if ( StrScan('0123456789,',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;
end;

procedure TAM_Comprob.Edit7Exit(Sender: TObject);
begin
if (trim(Edit7.Text) = '0') or (trim(Edit7.Text) = '')  then begin
  messagedlg('ERROR!!... El N° de Cupon/Ticket es invalido',mterror,[mbok],0);
  Edit7.SetFocus;
end;
end;

procedure TAM_Comprob.Edit2Exit(Sender: TObject);
begin
if (trim(Edit2.Text) = '0') or (trim(Edit2.Text) = '')  then begin
  messagedlg('ERROR!!... El Importe es invalido',mterror,[mbok],0);
  Edit2.SetFocus;
end;
end;

procedure TAM_Comprob.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  nrocuenta.SetFocus;
end
else begin
  if ( StrScan('0123456789.',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
   else Key := #0;
end;
end;

procedure TAM_Comprob.bancoExit(Sender: TObject);
begin
if banco.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Banco Ingresada!!',mterror,[mbok],0);
  banco.SetFocus;
end;
end;

procedure TAM_Comprob.bancoKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then seriecheque.SetFocus;
end;

procedure TAM_Comprob.seriechequeKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then nrocheque.SetFocus
else begin
  if ( StrScan('ABCDEFGHIJKLMNÑOPQRSTUVWXYZ',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
   else Key := #0;
  end;
end;

procedure TAM_Comprob.nrochequeExit(Sender: TObject);
begin
if (trim(nrocheque.Text) = '') OR (trim(nrocheque.Text) = '000000000000') OR (trim(nrocheque.Text) = '0') then begin
  messagedlgpos('Error!! Nro de Cheque Ingresado Incorrectamente.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  nrocheque.SetFocus;
end;
end;

procedure TAM_Comprob.nrochequeKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then impcheque.SetFocus
 else begin
  if ( StrScan('1234567890',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;
end;

procedure TAM_Comprob.impchequeExit(Sender: TObject);
begin
 if (trim(impcheque.text)='') or (trim(impcheque.text)='0') then begin
  messagedlg('EL Valor Ingresado del Cheque No es Válido',mterror,[mbok],0);
  impcheque.text:='00000.00';
  impcheque.SetFocus;
 end;
end;

procedure TAM_Comprob.impchequeKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then nrocuenta.SetFocus
  else begin
   if ( StrScan('0123456789.',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
   else Key := #0;
  end;
    //observ.Text:='Pago S/Cheque ' + trim(e1.Text) + '-' + trim(e2.Text) + ' de banco: ' +  trim(banco.Text)
    //         + ' de fecha: ' + trim(fcheque.Text) + ' con importe de '+ trim(e5.Text);
    //           gdatos.ActivePage:=gdatos.Pages[0];
end;

procedure TAM_Comprob.PeriActualKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  edit3.SetFocus;
 end;
end;

procedure TAM_Comprob.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  IF Length(EDIT3.Text) < 6 THEN BEGIN
   messagedlg('EL Valor del Periodo Incorrecto',mterror,[mbok],0);
   EDIT3.SetFocus;
  END ELSE fpago.SetFocus;
 end;
end;

procedure TAM_Comprob.Edit3Exit(Sender: TObject);
begin
  if trim(Edit3.Text)='' then Edit3.Text:='000000';
  if trim(Edit3.Text)='0' then Edit3.Text:='000000';
  if trim(Edit3.Text)='00' then Edit3.Text:='000000';
  if trim(Edit3.Text)='000' then Edit3.Text:='000000';
  if trim(Edit3.Text)='0000' then Edit3.Text:='000000';
  if trim(Edit3.Text)='00000' then Edit3.Text:='000000';
  if trim(Edit3.Text)='000000' then Edit3.Text:='000000';
  if trim(Edit3.Text) = '000000' then begin
    messagedlg('ERROR!!... El Periodo ingresado es incorrecto'  ,mterror,[mbok],0);
    Edit3.SetFocus;
  end;
end;

end.

unit AM_Planilla;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid, ExtCtrls,
  ComCtrls, JvgPage, Buttons, JvExButtons, JvBitBtn, ToolWin, DB,
  JvgGroupBox, Mask, JvExGrids, JvStringGrid, Unidad, DBClient, ADODB,
  WSDLIntf, ClaseFunciones, StrUtils, LMDControl, LMDBaseControl,
  LMDBaseGraphicControl, LMDGraphicControl, LMDScrollText, ClasePlanillaCobranzas,
  ClaseSistemas, RpDefine, RpBase, RpSystem, ImgList,ClaseComprobantesCobrados,
  ClasePlanillaCobranzasDetalle,ClaseComprobantesCobradosParciales,
  ClaseComprobantesCobradosPeriodos,ClasePersonalAreasComision, Menus;

type
  TAM_PlanillaPago = class(TForm)
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    Limpiar: TJvBitBtn;
    ToolButton2: TToolButton;
    GUARDA: TJvBitBtn;
    ToolButton3: TToolButton;
    JvBitBtn1: TJvBitBtn;
    Barra1: TStatusBar;
    Exporta: TJvBitBtn;
    IMPRIME: TJvBitBtn;
    ToolButton1: TToolButton;
    ToolButton5: TToolButton;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DataSource1: TDataSource;
    Buscar: TJvBitBtn;
    C1: TRadioButton;
    C2: TRadioButton;
    C3: TRadioButton;
    C0: TRadioButton;
    Bevel1: TBevel;
    COBRA: TComboBox;
    Label15: TLabel;
    FEC: TMaskEdit;
    ODNI: TEdit;
    JvgGroupBox3: TJvgGroupBox;
    DBGrid1: TDBGrid;
    JvgGroupBox5: TJvgGroupBox;
    Label11: TLabel;
    Label19: TLabel;
    Label6: TLabel;
    D1: TEdit;
    OBSERV: TEdit;
    JvgGroupBox1: TJvgGroupBox;
    JvgGroupBox2: TJvgGroupBox;
    DBGrid2: TDBGrid;
    Label8: TLabel;
    grilla2: TJvStringGrid;
    Label1: TLabel;
    DataSource2: TDataSource;
    ToolButton7: TToolButton;
    ANULA: TJvBitBtn;
    Marquecina: TLMDScrollText;
    D4: TEdit;
    D5: TEdit;
    D2: TEdit;
    Label2: TLabel;
    D3: TEdit;
    Label3: TLabel;
    todos: TRichEdit;
    RvS: TRvSystem;
    Image1: TImage;
    Label5: TLabel;
    D6: TEdit;
    CB1: TCheckBox;
    DBGrid3: TDBGrid;
    DataSource3: TDataSource;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    borrapago: TJvBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    GroupBox2: TGroupBox;
    Shape3: TShape;
    Label16: TLabel;
    Shape4: TShape;
    Label17: TLabel;
    GroupBox6: TGroupBox;
    Shape2: TShape;
    Label14: TLabel;
    Shape1: TShape;
    Label4: TLabel;
    Shape5: TShape;
    Label18: TLabel;
    Button1: TButton;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    DataSource4: TDataSource;
    PagoAnual: TCheckBox;
    PopupMenu1: TPopupMenu;
    CambiardeCobrador1: TMenuItem;
    JvBitBtn3: TJvBitBtn;
    Panel1: TPanel;
    Label27: TLabel;
    Label28: TLabel;
    Edit6: TEdit;
    cambia: TJvBitBtn;
    Elcobrador: TComboBox;
    JvBitBtn2: TJvBitBtn;
    JvBitBtn4: TJvBitBtn;
    Panel2: TPanel;
    JvBitBtn5: TJvBitBtn;
    JvBitBtn6: TJvBitBtn;
    Label29: TLabel;
    Edit7: TEdit;
    Label30: TLabel;
    Edit8: TEdit;
    Label31: TLabel;
    Edit9: TEdit;
    Label32: TLabel;
    Edit10: TEdit;
    Label33: TLabel;
    GroupBox3: TGroupBox;
    JvBitBtn7: TJvBitBtn;
    Label34: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure C0Click(Sender: TObject);
    procedure BuscarClick(Sender: TObject);
    procedure OBSERVKeyPress(Sender: TObject; var Key: Char);
    procedure grilla2DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure LimpiarVentana(nro:byte);
    procedure LimpiarClick(Sender: TObject);
    procedure GUARDAClick(Sender: TObject);
    procedure ODNIKeyPress(Sender: TObject; var Key: Char);
    procedure COBRAExit(Sender: TObject);
    procedure FECExit(Sender: TObject);
    procedure ANULAClick(Sender: TObject);
    procedure ExportaClick(Sender: TObject);
    procedure IMPRIMEClick(Sender: TObject);
    procedure RvSPrint(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CB1Click(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure borrapagoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cambiaClick(Sender: TObject);
    procedure ElcobradorExit(Sender: TObject);
    procedure ElcobradorKeyPress(Sender: TObject; var Key: Char);
    procedure COBRAKeyPress(Sender: TObject; var Key: Char);
    procedure JvBitBtn2Click(Sender: TObject);
    procedure JvBitBtn3Click(Sender: TObject);
    procedure JvBitBtn4Click(Sender: TObject);
    procedure JvBitBtn6Click(Sender: TObject);
    procedure Edit10Exit(Sender: TObject);
    procedure Edit10KeyPress(Sender: TObject; var Key: Char);
    procedure JvBitBtn5Click(Sender: TObject);
  private
    IdCombos:array of array of string;
    DataSet0,DataSet1,DtCombo,DtComboDet,DataSet,DataSetPosnet:TClientDataSet;
    PROCESO3,PROCESO1: TADODataSet;
    Funciones:TFuncionesVarias;
    PlanillaCobranzas:TPlanillaCobranzas;
    Sistemas:TSistemas;
    ComprobantesCobrados:TComprobantesCobrados;
    PlanillaCobranzasDetalle:TPlanillaCobranzasDetalle;
    ClaseComprobantesCobradosParciales:TComprobantesCobradosParciales;
    ClaseComprobantesCobradosPeriodos:TComprobantesCobradosPeriodos;
    deadmin,cantposnet:integer;
    FechaActual,nrop:string;
    CorreccionImpr:double;
    TiposFormularios:Unidad.TablaXML;{ Private declarations }
  public
        PersonalAreasComision:TPersonalAreasComision;
    gh,confirmado:boolean;{ Public declarations }
   // PROCESO1: TADODataSet;
  end;

var
  AM_PlanillaPago: TAM_PlanillaPago;

implementation

uses Modulo, Busqueda, Anula_Generica;
{$R *.dfm}

procedure TAM_PlanillaPago.FormActivate(Sender: TObject);
begin
if not(gh) then begin
  gh:=true;
  setlength(IdCombos,5);
  FechaActual:=LeftStr(Fec_System(),10);
  PC1.ActivePage:=PC1.Pages[0];
  FEC.Text:=FechaActual;
  CorreccionImpr:=0;
  PROCESO3:=TADODataSet.Create(nil);
  PROCESO3.ConnectionString:=modulo2.Conexion;
  PROCESO1:=TADODataSet.Create(nil);
  PROCESO1.ConnectionString:=modulo2.Conexion;
  Datasource4.DataSet:=PROCESO3;
  {grilla2.Cells[0,0]:='Orden';             grilla2.Cells[1,0]:='Objeto';
  grilla2.Cells[2,0]:='Cantidad';          grilla2.Cells[3,0]:='Importe';
  grilla2.Cells[4,0]:='Comisión';          grilla2.Cells[5,0]:='% Com.';
  grilla2.Cells[6,0]:='Total';             grilla2.Cells[0,1]:='1';
  grilla2.Cells[0,2]:='2';                 grilla2.Cells[0,3]:='3';
  grilla2.Cells[0,4]:='4';                 grilla2.Cells[0,5]:='5';
  grilla2.Cells[0,6]:='6';                 grilla2.Cells[0,7]:='7';
  grilla2.Cells[0,8]:='8';                 grilla2.Cells[0,9]:='9';
  grilla2.Cells[0,10]:='10';               grilla2.Cells[0,11]:='11';
  grilla2.Cells[0,12]:='12';               grilla2.Cells[0,13]:='13';
  grilla2.Cells[0,14]:='->';

  grilla2.Cells[1,1]:='Ventas';                          grilla2.Cells[1,2]:='Servicios';
  grilla2.Cells[1,3]:='Mantenimiento';                   grilla2.Cells[1,4]:='Consolidados';
  grilla2.Cells[1,5]:='Tramites Varios';                 grilla2.Cells[1,6]:='Plan Previsión (PSP)';
  grilla2.Cells[1,7]:='AlquilerNichos';                  grilla2.Cells[1,8]:='Mant. Panteones';
  grilla2.Cells[1,9]:='Gastos Correo';                   grilla2.Cells[1,10]:='Traslado';
  grilla2.Cells[1,11]:='Transferencia';                  grilla2.Cells[1,12]:='Anulados'; // Mant. Panteones
  grilla2.Cells[1,13]:='Servicios Sepelios';
  grilla2.Cells[1,14]:='----------------------';         grilla2.Cells[2,14]:='-------------';
  grilla2.Cells[3,14]:='--------------------';           grilla2.Cells[4,14]:='--------------------';
  grilla2.Cells[5,14]:='------------';                   grilla2.Cells[6,14]:='--------------------';
  grilla2.Cells[1,15]:='T O T A L'; }

  grilla2.Cells[0,0]:='Orden';             grilla2.Cells[1,0]:='Objeto';
  grilla2.Cells[2,0]:='Cantidad';          grilla2.Cells[3,0]:='Importe';
  grilla2.Cells[4,0]:='Comisión';          grilla2.Cells[5,0]:='% Com.';
  grilla2.Cells[6,0]:='Total';             grilla2.Cells[0,1]:='1';
  grilla2.Cells[0,2]:='2';                 grilla2.Cells[0,3]:='3';
  grilla2.Cells[0,4]:='4';                 grilla2.Cells[0,5]:='5';
  grilla2.Cells[0,6]:='6';                 grilla2.Cells[0,7]:='7';
  grilla2.Cells[0,8]:='8';                 grilla2.Cells[0,9]:='9';
  grilla2.Cells[0,10]:='10';               grilla2.Cells[0,11]:='11';
  grilla2.Cells[0,12]:='12';               grilla2.Cells[0,13]:='13';
  grilla2.Cells[0,14]:='14';               grilla2.Cells[0,15]:='15';
  grilla2.Cells[0,16]:='->';

  grilla2.Cells[1,1]:='Ventas';                          grilla2.Cells[1,2]:='Servicios';
  grilla2.Cells[1,3]:='Mantenimiento';                   grilla2.Cells[1,4]:='Consolidados';
  grilla2.Cells[1,5]:='Tramites Varios';                 grilla2.Cells[1,6]:='Plan Previsión (PSP)';
  grilla2.Cells[1,7]:='AlquilerNichos';                  grilla2.Cells[1,8]:='Mant. Panteones';
  grilla2.Cells[1,9]:='Gastos Correo';                   grilla2.Cells[1,10]:='Traslado';
  grilla2.Cells[1,11]:='Transferencia';                  grilla2.Cells[1,12]:='Anulados'; // Mant. Panteones
  grilla2.Cells[1,13]:='Servicios Sepelios';             grilla2.Cells[1,14]:='Cremaciones';
  grilla2.Cells[1,15]:='Ataud';
  grilla2.Cells[1,16]:='----------------------';         grilla2.Cells[2,16]:='-------------';
  grilla2.Cells[3,16]:='--------------------';           grilla2.Cells[4,16]:='--------------------';
  grilla2.Cells[5,16]:='------------';                   grilla2.Cells[6,16]:='--------------------';
  grilla2.Cells[1,17]:='T O T A L';
  Coloca1(1);
  Coloca1(7);
  panel1.Visible :=false;
  panel2.Visible :=false;
  Marquecina.Scroll:=true;
  JvBitBtn4.Enabled :=FALSE;
  Coloca1(9);
  ODNI.SetFocus;
end;
end;

procedure TAM_PlanillaPago.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TAM_PlanillaPago.Coloca1(nro:byte);
var t,y,r,s:integer;
    NroCobrador,NroForm,ValNull:variant;
    txt:string;        //,nrop
    txtw:widestring;
    tot1,tot2,tot3,tot4,totcom,tottras:real;
begin
 if nro=0 then begin //Cargamos los Pagos Registrados
  DataSource1.DataSet:=nil;
  DataSet0.Free;
  DataSet0:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=DataSet0;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if C1.Checked then begin
   NroCobrador:=null;
   NroForm:=null;
   txt:=trim(FEC.Text);
  end;
  if C2.Checked then begin
   NroCobrador:=null;
   NroForm:=ODNI.Text;
   txt:='';
  end;
  if C3.Checked then begin
   NroCobrador:=IdCombos[1,COBRA.ItemIndex];
   NroForm:=null;
   txt:='';
  end;
  if C0.Checked then begin
   NroCobrador:=null;
   NroForm:=null;
   txt:='';
  end;
  if not Funciones.Run_Fn_VistaComprobantesConPlanillas(NroForm,txt,NroCobrador,DataSet0,'order by nroplanilla',0) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if not DataSet0.IsEmpty then begin
    Barra1.Panels[1].Text:='Cant. Registros: ' + inttostr(DataSet0.RecordCount);
    for t:=0 to DataSet0.FieldCount-1 do DBGrid1.Columns[t].Width:=70;
  end;
 end;
 if nro=1 then begin //Combo Cobradores
  COBRA.Clear;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT distinct NroDni, RazonSocial, Cuif  FROM Fn_VistaPersonalAreas(2,NULL,NULL,0) WHERE (Cuif<>0) ORDER BY RazonSocial';
  if not Funciones.Listar(txtw,DtCombo) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
   SetLength(IdCombos[1],DtCombo.RecordCount);
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    COBRA.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
    IdCombos[1,t-1]:=DtCombo.Fields[2].AsString;
   end;
  end;
  Funciones.Free;
  COBRA.ItemIndex:=0;
 end;
 if nro=2 then begin //Cargamos los Pagos Registrados
  DataSource2.DataSet:=nil;
  DataSet1.Free;
  DataSet1:=TClientdataSet.Create(nil);
  DataSource2.DataSet:=DataSet1;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  NroCobrador:=DataSet0.Fields[2].AsVariant;
  ValNull:=DataSet0.Fields[4].AsVariant;
  NroForm:=DataSet0.Fields[5].AsVariant;
  txtw:='SELECT  Id, NroComprobante, DetalleComprobante, IdTipoComprobante, NroFormulario, Formulario,'
  + ' NroPlanilla, FechaPlanilla, CuifCobrador, Cobrador, NroDni, Identificador, NroTipoObjeto, Objeto,'
  + ' FechaCobro, Importe, GastoAdmin, Porcentaje, Anulado, FechaAnula, MotivoAnula, Cargado, EsMinoritario, Observ, DeAdmin, '
  + ' formapago FROM VLosComprobantesCobrados where (CuifCobrador= '+ DataSet0.Fields[5].AsString+')'
  + ' and (NroPlanilla= '+ DataSet0.Fields[2].AsString + ') and (NroFormulario='+ chr(39) + DataSet0.Fields[4].AsString + chr(39)+')';
  if not Funciones.Listar(txtw,DataSet1) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  for t:=1 to 17 do begin
   if t <> 16 then begin
    grilla2.Cells[2,t]:='0';
    grilla2.Cells[3,t]:='0.00';
    grilla2.Cells[4,t]:='0.00';
    grilla2.Cells[5,t]:='0.00';
    grilla2.Cells[6,t]:='0.00';
    grilla2.Cells[7,t]:='0.00';
    grilla2.Cells[10,t]:='0.00';
    grilla2.Cells[11,t]:='0.00';
    grilla2.Cells[12,t]:='0.00';
    grilla2.Cells[13,t]:='0.00';
    grilla2.Cells[14,t]:='0.00';
    grilla2.Cells[15,t]:='0.00';
   end;
  end;
  if not DataSet1.IsEmpty then begin
   for t:=0 to DataSet1.FieldCount-1 do DBGrid2.Columns[t].Width:=70;
   DtCombo.Free;
   DtCombo:=TClientdataSet.Create(nil);
   Funciones:=TFuncionesVarias.Create(nil);
   Funciones.ConnectionString:=modulo2.Conexion;
   if not Funciones.Run_Fn_VistaComprobantesAgrupados(NroForm,NroCobrador,ValNull,DtCombo,'',0) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
   else begin
    tot1:=0;
    tot2:=0;
    tot3:=0;
    tot4:=0;
    totcom:=0;
    tottras:=0;
    //for t:=1 to 14 do begin
    for t:=1 to 15 do begin
     if DtCombo.Locate('NroTipoObjeto',t,[loCaseInsensitive]) then begin
      grilla2.Cells[2,t]:=DtCombo.Fields[1].AsString;
      grilla2.Cells[3,t]:=Redondeo(DtCombo.Fields[2].AsString,2);
      grilla2.Cells[4,t]:=Redondeo(DtCombo.Fields[3].AsString,2);
      grilla2.Cells[5,t]:=Redondeo(DtCombo.Fields[4].AsString,2);
      grilla2.Cells[6,t]:=Redondeo(DtCombo.Fields[5].AsString,2);
      tot1:=tot1 + DtCombo.Fields[1].AsInteger;
      tot2:=tot2 + DtCombo.Fields[2].AsFloat;
      tot3:=tot3 + DtCombo.Fields[3].AsFloat;
      tot4:=tot4 + DtCombo.Fields[5].AsFloat;
     end;
    end;
    grilla2.Cells[2,17]:=FloatToStr(Tot1);
    grilla2.Cells[3,17]:=Redondeo(FloatToStr(tot2),2);
    grilla2.Cells[4,17]:=Redondeo(FloatToStr(tot3),2);
    grilla2.Cells[6,17]:=Redondeo(FloatToStr(tot4),2);
    if tot4 > 0 then begin
     Exporta.Enabled:=true;
    end;
   end;
   Funciones.Free;
  end
  else messagedlg('ERROR!! No existen comprobantes para la Planilla Buscada.',mtError,[mbok],0);
 end;
 if nro=3 then begin
  DataSource3.DataSet:=nil;
  DataSet.Free;
  DataSet:=TClientdataSet.Create(nil);
  DataSource3.DataSet:=DataSet;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  NroCobrador:=DataSet0.Fields[2].asString;
  txtw:='SELECT detallecomprobante as Comprobante,COUNT(DetalleComprobante) as Cantidad FROM VLosComprobantesCobrados '
  + 'where (NroPlanilla= '+ DataSet0.Fields[2].AsString + ') group by DetalleComprobante';
  if not Funciones.Listar(txtw,DataSet) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  dbgrid3.Columns[0].Width:=70;
  dbgrid3.Columns[1].Width:=50;
 end;
 if nro=4 then begin
  DtComboDet.Free;
  DtComboDet:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  NroCobrador:=DataSet0.Fields[2].asString;
  txtw:='SELECT isnull(COUNT(id),0) as Cantidad FROM VLosComprobantesCobrados '
  + ' where (NroPlanilla= '+ DataSet0.Fields[2].AsString + ') and DeAdmin=1';
  if not Funciones.Listar(txtw,DtComboDet) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  deadmin:=strtoint(DtComboDet.Fields[0].AsString);
 end;
 if nro = 5 then begin
  if not DataSet0.IsEmpty then begin
  nrop:=trim(DataSet0.Fields[2].AsString);
  if trim(DataSet0.Fields[9].AsString)='True' then begin
   messagedlg('ATENCION!! Imposible Confirmar la Planilla Nº: '+ nrop +' por estar ANULADA.',mtError,[mbok],0);
  end
  else begin
   D2.Text:=DataSet0.Fields[2].AsString;
   D3.Text:=DataSet0.Fields[3].AsString;
   D4.Text:=DataSet0.Fields[0].AsString;
   D5.Text:=DataSet0.Fields[1].AsString;
   IMPRIME.Enabled:=true;
   if DataSet0.Fields[6].AsString = '' then begin
    D1.Text:='00000';
    OBSERV.Clear;
    OBSERV.Color:=clWindow;
    OBSERV.ReadOnly:=false;
    ANULA.Enabled:=false;
    GUARDA.Enabled:=true;
    GroupBox1.Enabled:=true;
    borrapago.Enabled:=true;
   end
   else begin
    D1.Text:=DataSet0.Fields[6].AsString;
    OBSERV.Text:=DataSet0.Fields[7].AsString;
    OBSERV.Color:=$00D9DBEC;
    OBSERV.ReadOnly:=true;
    ANULA.Enabled:=false;
    ANULA.Enabled:=true;
    GUARDA.Enabled:=false;
    GroupBox1.Enabled:=false;
    borrapago.Enabled:=false;
   end;
   Coloca1(2);
   Coloca1(3);
   Coloca1(4);
   PC1.ActivePage:=PC1.Pages[1];
   if not OBSERV.ReadOnly then OBSERV.SetFocus;
  end;
  end;
 end;
 if nro = 6 then begin
  cantposnet:=0;
  DataSetPosnet.Free;
  DataSetPosnet:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  NroCobrador:=DataSet0.Fields[2].AsVariant;
  ValNull:=DataSet0.Fields[4].AsVariant;
  NroForm:=DataSet0.Fields[5].AsVariant;
  txtw:='SELECT  Id, NroComprobante, DetalleComprobante, IdTipoComprobante, NroFormulario, Formulario,'
  + ' NroPlanilla, FechaPlanilla, CuifCobrador, Cobrador, NroDni, Identificador, NroTipoObjeto, Objeto,'
  + ' FechaCobro, Importe, GastoAdmin, Porcentaje, Anulado, FechaAnula, MotivoAnula, Cargado, EsMinoritario, Observ, DeAdmin, '
  + ' formapago FROM VLosComprobantesCobrados where (CuifCobrador= '+ DataSet0.Fields[5].AsString+')'
  + ' and (NroPlanilla= '+ DataSet0.Fields[2].AsString + ') and (NroFormulario='+ chr(39) + DataSet0.Fields[4].AsString + chr(39)+')'
  + ' and (formapago=''POSNET'')';
  if not Funciones.Listar(txtw,DataSetPosnet) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if not DataSetPosnet.IsEmpty then begin
   cantposnet:=DataSetPosnet.RecordCount;
   label25.Caption:=inttostr(DataSetPosnet.RecordCount);
  end
  else begin
   cantposnet:=0;
   label25.Caption:='0';
  end;
  DataSetPosnet.Free;
  DataSetPosnet:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  NroCobrador:=DataSet0.Fields[2].AsVariant;
  ValNull:=DataSet0.Fields[4].AsVariant;
  NroForm:=DataSet0.Fields[5].AsVariant;
  txtw:='SELECT  Id, NroComprobante, DetalleComprobante, IdTipoComprobante, NroFormulario, Formulario,'
  + ' NroPlanilla, FechaPlanilla, CuifCobrador, Cobrador, NroDni, Identificador, NroTipoObjeto, Objeto,'
  + ' FechaCobro, Importe, GastoAdmin, Porcentaje, Anulado, FechaAnula, MotivoAnula, Cargado, EsMinoritario, Observ, DeAdmin, '
  + ' formapago FROM VLosComprobantesCobrados where (CuifCobrador= '+ DataSet0.Fields[5].AsString+')'
  + ' and (NroPlanilla= '+ DataSet0.Fields[2].AsString + ') and (NroFormulario='+ chr(39) + DataSet0.Fields[4].AsString + chr(39)+')'
  + ' and (formapago=''CHEQUE'')';
  if not Funciones.Listar(txtw,DataSetPosnet) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if not DataSetPosnet.IsEmpty then begin
    label26.Caption:=inttostr(DataSetPosnet.RecordCount);
  end
  else begin
    label26.Caption:='0';
  end;
  DataSetPosnet.Free;
  DataSetPosnet:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  NroCobrador:=DataSet0.Fields[2].AsVariant;
  ValNull:=DataSet0.Fields[4].AsVariant;
  NroForm:=DataSet0.Fields[5].AsVariant;
  txtw:='SELECT  Id, NroComprobante, DetalleComprobante, IdTipoComprobante, NroFormulario, Formulario,'
  + ' NroPlanilla, FechaPlanilla, CuifCobrador, Cobrador, NroDni, Identificador, NroTipoObjeto, Objeto,'
  + ' FechaCobro, Importe, GastoAdmin, Porcentaje, Anulado, FechaAnula, MotivoAnula, Cargado, EsMinoritario, Observ, DeAdmin, '
  + ' formapago FROM VLosComprobantesCobrados where (CuifCobrador= '+ DataSet0.Fields[5].AsString+')'
  + ' and (NroPlanilla= '+ DataSet0.Fields[2].AsString + ') and (NroFormulario='+ chr(39) + DataSet0.Fields[4].AsString + chr(39)+')'
  + ' and (formapago=''EFECTIVO'')';
  if not Funciones.Listar(txtw,DataSetPosnet) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if not DataSetPosnet.IsEmpty then begin
    label24.Caption:=inttostr(DataSetPosnet.RecordCount);
  end
  else begin
    label24.Caption:='0';
  end;
 end;
 if nro=7 then begin //Combo Cobradores 2
  elcobrador.Clear;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT distinct NroDni, RazonSocial, Cuif  FROM Fn_VistaPersonalAreas(2,NULL,NULL,0) WHERE (Cuif<>0) ORDER BY RazonSocial';
  if not Funciones.Listar(txtw,DtCombo) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
   SetLength(IdCombos[0],DtCombo.RecordCount);
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    elcobrador.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
    IdCombos[0,t-1]:=DtCombo.Fields[2].AsString;
   end;
  end;
  Funciones.Free;
  elcobrador.ItemIndex:=0;
 end;
 if nro = 8  then begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if not Funciones.Listar('SELECT Id, NroPlanilla, MontoCobrado  FROM PlanillaCobranzas WHERE (NroPlanilla = ' + trim(edit7.Text) +')',DtCombo) then
   messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
   else begin
    edit8.Text:=DtCombo.Fields[2].AsString;
    Label33.Caption := DtCombo.Fields[0].AsString;
   end;
  Funciones.Free;
 end;
 if nro = 9  then begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if not Funciones.Listar('SELECT dbo.ComprobantesCobrados.NroPlanilla, dbo.ComprobantesCobrados.FechaPlanilla, COUNT(*) as CantComprob '
    +' FROM dbo.ComprobantesCobrados LEFT OUTER JOIN dbo.PlanillaCobranzas ON dbo.ComprobantesCobrados.NroPlanilla = dbo.PlanillaCobranzas.NroPlanilla '
    +' WHERE (dbo.PlanillaCobranzas.NroPlanilla IS NULL) and YEAR(dbo.ComprobantesCobrados.FechaPlanilla) =  YEAR(GETDATE()) '
    +' and MONTH(dbo.ComprobantesCobrados.FechaPlanilla) =  MONTH(GETDATE()) '
    +' group by dbo.ComprobantesCobrados.NroPlanilla, dbo.ComprobantesCobrados.FechaPlanilla '
    +' ORDER BY dbo.ComprobantesCobrados.NroPlanilla',DtCombo) then
   messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
   else begin
    IF NOT DtCombo.IsEmpty then begin
     GroupBox3.Visible :=TRUE;
    end
    ELSE GroupBox3.Visible :=FALSE;

    //edit8.Text:=DtCombo.Fields[2].AsString;
    //Label33.Caption := DtCombo.Fields[0].AsString;
   end;
  Funciones.Free;
 end;
end;

procedure TAM_PlanillaPago.JvBitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TAM_PlanillaPago.C1Click(Sender: TObject);
begin
  Label15.Visible:=true;
  ODNI.Visible:=false;
  FEC.Visible:=false;
  COBRA.Visible:=false;
  PC1.ActivePage:=PC1.Pages[0];
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
end;

procedure TAM_PlanillaPago.C0Click(Sender: TObject);
begin
Label15.Visible:=false;
ODNI.Visible:=false;
FEC.Visible:=false;
Buscar.SetFocus;
end;

procedure TAM_PlanillaPago.BuscarClick(Sender: TObject);
begin
Coloca1(0);
end;

procedure TAM_PlanillaPago.OBSERVKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  if GUARDA.Enabled then GUARDA.SetFocus;
end;
end;

procedure TAM_PlanillaPago.grilla2DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
 if ARow = 12 then begin        //8
  grilla2.Canvas.Brush.Color := clWindow;
  grilla2.Canvas.FillRect(Rect);
  grilla2.Canvas.Font.Style:=[fsBold];
  grilla2.Canvas.Font.Size:=9;
  grilla2.Canvas.Font.Color:= clRed;
  grilla2.Canvas.TextOut(Rect.Left + 2, Rect.Top + 2, grilla2.cells[Acol,Arow]);
 end;
 if ARow = 16 then begin        //14
  grilla2.Canvas.Brush.Color := $0079F1F4;
  grilla2.Canvas.FillRect(Rect);
  grilla2.Canvas.Font.Style:=[fsBold];
  grilla2.Canvas.Font.Size:=9;
  grilla2.Canvas.Font.Color:= clGreen;
  grilla2.Canvas.TextOut(Rect.Left + 2, Rect.Top + 2, grilla2.cells[Acol,Arow]);
 end;
end;

procedure TAM_PlanillaPago.DBGrid1CellClick(Column: TColumn);
//var nrop:string;
var m:boolean;
var txtw:widestring;
begin
 PersonalAreasComision:=TPersonalAreasComision.Create(nil);
 PersonalAreasComision.ConnectionString:=modulo2.Conexion;
 if not DataSet0.IsEmpty then begin
  nrop:=trim(DataSet0.Fields[2].AsString);
  edit6.Text:=trim(DataSet0.Fields[2].AsString);
  edit7.Text:=trim(DataSet0.Fields[2].AsString);
  if trim(DataSet0.Fields[9].AsString)='True' then begin
    messagedlg('ATENCION!! Imposible Confirmar la Planilla Nº: '+ nrop +' por estar ANULADA.',mtError,[mbok],0);
  end
  else begin
    // primero vemos si la planilla es de silgeuro que cobroa pagos anuales al 10% de comision
   if trim(DataSet0.Fields[5].AsString) = '20083112256' then begin
    // preguntamos si es una planilla de cobro anual
    if pagoanual.Checked  then begin
     txtw:='exec SPC_PersonalAreasComision 1';
     m:=PersonalAreasComision.ListarSinResp(txtw);
     PersonalAreasComision.Free;
    end
    else begin
      txtw:='exec SPC_PersonalAreasComision 0';
      m:=PersonalAreasComision.ListarSinResp(txtw);
      PersonalAreasComision.Free;
    end;
   end;
   D2.Text:=DataSet0.Fields[2].AsString;
   D3.Text:=DataSet0.Fields[3].AsString;
   D4.Text:=DataSet0.Fields[0].AsString;
   D5.Text:=DataSet0.Fields[1].AsString;
   if DataSet0.Fields[6].AsString = '' then begin
    confirmado:=false;
    D1.Text:='00000';
    OBSERV.Clear;
    OBSERV.Color:=clWindow;
    OBSERV.ReadOnly:=false;
    ANULA.Enabled:=false;
    GUARDA.Enabled:=true;
    GroupBox1.Enabled:=true;
    borrapago.Enabled:=true;
    IMPRIME.Enabled:=false;
    JvBitBtn4.Enabled :=false;
    //popupmenu1.Items[0].Visible :=true;
   end
   else begin
    confirmado:=true;
    D1.Text:=DataSet0.Fields[6].AsString;
    OBSERV.Text:=DataSet0.Fields[7].AsString;
    OBSERV.Color:=$00D9DBEC;
    OBSERV.ReadOnly:=true;
    ANULA.Enabled:=false;
    ANULA.Enabled:=true;
    GUARDA.Enabled:=false;
    GroupBox1.Enabled:=false;
    borrapago.Enabled:=false;
    IMPRIME.Enabled:=true;
    JvBitBtn4.Enabled :=true;
    //popupmenu1.Items[0].Visible :=false;
   end;
   Coloca1(2);
   Coloca1(3);
   Coloca1(4);
   Coloca1(6);  //cant de formas de pago
   PC1.ActivePage:=PC1.Pages[1];
   if not OBSERV.ReadOnly then OBSERV.SetFocus;
  end;
 end;
end;

procedure TAM_PlanillaPago.DBGrid1TitleClick(Column: TColumn);
begin
DataSet0.IndexFieldNames:=Column.FieldName;
end;

procedure TAM_PlanillaPago.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var h:byte;
begin
 if trim(DataSet0.Fields[9].text)='True' then h:=2
 else begin
  if trim(DataSet0.Fields[6].Text) = '' then h:=0
   else begin
   if trim(DataSet0.Fields[8].Text) <> '' then h:=1;
  end;
 end;
 case h of
  0:begin
   DBGrid1.Canvas.Brush.Color:=clWindow;
   DBGrid1.Canvas.FillRect(Rect);
   DBGrid1.Canvas.Font.Color:= clBlack;
  end;
  1:begin // sin confirmar
   DBGrid1.Canvas.Brush.Color:=clLime;
   DBGrid1.Canvas.FillRect(Rect);
   DBGrid1.Canvas.Font.Color:= clBlack;
  end;
  2:begin // sin confirmar
   DBGrid1.Canvas.Brush.Color:=clSkyBlue;
   DBGrid1.Canvas.FillRect(Rect);
   DBGrid1.Canvas.Font.Color:= clBlack;
  end;
 end;
DBGrid1.DefaultDrawColumnCell(Rect,Datacol,Column,State);
end;

procedure TAM_PlanillaPago.LimpiarVentana(nro:byte);
var t,r:integer;
begin
 if nro = 0 then begin
  DataSource1.DataSet:=nil;
  DataSource2.DataSet:=nil;
  DataSource3.DataSet:=nil;
  C1.Checked:=true;
  PC1.ActivePage:=PC1.Pages[0];
  if c2.Checked= true then  begin
   odni.Text:=d2.Text;
   odni.SetFocus;
   buscar.Click;
  end
  else begin
   if c1.Checked= true then fec.SetFocus;
   if c3.Checked= true then cobra.SetFocus;
   if c0.Checked= true then buscar.SetFocus;
   buscar.Click;
  end;
  edit1.Clear;                 edit2.Clear;
  edit3.Clear;                 edit4.Clear;
  edit5.Clear;
  label24.Caption:='...';
  label25.Caption:='...';
  label26.Caption:='...';
 end;
 if nro <= 1 then begin
  D1.Text:='00000';
  D2.Clear;
  D3.Clear;
  D4.Clear;
  D5.Clear;
  OBSERV.Clear;
  for t:=1 to 8 do begin
   if t <> 7 then begin
    grilla2.Cells[2,t]:='0';
    grilla2.Cells[3,t]:='0.00';
    grilla2.Cells[4,t]:='0.00';
    grilla2.Cells[5,t]:='0.00';
    grilla2.Cells[6,t]:='0.00';
   end;
  end;
  EXPORTA.Enabled:=false;
  IMPRIME.Enabled:=false;
  borrapago.Enabled:=false;
  edit1.Clear;                 edit2.Clear;
  edit3.Clear;                 edit4.Clear;
  edit5.Clear;
  label24.Caption:='...';
  label25.Caption:='...';
  label26.Caption:='...';
 end;
 ANULA.Enabled:=false;
 GUARDA.Enabled:=false;
 borrapago.Enabled:=false;
 edit1.Clear;                 edit2.Clear;
 edit3.Clear;                 edit4.Clear;
 edit5.Clear;
 label24.Caption:='...';
 label25.Caption:='...';
 label26.Caption:='...';
end;

procedure TAM_PlanillaPago.LimpiarClick(Sender: TObject);
begin
LimpiarVentana(0);
end;

procedure TAM_PlanillaPago.GUARDAClick(Sender: TObject);
var gf,t,p:integer;
    ElId1:string;
    TodoOk1,ok:boolean;
    Param:TWideStrings;
    Cons:widestring;
begin
 gf:=messagedlg('Desea Confirmar la Planilla de Pagos Nro: ' + trim(d2.Text) + chr(13)
    + 'ATENCION!! El proceso hará que impacten los Pagos',mtWarning,[mbok,mbCancel],0);
 if gf = 1 then begin
  PlanillaCobranzas:=TPlanillaCobranzas.Create(nil);
  PlanillaCobranzas.ConnectionString:=modulo2.Conexion;
  PlanillaCobranzas.C_NroFormulario_IX1:=DataSet0.Fields[4].AsString;
  PlanillaCobranzas.C_NroPlanilla_IX2:=D2.Text;
  PlanillaCobranzas.C_Cuif_IX3:=DataSet0.Fields[5].asVariant;
  PlanillaCobranzas.C_Fecha_IX4:=DataSet0.Fields[3].AsString;
  PlanillaCobranzas.C_Cantidad:=grilla2.Cells[2,grilla2.RowCount-1];
  PlanillaCobranzas.C_MontoCobrado:=grilla2.Cells[3,grilla2.RowCount-1];
  PlanillaCobranzas.C_Comision:=grilla2.Cells[4,grilla2.RowCount-1];
  PlanillaCobranzas.C_Porcentaje:=grilla2.Cells[5,grilla2.RowCount-1];
  PlanillaCobranzas.C_Total:=grilla2.Cells[6,grilla2.RowCount-1];
  PlanillaCobranzas.C_Observaciones:=AnsiReplaceStr(OBSERV.Text,chr(39),chr(33));
  PlanillaCobranzas.C_Usu_A:=modulo2.nro_usu;
  TodoOk1:=PlanillaCobranzas.Agrega;
  ElId1:=PlanillaCobranzas.Identidad;
  PlanillaCobranzas.Free;
  if TodoOK1 then begin
   Barra1.Panels[0].Text:='Iniciando Proceso de Impacto de PAGOS. Por Favor espere!!';
   DtCombo.Free;
   DtCombo:=TClientdataSet.Create(nil);
   Sistemas:=TSistemas.Create(nil);
   Sistemas.ConnectionString:=modulo2.Conexion;
   Param:=TWideStrings.Create;
   Param.Add(DataSet0.Fields[5].asString);
   Param.Add(D2.Text);
   Param.Add(DataSet0.Fields[4].AsString);
   Param.Add(inttostr(modulo2.nro_usu));
   if not Sistemas.ListarSP(Param,'AgregaPagosConfirmados',DtCombo) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
   else begin
    if DtCombo.Fields[0].AsString <> 'OK' then begin
     Barra1.Panels[0].Text:='ERROR!! No impactaron los Pagos!!.';
     messagedlg('ERROR!! Al Guardar los Datos de la Planilla.',mtError,[mbok],0);
    end
    else begin
        /// guardamos el detalle de la planilla confirmada
     for p:=1 to GRILLA2.RowCount-1 do begin
      if (trim(GRILLA2.Cells[2,p]) <> '0' ) and (trim(GRILLA2.Cells[2,p]) <> '-------------') then begin
       if (trim(GRILLA2.Cells[0,p]) <> '->' ) and (trim(GRILLA2.Cells[0,p]) <> '' )then begin
        PlanillaCobranzasDetalle:=TPlanillaCobranzasDetalle.Create(nil);
        PlanillaCobranzasDetalle.ConnectionString:=modulo2.Conexion;
        PlanillaCobranzasDetalle.C_IdPlanillaCobranza:=strtoint(ElId1);
        PlanillaCobranzasDetalle.C_NroPlanilla:=d2.Text;
        PlanillaCobranzasDetalle.C_Objeto:=trim(GRILLA2.Cells[1,p]);
        PlanillaCobranzasDetalle.C_Cantidad:=GRILLA2.Cells[2,p];
        PlanillaCobranzasDetalle.C_Importe:=GRILLA2.Cells[3,p];
        PlanillaCobranzasDetalle.C_Comision:=GRILLA2.Cells[4,p];
        PlanillaCobranzasDetalle.C_PorcentajeCobrador:=GRILLA2.Cells[5,p];
        PlanillaCobranzasDetalle.C_SubTotal:=GRILLA2.Cells[6,p];
        ok:=PlanillaCobranzasDetalle.Agrega;
        if ok then begin
         Barra1.Panels[1].Text:='Se Guardado el Detalle con exito';
         if cantposnet > 0 then begin
             //corremos el sp que impacta los pagos del posnet
          try
           Funciones:=TFuncionesVarias.Create(nil);
           Funciones.ConnectionString:=modulo2.Conexion;
           Cons:='ActuPlanillaCobranzaDetPosnet ' + trim(d2.Text);
           if not Funciones.ListarSinResp(Cons) then messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
            else begin
            Funciones.Free;
            Barra1.Panels[0].Text:='Pagos Posnet Ok';
           end;
           except
            Barra1.Panels[0].Text:='Error Actu Posnet';
           end;
         end;
        end
        else begin
         Barra1.Panels[1].Text:='Error al Guardar los Datos del PlanillasDetalle';
        end;
        PlanillaCobranzasDetalle.Free;
       end;
      end;
     end;
     Barra1.Panels[0].Text:='Los Datos se han guardado Satisfactoriamente!!';
     //messagedlg('ATENCION! Datos GUARDADOS Correctamente!!',mtWarning,[mbok],0);
     Limpiar.Click;
     if pagoanual.Checked then pagoanual.Checked:=false;
    end;
   end;
   Sistemas.free;
  end
  else messagedlg('ERROR!! Al Guardar los Datos de la Planilla.',mtError,[mbok],0);
 end;
end;

procedure TAM_PlanillaPago.ODNIKeyPress(Sender: TObject; var Key: Char);
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

procedure TAM_PlanillaPago.COBRAExit(Sender: TObject);
begin
if COBRA.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Cobrador Ingresado!!',mterror,[mbok],0);
  COBRA.SetFocus;
end;
end;

procedure TAM_PlanillaPago.FECExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(FEC.Text));
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  FEC.SetFocus;
end;
end;

procedure TAM_PlanillaPago.ANULAClick(Sender: TObject);
var gf:integer;
    Param:TWideStrings;
    txt:string;
    Anula_General:TAnula_General;
begin
 gf:=messagedlg('Desea ANULAR la Planilla de Pagos?' + chr(13)
    + 'ATENCION!! El proceso hará que se ELIMINEN los Pagos',mtWarning,[mbok,mbCancel],0);
 if gf = 1 then begin
  Anula_General:= TAnula_General.create(self);
  try
    Anula_General.ShowModal;
    txt:=AnsiReplaceStr(trim(Anula_General.MOTIVO.Text),chr(39),chr(33));
  finally
    Anula_General.destroy;
  end;
  Barra1.Panels[0].Text:='Iniciando Proceso de Eliminación de PAGOS. Por Favor espere!!';
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Sistemas:=TSistemas.Create(nil);
  Sistemas.ConnectionString:=modulo2.Conexion;
  Param:=TWideStrings.Create;
  Param.Add(D1.Text);
  Param.Add(DataSet0.Fields[5].asString);
  Param.Add(D2.Text);
  Param.Add(DataSet0.Fields[4].AsString);
  Param.Add(inttostr(modulo2.nro_usu));
  Param.Add(txt);
  if not Sistemas.ListarSP(Param,'AnulaPagosConfirmados',DtCombo) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
   if DtCombo.Fields[0].AsString <> 'OK' then begin
    Barra1.Panels[0].Text:='ERROR!! No impactaron los Pagos!!.';
    messagedlg('ERROR!! Al Guardar los Datos de la Planilla.',mtError,[mbok],0);
   end
   else begin
    Barra1.Panels[0].Text:='Los Datos se han guardado Satisfactoriamente!!';
    messagedlg('ATENCION! Datos GUARDADOS Correctamente!!',mtWarning,[mbok],0);
    Limpiar.Click;
   end;
  end;
  Sistemas.free;
 end;
end;

procedure TAM_PlanillaPago.ExportaClick(Sender: TObject);
var texto:widestring;
var txt:string;
var t,y,r:integer;
begin
 todos.Clear;
 texto:='';
 texto:=texto + 'N° Id' + chr(9) + 'N° Planilla' + chr(9) + 'Fecha' + chr(9) + 'Formulario'
       + chr(9) + 'Cobrador' + chr(9) + 'Observaciones';
 todos.Lines.Add(texto);
 if strtoint(D1.Text) = 0 then texto:='SIN ASIGNAR' + chr(9)
 else texto:=D1.Text + chr(9);
 texto:=texto + D2.Text + chr(9) + D3.Text + chr(9) + D4.Text + chr(9) + D5.Text + chr(9) + OBSERV.Text;
 todos.Lines.Add(texto);
 texto:='';
 todos.Lines.Add(texto);
 for y:=0 to grilla2.RowCount-1 do begin
  texto:='';
  for t:=0 to grilla2.ColCount-1 do begin
    texto:=texto + grilla2.Cells[t,y] + chr(9)
  end;
  todos.Lines.Add(texto);
 end;
 texto:='';
 todos.Lines.Add(texto);
 r:=1;
 if not DataSet1.IsEmpty then begin
  texto:='Orden' + chr(9);
  for t:=0 to DataSet1.FieldCount-1 do begin
    texto:=texto + DataSet1.Fields[t].FieldName + chr(9);
  end;
  todos.Lines.Add(texto);
  for y:=1 to DataSet1.RecordCount do begin
   DataSet1.RecNo:=y;
   texto:=inttostr(r) + chr(9);
   for t:=0 to DataSet1.FieldCount-1 do begin
     texto:=texto + DataSet1.Fields[t].AsString + chr(9);
   end;
   todos.Lines.Add(texto);
   r:=r+1;
  end;
 end;
 todos.SelectAll;
 todos.CopyToClipboard;
 messagedlg('Se Copiaron los Datos, listo para pegarlos a Excel',mtwarning,[mbok],0);
end;

procedure TAM_PlanillaPago.IMPRIMEClick(Sender: TObject);
begin
RvS.Execute;
end;

procedure TAM_PlanillaPago.RvSPrint(Sender: TObject);
var Posfy,Posfx,PosUlt:double;
    y:integer;
    Total:real;

    Function Logo(posx,posy:double):double;
    var Imagen1:TBitMap;
        Fuente,PathLogo:string;
        Tamanio,CantImg,t:integer;
        P1,P2,P3,P4:double;
    begin
     with RvS do begin
      {Pegamos el Logo de Osfatun para el reporte}
      CantImg:=StrToInt(modulo2.INI1.ReadString('Resumen Planillas','CantImg','1'));
      for t:=1 to CantImg do begin
       Imagen1 := TBitMap.Create;
       PathLogo:=modulo2.path_todo + '\Imagenes\' + modulo2.INI1.ReadString('Resumen Planillas','Imagen' + IntToStr(t),'');
       if FileExists(PathLogo) then begin
        Image1.Picture.LoadFromFile(PathLogo);
        Imagen1.Assign(Image1.Picture.Graphic);
        Fuente:=modulo2.INI1.ReadString('Resumen Planillas','Tamaño' + IntToStr(t),'');
        PathLogo:=modulo2.INI1.ReadString('Resumen Planillas','Pos' + IntToStr(t),'');
        if (Fuente <> '') and (PathLogo <> '') then begin
         P1:=StrToFloat(Extrae(Fuente,',',1));
         P2:=StrToFloat(Extrae(Fuente,',',2));
         P3:=StrToFloat(Extrae(PathLogo,',',1));
         P4:=StrToFloat(Extrae(PathLogo,',',2));
         BaseReport.PrintBitmapRect(posx+P3,posy+P4,posx+P3+P1,posy+P4+P2,Imagen1);
        end;
       end;
       Imagen1.Free;
      end;
      {Colocamos el título}
      BaseReport.Rectangle(posx+4,posy+5,posx+140,posy+23);
      BaseReport.SetFont('Arial',6);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posx+5,posy+22,'Usu Imp.: ' + inttostr(modulo2.nro_usu) + ' - Fec. Imp.:' + FechaActual);
      if D1.Text = '00000' then begin
       BaseReport.SetFont('Arial Black',8);
       BaseReport.FontColor:=clBlack;
       BaseReport.PrintXY(posx+55,posy+8,'PLANILLA DE COBRANZA');
       BaseReport.PrintXY(posx+55,posy+11,'Nº ' + D1.Text);
       BaseReport.PrintXY(posx+55,posy+14,'FECHA: ' + FechaActual);
       BaseReport.PrintXY(posx+55,posy+19,'NO GUARDADO - NO VALIDO');
       BaseReport.PrintXY(posx+55,posy+22,'   COMO DOCUMENTACION');
      end
      else begin
       BaseReport.SetFont('Arial Black',8);
       BaseReport.FontColor:=clBlack;
       BaseReport.PrintXY(posx+55,posy+8,'PLANILLA DE COBRANZA');
       BaseReport.PrintXY(posx+55,posy+11,'Nº ' + D1.Text);
       BaseReport.PrintXY(posx+55,posy+14,'FECHA: ' + D3.Text);
       BaseReport.PrintXY(posx+55,posy+19,'GUARDADO - VALIDO');
       BaseReport.PrintXY(posx+55,posy+22,'COMO DOCUMENTACION');
      end;
      BaseReport.SetFont('Arial',8);
      BaseReport.FontColor:=clBlack;
      BaseReport.Rectangle(posx+4,posy+24,posx+140,posy+28);
      BaseReport.PrintXY(posx+5,posy+27,'N° Planilla: ' + D2.Text );
      BaseReport.PrintXY(posx+40,posy+27,'Tipo Formulario: ' + D4.Text );
      BaseReport.Rectangle(posx+4,posy+28,posx+140,posy+32);
      BaseReport.PrintXY(posx+5,posy+31,'Cobrador: ' + D5.Text );
      BaseReport.PrintXY(posx+65,posy+31,'SubCobrador: ' + D6.Text );
     end;
     Result:=posy+32;
    end;

    Function LosTotales(posx,posy:double):double;
    var t:integer;
        P4:double;
    begin
     with RvS do begin
      BaseReport.SetFont('Arial Black',8);
      BaseReport.FontColor:=clBlack;
      BaseReport.RoundRect(posx+50,posy,posx+90,posy+4,5,5);
      BaseReport.PrintXY(posx+58,posy+3,'T O T A L  E S');
      BaseReport.Rectangle(posx+4,posy+4,posx+140,posy+49);
      BaseReport.Rectangle(posx+18,posy+4,posx+44,posy+49);
      BaseReport.Rectangle(posx+65,posy+4,posx+85,posy+49);
      BaseReport.Rectangle(posx+106,posy+4,posx+120,posy+49);
      BaseReport.Rectangle(posx+4,posy+4,posx+140,posy+9);
      BaseReport.PrintXY(posx+5,posy+8,'Orden');
      BaseReport.PrintXY(posx+24,posy+8,'Objeto');
      BaseReport.PrintXY(posx+47,posy+8,'Cantidad');
      BaseReport.PrintXY(posx+66,posy+8,'$ Importe');
      BaseReport.PrintXY(posx+86,posy+8,'$ Comisión');
      BaseReport.PrintXY(posx+107,posy+8,'% Com.');
      BaseReport.PrintXY(posx+123,posy+8,'Sub Total');
      P4:=posy+13;
      BaseReport.SetFont('Arial',8);
      BaseReport.FontColor:=clBlack;
      for t:=1 to 11 do begin
       if t <> 10 then begin
        if t = 11 then begin
         BaseReport.SetFont('Arial Black',8);
         BaseReport.FontColor:=clBlack;
        end;
        BaseReport.PrintXY(posx+5,P4,grilla2.Cells[0,t]);
        BaseReport.PrintXY(posx+19,P4,grilla2.Cells[1,t]);
        BaseReport.PrintXY(posx+54,P4,grilla2.Cells[2,t]);
        BaseReport.MoveTo(posx+83,P4);
        BaseReport.PrintRight('$ '+grilla2.Cells[3,t],posx+83);
        BaseReport.MoveTo(posx+104,P4);
        BaseReport.PrintRight('$ '+grilla2.Cells[4,t],posx+104);
        BaseReport.MoveTo(posx+118,P4);
        BaseReport.PrintRight('$ '+grilla2.Cells[5,t],posx+118);
        BaseReport.MoveTo(posx+139,P4);
        BaseReport.PrintRight('$ '+grilla2.Cells[6,t],posx+139);
        BaseReport.Rectangle(posx+4,P4+1,posx+140,P4+1);
        P4:=P4 + 5;
       end;
      end;
      P4:=P4 - 5;
      BaseReport.Rectangle(posx+4,P4+2,posx+140,P4+7);
      BaseReport.SetFont('Arial',8);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posx+5,P4+6,'Son Pesos: ' + numtopesos(grilla2.Cells[6,10]) + '  //--');
     end;
     Result:=P4+7;
    end;

    Function LosComprobantesCab(posx,posy:double):double;
    begin
     with RvS do begin
      BaseReport.SetFont('Arial Black',8);
      BaseReport.FontColor:=clBlack;
      BaseReport.RoundRect(posx+45,posy,posx+95,posy+4,5,5);
      BaseReport.PrintXY(posx+48,posy+3,'DETALLE COMPROBANTES');
      BaseReport.Rectangle(posx+4,posy+4,posx+140,posy+9);
      BaseReport.Rectangle(posx+12,posy+4,posx+34,posy+9); // 1 cuadrado
      BaseReport.Rectangle(posx+51,posy+4,posx+63,posy+9);
      BaseReport.Rectangle(posx+63,posy+4,posx+80,posy+9); // 2 cuadrado
      BaseReport.Rectangle(posx+94,posy+4,posx+108,posy+9); // 3 cuadrado
      BaseReport.Rectangle(posx+116,posy+4,posx+126,posy+9);  // 4 cuadrado
      BaseReport.PrintXY(posx+5,posy+8,'Id.');
      BaseReport.PrintXY(posx+13,posy+8,'Movim.');
      BaseReport.PrintXY(posx+35,posy+8,'N° Compr.');
      BaseReport.PrintXY(posx+52,posy+8,'DeAdm');
      BaseReport.PrintXY(posx+64,posy+8,'Tipo');
      BaseReport.PrintXY(posx+81,posy+8,'Fecha');
      BaseReport.PrintXY(posx+95,posy+8,'Identif.');
      BaseReport.PrintXY(posx+109,posy+8,'An?');
      BaseReport.PrintXY(posx+117,posy+8,'Imp.');
      BaseReport.PrintXY(posx+127,posy+8,'Acumul.');
     end;
     Result:=posy+9;
    end;

    Function LosComprobantesLn(posx,posy,Posy1:double):double;
    begin
     with RvS do begin
      BaseReport.Rectangle(posx+4,posy,posx+140,Posy1);
      BaseReport.Rectangle(posx+12,posy,posx+34,Posy1);
      BaseReport.Rectangle(posx+51,posy,posx+63,posy1);
      BaseReport.Rectangle(posx+63,posy,posx+80,Posy1);
      BaseReport.Rectangle(posx+94,posy,posx+108,Posy1);
      BaseReport.Rectangle(posx+116,posy,posx+126,Posy1);
     end;
     Result:=Posy1;
    end;

begin
 Posfx:=2 + CorreccionImpr;
 Posfy:=Logo(Posfx,5);
 Posfy:=LosTotales(Posfx,Posfy);
 PosUlt:=LosComprobantesCab(Posfx,Posfy);
 Posfy:=PosUlt;
 for y:=1 to DataSet1.RecordCount do begin
  Posfy:=Posfy + 3;
  DataSet1.RecNo:=y;
  with RvS do begin
   BaseReport.SetFont('Arial',7);
   BaseReport.FontColor:=clBlack;
   BaseReport.PrintXY(Posfx+4.5,Posfy,DataSet1.Fields[0].AsString);
   BaseReport.PrintXY(Posfx+13,Posfy,LeftStr(DataSet1.Fields[13].AsString,15));
   BaseReport.PrintXY(Posfx+35,Posfy,DataSet1.Fields[1].AsString);
   if DataSet1.Fields[24].AsString = 'True' then BaseReport.PrintXY(Posfx+52,Posfy,'SI')
      else BaseReport.PrintXY(Posfx+52,Posfy,'NO');
   BaseReport.PrintXY(Posfx+64,Posfy,DataSet1.Fields[2].AsString);
   BaseReport.PrintXY(Posfx+81,Posfy,DataSet1.Fields[14].AsString);
   BaseReport.PrintXY(Posfx+95,Posfy,DataSet1.Fields[11].AsString);
   if DataSet1.Fields[18].AsString = 'True' then BaseReport.PrintXY(Posfx+109,Posfy,'SI')
      else BaseReport.PrintXY(Posfx+109,Posfy,'NO');
   BaseReport.MoveTo(Posfx+122,Posfy);
   BaseReport.PrintRight(DataSet1.Fields[15].AsString,Posfx+126);
   Total:=Total + DataSet1.Fields[15].AsFloat;
   BaseReport.MoveTo(Posfx+139,Posfy);
   BaseReport.PrintRight(Redondeo(FloatToStr(Total),2),Posfx+139);
   BaseReport.Rectangle(Posfx+4,Posfy+0.5,Posfx+140,Posfy+0.5);
   if Posfy > 185 then begin
    LosComprobantesLn(Posfx,PosUlt,Posfy+0.5);
    BaseReport.NewPage;
    Posfy:=Logo(Posfx,5);
    PosUlt:=LosComprobantesCab(Posfx,Posfy);
    Posfy:=PosUlt;
   end;
  end;
 end;
 LosComprobantesLn(Posfx,PosUlt,Posfy+0.5);
 if deadmin > 0 then RvS.BaseReport.PrintXY(posfx+5,posfy+4,'Cantidad de ' +
  'COMPROBANTES de Admin. Central para este Gestor: ' + inttostr(deadmin))
  else RvS.BaseReport.PrintXY(posfx+5,posfy+4,'')
end;

procedure TAM_PlanillaPago.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var h:byte;
begin
 if trim(DataSet1.Fields[18].Text) = 'True' then h:=1
 else h:=0;
 case h of
  0:begin
    DBGrid2.Canvas.Brush.Color:=clWindow;
    DBGrid2.Canvas.FillRect(Rect);
    DBGrid2.Canvas.Font.Color:= clBlack;
    end;
  1:begin // sin confirmar
    DBGrid2.Canvas.Brush.Color:=clyellow;
    DBGrid2.Canvas.FillRect(Rect);
    DBGrid2.Canvas.Font.Color:= clBlack;
    end;
 end;
 DBGrid2.DefaultDrawColumnCell(Rect,Datacol,Column,State);
end;

procedure TAM_PlanillaPago.CB1Click(Sender: TObject);
begin
if CB1.Checked then CorreccionImpr:=143.5
else CorreccionImpr:=0;
end;

procedure TAM_PlanillaPago.DBGrid2CellClick(Column: TColumn);
begin
 if (GroupBox1.Enabled=true)  and (borrapago.Enabled=true) then  begin
    edit1.Text:=DataSet1.Fields[0].AsString;
    edit2.Text:=DataSet1.Fields[1].AsString;
    edit3.Text:=DataSet1.Fields[2].AsString;
    edit4.Text:=DataSet1.Fields[11].AsString;
    edit5.Text:=DataSet1.Fields[15].AsString;
    borrapago.Enabled:=true;
 end;
end;

procedure TAM_PlanillaPago.borrapagoClick(Sender: TObject);
var gf,t:integer;
    m:boolean;
    mensaje:string;
    txtw:widestring;
begin
 gf:=messagedlg('Desea Eliminar de forma definitiva de esta Planilla de Pagos Nro: ' + trim(d2.Text) + chr(13)
    + 'este Comprobante Nro: ' + trim(edit2.Text) +'. ',mtWarning,[mbok,mbCancel],0);
 if gf = 1 then begin
  PROCESO3.Close;
  PROCESO3.CommandText:='exec BorraComprobanteCobrado ' + trim(edit1.Text) + ',' + chr(39) +  trim(edit2.Text) + chr(39) ;
  PROCESO3.Open;
  mensaje:=datasource4.DataSet.Fields[0].AsString;
  if trim(mensaje)='OK' then begin
   messagedlg('El Comprobante Nro: ' + trim(edit2.Text) +' se ha Borrado con Exito...',mtConfirmation,[mbok],0);
   edit1.Clear;                 edit2.Clear;
   edit3.Clear;                 edit4.Clear;
   edit5.Clear;
   borrapago.Enabled:=false;
   coloca1(5);
   PC1.ActivePage:=PC1.Pages[1];
  end
  else begin
   messagedlg('Error al eliminar el Comprobante... Consulte con un Administrador',mtError,[mbok],0);
  end;
 end;
end;

procedure TAM_PlanillaPago.Button1Click(Sender: TObject);
var ok:boolean;
    p:integer;
    Cons:widestring;
begin
 for p:=1 to GRILLA2.RowCount-1 do begin
  if (trim(GRILLA2.Cells[2,p]) <> '0' ) and (trim(GRILLA2.Cells[2,p]) <> '-------------') then begin
   if (trim(GRILLA2.Cells[0,p]) <> '->' ) and (trim(GRILLA2.Cells[0,p]) <> '' )then begin
    PlanillaCobranzasDetalle:=TPlanillaCobranzasDetalle.Create(nil);
    PlanillaCobranzasDetalle.ConnectionString:=modulo2.Conexion;
    PlanillaCobranzasDetalle.C_IdPlanillaCobranza:=500;
    PlanillaCobranzasDetalle.C_NroPlanilla:=d2.Text;
    PlanillaCobranzasDetalle.C_Objeto:=trim(GRILLA2.Cells[1,p]);
    PlanillaCobranzasDetalle.C_Cantidad:=GRILLA2.Cells[2,p];
    PlanillaCobranzasDetalle.C_Importe:=GRILLA2.Cells[3,p];
    PlanillaCobranzasDetalle.C_Comision:=GRILLA2.Cells[4,p];
    PlanillaCobranzasDetalle.C_PorcentajeCobrador:=GRILLA2.Cells[5,p];
    PlanillaCobranzasDetalle.C_SubTotal:=GRILLA2.Cells[6,p];
    ok:=PlanillaCobranzasDetalle.Agrega;
    if ok then begin
     Barra1.Panels[1].Text:='Se Guardado el Detalle con exito';
     if cantposnet > 0 then begin
        //corremos el sp que impacta los pagos del posnet
      try
       Funciones:=TFuncionesVarias.Create(nil);
       Funciones.ConnectionString:=modulo2.Conexion;
       Cons:='ActuPlanillaCobranzaDetPosnet ' + trim(d2.Text);
       if not Funciones.ListarSinResp(Cons) then messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
        else begin
        Funciones.Free;
        Barra1.Panels[0].Text:='Pagos Posnet Ok';
       end;
      except
       Barra1.Panels[0].Text:='Error Actu Posnet';
      end;
     end;
    end
    else begin
     Barra1.Panels[1].Text:='Error al Guardar los Titulares';
    end;
    PlanillaCobranzasDetalle.Free;
   end;
  end;
 end;
end;

procedure TAM_PlanillaPago.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = VK_F4 then begin
  if GUARDA.Enabled = true then GUARDA.Click;
 //GUARDA.Click;
 end;
 if key = VK_F3 then begin
 //  if GUARDAR.Enabled = true then GUARDAR.Click;
  LIMPIAR.Click;
 end;
end;

procedure TAM_PlanillaPago.cambiaClick(Sender: TObject);
var gf:integer;
begin
 gf:=messagedlg('Desea Cambiar el Cobrador de esta Planilla ' + trim(edit6.Text) + chr(13)
    + 'ATENCION!! El proceso modificara los datos de la planilla',mtWarning,[mbok,mbCancel],0);
 if gf = 1 then begin
  if confirmado = false then begin
   PROCESO1:=TADODataSet.Create(nil);
   PROCESO1.ConnectionString:=modulo2.Conexion;
   PROCESO1.Close;
   PROCESO1.CommandText:='exec ActualizaCUITPlanillasCobranzas ' + trim(edit6.Text) + ',' + IdCombos[0,elcobrador.ItemIndex];
   PROCESO1.Open;
   if PROCESO1.Fields[0].AsString = 'OK' then begin
    //Barra1.Panels[2].Text:='OK';
    messagedlg('EXITO al Cambiar de Cobrador de esta Planilla ',mtConfirmation,[mbok,mbCancel],0);
    panel1.Visible :=false;
    buscar.Click;
    PC1.ActivePage:=PC1.Pages[0];
   end
   else begin
    messagedlg('ERROr al Cambiar el Cobrador de esta Planilla ',mtError,[mbok,mbCancel],0)
   end;
   PROCESO1.Free;
  end
  else begin
   PROCESO1:=TADODataSet.Create(nil);
   PROCESO1.ConnectionString:=modulo2.Conexion;
   PROCESO1.Close;
   PROCESO1.CommandText:='exec ActualizaCUITPlanillasCobranzasConfirmadas ' + trim(edit6.Text) + ',' + IdCombos[0,elcobrador.ItemIndex];
   PROCESO1.Open;
   if PROCESO1.Fields[0].AsString = 'OK' then begin
    messagedlg('EXITO al Cambiar de Cobrador de esta Planilla ',mtConfirmation,[mbok,mbCancel],0);
    panel1.Visible :=false;
    buscar.Click;
    PC1.ActivePage:=PC1.Pages[0];
    end
   else begin
    messagedlg('ERROr al Cambiar el Cobrador de esta Planilla ',mtError,[mbok,mbCancel],0)
    //Barra1.Panels[2].Text:='NO';
   end;
   PROCESO1.Free;
  end;
 end;
end;

procedure TAM_PlanillaPago.ElcobradorExit(Sender: TObject);
begin
 if Elcobrador.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Cobrador Ingresado!!',mterror,[mbok],0);
  Elcobrador.SetFocus;
 end;
end;

procedure TAM_PlanillaPago.ElcobradorKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  cambia.SetFocus;
end;
end;

procedure TAM_PlanillaPago.COBRAKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  Buscar.SetFocus;
end;
end;

procedure TAM_PlanillaPago.JvBitBtn2Click(Sender: TObject);
begin
 panel1.Visible :=false;
 buscar.Click;
end;

procedure TAM_PlanillaPago.JvBitBtn3Click(Sender: TObject);
begin
panel1.Visible :=true;
elcobrador.SetFocus;
end;

procedure TAM_PlanillaPago.JvBitBtn4Click(Sender: TObject);
begin
Coloca1(8);
panel2.Visible :=true;
edit10.SetFocus;
end;

procedure TAM_PlanillaPago.JvBitBtn6Click(Sender: TObject);
begin
 panel2.Visible :=false;
 buscar.Click;
end;

procedure TAM_PlanillaPago.Edit10Exit(Sender: TObject);
var cob,comi,tot : real ;
begin
 if trim(Edit10.Text)='' then Edit10.Text:='000.00';
 if trim(Edit10.Text)='0' then Edit10.Text:='000.00';
 if trim(Edit10.Text) <> '000.00' then begin
  tot:= strtofloat(edit8.Text) - strtofloat(edit10.Text) ;
  edit9.Text := floattostr(tot);
 end
end;

procedure TAM_PlanillaPago.Edit10KeyPress(Sender: TObject; var Key: Char);

begin
  if key = #13 then begin
   Key := #0;
   JvBitBtn5.SetFocus;
  end
  else begin
   if ( StrScan('0123456789.',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
    else Key := #0;
  end;
end;

procedure TAM_PlanillaPago.JvBitBtn5Click(Sender: TObject);
var gf:integer;
begin
 gf:=messagedlg('Desea Cambiar el Cobrador de esta Planilla ' + trim(edit6.Text) + chr(13)
    + 'ATENCION!! El proceso modificara los datos de la planilla',mtWarning,[mbok,mbCancel],0);
 if gf = 1 then begin
   if trim(Edit10.Text) ='000.00' then begin
     messagedlg('ERROR!! No Existe un Valor de Comision Ingresado!!',mterror,[mbok],0);
     edit10.SetFocus;
   end
   else begin
     PROCESO1:=TADODataSet.Create(nil);
     PROCESO1.ConnectionString:=modulo2.Conexion;
     PROCESO1.Close;
     PROCESO1.CommandText:='exec ActualizaComisionPlanillasCobranzasConfirmadas ' + trim(edit7.Text)
     + ',' + trim(edit10.Text)
     + ',' + trim(edit9.Text);
     PROCESO1.Open;
     if PROCESO1.Fields[0].AsString = 'OK' then begin
      //Barra1.Panels[2].Text:='OK';
      messagedlg('EXITO al Cambiar la Comision de esta Planilla ',mtConfirmation,[mbok,mbCancel],0);
      panel2.Visible :=false;
      buscar.Click;
      PC1.ActivePage:=PC1.Pages[0];
     end
     else begin
       messagedlg('ERROR al Cambiar la Comision de esta Planilla ',mtError,[mbok,mbCancel],0)
      //Barra1.Panels[2].Text:='NO';
     end;
     PROCESO1.Free;
   end;
 end;
end;

end.

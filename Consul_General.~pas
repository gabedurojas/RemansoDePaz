unit Consul_General;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,DBClient, StdCtrls, DBCtrls, Grids, DBGrids, ComCtrls, StrUtils,
  DB, Mask,ADODB, Buttons, ExtCtrls, JvExDBGrids, JvDBGrid, RpDefine,
  RpBase, RpSystem, JvgPage, JvExButtons, JvBitBtn, WSDLIntf, ClaseFunciones,
  ClaseTiposSectores,ClaseClientesTelefonos,
  ToolWin, JvExComCtrls, JvComCtrls, ImgList,ClaseSistemas,ClaseParcelas,ClaseParcelasNovedades,
  Menus, JvExGrids, JvStringGrid;

type LosDts = class(TDataSource);
type HackTable = class(TADOTable);

type THackStringGrid = class(TStringGrid);
type
  TCon_Gral = class(TForm)
    Barra1: TStatusBar;
    DataSource0: TDataSource;
    Rv: TRvSystem;
    PC1: TJvgPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TJvDBGrid;
    RB5: TRadioButton;
    Bevel2: TBevel;
    LB1: TLabel;
    ODNI: TEdit;
    ONOMB: TEdit;
    Busca: TJvBitBtn;
    DataSource1: TDataSource;
    TabSheet3: TTabSheet;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    PC2: TJvgPageControl;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    GroupBox4: TGroupBox;
    JvDBGrid3: TJvDBGrid;
    Panel1: TPanel;
    R2: TRadioButton;
    R1: TRadioButton;
    ToolBar1: TToolBar;
    ImpPDF: TBitBtn;
    Imprime: TJvBitBtn;
    Exporta: TJvBitBtn;
    sale: TJvBitBtn;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    Splitter2: TSplitter;
    GroupBox2: TGroupBox;
    JvDBGrid6: TJvDBGrid;
    GroupBox5: TGroupBox;
    JvDBGrid7: TJvDBGrid;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    JvDBGrid8: TJvDBGrid;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    DataSource6: TDataSource;
    DataSource7: TDataSource;
    GroupBox6: TGroupBox;
    JvDBGrid4: TJvDBGrid;
    Splitter3: TSplitter;
    GroupBox7: TGroupBox;
    JvDBGrid5: TJvDBGrid;
    DataSource8: TDataSource;
    Image1: TImage;
    todos: TRichEdit;
    RB3: TRadioButton;
    RB7: TRadioButton;
    RB4: TRadioButton;
    DataSource9: TDataSource;
    TabSheet4: TTabSheet;
    JvDBGrid9: TJvDBGrid;
    DataSource10: TDataSource;
    TabSheet9: TTabSheet;
    Splitter1: TSplitter;
    PageControl1: TPageControl;
    TabSheet10: TTabSheet;
    TabSheet11: TTabSheet;
    JvDBGrid1: TJvDBGrid;
    Label15: TLabel;
    D1: TDBEdit;
    Label7: TLabel;
    D2: TDBEdit;
    Label13: TLabel;
    D3: TDBEdit;
    Label6: TLabel;
    D4: TDBEdit;
    Label4: TLabel;
    D5: TDBEdit;
    Label11: TLabel;
    D6: TDBEdit;
    Label2: TLabel;
    D7: TDBEdit;
    Label9: TLabel;
    D8: TDBEdit;
    Label10: TLabel;
    D9: TDBEdit;
    D11: TDBEdit;
    Label26: TLabel;
    D10: TDBEdit;
    Label12: TLabel;
    Label1: TLabel;
    D12: TDBEdit;
    Label14: TLabel;
    D13: TDBEdit;
    Label16: TLabel;
    D14: TDBEdit;
    D15: TDBEdit;
    Label3: TLabel;
    Label5: TLabel;
    D16: TDBEdit;
    D17: TDBEdit;
    D18: TDBEdit;
    Label8: TLabel;
    Label18: TLabel;
    D19: TDBEdit;
    Label17: TLabel;
    D20: TDBEdit;
    Label19: TLabel;
    D21: TDBEdit;
    Image2: TImage;
    ImageList1: TImageList;
    GroupBox1: TGroupBox;
    JvDBGrid10: TJvDBGrid;
    DataSource11: TDataSource;
    TabSheet2: TTabSheet;
    JvDBGrid11: TJvDBGrid;
    DataSource12: TDataSource;
    GroupBox8: TGroupBox;
    dventa: TEdit;
    dmante: TEdit;
    dservicio: TEdit;
    dconsoli: TEdit;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    RB1: TRadioButton;
    Label24: TLabel;
    Edit1: TEdit;
    Button2: TJvBitBtn;
    Label25: TLabel;
    name: TEdit;
    Label27: TLabel;
    Label28: TLabel;
    ActuSaldo: TButton;
     label30: TLabel;
    label31: TLabel;
    LasDeudas: TStringGrid;
    DataSource13: TDataSource;
    Label32: TLabel;
    Edit3: TEdit;
    cambiadom: TJvBitBtn;
    PERIODO: TComboBox;
    Label33: TLabel;
    Edit2: TEdit;
    CambiaObs: TJvBitBtn;
    StringGridUP: TStringGrid;
    DataSource14: TDataSource;
    GroupBox3: TGroupBox;
    JvDBGrid2: TJvDBGrid;
    TabSheet12: TTabSheet;
    GroupBox9: TGroupBox;
    DBGrid2: TDBGrid;
    DataSource15: TDataSource;
    RvNov: TRvSystem;
    T8: TClientDataSet;
    JvBitBtn1: TJvBitBtn;
    Edit4: TEdit;
    Label34: TLabel;
    Label35: TLabel;
    Edit5: TEdit;
    Button1: TButton;
    StringAgrupP: TStringGrid;
    StringAgrupD: TStringGrid;
    GRILLADETSERV: TStringGrid;
    PopupMenu1: TPopupMenu;
    VerDeudaHastaFinAo1: TMenuItem;
    JvBitBtn2: TJvBitBtn;
    RvS: TRvSystem;
    TP: TClientDataSet;
    RvEC: TRvSystem;
    Edit66: TEdit;
    Panel2: TPanel;
    Edit7: TEdit;
    BitBtn1: TBitBtn;
    Label36: TLabel;
    Edit8: TEdit;
    Label37: TLabel;
    Label38: TLabel;
    GroupBox10: TGroupBox;
    Label39: TLabel;
    Button3: TButton;
    GroupBox11: TGroupBox;
    numcaja: TEdit;
    Label40: TLabel;
    JvBitBtn3: TJvBitBtn;
    JvBitBtn4: TJvBitBtn;
    JvBitBtn5: TJvBitBtn;
    gerimp: TRvSystem;
    GroupBox12: TGroupBox;
    textBody: TMemo;
    gnovedad: TButton;
    ElSector: TComboBox;
    Edit6: TComboBox;
    RvS1: TRvSystem;
    Label41: TLabel;
    Label29: TLabel;
    Timer1: TTimer;
    GroupBox14: TGroupBox;
    Shape1: TShape;
    Label42: TLabel;
    GroupBox13: TGroupBox;
    Shape3: TShape;
    Shape2: TShape;
    Label43: TLabel;
    Label47: TLabel;
    rnovedad: TButton;
    impnovedad: TButton;
    laprioridad: TComboBox;
    Label44: TLabel;
    Label45: TLabel;
    PopupMenu2: TPopupMenu;
    ActualizarTelefonos1: TMenuItem;
    GrupoTelf: TGroupBox;
    Label46: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    ORIGEN: TComboBox;
    JvBitBtn6: TJvBitBtn;
    CARAC: TEdit;
    TELF: TEdit;
    Agrega2: TJvBitBtn;
    Quita2: TJvBitBtn;
    Borra2: TJvBitBtn;
    Modifica2: TJvBitBtn;
    grilla2: TJvStringGrid;
    GroupBox15: TGroupBox;
    DBGrid3: TDBGrid;
    DataSource16: TDataSource;
    OBS: TGroupBox;
    Shape4: TShape;
    Label50: TLabel;
    GroupBox17: TGroupBox;
    Shape5: TShape;
    Label51: TLabel;
    Edit9: TEdit;
    FECSERVICIO: TEdit;
    NIVEL: TEdit;
    TIPOSERVICIO: TEdit;
    TOTAL: TEdit;
    VALORCUOTA: TEdit;
    OBJETO: TEdit;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    datoabogado: TGroupBox;
    Label59: TLabel;
    GroupBox16: TGroupBox;
    Label60: TLabel;
    Label61: TLabel;
    Shape6: TShape;
    Label62: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure RB2Click(Sender: TObject);
    procedure RB1Click(Sender: TObject);
    procedure ImpPDFClick(Sender: TObject);
    procedure RvPrint(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BuscaClick(Sender: TObject);
    procedure ExportaClick(Sender: TObject);
    procedure ImprimeClick(Sender: TObject);
    procedure ONOMBKeyPress(Sender: TObject; var Key: Char);
    procedure ODNIKeyPress(Sender: TObject; var Key: Char);
    procedure PC1Change(Sender: TObject);
    procedure JvDBGrid4CellClick(Column: TColumn);
    procedure JvDBGrid6CellClick(Column: TColumn);
    procedure JvDBGrid2CellClick(Column: TColumn);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActuSaldoClick(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure cambiadomClick(Sender: TObject);
    procedure PERIODOKeyPress(Sender: TObject; var Key: Char);
    procedure PERIODOExit(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure CambiaObsClick(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure gnovedadClick(Sender: TObject);
    procedure rnovedadClick(Sender: TObject);
    procedure impnovedadClick(Sender: TObject);
    procedure RvNovPrint(Sender: TObject);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure JvDBGrid8CellClick(Column: TColumn);
    procedure Button1Click(Sender: TObject);
    procedure StringAgrupDClick(Sender: TObject);
    procedure Sumadeuda(nro:byte);
    procedure JvBitBtn2Click(Sender: TObject);
    procedure RvECPrint(Sender: TObject);
    procedure Edit66KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit7Exit(Sender: TObject);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure RvECAfterPrint(Sender: TObject);
    procedure Edit8KeyPress(Sender: TObject; var Key: Char);
    procedure Edit8Exit(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure JvBitBtn3Click(Sender: TObject);
    procedure JvBitBtn4Click(Sender: TObject);
    procedure JvBitBtn5Click(Sender: TObject);
    procedure saleClick(Sender: TObject);
    procedure textBodyKeyPress(Sender: TObject; var Key: Char);
    procedure gerimpPrint(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ElSectorExit(Sender: TObject);
    procedure ElSectorKeyPress(Sender: TObject; var Key: Char);
    procedure Edit6Exit(Sender: TObject);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure RvS1Print(Sender: TObject);
    procedure nameKeyPress(Sender: TObject; var Key: Char);
    procedure nameChange(Sender: TObject);
    procedure Limpiar();
    procedure Timer1Timer(Sender: TObject);
    procedure Label29Click(Sender: TObject);
    procedure JvDBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure laprioridadExit(Sender: TObject);
    procedure laprioridadKeyPress(Sender: TObject; var Key: Char);
    procedure ActualizarTelefonos1Click(Sender: TObject);
    procedure CARACExit(Sender: TObject);
    procedure CARACKeyPress(Sender: TObject; var Key: Char);
    procedure TELFKeyPress(Sender: TObject; var Key: Char);
    procedure ORIGENExit(Sender: TObject);
    procedure ORIGENKeyPress(Sender: TObject; var Key: Char);
    procedure grilla2Click(Sender: TObject);
    procedure Agrega2Click(Sender: TObject);
    procedure Modifica2Click(Sender: TObject);
    procedure Quita2Click(Sender: TObject);
    procedure Borra2Click(Sender: TObject);
    procedure VerDeudaHastaFinAo1Click(Sender: TObject);
    procedure ODNIChange(Sender: TObject);
    procedure JvDBGrid6DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure JvDBGrid5DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure StringAgrupPDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure StringAgrupDDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
  private
    control,gh:boolean;{Controla que no hubiere errores en la carga de datos}
    Funciones:TFuncionesVarias;
    Parcelas:TParcelas;
    cantidinhu,ger,nronov,conctacte:integer;
    ultimogestorpago,cuiftelef:string;
    Sistemas:TSistemas;
    sumdeuda,lafila:double;
    //CuifTelef:Variant;
    CUOTAS,ULTIMOP,MANTEPAGOS,LASPARCELAS: TADODataSet;
    DataSet,DataSet0,DataSet1,DataSet2,DataSet3,DataSet4,DataSet5,DataSet6,DataSet7,
    DataSet8,DataSet9,DataClie,Datos,DataSet11,DataSet12,DataMante,DtCombo,DtComboPre,
    DataSet13,DataSet14,DataSetCuotasVta,DataSetCuotasServ,DataSetConso,DataCtaCte,DtComboNovedad,
    DataSetMantePagos,DataSetUltCobrador,DaraSetAbogado:TClientDataSet; //declaro los DataSet
    IdCombos:array of array of string; // para los combobox
    ///// para la impresion de datos segun parametros
    PosH1:Array [0..9] of Double;//Posiciones
    Camp1:Array [0..9] of Integer;//Campos a Tomar en cuenta
    TxtCamp1:Array [0..9] of String;//Textos de los Campos a Tomar en cuenta

    FechaActual,valormante,elmes,elanio,txtfecha,mes,anio,elperiodo,DatoFiltro,lanovalta:string;

    PosH:Array [0..1] of Double;//Posiciones
    Camp:Array [0..1] of Integer;//Campos a Tomar en cuenta
    TxtCamp:Array [0..1] of String;//Textos de los Campos a Tomar en cuenta

    PosH2:Array [0..10] of Double;//Posiciones
    Camp2:Array [0..10] of Integer;//Campos a Tomar en cuenta
    TxtCamp2:Array [0..10] of String;//Textos de los Campos a Tomar en cuenta
    { Private declarations }
  public
    Resultado: string;
    nroac,larazonsocial,elsec,laparce,nrocaja,lafeccesion,elbar,eldomi,eldni,eltele:STRING;
    ParcelasNovedades:TParcelasNovedades;
    ClientesTelefonos:TClientesTelefonos;
    //IdCombo:array of array of string;
  end;

var
  Con_Gral: TCon_Gral;

implementation

uses Unidad, Modulo,Busqueda,AM_VenGenerica, ClaseParcelasVentas,CalculoSaldosAutom,ClaseTiposTelefonos;

{$R *.dfm}

procedure TCon_Gral.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TCon_Gral.FormActivate(Sender: TObject);
begin
if not(gh) then begin
  gh:=true;
  setlength(IdCombos,1);
  Label28.Caption:='...';
  imprime.Enabled:=false;
  JvBitBtn2.Enabled:=false;
  button2.Visible:=false;
  edit1.Visible:=false;
  name.Visible:=false;
  label24.Visible:=false;
  label25.Visible:=false;
  rnovedad.Enabled:=false;
  impnovedad.Enabled:=false;
  groupbox15.Visible := false;
  label29.Visible:=false;
  LASPARCELAS:=TADODataSet.Create(nil);
  LASPARCELAS.ConnectionString:=modulo2.Conexion;
  CUOTAS:=TADODataSet.Create(nil);
  CUOTAS.ConnectionString:=modulo2.Conexion;
  Datasource13.DataSet:=cuotas;
  ULTIMOP:=TADODataSet.Create(nil);
  ULTIMOP.ConnectionString:=modulo2.Conexion;
  Datasource14.DataSet:=ULTIMOP;
  FechaActual:=LeftStr(Fec_System(),10);
  Elanio:=strcut_midle(FechaActual,7,10);
  elperiodo:=inttostr(strtoint(Elanio) - 5);
  edit7.Text:=elperiodo;
  edit8.Text:=Elanio;
  edit4.Text:='00.00';
  edit5.Text:='0';
  PC1.ActivePage:=PC1.Pages[0];
  PC2.ActivePage:=PC2.Pages[0];
  PageControl1.ActivePage:=PageControl1.Pages[0];
  PC1.Images:=modulo2.ImageList1;
  control:=false;
  coloca1(16);
  coloca1(22);
  coloca1(26);
  ODNI.SetFocus;
  datoabogado.Visible :=false;
  StringAgrupD.Cells[0,0]:='Periodo';                  StringAgrupD.Cells[1,0]:='Imp.Cuota';
  StringAgrupD.Cells[2,0]:='Interes';                  StringAgrupD.Cells[3,0]:='TotalCuota';
  StringAgrupD.Cells[4,0]:='EstadoVto';                StringAgrupD.Cells[5,0]:='EstadoPago';
  StringAgrupD.Cells[6,0]:='Estado';                   StringAgrupD.Cells[7,0]:='TipoPago';
  StringAgrupD.Cells[8,0]:='Selec';

  StringAgrupP.Cells[0,0]:='Periodo';                  StringAgrupP.Cells[1,0]:='Imp.Cuota';
  StringAgrupP.Cells[2,0]:='EstadoPago';               StringAgrupP.Cells[3,0]:='FechaCobro';
  StringAgrupP.Cells[4,0]:='NroComprob.';              StringAgrupP.Cells[5,0]:='ImpoCobrado';
  StringAgrupP.Cells[6,0]:='OtroComprob';              StringAgrupP.Cells[7,0]:='Origen';
  StringAgrupP.Cells[8,0]:='CobradoPor';               StringAgrupP.Cells[9,0]:='FormaPago';
  StringAgrupP.Cells[10,0]:='DetTarjeta';              StringAgrupP.Cells[11,0]:='PosnetTerminal';
  StringAgrupP.Cells[12,0]:='PosnetCobrador';

  StringAgrupP.ColWidths[2]:=120;
  StringAgrupP.ColWidths[7]:=90;
  StringAgrupP.ColWidths[9]:=5;

  grilla2.Cells[0,0]:='Orden';                       grilla2.Cells[1,0]:='Id.';
  grilla2.Cells[2,0]:='Caract.';                     grilla2.Cells[3,0]:='N° Teléfono';
  grilla2.Cells[4,0]:='Origen';                      grilla2.Cells[5,0]:='N° Origen';
  grilla2.Cells[6,0]:='MDF';

  MANTEPAGOS:=TADODataSet.Create(nil);
  MANTEPAGOS.ConnectionString:=modulo2.Conexion;
end;
end;

procedure TCon_Gral.Limpiar();
begin
numcaja.Clear;
edit2.Clear;
edit3.Clear;
label28.Caption:='...';
label39.Caption:='...';
dventa.Text:='00.00';
dservicio.Text:='00.00';
dmante.Text:='00.00';
dconsoli.Text:='00.00';
PC1.ActivePage:=PC1.Pages[0];
end;

procedure TCon_Gral.Coloca1(nro:byte);
var t,y,p,u:integer;
    txt,sex,Sector,Dato,sec,desdeanio,DatoFiltro:string;
    txtw:widestring;
    NroDni,NroCuif,ValNull,NroAcc,NroPar,NroActa:variant;
    ParacVentas:TParcelasVentas;
    Param:TWideStrings;
    TiposSectores:TTiposSectores;
    TipoTelefonos:TTiposTelefonos;
begin
ValNull:=null;
conctacte:=0;
if nro=0 then begin
  DataSet0.Free;
  DataSet0:=TClientdataSet.Create(nil);
  DataSource0.DataSet:=DataSet0;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if RB3.Checked then begin
   NroAcc:=trim(ODNI.Text);Sector:='';NroPar:=null;NroActa:=null;
   txtw:='select * from Fn_VistaParcelas (' + NroAcc+' ,null,null,null,0)';
  end;
  if RB4.Checked then begin
   NroAcc:=null;Sector:=trim(ONOMB.Text);NroPar:=null;NroActa:=null;
   txtw:='select * from Fn_VistaParcelas (null ,' + chr(39) + Sector + chr(39) +' ,null,null,' +  '0)';
  end;
  if RB7.Checked then begin
   NroAcc:=null;Sector:=trim(elsector.Text);NroPar:=trim(edit6.Text);NroActa:=null;
   txtw:='select * from Fn_VistaParcelas (null ,' + chr(39) + Sector + chr(39) + ','  + NroPar  + ',null,' +  '0)';
  end;
  if RB5.Checked then begin
   NroAcc:=null;Sector:='';NroPar:=null;NroActa:=trim(ODNI.Text);
   txtw:='select * from Fn_VistaParcelas (null ,null ,null,' + NroActa+ ',0)';
  end;
  if not Funciones.Listar(txtw,DataSet0) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con  Administrador',mtError,[mbok],0);
  Funciones.Free;
  DBGrid1.Columns[4].Width:=110;
end;
if nro=1 then begin
  DataClie.Free;
  DataClie:=TClientdataSet.Create(nil);
  DataSource2.DataSet:=DataClie;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT top 3 nroaccion,cuif,razonsocial,nivel,plaza,sector,parcela,idcliente,telef,dni,fechacesion,gestor,domicilio,esjubilado,nrocaja '
   +' FROM Fn_VistaParcelasTitulares (null, ' + (DataSet0.Fields[1].AsString) +',0) WHERE TipoAccionista=2 order by nivel';
  if not Funciones.Listar(txtw,DataClie) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;

  {DataCtaCte.Free;
  DataCtaCte:=TClientdataSet.Create(nil);
  DataSource16.DataSet:=DataCtaCte;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT objeto FROM AccionesconCtaCte (' + trim(DataSet0.Fields[1].AsString)+') '; // where nroaccion = ' + trim(DataSet0.Fields[1].AsString);
  if not Funciones.Listar(txtw,DataCtaCte) then
   messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  IF DataCtaCte.IsEmpty then groupbox15.Visible := false
   else groupbox15.Visible := true;  }

  DaraSetAbogado.Free;
  DaraSetAbogado:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT detalleinformacion FROM AccionesAbogado where accion = ' + trim(DataSet0.Fields[1].AsString);
  if not Funciones.Listar(txtw,DaraSetAbogado) then
   messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  label59.Caption :=trim(DaraSetAbogado.Fields[0].AsString);
  IF DaraSetAbogado.IsEmpty then datoabogado.Visible := false
   else datoabogado.Visible := true;
end;
if nro=2 then begin  
  DataSet1.Free;
  DataSet1:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=DataSet1;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  NroCuif:=D1.Text;
  if not Funciones.Run_Fn_VistaClientesTelefonos(NroCuif,DataSet1,'',0) then
   messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
end;
if nro=3 then begin
  DataSet2.Free;
  DataSet2:=TClientdataSet.Create(nil);
  DataSource2.DataSet:=DataSet2;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  //  txtw:='SELECT top 3  dbo.ParcelasTitulares.NroAccion,dbo.ParcelasTitulares.Cuif,dbo.Clientes.RazonSocial as Nombre, dbo.Clientes.NroDni,'
  //   + '''Bº '' + dbo.Barrios.DetalleBarrio + ''-'' + dbo.Clientes.Domicilio AS domicilio,dbo.Parcelas.Parcela,dbo.ParcelasVentas.Fecha AS FechaCesion,'
  //   + 'dbo.TiposAccionistas.Detalle,dbo.ParcelasTitulares.Nivel,dbo.TiposPlazas.Detalle AS Plaza, dbo.Parcelas.Sector,'
  //   + 'dbo.Parcelas.CodigoPlaza,  dbo.Parcelas.Nomenclatura,'
  //   + '(SELECT telef FROM dbo.LosTelefonosClientes(dbo.ParcelasTitulares.Cuif) AS LosTelefonosClientes_1) AS telef,'
  //   + 'dbo.VLosCobradores.Nombre as Gestor,dbo.Clientes.esjubilado '
  //   + ' FROM  dbo.ParcelasTitulares INNER JOIN'
  //   + ' dbo.TiposAccionistas ON dbo.ParcelasTitulares.NroTipoAcc = dbo.TiposAccionistas.NroTipoAcc INNER JOIN '
  //   + ' dbo.Parcelas ON dbo.ParcelasTitulares.NroAccion = dbo.Parcelas.NroAccion INNER JOIN '
  //   + ' dbo.TiposPlazas ON dbo.Parcelas.IdPlaza = dbo.TiposPlazas.IdPlaza INNER JOIN '
  //   + ' dbo.Clientes ON dbo.ParcelasTitulares.Cuif = dbo.Clientes.Cuif INNER JOIN '
  //   + ' dbo.Barrios ON dbo.Clientes.IdBarrio = dbo.Barrios.IdBarrio LEFT OUTER JOIN '
  //   + ' dbo.ParcelasVentas ON dbo.Parcelas.NroAccion = dbo.ParcelasVentas.NroAccion LEFT OUTER JOIN '
  //   + ' dbo.VLosCobradores ON dbo.Parcelas.CuifCobrador = dbo.VLosCobradores.Cuif'
  //   + ' where dbo.ParcelasTitulares.NroAccion='+(DataSet0.Fields[1].AsString)+'  order by nivel';
  txtw:='SELECT top 3 nroaccion,Cuif,RazonSocial AS Nombre,Dni,domicilio,Parcela,FechaCesion,'
  +' Detalle,Nivel,Plaza,Sector,CodigoPlaza,Nomenclatura,Telef,Gestor,esjubilado,nrocaja FROM Fn_VistaParcelasTitulares (null, ' + (DataSet0.Fields[1].AsString) +',0) WHERE TipoAccionista=2 order by nivel';
  if not Funciones.Listar(txtw,DataSet2) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if DataSet2.IsEmpty then begin
    messagedlg('ATENCION ACCCION sin Titular Activo...' + chr(13) + 'O Pertenece a un Mayorista', mtError,[mbok],0);
    Coloca1(7);
    Coloca1(14);
    if imprime.Enabled then imprime.Enabled:=false;
  end
  else begin
   for t:=1 to 1 do begin
    Datasource2.DataSet.RecNo:=t;
    nroac:=trim(Datasource2.DataSet.Fields[0].AsString);
    larazonsocial:=trim(Datasource2.DataSet.Fields[2].AsString);
    elsec:=trim(Datasource2.DataSet.Fields[10].AsString);
    laparce:=trim(Datasource2.DataSet.Fields[5].AsString);
    nrocaja:=trim(Datasource2.DataSet.Fields[16].AsString);
    lafeccesion:=trim(Datasource2.DataSet.Fields[6].AsString);
    eldomi:=trim(Datasource2.DataSet.Fields[4].AsString);
    eldni:=trim(Datasource2.DataSet.Fields[3].AsString);
    eltele:=trim(Datasource2.DataSet.Fields[13].AsString);
   end;
   Panel1.Enabled:=true;
   ////imprime.Enabled:=true;
   JvDBGrid2.Columns[0].Width:=50;
   JvDBGrid2.Columns[1].Width:=100;
   JvDBGrid2.Columns[2].Width:=300;
   JvDBGrid2.Columns[3].Width:=75;
   JvDBGrid2.Columns[4].Width:=200;
   JvDBGrid2.Columns[5].Width:=55;
   JvDBGrid2.Columns[6].Width:=75;
   JvDBGrid2.Columns[7].Width:=55;
   JvDBGrid2.Columns[8].Width:=150;
   JvDBGrid2.Columns[9].Width:=200;
   Coloca1(5);    // ventas
   Coloca1(6);    // ETADOCUENTA VENTAS
   Coloca1(7);    /// Lista de Servicios Existentes
   Coloca1(8);    /// ultimo cobrador que cobro
   Coloca1(9);    /// Estado Cuent Mantenimiento
   Coloca1(11);   // histo de titulares
   Coloca1(12);   // Estado Cuent consolidado
   Coloca1(13);   // precio de mantenimiento
   coloca1(14);   // saldo de mante
   coloca1(15);   // detalle deuda de mante
   coloca1(17);   // ultimos pagos
   coloca1(18);   // las novedades
   coloca1(19);   // los pagos y deudas de la accion
   coloca1(20);   //Traemos las cuotas e importes de las ventas
   if modulo2.nro_usu = 1 then begin
    imprime.Enabled:=true;
    JvBitBtn2.Enabled:=true;
   end
   else begin
    imprime.Enabled:=false;
    JvBitBtn2.Enabled:=false;
   end;
  end;
end;
if nro=4 then begin   /// Inhumados
  DataSet3.Free;
  DataSet3:=TClientdataSet.Create(nil);
  DataSource3.DataSet:=DataSet3;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if not Funciones.Run_Fn_VistaParcelasInhumados(ValNull,strtoint(DataSet0.Fields[1].AsString),ValNull,'',ValNull,'','',DataSet3,'',0) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if not DataSet3.IsEmpty then begin
   JvDBGrid3.Columns[1].Width:=55;
   JvDBGrid3.Columns[2].Width:=45;
   JvDBGrid3.Columns[3].Width:=45;
   JvDBGrid3.Columns[4].Width:=45;
   JvDBGrid3.Columns[5].Width:=70;
   JvDBGrid3.Columns[6].Width:=150;
   JvDBGrid3.Columns[7].Width:=70;
   JvDBGrid3.Columns[8].Width:=150;
   cantidinhu:=DataSource3.DataSet.RecordCount;
   Label39.Caption:=inttostr(DataSource3.DataSet.RecordCount);
  end
  else begin
    cantidinhu:=0;
  end;
end;
if nro=5 then begin   /// Lista de Ventas Existentes
  DataSet4.Free;
  DataSet4:=TClientdataSet.Create(nil);
  DataSource4.DataSet:=DataSet4;
  ParacVentas:=TParcelasVentas.Create(nil);
  ParacVentas.ConnectionString:=modulo2.Conexion;
  Param:=TWideStrings.Create;
  Param.Add('');
  Param.Add(DataSet0.Fields[1].AsString);
  Param.Add('');
  Param.Add('');
  Param.Add('');
  Param.Add('');
  if not ParacVentas.ListarSP(Param,DataSet4,0) then
   messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Param.Free;
  if not DataSet4.IsEmpty  then begin
   NroDni:=DataSet4.Fields[1].AsString;
  end
  else begin
   Barra1.Panels[1].Text:='No Existe esta Venta ' ;
  end;
  ParacVentas.Free;
end;
if nro=6 then begin   /// Estado Cuent Venta Seleccionada
  DataSet5.Free;
  DataSet5:=TClientdataSet.Create(nil);
  DataSource5.DataSet:=DataSet5;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT Nrocuota,Vencimiento,ImporteCuota,InteresAcumulado,PorcentajeAplicado,TotalCuota, '
  + 'EstadoVto,EstadoPago,OrigenPago,FechaCobro,NroComprobante,ImporteCobrado FROM EstadoCuentaventas'
  + ' ( ' + DataSet0.Fields[1].AsString + ',' + chr(39)+  txtfecha +chr(39) +',0) order by 1 desc';
  if not Funciones.Listar(txtw,DataSet5) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if not DataSet5.IsEmpty then begin
   JvDBGrid5.Columns[0].Width:=45;
   JvDBGrid5.Columns[1].Width:=50;
   JvDBGrid5.Columns[2].Width:=100;
   JvDBGrid5.Columns[3].Width:=85;
   JvDBGrid5.Columns[4].Width:=55;
   JvDBGrid5.Columns[5].Width:=55;
   JvDBGrid5.Columns[6].Width:=55;
   JvDBGrid5.Columns[7].Width:=55;
   JvDBGrid5.Columns[8].Width:=85;
   JvDBGrid5.Columns[9].Width:=65;
   JvDBGrid5.Columns[10].Width:=80;
   JvDBGrid5.Columns[11].Width:=80;
  end
  else begin
    dventa.Text:='00.00';
  end;
end;
if nro=7 then begin   /// Lista de Servicios Existentes
  DataSet6.Free;
  DataSet6:=TClientdataSet.Create(nil);
  DataSource6.DataSet:=DataSet6;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  NroDni:=strtoint(DataSet0.Fields[1].AsString);
  txtw:='SELECT IdServicio,NroAccion,Fecha as fechaservicio, Nivel,TipoServicio,Cocheria,'
  +'Total,CantCuotas,ValorCuota, TipoFormaPago ,objeto,observaciones,Confirmado,PoseeCtaCte '
  +' FROM Fn_VistaParcelasServicios (null,'+ DataSet0.Fields[1].AsString +',0)';
  if not Funciones.Listar(txtw,DataSet6) then
     //if not Funciones.Run_Fn_VistaParcelasServicios(ValNull,NroDni,DataSet6,'',0) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
   if not DataSet6.IsEmpty  then begin
    NroDni:=DataSet6.Fields[1].AsString;
    JvDBGrid6.Columns[0].Width:=50;
    JvDBGrid6.Columns[1].Width:=70;
    JvDBGrid6.Columns[2].Width:=70;
    JvDBGrid6.Columns[3].Width:=40;
    JvDBGrid6.Columns[4].Width:=70;
    JvDBGrid6.Columns[5].Width:=100;
    JvDBGrid6.Columns[6].Width:=50;
    JvDBGrid6.Columns[7].Width:=70;
    JvDBGrid6.Columns[8].Width:=60;
    JvDBGrid6.Columns[9].Width:=80;
    JvDBGrid6.Columns[10].Width:=70;
    JvDBGrid6.Columns[11].Width:=150;
    JvDBGrid6.Columns[12].Width:=60;
    JvDBGrid6.Columns[12].Width:=80;
   end
   else begin
   Barra1.Panels[1].Text:='No Existe esta SErvicio ' ;
   end;
  Funciones.Free;
end;
if nro=8 then begin   /// ultimo cobrador que cobro
  DataSetUltCobrador.Free;
  DataSetUltCobrador:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT nrogestor FROM UltimosPagosxGestor ( ' + DataSet0.Fields[1].AsString + ')';
  if not Funciones.Listar(txtw,DataSetUltCobrador) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador', mtError,[mbok],0);
  Funciones.Free;
  ultimogestorpago:=DataSetUltCobrador.Fields[0].AsString;
end;
if nro=9 then begin   /// Estado Cuent Mantenimiento
  sumdeuda := 0;
  Mes:=RightStr(trim(periodo.Text),2);
  Anio:=LeftStr(trim(periodo.Text),4);
  txtfecha:='01/' + Mes + '/' + Anio;
  DataSet8.Free;
  DataSet8:=TClientdataSet.Create(nil);
  DataSource8.DataSet:=DataSet8;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='select Periodo,importecuota,totalcuota,estadovto,estadopago,origenpago,fechacobro,nrocomprobante,DeudaAcum,'
  +'ImporteCobrado,formapago from EstadoCuentaMantenimientoAcum (' + DataSet0.Fields[1].AsString
  + ',' + chr(39)+  txtfecha +chr(39) +',5,' +trim(edit7.Text) + ','+trim(edit8.Text)+')';
  //+ ' where (year(vencimiento)>=' + trim(edit7.Text) + ') and (year(vencimiento)<=' + trim(edit8.Text) + ')';
  //txtw:='SELECT Periodo,Vencimiento,ImporteCuota,InteresAcumulado,PorcentajeAplicado,TotalCuota, '
  //+ 'EstadoVto,EstadoPago,OrigenPago,FechaCobro,NroComprobante,ImporteCobrado FROM EstadoCuentaMantenimiento'
  //+ ' ( ' + DataSet0.Fields[1].AsString + ',' + chr(39)+  txtfecha +chr(39) +',0) where Periodo <> 999999 and EstadoPago=''DEUDA''';
  if not Funciones.Listar(txtw,DataSet8) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if not DataSet8.IsEmpty then begin
   JvDBGrid8.Columns[0].Width:=65;
   JvDBGrid8.Columns[1].Width:=65;
   JvDBGrid8.Columns[2].Width:=65;
   JvDBGrid8.Columns[3].Width:=65;
   JvDBGrid8.Columns[4].Width:=65;
   JvDBGrid8.Columns[5].Width:=65;
   JvDBGrid8.Columns[6].Width:=65;
   JvDBGrid8.Columns[7].Width:=65;
   JvDBGrid8.Columns[8].Width:=65;
   try
    datasource8.dataset.disablecontrols;
    datasource8.dataset.first;
    while not datasource8.dataset.eof do begin
     sumdeuda := sumdeuda + datasource8.dataset.fieldbyname('totalcuota').asfloat;
     datasource8.dataset.next;
    end;
   finally
    datasource8.dataset.enablecontrols;
   end;
  end
  else begin
    dmante.Text:='00.00';
  end;
end;
if nro=10 then begin
  Datos.Free;
  Datos:=TClientdataSet.Create(nil);
  DataSource9.DataSet:=Datos;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  NroDni:=null;
  NroCuif:=(Dataset2.Fields[3].asinteger);
  txt:='';
  NroAcc:=null;
  NroPar:=null;
  sex:='';
  if not Funciones.Run_Fn_VistaClientes(NroDni,txt,NroCuif,NroAcc,NroPar,sex,Datos,'',0) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
end;
if nro=11 then begin
  DataSet9.Free;
  DataSet9:=TClientdataSet.Create(nil);
  DataSource10.DataSet:=DataSet9;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT ParcelasTitularesHistorico.NroAccion,ParcelasTitularesHistorico.Cuif,Clientes.RazonSocial as NombreTitular,'
  + 'TiposAccionistas.Detalle AS TipoAccionista,ParcelasTitularesHistorico.Fecha,ParcelasTitularesHistorico.Nivel,'
  + 'ParcelasTitularesHistorico.NroActa FROM  ParcelasTitularesHistorico INNER JOIN '
  + 'Clientes ON ParcelasTitularesHistorico.Cuif = Clientes.Cuif LEFT OUTER JOIN  '
  + 'TiposAccionistas ON ParcelasTitularesHistorico.NroTipoAcc = .TiposAccionistas.NroTipoAcc'
  + ' where (ParcelasTitularesHistorico.NroAccion=' + DataSet0.Fields[1].AsString + ');';
  if not Funciones.Listar(txtw,DataSet9) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
end;
if nro=12 then begin    /// estado cuenta consolidados
  DataSetConso.Free;
  DataSetConso:=TClientdataSet.Create(nil);
  DataSource12.DataSet:=DataSetConso;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT * FROM EstadoCuentaConsolidadosdetallado (' + trim(DataSet0.Fields[1].AsString) + ') order by estado';
  if not Funciones.Listar(txtw,DataSetConso) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if not DataSetConso.IsEmpty then begin
   JvDBGrid11.Columns[0].Width:=45;
   JvDBGrid11.Columns[1].Width:=50;
   JvDBGrid11.Columns[2].Width:=80;
   JvDBGrid11.Columns[3].Width:=80;
   JvDBGrid11.Columns[4].Width:=80;
   JvDBGrid11.Columns[5].Width:=80;
   JvDBGrid11.Columns[6].Width:=100;
   JvDBGrid11.Columns[7].Width:=100;
   JvDBGrid11.Columns[8].Width:=80;
   JvDBGrid11.Columns[9].Width:=80;
  end
  else begin
   dconsoli.Text:='00.00';
  end;
end;
if nro=13 then begin
  DtComboPre.Free;
  DtComboPre:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  for t:=1 to 1 do begin
   DataSet2.RecNo:=t;
   if trim(DataSet2.Fields[15].AsString)='False' then txtw:='SELECT ImporteNormal FROM ParcelasMantenimientoPrecios WHERE (FechaFin IS NULL)'
    else txtw:='SELECT Importejubilado FROM ParcelasMantenimientoPrecios WHERE (FechaFin IS NULL)';
  end;
  if not Funciones.Listar(txtw,DtComboPre) then
   messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if not DtComboPre.IsEmpty then begin
    valormante:=DtComboPre.Fields[0].AsString;
  end;
end;
if nro=14 then begin
  DataSet.Free;
  DataSet:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT totalcuota FROM EstadoCuentaMantenimiento ( ' + DataSet0.Fields[0].AsString + ',' + chr(39)+  txtfecha +chr(39) +',0) where Periodo = 999999';
  if not Funciones.Listar(txtw,DataSet) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if not DataSet.IsEmpty then begin
   dmante.Text:=DataSet.Fields[0].AsString;
  end
  else begin
   dmante.Text:='00.00';
  end;
  DataSet.Free;
  DataSet:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT monto FROM SaldosPorAccion ( 1 ,' + DataSet0.Fields[0].AsString +','+ trim(periodo.Text) +',1  ,0) where Detalle=''saldo actual''';
  if not Funciones.Listar(txtw,DataSet) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  dventa.Text:=DataSet.Fields[0].AsString;
  DataSet.Free;
  DataSet:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT monto FROM SaldosPorAccion ( 2 ,' + DataSet0.Fields[0].AsString +','+ trim(periodo.Text) +',1  ,0)';// where Detalle=''saldo actual''';
  if not Funciones.Listar(txtw,DataSet) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  dservicio.Text:=DataSet.Fields[0].AsString;
  DataSet.Free;
  DataSet:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT monto FROM SaldosPorAccion ( 4 ,' + DataSet0.Fields[0].AsString +','+ trim(periodo.Text) +',1  ,0) where Detalle=''saldo final''';
  if not Funciones.Listar(txtw,DataSet) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  dconsoli.Text:=DataSet.Fields[0].AsString;
end;
if nro = 15 then begin
  Mes:=RightStr(trim(periodo.Text),2);
  Anio:=LeftStr(trim(periodo.Text),4);
  txtfecha:='05/' + Mes + '/' + Anio;
  DataSet12.Free;
  DataSet12:=TClientdataSet.Create(nil);
  DataSource11.DataSet:=DataSet12;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT left(periodo,4) as anio,COUNT(*) as Cantcuotas FROM EstadoCuentaMantenimiento ( ' + DataSet0.Fields[1].AsString +',' + chr(39)+  txtfecha +chr(39) +',0) '
  + 'where Periodo <> 999999 and Estadopago =''deuda'' and EstadoVto <> ''sin vencer'' group by left(periodo,4)';
  if not Funciones.Listar(txtw,DataSet12) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  CUOTAS.Close;
  CUOTAS.CommandText:=' exec EstadoCuentaMantenimientoMin ' + DataSet0.Fields[0].AsString + ',' + chr(39) + txtfecha + chr(39) ;
  CUOTAS.Open;
  for t:=0 to lasdeudas.ColCount-1 do
  for y:=1 to lasdeudas.RowCount-1 do lasdeudas.Cells[t,y]:='';
   for t:=1 to Datasource13.DataSet.RecordCount do begin
    Datasource13.DataSet.RecNo:=t;
    lasdeudas.RowCount:=t+1;
    lasdeudas.Cells[0,t]:=trim(Datasource13.DataSet.Fields[0].AsString);
    lasdeudas.Cells[1,t]:=trim(Datasource13.DataSet.Fields[1].AsString);
    lasdeudas.Cells[2,t]:=trim(Datasource13.DataSet.Fields[2].AsString);
    lasdeudas.Cells[3,t]:=trim(Datasource13.DataSet.Fields[3].AsString);
    lasdeudas.Cells[4,t]:=trim(Datasource13.DataSet.Fields[4].AsString);
    lasdeudas.Cells[5,t]:=trim(Datasource13.DataSet.Fields[5].AsString);
    lasdeudas.Cells[6,t]:=trim(Datasource13.DataSet.Fields[6].AsString);
    lasdeudas.Cells[7,t]:=trim(Datasource13.DataSet.Fields[7].AsString);
    lasdeudas.Cells[8,t]:=trim(Datasource13.DataSet.Fields[8].AsString);
    lasdeudas.Cells[9,t]:=trim(Datasource13.DataSet.Fields[9].AsString);
    lasdeudas.Cells[10,t]:=trim(Datasource13.DataSet.Fields[10].AsString);
    lasdeudas.Cells[11,t]:=trim(Datasource13.DataSet.Fields[11].AsString);
    lasdeudas.Cells[12,t]:=trim(Datasource13.DataSet.Fields[12].AsString);
   end;
end;
if nro=16 then begin
  PERIODO.Clear;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  //if not Funciones.Listar('SELECT * FROM PeriodoImpresion (''30/11/2017'')',DtCombo) then
  if not Funciones.Listar('SELECT * FROM PeriodoImpresion ( '+ chr(39) + FechaActual+ chr(39) + ')',DtCombo) then
  else begin
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    PERIODO.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
   end;
  end;
  Funciones.Free;
  PERIODO.ItemIndex:=0;
  LABEL41.Caption :=TRIM(PERIODO.Text);
end;
if nro=17 then begin
  ULTIMOP.Close;
  ULTIMOP.CommandText:='SELECT * FROM UltimosPagosxAccion (' + DataSet0.Fields[1].AsString +')';
  ULTIMOP.Open;
  for t:=0 to StringGridUP.ColCount-1 do
  for y:=1 to StringGridUP.RowCount-1 do StringGridUP.Cells[t,y]:='';
   for t:=1 to Datasource14.DataSet.RecordCount do begin
    Datasource14.DataSet.RecNo:=t;
    StringGridUP.RowCount:=t+1;
    StringGridUP.Cells[0,t]:=trim(Datasource14.DataSet.Fields[0].AsString);
    StringGridUP.Cells[1,t]:=trim(Datasource14.DataSet.Fields[1].AsString);
    StringGridUP.Cells[2,t]:=trim(Datasource14.DataSet.Fields[2].AsString);
    StringGridUP.Cells[3,t]:=trim(Datasource14.DataSet.Fields[3].AsString);
    StringGridUP.Cells[4,t]:=trim(Datasource14.DataSet.Fields[4].AsString);
    StringGridUP.Cells[5,t]:=trim(Datasource14.DataSet.Fields[5].AsString);
   end;
end;
if nro = 18 then begin
  DataSet13.Free;
  DataSet13:=TClientdataSet.Create(nil);
  DataSource15.DataSet:=DataSet13;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT id,case when prioridad = 0  then ''BAJA'' else ''ALTA'' end as Prioridad ,Novedad,'
  +'case when Resuelto = 0 then ''NO'' else ''SI'' end as Resuelto'
  +' FROM  ParcelasNovedades where (nroaccion=' + (DataSet0.Fields[1].AsString) +') order by 1';
  if not Funciones.Listar(txtw,DataSet13) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if not DataSet13.IsEmpty then begin
   impnovedad.Enabled:=true;
   DtCombo.Free;
   DtCombo:=TClientdataSet.Create(nil);
   Funciones:=TFuncionesVarias.Create(nil);
   Funciones.ConnectionString:=modulo2.Conexion;
   if not Funciones.Listar('SELECT id,Novedad FROM  ParcelasNovedades  where (nroaccion='
   + (DataSet0.Fields[1].AsString) +')  AND Prioridad = 1 and Resuelto = 0 order by 1',DtCombo) then
   else begin
    lanovalta:=inttostr(DtCombo.RecordCount);
    Timer1.Enabled:=true;
   end;
   Funciones.Free;
   //DtComboNovedad.Close;
   DtComboNovedad.Free;
   DtComboNovedad:=TClientdataSet.Create(nil);
   Funciones:=TFuncionesVarias.Create(nil);
   Funciones.ConnectionString:=modulo2.Conexion;
   if not Funciones.Listar('SELECT Novedad, convert(char(10),fechaalta,103) as fechaalta FROM  ParcelasNovedades  where (nroaccion='
   + (DataSet0.Fields[1].AsString) +')  AND Prioridad = 1 and Resuelto = 0 order by id desc',DtComboNovedad) then
   else begin
    // DtComboNovedad.Close;
   end;
   Funciones.Free;
  end;
end;
if nro=19 then begin
  for p:=0 to StringAgrupP.ColCount-1 do
   for u:=1 to StringAgrupP.RowCount-1 do StringAgrupP.Cells[p,u]:='';
  StringAgrupP.RowCount:=2;

  for p:=0 to StringAgrupD.ColCount-1 do
   for u:=1 to StringAgrupD.RowCount-1 do StringAgrupD.Cells[p,u]:='';
  StringAgrupD.RowCount:=2;

  Mes:=RightStr(trim(periodo.Text),2);
  Anio:=LeftStr(trim(periodo.Text),4);
  txtfecha:='01/' + Mes + '/' + Anio;
  DataSet11.Free;
  DataSet11:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT Periodo,ImporteCuota,InteresAcumulado as Interes,TotalCuota, '
  + 'EstadoVto,EstadoPago,FechaCobro,NroComprobante,ImporteCobrado as ImpCobrado,OrigenPago,formapago FROM EstadoCuentaMantenimiento'
  + ' ( ' + DataSet0.Fields[1].AsString + ',' + chr(39)+  txtfecha +chr(39) +',0) where Periodo <> 999999 order by 1';
  if not Funciones.Listar(txtw,DataSet11) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if not DataSet11.IsEmpty then begin
   MANTEPAGOS.Close;
   MANTEPAGOS.CommandText:='SELECT Periodo,ImporteCuota,InteresAcumulado as Interes,TotalCuota, '
   + 'EstadoVto,EstadoPago,FechaCobro,NroComprobante,ImporteCobrado as ImpCobrado,otrocomprobante,'
   + 'OrigenPago,CobradoPor,formapago,detalletarjeta,posnetterminal,posnetcobrador FROM EstadoCuentaMantenimiento'
   + ' (' + DataSet0.Fields[1].AsString + ',' + chr(39)+  txtfecha +chr(39) +',0) where Periodo <> 999999 and EstadoPago=''PAGADO'' order by 1 desc';
   MANTEPAGOS.Open;
   for t:=1 to MANTEPAGOS.RecordCount do begin
    MANTEPAGOS.RecNo:=t;
    StringAgrupP.RowCount:=t+1;
    StringAgrupP.Cells[0,t]:=trim(MANTEPAGOS.Fields[0].AsString);
    StringAgrupP.Cells[1,t]:=trim(MANTEPAGOS.Fields[1].AsString);
    StringAgrupP.Cells[2,t]:=trim(MANTEPAGOS.Fields[5].AsString) + '/' + trim(MANTEPAGOS.Fields[12].AsString);;
    StringAgrupP.Cells[3,t]:=trim(MANTEPAGOS.Fields[6].AsString);
    StringAgrupP.Cells[4,t]:=trim(MANTEPAGOS.Fields[7].AsString);
    StringAgrupP.Cells[5,t]:='$ '+ trim(MANTEPAGOS.Fields[8].AsString);
    StringAgrupP.Cells[6,t]:=trim(MANTEPAGOS.Fields[9].AsString);
    StringAgrupP.Cells[7,t]:=trim(MANTEPAGOS.Fields[10].AsString);
    StringAgrupP.Cells[8,t]:=trim(MANTEPAGOS.Fields[11].AsString);
    StringAgrupP.Cells[9,t]:=trim(MANTEPAGOS.Fields[12].AsString);
    StringAgrupP.Cells[10,t]:=trim(MANTEPAGOS.Fields[13].AsString);
    StringAgrupP.Cells[11,t]:=trim(MANTEPAGOS.Fields[14].AsString);
    StringAgrupP.Cells[12,t]:=trim(MANTEPAGOS.Fields[15].AsString);
   end;

   DataSet11.Filtered:=false;
   DataSet11.FilterOptions:=[foCaseInsensitive, foNoPartialCompare];
   Dato:='EstadoPago=''DEUDA'' and estadovto <> ''SIN VENCER''';
   DataSet11.Filter:=Dato;
   DataSet11.Filtered:=true;
   for t:=1 to Dataset11.RecordCount do begin
    Dataset11.RecNo:=t;
    StringAgrupD.RowCount:=t+1;
    StringAgrupD.Cells[0,t]:=trim(Dataset11.Fields[0].AsString);
    StringAgrupD.Cells[1,t]:=trim(Dataset11.Fields[1].AsString);
    StringAgrupD.Cells[2,t]:=trim(Dataset11.Fields[2].AsString);
    StringAgrupD.Cells[3,t]:=trim(Dataset11.Fields[3].AsString);
    StringAgrupD.Cells[4,t]:=trim(Dataset11.Fields[4].AsString);
    StringAgrupD.Cells[5,t]:=trim(Dataset11.Fields[5].AsString);
    StringAgrupD.Cells[6,t]:=trim(Dataset11.Fields[9].AsString);
    StringAgrupD.Cells[7,t]:=trim(Dataset11.Fields[10].AsString);;
   end;
  end;
end;
if nro=20 then  begin //Traemos las cuotas e importes de las ventas
  DataSetCuotasVta.Free;
  DataSetCuotasVta:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='select convert(nvarchar(5),(count(id))) + ''/''+ convert(nvarchar(5),(max(nrocuota))),importecuota'
  + ' from EstadoCuentaVentas( ' + trim(DataSet0.Fields[1].AsString)  + ',' + chr(39)+  txtfecha + chr(39) +',0) where estadopago=''deuda'' group by NroAccion,importecuota';
  if not Funciones.Listar(txtw,DataSetCuotasVta) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;

  //Traemos las cuotas e importes de los servicios
  DataSetCuotasServ.Free;
  DataSetCuotasServ:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT idservicio,count(NroCuota) as CantcuotasDeuda,Importe as ImpCuota,Punitorio '
  + ' FROM Fn_PeriodosDeudaServ (' + trim(DataSet0.Fields[1].AsString)  + ') group by idservicio,Importe,Punitorio  order by 1,2';
  if not Funciones.Listar(txtw,DataSetCuotasServ) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  for t:=0 to GRILLADETSERV.ColCount-1 do
  for y:=1 to GRILLADETSERV.RowCount-1 do GRILLADETSERV.Cells[t,y]:='';
   for t:=1 to DataSetCuotasServ.RecordCount do begin
    DataSetCuotasServ.RecNo:=t;
    GRILLADETSERV.RowCount:=t+1;
    GRILLADETSERV.Cells[0,t]:=trim(DataSetCuotasServ.Fields[0].AsString);
    GRILLADETSERV.Cells[1,t]:=trim(DataSetCuotasServ.Fields[1].AsString);
    GRILLADETSERV.Cells[2,t]:=trim(DataSetCuotasServ.Fields[2].AsString);
   end;
end;
if nro = 21 then  begin
  LASPARCELAS.Close;
  LASPARCELAS.CommandText:='SELECT top 240 convert(char(10),fecha,103) as Cesion, right(''000000'' + convert(nvarchar(6),nrotitulo) ,6) as nrotitulo,'
  + 'Sector,right(''0000'' + convert(nvarchar(4),parcela) ,4) as parcela, '
  + 'right(''00000'' + convert(nvarchar(5),NroAccion) ,5) as NroAccion,LEFT(sectorcolor,1) as Cat FROM vistaParcelasLibresxSector '
  + '  where Sector = ''q'' and RazonSocial = ''COSENZA HORACIO JAVIER'' and SectorColor = ''BLANCO'' ';
  LASPARCELAS.Open;
  lafila:=LASPARCELAS.RecordCount /4;
end;
if nro=22 then begin   //tipos sectores
  ELSECTOR.Clear;
  DtCombo.Free;
  Dtcombo:=TClientDataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if not Funciones.Listar('SELECT Sector FROM TiposSectores',DtCombo) then
  else begin
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    ELSECTOR.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
   end;
  end;
  Funciones.Free;
  ELSECTOR.ItemIndex:=0;
end;
if nro=23 then begin   /// carga de las acciones
  Edit6.Clear;
  DtCombo.Free;
  Dtcombo:=TClientDataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT dbo.Parcelas.Parcela FROM dbo.Parcelas INNER JOIN '
  + ' dbo.TiposPlazas ON dbo.Parcelas.IdPlaza = dbo.TiposPlazas.IdPlaza '
  + ' WHERE (dbo.Parcelas.Sector = ' + chr(39) + trim(elsector.Text) + chr(39) + ') ORDER BY dbo.Parcelas.Parcela ';
  if Funciones.Listar(txtw,Dtcombo) then begin
   for t:=1 to Dtcombo.RecordCount  do begin
    Dtcombo.RecNo:=t;
    Edit6.Items.Insert(t-1,trim(Dtcombo.Fields[0].AsString));
   end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  funciones.Free;
  Edit6.ItemIndex:=0;
end;
if nro=24 then begin
  DataSet0.Free;
  DataSet0:=TClientdataSet.Create(nil);
  DataSource0.DataSet:=DataSet0;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if RB1.Checked then begin
   //txtw:='select top 100 * from Fn_VistaParcelas (null ,null,null,null,0) where cobrador is not null';
   txtw:='SELECT top 100 dbo.Parcelas.NroAccion, dbo.Parcelas.NroTitulo, dbo.Parcelas.Sector, dbo.Parcelas.CodigoPlaza, '
   +'dbo.TiposPlazas.Detalle, dbo.Parcelas.Parcela, dbo.Parcelas.NroActa, dbo.Parcelas.Nomenclatura,'
   +'dbo.Parcelas.EspacioVerde, dbo.Clientes.RazonSocial AS Cobrador, dbo.Parcelas.DomicilioCobro, dbo.Parcelas.Observacion,'
   +'dbo.Parcelas.NroCaja, dbo.ParcelasTitulares.NroTipoAcc,dbo.ParcelasTitulares.Activo, Clientes_1.RazonSocial AS Titular'
   +' FROM dbo.Parcelas '
   +' INNER JOIN dbo.TiposPlazas ON dbo.Parcelas.IdPlaza = dbo.TiposPlazas.IdPlaza '
   +' INNER JOIN dbo.Clientes ON dbo.Parcelas.CuifCobrador = dbo.Clientes.Cuif '
   +' INNER JOIN dbo.ParcelasTitulares ON dbo.Parcelas.NroAccion = dbo.ParcelasTitulares.NroAccion '
   +' INNER JOIN dbo.Clientes AS Clientes_1 ON dbo.ParcelasTitulares.Cuif = Clientes_1.Cuif '
   +' WHERE (dbo.ParcelasTitulares.NroTipoAcc = 2)';
  end;
  if not Funciones.Listar(txtw,DataSet0) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con  Administrador',mtError,[mbok],0);
  Funciones.Free;
  if not DataSet0.IsEmpty then begin
   DBGrid1.Columns[0].Width:=60;
   DBGrid1.Columns[1].Width:=50;
   DBGrid1.Columns[2].Width:=50;
   DBGrid1.Columns[3].Width:=65;
   DBGrid1.Columns[4].Width:=100;
   DBGrid1.Columns[5].Width:=50;
   DBGrid1.Columns[6].Width:=50;
   DBGrid1.Columns[7].Width:=90;
   DBGrid1.Columns[8].Width:=60;
   DBGrid1.Columns[9].Width:=170;
   DBGrid1.Columns[10].Width:=150;
   DBGrid1.Columns[11].Width:=65;
   DBGrid1.Columns[12].Width:=50;
   DBGrid1.Columns[13].Width:=20;
   DBGrid1.Columns[14].Width:=50;
   DBGrid1.Columns[15].Width:=180;
  end;
  DBGrid1.Columns[4].Width:=110;
end;
if nro=25 then begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  NroCuif:=cuiftelef;
  if not Funciones.Run_Fn_VistaClientesTelefonos(NroCuif,DtCombo,'',0) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  for t:=0 to grilla2.ColCount-1 do
    for y:=1 to grilla2.RowCount-1 do grilla2.Cells[t,y]:='';
  for t:=1 to DtCombo.RecordCount  do begin
   DtCombo.RecNo:=t;
   grilla2.RowCount:=t+1;
   grilla2.Cells[0,t]:=completa1(inttostr(t),2,'0');
   grilla2.Cells[1,t]:=trim(DtCombo.Fields[0].AsString);
   grilla2.Cells[2,t]:=trim(DtCombo.Fields[3].AsString);
   grilla2.Cells[3,t]:=trim(DtCombo.Fields[2].AsString);
   grilla2.Cells[4,t]:=trim(DtCombo.Fields[4].AsString);
   grilla2.Cells[5,t]:=trim(DtCombo.Fields[5].AsString);
  end;
end;
if nro=26 then begin //combotipostelefonos
  ORIGEN.Clear;
  DtCombo.Free;
  Dtcombo:=TClientDataSet.Create(nil);
  TipoTelefonos:=TTiposTelefonos.Create(nil);
  TipoTelefonos.ConnectionString:=modulo2.Conexion;
  Param:=TWideStrings.Create;
  Param.Add('');    //'SELECT detalletipo,tipotelefono FROM tipotelefonos order by detalletipo'
  Param.Add('');
  if TipoTelefonos.ListarSP(Param,DtCombo,0) then begin
   SetLength(IdCombos[0],DtCombo.RecordCount);
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    ORIGEN.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
    IdCombos[0,t-1]:=DtCombo.Fields[0].AsString;
   end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Param.Free;
  TipoTelefonos.Free;
  origen.ItemIndex:=0;
end;
end;

procedure TCon_Gral.RB2Click(Sender: TObject);
begin
 if RB3.Checked  then begin
  Limpiar();
  edit6.Visible:=false;
  button2.Visible:=false;
  elsector.Visible:=false;
  edit1.Visible:=false;
  name.Visible:=false;
  label24.Visible:=false;
  label25.Visible:=false;
  ONOMB.Visible:=false;
  ODNI.Visible:=true;
  ODNI.Text:='00000000';
  lb1.Visible:=true;
  if RB3.Checked then LB1.Caption:='Ingrese N° Acción:';
  if RB5.Checked then LB1.Caption:='Ingrese N° DNI:';
  ODNI.SetFocus;
 end;
 if RB5.Checked  then begin
  Limpiar();
  edit6.Visible:=false;
  button2.Visible:=false;
  elsector.Visible:=false;
  edit1.Visible:=false;
  name.Visible:=false;
  label24.Visible:=false;
  label25.Visible:=false;
  ONOMB.Visible:=false;
  ODNI.Visible:=true;
  ODNI.Text:='00000000';
  lb1.Visible:=true;
  if RB3.Checked then LB1.Caption:='Ingrese N° Acción:';
  if RB5.Checked then LB1.Caption:='Ingrese N° DNI:';
  busca.click;
  ODNI.SetFocus;
 end;
 if RB4.Checked then begin
  Limpiar();
  edit6.Visible:=false;
  elsector.Visible:=false;
  button2.Visible:=false;
  edit1.Visible:=false;
  name.Visible:=false;
  label24.Visible:=false;
  label25.Visible:=false;
  ODNI.Visible:=false;
  ONOMB.Visible:=true;
  ONOMB.SetFocus;
  if RB4.Checked then LB1.Caption:='Ingrese N° Sector:';
 end;
 if RB1.Checked then begin
  Limpiar();
  edit6.Visible:=false;
  elsector.Visible:=false;
  ODNI.Visible:=false;
  ONOMB.Visible:=false;
  button2.Visible:=false;
  edit1.Visible:=false;
  name.Visible:=true;
  label24.Visible:=false;
  label25.Visible:=true;
  busca.click;
  lb1.Visible:=false;
  name.Setfocus;
 end;
 if RB7.Checked then begin
  Limpiar();
  edit6.Clear;
  button2.Visible:=false;
  edit1.Visible:=false;
  name.Visible:=false;
  label24.Visible:=false;
  label25.Visible:=false;
  ONOMB.Visible:=false;
  elsector.Visible:=true;
  ODNI.Visible:=false;
  edit6.Visible:=true;
  lb1.Visible:=true;
  ODNI.Text:='00000000';
  if RB7.Checked then LB1.Caption:='Ingrese N° Sector y Parcela:';
  elsector.SetFocus;
 end;
 Busca.Enabled:=true;
end;

procedure TCon_Gral.RB1Click(Sender: TObject);
begin
ONOMB.Visible:=FALSE;
ODNI.Visible:=FALSE;
LB1.Caption:='';
Busca.Enabled:=true;
Busca.SetFocus;
end;

procedure TCon_Gral.ImpPDFClick(Sender: TObject);
begin
rvs1.Execute;
//  rv.DefaultDest := rdFile;
//  rv.DoNativeOutput := False;
//  rv.RenderObject := modulo2.RvRenderPDF1;
//  // esto es si queremos guardar el pdf en la maquina
//  if FileExists(modulo2.path_todo + '\Imagenes\ConsultaCliente') then
//      deletefile(modulo2.path_todo + '\Imagenes\ConsultaCliente');
//  rv.OutputFileName := modulo2.path_todo + '\Imagenes\ConsultaCliente.pdf';
//  rv.SystemSetups := rv.SystemSetups - [ssAllowSetup];
//  Rv.Execute;
end;

procedure TCon_Gral.RvPrint(Sender: TObject);
var posfx,posfy,Pos1,Pos2,Pos3,Pos4,Pos5,Salto:double;
    PosR: array of double;
var r,w,l,h,y,t,j,cont,x:integer;
    tot,tot1,totv,tots,totc,totm:real;
    Fuente,PathLogo,PathLogo1:string;
    Imagen1,MarcaAgua:TBitMap;
    Bandera:boolean;
begin
 try
  SetLength(PosR,5);
  PosR[0]:=35;
  PosR[1]:=57;
  PosR[2]:=80;
  PosR[3]:=103;
  PosR[4]:=125;
  posfx:=5.5;
  posfy:=5;
  Imagen1 := TBitMap.Create;
  Salto:=4;
  with Rv do begin
    BaseReport.FontRotation:=0;
    BaseReport.Rectangle(posfx+2,posfy,posfx+195,posfy+15);
    Imagen1 := TBitMap.Create;
    PathLogo:=modulo2.path_todo + '\Imagenes\' + modulo2.INI1.ReadString('Resumen Caja','Imagen1','');
    if FileExists(PathLogo) then begin
     Image1.Picture.LoadFromFile(PathLogo);
     Imagen1.Assign(Image1.Picture.Graphic);
     BaseReport.PrintBitmapRect(posfx+3,posfy+1,posfx+65,posfy+14,Imagen1);
    end;
    Imagen1.Free;
    BaseReport.SetFont('Arial Black',10);
    BaseReport.FontColor:=clBlack;
    BaseReport.PrintXY(posfx+75,posfy+8,'SERVICIOS & MANDATOS');
    BaseReport.SetFont('Arial' ,9);
    BaseReport.FontColor:=clBlack;
    BaseReport.PrintXY(posfx+135,posfy+6,'Ayacucho N° 160 - Tel:(370) 4430761');
    BaseReport.PrintXY(posfx+140,posfy+10,'         CP (3600) - Formosa');
    BaseReport.SetFont('Arial' ,8);
    BaseReport.FontColor:=clBlack;
    BaseReport.PrintXY(posfx+105,posfy+14,'Consesionario exclusivo de Cementerio Parque REMANSO DE PAZ');

    BaseReport.SetFont('Arial Black',10);
    BaseReport.FontColor:=clBlack;
    BaseReport.RoundRect(posfx+20,posfy+15,posfx+80,posfy+20,5,5);
    BaseReport.PrintXY(posfx+40,posfy+19,'Titulares');
    BaseReport.RoundRect(posfx+120,posfy+15,posfx+170,posfy+20,5,5);
    BaseReport.PrintXY(posfx+125,posfy+19,'Resumen de Cuenta');

    BaseReport.SetFont('Arial',8);
    BaseReport.FontColor:=clBlack;
    BaseReport.PrintXY(posfx+100,posfy+27,'Fecha Impresion:');
    BaseReport.PrintXY(posfx+162,posfy+27,'Periodo:');

    BaseReport.PrintXY(posfx+3,posfy+24,'1º)   Titular:');
    BaseReport.PrintXY(posfx+3,posfy+28,'             Dni:');
    BaseReport.PrintXY(posfx+3,posfy+32,'Dom. Legal:');
    BaseReport.PrintXY(posfx+3,posfy+38,'Telefonos:');

    BaseReport.PrintXY(posfx+3,posfy+44,'2º)   Titular:');
    BaseReport.PrintXY(posfx+3,posfy+48,'             Dni:');
    BaseReport.PrintXY(posfx+3,posfy+52,'Dom. Legal:');
    BaseReport.PrintXY(posfx+3,posfy+58,'Telefonos:');

    BaseReport.PrintXY(posfx+3,posfy+64,'3º)   Titular:');
    BaseReport.PrintXY(posfx+3,posfy+68,'             Dni:');
    BaseReport.PrintXY(posfx+3,posfy+72,'Dom. Legal:');
    BaseReport.PrintXY(posfx+3,posfy+78,'Telefonos:');

    BaseReport.SetFont('Arial Black',9);
    BaseReport.FontColor:=clBlack;
    BaseReport.RoundRect(posfx+120,posfy+58,posfx+170,posfy+63,5,5);
    BaseReport.PrintXY(posfx+129,posfy+62,'Datos de la Acción');

    BaseReport.SetFont('Arial',8);
    BaseReport.FontColor:=clBlack;
    BaseReport.PrintXY(posfx+102,posfy+67,'N° TITULO:');
    BaseReport.PrintXY(posfx+153,posfy+67,'Nº Caja:');
    BaseReport.PrintXY(posfx+102,posfy+72,'Sector:');
    BaseReport.PrintXY(posfx+127,posfy+72,'Parcela:');
    BaseReport.PrintXY(posfx+153,posfy+72,'Plaza:');
    BaseReport.PrintXY(posfx+102,posfy+77,'Fecha Cesión:');
    BaseReport.PrintXY(posfx+153,posfy+77,'Inhumados:');
    BaseReport.PrintXY(posfx+102,posfy+82,'GESTOR:');

    BaseReport.SetFont('Arial Black',8);
    BaseReport.FontColor:=clBlack;
    BaseReport.RoundRect(posfx+3,posfy+80,posfx+97,posfy+84,5,5);
    BaseReport.PrintXY(posfx+4,posfy+83,'Valor del Mantenimiento del mes $' + valormante);

    BaseReport.SetFont('Arial Black',7);
    BaseReport.FontColor:=clBlack;
    Pos5:=0;
    //Imprimiendo Titulares
    for t:=1 to Datasource2.DataSet.RecordCount do begin
     Datasource2.DataSet.RecNo:=t;
     BaseReport.PrintXY(posfx+Pos3+19,posfy+Pos4+24 + Pos5,Datasource2.DataSet.Fields[2].AsString);
     BaseReport.PrintXY(posfx+Pos3+19,posfy+Pos4+28 + Pos5,Datasource2.DataSet.Fields[3].AsString);
     BaseReport.PrintXY(posfx+Pos3+19,posfy+Pos4+32 + Pos5,strcut_midle(trim(Datasource2.DataSet.Fields[4].AsString),1,50));
     BaseReport.PrintXY(posfx+Pos3+19,posfy+Pos4+36 + Pos5,strcut_midle(trim(Datasource2.DataSet.Fields[4].AsString),51,100));
     BaseReport.PrintXY(posfx+Pos3+19,posfy+Pos4+38 + Pos5,Datasource2.DataSet.Fields[13].AsString);
     Pos5:=Pos5 + 20; //24
    end;

    //Imprimiendo Datos de la Acción
    BaseReport.SetFont('Arial Black',9);
    BaseReport.FontColor:=clBlack;
    BaseReport.PrintXY(posfx+Pos3+117,posfy+Pos4+67,Datasource2.DataSet.Fields[0].AsString + '.-');
    BaseReport.PrintXY(posfx+Pos3+165,posfy+Pos4+67,Datasource2.DataSet.Fields[16].AsString);
    BaseReport.PrintXY(posfx+Pos3+113,posfy+Pos4+72,Datasource2.DataSet.Fields[10].AsString);
    BaseReport.PrintXY(posfx+Pos3+139,posfy+Pos4+72,Datasource2.DataSet.Fields[5].AsString);
    BaseReport.PrintXY(posfx+Pos3+163,posfy+Pos4+72,Datasource2.DataSet.Fields[9].AsString);
    BaseReport.PrintXY(posfx+Pos3+125,posfy+Pos4+77,Datasource2.DataSet.Fields[6].AsString);
    BaseReport.PrintXY(posfx+Pos3+172,posfy+Pos4+77,inttostr(cantidinhu));
    BaseReport.SetFont('Arial Black',7);
    BaseReport.FontColor:=clBlack;
    BaseReport.PrintXY(posfx+Pos3+117,posfy+Pos4+82,Datasource2.DataSet.Fields[14].AsString);

    //Imprimiendo la Cuenta
    BaseReport.SetFont('Arial Black',9);
    BaseReport.FontColor:=clBlack;
    BaseReport.PrintXY(posfx+Pos3+126,posfy+Pos4+27,FechaActual);
    BaseReport.PrintXY(posfx+Pos3+175,posfy+Pos4+27,PERIODO.Text);
    tot:=0;       tot1:=0;
    totv:=0;      tots:=0;
    totc:=0;      totm:=0;

    BaseReport.Rectangle(posfx+Pos3+93.5,posfy+Pos4+30,posfx+Pos3+195,posfy+Pos4+34);   
    BaseReport.SetFont('Arial Black',7);
    BaseReport.FontColor:=clBlack;
    BaseReport.PrintXY(posfx+Pos3+105,posfy+Pos4+33,'Detalle');
    BaseReport.PrintXY(posfx+Pos3+130,posfy+Pos4+33,'CtasDeudas');
    BaseReport.PrintXY(posfx+Pos3+155,posfy+Pos4+33,'Imp.Cuota');
    BaseReport.PrintXY(posfx+Pos3+166,posfy+Pos4+33,'Importe');
    Pos5:=posfy+Pos4+34 + 4;

    //Parcelas
    BaseReport.SetFont('Arial',7);
    BaseReport.PrintXY(posfx+Pos3+102,Pos5,'SALDO PARCELAS');
    if trim(dservicio.Text)='' then totv:=totv + 0
     else totv:=totv + strtofloat(trim(dventa.Text));
    BaseReport.MoveTo(posfx+Pos3+177,Pos5);
    BaseReport.PrintRight(trim(DataSetCuotasVta.Fields[0].AsString),posfx+Pos3+140);
    BaseReport.PrintRight('$' + trim(DataSetCuotasVta.Fields[1].AsString),posfx+Pos3+165);
    BaseReport.PrintRight(redondeo(FloatToStr(totv),2),posfx+Pos3+193);
    BaseReport.Rectangle(posfx+Pos3+93.5,Pos5+0.5,posfx+Pos3+195,Pos5+0.5);
    Bandera:=true;
    if not Bandera then begin
     BaseReport.MoveTo(posfx+Pos3+175,Pos5);
     BaseReport.PrintRight('0.00',posfx+Pos3+177);
    end;

    //Servicios
    Pos5:=Pos5 + 4;
    BaseReport.SetFont('Arial',7);
    BaseReport.PrintXY(posfx+Pos3+102,Pos5,'SALDO SERVICIO');
    if trim(dservicio.Text)='' then tots:=tots + 0
     else tots:=tots + strtofloat(trim(dservicio.Text));
    BaseReport.MoveTo(posfx+Pos3+177,Pos5);
    BaseReport.PrintRight(redondeo(FloatToStr(tots),2),posfx+Pos3+193);
    BaseReport.Rectangle(posfx+Pos3+93.5,Pos5+0.5,posfx+Pos3+195,Pos5+0.5);
    Bandera:=true;
    if not Bandera then begin
     BaseReport.MoveTo(posfx+Pos3+175,Pos5);
     BaseReport.Rectangle(posfx+Pos3+93.5,Pos5+0.5,posfx+Pos3+195,Pos5+0.5);
     BaseReport.PrintRight('0.00',posfx+Pos3+193);
    end;

   //Consolidados
    Pos5:=Pos5 + 4;
    BaseReport.SetFont('Arial',7);
    BaseReport.PrintXY(posfx+Pos3+102,Pos5,'SALDO CONSOLID.');
    if trim(dconsoli.Text)='' then totc:=totc + 0
          else totc:=totc + strtofloat(trim(dconsoli.Text));
    BaseReport.MoveTo(posfx+Pos3+177,Pos5);
    BaseReport.PrintRight(redondeo(FloatToStr(totc),2),posfx+Pos3+193);
    BaseReport.Rectangle(posfx+Pos3+94,Pos5+0.5,posfx+Pos3+195,Pos5+0.5);
    Bandera:=true;
    if not Bandera then begin
     BaseReport.MoveTo(posfx+Pos3+175,Pos5);
     BaseReport.PrintRight('0.00',posfx+Pos3+177);
    end;

    //Mantenimiento
    Pos5:=Pos5 + 4;
    BaseReport.SetFont('Arial',7);
    BaseReport.PrintXY(posfx+Pos3+102,Pos5,'SALDO MANTENIM.');
    if trim(dmante.Text)='' then totm:=totm + 0
     else totm:=totm + strtofloat(trim(dmante.Text));
    BaseReport.MoveTo(posfx+Pos3+177,Pos5);
    BaseReport.PrintRight(redondeo(FloatToStr(totm),2),posfx+Pos3+193);
    BaseReport.Rectangle(posfx+Pos3+93.5,Pos5+0.5,posfx+Pos3+195,Pos5+0.5);
    Bandera:=true;
    if not Bandera then begin
     BaseReport.MoveTo(posfx+Pos3+175,Pos5);
     BaseReport.PrintRight('0.00',posfx+Pos3+177);
    end;

    Pos5:=Pos5 + 5;
    BaseReport.SetFont('Arial Black',7);
    BaseReport.FontColor:=clBlack;
    BaseReport.PrintXY(posfx+Pos3+95,Pos5,'DEUDA ACUMULADA DEL PERIODO ACTUAL:');
    BaseReport.MoveTo(posfx+Pos3+177,Pos5);
    tot1:= tots + totm + totc + totv;
    BaseReport.PrintRight('$ ' + redondeo(FloatToStr(tot1),2),posfx+Pos3+190);
    BaseReport.Rectangle(posfx+Pos3+94,Pos5+0.5,posfx+Pos3+195,Pos5+0.5);

    BaseReport.SetFont('Arial Black',7);
    BaseReport.FontColor:=clBlack;
    BaseReport.PrintXY(posfx+45,Pos5+32,' -------- DETALLE DE CUOTAS ADEUDADAS DE MANTENIMIENTO ----------');
    BaseReport.MoveTo(posfx+Pos3+177,Pos5);

    salto:=3;
    Pos5:=Pos5 + 35;
    BaseReport.SetFont('Arial Black',7);
    BaseReport.FontColor:=clBlack;
    BaseReport.PrintXY(posfx+3,Pos5,'AÑO    ENERO     FEBRERO     MARZO     ' +
      '  ABRIL      MAYO     JUNIO     JULIO     AGOSTO   SEPTIEMBRE     ' +
      'OCTUBRE     NOVIEMBRE   DICIEMBRE');
    Pos5:=Pos5 + 2;
    for t:=1 to Datasource13.DataSet.RecordCount  do  begin
     BaseReport.SetFont('Arial',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posfx+3,Pos5,lasdeudas.Cells[0,t]);
     BaseReport.PrintXY(posfx+13,Pos5,lasdeudas.Cells[1,t]);
     BaseReport.PrintXY(posfx+28,Pos5,lasdeudas.Cells[2,t]);
     BaseReport.PrintXY(posfx+44,Pos5,lasdeudas.Cells[3,t]);
     BaseReport.PrintXY(posfx+58,Pos5,lasdeudas.Cells[4,t]);
     BaseReport.PrintXY(posfx+72,Pos5,lasdeudas.Cells[5,t]);
     BaseReport.PrintXY(posfx+85,Pos5,lasdeudas.Cells[6,t]);
     BaseReport.PrintXY(posfx+97,Pos5,lasdeudas.Cells[7,t]);
     BaseReport.PrintXY(posfx+111,Pos5,lasdeudas.Cells[8,t]);
     BaseReport.PrintXY(posfx+125,Pos5,lasdeudas.Cells[9,t]);
     BaseReport.PrintXY(posfx+149,Pos5,lasdeudas.Cells[10,t]);
     BaseReport.PrintXY(posfx+167,Pos5,lasdeudas.Cells[11,t]);
     BaseReport.PrintXY(posfx+183,Pos5,lasdeudas.Cells[12,t]);
     Pos5:=Pos5 + salto + 0.5;
    end;

    BaseReport.SetFont('Arial',6);
    BaseReport.FontColor:=clBlack;
    BaseReport.PrintXY(posfx+13,Pos5,'      ----------- DETALLE DE ULTIMOS PAGOS ------------   ');

    Pos5:=Pos5 + salto ;
    for t:=1 to Datasource14.DataSet.RecordCount  do  begin
     BaseReport.SetFont('Arial',6);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posfx+3,Pos5,StringGridUP.Cells[0,t]);
     BaseReport.PrintXY(posfx+18,Pos5,StringGridUP.Cells[2,t] + ' - ' + StringGridUP.Cells[1,t]);
     BaseReport.PrintXY(posfx+50,Pos5,'Fec.Cob:' + StringGridUP.Cells[3,t]);
     BaseReport.PrintXY(posfx+70,Pos5,'Imp. $'+StringGridUP.Cells[4,t] + ' - ' +StringGridUP.Cells[5,t]);
     Pos5:=Pos5 + salto;
    end;
    Pos5:=Pos5 + 2;
    BaseReport.PrintXY(posfx+13,Pos5,'      ----------- DETALLE DEUDA SERVICIOS ------------   ');
    BaseReport.PrintXY(posfx+13,Pos5 + 2 ,' IdServ      CantCuotasDeuda    ImpCuota  ');
    for x:=1 to  DataSetCuotasServ.RecordCount do  begin
     BaseReport.PrintXY(posfx+13,Pos5+4 ,GRILLADETSERV.Cells[0,x]);
     BaseReport.PrintXY(posfx+30,Pos5+4 ,GRILLADETSERV.Cells[1,x]);
     BaseReport.PrintXY(posfx+42,Pos5+4 ,'$ '+ GRILLADETSERV.Cells[2,x]);
     Pos5:=Pos5 + salto;
    END;

    Pos5:=Pos5 + salto + 4;
    BaseReport.SetFont('Arial ',7);
    BaseReport.FontColor:=clBlack;
    BaseReport.PrintXY(posfx,Pos5,'Domicilio Cobro:  ' + DataSet0.Fields[10].AsString);
    BaseReport.PrintXY(posfx,Pos5+5,'Observaciones:  ' + DataSet0.Fields[11].AsString) ;
    BaseReport.PrintXY(posfx+160,Pos5+5,'Ultimo Gestor que Cobro: ' +   ultimogestorpago);

    Pos5:=Pos5 + salto;
    if datoabogado.Visible  then begin
     BaseReport.SetFont('Arial Black',9);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posfx,Pos5+5, label59.Caption )
    end;

    Pos5:=Pos5 + 2;
    BaseReport.SetFont('Arial',8);
    BaseReport.FontColor:=clBlack;
    //BaseReport.RoundRect(posfx,Pos5+5,posfx+195,Pos5+148,5,5);
    BaseReport.PrintXY(posfx,Pos5+5,'IMPORTANTE: Para cualquier consulta y/o reclamo por favor dirigirse a este e-mail: carmelomontesm@gmail.com');
    BaseReport.PrintXY(posfx,Pos5+9,'Especificando en lo posible Nº de Titulo y/o Sector y Parcela para una respuesta mas pronta y favorable....');

    //  BaseReport.Rectangle(posfx+Pos5+ 12,Pos5+0.5,posfx+Pos3+195,Pos5+0.5);
    BaseReport.PrintXY(posfx+2,Pos5 + 15,'  - - - - - - -   NOVEDADES DE LA ACCION - - - - - - - - - -');
    Pos5:=Pos5+ 17;
      /// imprimo las novedades de tipo alta que no estan resueltas
    if not DtComboNovedad.IsEmpty  then begin
     Pos5:=Pos5+2;
     for t:=1 to DtComboNovedad.RecordCount do begin
      DtComboNovedad.RecNo:=t;
      BaseReport.SetFont('Arial',8);
      BaseReport.PrintXY(posfx,Pos5+2,trim(DtComboNovedad.Fields[1].AsString) + '-' + trim(DtComboNovedad.Fields[0].AsString));
      BaseReport.MoveTo(posfx,Pos5);
      Pos5:=Pos5 + 3;
     end;
    end;
  end;
 except
 end;
end;

procedure TCon_Gral.DBGrid1CellClick(Column: TColumn);
var t,gf:integer;
    txt:string;
begin
 if not (DataSet0.IsEmpty) then begin
  imppdf.Enabled:=true;
  if modulo2.nro_usu = 1 then begin
   imprime.Enabled:=true;
   JvBitBtn2.Enabled:=true;
  end
  else begin
   imprime.Enabled:=false;
   JvBitBtn2.Enabled:=false;
  end;
  //if modulo2.nro_usu = 1 then imprime.Enabled:=true
  // else imprime.Enabled:=false;
  label29.Visible :=false;
  label30.Caption:=trim(DataSet0.Fields[0].AsString);
  Label28.Caption:=trim(DataSet0.Fields[9].AsString);
  edit3.Text:=trim(DataSet0.Fields[10].AsString);
  edit2.Text:=trim(DataSet0.Fields[11].AsString);
  numcaja.Text:=trim(DataSet0.Fields[12].AsString);
  control:=true;
  Coloca1(1);
  Coloca1(3);    // titulares
  Coloca1(4);    // inhumados
  AuditAccesos('Modulo 2','CONSULTA DEUDA TITULO '+trim(DataSet0.Fields[0].AsString));
 end;
end;

procedure TCon_Gral.BuscaClick(Sender: TObject);
var p,u:integer;
begin
//DataClie.Free;
label29.Visible:=false;
edit8.Text:=Elanio;
Label39.Caption:='...';
Label28.Caption:='...';
dventa.Text:='00.00';
dmante.Text:='00.00';
dservicio.Text:='00.00';
dconsoli.Text:='00.00';
edit2.Clear;
edit3.Clear;
if rb1.Checked  then Coloca1(24)
else Coloca1(0);
Barra1.Panels[1].Text:='Registos encontrados: ' + inttostr(DataSet0.RecordCount);
end;

procedure TCon_Gral.ExportaClick(Sender: TObject);
//var texto:widestring;
//var txt:string;
//var t,y:integer;
begin
{ todos.Clear;
 texto:='';
 for t:=0 to DataSet0.FieldCount-1 do begin
  texto:=texto + DataSet0.Fields[t].FieldName + chr(9);
 end;
 todos.Lines.Add(texto);
 for y:=1 to DataSet0.RecordCount do begin
  DataSet0.RecNo:=y;
  texto:='';
  for t:=0 to DataSet0.FieldCount-1 do begin
   texto:=texto + DataSet0.Fields[t].AsString + chr(9);
  end;
  todos.Lines.Add(texto);
 end;
 todos.SelectAll;
 todos.CopyToClipboard;
 messagedlgpos('Se Copiaron los Datos, listo para pegarlos a Excel',mtwarning,[mbok],0,screen.Width div 3,screen.Height div 3);     }
end;

procedure TCon_Gral.ImprimeClick(Sender: TObject);
var gf:integer;
begin
 gf:=messagedlg('Desea Imprimir la consulta de Clientes?',mtWarning,[mbok,mbCancel],0);
 if gf = 1 then begin
   AuditAccesos('Modulo 2','IMP. ESTADO CTA ACION' + TRIM(ODNI.Text) + ' Usuario ' + inttostr(modulo2.nro_usu));
   Rv.Execute;
 end;
end;

procedure TCon_Gral.ONOMBKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  periodo.SetFocus;
 END;
end;

procedure TCon_Gral.ODNIKeyPress(Sender: TObject; var Key: Char);
begin
 if rb3.Checked  then  begin
  if key = #13 then begin
  Key := #0;
  busca.SetFocus;
 end
 else begin
  if ( StrScan('0123456789',Key) <> nil ) or  ( Key = Char(VK_BACK) ) then
   else Key := #0;
  end;
 end;
 if rb7.Checked  then  begin
  if key = #13 then begin
   Key := #0;
   if rb7.Checked then edit6.SetFocus
    else  busca.SetFocus;
  END;
 end;
end;

procedure TCon_Gral.PC1Change(Sender: TObject);
begin
if not control then PC1.ActivePage:=PC1.Pages[0]; 
end;

procedure TCon_Gral.JvDBGrid4CellClick(Column: TColumn);
begin
if not DataSet4.IsEmpty then Coloca1(6);
end;

procedure TCon_Gral.JvDBGrid6CellClick(Column: TColumn);
var txtw:widestring;
begin
 if not DataSet6.IsEmpty then begin
  DataSet7.Free;
  DataSet7:=TClientdataSet.Create(nil);
  DataSource7.DataSet:=DataSet7;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT Nrocuota,Vencimiento,ImporteCuota,InteresAcumulado,PorcentajeAplicado,TotalCuota, '
  + 'EstadoVto,EstadoPago,OrigenPago,FechaCobro,NroComprobante,ImporteCobrado FROM EstadoCuentaServiciosPorId' //EstadoCuentaServicios'
  + '(' + DataSet6.Fields[0].AsString + ',' + chr(39)+  txtfecha +chr(39) +',0) order by 1 desc';
  if not Funciones.Listar(txtw,DataSet7) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador', mtError,[mbok],0);
  Funciones.Free;
  if not DataSet7.IsEmpty then begin
   JvDBGrid7.Columns[0].Width:=50;
   JvDBGrid7.Columns[1].Width:=70;
   JvDBGrid7.Columns[2].Width:=70;
   JvDBGrid7.Columns[3].Width:=70;
   JvDBGrid7.Columns[4].Width:=70;
   JvDBGrid7.Columns[5].Width:=70;
   JvDBGrid7.Columns[6].Width:=70;
   JvDBGrid7.Columns[7].Width:=70;
   JvDBGrid7.Columns[8].Width:=70;
   JvDBGrid7.Columns[9].Width:=70;
   JvDBGrid7.Columns[10].Width:=70;
   JvDBGrid7.Columns[11].Width:=70;
   fecservicio.Text :=trim(DataSet6.Fields[2].AsString);
   nivel.Text:=trim(DataSet6.Fields[3].AsString);
   tiposervicio.Text:=trim(DataSet6.Fields[4].AsString);
   total.Text:=trim(DataSet6.Fields[6].AsString);
   valorcuota.Text:=trim(DataSet6.Fields[8].AsString);
   objeto.Text:=trim(DataSet6.Fields[10].AsString);
   edit9.Text:=trim(DataSet6.Fields[11].AsString);
  end
  else begin
   dservicio.Text:='00.00';
  end;
 end;
end;

procedure TCon_Gral.JvDBGrid2CellClick(Column: TColumn);
var p,u:integer;
begin
 if not DataClie.IsEmpty then begin
  Coloca1(10);
  D1.DataField:='Cuif';
  cuiftelef:=trim(DataSet2.Fields[1].AsString);
  D2.DataField:='TipoDoc';
  D3.DataField:='NroDni';
  D4.DataField:='FechaNacimiento';
  D5.DataField:='RazonSocial';
  D6.DataField:='Alias';
  D7.DataField:='Cuit';
  D8.DataField:='DetalleSexo';
  D9.DataField:='Religion';
  D10.DataField:='Nacionalidad';
  D11.DataField:='EstadoCivil';
  D12.DataField:='Provincia';
  D13.DataField:='Localidad';
  D14.DataField:='DetalleBarrio';
  D15.DataField:='Domicilio';
  D16.DataField:='CodigoPostal';
  D17.DataField:='DetallePostal';
  D18.DataField:='Categoria';
  D19.DataField:='mail';
  D20.DataField:='Observaciones';
  Coloca1(2);
  coloca1(18); 
  if trim(DataSet2.Fields[13].Text) = 'sin Telefono' then  PopupMenu2.Items[0].Enabled:=true
  else begin
   PopupMenu2.Items[0].Enabled:=false;
   CARAC.Text:='00000';
   TELF.Text:='00000000000';
   origen.ItemIndex:=0;
   for p:=0 to grilla2.ColCount-1 do
     for u:=1 to grilla2.RowCount-1 do grilla2.Cells[p,u]:='';
   grilla2.RowCount:=2;
   Modifica2.Enabled:=false;
   Borra2.Enabled:=false;
   Agrega2.Enabled:=true;
   Quita2.Enabled:=false;
   Coloca1(25);  /// telefono
  end;
 end;
end;

procedure TCon_Gral.Button2Click(Sender: TObject);
var Busqueda:TLA_BUSQUEDA;
begin
  Busqueda:=TLA_BUSQUEDA.Create(self);
  try
   Busqueda.NroOpcion:=3;
   Busqueda.Caption:='Busqueda y Seleccion de Titulares';
   Busqueda.ShowModal;
   edit1.Text:=busqueda.DB2.Text;  //cuif
   name.Text:=busqueda.DB4.Text;   //Nombre
  finally
   Busqueda.Destroy;
   periodo.SetFocus;
  end;
end;

procedure TCon_Gral.ActuSaldoClick(Sender: TObject);
begin
//coloca1(21);
//gerimp.execute;
end;

procedure TCon_Gral.Edit3Change(Sender: TObject);
begin
cambiadom.Enabled:=true;
end;

procedure TCon_Gral.cambiadomClick(Sender: TObject);
var gf:integer;
    TodoOk1:boolean;
    txtw:widestring;
begin
 gf:=messagedlgpos('Desea Actualizar el Domicilio de Cobro de esta Accion seleccionada?',mtWarning,[
         mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
 if gf=1 then  begin
  Parcelas:=TParcelas.Create(nil);
  Parcelas.ConnectionString:=modulo2.Conexion;
  txtw:='UPDATE Parcelas SET domiciliocobro = ' + chr(39) + trim(edit3.Text) + chr(39)
      + ' WHERE (NroAccion =' + trim(label30.Caption) + ')';
  TodoOk1:=Parcelas.ListarSinResp(txtw);
  Parcelas.Free;
  if TodoOk1 then begin
    barra1.Panels[1].Text:='Domicilio cambiado con Exito';
  end
  else begin
    messagedlg('Error al Cambiar el Domicilio de esta Accion. Consulte con un Administrador',mtError,[mbok],0);
  end;
 end;
 cambiadom.Enabled:=false;
end;

procedure TCon_Gral.PERIODOKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  busca.SetFocus;
END;
end;

procedure TCon_Gral.PERIODOExit(Sender: TObject);
begin
if PERIODO.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Periodo Ingresado!!',mterror,[mbok],0);
  PERIODO.SetFocus;
end;
end;

procedure TCon_Gral.Edit2Change(Sender: TObject);
begin
CambiaObs.Enabled:=true;
end;

procedure TCon_Gral.CambiaObsClick(Sender: TObject);
var gf:integer;
    TodoOk1:boolean;
    txtw:widestring;
begin
 gf:=messagedlgpos('Desea Actualizar la Observación de esta Accion seleccionada?',mtWarning,[
         mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
 if gf=1 then  begin
  Parcelas:=TParcelas.Create(nil);
  Parcelas.ConnectionString:=modulo2.Conexion;
  txtw:='UPDATE Parcelas SET observacion = ' + chr(39) + trim(edit2.Text) + chr(39)
      + ' WHERE (NroAccion =' + trim(label30.Caption) + ')';
  TodoOk1:=Parcelas.ListarSinResp(txtw);
  Parcelas.Free;
  if TodoOk1 then begin
    barra1.Panels[1].Text:='Observación cambiado con Exito';
  end
  else begin
    messagedlg('Error al Cambiar la Observacion de esta Accion. Consulte con un Administrador',mtError,[mbok],0);
  end;
 end;
 cambiaobs.Enabled:=false;
end;

procedure TCon_Gral.DBGrid2CellClick(Column: TColumn);
begin
 if not DataSet13.IsEmpty then begin
  nronov:=strtoint(trim(DataSet13.Fields[0].AsString));
  textbody.Text:=AnsiReplaceStr(trim(DataSet13.Fields[2].Text),chr(33),chr(39));
  if trim(DataSet13.Fields[3].AsString)='NO' then rnovedad.Enabled:=true
  else
  begin
   messagedlg('Esta Novedad ya se Encuentra Resuelto',mtWarning,[mbok],0);
   rnovedad.Enabled:=false;
  end;
 end;
end;

procedure TCon_Gral.gnovedadClick(Sender: TObject);
var gf:integer;
var alta:boolean;
    txtw:widestring;
begin
 gf:=messagedlgpos('Desea Agregar La Novedad de este Cliente?',mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
 if gf = 1 then begin
  ParcelasNovedades:=TParcelasNovedades.Create(nil);
  ParcelasNovedades.ConnectionString:=modulo2.Conexion;
  txtw:='INSERT INTO ParcelasNovedades (Nroaccion,Novedad,Resuelto,Prioridad) VALUES ('
  + trim(label30.Caption)
  + ' , ' + chr(39) + (textBody.Text) + chr(39)
  + ' , 0 , ' + trim(label45.Caption) + ')';
  alta:=ParcelasNovedades.ListarSinResp(txtw);
  if alta then begin
   messagedlg('Se ha Guardado la Novedad de la Accion seleccionada con Exito',mtConfirmation,[mbok],0);
   textBody.Clear;
   label45.Caption:='..';
   IF LABEL29.Visible THEN LABEL29.Visible:=FALSE;
   coloca1(18);
  end
  else messagedlg('Error al Guardar la Novedad de la Accion',mtError,[mbok],0) ;
  ParcelasNovedades.Free;
  label41.Caption:='..';
 end
 else begin
  messagedlg('Ud. ha cancelado la Operacion de Carga de Novedades',mtWarning,[mbok],0);
 end;
end;

procedure TCon_Gral.rnovedadClick(Sender: TObject);
var gf:integer;
    TodoOk1:boolean;
    txtw:widestring;
begin
 gf:=messagedlg('Desea Resolver esta Novedad seleccionada?',mtWarning,[mbok,mbCancel],0);
 if gf = 1 then begin
  ParcelasNovedades:=TParcelasNovedades.Create(nil);
  ParcelasNovedades.ConnectionString:=modulo2.Conexion;
  txtw:='UPDATE ParcelasNovedades SET Resuelto = 1, fecharesuelto= getdate() WHERE (id =' + inttostr(nronov) + ')';
  TodoOk1:=ParcelasNovedades.ListarSinResp(txtw);
  ParcelasNovedades.Free;
  if TodoOk1 then begin
   messagedlg('Se ha RESUELTO esta Novedad con Exito',mtConfirmation,[mbok],0);
   coloca1(18);
   textbody.Clear;
   label29.Visible:=false;
  end
  else begin
   messagedlg('Error al RESOLVER esta NOVEDAD. Consulte con un Administrador',mtError,[mbok],0);
  end;
 end;
end;

procedure TCon_Gral.impnovedadClick(Sender: TObject);
begin
rvnov.Execute;
end;

procedure TCon_Gral.RvNovPrint(Sender: TObject);
var posfx,posfy,final,salto:double;
var t,y,hoja,nro:integer;
var txt:string;
var pso:boolean;

  Function Logo(posx,posy:double;vaf:integer):double;
   var Imagen1,MarcaAgua:TBitMap;
       PathLogo,PathLogo1:string;
   begin
    with RvNov do begin
     Imagen1 := TBitMap.Create;
     PathLogo:=modulo2.path_todo + '\Imagenes\' + modulo2.INI1.ReadString('Resumen Caja','Imagen1','');
     if FileExists(PathLogo) then begin
       Image1.Picture.LoadFromFile(PathLogo);
       Imagen1.Assign(Image1.Picture.Graphic);
       BaseReport.PrintBitmapRect(posx+6,posy+2,posx+30,posy+22,Imagen1);
     end;
     Imagen1.Free;
     BaseReport.Rectangle(posx+2,posy+1,posx+205,posy+23);
     BaseReport.SetFont('Arial Black',9);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+34,posy+5,'CARMELO MONTE S.A. Servicios & Mandatos');
     BaseReport.SetFont('Arial Black',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+34,posy+9,modulo2.INI1.ReadString('Resumen Planillas','Titulo2',''));
     BaseReport.SetFont('Arial',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+149,posy+22,'Pág.: ' + inttostr(vaf));
     BaseReport.PrintXY(posx+160,posy+22,'Usu Imp.: ' + inttostr(modulo2.nro_usu) + ' - Fec. Imp.:' + strcut(Fec_System(),10));
     BaseReport.SetFont('Arial',10);
     BaseReport.FontColor:=clBlack;
     RvNov.BaseReport.SetFont('Arial Black',8);
     RvNov.BaseReport.FontColor:=clBlack;
     RvNov.BaseReport.PrintXY(posfx+34,posfy+17,'LISTA DE NOVEDADES DE LA ACCION NRO: ' + TRIM(label30.Caption));
     Logo:=posy+19;
   end;
  end;

  Function GrillaCabecera(posx,posy:double;texto:string):double;
  var t:integer;
  begin
   with RvNov do begin
    BaseReport.Rectangle(posx+2,posy,posx+205,posy+5);
    for t:=1 to length(Camp)-1 do begin
    BaseReport.Rectangle(posx + PosH[t]-2,posy,posx + PosH[t]-2,posy+5);
    end;
   end;
    RvNov.BaseReport.SetFont('Arial Black',6);
    RvNov.BaseReport.FontColor:=clBlack;
    for t:=0 to length(Camp)-1 do begin
      RvNov.BaseReport.PrintXY(posx + PosH[t],posy+4,TxtCamp[t]);
   end;
   Result:=posy+5;
  end;

  /// Grilla Detalle
  Function GrillaDetalle(posx,posy:double;texto:string):double;
  var t:integer;
  begin
   RvNov.BaseReport.SetFont('Arial',8);
   RvNov.BaseReport.FontColor:=clBlack;
    for t:=0 to length(Camp)-1 do
     RvNov.BaseReport.PrintXY(posx + PosH[t],posy+4,HackTable(FindComponent(texto)).Fields[Camp[t]].AsString);
    Result:=posy+4;
  end;

  //// Grilla Recuadro
  Function GrillaRecuadro(posx,posy,posy2:double):double;
  var t:integer;
  begin
   with RvNov do begin
    BaseReport.Rectangle(posx+2,posy,posx+275,posy2);
    for t:=1 to length(Camp)-1 do begin
      BaseReport.Rectangle(posx + PosH[t]-2,posy,posx + PosH[t]-2,posy2);
    end;
   Result:=posy+4;
   end;
  end;

begin
try
  posfx:=1.5;
  posfy:=2;
  salto:=4;
  final:=0;
  hoja:=1;
  posfy:=Logo(posfx,posfy,hoja);

  Camp[0]:=3; Camp[1]:=2; //Camp[2]:=0;
  TxtCamp[0]:='Resuelto';  TxtCamp[1]:='Novedades'; //TxtCamp[2]:='Id';
  PosH[0]:=2;   PosH[1]:=16;  //PosH[2]:=265;

  T8.Close;
  T8.CloneCursor(DataSet13,false,true);
  txt:='T8';
  final:=GrillaCabecera(posfx,posfy+5,txt);
  posfy:=final;
  pso:=false;
  for y:=1 to HackTable(findcomponent(txt)).RecordCount do begin
   HackTable(FindComponent(txt)).RecNo:=y;
   if pso then RvNov.BaseReport.Rectangle(posfx+2,posfy+1,posfx+205,posfy+1)
   else pso:=true;
   posfy:=GrillaDetalle(posfx,posfy,txt);
   if posfy > 180 then begin
    posfy:=GrillaRecuadro(posfx,final,posfy+2);
    posfx:=1.5;
    posfy:=2;
    hoja:=hoja+1;
    RvNov.BaseReport.NewPage;
    posfy:=Logo(posfx,posfy,hoja);
    final:=GrillaCabecera(posfx,posfy+5,txt);
    posfy:=final;pso:=false;
   end;
  end;
  if pso then posfy:=GrillaRecuadro(posfx,final,posfy+2);
  except
end;
end;

procedure TCon_Gral.JvBitBtn1Click(Sender: TObject);
begin
  PC1.ActivePage:=PC1.Pages[1];
  PC2.ActivePage:=PC2.Pages[5];
end;

procedure TCon_Gral.JvDBGrid8CellClick(Column: TColumn);
begin
 if (trim(DataSet8.Fields[12].AsString)='')  then DataSet8.Fields[12].Text:='X';
end;

procedure TCon_Gral.Button1Click(Sender: TObject);
var p:integer;
begin
 for p:=1 to StringAgrupD.RowCount-1 do
   if StringAgrupD.Cells[8,p]='X'
   then StringAgrupD.Cells[8,p]:='';
      coloca1(19);  
  edit4.Text:='00.00';
  edit5.Text:='0';
end;

procedure TCon_Gral.StringAgrupDClick(Sender: TObject);
begin
 if (trim(StringAgrupD.Cells[8,StringAgrupD.Row])='') and (trim(StringAgrupD.Cells[5,StringAgrupD.Row])='DEUDA') then
   StringAgrupD.Cells[8,StringAgrupD.Row]:='X';
   sumaDeuda(1);
end;

procedure TCon_Gral.Sumadeuda(nro:byte);
var t,sum:integer;
    total:real;
begin
total:=0;
sum:=0;
 if nro= 1 then  begin
  for t:=1 to StringAgrupD.RowCount-1 do begin
   if (trim(StringAgrupD.Cells[8,t]) = 'X') and (trim(StringAgrupD.Cells[6,t]) = '')  then begin
     total:= total + strtofloat(StringAgrupD.Cells[3,t]) ;
     sum:= sum + 1;
   end;
  end;
  edit4.Text:=floattostr(total);
  edit5.Text:=inttostr(sum);
 end;
end;

procedure TCon_Gral.JvBitBtn2Click(Sender: TObject);
var gf:integer;
begin
 panel2.Visible:=true;
 edit7.SetFocus;
end;

procedure TCon_Gral.RvECPrint(Sender: TObject);
var posfx,posfy,final,salto:double;
var t,y,hoja,nro,Pos5:integer;
var txt:string;
var pso:boolean;

 Function Logo(posx,posy:double;vaf:integer):double;
   var Imagen1,MarcaAgua:TBitMap;
       PathLogo,PathLogo1:string;
       t:integer;
   begin
    with RvEC do begin
     Imagen1 := TBitMap.Create;
     PathLogo:=modulo2.path_todo + '\Imagenes\' + modulo2.INI1.ReadString('Resumen Caja','Imagen1','');
     if FileExists(PathLogo) then begin
       Image1.Picture.LoadFromFile(PathLogo);
       Imagen1.Assign(Image1.Picture.Graphic);
       BaseReport.PrintBitmapRect(posx+6,posy+2,posx+30,posy+22,Imagen1);
     end;
     Imagen1.Free;
     BaseReport.Rectangle(posx+2,posy+1,posx+200,posy+55);
     BaseReport.SetFont('Arial Black',9);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+34,posy+5,'CARMELO MONTE S.A. Servicios & Mandatos');
     BaseReport.SetFont('Arial Black',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+34,posy+9,modulo2.INI1.ReadString('Resumen Planillas','Titulo2',''));
     BaseReport.SetFont('Arial',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+149,posy+22,'Pág.: ' + inttostr(vaf));
     BaseReport.PrintXY(posx+160,posy+22,'Usu Imp.: ' + inttostr(modulo2.nro_usu) + ' - Fec. Imp.:' + strcut(Fec_System(),10));
     BaseReport.SetFont('Arial',10);
     BaseReport.FontColor:=clBlack;
     RvEC.BaseReport.SetFont('Arial Black',8);
     RvEC.BaseReport.FontColor:=clBlack;
     RvEC.BaseReport.PrintXY(posfx+34,posfy+17,'ESTADO CUENTA DE MANTENIMIENTO DE LA ACCION: ' + TRIM(ODNI.Text) + ' -  AL PERIODO: ' + TRIM(PERIODO.TEXT));
     RvEC.BaseReport.SetFont('Arial Black',9);
     RvEC.BaseReport.FontColor:=clBlack;
     RvEC.BaseReport.RoundRect(posfx+5,posfy+28,posfx+80,posfy+33,5,5);
     RvEC.BaseReport.PrintXY(posfx+10,posfy+32,'Titulares');
     RvEC.BaseReport.SetFont('Arial Black',8);
     RvEC.BaseReport.FontColor:=clBlack;
     Pos5:=0;
    //Imprimiendo Titulares
     for t:=1 to Datasource2.DataSet.RecordCount do begin
        Datasource2.DataSet.RecNo:=t;
        RvEC.BaseReport.PrintXY(posfx+5,posfy+40 + Pos5,Datasource2.DataSet.Fields[8].AsString + ' - ' + Datasource2.DataSet.Fields[2].AsString);
        Pos5:=Pos5 + 5; //24
     end;
     RvEC.BaseReport.RoundRect(posfx+120,posfy+28,posfx+170,posfy+33,5,5);
     RvEC.BaseReport.PrintXY(posfx+129,posfy+32,'Datos de la Acción');
     RvEC.BaseReport.SetFont('Arial',8);
     RvEC.BaseReport.FontColor:=clBlack;
     RvEC.BaseReport.PrintXY(posfx+102,posfy+37,'N° TITULO: ' + Datasource2.DataSet.Fields[0].AsString );
     RvEC.BaseReport.PrintXY(posfx+102,posfy+42,'Sector: ' + Datasource2.DataSet.Fields[10].AsString);
     RvEC.BaseReport.PrintXY(posfx+127,posfy+42,'Parcela: ' + Datasource2.DataSet.Fields[5].AsString);
     RvEC.BaseReport.PrintXY(posfx+153,posfy+42,'Plaza: ' + Datasource2.DataSet.Fields[9].AsString);
     RvEC.BaseReport.PrintXY(posfx+102,posfy+47,'Inhumados: '+ inttostr(cantidinhu));
     RvEC.BaseReport.PrintXY(posfx+102,posfy+52,'GESTOR: ' + trim(label28.Caption));
     Logo:=posy+51;
    end;
   end;

  Function GrillaCabecera(posx,posy:double;texto:string):double;
  var t:integer;
  begin
   with RvEC do begin
    BaseReport.Rectangle(posx+2,posy,posx+200,posy+5);
    for t:=1 to length(Camp2)-1 do begin
      BaseReport.Rectangle(posx + PosH2[t]-2,posy,posx + PosH2[t]-2,posy+5);
    end;
   end;
    RvEC.BaseReport.SetFont('Arial Black',6);
    RvEC.BaseReport.FontColor:=clBlack;
    for t:=0 to length(Camp2)-1 do begin
      RvEC.BaseReport.PrintXY(posx + PosH2[t],posy+4,TxtCamp2[t]);
   end;
   Result:=posy+5;
  end;

  /// Grilla Detalle
  Function GrillaDetalle(posx,posy:double;texto:string):double;
  var t:integer;
  begin
   RvEC.BaseReport.SetFont('Arial',7);
   RvEC.BaseReport.FontColor:=clBlack;
   for t:=0 to length(Camp2)-1 do
     RvEC.BaseReport.PrintXY(posx + PosH2[t],posy+4,HackTable(FindComponent(texto)).Fields[Camp2[t]].AsString);
   Result:=posy+4;
  end;

  //// Grilla Recuadro
  Function GrillaRecuadro(posx,posy,posy2:double):double;
  var t:integer;
  begin
   with RvEC do begin
    BaseReport.Rectangle(posx+2,posy,posx+200,posy2);
    for t:=1 to length(Camp2)-1 do begin
      BaseReport.Rectangle(posx + PosH2[t]-2,posy,posx + PosH2[t]-2,posy2);
    end;
   Result:=posy+4;
   end;
  end;

begin
try
  posfx:=4;
  posfy:=5;
  salto:=4;final:=0;hoja:=1;
  posfy:=Logo(posfx,posfy,hoja);

  Camp2[0]:=0; Camp2[1]:=1; Camp2[2]:=2;  Camp2[3]:=3; Camp2[4]:=4; Camp2[5]:= 5;
  Camp2[6]:=6; Camp2[7]:=7; Camp2[8]:=8; Camp2[9]:=9; Camp2[10]:=10;

  TxtCamp2[0]:='Periodo';    TxtCamp2[1]:='Valor'; TxtCamp2[2]:='Deuda/Mes';
  TxtCamp2[3]:='EstadoVto';  TxtCamp2[4]:='EstadoPago';  TxtCamp2[5]:='OrigenPago';
  TxtCamp2[6]:='FechaCobro'; TxtCamp2[7]:='Comprobante';  TxtCamp2[8]:='DeudaAcum';
  TxtCamp2[9]:='ImpCobrado'; TxtCamp2[10]:='FormaPago';

  PosH2[0]:=3;   PosH2[1]:=18;  PosH2[2]:=35; PosH2[3]:=50;   PosH2[4]:=65;
  PosH2[5]:=80;  PosH2[10]:=108;
  PosH2[6]:=135; PosH2[7]:=150; PosH2[8]:=170;  PosH2[9]:=185;

  TP.Close;
  TP.CloneCursor(DataSet8,false,true);
  txt:='TP';
  final:=GrillaCabecera(posfx,posfy+5,txt);
  posfy:=final;
  pso:=false;
  for y:=1 to HackTable(findcomponent(txt)).RecordCount do begin
   HackTable(FindComponent(txt)).RecNo:=y;
   if pso then RvEC.BaseReport.Rectangle(posfx+2,posfy+1,posfx+200,posfy+1)
   else pso:=true;
   posfy:=GrillaDetalle(posfx,posfy,txt);
   if posfy > 280 then begin
    posfy:=GrillaRecuadro(posfx,final,posfy+2);
    posfx:=1.5;
    posfy:=2;
    hoja:=hoja+1;
    RvEC.BaseReport.NewPage;
    posfy:=Logo(posfx,posfy,hoja);
    final:=GrillaCabecera(posfx,posfy+5,txt);
    posfy:=final;pso:=false;
   end;
  end;
  RvEC.BaseReport.SetFont('Arial Black',9);
  RvEC.BaseReport.FontColor:=clBlack;
  if pso then posfy:=GrillaRecuadro(posfx,final,posfy+2);
  except
end;
end;

procedure TCon_Gral.Edit66KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  periodo.SetFocus;
END;
end;

procedure TCon_Gral.BitBtn1Click(Sender: TObject);
var gf:integer;
begin
Coloca1(9);
gf:=messagedlg('Desea Imprimir el Estado De Cuenta de esta Accion?',mtWarning,[mbok,mbCancel],0);
if gf = 1 then RvEC.Execute;
end;

procedure TCon_Gral.Edit7Exit(Sender: TObject);
begin
if trim(Edit7.Text)='' then Edit7.Text:='0000';
if trim(Edit7.Text)='0' then Edit7.Text:='0000';
if trim(Edit7.Text) = '0000' then begin
  messagedlg('ERROR!!... El Periodo DESDE no puede tener el valor 0 (Cero)' ,mterror,[mbok],0);
  edit7.Text:=elperiodo;
  Edit7.SetFocus;
end;
end;

procedure TCon_Gral.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  edit8.SetFocus;
end;
end;

procedure TCon_Gral.RvECAfterPrint(Sender: TObject);
begin
panel2.Visible:=false;
end;

procedure TCon_Gral.Edit8KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  BitBtn1.SetFocus;
end;
end;

procedure TCon_Gral.Edit8Exit(Sender: TObject);
begin
if trim(Edit8.Text)='' then Edit7.Text:='0000';
if trim(Edit8.Text)='0' then Edit7.Text:='0000';

if trim(Edit8.Text) = '0000' then begin
  messagedlg('ERROR!!... El Periodo HASTA no puede tener el valor 0 (Cero)' ,mterror,[mbok],0);
  edit8.Text:=ELAnio;
  Edit8.SetFocus;
end;
end;

procedure TCon_Gral.Button3Click(Sender: TObject);
begin
  PC1.ActivePage:=PC1.Pages[1];
  PC2.ActivePage:=PC2.Pages[2];
end;

procedure TCon_Gral.JvBitBtn3Click(Sender: TObject);
begin
  PC1.ActivePage:=PC1.Pages[1];
  PC2.ActivePage:=PC2.Pages[3];
end;

procedure TCon_Gral.JvBitBtn4Click(Sender: TObject);
begin
  PC1.ActivePage:=PC1.Pages[1];
  PC2.ActivePage:=PC2.Pages[4];
end;

procedure TCon_Gral.JvBitBtn5Click(Sender: TObject);
begin
  PC1.ActivePage:=PC1.Pages[1];
  PC2.ActivePage:=PC2.Pages[6];
end;

procedure TCon_Gral.saleClick(Sender: TObject);
begin
close;
end;

procedure TCon_Gral.textBodyKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  laprioridad.SetFocus;
END;
end;

procedure TCon_Gral.gerimpPrint(Sender: TObject);
var posfx,posfy,final,salto,cod_bary,cod_barx:double;
var t,k,hoja:integer;
var txt,val:string;

   Function Logo(posx,posy:double;vaf:integer):double;
   var Imagen1,MarcaAgua:TBitMap;
       PathLogo,PathLogo1:string;
       t:integer;
   begin
    with gerimp do begin
     Imagen1 := TBitMap.Create;
     PathLogo:=modulo2.path_todo + '\Imagenes\' + modulo2.INI1.ReadString('Resumen Caja','Imagen1','');
     if FileExists(PathLogo) then begin
       Image1.Picture.LoadFromFile(PathLogo);
       Imagen1.Assign(Image1.Picture.Graphic);
       BaseReport.PrintBitmapRect(posx+6,posy+2,posx+30,posy+22,Imagen1);
     end;
     Imagen1.Free;
     BaseReport.Rectangle(posx+2,posy+1,posx+200,posy+23);
     BaseReport.SetFont('Arial Black',9);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+34,posy+5,'CARMELO MONTE S.A. Servicios & Mandatos');
     BaseReport.SetFont('Arial Black',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+34,posy+9,modulo2.INI1.ReadString('Resumen Planillas','Titulo2',''));
     BaseReport.SetFont('Arial',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+149,posy+22,'Pág.: ' + inttostr(vaf));
     BaseReport.PrintXY(posx+160,posy+22,'Usu Imp.: ' + inttostr(modulo2.nro_usu) + ' - Fec. Imp.:' + strcut(Fec_System(),10));
     BaseReport.SetFont('Arial',10);
     BaseReport.FontColor:=clBlack;
     Logo:=posy+5;
    end;
   end;

   Function Mostrar2(posx,posy:double):double;  //;vaf:integer
      var t,y,pos:integer;
      sd,sd1,posn,posw:double;
      tot,val:real;   //lafila
   begin
    posn:=posy + 15;
    with gerimp do begin
      for t:=1 to 4 do begin
        //Cabecera
        BaseReport.SetFont('Arial',6);
        BaseReport.PrintXY(posw+8,posn+4,'Cesion            Titulo    Sector  Parcela Accion Cat');
        //BaseReport.PrintXY(posw+14,posn+4,'NroTitulo');
        //BaseReport.PrintXY(posw+20,posn+4,'Sector');
         //BaseReport.Rectangle(posw,posn+280,posw+21,posn+5);  // recuadro de nº interno
        //BaseReport.Rectangle(posw+21,posn+270,posw+43,posn+5); // recuadro de recaudaciones
        posw:=posw + 43 + 6;
      end;
      //Detalle
      posw:=posx +2;
      sd1:=posn + 8;

      //lafila:=DATOS.RecordCount /4;
      if trunc(lafila) < lafila then begin
        val:=(lafila - trunc(lafila)) * 100;
        val:=val / 115;
        pos:=trunc(lafila) + 1;
      end
      else begin
        if lafila > 1 then begin
          val:=4;
          pos:=trunc(lafila);
        end
        else val:=0;
      end;
      y:=1;
      sd:=sd1;
      for t:=1 to LASPARCELAS.RecordCount do begin
       LASPARCELAS.RecNo:=t;
       BaseReport.SetFont('Arial',7);
       if (t > pos) then begin
        sd:=sd1;
        y:=y+1;
        if y < val then begin
          if val < 4 then pos:=pos + (trunc(lafila) + 1)
          else pos:=pos + trunc(lafila);
        end
        else pos:=pos + trunc(lafila);
        posw:=posw + 50;  //+43
       end;
       BaseReport.PrintXY(posw,sd,trim(LASPARCELAS.Fields[0].AsString)
       + '   '+ trim(LASPARCELAS.Fields[1].AsString)
       + '   '+ trim(LASPARCELAS.Fields[2].AsString)
       + '   '+ trim(LASPARCELAS.Fields[3].AsString)
       + '   '+ trim(LASPARCELAS.Fields[4].AsString)
       + '   '+ trim(LASPARCELAS.Fields[5].AsString) + ' |');
       sd:=sd + 4;
      end;
    end;
    sd1:=sd+1;
    posn:=posy;
    posw:=posx + 253;
    sd:=0;
     if (sd+2) > sd1 then sd1:=sd+2;
        Result:=sd1;
   end;

begin
  try
    posfx:=5.5;
    posfy:=5;
    salto:=4;
    final:=0;
    hoja:=1;
    posfy:=Logo(posfx,posfy,hoja)+ salto;  // llamamos al encabezado
    posfy:=Mostrar2(posfx,posfy)+salto;    // llamamos a la recaudacion
  except
  end;
end;

procedure TCon_Gral.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var t:integer;
begin
 if not(dataset13.IsEmpty) then begin
  if trim(DBGrid2.Fields[3].Text) = 'SI' then t:=1
  else t:=2;
  case t of
   1:begin
     DBGrid2.Canvas.Brush.Color:=clLime;
     DBGrid2.Canvas.FillRect(Rect);
     DBGrid2.Canvas.Font.Color:= clBlack;
   end;
   2:begin
     DBGrid2.Canvas.Brush.Color:=clWindow;
     DBGrid2.Canvas.FillRect(Rect);
     DBGrid2.Canvas.Font.Color:= clBlack;
   end;
  end;
  DBGrid2.DefaultDrawColumnCell(Rect,Datacol,Column,State);
 end;
end;

procedure TCon_Gral.ElSectorExit(Sender: TObject);
begin
if ElSector.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Sector Ingresado!!',mterror,[mbok],0);
  ElSector.SetFocus;
end;
end;

procedure TCon_Gral.ElSectorKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  coloca1(23);
  edit6.Enabled:=true;
  edit6.SetFocus;
 end
 else begin
  if ( StrScan('ABCDEFGHIJKLMNÑOPQRSTUVWXYZabcdefghijklmnñopqrstuvwxyz',Key) <> nil ) or
      ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;
end;

procedure TCon_Gral.Edit6Exit(Sender: TObject);
begin
if Edit6.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el N° de Acción Ingresado!!',mterror,[mbok],0);
  Edit6.SetFocus;
end;
end;

procedure TCon_Gral.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  busca.SetFocus;
 end
 else begin
  if ( StrScan('0123456789',Key) <> nil ) or   ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;
end;

procedure TCon_Gral.RvS1Print(Sender: TObject);
var posfx,posfy,final,salto,cod_bary,cod_barx:double;
var t,k,hoja,a,maxf,pos1,b,c,d:integer;
var txt,val:string;
var maxfila1,val1:real;

   Function Mostrar2(posx,posy:double):double;
      var a,y,pos,maxfil:integer;
      sd,sd1,posn,posw:double;
      tot,maxfila,val:real;
   begin
      posn:=posy + 5;
      posw:=posx + 4;
     with RvS1 do begin
      BaseReport.SetFont('Arial Black',9);
      BaseReport.PrintXY(posw+5,posn+4,'REMANSO DE PAZ S.A.');
      BaseReport.SetFont('Arial Black',7);
      BaseReport.PrintXY(posw+5,posn+8,'Parque de los Recuerdos');
      BaseReport.SetFont('Arial',9);
      BaseReport.PrintXY(posw+5,posn+16,'TITULO:');
      BaseReport.SetFont('Arial Black',10);
      BaseReport.PrintXY(posw+18,posn+16,nroac);
      BaseReport.SetFont('Arial',9);
      BaseReport.PrintXY(posw+5,posn+22,'Sector:');
      BaseReport.SetFont('Arial Black',10);
      BaseReport.PrintXY(posw+18,posn+22,elsec);
      BaseReport.SetFont('Arial',9);
      BaseReport.PrintXY(posw+30,posn+22,'Parcela Nº:');
      BaseReport.SetFont('Arial Black',10);
      BaseReport.PrintXY(posw+47,posn+22,laparce);
      BaseReport.SetFont('Arial',9);
      BaseReport.PrintXY(posw+5,posn+28,'TITULAR:');
      BaseReport.SetFont('Arial Black',10);
      BaseReport.PrintXY(posw+5,posn+32,larazonsocial);
      BaseReport.SetFont('Arial',9);
      BaseReport.PrintXY(posw+5,posn+37,'Fecha Cesión:');
      BaseReport.SetFont('Arial Black',10);
      BaseReport.PrintXY(posw+27,posn+37,lafeccesion);
      BaseReport.SetFont('Arial',9);
      BaseReport.PrintXY(posw+5,posn+43,'Domicilio:');
      BaseReport.SetFont('Arial Black',10);
      BaseReport.PrintXY(posw+5,posn+49,eldomi);
      BaseReport.SetFont('Arial',9);
      BaseReport.PrintXY(posw+5,posn+61,'Telefono:');
      BaseReport.SetFont('Arial Black',10);
      BaseReport.PrintXY(posw+5,posn+66,eltele);
      posw:=posw + 99;
     end;
   end;

begin
  try
    posfx:=4;
    posfy:=5;
    salto:=120;
    final:=0;
    hoja:=1;
    posfy:=Mostrar2(posfx,posfy)+salto;    // llamamos a la recaudacion
    salto:=salto +120;
  except
  end;
end;

procedure TCon_Gral.nameKeyPress(Sender: TObject; var Key: Char);
begin
{ if key = #13 then begin
  //
 end
 else begin
  if ( StrScan('ABCDEFGHIJKLMNÑOPQRSTUVWXYZabcdefghijklmnñopqrstuvwxyz ',Key) <> nil ) or
      ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;   }
end;

procedure TCon_Gral.nameChange(Sender: TObject);
var txtw:widestring;
begin
 if (length(trim(name.Text))> 2) then begin
  DataSet0.Free;
  DataSet0:=TClientdataSet.Create(nil);
  DataSource0.DataSet:=DataSet0;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if RB1.Checked then begin
   txtw:='SELECT dbo.Parcelas.NroAccion, dbo.Parcelas.NroTitulo, dbo.Parcelas.Sector, dbo.Parcelas.CodigoPlaza, '
   +'dbo.TiposPlazas.Detalle, dbo.Parcelas.Parcela, dbo.Parcelas.NroActa, dbo.Parcelas.Nomenclatura,'
   +'dbo.Parcelas.EspacioVerde, dbo.Clientes.RazonSocial AS Cobrador, dbo.Parcelas.DomicilioCobro, dbo.Parcelas.Observacion,'
   +'dbo.Parcelas.NroCaja, dbo.ParcelasTitulares.NroTipoAcc, Clientes_1.RazonSocial,Clientes_1.Nrodni '
   +' FROM  dbo.Parcelas '
   +' INNER JOIN dbo.TiposPlazas ON dbo.Parcelas.IdPlaza = dbo.TiposPlazas.IdPlaza '
   +' INNER JOIN dbo.Clientes ON dbo.Parcelas.CuifCobrador = dbo.Clientes.Cuif '
   +' INNER JOIN dbo.ParcelasTitulares ON dbo.Parcelas.NroAccion = dbo.ParcelasTitulares.NroAccion '
   +' INNER JOIN dbo.Clientes AS Clientes_1 ON dbo.ParcelasTitulares.Cuif = Clientes_1.Cuif '
   +' WHERE (dbo.ParcelasTitulares.NroTipoAcc = 2)'
   +' and Clientes_1.RazonSocial like ' +  QuotedStr('%' + trim(name.Text) + '%');
  end;
  if not Funciones.Listar(txtw,DataSet0) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con  Administrador',mtError,[mbok],0);
  Funciones.Free;
  if not DataSet0.IsEmpty then begin
   DBGrid1.Columns[0].Width:=60;
   DBGrid1.Columns[1].Width:=50;
   DBGrid1.Columns[2].Width:=50;
   DBGrid1.Columns[3].Width:=65;
   DBGrid1.Columns[4].Width:=100;
   DBGrid1.Columns[5].Width:=50;
   DBGrid1.Columns[6].Width:=50;
   DBGrid1.Columns[7].Width:=90;
   DBGrid1.Columns[8].Width:=60;
   DBGrid1.Columns[9].Width:=170;
   DBGrid1.Columns[10].Width:=150;
   DBGrid1.Columns[11].Width:=65;
   DBGrid1.Columns[12].Width:=50;
   DBGrid1.Columns[13].Width:=20;
   DBGrid1.Columns[14].Width:=200;
   DBGrid1.Columns[15].Width:=80;
  end;
 end;
end;

procedure TCon_Gral.Timer1Timer(Sender: TObject);
begin
 if lanovalta <> '0' then  begin
  Timer1.Enabled:=true;
  Label29.visible := not (Label29.visible);
  Label29.Repaint;
 end;
end;

procedure TCon_Gral.Label29Click(Sender: TObject);
begin
if lanovalta <> '0' then  begin
 Timer1.Enabled:=true;
 Timer1.Enabled := False;
end;
end;

procedure TCon_Gral.JvDBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var t:integer;
begin
  if trim(JvDBGrid2.Fields[13].Text) = 'sin Telefono' then t:=1
  else t:=2;
  case t of
   1:begin
    JvDBGrid2.Canvas.Brush.Color:=clLime;
    JvDBGrid2.Canvas.FillRect(Rect);
    JvDBGrid2.Canvas.Font.Color:= clBlack;
   end;
   2:begin
    JvDBGrid2.Canvas.Brush.Color:=clWindow;
    JvDBGrid2.Canvas.FillRect(Rect);
    JvDBGrid2.Canvas.Font.Color:= clBlack;
   end;
  end;
  JvDBGrid2.DefaultDrawColumnCell(Rect,Datacol,Column,State);
end;

procedure TCon_Gral.laprioridadExit(Sender: TObject);
begin
 if laprioridad.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe la Prioridad Ingresada!!',mterror,[mbok],0);
  laprioridad.SetFocus;
 end
 else begin
  if trim(laprioridad.Text) = 'ALTA' then label45.Caption := '1'
   else label45.Caption := '0';
 end;
end;

procedure TCon_Gral.laprioridadKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  gnovedad.SetFocus;
 end
 else begin
  if ( StrScan('ABCDEFGHIJKLMNÑOPQRSTUVWXYZ',Key) <> nil ) or  ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;
end;

procedure TCon_Gral.ActualizarTelefonos1Click(Sender: TObject);
begin
  PC1.ActivePage:=PC1.Pages[1];
  PC2.ActivePage:=PC2.Pages[1];
  PageControl1.ActivePage:=PageControl1.Pages[1];
  carac.SetFocus;
end;

procedure TCon_Gral.CARACExit(Sender: TObject);
begin
if (trim(CARAC.Text) = '') or (trim(CARAC.Text) = '0')  then begin
  messagedlg('Error!! No hay una Caracteristica de Telefono Ingresada.',mterror,[mbok],0);
  CARAC.SetFocus
end;
end;

procedure TCon_Gral.CARACKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  TELF.SetFocus;
end
else begin
  if ( StrScan('0123456789',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
   else Key := #0;
end;
end;

procedure TCon_Gral.TELFKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  ORIGEN.SetFocus;
end
else begin
  if ( StrScan('0123456789',Key) <> nil ) or  ( Key = Char(VK_BACK) ) then
   else Key := #0;
end;
end;

procedure TCon_Gral.ORIGENExit(Sender: TObject);
begin
if ORIGEN.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Origen Ingresado!!',mterror,[mbok],0);
  ORIGEN.SetFocus;
end;
end;

procedure TCon_Gral.ORIGENKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  if Modifica2.Enabled = true then Modifica2.SetFocus
  else begin
    Agrega2.Enabled:=true;
    Agrega2.SetFocus;
  end;
end;
end;

procedure TCon_Gral.grilla2Click(Sender: TObject);
begin
Agrega2.Enabled:=false;
Borra2.Enabled:=true;
Quita2.Enabled:=true;
Modifica2.Enabled:=true;
CARAC.Text:=trim(grilla2.Cells[2,grilla2.Row]);
TELF.Text:=trim(grilla2.Cells[3,grilla2.Row]);
ORIGEN.Text:=trim(grilla2.Cells[4,grilla2.Row]);
CARAC.SetFocus;
end;

procedure TCon_Gral.Agrega2Click(Sender: TObject);
var t:integer;
  function busca():boolean;
    var p:integer;
  begin
    busca:=true;
  if grilla2.Cells[0,1] <> '' then begin
    for p:=1 to grilla2.RowCount-1 do
      if (grilla2.Cells[2,p]=trim(CARAC.Text))
      and (grilla2.Cells[3,p]=trim(TELF.Text))
      and (grilla2.Cells[4,p]=trim(ORIGEN.Text)) then busca:=false;
  end;
  end;

begin
 if busca then begin
  if (grilla2.RowCount > 1) and (trim(grilla2.Cells[0,1])<>'') then begin
    t:=grilla2.RowCount;
    grilla2.RowCount:=grilla2.RowCount+1;
  end
  else t:=1;
  grilla2.Cells[0,t]:=completa1(inttostr(t),2,'0');
  grilla2.Cells[1,t]:='?';
  grilla2.Cells[2,t]:=trim(CARAC.Text);
  grilla2.Cells[3,t]:=trim(TELF.Text);
  grilla2.Cells[4,t]:=trim(ORIGEN.Text);
  grilla2.Cells[5,t]:=trim(IdCombos[0,origen.ItemIndex]);
  grilla2.Cells[6,t]:='X';
  if modifica2.Enabled = false then Agrega2.Enabled:=true;
  quita2.Enabled:=true;
 end
 else messagedlg('ERROR!! No Puede Existir dos N° Teléfonos del mismo Tipo y Número!!',mterror,[mbok],0);
 CARAC.SetFocus;
end;

procedure TCon_Gral.Modifica2Click(Sender: TObject);

  function busca(ht:integer):boolean;
    var p:integer;
  begin
    busca:=true;
  if grilla2.Cells[0,1] <> '' then begin
    for p:=1 to grilla2.RowCount-1 do
      if (grilla2.Cells[2,p]=trim(CARAC.Text))
      and (grilla2.Cells[3,p]=trim(TELF.Text))
      and (grilla2.Cells[4,p]=trim(ORIGEN.Text))
      and (ht<>p) then busca:=false;
  end;
  end;

begin
 if busca(grilla2.Row) then begin
  if grilla2.Cells[1,grilla2.Row] <> '?' then begin
    grilla2.Cells[6,grilla2.Row]:='X';
  end;
  grilla2.Cells[2,grilla2.Row]:=trim(CARAC.Text);
  grilla2.Cells[3,grilla2.Row]:=trim(TELF.Text);
  grilla2.Cells[4,grilla2.Row]:=trim(ORIGEN.Text);
  grilla2.Cells[5,grilla2.Row]:=trim(IdCombos[0,origen.ItemIndex]);
  Agrega2.Enabled:=false;
  Borra2.Enabled:=false;
  Modifica2.Enabled:=false;
  quita2.Enabled:=true;
  CARAC.SetFocus;
 end
 else messagedlg('ERROR!! No Puede Existir dos N° Teléfonos del mismo Tipo y Número!!',mterror,[mbok],0);
end;


procedure TCon_Gral.Quita2Click(Sender: TObject);
var ct:boolean;
var t:integer;
begin
 for t:=1 to grilla2.RowCount-1 do begin
  if trim(grilla2.Cells[1,t]) = '?' then begin     // ak se hace el INSERT por tener el id '?'
   clientestelefonos:=Tclientestelefonos.Create(nil);
   clientestelefonos.ConnectionString:=modulo2.Conexion;
   clientestelefonos.C_Cuif_IX1:=strtoint64(cuiftelef); //cuif.Text);
   clientestelefonos.C_NroTelefono:=strtoint(trim(grilla2.Cells[3,t]));
   clientestelefonos.C_Caracteristica:=strtoint(trim(grilla2.Cells[2,t]));
   clientestelefonos.C_TipoTelefono_IX2:=strtoint(trim(grilla2.Cells[5,t]));
   ct:=clientestelefonos.Agrega;
   clientestelefonos.Free;
   if ct then messagedlg('Se ha Guardado el telefono del Cliente Correctamente!!',mtConfirmation,[mbok],0)
    else messagedlg('ERROR!! Al Guardar el telefono del  Cliente!!',mterror,[mbok],0);
  end
  else begin
   if trim(grilla2.Cells[6,t]) = 'X' then begin  // ak se hace el UPDATE por ya tener el valor del id
    clientestelefonos:=Tclientestelefonos.Create(nil);
    clientestelefonos.ConnectionString:=modulo2.Conexion;
    clientestelefonos.C_IdTelefono_PK:=strtoint(trim(grilla2.Cells[1,t]));
    clientestelefonos.C_Cuif_IX1:=strtoint64(cuiftelef);//cuif.Text);
    clientestelefonos.C_NroTelefono:=strtoint(trim(grilla2.Cells[3,t]));
    clientestelefonos.C_Caracteristica:=strtoint(trim(grilla2.Cells[2,t]));
    clientestelefonos.C_TipoTelefono_IX2:=strtoint(trim(grilla2.Cells[5,t]));
    ct:=clientestelefonos.Modificar;
    clientestelefonos.Free;
    if ct then messagedlg('Se ha Modificado el telefono del Cliente Correctamente!!',mtConfirmation,[mbok],0)
     else messagedlg('ERROR!! Al Modificar el telefono del  Cliente!!',mterror,[mbok],0);
   end;
  end;
 end;
end;

procedure TCon_Gral.Borra2Click(Sender: TObject);
var t,p,gf:integer;
var bt:boolean;
begin
if trim(grilla2.Cells[0,1])<>'' then begin
  gf:=1;t:=0;
  if grilla2.Cells[1,grilla2.Row] = '?' then t:=1
  else gf:=messagedlg('Desea Borrar el N° Telefónico Seleccionado??' + chr(13)
       + 'Se eliminará definitivamente de la Base de Datos',mtWarning,[mbok,mbCancel],0);
  if gf = 1 then begin
   if t=0 then begin
    clientestelefonos:=Tclientestelefonos.Create(nil);
    clientestelefonos.ConnectionString:=modulo2.Conexion;
    bt:=clientestelefonos.Borrar(grilla2.Cells[1,grilla2.Row]);
    clientestelefonos.Free;
    if bt then  begin
     Barra1.SimpleText:='Se ha Borrado el telefono del Cliente';
    end
    else begin
     messagedlg('ERROR!! Al Borrar el telefono del  Cliente!!',mterror,[mbok],0);
     //Barra1.SimpleText:='Error ';
    end;
   end;
   t:=grilla2.Row;
   if (t >= 1) and (grilla2.RowCount > 2) then begin
     THackStringGrid(grilla2).DeleteRow(t);
   end
   else begin
     for t:=0 to grilla2.ColCount-1 do grilla2.Cells[t,1]:='';
   end;
  end;
  Borra2.Enabled:=false;
  Modifica2.Enabled:=false;
  CARAC.SetFocus;
end;
end;

procedure TCon_Gral.VerDeudaHastaFinAo1Click(Sender: TObject);
begin
button1.Click;
end;

procedure TCon_Gral.ODNIChange(Sender: TObject);
  var txtw:widestring;
begin
  if rb5.Checked  then begin
   if (length(trim(odni.Text))> 2) then begin
    DataSet0.Free;
    DataSet0:=TClientdataSet.Create(nil);
    DataSource0.DataSet:=DataSet0;
    Funciones:=TFuncionesVarias.Create(nil);
    Funciones.ConnectionString:=modulo2.Conexion;
    if RB5.Checked then begin
     txtw:='SELECT dbo.Parcelas.NroAccion, dbo.Parcelas.NroTitulo, dbo.Parcelas.Sector, dbo.Parcelas.CodigoPlaza, '
     +'dbo.TiposPlazas.Detalle, dbo.Parcelas.Parcela, dbo.Parcelas.NroActa, dbo.Parcelas.Nomenclatura,'
     +'dbo.Parcelas.EspacioVerde, dbo.Clientes.RazonSocial AS Cobrador, dbo.Parcelas.DomicilioCobro, dbo.Parcelas.Observacion,'
     +'dbo.Parcelas.NroCaja, dbo.ParcelasTitulares.NroTipoAcc,Clientes_1.RazonSocial,Clientes_1.Nrodni '
     +' FROM  dbo.Parcelas '
     +' INNER JOIN dbo.TiposPlazas ON dbo.Parcelas.IdPlaza = dbo.TiposPlazas.IdPlaza '
     +' INNER JOIN dbo.Clientes ON dbo.Parcelas.CuifCobrador = dbo.Clientes.Cuif '
     +' INNER JOIN dbo.ParcelasTitulares ON dbo.Parcelas.NroAccion = dbo.ParcelasTitulares.NroAccion '
     +' INNER JOIN dbo.Clientes AS Clientes_1 ON dbo.ParcelasTitulares.Cuif = Clientes_1.Cuif '
     +' WHERE (dbo.ParcelasTitulares.NroTipoAcc = 2)'
     +' and Clientes_1.Nrodni like ' +  QuotedStr(trim(odni.Text) + '%');
    end;
    if not Funciones.Listar(txtw,DataSet0) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con  Administrador',mtError,[mbok],0);
    Funciones.Free;
    if not DataSet0.IsEmpty then begin
     DBGrid1.Columns[0].Width:=60;
     DBGrid1.Columns[1].Width:=50;
     DBGrid1.Columns[2].Width:=50;
     DBGrid1.Columns[3].Width:=65;
     DBGrid1.Columns[4].Width:=100;
     DBGrid1.Columns[5].Width:=50;
     DBGrid1.Columns[6].Width:=50;
     DBGrid1.Columns[7].Width:=90;
     DBGrid1.Columns[8].Width:=60;
     DBGrid1.Columns[9].Width:=170;
     DBGrid1.Columns[10].Width:=150;
     DBGrid1.Columns[11].Width:=65;
     DBGrid1.Columns[12].Width:=50;
     DBGrid1.Columns[13].Width:=20;
     DBGrid1.Columns[14].Width:=200;
     DBGrid1.Columns[15].Width:=80;
    end;
   end;
  end;
end;

procedure TCon_Gral.JvDBGrid6DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var t:integer;
begin
  if trim(JvDBGrid6.Fields[13].Text) = '1' then t:=1
  else t:=2;
  case t of
   1:begin
    JvDBGrid6.Canvas.Brush.Color:=clYEllow;
    JvDBGrid6.Canvas.FillRect(Rect);
    JvDBGrid6.Canvas.Font.Color:= clBlack;
   end;
   2:begin
    JvDBGrid6.Canvas.Brush.Color:=clWindow;
    JvDBGrid6.Canvas.FillRect(Rect);
    JvDBGrid6.Canvas.Font.Color:= clBlack;
   end;
  end;
  JvDBGrid6.DefaultDrawColumnCell(Rect,Datacol,Column,State);
end;

procedure TCon_Gral.JvDBGrid5DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var t:integer;
begin
  if trim(JvDBGrid5.Fields[8].Text) = 'CTA. CTE.' then t:=1
  else t:=2;
  case t of
   1:begin
    JvDBGrid5.Canvas.Brush.Color:=clYEllow;
    JvDBGrid5.Canvas.FillRect(Rect);
    JvDBGrid5.Canvas.Font.Color:= clBlack;
   end;
   2:begin
    JvDBGrid5.Canvas.Brush.Color:=clWindow;
    JvDBGrid5.Canvas.FillRect(Rect);
    JvDBGrid5.Canvas.Font.Color:= clBlack;
   end;
  end;
  JvDBGrid5.DefaultDrawColumnCell(Rect,Datacol,Column,State);
end;

procedure TCon_Gral.StringAgrupPDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  dx: Integer;
begin
  with (Sender as TStringGrid) do
  begin
    // Don't change color for first Column, first row
    if (ACol = 0) or (ARow = 0) then
      Canvas.Brush.Color := clBtnFace
    else
    begin
      case ACol of
        1: Canvas.Font.Color := clBlack;
        2: Canvas.Font.Color := clBlue;
      end;
      // Draw the Band
      if ARow mod 2 = 0 then
        Canvas.Brush.Color := $00E1FFF9
      else
       Canvas.Brush.Color := $00FFEBDF;
       Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 2, cells[acol, arow]);
       Canvas.FrameRect(Rect);
    end;
  end;
end;

procedure TCon_Gral.StringAgrupDDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
//···············································································
   procedure WriteText(StringGrid: TStringGrid; ACanvas: TCanvas; const ARect: TRect;
     const Text: string; Format: Word);
   const
     DX = 2;
     DY = 2;
   var
     S: array[0..255] of Char;
     B, R: TRect;
   begin
     with Stringgrid, ACanvas, ARect do
     begin
       case Format of
         DT_LEFT: ExtTextOut(Handle, Left + DX, Top + DY,
             ETO_OPAQUE or ETO_CLIPPED, @ARect, StrPCopy(S, Text), Length(Text), nil);

         DT_RIGHT: ExtTextOut(Handle, Right - TextWidth(Text) - 3, Top + DY,
             ETO_OPAQUE or ETO_CLIPPED, @ARect, StrPCopy(S, Text),
             Length(Text), nil);

         DT_CENTER: ExtTextOut(Handle, Left + (Right - Left - TextWidth(Text)) div 2,
             Top + DY, ETO_OPAQUE or ETO_CLIPPED, @ARect,
             StrPCopy(S, Text), Length(Text), nil);
       end;
     end;
   end;
   
   //···············································································
   procedure Display(StringGrid: TStringGrid; const S: string; Alignment: TAlignment;
                     BackColor:TColor=-1; OnlyColor:Boolean=False);
   const
     Formats: array[TAlignment] of Word = (DT_LEFT, DT_RIGHT, DT_CENTER);
   var
     _Align:TAlignment;
   begin
      // Fila fija?  ==> Salimos
      if (ARow < StringGrid.FixedRows) then begin
        Exit;
      end;

      // Color diferente de -1?
      if (BackColor <> -1) and (not (gdSelected in State)) then begin
        StringGrid.Canvas.Brush.Style := bsSolid;
        StringGrid.Canvas.Brush.Color := BackColor;
        StringGrid.Canvas.FillRect(Rect);
      end;

      // asignado
      _Align := Alignment;

      // Sólo color?
      if not (OnlyColor) then begin
        _Align := taLeftJustify;
      end;

      // Texto
      WriteText(StringGrid, StringGrid.Canvas, Rect, S, Formats[_Align]);
   end;
   //···············································································

var  s: String;
begin
  with Sender as TStringGrid do
  begin
  s := Cells[8, ARow];   // el 19 es la columna de donde comparo la 'palabra' para pintar la fila
    if trim(s)= 'X' then begin
         Display(StringAgrupD, StringAgrupD.Cells[ACol, ARow], taLeftJustify, cLAqua, True);
    end;
end;

end;


end.

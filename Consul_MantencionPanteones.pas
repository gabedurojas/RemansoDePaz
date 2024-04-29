unit Consul_MantencionPanteones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,DBClient, StdCtrls, DBCtrls, Grids, DBGrids, ComCtrls, StrUtils,
  DB, Mask,ADODB, Buttons, ExtCtrls, JvExDBGrids, JvDBGrid, RpDefine,
  RpBase, RpSystem, JvgPage, JvExButtons, JvBitBtn, WSDLIntf, ClaseFunciones,
  ToolWin, JvExComCtrls, JvComCtrls, ImgList,ClaseSistemas,ClaseParcelas,ClaseParcelasNovedades,
  Menus;

type LosDts = class(TDataSource);
type HackTable = class(TADOTable);
type
  TConsul_Panteones = class(TForm)
    Barra1: TStatusBar;
    DataSource0: TDataSource;
    Rv: TRvSystem;
    PC1: TJvgPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TJvDBGrid;
    TabSheet3: TTabSheet;
    DataSource3: TDataSource;
    ToolBar1: TToolBar;
    ImpPDF: TBitBtn;
    Imprime: TJvBitBtn;
    Exporta: TJvBitBtn;
    sale: TJvBitBtn;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    DataSource8: TDataSource;
    Image1: TImage;
    todos: TRichEdit;
    DataSource9: TDataSource;
    ImageList1: TImageList;
    DataSource11: TDataSource;
    GroupBox8: TGroupBox;
    dmante: TEdit;
    Label21: TLabel;
    Label27: TLabel;
    DataSource13: TDataSource;
    Label32: TLabel;
    Edit3: TEdit;
    Label33: TLabel;
    Edit2: TEdit;
    DataSource14: TDataSource;
    T8: TClientDataSet;
    JvBitBtn1: TJvBitBtn;
    PopupMenu1: TPopupMenu;
    VerDeudaHastaFinAo1: TMenuItem;
    VerSoloDeuda1: TMenuItem;
    RvS: TRvSystem;
    TP: TClientDataSet;
    RvEC: TRvSystem;
    GroupBox10: TGroupBox;
    Label39: TLabel;
    Button3: TButton;
    ODNI: TEdit;
    Label31: TLabel;
    PERIODO: TComboBox;
    PC2: TJvgPageControl;
    TabSheet9: TTabSheet;
    Splitter1: TSplitter;
    PageControl1: TPageControl;
    TabSheet10: TTabSheet;
    Label15: TLabel;
    Label7: TLabel;
    Label13: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label11: TLabel;
    Label2: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label26: TLabel;
    Label12: TLabel;
    Label1: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label18: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Image2: TImage;
    D1: TDBEdit;
    D2: TDBEdit;
    D3: TDBEdit;
    D4: TDBEdit;
    D5: TDBEdit;
    D6: TDBEdit;
    D7: TDBEdit;
    D8: TDBEdit;
    D9: TDBEdit;
    D11: TDBEdit;
    D10: TDBEdit;
    D12: TDBEdit;
    D13: TDBEdit;
    D14: TDBEdit;
    D15: TDBEdit;
    D16: TDBEdit;
    D17: TDBEdit;
    D18: TDBEdit;
    D19: TDBEdit;
    D20: TDBEdit;
    D21: TDBEdit;
    TabSheet5: TTabSheet;
    GroupBox4: TGroupBox;
    JvDBGrid3: TJvDBGrid;
    Panel1: TPanel;
    R2: TRadioButton;
    R1: TRadioButton;
    TabSheet8: TTabSheet;
    JvDBGrid8: TJvDBGrid;
    GroupBox1: TGroupBox;
    Label34: TLabel;
    Label35: TLabel;
    JvDBGrid10: TJvDBGrid;
    Edit4: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    JvBitBtn2: TJvBitBtn;
    LasDeudas: TStringGrid;
    StringAgrupP: TStringGrid;
    StringAgrupD: TStringGrid;
    Panel2: TPanel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Edit7: TEdit;
    BitBtn1: TBitBtn;
    Edit8: TEdit;
    TabSheet2: TTabSheet;
    StringGridUP: TStringGrid;
    procedure FormActivate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure ImpPDFClick(Sender: TObject);
    procedure RvPrint(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure JvBitBtn3Click(Sender: TObject);
    procedure ExportaClick(Sender: TObject);
    procedure ImprimeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PERIODOKeyPress(Sender: TObject; var Key: Char);
    procedure PERIODOExit(Sender: TObject);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure JvDBGrid8CellClick(Column: TColumn);
    procedure Button1Click(Sender: TObject);
    procedure StringAgrupDClick(Sender: TObject);
    procedure Sumadeuda(nro:byte);
    procedure JvBitBtn2Click(Sender: TObject);
    procedure RvECPrint(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit7Exit(Sender: TObject);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure RvECAfterPrint(Sender: TObject);
    procedure Edit8KeyPress(Sender: TObject; var Key: Char);
    procedure Edit8Exit(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    control,gh:boolean;{Controla que no hubiere errores en la carga de datos}
    Funciones:TFuncionesVarias;
    Parcelas:TParcelas;
    cantidinhu,ger,nronov:integer;
    ultimogestorpago:string;
    Sistemas:TSistemas;
    sumdeuda:double;
    CUOTAS,ULTIMOP,MANTEPAGOS: TADODataSet;
    DataSet,DataSet0,DataSet1,DataSet2,DataSet3,DataSet4,DataSet5,DataSet6,DataSet7,
    DataSet8,DataSet9,DataClie,Datos,DataSet11,DataSet12,DataMante,DtCombo,DtComboPre,
    DataSet13,DataSet14,DataSetCuotasVta,DataSetCuotasServ,DataSetConso,
    DataSetMantePagos,DataSetUltCobrador:TClientDataSet; //declaro los DataSet
    IdCombos:array of array of string; // para los combobox
    ///// para la impresion de datos segun parametros
    PosH1:Array [0..9] of Double;//Posiciones
    Camp1:Array [0..9] of Integer;//Campos a Tomar en cuenta
    TxtCamp1:Array [0..9] of String;//Textos de los Campos a Tomar en cuenta
    FechaActual,valormante,elmes,elanio,txtfecha,mes,anio,elperiodo:string;

    PosH:Array [0..2] of Double;//Posiciones
    Camp:Array [0..2] of Integer;//Campos a Tomar en cuenta
    TxtCamp:Array [0..2] of String;//Textos de los Campos a Tomar en cuenta

    PosH2:Array [0..8] of Double;//Posiciones
    Camp2:Array [0..8] of Integer;//Campos a Tomar en cuenta
    TxtCamp2:Array [0..8] of String;//Textos de los Campos a Tomar en cuenta
    { Private declarations }
  public
    Resultado: string;
    ParcelasNovedades:TParcelasNovedades;
    // aca instancio la clase si la clase esta definida en el uses de la ventana
  end;

var
  Consul_Panteones: TConsul_Panteones;

implementation

uses Unidad, Modulo,AM_VenGenerica, ClaseParcelasVentas,CalculoSaldosAutom;

{$R *.dfm}

procedure TConsul_Panteones.FormCreate(Sender: TObject);
begin
gh:=false;
end;


procedure TConsul_Panteones.FormActivate(Sender: TObject);

begin
if not(gh) then begin
  gh:=true;
  imprime.Enabled:=false;
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
  coloca1(13);
  coloca1(0);
  StringAgrupD.Cells[0,0]:='Periodo';
  StringAgrupD.Cells[1,0]:='Imp.Cuota';
  StringAgrupD.Cells[2,0]:='Interes';
  StringAgrupD.Cells[3,0]:='TotalCuota';
  StringAgrupD.Cells[4,0]:='EstadoVto';
  StringAgrupD.Cells[5,0]:='EstadoPago';
  StringAgrupD.Cells[6,0]:='FechaCobro';
  StringAgrupD.Cells[7,0]:='NroComprob.';
  StringAgrupD.Cells[8,0]:='ImpCobrado';

  StringAgrupP.Cells[0,0]:='Periodo';
  StringAgrupP.Cells[1,0]:='Imp.Cuota';
  StringAgrupP.Cells[2,0]:='EstadoPago';
  StringAgrupP.Cells[3,0]:='FechaCobro';
  StringAgrupP.Cells[4,0]:='NroComprob.';
  StringAgrupP.Cells[5,0]:='ImpoCobrado';
  StringAgrupP.Cells[6,0]:='';
  StringAgrupP.Cells[7,0]:='';
  StringAgrupP.Cells[8,0]:='';
  MANTEPAGOS:=TADODataSet.Create(nil);
  MANTEPAGOS.ConnectionString:=modulo2.Conexion;
end;
end;

procedure TConsul_Panteones.Coloca1(nro:byte);
var t,y,p,u:integer;
    txt,sex,Sector,Dato:string;
    txtw:widestring;
    NroDni,NroCuif,ValNull,NroAcc,NroPar,NroActa:variant;
    ParacVentas:TParcelasVentas;
    Param:TWideStrings;
begin
ValNull:=null;
if nro=0 then begin
  DataSet0.Free;
  DataSet0:=TClientdataSet.Create(nil);
  DataSource0.DataSet:=DataSet0;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='select Id,NroCuenta ,Clientes.RazonSocial,convert(char(10),FechaInicioDeuda,103) as FechaInicioDeuda'
   + ',CuifTitular from PanteonesClientes inner join Clientes on Clientes.Cuif = PanteonesClientes.CuifTitular';
  if not Funciones.Listar(txtw,DataSet0)  then
   messagedlg('ERROR al realizar Transac-SQL. Consulte con  Administrador',mtError,[mbok],0);
  Funciones.Free;
  if DataSet0.IsEmpty then begin
    messagedlg('ATENCION NroAccion Inexistente', mtError,[mbok],0);
    imprime.Enabled:=false;
  end
  else begin
    NroCuif:=trim(DataSet0.Fields[4].AsString);
    imprime.Enabled:=true;
  end;
  DBGrid1.Columns[4].Width:=110;
end;
if nro=4 then begin   /// Inhumados
  DataSet3.Free;
  DataSet3:=TClientdataSet.Create(nil);
  DataSource3.DataSet:=DataSet3;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if not Funciones.Run_Fn_VistaParcelasInhumados(ValNull,strtoint(trim(odni.Text)),ValNull,'',ValNull,'','',DataSet3,'',0) then
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
if nro=8 then begin   /// ultimo cobrador que cobro
  DataSetUltCobrador.Free;
  DataSetUltCobrador:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT nrogestor FROM UltimosPagosxGestor ( ' + trim(odni.Text) + ')';
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
  txtw:='select Periodo,importecuota,totalcuota,estadovto,estadopago,origenpago,fechacobro,nrocomprobante,deudaacum '
  + 'from EstadoCuentaPanteonesAcum (' + DataSet0.Fields[1].AsString
  + ',' + chr(39)+  txtfecha +chr(39) +',5,' +trim(edit7.Text) + ','+trim(edit8.Text)+')';
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
    ///JvDBGrid8.Columns[8].Width:=65;
    try
      datasource8.dataset.disablecontrols;
      datasource8.dataset.first;
      while not datasource8.dataset.eof do
      begin
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
if nro=13 then begin
  DtComboPre.Free;
  DtComboPre:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT ImporteNormal FROM ParcelasMantenimientoPrecios WHERE (FechaFin IS NULL)' ;
  if not Funciones.Listar(txtw,DtComboPre) then  messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador', mtError,[mbok],0);
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
  txtw:='SELECT totalcuota FROM EstadoCuentaPanteones ( ' + trim(odni.Text) + ',' + chr(39)+  txtfecha +chr(39) +',0) where Periodo = 999999';
  if not Funciones.Listar(txtw,DataSet) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if not DataSet.IsEmpty then begin
     dmante.Text:=DataSet.Fields[0].AsString;
  end
  else begin
    dmante.Text:='00.00';
  end;
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
  txtw:='SELECT left(periodo,4) as anio,COUNT(*) as Cantcuotas FROM EstadoCuentaPanteones ( ' + DataSet0.Fields[1].AsString +',' + chr(39)+  txtfecha +chr(39) +',0) '
  + 'where Periodo <> 999999 and Estadopago =''deuda'' and EstadoVto <> ''sin vencer'' group by left(periodo,4)';
  if not Funciones.Listar(txtw,DataSet12) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  CUOTAS.Close;
  CUOTAS.CommandText:=' exec EstadoCuentaPanteonesMin ' + trim(odni.Text) + ',' + chr(39) + txtfecha + chr(39) ;
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
  if not Funciones.Listar('SELECT * FROM PeriodoImpresion (' + chr(39) + FechaActual + chr(39) + ')',DtCombo) then
  else begin
    for t:=1 to DtCombo.RecordCount  do begin
      DtCombo.RecNo:=t;
      PERIODO.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
    end;
  end;
  Funciones.Free;
  PERIODO.ItemIndex:=0;
end;
if nro=17 then begin
  ULTIMOP.Close;
  ULTIMOP.CommandText:='SELECT * FROM UltimosPagosxAccionPanteon (' + DataSet0.Fields[1].AsString +')';
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
if nro=19 then  begin
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
  + 'EstadoVto,EstadoPago,FechaCobro,NroComprobante,ImporteCobrado as ImpCobrado FROM EstadoCuentaPanteones'
  + ' ( ' + DataSet0.Fields[1].AsString + ',' + chr(39)+  txtfecha +chr(39) +',0) where Periodo <> 999999 order by 1';
  if not Funciones.Listar(txtw,DataSet11) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if not DataSet11.IsEmpty then begin
    MANTEPAGOS.Close;
    MANTEPAGOS.CommandText:='SELECT Periodo,ImporteCuota,InteresAcumulado as Interes,TotalCuota, '
    + 'EstadoVto,EstadoPago,FechaCobro,NroComprobante,ImporteCobrado as ImpCobrado FROM EstadoCuentaPanteones'
    + ' ( ' + DataSet0.Fields[1].AsString + ',' + chr(39)+  txtfecha +chr(39) +',0) where Periodo <> 999999 and EstadoPago=''PAGADO'' order by 1 desc';
    MANTEPAGOS.Open;
    for t:=1 to MANTEPAGOS.RecordCount do begin
      MANTEPAGOS.RecNo:=t;
      StringAgrupP.RowCount:=t+1;
      StringAgrupP.Cells[0,t]:=trim(MANTEPAGOS.Fields[0].AsString);
      StringAgrupP.Cells[1,t]:=trim(MANTEPAGOS.Fields[1].AsString);
      StringAgrupP.Cells[2,t]:=trim(MANTEPAGOS.Fields[5].AsString);
      StringAgrupP.Cells[3,t]:=trim(MANTEPAGOS.Fields[6].AsString);
      StringAgrupP.Cells[4,t]:=trim(MANTEPAGOS.Fields[7].AsString);
      StringAgrupP.Cells[5,t]:=trim(MANTEPAGOS.Fields[8].AsString);
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
     StringAgrupD.Cells[6,t]:=trim(Dataset11.Fields[6].AsString);
     StringAgrupD.Cells[7,t]:=trim(Dataset11.Fields[7].AsString);
     StringAgrupD.Cells[8,t]:='';
    end;
  end;
end;
end;

procedure TConsul_Panteones.ImpPDFClick(Sender: TObject);
begin
  rv.DefaultDest := rdFile;
  rv.DoNativeOutput := False;
  rv.RenderObject := modulo2.RvRenderPDF1;
  // esto es si queremos guardar el pdf en la maquina
  if FileExists(modulo2.path_todo + '\Imagenes\ConsultaCliente') then
      deletefile(modulo2.path_todo + '\Imagenes\ConsultaCliente');
  rv.OutputFileName := modulo2.path_todo + '\Imagenes\ConsultaCliente.pdf';
  rv.SystemSetups := rv.SystemSetups - [ssAllowSetup];
  Rv.Execute;
end;

procedure TConsul_Panteones.RvPrint(Sender: TObject);
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
  posfx:=5.5;posfy:=5;
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

    BaseReport.PrintXY(posfx+3,posfy+24,'1º)   Titular:  ' + trim(edit3.Text));
    BaseReport.PrintXY(posfx+3,posfy+28,'             Dni:');
    BaseReport.PrintXY(posfx+3,posfy+32,'Dom. Legal:');
    BaseReport.PrintXY(posfx+3,posfy+38,'Telefonos:');

   { BaseReport.PrintXY(posfx+3,posfy+44,'2º)   Titular:');
    BaseReport.PrintXY(posfx+3,posfy+48,'             Dni:');
    BaseReport.PrintXY(posfx+3,posfy+52,'Dom. Legal:');
    BaseReport.PrintXY(posfx+3,posfy+58,'Telefonos:');

    BaseReport.PrintXY(posfx+3,posfy+64,'3º)   Titular:');
    BaseReport.PrintXY(posfx+3,posfy+68,'             Dni:');
    BaseReport.PrintXY(posfx+3,posfy+72,'Dom. Legal:');
    BaseReport.PrintXY(posfx+3,posfy+78,'Telefonos:');  }

    BaseReport.SetFont('Arial Black',9);
    BaseReport.FontColor:=clBlack;
    BaseReport.RoundRect(posfx+120,posfy+58,posfx+170,posfy+63,5,5);
    BaseReport.PrintXY(posfx+129,posfy+62,'Datos de la Acción');


    BaseReport.SetFont('Arial',8);
    BaseReport.FontColor:=clBlack;
    BaseReport.PrintXY(posfx+102,posfy+67,'N° TITULO:  ' + trim(odni.Text)) ;
    BaseReport.PrintXY(posfx+153,posfy+67,'Nº Caja:');
    BaseReport.PrintXY(posfx+102,posfy+72,'Sector:');
    BaseReport.PrintXY(posfx+127,posfy+72,'Parcela:');
    BaseReport.PrintXY(posfx+153,posfy+72,'Plaza:');
    BaseReport.PrintXY(posfx+102,posfy+77,'Fecha Cesión:  ' + trim(edit2.Text));
    BaseReport.PrintXY(posfx+153,posfy+77,'Inhumados:');
    //BaseReport.PrintXY(posfx+102,posfy+82,'GESTOR:');

    BaseReport.SetFont('Arial Black',8);
    BaseReport.FontColor:=clBlack;
    BaseReport.RoundRect(posfx+3,posfy+80,posfx+97,posfy+84,5,5);
    BaseReport.PrintXY(posfx+4,posfy+83,'Valor del Mantenimiento del mes $' + valormante);

    BaseReport.SetFont('Arial ',7);
    BaseReport.FontColor:=clBlack;
    BaseReport.SetFont('Arial Black',7);
    BaseReport.FontColor:=clBlack;
    Pos5:=0;
    //Imprimiendo Titulares
    //if Datasource0.DataSet.RecordCount > 0 then begin
    //  for t:=1 to Datasource0.DataSet.RecordCount do begin
    //      Datasource0.DataSet.RecNo:=t;
    //      BaseReport.PrintXY(posfx+Pos3+19,posfy+Pos4+24 + Pos5,Datasource2.DataSet.Fields[2].AsString);
    //      BaseReport.PrintXY(posfx+Pos3+19,posfy+Pos4+28 + Pos5,Datasource2.DataSet.Fields[3].AsString);
    //      BaseReport.PrintXY(posfx+Pos3+19,posfy+Pos4+32 + Pos5,strcut_midle(trim(Datasource2.DataSet.Fields[4].AsString),1,50));
    //      BaseReport.PrintXY(posfx+Pos3+19,posfy+Pos4+36 + Pos5,strcut_midle(trim(Datasource2.DataSet.Fields[4].AsString),51,100));
    //      BaseReport.PrintXY(posfx+Pos3+19,posfy+Pos4+38 + Pos5,Datasource2.DataSet.Fields[13].AsString);
    //     Pos5:=Pos5 + 20; //24
    //  end;
    //end;

    //Imprimiendo Datos de la Acción
    //BaseReport.SetFont('Arial Black',9);
    //BaseReport.FontColor:=clBlack;
    //BaseReport.PrintXY(posfx+Pos3+117,posfy+Pos4+67,Datasource2.DataSet.Fields[0].AsString + '.-');
    //BaseReport.PrintXY(posfx+Pos3+165,posfy+Pos4+67,Datasource2.DataSet.Fields[16].AsString);
    //BaseReport.PrintXY(posfx+Pos3+113,posfy+Pos4+72,Datasource2.DataSet.Fields[10].AsString);
    //BaseReport.PrintXY(posfx+Pos3+139,posfy+Pos4+72,Datasource2.DataSet.Fields[5].AsString);
    //BaseReport.PrintXY(posfx+Pos3+163,posfy+Pos4+72,Datasource2.DataSet.Fields[9].AsString);
    //BaseReport.PrintXY(posfx+Pos3+125,posfy+Pos4+77,Datasource2.DataSet.Fields[6].AsString);
    //BaseReport.PrintXY(posfx+Pos3+172,posfy+Pos4+77,inttostr(cantidinhu));
    //BaseReport.SetFont('Arial Black',7);
    //BaseReport.FontColor:=clBlack;
    //BaseReport.PrintXY(posfx+Pos3+117,posfy+Pos4+82,Datasource2.DataSet.Fields[14].AsString);

    //Imprimiendo la Cuenta
    //BaseReport.SetFont('Arial Black',9);
    //BaseReport.FontColor:=clBlack;
    BaseReport.PrintXY(posfx+Pos3+126,posfy+Pos4+27,FechaActual);
    BaseReport.PrintXY(posfx+Pos3+175,posfy+Pos4+27,PERIODO.Text);
    //tot:=0;       tot1:=0;
    //totv:=0;      tots:=0;
    //totc:=0;      totm:=0;

    BaseReport.Rectangle(posfx+Pos3+93.5,posfy+Pos4+30,posfx+Pos3+195,posfy+Pos4+34);   
    //BaseReport.Rectangle(posfx+Pos3+101,posfy+Pos4+30,posfx+Pos3+125,posfy+Pos4+34);
    //BaseReport.Rectangle(posfx+Pos3+140,posfy+Pos4+30,posfx+Pos3+165,posfy+Pos4+34);
    //BaseReport.Rectangle(posfx+Pos3+178,posfy+Pos4+30,posfx+Pos3+195,posfy+Pos4+34);
    BaseReport.SetFont('Arial Black',7);
    BaseReport.FontColor:=clBlack;
    BaseReport.PrintXY(posfx+Pos3+105,posfy+Pos4+33,'Detalle');
    BaseReport.PrintXY(posfx+Pos3+130,posfy+Pos4+33,'CtasDeudas');
    BaseReport.PrintXY(posfx+Pos3+155,posfy+Pos4+33,'Imp.Cuota');
    BaseReport.PrintXY(posfx+Pos3+166,posfy+Pos4+33,'Importe');
    Pos5:=posfy+Pos4+34 + 4;

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
    BaseReport.PrintXY(posfx+45,Pos5+41,' -------- DETALLE DE CUOTAS ADEUDADAS DE MANTENIMIENTO ----------');
    BaseReport.MoveTo(posfx+Pos3+177,Pos5);

    salto:=3;
    Pos5:=Pos5 + 45;
    BaseReport.SetFont('Arial Black',7);
    BaseReport.FontColor:=clBlack;
    BaseReport.PrintXY(posfx+3,Pos5,'AÑO    ENERO     FEBRERO     MARZO     ' +
      '  ABRIL      MAYO     JUNIO     JULIO     AGOSTO   SEPTIEMBRE     ' +
      'OCTUBRE    NOVIEMBRE  DICIEMBRE');
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

    BaseReport.PrintXY(posfx+3,Pos5 + salto ,'Movimiento       NºComprobante  TipoComprobante  FechaCobro   Importe');
    Pos5:=Pos5 + salto + 2;
    for t:=1 to Datasource14.DataSet.RecordCount  do  begin
    BaseReport.SetFont('Arial',6);
    BaseReport.FontColor:=clBlack;
    BaseReport.PrintXY(posfx+3,Pos5,StringGridUP.Cells[0,t]);
    BaseReport.PrintXY(posfx+18,Pos5,StringGridUP.Cells[2,t] + ' - ' + StringGridUP.Cells[1,t]);
    BaseReport.PrintXY(posfx+45,Pos5,'Fec.Cob:' + StringGridUP.Cells[3,t]);
    BaseReport.PrintXY(posfx+65,Pos5,'Imp. $'+StringGridUP.Cells[4,t] + ' - ' +StringGridUP.Cells[5,t]);
    Pos5:=Pos5 + salto;
    end;
  end;
except
end;
end;


procedure TConsul_Panteones.DBGrid1CellClick(Column: TColumn);
var t,gf:integer;
    txt:string;
begin
 if not (DataSet0.IsEmpty) then begin
  odni.Text:=trim(DataSet0.Fields[1].AsString);
  edit3.Text:=trim(DataSet0.Fields[2].AsString);
  edit2.Text:=trim(DataSet0.Fields[3].AsString);
  control:=true;
  //Coloca1(2);  //traemos los telefonos
  Coloca1(14);
  coloca1(15);
  Coloca1(17);
  Coloca1(19);
  imprime.Visible:=true;
  periodo.SetFocus;
 end;
end;

procedure TConsul_Panteones.JvBitBtn3Click(Sender: TObject);
begin
Close;
end;

procedure TConsul_Panteones.ExportaClick(Sender: TObject);
var texto:widestring;
var txt:string;
var t,y:integer;
begin
todos.Clear;
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
messagedlgpos('Se Copiaron los Datos, listo para pegarlos a Excel',mtConfirmation,[mbok],0,screen.Width div 3,screen.Height div 3);
end;

procedure TConsul_Panteones.ImprimeClick(Sender: TObject);
var gf:integer;
begin
gf:=messagedlg('Desea Imprimir la consulta de Clientes?',mtWarning,[mbok,mbCancel],0);
if gf = 1 then Rv.Execute;
end;

procedure TConsul_Panteones.PERIODOKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  odni.SetFocus;
END;
end;

procedure TConsul_Panteones.PERIODOExit(Sender: TObject);
begin
if PERIODO.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Periodo Ingresado!!',mterror,[mbok],0);
  PERIODO.SetFocus;
end;
end;

procedure TConsul_Panteones.JvBitBtn1Click(Sender: TObject);
begin
  PC1.ActivePage:=PC1.Pages[1];
  PC2.ActivePage:=PC2.Pages[2];
end;

procedure TConsul_Panteones.JvDBGrid8CellClick(Column: TColumn);
begin
 if (trim(DataSet8.Fields[12].AsString)='')  then DataSet8.Fields[12].Text:='X';
end;

procedure TConsul_Panteones.Button1Click(Sender: TObject);
var p:integer;
begin
for p:=1 to StringAgrupD.RowCount-1 do
   if StringAgrupD.Cells[8,p]='X' then StringAgrupD.Cells[8,p]:='';
edit4.Text:='00.00';
edit5.Text:='0';
end;

procedure TConsul_Panteones.StringAgrupDClick(Sender: TObject);
begin
 if (trim(StringAgrupD.Cells[8,StringAgrupD.Row])='') and (trim(StringAgrupD.Cells[5,StringAgrupD.Row])='DEUDA') then
   StringAgrupD.Cells[8,StringAgrupD.Row]:='X';
   sumaDeuda(1);
end;

procedure TConsul_Panteones.Sumadeuda(nro:byte);
var t,sum:integer;
    total:real;
begin
total:=0;
sum:=0;
if nro= 1 then  begin
   for t:=1 to StringAgrupD.RowCount-1 do begin
     if trim(StringAgrupD.Cells[8,t]) = 'X' then begin
       total:= total + strtofloat(StringAgrupD.Cells[3,t]) ;
       sum:= sum + 1;
     end;
 end;
   edit4.Text:=floattostr(total);
   edit5.Text:=inttostr(sum);
end;
end;
procedure TConsul_Panteones.JvBitBtn2Click(Sender: TObject);
var gf:integer;
begin
// panel2.Visible:=true;
// edit7.SetFocus;
//gf:=messagedlg('Desea Imprimir el Estado De Cuenta de esta Accion?',mtWarning,[mbok,mbCancel],0);
//if gf = 1 then RvEC.Execute;
end;


procedure TConsul_Panteones.RvECPrint(Sender: TObject);
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
     RvEC.BaseReport.PrintXY(posfx+34,posfy+17,'ESTADO  DE CUENTA DE LA ACCION: ' + TRIM(ODNI.Text) + ' -  AL PERIODO: ' + TRIM(PERIODO.TEXT));

     RvEC.BaseReport.SetFont('Arial Black',9);
     RvEC.BaseReport.FontColor:=clBlack;
     RvEC.BaseReport.RoundRect(posfx+5,posfy+28,posfx+80,posfy+33,5,5);
     RvEC.BaseReport.PrintXY(posfx+10,posfy+32,'Titulares');
     RvEC.BaseReport.SetFont('Arial Black',8);
     RvEC.BaseReport.FontColor:=clBlack;
     Pos5:=0;
     //Imprimiendo Titulares
     //if Datasource2.DataSet.RecordCount > 0 then  begin
     //  for t:=1 to Datasource2.DataSet.RecordCount do begin
     //     Datasource2.DataSet.RecNo:=t;
     //     RvEC.BaseReport.PrintXY(posfx+5,posfy+40 + Pos5,Datasource2.DataSet.Fields[8].AsString + ' - ' + Datasource2.DataSet.Fields[2].AsString);
     //    Pos5:=Pos5 + 5; //24
     //  end;
     //end;
     RvEC.BaseReport.RoundRect(posfx+120,posfy+28,posfx+170,posfy+33,5,5);
     RvEC.BaseReport.PrintXY(posfx+129,posfy+32,'Datos de la Acción');

     RvEC.BaseReport.SetFont('Arial',8);
     RvEC.BaseReport.FontColor:=clBlack;
     RvEC.BaseReport.PrintXY(posfx+102,posfy+37,'N° TITULO: ' + DataSource0.DataSet.Fields[0].AsString);
     RvEC.BaseReport.PrintXY(posfx+102,posfy+42,'Sector: ' + DataSource0.DataSet.Fields[2].AsString);
     RvEC.BaseReport.PrintXY(posfx+127,posfy+42,'Parcela: ' + DataSource0.DataSet.Fields[4].AsString);
     RvEC.BaseReport.PrintXY(posfx+153,posfy+42,'Plaza: ' + DataSource0.DataSet.Fields[21].AsString);
     RvEC.BaseReport.PrintXY(posfx+102,posfy+47,'Inhumados: '+ inttostr(cantidinhu));
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
  {Periodo,importecuota,totalcuota,estadovto,estadopago,origenpago,fechacobro,nrocomprobante,deudaacum}

  Camp2[0]:=0; Camp2[1]:=1; Camp2[2]:=2;  Camp2[3]:=3; Camp2[4]:=4; Camp2[5]:= 5;
  Camp2[6]:=6; Camp2[7]:=7; Camp2[8]:=8;
  TxtCamp2[0]:='Periodo';    TxtCamp2[1]:='ValorMantenimiento'; TxtCamp2[2]:='Deuda/Mes';
  TxtCamp2[3]:='EstadoVto';  TxtCamp2[4]:='EstadoPago';  TxtCamp2[5]:='OrigenPago';
  TxtCamp2[6]:='FechaCobro'; TxtCamp2[7]:='NroComprobante';  TxtCamp2[8]:='DeudaAcum';
  PosH2[0]:=3;   PosH2[1]:=20;  PosH2[2]:=45; PosH2[3]:=65;   PosH2[4]:=90;
  PosH2[5]:=110; PosH2[6]:=130; PosH2[7]:=150; PosH2[8]:=180;

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
  // RvEC.BaseReport.PrintXY(posfx+140,posfy+10,'Deuda Acum :  $ '+  floattostr(sumdeuda));
  if pso then posfy:=GrillaRecuadro(posfx,final,posfy+2);
 except
end;
end;

procedure TConsul_Panteones.BitBtn1Click(Sender: TObject);
var gf:integer;
begin
Coloca1(9);
gf:=messagedlg('Desea Imprimir el Estado De Cuenta de esta Accion?',mtWarning,[mbok,mbCancel],0);
if gf = 1 then RvEC.Execute;
end;

procedure TConsul_Panteones.Edit7Exit(Sender: TObject);
begin
if trim(Edit7.Text)='' then Edit7.Text:='0000';
if trim(Edit7.Text)='0' then Edit7.Text:='0000';

if trim(Edit7.Text) = '0000' then begin
  messagedlg('ERROR!!... El Periodo DESDE no puede tener el valor 0 (Cero)'
  ,mterror,[mbok],0);
  edit7.Text:=elperiodo;
  Edit7.SetFocus;
end;
end;

procedure TConsul_Panteones.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  edit8.SetFocus;
end;
end;

procedure TConsul_Panteones.RvECAfterPrint(Sender: TObject);
begin
panel2.Visible:=false;
end;

procedure TConsul_Panteones.Edit8KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  BitBtn1.SetFocus;
end;
end;

procedure TConsul_Panteones.Edit8Exit(Sender: TObject);
begin
if trim(Edit8.Text)='' then Edit7.Text:='0000';
if trim(Edit8.Text)='0' then Edit7.Text:='0000';
if trim(Edit8.Text) = '0000' then begin
  messagedlg('ERROR!!... El Periodo HASTA no puede tener el valor 0 (Cero)'
  ,mterror,[mbok],0);
  edit8.Text:=ELAnio;
  Edit8.SetFocus;
end;
end;

procedure TConsul_Panteones.Button3Click(Sender: TObject);
begin
  PC1.ActivePage:=PC1.Pages[1];
  PC2.ActivePage:=PC2.Pages[2];
end;

end.

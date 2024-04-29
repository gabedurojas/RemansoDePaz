unit Consul_PorAccionl;

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
  TConsul_GralXAccion = class(TForm)
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
    Label29: TLabel;
     label30: TLabel;
    label31: TLabel;
    LasDeudas: TStringGrid;
    DataSource13: TDataSource;
    Label32: TLabel;
    Edit3: TEdit;
    PERIODO: TComboBox;
    Label33: TLabel;
    Edit2: TEdit;
    StringGridUP: TStringGrid;
    DataSource14: TDataSource;
    GroupBox3: TGroupBox;
    JvDBGrid2: TJvDBGrid;
    TabSheet12: TTabSheet;
    textBody: TMemo;
    rnovedad: TButton;
    gnovedad: TButton;
    GroupBox9: TGroupBox;
    DBGrid2: TDBGrid;
    DataSource15: TDataSource;
    impnovedad: TButton;
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
    VerSoloDeuda1: TMenuItem;
    JvBitBtn2: TJvBitBtn;
    RvS: TRvSystem;
    TP: TClientDataSet;
    RvEC: TRvSystem;
    Edit6: TEdit;
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
    procedure FormActivate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure RB2Click(Sender: TObject);
    procedure RB1Click(Sender: TObject);
    procedure ImpPDFClick(Sender: TObject);
    procedure RvPrint(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BuscaClick(Sender: TObject);
    procedure JvBitBtn3Click(Sender: TObject);
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
    procedure PERIODOKeyPress(Sender: TObject; var Key: Char);
    procedure PERIODOExit(Sender: TObject);
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
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
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
  Consul_GralXAccion: TConsul_GralXAccion;

implementation

uses Unidad, Modulo,Busqueda,AM_VenGenerica, ClaseParcelasVentas,CalculoSaldosAutom;

{$R *.dfm}

procedure TConsul_GralXAccion.FormCreate(Sender: TObject);
begin
gh:=false;
end;


procedure TConsul_GralXAccion.FormActivate(Sender: TObject);

begin
if not(gh) then begin
  gh:=true;
  Label28.Caption:='...';
  imprime.Enabled:=false;
  button2.Visible:=false;
  edit1.Visible:=false;
  name.Visible:=false;
  label24.Visible:=false;
  label25.Visible:=false;
  rnovedad.Enabled:=false;
  impnovedad.Enabled:=false;
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
  ODNI.SetFocus;
  {Periodo,ImporteCuota,InteresAcumulado as Interes,TotalCuota, '
  + 'EstadoVto,EstadoPago,FechaCobro,NroComprobante,ImporteCobrado as ImpCobrado}
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

procedure TConsul_GralXAccion.Coloca1(nro:byte);
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
  if RB3.Checked then begin
   //NroAcc:=trim(ODNI.Text);Sector:='';NroPar:=null;NroActa:=null;
   //txtw:='select * from Fn_VistaParcelas (' + NroAcc+' ,null,null,null,0)';
   //NroAcc:=trim(ODNI.Text);Sector:='';NroPar:=null;NroActa:=null;
   txtw:='SELECT dbo.Parcelas.NroAccion,dbo.Parcelas.NroTitulo,dbo.Parcelas.Sector,dbo.Parcelas.CodigoPlaza,'
   + ' dbo.Parcelas.Parcela,dbo.Parcelas.NroActa,dbo.Parcelas.Nomenclatura,dbo.Parcelas.IdPlaza,dbo.Parcelas.TipoColor,'
   + ' dbo.Parcelas.PosX1,dbo.Parcelas.PosY1,dbo.Parcelas.Largo,dbo.Parcelas.Alto,dbo.Parcelas.Fecha_M,dbo.Parcelas.Usu_M, '
   + ' dbo.Parcelas.CuifCobrador,dbo.Parcelas.EspacioVerde,dbo.Parcelas.DomicilioCobro,dbo.Parcelas.Observacion,dbo.Parcelas.NroCaja,'
   + ' dbo.Clientes.RazonSocial,dbo.TiposPlazas.Detalle,dbo.Clientes.RazonSocial FROM dbo.Parcelas LEFT OUTER JOIN'
   + ' dbo.Clientes ON dbo.Parcelas.CuifCobrador = dbo.Clientes.Cuif LEFT OUTER JOIN '
   + ' dbo.TiposPlazas ON dbo.Parcelas.IdPlaza = dbo.TiposPlazas.IdPlaza '
//   + ' INNER JOIN dbo.VLosCobradores ON dbo.VLosCobradores.Cuif = dbo.Parcelas.CuifCobrador  '
//   + ' INNER JOIN dbo.TiposPlazas ON dbo.Parcelas.IdPlaza = dbo.TiposPlazas.IdPlaza '
   + ' WHERE (dbo.Parcelas.NroAccion = ' + trim(ODNI.Text)+' )';
  end;
//  if RB4.Checked then begin
//   NroAcc:=null;Sector:=trim(ONOMB.Text);NroPar:=null;NroActa:=null;
//   txtw:='select * from Fn_VistaParcelas (null ,' + chr(39) + Sector + chr(39) +' ,null,null,' +  '0)';
//  end;
//  if RB7.Checked then begin
//   NroAcc:=null;Sector:=trim(ODNI.Text);NroPar:=trim(edit6.Text);NroActa:=null;
//   txtw:='select * from Fn_VistaParcelas (null ,' + chr(39) + Sector + chr(39) + ','  + NroPar  + ',null,' +  '0)';
//  end;
//  if RB5.Checked then begin
//   NroAcc:=null;Sector:='';NroPar:=null;NroActa:=trim(ODNI.Text);
//   txtw:='select * from Fn_VistaParcelas (null ,null ,null,' + NroActa+ ',0)';
//  end;
//  if RB1.Checked then begin
//     txtw:='SELECT distinct NroAccion,NroAccion as NroTitulo,Sector,CodigoPlaza,Plaza,Parcela, null as nroacta,Nomenclatura,0 as Espverde,'
//     +'null as cobrador,domiciliocobro,Observacion,nrocaja FROM Fn_VistaParcelasTitulares ('+ trim(edit1.Text)+' ,null ,0) where TipoAccionista=2';
//  end;
  if not Funciones.Listar(txtw,DataSet0)  then
   messagedlg('ERROR al realizar Transac-SQL. Consulte con  Administrador',mtError,[mbok],0);
  Funciones.Free;
  if DataSet0.IsEmpty then begin
    messagedlg('ATENCION NroAccion Inexistente', mtError,[mbok],0);
    imprime.Enabled:=false;
  end
  else begin
        label30.Caption:=trim(odni.Text);
        Label28.Caption:=trim(DataSet0.Fields[20].AsString);    //cobrador
        edit3.Text:=trim(DataSet0.Fields[17].AsString);
        edit2.Text:=trim(DataSet0.Fields[18].AsString);
        numcaja.Text:=trim(DataSet0.Fields[19].AsString);
        Coloca1(1);
        Coloca1(4);    // inhumados
        Coloca1(8);    // ultimo cobrador que cobro
        Coloca1(6);    // ETADOCUENTA VENTAS
        Coloca1(7);    /// Lista de Servicios Existentes
        Coloca1(8);    /// Estado Cuent Servicio
        Coloca1(9);    /// Estado Cuent Mantenimiento
        Coloca1(11);   // histo de titulares
        Coloca1(12);   // Estado Cuent consolidado
       // Coloca1(13);   // precio de mantenimiento
        coloca1(14);   // saldo de mante
        coloca1(15);   // detalle deuda de mante
        coloca1(17);  //ultimos pagos
        coloca1(18);  //las novedades
        coloca1(19);  ///
        coloca1(20);  //Traemos las cuotas e importes de las ventas
  end;
  DBGrid1.Columns[4].Width:=110;
end;
if nro=1 then begin
  DataClie.Free;
  DataClie:=TClientdataSet.Create(nil);
  DataSource2.DataSet:=DataClie;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT top 3 nroaccion,cuif,razonsocial,nivel,plaza,sector,parcela,idcliente,telef,dni,fechacesion,gestor,domicilio,esjubilado,nrocaja '
        +' FROM Fn_VistaParcelasTitulares (null, ' + (trim(odni.Text)) +',0) WHERE TipoAccionista=2 order by nivel';
  if not Funciones.Listar(txtw,DataClie) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
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
    imprime.Enabled:=false;
  end
  else begin
    Panel1.Enabled:=true;
    imprime.Enabled:=true;
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
//    Coloca1(4);    // inhumados
//     Coloca1(5);    // ventas
//     Coloca1(6);    // ETADOCUENTA VENTAS
//     Coloca1(7);    /// Lista de Servicios Existentes
//     Coloca1(8);    /// Estado Cuent Servicio
//     Coloca1(9);    /// Estado Cuent Mantenimiento
//     Coloca1(11);   // histo de titulares
//     Coloca1(12);   // Estado Cuent consolidado
//     Coloca1(13);   // precio de mantenimiento
//     coloca1(14);   // saldo de mante
//     coloca1(15);   // detalle deuda de mante
//     coloca1(17);   // ultimos pagos
//     coloca1(18);   // las novedades
//     coloca1(19);   // los pagos y deudas de la accion
//     coloca1(20);  //Traemos las cuotas e importes de las ventas
//     imprime.Enabled:=true;
  end;
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
if nro=5 then begin   /// Lista de Ventas Existentes
  DataSet4.Free;
  DataSet4:=TClientdataSet.Create(nil);
  DataSource4.DataSet:=DataSet4;
  ParacVentas:=TParcelasVentas.Create(nil);
  ParacVentas.ConnectionString:=modulo2.Conexion;
  Param:=TWideStrings.Create;
  Param.Add('');
  Param.Add(trim(odni.Text));
  Param.Add('');
  Param.Add('');
  Param.Add('');
  Param.Add('');
  if not ParacVentas.ListarSP(Param,DataSet4,0) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Param.Free;
  if not DataSet4.IsEmpty  then begin
   NroDni:=DataSet4.Fields[1].AsString;
   //Coloca1(6);  // ETADOCUENTA VENTAS
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
  + ' ( ' + trim(odni.Text) + ',' + chr(39)+  txtfecha +chr(39) +',0) order by 1 desc';
  if not Funciones.Listar(txtw,DataSet5) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if not DataSet5.IsEmpty then begin
    JvDBGrid5.Columns[0].Width:=45;
    JvDBGrid5.Columns[1].Width:=50;
    JvDBGrid5.Columns[2].Width:=100;
    JvDBGrid5.Columns[3].Width:=75;
    JvDBGrid5.Columns[4].Width:=55;
    JvDBGrid5.Columns[5].Width:=55;
    JvDBGrid5.Columns[6].Width:=55;
    JvDBGrid5.Columns[7].Width:=55;
    JvDBGrid5.Columns[8].Width:=75;
    JvDBGrid5.Columns[9].Width:=65;
    JvDBGrid5.Columns[10].Width:=45;
    JvDBGrid5.Columns[11].Width:=55;
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
  if not Funciones.Run_Fn_VistaParcelasServicios(ValNull,NroDni,DataSet6,'',0) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
   if not DataSet6.IsEmpty  then begin
    NroDni:=DataSet6.Fields[1].AsString;
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
  + 'from EstadoCuentaMantenimientoAcum (' + trim(odni.Text)
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
  NroDni:=strtoint(trim(odni.Text));
  if not Funciones.Run_EstadoCuentaConsolidados(NroDni,DataSetConso,'',0) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if not DataSetConso.IsEmpty then begin
    JvDBGrid11.Columns[0].Width:=45;
    JvDBGrid11.Columns[1].Width:=50;
    JvDBGrid11.Columns[2].Width:=100;
    JvDBGrid11.Columns[3].Width:=75;
    JvDBGrid11.Columns[4].Width:=55;
    JvDBGrid11.Columns[5].Width:=55;
    JvDBGrid11.Columns[6].Width:=55;
    JvDBGrid11.Columns[7].Width:=55;
    JvDBGrid11.Columns[8].Width:=75;
    JvDBGrid11.Columns[9].Width:=65;
    JvDBGrid11.Columns[10].Width:=45;
    JvDBGrid11.Columns[11].Width:=55;
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
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',
       mtError,[mbok],0);
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
  txtw:='SELECT totalcuota FROM EstadoCuentaMantenimiento ( ' + trim(odni.Text) + ',' + chr(39)+  txtfecha +chr(39) +',0) where Periodo = 999999';
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
  txtw:='SELECT monto FROM SaldosPorAccion ( 1  ,' + trim(odni.Text) +','+ trim(periodo.Text) +',1  ,0) where Detalle=''saldo actual''';
  if not Funciones.Listar(txtw,DataSet) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  dventa.Text:=DataSet.Fields[0].AsString;
  DataSet.Free;
  DataSet:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT monto FROM SaldosPorAccion ( 2  ,' + trim(odni.Text) +','+ trim(periodo.Text) +',1  ,0)';// where Detalle=''saldo actual''';
  if not Funciones.Listar(txtw,DataSet) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  dservicio.Text:=DataSet.Fields[0].AsString;
  DataSet.Free;
  DataSet:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT monto FROM SaldosPorAccion ( 4  ,' + trim(odni.Text) +','+ trim(periodo.Text) +',1  ,0) where Detalle=''saldo final''';
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
  CUOTAS.CommandText:=' exec EstadoCuentaMantenimientoMin ' + trim(odni.Text) +
     ',' + chr(39) + txtfecha + chr(39) ;
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
  //if not Funciones.Listar('SELECT TOP 5 Periodo FROM PeriodosVencimientos WHERE (Vencimiento<= DATEADD(MONTH, 1,'
  //+ chr(39) + FechaActual + chr(39) + ')) ORDER BY periodo desc',DtCombo) then
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
  txtw:='SELECT id,Novedad,case when Resuelto = 0 then ''SI'' else ''NO'' end as Resuelto FROM  ParcelasNovedades where (nroaccion=' + (DataSet0.Fields[1].AsString) +') order by 1';
  if not Funciones.Listar(txtw,DataSet13) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
   if not DataSet13.IsEmpty then begin
      impnovedad.Enabled:=true;
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
  + 'EstadoVto,EstadoPago,FechaCobro,NroComprobante,ImporteCobrado as ImpCobrado FROM EstadoCuentaMantenimiento'
  + ' ( ' + DataSet0.Fields[1].AsString + ',' + chr(39)+  txtfecha +chr(39) +',0) where Periodo <> 999999 order by 1';
  if not Funciones.Listar(txtw,DataSet11) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if not DataSet11.IsEmpty then begin
    MANTEPAGOS.Close;
    MANTEPAGOS.CommandText:='SELECT Periodo,ImporteCuota,InteresAcumulado as Interes,TotalCuota, '
    + 'EstadoVto,EstadoPago,FechaCobro,NroComprobante,ImporteCobrado as ImpCobrado FROM EstadoCuentaMantenimiento'
    + ' ( ' + DataSet0.Fields[1].AsString + ',' + chr(39)+  txtfecha +chr(39) +',0) where Periodo <> 999999 and EstadoPago=''PAGADO'' order by 1 desc';
    MANTEPAGOS.Open;
    for t:=1 to MANTEPAGOS.RecordCount do begin
        MANTEPAGOS.RecNo:=t;
        StringAgrupP.RowCount:=t+1;
        StringAgrupP.Cells[0,t]:=trim(MANTEPAGOS.Fields[0].AsString);
        StringAgrupP.Cells[1,t]:=trim(MANTEPAGOS.Fields[1].AsString);
        //StringAgrupP.Cells[2,t]:=trim(MANTEPAGOS.Fields[2].AsString);
        //StringAgrupP.Cells[3,t]:=trim(MANTEPAGOS.Fields[3].AsString);
        //StringAgrupP.Cells[4,t]:=trim(MANTEPAGOS.Fields[4].AsString);
        StringAgrupP.Cells[2,t]:=trim(MANTEPAGOS.Fields[5].AsString);
        StringAgrupP.Cells[3,t]:=trim(MANTEPAGOS.Fields[6].AsString);
        StringAgrupP.Cells[4,t]:=trim(MANTEPAGOS.Fields[7].AsString);
        StringAgrupP.Cells[5,t]:=trim(MANTEPAGOS.Fields[8].AsString);
       end;
      DataSet11.Filtered:=false;
      DataSet11.FilterOptions:=[foCaseInsensitive, foNoPartialCompare];
      Dato:='EstadoPago=''DEUDA'' and estadovto<> ''SIN VENCER''';
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

end;

procedure TConsul_GralXAccion.RB2Click(Sender: TObject);
begin
if RB3.Checked  or RB5.Checked  then begin
  edit6.Visible:=false;
   button2.Visible:=false;
   edit1.Visible:=false;
   name.Visible:=false;
   label24.Visible:=false;
   label25.Visible:=false;
  ONOMB.Visible:=false;
  ODNI.Visible:=true;
  ODNI.Text:='00000000';
  if RB3.Checked then LB1.Caption:='Ingrese N° Acción:';
  if RB5.Checked then LB1.Caption:='Ingrese N° Acta:';
  if RB7.Checked then LB1.Caption:='Ingrese N° Parcela:';
  ODNI.SetFocus;
end;
if RB4.Checked then begin
  edit6.Visible:=false;
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
  edit6.Visible:=false;
  ODNI.Visible:=false;
  ONOMB.Visible:=false;
  button2.Visible:=true;
  edit1.Visible:=true;
  name.Visible:=true;
  label24.Visible:=true;
  label25.Visible:=true;
  button2.SetFocus;
end;
if RB7.Checked then begin
  edit6.Clear;
  button2.Visible:=false;
  edit1.Visible:=false;
  name.Visible:=false;
  label24.Visible:=false;
  label25.Visible:=false;
  ONOMB.Visible:=false;
  ODNI.Visible:=true;
  edit6.Visible:=true;
  ODNI.Text:='00000000';
  if RB7.Checked then LB1.Caption:='Ingrese N° Sector y Parcela:';
  ODNI.SetFocus;
end;

Busca.Enabled:=true;
end;

procedure TConsul_GralXAccion.RB1Click(Sender: TObject);
begin
ONOMB.Visible:=FALSE;
ODNI.Visible:=FALSE;
LB1.Caption:='';
Busca.Enabled:=true;
Busca.SetFocus;
end;

procedure TConsul_GralXAccion.ImpPDFClick(Sender: TObject);
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

procedure TConsul_GralXAccion.RvPrint(Sender: TObject);
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
  PosR[0]:=35;PosR[1]:=57;PosR[2]:=80;PosR[3]:=103;PosR[4]:=125;
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

    BaseReport.SetFont('Arial ',7);
    BaseReport.FontColor:=clBlack;
    BaseReport.PrintXY(posfx,posfy+132,'Domicilio Cobro:  ' + DataSet0.Fields[10].AsString);
    BaseReport.PrintXY(posfx+150,posfy+132,'Ultimo Gestor que Cobro: ' + ultimogestorpago);

    BaseReport.PrintXY(posfx,posfy+135,'Observaciones:  ' + DataSet0.Fields[11].AsString);

    BaseReport.SetFont('Arial Black',7);
    BaseReport.FontColor:=clBlack;
    Pos5:=0;
    //Imprimiendo Titulares
    if Datasource2.DataSet.RecordCount > 0 then begin
      for t:=1 to Datasource2.DataSet.RecordCount do begin
          Datasource2.DataSet.RecNo:=t;
          {nroaccion,Cuif,RazonSocial AS Nombre,Dni,domicilio,Parcela,FechaCesion,'
          +' Detalle,Nivel,Plaza,Sector,CodigoPlaza,Nomenclatura,Telef,Gestor }
          BaseReport.PrintXY(posfx+Pos3+19,posfy+Pos4+24 + Pos5,Datasource2.DataSet.Fields[2].AsString);
          BaseReport.PrintXY(posfx+Pos3+19,posfy+Pos4+28 + Pos5,Datasource2.DataSet.Fields[3].AsString);
          BaseReport.PrintXY(posfx+Pos3+19,posfy+Pos4+32 + Pos5,strcut_midle(trim(Datasource2.DataSet.Fields[4].AsString),1,50));
          BaseReport.PrintXY(posfx+Pos3+19,posfy+Pos4+36 + Pos5,strcut_midle(trim(Datasource2.DataSet.Fields[4].AsString),51,100));
          BaseReport.PrintXY(posfx+Pos3+19,posfy+Pos4+38 + Pos5,Datasource2.DataSet.Fields[13].AsString);
         Pos5:=Pos5 + 20; //24
      end;
    end;
    //Imprimiendo Datos de la Acción
    {nroaccion,Cuif,RazonSocial AS Nombre,Dni,domicilio,Parcela,FechaCesion,'
  +' Detalle,Nivel,Plaza,Sector,CodigoPlaza,Nomenclatura,Telef,Gestor }
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
    //BaseReport.Rectangle(posfx+Pos3+101,posfy+Pos4+30,posfx+Pos3+125,posfy+Pos4+34);
    //BaseReport.Rectangle(posfx+Pos3+140,posfy+Pos4+30,posfx+Pos3+165,posfy+Pos4+34);
    //BaseReport.Rectangle(posfx+Pos3+178,posfy+Pos4+30,posfx+Pos3+195,posfy+Pos4+34);
    BaseReport.SetFont('Arial Black',7);
    BaseReport.FontColor:=clBlack;
    //BaseReport.PrintXY(posfx+Pos3+95,posfy+Pos4+33,'Obj.');
    BaseReport.PrintXY(posfx+Pos3+105,posfy+Pos4+33,'Detalle');
    BaseReport.PrintXY(posfx+Pos3+130,posfy+Pos4+33,'CtasDeudas');
    BaseReport.PrintXY(posfx+Pos3+155,posfy+Pos4+33,'Imp.Cuota');
    //BaseReport.PrintXY(posfx+Pos3+128,posfy+Pos4+33,'Fecha');
    //BaseReport.PrintXY(posfx+Pos3+141,posfy+Pos4+33,'N° Comprobante');
    BaseReport.PrintXY(posfx+Pos3+166,posfy+Pos4+33,'Importe');
    //BaseReport.PrintXY(posfx+Pos3+179,posfy+Pos4+33,'Acumulado');
    Pos5:=posfy+Pos4+34 + 4;

    //Parcelas
    BaseReport.SetFont('Arial',7);
    BaseReport.PrintXY(posfx+Pos3+102,Pos5,'SALDO PARCELAS');
//      Bandera:=false;
//       for t:=DataSource5.DataSet.RecordCount downto 1  do begin
//         DataSource5.DataSet.RecNo:=t;
//         if (trim(DataSource5.DataSet.Fields.Fields[9].AsString) = 'SALDO FINAL')
//           and (trim(DataSource5.DataSet.Fields.Fields[8].AsString) <> '')
//         then begin
      if trim(dservicio.Text)='' then totv:=totv + 0
         else totv:=totv + strtofloat(trim(dventa.Text));
           //totv:=totv + strtofloat(trim(dventa.Text));
          BaseReport.MoveTo(posfx+Pos3+177,Pos5);
          BaseReport.PrintRight(trim(DataSetCuotasVta.Fields[0].AsString),posfx+Pos3+140);
          BaseReport.PrintRight('$' + trim(DataSetCuotasVta.Fields[1].AsString),posfx+Pos3+165);
          BaseReport.PrintRight(redondeo(FloatToStr(totv),2),posfx+Pos3+193);
          BaseReport.Rectangle(posfx+Pos3+93.5,Pos5+0.5,posfx+Pos3+195,Pos5+0.5);
          Bandera:=true;
//             break;
//         end;
//      end;
      if not Bandera then begin
        BaseReport.MoveTo(posfx+Pos3+175,Pos5);
        BaseReport.PrintRight('0.00',posfx+Pos3+177);
      end;

//    Servicios
      Pos5:=Pos5 + 4;
      BaseReport.SetFont('Arial',7);
      BaseReport.PrintXY(posfx+Pos3+102,Pos5,'SALDO SERVICIO');
//      Bandera:=false;
//      for t:=DataSource7.DataSet.RecordCount downto 1  do begin
//         DataSource7.DataSet.RecNo:=t;
//         if (trim(DataSource7.DataSet.Fields.Fields[9].AsString) = 'SALDO FINAL')
//         and (trim(DataSource7.DataSet.Fields.Fields[8].AsString) <> '')
//          then begin
              if trim(dservicio.Text)='' then tots:=tots + 0
                    else tots:=tots + strtofloat(trim(dservicio.Text));
              //tots:=tots + strtofloat(trim(dservicio.Text));
              BaseReport.MoveTo(posfx+Pos3+177,Pos5);
              BaseReport.PrintRight(redondeo(FloatToStr(tots),2),posfx+Pos3+193);
              BaseReport.Rectangle(posfx+Pos3+93.5,Pos5+0.5,posfx+Pos3+195,Pos5+0.5);
              Bandera:=true;
//            break;
//         end;
//      end;
      if not Bandera then begin
        BaseReport.MoveTo(posfx+Pos3+175,Pos5);
        BaseReport.Rectangle(posfx+Pos3+93.5,Pos5+0.5,posfx+Pos3+195,Pos5+0.5);
        BaseReport.PrintRight('0.00',posfx+Pos3+193);
      end;

     //Consolidados
      Pos5:=Pos5 + 4;
      BaseReport.SetFont('Arial',7);
      BaseReport.PrintXY(posfx+Pos3+102,Pos5,'SALDO CONSOLID.');
//      Bandera:=false;
//       for x:=DataSet12.RecordCount downto 1  do begin
//         DataSet12.DataSet.RecNo:=x;
//         if (trim(DataSet12.Fields.Fields[9].AsString) = 'SALDO FINAL')
//         and (trim(DataSet12.Fields.Fields[8].AsString) <> '')   then begin
              //totc:=totc + strtofloat(trim(dconsoli.Text));
              if trim(dconsoli.Text)='' then totc:=totc + 0
                    else totc:=totc + strtofloat(trim(dconsoli.Text));
              BaseReport.MoveTo(posfx+Pos3+177,Pos5);
              BaseReport.PrintRight(redondeo(FloatToStr(totc),2),posfx+Pos3+193);
              BaseReport.Rectangle(posfx+Pos3+94,Pos5+0.5,posfx+Pos3+195,Pos5+0.5);
              Bandera:=true;
//              break;
//         end;
//       end;
       if not Bandera then begin
        BaseReport.MoveTo(posfx+Pos3+175,Pos5);
        BaseReport.PrintRight('0.00',posfx+Pos3+177);
       end;

    //Mantenimiento
      Pos5:=Pos5 + 4;
      BaseReport.SetFont('Arial',7);
      BaseReport.PrintXY(posfx+Pos3+102,Pos5,'SALDO MANTENIM.');
//            Bandera:=false;
//            for t:=DataSource8.DataSet.RecordCount downto 1  do begin
//               DataSource8.DataSet.RecNo:=t;
//               if (trim(DataSource8.DataSet.Fields.Fields[9].AsString) = 'SALDO FINAL')
//               and (trim(DataSource8.DataSet.Fields.Fields[8].AsString) <> '')
//                then begin
      if trim(dmante.Text)='' then totm:=totm + 0
          else totm:=totm + strtofloat(trim(dmante.Text));
          BaseReport.MoveTo(posfx+Pos3+177,Pos5);
          BaseReport.PrintRight(redondeo(FloatToStr(totm),2),posfx+Pos3+193);
          BaseReport.Rectangle(posfx+Pos3+93.5,Pos5+0.5,posfx+Pos3+195,Pos5+0.5);
          Bandera:=true;
//                  break;
//               end;
//            end;
       if not Bandera then begin
          BaseReport.MoveTo(posfx+Pos3+175,Pos5);
          BaseReport.PrintRight('0.00',posfx+Pos3+177);
       end;

    //BaseReport.Rectangle(posfx+Pos3+101,posfy+Pos4+30,posfx+Pos3+125,Pos5+0.5);
    //BaseReport.Rectangle(posfx+Pos3+140,posfy+Pos4+30,posfx+Pos3+165,Pos5+0.5);
    //BaseReport.Rectangle(posfx+Pos3+178,posfy+Pos4+30,posfx+Pos3+195,Pos5+0.5);
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

      //BaseReport.PrintXY(posfx+113,Pos5 + salto ,'Movimiento       NºComprobante  TipoComprobante  FechaCobro   Importe');
      Pos5:=Pos5 + salto ;
        for t:=1 to Datasource14.DataSet.RecordCount  do  begin
          BaseReport.SetFont('Arial',6);
          BaseReport.FontColor:=clBlack;
          BaseReport.PrintXY(posfx+3,Pos5,StringGridUP.Cells[0,t]);
          BaseReport.PrintXY(posfx+18,Pos5,StringGridUP.Cells[2,t] + ' - ' + StringGridUP.Cells[1,t]);
          //BaseReport.PrintXY(posfx+118,'Comprobante' +Pos5,StringGridUP.Cells[1,t]);
          //BaseReport.PrintXY(posfx+134,Pos5,StringGridUP.Cells[2,t]);
          BaseReport.PrintXY(posfx+45,Pos5,'Fec.Cob:' + StringGridUP.Cells[3,t]);
          BaseReport.PrintXY(posfx+65,Pos5,'Imp. $'+StringGridUP.Cells[4,t] + ' - ' +StringGridUP.Cells[5,t]);
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
  end;
except
end;
end;


procedure TConsul_GralXAccion.DBGrid1CellClick(Column: TColumn);
var t,gf:integer;
    txt:string;
   // CalAutomSaldos: TCalAutomSaldos;
begin
  if not (DataSet0.IsEmpty) then begin
//        label30.Caption:=trim(DataSet0.Fields[0].AsString);
//        Label28.Caption:=trim(DataSet0.Fields[9].AsString);
//        edit3.Text:=trim(DataSet0.Fields[10].AsString);
//        edit2.Text:=trim(DataSet0.Fields[11].AsString);
//        numcaja.Text:=trim(DataSet0.Fields[12].AsString);
        control:=true;
        Coloca1(1);
//        Coloca1(3);    // titulares
//        Coloca1(4);    // inhumados
//        Coloca1(8);    // ultimo cobrador que cobro
//        Coloca1(6);    // ETADOCUENTA VENTAS
//        Coloca1(7);    /// Lista de Servicios Existentes
//        Coloca1(8);    /// Estado Cuent Servicio
//        Coloca1(9);    /// Estado Cuent Mantenimiento
//        Coloca1(11);   // histo de titulares
//        Coloca1(12);   // Estado Cuent consolidado
//        Coloca1(13);   // precio de mantenimiento
//        coloca1(14);   // saldo de mante
//        coloca1(15);   // detalle deuda de mante
//        coloca1(17);  //ultimos pagos
//        coloca1(18);  //las novedades
//        coloca1(19);  ///
//        coloca1(20);  //Traemos las cuotas e importes de las ventas
        imprime.Enabled:=true;
  end;
end;


procedure TConsul_GralXAccion.BuscaClick(Sender: TObject);
var p,u:integer;
begin
edit8.Text:=Elanio;
Label39.Caption:='...';
Label28.Caption:='...';
dventa.Text:='00.00';
dmante.Text:='00.00';
dservicio.Text:='00.00';
dconsoli.Text:='00.00';
edit2.Clear;
edit3.Clear;
Coloca1(0);
Barra1.Panels[1].Text:='Registos encontrados';
imppdf.Enabled:=false;
imprime.Enabled:=true;
end;

procedure TConsul_GralXAccion.JvBitBtn3Click(Sender: TObject);
begin
Close;
end;

procedure TConsul_GralXAccion.ExportaClick(Sender: TObject);
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

procedure TConsul_GralXAccion.ImprimeClick(Sender: TObject);
var gf:integer;
begin
gf:=messagedlg('Desea Imprimir la consulta de Clientes?',mtWarning,[mbok,mbCancel],0);
if gf = 1 then Rv.Execute;
end;

procedure TConsul_GralXAccion.ONOMBKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  periodo.SetFocus;
END;
end;

procedure TConsul_GralXAccion.ODNIKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  if rb7.Checked then edit6.SetFocus
   else periodo.SetFocus;
END;
end;

procedure TConsul_GralXAccion.PC1Change(Sender: TObject);
begin
//if not control then PC1.ActivePage:=PC1.Pages[0];
end;

procedure TConsul_GralXAccion.JvDBGrid4CellClick(Column: TColumn);
begin
if not DataSet4.IsEmpty then Coloca1(6);
end;

procedure TConsul_GralXAccion.JvDBGrid6CellClick(Column: TColumn);
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
    JvDBGrid7.Columns[0].Width:=45;
    JvDBGrid7.Columns[1].Width:=50;
    JvDBGrid7.Columns[2].Width:=100;
    JvDBGrid7.Columns[3].Width:=75;
    JvDBGrid7.Columns[4].Width:=55;
    JvDBGrid7.Columns[5].Width:=55;
    JvDBGrid7.Columns[6].Width:=55;
    JvDBGrid7.Columns[7].Width:=55;
    JvDBGrid7.Columns[8].Width:=75;
    JvDBGrid7.Columns[9].Width:=65;
    JvDBGrid7.Columns[10].Width:=45;
    JvDBGrid7.Columns[11].Width:=55;
  end
  else begin
    dservicio.Text:='00.00';
  end;
end;
end;

procedure TConsul_GralXAccion.JvDBGrid2CellClick(Column: TColumn);
begin
if not DataClie.IsEmpty then begin
  Coloca1(10);
  D1.DataField:='Cuif';
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
end;
end;

procedure TConsul_GralXAccion.Button2Click(Sender: TObject);
var Busqueda:TLA_BUSQUEDA;
begin
  Busqueda:=TLA_BUSQUEDA.Create(self);
  try
    Busqueda.NroOpcion:=3;
    Busqueda.Caption:='Busqueda y Seleccion de Titulares';
    Busqueda.ShowModal;
    edit1.Text:=busqueda.DB2.Text;     //cuif
    name.Text:=busqueda.DB4.Text;   //Nombre
  finally
    Busqueda.Destroy;
    periodo.SetFocus;
  end;
end;

procedure TConsul_GralXAccion.PERIODOKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  busca.SetFocus;
END;
end;

procedure TConsul_GralXAccion.PERIODOExit(Sender: TObject);
begin
if PERIODO.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Periodo Ingresado!!',mterror,[mbok],0);
  PERIODO.SetFocus;
end;
end;

procedure TConsul_GralXAccion.DBGrid2CellClick(Column: TColumn);
begin
 if not DataSet13.IsEmpty then begin
    nronov:=strtoint(trim(DataSet13.Fields[0].AsString));
    textbody.Text:=AnsiReplaceStr(trim(DataSet13.Fields[1].Text),chr(33),chr(39));
    if trim(DataSet13.Fields[2].AsString)='NO' then rnovedad.Enabled:=true
    else
    begin
       messagedlg('Esta Novedad ya se Encuentra Resuelto',mtWarning,[mbok],0);
       rnovedad.Enabled:=false;
    end;
 end;
end;

procedure TConsul_GralXAccion.gnovedadClick(Sender: TObject);
var gf:integer;
var alta:boolean;
begin
  gf:=messagedlgpos('Desea Agregar los Datos de este Cliente?',mtWarning,[
             mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
  if gf = 1 then begin
    ParcelasNovedades:=TParcelasNovedades.Create(nil);
    ParcelasNovedades.ConnectionString:=modulo2.Conexion;
    ParcelasNovedades.C_Nroaccion:=strtoint(DataSet0.Fields[1].AsString);
    ParcelasNovedades.C_Novedad:=textBody.Text;
    alta:=ParcelasNovedades.Agrega;
    ParcelasNovedades.Free;
      if alta then begin
        messagedlg('Se ha Guardado la Novedad de la Accion seleccionada con Exito',mtConfirmation,[mbok],0);
        textBody.Clear;
        coloca1(18);
      end
      else begin
        Barra1.SimpleText:='Error al Guardar la Novedad de la Accion';
      end;
  end
  else begin
   messagedlg('Ud. ha cancelado la Operacion de Carga de Novedades',
     mtWarning,[mbok],0);
  end;
end;

procedure TConsul_GralXAccion.rnovedadClick(Sender: TObject);
var gf:integer;
    TodoOk1:boolean;
    txtw:widestring;
begin
gf:=messagedlg('Desea Resolver esta Novedad seleccionada?',mtWarning,[mbok,mbCancel],0);
  if gf = 1 then begin
        ParcelasNovedades:=TParcelasNovedades.Create(nil);
        ParcelasNovedades.ConnectionString:=modulo2.Conexion;

          txtw:='UPDATE ParcelasNovedades SET Resuelto = 1, fecharesuelto= getdate()'
          + ' WHERE (id =' + inttostr(nronov) + ')';

          TodoOk1:=ParcelasNovedades.ListarSinResp(txtw);
          ParcelasNovedades.Free;
          if TodoOk1 then begin
            messagedlg('Se ha RESUELTO esta Novedad con Exito',mtConfirmation,[mbok],0);
            coloca1(18);
          end
          else begin
            messagedlg('Error al RESOLVER esta NOVEDAD. Consulte con un Administrador',mtError,[mbok],0);
          end;
  end;
end;

procedure TConsul_GralXAccion.impnovedadClick(Sender: TObject);
begin
rvnov.Execute;
end;

procedure TConsul_GralXAccion.RvNovPrint(Sender: TObject);
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
     BaseReport.Rectangle(posx+2,posy+1,posx+275,posy+23);
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
      BaseReport.Rectangle(posx+2,posy,posx+275,posy+5);
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
  RvNov.BaseReport.SetFont('Arial',5);
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
  posfx:=1.5;posfy:=2;
  salto:=4;final:=0;hoja:=1;
  posfy:=Logo(posfx,posfy,hoja);

  Camp[0]:=0; Camp[1]:=1; Camp[2]:=2;
  TxtCamp[0]:='Id';  TxtCamp[1]:='Novedades'; TxtCamp[2]:='Resuelto';
  PosH[0]:=3;   PosH[1]:=10;  PosH[2]:=265;

  T8.Close;
  T8.CloneCursor(DataSet13,false,true);
  txt:='T8';
  final:=GrillaCabecera(posfx,posfy+5,txt);
  posfy:=final;
  pso:=false;

      for y:=1 to HackTable(findcomponent(txt)).RecordCount do begin
        HackTable(FindComponent(txt)).RecNo:=y;
        if pso then RvNov.BaseReport.Rectangle(posfx+2,posfy+1,posfx+275,posfy+1)
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


procedure TConsul_GralXAccion.JvBitBtn1Click(Sender: TObject);
begin
  PC1.ActivePage:=PC1.Pages[1];
  PC2.ActivePage:=PC2.Pages[5];
end;

procedure TConsul_GralXAccion.JvDBGrid8CellClick(Column: TColumn);
begin
 if (trim(DataSet8.Fields[12].AsString)='')  then DataSet8.Fields[12].Text:='X';
end;

procedure TConsul_GralXAccion.Button1Click(Sender: TObject);
var p:integer;
begin
for p:=1 to StringAgrupD.RowCount-1 do
   if StringAgrupD.Cells[8,p]='X' then StringAgrupD.Cells[8,p]:='';
edit4.Text:='00.00';
edit5.Text:='0';
end;

procedure TConsul_GralXAccion.StringAgrupDClick(Sender: TObject);
begin
 if (trim(StringAgrupD.Cells[8,StringAgrupD.Row])='') and (trim(StringAgrupD.Cells[5,StringAgrupD.Row])='DEUDA') then
   StringAgrupD.Cells[8,StringAgrupD.Row]:='X';
   sumaDeuda(1);
end;

procedure TConsul_GralXAccion.Sumadeuda(nro:byte);
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
procedure TConsul_GralXAccion.JvBitBtn2Click(Sender: TObject);
var gf:integer;
begin
 panel2.Visible:=true;
 edit7.SetFocus;
//gf:=messagedlg('Desea Imprimir el Estado De Cuenta de esta Accion?',mtWarning,[mbok,mbCancel],0);
//if gf = 1 then RvEC.Execute;
end;


procedure TConsul_GralXAccion.RvECPrint(Sender: TObject);
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
     if Datasource2.DataSet.RecordCount > 0 then  begin
       for t:=1 to Datasource2.DataSet.RecordCount do begin
          Datasource2.DataSet.RecNo:=t;
          RvEC.BaseReport.PrintXY(posfx+5,posfy+40 + Pos5,Datasource2.DataSet.Fields[8].AsString + ' - ' + Datasource2.DataSet.Fields[2].AsString);
         Pos5:=Pos5 + 5; //24
       end;
     end;
     RvEC.BaseReport.RoundRect(posfx+120,posfy+28,posfx+170,posfy+33,5,5);
     RvEC.BaseReport.PrintXY(posfx+129,posfy+32,'Datos de la Acción');

     RvEC.BaseReport.SetFont('Arial',8);
     RvEC.BaseReport.FontColor:=clBlack;
     RvEC.BaseReport.PrintXY(posfx+102,posfy+37,'N° TITULO: ' + DataSource0.DataSet.Fields[0].AsString);
     RvEC.BaseReport.PrintXY(posfx+102,posfy+42,'Sector: ' + DataSource0.DataSet.Fields[2].AsString);
     RvEC.BaseReport.PrintXY(posfx+127,posfy+42,'Parcela: ' + DataSource0.DataSet.Fields[4].AsString);
     RvEC.BaseReport.PrintXY(posfx+153,posfy+42,'Plaza: ' + DataSource0.DataSet.Fields[21].AsString);
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

procedure TConsul_GralXAccion.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  periodo.SetFocus;
END;
end;

procedure TConsul_GralXAccion.BitBtn1Click(Sender: TObject);
var gf:integer;
begin
Coloca1(9);
gf:=messagedlg('Desea Imprimir el Estado De Cuenta de esta Accion?',mtWarning,[mbok,mbCancel],0);
if gf = 1 then RvEC.Execute;
end;

procedure TConsul_GralXAccion.Edit7Exit(Sender: TObject);
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

procedure TConsul_GralXAccion.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  edit8.SetFocus;
end;
end;

procedure TConsul_GralXAccion.RvECAfterPrint(Sender: TObject);
begin
panel2.Visible:=false;
end;

procedure TConsul_GralXAccion.Edit8KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  BitBtn1.SetFocus;
end;
end;

procedure TConsul_GralXAccion.Edit8Exit(Sender: TObject);
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

procedure TConsul_GralXAccion.Button3Click(Sender: TObject);
begin
  PC1.ActivePage:=PC1.Pages[1];
  PC2.ActivePage:=PC2.Pages[2];
end;

end.

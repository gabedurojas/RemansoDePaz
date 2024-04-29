unit AM_EntregaTitulo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,DBClient, StdCtrls, DBCtrls, Grids, DBGrids, ComCtrls, StrUtils,
  DB, Mask,ADODB, Buttons, ExtCtrls, JvExDBGrids, JvDBGrid, RpDefine,
  RpBase, RpSystem, JvgPage, JvExButtons, JvBitBtn, WSDLIntf, ClaseFunciones,
  ClaseTiposSectores,ClaseClientesTelefonos,ClaseParcelasNovedades,
  ToolWin, JvExComCtrls, JvComCtrls, ImgList,ClaseSistemas,ClaseParcelas,
  Menus, JvExGrids, JvStringGrid;

type LosDts = class(TDataSource);
type HackTable = class(TADOTable);

type THackStringGrid = class(TStringGrid);
type
  TEntregaTitulo = class(TForm)
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
    Imprime: TJvBitBtn;
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
    Label6: TLabel;
    D4: TDBEdit;
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
     label30: TLabel;
    label31: TLabel;
    LasDeudas: TStringGrid;
    DataSource13: TDataSource;
    PERIODO: TComboBox;
    StringGridUP: TStringGrid;
    DataSource14: TDataSource;
    GroupBox3: TGroupBox;
    JvDBGrid2: TJvDBGrid;
    DataSource15: TDataSource;
    T8: TClientDataSet;
    StringAgrupP: TStringGrid;
    StringAgrupD: TStringGrid;
    GRILLADETSERV: TStringGrid;
    PopupMenu1: TPopupMenu;
    VerDeudaHastaFinAo1: TMenuItem;
    TP: TClientDataSet;
    Edit66: TEdit;
    GroupBox10: TGroupBox;
    Label39: TLabel;
    GroupBox11: TGroupBox;
    numcaja: TEdit;
    Label40: TLabel;
    ElSector: TComboBox;
    Edit6: TComboBox;
    Label41: TLabel;
    Timer1: TTimer;
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
    Label29: TLabel;
    Image3: TImage;
    Label32: TLabel;
    FECNAC: TMaskEdit;
    Label4: TLabel;
    D5: TDBEdit;
    Label13: TLabel;
    D3: TDBEdit;
    procedure FormActivate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure RB2Click(Sender: TObject);
    procedure RB1Click(Sender: TObject);
    procedure RvPrint(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BuscaClick(Sender: TObject);
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
    procedure JvDBGrid8CellClick(Column: TColumn);
    procedure Sumadeuda(nro:byte);
    procedure Edit66KeyPress(Sender: TObject; var Key: Char);
    procedure saleClick(Sender: TObject);
    procedure ElSectorExit(Sender: TObject);
    procedure ElSectorKeyPress(Sender: TObject; var Key: Char);
    procedure Edit6Exit(Sender: TObject);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure nameChange(Sender: TObject);
    procedure Limpiar();
    procedure Timer1Timer(Sender: TObject);
    procedure CARACExit(Sender: TObject);
    procedure CARACKeyPress(Sender: TObject; var Key: Char);
    procedure TELFKeyPress(Sender: TObject; var Key: Char);
    procedure ORIGENExit(Sender: TObject);
    procedure ODNIChange(Sender: TObject);
    procedure FECNACExit(Sender: TObject);
    procedure FECNACKeyPress(Sender: TObject; var Key: Char);
    procedure VerDeudaHastaFinAo1Click(Sender: TObject);
  private
    control,gh:boolean;{Controla que no hubiere errores en la carga de datos}
    Funciones:TFuncionesVarias;
    Parcelas:TParcelas;
    cantidinhu,ger,nronov:integer;
    ultimogestorpago,cuiftelef:string;
    Sistemas:TSistemas;
    sumdeuda,lafila:double;
    //CuifTelef:Variant;
    CUOTAS,ULTIMOP,MANTEPAGOS,LASPARCELAS: TADODataSet;
    DataSet,DataSet0,DataSet1,DataSet2,DataSet3,DataSet4,DataSet5,DataSet6,DataSet7,
    DataSet8,DataSet9,DataClie,Datos,DataSet11,DataSet12,DataMante,DtCombo,DtComboPre,
    DataSet13,DataSet14,DataSetCuotasVta,DataSetCuotasServ,DataSetConso,
    DataSetMantePagos,DataSetUltCobrador:TClientDataSet; //declaro los DataSet
    IdCombos:array of array of string; // para los combobox
    ///// para la impresion de datos segun parametros
    PosH1:Array [0..9] of Double;//Posiciones
    Camp1:Array [0..9] of Integer;//Campos a Tomar en cuenta
    TxtCamp1:Array [0..9] of String;//Textos de los Campos a Tomar en cuenta

    FechaActual,valormante,elmes,elanio,txtfecha,mes,anio,elperiodo,DatoFiltro,lanovalta:string;

    PosH:Array [0..1] of Double;//Posiciones
    Camp:Array [0..1] of Integer;//Campos a Tomar en cuenta
    TxtCamp:Array [0..1] of String;//Textos de los Campos a Tomar en cuenta

    PosH2:Array [0..8] of Double;//Posiciones
    Camp2:Array [0..8] of Integer;//Campos a Tomar en cuenta
    TxtCamp2:Array [0..8] of String;//Textos de los Campos a Tomar en cuenta
    NroOpc:byte;
    { Private declarations }
  public
    Resultado,elsect,laparcela,laplaza,eltit,fechacesion: string;
    nroac,larazonsocial,elsec,laparce,nrocaja,lafeccesion,elbar,eldomi,eldni,eltele:STRING;
    ClientesTelefonos:TClientesTelefonos;
    ParcelasNovedades:TParcelasNovedades;
  end;

var
  EntregaTitulo: TEntregaTitulo;

implementation

uses Unidad, Modulo,Busqueda,AM_VenGenerica, ClaseParcelasVentas,CalculoSaldosAutom,ClaseTiposTelefonos;

{$R *.dfm}

procedure TEntregaTitulo.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TEntregaTitulo.FormActivate(Sender: TObject);
begin
 if not(gh) then begin
  gh:=true;
  setlength(IdCombos,1);
  Label28.Caption:='...';
  imprime.Enabled:=false;
  button2.Visible:=false;
  edit1.Visible:=false;
  name.Visible:=false;
  label24.Visible:=false;
  label25.Visible:=false;
  LASPARCELAS:=TADODataSet.Create(nil);
  LASPARCELAS.ConnectionString:=modulo2.Conexion;
  CUOTAS:=TADODataSet.Create(nil);
  CUOTAS.ConnectionString:=modulo2.Conexion;
  Datasource13.DataSet:=cuotas;
  ULTIMOP:=TADODataSet.Create(nil);
  ULTIMOP.ConnectionString:=modulo2.Conexion;
  Datasource14.DataSet:=ULTIMOP;
  FechaActual:=LeftStr(Fec_System(),10);
  fecnac.text:=FechaActual;
  Elanio:=strcut_midle(FechaActual,7,10);
  elperiodo:=inttostr(strtoint(Elanio) - 5);
  PC1.ActivePage:=PC1.Pages[0];
  PC2.ActivePage:=PC2.Pages[0];
  PageControl1.ActivePage:=PageControl1.Pages[0];
  PC1.Images:=modulo2.ImageList1;
  control:=false;
  coloca1(16);
  coloca1(22);
  coloca1(26);
  ODNI.SetFocus;
  StringAgrupD.Cells[0,0]:='Periodo';                  StringAgrupD.Cells[1,0]:='Imp.Cuota';
  StringAgrupD.Cells[2,0]:='Interes';                  StringAgrupD.Cells[3,0]:='TotalCuota';
  StringAgrupD.Cells[4,0]:='EstadoVto';                StringAgrupD.Cells[5,0]:='EstadoPago';
  StringAgrupD.Cells[6,0]:='FechaCobro';               StringAgrupD.Cells[7,0]:='NroComprob.';
  StringAgrupD.Cells[8,0]:='ImpCobrado';

  StringAgrupP.Cells[0,0]:='Periodo';                  StringAgrupP.Cells[1,0]:='Imp.Cuota';
  StringAgrupP.Cells[2,0]:='EstadoPago';               StringAgrupP.Cells[3,0]:='FechaCobro';
  StringAgrupP.Cells[4,0]:='NroComprob.';              StringAgrupP.Cells[5,0]:='ImpoCobrado';
  StringAgrupP.Cells[6,0]:='OtroComprob';              StringAgrupP.Cells[7,0]:='Origen';
  StringAgrupP.Cells[8,0]:='CobradoPor';

  grilla2.Cells[0,0]:='Orden';            grilla2.Cells[1,0]:='Id.';
  grilla2.Cells[2,0]:='Caract.';          grilla2.Cells[3,0]:='N° Teléfono';
  grilla2.Cells[4,0]:='Origen';           grilla2.Cells[5,0]:='N° Origen';
  grilla2.Cells[6,0]:='MDF';

  MANTEPAGOS:=TADODataSet.Create(nil);
  MANTEPAGOS.ConnectionString:=modulo2.Conexion;
 end;
end;

procedure TEntregaTitulo.Limpiar();
begin
numcaja.Clear;
label28.Caption:='...';
label39.Caption:='...';
dventa.Text:='00.00';
dservicio.Text:='00.00';
dmante.Text:='00.00';
dconsoli.Text:='00.00';
PC1.ActivePage:=PC1.Pages[0];
end;

procedure TEntregaTitulo.Coloca1(nro:byte);
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
  //if RB4.Checked then begin
  // NroAcc:=null;Sector:=trim(ONOMB.Text);NroPar:=null;NroActa:=null;
  // txtw:='select * from Fn_VistaParcelas (null ,' + chr(39) + Sector + chr(39) +' ,null,null,' +  '0)';
  //end;
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
   Coloca1(8);    /// Estado Cuent Servicio
   Coloca1(9);    /// Estado Cuent Mantenimiento
   Coloca1(11);   // histo de titulares
   Coloca1(12);   // Estado Cuent consolidado
   Coloca1(13);   // precio de mantenimiento
   coloca1(14);   // saldo de mante
   coloca1(15);   // detalle deuda de mante
   coloca1(17);   // ultimos pagos
   coloca1(19);   // los pagos y deudas de la accion
   coloca1(20);   //Traemos las cuotas e importes de las ventas
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
  +'Total,CantCuotas,ValorCuota, TipoFormaPago ,objeto,observaciones,Confirmado '
  +' FROM Fn_VistaParcelasServicios (null,'+ DataSet0.Fields[1].AsString +',0)';
  if not Funciones.Listar(txtw,DataSet6) then
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
  DataSet.Free;
  DataSet:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT fechacesion FROM Fn_VistaParcelasTitulares (null,' + DataSet0.Fields[0].AsString +',0) where TipoAccionista=2 and Nivel = 1';
  if not Funciones.Listar(txtw,DataSet) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  fechacesion:=DataSet.Fields[0].AsString;
  Funciones.Free;
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
  + 'EstadoVto,EstadoPago,FechaCobro,NroComprobante,ImporteCobrado as ImpCobrado FROM EstadoCuentaMantenimiento'
  + ' ( ' + DataSet0.Fields[1].AsString + ',' + chr(39)+  txtfecha +chr(39) +',0) where Periodo <> 999999 order by 1';
  if not Funciones.Listar(txtw,DataSet11) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if not DataSet11.IsEmpty then begin
   MANTEPAGOS.Close;
   MANTEPAGOS.CommandText:='SELECT Periodo,ImporteCuota,InteresAcumulado as Interes,TotalCuota, '
   + 'EstadoVto,EstadoPago,FechaCobro,NroComprobante,ImporteCobrado as ImpCobrado,otrocomprobante,'
   + 'OrigenPago,CobradoPor FROM EstadoCuentaMantenimiento'
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
    StringAgrupP.Cells[5,t]:='$ '+ trim(MANTEPAGOS.Fields[8].AsString);
    StringAgrupP.Cells[6,t]:=trim(MANTEPAGOS.Fields[9].AsString);
    StringAgrupP.Cells[7,t]:=trim(MANTEPAGOS.Fields[10].AsString);
    StringAgrupP.Cells[8,t]:=trim(MANTEPAGOS.Fields[11].AsString);
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
  txtw:='SELECT top 500 dbo.Parcelas.NroAccion, dbo.Parcelas.NroTitulo, dbo.Parcelas.Sector, dbo.Parcelas.CodigoPlaza, '
  +'dbo.TiposPlazas.Detalle, dbo.Parcelas.Parcela, dbo.Parcelas.NroActa, dbo.Parcelas.Nomenclatura,'
  +'dbo.Parcelas.EspacioVerde, dbo.Clientes.RazonSocial AS Cobrador, dbo.Parcelas.DomicilioCobro, dbo.Parcelas.Observacion,'
  +'dbo.Parcelas.NroCaja, dbo.ParcelasTitulares.NroTipoAcc,dbo.ParcelasTitulares.Activo, Clientes_1.RazonSocial AS Titular'
  +' FROM    dbo.Parcelas '
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

procedure TEntregaTitulo.RB2Click(Sender: TObject);
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

procedure TEntregaTitulo.RB1Click(Sender: TObject);
begin
ONOMB.Visible:=FALSE;
ODNI.Visible:=FALSE;
LB1.Caption:='';
Busca.Enabled:=true;
Busca.SetFocus;
end;

procedure TEntregaTitulo.RvPrint(Sender: TObject);
var posfx,posfy,posfin,pos_y,salto:double;
   Tamanio,hoja:integer;

   Function Imagen(posx,posy:double;vaf:integer):double;
   var Imagen1:  TBitmap;
       Fuente,PathLogo:string;
       ElMes,ElAnio,ElDia,txt:string;
   begin
    with Rv do begin
     Imagen1 := TBitMap.Create;
     PathLogo:=modulo2.path_todo + '\Formularios\FRM-104-0215.jpg';
     if FileExists(PathLogo) then begin
       Image1.Picture.LoadFromFile(PathLogo);
       Imagen1.Assign(Image1.Picture.Graphic);
       BaseReport.PrintBitmapRect(posx,posy,posx+215,posy+290,Imagen1);
     end;
     Imagen1.Free;

     ElMes:=el_mes(strtoint(strcut_midle(trim(fecnac.Text),4,5)));
     ElAnio:=strcut_midle(trim(fecnac.Text),7,10);
     ElDia:=LeftStr(trim(fecnac.Text),2);

     BaseReport.SetFont('Arial Black',11);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+110,posy+59,ElDia);
     BaseReport.PrintXY(posx+145,posy+59,ElMes);
     BaseReport.PrintXY(posx+192,posy+59,ElAnio);

     BaseReport.PrintXY(posx+65,posy+80,larazonsocial);
     BaseReport.PrintXY(posx+45,posy+86,eldni);
     BaseReport.PrintXY(posx+93,posy+86,'Bº ' + trim(d14.Text) + ' ' + trim(d14.Text));

     BaseReport.PrintXY(posx+130,posy+100,lafeccesion);

     BaseReport.PrintXY(posx+95,posy+160,trim(laplaza));
     BaseReport.PrintXY(posx+156,posy+160,trim(elsect));
     BaseReport.PrintXY(posx+185,posy+160,trim(laparcela));

     BaseReport.PrintXY(posx+33,posy+181,ElDia);
     BaseReport.PrintXY(posx+60,posy+181,ElMes);
     BaseReport.PrintXY(posx+123,posy+181,ElAnio);

     BaseReport.SetFont('Arial Black',14);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+45,posy+225,trim(label30.Caption));
    end;
   end;

begin
 posfx:=1;
 posfy:=1;
 salto:=4;
 hoja:=1;
 if NroOpc = 1 then begin
   posfy:=Imagen(posfx,posfy,hoja);
 end;
end;

procedure TEntregaTitulo.DBGrid1CellClick(Column: TColumn);
var t,gf:integer;
    txt:string;
begin
 if not (DataSet0.IsEmpty) then begin
  label30.Caption:=trim(DataSet0.Fields[0].AsString);
  Label28.Caption:=trim(DataSet0.Fields[9].AsString);
  numcaja.Text:=trim(DataSet0.Fields[12].AsString);
  eltit:=trim(DataSet0.Fields[1].AsString);
  elsect:=trim(DataSet0.Fields[2].AsString);
  laparcela:=trim(DataSet0.Fields[5].AsString);
  laplaza:=trim(DataSet0.Fields[4].AsString);
  control:=true;
  Coloca1(1);
  Coloca1(3);  // titulares
  Coloca1(4);  // inhumados
  Coloca1(9);  // fechacesion

  {IF (TRIM(dventa.Text)='0')  AND (TRIM(dservicio.Text)='0')
     AND (TRIM(dmante.Text)='0') AND (TRIM(dconsoli.Text)='0') THEN BEGIN
      Image3.Picture.LoadFromFile(modulo2.path_todo + '\Imagenes\botones32 x 32\yes.bmp');
      LABEL29.Caption:='ACCION SIN DEUDA...';
      IMPRIME.Enabled:=TRUE;
      IMPRIME.SetFocus;
  END
  ELSE BEGIN
      Image3.Picture.LoadFromFile(modulo2.path_todo + '\Imagenes\botones32 x 32\nou.bmp');
      LABEL29.Caption:='ACCION CON DEUDA... IMPOSIBLE LA ENTREGA DEL TITULO';
      IMPRIME.Enabled:=FALSE;
  END; }
 end;
end;

procedure TEntregaTitulo.BuscaClick(Sender: TObject);
var p,u:integer;
begin
  Label39.Caption:='...';
  Label28.Caption:='...';
  dventa.Text:='00.00';
  dmante.Text:='00.00';
  dservicio.Text:='00.00';
  dconsoli.Text:='00.00';
  numcaja.Clear;
  label29.Caption :='...';
  Image3.Picture.LoadFromFile(modulo2.path_todo+'\Imagenes\button_cancel.ico');
  if rb1.Checked  then Coloca1(24)
  else Coloca1(0);
  Barra1.Panels[1].Text:='Registos encontrados: ' + inttostr(DataSet0.RecordCount);
end;

procedure TEntregaTitulo.ImprimeClick(Sender: TObject);
var gf:integer;
    alta:boolean;
    Cons,texto,txtw:widestring;
begin
 gf:=messagedlg('Desea Imprimir la consulta de Clientes?',mtWarning,[mbok,mbCancel],0);
 if gf = 1 then begin
  try
   Funciones:=TFuncionesVarias.Create(nil);
   Funciones.ConnectionString:=modulo2.Conexion;
   Cons:='INSERT INTO ParcelasTitulosEntregados(NroAccion,CuifTitular,FechaEntrega)'
   +' VALUES ('+ trim(label30.Caption) + ','+ cuiftelef +','+ chr(39) + trim(fecnac.text)+ chr(39)  +')';
   if not Funciones.ListarSinResp(Cons) then messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
   else begin
    messagedlg('EXITO al procesar el pedido de entrega de titulo',mtConfirmation,[mbok],0);
    AuditAccesos('Modulo 2','ENTREGA DE TITULO ACCION' + TRIM(ODNI.Text));
    texto:='Se hizo Entrega del titulo a la Parcela : ' + trim(label30.Caption) + ' - en la fecha ' + trim(fecnac.Text);
    ParcelasNovedades:=TParcelasNovedades.Create(nil);
    ParcelasNovedades.ConnectionString:=modulo2.Conexion;
    txtw:='INSERT INTO ParcelasNovedades (Nroaccion,Novedad,Resuelto,Prioridad) VALUES ('
   + trim(label30.Caption) + ' , ' + chr(39) + texto + chr(39) + ' , 0 , 1)';
    alta:=ParcelasNovedades.ListarSinResp(txtw);
    if alta then begin
     NroOpc:=1;
     Rv.SystemPrinter.Copies :=3;
     Rv.Execute;
    end;
    ParcelasNovedades.Free;
    Funciones.Free;
    imprime.Enabled :=false;
   end;
  except
    messagedlg('Error al procesar el pedido de entrega de titulo',mterror,[mbok],0);
  end;
 end;
end;

procedure TEntregaTitulo.ONOMBKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  periodo.SetFocus;
END;
end;

procedure TEntregaTitulo.ODNIKeyPress(Sender: TObject; var Key: Char);
begin
  if rb3.Checked  then  begin
    if key = #13 then begin
    Key := #0;
    busca.SetFocus;
   end
   else begin
    if ( StrScan('0123456789',Key) <> nil ) or
        ( Key = Char(VK_BACK) ) then
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

procedure TEntregaTitulo.PC1Change(Sender: TObject);
begin
if not control then PC1.ActivePage:=PC1.Pages[0]; 
end;

procedure TEntregaTitulo.JvDBGrid4CellClick(Column: TColumn);
begin
if not DataSet4.IsEmpty then Coloca1(6);
end;

procedure TEntregaTitulo.JvDBGrid6CellClick(Column: TColumn);
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
  end
  else begin
    dservicio.Text:='00.00';
  end;
 end;
end;

procedure TEntregaTitulo.JvDBGrid2CellClick(Column: TColumn);
var p,u:integer;
begin
 if not DataClie.IsEmpty then begin
  Coloca1(10);
  D1.DataField:='Cuif';
  cuiftelef:=trim(DataSet2.Fields[1].AsString);
  D2.DataField:='TipoDoc';            D3.DataField:='NroDni';
  D4.DataField:='FechaNacimiento';    D5.DataField:='RazonSocial';
  D6.DataField:='Alias';              D7.DataField:='Cuit';
  D8.DataField:='DetalleSexo';        D9.DataField:='Religion';
  D10.DataField:='Nacionalidad';      D11.DataField:='EstadoCivil';
  D12.DataField:='Provincia';         D13.DataField:='Localidad';
  D14.DataField:='DetalleBarrio';     D15.DataField:='Domicilio';
  D16.DataField:='CodigoPostal';      D17.DataField:='DetallePostal';
  D18.DataField:='Categoria';         D19.DataField:='mail';
  D20.DataField:='Observaciones';
  Coloca1(2);
  if (trim(dventa.text)='0') and (trim(dservicio.text)='0')
   and (trim(dmante.text)='0') and (trim(dconsoli.text)='0') then begin
   label29.Caption:='Accion sin Deuda.. Es posible Entregar Titulo';
   Image3.Picture.LoadFromFile(modulo2.path_todo + '\Imagenes\button_ok.ico');
   imprime.enabled:=true;
   fecnac.setfocus;
  end
  else begin
   label29.Caption:='ATENCION.. Accion con Deuda Imposible entregar Titulo';
   Image3.Picture.LoadFromFile(modulo2.path_todo + '\Imagenes\button_cancel.ico');
   imprime.enabled:=FALSE;
   fecnac.setfocus;
  end;
 end;
end;

procedure TEntregaTitulo.Button2Click(Sender: TObject);
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

procedure TEntregaTitulo.PERIODOKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  busca.SetFocus;
END;
end;

procedure TEntregaTitulo.PERIODOExit(Sender: TObject);
begin
if PERIODO.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Periodo Ingresado!!',mterror,[mbok],0);
  PERIODO.SetFocus;
end;
end;

procedure TEntregaTitulo.JvDBGrid8CellClick(Column: TColumn);
begin
 if (trim(DataSet8.Fields[12].AsString)='')  then DataSet8.Fields[12].Text:='X';
end;

procedure TEntregaTitulo.Sumadeuda(nro:byte);
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
 end;
end;

procedure TEntregaTitulo.Edit66KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  periodo.SetFocus;
END;
end;

procedure TEntregaTitulo.saleClick(Sender: TObject);
begin
close;
end;

procedure TEntregaTitulo.ElSectorExit(Sender: TObject);
begin
if ElSector.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Sector Ingresado!!',mterror,[mbok],0);
  ElSector.SetFocus;
end;
end;

procedure TEntregaTitulo.ElSectorKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  coloca1(23);
  edit6.Enabled:=true;
  edit6.SetFocus;
 end
 else begin
  if ( StrScan('ABCDEFGHIJKLMNÑOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz',Key) <> nil ) or
      ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;
end;

procedure TEntregaTitulo.Edit6Exit(Sender: TObject);
begin
if Edit6.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el N° de Acción Ingresado!!',mterror,[mbok],0);
  Edit6.SetFocus;
end;
end;

procedure TEntregaTitulo.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
  Key := #0;
  busca.SetFocus;
 end
 else begin
  if ( StrScan('0123456789',Key) <> nil ) or  ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;
end;

procedure TEntregaTitulo.nameChange(Sender: TObject);
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

procedure TEntregaTitulo.Timer1Timer(Sender: TObject);
begin
//
end;

procedure TEntregaTitulo.CARACExit(Sender: TObject);
begin
if (trim(CARAC.Text) = '') or (trim(CARAC.Text) = '0')  then begin
  messagedlg('Error!! No hay una Caracteristica de Telefono Ingresada.',mterror,[mbok],0);
  CARAC.SetFocus
end;
end;

procedure TEntregaTitulo.CARACKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  TELF.SetFocus;
end
else begin
  if ( StrScan('0123456789',Key) <> nil ) or  ( Key = Char(VK_BACK) ) then
   else Key := #0;
end;
end;

procedure TEntregaTitulo.TELFKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  ORIGEN.SetFocus;
end
else begin
  if ( StrScan('0123456789',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
   else Key := #0;
end;
end;

procedure TEntregaTitulo.ORIGENExit(Sender: TObject);
begin
if ORIGEN.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Origen Ingresado!!',mterror,[mbok],0);
  ORIGEN.SetFocus;
end;
end;

procedure TEntregaTitulo.ODNIChange(Sender: TObject);
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

procedure TEntregaTitulo.FECNACExit(Sender: TObject);
var kl:Tdatetime;
begin
 try
  kl:=strtodate(trim(FECNAC.Text));
 except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  FECNAC.SetFocus;
 end;
end;

procedure TEntregaTitulo.FECNACKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  imprime.SetFocus;
 end;
end;

procedure TEntregaTitulo.VerDeudaHastaFinAo1Click(Sender: TObject);
begin
//  NroOpc:=2;
//  Rv.SystemPrinter.Copies :=2;
//  Rv.Execute;
end;

end.

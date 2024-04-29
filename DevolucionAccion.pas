unit DevolucionAccion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,DBClient, StdCtrls, DBCtrls, Grids, DBGrids, ComCtrls, StrUtils,
  DB, Mask,ADODB, Buttons, ExtCtrls, JvExDBGrids, JvDBGrid, RpDefine,
  RpBase, RpSystem, JvgPage, JvExButtons, JvBitBtn, WSDLIntf, ClaseFunciones,
  ClaseTiposSectores,ClaseClientesTelefonos,ClaseParcelasTitularesHistorico,
  ToolWin, JvExComCtrls, JvComCtrls, ImgList,ClaseSistemas,ClaseParcelas,
  Menus, JvExGrids, JvStringGrid;

type LosDts = class(TDataSource);
type HackTable = class(TADOTable);

type THackStringGrid = class(TStringGrid);
type
  TDevAccion = class(TForm)
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
    TabSheet3: TTabSheet;
    DataSource2: TDataSource;
    PC2: TJvgPageControl;
    TabSheet8: TTabSheet;
    JvDBGrid8: TJvDBGrid;
    DataSource5: TDataSource;
    DataSource6: TDataSource;
    DataSource8: TDataSource;
    Image1: TImage;
    todos: TRichEdit;
    RB3: TRadioButton;
    RB7: TRadioButton;
    DataSource9: TDataSource;
    TabSheet9: TTabSheet;
    Splitter1: TSplitter;
    PageControl1: TPageControl;
    TabSheet10: TTabSheet;
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
    DataSource14: TDataSource;
    GroupBox3: TGroupBox;
    JvDBGrid2: TJvDBGrid;
    T8: TClientDataSet;
    JvBitBtn1: TJvBitBtn;
    StringAgrupP: TStringGrid;
    StringAgrupD: TStringGrid;
    RvS: TRvSystem;
    TP: TClientDataSet;
    RvEC: TRvSystem;
    Edit66: TEdit;
    GroupBox10: TGroupBox;
    Label39: TLabel;
    GroupBox11: TGroupBox;
    numcaja: TEdit;
    Label40: TLabel;
    JvBitBtn3: TJvBitBtn;
    JvBitBtn4: TJvBitBtn;
    ElSector: TComboBox;
    Edit6: TComboBox;
    Label41: TLabel;
    datoabogado: TGroupBox;
    DataSource16: TDataSource;
    sale: TJvBitBtn;
    Label59: TLabel;
    GroupBox1: TGroupBox;
    JvBitBtn5: TJvBitBtn;
    Image3: TImage;
    Label29: TLabel;
    Label4: TLabel;
    D5: TDBEdit;
    Label13: TLabel;
    D3: TDBEdit;
    procedure FormActivate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure RB2Click(Sender: TObject);
    procedure RB1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BuscaClick(Sender: TObject);
    procedure ONOMBKeyPress(Sender: TObject; var Key: Char);
    procedure ODNIKeyPress(Sender: TObject; var Key: Char);
    procedure PC1Change(Sender: TObject);
    procedure JvDBGrid2CellClick(Column: TColumn);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PERIODOKeyPress(Sender: TObject; var Key: Char);
    procedure PERIODOExit(Sender: TObject);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure JvDBGrid8CellClick(Column: TColumn);
    procedure Edit66KeyPress(Sender: TObject; var Key: Char);
    procedure ElSectorExit(Sender: TObject);
    procedure ElSectorKeyPress(Sender: TObject; var Key: Char);
    procedure Edit6Exit(Sender: TObject);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure nameChange(Sender: TObject);
    procedure Limpiar();
    procedure ODNIChange(Sender: TObject);
    procedure saleClick(Sender: TObject);
    procedure RvSPrint(Sender: TObject);
    procedure JvBitBtn5Click(Sender: TObject);
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
    ClientesTelefonos:TClientesTelefonos;
     ParcelasTitularesHistorico:TParcelasTitularesHistorico;
    //IdCombo:array of array of string;
  end;

var
  DevAccion: TDevAccion;

implementation

uses Unidad, Modulo,Busqueda,AM_VenGenerica, ClaseParcelasVentas,CalculoSaldosAutom,ClaseTiposTelefonos;

{$R *.dfm}

procedure TDevAccion.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TDevAccion.FormActivate(Sender: TObject);
begin
 if not(gh) then begin
  gh:=true;
  setlength(IdCombos,1);
  Label28.Caption:='...';
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
  datoabogado.Visible :=false;
  StringAgrupD.Cells[0,0]:='Periodo';                  StringAgrupD.Cells[1,0]:='Imp.Cuota';
  StringAgrupD.Cells[2,0]:='Interes';                  StringAgrupD.Cells[3,0]:='TotalCuota';
  StringAgrupD.Cells[4,0]:='EstadoVto';                StringAgrupD.Cells[5,0]:='EstadoPago';
  StringAgrupD.Cells[6,0]:='Estado';                   StringAgrupD.Cells[7,0]:='';
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
  JvBitBtn5.Enabled :=false;
  GroupBox1.Visible :=false;
  MANTEPAGOS:=TADODataSet.Create(nil);
  MANTEPAGOS.ConnectionString:=modulo2.Conexion;
 end;
end;

procedure TDevAccion.Limpiar();
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

procedure TDevAccion.Coloca1(nro:byte);
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
   txtw:='select distinct * from Fn_VistaParcelas (' + NroAcc+' ,null,null,null,0)';
  end;
  if RB7.Checked then begin
   NroAcc:=null;Sector:=trim(elsector.Text);NroPar:=trim(edit6.Text);NroActa:=null;
   txtw:='select distinct * from Fn_VistaParcelas (null ,' + chr(39) + Sector + chr(39) + ','  + NroPar  + ',null,' +  '0)';
  end;
  if RB5.Checked then begin
   NroAcc:=null;Sector:='';NroPar:=null;NroActa:=trim(ODNI.Text);
   txtw:='select distinct * from Fn_VistaParcelas (null ,null ,null,' + NroActa+ ',0)';
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

  DataCtaCte.Free;
  DataCtaCte:=TClientdataSet.Create(nil);
  DataSource16.DataSet:=DataCtaCte;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT objeto FROM AccionesconCtaCte (' + trim(DataSet0.Fields[1].AsString)+') '; // where nroaccion = ' + trim(DataSet0.Fields[1].AsString);
  if not Funciones.Listar(txtw,DataCtaCte) then
   messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
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
    Coloca1(7);
    Coloca1(14);
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
   Coloca1(8);    /// Estado Cuent Servicio
   Coloca1(13);   // precio de mantenimiento
   coloca1(14);   // saldo de mante
   coloca1(15);   // detalle deuda de mante
   coloca1(19);   // los pagos y deudas de la accion
  end;
end;
if nro=4 then begin   /// Inhumados
  DataSet3.Free;
  DataSet3:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT COUNT(*) as cantidad FROM ParcelasInhumados where NroAccion = ' + DataSet0.Fields[1].AsString + '  group by NroAccion ';
  if not Funciones.Listar(txtw,DataSet3) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador', mtError,[mbok],0);
  Funciones.Free;
  if not DataSet3.IsEmpty then begin
   Label39.Caption:=DataSet3.Fields[0].AsString;
  end
  else begin
   label39.Caption:='...';
  end;
end;
if nro=5 then begin
 {   for p:=1 to GrillaT.RowCount-1 do begin
      //inserto en el historico
      ParcelasTitularesHistorico:=TParcelasTitularesHistorico.Create(nil);
      ParcelasTitularesHistorico.ConnectionString:=modulo2.Conexion;
      ParcelasTitularesHistorico.C_NroAccion_IX1:=strtoint(odni.Text);
      ParcelasTitularesHistorico.C_Cuif_IX2:=strtoint64(elcuif);
      ParcelasTitularesHistorico.C_Fecha_IX3:=strcut(Fec_System(),10);
      ParcelasTitularesHistorico.C_NroTipoAcc_IX4:=2;
      ParcelasTitularesHistorico.C_Nivel:=strtoint(elnivel);
      ParcelasTitularesHistorico.C_Fecha_A:=strcut(Fec_System(),10);
      ParcelasTitularesHistorico.C_Usu_A:=modulo2.nro_usu;
      pth:=ParcelasTitularesHistorico.Agrega;
      if pth then begin
       //
       Barra.Panels[1].Text:='Se ha Modificado este Titular con Exito'
      end
      else begin
       Barra.Panels[1].Text:='Error al Modificar los Titulares';
      end;
      ParcelasTitularesHistorico.Free;     }
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
  + 'EstadoVto,EstadoPago,FechaCobro,NroComprobante,ImporteCobrado as ImpCobrado,OrigenPago FROM EstadoCuentaMantenimiento'
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
    StringAgrupD.Cells[7,t]:='';
   end;
   for t:=1 to StringAgrupD.RowCount-1 do begin
    if trim(StringAgrupD.Cells[6,t]) = 'CTA. CTE.' then begin
      conctacte := conctacte + 1;
    end;
   end;
  end;
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
   +' FROM  dbo.Parcelas '
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
end;

procedure TDevAccion.RB2Click(Sender: TObject);
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

procedure TDevAccion.RB1Click(Sender: TObject);
begin
ONOMB.Visible:=FALSE;
ODNI.Visible:=FALSE;
LB1.Caption:='';
Busca.Enabled:=true;
Busca.SetFocus;
end;

procedure TDevAccion.DBGrid1CellClick(Column: TColumn);
var t,gf:integer;
    txt:string;
begin
 if not (DataSet0.IsEmpty) then begin
  label30.Caption:=trim(DataSet0.Fields[0].AsString);
  Label28.Caption:=trim(DataSet0.Fields[9].AsString);
  numcaja.Text:=trim(DataSet0.Fields[12].AsString);
  control:=true;
  Coloca1(1);
  Coloca1(3);    // titulares
  Coloca1(4);    // inhumados
 end;
end;

procedure TDevAccion.BuscaClick(Sender: TObject);
var p,u:integer;
begin
  groupbox1.Visible :=false;
  d5.Clear ;
  d3.Clear;
  numcaja.Clear;
  Label39.Caption:='...';
  Label28.Caption:='...';
  dventa.Text:='0';
  dmante.Text:='0';
  dservicio.Text:='0';
  dconsoli.Text:='0';
  if rb1.Checked  then Coloca1(24)
  else Coloca1(0);
  Barra1.Panels[1].Text:='Registos encontrados: ' + inttostr(DataSet0.RecordCount);
end;

procedure TDevAccion.ONOMBKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  periodo.SetFocus;
 END;
end;

procedure TDevAccion.ODNIKeyPress(Sender: TObject; var Key: Char);
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

procedure TDevAccion.PC1Change(Sender: TObject);
begin
if not control then PC1.ActivePage:=PC1.Pages[0]; 
end;

procedure TDevAccion.JvDBGrid2CellClick(Column: TColumn);
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
  GroupBox1.Visible :=true;
  if trim(label39.Caption) <> '...' then begin
    Image3.Picture.LoadFromFile(modulo2.path_todo + '\Imagenes\botones32 x 32\nou.bmp');
    LABEL29.Caption:='ACCION CON INHUMADOS... IMPOSIBLE SU DEVOLUCION';
    JvBitBtn5.Enabled:=FALSE;
  end
  else begin
    IF (TRIM(dventa.Text)='0')  AND (TRIM(dservicio.Text)='0')
     AND (TRIM(dmante.Text)='0') AND (TRIM(dconsoli.Text)='0') THEN BEGIN
      Image3.Picture.LoadFromFile(modulo2.path_todo + '\Imagenes\botones32 x 32\yes.bmp');
      LABEL29.Caption:='ACCION SIN DEUDA...';
      JvBitBtn5.Enabled:=TRUE;
      JvBitBtn5.SetFocus;
    END
    ELSE BEGIN
      Image3.Picture.LoadFromFile(modulo2.path_todo + '\Imagenes\botones32 x 32\nou.bmp');
      LABEL29.Caption:='ACCION CON DEUDA... IMPOSIBLE SU DEVOLUCION';
      JvBitBtn5.Enabled:=FALSE;
    END;
  end;
 end;
end;

procedure TDevAccion.Button2Click(Sender: TObject);
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

procedure TDevAccion.PERIODOKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  busca.SetFocus;
END;
end;

procedure TDevAccion.PERIODOExit(Sender: TObject);
begin
if PERIODO.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Periodo Ingresado!!',mterror,[mbok],0);
  PERIODO.SetFocus;
end;
end;

procedure TDevAccion.JvBitBtn1Click(Sender: TObject);
begin
  PC1.ActivePage:=PC1.Pages[1];
  PC2.ActivePage:=PC2.Pages[5];
end;

procedure TDevAccion.JvDBGrid8CellClick(Column: TColumn);
begin
 if (trim(DataSet8.Fields[12].AsString)='')  then DataSet8.Fields[12].Text:='X';
end;

procedure TDevAccion.Edit66KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  periodo.SetFocus;
END;
end;

procedure TDevAccion.ElSectorExit(Sender: TObject);
begin
if ElSector.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Sector Ingresado!!',mterror,[mbok],0);
  ElSector.SetFocus;
end;
end;

procedure TDevAccion.ElSectorKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  coloca1(23);
  edit6.Enabled:=true;
  edit6.SetFocus;
 end
 else begin
  if ( StrScan('ABCDEFGHIJKLMNÑOPQRSTUVWXYZabcdefghijklmnñopqrstuvwxyz',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;
end;

procedure TDevAccion.Edit6Exit(Sender: TObject);
begin
if Edit6.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el N° de Acción Ingresado!!',mterror,[mbok],0);
  Edit6.SetFocus;
end;
end;

procedure TDevAccion.Edit6KeyPress(Sender: TObject; var Key: Char);
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

procedure TDevAccion.nameChange(Sender: TObject);
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

procedure TDevAccion.ODNIChange(Sender: TObject);
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

procedure TDevAccion.saleClick(Sender: TObject);
begin
close;
end;

procedure TDevAccion.RvSPrint(Sender: TObject);
var posfx,posfy,posfin,pos_y,salto:double;
   hoja,m,t:integer;
   mes,meses,anio,day:string;
   Imagen4:TBitMap;

   Function Logo(posx,posy:double;vaf:integer):double;
   var Imagen4:TBitMap;
       Fuente,PathLogo:string;
       Tamanio,hoja:integer;
   begin
    with RvS do begin
     Imagen4 := TBitMap.Create;
     PathLogo:=modulo2.path_todo + '\Formularios\cesionaRemanso.jpg';
     if FileExists(PathLogo) then begin
      Image1.Picture.LoadFromFile(PathLogo);
      Imagen4.Assign(Image1.Picture.Graphic);
      BaseReport.PrintBitmapRect(posx,posy,posx+215,posy+290,Imagen4);
     end;
     Imagen4.Free;
     BaseReport.SetFont('Arial Black',10);
     Mes:=el_mes(strtoint(strcut_midle(trim(FechaActual),4,5)));
     Anio:=strcut_midle(trim(FechaActual),7,10);
     day:=LeftStr(trim(FechaActual),2);

     BaseReport.PrintXY(posx+160,posy+45,day);
     BaseReport.PrintXY(posx+30,posy+50, mes);
     BaseReport.PrintXY(posx+72,posy+50, Anio);
     BaseReport.PrintXY(posx+95,posy+50,trim(d5.Text));

     BaseReport.PrintXY(posx+54,posy+57,trim(d3.Text));
     BaseReport.PrintXY(posx+108,posy+5,'Bº ' +trim(d14.Text) + ' ' + trim(d15.Text));

     BaseReport.PrintXY(posx+180,posy+100,nroac);

     BaseReport.PrintXY(posx+113,posy+117,elsec);
     BaseReport.PrintXY(posx+133,posy+117,laparce);

     BaseReport.SetFont('Arial',9);
     BaseReport.PrintXY(posx+50,posy+240,trim(d5.Text));
    end;
   end;

begin
  posfx:=0;
  posfy:=0;
  salto:=4;
  hoja:=1;
  posfy:=Logo(posfx,posfy,hoja);
end;

procedure TDevAccion.JvBitBtn5Click(Sender: TObject);
begin
 coloca1(5);
 RVS.SystemPrinter.Copies :=2;
 RVS.Execute;
 JvBitBtn5.Enabled:=false;
end;

end.

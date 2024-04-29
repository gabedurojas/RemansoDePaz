unit AM_Exhumado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,DBClient, StdCtrls, DBCtrls, Grids, DBGrids, ComCtrls, StrUtils,
  DB, Mask,ADODB, Buttons, ExtCtrls, JvExDBGrids, JvDBGrid, RpDefine,
  RpBase, RpSystem, JvgPage, JvExButtons, JvBitBtn, WSDLIntf, ClaseFunciones,
  ClaseTiposSectores,ToolWin, JvExComCtrls, JvComCtrls, ImgList,ClaseSistemas,ClaseParcelas,
  Menus, JvExGrids, JvStringGrid,ClaseParcelasServiciosDetalle,
  ClaseParcelasServicios,ClaseParcelasServiciosDeudas, JvExStdCtrls,
  JvEdit, JvValidateEdit,ClaseParcelasMovimientosDiarrioDetalle;

type LosDts = class(TDataSource);
type HackTable = class(TADOTable);

type THackStringGrid = class(TStringGrid);
type
  TInserta_Exhum = class(TForm)
    Barra1: TStatusBar;
    DataSource0: TDataSource;
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
    DataSource3: TDataSource;
    PC2: TJvgPageControl;
    ToolBar1: TToolBar;
    Imprime: TJvBitBtn;
    sale: TJvBitBtn;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    DataSource6: TDataSource;
    Image1: TImage;
    todos: TRichEdit;
    RB3: TRadioButton;
    RB7: TRadioButton;
    RB4: TRadioButton;
    TabSheet4: TTabSheet;
    JvDBGrid9: TJvDBGrid;
    DataSource10: TDataSource;
    TabSheet9: TTabSheet;
    Splitter1: TSplitter;
    PageControl1: TPageControl;
    TabSheet10: TTabSheet;
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
    GroupBox8: TGroupBox;
    RB1: TRadioButton;
    Label24: TLabel;
    Edit1: TEdit;
    Button2: TJvBitBtn;
    Label25: TLabel;
    name: TEdit;
     label30: TLabel;
    DataSource13: TDataSource;
    DataSource14: TDataSource;
    GroupBox3: TGroupBox;
    JvDBGrid2: TJvDBGrid;
    T8: TClientDataSet;
    RvS: TRvSystem;
    TP: TClientDataSet;
    RvEC: TRvSystem;
    Edit66: TEdit;
    gerimp: TRvSystem;
    ElSector: TComboBox;
    Edit6: TComboBox;
    JvDBGrid3: TJvDBGrid;
    GroupBox10: TGroupBox;
    Label39: TLabel;
    Button3: TButton;
    Panel2: TPanel;
    Label37: TLabel;
    Label20: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit2: TEdit;
    FECNAC: TMaskEdit;
    Label21: TLabel;
    Edit3: TEdit;
    Label22: TLabel;
    Label23: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label38: TLabel;
    JvBitBtn0: TJvBitBtn;
    JvBitBtn1: TJvBitBtn;
    JvBitBtn2: TJvBitBtn;
    cuif: TDBEdit;
    apeynom: TDBEdit;
    CUIF1: TDBEdit;
    apeynom1: TDBEdit;
    Label40: TLabel;
    Edit4: TEdit;
    apeynom2: TDBEdit;
    CUIF2: TDBEdit;
    RvOrden: TRvSystem;
    Label42: TLabel;
    horafalle: TMaskEdit;
    Label43: TLabel;
    Label44: TLabel;
    PopupMenu1: TPopupMenu;
    ConfirmarExhumacion1: TMenuItem;
    Label31: TLabel;
    tpopago: TComboBox;
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
    LB7: TLabel;
    E5: TEdit;
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
    TabSheet2: TTabSheet;
    TabSheet5: TTabSheet;
    grillaobjetos: TStringGrid;
    grilla5: TStringGrid;
    Label51: TLabel;
    actanro: TEdit;
    Label78: TLabel;
    Edit5: TEdit;
    Label80: TLabel;
    VALCUOTA: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure RB2Click(Sender: TObject);
    procedure RB1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BuscaClick(Sender: TObject);
    procedure ODNIKeyPress(Sender: TObject; var Key: Char);
    procedure PC1Change(Sender: TObject);
    procedure JvDBGrid2CellClick(Column: TColumn);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure saleClick(Sender: TObject);
    procedure gerimpPrint(Sender: TObject);
    procedure ElSectorExit(Sender: TObject);
    procedure ElSectorKeyPress(Sender: TObject; var Key: Char);
    procedure Edit6Exit(Sender: TObject);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure nameChange(Sender: TObject);
    procedure Limpiar();
    procedure ODNIChange(Sender: TObject);
    procedure FECNACExit(Sender: TObject);
    procedure FECNACKeyPress(Sender: TObject; var Key: Char);
    procedure Edit2Exit(Sender: TObject);
    procedure JvDBGrid3CellClick(Column: TColumn);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure JvBitBtn0Click(Sender: TObject);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure JvBitBtn2Click(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4Exit(Sender: TObject);
    procedure RvOrdenPrint(Sender: TObject);
    procedure horafalleKeyPress(Sender: TObject; var Key: Char);
    procedure ConfirmarExhumacion1Click(Sender: TObject);
    procedure tpopagoKeyPress(Sender: TObject; var Key: Char);
    procedure tpopagoExit(Sender: TObject);
    procedure bancoExit(Sender: TObject);
    procedure bancoKeyPress(Sender: TObject; var Key: Char);
    procedure titcheqExit(Sender: TObject);
    procedure titcheqKeyPress(Sender: TObject; var Key: Char);
    procedure E1KeyPress(Sender: TObject; var Key: Char);
    procedure E2Exit(Sender: TObject);
    procedure E2KeyPress(Sender: TObject; var Key: Char);
    procedure FchequeExit(Sender: TObject);
    procedure FchequeKeyPress(Sender: TObject; var Key: Char);
    procedure fpagochequeExit(Sender: TObject);
    procedure fpagochequeKeyPress(Sender: TObject; var Key: Char);
    procedure E5Exit(Sender: TObject);
    procedure E5KeyPress(Sender: TObject; var Key: Char);
    procedure TARJETAExit(Sender: TObject);
    procedure TARJETAKeyPress(Sender: TObject; var Key: Char);
    procedure tittarjeKeyPress(Sender: TObject; var Key: Char);
    procedure NroCuotaExit(Sender: TObject);
    procedure NroCuotaKeyPress(Sender: TObject; var Key: Char);
    procedure NROCBExit(Sender: TObject);
    procedure NROCBKeyPress(Sender: TObject; var Key: Char);
    procedure ftarjeExit(Sender: TObject);
    procedure ftarjeKeyPress(Sender: TObject; var Key: Char);
    procedure tittarjeExit(Sender: TObject);
    procedure E1Exit(Sender: TObject);
    procedure actanroKeyPress(Sender: TObject; var Key: Char);
    procedure actanroExit(Sender: TObject);
    procedure horafalleExit(Sender: TObject);
  private
    control,gh:boolean;{Controla que no hubiere errores en la carga de datos}
    Funciones:TFuncionesVarias;
    ParcelasMovimientosDiarrioDetalle:TParcelasMovimientosDiarrioDetalle;
    Parcelas:TParcelas;
    cantidinhu,ger,tipopago:integer;
    cuiftelef,tipodocr,docr,domir,barrior,ElId,LaObserv,TIPOOBJETO,laposicion:string;
    Sistemas:TSistemas;
    sumdeuda,lafila:double;
    //PROCESO3: TADODataSet;
    PROCESO,LASPARCELAS,RESPO: TADODataSet;
    DataSet,DataSet0,DataSet1,DataSet2,DataSet3,DataClie,DataSet12,DtCombo,
    DataSet13,DtComboO,DtComboC:TClientDataSet; //declaro los DataSet
    IdCombos:array of array of string; // para los combobox
    ///// para la impresion de datos segun parametros
    PosH1:Array [0..9] of Double;//Posiciones
    Camp1:Array [0..9] of Integer;//Campos a Tomar en cuenta
    TxtCamp1:Array [0..9] of String;//Textos de los Campos a Tomar en cuenta
    FechaActual,elmes,elanio,txtfecha,mes,anio,elperiodo:string;

    PosH:Array [0..2] of Double;//Posiciones
    Camp:Array [0..2] of Integer;//Campos a Tomar en cuenta
    TxtCamp:Array [0..2] of String;//Textos de los Campos a Tomar en cuenta

    PosH2:Array [0..8] of Double;//Posiciones
    Camp2:Array [0..8] of Integer;//Campos a Tomar en cuenta
    TxtCamp2:Array [0..8] of String;//Textos de los Campos a Tomar en cuenta
    { Private declarations }
  public
    Resultado,elidhab,nroaccio: string;
    nroac,larazonsocial,elsec,laparce,nrocaja,lafeccesion,elbar,eldomi,eldni,eltele,
    fecfalle,tpodoc,doc,estcivil,nacion,fecnacim,elobjeto:STRING;
    ParcelasServicios:TParcelasServicios;
    ParcelasServiciosDetalle:TParcelasServiciosDetalle;
    ParcelasServiciosDeudas:TParcelasServiciosDeudas;
  end;

var
  Inserta_Exhum: TInserta_Exhum;

implementation

uses Unidad, Modulo,Busqueda, SelecCuotas,
     AM_VenGenerica, ClaseParcelasVentas,
     CalculoSaldosAutom,ClaseTiposTelefonos;

{$R *.dfm}

procedure TInserta_Exhum.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TInserta_Exhum.FormActivate(Sender: TObject);
begin
 if not(gh) then begin
  gh:=true;
  setlength(IdCombos,2);
  imprime.Enabled:=false;
  button2.Visible:=false;
  edit1.Visible:=false;
  name.Visible:=false;
  label24.Visible:=false;
  label25.Visible:=false;
  grupocheq.Visible:=false;
  grupotarje.Visible:=false;
  LASPARCELAS:=TADODataSet.Create(nil);
  LASPARCELAS.ConnectionString:=modulo2.Conexion;
  RESPO:=TADODataSet.Create(nil);
  RESPO.ConnectionString:=modulo2.Conexion;
  PROCESO:=TADODataSet.Create(nil);
  PROCESO.ConnectionString:=modulo2.Conexion;
  FechaActual:=LeftStr(Fec_System(),10);
  fecnac.Text:=FechaActual;
  ftarje.Text := FechaActual;
  fpagocheque.Text := FechaActual;
  Elanio:=strcut_midle(FechaActual,7,10);
  elperiodo:=inttostr(strtoint(Elanio) - 5);
  PC1.ActivePage:=PC1.Pages[0];
  PC2.ActivePage:=PC2.Pages[0];
  PageControl1.ActivePage:=PageControl1.Pages[0];
  PC1.Images:=modulo2.ImageList1;
  control:=false;
  coloca1(22);    coloca1(26);
  coloca1(16);    coloca1(17);
  popupmenu1.Items[0].Visible :=false;
  ODNI.SetFocus;
 end;
end;

procedure TInserta_Exhum.Limpiar();
begin
label39.Caption:='...';
PC1.ActivePage:=PC1.Pages[0];
end;

procedure TInserta_Exhum.Coloca1(nro:byte);
var t,y,p,u:integer;
    txt,sex,Sector,Dato,sec,desdeanio:string;
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
end;
if nro =2  then begin
  RESPO.Close;
  RESPO.CommandText:='SELECT TipoDoc,NroDni,domicilio,DetalleBarrio FROM Fn_VistaClientes (null '
  + ' ,' + chr(39) + trim(apeynom.Text) + chr(39) + ' ,null ,null ,null ,null ,0)';
  RESPO.Open;
  if not respo.IsEmpty then begin
   tipodocr:=trim(RESPO.Fields[0].AsString);
   docr:=trim(RESPO.Fields[1].AsString);
   domir:=trim(RESPO.Fields[2].AsString);
   barrior:=trim(RESPO.Fields[3].AsString);
  end;
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
   imprime.Enabled:=true;
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
if nro=8 then begin
  DtComboO.Free;
  DtComboO:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if tpopago.itemindex = 0  then begin  // CONTADO
   txtw:='SELECT preciocontado FROM Fn_VistaLosServiciosPrecios(''EXHUMACION'')'
  end;
  if tpopago.itemindex = 1 then begin   //cheque
   txtw:='SELECT preciocheque FROM Fn_VistaLosServiciosPrecios(''EXHUMACION'')'
  end;
  if (tpopago.itemindex = 2) or (tpopago.itemindex = 3) then begin   //tarje credito   -- CUENTA CORRIENTE
   txtw:='SELECT preciolista FROM Fn_VistaLosServiciosPrecios(''EXHUMACION'') '
  end;
  //txtw:='SELECT idservicioobjeto,objeto,valor FROM Fn_VistaLosObjetosPrecios(2,0)';
  if not Funciones.Listar(txtw,DtComboO) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  {for t:=0 to grillaobjetos.ColCount-1 do
  for y:=1 to grillaobjetos.RowCount-1 do grillaobjetos.Cells[t,y]:='';
   for t:=1 to DtComboO.RecordCount  do begin
    DtComboO.RecNo:=t;
    grillaobjetos.RowCount:=t+1;
    grillaobjetos.Cells[0,t]:=trim(DtComboO.Fields[0].AsString);
    grillaobjetos.Cells[1,t]:=trim(DtComboO.Fields[1].AsString);
    grillaobjetos.Cells[2,t]:=trim(DtComboO.Fields[2].AsString);
   end;  }
   e5.Text :=trim(DtComboO.Fields[0].AsString);
end;
if nro=9  then begin  // CALCULAMOS LOS IMPORTES DE LAS CUOTAS
  {DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if (trim(tpopago.Text)='CONTADO')  or (trim(tpopago.Text)='CUENTA CORRIENTE') then
    txtw:='SELECT * FROM CreaDeudasVentas (2,' + chr(39) + trim(fecnac.Text) + chr(39) +',0,'+ trim(e5.Text) +',1,0)';
  if trim(tpopago.Text)='CHEQUE' then
    txtw:='select nrocuota,periodo,fechavto,capital,interes,montocuota,''Cheque'' as detalle '
    +' FROM CreaDeudasVentas (2,' + chr(39) + trim(tpopago.Text) + chr(39) + ',0,'+ trim(e5.Text) +',1,0)';
  if trim(tpopago.Text)='TARJETA CREDITO' then
    txtw:='select nrocuota,periodo,fechavto,capital,interes,montocuota,''Tarjeta Credito'' as detalle '
    +' FROM CreaDeudasVentas (12,' + chr(39) + trim(tpopago.Text) + chr(39) + ',0,'+ trim(edit3.Text) +',1,0)';
  if not Funciones.Listar(txtw,DtCombo) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  for t:=0 to grilla5.ColCount-1 do
    for y:=1 to grilla5.RowCount-1 do grilla5.Cells[t,y]:='';
  for t:=1 to DtCombo.RecordCount  do begin                        DtCombo.RecNo:=t;
    grilla5.RowCount:=t+1;
    grilla5.Cells[0,t]:=trim(DtCombo.Fields[0].AsString);
    grilla5.Cells[1,t]:=trim(DtCombo.Fields[1].AsString);
    grilla5.Cells[2,t]:=trim(DtCombo.Fields[2].AsString);
    grilla5.Cells[3,t]:=trim(DtCombo.Fields[3].AsString);
    grilla5.Cells[4,t]:=trim(DtCombo.Fields[4].AsString);
    grilla5.Cells[5,t]:=trim(DtCombo.Fields[5].AsString);
    grilla5.Cells[6,t]:=trim(DtCombo.Fields[6].AsString);
  end; }
end;
if nro=16 then begin
  TARJETA.Clear;
  DtCombo.Free;
  Dtcombo:=TClientDataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT DetalleTarjeta,NroTarjeta FROM TiposTarjetasCredito order by 1';
  if Funciones.Listar(txtw,DtCombo)  then  begin
   SetLength(IdCombos[0],Dtcombo.RecordCount);
   for t:=1 to Dtcombo.RecordCount  do begin
    Dtcombo.RecNo:=t;
    TARJETA.Items.Insert(t-1,trim(Dtcombo.Fields[0].AsString));
    IdCombos[0,t-1]:=Dtcombo.Fields[1].AsString;
   end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  funciones.Free;
  TARJETA.ItemIndex:=0;
end;
if nro=17 then begin
  banco.Clear;
  DtComboC.Free;
  DtcomboC:=TClientDataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT NroEntidad, Nombre from EntidadesBancarias WHERE (NroEntidad > 0) order by 1';
  if Funciones.Listar(txtw,DtComboC)  then  begin
   SetLength(IdCombos[1],DtcomboC.RecordCount);
   for t:=1 to DtcomboC.RecordCount  do begin
    DtcomboC.RecNo:=t;
    banco.Items.Insert(t-1,trim(DtcomboC.Fields[1].AsString));
    IdCombos[1,t-1]:=DtcomboC.Fields[0].AsString;
   end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  funciones.Free;
  banco.ItemIndex:=0;
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
end;

procedure TInserta_Exhum.RB2Click(Sender: TObject);
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
  if RB3.Checked then LB1.Caption:='Ingrese N� Acci�n:';
  if RB5.Checked then LB1.Caption:='Ingrese N� DNI:';
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
  if RB3.Checked then LB1.Caption:='Ingrese N� Acci�n:';
  if RB5.Checked then LB1.Caption:='Ingrese N� DNI:';
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
  if RB4.Checked then LB1.Caption:='Ingrese N� Sector:';
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
 if RB7.Checked then LB1.Caption:='Ingrese N� Sector y Parcela:';
 elsector.SetFocus;
end;
Busca.Enabled:=true;
end;

procedure TInserta_Exhum.RB1Click(Sender: TObject);
begin
ONOMB.Visible:=FALSE;
ODNI.Visible:=FALSE;
LB1.Caption:='';
Busca.Enabled:=true;
Busca.SetFocus;
end;

procedure TInserta_Exhum.DBGrid1CellClick(Column: TColumn);
var t,gf:integer;
    txt:string;
begin
 if not (DataSet0.IsEmpty) then begin
  imprime.Enabled:=true;
  label30.Caption:=trim(DataSet0.Fields[0].AsString);
  control:=true;
  Coloca1(1);
  Coloca1(3);    // titulares
  Coloca1(4);    // inhumados
  IF cantidinhu=0 THEN BEGIN
    messagedlgpos('Atencion.. esta Accion NO posee Inhumados..',mtwarning,[mbok],0,screen.Width div 3,screen.Height div 3);
    groupbox8.Enabled:=false;
  END
  else  groupbox8.Enabled:=true;
 end;
end;

procedure TInserta_Exhum.BuscaClick(Sender: TObject);
var p,u:integer;
begin
Label39.Caption:='...';
if rb1.Checked  then Coloca1(24)
else Coloca1(0);
Barra1.Panels[1].Text:='Registos encontrados: ' + inttostr(DataSet0.RecordCount);
end;

procedure TInserta_Exhum.ODNIKeyPress(Sender: TObject; var Key: Char);
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

procedure TInserta_Exhum.PC1Change(Sender: TObject);
begin
if not control then PC1.ActivePage:=PC1.Pages[0]; 
end;

procedure TInserta_Exhum.JvDBGrid2CellClick(Column: TColumn);
var p,u:integer;
begin
if not DataClie.IsEmpty then begin
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
  popupmenu1.Items[0].Visible :=true;
end;
end;

procedure TInserta_Exhum.Button2Click(Sender: TObject);
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
 end;
end;

procedure TInserta_Exhum.Button3Click(Sender: TObject);
begin
  PC1.ActivePage:=PC1.Pages[1];
  PC2.ActivePage:=PC2.Pages[2];
end;

procedure TInserta_Exhum.saleClick(Sender: TObject);
begin
close;
end;

procedure TInserta_Exhum.gerimpPrint(Sender: TObject);
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
     BaseReport.PrintXY(posx+149,posy+22,'P�g.: ' + inttostr(vaf));
     BaseReport.PrintXY(posx+160,posy+22,'Usu Imp.: ' + inttostr(modulo2.nro_usu) + ' - Fec. Imp.:' + strcut(Fec_System(),10));
     BaseReport.SetFont('Arial',10);
     BaseReport.FontColor:=clBlack;
     Logo:=posy+5;
    end;
   end;

   Function Mostrar2(posx,posy:double):double;  //;vaf:integer
      var t,y,pos:integer;
      sd,sd1,posn,posw:double;
      tot,val:real;
   begin
    posn:=posy + 15;
    with gerimp do begin
      for t:=1 to 4 do begin
        //Cabecera
        BaseReport.SetFont('Arial',6);
        BaseReport.PrintXY(posw+8,posn+4,'Cesion            Titulo    Sector  Parcela Accion Cat');
        //BaseReport.PrintXY(posw+14,posn+4,'NroTitulo');
        //BaseReport.PrintXY(posw+20,posn+4,'Sector');
         //BaseReport.Rectangle(posw,posn+280,posw+21,posn+5);  // recuadro de n� interno
        //BaseReport.Rectangle(posw+21,posn+270,posw+43,posn+5); // recuadro de recaudaciones
        posw:=posw + 43 + 6;
      end;
      //Detalle
      posw:=posx +2;
      sd1:=posn + 8;


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

procedure TInserta_Exhum.ElSectorExit(Sender: TObject);
begin
if ElSector.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Sector Ingresado!!',mterror,[mbok],0);
  ElSector.SetFocus;
end;
end;

procedure TInserta_Exhum.ElSectorKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  coloca1(23);
  edit6.Enabled:=true;
  edit6.SetFocus;
 end
 else begin
  if ( StrScan('ABCDEFGHIJKLMN�OPQRSTUVWXYZabcdefghijklmn�opqrstuvwxyz',Key) <> nil ) or
      ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;
end;

procedure TInserta_Exhum.Edit6Exit(Sender: TObject);
begin
if Edit6.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el N� de Acci�n Ingresado!!',mterror,[mbok],0);
  Edit6.SetFocus;
end;
end;

procedure TInserta_Exhum.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
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

procedure TInserta_Exhum.nameChange(Sender: TObject);
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

procedure TInserta_Exhum.ODNIChange(Sender: TObject);
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

procedure TInserta_Exhum.FECNACExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(FECNAC.Text));
except
  messagedlg('La Fecha Ingresada No es V�lida',mterror,[mbok],0);
  FECNAC.SetFocus;
end;
end;

procedure TInserta_Exhum.FECNACKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  horafalle.SetFocus;
 end;
end;

procedure TInserta_Exhum.Edit2Exit(Sender: TObject);
begin
if trim(Edit2.Text) = '' then begin
  messagedlg('Error!! No hay Ninguna Observavion Ingresada.',mterror,[mbok],0);
  Edit2.SetFocus
end;
end;

procedure TInserta_Exhum.JvDBGrid3CellClick(Column: TColumn);
begin
{panel2.Visible:=true;
label29.Caption:= trim(DataSet0.Fields[0].AsString);
label32.Caption:= trim(DataSet0.Fields[2].AsString);
label33.Caption:= trim(DataSet0.Fields[5].AsString);

label34.Caption:= trim(DataSet3.Fields[6].AsString);
label44.Caption:= trim(DataSet3.Fields[2].AsString);

fecfalle:=trim(DataSet3.Fields[11].AsString);
tpodoc:=trim(DataSet3.Fields[30].AsString);
doc:=trim(DataSet3.Fields[5].AsString);
estcivil:=trim(DataSet3.Fields[31].AsString);
nacion:=trim(DataSet3.Fields[32].AsString);
fecnacim:=trim(DataSet3.Fields[33].AsString);
elobjeto:=trim(DataSet3.Fields[39].AsString);

fecnac.SetFocus;
elidhab:=trim(DataSet3.Fields[0].AsString);
nroaccio:=trim(DataSet3.Fields[1].AsString);  }
end;

procedure TInserta_Exhum.BitBtn1Click(Sender: TObject);
var gf,p,t:integer;
    txt,eltipo,elcheque,txtw:widestring;
var ac,at,ct,pt:boolean;
begin
 gf:=messagedlgpos('Desea Confirmar esta Exhumacion de esta Accion: ',mtWarning,[
      mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
 if gf = 1 then begin
   if trim(apeynom.Text)='' then begin   // responsable
     messagedlg('ERROR!! NO se Ingreso ningun Responsable de la Exhumaci�n!!',mterror,[mbok],0);
     JvBitBtn0.SetFocus;
   end
   else begin
    if tpopago.ItemIndex=0 then LaObserv:='Pago Contado ' + NumToPesos(trim(e5.text)) + ' $' + trim(e5.text);
    if tpopago.ItemIndex=1 then LaObserv:='Pago S/Cheque ' + trim(e1.Text) + '-' + trim(e2.Text)
     + ' de banco: ' +  trim(banco.Text)  + ' de fecha: ' + trim(fcheque.Text);
    if tpopago.ItemIndex=2 then LaObserv:=' - Pago S/Tarjeta ' + trim(tarjeta.Text) + ' en ' +  trim(nrocuota.Text) + ' cuotas s/comprobante: ' + trim(nrocb.Text)
     + ' de fecha: ' + trim(ftarje.Text) + ' con importe de '+ trim(edit3.Text);
    if tpopago.ItemIndex=3 then LaObserv:='Pago Cuenta Corriente ' + NumToPesos(trim(e5.text)) + ' $' + trim(e5.text);;
    PROCESO.Close;
    txt:=txt + elidhab
    + ',' + nroaccio
    + ',' + chr(39) + trim(fecnac.text) + chr(39)
    + ',' + chr(39) + trim(edit2.Text)+ chr(39)
    + ',' + chr(39) + trim(edit3.Text)+ chr(39)
    + ',' + chr(39) + trim(edit4.Text)+ chr(39)
    + ',' + cuif.Text;
    if trim(apeynom1.Text)= ''  then  txt:= txt + ', null'
      else txt:= txt + ',' + cuif1.Text ;
    if trim(apeynom2.Text)= ''  then  txt:= txt + ', null'
      else txt:= txt + ',' + cuif2.Text;
    txt:= txt + ',' + Chr(39) + trim(horafalle.Text)+ chr(39) + ',' + Chr(39) + trim(actanro.Text)+ chr(39);
    PROCESO.CommandText:='exec SPC_InhumadosaExhumados ' + txt ;
    PROCESO.Open;
    if PROCESO.Fields[0].AsString = 'OK' then begin
     messagedlg('EXITO.... El Exhumado se guardo correctamente..', mtConfirmation,[mbok],0);

    { ParcelasMovimientosDiarrioDetalle:=TParcelasMovimientosDiarrioDetalle.Create(nil);
     ParcelasMovimientosDiarrioDetalle.ConnectionString:=modulo2.Conexion;
     eltipo:='SERV. EXHUMACION de: ' + TRIM(apeynom.Text)  + ' Nivel: ' + label44.caption ;
     txt:= ' null '
     + ' , null '
     + ' , null '
     + ' , null '
     + ' , ' + chr(39) + strcut(Fec_System(),10) + chr(39)
     + ' , ' + label39.Caption
     + ' , ' + trim(e5.Text)
     + ' , ' + chr(39) + trim(tpopago.Text) + chr(39)
     + ' , null' //+ trim(edit2.Text)
     + ' , null' //+ trim(valcuota.Text)
     + ' , ' + chr(39) + trim(edit2.Text) + chr(39);
     if (trim(tpopago.Text)= 'CONTADO')  or (trim(tpopago.Text)= 'CUENTA CORRIENTE') then begin
      txt := txt + ' , null , null , null , null , null  , ' + inttostr(modulo2.nro_usu)
      + ' , ' + chr(39) + eltipo + chr(39);
     end;
     if trim(tpopago.Text)= 'CHEQUE' then begin  // cheque
      elcheque:= trim(e1.Text) + '-' + trim(e2.Text) ;
      txt := txt + ' , ' + chr(39) + trim(elbanco.Text) + chr(39)
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
     if (trim(tpopago.Text)= 'FINANCIADO') or (trim(tpopago.Text)='FINANCIADO SIN INTERES') then begin
      txt := txt + ' , null , null , null , null , null  , ' + inttostr(modulo2.nro_usu)
      + ' , ' + chr(39) + eltipo + chr(39);
     end;
     txtw:='INSERT INTO ParcelasMovimientosDiarrioDetalle (IdVenta,IdServicio,IdExhumacion,IdCremacion,Fecha,NroAccion,'
     +'Importe,FormaPago,NroCuotas,ValorCouta,Observaciones,Tarjeta,TarjetaTitular,TarjetaNroCuotas,TarjetaComprobante,' +
     'SerieCheque,Usu_A,TipoVenta) VALUES (' +  txt + ')';
     pt:=ParcelasMovimientosDiarrioDetalle.ListarSinResp(txtw);
     ParcelasMovimientosDiarrioDetalle.Free;
      }
     //rvorden.Execute;
     panel2.Visible:=false;
     Coloca1(4);
     BitBtn1.Enabled :=false;
     busca.SetFocus;
    end
     else  messagedlg('Error al Guardar este SERVICIO de EXHUMACION. Consulte con un Administrador',mtError,[mbok],0);
   end;
 end;
end;

procedure TInserta_Exhum.BitBtn2Click(Sender: TObject);
begin
panel2.Visible:=false;
end;

procedure TInserta_Exhum.Edit3Exit(Sender: TObject);
begin
if trim(Edit3.Text) = '' then begin
  messagedlg('Error!! No hay Ninguna Observavion Ingresada.',mterror,[mbok],0);
  Edit3.SetFocus
end;
end;

procedure TInserta_Exhum.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  edit3.SetFocus;
end;
end;

procedure TInserta_Exhum.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  BitBtn1.SetFocus;
  //tpopago.SetFocus;
 end;
end;

procedure TInserta_Exhum.JvBitBtn0Click(Sender: TObject);
var Busqueda:TLA_BUSQUEDA;
begin
  Busqueda:=TLA_BUSQUEDA.Create(self);
  try
    Busqueda.NroOpcion:=3;
    Busqueda.Caption:='Busqueda y Seleccion de Clientes';
    Busqueda.ShowModal;
    CUIF.Text:=busqueda.DB2.Text;
    apeynom.Text:=busqueda.DB4.Text;
  finally
    Busqueda.Destroy;
  end;
  coloca1(2);
  edit4.SetFocus;
end;

procedure TInserta_Exhum.JvBitBtn1Click(Sender: TObject);
var Busqueda:TLA_BUSQUEDA;
begin
  Busqueda:=TLA_BUSQUEDA.Create(self);
  try
    Busqueda.NroOpcion:=3;
    Busqueda.Caption:='Busqueda y Seleccion de Clientes';
    Busqueda.ShowModal;
    CUIF1.Text:=busqueda.DB2.Text;
    apeynom1.Text:=busqueda.DB4.Text;
  finally
    Busqueda.Destroy;
  end;
  JvBitBtn2.SetFocus;
end;

procedure TInserta_Exhum.JvBitBtn2Click(Sender: TObject);
var Busqueda:TLA_BUSQUEDA;
begin
Busqueda:=TLA_BUSQUEDA.Create(self);
  try
    Busqueda.NroOpcion:=3;
    Busqueda.Caption:='Busqueda y Seleccion de Clientes';
    Busqueda.ShowModal;
    CUIF2.Text:=busqueda.DB2.Text;
    apeynom2.Text:=busqueda.DB4.Text;
  finally
    Busqueda.Destroy;
  end;
  actanro.SetFocus;
end;

procedure TInserta_Exhum.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  JvBitBtn1.SetFocus;
end;
end;

procedure TInserta_Exhum.Edit4Exit(Sender: TObject);
begin
if trim(Edit4.Text) = '' then begin
  messagedlg('Error!! No hay Ningun Responsable del Parque Ingresado.',mterror,[mbok],0);
  Edit4.SetFocus
end;
end;

procedure TInserta_Exhum.RvOrdenPrint(Sender: TObject);
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
       Tamanio:=strtoint(modulo2.INI1.ReadString('Titulo3 Facturas','Tama�o','10'));
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
     BaseReport.PrintXY(posx+5,posy+27,'REGISTRO DE EXHUMACIONES');
     BaseReport.PrintXY(posx+145,posy+27,'ORDEN N�:');

     BaseReport.SetFont('Arial',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+40);
     BaseReport.PrintXY(posx+5,posy+37,'DATOS DEL FALLECIDO');

     BaseReport.SetFont('Arial ',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+60);
     BaseReport.PrintXY(posx+5,posy+43,'Servicio N�');
     //BaseReport.PrintXY(posx+25,posy+43,'');
     BaseReport.PrintXY(posx+35,posy+43,'Nombre del Extinto');
     BaseReport.PrintXY(posx+88,posy+43,'Tipo y N� Doc.');
     BaseReport.PrintXY(posx+110,posy+43,'Nacio.');
     BaseReport.PrintXY(posx+130,posy+43,'Edad');
     BaseReport.PrintXY(posx+150,posy+43,'Fec. Nac');
     BaseReport.PrintXY(posx+170,posy+43,'Fec. Defuncion');

     BaseReport.SetFont('Arial Black',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+35,posy+47,trim(label34.caption));
     BaseReport.PrintXY(posx+88,posy+47,tpodoc + ' ' + doc);
     BaseReport.PrintXY(posx+110,posy+47,nacion);
     BaseReport.PrintXY(posx+88,posy+47,'');
     BaseReport.PrintXY(posx+150,posy+47,fecnacim);
     BaseReport.PrintXY(posx+170,posy+47,fecfalle);
     //BaseReport.PrintXY(posx+155,posy+47,edad);
     //BaseReport.PrintXY(posx+165,posy+47,FechaNacimiento);   
     BaseReport.SetFont('Arial',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+70);
     BaseReport.PrintXY(posx+5,posy+67,' DATOS DE LA EXHUMACION');

     BaseReport.SetFont('Arial ',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+88);
     BaseReport.PrintXY(posx+5,posy+73,'Fecha Exhum.');
     BaseReport.PrintXY(posx+35,posy+73,'Hora Exhum.');
     BaseReport.PrintXY(posx+50,posy+73,'Sector');
     BaseReport.PrintXY(posx+60,posy+73,'Parcela');
     BaseReport.PrintXY(posx+70,posy+73,'Nivel');
     BaseReport.PrintXY(posx+80,posy+73,'Pedido Nro.');
     BaseReport.PrintXY(posx+95,posy+73,'Acta Nro');
     BaseReport.PrintXY(posx+115,posy+73,'Titular Parcela');
     BaseReport.PrintXY(posx+170,posy+73,'Titulo');
     BaseReport.PrintXY(posx+180,posy+73,'Objeto');
     BaseReport.SetFont('Arial Black ',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+77,trim(fecnac.Text));
     BaseReport.PrintXY(posx+35,posy+77,trim(horafalle.Text));  //trim(tiposerv.Text)
     BaseReport.PrintXY(posx+50,posy+77,trim(label32.Caption));
     BaseReport.PrintXY(posx+60,posy+77,trim(label33.Caption));
     BaseReport.PrintXY(posx+70,posy+77,trim(label44.Caption));
     BaseReport.PrintXY(posx+80,posy+77,'');
     BaseReport.PrintXY(posx+95,posy+77,trim(actanro.Text));
     BaseReport.PrintXY(posx+115,posy+77,larazonsocial);
     BaseReport.PrintXY(posx+170,posy+77,trim(label29.Caption));
     BaseReport.PrintXY(posx+180,posy+77,elobjeto);

     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+106);
     BaseReport.SetFont('Arial ',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+93,'Respo. Solicitante:');
     BaseReport.PrintXY(posx+58,posy+93,'Tipo y N� Doc');
     BaseReport.PrintXY(posx+90,posy+93,'Domicilio');
     BaseReport.PrintXY(posx+155,posy+93,'Barrio');
     BaseReport.SetFont('Arial Black',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+102,trim(apeynom.text));
     BaseReport.PrintXY(posx+58,posy+102,tipodocr+ '-' + docr);
     BaseReport.PrintXY(posx+90,posy+102,domir);
     BaseReport.PrintXY(posx+155,posy+102,barrior);

     BaseReport.SetFont('Arial',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+125);
     BaseReport.PrintXY(posx+5,posy+110,' OBSERVACIONES:');
     BaseReport.SetFont('Arial',9);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+7,posy+115,trim(edit2.text));
     BaseReport.PrintXY(posx+7,posy+122,' DESTINO:' + trim(edit3.text));
     Logo:=posy+30;
    end;
   end;

begin
  posfx:=2;
  posfy:=5;
  salto:=4;
  hoja:=1;
  posfy:=Logo(posfx,posfy,hoja);
  posfy:=posfy+105;
  posfy:=Logo(posfx,posfy,hoja);
end;

procedure TInserta_Exhum.horafalleKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  JvBitBtn0.SetFocus;
 end;
end;

procedure TInserta_Exhum.ConfirmarExhumacion1Click(Sender: TObject);
var gf:integer;
begin
 gf:=messagedlgpos('Desea Confirmar la Carga de Datos para la Exhumacion?',mtWarning,[
     mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
 if gf = 1 then begin
  panel2.Visible:=true;
  //Coloca1(8);
  label29.Caption:= trim(DataSet0.Fields[0].AsString);
  label32.Caption:= trim(DataSet0.Fields[2].AsString);
  label33.Caption:= trim(DataSet0.Fields[5].AsString);
  label34.Caption:= trim(DataSet3.Fields[6].AsString);
  label44.Caption:= trim(DataSet3.Fields[2].AsString);

  laposicion:= trim(DataSet3.Fields[3].AsString);
  TIPOOBJETO:= trim(DataSet3.Fields[4].AsString);
  fecfalle:=trim(DataSet3.Fields[11].AsString);
  tpodoc:=trim(DataSet3.Fields[30].AsString);
  doc:=trim(DataSet3.Fields[5].AsString);
  estcivil:=trim(DataSet3.Fields[31].AsString);
  nacion:=trim(DataSet3.Fields[32].AsString);
  fecnacim:=trim(DataSet3.Fields[33].AsString);
  elobjeto:=trim(DataSet3.Fields[39].AsString);
  fecnac.SetFocus;
  elidhab:=trim(DataSet3.Fields[0].AsString);
  nroaccio:=trim(DataSet3.Fields[1].AsString);
 end;
end;

procedure TInserta_Exhum.tpopagoKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  if tpopago.itemindex = 0 then begin   /// contado
    Coloca1(8);
    Key := #0;
    tipopago:=2;
    edit5.Visible :=false;
    grupocheq.Visible:=false;
    grupotarje.Visible:=false;
    valcuota.Visible :=false;
    label78.Visible :=false;
    label80.Visible :=false;
    bitbtn1.SetFocus;
  end;
  //if tpopago.itemindex = 1 then begin
    //Key := #0;
    //if trim(codigo.Text)='FINANCIADO' then tipopago:=7
    //    else tipopago:=8;
    //importee.Enabled:=true;
    //importee.setfocus;
  //end;
  if tpopago.itemindex = 1 then begin   //cheque
   Key := #0;
   Coloca1(8);
   tipopago:=4;
   edit5.Visible :=false;
   valcuota.Visible :=false;
   label78.Visible :=false;
   label80.Visible :=false;
   grupocheq.Visible:=true;
   grupotarje.Visible:=false;
   banco.SetFocus;
  end;
  if tpopago.itemindex = 2 then begin  //tarje credito
   Key := #0;
     Coloca1(8);
   //CODIGO.text:='TARJETA DE CREDITO';
   grupocheq.Visible:=false;
   grupotarje.Visible:=true;
   edit5.Visible :=true;
   valcuota.Visible :=true;
   label78.Visible :=true;
   label80.Visible :=true;
   Seleccion_Cuotas:= TSeleccion_Cuotas.create(self);
    try
     Seleccion_Cuotas.NroOpcion:=4;
     Seleccion_Cuotas.niv:=modulo2.nvl_usu;
     Seleccion_Cuotas.entrega:=strtofloat(e5.Text);
     Seleccion_Cuotas.capital:=strtofloat(e5.Text);
     Seleccion_Cuotas.fecha:=strcut(fec_system(),10);
     Seleccion_Cuotas.ShowModal;
    finally
     edit5.Text:=Seleccion_Cuotas.Nrocta.Text;
     nrocuota.Text:=Seleccion_Cuotas.Nrocta.Text;
     valcuota.Text:=Seleccion_cuotas.ImpCta.Text;
     e5.Text:=trim(Seleccion_Cuotas.totalfinan);
     Seleccion_Cuotas.destroy;
   end;
   tipopago:=3;
   TARJETA.SetFocus;
  end;
  if tpopago.itemindex = 3 then begin   /// cta cte
    Key := #0;
      Coloca1(8);
    tipopago:=2;
    grupocheq.Visible:=false;
    grupotarje.Visible:=false;
    bitbtn1.SetFocus;
  end;
  if (trim(tpopago.Text)='CONTADO')  or (trim(tpopago.Text)='CUENTA CORRIENTE')  then  begin
    //coloca1(9);
    //tipopago:=2;
  end;
  if trim(tpopago.Text)='CHEQUE' then begin
   // coloca1(9);
   // tipopago:=4;
  end;
  if trim(tpopago.Text)='TARJETA DE CREDITO' then begin
   // coloca1(9);
   // tipopago:=3;
  end;
 end;
 E5.SetFocus;
end;

procedure TInserta_Exhum.tpopagoExit(Sender: TObject);
var t:integer;
var val,tot,vSaldo,vEntrega:real;
begin
 if tpopago.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Pago Ingresado!!',mterror,[mbok],0);
  tpopago.SetFocus;
 end
 else begin
  if tpopago.itemindex = 0 then begin
    grupocheq.Visible:=false;
    grupotarje.Visible:=false;
    tipopago:=2;
  end;
  if tpopago.itemindex = 1 then begin   //cheque
   grupocheq.Visible:=true;
   grupotarje.Visible:=false;
   tipopago:=4;
   BANCO.SetFocus;
  end;
  if tpopago.itemindex = 2 then begin   //tarje credito
   grupocheq.Visible:=false;
   grupotarje.Visible:=true;
   tipopago:=3;
   TARJETA.SetFocus;
  end;
  if tpopago.itemindex = 3 then begin   // cta cte
    grupocheq.Visible:=false;
    grupotarje.Visible:=false;
    tipopago:=2;
  end;
  //Coloca1(8);
 end;
end;

procedure TInserta_Exhum.bancoExit(Sender: TObject);
begin
 if banco.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Banco Ingresada!!',mterror,[mbok],0);
  banco.SetFocus;
 end;
end;

procedure TInserta_Exhum.bancoKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then titcheq.SetFocus;
end;

procedure TInserta_Exhum.titcheqExit(Sender: TObject);
begin
if trim(titcheq.Text) = '' then begin
  messagedlg('Error!! No hay Titular del Cheque Ingresado.',mterror,[mbok],0);
  titcheq.SetFocus
end;
end;

procedure TInserta_Exhum.titcheqKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then E1.SetFocus;
end;

procedure TInserta_Exhum.E1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then E2.SetFocus
else begin
  if ( StrScan('ABCDEFGHIJKLMN�OPQRSTUVWXYZ',Key) <> nil ) or
      ( Key = Char(VK_BACK) ) then
   else Key := #0;
  end;
end;

procedure TInserta_Exhum.E2Exit(Sender: TObject);
begin
 if (trim(E2.Text) = '') OR (trim(E2.Text) = '000000000000') OR (trim(E2.Text) = '0') then begin
  messagedlgpos('Error!! Nro de Cheque Ingresado Incorrectamente.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  E2.SetFocus;
 end;
end;

procedure TInserta_Exhum.E2KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then fpagocheque.SetFocus
 else begin
  if ( StrScan('1234567890',Key) <> nil ) or
      ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;
end;

procedure TInserta_Exhum.FchequeExit(Sender: TObject);
var fec:Tdatetime;
begin
try
 fec:=strtodate(trim(Fcheque.Text));
except
  messagedlgpos('La fecha es Erronea!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  Fcheque.SetFocus;
end;
end;

procedure TInserta_Exhum.FchequeKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then fpagocheque.SetFocus;
end;

procedure TInserta_Exhum.fpagochequeExit(Sender: TObject);
var fec:Tdatetime;
begin
try
 fec:=strtodate(trim(fpagocheque.Text));
except
  messagedlgpos('La fecha es Erronea!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  fpagocheque.SetFocus;
end;
end;

procedure TInserta_Exhum.fpagochequeKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then bitbtn1.SetFocus;
end;

procedure TInserta_Exhum.E5Exit(Sender: TObject);
begin
 if (trim(E5.Text) = '') OR (trim(E5.Text) = '0')
  OR (trim(E5.Text) = '00') or (trim(E5.Text)= '0000.00')then begin
  messagedlgpos('Error!! El Importe de la Exhuamcion esta Ingresado Incorrectamente.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  E5.SetFocus;
 end;
end;

procedure TInserta_Exhum.E5KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  if (tpopago.itemindex = 0) or (tpopago.itemindex = 3)  then begin
    BitBtn1.SetFocus;
  end;
  if (tpopago.itemindex = 1)   then begin
    banco.SetFocus;
  end;
  if (tpopago.itemindex =2)   then begin
    tarjeta.SetFocus;
  end;
 end
 else begin
  if ( StrScan('0123456789.',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
    else Key := #0;
 end;
end;

procedure TInserta_Exhum.TARJETAExit(Sender: TObject);
begin
if TARJETA.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe la Tarjeta Ingresada!!',mterror,[mbok],0);
  TARJETA.SetFocus;
end;
end;

procedure TInserta_Exhum.TARJETAKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then tittarje.SetFocus;
end;

procedure TInserta_Exhum.tittarjeKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then nrocuota.SetFocus;
end;

procedure TInserta_Exhum.NroCuotaExit(Sender: TObject);
begin
 if (trim(NroCuota.Text) = '') OR (trim(NroCuota.Text) = '00') OR (trim(NroCuota.Text) = '0') then begin
  messagedlgpos('Error!! Nro de Cuota Ingresado Incorrectamente.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  NroCuota.SetFocus;
 end;
end;

procedure TInserta_Exhum.NroCuotaKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then NroCb.SetFocus
 else begin
  if ( StrScan('0123456789',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;
end;

procedure TInserta_Exhum.NROCBExit(Sender: TObject);
begin
if (trim(NROCB.Text) = '') OR (trim(NROCB.Text) = '0') then begin
  messagedlgpos('Error!! Nro de Comprobante Ingresado Incorrectamente.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  NROCB.SetFocus;
end;
end;

procedure TInserta_Exhum.NROCBKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then ftarje.SetFocus
 else begin
  if ( StrScan('0123456789.',Key) <> nil ) or  ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;
end;

procedure TInserta_Exhum.ftarjeExit(Sender: TObject);
var fec:Tdatetime;
begin
try
 fec:=strtodate(trim(ftarje.Text));
except
  messagedlgpos('La fecha es Erronea!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  ftarje.SetFocus;
end;

end;

procedure TInserta_Exhum.ftarjeKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then bitbtn1.SetFocus;
end;

procedure TInserta_Exhum.tittarjeExit(Sender: TObject);
begin
if trim(tittarje.Text) = '' then begin
  messagedlg('Error!! No hay Titular de la Tarjeta Ingresada.',mterror,[mbok],0);
  tittarje.SetFocus
end;
end;

procedure TInserta_Exhum.E1Exit(Sender: TObject);
begin
if (trim(E1.Text) = '') then begin
  messagedlgpos('Error!! Nro de Serie Incorrectamente.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  E1.SetFocus;
end;
end;

procedure TInserta_Exhum.actanroKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  edit2.SetFocus;
 end;
end;

procedure TInserta_Exhum.actanroExit(Sender: TObject);
begin
 if (trim(actanro.Text) = '') or (trim(actanro.Text) = '0') then begin
  messagedlg('Error!! No hay Nro de Acta de Exhumacion Ingresada.',mterror,[mbok],0);
  actanro.SetFocus
 end;
end;

procedure TInserta_Exhum.horafalleExit(Sender: TObject);
begin
try
 StrToTime(horafalle.text);
 except ShowMEssage('Hora NO v�lida!');
 horafalle.SetFocus;
end;
end;

end.

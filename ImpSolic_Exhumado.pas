unit ImpSolic_Exhumado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,DBClient, StdCtrls, DBCtrls, Grids, DBGrids, ComCtrls, StrUtils,
  DB, Mask,ADODB, Buttons, ExtCtrls, JvExDBGrids, JvDBGrid, RpDefine,
  RpBase, RpSystem, JvgPage, JvExButtons, JvBitBtn, WSDLIntf, ClaseFunciones,
  ClaseTiposSectores,ToolWin, JvExComCtrls, JvComCtrls, ImgList,ClaseSistemas,ClaseParcelas,
  Menus, JvExGrids, JvStringGrid,JvExStdCtrls, JvEdit,
  ClaseParcelasServicios,ClaseParcelasServiciosDetalle,ClaseParcelasServiciosDeudas,
  JvValidateEdit,ClaseParcelasMovimientosDiarrioDetalle;

type LosDts = class(TDataSource);
type HackTable = class(TADOTable);

type THackStringGrid = class(TStringGrid);
type
  TImpSol_Exhum = class(TForm)
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
    DataSource6: TDataSource;
    Image1: TImage;
    todos: TRichEdit;
    RB3: TRadioButton;
    RB7: TRadioButton;
    RB4: TRadioButton;
    DataSource10: TDataSource;
    TabSheet9: TTabSheet;
    PageControl1: TPageControl;
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
    TP: TClientDataSet;
    RvORDEN: TRvSystem;
    Edit66: TEdit;
    gerimp: TRvSystem;
    ElSector: TComboBox;
    Edit6: TComboBox;
    JvDBGrid3: TJvDBGrid;
    GroupBox10: TGroupBox;
    Label39: TLabel;
    Button3: TButton;
    TabSheet5: TTabSheet;
    grillaobjetos: TStringGrid;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label51: TLabel;
    Label53: TLabel;
    GroupBox4: TGroupBox;
    JvBitBtn1: TJvBitBtn;
    DNI: TDBEdit;
    apeynom1: TDBEdit;
    DOMICILIO: TDBEdit;
    Label20: TLabel;
    RvSoli: TRvSystem;
    ToolBar1: TToolBar;
    Imprime: TBitBtn;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    sale: TJvBitBtn;
    Panel1: TPanel;
    Label37: TLabel;
    LB7: TLabel;
    SpeedButton1: TSpeedButton;
    Exporta: TJvBitBtn;
    JvBitBtn2: TJvBitBtn;
    FECNAC: TMaskEdit;
    E5: TEdit;
    Grupotarje: TGroupBox;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label52: TLabel;
    CUOTA: TComboBox;
    TARJETA: TComboBox;
    NROCB: TJvValidateEdit;
    NroCuota: TEdit;
    ftarje: TMaskEdit;
    tittarje: TEdit;
    Label31: TLabel;
    tpopago: TComboBox;
    GrupoCheq: TGroupBox;
    LB12: TLabel;
    LB3: TLabel;
    LB5: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    E1: TEdit;
    E2: TEdit;
    Fcheque: TMaskEdit;
    fpagocheque: TMaskEdit;
    titcheq: TEdit;
    elbanco: TComboBox;
    Panel2: TPanel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    TPOTALON: TComboBox;
    actu: TBitBtn;
    PV: TComboBox;
    elcomprob: TEdit;
    Label82: TLabel;
    laobserva: TEdit;
    Label78: TLabel;
    Edit2: TEdit;
    Label80: TLabel;
    VALCUOTA: TEdit;
    Label1: TLabel;
    entrega: TEdit;
    grilla5: TStringGrid;
    procedure FormActivate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure RB2Click(Sender: TObject);
    procedure RB1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BuscaClick(Sender: TObject);
    procedure ExportaClick(Sender: TObject);
    procedure ODNIKeyPress(Sender: TObject; var Key: Char);
    procedure PC1Change(Sender: TObject);
    procedure JvDBGrid2CellClick(Column: TColumn);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure gerimpPrint(Sender: TObject);
    procedure ElSectorExit(Sender: TObject);
    procedure ElSectorKeyPress(Sender: TObject; var Key: Char);
    procedure Edit6Exit(Sender: TObject);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure nameChange(Sender: TObject);
    procedure Limpiar();
    procedure ODNIChange(Sender: TObject);
    procedure JvDBGrid3CellClick(Column: TColumn);
    procedure ImprimeClick(Sender: TObject);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure JvBitBtn2Click(Sender: TObject);
    procedure FECNACExit(Sender: TObject);
    procedure FECNACKeyPress(Sender: TObject; var Key: Char);
    procedure E5Exit(Sender: TObject);
    procedure E5KeyPress(Sender: TObject; var Key: Char);
    procedure gerimpAfterPrint(Sender: TObject);
  //  procedure RvSPrint(Sender: TObject);
    procedure RvSoliPrint(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure tpopagoExit(Sender: TObject);
    procedure tpopagoKeyPress(Sender: TObject; var Key: Char);
    procedure elbancoExit(Sender: TObject);
    procedure elbancoKeyPress(Sender: TObject; var Key: Char);
    procedure tittarjeKeyPress(Sender: TObject; var Key: Char);
    procedure TARJETAExit(Sender: TObject);
    procedure TARJETAKeyPress(Sender: TObject; var Key: Char);
    procedure NroCuotaExit(Sender: TObject);
    procedure NroCuotaKeyPress(Sender: TObject; var Key: Char);
    procedure NROCBExit(Sender: TObject);
    procedure NROCBKeyPress(Sender: TObject; var Key: Char);
    procedure ftarjeKeyPress(Sender: TObject; var Key: Char);
    procedure fpagochequeKeyPress(Sender: TObject; var Key: Char);
    procedure titcheqKeyPress(Sender: TObject; var Key: Char);
    procedure titcheqExit(Sender: TObject);
    procedure E1KeyPress(Sender: TObject; var Key: Char);
    procedure E2Exit(Sender: TObject);
    procedure E2KeyPress(Sender: TObject; var Key: Char);
    procedure FchequeExit(Sender: TObject);
    procedure FchequeKeyPress(Sender: TObject; var Key: Char);
    procedure fpagochequeExit(Sender: TObject);
    procedure tittarjeExit(Sender: TObject);
    procedure E1Exit(Sender: TObject);
    procedure ftarjeExit(Sender: TObject);
    procedure actuClick(Sender: TObject);
    procedure TPOTALONExit(Sender: TObject);
    procedure TPOTALONKeyPress(Sender: TObject; var Key: Char);
    procedure PVExit(Sender: TObject);
    procedure PVKeyPress(Sender: TObject; var Key: Char);
    procedure elcomprobChange(Sender: TObject);
    procedure elcomprobExit(Sender: TObject);
    procedure elcomprobKeyPress(Sender: TObject; var Key: Char);
    procedure saleClick(Sender: TObject);
    procedure laobservaKeyPress(Sender: TObject; var Key: Char);
    procedure RvORDENPrint(Sender: TObject);
  private
    control,gh:boolean;{Controla que no hubiere errores en la carga de datos}
    Funciones:TFuncionesVarias;
    ParcelasMovimientosDiarrioDetalle:TParcelasMovimientosDiarrioDetalle;
    Parcelas:TParcelas;
    cantidinhu,ger,tipopago:integer;
    //cuiftelef,tipodocr,docr,domir,barrior,ElId,LaObserv,TIPOOBJETO,laposicion,
    nombreinhum,fechafecinhum,FechaActual,elmes,elanio,txtfecha,mes,anio,elperiodo, tipodni,
    nroacc,elsec,laparce,larazonsocial,ladni,cuiftelef,tpodoc,fechafallem, ladire,cuim1, cuiminhu,fechainhum,
    diainhum,mesinhum,anioinhum,tipocomprob,elniv,laseccion,laacta,lafolio,latomo,laobjeto,laposicion,lafecnacim,ladnifallem,ElId:string;
    Sistemas:TSistemas;
    //sumdeuda,
    lafila:double;
    PROCESO,LASPARCELAS,RESPO: TADODataSet;
    DataSet,DataSet0,DataSet1,DataSet2,DataSet3,DataClie,DataSet12,DtCombo,
    DataSet13,DtComboO,DtComboC:TClientDataSet; //declaro los DataSet
    IdCombos:array of array of string; // para los combobox
    ///// para la impresion de datos segun parametros
    PosH1:Array [0..9] of Double;//Posiciones
    Camp1:Array [0..9] of Integer;//Campos a Tomar en cuenta
    TxtCamp1:Array [0..9] of String;//Textos de los Campos a Tomar en cuenta

    PosH:Array [0..2] of Double;//Posiciones
    Camp:Array [0..2] of Integer;//Campos a Tomar en cuenta
    TxtCamp:Array [0..2] of String;//Textos de los Campos a Tomar en cuenta

    PosH2:Array [0..8] of Double;//Posiciones
    Camp2:Array [0..8] of Integer;//Campos a Tomar en cuenta
    TxtCamp2:Array [0..8] of String;//Textos de los Campos a Tomar en cuenta
    { Private declarations }
  public
    ParcelasServicios:TParcelasServicios;
    ParcelasServiciosDetalle:TParcelasServiciosDetalle;
    ParcelasServiciosDeudas:TParcelasServiciosDeudas;
    //Resultado,elidhab,nroaccio: string;
    //nrocaja,lafeccesion,elbar,eldomi,eldni,eltele,
    //fecfalle,tpodoc,doc,estcivil,nacion,fecnacim,elobjeto:STRING;
  end;

var
  ImpSol_Exhum: TImpSol_Exhum;

implementation

uses Unidad, Modulo,Busqueda, SelecCuotas,
     AM_VenGenerica, ClaseParcelasVentas,
     CalculoSaldosAutom,ClaseTiposTelefonos;

{$R *.dfm}

procedure TImpSol_Exhum.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TImpSol_Exhum.FormActivate(Sender: TObject);
begin
if not(gh) then begin
  gh:=true;
  setlength(IdCombos,3);
  grupocheq.Visible:=false;
  grupotarje.Visible:=false;
  button2.Visible:=false;
  panel1.Visible :=false;
  edit1.Visible:=false;
  name.Visible:=false;
  label24.Visible:=false;
  label25.Visible:=false;
  LASPARCELAS:=TADODataSet.Create(nil);
  LASPARCELAS.ConnectionString:=modulo2.Conexion;
  RESPO:=TADODataSet.Create(nil);
  RESPO.ConnectionString:=modulo2.Conexion;
  PROCESO:=TADODataSet.Create(nil);
  PROCESO.ConnectionString:=modulo2.Conexion;
  FechaActual:=LeftStr(Fec_System(),10);
  fecnac.Text := FechaActual;
  ftarje.Text := FechaActual;
  fpagocheque.Text := FechaActual;
  Elanio:=strcut_midle(FechaActual,7,10);
  elperiodo:=inttostr(strtoint(Elanio) - 5);
  PC1.ActivePage:=PC1.Pages[0];
  PC2.ActivePage:=PC2.Pages[0];
  PageControl1.ActivePage:=PageControl1.Pages[0];
  PC1.Images:=modulo2.ImageList1;
  control:=false;
  label1.Visible:=false;
  entrega.Visible:=false;
  coloca1(7);
  coloca1(2);     coloca1(5);
  coloca1(16);
  coloca1(22);    coloca1(26);
  coloca1(16);    coloca1(17);
  coloca1(34);
  GroupBox8.Enabled :=false;
  JvBitBtn2.Enabled :=false;
  actu.Enabled :=false;
  ODNI.SetFocus;
end;
end;

procedure TImpSol_Exhum.Limpiar();
begin
label39.Caption:='...';
PC1.ActivePage:=PC1.Pages[0];
end;

procedure TImpSol_Exhum.Coloca1(nro:byte);
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
   +', '''' as Selec FROM Fn_VistaParcelasTitulares (null, ' + (DataSet0.Fields[1].AsString) +',0) WHERE TipoAccionista=2 order by nivel';
  if not Funciones.Listar(txtw,DataClie) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
 end;
 if nro=2 then begin //Combo Puntos de Venta
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
 if nro=3 then begin
  DataSet2.Free;
  DataSet2:=TClientdataSet.Create(nil);
  DataSource2.DataSet:=DataSet2;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT top 3 nroaccion,Cuif,RazonSocial AS Nombre,Dni,domicilio,Parcela,FechaCesion,'
  +' Detalle,Nivel,Plaza,Sector,CodigoPlaza,Nomenclatura,Telef,Gestor,esjubilado,nrocaja,'''' as Selec FROM Fn_VistaParcelasTitulares (null, ' + (DataSet0.Fields[1].AsString) +',0) WHERE TipoAccionista=2 order by nivel';
  if not Funciones.Listar(txtw,DataSet2) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if DataSet2.IsEmpty then begin
    messagedlg('ATENCION ACCCION sin Titular Activo...' + chr(13) + 'O Pertenece a un Mayorista', mtError,[mbok],0);
  end
  else begin
   for t:=1 to 1 do begin
    Datasource2.DataSet.RecNo:=t;
    //nroac:=trim(Datasource2.DataSet.Fields[0].AsString);
    larazonsocial:=trim(Datasource2.DataSet.Fields[2].AsString);
    //elsec:=trim(Datasource2.DataSet.Fields[10].AsString);
    //laparce:=trim(Datasource2.DataSet.Fields[5].AsString);
    //nrocaja:=trim(Datasource2.DataSet.Fields[16].AsString);
    //lafeccesion:=trim(Datasource2.DataSet.Fields[6].AsString);
    //eldomi:=trim(Datasource2.DataSet.Fields[4].AsString);
    //eldni:=trim(Datasource2.DataSet.Fields[3].AsString);
    //eltele:=trim(Datasource2.DataSet.Fields[13].AsString);
   end;
   //imprime.Enabled:=true;
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
 if nro=5 then begin //Combo Talonarios
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
   SetLength(IdCombos[2],DtCombo.RecordCount);
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    tpopago.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
    IdCombos[2,t-1]:=DtCombo.Fields[0].AsString;
   end;
  end;
  Funciones.Free;
  tpopago.ItemIndex:=0;
 end;
 if nro=8 then begin
  DtComboO.Free;
  DtComboO:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  //  txtw:='SELECT idservicioobjeto,objeto,valor FROM Fn_VistaLosObjetosPrecios(2,0)';
  if tpopago.itemindex = 0  then begin  // EFECTIVO
   txtw:='SELECT preciocontado FROM Fn_VistaLosServiciosPrecios(''EXHUMACION'')'
  end;
  if tpopago.itemindex = 1 then begin   //cheque
   txtw:='SELECT preciocheque FROM Fn_VistaLosServiciosPrecios(''EXHUMACION'')'
  end;
  if (tpopago.itemindex = 2) or (tpopago.itemindex = 3) then begin   //tarje credito   -- CUENTA CORRIENTE
   txtw:='SELECT preciolista FROM Fn_VistaLosServiciosPrecios(''EXHUMACION'') '
  end;
  if not Funciones.Listar(txtw,DtComboO) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
   e5.Text :=trim(DtComboO.Fields[0].AsString);
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
  elbanco.Clear;
  DtComboC.Free;
  DtcomboC:=TClientDataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT NroEntidad, Nombre from EntidadesBancarias WHERE (NroEntidad > 0) order by 1';
  if Funciones.Listar(txtw,DtComboC)  then  begin
   SetLength(IdCombos[1],DtcomboC.RecordCount);
   for t:=1 to DtcomboC.RecordCount  do begin
    DtcomboC.RecNo:=t;
    elbanco.Items.Insert(t-1,trim(DtcomboC.Fields[1].AsString));
    IdCombos[1,t-1]:=DtcomboC.Fields[0].AsString;
   end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  funciones.Free;
  elbanco.ItemIndex:=0;
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
 if nro=34 then begin //Combo Puntos de Venta
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
end;

procedure TImpSol_Exhum.RB2Click(Sender: TObject);
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

procedure TImpSol_Exhum.RB1Click(Sender: TObject);
begin
ONOMB.Visible:=FALSE;
ODNI.Visible:=FALSE;
LB1.Caption:='';
Busca.Enabled:=true;
Busca.SetFocus;
end;

procedure TImpSol_Exhum.DBGrid1CellClick(Column: TColumn);
var t,gf:integer;
    txt:string;
begin
 if not (DataSet0.IsEmpty) then begin
  JvBitBtn1.Click;
  label30.Caption:=trim(DataSet0.Fields[0].AsString);
  control:=true;
  Coloca1(1);
  Coloca1(3);    // titulares
  Coloca1(4);    // inhumados
  IF cantidinhu=0 THEN BEGIN
   messagedlgpos('Atencion.. esta Accion NO posee Inhumados..',mtwarning,[mbok],0,screen.Width div 3,screen.Height div 3);
   groupbox8.Enabled:=false;
  END
  else begin
   nroacc:=trim(DataSet0.Fields[1].AsString);
   elsec:=trim(DataSet0.Fields[2].AsString);
   laparce:=trim(DataSet0.Fields[5].AsString);
  end;
 end;
end;

procedure TImpSol_Exhum.BuscaClick(Sender: TObject);
var p,u:integer;
begin
Label39.Caption:='...';
if rb1.Checked  then Coloca1(24)
else Coloca1(0);
Barra1.Panels[1].Text:='Registos encontrados: ' + inttostr(DataSet0.RecordCount);
end;

procedure TImpSol_Exhum.ExportaClick(Sender: TObject);
begin
// AuditAccesos('Mdulo 2','IMP. NOTA EXHUMACION' + TRIM(ODNI.Text));
 gerimp.DefaultDest:=rdPreview;
 Gerimp.SystemPrinter.Copies :=2;
 gerimp.Execute;
end;

procedure TImpSol_Exhum.ODNIKeyPress(Sender: TObject; var Key: Char);
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

procedure TImpSol_Exhum.PC1Change(Sender: TObject);
begin
if not control then PC1.ActivePage:=PC1.Pages[0]; 
end;

procedure TImpSol_Exhum.JvDBGrid2CellClick(Column: TColumn);
var p,u:integer;
begin
 if not DataClie.IsEmpty then begin
  cuiftelef:=trim(DataSet2.Fields[1].AsString);
  larazonsocial:=trim(DataSet2.Fields[2].AsString);
  ladni:=trim(DataSet2.Fields[3].AsString);
  ladire:=trim(DataSet2.Fields[4].AsString);
  GroupBox8.Enabled :=true;
 end;
end;

procedure TImpSol_Exhum.Button2Click(Sender: TObject);
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

procedure TImpSol_Exhum.Button3Click(Sender: TObject);
begin
  PC1.ActivePage:=PC1.Pages[1];
  PC2.ActivePage:=PC2.Pages[2];
end;

procedure TImpSol_Exhum.gerimpPrint(Sender: TObject);
var posfx,posfy,posfin,pos_y,salto:double;
   Tamanio,hoja:integer;
   tipocomprobexhum:string;

   Function Imagen(posx,posy:double;vaf:integer):double;
   var Imagen1:  TBitmap;
       Fuente,PathLogo:string;
       ElMes,ElAnio,ElDia,txt:string;
   begin
    with gerimp do begin
     Imagen1 := TBitMap.Create;
     PathLogo:=modulo2.path_todo + '\Formularios\FRM-104-0232.jpg';
     if FileExists(PathLogo) then begin
      Image1.Picture.LoadFromFile(PathLogo);
      Imagen1.Assign(Image1.Picture.Graphic);
      BaseReport.PrintBitmapRect(posx,posy,posx+215,posy+290,Imagen1);
     end;
     Imagen1.Free;
     ElMes:=el_mes(strtoint(strcut_midle(trim(fecnac.Text),4,5)));
     ElAnio:=strcut_midle(trim(fecnac.Text),7,10);
     ElDia:=LeftStr(trim(fecnac.Text),2);
     BaseReport.SetFont('Arial Black',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+110,posy+30,ElDia);
     BaseReport.PrintXY(posx+125,posy+30,ElMes);
     BaseReport.PrintXY(posx+170,posy+30,ElAnio);
     BaseReport.PrintXY(posx+30,posy+36,trim(apeynom1.Text));
     BaseReport.PrintXY(posx+130,posy+36,trim(dni.Text));
     BaseReport.PrintXY(posx+7,posy+44,trim(domicilio.Text));
     BaseReport.PrintXY(posx+132,posy+44,'Formosa');
     BaseReport.PrintXY(posx+7,posy+56,nombreinhum);
     BaseReport.PrintXY(posx+42,posy+63,fechafallem);
     BaseReport.PrintXY(posx+91,posy+63,elsec);
     BaseReport.PrintXY(posx+107,posy+63,laparce);
     BaseReport.PrintXY(posx+15,posy+70,larazonsocial);
     BaseReport.PrintXY(posx+147,posy+70,ladni);
     BaseReport.PrintXY(posx+23,posy+76,nroacc);
     BaseReport.PrintXY(posx+163,posy+152,e5.Text);
     BaseReport.PrintXY(posx+88,posy+201,e5.Text);
     BaseReport.PrintXY(posx+7,posy+205,NumToPesos(trim(e5.text)));
    end;
   end;

   Function Logo(posx,posy:double;vaf:integer):double;
   var Imagen1:TBitMap;
       Fuente,PathLogo:string;
       Tamanio,hoja:integer;

   begin
    with gerimp do begin
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
     BaseReport.PrintXY(posx+130,posy+27,'ORDEN DE EXHUMACION N�: ');

     BaseReport.SetFont('Arial',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+40);
     BaseReport.PrintXY(posx+5,posy+37,'DATOS DEL EXHUMADO Y ORIGEN DEL SERVICIO');

     BaseReport.SetFont('Arial Black',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+60);
     BaseReport.PrintXY(posx+5,posy+43,'Fecha Servicio');
     //BaseReport.PrintXY(posx+25,posy+43,'Hora');
     BaseReport.PrintXY(posx+35,posy+43,'Nombre del Extinto');
     BaseReport.PrintXY(posx+88,posy+43,'N� Doc.');
     //BaseReport.PrintXY(posx+110,posy+43,'Nacio.');
     //BaseReport.PrintXY(posx+130,posy+43,'Est. Civil');
     //BaseReport.PrintXY(posx+155,posy+43,'Edad');
     BaseReport.PrintXY(posx+165,posy+43,'Fec. Nacim.');
     BaseReport.SetFont('Arial ',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+47,trim(fecnac.Text));
     //BaseReport.PrintXY(posx+25,posy+47,trim(horafalle.Text));
     BaseReport.PrintXY(posx+35,posy+47,trim(nombreinhum));
     BaseReport.PrintXY(posx+88,posy+47,trim(ladnifallem));
     //BaseReport.PrintXY(posx+110,posy+47,trim(nacio.Text));
     //BaseReport.PrintXY(posx+130,posy+47,trim(estcivil.Text));
     //BaseReport.PrintXY(posx+155,posy+47,trim(edad.Text));
     BaseReport.PrintXY(posx+165,posy+47,trim(lafecnacim));

     BaseReport.SetFont('Arial Black',7);
     BaseReport.FontColor:=clBlack;
     //BaseReport.PrintXY(posx+5,posy+53,'Domicilio');
     BaseReport.PrintXY(posx+65,posy+53,'Seccion');
     BaseReport.PrintXY(posx+80,posy+53,'Acta');
     BaseReport.PrintXY(posx+90,posy+53,'Folio');
     BaseReport.PrintXY(posx+110,posy+53,'Tomo');
     BaseReport.PrintXY(posx+130,posy+53,'Fec. Defuncion');
     BaseReport.SetFont('Arial ',7);
     BaseReport.FontColor:=clBlack;
     //BaseReport.PrintXY(posx+5,posy+57,trim(domi.Text));
     BaseReport.PrintXY(posx+68,posy+57,laseccion);
     BaseReport.PrintXY(posx+83,posy+57,laacta);
     BaseReport.PrintXY(posx+93,posy+57,lafolio);
     BaseReport.PrintXY(posx+113,posy+57,latomo);
     BaseReport.PrintXY(posx+130,posy+57,fechafallem);

     BaseReport.SetFont('Arial',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+70);
     BaseReport.PrintXY(posx+5,posy+67,' REFERENCIAS DEL SERVICIO DEL PARQUE');

     BaseReport.SetFont('Arial Black',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+88);
     //BaseReport.PrintXY(posx+5,posy+73,'Cocheria');
     BaseReport.PrintXY(posx+40,posy+73,'Tipo Servicio');
     //BaseReport.PrintXY(posx+65,posy+73,'Religion');
     BaseReport.PrintXY(posx+108,posy+73,'Fec. Exhumacion');
     //BaseReport.PrintXY(posx+125,posy+73,'H/Salida ');
     //BaseReport.PrintXY(posx+142,posy+73,'H/Llegada ');
     BaseReport.PrintXY(posx+158,posy+73,'Sector');
     BaseReport.PrintXY(posx+170,posy+73,'Parcela');
     BaseReport.PrintXY(posx+185,posy+73,'Nivel');
     BaseReport.SetFont('Arial ',7);
     BaseReport.FontColor:=clBlack;
     //BaseReport.PrintXY(posx+5,posy+77,trim(cocheria.Text));
     BaseReport.PrintXY(posx+40,posy+77,'Exhumacion');  //trim(tiposerv.Text)
     //BaseReport.PrintXY(posx+65,posy+77,trim(religionfalle.Text));
     BaseReport.PrintXY(posx+108,posy+77,trim(fecnac.Text));
     //BaseReport.PrintXY(posx+125,posy+77,trim(horasale.Text));
     //BaseReport.PrintXY(posx+142,posy+77,trim(horallega.Text));
     BaseReport.PrintXY(posx+158,posy+77,trim(elsec));
     BaseReport.PrintXY(posx+170,posy+77,trim(laparce));
     BaseReport.PrintXY(posx+185,posy+77,trim(elniv));

     BaseReport.SetFont('Arial Black',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+81,'Titular Parcela');
     BaseReport.PrintXY(posx+65,posy+81,'N� Titulo');
     BaseReport.PrintXY(posx+108,posy+81,'Objeto');
     BaseReport.PrintXY(posx+142,posy+81,'Posicion');
     BaseReport.SetFont('Arial ',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+84,trim(larazonsocial));
     BaseReport.PrintXY(posx+65,posy+84,trim(nroacc));
     BaseReport.PrintXY(posx+108,posy+84,trim(laobjeto));
     BaseReport.PrintXY(posx+142,posy+84,trim(laposicion));

     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+106);
     BaseReport.SetFont('Arial Black',7);
     BaseReport.FontColor:=clBlack;
     //BaseReport.PrintXY(posx+5,posy+93,'Solicitante:');
     BaseReport.PrintXY(posx+5,posy+98,'Solicitante');
     BaseReport.PrintXY(posx+58,posy+98,'N� Doc');
     BaseReport.PrintXY(posx+90,posy+98,'Domicilio');
     //BaseReport.PrintXY(posx+155,posy+98,'Barrio');
     BaseReport.SetFont('Arial ',7);
     BaseReport.FontColor:=clBlack;
     //BaseReport.PrintXY(posx+30,posy+93,trim(apeynom1.Text));
     BaseReport.PrintXY(posx+5,posy+102,trim(apeynom1.Text));
     BaseReport.PrintXY(posx+58,posy+102,trim(dni.Text));
     BaseReport.PrintXY(posx+90,posy+102,trim(domicilio.Text));
     //BaseReport.PrintXY(posx+155,posy+102,trim(barrior.Text));

     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+125);
     BaseReport.SetFont('Arial Black',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.SetFont('Arial ',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+110,' OBSERVACIONES: ' + trim(laobserva.Text));
     //BaseReport.PrintXY(posx+5,posy+115,trim(laobserv.Text));
     BaseReport.SetFont('Arial Black',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+118,'EXCLUSIVAMENTE P/CONTROL GERENCIAL E INFORMATICO');
     BaseReport.PrintXY(posx+5,posy+123,'SIN EXCEPCION Y DE CARACTER OBLIGATORIO');
     BaseReport.SetFont('Arial ',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+128,'OPERADOR SERVICIO: ' + MODULO2.nom_usu + ' FechaHora: ' + Fec_System());
     Logo:=posy+30;
    end;
   end;

   Function Mostrar3(posx,posy:double;vaf:integer):double;
    var a,y,pos,maxfil,j:integer;
    sd,sd1,posn,posw:double;
    tot,maxfila,val:real;
   begin
    with gerimp do begin
      BaseReport.SetFont('Arial Black',9);
      BaseReport.RoundRect(posx+60,posy+11,posx+130,posy+16,5,5);
      BaseReport.PrintXY(posx+62,posy+15,'Detalle del Pago del Servicio');
      tipocomprobexhum:='Pago Exhumacion s/Comprob. ' + trim(tpotalon.Text) + ' - ' + StrFill(PV.Text,3,'0','') + '-' + StrFill(elcomprob.Text,8,'0','');

      BaseReport.PrintXY(posx+4,posy+22,tipocomprobexhum );
      BaseReport.SetFont('Arial',8);
      if tpopago.ItemIndex = 0 then begin
       posy := posy + 5;
       BaseReport.SetFont('Arial',9);
       BaseReport.PrintXY(posx+4,posy+25,'EFECTIVO');
      end;
      {if tpopago.ItemIndex = 1 then begin
       posy := posy + 5;
       BaseReport.SetFont('Arial Black',8);
       BaseReport.PrintXY(posx+4,posy+25,'FINANCIADO');
       BaseReport.SetFont('Arial',9);
       BaseReport.PrintXY(posx+80,posy+25,'Nro Cuotas:');
       BaseReport.PrintXY(posx+140,posy+25,'Imp. Cuotas:');
       BaseReport.SetFont('Arial Black',8);
       BaseReport.PrintXY(posx+100,posy+25,trim(edit2.Text));  //ctas
       BaseReport.PrintXY(posx+160,posy+25,trim(valcuota.Text));  // importe
      end; }
      if tpopago.ItemIndex = 1 then begin
       posy := posy + 5;
       BaseReport.SetFont('Arial',9);
       BaseReport.PrintXY(posx+4,posy+25,'Banco:');
       BaseReport.PrintXY(posx+70,posy+25,'Titular:');
       BaseReport.PrintXY(posx+140,posy+25,'Nro Cheque:');
       BaseReport.PrintXY(posx+4,posy+30,'Fecha Cheque:');
       BaseReport.PrintXY(posx+70,posy+30,'Fecha Cobro:');
       BaseReport.PrintXY(posx+130,posy+30,'Importe:');
       BaseReport.SetFont('Arial Black',8);
       BaseReport.PrintXY(posx+22,posy+25,trim(elbanco.Text));
       BaseReport.PrintXY(posx+83,posy+25,trim(titcheq.Text));
       BaseReport.PrintXY(posx+163,posy+25,trim(e1.Text) + '-' + trim(e2.Text));
       BaseReport.PrintXY(posx+29,posy+30,trim(fcheque.Text));
       //BaseReport.PrintXY(posx+153,posy+30,'$ ' + trim(edit4.Text));
      end;
      if tpopago.ItemIndex = 2 then begin
       posy := posy + 5;
       BaseReport.SetFont('Arial',9);
       BaseReport.PrintXY(posx+4,posy+25,'Tarjeta:');
       BaseReport.PrintXY(posx+70,posy+25,'Titular:');
       BaseReport.PrintXY(posx+160,posy+25,'NroCuota:');
       BaseReport.PrintXY(posx+4,posy+30,'Comprobante:');
       BaseReport.PrintXY(posx+70,posy+30,'Fecha Cobro:');
       BaseReport.PrintXY(posx+130,posy+30,'Importe:');
       BaseReport.SetFont('Arial Black',8);
       BaseReport.PrintXY(posx+22,posy+25,trim(tarjeta.Text));
       BaseReport.PrintXY(posx+85,posy+25,trim(tittarje.Text));
       BaseReport.PrintXY(posx+185,posy+25,trim(nrocuota.Text));
       BaseReport.PrintXY(posx+28,posy+30,trim(nrocb.Text));
       BaseReport.PrintXY(posx+90,posy+30,trim(ftarje.Text));
       //BaseReport.PrintXY(posx+153,posy+30,'$ ' + trim(edit4.Text));
      end;
      if tpopago.ItemIndex = 3 then begin
       posy := posy + 5;
       BaseReport.SetFont('Arial',9);
       BaseReport.PrintXY(posx+4,posy+25,'CUENTA CORRIENTE');
      end;
      {if tpopago.ItemIndex = 4 then begin
       posy := posy + 5;
       BaseReport.SetFont('Arial Black',8);
       BaseReport.PrintXY(posx+4,posy+25,'FINANCIADO SIN INTERES');
       BaseReport.SetFont('Arial',9);
       BaseReport.PrintXY(posx+80,posy+25,'Nro Cuotas:');
       BaseReport.PrintXY(posx+140,posy+25,'Imp. Cuotas:');
       BaseReport.SetFont('Arial Black',8);
       BaseReport.PrintXY(posx+100,posy+25,trim(edit2.Text));  //ctas
       BaseReport.PrintXY(posx+160,posy+25,trim(valcuota.Text));  // importe
      end;  }
    end;
   end;

begin
 posfx:=1;
 posfy:=1;
 salto:=4;
 hoja:=1;
 posfy:=Imagen(posfx,posfy,hoja);

 hoja:=hoja+1;
 posfx:=1;
 posfy:=1;
 salto:=4;
 gerimp.BaseReport.NewPage;
 posfy:=Logo(posfx+5,posfy,hoja);
 posfx:=5;
 posfy:=posfy + 100;
 posfy:=Mostrar3(posfx,posfy,hoja);
end;

procedure TImpSol_Exhum.ElSectorExit(Sender: TObject);
begin
if ElSector.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Sector Ingresado!!',mterror,[mbok],0);
  ElSector.SetFocus;
end;
end;

procedure TImpSol_Exhum.ElSectorKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  coloca1(23);
  edit6.Enabled:=true;
  edit6.SetFocus;
 end
 else begin
  if ( StrScan('ABCDEFGHIJKLMN�OPQRSTUVWXYZabcdefghijklmn�opqrstuvwxyz',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;
end;

procedure TImpSol_Exhum.Edit6Exit(Sender: TObject);
begin
if Edit6.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el N� de Acci�n Ingresado!!',mterror,[mbok],0);
  Edit6.SetFocus;
end;
end;

procedure TImpSol_Exhum.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
  Key := #0;
  //busca.SetFocus;
 end
 else begin
  if ( StrScan('0123456789',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;
end;

procedure TImpSol_Exhum.nameChange(Sender: TObject);
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

procedure TImpSol_Exhum.ODNIChange(Sender: TObject);
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

procedure TImpSol_Exhum.JvDBGrid3CellClick(Column: TColumn);
begin
 elniv:= trim(DataSet3.Fields[2].AsString);
 laobjeto:= trim(DataSet3.Fields[4].AsString);
 laposicion:= trim(DataSet3.Fields[3].AsString);
 ladnifallem:= trim(DataSet3.Fields[5].AsString);
 laseccion:= trim(DataSet3.Fields[16].AsString);
 laacta:= trim(DataSet3.Fields[17].AsString);
 lafolio:= trim(DataSet3.Fields[18].AsString);
 latomo:= trim(DataSet3.Fields[19].AsString);
 nombreinhum:= trim(DataSet3.Fields[6].AsString);
 fechafallem:= trim(DataSet3.Fields[11].AsString);
 lafecnacim:= trim(DataSet3.Fields[33].AsString);
 cuiminhu:= trim(DataSet3.Fields[50].AsString);
 fechainhum:=trim(DataSet3.Fields[12].AsString);
 mesinhum:=strcut_midle(trim(fechainhum),4,5);
 anioinhum:=RightStr(trim(fechainhum),4);
 diainhum:=LeftStr(trim(fechainhum),2);
 imprime.Enabled :=true;
end;

procedure TImpSol_Exhum.ImprimeClick(Sender: TObject);
var gf,t:integer;
begin
 gf:=messagedlgpos('Desea Imprimir la SOLICITUD DE EXHUMACION correspondiente?'
    ,mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
 if gf = 1 then begin
  sale.Enabled :=false;
  panel1.Visible :=true;
  fecnac.SetFocus;
 end;
end;

procedure TImpSol_Exhum.JvBitBtn1Click(Sender: TObject);
var Busqueda:TLA_BUSQUEDA;
begin
 Busqueda:=TLA_BUSQUEDA.Create(self);
 try
  Busqueda.NroOpcion:=3;
  Busqueda.Caption:='Busqueda y Seleccion del que Suscribe';
  Busqueda.ShowModal;
  DNI.Text:=busqueda.DB1.Text;
  apeynom1.Text:=busqueda.DB4.Text;
  domicilio.Text:=busqueda.DB5.Text;
  cuim1:= busqueda.DB2.Text;
  //tipodni:=;
 finally
  Busqueda.Destroy;
 end;
end;

procedure TImpSol_Exhum.JvBitBtn2Click(Sender: TObject);
var txt,elcheque,txtw,eltipo,detserv:widestring;
    elmes,elanio,elperi:string;
    p:integer;
    ac,ct,pt,bt,at:boolean;
begin
 elmes:=strcut_midle(trim(fecnac.Text),4,5);
 elanio:=RightStr(trim(fecnac.Text),4);
 elperi := elanio+elmes;
   AuditAccesos('Mdulo 2','IMP. SOLICITUD EXHUMACION' + TRIM(ODNI.Text));
  //// inserto como servicio de exhumacion en la tabla parcelasservicios
   ParcelasServicios:=TParcelasServicios.Create(nil);
   ParcelasServicios.ConnectionString:=modulo2.Conexion;
   parcelasservicios.C_Confirmado:=true;
   parcelasservicios.C_UsuConfirma:=modulo2.nro_usu;
   parcelasservicios.C_FechaConfirma:=trim(FechaActual);
   ParcelasServicios.C_NroAccion_IX1:=nroacc;
   ParcelasServicios.C_CuentaCliente_IX2:=null;
   parcelasservicios.C_Solicita:=cuim1;
   ParcelasServicios.C_Fecha_IX3:=trim(fecnac.Text);
   ParcelasServicios.C_NroCocheria_IX4:='0';
   parcelasservicios.C_NroTipoServicio_IX5:='2';
   parcelasservicios.C_Responsable:=20000000001; //  strtoint64(trim(GrillaT.Cells[8,3]));
   parcelasservicios.C_Inhumado:=cuiminhu;
   parcelasservicios.C_IDTipoServicioNivel:=null;
   parcelasservicios.C_Nivel:=elniv;
   parcelasservicios.C_Posicion:=laposicion;
   parcelasservicios.C_Objeto:=laobjeto;
   parcelasservicios.C_Total:=StrToFloat(e5.Text);
   parcelasservicios.C_CantCuotas:=StrToInt(edit2.text);
   parcelasservicios.C_ValorCuota:=StrToFloat(valcuota.Text);
   parcelasservicios.C_Prepago:=false;
   parcelasservicios.C_Observaciones:=trim(laobserva.text);
   parcelasservicios.C_IdFormaPago:=tpopago.ItemIndex ;
   parcelasservicios.C_TipoFormaPago:=trim(tpopago.Text);
   parcelasservicios.C_NroRecibo:=trim(elcomprob.Text);
   parcelasservicios.C_PrecioContado:=TRIM(e5.Text);
   parcelasservicios.C_PrecioFinanciado:=TRIM(e5.Text);
   if trim(tpopago.Text)='CHEQUE' then begin
    parcelasservicios.C_NroEntidad:=strtoint(IdCombos[1,elbanco.ItemIndex]);
    parcelasservicios.C_Titular:=trim(titcheq.Text);
    parcelasservicios.C_Serie:=trim(e1.Text);
    parcelasservicios.C_NroCheque:=trim(e2.Text);
    parcelasservicios.C_Fecha1:=trim(fcheque.Text);
    parcelasservicios.C_FechaCobro:=trim(fpagocheque.Text);
    parcelasservicios.C_Importe:=Trim(E5.Text);
   end;
   if trim(tpopago.Text)='TARJETA DE CREDITO' then begin
    parcelasservicios.C_NroTarjeta:=strtoint(IdCombos[0,tarjeta.ItemIndex]);
    parcelasservicios.C_Titular:=trim(tittarje.Text);
    parcelasservicios.C_NroCuotas:=strtoint(nrocuota.Text);
    parcelasservicios.C_NroComprobante:=trim(nrocb.text);
    parcelasservicios.C_Fecha1:=trim(ftarje.Text);
    parcelasservicios.C_Importe:=Trim(e5.Text);
   end;
   parcelasservicios.C_Usu_A:=modulo2.nro_usu;
   ac:=Parcelasservicios.Agrega;
   ElId:=Parcelasservicios.Identidad;
   parcelasservicios.Free;
   if ac then begin
    ParcelasServiciosDeudas:=TParcelasServiciosDeudas.Create(nil);
    ParcelasServiciosDeudas.ConnectionString:=modulo2.Conexion;
    parcelasserviciosdeudas.C_NroAccion:=nroacc;
    parcelasserviciosdeudas.C_CuentaCliente_IX1:=null;
    parcelasserviciosdeudas.C_IdServicio_IX2:=strtoint(ElId);
    parcelasserviciosdeudas.C_NroCuota:='1';
    parcelasserviciosdeudas.C_Periodo_IX3:=elperi;
    parcelasserviciosdeudas.C_FechaVencimiento_IX4:=trim(fecnac.Text);
    parcelasserviciosdeudas.C_Monto:=StrtoFloat(trim(e5.Text));
    parcelasserviciosdeudas.C_Interes:=null;
    parcelasserviciosdeudas.C_Capital:=null;
    parcelasserviciosdeudas.C_DetalleCuota:=trim(tpopago.Text);
    parcelasserviciosdeudas.C_EnMovimientos:=true;
    parcelasserviciosdeudas.C_DetalleCuota:='..';
    parcelasserviciosdeudas.C_BloqueoMonto:=false;
    parcelasserviciosdeudas.C_Usu_A:=modulo2.nro_usu;
    parcelasserviciosdeudas.C_Fecha_A:=trim(FechaActual);
    at:=ParcelasServiciosDeudas.Agrega;
    ParcelasServiciosDeudas.Free;
    if at then BEGIN
     ParcelasMovimientosDiarrioDetalle:=TParcelasMovimientosDiarrioDetalle.Create(nil);
     ParcelasMovimientosDiarrioDetalle.ConnectionString:=modulo2.Conexion;
     eltipo:='SERV. EXHUMACION ';
     detserv:='Inhumado: ' + nombreinhum + ' Accion:' + nroacc  + '/Nivel:' + elniv + ' Importe: ' + trim(e5.Text) + ' FormaPago:'  + trim(tpopago.Text) ;
     txt:= ' null '
     + ' , null '
     + ' , null '
     + ' , null '
     + ' , ' + chr(39) + strcut(Fec_System(),10) + chr(39)
     + ' , ' + nroacc
     + ' , ' + trim(e5.Text)
     + ' , ' + chr(39) + trim(tpopago.Text) + chr(39)
     + ' , ' + trim(edit2.Text)
     + ' , ' + trim(valcuota.Text)
     + ' , ' + chr(39) + trim(laobserva.Text) + ' ' + detserv + chr(39);
     if (trim(tpopago.Text)= 'EFECTIVO')  or (trim(tpopago.Text)= 'CUENTA CORRIENTE') then begin
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
     if trim(tpopago.Text)= 'TARJETA DE CREDITO' then begin  // tarje credito debito
      txt := txt + ' , ' + chr(39) + trim(tarjeta.Text) + chr(39)
      + ' , ' + chr(39) + trim(tittarje.Text) + chr(39)
      + ' , ' + trim(nrocuota.Text)
      + ' , ' + trim(nrocb.Text)
      + ' , null '
      + ' , ' + inttostr(modulo2.nro_usu)
      + ' , ' + chr(39) + eltipo + chr(39);
     end;
     // if (trim(tpopago.Text)= 'FINANCIADO') or (trim(tpopago.Text)='FINANCIADO SIN INTERES') then begin
     //  txt := txt + ' , null , null , null , null , null  , ' + inttostr(modulo2.nro_usu)
     //  + ' , ' + chr(39) + eltipo + chr(39);
     //end;
     txtw:='INSERT INTO ParcelasMovimientosDiarrioDetalle (IdVenta,IdServicio,IdExhumacion,IdCremacion,Fecha,NroAccion,'
     +'Importe,FormaPago,NroCuotas,ValorCouta,Observaciones,Tarjeta,TarjetaTitular,TarjetaNroCuotas,TarjetaComprobante,' +
     'SerieCheque,Usu_A,TipoVenta) VALUES (' +  txt + ')';
     pt:=ParcelasMovimientosDiarrioDetalle.ListarSinResp(txtw);
     ParcelasMovimientosDiarrioDetalle.Free;
    END else  messagedlg('Error al Guardar este SERVICIO. Consulte con un Administrador',mtError,[mbok],0);
   end
   else begin
    messagedlg('Error al Guardar este SERVICIO. Consulte con un Administrador',mtError,[mbok],0);
   end;
  RvSoli.DefaultDest:=rdPreview;
  RvSoli.SystemPrinter.Copies :=3;
  RvSoli.Execute;
  exporta.Enabled :=true;
  exporta.setfocus;
end;

procedure TImpSol_Exhum.FECNACExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(FECNAC.Text));
except
  messagedlg('La Fecha Ingresada No es V�lida',mterror,[mbok],0);
  FECNAC.SetFocus;
end;
end;

procedure TImpSol_Exhum.FECNACKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  tpopago.SetFocus;
end;
end;

procedure TImpSol_Exhum.E5Exit(Sender: TObject);
begin
 if (trim(E5.Text) = '') OR (trim(E5.Text) = '0')
  OR (trim(E5.Text) = '00') or (trim(E5.Text)= '0000.00')then begin
  messagedlgpos('Error!! El Importe de la Exhuamcion esta Ingresado Incorrectamente.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  E5.SetFocus;
 //end
 //else begin
  //exporta.Enabled :=true;
  //tpopago.SetFocus;
 end;
end;

procedure TImpSol_Exhum.E5KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  if (tpopago.itemindex = 0) or (tpopago.itemindex = 3)  then begin
    laobserva.Text := 'Pago Exhumacion de ' + trim(tpopago.Text) + ' por $' + trim(e5.Text);
    laobserva.SetFocus;
  end;
  if (tpopago.itemindex = 1)   then begin
    elbanco.SetFocus;
  end;
  if (tpopago.itemindex =2)   then begin
    tarjeta.SetFocus;
  end;
  coloca1(14);
 end
 else begin
  if ( StrScan('0123456789.',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;
end;

procedure TImpSol_Exhum.gerimpAfterPrint(Sender: TObject);
begin
  JvBitBtn2.Enabled :=true;
end;

procedure TImpSol_Exhum.RvSoliPrint(Sender: TObject);
var posfx,posfy,posfin,pos_y,salto:double;
   Tamanio,hoja:integer;

   Function Imagen(posx,posy:double;vaf:integer):double;
   var Imagen1:  TBitmap;
       Fuente,PathLogo:string;
       ElMes,ElAnio,ElDia,txt:string;
   begin
    with RvSoli do begin
     Imagen1 := TBitMap.Create;
     PathLogo:=modulo2.path_todo + '\Formularios\FRM-SolicitudExhumacion.jpg';
     if FileExists(PathLogo) then begin
      Image1.Picture.LoadFromFile(PathLogo);
      Imagen1.Assign(Image1.Picture.Graphic);
      BaseReport.PrintBitmapRect(posx,posy,posx+215,posy+290,Imagen1);
     end;
     Imagen1.Free;
     ElMes:=el_mes(strtoint(strcut_midle(trim(fecnac.Text),4,5)));
     ElAnio:=strcut_midle(trim(fecnac.Text),7,10);
     ElDia:=LeftStr(trim(fecnac.Text),2);
     BaseReport.SetFont('Arial Black',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+128,posy+30,ElDia);
     BaseReport.PrintXY(posx+145,posy+30,ElMes);
     BaseReport.PrintXY(posx+192,posy+30,ElAnio);
     BaseReport.PrintXY(posx+75,posy+80,trim(apeynom1.Text));
     BaseReport.PrintXY(posx+185,posy+80,trim(dni.Text));
     BaseReport.PrintXY(posx+50,posy+87,trim(domicilio.Text));
     BaseReport.PrintXY(posx+35,posy+93,'Formosa');
     BaseReport.PrintXY(posx+10,posy+100,nombreinhum);
     BaseReport.PrintXY(posx+187,posy+100,trim(dni.Text));
     if trim(fechafallem) <> '' then begin
      BaseReport.PrintXY(posx+30,posy+105,LeftStr(fechafallem,2));
      BaseReport.PrintXY(posx+54,posy+105,el_mes(strtoint(strcut_midle(fechafallem,4,5))));
      BaseReport.PrintXY(posx+89,posy+105,strcut_midle(fechafallem,7,10));
     end;
     if trim(fechafecinhum) <> '' then begin
      BaseReport.PrintXY(posx+135,posy+137,LeftStr(fechafecinhum,2));
      BaseReport.PrintXY(posx+165,posy+137,el_mes(strtoint(strcut_midle(fechafecinhum,4,5))));
      BaseReport.PrintXY(posx+22,posy+144,strcut_midle(fechafecinhum,7,10));
     end;
     BaseReport.PrintXY(posx+60,posy+144,laparce);
     BaseReport.PrintXY(posx+82,posy+144,elsec);
     BaseReport.PrintXY(posx+10,posy+150,larazonsocial);
     BaseReport.PrintXY(posx+187,posy+150,ladni);
     BaseReport.PrintXY(posx+45,posy+155,ladire);
     BaseReport.PrintXY(posx+146,posy+162,nroacc);
    end;
   end;

begin
 posfx:=1;
 posfy:=1;
 salto:=4;
 hoja:=1;
 posfy:=Imagen(posfx,posfy,hoja);
end;

procedure TImpSol_Exhum.SpeedButton1Click(Sender: TObject);
begin
panel1.Visible :=false;
imprime.Enabled   :=false;
sale.Enabled :=true;
sale.SetFocus;
end;

procedure TImpSol_Exhum.tpopagoExit(Sender: TObject);
var t:integer;
var val,tot,vSaldo,vEntrega:real;
begin
 if tpopago.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Pago Ingresado!!',mterror,[mbok],0);
  tpopago.SetFocus;
 end
 else begin
  if tpopago.itemindex = 0  then begin    // EFECTIVO
    grupocheq.Visible:=false;
    grupotarje.Visible:=false;
    tipopago:=2;
  end;
  //if tpopago.itemindex = 1  then begin  // FINANCIADO
  //  grupocheq.Visible:=false;
  //  grupotarje.Visible:=false;
  //  tipopago:=7;
  //end;
  if tpopago.itemindex = 1 then begin   //cheque
   grupocheq.Visible:=true;
   grupotarje.Visible:=false;
   tipopago:=4;
   elBANCO.SetFocus;
  end;
  if tpopago.itemindex = 2 then begin   //tarje credito
   grupocheq.Visible:=false;
   grupotarje.Visible:=true;
   tipopago:=3;
   TARJETA.SetFocus;
  end;
  //if tpopago.itemindex = 4  then begin  // FINANCIADO  SIN INTERES
  //  grupocheq.Visible:=false;
  //  grupotarje.Visible:=false;
  //  tipopago:=3;
  //end;
  if tpopago.itemindex = 3  then begin   // CUENTA CORRIENTE
    grupocheq.Visible:=false;
    grupotarje.Visible:=false;
    tipopago:=2;
    laobserva.SetFocus;
  end;
  //coloca1(8);
 end;
end;

procedure TImpSol_Exhum.tpopagoKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
 Key := #0;
 if tpopago.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Pago Ingresado!!',mterror,[mbok],0);
  tpopago.SetFocus;
 end
 else begin
  if tpopago.itemindex = 0 then begin   // EFECTIVO
   Key := #0;
   coloca1(8);
   edit2.Text:='0';
   valcuota.Text:='0';
   grupocheq.Visible:=false;
   grupotarje.Visible:=false;
   edit2.Visible :=false;
   valcuota.Visible :=false;
   label78.Visible :=false;
   label80.Visible :=false;
   tipopago:=2;
   label1.Visible:=false;
   entrega.Visible:=false;
   e5.SetFocus;
   laobserva.Text := 'Pago Exhumacion de ' + trim(tpopago.Text) + ' por $' + trim(e5.Text);
   tpotalon.SetFocus;
  end;
  {if tpopago.itemindex = 1 then begin   // FINANCIADO
   Key := #0;
   grupocheq.Visible:=false;
   grupotarje.Visible:=false;
   edit2.Visible :=true;
   valcuota.Visible :=true;
   label78.Visible :=true;
   label80.Visible :=true;
   tipopago:=7;
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
   laobserva.Text := 'Pago Exhumacion por: ' + trim(tpopago.Text) + ' en ' + trim(edit2.Text) + ' cuotas de $' + trim(valcuota.Text);
   laobserva.SetFocus;
  end; }
  if tpopago.itemindex = 1 then begin   // CHEQUE
   Key := #0;
     coloca1(8);
   label1.Visible:=false;
   entrega.Visible:=false;
   edit2.Visible :=false;
   valcuota.Visible :=false;
   label78.Visible :=false;
   label80.Visible :=false;
   tipopago:=4;
   grupocheq.Visible:=true;
   grupotarje.Visible:=false;
   laobserva.Text := 'Pago Exhumacion por: ' + trim(tpopago.Text) + ' de ' + trim(elbanco.Text) + ' s/Nro Cheque ' + trim(e1.Text) + '-' + trim(e2.Text);
   elbanco.SetFocus;
  end;
  if tpopago.itemindex = 2 then begin   // TARJETA
   Key := #0;
   coloca1(8);
   label1.Visible:=false;
   entrega.Visible:=false;
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
   tipopago:=3;
   laobserva.Text := 'Pago Exhumacion por: ' + trim(tpopago.Text) + ' - ' + trim(tarjeta.Text) + ' en ' + trim(edit2.Text) + ' cuotas de $' + trim(valcuota.Text);
   TARJETA.SetFocus;
  end;
  {if tpopago.itemindex = 4 then begin   // FINANCIADO SIN INTERES
   Key := #0;
   edit2.Visible :=true;
   valcuota.Visible :=true;
   label78.Visible :=true;
   label80.Visible :=true;
   grupocheq.Visible:=false;
   grupotarje.Visible:=true;
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
   tipopago:=3;
   laobserva.Text := 'Pago Exhumacion por: ' + trim(tpopago.Text) + ' en ' + trim(edit2.Text) + ' cuotas de $' + trim(valcuota.Text);
   laobserva.SetFocus;
  end;  }
  if tpopago.itemindex = 3 then begin   // CUENTA CORRIENTE
   Key := #0;
   coloca1(8);
   edit2.Text:='0';
   valcuota.Text:='0';
   grupocheq.Visible:=false;
   grupotarje.Visible:=false;
   edit2.Visible :=false;
   valcuota.Visible :=false;
   label78.Visible :=false;
   label80.Visible :=false;
   tipopago:=3;
   label1.Visible:=false;
   entrega.Visible:=false;
   //entrega.SetFocus;
   laobserva.Text := 'Pago Exhumacion por ' + trim(tpopago.Text) + ' por $' + trim(e5.Text);
   laobserva.SetFocus;
  end;
 end;
 end;
end;

procedure TImpSol_Exhum.elbancoExit(Sender: TObject);
begin
 if elbanco.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Banco Ingresada!!',mterror,[mbok],0);
  elbanco.SetFocus;
 end;
end;

procedure TImpSol_Exhum.elbancoKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then titcheq.SetFocus;
end;

procedure TImpSol_Exhum.tittarjeKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then nrocuota.SetFocus;
end;

procedure TImpSol_Exhum.TARJETAExit(Sender: TObject);
begin
 if TARJETA.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe la Tarjeta Ingresada!!',mterror,[mbok],0);
  TARJETA.SetFocus;
 end;
end;

procedure TImpSol_Exhum.TARJETAKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then tittarje.SetFocus;
end;

procedure TImpSol_Exhum.NroCuotaExit(Sender: TObject);
begin
 if (trim(NroCuota.Text) = '') OR (trim(NroCuota.Text) = '00') OR (trim(NroCuota.Text) = '0') then begin
  messagedlgpos('Error!! Nro de Cuota Ingresado Incorrectamente.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  NroCuota.SetFocus;
 end;
end;

procedure TImpSol_Exhum.NroCuotaKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then NroCb.SetFocus
 else begin
  if ( StrScan('0123456789',Key) <> nil ) or  ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;
end;

procedure TImpSol_Exhum.NROCBExit(Sender: TObject);
begin
 if (trim(NROCB.Text) = '') OR (trim(NROCB.Text) = '0') then begin
  messagedlgpos('Error!! Nro de Comprobante Ingresado Incorrectamente.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  NROCB.SetFocus;
 end;
end;

procedure TImpSol_Exhum.NROCBKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then ftarje.SetFocus
 else begin
  if ( StrScan('0123456789.',Key) <> nil ) or  ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;
end;

procedure TImpSol_Exhum.ftarjeKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then laobserva.SetFocus ; //tpotalon.SetFocus; //
end;

procedure TImpSol_Exhum.fpagochequeKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then laobserva.SetFocus ; //tpotalon.SetFocus; //
end;

procedure TImpSol_Exhum.titcheqKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then e1.SetFocus;
end;

procedure TImpSol_Exhum.titcheqExit(Sender: TObject);
begin
if trim(titcheq.Text) = '' then begin
  messagedlg('Error!! No hay Titular del Cheque Ingresado.',mterror,[mbok],0);
  titcheq.SetFocus
end;
end;

procedure TImpSol_Exhum.E1KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then E2.SetFocus
 else begin
  if ( StrScan('ABCDEFGHIJKLMN�OPQRSTUVWXYZ',Key) <> nil ) or  ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;
end;

procedure TImpSol_Exhum.E2Exit(Sender: TObject);
begin
if (trim(E2.Text) = '') OR (trim(E2.Text) = '000000000000') OR (trim(E2.Text) = '0') then begin
  messagedlgpos('Error!! Nro de Cheque Ingresado Incorrectamente.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  E2.SetFocus;
end;
end;

procedure TImpSol_Exhum.E2KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then fpagocheque.SetFocus
 else begin
  if ( StrScan('1234567890',Key) <> nil ) or  ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;
end;

procedure TImpSol_Exhum.FchequeExit(Sender: TObject);
var fec:Tdatetime;
begin
 try
  fec:=strtodate(trim(Fcheque.Text));
 except
  messagedlgpos('La fecha es Erronea!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  Fcheque.SetFocus;
 end;
end;

procedure TImpSol_Exhum.FchequeKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then fpagocheque.SetFocus;
end;

procedure TImpSol_Exhum.fpagochequeExit(Sender: TObject);
var fec:Tdatetime;
begin
 try
  fec:=strtodate(trim(fpagocheque.Text));
 except
  messagedlgpos('La fecha es Erronea!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  fpagocheque.SetFocus;
 end;
end;

procedure TImpSol_Exhum.tittarjeExit(Sender: TObject);
begin
if trim(tittarje.Text) = '' then begin
  messagedlg('Error!! No hay Titular de la Tarjeta Ingresada.',mterror,[mbok],0);
  tittarje.SetFocus
end;
end;

procedure TImpSol_Exhum.E1Exit(Sender: TObject);
begin
if (trim(E1.Text) = '') then begin
  messagedlgpos('Error!! Nro de Serie Incorrecto.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  E1.SetFocus;
end;
end;

procedure TImpSol_Exhum.ftarjeExit(Sender: TObject);
var fec:Tdatetime;
begin
 try
  fec:=strtodate(trim(ftarje.Text));
 except
  messagedlgpos('La fecha es Erronea!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  ftarje.SetFocus;
 end;
end;

procedure TImpSol_Exhum.actuClick(Sender: TObject);
begin
  //StrFill(PV.Text,3,'0','') + '-' + StrFill(COMPROB.Text,7,'0','')
  tipocomprob:='Segun pago ' + trim(tpotalon.Text)   + ' - ' + StrFill(PV.Text,3,'0','') + '-' + StrFill(elcomprob.Text,7,'0','');
  //exporta.Enabled :=true;
  JvBitBtn2.Enabled :=true;
  JvBitBtn2.setfocus;
end;

procedure TImpSol_Exhum.TPOTALONExit(Sender: TObject);
begin
 if TPOTALON.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe un Tipo de Comprobante Valido!!',mterror,[mbok],0);
  TPOTALON.SetFocus;
 end;
end;

procedure TImpSol_Exhum.TPOTALONKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then pv.SetFocus;
end;

procedure TImpSol_Exhum.PVExit(Sender: TObject);
begin
 if PV.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe un Tipo de Punto de Venta Valido!!',mterror,[mbok],0);
  PV.SetFocus;
 end;
end;

procedure TImpSol_Exhum.PVKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then elcomprob.SetFocus;
end;

procedure TImpSol_Exhum.elcomprobChange(Sender: TObject);
begin
 actu.Enabled :=true;
end;

procedure TImpSol_Exhum.elcomprobExit(Sender: TObject);
begin
 if (trim(elcomprob.Text) = '00000000') or (trim(elcomprob.Text) = '')  then begin
  messagedlg('ERROR!!... El N� de Comprobante es invalido',mterror,[mbok],0);
  elcomprob.SetFocus;
 end;
end;

procedure TImpSol_Exhum.elcomprobKeyPress(Sender: TObject; var Key: Char);
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

procedure TImpSol_Exhum.saleClick(Sender: TObject);
begin
close;
end;

procedure TImpSol_Exhum.laobservaKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  tpotalon.SetFocus;
  //exporta.SetFocus;
 end
end;

procedure TImpSol_Exhum.RvORDENPrint(Sender: TObject);
var posfx,posfy,posfin,pos_y,salto:double;
   Tamanio,hoja:integer;
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
     BaseReport.PrintXY(posx+5,posy+27,'REGISTRO DE EXHUMACIONES' );
     //BaseReport.PrintXY(posx+130,posy+27,'SERV. N�: '+ idcrema);
     BaseReport.PrintXY(posx+130,posy+27,'SERV. N�: ');

     BaseReport.SetFont('Arial',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+40);
     BaseReport.PrintXY(posx+5,posy+37,'DATOS DEL FALLECIDO');
    // BaseReport.PrintXY(posx+165,posy+37,'Id:' + idcrema );

     BaseReport.SetFont('Arial Black',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+60);
     BaseReport.PrintXY(posx+5,posy+43,'Nivel');
     BaseReport.PrintXY(posx+30,posy+43,'Posicion');
     BaseReport.PrintXY(posx+55,posy+43,'Fecha Serv.');
     BaseReport.PrintXY(posx+75,posy+43,'Objeto');
     BaseReport.PrintXY(posx+105,posy+43,'Nombre del Extinto');
     BaseReport.PrintXY(posx+150,posy+43,'N� Doc.');
     BaseReport.PrintXY(posx+165,posy+43,'Fec. Nac.');
     //BaseReport.PrintXY(posx+180,posy+43,'Fec. Fallecim.');

     BaseReport.PrintXY(posx+5,posy+47,elniv);
     BaseReport.PrintXY(posx+30,posy+47,laposicion);
     BaseReport.PrintXY(posx+55,posy+47,trim(fecnac.Text));
     BaseReport.PrintXY(posx+75,posy+47,laobjeto);
     BaseReport.PrintXY(posx+105,posy+47,nombreinhum);
     BaseReport.PrintXY(posx+150,posy+47,ladnifallem);
     BaseReport.PrintXY(posx+165,posy+47,lafecnacim);
     //BaseReport.PrintXY(posx+180,posy+47,fechafallem);

     // BaseReport.PrintXY(posx+5,posy+53,'Medico');
     //BaseReport.PrintXY(posx+65,posy+53,'Seccion');
     BaseReport.PrintXY(posx+80,posy+53,'Acta');
     BaseReport.PrintXY(posx+90,posy+53,'Folio');
     BaseReport.PrintXY(posx+110,posy+53,'Tomo');
     BaseReport.PrintXY(posx+130,posy+53,'Fec. Defuncion');

     //BaseReport.PrintXY(posx+5,posy+57,trim(losmedicos.Text));
     //BaseReport.PrintXY(posx+68,posy+57,trim(nrosec.Text));
     BaseReport.PrintXY(posx+83,posy+57,laacta);
     BaseReport.PrintXY(posx+93,posy+57,lafolio);
     BaseReport.PrintXY(posx+113,posy+57,latomo);
     BaseReport.PrintXY(posx+130,posy+57,fechafallem);

     BaseReport.SetFont('Arial',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+70);
     BaseReport.PrintXY(posx+5,posy+67,' REFERENCIAS DEL SERVICIO');

     BaseReport.SetFont('Arial Black',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+88);
     BaseReport.PrintXY(posx+5,posy+73,'Suscribe');
     //BaseReport.PrintXY(posx+40,posy+73,'Tipo Servicio');
     BaseReport.PrintXY(posx+65,posy+73,'N� doc.');
     //BaseReport.PrintXY(posx+108,posy+73,'Fec. Inhu.');
     BaseReport.PrintXY(posx+125,posy+73,'Nro Accion ');
     //BaseReport.PrintXY(posx+142,posy+73,'H/Llegada ');
     BaseReport.PrintXY(posx+158,posy+73,'Sector');
     BaseReport.PrintXY(posx+175,posy+73,'Parcela');
     //BaseReport.PrintXY(posx+185,posy+73,'Nivel');

     BaseReport.PrintXY(posx+5,posy+77,trim(apeynom1.Text));
     //BaseReport.PrintXY(posx+40,posy+77,'Cremacion');  //trim(tiposerv.Text)
     BaseReport.PrintXY(posx+65,posy+77,trim(DNI.Text));
     //BaseReport.PrintXY(posx+108,posy+77,trim(fecinhu.Text));
     BaseReport.PrintXY(posx+125,posy+77,nroacc);
      //BaseReport.PrintXY(posx+142,posy+77,trim(horallega.Text));
     BaseReport.PrintXY(posx+158,posy+77,elsec);
     BaseReport.PrintXY(posx+175,posy+77,laparce);
     //BaseReport.PrintXY(posx+185,posy+77,trim(nivel1.Text));
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+125);
     BaseReport.SetFont('Arial Black',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.SetFont('Arial ',8);
     BaseReport.FontColor:=clBlack;

     BaseReport.SetFont('Arial Black',12);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+105,'Sepelio : ' + tipocomprob);
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
      BaseReport.PrintXY(posx+62,posy+15,'Detalle del Pago del Sepelio');
     // BaseReport.PrintXY(posx+4,posy+22,tipocomprob );
      BaseReport.SetFont('Arial',8);
      if tpopago.ItemIndex = 0 then begin
       BaseReport.SetFont('Arial',9);
       BaseReport.PrintXY(posx+4,posy+25,'CONTADO IMPORTE:$ ' + TRIM(E5.Text));
      end;
      {if tpopago.ItemIndex = 1 then begin
       BaseReport.SetFont('Arial Black',8);
       BaseReport.PrintXY(posx+4,posy+20,'FINANCIADO');
       BaseReport.SetFont('Arial',9);
       BaseReport.PrintXY(posx+80,posy+20,'Nro Cuotas:');
       BaseReport.PrintXY(posx+140,posy+20,'Imp. Cuotas:');
       BaseReport.SetFont('Arial Black',8);
       BaseReport.PrintXY(posx+100,posy+20,trim(edit2.Text));  //ctas
       BaseReport.PrintXY(posx+160,posy+20,trim(valcuota.Text));  // importe
      end; }
      if tpopago.ItemIndex = 1 then begin
       BaseReport.SetFont('Arial',9);
       BaseReport.PrintXY(posx+4,posy+20,'Banco:');
       BaseReport.PrintXY(posx+70,posy+20,'Titular:');
       BaseReport.PrintXY(posx+140,posy+20,'Nro Cheque:');
       BaseReport.PrintXY(posx+4,posy+25,'Fecha Cheque:');
       BaseReport.PrintXY(posx+130,posy+25,'Importe:');
       BaseReport.SetFont('Arial Black',8);
       BaseReport.PrintXY(posx+22,posy+20,trim(elbanco.Text));
       BaseReport.PrintXY(posx+83,posy+20,trim(titcheq.Text));
       BaseReport.PrintXY(posx+163,posy+20,trim(e1.Text) + '-' + trim(e2.Text));
       BaseReport.PrintXY(posx+29,posy+25,trim(fcheque.Text));
       BaseReport.PrintXY(posx+153,posy+25,'$ ' + trim(E5.Text));
      end;
      if tpopago.ItemIndex = 2 then begin
       BaseReport.SetFont('Arial',9);
       BaseReport.PrintXY(posx+4,posy+20,'Tarjeta:');
       BaseReport.PrintXY(posx+70,posy+20,'Titular:');
       BaseReport.PrintXY(posx+130,posy+20,'NroCuota:');
       BaseReport.PrintXY(posx+4,posy+25,'Comprobante:');
       BaseReport.PrintXY(posx+70,posy+25,'Fecha Cobro:');
       BaseReport.PrintXY(posx+130,posy+25,'Importe :');
       BaseReport.SetFont('Arial Black',8);
       BaseReport.PrintXY(posx+22,posy+20,trim(tarjeta.Text));
       BaseReport.PrintXY(posx+85,posy+20,trim(tittarje.Text));
       BaseReport.PrintXY(posx+155,posy+20,trim(nrocuota.Text));
       BaseReport.PrintXY(posx+28,posy+25,trim(nrocb.Text));
       BaseReport.PrintXY(posx+90,posy+25,trim(ftarje.Text));
       BaseReport.PrintXY(posx+153,posy+25,'$ ' + trim(valcuota.Text));
      end;
      if tpopago.ItemIndex = 3 then begin
       BaseReport.SetFont('Arial',9);
       BaseReport.PrintXY(posx+4,posy+20,'CUENTA CORRIENTE POR EL IMPORTE:$ ' + TRIM(E5.Text));
      end;
    end;
   end;

begin
 posfx:=1;
 posfy:=1;
 salto:=4;
 hoja:=1;
 posfy:=Logo(posfx,posfy,hoja);
 posfx:=5;
 posfy:=posfy + 95;
 posfy:=Mostrar3(posfx,posfy,hoja);

  //2da pagina
 hoja:=hoja+1;
 RvOrden.BaseReport.NewPage;
 posfx:=1;
 posfy:=1;
 salto:=4;
 posfy:=Logo(posfx,posfy,hoja);
 posfx:=5;
 posfy:=posfy + 95;
 posfy:=Mostrar3(posfx,posfy,hoja);
end;

end.





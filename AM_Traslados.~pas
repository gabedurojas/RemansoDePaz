unit AM_Traslados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, JvExGrids, JvStringGrid, StdCtrls, JvgGroupBox, Mask,DBClient,
  DBGrids, JvExDBGrids, JvDBGrid, Buttons, JvExButtons, JvBitBtn, ExtCtrls,
  ComCtrls, DB,DBCtrls,StrUtils, ToolWin,ClaseSistemas,ClaseFunciones,ADODB,
  RpDefine, RpBase, RpSystem, JvExStdCtrls, JvEdit, JvValidateEdit,
  ClaseParcelasMovimientosDiarrioDetalle, ClaseParcelasServiciosTrasladosDeudas, ClaseAtaudUsos,
  ClaseParcelasServiciosTrasladosEstados, JvSimLogic, RpRender, RpRenderPDF;

type LosDts = class(TDataSource);
type HackTable = class(TADOTable);

type THackStringGrid = class(TStringGrid);
type
  TAM_LosTraslados = class(TForm)
    PC1: TPageControl;
    TabSheet3: TTabSheet;
    grupo1: TGroupBox;
    Barra1: TStatusBar;
    ToolBar1: TToolBar;
    JvBitBtn3: TJvBitBtn;
    Label35: TLabel;
    apeynom: TDBEdit;
    Label40: TLabel;
    desde: TEdit;
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
    Label46: TLabel;
    banco: TComboBox;
    E1: TEdit;
    E2: TEdit;
    Fcheque: TMaskEdit;
    titcheq: TEdit;
    JvBitBtn0: TJvBitBtn;
    cuif: TDBEdit;
    Label1: TLabel;
    JvBitBtn4: TJvBitBtn;
    inhumado: TDBEdit;
    cuifinhu: TDBEdit;
    Label17: TLabel;
    hasta: TEdit;
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
    kms: TEdit;
    Label2: TLabel;
    Label9: TLabel;
    horasale: TMaskEdit;
    Label10: TLabel;
    Label11: TLabel;
    FIJO: TEdit;
    NAFTA: TEdit;
    JvSIMConnector1: TJvSIMConnector;
    JvSIMConnector2: TJvSIMConnector;
    GroupBox1: TGroupBox;
    Panel2: TPanel;
    JvSIMConnector4: TJvSIMConnector;
    Label59: TLabel;
    Label60: TLabel;
    JvSIMConnector3: TJvSIMConnector;
    Label13: TLabel;
    impactacircu: TJvBitBtn;
    Edit11: TEdit;
    Edit1: TEdit;
    cierra: TJvBitBtn;
    RvD: TRvSystem;
    RvRenderPDF1: TRvRenderPDF;
    StringAgrupD: TStringGrid;
    CheckBox1: TCheckBox;
    Label14: TLabel;
    Label15: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure JvBitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FECNACExit(Sender: TObject);
    procedure FECNACKeyPress(Sender: TObject; var Key: Char);
    procedure JvBitBtn0Click(Sender: TObject);
    procedure desdeKeyPress(Sender: TObject; var Key: Char);
    procedure E5Exit(Sender: TObject);
    procedure E5KeyPress(Sender: TObject; var Key: Char);
    procedure tpopagoExit(Sender: TObject);
    procedure JvBitBtn4Click(Sender: TObject);
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
    procedure FchequeKeyPress(Sender: TObject; var Key: Char);
    procedure tpopagoKeyPress(Sender: TObject; var Key: Char);
    procedure hastaKeyPress(Sender: TObject; var Key: Char);
    procedure RvOrdenPrint(Sender: TObject);
    procedure desdeExit(Sender: TObject);
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
    procedure SALEClick(Sender: TObject);
    procedure JvBitBtn5Click(Sender: TObject);
    procedure dominioExit(Sender: TObject);
    procedure dominioKeyPress(Sender: TObject; var Key: Char);
    procedure Limpiar(nro:byte);
    procedure kmsExit(Sender: TObject);
    procedure hastaExit(Sender: TObject);
    procedure kmsKeyPress(Sender: TObject; var Key: Char);
    procedure horasaleKeyPress(Sender: TObject; var Key: Char);
    procedure horasaleExit(Sender: TObject);
    procedure cierraClick(Sender: TObject);
    procedure impactacircuClick(Sender: TObject);
    procedure JvBitBtn5Exit(Sender: TObject);
    procedure RvDPrint(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure StringAgrupDClick(Sender: TObject);
    procedure ControlaSelec(nro:byte);
  //  procedure horasaleExit(Sender: TObject);

  private
   control,gh:boolean;
   cants,cantis,cant:integer;
   Funciones:TFuncionesVarias;
   Sistemas:TSistemas;
   ParcelasMovimientosDiarrioDetalle:TParcelasMovimientosDiarrioDetalle;
   AtaudUsos:TAtaudUsos;
   IdCombos:array of array of string;
   edadsusc,dnisusc,domsusc,edadinhu,dniinhu,dominhu,sexoinhu,nroorden,valorpago,actacircu,numactacircu ,estcivilinhu,
   edadt1,dnit1,domt1,edadt2,dnit2,domt2,fecnacinhu,tipocomprob,laobserva,idcrema,iddestino,valorkm,nacioinhu:string;
   ParcelasServiciosTrasladosDeudas:TParcelasServiciosTrasladosDeudas;
   ParcelasServiciosTrasladosEstados:TParcelasServiciosTrasladosEstados;
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
  AM_LosTraslados: TAM_LosTraslados;

implementation

uses Modulo,Unidad,SelecCuotas,Busqueda,AM_VenGenerica;

{$R *.dfm}


procedure TAM_LosTraslados.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TAM_LosTraslados.FormActivate(Sender: TObject);
begin
 if not(gh) then begin
  gh:=true;
  PROCESO:=TADODataSet.Create(nil);
  PROCESO.ConnectionString:=modulo2.Conexion;
  setlength(IdCombos,5);
  StringAgrupD.Cells[0,0]:='Stock';               StringAgrupD.Cells[1,0]:='TipoAtaud';
  StringAgrupD.Cells[2,0]:='ID';                  StringAgrupD.Cells[3,0]:='Selec';
  StringAgrupD.Enabled :=false;
  PC1.ActivePage:=PC1.Pages[0];
  fecnac.Text:=LeftStr(Fec_System(),10);
  fcheque.Text:=LeftStr(Fec_System(),10);
  ftarje.Text:=LeftStr(Fec_System(),10);
  tipocomprob:='';
  grupocheq.Visible:=false;
  grupotarje.Visible:=false;
  edit2.Visible :=false;
  valcuota.Visible :=false;
  label78.Visible :=false;
  label80.Visible :=false;
  coloca1(7);        coloca1(8);
  coloca1(10);       coloca1(11);
  coloca1(16);       coloca1(17);
  coloca1(18);       coloca1(14);
  coloca1(21);
  panel1.Visible :=false;
  sale.Enabled :=false;
  actu.Enabled :=false;
  GroupBox1.Visible :=false;
  origen.SetFocus;
 end;
end;

procedure TAM_LosTraslados.limpiar(nro:byte);
begin
///
end;

procedure TAM_LosTraslados.Coloca1(nro:byte);
var t,y,p,u:integer;
    txt,sex,nrosoli:string;
    txtw:widestring;
    Funciones:TFuncionesVarias;
    Sistema:TSistemas;
    NroDni,NroCuif,NroArea:variant;
begin
 if nro=0 then begin
  DtComboO.Free;
  DtComboO:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT  Descripcion, case when Descripcion = ''EN EGIDO MUNCIPAL'' then ''SI'' else ''NO'' end as Fijo, '
  +' ImporteFijo AS valorcombustible fROM ParcelasServiciosTrasladosOrigen WHERE  (Activo = 1) '
  + ' and Descripcion = ' + chr(39) + trim(origen.Text) + chr(39);
  if not Funciones.Listar(txtw,DtComboO) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  FIJO.Text :=trim(DtComboO.Fields[1].AsString);
  NAFTA.Text :=trim(DtComboO.Fields[2].AsString);
 END;
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
   SetLength(IdCombos[4],DtCombo.RecordCount);
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    tpopago.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
    IdCombos[4,t-1]:=DtCombo.Fields[0].AsString;
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
 if nro=10 then begin //Combo origen servicio   idcombo 3
  Origen.Clear;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if Funciones.listar('SELECT Id,Descripcion FROM ParcelasServiciosTrasladosOrigen where activo=1 order by 1 asc',DtCombo) then begin
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
  txtw:='SELECT Importetotal FROM ParcelasServiciosTrasladosOrigen where Activo=1 ' //and ImporteFijo is not null '
  + ' and Descripcion = ' + chr(39) + trim(origen.Text) + chr(39);
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
  txtw:='SELECT top 1 IdTraslado FROM ParcelasServiciosTraslados order by 1 desc';
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
  txtw:='SELECT  COUNT(*) FROM dbo.ParcelasServiciosTraslados';
  if not Funciones.Listar(txtw,DtComboO) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  nroorden:=trim(DtComboO.Fields[0].AsString);
 end;
 if nro=21 then begin
  DtComboO.Free;
  DtComboO:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  //if valorkm then begin
    txtw:='SELECT importefijo FROM ParcelasServiciosTrasladosOrigen where Activo=1 '
    +' and Descripcion = ' + chr(39) + trim(origen.Text) + chr(39);
    if not Funciones.Listar(txtw,DtComboO) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    Funciones.Free;
    valorkm:=trim(DtComboO.Fields[0].AsString);
  //end
  //else valorkm:='1';
  end;
end;

procedure TAM_LosTraslados.JvBitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TAM_LosTraslados.FECNACExit(Sender: TObject);
var kl:Tdatetime;
begin
 try
  kl:=strtodate(trim(FECNAC.Text));
 except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  FECNAC.SetFocus;
 end;
end;

procedure TAM_LosTraslados.FECNACKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  horasale.SetFocus;
 end;
end;

procedure TAM_LosTraslados.JvBitBtn0Click(Sender: TObject);
var Busqueda:TLA_BUSQUEDA;
begin
  Busqueda:=TLA_BUSQUEDA.Create(self);
  try
   Busqueda.NroOpcion:=3;
   Busqueda.Caption:='Busqueda y Seleccion de Clientes';
   Busqueda.ShowModal;
   CUIF.Text:=busqueda.DB2.Text;
   apeynom.Text:=busqueda.DB4.Text;
   dnisusc:=busqueda.DB1.Text;
   domsusc:=busqueda.DB5.Text;
  finally
   Busqueda.Destroy;
  end;
  JvBitBtn4.SetFocus;
end;

procedure TAM_LosTraslados.desdeKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  hasta.SetFocus;
end;
end;

procedure TAM_LosTraslados.E5Exit(Sender: TObject);
begin
 if (trim(E5.Text) = '')  or (trim(E5.Text) = '0') then begin
  messagedlgpos('Error!! El Importe del Traslado esta Ingresado Incorrectamente.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  E5.SetFocus;
 end;
end;

procedure TAM_LosTraslados.E5KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
   Key := #0;
   tpopago.SetFocus;
  end
  else begin
   if ( StrScan('0123456789.',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
    else Key := #0;
  end;
end;

procedure TAM_LosTraslados.tpopagoExit(Sender: TObject);
begin
 if tpopago.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Pago Ingresado!!',mterror,[mbok],0);
  tpopago.SetFocus;
 {end
 else begin
  if (trim(tpopago.Text)='CONTADO') then begin
    grupocheq.Visible:=false;
    grupotarje.Visible:=false;
    panel1.Visible:=true;
    tpotalon.SetFocus;
  end; }
 end;
end;

procedure TAM_LosTraslados.JvBitBtn4Click(Sender: TObject);
var Busqueda:TLA_BUSQUEDA;
begin
 Busqueda:=TLA_BUSQUEDA.Create(self);
 try
  Busqueda.NroOpcion:=3;
  Busqueda.Caption:='Busqueda y Seleccion de Clientes';
  Busqueda.ShowModal;
  cuifinhu.Text:=busqueda.DB2.Text;
  inhumado.Text:=busqueda.DB4.Text;
  //edadinhu:=unidad.edad(strcut(Fec_System(),10),trim(busqueda.DB10.Text));
  dniinhu:=busqueda.DB1.Text;
  //dominhu:=busqueda.DB5.Text;
  //sexoinhu:=busqueda.DB15.Text;
  estcivilinhu:= busqueda.DB9.Text;
  fecnacinhu:=busqueda.DB10.Text;
  nacioinhu:= busqueda.DB8.Text;
 finally
  Busqueda.Destroy;
 end;
 desde.SetFocus;
end;

procedure TAM_LosTraslados.TARJETAExit(Sender: TObject);
begin
if TARJETA.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe la Tarjeta Ingresada!!',mterror,[mbok],0);
  TARJETA.SetFocus;
end;
end;

procedure TAM_LosTraslados.bancoExit(Sender: TObject);
begin
if banco.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe un Banco Ingresado!!',mterror,[mbok],0);
  banco.SetFocus;
end;
end;

procedure TAM_LosTraslados.TARJETAKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then tittarje.SetFocus;
end;

procedure TAM_LosTraslados.bancoKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then titcheq.SetFocus;
end;

procedure TAM_LosTraslados.tittarjeExit(Sender: TObject);
begin
if trim(tittarje.Text) = '' then begin
  messagedlg('Error!! No hay Titular de la Tarjeta Ingresada.',mterror,[mbok],0);
  tittarje.SetFocus
end;
end;

procedure TAM_LosTraslados.titcheqExit(Sender: TObject);
begin
if trim(titcheq.Text) = '' then begin
  messagedlg('Error!! No hay Titular del Cheque Ingresada.',mterror,[mbok],0);
  titcheq.SetFocus
end;
end;

procedure TAM_LosTraslados.tittarjeKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then nrocuota.SetFocus;
end;

procedure TAM_LosTraslados.titcheqKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then e1.SetFocus;
end;

procedure TAM_LosTraslados.NroCuotaExit(Sender: TObject);
begin
 if (trim(NroCuota.Text) = '') OR (trim(NroCuota.Text) = '00') OR (trim(NroCuota.Text) = '0') then begin
  messagedlgpos('Error!! Nro de Cuota Ingresado Incorrectamente.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  NroCuota.SetFocus;
 end;
end;

procedure TAM_LosTraslados.E1Exit(Sender: TObject);
begin
 if (trim(E1.Text) = '') then begin
  messagedlgpos('Error!! Nro de Serie Incorrecto.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  E1.SetFocus;
 end;
end;

procedure TAM_LosTraslados.E1KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then E2.SetFocus
 else begin
  if ( StrScan('ABCDEFGHIJKLMNÑOPQRSTUVWXYZ',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;
end;

procedure TAM_LosTraslados.NroCuotaKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then NroCb.SetFocus
 else begin
  if ( StrScan('0123456789',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;
end;

procedure TAM_LosTraslados.NROCBExit(Sender: TObject);
begin
 if (trim(NROCB.Text) = '') OR (trim(NROCB.Text) = '0') then begin
  messagedlgpos('Error!! Nro de Comprobante Ingresado Incorrectamente.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  NROCB.SetFocus;
 end;
end;

procedure TAM_LosTraslados.NROCBKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then ftarje.SetFocus
 else begin
  if ( StrScan('0123456789.',Key) <> nil ) or  ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;
end;

procedure TAM_LosTraslados.E2Exit(Sender: TObject);
begin
 if (trim(E2.Text) = '') OR (trim(E2.Text) = '000000000000') OR (trim(E2.Text) = '0') then begin
  messagedlgpos('Error!! Nro de Cheque Ingresado Incorrectamente.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  E2.SetFocus;
 end;
end;

procedure TAM_LosTraslados.E2KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then fcheque.SetFocus
 else begin
  if ( StrScan('1234567890',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;
end;

procedure TAM_LosTraslados.ftarjeKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  panel1.Visible:=true;
  tpotalon.SetFocus;
 end;
end;

procedure TAM_LosTraslados.ftarjeExit(Sender: TObject);
var fec:Tdatetime;
begin
 try
  fec:=strtodate(trim(ftarje.Text));
 except
  messagedlgpos('La fecha es Erronea!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  ftarje.SetFocus;
 end;
end;

procedure TAM_LosTraslados.FchequeExit(Sender: TObject);
var fec:Tdatetime;
begin
 try
  fec:=strtodate(trim(Fcheque.Text));
 except
  messagedlgpos('La fecha es Erronea!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  Fcheque.SetFocus;
 end;
end;

procedure TAM_LosTraslados.FchequeKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  panel1.Visible:=true;
  tpotalon.SetFocus;
 end;
end;

procedure TAM_LosTraslados.tpopagoKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
 Key := #0;
 if tpopago.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Pago Ingresado!!',mterror,[mbok],0);
  tpopago.SetFocus;
 end
 else begin
  if tpopago.itemindex = 0 then begin   //EFECTIVO
   valorpago:='2';
   edit2.Visible :=false;
   valcuota.Visible :=false;
   label78.Visible :=false;
   label80.Visible :=false;
   grupocheq.Visible:=false;
   grupotarje.Visible:=false;
   laobserva:= 'Pago Servicio de Traslado de ' + trim(tpopago.Text) + ' por $' + trim(e5.Text);
   panel1.Visible:=true;
   tpotalon.SetFocus;
  end;
  if tpopago.itemindex = 3 then begin   //cuenta corriente
   valorpago:='0';
   edit2.Visible :=false;
   valcuota.Visible :=false;
   label78.Visible :=false;
   label80.Visible :=false;
   grupocheq.Visible:=false;
   grupotarje.Visible:=false;
   laobserva:= 'Pago Servicio de Traslado de ' + trim(tpopago.Text) + ' por $' + trim(e5.Text);
   panel1.Visible:=true;
   tpotalon.SetFocus;
  end;
  {if tpopago.itemindex = 1 then begin  // FINANCIADO
   valorpago:='8' ;
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
   laobserva := 'Pago Servicio de Traslado por: ' + trim(tpopago.Text) + ' en ' + trim(edit2.Text) + ' cuotas de $' + trim(valcuota.Text);
   panel1.Visible:=true;
   tpotalon.SetFocus;
  end;  }
  if tpopago.itemindex = 1 then begin   //cheque
   valorpago:='4';
   grupocheq.Visible:=true;
   grupotarje.Visible:=false;
   edit2.Visible :=false;
   valcuota.Visible :=false;
   label78.Visible :=false;
   label80.Visible :=false;
   laobserva:= 'Pago Servicio de Traslado por: ' + trim(tpopago.Text) + ' de ' + trim(banco.Text) + ' s/Nro Cheque ' + trim(e1.Text) + '-' + trim(e2.Text);
   BANCO.SetFocus;
  end;
  if tpopago.itemindex = 2 then begin   //tarje credito
   valorpago:='3';
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
   laobserva:= 'Pago Servicio de Traslado por: ' + trim(tpopago.Text) + ' - ' + trim(tarjeta.Text) + ' en ' + trim(edit2.Text) + ' cuotas de $' + trim(valcuota.Text);
   TARJETA.SetFocus;
  end;
  {if tpopago.itemindex = 4 then begin   // FINACIADOS SIN INTERES
   valorpago:='7' ;
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
   laobserva := 'Pago Servicio de Traslado por: ' + trim(tpopago.Text) + ' en ' + trim(edit2.Text) + ' cuotas de $' + trim(valcuota.Text);
   panel1.Visible:=true;
   tpotalon.SetFocus;
  end;  }
  if tpopago.itemindex = 3 then begin   //CUENTA CORRIENTE
   edit2.Visible :=false;
   valcuota.Visible :=false;
   label78.Visible :=false;
   label80.Visible :=false;
   grupocheq.Visible:=false;
   grupotarje.Visible:=false;
   laobserva:= 'Pago Cremacion por ' + trim(tpopago.Text) + ' de $' + trim(e5.Text);
   panel1.Visible:=true;
   tpotalon.SetFocus;
  end;
 end;
end;
end;

procedure TAM_LosTraslados.hastaKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  JvBitBtn5.SetFocus;
end;
end;

procedure TAM_LosTraslados.RvOrdenPrint(Sender: TObject);
var posfx,posfy,posfin,pos_y,salto,final:double;
   Tamanio,hoja,y:integer;
   txtw:string;
   pso:boolean;

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
     BaseReport.PrintXY(posx+130,posy+15,'TRASLADO / Solicitud Nº: ' + nroorden);
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+30);
     BaseReport.PrintXY(posx+5,posy+27,'REGISTRO DE TRASLADOS   - DESTINO:  ' + trim(origen.Text));
     BaseReport.SetFont('Arial',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+40);
     BaseReport.PrintXY(posx+5,posy+37,'DATOS DEL DIFUNTO');
     BaseReport.SetFont('Arial',9);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+165,posy+37,'--> Id Nº:' + idcrema );// + cantiser + '  |  ' + cantiseranio);

     BaseReport.SetFont('Arial Black',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+60);
     BaseReport.PrintXY(posx+5,posy+43,'Fecha Servicio');
     BaseReport.PrintXY(posx+30,posy+43,'Hora');
     BaseReport.PrintXY(posx+50,posy+43,'Nombre del Extinto');
     BaseReport.PrintXY(posx+109,posy+43,'N° Doc.');
     BaseReport.PrintXY(posx+130,posy+43,'Fec. Defuncion');
     //BaseReport.PrintXY(posx+110,posy+43,'Nacio.');
     //BaseReport.PrintXY(posx+130,posy+43,'Est. Civil');
     //BaseReport.PrintXY(posx+155,posy+43,'Edad');
     BaseReport.PrintXY(posx+170,posy+43,'Fec. Nac.');

     BaseReport.PrintXY(posx+5,posy+47,trim(fecnac.Text));
     BaseReport.PrintXY(posx+30,posy+47,trim(horasale.Text));
     BaseReport.PrintXY(posx+50,posy+47,trim(inhumado.Text));
     BaseReport.PrintXY(posx+109,posy+47,dniinhu);   //dniinhu
     //BaseReport.PrintXY(posx+110,posy+47,trim(nacio.Text));
     //BaseReport.PrintXY(posx+130,posy+47,trim(estcivil.Text));
     //BaseReport.PrintXY(posx+155,posy+47,edadinhu);
     BaseReport.PrintXY(posx+170,posy+47,fecnacinhu);

     //BaseReport.PrintXY(posx+5,posy+53,'Medico');
     //BaseReport.PrintXY(posx+65,posy+53,'Seccion');
     //BaseReport.PrintXY(posx+80,posy+53,'Acta');
     //BaseReport.PrintXY(posx+95,posy+53,'Folio');
     //BaseReport.PrintXY(posx+110,posy+53,'Tomo');
     //BaseReport.PrintXY(posx+130,posy+53,'Fec. Defuncion');

     //BaseReport.PrintXY(posx+5,posy+57,trim(losmedicos.Text));
     //BaseReport.PrintXY(posx+68,posy+57,trim(nrosec.Text));
     //BaseReport.PrintXY(posx+83,posy+57,trim(acta.Text));
     //BaseReport.PrintXY(posx+98,posy+57,trim(nrofolio.Text));
     //BaseReport.PrintXY(posx+113,posy+57,trim(nrotomo.Text));
     //BaseReport.PrintXY(posx+130,posy+57,trim(fecinhu.Text));

     BaseReport.SetFont('Arial',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+100);
     BaseReport.PrintXY(posx+5,posy+67,' REFERENCIAS DEL SERVICIO');

     BaseReport.SetFont('Arial Black',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+88);
     BaseReport.PrintXY(posx+5,posy+73,'Suscribe');
     //BaseReport.PrintXY(posx+40,posy+73,'Tipo Servicio');
     BaseReport.PrintXY(posx+75,posy+73,'Nº doc.');
     BaseReport.PrintXY(posx+108,posy+73,'Kms Recorridos');
     //BaseReport.PrintXY(posx+125,posy+73,'H/Salida ');
     //BaseReport.PrintXY(posx+142,posy+73,'H/Llegada ');
     //BaseReport.PrintXY(posx+158,posy+73,'Sector');
     //BaseReport.PrintXY(posx+170,posy+73,'Parcela');
     //BaseReport.PrintXY(posx+185,posy+73,'Nivel');

     BaseReport.PrintXY(posx+5,posy+77,trim(apeynom.Text));
     //BaseReport.PrintXY(posx+40,posy+77,'Cremacion');  //trim(tiposerv.Text)
     BaseReport.PrintXY(posx+75,posy+77,dnisusc);
     if origen.ItemIndex = 0 then BaseReport.PrintXY(posx+108,posy+77,'')
      else BaseReport.PrintXY(posx+108,posy+77,trim(kms.Text));
     //BaseReport.PrintXY(posx+108,posy+77,trim(kms.Text));
     ////BaseReport.PrintXY(posx+125,posy+77,trim(horasale.Text));
     //BaseReport.PrintXY(posx+142,posy+77,trim(horallega.Text));
     //BaseReport.PrintXY(posx+158,posy+77,trim(sector.Text));
     //BaseReport.PrintXY(posx+170,posy+77,trim(parcela.Text));
     //BaseReport.PrintXY(posx+185,posy+77,trim(nivel1.Text));

     BaseReport.PrintXY(posx+5,posy+81,'Origen');
     BaseReport.PrintXY(posx+5,posy+86,trim(desde.Text));
     BaseReport.PrintXY(posx+108,posy+81,'Destino');
     BaseReport.PrintXY(posx+108,posy+86,trim(hasta.Text));

     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+125);
     BaseReport.SetFont('Arial ',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+95,'Chofer : ' + trim(chofer.Text));
     BaseReport.PrintXY(posx+100,posy+95,'Unidad Traslado : ' + trim(dominio.Text));
     // BaseReport.SetFont('Arial ',8);
     //  BaseReport.FontColor:=clBlack;

     BaseReport.SetFont('Arial Black',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+110,'Servicio de Traslado : ' + tipocomprob);
     BaseReport.SetFont('Arial Black',12);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+115,'EXCLUSIVAMENTE P/CONTROL GERENCIAL E INFORMATICO');
     BaseReport.PrintXY(posx+5,posy+120,'SIN EXCEPCION Y DE CARACTER OBLIGATORIO');
     //BaseReport.PrintXY(posx+5,posy+126,' OBSERVACIONES: ' + laobserva);
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
      BaseReport.RoundRect(posx+60,posy+11,posx+160,posy+16,5,5);
      BaseReport.PrintXY(posx+62,posy+15,'Detalle del Pago del Servicio de Traslado');
      //BaseReport.PrintXY(posx+4,posy+22,tipocomprob );
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
      if tpopago.ItemIndex = 1 then begin
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
      if tpopago.ItemIndex = 2 then begin
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
      end;  }
    end;
   end;

 {  Function GrillaCabecera(posx,posy:double;texto:string):double;
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
  }
begin
 posfx:=1;
 posfy:=1;
 salto:=4;
 hoja:=1;
 posfy:=Logo(posfx,posfy,hoja);
 posfx:=5;
 posfy:=posfy + 90;
 posfy:=Mostrar3(posfx,posfy,hoja);

 hoja:=hoja+1;
 posfx:=1;
 posfy:=1;
 salto:=4;
 RvOrden.BaseReport.NewPage;
 posfy:=Logo(posfx,posfy,hoja);
 posfx:=5;
 posfy:=posfy + 90;
 posfy:=Mostrar3(posfx,posfy,hoja);
end;

procedure TAM_LosTraslados.desdeExit(Sender: TObject);
begin
if trim(desde.Text) = '' then begin
  messagedlg('Error!! No hay un Origen del Servicio Ingresado.',mterror,[mbok],0);
  desde.SetFocus
end;
end;

procedure TAM_LosTraslados.TPOTALONExit(Sender: TObject);
begin
 if TPOTALON.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe un Tipo de Comprobante Valido!!',mterror,[mbok],0);
  TPOTALON.SetFocus;
 end;
end;

procedure TAM_LosTraslados.comprobKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = chr(13) then actu.SetFocus;
end;

procedure TAM_LosTraslados.TPOTALONKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
   Key := #0;
   pv.SetFocus;
  end;
end;

procedure TAM_LosTraslados.actuClick(Sender: TObject);
begin
  tipocomprob:='Segun pago ' + trim(tpotalon.Text) + ' - ' + StrFill(PV.Text,3,'0','') + '-' + StrFill(elcomprob.Text,8,'0','');
  sale.Enabled :=true;
  sale.setfocus;
end;

procedure TAM_LosTraslados.elcomprobKeyPress(Sender: TObject; var Key: Char);
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

procedure TAM_LosTraslados.elcomprobExit(Sender: TObject);
begin
 if (trim(elcomprob.Text) = '0') or (trim(elcomprob.Text) = '00') or (trim(elcomprob.Text) = '00000000') or (trim(elcomprob.Text) = '')  then begin
  messagedlg('ERROR!!... El N° de Comprobante es invalido',mterror,[mbok],0);
  elcomprob.SetFocus;
 end;
end;

procedure TAM_LosTraslados.elcomprobChange(Sender: TObject);
begin
 actu.Enabled :=true;
end;

procedure TAM_LosTraslados.PVExit(Sender: TObject);
begin
 if PV.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe un Tipo de Punto de Venta Valido!!',mterror,[mbok],0);
  PV.SetFocus;
 end;
end;

procedure TAM_LosTraslados.PVKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
   Key := #0;
   elcomprob.SetFocus;
  end;
end;

procedure TAM_LosTraslados.origenExit(Sender: TObject);
begin
 if origen.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe un origen de Servicio Ingresado!!',mterror,[mbok],0);
  origen.SetFocus;
 end
 ELSE BEGIN
   Coloca1(0);
   KMS.Text:='1';
   E5.Text:= TRIM(NAFTA.Text)
 END
end;

procedure TAM_LosTraslados.origenKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
   Coloca1(0);
   KMS.Text:='1';
   E5.Text:= TRIM(NAFTA.Text) ;
   fecnac.SetFocus;
 end;
end;

procedure TAM_LosTraslados.SALEClick(Sender: TObject);
var gf,p,u,t:integer;
    txt,elcheque,txtw,eltipo,elorigen,chof:widestring;
    ac,at,ct,pt,pd,pe,pc:boolean;
    elmes,elanio:string;
begin
 gf:=messagedlgpos('Desea Confirmar este Servicio de Traslado?',mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
 if gf = 1 then begin
   PROCESO.Close;
   txt:=Chr(39) + trim(fecnac.Text)+ chr(39)
   + ', ' + DarMaximo('Traslados')
   + ', ' + trim(cuif.Text)
   + ', ' + trim(cuifinhu.Text)
   + ', ' + trim(cuif3.Text)
   + ', ' + Chr(39) + trim(dominio.Text)+ chr(39)
   + ', ' + IdCombos[3,origen.ItemIndex]
   + ', ' + Chr(39) + trim(desde.Text)+ chr(39)
   + ', ' + Chr(39) + trim(hasta.Text)+ chr(39)
   + ', ' + Chr(39) + trim(horasale.Text)+ chr(39)
   + ', null , ' + trim(kms.Text)
   + ', ' + trim(e5.Text)
   + ', null , ' + inttostr(modulo2.nro_usu)
   + ', 0 , null , null, null'
   + ', ' + valorpago
   + ', ' + Chr(39) + trim(tpopago.Text) + chr(39); // tipoformapago
   if (trim(tpopago.Text)= 'EFECTIVO') OR (trim(tpopago.Text)= 'CUENTA CORRIENTE') then begin
    txt:= txt + ' , null , null , null , null , null ,null';
   end;
   if trim(tpopago.Text)= 'CHEQUE' then begin  // cheque
    elcheque := trim(e1.Text) + '-' + trim(e2.Text) ;
    txt := txt + ' , ' + IdCombos[2,banco.ItemIndex]
    + ' , null '
    + ' , ' + chr(39) + trim(e2.Text)+ chr(39)
    + ' , ' + chr(39) + trim(e1.Text) + chr(39)
    + ' , ' + chr(39) + trim(titcheq.Text) + chr(39)
    + ' , null ';
   end;
   if trim(tpopago.Text)= 'TARJETA DE CREDITO' then begin  // tarje credito debito
    txt := txt
    + ' , null , ' + IdCombos[1,tarjeta.ItemIndex]
    + ' , null , null , ' + chr(39) + trim(tittarje.Text) + chr(39)
    + ' , ' + trim(nrocb.Text);
   end;
   //if (trim(tpopago.Text)= 'FINANCIADO') or (trim(tpopago.Text)='FINANCIADO SIN INTERES') then begin
   // txt := txt + ' , null , null , null , null , null  , null';
   //end;
   PROCESO.CommandText:='SPC_ParcelasServiciosTrasladosInsertar ' + txt;
   PROCESO.Open;
   if PROCESO.Fields[0].AsString = 'OK' then begin
    coloca1(19);  //traigo el ultimo Servicio de Traslado guardada
    ElMes:=strcut_midle(fecnac.Text,4,5);
    ElAnio:=strcut_midle(fecnac.Text,7,10);

    ParcelasServiciosTrasladosDeudas:=TParcelasServiciosTrasladosDeudas.Create(nil);
    ParcelasServiciosTrasladosDeudas.ConnectionString:=modulo2.Conexion;
    txt:= idcrema
    +' , ' + trim(edit2.text)
    +' , ' + ElAnio + ElMes
    +' , ' + chr(39) + trim(fecnac.text) + chr(39)
    +' , ' + trim(e5.text)
    +' , 0 '
    +' , ' + trim(e5.text)
    +' , 1 , null '
    +' , ' + inttostr(modulo2.nro_usu);
    txtw:='SPC_ParcelasServiciosTrasladosDeudasInsertar ' +  txt;
    pd:=ParcelasServiciosTrasladosDeudas.ListarSinResp(txtw);
    ParcelasServiciosTrasladosDeudas.Free;

    ////insertamos el uso del ataud
    {if checkbox1.Checked then begin
      AtaudUsos:=TAtaudUsos.Create(nil);
      AtaudUsos.ConnectionString:=modulo2.Conexion;
      for t:=1 to StringAgrupD.RowCount-1 do begin
       if trim(StringAgrupD.Cells[3,t]) = '?' then begin
         txt:= trim(StringAgrupD.Cells[2,t])
         +' , null , ' + idcrema
         +' , null ';
         txtw:='SPC_AtaudUsosInsertar ' +  txt;
         pd:=AtaudUsos.ListarSinResp(txtw);
       end;
      end;
     AtaudUsos.Free;
    end; }

    ///insertamos el estado
    ParcelasServiciosTrasladosEstados:=TParcelasServiciosTrasladosEstados.create(nil);
    ParcelasServiciosTrasladosEstados.ConnectionString:=modulo2.Conexion;
    txt:= idcrema
    +' , 1 '
    +' , 1 '
    +' , ' + chr(39) + tipocomprob + chr(39)
    +' , ' + inttostr(modulo2.nro_usu);
    txtw:='SPC_ParcelasServiciosTrasladosEstadosInsertar ' +  txt;
    pe:=ParcelasServiciosTrasladosEstados.ListarSinResp(txtw);
    ParcelasServiciosTrasladosEstados.Free;

    ////// insertamos el mov diario
    AuditAccesos('Modulo 2','SERVICIO DE TRASLADO - Usu ' + inttostr(modulo2.nro_usu)) ;
    eltipo:='SERV. TRASLADO - ' + trim(origen.Text);
    elorigen:='Difunto ' + trim(inhumado.Text) + ' Origen:' + trim(origen.Text)
             + ' Importe: ' + trim(e5.Text) + ' FormaPago:' + trim(tpopago.Text);
    ParcelasMovimientosDiarrioDetalle:=TParcelasMovimientosDiarrioDetalle.Create(nil);
    ParcelasMovimientosDiarrioDetalle.ConnectionString:=modulo2.Conexion;
    txt:= ' null , null '
    + ' , null '
    + ' , ' + idcrema
    + ' , ' + chr(39) + strcut(Fec_System(),10) + chr(39)
    + ' , null '
    + ' , ' + trim(e5.Text)
    + ' , ' + chr(39) + trim(tpopago.Text) + chr(39)
    + ' , ' + trim(edit2.Text)
    + ' , ' + trim(valcuota.Text)
    + ' , ' + chr(39) + elorigen + chr(39);
    if (trim(tpopago.Text)= 'EFECTIVO') OR (trim(tpopago.Text)= 'CUENTA CORRIENTE') then begin
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
    //if (trim(tpopago.Text)= 'FINANCIADO') or (trim(tpopago.Text)='FINANCIADO SIN INTERES') then begin
    // txt := txt + ' , null , null , null , null , null  , ' + inttostr(modulo2.nro_usu)
    // + ' , ' + chr(39) + eltipo + chr(39);
    //end;
    txtw:='INSERT INTO ParcelasMovimientosDiarrioDetalle (IdVenta,IdServicio,IdExhumacion,IdTraslado,Fecha,NroAccion,'
    +'Importe,FormaPago,NroCuotas,ValorCouta,Observaciones,Tarjeta,TarjetaTitular,TarjetaNroCuotas,TarjetaComprobante,' +
    'SerieCheque,Usu_A,TipoVenta) VALUES (' +  txt + ')';
    pt:=ParcelasMovimientosDiarrioDetalle.ListarSinResp(txtw);
    ParcelasMovimientosDiarrioDetalle.Free;
    coloca1(20);
    rvorden.Execute;
    panel1.Visible:=false;
    messagedlg('EXITO.... El Servicio de TRASLADO se guardo correctamente..', mtConfirmation,[mbok],0);

    StringAgrupD.Enabled :=false;
    coloca1(8);

    /// busco el archivo
    Filename:= modulo2.path_todo + '\Formularios\ActaCiruclacionTRASLADOS.jpg';
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
     //messagedlg('ATENCION No se Encuentra el Archivo de Autorizacion',mtError,[mbok],0);
    end;
    // imprimo la orden de circulacion
    //GroupBox1.Visible :=true;
    //impactacircu.SetFocus;
   end
   else  messagedlg('Error al Guardar este SERVICIO de TRASLADO. Consulte con un Administrador',mtError,[mbok],0);
 end;
end;

procedure TAM_LosTraslados.JvBitBtn5Click(Sender: TObject);
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

procedure TAM_LosTraslados.dominioExit(Sender: TObject);
begin
 if (trim(dominio.Text) = '') then begin
  messagedlgpos('Error!! Dominio de la unidad de traslado Ingresado Incorrectamente.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  dominio.SetFocus;
 end;
end;

procedure TAM_LosTraslados.dominioKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
   kms.SetFocus;
  end;
end;

procedure TAM_LosTraslados.kmsExit(Sender: TObject);
begin
  if (trim(kms.Text) = '') or (trim(kms.Text) = '0') then begin
   messagedlg('Error!! No hay un Kilometreja Ingresado.',mterror,[mbok],0);
   kms.SetFocus
  end
  else begin
    coloca1(21);
    if trim(origen.Text)='EN EGIDO MUNCIPAL' then BEGIN
     kms.Text := '1' ;
     e5.Text := TRIM(NAFTA.Text);
    END
    else e5.Text := floattostr(strtofloat(kms.Text) * strtofloat(valorkm))
  end;
end;

procedure TAM_LosTraslados.hastaExit(Sender: TObject);
begin
if trim(hasta.Text) = '' then begin
  messagedlg('Error!! No hay Destino del Servicio Ingresado.',mterror,[mbok],0);
  hasta.SetFocus
end;
end;

procedure TAM_LosTraslados.kmsKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
   Key := #0;
   e5.SetFocus;
  end
  else begin
   if ( StrScan('0123456789.',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
    else Key := #0;
  end;
end;

procedure TAM_LosTraslados.horasaleKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  JvBitBtn0.SetFocus;
 end;
end;

procedure TAM_LosTraslados.horasaleExit(Sender: TObject);
begin
try
 StrToTime(horasale.text);
 except ShowMEssage('Hora NO válida!');
 horasale.SetFocus;
end;
end;

procedure TAM_LosTraslados.cierraClick(Sender: TObject);
begin
  GroupBox1.Visible :=false;
  JvBitBtn3.Enabled :=true;
  JvBitBtn3.SetFocus;
end;

procedure TAM_LosTraslados.impactacircuClick(Sender: TObject);
var gf,t:integer;
begin
  actacircu:=DarMaximo('ActaCircuTraslados');
  AuditAccesos('Modulo 2','IMP ACTA DE CIRCULACION TRASLADOS ' + trim(actacircu)) ;
  numactacircu:='\PDF\ActaCirculTrasladoNro' + trim(actacircu) + '.pdf';
  RVD.SystemPrinter.Copies :=2;
  RVD.Execute;
  RVD.DefaultDest := rdFile;
  RVD.DoNativeOutput := False;
  RVD.RenderObject := RvRenderPDF1;
  RVD.OutputFileName := modulo2.path_todo + numactacircu; //'\PDF\ActaCirculacionInhumacion Accion '+ trim(nroacc.Text) + ' Nro:' + numactacircu + '.pdf';
  RVD.SystemSetups := RVD.SystemSetups - [ssAllowSetup];
  RVD.Execute;

  cierra.SetFocus;
  JvBitBtn3.Enabled :=TRUE;
end;

procedure TAM_LosTraslados.JvBitBtn5Exit(Sender: TObject);
begin
   if (trim(chofer.Text) = '') then begin
    messagedlgpos('Error!! Debe Seleccionar un Chofer para este servivio.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
    JvBitBtn5.SetFocus;
   end;
end;

procedure TAM_LosTraslados.RvDPrint(Sender: TObject);
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
     Mes:=el_mes(strtoint(strcut_midle(trim(fecnac.Text),4,5)));
     Anio:=strcut_midle(trim(fecnac.Text),7,10);
     day:=LeftStr(trim(fecnac.Text),2);
     Imagen1 := TBitMap.Create;
      PathLogo:=modulo2.path_todo + '\Formularios\ActaCiruclacionTRASLADOS.jpg';
      if FileExists(PathLogo) then begin
       Image1.Picture.LoadFromFile(PathLogo);
       Imagen1.Assign(Image1.Picture.Graphic);
       BaseReport.PrintBitmapRect(posx,posy,posx+215,posy+290,Imagen1);
      end;
      Imagen1.Free;

      BaseReport.SetFont('Arial Black',12);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posx+165,posy+23,actacircu);

      BaseReport.SetFont('Arial Black',10);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posx+84,posy+30,day);
      BaseReport.PrintXY(posx+96,posy+30, 'de ' + mes);
      BaseReport.PrintXY(posx+140,posy+30, 'del ' + Anio);
      BaseReport.PrintXY(posx+172,posy+30,trim(horasale.Text));

      BaseReport.PrintXY(posx+75,posy+37,nroorden);

      BaseReport.PrintXY(posx+130,posy+42,trim(inhumado.Text));
      BaseReport.PrintXY(posx+52,posy+50,trim(dniinhu));
      BaseReport.PrintXY(posx+95,posy+50,trim(fecnacinhu));
      BaseReport.PrintXY(posx+149,posy+50,trim(nacioinhu));

      BaseReport.SetFont('Arial Black',9);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posx+35,posy+57,trim(estcivilinhu));
      BaseReport.SetFont('Arial Black',10);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posx+64,posy+62,trim(edadinhu));
      BaseReport.PrintXY(posx+130,posy+62,trim(dominhu));

      //BaseReport.PrintXY(posx+56,posy+68,trim(fecinhu.Text));
      //BaseReport.PrintXY(posx+130,posy+68,trim(losmedicos.Text));

      //BaseReport.PrintXY(posx+82,posy+76,trim(acta.Text));
      //if origen.ItemIndex = 0 then begin
      // BaseReport.PrintXY(posx+53,posy+84,trim(parcela.Text ));
      // BaseReport.PrintXY(posx+80,posy+84,trim(sector.Text));
      // BaseReport.PrintXY(posx+135,posy+84,'el tit de la parcela');
      // BaseReport.PrintXY(posx+180,posy+87,trim(accion.Text));
      //end;

      BaseReport.PrintXY(posx+75,posy+86,trim(apeynom.Text));
      BaseReport.PrintXY(posx+180,posy+86,trim(dnisusc));
      BaseReport.PrintXY(posx+45,posy+94,trim(domsusc));

      BaseReport.PrintXY(posx+55,posy+117,trim(desde.Text));
      BaseReport.PrintXY(posx+150,posy+117,trim(hasta.Text));
      BaseReport.PrintXY(posx+75,posy+124,trim(chofer.Text));
      BaseReport.PrintXY(posx+50,posy+130,trim(dominio.Text));
    end;
   end;

begin
  posfx:=0;
  posfy:=0;
  salto:=4;
  hoja:=1;
  posfy:=Logo(posfx,posfy,hoja);
end;

procedure TAM_LosTraslados.CheckBox1Click(Sender: TObject);
begin
  if checkbox1.Checked then StringAgrupD.Enabled :=true
    else StringAgrupD.Enabled :=false;
end;

procedure TAM_LosTraslados.StringAgrupDClick(Sender: TObject);
begin
 if (trim(StringAgrupD.Cells[3,StringAgrupD.Row])='') then StringAgrupD.Cells[3,StringAgrupD.Row]:='x'
  else StringAgrupD.Cells[3,StringAgrupD.Row]:='';
 ControlaSelec(1);
end;

procedure TAM_LosTraslados.ControlaSelec(nro:byte);
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

end.





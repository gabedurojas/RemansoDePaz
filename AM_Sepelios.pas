unit AM_Sepelios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, JvExGrids, JvStringGrid, StdCtrls, JvgGroupBox, Mask,DBClient,
  DBGrids, JvExDBGrids, JvDBGrid, Buttons, JvExButtons, JvBitBtn, ExtCtrls,
  ComCtrls, DB,DBCtrls,StrUtils, ToolWin,ClaseSistemas,ClaseFunciones,ADODB,
  RpDefine, RpBase, RpSystem, JvExStdCtrls, JvEdit, JvValidateEdit,
  ClaseTiposMedicos,ClaseParcelasMovimientosDiarrioDetalle, ClaseParcelasServiciosSepeliosDeudas, ClaseAtaudUsos,
  RpRenderPDF, Menus, JvSimLogic, RpRender,  ClaseParcelasServiciosSepeliosEstados,CapaDatos;

type THackStringGrid = class(TStringGrid);
type
  TAM_LosSepelios = class(TForm)
    PC1: TPageControl;
    TabSheet3: TTabSheet;
    Barra1: TStatusBar;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    ToolButton2: TToolButton;
    exporta: TJvBitBtn;
    ToolButton3: TToolButton;
    JvBitBtn3: TJvBitBtn;
    grupo1: TGroupBox;
    Label35: TLabel;
    Label37: TLabel;
    LB7: TLabel;
    Label31: TLabel;
    Label1: TLabel;
    Bevel2: TBevel;
    Label2: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Image1: TImage;
    Label78: TLabel;
    Label80: TLabel;
    Label6: TLabel;
    apeynom: TDBEdit;
    FECNAC: TMaskEdit;
    E5: TEdit;
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
    Label45: TLabel;
    Label46: TLabel;
    banco: TComboBox;
    E1: TEdit;
    E2: TEdit;
    Fcheque: TMaskEdit;
    fpagocheque: TMaskEdit;
    titcheq: TEdit;
    JvBitBtn0: TJvBitBtn;
    cuif: TDBEdit;
    JvBitBtn4: TJvBitBtn;
    inhumado: TDBEdit;
    cuifinhu: TDBEdit;
    fecinhu: TMaskEdit;
    acta: TEdit;
    nrofolio: TEdit;                                                                      
    nrotomo: TEdit;
    losMedicos: TComboBox;
    NroReligion: TJvBitBtn;
    Edit2: TEdit;
    VALCUOTA: TEdit;
    origen: TComboBox;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    accion: TEdit;
    Label8: TLabel;
    sector: TEdit;
    Label7: TLabel;
    parcela: TEdit;
    RvOrden: TRvSystem;
    Panel1: TPanel;
    Label20: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    TPOTALON: TComboBox;
    actu: TBitBtn;
    SALE: TJvBitBtn;
    PV: TComboBox;
    elcomprob: TEdit;
    StringAgrupD: TStringGrid;
    PopupMenu1: TPopupMenu;
    VerDeudaHastaFinAo1: TMenuItem;
    Label9: TLabel;
    horasale: TMaskEdit;
    Label10: TLabel;
    fecentrada: TMaskEdit;
    Label11: TLabel;
    horaentra: TMaskEdit;
    RVActa: TRvSystem;
    RvRenderPDF1: TRvRenderPDF;
    GroupBox2: TGroupBox;
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
    Label12: TLabel;
    eltit: TEdit;
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
    procedure E5Exit(Sender: TObject);
    procedure E5KeyPress(Sender: TObject; var Key: Char);
    procedure tpopagoExit(Sender: TObject);
    procedure JvBitBtn4Click(Sender: TObject);
    procedure fecinhuExit(Sender: TObject);
    procedure losMedicosExit(Sender: TObject);
    procedure losMedicosKeyPress(Sender: TObject; var Key: Char);
    procedure fecinhuKeyPress(Sender: TObject; var Key: Char);
    procedure actaKeyPress(Sender: TObject; var Key: Char);
    procedure nrotomoKeyPress(Sender: TObject; var Key: Char);
    procedure nrofolioKeyPress(Sender: TObject; var Key: Char);
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
    procedure fpagochequeExit(Sender: TObject);
    procedure FchequeKeyPress(Sender: TObject; var Key: Char);
    procedure fpagochequeKeyPress(Sender: TObject; var Key: Char);
    procedure tpopagoKeyPress(Sender: TObject; var Key: Char);
    procedure exportaClick(Sender: TObject);
    procedure RvOrdenPrint(Sender: TObject);
    procedure origenExit(Sender: TObject);
    procedure origenKeyPress(Sender: TObject; var Key: Char);
    procedure NroReligionClick(Sender: TObject);
    procedure accionExit(Sender: TObject);
    procedure accionKeyPress(Sender: TObject; var Key: Char);
    procedure SALEClick(Sender: TObject);
    procedure TPOTALONExit(Sender: TObject);
    procedure PVExit(Sender: TObject);
    procedure TPOTALONKeyPress(Sender: TObject; var Key: Char);
    procedure PVKeyPress(Sender: TObject; var Key: Char);
    procedure elcomprobChange(Sender: TObject);
    procedure elcomprobExit(Sender: TObject);
    procedure elcomprobKeyPress(Sender: TObject; var Key: Char);
    procedure actuClick(Sender: TObject);
    procedure StringAgrupDClick(Sender: TObject);
    procedure VerDeudaHastaFinAo1Click(Sender: TObject);
    procedure Sumadeuda(nro:byte);
    procedure Limpiar(nro:byte);
    procedure fecentradaExit(Sender: TObject);
    procedure horasaleKeyPress(Sender: TObject; var Key: Char);
    procedure horaentraKeyPress(Sender: TObject; var Key: Char);
    procedure fecentradaKeyPress(Sender: TObject; var Key: Char);
    procedure horaentraExit(Sender: TObject);
    procedure horasaleExit(Sender: TObject);
    procedure RVActaPrint(Sender: TObject);
    procedure impactacircuClick(Sender: TObject);
    procedure cierraClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure ControlaSelec(nro:byte);
  private
   control,gh:boolean;
   cants,cantis,cant:integer;
   Funciones:TFuncionesVarias;
   Sistemas:TSistemas;
   AtaudUsos:TAtaudUsos;
   ParcelasMovimientosDiarrioDetalle:TParcelasMovimientosDiarrioDetalle;
   IdCombos:array of array of string;
   edadsusc,dnisusc,domsusc,edadinhu,dniinhu,dominhu,sexoinhu,eldia,estcivilinhu,actacircu,
   edadt1,dnit1,domt1,edadt2,dnit2,domt2,fecnacinhu,tipocomprob,laobserva,idcrema,nacioinhu,tipocomprob2:string;
   ParcelasServiciosSepeliosDeudas:TParcelasServiciosSepeliosDeudas;
   ParcelasServiciosSepeliosEstados:TParcelasServiciosSepeliosEstados;
   CapaDatos:TCapaDatos;
   Filename: string;
    { Private declarations }
  public
    PROCESO: TADODataSet;
    DataSet,DtCombo,DtComboC,DtComboO,DataSet11:TClientDataSet; //declaro el DAtaset de los Combobox
    DSGral:TClientDataSet;//declaro el DAtaset de la grilla
    ///// para la impresion de datos segun parametros
    PosH1:Array [0..9] of Double;//Posiciones
    Camp1:Array [0..9] of Integer;//Campos a Tomar en cuenta
    TxtCamp1:Array [0..9] of String;//Textos de los Campos a Tomar en cuenta
    { Public declarations }
  end;

var
  AM_LosSepelios: TAM_LosSepelios;

implementation

uses Modulo,Unidad,SelecCuotas,Busqueda,AM_VenGenerica;

{$R *.dfm}

procedure TAM_LosSepelios.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TAM_LosSepelios.FormActivate(Sender: TObject);
begin
 if not(gh) then begin
  gh:=true;
  StringAgrupD.Cells[0,0]:='Stock';               StringAgrupD.Cells[1,0]:='TipoAtaud';
  StringAgrupD.Cells[2,0]:='ID';                  StringAgrupD.Cells[3,0]:='Selec';
  PROCESO:=TADODataSet.Create(nil);
  PROCESO.ConnectionString:=modulo2.Conexion;
  setlength(IdCombos,4);
  PC1.ActivePage:=PC1.Pages[0];
  eldia:=LeftStr(Fec_System(),10);
  fecentrada.Text:=LeftStr(Fec_System(),10);
  fecnac.Text:=LeftStr(Fec_System(),10);
  fecinhu.Text:=LeftStr(Fec_System(),10);
  fcheque.Text:=LeftStr(Fec_System(),10);
  fpagocheque.Text:=LeftStr(Fec_System(),10);
  ftarje.Text:=LeftStr(Fec_System(),10);
  tipocomprob:='';
  tipocomprob2:='';
  grupocheq.Visible:=false;
  grupotarje.Visible:=false;
  edit2.Visible :=false;
  valcuota.Visible :=false;
  label78.Visible :=false;
  label80.Visible :=false;
  GroupBox2.Visible :=false;
  coloca1(7);         coloca1(10);
  coloca1(11);        coloca1(14);
  coloca1(12);        coloca1(16);
  coloca1(17);        //coloca1(18);
  sale.Enabled :=false;
  actu.Enabled :=false;
  origen.SetFocus;
 end;
end;

procedure TAM_LosSepelios.limpiar(nro:byte);
begin
///
end;

procedure TAM_LosSepelios.Coloca1(nro:byte);
var t,y,p,u:integer;
    txt,sex:string;
    txtw:widestring;
    Funciones:TFuncionesVarias;
    Sistema:TSistemas;
    NroDni,NroCuif,NroArea:variant;
    TiposMedicos:TTiposMedicos;
begin
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
 if nro=10 then begin //Combo Talonarios
  for p:=0 to StringAgrupD.ColCount-1 do
   for u:=1 to StringAgrupD.RowCount-1 do StringAgrupD.Cells[p,u]:='';
  StringAgrupD.RowCount:=2;
  DataSet11.Free;
  DataSet11:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  //txtw:='SELECT Objeto, Importe ,Id FROM ParcelasServiciosSepeliosObjetos WHERE (Activo = 1)';
  txtw:='SELECT stock,TipoAtaud,id FROM [StockAtaud] (1)';
  if not Funciones.Listar(txtw,DataSet11) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if not DataSet11.IsEmpty then begin
   for t:=1 to DataSet11.RecordCount do begin
    DataSet11.RecNo:=t;
    StringAgrupD.RowCount:=t+1;
    StringAgrupD.Cells[0,t]:=trim(DataSet11.Fields[0].AsString);
    StringAgrupD.Cells[1,t]:=trim(DataSet11.Fields[1].AsString);
    StringAgrupD.Cells[2,t]:=trim(DataSet11.Fields[2].AsString);
    StringAgrupD.Cells[3,t]:='';
   end;
  end;
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
 if nro=12 then begin   /// combo medicos
  losMedicos.Clear;
  DtCombo.Free;
  Dtcombo:=TClientDataSet.Create(nil);
  TiposMedicos:=TTiposMedicos.Create(nil);
  TiposMedicos.ConnectionString:=modulo2.Conexion;
  if TiposMedicos.listar('SELECT detalle,nromedico FROM TiposMedicos ORDER BY detalle',DtCombo) then begin
   SetLength(IdCombos[0],DtCombo.RecordCount);
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    losMedicos.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
    IdCombos[0,t-1]:=DtCombo.Fields[1].AsString;
   end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  TiposMedicos.Free;
  losmedicos.ItemIndex:=0;
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
 if nro=16 then begin
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
 if nro=17 then begin
  banco.Clear;
  DtComboC.Free;
  DtcomboC:=TClientDataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT NroEntidad, Nombre from EntidadesBancarias WHERE (NroEntidad > 0) order by 1';
  if Funciones.Listar(txtw,DtComboC)  then  begin
   SetLength(IdCombos[3],DtcomboC.RecordCount);
   for t:=1 to DtcomboC.RecordCount  do begin
    DtcomboC.RecNo:=t;
    banco.Items.Insert(t-1,trim(DtcomboC.Fields[1].AsString));
    IdCombos[3,t-1]:=DtcomboC.Fields[0].AsString;
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
  if tpopago.itemindex = 0  then begin  // EFECTIVO
   txtw:='SELECT preciocontado FROM Fn_VistaLosServiciosPrecios(''SEPELIOS'')'
  end;
  if tpopago.itemindex = 1 then begin   //cheque
   txtw:='SELECT preciocheque FROM Fn_VistaLosServiciosPrecios(''SEPELIOS'')'
  end;
  if (tpopago.itemindex = 2) or (tpopago.itemindex = 3) then begin   //tarje credito   -- CUENTA CORRIENTE
   txtw:='SELECT preciolista FROM Fn_VistaLosServiciosPrecios(''SEPELIOS'') '
  end;
  //txtw:='SELECT idservicioobjeto,objeto,valor FROM Fn_VistaLosObjetosPrecios(7,0)';
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
  txtw:='SELECT top 1 IdServicio FROM ParcelasServiciosSepelios order by 1 desc';
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
  //txtw:='SELECT sector,parcela from parcelas where nroaccion= ' + trim(accion.Text);
  txtw:='SELECT sector,parcela,RazonSocial from vParcelasTitularesNivel1 where nroaccion= ' + trim(accion.Text);
  if not Funciones.Listar(txtw,DtComboO) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  sector.Text :=trim(DtComboO.Fields[0].AsString);
  parcela.Text :=trim(DtComboO.Fields[1].AsString);
  eltit.Text := trim(DtComboO.Fields[2].AsString);
 end;
end;

procedure TAM_LosSepelios.JvBitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TAM_LosSepelios.FECNACExit(Sender: TObject);
var kl:Tdatetime;
begin
 try
  kl:=strtodate(trim(FECNAC.Text));
 except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  FECNAC.SetFocus;
 end;
end;

procedure TAM_LosSepelios.FECNACKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  horasale.SetFocus;
 end;
end;

procedure TAM_LosSepelios.JvBitBtn0Click(Sender: TObject);
var Busqueda:TLA_BUSQUEDA;
begin
  Busqueda:=TLA_BUSQUEDA.Create(self);
  try
   Busqueda.NroOpcion:=3;
   Busqueda.Caption:='Busqueda y Seleccion de Clientes';
   Busqueda.ShowModal;
   CUIF.Text:=busqueda.DB2.Text;
   apeynom.Text:=busqueda.DB4.Text;
   edadsusc:=unidad.edad(strcut(Fec_System(),10),trim(busqueda.DB10.Text));
   dnisusc:=busqueda.DB1.Text;
   domsusc:=busqueda.DB5.Text;
  finally
   Busqueda.Destroy;
  end;
  JvBitBtn4.SetFocus;
end;

procedure TAM_LosSepelios.E5Exit(Sender: TObject);
begin
 if (trim(E5.Text) = '') OR (trim(E5.Text) = '0') OR (trim(E5.Text) = '00') then begin
  messagedlgpos('Error!! El Importe del Sepelio esta Ingresado Incorrectamente.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  E5.SetFocus;
 end;
end;

procedure TAM_LosSepelios.E5KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
   Key := #0;
   if (tpopago.itemindex = 0) or (tpopago.itemindex = 3) then begin
    panel1.Visible:=true;
    tpotalon.SetFocus;
   end;
   if (tpopago.itemindex = 1) then begin
     banco.SetFocus;
   end;
   if (tpopago.itemindex = 2) then begin
     tarjeta.SetFocus;
   end;
  end
  else begin
   if ( StrScan('0123456789.',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
    else Key := #0;
  end;
end;

procedure TAM_LosSepelios.tpopagoExit(Sender: TObject);
begin
 if tpopago.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Pago Ingresado!!',mterror,[mbok],0);
  tpopago.SetFocus;
 end;
end;

procedure TAM_LosSepelios.JvBitBtn4Click(Sender: TObject);
var Busqueda:TLA_BUSQUEDA;
begin
 Busqueda:=TLA_BUSQUEDA.Create(self);
 try
  Busqueda.NroOpcion:=3;
  Busqueda.Caption:='Busqueda y Seleccion de Clientes';
  Busqueda.ShowModal;
  cuifinhu.Text:=busqueda.DB2.Text;
  inhumado.Text:=busqueda.DB4.Text;
  edadinhu:=unidad.edad(strcut(Fec_System(),10),trim(busqueda.DB10.Text));
  dniinhu:=busqueda.DB1.Text;
  dominhu:='B' + trim(busqueda.DB6.Text) + ' ' + trim(busqueda.DB5.Text);
  sexoinhu:=busqueda.DB15.Text;
  fecnacinhu:=busqueda.DB10.Text;
  nacioinhu:= busqueda.DB8.Text;
  estcivilinhu:= busqueda.DB9.Text;
 finally
  Busqueda.Destroy;
 end;
 if trim(apeynom.Text ) = trim (inhumado.Text) then begin
  messagedlg('Error.. El inhumado no puede ser igual al que suscribe..',mterror,[mbok],0);
  jvbitbtn4.Click;
 end
 else   fecinhu.SetFocus;
end;

procedure TAM_LosSepelios.fecinhuExit(Sender: TObject);
var kl:Tdatetime;
begin
 try
  kl:=strtodate(trim(fecinhu.Text));
 except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  fecinhu.SetFocus;
 end;
end;

procedure TAM_LosSepelios.losMedicosExit(Sender: TObject);
begin
if losMedicos.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el MEdico Ingresado!!',mterror,[mbok],0);
  losMedicos.SetFocus;
end;
end;

procedure TAM_LosSepelios.losMedicosKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  accion.setfocus;
 end;
end;

procedure TAM_LosSepelios.fecinhuKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  acta.SetFocus;
end;
end;

procedure TAM_LosSepelios.actaKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  nrotomo.SetFocus;
end;
end;

procedure TAM_LosSepelios.nrotomoKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  nrofolio.SetFocus;
end;
end;

procedure TAM_LosSepelios.nrofolioKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  losmedicos.SetFocus;
end;
end;

procedure TAM_LosSepelios.TARJETAExit(Sender: TObject);
begin
if TARJETA.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe la Tarjeta Ingresada!!',mterror,[mbok],0);
  TARJETA.SetFocus;
end;
end;

procedure TAM_LosSepelios.bancoExit(Sender: TObject);
begin
if banco.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe un Banco Ingresado!!',mterror,[mbok],0);
  banco.SetFocus;
end;
end;

procedure TAM_LosSepelios.TARJETAKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then tittarje.SetFocus;
end;

procedure TAM_LosSepelios.bancoKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then titcheq.SetFocus;
end;

procedure TAM_LosSepelios.tittarjeExit(Sender: TObject);
begin
if trim(tittarje.Text) = '' then begin
  messagedlg('Error!! No hay Titular de la Tarjeta Ingresada.',mterror,[mbok],0);
  tittarje.SetFocus
end;
end;

procedure TAM_LosSepelios.titcheqExit(Sender: TObject);
begin
if trim(titcheq.Text) = '' then begin
  messagedlg('Error!! No hay Titular del Cheque Ingresada.',mterror,[mbok],0);
  titcheq.SetFocus
end;
end;

procedure TAM_LosSepelios.tittarjeKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then nrocuota.SetFocus;
end;

procedure TAM_LosSepelios.titcheqKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then e1.SetFocus;
end;

procedure TAM_LosSepelios.NroCuotaExit(Sender: TObject);
begin
if (trim(NroCuota.Text) = '') OR (trim(NroCuota.Text) = '00') OR (trim(NroCuota.Text) = '0') then begin
  messagedlgpos('Error!! Nro de Cuota Ingresado Incorrectamente.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  NroCuota.SetFocus;
end;
end;

procedure TAM_LosSepelios.E1Exit(Sender: TObject);
begin
if (trim(E1.Text) = '') then begin
  messagedlgpos('Error!! Nro de Serie Incorrecto.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  E1.SetFocus;
end;
end;

procedure TAM_LosSepelios.E1KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then E2.SetFocus
 else begin
  if ( StrScan('ABCDEFGHIJKLMNÑOPQRSTUVWXYZ',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;
end;

procedure TAM_LosSepelios.NroCuotaKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then NroCb.SetFocus
 else begin
  if ( StrScan('0123456789',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;
end;

procedure TAM_LosSepelios.NROCBExit(Sender: TObject);
begin
if (trim(NROCB.Text) = '') OR (trim(NROCB.Text) = '0') then begin
  messagedlgpos('Error!! Nro de Comprobante Ingresado Incorrectamente.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  NROCB.SetFocus;
end;
end;

procedure TAM_LosSepelios.NROCBKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then ftarje.SetFocus
 else begin
  if ( StrScan('0123456789.',Key) <> nil ) or  ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;
end;

procedure TAM_LosSepelios.E2Exit(Sender: TObject);
begin
if (trim(E2.Text) = '') OR (trim(E2.Text) = '000000000000') OR (trim(E2.Text) = '0') then begin
  messagedlgpos('Error!! Nro de Cheque Ingresado Incorrectamente.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  E2.SetFocus;
end;
end;

procedure TAM_LosSepelios.E2KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then fcheque.SetFocus
 else begin
  if ( StrScan('1234567890',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;
end;

procedure TAM_LosSepelios.ftarjeKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  panel1.Visible:=true;
  tpotalon.SetFocus;
 end;
end;

procedure TAM_LosSepelios.ftarjeExit(Sender: TObject);
var fec:Tdatetime;
begin
 try
  fec:=strtodate(trim(ftarje.Text));
 except
  messagedlgpos('La fecha es Erronea!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  ftarje.SetFocus;
 end;
end;

procedure TAM_LosSepelios.FchequeExit(Sender: TObject);
var fec:Tdatetime;
begin
 try
  fec:=strtodate(trim(Fcheque.Text));
 except
  messagedlgpos('La fecha es Erronea!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  Fcheque.SetFocus;
 end;
end;

procedure TAM_LosSepelios.fpagochequeExit(Sender: TObject);
var fec:Tdatetime;
begin
 try
  fec:=strtodate(trim(fpagocheque.Text));
 except
  messagedlgpos('La fecha es Erronea!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  fpagocheque.SetFocus;
 end;
end;

procedure TAM_LosSepelios.FchequeKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
    panel1.Visible:=true;
    tpotalon.SetFocus;
end;
end;

procedure TAM_LosSepelios.fpagochequeKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then begin
   // exporta.Enabled :=true;
   // exporta.SetFocus ;
 end;
end;

procedure TAM_LosSepelios.tpopagoKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
 Key := #0;
 if tpopago.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Pago Ingresado!!',mterror,[mbok],0);
  tpopago.SetFocus;
 end
 else begin
  if tpopago.itemindex = 0 then begin   //EFECTIVO
    Coloca1(18);
    edit2.Visible :=false;
    valcuota.Visible :=false;
    label78.Visible :=false;
    label80.Visible :=false;
    grupocheq.Visible:=false;
    grupotarje.Visible:=false;
    laobserva:= 'Pago Sepelio de ' + trim(tpopago.Text) + ' por $' + trim(e5.Text);
    e5.SetFocus;
  end;
  {if tpopago.itemindex = 1 then begin  // FINANCIADO
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
    laobserva := 'Pago Sepelio por: ' + trim(tpopago.Text) + ' en ' + trim(edit2.Text) + ' cuotas de $' + trim(valcuota.Text);
    panel1.Visible:=true;
    tpotalon.SetFocus;
    //exporta.Enabled :=true;
    //exporta.SetFocus ;
  end;}
  if tpopago.itemindex = 1 then begin   //cheque
   Coloca1(18);
   grupocheq.Visible:=true;
   grupotarje.Visible:=false;
   edit2.Visible :=false;
   valcuota.Visible :=false;
   label78.Visible :=false;
   label80.Visible :=false;
   laobserva:= 'Pago Sepelio por: ' + trim(tpopago.Text) + ' de ' + trim(banco.Text) + ' s/Nro Cheque ' + trim(e1.Text) + '-' + trim(e2.Text);
   BANCO.SetFocus;
  end;
  if tpopago.itemindex = 2 then begin   //tarje credito
   Coloca1(18);
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
   laobserva:= 'Pago Sepelio por: ' + trim(tpopago.Text) + ' - ' + trim(tarjeta.Text) + ' en ' + trim(edit2.Text) + ' cuotas de $' + trim(valcuota.Text);
   TARJETA.SetFocus;
  end;
  {if tpopago.itemindex = 4 then begin   // FINACIADOS SIN INTERES
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
   laobserva := 'Pago Sepelio por: ' + trim(tpopago.Text) + ' en ' + trim(edit2.Text) + ' cuotas de $' + trim(valcuota.Text);
   panel1.Visible:=true;
   tpotalon.SetFocus;
  // exporta.SetFocus;
  end; }
  if tpopago.itemindex = 3 then begin   //CUENTA CORRIENTE
    Coloca1(18);
    edit2.Visible :=false;
    valcuota.Visible :=false;
    label78.Visible :=false;
    label80.Visible :=false;
    grupocheq.Visible:=false;
    grupotarje.Visible:=false;
    laobserva:= 'Pago Sepelio por ' + trim(tpopago.Text) + ' de $' + trim(e5.Text);
    e5.SetFocus;
  end;
 end;
end;
end;

procedure TAM_LosSepelios.exportaClick(Sender: TObject);
//var gf,p,t:integer;
//    txt,elcheque,txtw,eltipo,elorigen:widestring;
//var ac,at,ct,pt,pd,pe:boolean;
//    elmes,elanio:string;
begin
{ gf:=messagedlgpos('Desea Confirmar este Sepelio',mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
 if gf = 1 then begin
  PROCESO.Close;
  txtw:= trim(cuif.Text)
  + ', ' + Chr(39) + trim(apeynom.Text)+ chr(39)
  + ', ' + trim(cuifinhu.Text)
  + ', ' + trim(accion.Text)
  + ', ' + Chr(39) + trim(sector.Text) + Chr(39)
  + ', ' + trim(parcela.Text)
  + ', ' + Chr(39) + trim(fecnac.Text)+ chr(39)
  + ', 13 '
  + ', ' + trim(e5.Text)
  + ', null '
  + ', ' + trim(e5.Text)
  + ', ' + Chr(39) + trim(origen.Text)+ chr(39)
  + ', 1 '
  + ', ' + Chr(39) + trim(fecnac.Text)+ chr(39)
  + ', ' + Chr(39) + trim(fecinhu.Text)+ chr(39)
  + ', ' + trim(acta.Text)
  + ', ' + Chr(39) + trim(nrofolio.Text) + chr(39)
  + ', ' + Chr(39) + trim(nrotomo.Text) + chr(39)
  + ', ' + Chr(39) + trim(losmedicos.Text) + chr(39)
  +' , ' + inttostr(modulo2.nro_usu)
  + ', null '
  + ', ' + Chr(39) + trim(tpopago.Text) + chr(39)
  + ', null, null, null, null, null, null, null ';
  PROCESO.CommandText:='exec SPC_ParcelasServiciosSepeliosInsertar ' + txtw; //trim(cuif.Text) //
  PROCESO.Open;
  if PROCESO.Fields[0].AsString = 'OK' then begin
   //traigo el ultima sepelio guardada
   coloca1(19);
   // inserto la deuda
   ElMes:=strcut_midle(fecnac.Text,4,5);
   ElAnio:=strcut_midle(fecnac.Text,7,10);
   ParcelasServiciosSepeliosDeudas:=TParcelasServiciosSepeliosDeudas.Create(nil);
   ParcelasServiciosSepeliosDeudas.ConnectionString:=modulo2.Conexion;
   txt:= idcrema
   +' , 1 '
   +' , ' + ElAnio + ElMes
   +' , ' + chr(39) + trim(fecnac.text) + chr(39)
   +' , ' + trim(e5.text)
   +' , 0 '
   +' , ' + trim(e5.text)
   +' , 1 , null , null '
   +' , ' + inttostr(modulo2.nro_usu);
   txtw:='SPC_ParcelasServiciosSepeliosDeudasInsertar ' +  txt;
   pd:=ParcelasServiciosSepeliosDeudas.ListarSinResp(txtw);
   ParcelasServiciosSepeliosDeudas.Free;

   ///insertamos el estado
   ParcelasServiciosSepeliosEstados:=TParcelasServiciosSepeliosEstados.Create(nil);
   ParcelasServiciosSepeliosEstados.ConnectionString:=modulo2.Conexion;
   txt:= idcrema
   +' , 1 '
   +' , 1 '
   +' , null '
   +' , ' + inttostr(modulo2.nro_usu);
   txtw:='SPC_ParcelasServiciosSepeliosEstadosInsertar ' +  txt;
   pe:=ParcelasServiciosSepeliosEstados.ListarSinResp(txtw);
   ParcelasServiciosSepeliosEstados.Free;

   messagedlg('EXITO.... El Servicio de SEPELIO se guardo correctamente..', mtConfirmation,[mbok],0);
   AuditAccesos('Modulo 2','SERVICIO DE SEPELIO - Usu ' + inttostr(modulo2.nro_usu)) ;
   eltipo:='SERV. SEPELIO - ' + trim(origen.Text) ;
   elorigen:= 'Fallecido ' + trim(inhumado.Text) + ' Origen:' + trim(origen.Text)  + ' Accion: '  + trim(accion.Text)
              + ' Importe: ' + trim(e5.Text) + ' FormaPago:' + trim(tpopago.Text); 
   //////
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
     + ' , ' + elorigen ;
     if (trim(tpopago.Text)= 'EFECTIVO') or (trim(tpopago.Text)= 'CUENTA CORRIENTE') then begin
      txt := txt + ' , null , null , null , null , null  , ' + inttostr(modulo2.nro_usu)
      + ' , ' + chr(39) + eltipo + chr(39);
     end;
     if trim(tpopago.Text)= 'CHEQUE' then begin  // cheque
      elcheque := trim(e1.Text) + '-' + trim(e2.Text) ;
      txt := txt + ' , ' + chr(39) + trim(banco.Text) + chr(39)
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
     //if (trim(tpopago.Text)= 'FINANCIADO') or (trim(tpopago.Text)='FINANCIADO SIN INTERES') then begin
     // txt := txt + ' , null , null , null , null , null  , ' + inttostr(modulo2.nro_usu)
     // + ' , ' + chr(39) + eltipo + chr(39);
     //end;
     txtw:='INSERT INTO ParcelasMovimientosDiarrioDetalle (IdVenta,IdServicio,IdExhumacion,IdSepelio,Fecha,NroAccion,'
     +'Importe,FormaPago,NroCuotas,ValorCouta,Observaciones,Tarjeta,TarjetaTitular,TarjetaNroCuotas,TarjetaComprobante,' +
     'SerieCheque,Usu_A,TipoVenta) VALUES (' +  txt + ')';
     pt:=ParcelasMovimientosDiarrioDetalle.ListarSinResp(txtw);
     ParcelasMovimientosDiarrioDetalle.Free;
   rvorden.Execute;
   exporta.Enabled :=false;
 end
 else messagedlg('Error al Guardar este SERVICIO de CREMACION. Consulte con un Administrador',mtError,[mbok],0);
 end;  }
end;

procedure TAM_LosSepelios.RvOrdenPrint(Sender: TObject);
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
      Tamanio:=strtoint(modulo2.INI1.ReadString('Titulo3 Facturas','Tamaño','10'));
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
     BaseReport.PrintXY(posx+5,posy+27,'REGISTRO DE SEPELIOS   - ORIGEN :  ' + trim(origen.Text));
     BaseReport.PrintXY(posx+130,posy+27,'SEPELIO Nº: '+ idcrema);

     BaseReport.SetFont('Arial',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+40);
     BaseReport.PrintXY(posx+5,posy+37,'DATOS DEL FALLECIDO');
    // BaseReport.PrintXY(posx+165,posy+37,'Id:' + idcrema );

     BaseReport.SetFont('Arial Black',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+60);
     BaseReport.PrintXY(posx+5,posy+43,'Fec. Entrada');
     BaseReport.PrintXY(posx+30,posy+43,'Hora Entrada');
     BaseReport.PrintXY(posx+55,posy+43,'Fecha Serv.');
     BaseReport.PrintXY(posx+75,posy+43,'Hora Serv.');
     BaseReport.PrintXY(posx+105,posy+43,'Nombre del Extinto');
     BaseReport.PrintXY(posx+150,posy+43,'N° Doc.');
     BaseReport.PrintXY(posx+165,posy+43,'Edad');
     BaseReport.PrintXY(posx+180,posy+43,'Fec. Nac.');

     BaseReport.PrintXY(posx+5,posy+47,trim(fecentrada.Text));
     BaseReport.PrintXY(posx+30,posy+47,trim(horaentra.Text));
     BaseReport.PrintXY(posx+55,posy+47,trim(fecnac.Text));
     BaseReport.PrintXY(posx+75,posy+47,trim(horasale.Text));   //dniinhu
     BaseReport.PrintXY(posx+105,posy+47,trim(inhumado.Text));
     BaseReport.PrintXY(posx+150,posy+47,dniinhu);
     BaseReport.PrintXY(posx+165,posy+47,edadinhu);
     BaseReport.PrintXY(posx+180,posy+47,fecnacinhu);

     BaseReport.PrintXY(posx+5,posy+53,'Medico');
     //BaseReport.PrintXY(posx+65,posy+53,'Seccion');
     BaseReport.PrintXY(posx+80,posy+53,'Acta');
     BaseReport.PrintXY(posx+90,posy+53,'Folio');
     BaseReport.PrintXY(posx+110,posy+53,'Tomo');
     BaseReport.PrintXY(posx+130,posy+53,'Fec. Defuncion');

     BaseReport.PrintXY(posx+5,posy+57,trim(losmedicos.Text));
     //BaseReport.PrintXY(posx+68,posy+57,trim(nrosec.Text));
     BaseReport.PrintXY(posx+83,posy+57,trim(acta.Text));
     BaseReport.PrintXY(posx+93,posy+57,trim(nrofolio.Text));
     BaseReport.PrintXY(posx+113,posy+57,trim(nrotomo.Text));
     BaseReport.PrintXY(posx+130,posy+57,trim(fecinhu.Text));

     BaseReport.SetFont('Arial',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+70);
     BaseReport.PrintXY(posx+5,posy+67,' REFERENCIAS DEL SERVICIO');

     BaseReport.SetFont('Arial Black',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+88);
     BaseReport.PrintXY(posx+5,posy+73,'Suscribe');
     //BaseReport.PrintXY(posx+40,posy+73,'Tipo Servicio');
     BaseReport.PrintXY(posx+65,posy+73,'Nº doc.');
     //BaseReport.PrintXY(posx+108,posy+73,'Fec. Inhu.');
     BaseReport.PrintXY(posx+125,posy+73,'Nro Accion ');
     //BaseReport.PrintXY(posx+142,posy+73,'H/Llegada ');
     BaseReport.PrintXY(posx+158,posy+73,'Sector');
     BaseReport.PrintXY(posx+175,posy+73,'Parcela');
     //BaseReport.PrintXY(posx+185,posy+73,'Nivel');

     BaseReport.PrintXY(posx+5,posy+77,trim(apeynom.Text));
     //BaseReport.PrintXY(posx+40,posy+77,'Cremacion');  //trim(tiposerv.Text)
     BaseReport.PrintXY(posx+65,posy+77,dnisusc);
     //BaseReport.PrintXY(posx+108,posy+77,trim(fecinhu.Text));
     if origen.ItemIndex = 0 then begin
      BaseReport.PrintXY(posx+125,posy+77,trim(accion.Text));
      //BaseReport.PrintXY(posx+142,posy+77,trim(horallega.Text));
      BaseReport.PrintXY(posx+158,posy+77,trim(sector.Text));
      BaseReport.PrintXY(posx+175,posy+77,trim(parcela.Text));
     end;
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
       BaseReport.PrintXY(posx+22,posy+20,trim(banco.Text));
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
       BaseReport.PrintXY(posx+4,posy+20,'CUENTA IMPORTE:$ ' + TRIM(E5.Text));
      end;
      {if tpopago.ItemIndex = 4 then begin
       //posy := posy + 5;
       BaseReport.SetFont('Arial Black',8);
       BaseReport.PrintXY(posx+4,posy+20,'FINANCIADO SIN INTERES');
       BaseReport.SetFont('Arial',9);
       BaseReport.PrintXY(posx+80,posy+20,'Nro Cuotas:');
       BaseReport.PrintXY(posx+140,posy+20,'Imp. Cuotas:');
       BaseReport.SetFont('Arial Black',8);
       BaseReport.PrintXY(posx+100,posy+20,trim(edit2.Text));  //ctas
       BaseReport.PrintXY(posx+160,posy+20,trim(valcuota.Text));  // importe
      end; }
    end;
   end;

begin
 posfx:=1;
 posfy:=1;
 salto:=4;
 hoja:=1;
 //posfy:=Imagen(posfx,posfy,hoja);
 //hoja:=hoja+1;
 //RvOrden.BaseReport.NewPage;
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

procedure TAM_LosSepelios.origenExit(Sender: TObject);
begin
if origen.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe un origen de Servicio Ingresado!!',mterror,[mbok],0);
  origen.SetFocus;
end;
end;

procedure TAM_LosSepelios.origenKeyPress(Sender: TObject; var Key: Char);
begin
 if key = chr(13) then begin
  Key := #0;
  fecentrada.SetFocus;
 end;
end;

procedure TAM_LosSepelios.NroReligionClick(Sender: TObject);
var AM_Generico:TAM_Generico;
begin
 AM_Generico:=TAM_Generico.Create(self);
 try
  AM_Generico.NroOpcion:=9;
  AM_Generico.Titulo1:='Medicos';
  AM_Generico.ShowModal;
 finally
  AM_Generico.Destroy;
  Coloca1(12);
  losmedicos.SetFocus;
 end;
end;

procedure TAM_LosSepelios.accionExit(Sender: TObject);
begin
if origen.ItemIndex = 0 then begin
 if (trim(accion.Text) = '0') or (trim(accion.Text) = '') then begin
  messagedlg('Error!! No hay una Accion valida Ingresada.',mterror,[mbok],0);
  accion.SetFocus
 end
 else Coloca1(20);
end;
end;

procedure TAM_LosSepelios.accionKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  tpopago.SetFocus;
end;
end;

procedure TAM_LosSepelios.SALEClick(Sender: TObject);
var gf,p,t:integer;
    txt,elcheque,txtw,eltipo,elorigen:widestring;
var ac,at,ct,pt,pd,pe:boolean;
    elmes,elanio:string;
begin
 gf:=messagedlgpos('Desea Confirmar este Sepelio',mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
 if gf = 1 then begin
  PROCESO.Close;

  txtw:= trim(cuif.Text)               // cuif
  + ', ' + Chr(39) + trim(apeynom.Text)+ chr(39)  //tituservicio
  + ', ' + trim(cuifinhu.Text)                    //cuifinhunado
  + ', ' + trim(accion.Text)                      //nroaccion
  + ', ' + Chr(39) + trim(sector.Text) + Chr(39)  //sector
  + ', ' + trim(parcela.Text)                     //parcela
  + ', ' + Chr(39) + trim(fecnac.Text)+ chr(39)   //fecha
  + ', 13 '                                       //nrotiposervicio
  + ', ' + trim(e5.Text)                          //total
  + ', ' + trim(edit2.Text)                       //cantcuotas
  + ', ' + trim(valcuota.Text)                    //valcuotas
  + ', ' + Chr(39) + trim(origen.Text)+ chr(39)   //observ   // origen del servicio
  + ', 1 '                                        //confirmado
  + ', ' + Chr(39) + trim(fecnac.Text)+ chr(39)   //fechaconfirma
  + ', ' + Chr(39) + trim(fecinhu.Text)+ chr(39)  //fechafallecimiento
  + ', ' + trim(acta.Text)                         //nroactadedefuncion
  + ', ' + Chr(39) + trim(nrofolio.Text) + chr(39)  //tomo
  + ', ' + Chr(39) + trim(nrotomo.Text) + chr(39)   //folio
  + ', ' + Chr(39) + trim(losmedicos.Text) + chr(39) //medico
  + ', ' + inttostr(modulo2.nro_usu)                 //usu_A
  + ', ' + IdCombos[2,tpopago.ItemIndex]             //idformapago
  + ', ' + Chr(39) + trim(tpopago.Text) + chr(39);   //tipoformapago
    /// las formas de pagos
  if (trim(tpopago.Text)= 'EFECTIVO') or (trim(tpopago.Text)= 'CUENTA CORRIENTE') then begin
    txtw := txtw + ' , null , null , null , null , ' + chr(39) + trim(tipocomprob2) + chr(39) +' , null , null ';
  end;
  if trim(tpopago.Text)= 'CHEQUE' then begin  // cheque
    elcheque := trim(e1.Text) + '-' + trim(e2.Text) ;
    txtw := txtw + ' , ' + IdCombos[3,banco.ItemIndex] // nroentidad
    + ' , null'                                        // nrotarje
    + ' , ' + trim(e2.Text)                            //nrocheque
    + ' , ' + trim(e1.Text)                           //serie
    + ' , ' + chr(39) + trim(titcheq.Text) + chr(39)  // tituar
    + ' , null '                                      // comprob
    + ' , null ';                                     /// inmporte
  end;
  if trim(tpopago.Text)= 'TARJETA DE CREDITO' then begin  // tarje credito debito
    txtw := txtw + ' , null , ' + IdCombos[1,tarjeta.ItemIndex]
    + ' , null , null , ' + chr(39) + trim(tittarje.Text) + chr(39)
    + ' , ' + chr(39) + trim(nrocb.Text) + chr(39) + ' , null ';
    //+ ' , null ' + chr(39) + eltipo + chr(39);
  end;
  txtw:= txtw + ' , ' + Chr(39) + trim(horasale.Text)+ chr(39)   //hora
  + ', ' + Chr(39) + trim(fecentrada.Text)+ chr(39)              //fechaentrada
  + ', ' + Chr(39) + trim(horaentra.Text)+ chr(39);              //horaentrada
  PROCESO.CommandText:='exec SPC_ParcelasServiciosSepeliosInsertar ' + txtw; //trim(cuif.Text) //
  PROCESO.Open;
  if PROCESO.Fields[0].AsString = 'OK' then begin
   //traigo el ultima sepelio guardada
   coloca1(19);
   // inserto la deuda
   ElMes:=strcut_midle(fecnac.Text,4,5);
   ElAnio:=strcut_midle(fecnac.Text,7,10);
   ParcelasServiciosSepeliosDeudas:=TParcelasServiciosSepeliosDeudas.Create(nil);
   ParcelasServiciosSepeliosDeudas.ConnectionString:=modulo2.Conexion;
   txt:= idcrema
   +' , ' + trim(edit2.text)
   +' , ' + ElAnio + ElMes
   +' , ' + chr(39) + trim(fecnac.text) + chr(39)
   +' , ' + trim(e5.text)
   +' , 0 '
   +' , ' + trim(e5.text)
   +' , 1 , null , null '
   +' , ' + inttostr(modulo2.nro_usu);
   txtw:='SPC_ParcelasServiciosSepeliosDeudasInsertar ' +  txt;
   pd:=ParcelasServiciosSepeliosDeudas.ListarSinResp(txtw);
   ParcelasServiciosSepeliosDeudas.Free;

   ///insertamos el estado
   ParcelasServiciosSepeliosEstados:=TParcelasServiciosSepeliosEstados.Create(nil);
   ParcelasServiciosSepeliosEstados.ConnectionString:=modulo2.Conexion;
   txt:= idcrema
   +' , 1 '
   +' , 1 '
   +' , '  + chr(39) + tipocomprob + chr(39)
   +' , ' + inttostr(modulo2.nro_usu);
   txtw:='SPC_ParcelasServiciosSepeliosEstadosInsertar ' +  txt;
   pe:=ParcelasServiciosSepeliosEstados.ListarSinResp(txtw);
   ParcelasServiciosSepeliosEstados.Free;

   //los objetos
   modulo2.Com1.ConnectionString:=modulo2.Conexion;
   for t:=1 to StringAgrupD.RowCount-1 do begin
    if trim(StringAgrupD.Cells[2,t]) = 'X' then begin
    modulo2.Com1.CommandText:='insert into ParcelasServiciosSepeliosDetalle (IdServicio,Nroobjeto,Importe,fecha_a) VALUES ('
    + idcrema
    + ' , ' + trim(StringAgrupD.Cells[3,t])
    + ' , ' + trim(StringAgrupD.Cells[1,t])
    + ' , ' + chr(39) + eldia + chr(39) + ')';
    modulo2.Com1.Execute;
    end;
   end;

   ////insertamos el uso del ataud
   { if checkbox1.Checked then begin
      AtaudUsos:=TAtaudUsos.Create(nil);
      AtaudUsos.ConnectionString:=modulo2.Conexion;
      for t:=1 to StringAgrupD.RowCount-1 do begin
       if trim(StringAgrupD.Cells[3,t]) = '?' then begin
         txt:= trim(StringAgrupD.Cells[2,t])
         + idcrema
         +', null , null ';
         txtw:='SPC_AtaudUsosInsertar ' +  txt;
         pd:=AtaudUsos.ListarSinResp(txtw);
       end;
      end;
     AtaudUsos.Free;
    end; }

   messagedlg('EXITO.... El Servicio de SEPELIO se guardo correctamente..', mtConfirmation,[mbok],0);
   AuditAccesos('Modulo 2','SERVICIO DE SEPELIO - Usu ' + inttostr(modulo2.nro_usu)) ;

   /// insertamos el mov diario
   eltipo:='SERV. SEPELIO - ' + trim(origen.Text) ;
   elorigen:= 'Fallecido ' + trim(inhumado.Text) + ' Accion: '  + trim(accion.Text)
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
   if (trim(tpopago.Text)= 'EFECTIVO') or (trim(tpopago.Text)= 'CUENTA CORRIENTE') then begin
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
   txtw:='INSERT INTO ParcelasMovimientosDiarrioDetalle (IdVenta,IdServicio,IdExhumacion,IdSepelio,Fecha,NroAccion,'
   +'Importe,FormaPago,NroCuotas,ValorCouta,Observaciones,Tarjeta,TarjetaTitular,TarjetaNroCuotas,TarjetaComprobante,' +
   'SerieCheque,Usu_A,TipoVenta) VALUES (' +  txt + ')';
   pt:=ParcelasMovimientosDiarrioDetalle.ListarSinResp(txtw);
   ParcelasMovimientosDiarrioDetalle.Free;
   // imprimo la orden
   rvorden.Execute;
   StringAgrupD.Enabled :=false;
   coloca1(10);
   /// busco el archivo
   Filename:= modulo2.path_todo + '\Formularios\ActaCiruclacionSEPELIO.jpg' ;
   if FileExists(FileName) then begin
      /// imprimo el acta de circulacion  de cremacion
    GroupBox2.Visible :=true;
    impactacircu.Enabled :=true;
    impactacircu.SetFocus ;
    label15.Caption := Filename;
   end
   else begin
     GroupBox2.Visible :=true;
     impactacircu.Enabled :=false;
     label15.Caption := 'ATENCION No se Encuentra el Archivo de Autorizacion';
     //messagedlg('ATENCION No se Encuentra el Archivo de Autorizacion',mtError,[mbok],0);
   end;
   panel1.Visible:=false;
   sale.Enabled :=false;
 end
 else messagedlg('Error al Guardar este SERVICIO de CREMACION. Consulte con un Administrador',mtError,[mbok],0);
 end;
end;

procedure TAM_LosSepelios.TPOTALONExit(Sender: TObject);
begin
 if TPOTALON.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe un Tipo de Comprobante Valido!!',mterror,[mbok],0);
  TPOTALON.SetFocus;
 end;
end;

procedure TAM_LosSepelios.PVExit(Sender: TObject);
begin
 if PV.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe un Punto de Venta Valido!!',mterror,[mbok],0);
  PV.SetFocus;
 end;
end;

procedure TAM_LosSepelios.TPOTALONKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  pv.SetFocus;
end;
end;

procedure TAM_LosSepelios.PVKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  elcomprob.SetFocus;
end;
end;

procedure TAM_LosSepelios.elcomprobChange(Sender: TObject);
begin
 actu.Enabled :=true;
end;

procedure TAM_LosSepelios.elcomprobExit(Sender: TObject);
begin
 if (trim(elcomprob.Text) = '0') or (trim(elcomprob.Text) = '00000000') or (trim(elcomprob.Text) = '')  then begin
  messagedlg('ERROR!!... El N° de Comprobante es invalido',mterror,[mbok],0);
  elcomprob.SetFocus;
 end;
end;

procedure TAM_LosSepelios.elcomprobKeyPress(Sender: TObject;
  var Key: Char);
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

procedure TAM_LosSepelios.actuClick(Sender: TObject);
begin
  tipocomprob:='Segun pago ' + trim(tpotalon.Text) + ' - ' + StrFill(PV.Text,3,'0','') + '-' + StrFill(elcomprob.Text,8,'0','');
  tipocomprob2:=trim(tpotalon.Text) + ' - ' + StrFill(PV.Text,3,'0','') + '-' + StrFill(elcomprob.Text,8,'0','');;
  sale.Enabled :=true;
  sale.setfocus;
end;

procedure TAM_LosSepelios.StringAgrupDClick(Sender: TObject);
begin
// if (trim(StringAgrupD.Cells[3,StringAgrupD.Row])='') then StringAgrupD.Cells[3,StringAgrupD.Row]:='x'
//  else StringAgrupD.Cells[3,StringAgrupD.Row]:='';
//  ControlaSelec(1);
end;

procedure TAM_LosSepelios.ControlaSelec(nro:byte);
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

procedure TAM_LosSepelios.VerDeudaHastaFinAo1Click(Sender: TObject);
var p:integer;
begin
 for p:=1 to StringAgrupD.RowCount-1 do
   if StringAgrupD.Cells[2,p]='X'
   then StringAgrupD.Cells[2,p]:='';
  e5.Text:='0000.00';
end;

procedure TAM_LosSepelios.Sumadeuda(nro:byte);
var t,sum:integer;
    total:real;
begin
  total:=0;
  sum:=0;
  if nro= 1 then  begin
   for t:=1 to StringAgrupD.RowCount-1 do begin
     if trim(StringAgrupD.Cells[2,t]) = 'X' then begin
       total:= total + strtofloat(StringAgrupD.Cells[1,t]) ;
     end;
   end;
  end;
end;

procedure TAM_LosSepelios.fecentradaExit(Sender: TObject);
var kl:Tdatetime;
begin
 try
  kl:=strtodate(trim(fecentrada.Text));
 except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  fecentrada.SetFocus;
 end;
end;

procedure TAM_LosSepelios.horasaleKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  JvBitBtn0.SetFocus;
 end;
end;

procedure TAM_LosSepelios.horaentraKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  fecnac.SetFocus;
 end;
end;

procedure TAM_LosSepelios.fecentradaKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  horaentra.SetFocus;
 end;
end;

procedure TAM_LosSepelios.horaentraExit(Sender: TObject);
begin
try
 StrToTime(horaentra.text);
 except ShowMEssage('Hora NO válida!');
 horaentra.SetFocus;
end;
end;

procedure TAM_LosSepelios.horasaleExit(Sender: TObject);
begin
try
 StrToTime(horasale.text);
 except ShowMEssage('Hora NO válida!');
 horasale.SetFocus;
end;
end;

procedure TAM_LosSepelios.RVActaPrint(Sender: TObject);
var posfx,posfy,posfin,pos_y,salto:double;
   hoja,m,t:integer;
   mes,meses,anio,day:string;
   Imagen3:TBitMap;

   Function Logo(posx,posy:double;vaf:integer):double;
   var Imagen1:TBitMap;
       Fuente,PathLogo:string;
       Tamanio,hoja:integer;
   begin
    with RVActa do begin
     Mes:=el_mes(strtoint(strcut_midle(trim(fecnac.Text),4,5)));
     Anio:=strcut_midle(trim(fecnac.Text),7,10);
     day:=LeftStr(trim(fecnac.Text),2);
     Imagen1 := TBitMap.Create;
      PathLogo:=modulo2.path_todo + '\Formularios\ActaCiruclacionSEPELIO.jpg';
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

      BaseReport.PrintXY(posx+75,posy+37,idcrema);

      BaseReport.PrintXY(posx+100,posy+45,trim(inhumado.Text));
      BaseReport.PrintXY(posx+52,posy+50,trim(dniinhu));
      BaseReport.PrintXY(posx+97,posy+50,trim(fecnacinhu));
      BaseReport.PrintXY(posx+149,posy+50,trim(nacioinhu));

      BaseReport.SetFont('Arial Black',9);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posx+35,posy+56,trim(estcivilinhu));
      BaseReport.SetFont('Arial Black',10);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posx+68,posy+56,trim(edadinhu));
      BaseReport.PrintXY(posx+135,posy+56,trim(dominhu));

      BaseReport.PrintXY(posx+60,posy+64,trim(fecinhu.Text));
      BaseReport.PrintXY(posx+130,posy+64,trim(losmedicos.Text));

      BaseReport.PrintXY(posx+85,posy+72,trim(acta.Text));
      if origen.ItemIndex = 0 then begin
       BaseReport.PrintXY(posx+55,posy+79,trim(parcela.Text ));
       BaseReport.PrintXY(posx+83,posy+79,trim(sector.Text));
       BaseReport.PrintXY(posx+139,posy+79,trim(eltit.Text));
       BaseReport.PrintXY(posx+105,posy+87,trim(accion.Text));
      end;

      BaseReport.PrintXY(posx+75,posy+108,trim(apeynom.Text));
      BaseReport.PrintXY(posx+180,posy+108,trim(dnisusc));
      BaseReport.PrintXY(posx+45,posy+117,trim(domsusc));

      BaseReport.PrintXY(posx+55,posy+222,trim(origen.Text));
      //BaseReport.PrintXY(posx+50,posy+213,trim(destino.Text));

     //BaseReport.RoundRect(posx+18,posy+270,posx+200,posy+282,5,5);
     // BaseReport.SetFont('Arial Black',9);
     // BaseReport.FontColor:=clBlack;
     // BaseReport.PrintXY(posx+20,posy+275,'Acta de Circulacion Nro: ' + nroactacircu);
     // BaseReport.PrintXY(posx+18,posy+230,'Chofer: ' + trim(chofer.Text));
     // BaseReport.PrintXY(posx+120,posy+230,'Unidad Traslado: '+trim(dominio.Text));
    end;
   end;

begin
  posfx:=0;
  posfy:=0;
  salto:=4;
  hoja:=1;
  posfy:=Logo(posfx,posfy,hoja);
end;

procedure TAM_LosSepelios.impactacircuClick(Sender: TObject);
var path2:string;
begin
   actacircu:=DarMaximo('ActaCircuTraslados');
   path2:=getcurrentdir();
   RVActa.SystemPrinter.Copies :=2;
   RVActa.Execute;
   RVActa.DefaultDest := rdFile;
   RVActa.DoNativeOutput := False;
   RVActa.RenderObject := RvRenderPDF1;
   RVActa.OutputFileName := path2 + '\PDF\ActaCirculacionSepelioNro' + trim(actacircu) + '.pdf';
   RVActa.SystemSetups := RVActa.SystemSetups - [ssAllowSetup];
   RVActa.Execute;
   cierra.SetFocus;
   JvBitBtn3.Enabled :=TRUE;
end;

procedure TAM_LosSepelios.cierraClick(Sender: TObject);
begin
  GroupBox2.Visible :=false;
  JvBitBtn3.Enabled :=true;
  JvBitBtn3.SetFocus;
end;

procedure TAM_LosSepelios.CheckBox1Click(Sender: TObject);
begin
//  if checkbox1.Checked then StringAgrupD.Enabled :=true
//    else StringAgrupD.Enabled :=false;
end;

end.

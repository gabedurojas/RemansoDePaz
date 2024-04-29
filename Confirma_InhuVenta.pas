unit Confirma_InhuVenta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,DBClient, StdCtrls, DBCtrls, Grids, DBGrids, ComCtrls, StrUtils,
  DB, Mask,ADODB, Buttons, ExtCtrls, JvExDBGrids, JvDBGrid, RpDefine,jpeg,
  RpBase, RpSystem, JvgPage, JvExButtons, JvBitBtn, WSDLIntf,ClaseFunciones,
  ClaseParcelasInhumados,ClaseParcelasServiciosPagos,ClaseSistemas,
  ToolWin, JvgGroupBox,ClaseParcelasVentas, JvExExtCtrls, JvExtComponent,
  JvPanel,Unidad, ClaseParcelasMantenimiento,ClaseParcelasServicios,
  JvExGrids, JvStringGrid,ClaseParcelasServiciosEstados,ClaseParcelasVentasPagos,
  ImgList;

type LasFilas = array[1..2] of integer;
type HackTable = class(TClientDataSet);//
type
  TConfirma_InhuVen = class(TForm)
    Barra1: TStatusBar;
    DataSource1: TDataSource;
    PC1: TJvgPageControl;
    TabSheet2: TTabSheet;
    TabSheet1: TTabSheet;
    todos: TRichEdit;
    dnit: TRadioButton;
    Inhu: TRadioButton;
    acci: TRadioButton;
    nomt: TRadioButton;
    Bevel2: TBevel;
    LB1: TLabel;
    ODNI: TEdit;
    ONOMB: TEdit;
    Busca: TJvBitBtn;
    DataSource2: TDataSource;
    nomf: TRadioButton;
    dnif: TRadioButton;
    fecfalle: TRadioButton;
    FECH: TMaskEdit;
    Exporta: TJvBitBtn;
    Shape3: TShape;
    Shape2: TShape;
    Label24: TLabel;
    Label27: TLabel;
    Shape1: TShape;
    Label25: TLabel;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    anula: TJvBitBtn;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    JvBitBtn2: TJvBitBtn;
    grupo1: TJvgGroupBox;
    Label26: TLabel;
    D11: TDBEdit;
    Label16: TLabel;
    D14: TDBEdit;
    D9: TDBEdit;
    Label31: TLabel;
    D28: TDBEdit;
    Label9: TLabel;
    D8: TDBEdit;
    Label10: TLabel;
    Label32: TLabel;
    D29: TDBEdit;
    Label33: TLabel;
    D30: TDBEdit;
    Label34: TLabel;
    D31: TDBEdit;
    D32: TDBEdit;
    Label35: TLabel;
    Label1: TLabel;
    D12: TDBEdit;
    Label20: TLabel;
    D17: TDBEdit;
    Label8: TLabel;
    D18: TDBEdit;
    Label18: TLabel;
    D19: TDBEdit;
    Label17: TLabel;
    D20: TDBEdit;
    grupo4: TJvgGroupBox;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    D25: TDBEdit;
    D26: TDBEdit;
    D27: TDBEdit;
    Sinc: TRadioButton;
    IdServ: TRadioButton;
    RvOrden: TRvSystem;
    Label64: TLabel;
    DRe: TDBEdit;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    GrupoServicio: TJvgGroupBox;
    Label49: TLabel;
    Label52: TLabel;
    Label55: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    serv2: TEdit;
    serv4: TEdit;
    serv3: TEdit;
    serv5: TEdit;
    JvgGroupBox3: TJvgGroupBox;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    serv1: TEdit;
    detpago: TGroupBox;
    grilla5: TStringGrid;
    grupoventa: TJvgGroupBox;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label43: TLabel;
    Label45: TLabel;
    Label47: TLabel;
    Panel: TJvPanel;
    dv1: TEdit;
    dv2: TEdit;
    dv3: TEdit;
    dv4: TEdit;
    dv5: TEdit;
    dv6: TEdit;
    dv7: TEdit;
    JvgGroupBox1: TJvgGroupBox;
    Label42: TLabel;
    Label44: TLabel;
    Label46: TLabel;
    dva1: TDBEdit;
    dva2: TDBEdit;
    dva3: TDBEdit;
    dvid: TEdit;
    grupotestigos: TJvgGroupBox;
    Image1: TImage;
    JvDBGrid1: TJvDBGrid;
    testigosinhu: TJvgGroupBox;
    DataSource3: TDataSource;
    DBGrid2: TDBGrid;
    GroupBox1: TGroupBox;
    grillaobjetos: TStringGrid;
    Label67: TLabel;
    nivel: TEdit;
    Label68: TLabel;
    posi: TEdit;
    Label69: TLabel;
    objeto: TEdit;
    GroupBox4: TGroupBox;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    dpser1: TDBEdit;
    dpser2: TDBEdit;
    dpser3: TDBEdit;
    dpser5: TDBEdit;
    dpser6: TDBEdit;
    dpser4: TDBEdit;
    PageControl1: TPageControl;
    TabSheet5: TTabSheet;
    grupo3: TJvgGroupBox;
    Label2: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    Label11: TLabel;
    Label19: TLabel;
    Label22: TLabel;
    Label12: TLabel;
    Label36: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    D7: TDBEdit;
    D22: TDBEdit;
    D24: TDBEdit;
    D21: TDBEdit;
    D23: TDBEdit;
    D6: TDBEdit;
    D10: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DataSource4: TDataSource;
    ImageList1: TImageList;
    vigventas: TGroupBox;
    Label74: TLabel;
    diav: TEdit;
    Label80: TLabel;
    observ: TEdit;
    Imp: TJvBitBtn;
    RvD: TRvSystem;
    GroupBox2: TGroupBox;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    deudaser: TEdit;
    cantcuotasser: TEdit;
    valorcuotaser: TEdit;
    PageControl2: TPageControl;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    GrillaT: TJvStringGrid;
    grillaser: TStringGrid;
    GroupBox3: TGroupBox;
    GroupBox5: TGroupBox;
    ConfirmaVta: TJvBitBtn;
    anulavta: TJvBitBtn;
    confirmaserv: TJvBitBtn;
    anulaserv: TJvBitBtn;
    Label85: TLabel;
    Timer1: TTimer;
    Imagen2: TImage;
    Imagen3: TImage;
    pagodet: TGroupBox;
    Label48: TLabel;
    Label50: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Mp: TEdit;
    Dp: TEdit;
    ModP: TEdit;
    CC: TEdit;
    VC: TEdit;
    banco: TEdit;
    titular: TEdit;
    comprobante: TEdit;
    cheque: TEdit;
    fecpago: TEdit;
    Feccobro: TEdit;
    GroupBox6: TGroupBox;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    montops: TEdit;
    deudas: TEdit;
    Mps: TEdit;
    ccs: TEdit;
    vcs: TEdit;
    bancos: TEdit;
    tits: TEdit;
    ncs: TEdit;
    nrocs: TEdit;
    fps: TEdit;
    fcs: TEdit;
    ToolButton1: TToolButton;
    Confirma: TJvBitBtn;
    TabSheet8: TTabSheet;
    grupo2: TJvgGroupBox;
    Label14: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label13: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label51: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label63: TLabel;
    D13: TDBEdit;
    D16: TDBEdit;
    D2: TDBEdit;
    D3: TDBEdit;
    D4: TDBEdit;
    D15: TDBEdit;
    D5: TDBEdit;
    DT: TDBEdit;
    DC: TDBEdit;
    Dpa: TDBEdit;
    DS: TDBEdit;
    GroupBox7: TGroupBox;
    Confirmainhu: TJvBitBtn;
    Anulainhu: TJvBitBtn;
    Label15: TLabel;
    D1: TDBEdit;
    JvgGroupBox2: TJvgGroupBox;
    JvgGroupBox4: TJvgGroupBox;
    JvgGroupBox5: TJvgGroupBox;
    DBGrid1: TJvDBGrid;
    DBGrids: TJvDBGrid;
    DBGridI: TJvDBGrid;
    DataSource5: TDataSource;
    DataSource6: TDataSource;
    Label94: TLabel;
    fecvta: TEdit;
    DPc: TDBEdit;
    DPF: TDBEdit;
    DREc: TDBEdit;
    Dpcs: TDBEdit;
    Dpfs: TDBEdit;
    Drecs: TDBEdit;
    ci: TCheckBox;
    procedure Coloca1(nro:byte);
    procedure FormActivate(Sender: TObject);
    procedure dnitClick(Sender: TObject);
    procedure nomtClick(Sender: TObject);
    procedure acciClick(Sender: TObject);
    procedure InhuClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BuscaClick(Sender: TObject);
    procedure ExportaClick(Sender: TObject);
    procedure ONOMBKeyPress(Sender: TObject; var Key: Char);
    procedure ODNIKeyPress(Sender: TObject; var Key: Char);
    procedure fecfalleClick(Sender: TObject);
    procedure FECHKeyPress(Sender: TObject; var Key: Char);
    procedure FECHExit(Sender: TObject);
    procedure anulaClick(Sender: TObject);
    procedure ConfirmainhuClick(Sender: TObject);
    procedure GUARDAClick(Sender: TObject);
    procedure BORRAClick(Sender: TObject);
    procedure SincClick(Sender: TObject);
    procedure IdServClick(Sender: TObject);
    procedure RvOrdenPrint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ImpClick(Sender: TObject);
    procedure RvDPrint(Sender: TObject);
    procedure anulavtaClick(Sender: TObject);
    procedure anulaservClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Label85Click(Sender: TObject);
    procedure confirmaservClick(Sender: TObject);
    procedure ConfirmaClick(Sender: TObject);
    procedure DBGridsCellClick(Column: TColumn);
    procedure DBGridICellClick(Column: TColumn);
    procedure AnulainhuClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridsDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridIDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure JvBitBtn2Click(Sender: TObject);
    procedure Borrar1(nro:byte);
    procedure ODNIExit(Sender: TObject);
  private
    gh,control,yaexiste:boolean;{Controla que no hubiere errores en la carga de datos}
    titulo:string;
    { Private declarations }
  public
    Resultado,motivo,nrocod,nomcod,fec,fecs,cuiftit: string;
    nroacc:integer;
    // aca instancio la clase si la clase esta definida en el uses de la ventana
    Sistemas:TSistemas;
    Funciones:TFuncionesVarias;
    ParcelasInhumados:TParcelasInhumados;
    ParcelasVentas:TParcelasVentas;
    ParcelasMantenimiento:TParcelasMantenimiento;
    ParcelasServicios:TParcelasServicios;
    ParcelasServiciosEstados:TParcelasServiciosEstados;
    ParcelasVentasPagos:TParcelasVentasPagos;
    ParcelasServiciosPagos:TParcelasServiciosPagos;
    NroOpcion:integer;

    DataSetCli,DataSetTelf,DtCombo,DtComboD,DataSetVta,DataSetIn,DataResul:TClientDataSet; //declaro los DataSet
    IdCombos:array of array of string; // para los combobox

    ///// para la impresion de datos segun parametros
    PosH1:Array [0..9] of Double;//Posiciones
    Camp1:Array [0..9] of Integer;//Campos a Tomar en cuenta
    TxtCamp1:Array [0..9] of String;//Textos de los Campos a Tomar en cuenta

    TColores:Unidad.TablaXML;
  end;

var
  Confirma_InhuVen: TConfirma_InhuVen;

implementation
//Nroopcion=1  INHUMADOS
//Nroopcion=2  VENTAS
//Nroopcion=3  SERVICIOS

uses Modulo,Busqueda,Anula_Generica,ClaseParcelas,SplashFormNro,Fecha_Man;

{$R *.dfm}

procedure TConfirma_InhuVen.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TConfirma_InhuVen.FormActivate(Sender: TObject);
begin
if not gh then begin
  gh:=true;
  fech.Text:=strcut(Fec_System(),10);
  label74.Visible:=false;
  diav.Visible:=false;
  PC1.Images:=modulo2.ImageList1;
  //acci.OnClick(sender);
  grupotestigos.Caption:='Datos Testigos';
  idserv.Visible:=false;
  yaexiste:=false;
  diav.Text:=modulo2.INI1.ReadString('DIASVENTAS','Vigencia','');
  label74.Visible:=true;
  diav.Visible:=true;
  Barra1.Panels[0].Text:='Confirmacion de Datos de VENTAS y SERVICIOS';
  grupoventa.Caption:='Datos de la Venta';
  grupotestigos.Caption:='Datos Titulares';
  grilla5.Cells[0,0]:='IdCuota';                 grilla5.Cells[1,0]:='N° Cuota';
  grilla5.Cells[2,0]:='Periodo';                 grilla5.Cells[3,0]:='FechaVto';
  grilla5.Cells[4,0]:='Monto';                   grilla5.Cells[5,0]:='Interes';
  grilla5.Cells[6,0]:='Capital';                 grilla5.Cells[7,0]:='TipoCuota';
  grilla5.Cells[8,0]:='FormaPago';

  PC1.Images:=modulo2.ImageList1;
  fecfalle.Visible:=false;
  idserv.Visible:=false;
  nomf.Visible:=false;
  dnif.Visible:=false;
  nomt.Visible:=false;
  dnit.Visible:=false;
  inhu.Visible:=false;

  //// desde aca los datos del servicio
  PageControl2.ActivePage:=PageControl2.Pages[0];
  grillaser.Cells[0,0]:='IdServicio';                      grillaser.Cells[1,0]:='N° Cuota';
  grillaser.Cells[2,0]:='Periodo';                         grillaser.Cells[3,0]:='FechaVto';
  grillaser.Cells[4,0]:='Monto';                           grillaser.Cells[5,0]:='Interes';
  grillaser.Cells[6,0]:='Capital';                         grillaser.Cells[7,0]:='TipoCuota';
  grillaser.Cells[8,0]:='FormaPago';

  grupotestigos.Caption:='Datos Titulares';                grillaobjetos.Cells[0,0]:='IdObjeto';
  grillaobjetos.Cells[1,0]:='OBJETO';                      grillaobjetos.Cells[2,0]:='Valor';

  GrillaT.Cells[0,0]:='Orden';                              GrillaT.Cells[1,0]:='DNI';
  GrillaT.Cells[2,0]:='Nombre';                             GrillaT.Cells[3,0]:='TipoDNI';
  GrillaT.Cells[4,0]:='TipoTitular';                        GrillaT.Cells[5,0]:='Domicilio';
  GrillaT.Cells[6,0]:='NroT';                               GrillaT.Cells[7,0]:='MDF';
  GrillaT.Cells[8,0]:='Cuif';                               GrillaT.Cells[9,0]:='FecNac';
  GrillaT.Cells[10,0]:='Nacionalidad';                      GrillaT.Cells[11,0]:='EstCivil';
  GrillaT.Cells[12,0]:='Ciudad';                            GrillaT.Cells[13,0]:='DNI';
  imp.Enabled:=false;
  
  PC1.ActivePage:=PC1.Pages[0];
  if acci.Checked then odni.SetFocus;
  //odni.SetFocus;
end;
end;

procedure TConfirma_InhuVen.Coloca1(nro:byte);
var t,y,gf:integer;
    txt,sex,Vcolor,fecha1,ElMes,ElAnio,ElDia,elperiodo:string;
    txtw:widestring;
    m,anu,conf,pe,pm,pas,a,b,c,d,ms:boolean;
    Parcelas:TParcelas;
    NroDni,IdHabitante,NroAccion,DniTitular,DniFallecido,idcliente,idinhu,idhabi,
    NroId,NroMovi,accion:variant;
    razonsocial,NombreTitular,NombreFallecido,fechafallecimiento:string;
    Param:TWideStrings;
begin
if nro=0 then begin //Identificar COLOR
 TColores:=LeeXML('TiposColores','(TipoColor=' +  dv3.Text  + ')');
 if length(TColores) <> 0 then begin
  VColor:=TColores[2,0];
  Panel.Color:=stringtocolor(VColor);
 end;
end;
if nro=1 then begin
 DataSetCli.Free;
 DataSetCli:=TClientDataSet.Create(nil);
 DAtasource6.DataSet:=DataSetCli;
 Funciones:=TFuncionesVarias.Create(nil);
 Funciones.ConnectionString:=modulo2.Conexion;
 if inhu.Checked then begin
   IdHabitante:=trim(odni.Text);Nroaccion:=null;DniTitular:=null;NombreTitular:='';DniFallecido:=null;
   NombreFallecido:='';fechafallecimiento:='';
 end;
 if acci.Checked then begin
   IdHabitante:=null;Nroaccion:=trim(odni.Text);DniTitular:=null;NombreTitular:='';DniFallecido:=null;
   NombreFallecido:='';fechafallecimiento:='';
 end;
 if dnit.Checked then begin
   IdHabitante:=null;Nroaccion:=null;DniTitular:=trim(odni.Text);NombreTitular:='';DniFallecido:=null;
   NombreFallecido:='';fechafallecimiento:='';
 end;
 if nomt.Checked then begin
   IdHabitante:=null;Nroaccion:=null;DniTitular:=null;NombreTitular:=trim(onomb.Text);DniFallecido:=null;
   NombreFallecido:='';fechafallecimiento:='';
 end;
 if dnif.Checked then begin
   IdHabitante:=null;Nroaccion:=null;DniTitular:=null;NombreTitular:='';DniFallecido:=trim(odni.Text);
   NombreFallecido:='';fechafallecimiento:='';
 end;
 if nomf.Checked then begin
   IdHabitante:=null;Nroaccion:=null;DniTitular:=null;NombreTitular:='';DniFallecido:=null;
   NombreFallecido:=trim(onomb.Text);fechafallecimiento:='';
 end;
 if fecfalle.Checked then begin
   IdHabitante:=null;Nroaccion:=null;DniTitular:=null;NombreTitular:='';DniFallecido:=null;
   NombreFallecido:='';fechafallecimiento:=trim(fech.Text);
 end;
 if not Funciones.Run_Fn_VistaParcelasInhumados(IdHabitante,NroAccion,DniTitular,NombreTitular,DniFallecido,NombreFallecido,fechafallecimiento,DataSetCli,'',0) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
 Funciones.Free;
end;
if nro=2 then begin   /// para cargar grilla testigos
 DataSetTelf.Free;
 DataSetTelf:=TClientdataSet.Create(nil);
 DataSource2.DataSet:=DataSetTelf;
 Funciones:=TFuncionesVarias.Create(nil);
 Funciones.ConnectionString:=modulo2.Conexion;
 accion:=strtoint(dv1.Text);
 if not Funciones.Run_Fn_VistaParcelasResponsables(accion,DataSetTelf,'where TipoAccionista =2',0) then
 messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
 if datasource2.DataSet.RecordCount = 3 then begin
  label85.Visible:=false;
  timer1.Enabled:=false;
 end
 else begin
  label85.Visible:=true;
  timer1.Enabled:=true;
 end;
 Funciones.Free;
 JvDBGrid1.Columns[2].Width:=120;
 JvDBGrid1.Columns[3].Width:=80;
 JvDBGrid1.Columns[4].Width:=80;
end;
if  Nro=3  then begin  /// aca hacemos las anulaciones
 if Nroopcion=1  then begin // anulacion de inhumados
  gf:=messagedlgpos('Desea ANULAR esta INHUMACION Seleccionada??',mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
  if gf = 1 then begin
  ParcelasInhumados:=TParcelasInhumados.Create(nil);
  ParcelasInhumados.ConnectionString:=modulo2.Conexion;
  txtw:='UPDATE ParcelasInhumados SET anulado = 1,  Usu_anula=' + inttostr(modulo2.nro_usu)
  + ' , fecha_anula= ' + chr(39) + strcut(Fec_System(),10) + chr(39)
  + ' , MotivoAnula= ' + chr(39) + motivo + chr(39) + ' WHERE (IdHabitante=' + trim(d1.Text) + ')';
  m:=ParcelasInhumados.ListarSinResp(txtw);
  ParcelasInhumados.Free;
  if m then begin
    messagedlg('Se ha ANULADO esta INHUMACION con Exito',mtConfirmation,[mbok],0);
  end
  else begin
    messagedlg('Error al ANULAR esta INHUMACION. Consulte con un Administrador',mtError,[mbok],0);
  end;
  anula.Enabled:=false;
  end;
 end;
 if  Nroopcion=2  then begin  // anulacion de ventas
  gf:=messagedlgpos('Desea ANULAR esta VENTA de PARCELA Seleccionada??',mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
  if gf = 1 then begin
   ParcelasVentas:=TParcelasVentas.Create(nil);
   ParcelasVentas.ConnectionString:=modulo2.Conexion;
   txtw:='UPDATE ParcelasVentas SET anulado = 1,  Usuanula=' + inttostr(modulo2.nro_usu)
   + ', fechaanula= ' + chr(39) + strcut(Fec_System(),10) + chr(39)
   + ' , MotivoAnula= ' + chr(39) + motivo + chr(39) + ' WHERE (Idventa=' + trim(dvid.Text) + ')';
   m:=ParcelasVentas.ListarSinResp(txtw);
   ParcelasVentas.Free;
   if m then begin
    messagedlg('Se ha ANULADO esta VENTA de PARCELA con Exito',mtConfirmation,[mbok],0);
    ParcelasServicios:=TParcelasServicios.Create(nil);
    parcelasservicios.ConnectionString:=modulo2.Conexion;
    txtw:='UPDATE Parcelasservicios SET anulado = 1,  Usuanula=' + inttostr(modulo2.nro_usu)
    + ', fechaanula= ' + chr(39) + strcut(Fec_System(),10) + chr(39)
    + ' , MotivoAnula= ' + chr(39) + motivo + chr(39) + ' WHERE (IdServicio=' + trim(serv1.Text) + ')';
    m:=parcelasservicios.ListarSinResp(txtw);
    parcelasservicios.Free;
    if m then begin
     messagedlg('Se ha ANULADO este SERVICIO con Exito',mtConfirmation,[mbok],0);
     anula.Enabled:=false;
    end
    else begin
     messagedlg('Error al ANULAR este SERVICIO. Consulte con un Administrador',mtError,[mbok],0);
    end;
   end
   else begin
    messagedlg('Error al ANULAR esta VENTA de PARCELA. Consulte con un Administrador',mtError,[mbok],0);
   end;
  end;
 end;
end;
if nro = 4  then begin   //cargamos la grilla con datos de las ventas
 DataSetVta.Free;
 DataSetVta:=TClientDataSet.Create(nil);
 DAtasource1.DataSet:=DataSetVta;
 Funciones:=TFuncionesVarias.Create(nil);
 Funciones.ConnectionString:=modulo2.Conexion;
 Nroaccion:=trim(odni.Text);
 NroMovi:='1';
 if acci.Checked=true then begin
  txtw:='select * from Fn_VistaParcelasLasVentas ('+trim(odni.Text)+',1,0)';
  if not Funciones.Listar(txtw,DataSetVta)  then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
 end;
 if fecfalle.Checked=true then begin
  txtw:='select * from Fn_VistaParcelasLasVentas (null,1,0) where (fecha=' + chr(39) + trim(fech.Text) + chr(39) + ')';
  if not Funciones.Listar(txtw,DataSetVta)  then
   messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
 end;
 Funciones.Free;
 if (DataSetVta.RecordCount = 0) then begin
  Barra1.Panels[0].Text:='Sin Datos en Grilla';
  IF application.MessageBox('Datos de la VENTA NO encontrado, !Desea Buscar otro Dato!?','Advertencia' ,mb_OKcancel+mb_IconHAnd) = IdOk then begin
   PC1.ActivePage:=PC1.Pages[0];
   if acci.Checked=true then ODNI.SetFocus
  end
  else begin
   Barra1.Panels[0].Text:='La opcion Busqueda fue Cancelada';
   if acci.Checked=true then ODNI.SetFocus;
  end;
 end;
end;
if nro = 5  then begin
 DtCombo.Free;
 DtCombo:=TClientDataSet.Create(nil);
 Parcelas:=TParcelas.Create(nil);
 Parcelas.ConnectionString:=modulo2.Conexion;
 txtw:='SELECT dbo.Parcelas.NroAccion, dbo.Parcelas.TipoColor, dbo.Parcelas.Sector,'
 + 'dbo.Parcelas.Parcela,dbo.TiposPlazas.Detalle'
 + ' FROM dbo.Parcelas INNER JOIN dbo.TiposPlazas ON dbo.Parcelas.IdPlaza = dbo.TiposPlazas.IdPlaza'
 + ' WHERE (dbo.Parcelas.NroAccion=' + trim(dv1.Text)  + ') ORDER BY dbo.Parcelas.NroAccion';
 if Parcelas.Listar(txtw,DtCombo)  then begin
  dv1.Text:=DtCombo.Fields[0].AsString;
  dv2.Text:=DtCombo.Fields[0].AsString;
  dv3.Text:=DtCombo.Fields[1].AsString;
  dv4.Text:=DtCombo.Fields[2].AsString;
  dv6.Text:=DtCombo.Fields[3].AsString;
  dv5.Text:=DtCombo.Fields[4].AsString;
 end
 else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
 Parcelas.Free;
end;
if nro=6 then begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  DAtasource2.DataSet:=DataSetCli;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  accion:=strtoint(dv1.Text);
  if not Funciones.Run_Fn_VistaParcelasResponsables(accion,DtCombo,'where TipoAccionista =2',0) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
end;
if nro = 7  then begin   //cargamos la grilla con datos de los Servicios
 DataSetIn.Free;
 DataSetIn:=TClientDataSet.Create(nil);
 DAtasource5.DataSet:=DataSetIn;
 Funciones:=TFuncionesVarias.Create(nil);
 Funciones.ConnectionString:=modulo2.Conexion;
 if acci.Checked=true then begin
  txtw:='select * from Fn_VistaParcelasServicios (null,'+trim(odni.Text)+',0)';// where (nroaccion=' + trim(odni.Text)+')';
  if not Funciones.Listar(txtw,DataSetIn)  then
   messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
 end;
 if fecfalle.Checked=true then begin
  txtw:='select * from Fn_VistaParcelasServicios (null,null,0) where (fecha=' + chr(39) + trim(fech.Text) + chr(39) + ')';
  if not Funciones.Listar(txtw,DataSetIn)  then
   messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
 end;
 Funciones.Free;
  if (DataSetIn.RecordCount = 0) then begin
   Barra1.Panels[0].Text:='Sin Datos en Grilla';
   IF application.MessageBox('Datos del Servicio NO encontrado, !Desea Buscar otro Dato!?','Advertencia'
    ,mb_OKcancel+mb_IconHAnd) = IdOk then begin
    PC1.ActivePage:=PC1.Pages[0];
    if acci.Checked=true then ODNI.SetFocus;
    if fecfalle.Checked then fech.SetFocus;
    if idserv.Checked then ODNI.SetFocus;
   end
   else begin
    Barra1.Panels[0].Text:='La opcion Busqueda fue Cancelada';
    PC1.ActivePage:=PC1.Pages[0];
    if acci.Checked=true then ODNI.SetFocus;
    if fecfalle.Checked then fech.SetFocus;
    if idserv.Checked then ODNI.SetFocus;
   end;
  end;
end;
if nro=8  then begin
 DtCombo.Free;
 DtCombo:=TClientDataSet.Create(nil);
 Funciones:=TFuncionesVarias.Create(nil);
 Funciones.ConnectionString:=modulo2.Conexion;
 txtw:='select IdCuotaDetalle,NroCuota,Periodo,FechaVencimiento,Monto,Interes,Capital,NroAccion,'
 +'case when NroCuota = 0 then ''Entrega'' else ''Cuota Normal'' end as ''Tipo Cuota'',formapago from Fn_VistaParcelasVentasDeudas ('+ dv1.Text +',0)';
 if not Funciones.Listar(txtw,DtCombo)  then
 messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
 for t:=0 to grilla5.ColCount-1 do
  for y:=1 to grilla5.RowCount-1 do grilla5.Cells[t,y]:='';
  for t:=1 to DtCombo.RecordCount  do begin
   DtCombo.RecNo:=t;
   grilla5.RowCount:=t+1;
   grilla5.Cells[0,t]:=trim(DtCombo.Fields[0].AsString);
   grilla5.Cells[1,t]:=trim(DtCombo.Fields[1].AsString);
   grilla5.Cells[2,t]:=trim(DtCombo.Fields[2].AsString);
   grilla5.Cells[3,t]:=trim(DtCombo.Fields[3].AsString);
   grilla5.Cells[4,t]:=trim(DtCombo.Fields[4].AsString);
   grilla5.Cells[5,t]:=trim(DtCombo.Fields[5].AsString);
   grilla5.Cells[6,t]:=trim(DtCombo.Fields[6].AsString);
   grilla5.Cells[7,t]:=trim(DtCombo.Fields[8].AsString);
   grilla5.Cells[8,t]:=trim(DtCombo.Fields[9].AsString);
  end;
 Funciones.Free;
end;
if nro = 9  then begin
 DtCombo.Free;
 DtCombo:=TClientDataSet.Create(nil);
 Funciones:=TFuncionesVarias.Create(nil);
 Funciones.ConnectionString:=modulo2.Conexion;
 txtw:='select top 1 convert(char(10),FechaVencimiento,103) from Fn_VistaParcelasVentasDeudas (' + trim(dv1.Text)  + ',0)'
     + ' order by NroCuota desc';
 if not Funciones.Listar(txtw,DtCombo)  then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  fec:=DtCombo.Fields[0].AsString;   //10/12/2012
 Funciones.Free;
end;
if nro=10  then begin
 DtComboD.Free;
 DtComboD:=TClientDataSet.Create(nil);
 Funciones:=TFuncionesVarias.Create(nil);
 Funciones.ConnectionString:=modulo2.Conexion;
 txtw:='select IdServicio,NroCuota,Periodo,FechaVencimiento,Monto,Interes,Capital,'
 +'case when NroCuota = 0 then ''Entrega'' else ''Cuota Normal'' end as ''Tipo Cuota'',formapago from Fn_VistaParcelasServicosDeudas ('+ serv1.Text +','+ serv2.Text +',0)';
 if not Funciones.Listar(txtw,DtComboD)  then
 messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
 for t:=0 to grillaser.ColCount-1 do
  for y:=1 to grillaser.RowCount-1 do grillaser.Cells[t,y]:='';
  for t:=1 to DtComboD.RecordCount  do begin
   DtComboD.RecNo:=t;
   grillaser.RowCount:=t+1;
   grillaser.Cells[0,t]:=trim(DtComboD.Fields[0].AsString);
   grillaser.Cells[1,t]:=trim(DtComboD.Fields[1].AsString);
   grillaser.Cells[2,t]:=trim(DtComboD.Fields[2].AsString);
   grillaser.Cells[3,t]:=trim(DtComboD.Fields[3].AsString);
   grillaser.Cells[4,t]:=trim(DtComboD.Fields[4].AsString);
   grillaser.Cells[5,t]:=trim(DtComboD.Fields[5].AsString);
   grillaser.Cells[6,t]:=trim(DtComboD.Fields[6].AsString);
   grillaser.Cells[7,t]:=trim(DtComboD.Fields[7].AsString);
   grillaser.Cells[8,t]:=trim(DtComboD.Fields[8].AsString);
  end;
 Funciones.Free;
end;
if nro=11 then begin   /// para cargar grilla testigos
  DataSetTelf.Free;
  DataSetTelf:=TClientdataSet.Create(nil);
  DataSource3.DataSet:=DataSetTelf;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  NroId:=D1.Text;
  if not funciones.Run_Fn_VistaParcelasInhumadosTestigos(NroId,DataSetTelf,'',0) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  DBGrid2.Columns[2].Width:=80;
  DBGrid2.Columns[3].Width:=80;
  DBGrid2.Columns[4].Width:=80;
end;
if nro=12 then begin
 DtCombo.Free;
 DtCombo:=TClientdataSet.Create(nil);
 Funciones:=TFuncionesVarias.Create(nil);
 Funciones.ConnectionString:=modulo2.Conexion;
 txtw:='SELECT idservicioobjeto,objeto,importe FROM Fn_VistaParcelasServiciosDetalleObjetos('+trim(serv1.Text) +',0)';
 if not Funciones.listar(txtw,DtCombo) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
 Funciones.Free;
 for t:=0 to grillaobjetos.ColCount-1 do
   for y:=1 to grillaobjetos.RowCount-1 do grillaobjetos.Cells[t,y]:='';
  for t:=1 to DtCombo.RecordCount  do begin
   DtCombo.RecNo:=t;
   grillaobjetos.RowCount:=t+1;
   grillaobjetos.Cells[0,t]:=trim(DtCombo.Fields[0].AsString);
   grillaobjetos.Cells[1,t]:=trim(DtCombo.Fields[1].AsString);
   grillaobjetos.Cells[2,t]:=trim(DtCombo.Fields[2].AsString);
 end;
end;
if nro=13 then begin   /// Titulares activos
 DtCombo.Free;
 DtCombo:=TClientdataSet.Create(nil);
 Funciones:=TFuncionesVarias.Create(nil);
 Funciones.ConnectionString:=modulo2.Conexion;
 if not Funciones.Run_Fn_VistaParcelasResponsables(strtoint(trim(serv2.Text)),DtCombo,'where tipoaccionista =2' ,0) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  for t:=0 to grillat.ColCount-1 do
  for y:=1 to grillat.RowCount-1 do grillat.Cells[t,y]:='';
  for t:=1 to DtCombo.RecordCount  do begin
   DtCombo.RecNo:=t;
   grillat.RowCount:=t+1;
   grillat.Cells[0,t]:=completa1(inttostr(t),2,'0');
   grillat.Cells[1,t]:=trim(DtCombo.Fields[0].AsString);
   grillat.Cells[2,t]:=trim(DtCombo.Fields[3].AsString);
   grillat.Cells[3,t]:=trim(DtCombo.Fields[2].AsString);
   grillat.Cells[4,t]:=trim(DtCombo.Fields[4].AsString);
   grillat.Cells[5,t]:=trim(DtCombo.Fields[5].AsString);
   grillat.Cells[6,t]:=trim(DtCombo.Fields[10].AsString);
   grillat.Cells[8,t]:=trim(DtCombo.Fields[1].AsString);
   grillat.Cells[13,t]:=trim(DtCombo.Fields[0].AsString);
  end;
 Funciones.Free;
end;
if nro = 14  then begin
  DtCombo.Free;
  DtCombo:=TClientDataSet.Create(nil);
  Parcelas:=TParcelas.Create(nil);
  Parcelas.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT dbo.Parcelas.NroAccion, dbo.Parcelas.TipoColor, dbo.Parcelas.Sector,'
  + 'dbo.Parcelas.Parcela,dbo.TiposPlazas.Detalle'
  + ' FROM dbo.Parcelas INNER JOIN dbo.TiposPlazas ON dbo.Parcelas.IdPlaza = dbo.TiposPlazas.IdPlaza'
  + ' WHERE (dbo.Parcelas.NroAccion=' + trim(serv2.Text)  + ') ORDER BY dbo.Parcelas.NroAccion';
  if Parcelas.Listar(txtw,DtCombo)  then begin
   dpser1.Text:=DtCombo.Fields[0].AsString;
   dpser2.Text:=DtCombo.Fields[0].AsString;
   dpser3.Text:=DtCombo.Fields[1].AsString;
   dpser4.Text:=DtCombo.Fields[2].AsString;
   dpser6.Text:=DtCombo.Fields[3].AsString;
   dpser5.Text:=DtCombo.Fields[4].AsString;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Parcelas.Free;
end;
if nro = 15 then begin
 gf:=messagedlgpos('Desea Confirmar esta SERVICIO Seleccionad0??',mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
 if gf = 1 then begin
  ParcelasServicios:=TParcelasServicios.Create(nil);
  parcelasservicios.ConnectionString:=modulo2.Conexion;
  txtw:='UPDATE ParcelasServicios SET confirmado = 1,  UsuConfirma=' + inttostr(modulo2.nro_usu)
  + ', FechaConfirma= ' + chr(39) + strcut(Fec_System(),10) + chr(39) + ' WHERE (IdServicio=' + trim(serv1.Text) + ')';
  a:=ParcelasServicios.ListarSinResp(txtw);
  ParcelasServicios.Free;
  if a then begin
   ParcelasServiciosEstados:=TParcelasServiciosEstados.Create(nil);
   ParcelasServiciosEstados.ConnectionString:=modulo2.Conexion;
   ParcelasServiciosEstados.C_IdServicio:=strtoint(serv1.Text);
   ParcelasServiciosEstados.C_NroEstado:=1;
   ParcelasServiciosEstados.C_Activo:=true;
   ParcelasServiciosEstados.C_Fecha_A:=trim(strcut(Fec_System(),10));
   ParcelasServiciosEstados.C_Usu_A:=inttostr(modulo2.nro_usu);
   b:=ParcelasServiciosEstados.Agrega;
   PArcelasServiciosEstados.Free;
   if b then begin
    messagedlg('Se ha CONFIRMADO este SERVICIO con Exito',mtConfirmation,[mbok],0) ;
    AuditAccesos('Mdulo 2','SERVICIO CONFIRMADA ACCION' + TRIM(SERV2.Text));
    confirmaserv.Enabled:=false;
   end
   else begin
    messagedlg('Error al CONFIRMAR este SERVICIO. Consulte con un Administrador',mtError,[mbok],0);
   end;
  end
  else begin
   messagedlg('Error al CONFIRMAR este SERVICIO. Consulte con un Administrador',mtError,[mbok],0);
  end;
 end;
end;
if nro = 16  then begin
  DtCombo.Free;
  DtCombo:=TClientDataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='select top 1 convert(char(10),FechaVencimiento,103) from Fn_VistaParcelasServicosDeudas (null,' + trim(serv2.Text)  + ',0)'
      + ' order by NroCuota desc';
  if not Funciones.Listar(txtw,DtCombo)  then
   messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
   fecs:=DtCombo.Fields[0].AsString;   //10/12/2012
  Funciones.Free;
end;
IF NRO=17 then begin
 try
  ElMes:=strcut_midle(trim(strcut(Fec_System(),10)),4,5);
  ElAnio:=RightStr(trim(strcut(Fec_System(),10)),4);
  elperiodo:=elanio+''+elmes;
  DataResul.Free;
  DataResul:=TClientdataSet.Create(nil);
  Sistemas:=TSistemas.Create(nil);
  Sistemas.ConnectionString:=modulo2.Conexion;
  Param:=TWideStrings.Create;
  Param.Add('1');
  Param.Add(elperiodo);
  Param.Add(trim(dv1.Text));
  Param.Add('1');
  if not Sistemas.ListarSP(Param,'RecreaMovimientos',DataResul) then
     Barra1.Panels[2].Text:=TRIM(DataResul.Fields[0].AsString)
  else begin
     Barra1.Panels[2].Text:=TRIM(DataResul.Fields[0].AsString);
  end;
  Param.Free;
  Sistemas.Free;
 except
  Barra1.Panels[2].Text:='Error al Intentar Recrear los Datos';
 end;
end;
IF NRO=18 then begin
 try
  ElMes:=strcut_midle(trim(strcut(Fec_System(),10)),4,5);
  ElAnio:=RightStr(trim(strcut(Fec_System(),10)),4);
  elperiodo:=elanio+''+elmes;
  DataResul.Free;
  DataResul:=TClientdataSet.Create(nil);
  Sistemas:=TSistemas.Create(nil);
  Sistemas.ConnectionString:=modulo2.Conexion;
  Param:=TWideStrings.Create;
  Param.Add('2');
  Param.Add(elperiodo);
  Param.Add(trim(serv2.Text));
  Param.Add('1');
  if not Sistemas.ListarSP(Param,'RecreaMovimientos',DataResul) then
     Barra1.Panels[2].Text:=TRIM(DataResul.Fields[0].AsString)
  else begin
     Barra1.Panels[2].Text:=TRIM(DataResul.Fields[0].AsString);
  end;
  Param.Free;
  Sistemas.Free;
 except
  Barra1.Panels[2].Text:='Error al Intentar Recrear los Datos';
 end;
end;
if nro = 19  then begin
  DtCombo.Free;
  DtCombo:=TClientDataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='select * from ParcelasMantenimiento where (NroAccion= ' + trim(dv1.Text) + ')';
  If  Funciones.Listar(txtw,DtCombo) then BEGIN
   if DtCombo.IsEmpty then  yaexiste:=false
    else yaexiste:=true;
  END;
  //if NOT Funciones.Listar(txtw,DtCombo) then yaexiste:=false
 //  else yaexiste:=true;
  Funciones.Free;
  if yaexiste = true then begin
   Funciones:=TFuncionesVarias.Create(nil);
   Funciones.ConnectionString:=modulo2.Conexion;
   txtw:='UPDATE ParcelasMantenimiento SET Activo = 0 WHERE (NroAccion= ' + trim(dv1.Text) + ')';
   if not Funciones.ListarSinResp(txtw) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
   else begin
    //messagedlg('Inhumado Eliminado Correctamente', mtConfirmation,[mbok],0);
   end;
  end;
end;
if nro=20  then begin
  DtCombo.Free;
  DtCombo:=TClientDataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT Cuif FROM ParcelasTitulares WHERE (NroAccion = ' + trim(dv1.Text) + ') AND (Nivel = 0) AND (NroTipoAcc = 3)';
  if Funciones.Listar(txtw,DtCombo)  then
   //messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  cuiftit:=DtCombo.Fields[0].AsString;
  Funciones.Free;
end;
end;


procedure TConfirma_InhuVen.Borrar1(nro:byte);
var u,p,a,i:integer;
begin
  if nro = 1 then  begin
   dvid.Clear;dv1.Clear;dv2.Clear;dv4.Clear;dv3.Clear;
   dv6.Clear;dv5.Clear;dv7.Clear;fecvta.Clear;observ.Clear;
   dva1.Clear; dva2.Clear;dva3.Clear;
   modp.Clear;mp.Clear;dp.Clear;cc.Clear;
   vc.Clear;comprobante.Clear;cheque.Clear;fecpago.Clear;feccobro.Clear;
   banco.Clear; titular.Clear;
   DtCombo.Free;
   datasource2.DataSet.Close;
   for p:=0 to grilla5.ColCount-1 do
    for u:=1 to grilla5.RowCount-1 do grilla5.Cells[p,u]:='';
    grilla5.RowCount:=2;
   PC1.ActivePage:=PC1.Pages[0];
   busca.Click;
  end;
  if nro = 2 then  begin
   serv1.Clear;serv2.Clear;serv3.Clear;serv4.Clear;serv5.Clear;
   nivel.Clear;posi.Clear;objeto.Clear;DBEdit2.Clear;DBEdit3.Clear;
   DBEdit4.Clear; dpcs.Clear;dpfs.Clear;drecs.Clear;
   mps.Clear;montops.Clear;deudas.Clear;ccs.Clear;
   vcs.Clear;ncs.Clear;nrocs.Clear;fps.Clear;fcs.Clear;
   bancos.Clear;tits.Clear;
   DtCombo.Free;
   for p:=0 to grillaser.ColCount-1 do
    for u:=1 to grillaser.RowCount-1 do grillaser.Cells[p,u]:='';
    grillaser.RowCount:=2;
   for a:=0 to grillat.ColCount-1 do
    for i:=1 to grillat.RowCount-1 do grillat.Cells[a,i]:='';
    grillat.RowCount:=2;
   dpser1.Clear;dpser2.Clear;dpser3.Clear;dpser4.Clear;
   dpser5.Clear;dpser6.Clear;
   deudaser.Clear;cantcuotasser.Clear;valorcuotaser.Clear;
   PC1.ActivePage:=PC1.Pages[0];
   busca.Click;
  end;
  if nro = 3 then  begin
    d1.Clear;d11.Clear;d14.Clear;d9.Clear;d28.Clear;d8.Clear;d29.Clear;d30.Clear;
    d31.Clear;d32.Clear;d12.Clear;d17.Clear;d18.Clear;d19.Clear;d20.Clear;dre.Clear;
    d7.Clear;d6.Clear;d21.Clear;d22.Clear;d24.Clear;d23.Clear;d10.Clear;dbedit7.Clear;
    dbedit1.Clear;dbedit5.Clear;dbedit6.Clear;
    d13.Clear;d16.Clear;d2.Clear;d3.Clear;d4.Clear;d15.Clear;d5.Clear;dt.Clear;dc.Clear;
    dpa.Clear;ds.Clear;d25.Clear;d26.Clear;d27.Clear;
    datasource3.DataSet.Close;
  end;
end;

procedure TConfirma_InhuVen.dnitClick(Sender: TObject);
begin

  ONOMB.Visible:=false;
  fech.Visible:=false;
  fech.Visible:=false;
  LB1.Caption:='Ingrese el N° DNI:';
  ODNI.Visible:=true;
  ODNI.Text:='00000000';
  Busca.Enabled:=true;
  ODNI.SetFocus;

end;

procedure TConfirma_InhuVen.nomtClick(Sender: TObject);
begin
if  Nroopcion=1  then begin
  LB1.Caption:='Ingrese Apellido:';
  fech.Visible:=false;
  ONOMB.Visible:=true;
  fech.Visible:=false;
  ODNI.Visible:=false;
  Busca.Enabled:=true;
  ONOMB.SetFocus;
end;
end;

procedure TConfirma_InhuVen.acciClick(Sender: TObject);
begin
  ONOMB.Visible:=false;
  fech.Visible:=false;
  LB1.Caption:='Ingrese el Nro de Acción:';
  ODNI.Visible:=true;
  ODNI.Text:='00000000';
  Busca.Enabled:=true;
  ODNI.SetFocus;
end;

procedure TConfirma_InhuVen.InhuClick(Sender: TObject);
begin
  ONOMB.Visible:=false;
  fech.Visible:=false;
  LB1.Caption:='Ingrese el Nro de Inhumado:';
  ODNI.Visible:=true;
  ODNI.Text:='00000000';
  Busca.Enabled:=true;
  ODNI.SetFocus;
end;

procedure TConfirma_InhuVen.DBGrid1CellClick(Column: TColumn);
var dia:integer;
begin
  if not (datasource1.DataSet.IsEmpty) then begin
    Barra1.Panels[2].Text:='';
    imp.Enabled:=true;
    PC1.ActivePage:=PC1.Pages[1];
    dvid.Text:=trim(DBGrid1.Fields[0].Text);
    dv1.Text:=trim(DBGrid1.Fields[1].Text);
    fecvta.Text:=trim(DBGrid1.Fields[2].Text);
    dv7.Text:=trim(DBGrid1.Fields[3].Text);
    if trim(DBGrid1.Fields[12].Text) = 'False' then confirmavta.Enabled:=true
     else confirmavta.Enabled:=false;
    if confirmavta.Enabled = false then begin
     anulavta.Enabled:=false;
    end
    else begin
     if trim(DBGrid1.Fields[13].Text) = 'False' then anulavta.Enabled:=true
      else anulavta.Enabled:=false;
    end;
    observ.Text:=trim(DBGrid1.Fields[11].Text);
    dva1.Text:=trim(DBGrid1.Fields[14].Text);
    dva2.Text:=trim(DBGrid1.Fields[16].Text);
    dva3.Text:=trim(DBGrid1.Fields[15].Text);
    dpc.Text:=trim(DBGrid1.Fields[32].Text);
    dpf.Text:=trim(DBGrid1.Fields[33].Text);
    drec.Text:=trim(DBGrid1.Fields[34].Text);
    if trim(DBGrid1.Fields[19].Text)='DONACION' then begin
     modp.Text:=trim(DBGrid1.Fields[19].Text);
     mp.Clear;
     dp.Clear;
     cc.Text:=trim(DBGrid1.Fields[9].Text);
     vc.Text:=trim(DBGrid1.Fields[10].Text);
     comprobante.Clear;
     cheque.Clear;
     fecpago.Clear;
     feccobro.Clear;
     banco.Clear;
     titular.Clear;
    end;
    if (trim(DBGrid1.Fields[19].Text)='FINANCIADO SIN INTERESES')
       or (trim(DBGrid1.Fields[19].Text)='FINANCIADO CON INTERESES') then begin
     modp.Text:=trim(DBGrid1.Fields[19].Text);
     mp.Text:=trim(DBGrid1.Fields[5].Text);
     dp.Text:=trim(DBGrid1.Fields[6].Text);
     cc.Text:=trim(DBGrid1.Fields[9].Text);
     vc.Text:=trim(DBGrid1.Fields[10].Text);
     comprobante.Clear;
     cheque.Clear;
     fecpago.Clear;
     feccobro.Clear;
     banco.Clear;
     titular.Clear;
    end;
    if trim(DBGrid1.Fields[19].Text)='TRANSFERENCIAS' then begin
      modp.Text:=trim(DBGrid1.Fields[19].Text);
      mp.Text:=trim(DBGrid1.Fields[6].Text);
      dp.Text:=trim(DBGrid1.Fields[6].Text);
      cc.Text:=trim(DBGrid1.Fields[9].Text);
      vc.Text:=trim(DBGrid1.Fields[10].Text);
      comprobante.Clear;
      cheque.Clear;
      fecpago.Clear;
      feccobro.Clear;
      banco.Clear;
      titular.Clear;
    end;
    if trim(DBGrid1.Fields[19].Text)='CONTADO' then begin
      modp.Text:=trim(DBGrid1.Fields[19].Text);
      mp.Text:=trim(DBGrid1.Fields[6].Text);
      dp.Text:=trim(DBGrid1.Fields[6].Text);
      cc.Text:=trim(DBGrid1.Fields[9].Text);
      vc.Text:=trim(DBGrid1.Fields[10].Text);
      comprobante.Clear;
      cheque.Clear;
      fecpago.Clear;
      feccobro.Clear;
      banco.Clear;
      titular.Clear;
    end;
    if trim(DBGrid1.Fields[19].Text)='CHEQUE' then begin
      modp.Text:=trim(DBGrid1.Fields[19].Text);
      mp.Text:=trim(DBGrid1.Fields[6].Text);
      dp.Text:=trim(DBGrid1.Fields[6].Text);
      cc.Text:=trim(DBGrid1.Fields[9].Text);
      vc.Text:=trim(DBGrid1.Fields[26].Text);
      comprobante.Clear;
      cheque.Text:=trim(DBGrid1.Fields[23].Text) + '-'+ trim(DBGrid1.Fields[22].Text);
      fecpago.Text:=trim(DBGrid1.Fields[28].Text);
      feccobro.Text:=trim(DBGrid1.Fields[29].Text);
      banco.Text:=trim(DBGrid1.Fields[30].Text);
      titular.Text:=trim(DBGrid1.Fields[24].Text);
    end;
    if trim(DBGrid1.Fields[19].Text)='TARJETA DE CREDITO' then begin
      modp.Text:=trim(DBGrid1.Fields[19].Text);
      mp.Text:=trim(DBGrid1.Fields[6].Text);
      dp.Text:=trim(DBGrid1.Fields[6].Text);
      cc.Text:=trim(DBGrid1.Fields[27].Text);
      vc.Text:=trim(DBGrid1.Fields[26].Text);
      comprobante.Text:=trim(DBGrid1.Fields[25].Text);
      cheque.Clear;
      fecpago.Text:=trim(DBGrid1.Fields[28].Text);
      feccobro.clear;
      banco.Text:=trim(DBGrid1.Fields[31].Text);
      titular.Text:=trim(DBGrid1.Fields[24].Text);
    end;
     if trim(DBGrid1.Fields[35].Text) = 'True' then ci.Checked:=true
         else ci.Checked:=false;
    Coloca1(5);
    Coloca1(0);
    Coloca1(2);
    Coloca1(8);
    Coloca1(9);
  end;
end;

procedure TConfirma_InhuVen.BuscaClick(Sender: TObject);
var p,u:integer;
begin
  // inhumados
    Coloca1(1);
   // ventas
    Coloca1(4);
  // servicios
    Coloca1(7);
odni.SetFocus;
end;

procedure TConfirma_InhuVen.ExportaClick(Sender: TObject);
var texto:widestring;
var txt:string;
var t,y:integer;
begin
  SplashConNro := TSplashConNro.Create(Application);
  SplashConNro.Show;
  SplashConNro.ProgressBar1.Max:=DataSetCli.RecordCount - 1;
  todos.Clear;
  texto:='';
  for t:=0 to DataSetCli.FieldCount-1 do begin
    texto:=texto + DataSetCli.Fields[t].FieldName + chr(9);
  end;
  todos.Lines.Add(texto);
  for y:=1 to DataSetCli.RecordCount do begin
    DataSetCli.RecNo:=y;
    texto:='';
    SplashConNro.ProgressBar1.Position:=y;
    SplashConNro.Label3.Caption:=inttostr(y);
    SplashConNro.Update;
    for t:=0 to DataSetCli.FieldCount-1 do begin
      texto:=texto + DataSetCli.Fields[t].AsString + chr(9);
    end;
    todos.Lines.Add(texto);
  end;
  todos.SelectAll;
  todos.CopyToClipboard;
  SplashConNro.Hide;
  SplashConNro.Free;
  messagedlgpos('Se Copiaron los Datos, listo para pegarlos a Excel',mtwarning,[
    mbok],0,screen.Width div 3,screen.Height div 3);
  exporta.Enabled:=false;
end;

procedure TConfirma_InhuVen.ONOMBKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then busca.SetFocus;
end;

procedure TConfirma_InhuVen.ODNIKeyPress(Sender: TObject; var Key: Char);
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

procedure TConfirma_InhuVen.fecfalleClick(Sender: TObject);
begin
if  (Nroopcion=1)  or (Nroopcion=3)  then begin
  ONOMB.Visible:=false;
  odni.Visible:=false;
  LB1.Caption:='Ingrese la Fecha:';
  fech.Visible:=true;
  fech.SetFocus;
  Busca.Enabled:=true;
end;
end;

procedure TConfirma_InhuVen.FECHKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then busca.SetFocus;
end;

procedure TConfirma_InhuVen.FECHExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(FECH.Text));
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  FECH.SetFocus;
end;
end;

procedure TConfirma_InhuVen.anulaClick(Sender: TObject);
var Anula_General: TAnula_General;
begin
  Anula_General:= TAnula_General.create(self);
  try
    Anula_General.Caption:='Anulacion de Inhumados Cargados';
    Anula_General.ShowModal;
  finally
    Anula_General.destroy;
  end;
end;

procedure TConfirma_InhuVen.ConfirmainhuClick(Sender: TObject);
var gf:integer;
var txtw:widestring;
var m:boolean;
begin
gf:=messagedlgpos('Desea Confirmar este INHUMADO Seleccionad0??',mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
if gf = 1 then begin
  ParcelasInhumados:=TParcelasInhumados.Create(nil);
  ParcelasInhumados.ConnectionString:=modulo2.Conexion;
  txtw:='UPDATE ParcelasInhumados SET confirmado = 1,  Usu_Conf=' + inttostr(modulo2.nro_usu)
       + ', fecha_conf= ' + chr(39) + strcut(Fec_System(),10) + chr(39) + ' WHERE (IdHabitante=' + trim(d1.Text) + ')';
  m:=ParcelasInhumados.ListarSinResp(txtw);
  ParcelasInhumados.Free;
  if m then begin
    messagedlg('Se ha CONFIRMADO esta INHUMACION con Exito',mtConfirmation,[mbok],0);
    rvorden.Execute;
    confirmainhu.Enabled:=false;
    borrar1(3);
  end
  else begin
    messagedlg('Error al CONFIRMAR esta INHUMACION. Consulte con un Administrador',mtError,[mbok],0);
  end;
end;
end;

procedure TConfirma_InhuVen.GUARDAClick(Sender: TObject);
var gf,meses,t:integer;
var m,pm,pe,pa:boolean;
var txtw,txtu:widestring;
var txt,ElMes,ElAnio,ElDia,lafecmant:string;
var FECHA_FAC: TFECHA_FAC;
begin
  gf:=messagedlgpos('Desea Confirmar esta VENTA?',mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
  if gf = 1 then begin
   ParcelasVentas:=TParcelasVentas.Create(nil);
   ParcelasVentas.ConnectionString:=modulo2.Conexion;
   txtw:='UPDATE ParcelasVentas SET confirmado = 1,  UsuConfirma=' + inttostr(modulo2.nro_usu)
   + ', FechaConfirma= ' + chr(39) + strcut(Fec_System(),10) + chr(39) + ' WHERE (Idventa=' + trim(dvid.Text) + ')';
   m:=ParcelasVentas.ListarSinResp(txtw);
   ParcelasVentas.Free;
   if m then begin
    /// verifico si la accion pertenecia a UPCN
    coloca1(20);
    if cuiftit   = '96800004591' then  begin
     txt:='10/12/2018';
    end
    else begin
     meses:=strtoint(cc.Text);
     if (modp.Text='FINANCIADO CON INTERESES') or (modp.Text='FINANCIADO SIN INTERESES')
     OR (modp.Text='TRANSFERENCIAS') or (modp.Text='DONACION') then begin
      coloca1(9);
      ElMes:=strcut_midle(trim(fecvta.Text),4,5);
      ElAnio:=RightStr(trim(fecvta.Text),4);
      ElDia:=LeftStr(trim(fecvta.Text),2);
      txt:=FechaIncremento('10/' + ElMes + '/' + ElAnio,1)
     end
     else begin
      if ci.Checked=false then  begin    // venta sin inhumado
       ElMes:=strcut_midle(trim(fecvta.Text),4,5);
       ElAnio:=RightStr(trim(fecvta.Text),4);
       ElDia:=LeftStr(trim(fecvta.Text),2);
       txt:=FechaIncremento('10/' + ElMes + '/' + ElAnio,1)
      end
      else begin
       ElMes:=strcut_midle(trim(fecvta.Text),4,5);
       ElAnio:=RightStr(trim(fecvta.Text),4);
       ElDia:=LeftStr(trim(fecvta.Text),2);
       txt:=FechaIncremento('10/' + ElMes + '/' + ElAnio,1)
      end;
     end;
    end;
    FECHA_FAC:= TFECHA_FAC.create(self);
    FECHA_FAC.OFECRESU.Text:=txt;
    try
     FECHA_FAC.ShowModal;
     lafecmant:=trim(FECHA_FAC.OFECRESU.Text);
    finally
     FECHA_FAC.Free;
    end;
      // controlo que no se repita
    Coloca1(19);
    ParcelasMantenimiento:=TParcelasMantenimiento.Create(nil);
    ParcelasMantenimiento.ConnectionString:=modulo2.Conexion;
    parcelasMantenimiento.C_NroAccion_IX1:=strtoint(dv1.Text);
    parcelasMantenimiento.C_CuentaCliente_IX2:=null;
    parcelasmantenimiento.C_FechaVigencia_IX3:=lafecmant;
    parcelasmantenimiento.C_DiaVencimiento:=10;
    parcelasmantenimiento.C_Activo:=True;
    parcelasmantenimiento.C_Observaciones:='';
    parcelasmantenimiento.C_Fecha_A:=strcut(Fec_System(),10);
    parcelasmantenimiento.C_Usu_A:=inttostr(modulo2.nro_usu);
    pm:=ParcelasMantenimiento.Agrega;
    ParcelasMantenimiento.Free;
    if pm then begin
     AuditAccesos('Mdulo 2','VENTA CONFIRMADA ACCION' + TRIM(DV1.Text));
     messagedlg('Se ha CONFIRMADO esta '+ trim(modp.Text)+' con Exito',mtConfirmation,[mbok],0);
     confirmavta.Enabled:=false;
     coloca1(17);
    end
    else begin
      messagedlg('Error al CONFIRMAR esta '+ trim(modp.Text)+'. Consulte con un Administrador',mtError,[mbok],0);
    end;
   end
   else begin
    messagedlg('Error al CONFIRMAR esta '+ trim(modp.Text)+'. Consulte con un Administrador',mtError,[mbok],0);
   end;
  end
  else begin
    messagedlg('Error al CONFIRMAR esta '+ trim(modp.Text)+'. Consulte con un Administrador',mtError,[mbok],0);
  end;
end;

procedure TConfirma_InhuVen.BORRAClick(Sender: TObject);
var Anula_General: TAnula_General;
begin
  Anula_General:= TAnula_General.create(self);
  try
   if  Nroopcion=1 then begin
      Anula_General.Caption:='Anulacion de Inhumados Cargados';
   end;
   if  Nroopcion=2 then begin
      Anula_General.Caption:='Anulacion de Venta de Parcelas y Servicios';
   end;
   Anula_General.ShowModal;
  finally
   motivo:=Anula_General.MOTIVO.Text;
   Anula_General.destroy;
  end;
  coloca1(3);
end;

procedure TConfirma_InhuVen.SincClick(Sender: TObject);
begin
  ONOMB.Visible:=false;
  fech.Visible:=false;
  LB1.Caption:='Ingrese el Nro de Acción:';
  ODNI.Visible:=false;
  ODNI.Text:='00000000';
  Busca.Enabled:=true;
  Busca.SetFocus;
end;

procedure TConfirma_InhuVen.IdServClick(Sender: TObject);
begin
  ONOMB.Visible:=false;
  fech.Visible:=false;
  LB1.Caption:='Ingrese el Nro de Servicio:';
  ODNI.Visible:=true;
  ODNI.Text:='00000000';
  Busca.Enabled:=true;
  ODNI.SetFocus;
end;

procedure TConfirma_InhuVen.RvOrdenPrint(Sender: TObject);
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
       Tamanio:=strtoint(modulo2.INI1.ReadString('Titulo3 Facturas','Tamaño','10'));
     except
       Tamanio:=10;
     end;
     BaseReport.SetFont(Fuente,Tamanio);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+50,posy+15,'Servicios & Mandatos S.A.');
     BaseReport.PrintXY(posx+140,posy+15,modulo2.INI1.ReadString('Titulo3 Facturas','Titulo0','')+ ' - Parque de los Recuerdos');

     BaseReport.SetFont('Arial Black',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+30);
     BaseReport.PrintXY(posx+5,posy+27,'REGISTRO DE INHUMACIONES');

     BaseReport.SetFont('Arial',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+40);
     BaseReport.PrintXY(posx+5,posy+37,'DATOS DEL FALLECIDO Y ORIGEN DEL SERVICIO');
     BaseReport.PrintXY(posx+130,posy+37,'Nº ORDEN:');

     BaseReport.SetFont('Arial Black',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+60);
     BaseReport.PrintXY(posx+5,posy+43,'Fecha Ingreso');
     BaseReport.PrintXY(posx+25,posy+43,'Hora');
     BaseReport.PrintXY(posx+35,posy+43,'Nombre del Extinto');
     BaseReport.PrintXY(posx+88,posy+43,'Tipo y N° Doc.');
     BaseReport.PrintXY(posx+110,posy+43,'Nacio.');
     BaseReport.PrintXY(posx+130,posy+43,'Est. Civil');
     BaseReport.PrintXY(posx+155,posy+43,'Edad');
     BaseReport.PrintXY(posx+165,posy+43,'Fec. Nac.');
     BaseReport.SetFont('Arial ',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+47,trim(d11.text));
     BaseReport.PrintXY(posx+25,posy+47,trim(d14.Text));
     BaseReport.PrintXY(posx+35,posy+47,trim(d9.Text));
     BaseReport.PrintXY(posx+88,posy+47,trim(d28.Text) + '-' + trim(d8.Text));
     BaseReport.PrintXY(posx+110,posy+47,trim(d30.Text));
     BaseReport.PrintXY(posx+130,posy+47,trim(d29.Text));
     BaseReport.PrintXY(posx+155,posy+47,'');
     BaseReport.PrintXY(posx+165,posy+47,trim(d31.Text));

     BaseReport.SetFont('Arial Black',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+53,'Domicilio');
     BaseReport.PrintXY(posx+65,posy+53,'Seccion');
     BaseReport.PrintXY(posx+80,posy+53,'Acta');
     BaseReport.PrintXY(posx+90,posy+53,'Folio');
     BaseReport.PrintXY(posx+110,posy+53,'Tomo');
     BaseReport.PrintXY(posx+130,posy+53,'Fec. Defuncion');
     BaseReport.SetFont('Arial ',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+57,trim(d32.Text));
     BaseReport.PrintXY(posx+65,posy+57,trim(d17.Text));
     BaseReport.PrintXY(posx+80,posy+57,trim(d18.Text));
     BaseReport.PrintXY(posx+90,posy+57,trim(d19.Text));
     BaseReport.PrintXY(posx+110,posy+57,trim(d20.Text));
     BaseReport.PrintXY(posx+130,posy+57,trim(d28.Text));

     BaseReport.SetFont('Arial',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+70);
     BaseReport.PrintXY(posx+5,posy+67,' REFERENCIAS DEL SERVICIO DEL PARQUE');

     BaseReport.SetFont('Arial Black',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+88);
     BaseReport.PrintXY(posx+5,posy+73,'Cocheria');
     BaseReport.PrintXY(posx+35,posy+73,'Tipo Servicio');
     BaseReport.PrintXY(posx+65,posy+73,'Religion');
     BaseReport.PrintXY(posx+108,posy+73,'Fec. Inhu.');
     BaseReport.PrintXY(posx+125,posy+73,'Hora LLegada ');
     BaseReport.PrintXY(posx+145,posy+73,'Acta N°');
     BaseReport.PrintXY(posx+158,posy+73,'Sector');
     BaseReport.PrintXY(posx+170,posy+73,'Parcela');
     BaseReport.PrintXY(posx+185,posy+73,'Nivel');
     BaseReport.SetFont('Arial ',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+77,trim(dc.Text));
     BaseReport.PrintXY(posx+35,posy+77,trim(dt.Text));
     BaseReport.PrintXY(posx+65,posy+77,trim(dre.Text));
     BaseReport.PrintXY(posx+108,posy+77,trim(d13.Text));
     BaseReport.PrintXY(posx+125,posy+77,trim(d16.Text));
     BaseReport.PrintXY(posx+145,posy+77,'');
     BaseReport.PrintXY(posx+158,posy+77,trim(ds.Text));
     BaseReport.PrintXY(posx+170,posy+77,trim(dpa.Text));
     BaseReport.PrintXY(posx+185,posy+77,trim(d3.Text));

     BaseReport.SetFont('Arial Black',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+81,'Titular Parcela');
     BaseReport.PrintXY(posx+65,posy+81,'N° Titulo');
     BaseReport.PrintXY(posx+108,posy+81,'Objeto');
     BaseReport.SetFont('Arial ',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+84,trim(d7.Text));
     BaseReport.PrintXY(posx+65,posy+84,trim(d2.Text));
     if trim(d5.Text)='A' then BaseReport.PrintXY(posx+108,posy+84,'Ataud Mayor');
     if trim(d5.Text)='C' then BaseReport.PrintXY(posx+108,posy+84,'Cenicero');
     if trim(d5.Text)='U' then BaseReport.PrintXY(posx+108,posy+84,'Urna');
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+106);
     BaseReport.SetFont('Arial Black',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+93,'Solicitante:');
     BaseReport.PrintXY(posx+5,posy+98,'Responsable');
     BaseReport.PrintXY(posx+48,posy+98,'Tipo y N° Doc');
     BaseReport.PrintXY(posx+90,posy+98,'Domicilio');
     BaseReport.PrintXY(posx+155,posy+98,'Barrio');
     BaseReport.SetFont('Arial ',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+30,posy+93,trim(d10.Text));
     BaseReport.PrintXY(posx+5,posy+102,trim(dbedit1.Text));
     BaseReport.PrintXY(posx+48,posy+102,trim(dbedit5.text) + '-' + trim(dbedit7.text));
     BaseReport.PrintXY(posx+90,posy+102,trim(dbedit7.text));
     BaseReport.PrintXY(posx+155,posy+102,'');
     BaseReport.SetFont('Arial',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+125);
     BaseReport.PrintXY(posx+5,posy+110,' OBSERVACIONES');
     Logo:=posy+30;
   end;
   end;

begin
posfx:=6;posfy:=5;salto:=4;hoja:=1;
posfy:=Logo(posfx,posfy,hoja);
posfy:=posfy + 100;
posfy:=Logo(posfx,posfy,hoja);

     hoja:=hoja+1;
     posfx:=6;posfy:=5;salto:=4;
     RvOrden.BaseReport.NewPage;
     posfy:=Logo(posfx,posfy,hoja);
end;

procedure TConfirma_InhuVen.ImpClick(Sender: TObject);
var gf:integer;
begin
 if  PC1.Pages[3].TabVisible=true then begin
    gf:=messagedlgpos('Desea Imprimir los Datos de la INHUMACION?',mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
    if gf = 1 then begin
      titulo:='REGISTRO DE INHUMACION';
       rvd.Execute;
    end;
 end;
 if  PC1.Pages[2].TabVisible=true then begin
//    gf:=messagedlgpos('Desea Imprimir los Datos del SERVICIO?',mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
//    if gf = 1 then begin
//      titulo:='REGISTRO DE SERVICIOS';
//       rvd.Execute;
//    end;
 end;
 if  PC1.Pages[1].TabVisible=true then begin
    gf:=messagedlgpos('Desea Imprimir los Datos de la VENTA DE PARCELA y SERVICIO?',mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
    if gf = 1 then begin
       titulo:='REGISTRO DE PARCELAS';
       rvd.Execute;
    end;
 end;
end;

procedure TConfirma_InhuVen.RvDPrint(Sender: TObject);
var posfx,posfy,posfin,pos_y,salto:double;
    hoja,m,t:integer;
   Imagen3:TBitMap;

   Function Logo(posx,posy:double;vaf:integer):double;
   var Imagen1:TBitMap;
       Fuente,PathLogo:string;
       Tamanio,hoja:integer;
   begin
   with RvD do begin
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
     BaseReport.PrintXY(posx+140,posy+15,modulo2.INI1.ReadString('Titulo3 Facturas','Titulo0','')+ ' - Parque de los Recuerdos');
     BaseReport.SetFont('Arial Black',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+30);
     BaseReport.PrintXY(posx+5,posy+27,titulo);
   end;
   Logo:=posy+20;
   end;

   Function Datos(posx,posy:double):double;
   var posn,salto:double;
       j,mn,m,t:integer;
       Imagen2:TBitMap;
   begin
    with RvD do begin
     if  PC1.Pages[3].TabVisible=true then begin  // inhumacion
      salto:=5;
      BaseReport.RoundRect(posx+60,posy+11,posx+130,posy+16,5,5);
      BaseReport.PrintXY(posx+70,posy+15,'DATOS DEL FALLECIDO');
      BaseReport.SetFont('Arial',9);
      BaseReport.PrintXY(posx+4,posy+20,'Nombre:');
      BaseReport.PrintXY(posx+90,posy+20,'TipoDoc:');
      BaseReport.PrintXY(posx+125,posy+20,'Nº DNI:');
      BaseReport.PrintXY(posx+4,posy+25,'Fecha Nac:');
      BaseReport.PrintXY(posx+40,posy+25,'Estado Civil');
      BaseReport.PrintXY(posx+75,posy+25,'Nacionalidad:');
      BaseReport.PrintXY(posx+4,posy+30,'Hora Fallecimiento:');
      BaseReport.PrintXY(posx+40,posy+30,'Fecha Defuncion');
      BaseReport.PrintXY(posx+75,posy+30,'Nº Seccion:');
      BaseReport.PrintXY(posx+4,posy+35,'Nº Acta:');
      BaseReport.PrintXY(posx+40,posy+35,'Nº Folio:');
      BaseReport.PrintXY(posx+75,posy+35,'Nº Tomo:');
      BaseReport.PrintXY(posx+105,posy+35,'Religion:');

      BaseReport.SetFont('Arial Black',8);
      BaseReport.PrintXY(posx+10,posy+20,trim(d9.Text));
      BaseReport.PrintXY(posx+93,posy+20,trim(d28.Text));
      BaseReport.PrintXY(posx+128,posy+20,trim(d8.Text));
      BaseReport.PrintXY(posx+10,posy+25,trim(d31.Text));
      BaseReport.PrintXY(posx+55,posy+25,trim(d29.Text));
      BaseReport.PrintXY(posx+85,posy+25,trim(d30.Text));
      BaseReport.PrintXY(posx+10,posy+30,trim(d14.Text));
      BaseReport.PrintXY(posx+55,posy+30,trim(d12.Text));
      BaseReport.PrintXY(posx+85,posy+30,trim(d17.Text));
      BaseReport.PrintXY(posx+10,posy+35,trim(d18.Text));
      BaseReport.PrintXY(posx+55,posy+35,trim(d19.Text));
      BaseReport.PrintXY(posx+85,posy+35,trim(d20.Text));
      BaseReport.PrintXY(posx+110,posy+35,trim(dre.Text));

      posy:=posy + 20;
      BaseReport.RoundRect(posx+10,posy+11,posx+130,posy+16,5,5);
      BaseReport.PrintXY(posx+20,posy+15,'DATOS TITULAR, SOLICITANTE Y RESPONSABLE');
      BaseReport.SetFont('Arial',9);
      BaseReport.PrintXY(posx+4,posy+20,'Nombre Titular:');
      BaseReport.PrintXY(posx+65,posy+20,'Tipo Doc.:');
      BaseReport.PrintXY(posx+95,posy+20,'Nº DNI:');
      BaseReport.PrintXY(posx+4,posy+25,'Nombre Solicitante:');
      BaseReport.PrintXY(posx+4,posy+30,'Nomnre Responsable:');
      BaseReport.PrintXY(posx+65,posy+30,'Tipo Doc.:');
      BaseReport.PrintXY(posx+95,posy+30,'Nº DNI:');
      BaseReport.SetFont('Arial Black',8);
      BaseReport.PrintXY(posx+22,posy+20,trim(d7.Text));
      BaseReport.PrintXY(posx+85,posy+20,trim(d21.Text));
      BaseReport.PrintXY(posx+100,posy+20,trim(d6.Text));
      BaseReport.PrintXY(posx+22,posy+25,trim(d10.Text));
      BaseReport.PrintXY(posx+22,posy+30,trim(dbedit1.Text));
      BaseReport.PrintXY(posx+85,posy+30,trim(dbedit6.Text));
      BaseReport.PrintXY(posx+100,posy+30,trim(dbedit5.Text));

      posy:=posy + 20;
      BaseReport.RoundRect(posx+10,posy+11,posx+130,posy+16,5,5);
      BaseReport.PrintXY(posx+20,posy+15,'REFERENCIA DEL SERVICIO DEL PARQUE');
      BaseReport.SetFont('Arial',9);
      BaseReport.PrintXY(posx+4,posy+20,'Fecha Inhumacion:');
      BaseReport.PrintXY(posx+65,posy+20,'Hora Llegada:');
      BaseReport.PrintXY(posx+95,posy+20,'Nº Titulo:');
      BaseReport.PrintXY(posx+4,posy+25,'Nº nivel:');
      BaseReport.PrintXY(posx+65,posy+25,'Posicion:');
      BaseReport.PrintXY(posx+95,posy+25,'Hora Salida:');
      BaseReport.PrintXY(posx+4,posy+30,'Objeto:');
      BaseReport.PrintXY(posx+65,posy+30,'TipoServicio:');
      BaseReport.PrintXY(posx+95,posy+30,'Cocheria:');

      BaseReport.SetFont('Arial Black',8);
      BaseReport.PrintXY(posx+22,posy+20,trim(d13.Text));
      BaseReport.PrintXY(posx+85,posy+20,trim(d16.Text));
      BaseReport.PrintXY(posx+100,posy+20,trim(d2.Text));
      BaseReport.PrintXY(posx+22,posy+25,trim(d3.Text));
      BaseReport.PrintXY(posx+85,posy+25,trim(d4.Text));
      BaseReport.PrintXY(posx+100,posy+25,trim(d15.Text));
      BaseReport.PrintXY(posx+22,posy+30,trim(d5.Text));
      BaseReport.PrintXY(posx+85,posy+30,trim(dt.Text));
      BaseReport.PrintXY(posx+100,posy+30,trim(dc.Text));

      posy:=posy + 20;
      BaseReport.RoundRect(posx+10,posy+11,posx+130,posy+16,5,5);
      BaseReport.PrintXY(posx+20,posy+15,'DATOS DE LOS TESTIGOS');
      BaseReport.SetFont('Arial',9);
      with RvD do begin
       BaseReport.Rectangle(posx+4,posy,posx+195,posy+7);
       BaseReport.Rectangle(posx+4,posy+7,posx+195,posy+11);
       BaseReport.Rectangle(posx+35,posy+7,posx+77,posy+11);
       BaseReport.Rectangle(posx+93,posy+7,posx+107,posy+11);
       BaseReport.SetFont('Arial',8);
       BaseReport.PrintXY(posx+20,posy+10,'Nombre');
       BaseReport.PrintXY(posx+48,posy+10,'Nº DNI');
       BaseReport.PrintXY(posx+80,posy+10,'TipoTestigo');
       BaseReport.PrintXY(posx+95,posy+10,'Parentesco');
       BaseReport.PrintXY(posx+150,posy+10,'Cuif');
       posn:=posy+10;
       salto:=0;
       for t:=1 to  DataSource3.DataSet.RecordCount  do begin
        DataSource3.DataSet.RecNo:=t;
        BaseReport.SetFont('Arial',7);
        BaseReport.PrintXY(posx+5,posn+salto,trim(DataSource3.DataSet.Fields[1].AsString));
        BaseReport.PrintXY(posx+36,posn+salto,trim(DataSource3.DataSet.Fields[2].AsString));
        BaseReport.PrintXY(posx+78,posn+salto,trim(DataSource3.DataSet.Fields[4].AsString));
        BaseReport.PrintXY(posx+98,posn+salto,trim(DataSource3.DataSet.Fields[5].AsString));
        BaseReport.PrintXY(posx+108,posn+salto,trim(DataSource3.DataSet.Fields[7].AsString));
       end;
       BaseReport.Rectangle(posx+4,posy+11,posx+195,posn+salto+1);
       BaseReport.Rectangle(posx+35,posy+11,posx+77,posn+salto+1);
       BaseReport.Rectangle(posx+93,posy+11,posx+107,posn+salto+1);
      end;
     end;
     if  PC1.Pages[2].TabVisible=true then begin   // ventas y servicios
//        salto:=5;
//        BaseReport.RoundRect(posx+60,posy+11,posx+130,posy+16,5,5);
//        BaseReport.PrintXY(posx+70,posy+15,'DATOS DEL SERVICIO');
//        BaseReport.SetFont('Arial',9);
//        BaseReport.PrintXY(posx+4,posy+20,'Nº Accion:');
//        BaseReport.PrintXY(posx+40,posy+20,'Fecha Servicio:');
//        BaseReport.PrintXY(posx+75,posy+20,'Tipo Servicio:');
//        BaseReport.PrintXY(posx+4,posy+25,'Obsserv:');
//        BaseReport.PrintXY(posx+4,posy+30,'Nivel:');
//        BaseReport.PrintXY(posx+50,posy+30,'Posicion:');
//        BaseReport.PrintXY(posx+80,posy+30,'Tipo Objeto:');
//        BaseReport.SetFont('Arial',8);
//        BaseReport.PrintXY(posx+19,posy+25,trim(observ.Text));
//        BaseReport.SetFont('Arial Black',8);
//        BaseReport.PrintXY(posx+19,posy+20,trim(serv2.Text));
//        BaseReport.PrintXY(posx+58,posy+20,trim(serv3.Text));
//        BaseReport.PrintXY(posx+98,posy+20,trim(serv4.Text));
//        BaseReport.PrintXY(posx+15,posy+25,trim(serv5.Text));
//        BaseReport.PrintXY(posx+15,posy+30,trim(nivel.Text));
//        BaseReport.PrintXY(posx+65,posy+30,trim(posi.Text));
//        BaseReport.PrintXY(posx+95,posy+30,trim(objeto.Text));
//
//        posy:=posy + 20;
//        BaseReport.RoundRect(posx+60,posy+11,posx+130,posy+16,5,5);
//        BaseReport.PrintXY(posx+70,posy+15,'DATOS PARCELARIOS');
//        BaseReport.SetFont('Arial',9);
//        BaseReport.PrintXY(posx+4,posy+20,'Nº Accion:');
//        BaseReport.PrintXY(posx+65,posy+20,'Nº Titulo:');
//        BaseReport.PrintXY(posx+95,posy+20,'Sector:');
//        BaseReport.PrintXY(posx+140,posy+20,'Plaza:');
//        BaseReport.PrintXY(posx+4,posy+25,'Parcela:');
//        //BaseReport.PrintXY(posx+60,posy+25,'Banco/Tarjeta:');
//        //BaseReport.PrintXY(posx+135,posy+25,'Titular:');
//        BaseReport.SetFont('Arial Black',8);
//        BaseReport.PrintXY(posx+22,posy+20,trim(dpser1.Text));
//        BaseReport.PrintXY(posx+85,posy+20,trim(dpser2.Text));
//        BaseReport.PrintXY(posx+115,posy+20,trim(dpser4.Text));
//        BaseReport.PrintXY(posx+165,posy+20,trim(dpser5.Text));
//        BaseReport.PrintXY(posx+25,posy+25,trim(dpser6.Text));
//        //BaseReport.PrintXY(posx+85,posy+25,trim(banco.Text));
//        //BaseReport.PrintXY(posx+150,posy+25,trim(titular.Text));
//
//        posy:=posy + 20;
//        BaseReport.RoundRect(posx+60,posy+11,posx+130,posy+16,5,5);
//        BaseReport.PrintXY(posx+70,posy+15,'Detalle de Pago de la Venta');
//        posy:=posy + 20;
//        with RvD do begin
//          BaseReport.Rectangle(posx+4,posy-4,posx+200,posy+1);
//          BaseReport.Rectangle(posx+28,posy-4,posx+200,posy+1);
//          BaseReport.Rectangle(posx+55,posy-4,posx+200,posy+1);
//          BaseReport.Rectangle(posx+90,posy-4,posx+200,posy+1);
//          BaseReport.Rectangle(posx+116,posy-4,posx+200,posy+1);
//          BaseReport.Rectangle(posx+143,posy-4,posx+200,posy+1);
//          BaseReport.PrintXY(posx+6,posy,'NROCUOTA');
//          BaseReport.PrintXY(posx+30,posy,'PERIODO');
//          BaseReport.PrintXY(posx+57,posy,'FECHAVTO.');
//          BaseReport.PrintXY(posx+92,posy,'MONTO');
//          BaseReport.PrintXY(posx+118,posy,'INTETES');
//          BaseReport.PrintXY(posx+145,posy,'CAPITAL');
//          for m:=1 to GRILLASER.RowCount-1 do begin
//            BaseReport.SetFont('Arial',8);
//            BaseReport.PrintXY(posx+7,posy+5,trim(GRILLASER.Cells[0,m]));
//            BaseReport.PrintXY(posx+32,posy+5,trim(GRILLASER.Cells[1,m]));
//            BaseReport.PrintXY(posx+59,posy+5,trim(GRILLASER.Cells[2,m]));
//            BaseReport.PrintXY(posx+93,posy+5,trim(GRILLASER.Cells[3,m]));
//            BaseReport.PrintXY(posx+119,posy+5,trim(GRILLASER.Cells[4,m]));
//            BaseReport.PrintXY(posx+147,posy+5,trim(GRILLASER.Cells[5,m]));
//            BaseReport.Rectangle(posx+4,posy+1,posx+200,posy-4);
//            BaseReport.Rectangle(posx+28,posy+1,posx+200,posy-4);
//            BaseReport.Rectangle(posx+55,posy+1,posx+200,posy-4);
//            BaseReport.Rectangle(posx+90,posy+1,posx+200,posy-4);
//            BaseReport.Rectangle(posx+116,posy+1,posx+200,posy-4);
//            BaseReport.Rectangle(posx+143,posy+1,posx+200,posy-4);
//            posy:=posy + salto;
//          end;
//        end;
//        posy:=posy + 20;
//        BaseReport.SetFont('Arial Black',8);
//        BaseReport.RoundRect(posx+60,posy+11,posx+130,posy+16,5,5);
//        BaseReport.PrintXY(posx+70,posy+15,'Lista de Titulares Activos');
//        posy:=posy + 20;
//        with RvD do begin
//          BaseReport.Rectangle(posx+4,posy-4,posx+200,posy+1);
//          BaseReport.Rectangle(posx+28,posy-4,posx+200,posy+1);
//          BaseReport.Rectangle(posx+55,posy-4,posx+200,posy+1);
//          BaseReport.Rectangle(posx+90,posy-4,posx+200,posy+1);
//          BaseReport.Rectangle(posx+116,posy-4,posx+200,posy+1);
//          BaseReport.Rectangle(posx+143,posy-4,posx+200,posy+1);
//          BaseReport.PrintXY(posx+6,posy,'TipoDoc');
//          BaseReport.PrintXY(posx+30,posy,'Nº Dni');
//          BaseReport.PrintXY(posx+57,posy,'Nombre');
//          BaseReport.PrintXY(posx+92,posy,'NroTitular');
//          BaseReport.PrintXY(posx+118,posy,'Domicilio');
//
//          for t:=1 to GRILLAT.RowCount-1 do begin
//            BaseReport.SetFont('Arial',8);
//            BaseReport.PrintXY(posx+7,posy+5,trim(GRILLAT.Cells[3,t]));
//            BaseReport.PrintXY(posx+32,posy+5,trim(GRILLAT.Cells[4,t]));
//            BaseReport.PrintXY(posx+59,posy+5,trim(GRILLAT.Cells[2,t]));
//            BaseReport.PrintXY(posx+93,posy+5,trim(GRILLAT.Cells[6,t]));
//            BaseReport.PrintXY(posx+119,posy+5,trim(GRILLAT.Cells[5,t]));
//            BaseReport.Rectangle(posx+4,posy+1,posx+200,posy-4);
//            BaseReport.Rectangle(posx+28,posy+1,posx+200,posy-4);
//            BaseReport.Rectangle(posx+55,posy+1,posx+200,posy-4);
//            BaseReport.Rectangle(posx+90,posy+1,posx+200,posy-4);
//            BaseReport.Rectangle(posx+116,posy+1,posx+200,posy-4);
//            posy:=posy + salto;
//          end;
//        end;
     end;
     if  PC1.Pages[1].TabVisible=true then begin    //ventas
        Imagen2 := TBitMap.Create;  // creo la variable Imagen1
        //if confirmavta.Enabled then Imagen2.LoadFromFile(modulo2.path_todo + '\Imagenes\VtaNC.bmp')
        //   else Imagen2.LoadFromFile(modulo2.path_todo + '\Imagenes\VtaSC.bmp');
        //BaseReport.PrintBitmapRect(posx+30,posy+20,posx+170,posy+180,Imagen2);
        salto:=5;
        BaseReport.RoundRect(posx+60,posy+11,posx+130,posy+16,5,5);
        BaseReport.PrintXY(posx+70,posy+15,'DATOS DE LA VENTA');
        if confirmavta.Enabled then begin
          BaseReport.SetFont('Arial black',14);
          BaseReport.PrintXY(posx+80,posy+8,'VENTA NO CONFIRMADA');
        end
        else begin
          BaseReport.SetFont('Arial black',14);
          BaseReport.PrintXY(posx+80,posy+8,'VENTA CONFIRMADA');
        end;
        BaseReport.SetFont('Arial',9);
        BaseReport.PrintXY(posx+4,posy+20,'Nº Accion:');
        BaseReport.PrintXY(posx+40,posy+20,'Nº Titulo:');
        BaseReport.PrintXY(posx+75,posy+20,'Sector:');
        BaseReport.PrintXY(posx+95,posy+20,'Parcela:');
        BaseReport.PrintXY(posx+130,posy+20,'Plaza:');
        BaseReport.PrintXY(posx+4,posy+25,'Obsserv.:');
        BaseReport.SetFont('Arial',8);
        BaseReport.PrintXY(posx+19,posy+25,trim(observ.Text));
        BaseReport.SetFont('Arial Black',8);
        BaseReport.PrintXY(posx+19,posy+20,trim(dv1.Text));
        BaseReport.PrintXY(posx+53,posy+20,trim(dv2.Text));
        BaseReport.PrintXY(posx+88,posy+20,trim(dv4.Text));
        BaseReport.PrintXY(posx+109,posy+20,trim(dv6.Text));
        BaseReport.PrintXY(posx+140,posy+20,trim(dv5.Text));
        posy:=posy + 20;
        BaseReport.RoundRect(posx+60,posy+11,posx+130,posy+16,5,5);
        BaseReport.PrintXY(posx+70,posy+15,'FORMA DE PAGO DE LA VENTA');
        BaseReport.SetFont('Arial',9);
        BaseReport.PrintXY(posx+4,posy+20,'Modo Pago:');
        BaseReport.PrintXY(posx+70,posy+20,'Cant. Cuotas:');
        BaseReport.PrintXY(posx+100,posy+20,'Valor Coutas:');
        BaseReport.PrintXY(posx+140,posy+20,'Comprobante:');
        BaseReport.PrintXY(posx+4,posy+25,'Nro Cheque:');
        BaseReport.PrintXY(posx+60,posy+25,'Banco/Tarjeta:');
        BaseReport.PrintXY(posx+135,posy+25,'Titular:');
        BaseReport.SetFont('Arial Black',8);
        BaseReport.PrintXY(posx+22,posy+20,trim(modp.Text));
        BaseReport.PrintXY(posx+90,posy+20,trim(cc.Text));
        BaseReport.PrintXY(posx+123,posy+20,'$ ' + trim(vc.Text));
        BaseReport.PrintXY(posx+165,posy+20,trim(comprobante.Text));
        BaseReport.PrintXY(posx+25,posy+25,trim(cheque.Text));
        BaseReport.PrintXY(posx+85,posy+25,trim(banco.Text));
        BaseReport.PrintXY(posx+150,posy+25,trim(titular.Text));
        posy:=posy + 20;
        BaseReport.RoundRect(posx+60,posy+11,posx+130,posy+16,5,5);
        BaseReport.PrintXY(posx+70,posy+15,'Detalle de Pago de la Venta');
        posy:=posy + 20;
        with RvD do begin
          BaseReport.Rectangle(posx+4,posy-4,posx+200,posy+1);
          BaseReport.Rectangle(posx+28,posy-4,posx+200,posy+1);
          BaseReport.Rectangle(posx+55,posy-4,posx+200,posy+1);
          BaseReport.Rectangle(posx+90,posy-4,posx+200,posy+1);
          BaseReport.Rectangle(posx+116,posy-4,posx+200,posy+1);
          BaseReport.Rectangle(posx+143,posy-4,posx+200,posy+1);
          BaseReport.Rectangle(posx+165,posy-4,posx+200,posy+1);
          BaseReport.PrintXY(posx+6,posy,'NROCUOTA');
          BaseReport.PrintXY(posx+30,posy,'PERIODO');
          BaseReport.PrintXY(posx+57,posy,'FECHAVTO.');
          BaseReport.PrintXY(posx+92,posy,'MONTO');
          BaseReport.PrintXY(posx+118,posy,'INTETES');
          BaseReport.PrintXY(posx+145,posy,'TIPOCUOTA');
          BaseReport.PrintXY(posx+166,posy,'FORMAPAGO');
          for mn:=1 to GRILLA5.RowCount-1 do begin
            BaseReport.SetFont('Arial',8);
            BaseReport.PrintXY(posx+7,posy+5,trim(GRILLA5.Cells[1,mn]));
            BaseReport.PrintXY(posx+32,posy+5,trim(GRILLA5.Cells[2,mn]));
            BaseReport.PrintXY(posx+59,posy+5,trim(GRILLA5.Cells[3,mn]));
            BaseReport.PrintXY(posx+93,posy+5,'$ ' + trim(GRILLA5.Cells[4,mn]));
            BaseReport.PrintXY(posx+119,posy+5,'$ ' + trim(GRILLA5.Cells[5,mn]));
            BaseReport.PrintXY(posx+147,posy+5,trim(GRILLA5.Cells[7,mn]));
            BaseReport.PrintXY(posx+166,posy+5,trim(GRILLA5.Cells[8,mn]));
            BaseReport.Rectangle(posx+4,posy+1,posx+200,posy-4);
            BaseReport.Rectangle(posx+28,posy+1,posx+200,posy-4);
            BaseReport.Rectangle(posx+55,posy+1,posx+200,posy-4);
            BaseReport.Rectangle(posx+90,posy+1,posx+200,posy-4);
            BaseReport.Rectangle(posx+116,posy+1,posx+200,posy-4);
            BaseReport.Rectangle(posx+143,posy+1,posx+200,posy-4);
            BaseReport.Rectangle(posx+165,posy+1,posx+200,posy-4);
            posy:=posy + salto;
          end;
        end;

        posy:=posy + 5;
        BaseReport.SetFont('Arial Black',8);
        BaseReport.RoundRect(posx+60,posy+11,posx+130,posy+16,5,5);
        BaseReport.PrintXY(posx+77,posy+15,'Lista de Titulares');
        BaseReport.Rectangle(posx+4,posy+18,posx+200,posy+22);
        //posy:=posy + 5;
        BaseReport.SetFont('Arial',8);
        BaseReport.PrintXY(posx+5,posy+22,'TipoDoc');
        BaseReport.PrintXY(posx+18,posy+22,'Nº Dni');
        BaseReport.PrintXY(posx+35,posy+22,'Nombre');
        BaseReport.PrintXY(posx+95,posy+22,'TipoTitular');
        BaseReport.PrintXY(posx+130,posy+22,'Domicilio');
        posn:=posy + 22;
        for j:=1 to  DataSource2.DataSet.RecordCount do begin
          DataSource2.DataSet.RecNo:=j;
          salto:=j*4;
          BaseReport.SetFont('Arial',8);
          BaseReport.PrintXY(posx+5,posn+salto,trim(DataSource2.DataSet.Fields[2].AsString));
          BaseReport.PrintXY(posx+19,posn+salto,trim(DataSource2.DataSet.Fields[0].AsString));
          BaseReport.PrintXY(posx+36,posn+salto,trim(DataSource2.DataSet.Fields[3].AsString));
          BaseReport.PrintXY(posx+95,posn+salto,trim(DataSource2.DataSet.Fields[4].AsString));
          BaseReport.PrintXY(posx+131,posn+salto,trim(DataSource2.DataSet.Fields[5].AsString));
        end;
        posn:=posn + salto + 1;
        BaseReport.Rectangle(posx+4,posy+18,posx+200,posn);
        BaseReport.Rectangle(posx+17,posy+18,posx+200,posn);
        BaseReport.Rectangle(posx+34,posy+18,posx+200,posn);
        BaseReport.Rectangle(posx+94,posy+18,posx+200,posn);
        BaseReport.Rectangle(posx+129,posy+18,posx+200,posn);
     end;
    end;
   end;

begin
 Imagen3 := TBitMap.Create;  // creo la variable Imagen1
 posfx:=6;posfy:=5;salto:=4;hoja:=1;
 posfy:=Logo(posfx,posfy,hoja);
 posfy:=Datos(posfx,posfy);
 RvD.BaseReport.NewPage;
 posfy:=Logo(posfx,posfy,hoja);
/// imprimo los datos del servicio
 salto:=5;
  //if confirmaserv.Enabled then Imagen3.LoadFromFile(modulo2.path_todo + '\Imagenes\ServNC.bmp')
  //   else Imagen3.LoadFromFile(modulo2.path_todo + '\Imagenes\ServSC.bmp');
  //RvD.BaseReport.PrintBitmapRect(posfx+30,posfy+20,posfx+170,posfy+180,Imagen3);
  RvD.BaseReport.RoundRect(posfx+60,posfy+11,posfx+130,posfy+16,5,5);
  RvD.BaseReport.PrintXY(posfx+70,posfy+15,'DATOS DEL SERVICIO');
  if confirmaserv.Enabled then begin
    RvD.BaseReport.SetFont('Arial black',14);
    RvD.BaseReport.PrintXY(posfx+80,posfy+8,'SERVICIO NO CONFIRMADO');
  end
  else begin
    RvD.BaseReport.SetFont('Arial black',14);
    RvD.BaseReport.PrintXY(posfx+80,posfy+8,'SERVICIO CONFIRMAD0');
  end;
  RvD.BaseReport.SetFont('Arial',9);
  RvD.BaseReport.PrintXY(posfx+4,posfy+20,'Nº Accion:');
  RvD.BaseReport.PrintXY(posfx+40,posfy+20,'Fecha Servicio:');
  RvD.BaseReport.PrintXY(posfx+90,posfy+20,'Tipo Servicio:');
  RvD.BaseReport.PrintXY(posfx+4,posfy+25,'Obsserv:');
  RvD.BaseReport.PrintXY(posfx+4,posfy+30,'Nivel:');
  RvD.BaseReport.PrintXY(posfx+50,posfy+30,'Posicion:');
  RvD.BaseReport.PrintXY(posfx+80,posfy+30,'Tipo Objeto:');
  RvD.BaseReport.SetFont('Arial',8);
  //RvD.BaseReport.PrintXY(posfx+19,posfy+25,trim(observ.Text));
  //RvD.BaseReport.SetFont('Arial Black',8);
  RvD.BaseReport.PrintXY(posfx+19,posfy+20,trim(serv2.Text));
  RvD.BaseReport.PrintXY(posfx+63,posfy+20,trim(serv3.Text));
  RvD.BaseReport.PrintXY(posfx+110,posfy+20,trim(serv4.Text));
  RvD.BaseReport.PrintXY(posfx+20,posfy+25,trim(serv5.Text));
  RvD.BaseReport.PrintXY(posfx+15,posfy+30,trim(nivel.Text));
  RvD.BaseReport.PrintXY(posfx+65,posfy+30,trim(posi.Text));
  RvD.BaseReport.PrintXY(posfx+100,posfy+30,trim(objeto.Text));

  posfy:=posfy + 30;
  RvD.BaseReport.RoundRect(posfx+60,posfy+11,posfx+130,posfy+16,5,5);
  RvD.BaseReport.SetFont('Arial Black',8);
  RvD.BaseReport.PrintXY(posfx+70,posfy+15,'DATOS PARCELARIOS');
  RvD.BaseReport.SetFont('Arial',9);
  RvD.BaseReport.PrintXY(posfx+4,posfy+20,'Nº Accion:');
  RvD.BaseReport.PrintXY(posfx+65,posfy+20,'Nº Titulo:');
  RvD.BaseReport.PrintXY(posfx+95,posfy+20,'Sector:');
  RvD.BaseReport.PrintXY(posfx+140,posfy+20,'Plaza:');
  RvD.BaseReport.PrintXY(posfx+4,posfy+25,'Parcela:');
  //BaseReport.PrintXY(posx+60,posy+25,'Banco/Tarjeta:');
  //BaseReport.PrintXY(posx+135,posy+25,'Titular:');
  RvD.BaseReport.SetFont('Arial Black',8);
  RvD.BaseReport.PrintXY(posfx+22,posfy+20,trim(dpser1.Text));
  RvD.BaseReport.PrintXY(posfx+85,posfy+20,trim(dpser2.Text));
  RvD.BaseReport.PrintXY(posfx+115,posfy+20,trim(dpser4.Text));
  RvD.BaseReport.PrintXY(posfx+165,posfy+20,trim(dpser5.Text));
  RvD.BaseReport.PrintXY(posfx+25,posfy+25,trim(dpser6.Text));
  //BaseReport.PrintXY(posx+85,posy+25,trim(banco.Text));
  //BaseReport.PrintXY(posx+150,posy+25,trim(titular.Text));

  posfy:=posfy + 20;
  RvD.BaseReport.RoundRect(posfx+60,posfy+11,posfx+130,posfy+16,5,5);
  RvD.BaseReport.PrintXY(posfx+70,posfy+15,'FORMA DE PAGO DE LA VENTA');
  RvD.BaseReport.SetFont('Arial',9);
  RvD.BaseReport.PrintXY(posfx+4,posfy+20,'Modo Pago:');
  RvD.BaseReport.PrintXY(posfx+70,posfy+20,'Cant. Cuotas:');
  RvD.BaseReport.PrintXY(posfx+100,posfy+20,'Valor Coutas:');
  RvD.BaseReport.PrintXY(posfx+140,posfy+20,'Comprobante:');
  RvD.BaseReport.PrintXY(posfx+4,posfy+25,'Nro Cheque:');
  RvD.BaseReport.PrintXY(posfx+60,posfy+25,'Banco/Tarjeta:');
  RvD.BaseReport.PrintXY(posfx+135,posfy+25,'Titular:');
  RvD.BaseReport.SetFont('Arial Black',8);
  RvD.BaseReport.PrintXY(posfx+22,posfy+20,trim(mps.Text));
  RvD.BaseReport.PrintXY(posfx+90,posfy+20,trim(ccs.Text));
  RvD.BaseReport.PrintXY(posfx+123,posfy+20,'$ ' + trim(vcs.Text));
  RvD.BaseReport.PrintXY(posfx+165,posfy+20,trim(ncs.Text));
  RvD.BaseReport.PrintXY(posfx+25,posfy+25,trim(nrocs.Text));
  RvD.BaseReport.PrintXY(posfx+85,posfy+25,trim(bancos.Text));
  RvD.BaseReport.PrintXY(posfx+150,posfy+25,trim(tits.Text));
  posfy:=posfy + 20;
  RvD.BaseReport.RoundRect(posfx+60,posfy+11,posfx+130,posfy+16,5,5);
  RvD.BaseReport.PrintXY(posfx+70,posfy+15,'Detalle de Pago de la Venta');
  posfy:=posfy + 20;
  with RvD do begin
    BaseReport.Rectangle(posfx+4,posfy-4,posfx+200,posfy+1);
    BaseReport.Rectangle(posfx+28,posfy-4,posfx+200,posfy+1);
    BaseReport.Rectangle(posfx+55,posfy-4,posfx+200,posfy+1);
    BaseReport.Rectangle(posfx+90,posfy-4,posfx+200,posfy+1);
    BaseReport.Rectangle(posfx+123,posfy-4,posfx+200,posfy+1);
    BaseReport.Rectangle(posfx+143,posfy-4,posfx+200,posfy+1);
    BaseReport.Rectangle(posfx+165,posfy-4,posfx+200,posfy+1);
    BaseReport.PrintXY(posfx+6,posfy,'IDSERVICIO');
    BaseReport.PrintXY(posfx+30,posfy,'NROCUOTA');
    BaseReport.PrintXY(posfx+57,posfy,'PERIODO');
    BaseReport.PrintXY(posfx+92,posfy,'VENCIMIENTOS');
    BaseReport.PrintXY(posfx+125,posfy,'MONTO');
    BaseReport.PrintXY(posfx+145,posfy,'TIPOCUOTA');
    BaseReport.PrintXY(posfx+166,posfy,'FORMAPAGO');
    for m:=1 to GRILLASER.RowCount-1 do begin
      BaseReport.SetFont('Arial',8);
      BaseReport.PrintXY(posfx+7,posfy+5,trim(GRILLASER.Cells[0,m]));
      BaseReport.PrintXY(posfx+32,posfy+5,trim(GRILLASER.Cells[1,m]));
      BaseReport.PrintXY(posfx+59,posfy+5,trim(GRILLASER.Cells[2,m]));
      BaseReport.PrintXY(posfx+93,posfy+5,trim(GRILLASER.Cells[3,m]));
      BaseReport.PrintXY(posfx+125,posfy+5,'$ ' +trim(GRILLASER.Cells[4,m]));
      BaseReport.PrintXY(posfx+147,posfy+5,trim(GRILLASER.Cells[7,m]));
      BaseReport.PrintXY(posfx+166,posfy+5,trim(GRILLASER.Cells[8,m]));
      BaseReport.Rectangle(posfx+4,posfy+1,posfx+200,posfy-4);
      BaseReport.Rectangle(posfx+28,posfy+1,posfx+200,posfy-4);
      BaseReport.Rectangle(posfx+55,posfy+1,posfx+200,posfy-4);
      BaseReport.Rectangle(posfx+90,posfy+1,posfx+200,posfy-4);
      BaseReport.Rectangle(posfx+123,posfy+1,posfx+200,posfy-4);
      BaseReport.Rectangle(posfx+143,posfy+1,posfx+200,posfy-4);
      BaseReport.Rectangle(posfx+165,posfy-4,posfx+200,posfy+1);
      posfy:=posfy + salto;
    end;
  end;
  posfy:=posfy - 5;
  RvD.BaseReport.SetFont('Arial Black',8);
  RvD.BaseReport.RoundRect(posfx+60,posfy+11,posfx+130,posfy+16,5,5);
  RvD.BaseReport.PrintXY(posfx+70,posfy+15,'Lista de Titulares Activos');
  posfy:=posfy + 20;
  with RvD do begin
    BaseReport.Rectangle(posfx+4,posfy-4,posfx+200,posfy+1);
    BaseReport.Rectangle(posfx+24,posfy-4,posfx+200,posfy+1);
    BaseReport.Rectangle(posfx+45,posfy-4,posfx+200,posfy+1);
    BaseReport.Rectangle(posfx+98,posfy-4,posfx+200,posfy+1);
    BaseReport.Rectangle(posfx+116,posfy-4,posfx+200,posfy+1);
    //BaseReport.Rectangle(posfx+143,posfy-4,posfx+200,posfy+1);
    BaseReport.PrintXY(posfx+6,posfy,'TipoDoc');
    BaseReport.PrintXY(posfx+26,posfy,'Nº Dni');
    BaseReport.PrintXY(posfx+47,posfy,'Nombre');
    BaseReport.PrintXY(posfx+101,posfy,'NroTit.');
    BaseReport.PrintXY(posfx+118,posfy,'Domicilio');
    for t:=1 to GRILLAT.RowCount-1 do begin
      BaseReport.SetFont('Arial',8);
      BaseReport.PrintXY(posfx+7,posfy+5,trim(GRILLAT.Cells[3,t]));
      BaseReport.PrintXY(posfx+26,posfy+5,trim(GRILLAT.Cells[1,t]));
      BaseReport.PrintXY(posfx+47,posfy+5,trim(GRILLAT.Cells[2,t]));
      BaseReport.PrintXY(posfx+101,posfy+5,trim(GRILLAT.Cells[6,t]));
      BaseReport.PrintXY(posfx+119,posfy+5,trim(GRILLAT.Cells[5,t]));
      BaseReport.Rectangle(posfx+4,posfy+1,posfx+200,posfy-4);
      BaseReport.Rectangle(posfx+24,posfy+1,posfx+200,posfy-4);
      BaseReport.Rectangle(posfx+45,posfy+1,posfx+200,posfy-4);
      BaseReport.Rectangle(posfx+98,posfy+1,posfx+200,posfy-4);
      BaseReport.Rectangle(posfx+116,posfy+1,posfx+200,posfy-4);
      posfy:=posfy + salto;
    end;
  end;
end;

procedure TConfirma_InhuVen.anulavtaClick(Sender: TObject);
var gf:integer;
var txtw:widestring;
var m:boolean;
begin
 gf:=messagedlgpos('Desea ANULAR esta VENTA de PARCELA Seleccionada??',mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
  if gf = 1 then begin
    ParcelasVentas:=TParcelasVentas.Create(nil);
    ParcelasVentas.ConnectionString:=modulo2.Conexion;
    txtw:='UPDATE ParcelasVentas SET anulado = 1,  Usuanula=' + inttostr(modulo2.nro_usu)
         + ', fechaanula= ' + chr(39) + strcut(Fec_System(),10) + chr(39)
         + ' , MotivoAnula= ' + chr(39) + motivo + chr(39) + ' WHERE (Idventa=' + trim(dvid.Text) + ')';
    m:=ParcelasVentas.ListarSinResp(txtw);
    ParcelasVentas.Free;
    if m then begin
        messagedlg('Se ha ANULADO esta VENTA de PARCELA con Exito',mtConfirmation,[mbok],0);
        anulavta.Enabled:=false;
    end
    else begin
      messagedlg('Error al ANULAR esta VENTA de PARCELA. Consulte con un Administrador',mtError,[mbok],0);
    end;
  end;
end;

procedure TConfirma_InhuVen.anulaservClick(Sender: TObject);
var gf:integer;
var txtw:widestring;
var m:boolean;
begin
  ParcelasServicios:=TParcelasServicios.Create(nil);
  parcelasservicios.ConnectionString:=modulo2.Conexion;
  txtw:='UPDATE Parcelasservicios SET anulado = 1,  Usuanula=' + inttostr(modulo2.nro_usu)
  + ', fechaanula= ' + chr(39) + strcut(Fec_System(),10) + chr(39)
  + ' , MotivoAnula= ' + chr(39) + motivo + chr(39) + ' WHERE (IdServicio=' + trim(serv1.Text) + ')';
  m:=parcelasservicios.ListarSinResp(txtw);
  parcelasservicios.Free;
  if m then begin
    messagedlg('Se ha ANULADO este SERVICIO con Exito',mtConfirmation,[mbok],0);
    anulaserv.Enabled:=false;
  end
  else begin
    messagedlg('Error al ANULAR este SERVICIO. Consulte con un Administrador',mtError,[mbok],0);
  end;
end;

procedure TConfirma_InhuVen.Timer1Timer(Sender: TObject);
begin
  Label85.visible := not (Label85.visible);
  Label85.Repaint;
end;

procedure TConfirma_InhuVen.Label85Click(Sender: TObject);
begin
Timer1.Enabled := False;
end;

procedure TConfirma_InhuVen.confirmaservClick(Sender: TObject);
begin
 coloca1(15);    // confirmamos el servicio
end;

procedure TConfirma_InhuVen.ConfirmaClick(Sender: TObject);

  Function guarda_todo(tpo:byte):boolean;
  var t:integer;
  var lafecha,el_id,txt,ElMes,ElAnio,ElDia,obs,obs1:string;
  var txt1,txt2:widestring;
  begin
   if tpo = 1 then begin
    try
     modulo2.Com1.CommandText:='BEGIN TRANSACTION;';
     modulo2.Com1.Execute;

     modulo2.Com1.CommandText:='UPDATE ParcelasVentas SET confirmado = 1,  UsuConfirma=' + inttostr(modulo2.nro_usu)
     + ', FechaConfirma= ' + chr(39) + lafecha + chr(39) + ' WHERE (Idventa=' + trim(dvid.Text) + ')';
     modulo2.Com1.Execute;

     ElMes:=strcut_midle(fec,4,5);
     ElAnio:=RightStr(fec,4);
     ElDia:=LeftStr(fec,2);
     if modp.Text='Financiado' then txt:=FechaIncremento('20/' + ElMes + '/' + ElAnio,t+1)
      else  txt:=FechaIncremento('20/' + ElMes + '/' + ElAnio,t+12);

     txt1:= txt1 + dv1.Text + ' , null , ' + txt + ' , 20 , 1 , null ,'
     + chr(39) + lafecha + chr(39) + ' , ' + inttostr(modulo2.nro_usu);
     modulo2.Com1.CommandText:='INSERT INTO ParcelasMantenimiento(NroAccion,CuentaCliente,FechaVigencia,DiaVencimiento,' +
     'Activo,Observaciones,Fecha_A,Usu_A) VALUES (' + txt1 + ');';
     modulo2.Com1.Execute;
     obs:='Adelanto de venta de parcelas';

     for t:=1 to grilla5.RowCount-1 do begin
      if trim(grilla5.Cells[1,t]) = '0' then begin
       modulo2.Com1.CommandText:='INSERT INTO ParcelasVentasPagos '
       + '(NroAccion,IdVenta,IdFormaPago,Fecha,Monto,Interes,IDTipoComprobante,PuntoVenta,'
       + ' Observaciones,Fecha_A,Usu_A,EnMovimientos,EsEntrega,Confirmado,UsuConfirma,FechaConfirma) VALUES ('
       + dv1.Text + ' , 2 , '
       + chr(39) + lafecha + chr(39)
       + ' , ' + Grilla5.Cells[4,t]
       + ' , 0 , 5 , 0 '
       + ' , ' + chr(39) + obs + chr(39)
       + ' , ' + chr(39) + lafecha + chr(39)
       + ' , ' + inttostr(modulo2.nro_usu) + ' , 1 , 1 , 1 '
       + ' , ' + inttostr(modulo2.nro_usu)
       + ' , ' + chr(39) + lafecha + chr(39) + ');';
       modulo2.Com1.Execute;
      end;
     end;

     modulo2.Com1.CommandText:='COMMIT TRANSACTION';
     modulo2.Com1.Execute;
     messagedlgpos('Los Datos de la Venta se ha Confirmado Satisfactoriamente!!',mtWarning,[mbok],0,screen.Width div 3, screen.Height div 3);
    except
      modulo2.Com1.CommandText:='ROLLBACK TRANSACTION';
      modulo2.Com1.Execute;
      messagedlgpos('Error!! Ocurrió un Error al Confirmar la Venta.',mtError,[
        mbok],0,screen.Width div 3,screen.Height div 3);
    end;
   end;

   {Confirmamos los servicios}
   if tpo = 2 then begin
    try
      modulo2.Com1.CommandText:='BEGIN TRANSACTION;';
      modulo2.Com1.Execute;

      modulo2.Com1.CommandText:='UPDATE ParcelasServicios SET confirmado = 1,  UsuConfirma=' + inttostr(modulo2.nro_usu)
      + ', FechaConfirma= ' + chr(39) + strcut(Fec_System(),10) + chr(39) + ' WHERE (IdServicio=' + trim(serv1.Text) + ')';
      modulo2.Com1.Execute;

      txt2:= txt1 + dv1.Text + ' , 1 , 1 , null ,'
        + chr(39) + lafecha + chr(39) + ' , ' + inttostr(modulo2.nro_usu);
      modulo2.Com1.CommandText:='ParcelasServiciosEstados (IdServicio,NroEstado,' +
        'Activo,Observaciones ,Fecha_A ,Usu_A) VALUES (' + txt2 + ');';
      modulo2.Com1.Execute;

      obs1:='Adelanto de venta de parcelas';
      for t:=1 to grillaser.RowCount-1 do begin
       If trim(grillaser.Cells[1,t]) = '0' then begin
        modulo2.Com1.CommandText:='INSERT INTO ParcelasServiciosPagos '
        + '(IdServicio,NroAccion,IdFormaPago,Fecha,Monto,Interes,Observaciones,EnMovimientos,'
        + ' EsEntrega,Confirmado) VALUES ('
        + serv1.Text + ' , ' + serv2.Text
        + ' 3 , ' + chr(39) + lafecha + chr(39)
        + ' , ' + grillaser.Cells[4,t]
        + ' 0 , ' + chr(39) + obs1 + chr(39)
        + ', 1 , 1 , 1 );';
        modulo2.Com1.Execute;
       end;
      end;
      modulo2.Com1.CommandText:='COMMIT TRANSACTION';
      modulo2.Com1.Execute;
      messagedlgpos('Los Datos del Servicio se ha Confirmado ' +
                'Satisfactoriamente!!',mtWarning,[mbok],0,screen.Width div 3,screen.Height div 3);
    except
      modulo2.Com1.CommandText:='ROLLBACK TRANSACTION';
      modulo2.Com1.Execute;
      messagedlgpos('Error!! Ocurrió un Error al Confirmar este Servicio.',mtError,[
        mbok],0,screen.Width div 3,screen.Height div 3);
    end;
   end;

   {Confirmamos los inhumados}
   if tpo = 3 then begin
    try
     modulo2.Com1.CommandText:='BEGIN TRANSACTION;';
     modulo2.Com1.Execute;

     modulo2.Com1.CommandText:='COMMIT TRANSACTION';
     modulo2.Com1.Execute;
     messagedlgpos('Los Datos del Servicio se ha Confirmado ' +
       'Satisfactoriamente!!',mtWarning,[mbok],0,screen.Width div 3,screen.Height div 3);
    except
     modulo2.Com1.CommandText:='ROLLBACK TRANSACTION';
     modulo2.Com1.Execute;
     messagedlgpos('Error!! Ocurrió un Error al Confirmar este Servicio.',mtError,[
     mbok],0,screen.Width div 3,screen.Height div 3);
    end;
   end;
  end;

begin
guarda_todo(1);
guarda_todo(2);
guarda_todo(3);
end;

procedure TConfirma_InhuVen.DBGridsCellClick(Column: TColumn);
begin
  if not (datasource5.DataSet.IsEmpty) then begin
    Barra1.Panels[2].Text:='';
    PC1.ActivePage:=PC1.Pages[2];
    serv1.Text:=trim(DBGridS.Fields[0].Text);  //32
    serv2.Text:=trim(DBGridS.Fields[1].Text);
    serv3.Text:=trim(DBGridS.Fields[2].Text);
    serv4.Text:=trim(DBGridS.Fields[4].Text);
    serv5.Text:=trim(DBGridS.Fields[10].Text);
    nivel.Text:=trim(DBGridS.Fields[18].Text);
    posi.Text:=trim(DBGridS.Fields[19].Text);
    objeto.Text:=trim(DBGridS.Fields[20].Text);
    dbedit2.Text:=trim(DBGridS.Fields[15].Text);
    dbedit3.Text:=trim(DBGridS.Fields[16].Text);
    dbedit4.Text:=trim(DBGridS.Fields[17].Text);
    deudaser.Text:=trim(DBGridS.Fields[5].Text);
    cantcuotasser.Text:=trim(DBGridS.Fields[6].Text);
    valorcuotaser.Text:=trim(DBGridS.Fields[7].Text);
    dpcs.Text:=trim(DBGridS.Fields[35].Text);
    dpfs.Text:=trim(DBGridS.Fields[36].Text);
    drecs.Text:=trim(DBGridS.Fields[37].Text);
    if trim(DBGridS.Fields[11].Text) = 'False' then confirmaserv.Enabled:=true
        else confirmaserv.Enabled:=false;
    if confirmaserv.Enabled = false then begin
     anulaserv.Enabled:=false;
    end
    else begin
        if trim(DBGridS.Fields[14].Text) = 'False' then anulaserv.Enabled:=true
            else anulaserv.Enabled:=false;
    end;
    if (trim(DBGridS.Fields[22].Text)='FINANCIADO SIN INTERESES')
       or (trim(DBGridS.Fields[22].Text)='FINANCIADO CON INTERESES') then begin
      mps.Text:=trim(DBGridS.Fields[22].Text);
      montops.Clear;
      deudas.Text:=trim(DBGridS.Fields[5].Text);
      ccs.Text:=trim(DBGridS.Fields[6].Text);
      vcs.Text:=trim(DBGridS.Fields[7].Text);
      ncs.Clear;
      nrocs.Clear;
      fps.Clear;
      fcs.Clear;
      bancos.Clear;
      tits.Clear;
    end;
    if trim(DBGridS.Fields[22].Text)='CONTADO' then begin
      mps.Text:=trim(DBGridS.Fields[22].Text);
      montops.Text:=trim(DBGridS.Fields[5].Text);
      deudas.Clear;
      ccs.Text:=trim(DBGridS.Fields[6].Text);
      vcs.Clear;
      ncs.Clear;
      nrocs.Clear;
      fps.Clear;
      fcs.Clear;
      bancos.Clear;
      tits.Clear;
    end;
    if trim(DBGridS.Fields[22].Text)='CHEQUE' then begin
      mps.Text:=trim(DBGridS.Fields[22].Text);
      montops.Text:=trim(DBGridS.Fields[29].Text);        //61
      deudas.Clear;
      ccs.Text:=trim(DBGridS.Fields[30].Text);            //62
      vcs.Clear;
      ncs.Clear;
      nrocs.Text:=trim(DBGridS.Fields[27].Text) + '-'+ trim(DBGridS.Fields[28].Text);
      fps.Text:=trim(DBGridS.Fields[31].Text);
      fcs.Text:=trim(DBGridS.Fields[32].Text);
      bancos.Text:=trim(DBGridS.Fields[33].Text);
      tits.Text:=trim(DBGridS.Fields[27].Text);
    end;
    if trim(DBGridS.Fields[22].Text)='TARJETA DE CREDITO' then begin
      mps.Text:=trim(DBGridS.Fields[22].Text);
      montops.Text:=trim(DBGridS.Fields[29].Text);         //61
      deudas.Clear;
      ccs.Text:=trim(DBGridS.Fields[30].Text);            //62
      vcs.Clear;
      ncs.Text:=trim(DBGridS.Fields[24].Text);
      nrocs.Clear;
      fps.Text:=trim(DBGridS.Fields[31].Text);
      fcs.clear;
      bancos.Text:=trim(DBGridS.Fields[34].Text);
      tits.Text:=trim(DBGridS.Fields[27].Text);
    end;
    Coloca1(10);
    Coloca1(12);
    Coloca1(13);
    Coloca1(14);
  end;
end;

procedure TConfirma_InhuVen.DBGridICellClick(Column: TColumn);
begin
  if not (datasource6.DataSet.IsEmpty) then begin
    Barra1.Panels[2].Text:='';
    PC1.ActivePage:=PC1.Pages[3];
    D1.DataField:='IdHabitante';
    D2.DataField:='NroAccion';
    D3.DataField:='Nivel';
    D4.DataField:='Posicion';
    D5.DataField:='Objeto';
    D6.DataField:='DniTitular';
    D7.DataField:='NombreTitular';
    D8.DataField:='DniFallecido';
    D9.DataField:='NombreFallecido';
    D10.DataField:='NombreSolicitante';
    D11.DataField:='FechaIngreso';
    D12.DataField:='FechaFallecimiento';
    D13.DataField:='FechaInhumacion';
    D14.DataField:='HoraFallecimiento';
    D15.DataField:='HoraSalida';
    D16.DataField:='HoraLlegada';
    D17.DataField:='NroSeccion';
    D18.DataField:='NroActa';
    D19.DataField:='NroFolio';
    D20.DataField:='NroTomo';
    D21.DataField:='TipoDocTitular';
    D22.DataField:='DomTitular';
    D23.DataField:='LocTitular';
    D24.DataField:='BarrioTitular';
    if trim(DBGridI.Fields[24].Text) = 'False' then Confirmainhu.Enabled:=true
        else Confirmainhu.Enabled:=false;
    if Confirmainhu.Enabled = false then begin
     Anulainhu.Enabled:=false;
    end
    else begin
        if trim(DBGridI.Fields[26].Text) = 'False' then Anulainhu.Enabled:=true
            else Anulainhu.Enabled:=false;
    end;
    D25.DataField:='fecha_anula';
    D26.DataField:='usu_anula';
    D27.DataField:='motivoanula';
    D28.DataField:='TipoDocFallecido';
    D29.DataField:='EstcivilFallecido';
    D30.DataField:='NacioFallecido';
    D31.DataField:='FecNacFallecido';
    D32.DataField:='DomFallecido';
    dt.DataField:='TipoServicio';
    dc.DataField:='Cocheria';
    dpa.DataField:='Parcela';
    ds.DataField:= 'Sector';
    dre.DataField:='ReligionFallecido';
    dbedit1.DataField:='NombreResponsable';
    dbedit5.DataField:='tipodocresp';
    dbedit6.DataField:='nrodocresp';
    dbedit7.DataField:='domicilioresp';
    Coloca1(11);
  end;
end;

procedure TConfirma_InhuVen.AnulainhuClick(Sender: TObject);
var gf:integer;
var txtw:widestring;
var m:boolean;
begin
  ParcelasInhumados:=TParcelasInhumados.Create(nil);
  ParcelasInhumados.ConnectionString:=modulo2.Conexion;
  txtw:='UPDATE Parcelainhumados SET anulado = 1,  Usu_anula=' + inttostr(modulo2.nro_usu)
  + ', fecha_anula= ' + chr(39) + strcut(Fec_System(),10) + chr(39)
  + ' , MotivoAnula= ' + chr(39) + motivo + chr(39) + ' WHERE (IdHabitante=' + trim(d1.Text) + ')';
  m:=ParcelasInhumados.ListarSinResp(txtw);
  ParcelasInhumados.Free;
  if m then begin
    messagedlg('Se ha ANULADO este INHUMADO con Exito',mtConfirmation,[mbok],0);
    anulainhu.Enabled:=false;
  end
  else begin
    messagedlg('Error al ANULAR este INHUMADO. Consulte con un Administrador',mtError,[mbok],0);
  end;
end;

procedure TConfirma_InhuVen.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var h:byte;
begin
h:=0;
 if trim(DBGrid1.Fields[12].Text) = 'False' then h:=1;
  if trim(DBGrid1.Fields[13].Text) = 'True' then h:=2;
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
    2:begin //anulados
      DBGrid1.Canvas.Brush.Color:=$00CECEFF;
      DBGrid1.Canvas.FillRect(Rect);
      DBGrid1.Canvas.Font.Color:= clBlack;
      end;
  end;
  DBGrid1.DefaultDrawColumnCell(Rect,Datacol,Column,State);
end;

procedure TConfirma_InhuVen.DBGridsDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var h:byte;
begin
 h:=0;
  if trim(DBGrids.Fields[11].Text) = 'False' then h:=1;
  if trim(DBGrids.Fields[14].Text) = 'True' then h:=2;
  case h of
    0:begin
      DBGrids.Canvas.Brush.Color:=clWindow;
      DBGrids.Canvas.FillRect(Rect);
      DBGrids.Canvas.Font.Color:= clBlack;
      end;
    1:begin // sin confirmar
      DBGrids.Canvas.Brush.Color:=clLime;
      DBGrids.Canvas.FillRect(Rect);
      DBGrids.Canvas.Font.Color:= clBlack;
      end;
    2:begin //anulados
      DBGrids.Canvas.Brush.Color:=$00CECEFF;
      DBGrids.Canvas.FillRect(Rect);
      DBGrids.Canvas.Font.Color:= clBlack;
      end;
  end;
 DBGrids.DefaultDrawColumnCell(Rect,Datacol,Column,State);
end;

procedure TConfirma_InhuVen.DBGridIDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var h:byte;
begin
h:=0;
 if trim(DBGridI.Fields[24].Text) = 'False' then h:=1;
  if trim(DBGridI.Fields[25].Text) = 'True' then h:=2;
  case h of
    0:begin
      DBGridI.Canvas.Brush.Color:=clWindow;
      DBGridI.Canvas.FillRect(Rect);
      DBGridI.Canvas.Font.Color:= clBlack;
      end;
    1:begin // sin confirmar
      DBGridI.Canvas.Brush.Color:=clLime;
      DBGridI.Canvas.FillRect(Rect);
      DBGridI.Canvas.Font.Color:= clBlack;
      end;
    2:begin //anulados
      DBGridI.Canvas.Brush.Color:=$00CECEFF;
      DBGridI.Canvas.FillRect(Rect);
      DBGridI.Canvas.Font.Color:= clBlack;
      end;
  end;
 DBGridI.DefaultDrawColumnCell(Rect,Datacol,Column,State);
end;

procedure TConfirma_InhuVen.JvBitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TConfirma_InhuVen.ODNIExit(Sender: TObject);
begin
if trim(ODNI.Text)='' then ODNI.Text:='00000';
if trim(ODNI.Text)='0' then ODNI.Text:='00000';

if trim(ODNI.Text) = '00000' then begin
  messagedlg('ERROR!!... El N° de ACCION no puede tener el valor 0 (Cero)'
  ,mterror,[mbok],0);
  ODNI.SetFocus;
end;
end;

end.

unit AM_CuentaCorrientesMutuales;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, DBCtrls, Grids,  StdCtrls, Mask, ExtCtrls, DBGrids,
  ComCtrls, ADODB, DB, ImgList, JvExButtons, JvBitBtn, ToolWin, JvgGroupBox,
  Unidad, DBClient, WSDLIntf, ClaseFunciones, StrUtils, ClaseParcelasCuentasCorrientes,
  ClaseSistemas,ClaseParcelasCuentasCorrientesPeriodos,ClaseParcelasNovedades;

type LosEdit = class(TEdit);
type
  TMutualesCtaCtes = class(TForm)
    PC1: TPageControl;
    TabSheet2: TTabSheet;
    DataSource1: TDataSource;
    ImageList1: TImageList;
    Barra1: TStatusBar;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    Limpiar: TJvBitBtn;
    ToolButton2: TToolButton;
    GUARDA: TJvBitBtn;
    ToolButton3: TToolButton;
    JvBitBtn1: TJvBitBtn;
    ToolButton1: TToolButton;
    ToolButton5: TToolButton;
    JvgGroupBox1: TJvgGroupBox;
    Label3: TLabel;
    TPOOBJ: TComboBox;
    Label8: TLabel;
    NROCUENTA: TEdit;
    BusCodPos: TJvBitBtn;
    grupo1: TJvgGroupBox;
    Label30: TLabel;
    Label38: TLabel;
    Label23: TLabel;
    Label32: TLabel;
    Label11: TLabel;
    FECINI: TMaskEdit;
    RECIBO1: TEdit;
    IMPORTE: TEdit;
    DESCRIP: TEdit;
    IDENTIF: TEdit;
    Label20: TLabel;
    TPOTALON: TComboBox;
    Label5: TLabel;
    PV: TComboBox;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GR2: TStringGrid;
    periodos: TJvBitBtn;
    Button1: TButton;
    DataSource2: TDataSource;
    LasMutuales: TComboBox;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure TPOOBJKeyPress(Sender: TObject; var Key: Char);
    procedure TPOOBJExit(Sender: TObject);
    procedure NROCUENTAKeyPress(Sender: TObject; var Key: Char);
    procedure NROCUENTAExit(Sender: TObject);
    procedure BusCodPosClick(Sender: TObject);
    procedure FECINIKeyPress(Sender: TObject; var Key: Char);
    procedure FECINIExit(Sender: TObject);
    procedure RECIBO1KeyPress(Sender: TObject; var Key: Char);
    procedure IMPORTEKeyPress(Sender: TObject; var Key: Char);
    procedure DESCRIPKeyPress(Sender: TObject; var Key: Char);
    procedure GUARDAClick(Sender: TObject);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure LimpiarClick(Sender: TObject);
    procedure LimpiarVentana(nro:byte);
    procedure IMPORTEExit(Sender: TObject);
    procedure periodosClick(Sender: TObject);
    procedure GR2Click(Sender: TObject);
    procedure TPOTALONExit(Sender: TObject);
    procedure PVExit(Sender: TObject);
    procedure TPOTALONKeyPress(Sender: TObject; var Key: Char);
    procedure PVKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure RECIBO1Exit(Sender: TObject);
    procedure DESCRIPExit(Sender: TObject);
    procedure LasMutualesExit(Sender: TObject);
    procedure LasMutualesKeyPress(Sender: TObject; var Key: Char);
  private
    Com1:TADOCommand;
    IdCombos:array of array of string;
    DataSet0,DataSet1,DtCombo,DtCombPeri,DataCtaCte,DtCombo0,DataCtaCteDet:TClientDataSet;
    IdPagos:array of array of string;
    Funciones:TFuncionesVarias;
    ParcelasCuentasCorrientes:TParcelasCuentasCorrientes;
    Sistemas:TSistemas;
    PosSelec,PosPv:integer;
    ParcelasCuentasCorrientesPeriodos:TParcelasCuentasCorrientesPeriodos;
    FechaActual,FecAnula,ELID,elIdServicio,laaccion:string;
    TiposObjetos:Unidad.TablaXML;{ Private declarations }
  public
    ParcelasNovedades:TParcelasNovedades;
    gh,NroOpcion:boolean;{ Public declarations }
  end;

var
  MutualesCtaCtes: TMutualesCtaCtes;

implementation

uses Modulo, Busqueda, Anula_Generica,SelecPagos;

{$R *.dfm}

procedure TMutualesCtaCtes.FormActivate(Sender: TObject);
begin
 if not(gh) then begin
  gh:=true;
  panel1.Visible :=false;
  setlength(IdCombos,3);
  GR2.Cells[0,0]:='Cuota/Periodo';
  GR2.Cells[1,0]:='ImpCuota';
  GR2.Cells[2,0]:='TotCuota';
  GR2.Cells[3,0]:='Selec.';
  FechaActual:=LeftStr(Fec_System(),10);
  PC1.ActivePage:=PC1.Pages[0];
  FECINI.Text:=FechaActual;
  Coloca1(1);
  Coloca1(2);
  Coloca1(7);
  if NroOpcion = false then begin
   guarda.Visible:=true;
   limpiar.Visible:=true;
   tpoobj.SetFocus;
  end
  else begin
   guarda.Visible:=false;
   limpiar.Visible:=false;
  end;
 end;
end;

procedure TMutualesCtaCtes.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TMutualesCtaCtes.Coloca1(nro:byte);
var t,y,r,s,p:integer;
    Ident,NroObj,NroCta:variant;
    txt:string;
    txtw:widestring;
    tot:real;
    Ok:boolean;
        Com1: TADOCommand;
begin
if nro=1 then begin //Combo TipoObjetos
  TPOOBJ.Clear;
   DtCombo.Free;
   DtCombo:=TClientdataSet.Create(nil);
   Funciones:=TFuncionesVarias.Create(nil);
   Funciones.ConnectionString:=modulo2.Conexion;
   if not Funciones.Listar('SELECT NroTipo,Detalle,InicioDeuda FROM TiposObjetos where NroTipo= 3 Order by Detalle',DtCombo) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
   else begin
    SetLength(IdCombos[0],DtCombo.RecordCount);
    for t:=1 to DtCombo.RecordCount  do begin
     DtCombo.RecNo:=t;
     TPOOBJ.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
     IdCombos[0,t-1]:=DtCombo.Fields[0].AsString;
    end;
   end;
   Funciones.Free;
  TPOOBJ.ItemIndex:=0;
end;
if nro=2 then begin //Datos de las Acciones
  lasmutuales.Clear;
  DtCombo0.Free;
  Dtcombo0:=TClientDataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT distinct clientes.RazonSocial,Clientes.alias,clientes.cuif '
  +' FROM ParcelasTitulares tit inner join Clientes on Clientes.Cuif = tit.Cuif WHERE (NroTipoAcc = 3)';
  if Funciones.Listar(txtw,DtCombo0)then begin
    SetLength(IdCombos[2],DtCombo0.RecordCount);
    for t:=1 to DtCombo0.RecordCount  do begin
      DtCombo0.RecNo:=t;
      lasmutuales.Items.Insert(t-1,trim(DtCombo0.Fields[0].AsString));
      IdCombos[2,t-1]:=DtCombo0.Fields[1].AsString;
    end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  lasmutuales.ItemIndex:=0;
end;
if nro=4 then begin
 DtCombo:=TClientdataSet.Create(nil);
 Funciones:=TFuncionesVarias.Create(nil);
 Funciones.ConnectionString:=modulo2.Conexion;
 if not Funciones.Listar('select MAX(idpago) from ParcelasMantenimientoPagos where NroAccion=' + trim(nrocuenta.Text),DtCombo) then
   messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
 else begin
   ELID:=trim(DtCombo.Fields[0].AsString);
 end;
 DtCombo.Free;
end;
if nro = 5  then begin
  try
    Com1:=TADOCommand.Create(nil);
    Com1.ConnectionString:=modulo2.Conexion;
    Com1.CommandText:='SPC_ParcelasNovedadesManteCtaCteModificar ' + laaccion;
    Com1.Execute;
   // messagedlg('Se ha Confirmado de Pago de esta Cta. Corriente con Exito',mtConfirmation,[mbok,mbCancel],0);
  finally
    Com1.Free;
  end;
end;
if nro=6 then  begin
  DtCombPeri:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  {if (IdCombos[0,TPOOBJ.ItemIndex] = '2') then begin    /// estado de cueta servcios
   GR2.Cells[0,0]:='Cuota/Periodo';
   GR2.Cells[1,0]:='ImpCuota';
   GR2.Cells[2,0]:='IdServicio';
   GR2.Cells[3,0]:='Selec.';
   if not Funciones.Listar('select periodo,totalcuota,idservicio from EstadoCuentaServiciosTotalesxAccion  ' +
   '(' + trim(nrocuenta.Text) + ',getdate(),0) where EstadoPago=''DEUDA'' order by idservicio,nrocuota',DtCombPeri) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
   else begin
    for t:=1 to DtCombPeri.RecordCount do begin
     DtCombPeri.RecNo:=t;
     GR2.RowCount:=t+1;
     GR2.Cells[0,t]:=DtCombPeri.Fields[0].AsString;
     GR2.Cells[1,t]:=DtCombPeri.Fields[1].AsString;
     GR2.Cells[2,t]:=DtCombPeri.Fields[2].AsString;
     GR2.Cells[3,t]:='';
    end;
   end;
   panel1.Visible:=true;
   gr2.Visible :=true;
  end;  }

  if (IdCombos[0,TPOOBJ.ItemIndex] = '3') then begin    /// estado de cueta mantenimiento
   if not Funciones.Listar('select Periodo,ImporteCuota,TotalCuota from EstadoCuentaMantenimientomutuales  ' +
   '(' + trim(nrocuenta.Text) + ',getdate(),0) where EstadoPago=''DEUDA'' and formapago=''CUENTA CORRIENTE'' order by periodo',DtCombPeri) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
   else begin
    for t:=1 to DtCombPeri.RecordCount do begin
     DtCombPeri.RecNo:=t;
     GR2.RowCount:=t+1;
     GR2.Cells[0,t]:=DtCombPeri.Fields[0].AsString;
     GR2.Cells[1,t]:=DtCombPeri.Fields[1].AsString;
     GR2.Cells[2,t]:=DtCombPeri.Fields[2].AsString;
     GR2.Cells[3,t]:='';
    end;
   end;
   GroupBox1.Visible:=true;
  end;

  {if (IdCombos[0,TPOOBJ.ItemIndex] = '1') then begin  /// estado de cueta ventas
   if not Funciones.Listar('select NroCuota,ImporteCuota,TotalCuota  from EstadoCuentaVentas ' +
   '(' + trim(nrocuenta.Text) + ',getdate(),0) where Periodo <> 999999 and EstadoPago=''deuda'' order by 1',DtCombPeri) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
   else begin
    for t:=1 to DtCombPeri.RecordCount do begin
     DtCombPeri.RecNo:=t;
     GR2.RowCount:=t+1;
     GR2.Cells[0,t]:=DtCombPeri.Fields[0].AsString;
     GR2.Cells[1,t]:=DtCombPeri.Fields[1].AsString;
     GR2.Cells[2,t]:=DtCombPeri.Fields[2].AsString;
     GR2.Cells[3,t]:='';
    end;
   end;
   GroupBox1.Visible:=true;
  end;   }
  DtCombPeri.Free;
end;
if nro=7 then begin //Combo Talonarios
  TPOTALON.Clear;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if not Funciones.Listar('SELECT IDTipoComprobante,DetalleComprobante FROM TiposComprobantes WHERE (Cobranzas=1) ',DtCombo) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
   SetLength(IdCombos[1],DtCombo.RecordCount);
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    TPOTALON.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
    IdCombos[1,t-1]:=DtCombo.Fields[0].AsString;
   end;
  end;
  Funciones.Free;
  TPOTALON.ItemIndex:=0;
end;

end;

procedure TMutualesCtaCtes.TPOOBJKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  lasmutuales.SetFocus;
 end;
end;

procedure TMutualesCtaCtes.TPOOBJExit(Sender: TObject);
var tipo:integer;
begin
 if TPOOBJ.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Objeto Ingresado!!',mterror,[mbok],0);
  TPOOBJ.SetFocus;
 //end
 //else begin
  //if TPOOBJ.ItemIndex=1 then PC2.ActivePage:=PC2.Pages[0];
  //if TPOOBJ.ItemIndex=2 then PC2.ActivePage:=PC2.Pages[1];
  ////if TPOOBJ.ItemIndex=5 then PC2.ActivePage:=PC2.Pages[2];
  //if TPOOBJ.ItemIndex=7 then PC2.ActivePage:=PC2.Pages[3];
  //Coloca1(7);
 end;
end;

procedure TMutualesCtaCtes.NROCUENTAKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  FECINI.SetFocus;
end
else begin
  if ( StrScan('0123456789',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
   else Key := #0;
end;
end;

procedure TMutualesCtaCtes.NROCUENTAExit(Sender: TObject);
var Paso:boolean;
begin
 { if trim(NROCUENTA.Text) = '' then Paso:=false;
  if Paso then begin
   try
    if StrToInt(trim(NROCUENTA.Text)) = 0 then Paso:=false;
   except
    Paso:=false;
   end;
  end;
  if Paso then begin
    if DataSet1.IsEmpty then fecini.SetFocus; ///BusCodPos.SetFocus;
  end
  else fecini.SetFocus; //BusCodPos.SetFocus; }
end;

procedure TMutualesCtaCtes.BusCodPosClick(Sender: TObject);
//var Busqueda:TLA_BUSQUEDA;
begin
{ Busqueda:=TLA_BUSQUEDA.Create(self);
 try
  if IdCombos[0,TPOOBJ.ItemIndex] = '1' then Busqueda.NroOpcion:=4;
  if IdCombos[0,TPOOBJ.ItemIndex] = '2' then Busqueda.NroOpcion:=5;
  if IdCombos[0,TPOOBJ.ItemIndex] = '3' then Busqueda.NroOpcion:=6;
  Busqueda.ShowModal;
  NROCUENTA.Text:=Busqueda.DB1.Text;
 finally
  Busqueda.Destroy;
 end; }
end;

procedure TMutualesCtaCtes.FECINIKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  tpotalon.SetFocus;
end;
end;

procedure TMutualesCtaCtes.FECINIExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(FECINI.Text));
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  FECINI.SetFocus;
end;
end;

procedure TMutualesCtaCtes.RECIBO1KeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  IMPORTE.SetFocus;
 end
 else begin
  if ( StrScan('0123456789',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;
end;

procedure TMutualesCtaCtes.IMPORTEKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  panel1.Visible :=true;
  gr2.SetFocus;
 end
 else begin
  if ( StrScan('0123456789.',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;
end;

procedure TMutualesCtaCtes.DESCRIPKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  if GUARDA.Enabled then GUARDA.SetFocus;
end;
end;

procedure TMutualesCtaCtes.GUARDAClick(Sender: TObject);
var TodoOk1,Ok,alta:boolean;
var t,gf:integer;
    txtw:widestring;
    valor,texto:string;
begin
 gf:=messagedlg('Desea CONFIRMAR la Carga de esta Cta. Corriente',mtWarning,[mbok,mbCancel],0);
 if gf = 1 then begin
   ParcelasCuentasCorrientes:=TParcelasCuentasCorrientes.Create(nil);
   ParcelasCuentasCorrientes.ConnectionString:=modulo2.Conexion;
   ParcelasCuentasCorrientes.C_IdObjeto:=IdCombos[0,TPOOBJ.ItemIndex];
   ParcelasCuentasCorrientes.C_Identificador:=trim(NROCUENTA.Text);
   ParcelasCuentasCorrientes.C_FechaCarga:=FECINI.Text;
   ParcelasCuentasCorrientes.C_IdServicio := elIdServicio;
   ParcelasCuentasCorrientes.C_IdTipoComprobante:=IdCombos[1,tpotalon.ItemIndex];
   ParcelasCuentasCorrientes.C_NroComprobante:=StrFill(PV.Text,3,'0','') + '-' + StrFill(recibo1.Text,7,'0','');;
   ParcelasCuentasCorrientes.C_Monto:=IMPORTE.Text;
   ParcelasCuentasCorrientes.C_MotivoCobro := 'Nro Planilla: ' + trim(descrip.Text);
   ParcelasCuentasCorrientes.C_Cobrado:=true;
   ParcelasCuentasCorrientes.C_Confirmado:=true;
   ParcelasCuentasCorrientes.C_Usu_A:=modulo2.nro_usu;
   ParcelasCuentasCorrientes.C_Fecha_A:=LeftStr(Fec_System(),10);
   TodoOk1:=ParcelasCuentasCorrientes.Agrega;
   valor:=ParcelasCuentasCorrientes.Identidad;
   ParcelasCuentasCorrientes.Free;
   if TodoOk1 then begin
    for t:=1 to GR2.RowCount-1 do begin
     if trim(GR2.Cells[3,t]) = 'X' then begin
      ParcelasCuentasCorrientesPeriodos:=TParcelasCuentasCorrientesPeriodos.Create(nil);
      ParcelasCuentasCorrientesPeriodos.ConnectionString:=modulo2.Conexion;
      ParcelasCuentasCorrientesPeriodos.C_IdCuentaCorriente:= strtoint(valor);
      ParcelasCuentasCorrientesPeriodos.C_NroAccion:=trim(NROCUENTA.Text);
      ParcelasCuentasCorrientesPeriodos.C_NroTipoObjeto:=IdCombos[0,TPOOBJ.ItemIndex];
      ParcelasCuentasCorrientesPeriodos.C_Periodo:=trim(GR2.Cells[0,t]);
      ParcelasCuentasCorrientesPeriodos.C_ImporteCuota:=trim(GR2.Cells[1,t]);
      Ok:=ParcelasCuentasCorrientesPeriodos.Agrega;
      ParcelasCuentasCorrientesPeriodos.Free;
     end;
    end;

    if Ok then begin
      messagedlg('La Cuenta Corriente fue guardado Correctamente',mtConfirmation,[mbok],0);
      texto:='Se Agrego a modo de Cuenta Corriente la Deuda correspondiente a: '  + trim(tpoobj.Text) + ' por el Importe de $' + trim(importe.Text);
      ParcelasNovedades:=TParcelasNovedades.Create(nil);
      ParcelasNovedades.ConnectionString:=modulo2.Conexion;
      txtw:='INSERT INTO ParcelasNovedades (Nroaccion,Novedad,Resuelto,Prioridad) VALUES ('
      + trim(nrocuenta.Text) + ' , ' + chr(39) + texto + chr(39) + ' , 0 , 1)';
      alta:=ParcelasNovedades.ListarSinResp(txtw);
      if alta then begin
      //
      end;
      ParcelasNovedades.Free;

      tpoobj.ItemIndex :=0;
      TPOOBJ.SetFocus;
      nrocuenta.Text := '000000';
      identif.Text :='00000';
      fecini.Text :=LeftStr(Fec_System(),10);
      tpotalon.ItemIndex :=0;
      pv.ItemIndex :=0;
      recibo1.Text :='00000'  ;
      importe.Text :='000.00';
      descrip.Clear;
      guarda.Enabled :=false;
    end
    else messagedlg('ERROR!!... Al Guardar la Cuenta Corriente de la Accion seleccionada.',mtError,[mbok],0);
   end;
 end
 else begin
  messagedlg('Ud. ha Cancelado la Confirmacion de Pago de esta Cta. Corriente',mtWarning,[mbok,mbCancel],0);
 end;
end;

procedure TMutualesCtaCtes.JvBitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TMutualesCtaCtes.LimpiarClick(Sender: TObject);
begin
LimpiarVentana(0);
end;

procedure TMutualesCtaCtes.LimpiarVentana(nro:byte);
var t,r,p,u:integer;
begin
 if nro = 0 then begin
  DataSource1.DataSet:=nil;
  TPOOBJ.ItemIndex:=0;
  NROCUENTA.Text:='000000';
  for p:=0 to GR2.ColCount-1 do
    for u:=1 to GR2.RowCount-1 do GR2.Cells[p,u]:='';
  GR2.RowCount:=2;
 end;
 if nro <= 1 then begin
  for p:=0 to GR2.ColCount-1 do
    for u:=1 to GR2.RowCount-1 do GR2.Cells[p,u]:='';
  GR2.RowCount:=2;
  TPOTALON.ItemIndex :=0;
  PV.ItemIndex :=0;
  IDENTIF.Text:='00000';
  RECIBO1.Text:='000000000000';
  FECINI.Text:=FechaActual;
  IMPORTE.Text:='000.00';
  DESCRIP.Clear;
  GUARDA.Enabled:=false;
  GroupBox1.Visible:=false;
 end;
end;

procedure TMutualesCtaCtes.IMPORTEExit(Sender: TObject);
var Selec_Pagos:TSelec_Pagos;
    t,p:integer;
begin
  if (trim(IMPORTE.Text) = '') or (trim(IMPORTE.Text) = '0')  then begin
    messagedlg('ERROR IMPORTE Incorrecto',mtError,[mbok],0);
    IMPORTE.SetFocus ;
  end
  else coloca1(6);
end;

procedure TMutualesCtaCtes.periodosClick(Sender: TObject);
begin
panel1.Visible:=false;
//descrip.Text:='PAGO A CUENTA CORRIENTE POR SISTEMA..';
guarda.Enabled :=true;
guarda.SetFocus;
descrip.SetFocus;
end;

procedure TMutualesCtaCtes.GR2Click(Sender: TObject);
var ini,fin,t,cant:integer;
begin
 cant:=0;
 if GR2.Cells[3,GR2.Row] = '' then GR2.Cells[3,GR2.Row]:='X'
 else GR2.Cells[3,GR2.Row]:='';
  for t:=1 to GR2.RowCount-1 do begin
   if trim(GR2.Cells[3,t]) = 'X' then begin
    if (IdCombos[0,TPOOBJ.ItemIndex] = '2') then elIdServicio := trim(GR2.Cells[2,t])
     else elIdServicio := '';
   cant := cant + 1;
   end;
  end;
  if cant > 0 then periodos.Enabled:=true
   else periodos.Enabled:=false;
end;

procedure TMutualesCtaCtes.TPOTALONExit(Sender: TObject);
begin
 if TPOTALON.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Comprobante Ingresado!!',mterror,[mbok],0);
  TPOTALON.SetFocus;
 end
 else begin
  //Cargamos los posibles puntos de ventas existentes
  Coloca1(8);
  if PosSelec <> TPOTALON.ItemIndex then begin
    PosSelec:=TPOTALON.ItemIndex;
    recibo1.Text:='0000000';
  end
  else PV.ItemIndex:=PosPv;
 end;
end;

procedure TMutualesCtaCtes.PVExit(Sender: TObject);
begin
 if PV.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Punto de Venta Ingresado!!',mterror,[mbok],0);
  PV.SetFocus;
 end
 else begin
  if PV.ItemIndex <> PosPv then PosPv:=PV.ItemIndex;
 end;
end;

procedure TMutualesCtaCtes.TPOTALONKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  pv.SetFocus;
end;
end;

procedure TMutualesCtaCtes.PVKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  recibo1.SetFocus;
end;
end;

procedure TMutualesCtaCtes.Button1Click(Sender: TObject);
begin
  panel1.Visible :=false;
  tpoobj.SetFocus;
  guarda.Enabled :=false;
end;

procedure TMutualesCtaCtes.RECIBO1Exit(Sender: TObject);
begin
  if (trim(RECIBO1.Text) = '') or (trim(RECIBO1.Text) = '0')  then begin
    messagedlg('ERROR Nro Recibo Incorrecto',mtError,[mbok],0);
    RECIBO1.SetFocus ;
  end;
end;

procedure TMutualesCtaCtes.DESCRIPExit(Sender: TObject);
begin
   if (trim(DESCRIP.Text) = '') or (trim(DESCRIP.Text) = '0')  then begin
    messagedlg('ERROR Nro de Planilla Incorrecto',mtError,[mbok],0);
    DESCRIP.SetFocus ;
  end;
end;

procedure TMutualesCtaCtes.LasMutualesExit(Sender: TObject);
begin
 if LasMutuales.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe la Mutual/Sindicato Ingresado!!',mterror,[mbok],0);
  LasMutuales.SetFocus;
 end
 else  nrocuenta.Text := IdCombos[2,lasmutuales.ItemIndex] ;
end;

procedure TMutualesCtaCtes.LasMutualesKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
 // nrocuenta.Text := IdCombos[2,lasmutuales.ItemIndex] ;
  nrocuenta.SetFocus;
 end;
end;

end.

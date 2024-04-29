unit NewPagos_CuentaCorrientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, DBCtrls, Grids,  StdCtrls, Mask, ExtCtrls, DBGrids,
  ComCtrls, ADODB, DB, ImgList, JvExButtons, JvBitBtn, ToolWin, JvgGroupBox,
  Unidad, DBClient, WSDLIntf, ClaseFunciones, StrUtils, ClaseParcelasCuentasCorrientes,
  ClaseSistemas,ClaseParcelasCuentasCorrientesPeriodos,ClaseParcelasNovedades;

type LosEdit = class(TEdit);
type
  TAM_NewPagosCtaCte = class(TForm)
    PC1: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet2: TTabSheet;
    DataSource1: TDataSource;
    ImageList1: TImageList;
    Barra1: TStatusBar;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    Limpiar: TJvBitBtn;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    JvBitBtn1: TJvBitBtn;
    ToolButton1: TToolButton;
    ToolButton5: TToolButton;
    GroupBox2: TGroupBox;
    DataSource2: TDataSource;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox4: TGroupBox;
    DBGrid2: TDBGrid;
    grupo1: TJvgGroupBox;
    Label30: TLabel;
    Label38: TLabel;
    Label23: TLabel;
    Label32: TLabel;
    Label11: TLabel;
    Label20: TLabel;
    Label5: TLabel;
    FECINI: TMaskEdit;
    RECIBO1: TEdit;
    IMPORTE: TEdit;
    DESCRIP: TEdit;
    IDENTIF: TEdit;
    TPOTALON: TComboBox;
    PV: TComboBox;
    GUARDA: TJvBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure FECINIKeyPress(Sender: TObject; var Key: Char);
    procedure FECINIExit(Sender: TObject);
    procedure RECIBO1KeyPress(Sender: TObject; var Key: Char);
    procedure IMPORTEKeyPress(Sender: TObject; var Key: Char);
    procedure DESCRIPKeyPress(Sender: TObject; var Key: Char);
    procedure GUARDAClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure LimpiarClick(Sender: TObject);
    procedure LimpiarVentana(nro:byte);
    procedure IMPORTEExit(Sender: TObject);
    procedure TPOTALONExit(Sender: TObject);
    procedure PVExit(Sender: TObject);
    procedure TPOTALONKeyPress(Sender: TObject; var Key: Char);
    procedure PVKeyPress(Sender: TObject; var Key: Char);
    procedure RECIBO1Exit(Sender: TObject);
    procedure DESCRIPExit(Sender: TObject);
  private
    Com1:TADOCommand;
    IdCombos:array of array of string;
    DataSet0,DataSet1,DtCombo,DtCombPeri,DataCtaCte,DataCtaCteDet:TClientDataSet;
    IdPagos:array of array of string;
    Funciones:TFuncionesVarias;
    ParcelasCuentasCorrientes:TParcelasCuentasCorrientes;
    Sistemas:TSistemas;
    PosSelec,PosPv:integer;
    ParcelasCuentasCorrientesPeriodos:TParcelasCuentasCorrientesPeriodos;
    FechaActual,FecAnula,ELID,elIdServicio,laaccion,TipoObjeto,nropla,imp,Identi:string;
    TiposObjetos:Unidad.TablaXML;{ Private declarations }
  public
    ParcelasNovedades:TParcelasNovedades;
    gh,NroOpcion:boolean;{ Public declarations }
  end;

var
  AM_NewPagosCtaCte: TAM_NewPagosCtaCte;

implementation

uses Modulo, Busqueda, Anula_Generica,SelecPagos;

{$R *.dfm}

procedure TAM_NewPagosCtaCte.FormActivate(Sender: TObject);
begin
 if not(gh) then begin
  gh:=true;
  setlength(IdCombos,2);
  grupo1.Enabled :=false;
  FechaActual:=LeftStr(Fec_System(),10);
  PC1.ActivePage:=PC1.Pages[1];
  FECINI.Text:=FechaActual;
  Coloca1(0);
  Coloca1(7);
  pc1.Pages[0].TabVisible:=true;
  pc1.Pages[1].TabVisible:=false;
  guarda.enabled:=false;
  limpiar.Visible:=false;
  dbgrid1.SetFocus;
 end;
end;

procedure TAM_NewPagosCtaCte.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TAM_NewPagosCtaCte.Coloca1(nro:byte);
var t,y,r,s,p:integer;
    Ident,NroObj,NroCta:variant;
    txt:string;
    txtw:widestring;
    tot:real;
    Ok:boolean;
        Com1: TADOCommand;
begin
if nro=0 then begin
  DataCtaCte.Free;
  DataCtaCte:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=DataCtaCte;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT Id,NroFactura,NroPlanilla,convert(char(10),FechaPlanilla,103) as FechaPlanilla,'
  +'ComprobantesCobrados .Identificador,obj.Detalle ,Importe, Observ,NroTipoObjeto  FROM ComprobantesCobrados '
  +'inner join TiposObjetos obj on ComprobantesCobrados.NroTipoObjeto = obj.NroTipo '
  +'inner join ParcelasCuentasCorrientes cta on ComprobantesCobrados .Identificador = cta.Identificador '
  +'WHERE (IdFormaPago = 0) AND (Anulado = 0) and cta.Cobrado = 0 ';
  if not Funciones.Listar(txtw,DataCtaCte) then
   messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
end;
if nro=1 then begin //Combo TipoObjetos
{  TPOOBJ.Clear;
   DtCombo.Free;
   DtCombo:=TClientdataSet.Create(nil);
   Funciones:=TFuncionesVarias.Create(nil);
   Funciones.ConnectionString:=modulo2.Conexion;
   if not Funciones.Listar('SELECT NroTipo,Detalle,InicioDeuda FROM TiposObjetos Order by Detalle',DtCombo) then
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
  TPOOBJ.ItemIndex:=0;  }
end;
if nro=2 then begin //Datos de las Acciones
{  DataSet1.Free;
  DataSet1:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if IdCombos[0,TPOOBJ.ItemIndex] = '3' then begin  //Mantenimiento
   Ident:=NROCUENTA.Text;NroObj:=null;
   if not Funciones.Run_Fn_VistaParcelasMantenimientoTitulares(Ident,'','',NroObj,DataSet1,'',0) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
   else begin
    if not DataSet1.IsEmpty then begin
     D1.Text:=DataSet1.Fields[1].AsString;
     D2.Text:=DataSet1.Fields[13].AsString;
     D3.Text:=DataSet1.Fields[11].AsString;
     D4.Text:=DataSet1.Fields[2].AsString;
     if DataSet1.Fields[15].AsString = 'True' then D9.Checked:=true
      else D9.Checked:=false;
     if D9.Checked then D5.Text:=DataSet1.Fields[4].AsString
      else D5.Text:=DataSet1.Fields[3].AsString;
     D6.Text:=DataSet1.Fields[8].AsString;
     D7.Text:=DataSet1.Fields[10].AsString;
     D8.Text:=DataSet1.Fields[9].AsString;
    end
    else messagedlg('ERROR!! N° ACCION NO encontrado. Verifique el valor ingresado',mtError,[mbok],0);
   end;
   PC2.ActivePage:=PC2.Pages[1];
  end;

  if IdCombos[0,TPOOBJ.ItemIndex] = '1' then begin   //Ventas
   Ident:=NROCUENTA.Text;NroObj:=null;
   if not Funciones.Run_Fn_VistaParcelasVentasTitulares(NroObj,Ident,'',true,false,'',NroObj,DataSet1,'',0) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
   else begin
    if not DataSet1.IsEmpty then begin
     D20.Text:=DataSet1.Fields[0].AsString;
     D21.Text:=DataSet1.Fields[1].AsString;
     D22.Text:=DataSet1.Fields[21].AsString;
     D23.Text:=DataSet1.Fields[19].AsString;
     D24.Text:=DataSet1.Fields[2].AsString;
     D25.Text:=DataSet1.Fields[5].AsString;
     D26.Text:=DataSet1.Fields[14].AsString;
     D27.Text:=DataSet1.Fields[16].AsString;
     D28.Text:=DataSet1.Fields[15].AsString;
    end
    else messagedlg('ERROR!! N° de VENTA NO encontrado. Verifique el valor ingresado',mtError,[mbok],0);
   end;
   PC2.ActivePage:=PC2.Pages[3];
  end;

  if IdCombos[0,TPOOBJ.ItemIndex] = '2' then begin   //Servicios
   Ident:=NROCUENTA.Text;NroObj:=null;
   if not Funciones.Run_Fn_VistaParcelasServiciosTitulares(NroObj,Ident,'',true,false,'',NroObj,DataSet1,'',0) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
   else begin
    if not DataSet1.IsEmpty then begin
     D10.Text:=DataSet1.Fields[0].AsString;
     D11.Text:=DataSet1.Fields[1].AsString;
     D12.Text:=DataSet1.Fields[24].AsString;
     D13.Text:=DataSet1.Fields[22].AsString;
     D14.Text:=DataSet1.Fields[2].AsString;
     D15.Text:=DataSet1.Fields[7].AsString;
     D16.Text:=DataSet1.Fields[19].AsString;
     D17.Text:=DataSet1.Fields[21].AsString;
     D18.Text:=DataSet1.Fields[20].AsString;
     D19.Text:=DataSet1.Fields[26].AsString;
    end
    else messagedlg('ERROR!! N° de SERVICIO NO encontrado. Verifique el valor ingresado',mtError,[mbok],0);
   end;
   PC2.ActivePage:=PC2.Pages[2];
  end;

  if IdCombos[0,TPOOBJ.ItemIndex] = '4' then begin   //Consolidado
   Ident:=NROCUENTA.Text;
   NroObj:=null;
    if not Funciones.Listar('SELECT * FROM Fn_VistaParcelasConsolidadosTitulares (' +Ident +',null,null,null,0)',DataSet1) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
   else begin
    if not DataSet1.IsEmpty then begin
     D29.Text:=DataSet1.Fields[0].AsString;
     D30.Text:=DataSet1.Fields[1].AsString;
     D31.Text:=DataSet1.Fields[8].AsString;
     D32.Text:=DataSet1.Fields[6].AsString;
     D33.Text:=DataSet1.Fields[2].AsString;
     D36.Text:=DataSet1.Fields[3].AsString;
     D37.Text:=DataSet1.Fields[5].AsString;
     D38.Text:=DataSet1.Fields[4].AsString;
    end
    else messagedlg('ERROR!! CONSOLIDADO NO encontrado. Verifique el valor ingresado',mtError,[mbok],0);
   end;
   PC2.ActivePage:=PC2.Pages[0];
  end;
  Funciones.Free;    }
end;
if nro = 3 then begin
  DataCtaCteDet:=TClientdataSet.Create(nil);
  DataSource2.DataSet:=DataCtaCteDet;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='select ID,Periodo from ComprobantesCobradosPeriodos where IdComprobanteCobrado = ' + laaccion ;
  if not Funciones.Listar(txtw,DataCtaCteDet) then
   messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
end;
if nro=4 then begin
{ DtCombo:=TClientdataSet.Create(nil);
 Funciones:=TFuncionesVarias.Create(nil);
 Funciones.ConnectionString:=modulo2.Conexion;
 if not Funciones.Listar('select MAX(idpago) from ParcelasMantenimientoPagos where NroAccion=' + trim(nrocuenta.Text),DtCombo) then
   messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
 else begin
   ELID:=trim(DtCombo.Fields[0].AsString);
 end;
 DtCombo.Free;   }
end;
if nro = 5  then begin
  try
    Com1:=TADOCommand.Create(nil);
    Com1.ConnectionString:=modulo2.Conexion;
    Com1.CommandText:='SPC_ParcelasNovedadesManteCtaCteModificar ' + laaccion;
    Com1.Execute;
  finally
    Com1.Free;
  end;
end;
if nro=6 then  begin
{  DtCombPeri:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if (IdCombos[0,TPOOBJ.ItemIndex] = '2') then begin    /// estado de cueta servcios
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
  end;

  if (IdCombos[0,TPOOBJ.ItemIndex] = '3') then begin    /// estado de cueta mantenimiento
   if not Funciones.Listar('select Periodo,ImporteCuota,TotalCuota from EstadoCuentaMantenimiento  ' +
   '(' + trim(nrocuenta.Text) + ',getdate(),0) where EstadoPago=''DEUDA'' order by periodo',DtCombPeri) then
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

  if (IdCombos[0,TPOOBJ.ItemIndex] = '1') then begin  /// estado de cueta ventas
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
  end;
  DtCombPeri.Free;   }
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

procedure TAM_NewPagosCtaCte.FECINIKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  tpotalon.SetFocus;
end;
end;

procedure TAM_NewPagosCtaCte.FECINIExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(FECINI.Text));
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  FECINI.SetFocus;
end;
end;

procedure TAM_NewPagosCtaCte.RECIBO1KeyPress(Sender: TObject;
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

procedure TAM_NewPagosCtaCte.IMPORTEKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  //panel1.Visible :=true;
  descrip.SetFocus;
 end
 else begin
  if ( StrScan('0123456789.',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;
end;

procedure TAM_NewPagosCtaCte.DESCRIPKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  if GUARDA.Enabled then GUARDA.SetFocus;
end;
end;

procedure TAM_NewPagosCtaCte.GUARDAClick(Sender: TObject);
var TodoOk1,Ok,alta:boolean;
var t,y,gf:integer;
    txtw:widestring;
    valor,texto:string;
begin
 gf:=messagedlg('Desea CONFIRMAR de Pago de esta Cta. Corriente',mtWarning,[mbok,mbCancel],0);
 if gf = 1 then begin
   ParcelasCuentasCorrientes:=TParcelasCuentasCorrientes.Create(nil);
   ParcelasCuentasCorrientes.ConnectionString:=modulo2.Conexion;
   ParcelasCuentasCorrientes.C_IdObjeto:=TipoObjeto;
   ParcelasCuentasCorrientes.C_Identificador:=Identi;
   ParcelasCuentasCorrientes.C_FechaCarga:=FECINI.Text;
   ParcelasCuentasCorrientes.C_IdServicio := null;
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
   try
    DBGrid2.datasource.dataset.disablecontrols;
    DBGrid2.datasource.dataset.first;
    while not DBGrid2.datasource.dataset.eof do
    begin
     ParcelasCuentasCorrientesPeriodos:=TParcelasCuentasCorrientesPeriodos.Create(nil);
     ParcelasCuentasCorrientesPeriodos.ConnectionString:=modulo2.Conexion;
     ParcelasCuentasCorrientesPeriodos.C_IdCuentaCorriente:= strtoint(valor);
     ParcelasCuentasCorrientesPeriodos.C_NroAccion:=Identi;
     ParcelasCuentasCorrientesPeriodos.C_NroTipoObjeto:=TipoObjeto;
     ParcelasCuentasCorrientesPeriodos.C_Periodo:=DBGrid2.datasource.dataset.fieldbyname('periodo').AsString ;
     ParcelasCuentasCorrientesPeriodos.C_ImporteCuota:=null;
     Ok:=ParcelasCuentasCorrientesPeriodos.Agrega;
     ParcelasCuentasCorrientesPeriodos.Free;
     DBGrid2.datasource.dataset.next;
    end;
   finally
    DBGrid2.datasource.dataset.enablecontrols;
   end;

    if Ok then begin
      messagedlg('El pago de la Cuenta Corriente fue guardada Correctamente',mtConfirmation,[mbok],0);
    {  texto:='Se Agrego a modo de Cuenta Corriente la Deuda correspondiente a: '  + trim(tpoobj.Text) + ' por el Importe de $' + trim(importe.Text);
      ParcelasNovedades:=TParcelasNovedades.Create(nil);
      ParcelasNovedades.ConnectionString:=modulo2.Conexion;
      txtw:='INSERT INTO ParcelasNovedades (Nroaccion,Novedad,Resuelto,Prioridad) VALUES ('
      + trim(nrocuenta.Text) + ' , ' + chr(39) + texto + chr(39) + ' , 0 , 1)';
      alta:=ParcelasNovedades.ListarSinResp(txtw);
      if alta then begin
      //
      end;
      ParcelasNovedades.Free;      }
      tpotalon.ItemIndex :=0;
      fecini.Text :=LeftStr(Fec_System(),10);
      tpotalon.ItemIndex :=0;
      pv.ItemIndex :=0;
      recibo1.Text :='00000'  ;
      importe.Text :='000.00';
      guarda.Enabled :=false;
    end
    else messagedlg('ERROR!!... Al Guardar la Cuenta Corriente de la Accion seleccionada.',mtError,[mbok],0);  
   end;                  
 end
 else begin
  messagedlg('Ud. ha Cancelado la Confirmacion de Pago de esta Cta. Corriente',mtWarning,[mbok,mbCancel],0);
 end;
end;

procedure TAM_NewPagosCtaCte.DBGrid1CellClick(Column: TColumn);
begin
  laaccion:=DataCtaCte.Fields[0].AsString;
  TipoObjeto:=DataCtaCte.Fields[8].AsString;
  nropla:=DataCtaCte.Fields[2].AsString;
  imp:= DataCtaCte.Fields[6].AsString;
  Identi:= DataCtaCte.Fields[4].AsString;
  importe.Text :=imp;
  descrip.Text := nropla;
  if laaccion <> '' then begin
   Coloca1(3);
   grupo1.Enabled :=true;
   guarda.Enabled :=true;
   fecini.SetFocus;
  end
  else begin
   grupo1.Enabled :=false;
   guarda.Enabled :=false;
  end;
end;

procedure TAM_NewPagosCtaCte.JvBitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TAM_NewPagosCtaCte.LimpiarClick(Sender: TObject);
begin
LimpiarVentana(0);
end;

procedure TAM_NewPagosCtaCte.LimpiarVentana(nro:byte);
var t,r,p,u:integer;
begin
  TPOTALON.ItemIndex :=0;
  PV.ItemIndex :=0;
  IDENTIF.Text:='00000';
  RECIBO1.Text:='000000000000';
  FECINI.Text:=FechaActual;
  IMPORTE.Text:='000.00';
  DESCRIP.Clear;
  GUARDA.Enabled:=false;
end;

procedure TAM_NewPagosCtaCte.IMPORTEExit(Sender: TObject);
var Selec_Pagos:TSelec_Pagos;
    t,p:integer;
begin
  if (trim(IMPORTE.Text) = '') or (trim(IMPORTE.Text) = '0')  then begin
    messagedlg('ERROR IMPORTE Incorrecto',mtError,[mbok],0);
    IMPORTE.SetFocus ;
  end
  else coloca1(6);
end;

procedure TAM_NewPagosCtaCte.TPOTALONExit(Sender: TObject);
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

procedure TAM_NewPagosCtaCte.PVExit(Sender: TObject);
begin
 if PV.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Punto de Venta Ingresado!!',mterror,[mbok],0);
  PV.SetFocus;
 end
 else begin
  if PV.ItemIndex <> PosPv then PosPv:=PV.ItemIndex;
 end;
end;

procedure TAM_NewPagosCtaCte.TPOTALONKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  pv.SetFocus;
end;
end;

procedure TAM_NewPagosCtaCte.PVKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  recibo1.SetFocus;
end;
end;

procedure TAM_NewPagosCtaCte.RECIBO1Exit(Sender: TObject);
begin
  if (trim(RECIBO1.Text) = '') or (trim(RECIBO1.Text) = '0')  then begin
    messagedlg('ERROR Nro Recibo Incorrecto',mtError,[mbok],0);
    RECIBO1.SetFocus ;
  end;
end;

procedure TAM_NewPagosCtaCte.DESCRIPExit(Sender: TObject);
begin
   if (trim(DESCRIP.Text) = '') or (trim(DESCRIP.Text) = '0')  then begin
    messagedlg('ERROR Nro de Planilla Incorrecto',mtError,[mbok],0);
    DESCRIP.SetFocus ;
  end;
end;

end.

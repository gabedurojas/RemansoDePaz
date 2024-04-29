unit CambioPagosRecibosAccion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, JvExGrids, JvStringGrid, StdCtrls, JvgGroupBox, Mask,DBClient,
  DBGrids, JvExDBGrids, JvDBGrid, Buttons, JvExButtons, JvBitBtn, ExtCtrls,
  ComCtrls, DB,DBCtrls,StrUtils, ToolWin,ClaseSistemas,ClaseFunciones,ADODB,
  RpDefine, RpBase, RpSystem, JvExStdCtrls, JvEdit, JvValidateEdit, ClaseComprobantesCobradosPeriodos,
  ImgList,  ClaseAtaudUsos,  JvSimLogic, RpRender, RpRenderPDF, Menus;

type LosDts = class(TDataSource);
type HackTable = class(TADOTable);

type THackStringGrid = class(TStringGrid);
type
  TChangeRecibosAccion = class(TForm)
    PC1: TPageControl;
    TabSheet3: TTabSheet;
    grupo1: TGroupBox;
    Barra1: TStatusBar;
    ToolBar1: TToolBar;
    JvBitBtn3: TJvBitBtn;
    Image1: TImage;
    Panel1: TPanel;
    Label20: TLabel;
    TPOTALON: TComboBox;
    Label4: TLabel;
    actu: TBitBtn;
    PV: TComboBox;
    Label5: TLabel;
    elcomprob: TEdit;
    DataSource1: TDataSource;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
    SALE: TJvBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    StringAgrupD: TStringGrid;
    StringGrid1: TStringGrid;
    ImageList1: TImageList;
    GroupBox1: TGroupBox;
    id: TEdit;
    accion: TEdit;
    comprobante: TEdit;
    NroComprob: TEdit;
    planilla: TEdit;
    fechaplanilla: TEdit;
    importe: TEdit;
    detalle: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    PopupMenu1: TPopupMenu;
    VerDeudaHastaFinAo1: TMenuItem;
    Edit2: TEdit;
    Label12: TLabel;
    idtipoobjeto: TEdit;
    Edit1: TEdit;
    Label11: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure JvBitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TPOTALONExit(Sender: TObject);
    procedure comprobKeyPress(Sender: TObject; var Key: Char);
    procedure TPOTALONKeyPress(Sender: TObject; var Key: Char);
    procedure elcomprobKeyPress(Sender: TObject; var Key: Char);
    procedure elcomprobExit(Sender: TObject);
    procedure elcomprobChange(Sender: TObject);
    procedure PVExit(Sender: TObject);
    procedure PVKeyPress(Sender: TObject; var Key: Char);
    procedure SALEClick(Sender: TObject);
    procedure Limpiar(nro:byte);
    procedure StringAgrupDClick(Sender: TObject);
    procedure actuClick(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Change(Sender: TObject);
  private
   control,gh,ci,exist:boolean;
   cants,cantis,cant:integer;
   Funciones:TFuncionesVarias;
   Sistemas:TSistemas;
   ComprobantesCobradosPeriodos:TComprobantesCobradosPeriodos;
   IdPagos:array of array of string;
   IdCombos:array of array of string;
   edadsusc,dnisusc,domsusc,edadinhu,dniinhu,dominhu,sexoinhu,nroorden,nacioinhu,estcivilinhu,actacircu,numactacircu ,
   edadt1,dnit1,domt1,edadt2,dnit2,domt2,fecnacinhu,tipocomprob,laobserva,idcrema,iddestino,nroactacircu,observ,impmante:string;
   Filename: string;
    { Private declarations }
  public
    PROCESO,PROCESO1,PROCESO2: TADODataSet;
    DataSet,DataSet1,DtCombo,DtComboC,DtComboO,DataSetSaldo:TClientDataSet; //declaro el DAtaset de los Combobox
    DSGral:TClientDataSet;//declaro el DAtaset de la grilla
  end;

var
  ChangeRecibosAccion: TChangeRecibosAccion;

implementation

uses Modulo,Unidad,SelecPagos;

{$R *.dfm}

procedure TChangeRecibosAccion.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TChangeRecibosAccion.FormActivate(Sender: TObject);
begin
 if not(gh) then begin
  gh:=true;
  PROCESO:=TADODataSet.Create(nil);
  PROCESO.ConnectionString:=modulo2.Conexion;
  PROCESO1:=TADODataSet.Create(nil);
  PROCESO1.ConnectionString:=modulo2.Conexion;
  PROCESO2:=TADODataSet.Create(nil);
  PROCESO2.ConnectionString:=modulo2.Conexion;
  setlength(IdCombos,7);
  StringAgrupD.Cells[0,0]:='ID';              StringAgrupD.Cells[1,0]:='Accion';
  StringAgrupD.Cells[2,0]:='Comprobante';     StringAgrupD.Cells[3,0]:='NroComprob.';
  StringAgrupD.Cells[4,0]:='NroPlanilla';     StringAgrupD.Cells[5,0]:='FechaPlanilla';
  StringAgrupD.Cells[6,0]:='Importe';         StringAgrupD.Cells[7,0]:='Detalle';
  StringAgrupD.Cells[8,0]:='IdObjeto';

  StringGrid1.Cells[0,0]:='ID';               StringGrid1.Cells[1,0]:='Periodo';

  //grillaperiodos.Cells[0,0]:='Periodo';       grillaperiodos.Cells[1,0]:='Importe';
  //grillaperiodos.Cells[2,0]:='Interes';       grillaperiodos.Cells[3,0]:='Selec.';

  //coloca1(2);
  //grillaperiodos.visible:=false;
  PC1.ActivePage:=PC1.Pages[0];
  PageControl1.ActivePage:=PageControl1.Pages[0];
  coloca1(8);
  coloca1(11);
  coloca1(14);
  GroupBox1.Enabled :=false;
  //sale.Enabled :=false;
  actu.Enabled :=false;
  tpotalon.SetFocus;
 end;
end;

procedure TChangeRecibosAccion.limpiar(nro:byte);
begin
{CONTADO
CHEQUE
TARJETA CREDITO
CUENTA CORRIENTE   }
end;

procedure TChangeRecibosAccion.Coloca1(nro:byte);
var t,y,p,u:integer;
    txt,sex,nrosoli:string;
    txtw:widestring;
    Funciones:TFuncionesVarias;
    Sistema:TSistemas;
    NroDni,NroCuif,NroArea:variant;
begin
 exist:=false;
 if nro = 1 then begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if not Funciones.Listar('SELECT NroPlanilla FROM PlanillaCobranzas WHERE (NroPlanilla = ' + trim(planilla.Text) + ')',DtCombo) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
   if not DtCombo.IsEmpty then begin
     exist:=true;
     edit2.Text:='SI';
    end
    else begin
     exist:=false;
     edit2.Text:='NO';
    end;
  end;
  Funciones.Free;
 end;
 if nro = 2 then begin
 { for p:=0 to grillaperiodos.ColCount-1 do
   for u:=1 to grillaperiodos.RowCount-1 do grillaperiodos.Cells[p,u]:='';
  grillaperiodos.RowCount:=2;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT Periodo, TotalCuota as importe,InteresAcumulado as Punitorio,null '
  + ' FROM [EstadoCuentaMantenimiento] (0 ,GETDATE(),0) where Periodo >= year(DATEADD(year, -5, GETDATE())) * 100 + 01 and Periodo <> 999999';
  if not Funciones.Listar(txtw,DtCombo) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if not DtCombo.IsEmpty then begin
   for t:=1 to DtCombo.RecordCount do begin
    DtCombo.RecNo:=t;
    grillaperiodos.RowCount:=t+1;
    grillaperiodos.Cells[0,t]:=trim(DtCombo.Fields[0].AsString);
    grillaperiodos.Cells[1,t]:=trim(DtCombo.Fields[1].AsString);
    grillaperiodos.Cells[2,t]:=trim(DtCombo.Fields[0].AsString);
    grillaperiodos.Cells[3,t]:='';
   end;
  end
  else begin
   messagedlg('ATENCION... No se encontron pagos para este comprobante',mtWarning,[mbok],0);
   //tpotalon.SetFocus;
  end;    }
 end;
 if nro = 3 then begin
  for p:=0 to StringAgrupD.ColCount-1 do
   for u:=1 to StringAgrupD.RowCount-1 do StringAgrupD.Cells[p,u]:='';
  StringAgrupD.RowCount:=2;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT dbo.ComprobantesCobrados.Id, dbo.ComprobantesCobrados.Identificador AS Accion, '
  +'dbo.TiposComprobantes.DetalleComprobante, dbo.ComprobantesCobrados.NroComprobante, '
  +'dbo.ComprobantesCobrados.NroPlanilla, convert(char(10),dbo.ComprobantesCobrados.FechaPlanilla,103) as FechaPlanilla ,'
  +'dbo.ComprobantesCobrados.Importe, dbo.ComprobantesCobrados.Observ,dbo.ComprobantesCobrados.nrotipoobjeto FROM dbo.ComprobantesCobrados INNER JOIN '
  +'dbo.TiposComprobantes ON dbo.ComprobantesCobrados.IdTipoComprobante = dbo.TiposComprobantes.IDTipoComprobante '
  +' WHERE (dbo.TiposComprobantes.DetalleComprobante = ' +  chr(39) + trim(tpotalon.Text) +  chr(39) + ')'
  +' AND (dbo.ComprobantesCobrados.NroComprobante = ' +  chr(39) + StrFill(PV.Text,3,'0','') + '-' + StrFill(ELCOMPROB.Text,7,'0','') +  chr(39) + ')';
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
    StringAgrupD.Cells[3,t]:=trim(DtCombo.Fields[3].AsString);
    StringAgrupD.Cells[4,t]:=trim(DtCombo.Fields[4].AsString);
    StringAgrupD.Cells[5,t]:=trim(DtCombo.Fields[5].AsString);
    StringAgrupD.Cells[6,t]:=trim(DtCombo.Fields[6].AsString);
    StringAgrupD.Cells[7,t]:=trim(DtCombo.Fields[7].AsString);
    StringAgrupD.Cells[8,t]:=trim(DtCombo.Fields[8].AsString);
   end;
  end
  else begin
   messagedlg('ATENCION... No se encontron pagos para este comprobante',mtWarning,[mbok],0);
   //tpotalon.SetFocus;
  end ;
 end;
 if nro=7 then begin
   for p:=0 to StringGrid1.ColCount-1 do
   for u:=1 to StringGrid1.RowCount-1 do StringGrid1.Cells[p,u]:='';
  StringGrid1.RowCount:=2;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT IdComprobanteCobrado,Periodo FROM ComprobantesCobradosPeriodos '
  +' where (IdComprobanteCobrado = ' + idcrema +  ')';
  if not Funciones.Listar(txtw,DtCombo) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if not DtCombo.IsEmpty then begin
   for t:=1 to DtCombo.RecordCount do begin
    DtCombo.RecNo:=t;
    StringGrid1.RowCount:=t+1;
    StringGrid1.Cells[0,t]:=trim(DtCombo.Fields[0].AsString);
    StringGrid1.Cells[1,t]:=trim(DtCombo.Fields[1].AsString);
   end;
  end
  else begin
   //messagedlg('ATENCION... No se encontron pagos para este comprobante',mtWarning,[mbok],0);
   //tpotalon.SetFocus;
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
end;

procedure TChangeRecibosAccion.JvBitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TChangeRecibosAccion.TPOTALONExit(Sender: TObject);
begin
 if TPOTALON.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe un Tipo de Comprobante Valido!!',mterror,[mbok],0);
  TPOTALON.SetFocus;
 end;
end;

procedure TChangeRecibosAccion.comprobKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = chr(13) then actu.SetFocus;
end;

procedure TChangeRecibosAccion.TPOTALONKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  pv.SetFocus;
end;
end;

procedure TChangeRecibosAccion.elcomprobKeyPress(Sender: TObject; var Key: Char);
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

procedure TChangeRecibosAccion.elcomprobExit(Sender: TObject);
begin
 if (trim(elcomprob.Text) = '0') or (trim(elcomprob.Text) = '00000000') or (trim(elcomprob.Text) = '')  then begin
  messagedlg('ERROR!!... El N° de Comprobante es invalido',mterror,[mbok],0);
  elcomprob.SetFocus;
 end;
end;

procedure TChangeRecibosAccion.elcomprobChange(Sender: TObject);
begin
 actu.Enabled :=true;
end;

procedure TChangeRecibosAccion.PVExit(Sender: TObject);
begin
 if PV.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe un Tipo de Punto de Venta Valido!!',mterror,[mbok],0);
  PV.SetFocus;
 end;
end;

procedure TChangeRecibosAccion.PVKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  elcomprob.SetFocus;
 end;
end;

procedure TChangeRecibosAccion.SALEClick(Sender: TObject);
var gf,p,t,u:integer;
    txt,elcheque,txtw,eltipo,elorigen,chof:widestring;
var ac,at,ct,pt,pd,pe,pc,TodoOk1,TodoOk:boolean;
    elmes,elanio:string;
begin
 if (trim(Edit1.Text) = '') then begin
  messagedlg('Error!! El Nro.de  Accion No puede ser Vacio.',mterror,[mbok],0);
  edit1.SetFocus;
 end
 else begin
  gf:=messagedlgpos('Desea Confirmar este Cambio de Accion para este REcibo Pagado Seleccionado..',mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
  if gf = 1 then begin
   /// 1º actualizamon la tabla ComprobantesCobrados
    modulo2.Com1.ConnectionString:=modulo2.Conexion;
    modulo2.Com1.CommandText:='UPDATE ComprobantesCobrados SET Identificador = ' + trim(edit1.text)
    + ' WHERE (Id = ' + trim(id.text) + ')';
    modulo2.Com1.Execute;

    //////////////// preguntamos si la palanilla esta confirmada o NO
    if exist = true then begin;
     /// actualizamos la tabla ParcelasMantenimientoPagos  --- MANTENIMIENTO
     if trim(idtipoobjeto.Text) = '3' then begin
      modulo2.Com1.CommandText:='UPDATE ParcelasMantenimientoPagos SET NroAccion = ' + trim(edit1.text)
      + ' WHERE (IdCobro = ' + trim(id.text) + ')';
      modulo2.Com1.Execute;
     end;

     /// actualizamos la tabla ComprobantesCobrados    --- VENTAS
     if trim(idtipoobjeto.Text) = '1' then begin
      modulo2.Com1.CommandText:='UPDATE ParcelasVentasPagos SET NroAccion = ' +trim(edit1.text)
      + ' WHERE (IdCobro = ' + trim(id.text) + '';
      modulo2.Com1.Execute;
     end;

     /// actualizamos la tabla ParcelasServiciosPagos    --- SERVCIOS
     if trim(idtipoobjeto.Text) = '2' then begin
      modulo2.Com1.CommandText:='UPDATE ParcelasServiciosPagos SET NroAccion = ' + trim(edit1.text)
      + ' WHERE (IdCobro = ' + trim(id.text) + ')';
      modulo2.Com1.Execute;
     end;

     /// actualizamos la tabla ParcelasConsolidadosPagos    --- Consolidados
     if trim(idtipoobjeto.Text) = '4' then begin
      modulo2.Com1.CommandText:='UPDATE ParcelasConsolidadosPagos SET NroAccion = ' + trim(edit1.text)
      + ' WHERE (IdCobro = ' + trim(id.text) + '';
      modulo2.Com1.Execute;
     end;

     /// actualizamos la tabla PsPPagos    --- PSP
     if trim(idtipoobjeto.Text) = '6' then begin
      modulo2.Com1.CommandText:='UPDATE PsPPagos SET nrocuenta = ' + trim(edit1.text)
      + ' WHERE (IdCobro = ' + trim(id.text) + ')';
      modulo2.Com1.Execute;
     end;

     /// actualizamos la tabla PsPPagos    --- Servicios TRASLADOS
     if trim(idtipoobjeto.Text) = '10' then begin
      modulo2.Com1.CommandText:='UPDATE ParcelasServiciosTrasladosPagos SET IdServicioTraslado = ' + trim(edit1.text)
      + ' WHERE (IdCobro = ' + trim(id.text) + ')';
      modulo2.Com1.Execute;
     end;

     /// actualizamos la tabla Servicios Sepelios    --- Servicios Sepelios
     if trim(idtipoobjeto.Text) = '13' then begin
      modulo2.Com1.CommandText:='UPDATE ParcelasServiciosSepeliosPagos SET IdServicioSepelios =' + trim(edit1.text)
      + ' WHERE (IdCobro = ' + trim(id.text) + ')';
      modulo2.Com1.Execute;
     end;

     /// actualizamos la tabla ParcelasCremacionesPagos   --- CREMACIONES
     if trim(idtipoobjeto.Text) = '14' then begin
      modulo2.Com1.CommandText:='UPDATE ParcelasCremacionesPagos SET IdCremacion = ' + trim(edit1.text)
      + ' WHERE (IdCobro = ' + trim(id.text) + ')';
      modulo2.Com1.Execute;
     end;
    end;
    messagedlg('EXITO.... El Nro de Accion del PAGO fue Modificado correctamente..', mtConfirmation,[mbok],0) ;
    sale.Enabled :=false;
   //end
   //else messagedlg('Error al Guardar los Nuevos Periodos del Pago... Consulte con un Administrador',mtError,[mbok],0); ;
  end;
 end;
end;

procedure TChangeRecibosAccion.StringAgrupDClick(Sender: TObject);
begin
  idcrema:=trim(StringAgrupD.Cells[0,StringAgrupD.Row]);
  coloca1(7);
  id.text:=trim(StringAgrupD.Cells[0,StringAgrupD.Row]);
  accion.text:=trim(StringAgrupD.Cells[1,StringAgrupD.Row]);
  comprobante.text:=trim(StringAgrupD.Cells[2,StringAgrupD.Row]);
  nrocomprob.text:=trim(StringAgrupD.Cells[3,StringAgrupD.Row]);
  planilla.text:=trim(StringAgrupD.Cells[4,StringAgrupD.Row]);
  coloca1(1);
  fechaplanilla.text:=trim(StringAgrupD.Cells[5,StringAgrupD.Row]);
  importe.text:=trim(StringAgrupD.Cells[6,StringAgrupD.Row]);
  detalle.text:=trim(StringAgrupD.Cells[7,StringAgrupD.Row]);
  idtipoobjeto.text:=trim(StringAgrupD.Cells[8,StringAgrupD.Row]);
  GroupBox1.Enabled :=true;
  edit1.setfocus;
end;

procedure TChangeRecibosAccion.actuClick(Sender: TObject);
begin
 coloca1(3);
end;

procedure TChangeRecibosAccion.Edit1Exit(Sender: TObject);
begin
 if (trim(Edit1.Text) = '0') then begin
  messagedlg('Error!! No es un Nro. Accion Valido.',mterror,[mbok],0);
  Edit1.SetFocus
 end
 else sale.Enabled :=true;
end;

procedure TChangeRecibosAccion.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then begin
    Key := #0;
    sale.SetFocus;
  end
  else begin
    if ( StrScan('0123456789',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
     else Key := #0;
  end;
end;

procedure TChangeRecibosAccion.Edit1Change(Sender: TObject);
begin
sale.Enabled :=true;
end;

end.



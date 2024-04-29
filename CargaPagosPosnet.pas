unit CargaPagosPosnet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  DBClient, Dialogs, ComCtrls, StdCtrls, Buttons, DB, Grids, DBGrids,ADODB,
  ClaseSistemas,ClaseFunciones,ClasePosnet_Pagos, StrUtils, Unidad,
  JvExButtons, JvBitBtn, Mask;

type
  TCargaPosnetPagos = class(TForm)
    GroupBox1: TGroupBox;
    Barra1: TStatusBar;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    nroaccion: TEdit;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Label20: TLabel;
    TPOTALON: TComboBox;
    Label2: TLabel;
    Edit1: TEdit;
    actu: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    SALE: TJvBitBtn;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label8: TLabel;
    Edit5: TEdit;
    Label9: TLabel;
    Edit6: TEdit;
    Label10: TLabel;
    Edit7: TEdit;
    Label21: TLabel;
    IMPORTE: TEdit;
    Label11: TLabel;
    Edit8: TEdit;
    Label12: TLabel;
    tarjeta: TComboBox;
    Label13: TLabel;
    FECNAC: TMaskEdit;
    procedure Coloca1(nro:byte);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure nroaccionKeyPress(Sender: TObject; var Key: Char);
    procedure TPOTALONExit(Sender: TObject);
    procedure TPOTALONKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Exit(Sender: TObject);
    procedure actuClick(Sender: TObject);
    procedure LimpiarVentana(nro:byte);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure SALEClick(Sender: TObject);
    procedure IMPORTEExit(Sender: TObject);
    procedure IMPORTEKeyPress(Sender: TObject; var Key: Char);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure Edit7Exit(Sender: TObject);
    procedure tarjetaExit(Sender: TObject);
    procedure tarjetaKeyPress(Sender: TObject; var Key: Char);
    procedure FECNACExit(Sender: TObject);
    procedure FECNACKeyPress(Sender: TObject; var Key: Char);
  private
    Posnet_Pagos:TPosnet_Pagos;
    Funciones:TFuncionesVarias;
    Sistemas:TSistemas;
    DataSet1:TADODataSet;
    DataSet0,DtCombo:TClientDataSet;
    { Private declarations }
  public
    gh:boolean;
    elid,FechaActual:string;
    IdCombos:array of array of string;
    { Public declarations }
  end;

var
  CargaPosnetPagos: TCargaPosnetPagos;

implementation

uses Modulo;

{$R *.dfm}

procedure TCargaPosnetPagos.FormCreate(Sender: TObject);
begin
 gh:=false;
end;

procedure TCargaPosnetPagos.FormActivate(Sender: TObject);
begin
   if not(gh) then begin
     setlength(IdCombos,1);
     gh:=true;
     Coloca1(1);
     Coloca1(2);
     Label4.Caption:='...';
     nroaccion.SetFocus;
     fecnac.Text :=LeftStr(Fec_System(),10);
   end;
end;

procedure TCargaPosnetPagos.Coloca1(nro:byte);
var t,y,r,s:integer;
    txtw:widestring;
begin
  if nro=0 then begin
    DataSet0.Free;
    DataSet0:=TClientdataSet.Create(nil);
    DataSource1.DataSet:=DataSet0;
    Funciones:=TFuncionesVarias.Create(nil);
    Funciones.ConnectionString:=modulo2.Conexion;
    txtw:='SELECT dbo.ComprobantesCobrados.Id,dbo.TiposComprobantes.DetalleComprobante, dbo.ComprobantesCobrados.NroComprobante,'
     + 'dbo.ComprobantesCobrados.NroPlanilla, CONVERT(char(10), dbo.ComprobantesCobrados.FechaPlanilla, 103) AS FechaPlanilla,'
     + 'dbo.ComprobantesCobrados.Identificador,dbo.ComprobantesCobrados.Importe, dbo.TiposObjetos.Detalle, '
     + 'dbo.Clientes.RazonSocial AS Cobrador, dbo.TiposFormularios.Detalle AS TipoPlanilla FROM  dbo.ComprobantesCobrados INNER JOIN '
     + 'dbo.TiposComprobantes ON dbo.ComprobantesCobrados.IdTipoComprobante = dbo.TiposComprobantes.IDTipoComprobante INNER JOIN '
     + 'dbo.TiposObjetos ON dbo.ComprobantesCobrados.NroTipoObjeto = dbo.TiposObjetos.NroTipo INNER JOIN '
     + 'dbo.Clientes ON dbo.ComprobantesCobrados.CuifCobrador = dbo.Clientes.Cuif INNER JOIN '
     + 'dbo.TiposFormularios ON dbo.ComprobantesCobrados.NroFormulario = dbo.TiposFormularios.NroFormulario '
     + ' WHERE (dbo.ComprobantesCobrados.FechaPlanilla >= ''01/05/2016'') AND (dbo.ComprobantesCobrados.Importe > 0) '
     + ' AND (dbo.ComprobantesCobrados.Anulado = 0)  '  // AND (dbo.ComprobantesCobrados.NroFactura IS NULL)
     + ' and (dbo.ComprobantesCobrados.NroComprobante like ''%' + trim(nroaccion.Text) + ''')';
    if not Funciones.Listar(txtw,DataSet0) then begin
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    end
    else begin
      if DataSet0.RecordCount > 0 then begin
          actu.Enabled:=true;
      end
      else begin
          messagedlg('ERROR!! No Existe el Comprobante Ingresado!!',mtInformation,[mbok],0);
          actu.Enabled:=false;
      end;
    end;
    Funciones.Free;
  end;
  if nro=1 then begin //Combo terminales
   TPOTALON.Clear;
    DtCombo.Free;
    DtCombo:=TClientdataSet.Create(nil);
    Funciones:=TFuncionesVarias.Create(nil);
    Funciones.ConnectionString:=modulo2.Conexion;
    if not Funciones.Listar('SELECT  Nombre, IdTerminal FROM  Posnet_Terminales WHERE '
    +' (Deshabilitado = 0) order by 1 desc',DtCombo) then
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
  if nro = 2 then begin  //combo tarjetas
    tarjeta.Clear;
    DtCombo.Free;
    DtCombo:=TClientdataSet.Create(nil);
    Funciones:=TFuncionesVarias.Create(nil);
    Funciones.ConnectionString:=modulo2.Conexion;
    if not Funciones.Listar('SELECT  NroTarjeta,DetalleTarjeta FROM  TiposTarjetasCredito',DtCombo) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
    else begin
      SetLength(IdCombos[0],DtCombo.RecordCount);
      for t:=1 to DtCombo.RecordCount  do begin
        DtCombo.RecNo:=t;
        tarjeta.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
        IdCombos[0,t-1]:=DtCombo.Fields[0].AsString;
      end;
    end;
    Funciones.Free;
   tarjeta.ItemIndex:=0;
  end;

end;

procedure TCargaPosnetPagos.nroaccionKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  Coloca1(0);
end
else begin
  if ( StrScan('0123456789',Key) <> nil ) or
      ( Key = Char(VK_BACK) ) then
   else Key := #0;
end;
end;

procedure TCargaPosnetPagos.TPOTALONExit(Sender: TObject);
begin
if TPOTALON.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Comprobante Ingresado!!',mterror,[mbok],0);
  TPOTALON.SetFocus;
end;
end;

procedure TCargaPosnetPagos.TPOTALONKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  edit1.SetFocus;
end;
end;

procedure TCargaPosnetPagos.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  edit7.SetFocus;
end
else begin
  if ( StrScan('0123456789',Key) <> nil ) or
      ( Key = Char(VK_BACK) ) then
   else Key := #0;
end;
end;

procedure TCargaPosnetPagos.Edit1Exit(Sender: TObject);
begin
if (trim(Edit1.Text) = '0') or (trim(Edit1.Text) = '')  then begin
  messagedlg('ERROR!!... El N° de Lote es invalido',mterror,[mbok],0);
  Edit1.SetFocus;
end;
end;

procedure TCargaPosnetPagos.LimpiarVentana(nro:byte);
var t:integer;
begin
if nro = 0 then begin
  tarjeta.ItemIndex:=0;
  TPOTALON.ItemIndex:=0;
  Label4.Caption:='...';
  NroACCION.Clear;
  EDIT2.Clear;     EDIT3.Clear;
  EDIT4.Clear;     EDIT5.Clear;
  EDIT6.Clear;     EDIT1.Clear;
  EDIT7.Clear;     EDIT8.Clear;
  importe.Text:='0000.00';
  actu.Enabled:=false;
  nroaccion.SetFocus;
//  try
//    t:=strtoint(trim(edit1.Text));
//    t:=t+1;
//    edit1.Text:=inttostr(t);
//  except
//    edit1.Text:='';
//  end;
end;
end;

procedure TCargaPosnetPagos.actuClick(Sender: TObject);
var gf:integer;
    txt:string;
    TodoOk1:boolean;
    txtw:widestring;
begin
txt:='';
gf:=messagedlg('Desea Actualizar el Comprobantes Seleccionado con los Datos del Posnet?',mtWarning,[mbok,mbCancel],0);
  if gf = 1 then begin
    Posnet_Pagos:=TPosnet_Pagos.Create(nil);
    Posnet_Pagos.ConnectionString:=modulo2.Conexion;
    Posnet_Pagos.C_IdComprobanteCobrado:=trim(label4.Caption);
    Posnet_Pagos.C_NroTarjeta:=strtoint(IdCombos[0,tarjeta.ItemIndex]);
    Posnet_Pagos.C_IdTerminal:=trim(tpotalon.Text);
    Posnet_Pagos.C_Lote:=trim(edit1.Text);
    Posnet_Pagos.C_Ticket:=trim(edit7.Text);
    Posnet_Pagos.C_Importe:=AnsiReplaceStr(trim(IMPORTE.Text),chr(44),chr(46));;
    Posnet_Pagos.C_FechaHora:= trim(fecnac.Text);
    TodoOk1:=Posnet_Pagos.Agrega;
    if TodoOk1 then begin
      messagedlg('Se ha Guardado el Pago Posnet con Exito',mtConfirmation,[mbok],0);
      LimpiarVentana(0);
      nroaccion.SetFocus;
    end
    else messagedlg('ERROR!!... Al Guardar los Datos.',mtError,[mbok],0);
  end;
end;

procedure TCargaPosnetPagos.DBGrid1CellClick(Column: TColumn);
begin
  if not DataSet0.IsEmpty then begin
    actu.Enabled:=true;
    Label4.Caption:=DataSet0.Fields[0].AsString;
    edit2.Text :=DataSet0.Fields[5].AsString;
    edit5.Text :=DataSet0.Fields[2].AsString;
    edit3.Text:=DataSet0.Fields[7].AsString;
    edit4.Text:=DataSet0.Fields[6].AsString;
    edit6.Text:=DataSet0.Fields[8].AsString;
    edit8.Text:=DataSet0.Fields[1].AsString;
    importe.Text:=DataSet0.Fields[6].AsString;
    fecnac.SetFocus;
  end;
end;

procedure TCargaPosnetPagos.SALEClick(Sender: TObject);
begin
close;
end;

procedure TCargaPosnetPagos.IMPORTEExit(Sender: TObject);
begin
  if trim(IMPORTE.Text)='' then IMPORTE.Text:='000.00';
  if trim(IMPORTE.Text)='0' then IMPORTE.Text:='000.00';
  if  trim(IMPORTE.Text) <> '000.00' then actu.SetFocus
   else begin
     messagedlg('ERROR!! El Valor del Pago no puede ser Cero(0)',mterror,[mbok],0);
     importe.SetFocus;
   end;
end;

procedure TCargaPosnetPagos.IMPORTEKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  //if (cpa.Checked) and (trim(aniopago.Text) <> '0') then observ.Text:='Pago Anual ' + trim(aniopago.Text) ;
   actu.SetFocus;
  //if GUARDA.Enabled then GUARDA.SetFocus;
end
else begin
  if ( StrScan('0123456789.,',Key) <> nil ) or
      ( Key = Char(VK_BACK) ) then
   else Key := #0;
end;
end;

procedure TCargaPosnetPagos.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  //if (cpa.Checked) and (trim(aniopago.Text) <> '0') then observ.Text:='Pago Anual ' + trim(aniopago.Text) ;
   importe.SetFocus;
  //if GUARDA.Enabled then GUARDA.SetFocus;
end
else begin
  if ( StrScan('0123456789,',Key) <> nil ) or
      ( Key = Char(VK_BACK) ) then
   else Key := #0;
end;
end;

procedure TCargaPosnetPagos.Edit7Exit(Sender: TObject);
begin
if (trim(Edit7.Text) = '0') or (trim(Edit7.Text) = '')  then begin
  messagedlg('ERROR!!... El N° de Cupon/Ticket es invalido',mterror,[mbok],0);
  Edit7.SetFocus;
end;
end;

procedure TCargaPosnetPagos.tarjetaExit(Sender: TObject);
begin
if tarjeta.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Nombre de tarjeta Ingresado!!',mterror,[mbok],0);
  tarjeta.SetFocus;
end;
end;

procedure TCargaPosnetPagos.tarjetaKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  tpotalon.SetFocus;
end;
end;

procedure TCargaPosnetPagos.FECNACExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(FECNAC.Text));
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  FECNAC.SetFocus;
end;
end;


procedure TCargaPosnetPagos.FECNACKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  tarjeta.SetFocus;
end;
end;

end.

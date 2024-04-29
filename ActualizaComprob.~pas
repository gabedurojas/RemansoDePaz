unit ActualizaComprob;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  DBClient, Dialogs, ComCtrls, StdCtrls, Buttons, DB, Grids, DBGrids,ADODB,
  ClaseSistemas,ClaseFunciones,ClaseComprobantesCobrados, StrUtils, Unidad,
  JvExButtons, JvBitBtn;

type
  TActucomprob = class(TForm)
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
    Label11: TLabel;
    Edit8: TEdit;
    Label10: TLabel;
    COBRADOR: TComboBox;
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
    procedure COBRADORExit(Sender: TObject);
    procedure COBRADORKeyPress(Sender: TObject; var Key: Char);
    procedure nroaccionExit(Sender: TObject);
  private
    ComprobantesCobrados:TComprobantesCobrados;
    Funciones:TFuncionesVarias;
    Sistemas:TSistemas;
    DataSet1:TADODataSet;
    DataSet0,DtCombo:TClientDataSet;
    { Private declarations }
  public
    gh:boolean;
    elid:string;
    { Public declarations }
  end;

var
  Actucomprob: TActucomprob;

implementation

uses Modulo;

{$R *.dfm}

procedure TActucomprob.FormCreate(Sender: TObject);
begin
 gh:=false;
end;

procedure TActucomprob.FormActivate(Sender: TObject);
begin
 if not(gh) then begin
   gh:=true;
   Coloca1(1);
   Coloca1(4);
   Label4.Caption:='...';
   cobrador.SetFocus;
 end;
end;

procedure TActucomprob.Coloca1(nro:byte);
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
     + ' AND (dbo.ComprobantesCobrados.Anulado = 0) AND (dbo.ComprobantesCobrados.IdTipoComprobante = 20) '
     + ' AND (dbo.ComprobantesCobrados.NroFactura IS NULL)'
     + ' and (dbo.ComprobantesCobrados.NroPlanilla= ' + trim(nroaccion.Text) + ') '
     + ' and (dbo.Clientes.RazonSocial = ' + chr(39) +  trim(cobrador.Text) + chr(39) + ')';
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
  if nro=1 then begin //Combo Talonarios
   TPOTALON.Clear;
    DtCombo.Free;
    DtCombo:=TClientdataSet.Create(nil);
    Funciones:=TFuncionesVarias.Create(nil);
    Funciones.ConnectionString:=modulo2.Conexion;
    if not Funciones.Listar('SELECT IDTipoComprobante,DetalleComprobante FROM TiposComprobantes WHERE '
    +' (Cobranzas=1) and IDTipoComprobante in (6,7) order by 1 desc',DtCombo) then
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
  if nro=4 then begin
    COBRADOR.Clear;
    DtCombo.Free;
    DtCombo:=TClientdataSet.Create(nil);
    Funciones:=TFuncionesVarias.Create(nil);
    Funciones.ConnectionString:=modulo2.Conexion;
    txtw:='SELECT distinct Nombre,cuif,nrogestor FROM VLosCobradoresTodos ORDER BY Nombre ';
    if not Funciones.Listar(txtw,DtCombo) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
    else begin
     for t:=1 to DtCombo.RecordCount  do begin
      DtCombo.RecNo:=t;
      COBRADOR.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
     end;
    end;
    Funciones.Free;
    COBRADOR.ItemIndex:=0;
  end;
end;

procedure TActucomprob.nroaccionKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  Coloca1(0);
 end
 else begin
  if ( StrScan('0123456789',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;
end;

procedure TActucomprob.TPOTALONExit(Sender: TObject);
begin
if TPOTALON.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Comprobante Ingresado!!',mterror,[mbok],0);
  TPOTALON.SetFocus;
end;
end;

procedure TActucomprob.TPOTALONKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  edit1.SetFocus;
end;
end;

procedure TActucomprob.Edit1KeyPress(Sender: TObject; var Key: Char);
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

procedure TActucomprob.Edit1Exit(Sender: TObject);
begin
if (trim(Edit1.Text) = '0') or (trim(Edit1.Text) = '')  then begin
  messagedlg('ERROR!!... El N° de Comprobante es invalido',mterror,[mbok],0);
  Edit1.SetFocus;
end;
end;

procedure TActucomprob.LimpiarVentana(nro:byte);
var t:integer;
begin
 if nro = 0 then begin
  TPOTALON.ItemIndex:=0;
  Label4.Caption:='...';
  EDIT2.Clear;     EDIT3.Clear;
  EDIT4.Clear;     EDIT5.Clear;
  EDIT6.Clear;     EDIT1.Clear;
  actu.Enabled:=false;
  Coloca1(0);
 end;
end;

procedure TActucomprob.actuClick(Sender: TObject);
var gf:integer;
    txt:string;
    TodoOk1:boolean;
    txtw:widestring;
begin
 txt:='';
 gf:=messagedlg('Desea Actualizar el Comprobantes Seleccionado?',mtWarning,[mbok,mbCancel],0);
  if gf = 1 then begin
   txt:= 'FACT ' + rightStr(trim(tpotalon.Text),1) + ' 004-' + StrFill(edit1.Text,7,'0','') ;
   ComprobantesCobrados:=TComprobantesCobrados.Create(nil);
   ComprobantesCobrados.ConnectionString:=modulo2.Conexion;

   txtw:='UPDATE ComprobantesCobrados SET idservicio= null , Nrofactura = '+ chr(39) + txt + chr(39)
   + ' WHERE (Id =' + trim(label4.Caption) + ')';// and (Nrofactura is null)';

   TodoOk1:=ComprobantesCobrados.ListarSinResp(txtw);
   ComprobantesCobrados.Free;
   if TodoOk1 then begin
    barra1.Panels[0].Text:='Se ha Actualizado este Comprobante con Exito';
    messagedlg('Se ha Actualizado este Comprobante con Exito',mtConfirmation,[mbok],0);
    LimpiarVentana(0);
   end
   else begin
     messagedlg('Error al Actualizar este Comprobante. Consulte con un Administrador',mtError,[mbok],0);
   end;
  end;
end;

procedure TActucomprob.DBGrid1CellClick(Column: TColumn);
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
  tpotalon.SetFocus;
 end;
end;

procedure TActucomprob.SALEClick(Sender: TObject);
begin
close;
end;

procedure TActucomprob.COBRADORExit(Sender: TObject);
begin
 if cobrador.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Cobrador Ingresado!!',mterror,[mbok],0);
  cobrador.SetFocus;
end;
end;

procedure TActucomprob.COBRADORKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  nroaccion.SetFocus;
end;
end;

procedure TActucomprob.nroaccionExit(Sender: TObject);
begin
 if (trim(nroaccion.Text) = '0') or (trim(nroaccion.Text) = '')  then begin
  messagedlg('ERROR!!... El N° de Planilla es invalido',mterror,[mbok],0);
  nroaccion.SetFocus;
 end;
end;

end.

unit Devolucion_Talon;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Grids, DBGrids, JvgGroupBox,
  Buttons, JvExButtons, JvBitBtn, ToolWin, DB, ClaseFunciones, Unidad, DBClient,
  StrUtils, JvExDBGrids, JvDBGrid,ClaseComprobantesEntrega, ImgList;

type
  TDev_Talonarios = class(TForm)
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    GUARDA: TJvBitBtn;
    ToolButton1: TToolButton;
    Limpiar: TJvBitBtn;
    ToolButton3: TToolButton;
    JvBitBtn1: TJvBitBtn;
    JvgGroupBox2: TJvgGroupBox;
    Label7: TLabel;
    Buscar: TJvBitBtn;
    TPOFORM: TComboBox;
    GroupBox1: TGroupBox;
    Barra1: TStatusBar;
    DataSource1: TDataSource;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TJvDBGrid;
    JvDBGrid1: TJvDBGrid;
    DataSource2: TDataSource;
    ImageList1: TImageList;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure TPOFORMKeyPress(Sender: TObject; var Key: Char);
    procedure TPOFORMExit(Sender: TObject);
    procedure BuscarClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure LimpiarClick(Sender: TObject);
    procedure GUARDAClick(Sender: TObject);
  private
    IdCombos:array of array of string;
    DtCombo,DataSet0:TClientDataSet;
    Funciones:TFuncionesVarias;
    ComprobantesEntrega:TComprobantesEntrega;
    FechaActual,MotAnula,cantidad,idcomp:string;
    TiposFormularios:Unidad.TablaXML;
    gh:boolean;{ Private declarations }
  public
    { Public declarations }
  end;

var
  Dev_Talonarios: TDev_Talonarios;

implementation

uses Modulo, Anula_Generica;

{$R *.dfm}

procedure TDev_Talonarios.FormActivate(Sender: TObject);
begin
if not gh then begin
  gh:=true;
  setlength(IdCombos,1);
  FechaActual:=LeftStr(Fec_System(),10);
  Coloca1(1);
  TPOFORM.SetFocus;
  PC1.ActivePage:=PC1.Pages[0];
end;
end;

procedure TDev_Talonarios.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TDev_Talonarios.Coloca1(nro:byte);
var t:integer;
    txtw:widestring;
begin
if nro=0 then begin
//  DtCombo.Free;
//  DtCombo:=TClientdataSet.Create(nil);
//  Funciones:=TFuncionesVarias.Create(nil);
//  Funciones.ConnectionString:=modulo2.Conexion;
//  txtw:='SELECT * FROM ComprobantesCobrados where (NroFormulario=' + chr(39) + IdCombos[0,TPOFORM.ItemIndex]+ chr(39)
//        + ')  ORDER BY 1 ';
//  if not Funciones.Listar(txtw,DtCombo) then
//     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
//  else begin
//   cantidad:=trim(DtCombo.Fields[0].AsString);
//  end;
//  Funciones.Free;
end;
if nro=1 then begin //Combo cobradores
  TPOFORM.Clear;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT distinct Nombre,cuif FROM VLosCobradores ORDER BY Nombre ';
  if not Funciones.Listar(txtw,DtCombo) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
    SetLength(IdCombos[0],DtCombo.RecordCount);
    for t:=1 to DtCombo.RecordCount  do begin
      DtCombo.RecNo:=t;
      TPOFORM.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
      IdCombos[0,t-1]:=DtCombo.Fields[1].AsString;
    end;
  end;
  Funciones.Free;
  TPOFORM.ItemIndex:=0;
end;
if nro = 2 then begin
  DataSet0.Free;
  DataSet0:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=DataSet0;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT idcomprobante,cobrador,fechaentrega,nrotalonario,detallecomprobante,puntoventa,desde,hasta,cantidad'
  +' FROM Fn_VistaComprobantesEntregaNODevueltos (1,' +  chr(39) + trim(TPOFORM.Text) + chr(39) +') ' ;
  if not Funciones.Listar(txtw,DataSet0) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  GUARDA.Enabled:=false;
  Funciones.Free;
  Barra1.Panels[0].Text:='';
  Barra1.Panels[1].Text:='';
   if not DataSet0.IsEmpty then begin
    DBGrid1.Columns[0].Width:=80;
    DBGrid1.Columns[1].Width:=200;
    DBGrid1.Columns[2].Width:=80;
    DBGrid1.Columns[3].Width:=70;
    DBGrid1.Columns[4].Width:=150;
    DBGrid1.Columns[5].Width:=60;
    DBGrid1.Columns[6].Width:=60;
    DBGrid1.Columns[7].Width:=60;
    DBGrid1.Columns[8].Width:=60;
   end;
end;
if nro = 3 then begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  DataSource2.DataSet:=DtCombo;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT dbo.Clientes.RazonSocial , CONVERT(Char(10), dbo.ComprobantesEntrega.Fecha, 103) AS FechaEntrega,'
  + 'dbo.ComprobantesEntregaConfig.NroTalonario,dbo.TiposComprobantes.DetalleComprobante, '
  + 'dbo.ComprobantesEntregaConfig.PuntoVenta,dbo.ComprobantesEntregaConfig.Desde, dbo.ComprobantesEntregaConfig.Desde + 49 AS Hasta,'
  + 'dbo.ComprobantesEntregaConfig.Cantidad, dbo.ComprobantesEntrega.IdComprobante'
  + ' FROM dbo.ComprobantesEntrega '
  + 'INNER JOIN dbo.ComprobantesEntregaConfig ON dbo.ComprobantesEntrega.IdComprobante = dbo.ComprobantesEntregaConfig.IdComprobante '
  + 'INNER JOIN dbo.TiposComprobantes ON dbo.ComprobantesEntregaConfig.IdTipoComprobante = dbo.TiposComprobantes.IDTipoComprobante '
  + 'LEFT OUTER JOIN dbo.Clientes ON dbo.ComprobantesEntrega.CuifCobrador = dbo.Clientes.Cuif '
  + 'LEFT OUTER JOIN UsuariosRem.dbo.Usuarios ON dbo.ComprobantesEntrega.UsuConfirma = UsuariosRem.dbo.Usuarios.CodUsu '
  + 'WHERE (ISNULL(dbo.ComprobantesEntrega.Fecha, '''') >= ISNULL(''01/07/2017'', ISNULL(dbo.ComprobantesEntrega.Fecha, ''''))) '
  + 'AND (dbo.ComprobantesEntrega.Confirmado = 1) AND (dbo.ComprobantesEntrega.Devuelto = 1) '
  + 'AND (dbo.Clientes.RazonSocial = ' +  chr(39) + trim(TPOFORM.Text) + chr(39) + ') ' ;
  if not Funciones.Listar(txtw,DtCombo) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
   if not DtCombo.IsEmpty then begin
    JvDBGrid1.Columns[0].Width:=200;
    JvDBGrid1.Columns[1].Width:=80;
    JvDBGrid1.Columns[2].Width:=80;
    JvDBGrid1.Columns[3].Width:=70;
    JvDBGrid1.Columns[4].Width:=150;
   end;
  end;
 Funciones.Free;

end;

end;

procedure TDev_Talonarios.TPOFORMKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  buscar.SetFocus;
end;
end;

procedure TDev_Talonarios.TPOFORMExit(Sender: TObject);
begin
if TPOFORM.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe ningun Cobrador Ingresado!!',mterror,[mbok],0);
  TPOFORM.SetFocus;
end;
end;

procedure TDev_Talonarios.BuscarClick(Sender: TObject);
begin
Coloca1(2);
Coloca1(3);

end;

procedure TDev_Talonarios.DBGrid1CellClick(Column: TColumn);
begin
//if (trim(DataSet0.Fields[3].Text) = 'False') then GUARDA.Enabled:=true  // and (trim(DataSet0.Fields[6].Text)='')
//else
idcomp:=DataSet0.Fields[0].AsString;
GUARDA.Enabled:=true;
end;

procedure TDev_Talonarios.JvBitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TDev_Talonarios.LimpiarClick(Sender: TObject);
begin
TPOFORM.ItemIndex:=0;
DataSource1.DataSet:=nil;
GUARDA.Enabled:=false;
TPOFORM.SetFocus;
end;

procedure TDev_Talonarios.GUARDAClick(Sender: TObject);
var gf:integer;
    Anula_General:TAnula_General;
    txtw:widestring;
    TodoOk1,TodoOk:boolean;
begin
gf:=messagedlg('Desea Confirmar la Devolucion de este Talonario seleccionado?',mtWarning,[mbok,mbCancel],0);
  if gf = 1 then begin
  MotAnula:='';
  ComprobantesEntrega:=TComprobantesEntrega.Create(nil);
  ComprobantesEntrega.ConnectionString:=modulo2.Conexion;
  txtw:='UPDATE ComprobantesEntrega SET devuelto=1 WHERE (IdComprobante=' + idcomp + ')';
  TodoOk1:=ComprobantesEntrega.ListarSinResp(txtw);
  ComprobantesEntrega.Free;
  if not TodoOk1 then messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
   else begin
      messagedlg('TALONARIO Devuelto Satisfactoriamente..',mtConfirmation,[mbok],0);
      buscar.Click;
     end;
  end;
end;

end.

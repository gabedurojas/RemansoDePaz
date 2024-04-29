unit AM_EntregaEsp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvxCheckListBox, ExtCtrls, StdCtrls, Mask, Grids,
  DBGrids, ComCtrls, Buttons, JvExButtons, JvBitBtn, ToolWin, Unidad,
  DBClient, WSDLIntf, ClaseFunciones, DB, StrUtils, ClaseComprobantesEntregaDetalle,
  JvExComCtrls, JvProgressBar;

type
  TAM_EntregaComprob = class(TForm)
    Barra1: TStatusBar;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    Label15: TLabel;
    Bevel1: TBevel;
    Image1: TImage;
    C2: TRadioButton;
    C3: TRadioButton;
    C1: TRadioButton;
    ODNI: TEdit;
    Buscar: TJvBitBtn;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    FEC: TMaskEdit;
    TabSheet4: TTabSheet;
    Label3: TLabel;
    Label11: TLabel;
    Label19: TLabel;
    CUIP: TEdit;
    COBRADOR: TComboBox;
    FECHA: TMaskEdit;
    GroupBox7: TGroupBox;
    Panel1: TPanel;
    LISTADO: TJvxCheckListBox;
    Panel5: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    DataSource1: TDataSource;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    EXPORTAR: TJvBitBtn;
    ToolButton2: TToolButton;
    IMPRIME: TJvBitBtn;
    ToolButton5: TToolButton;
    GUARDA: TJvBitBtn;
    ToolButton1: TToolButton;
    Limpiar: TJvBitBtn;
    ToolButton3: TToolButton;
    JvBitBtn1: TJvBitBtn;
    Proceso: TJvProgressBar;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure C2Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure BuscarClick(Sender: TObject);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure LISTADOClickCheck(Sender: TObject);
    procedure LISTADOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure COBRADORKeyPress(Sender: TObject; var Key: Char);
    procedure COBRADORExit(Sender: TObject);
    procedure FECHAKeyPress(Sender: TObject; var Key: Char);
    procedure FECHAExit(Sender: TObject);
    procedure GUARDAClick(Sender: TObject);
    procedure LimpiarClick(Sender: TObject);
    procedure LimpiarVentana(nro:byte);
  private
    IdCombos:array of array of string;

    DataSet0,DtCombo:TClientDataSet;

    Funciones:TFuncionesVarias;
    ComprobantesEntregaDetalle:TComprobantesEntregaDetalle;{ Private declarations }
  public
    DatosResult:array of array of string;
    gh:boolean;{ Public declarations }
  end;

var
  AM_EntregaComprob: TAM_EntregaComprob;

implementation

uses Modulo;

{$R *.dfm}

procedure TAM_EntregaComprob.FormActivate(Sender: TObject);
begin
if not(gh) then begin
  gh:=true;
  PC1.ActivePage:=PC1.Pages[0];
  setlength(DatosResult,5);
  setlength(IdCombos,1);
  Fec.Text:=strcut(Fec_System(),10);
  FECHA.Text:=LeftStr(Fec_System(),10);
  Coloca1(1);
end;
end;

procedure TAM_EntregaComprob.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TAM_EntregaComprob.Coloca1(nro:byte);
var t,y,r,s:integer;
     NroDni,ValNull:variant;
    txtw:widestring;
begin
if nro=1 then begin //Combo Talonarios
  COBRADOR.Clear;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT distinct Nombre,cuif FROM VLosCobradores where nrogestor <> 50 ORDER BY Nombre ';
  //txtw:='SELECT * FROM Fn_VistaPersonalAreas(2,NULL,NULL,0) WHERE (Cuif<>0) ORDER BY RazonSocial';
  if not Funciones.Listar(txtw,DtCombo) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
    SetLength(IdCombos[0],DtCombo.RecordCount);
    for t:=1 to DtCombo.RecordCount  do begin
      DtCombo.RecNo:=t;
      COBRADOR.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
      IdCombos[0,t-1]:=DtCombo.Fields[1].AsString;
    end;
  end;
  Funciones.Free;
  COBRADOR.ItemIndex:=0;
end;
if nro = 2 then begin //Grilla de Entregas y Talonarios
  ValNull:=null;
  DataSet0.Free;
  DataSet0:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=DataSet0;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if C1.Checked then begin
    if not Funciones.Run_Fn_VistaComprobantesEntrega(ValNull,ValNull,'','',1,DataSet0,'',0) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  end;
  if C2.Checked then begin
    if not Funciones.Run_Fn_VistaComprobantesEntrega(ValNull,ValNull,'',FEC.Text,1,DataSet0,'',0) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  end;
  if C3.Checked then begin
    NroDni:=ODNI.Text;
    if not Funciones.Run_Fn_VistaComprobantesEntrega(NroDni,ValNull,'','',1,DataSet0,'',0) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  end;
  for t:=0 to DataSet0.FieldCount-1 do DBGrid1.Columns[t].Width:=80;
  Funciones.Free;
end;
if nro = 3 then begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT Id,DetalleComprobante,NroComprobante,RazonSocial,Fecha,Nombre,IdConfig,'
        + 'IdTipoComprobante FROM VComprobantesEntregasDetalleEsp WHERE (IdComprobante='
        + DataSet0.Fields[0].AsString + ') and (razonsocial is null) ORDER BY Id';
  if not Funciones.Listar(txtw,DtCombo) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
    if DtCombo.IsEmpty then begin
      messagedlg('No existen Talonarios CARGADOS para Entregar. Consulte con Administrador',mtWarning,[mbok],0);
      COBRADOR.SetFocus;
    end
    else begin
      PC1.ActivePage:=PC1.Pages[1];
      LISTADO.Items.Clear;
      for t:=0 to 4 do SetLength(DatosResult[t],DtCombo.RecordCount);
      for t:=1 to DtCombo.RecordCount do begin
        DtCombo.RecNo:=t;
        LISTADO.Items.Append(StrFill(DtCombo.Fields[0].AsString,6,'0','') + ' - '
                             + StrFill(DtCombo.Fields[1].AsString,12,' ','') + ' - '
                             + StrFill(DtCombo.Fields[2].AsString,10,' ','') + ' - '
                             + StrFill(LeftStr(DtCombo.Fields[3].AsString,17),17,' ','') + ' - '
                             + StrFill(DtCombo.Fields[4].AsString,10,' ','') + ' - '
                             + StrFill(LeftStr(DtCombo.Fields[5].AsString,17),17,' ',''));
        DatosResult[0,t-1]:=DtCombo.Fields[0].AsString;
        DatosResult[1,t-1]:=DtCombo.Fields[6].AsString;
        DatosResult[2,t-1]:=DtCombo.Fields[7].AsString;
        DatosResult[3,t-1]:=DtCombo.Fields[2].AsString;
        DatosResult[4,t-1]:=trim(DtCombo.Fields[4].AsString);
      end;
    end;
  end;
  Funciones.Free;
end;
end;

procedure TAM_EntregaComprob.C2Click(Sender: TObject);
begin
Label15.Visible:=true;
ODNI.Visible:=false;
FEC.Visible:=false;
if C2.Checked then begin
  Label15.Caption:='Ingrese Fecha:';
  FEC.Visible:=true;
  FEC.SetFocus;
end;
if C3.Checked then begin
  Label15.Caption:='Ingrese N° Entrega:';
  ODNI.Visible:=true;
  ODNI.SetFocus;
end;
end;

procedure TAM_EntregaComprob.C1Click(Sender: TObject);
begin
Label15.Visible:=false;
ODNI.Visible:=false;
FEC.Visible:=false;
Buscar.SetFocus;
end;

procedure TAM_EntregaComprob.BuscarClick(Sender: TObject);
begin
Coloca1(2);
end;

procedure TAM_EntregaComprob.JvBitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TAM_EntregaComprob.DBGrid1CellClick(Column: TColumn);
begin
Coloca1(3);
end;

procedure TAM_EntregaComprob.LISTADOClickCheck(Sender: TObject);
var t,r:integer;
    Paso:boolean;
begin
r:=0;Paso:=false;
for t:=LISTADO.Items.Count-1 downto 0 do begin
  if LISTADO.Checked[t] then begin
    if (DatosResult[4,t] <> '') and (modulo2.nvl_usu > 2) then begin
      Paso:=true;
    end;
    r:=r+1;
  end;
end;
if paso then begin
  messagedlg('ERROR!!... Solo administradores pueden Modificar comprobantes entregados...'+ chr(13)
  + 'Destilde los comprobantes ya entregados para continuar!.',mtError,[mbok],0);
  GUARDA.Enabled:=false;
end
else begin
  if (r > 0) then Paso:=true;
  if Paso then begin
    GUARDA.Enabled:=true;
    Barra1.Panels[0].Text:='';
    COBRADOR.SetFocus;
  end
  else begin
    GUARDA.Enabled:=false;
    Barra1.Panels[0].Text:='Debe Seleccionar al menos 1 comprobante!';
  end;
end;
end;

procedure TAM_EntregaComprob.LISTADOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var gf:integer;
begin
if key = VK_ESCAPE then begin
  gf:=messagedlg('Desea Cancelar la Lista actual??' + chr(13)
    + 'Se eliminarán las selecciones realizadas.',mtWarning,[mbok,mbCancel],0);
  if gf = 1 then begin
    for gf:=LISTADO.Items.Count-1 downto 0 do  LISTADO.Checked[gf]:=false;
  end;
end;
end;

procedure TAM_EntregaComprob.COBRADORKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  FECHA.SetFocus;
end;
end;

procedure TAM_EntregaComprob.COBRADORExit(Sender: TObject);
begin
if COBRADOR.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Cobrador Ingresado!!',mterror,[mbok],0);
  COBRADOR.SetFocus;
end;
end;

procedure TAM_EntregaComprob.FECHAKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  if GUARDA.Enabled then GUARDA.SetFocus;
end;
end;

procedure TAM_EntregaComprob.FECHAExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(FECHA.Text));
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  FECHA.SetFocus;
end;
end;

procedure TAM_EntregaComprob.GUARDAClick(Sender: TObject);
var gf,t:integer;
    TodoOk1:boolean;
begin
gf:=messagedlg('Desea Guardar el/los Comprobantes Seleccionados?',mtWarning,[mbok,mbCancel],0);
if gf = 1 then begin
  Proceso.Position:=0;
  Proceso.Max:=LISTADO.Items.Count-1;
  for t:=0 to LISTADO.Items.Count-1 do begin
    if LISTADO.Checked[t] then begin
      ComprobantesEntregaDetalle:=TComprobantesEntregaDetalle.Create(nil);
      ComprobantesEntregaDetalle.ConnectionString:=modulo2.Conexion;
      ComprobantesEntregaDetalle.C_Id_IX1:=DatosResult[0,t];
      ComprobantesEntregaDetalle.C_IdConfig:=DatosResult[1,t];
      ComprobantesEntregaDetalle.C_NroComprobante:=DatosResult[3,t];
      ComprobantesEntregaDetalle.C_IdTipoComprobante:=DatosResult[2,t];
      ComprobantesEntregaDetalle.C_CuifCobrador_IX2:=IdCombos[0,COBRADOR.ItemIndex];
      ComprobantesEntregaDetalle.C_Fecha:=FECHA.Text;
      ComprobantesEntregaDetalle.C_Usu:=modulo2.nro_usu;
      TodoOk1:=ComprobantesEntregaDetalle.Modificar;
      ComprobantesEntregaDetalle.Free;
      if not TodoOk1 then break;
    end;
    Proceso.Position:=t;
  end;
  if TodoOk1 then begin
    messagedlg('EXITO!!... Comprobante Entregado Correctamente!...',mtConfirmation,[mbok],0);
    IMPRIME.Enabled:=true;
    GUARDA.Enabled:=false;
    Coloca1(3);
  end
  else messagedlg('ERROR Al Asignar los Comprobante. Consulte con Administrador',mtError,[mbok],0);
end;
end;

procedure TAM_EntregaComprob.LimpiarClick(Sender: TObject);
begin
LimpiarVentana(0);
end;


procedure TAM_EntregaComprob.LimpiarVentana(nro:byte);
var t,r:integer;
begin
if Nro < 1 then begin
  DataSource1.DataSet:=nil;
end;

LISTADO.Clear;
CUIP.Text:='00000';
ODNI.Text:='00000';
COBRADOR.ItemIndex:=0;


IMPRIME.Enabled:=false;
GUARDA.Enabled:=false;
Exportar.Enabled:=false;
end;
end.

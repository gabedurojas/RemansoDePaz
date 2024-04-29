unit AM_CremacionesImporte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvxCheckListBox, ExtCtrls, StdCtrls, Mask, Grids,
  DBGrids, ComCtrls, Buttons, JvExButtons, JvBitBtn, ToolWin, Unidad,
  DBClient, WSDLIntf, ClaseFunciones, DB, StrUtils,
  JvExComCtrls, JvProgressBar,ClaseSistemas;

type
  TAM_ImpCremacion = class(TForm)
    Barra1: TStatusBar;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    Image1: TImage;
    GroupBox1: TGroupBox;
    DataSource1: TDataSource;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    ToolButton2: TToolButton;
    ToolButton5: TToolButton;
    GUARDA: TJvBitBtn;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
    SALE: TJvBitBtn;
    Proceso: TJvProgressBar;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    FECHA: TMaskEdit;
    Label5: TLabel;
    imptotal: TEdit;
    NEW: TJvBitBtn;
    MODIF: TJvBitBtn;
    Label1: TLabel;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    Label6: TLabel;
    origen: TComboBox;
    Edit1: TComboBox;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure SALEClick(Sender: TObject);
    procedure GUARDAClick(Sender: TObject);
    procedure FECHAExit(Sender: TObject);
    procedure FECHAKeyPress(Sender: TObject; var Key: Char);
    procedure origenExit(Sender: TObject);
    procedure origenKeyPress(Sender: TObject; var Key: Char);
    procedure imptotalKeyPress(Sender: TObject; var Key: Char);
    procedure imptotalExit(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure NEWClick(Sender: TObject);
    procedure MODIFClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Exit(Sender: TObject);
  private
    IdCombos:array of array of string;
    DataSet0,DtCombo,DtCombo1:TClientDataSet;
    Funciones:TFuncionesVarias;
  public
    DatosResult:array of array of string;
    Sistemas:TSistemas;
    elid:string;
    gh,nuevo:boolean;{ Public declarations }
  end;

var
  AM_ImpCremacion: TAM_ImpCremacion;

implementation

uses Modulo;

{$R *.dfm}

procedure TAM_ImpCremacion.FormActivate(Sender: TObject);
begin
if not(gh) then begin
  gh:=true;
  nuevo:=false;
  PC1.ActivePage:=PC1.Pages[0];
  fecha.Text:=strcut(Fec_System(),10);
  //setlength(DatosResult,4);
  setlength(IdCombos,2);
  GroupBox2.Visible  :=false;
  GroupBox3.Visible  :=false;
  Coloca1(0);
  Coloca1(1);
  SALE.SetFocus;
end;
end;

procedure TAM_ImpCremacion.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TAM_ImpCremacion.Coloca1(nro:byte);
var t:integer;
    NroDni,ValNull:variant;
    txtw:widestring;
begin
 if nro=0 then begin
  Origen.Clear;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if Funciones.listar('SELECT DISTINCT Descripcion FROM ParcelasCremacionesOrigen WHERE  (Id <> 1) order by 1 asc',DtCombo) then begin
   SetLength(IdCombos[0],DtCombo.RecordCount);
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    Origen.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
    IdCombos[0,t-1]:=DtCombo.Fields[0].AsString;
   end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  Origen.ItemIndex:=0;
 end;
 if nro = 1 then begin
  edit1.Clear;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if Funciones.listar('SELECT DISTINCT Descripcion FROM ParcelasCremacionesOrigen WHERE  (Id <> 1) order by 1 asc',DtCombo) then begin
   SetLength(IdCombos[1],DtCombo.RecordCount);
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    edit1.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
    IdCombos[1,t-1]:=DtCombo.Fields[0].AsString;
   end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  edit1.ItemIndex:=0;
 end;
 if nro = 2 then begin //Grilla de Parcelas
  DataSet0.Free;
  DataSet0:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=DataSet0;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT Id, Descripcion, Fechavigencia, ValorTotal FROM ParcelasCremacionesOrigen '
  + '  WHERE  (Descripcion = '+ chr(39) + trim(origen.Text) +chr(39) + ') AND (Fechavigenciahasta IS NULL) ';
  if not Funciones.Listar(txtw,DataSet0) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  DBGrid1.Columns[0].Width:=50;
  DBGrid1.Columns[1].Width:=290;
  DBGrid1.Columns[2].Width:=100;
  DBGrid1.Columns[3].Width:=100;
  //DBGrid1.Columns[4].Width:=70;
  // DBGrid1.Columns[5].Width:=80;
 end;
end;

procedure TAM_ImpCremacion.SALEClick(Sender: TObject);
begin
Close;
end;

procedure TAM_ImpCremacion.GUARDAClick(Sender: TObject);
Var Param:TWideStrings;
    txt:string;
begin
 Funciones:=TFuncionesVarias.Create(nil);
 Funciones.ConnectionString:=modulo2.Conexion;
 if nuevo = false then begin
  txt:='exec ActualizarParcasServiciosCremacionesOrigen '  + elid
  + ',' + chr(39) + trim(origen.Text) + chr(39)
  + ',' + chr(39) + trim(fecha.Text) + chr(39)
  + ',' + trim(imptotal.Text);
  if not Funciones.ListarSinResp(txt) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
    messagedlg('Datos Modificados Correctamente', mtConfirmation,[mbok],0);
    guarda.Enabled :=false;
    groupbox2.Visible :=false;
    groupbox3.Visible :=false;
  end;
 end
 else begin
  txt:='INSERT INTO ParcelasCremacionesOrigen(Descripcion,Fechavigencia,ValorTotal)  VALUES ('
  + chr(39) + trim(edit1.Text) + chr(39)
  + ',' + chr(39) + trim(fecha.Text) + chr(39)
  + ',' + trim(imptotal.Text) + ')';
  if not Funciones.ListarSinResp(txt) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
    messagedlg('Dato Guardado Correctamente', mtConfirmation,[mbok],0);
    guarda.Enabled :=false;
    groupbox2.Visible :=false;
  end;
 end;
 edit1.Clear;
 imptotal.Clear;
 sale.SetFocus;
end;

procedure TAM_ImpCremacion.FECHAExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(FECHA.Text));
  except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  FECHA.SetFocus;
end;
end;

procedure TAM_ImpCremacion.FECHAKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  imptotal.SetFocus;
  //if origen.ItemIndex = 0 then impfijo.SetFocus
  // else valorkm.SetFocus;
  GUARDA.Enabled:=TRUE;
end;
end;

procedure TAM_ImpCremacion.origenExit(Sender: TObject);
begin
 if origen.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe un origen de Servicio Ingresado!!',mterror,[mbok],0);
  origen.SetFocus;
 end
 else Coloca1(2);
end;

procedure TAM_ImpCremacion.origenKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Coloca1(2);
 end;
end;

procedure TAM_ImpCremacion.imptotalKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
   Key := #0;
   GUARDA.SetFocus;
  end
  else begin
   if ( StrScan('0123456789.',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
    else Key := #0;
end;
end;

procedure TAM_ImpCremacion.imptotalExit(Sender: TObject);
begin
if (trim(imptotal.Text) = '') or (trim(imptotal.Text) = '0') then begin
  messagedlg('Error!! No hay un Valor del Importe Total Ingresado.',mterror,[mbok],0);
  imptotal.SetFocus
end;
end;

procedure TAM_ImpCremacion.DBGrid1CellClick(Column: TColumn);
begin
 //Coloca1(3);
  elid:=trim(DataSet0.Fields[0].AsString);
  GroupBox2.Enabled :=true;
  fecha.SetFocus;
end;

procedure TAM_ImpCremacion.NEWClick(Sender: TObject);
begin
  nuevo:=true;
  GUARDA.Caption :='NUEVO';
  GroupBox3.Visible  :=false;
  GroupBox2.Visible  :=TRUE;
  LABEL1.Visible :=TRUE;
  EDIT1.Visible :=TRUE;
  EDIT1.SetFocus;
end;

procedure TAM_ImpCremacion.MODIFClick(Sender: TObject);
begin
  nuevo:=false;
  GUARDA.Caption :='MODIFICAR';
  GroupBox3.Visible  :=TRUE;
  GroupBox2.Visible  :=TRUE;
  LABEL1.Visible :=FALSE;
  EDIT1.Visible :=FALSE;
  ORIGEN.SetFocus;
end;

procedure TAM_ImpCremacion.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  fecha.SetFocus;
end;
end;

procedure TAM_ImpCremacion.Edit1Exit(Sender: TObject);
begin
 if Edit1.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe un origen de Servicio Ingresado!!',mterror,[mbok],0);
  Edit1.SetFocus;
 end
end;

end.

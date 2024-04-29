unit AM_TrasladosImporte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvxCheckListBox, ExtCtrls, StdCtrls, Mask, Grids,
  DBGrids, ComCtrls, Buttons, JvExButtons, JvBitBtn, ToolWin, Unidad,
  DBClient, WSDLIntf, ClaseFunciones, DB, StrUtils,
  JvExComCtrls, JvProgressBar,ClaseSistemas;

type
  TAM_ImpTraslados = class(TForm)
    Barra1: TStatusBar;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    Image1: TImage;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    ToolButton2: TToolButton;
    ToolButton5: TToolButton;
    GUARDA: TJvBitBtn;
    ToolButton1: TToolButton;
    Limpiar: TJvBitBtn;
    ToolButton3: TToolButton;
    JvBitBtn1: TJvBitBtn;
    Proceso: TJvProgressBar;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    FECHA: TMaskEdit;
    valorkm: TEdit;
    Label1: TLabel;
    Label6: TLabel;
    origen: TComboBox;
    Label2: TLabel;
    iva: TEdit;
    Label4: TLabel;
    impfijo: TEdit;
    Label5: TLabel;
    imptotal: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure GUARDAClick(Sender: TObject);
    procedure FECHAExit(Sender: TObject);
    procedure FECHAKeyPress(Sender: TObject; var Key: Char);
    procedure origenExit(Sender: TObject);
    procedure origenKeyPress(Sender: TObject; var Key: Char);
    procedure valorkmKeyPress(Sender: TObject; var Key: Char);
    procedure ivaKeyPress(Sender: TObject; var Key: Char);
    procedure impfijoKeyPress(Sender: TObject; var Key: Char);
    procedure imptotalKeyPress(Sender: TObject; var Key: Char);
    procedure valorkmExit(Sender: TObject);
    procedure ivaExit(Sender: TObject);
    procedure impfijoExit(Sender: TObject);
    procedure imptotalExit(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure LimpiarClick(Sender: TObject);
  private
    IdCombos:array of array of string;
    DataSet0,DtCombo:TClientDataSet;
    Funciones:TFuncionesVarias;
  public
    DatosResult:array of array of string;
    Sistemas:TSistemas;
    gh:boolean;{ Public declarations }
  end;

var
  AM_ImpTraslados: TAM_ImpTraslados;

implementation

uses Modulo;

{$R *.dfm}

procedure TAM_ImpTraslados.FormActivate(Sender: TObject);
begin
if not(gh) then begin
  gh:=true;
  PC1.ActivePage:=PC1.Pages[0];
  setlength(DatosResult,4);
  setlength(IdCombos,1);
  GroupBox2.Enabled :=false;
  Coloca1(1);
  origen.SetFocus;
end;
end;

procedure TAM_ImpTraslados.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TAM_ImpTraslados.Coloca1(nro:byte);
var t:integer;
    NroDni,ValNull:variant;
    txtw:widestring;
begin
 if nro=1 then begin //Combo origen servicio   idcombo 3
  Origen.Clear;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if Funciones.listar('SELECT Id,Descripcion FROM ParcelasServiciosTrasladosOrigen where activo=1 order by 1 desc',DtCombo) then begin
   SetLength(IdCombos[0],DtCombo.RecordCount);
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    Origen.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
    IdCombos[0,t-1]:=DtCombo.Fields[0].AsString;
   end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  Origen.ItemIndex:=0;
 end;
if nro = 2 then begin //Grilla de Parcelas
  DataSet0.Free;
  DataSet0:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=DataSet0;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT Id,Descripcion,Fechavigencia,ValorKm,Activo,Iva,ImporteTotal,ImporteFijo '
  + ' FROM ParcelasServiciosTrasladosOrigen where Activo=1 and Descripcion = ' + chr(39) + trim(origen.Text) +chr(39);
  if not Funciones.Listar(txtw,DataSet0) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  DBGrid1.Columns[0].Width:=50;
  DBGrid1.Columns[1].Width:=150;
  DBGrid1.Columns[2].Width:=70;
  DBGrid1.Columns[3].Width:=70;
  DBGrid1.Columns[4].Width:=70;
  DBGrid1.Columns[5].Width:=80;
end;
If Nro=3 then begin
  fecha.Text:=LeftStr(Fec_System(),10);
  valorkm.Text:=DATASET0.Fields[3].AsString;
  iva.Text:=DATASET0.Fields[5].AsString;
  impfijo.Text:=DATASET0.Fields[7].AsString;
  imptotal.Text:=DATASET0.Fields[6].AsString;
  //GroupBox2.Enabled :=true;
  //FECHA.SetFocus;
  if trim(origen.Text)='EN EGIDO MUNCIPAL'  then begin
   valorkm.Enabled :=false;
   iva.Enabled :=false;
   imptotal.Enabled :=false;
  end
  else begin
   valorkm.Enabled :=true;
   iva.Enabled :=true;
   imptotal.Enabled :=true;
   impfijo.Enabled :=true;
  end;
end;
end;

procedure TAM_ImpTraslados.JvBitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TAM_ImpTraslados.GUARDAClick(Sender: TObject);
Var Param:TWideStrings;
    txt:string;
begin
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if trim(origen.Text)='EN EGIDO MUNCIPAL' then
   txt:='exec ActualizarParcasServiciosTrasladosOrigen '+ chr(39) + trim(origen.Text) + chr(39)
    + ',' + chr(39) + trim(fecha.Text) + chr(39)
    + ',0 '
    + ',0 '
    + ',' + trim(impfijo.Text)
    + ',' + trim(impfijo.Text)
  else
    txt:='exec ActualizarParcasServiciosTrasladosOrigen '+ chr(39) + trim(origen.Text) + chr(39)
    + ',' + chr(39) + trim(fecha.Text) + chr(39)
    + ',' + trim(valorkm.Text)
    + ',' + trim(iva.Text)
    + ',' + trim(imptotal.Text)
    + ',' + trim(imptotal.Text);
  if not Funciones.ListarSinResp(txt) then
    messagedlg('ERROR al realizar el cambio del valor del Traslado',mtError,[mbok],0)
  else begin
    messagedlg('IMPORTE del Traslado Guardado Correctamente', mtConfirmation,[mbok],0);
    Coloca1(2);
    guarda.Enabled :=false;
    groupbox2.Enabled :=false;
    valorkm.Clear;
    iva.Clear;
    impfijo.Clear;
    imptotal.Clear;
  end;
end;

procedure TAM_ImpTraslados.FECHAExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(FECHA.Text));
  except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  FECHA.SetFocus;
end;
end;

procedure TAM_ImpTraslados.FECHAKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  if trim(origen.Text)='EN EGIDO MUNCIPAL'  then impfijo.SetFocus
   else valorkm.SetFocus;
  GUARDA.Enabled:=TRUE;
 end;
end;

procedure TAM_ImpTraslados.origenExit(Sender: TObject);
begin
if origen.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe un origen de Servicio Ingresado!!',mterror,[mbok],0);
  origen.SetFocus;
end;
end;

procedure TAM_ImpTraslados.origenKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Coloca1(2);
 end;
end;

procedure TAM_ImpTraslados.valorkmKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
   Key := #0;
   iva.SetFocus;
  end
  else begin
   if ( StrScan('0123456789.',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
    else Key := #0;
end;
end;

procedure TAM_ImpTraslados.ivaKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  imptotal.Text := floattostr(strtofloat(valorkm.Text) + (strtofloat(valorkm.Text) * strtofloat(iva.Text))/100);
  imptotal.SetFocus;
 end;
end;

procedure TAM_ImpTraslados.impfijoKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
   Key := #0;
   if trim(origen.Text)='EN EGIDO MUNCIPAL'  then guarda.SetFocus
    else imptotal.SetFocus;
   end
   else begin
   if ( StrScan('0123456789.',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
    else Key := #0;
end;
end;

procedure TAM_ImpTraslados.imptotalKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  GUARDA.SetFocus;
end;
end;

procedure TAM_ImpTraslados.valorkmExit(Sender: TObject);
begin
if (trim(valorkm.Text) = '') or (trim(valorkm.Text) = '0') then begin
  messagedlg('Error!! No hay un Valor del Kilometraje Ingresado.',mterror,[mbok],0);
  valorkm.SetFocus
end;
end;

procedure TAM_ImpTraslados.ivaExit(Sender: TObject);
begin
if (trim(iva.Text) = '') or (trim(iva.Text) = '0') then begin
  messagedlg('Error!! No hay un Valor del IVA Ingresado.',mterror,[mbok],0);
  iva.SetFocus
end;
end;

procedure TAM_ImpTraslados.impfijoExit(Sender: TObject);
begin
if (trim(impfijo.Text) = '') or (trim(impfijo.Text) = '0') then begin
  messagedlg('Error!! No hay un Valor del Importe Fijo Ingresado.',mterror,[mbok],0);
  impfijo.SetFocus
end;
end;

procedure TAM_ImpTraslados.imptotalExit(Sender: TObject);
begin
if (trim(imptotal.Text) = '') or (trim(imptotal.Text) = '0') then begin
  messagedlg('Error!! No hay un Valor del Importe Total Ingresado.',mterror,[mbok],0);
  imptotal.SetFocus
end;
end;

procedure TAM_ImpTraslados.DBGrid1CellClick(Column: TColumn);
begin
  Coloca1(3);
  GroupBox2.Enabled :=true;
  FECHA.SetFocus;
end;

procedure TAM_ImpTraslados.LimpiarClick(Sender: TObject);
begin
groupbox2.Enabled :=false;
valorkm.Clear;
iva.Clear;
impfijo.Clear;
imptotal.Clear;
end;

end.

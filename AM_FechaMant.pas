unit AM_FechaMant;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvxCheckListBox, ExtCtrls, StdCtrls, Mask, Grids,
  DBGrids, ComCtrls, Buttons, JvExButtons, JvBitBtn, ToolWin, Unidad,
  DBClient, WSDLIntf, ClaseFunciones, DB, StrUtils, ClaseComprobantesEntregaDetalle,
  JvExComCtrls, JvProgressBar,ClaseSistemas;

type
  TAM_FechaMantenimiento = class(TForm)
    Barra1: TStatusBar;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    Bevel1: TBevel;
    Image1: TImage;
    C2: TRadioButton;
    ODNI: TEdit;
    Buscar: TJvBitBtn;
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
    Label11: TLabel;
    CUIP: TEdit;
    Label3: TLabel;
    FECHA: TMaskEdit;
    C1: TRadioButton;
    Label15: TLabel;
    PERIODO: TEdit;
    Label1: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure C2Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure BuscarClick(Sender: TObject);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure ODNIKeyPress(Sender: TObject; var Key: Char);
    procedure GUARDAClick(Sender: TObject);
    procedure FECHAExit(Sender: TObject);
    procedure FECHAKeyPress(Sender: TObject; var Key: Char);
    procedure FECHAChange(Sender: TObject);
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
  AM_FechaMantenimiento: TAM_FechaMantenimiento;

implementation

uses Modulo;

{$R *.dfm}

procedure TAM_FechaMantenimiento.FormActivate(Sender: TObject);
begin
if not(gh) then begin
  gh:=true;
  PC1.ActivePage:=PC1.Pages[0];
  setlength(DatosResult,4);
  setlength(IdCombos,1);
  Label15.Caption:='Ingrese Nº de Acción:';
  c2.Checked:=TRUE;
  ODNI.SetFocus;
end;
end;

procedure TAM_FechaMantenimiento.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TAM_FechaMantenimiento.Coloca1(nro:byte);
var t:integer;
    NroDni,ValNull:variant;
    txtw:widestring;
begin
if nro = 2 then begin //Grilla de Parcelas
  ValNull:=null;
  DataSet0.Free;
  DataSet0:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=DataSet0;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if C1.Checked then begin
    if not Funciones.Run_Fn_VistaParcelasFechaMantenimiento(ValNull,DataSet0,'',0) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  end;
  if C2.Checked then begin
    if not Funciones.Run_Fn_VistaParcelasFechaMantenimiento(ODNI.Text,DataSet0,'',0) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  end;
  for t:=0 to DataSet0.FieldCount-1 do DBGrid1.Columns[t].Width:=80;
  Funciones.Free;
end;
If Nro=3 then begin
CUIP.Text:=DATASET0.Fields[0].AsString;
FECHA.Text:=DATASET0.Fields[4].AsString;
FECHA.SetFocus;
end;

end;

procedure TAM_FechaMantenimiento.C2Click(Sender: TObject);
begin
Label15.Visible:=true;
ODNI.Visible:=True;
if C2.Checked then begin
  Label15.Caption:='Ingrese Nº de Acción:';
  ODNI.Visible:=true;
  ODNI.SetFocus;
end;
end;

procedure TAM_FechaMantenimiento.C1Click(Sender: TObject);
begin
Label15.Visible:=false;
ODNI.Visible:=false;
Buscar.SetFocus;
end;

procedure TAM_FechaMantenimiento.BuscarClick(Sender: TObject);
begin
Coloca1(2);
end;

procedure TAM_FechaMantenimiento.JvBitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TAM_FechaMantenimiento.DBGrid1CellClick(Column: TColumn);
begin
Coloca1(3);
end;

procedure TAM_FechaMantenimiento.ODNIKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  BUSCAR.SetFocus;
end
end;

procedure TAM_FechaMantenimiento.GUARDAClick(Sender: TObject);
Var Param:TWideStrings;
    txt:string;
begin
  //EXECUTE CargaMantenimiento 984,'27/07/1993',201106
  //DtCombo.Free;
  //DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txt:='exec ActualizarParcelasMantenimiento '+ trim(odni.Text) + ',' + chr(39) + trim(fecha.Text) + chr(39);
  //txt:='CargaMantenimiento ' + trim(CUIP.Text) + ' , ' + chr(39)+ trim(FECHA.text) + chr(39)+ ' , ' + trim(PERIODO.text);
  if not Funciones.ListarSinResp(txt) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else messagedlg('Datos Guardados Correctamente', mtConfirmation,[mbok],0)
end;

procedure TAM_FechaMantenimiento.FECHAExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(FECHA.Text));
  except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  FECHA.SetFocus;
end;

end;

procedure TAM_FechaMantenimiento.FECHAKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  GUARDA.Enabled:=TRUE;
  GUARDA.SetFocus;
end;
end;

procedure TAM_FechaMantenimiento.FECHAChange(Sender: TObject);
begin
guarda.Enabled:=true;
end;

end.

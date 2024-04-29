unit AuditMovi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DB, ADODB, Grids, DBGrids, StdCtrls, LMDCustomButton,
  LMDButton, Mask, JvExControls, JvgProgress, JvProgressBar, JvExGrids,
  JvStringGrid, ClaseFunciones, DBClient, Unidad;

type
  TAuditaMovim = class(TForm)
    Barra1: TStatusBar;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    R1: TRadioButton;
    R3: TRadioButton;
    R5: TRadioButton;
    R4: TRadioButton;
    R2: TRadioButton;
    LB1: TLabel;
    NOMB: TEdit;
    DNI: TMaskEdit;
    BUSCAR: TLMDButton;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    PC1: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet1: TTabSheet;
    DBGrid2: TDBGrid;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    GroupBox3: TGroupBox;
    ID: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    PUESTO: TEdit;
    Label3: TLabel;
    DEU: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    GroupBox4: TGroupBox;
    RECREA: TLMDButton;
    EDITAR: TLMDButton;
    BORRAR: TLMDButton;
    ORIGEN: TComboBox;
    CTA: TComboBox;
    Label8: TLabel;
    Label9: TLabel;
    PAG: TEdit;
    Label10: TLabel;
    PUN: TEdit;
    SAL: TEdit;
    C2: TCheckBox;
    FECHA: TMaskEdit;
    DETA: TEdit;
    Label4: TLabel;
    PERIO: TComboBox;
    Label11: TLabel;
    GroupBox5: TGroupBox;
    Label12: TLabel;
    PERIO1: TComboBox;
    MOVIM: TLMDButton;
    Label13: TLabel;
    FECH: TMaskEdit;
    GroupBox6: TGroupBox;
    Label14: TLabel;
    PERIO2: TComboBox;
    MOVPAG: TLMDButton;
    Progreso: TJvGradientProgressBar;
    grilla2: TJvStringGrid;
    GroupBox7: TGroupBox;
    Label15: TLabel;
    PERIO3: TComboBox;
    PUNIT: TLMDButton;
    GroupBox8: TGroupBox;
    Label16: TLabel;
    PERIO4: TComboBox;
    MOVPUN: TLMDButton;
    GroupBox9: TGroupBox;
    Label17: TLabel;
    PERIO5: TComboBox;
    MOVMES: TLMDButton;
    procedure FormActivate(Sender: TObject);
    procedure Coloca1(nro:byte;valor:string);
    procedure R1Click(Sender: TObject);
    procedure R2Click(Sender: TObject);
    procedure NOMBKeyPress(Sender: TObject; var Key: Char);
    procedure FECHAKeyPress(Sender: TObject; var Key: Char);
    procedure FECHAExit(Sender: TObject);
    procedure DNIKeyPress(Sender: TObject; var Key: Char);
    procedure CODIGOKeyPress(Sender: TObject; var Key: Char);
    procedure BUSCARClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure EDITARClick(Sender: TObject);
    procedure ORIGENKeyPress(Sender: TObject; var Key: Char);
    procedure ORIGENExit(Sender: TObject);
    procedure CTAExit(Sender: TObject);
    procedure CTAKeyPress(Sender: TObject; var Key: Char);
    procedure PUESTOKeyPress(Sender: TObject; var Key: Char);
    procedure DEUKeyPress(Sender: TObject; var Key: Char);
    procedure PAGKeyPress(Sender: TObject; var Key: Char);
    procedure PUNKeyPress(Sender: TObject; var Key: Char);
    procedure SALKeyPress(Sender: TObject; var Key: Char);
    procedure BORRARClick(Sender: TObject);
    procedure PERIOKeyPress(Sender: TObject; var Key: Char);
    procedure PERIOExit(Sender: TObject);
    procedure RECREAClick(Sender: TObject);
    procedure PERIO1KeyPress(Sender: TObject; var Key: Char);
    procedure PERIO1Exit(Sender: TObject);
    procedure MOVIMClick(Sender: TObject);
    procedure FECHKeyPress(Sender: TObject; var Key: Char);
    procedure FECHExit(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure MOVPAGClick(Sender: TObject);
    procedure PERIO3KeyPress(Sender: TObject; var Key: Char);
    procedure PERIO3Exit(Sender: TObject);
    procedure PUNITClick(Sender: TObject);
    procedure MOVPUNClick(Sender: TObject);
    procedure MOVMESClick(Sender: TObject);
    procedure PERIO5Exit(Sender: TObject);
    procedure PERIO2Exit(Sender: TObject);
    procedure PERIO4Exit(Sender: TObject);
  private
    { Private declarations }
    Funciones:TFuncionesVarias;
    DtCombo,DataSet0,DataSet1,DataSet2:TClientDataSet;

    IdCombos:array of array of string;

    TiposOrigen,PeriodosVenc:Unidad.TablaXML;
  public
    NroCodigo,NroOrigen:string;
    NroOpcion:byte;{ Public declarations }
  end;

var
  AuditaMovim: TAuditaMovim;

implementation

uses Modulo, ClaseTiposOrigenMovimientos, ClasePeriodosVencimientos;

{$R *.dfm}
procedure TAuditaMovim.FormActivate(Sender: TObject);
begin
{NroOpcion Define de que tipo de movimiento se trata
1 - Ventas
2 - Servicios
3 - Mantenimiento}

PC1.ActivePage:=PC1.Pages[0];
setlength(IdCombos,1);

coloca1(2,'');
coloca1(3,'');


PERIO.Text:=FechaToPeriodo(StrCut(Fec_System(),10),'');
PERIO1.Text:=PERIO.Text;
PERIO2.Text:=PERIO.Text;
PERIO3.Text:=PERIO.Text;
PERIO4.Text:=PERIO.Text;
PERIO5.Text:=PERIO.Text;

grilla2.Cells[0,0]:='Ord';
grilla2.Cells[1,0]:='N° Acción';
grilla2.Cells[2,0]:='Cliente';
grilla2.Cells[3,0]:='Fecha';
grilla2.Cells[4,0]:='Act. Pagos';
grilla2.Cells[5,0]:='Punitorios';
grilla2.Cells[6,0]:='Movim.Final';
end;


procedure TAuditaMovim.Coloca1(nro:byte;valor:string);
var t,y:integer;
    Fec,RazSoc,txt2,txt3,txt4:string;
    TiposOrigenMovimientos:TTiposOrigenMovimientos;
    PeriodosVencimientos:TPeriodosVencimientos;
    NroAccion,NroId,ValNull:variant;
begin
ValNull:=null;
if nro=1 then begin
  DataSet0.Free;
  DataSet0:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=DataSet0;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if NroOpcion = 1 then begin //Ventas
    if R1.Checked then begin
      NroAccion:=null;Fec:='';RazSoc:='';NroId:=DNI.Text;
    end;
    if R2.Checked then begin
      NroAccion:=NULL;Fec:='';RazSoc:='';NroId:=null;
    end;
    if R3.Checked then begin
      NroAccion:=NULL;Fec:=FECHA.Text;RazSoc:='';NroId:=null;
    end;
    if R4.Checked then begin
      NroAccion:=NULL;Fec:='';RazSoc:=NOMB.Text;NroId:=null;
    end;
    if R5.Checked then begin
      NroAccion:=DNI.Text;Fec:='';RazSoc:='';NroId:=null;
    end;
    if not Funciones.Run_Fn_VistaParcelasVentasTitulares(ValNull,NroAccion,Fec,true,
      false,RazSoc,NroId,DataSet0,'',0) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
    else PC1.Enabled:=true;
  end;
  if NroOpcion = 2 then begin //Servicios
    if R1.Checked then begin
      NroAccion:=null;Fec:='';RazSoc:='';NroId:=DNI.Text;
    end;
    if R2.Checked then begin
      NroAccion:=NULL;Fec:='';RazSoc:='';NroId:=null;
    end;
    if R3.Checked then begin
      NroAccion:=NULL;Fec:=FECHA.Text;RazSoc:='';NroId:=null;
    end;
    if R4.Checked then begin
      NroAccion:=NULL;Fec:='';RazSoc:=NOMB.Text;NroId:=null;
    end;
    if R5.Checked then begin
      NroAccion:=DNI.Text;Fec:='';RazSoc:='';NroId:=null;
    end;
    if not Funciones.Run_Fn_VistaParcelasServiciosTitulares(ValNull,NroAccion,Fec,true,
      false,RazSoc,NroId,DataSet0,'',0) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
    else PC1.Enabled:=true;
  end;
  if NroOpcion = 3 then begin //Mantenimiento
    if R1.Checked then begin
      NroAccion:=null;Fec:='';RazSoc:='';NroId:=DNI.Text;
    end;
    if R2.Checked then begin
      NroAccion:=NULL;Fec:='';RazSoc:='';NroId:=null;
    end;
    if R3.Checked then begin
      NroAccion:=NULL;Fec:=FECHA.Text;RazSoc:='';NroId:=null;
    end;
    if R4.Checked then begin
      NroAccion:=NULL;Fec:='';RazSoc:=NOMB.Text;NroId:=null;
    end;
    if R5.Checked then begin
      NroAccion:=DNI.Text;Fec:='';RazSoc:='';NroId:=null;
    end;
    if not Funciones.Run_Fn_VistaParcelasMantenimientoTitulares(NroAccion,Fec,RazSoc,NroId,DataSet0,'',0) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
    else PC1.Enabled:=true;
  end;
  if NroOpcion = 3 then begin //Mantenimiento
    if R1.Checked then begin
      NroAccion:=null;Fec:='';RazSoc:='';NroId:=DNI.Text;
    end;
    if R2.Checked then begin
      NroAccion:=NULL;Fec:='';RazSoc:='';NroId:=null;
    end;
    if R3.Checked then begin
      NroAccion:=NULL;Fec:=FECHA.Text;RazSoc:='';NroId:=null;
    end;
    if R4.Checked then begin
      NroAccion:=NULL;Fec:='';RazSoc:=NOMB.Text;NroId:=null;
    end;
    if R5.Checked then begin
      NroAccion:=DNI.Text;Fec:='';RazSoc:='';NroId:=null;
    end;
    if not Funciones.Run_Fn_VistaParcelasConsolidadosTitulares(NroAccion,Fec,RazSoc,NroId,DataSet0,'',0) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
    else PC1.Enabled:=true;
  end;
  Barra1.Panels[1].Text:='Cantidad: ' + inttostr(DataSet0.RecordCount);
  Funciones.Free;
end;
if nro=2 then begin
  ORIGEN.Clear;
  TiposOrigen:=LeeXML('TiposOrigenMovimientos','');
  if length(TiposOrigen) <> 0 then begin
    SetLength(IdCombos[0],High(TiposOrigen[1]) + 1);
    for t:=0 to High(TiposOrigen[1])  do begin
      ORIGEN.Items.Insert(t,TiposOrigen[1,t]);
      IdCombos[0,t]:=TiposOrigen[0,t];
    end;
  end
  else begin
    DtCombo.Free;
    Dtcombo:=TClientDataSet.Create(nil);
    TiposOrigenMovimientos:=TTiposOrigenMovimientos.Create(nil);
    TiposOrigenMovimientos.ConnectionString:=modulo2.Conexion;
    if TiposOrigenMovimientos.Listar('SELECT NroTipoOrigen, Detalle FROM TiposOrigenMovimientos '
      + 'ORDER BY NroTipoOrigen',DtCombo) then begin
      SetLength(IdCombos[0],DtCombo.RecordCount);
      for t:=1 to DtCombo.RecordCount  do begin
        DtCombo.RecNo:=t;
        ORIGEN.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
        IdCombos[0,t-1]:=DtCombo.Fields[1].AsString;
      end;
    end
    else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    TiposOrigenMovimientos.Free;
  end;
  ORIGEN.ItemIndex:=0;
end;
if nro=3 then begin
  PERIO.Clear;
  PERIO1.Clear;
  PERIO2.Clear;
  PERIO3.Clear;
  PERIO4.Clear;
  PERIO5.Clear;
  PeriodosVenc:=LeeXML('PeriodosVencimientos','');
  if length(PeriodosVenc) <> 0 then begin
    SetLength(IdCombos[0],High(PeriodosVenc[1]) + 1);
    for t:=0 to High(PeriodosVenc[1])  do begin
      PERIO.Items.Insert(t,PeriodosVenc[1,t]);
      PERIO1.Items.Insert(t,PeriodosVenc[1,t]);
      PERIO2.Items.Insert(t,PeriodosVenc[1,t]);
      PERIO3.Items.Insert(t,PeriodosVenc[1,t]);
      PERIO4.Items.Insert(t,PeriodosVenc[1,t]);
      PERIO5.Items.Insert(t,PeriodosVenc[1,t]);
      IdCombos[0,t]:=PeriodosVenc[0,t];
    end;
  end
  else begin
    DtCombo.Free;
    Dtcombo:=TClientDataSet.Create(nil);
    PeriodosVencimientos:=TPeriodosVencimientos.Create(nil);
    PeriodosVencimientos.ConnectionString:=modulo2.Conexion;
    if PeriodosVencimientos.Listar('SELECT Id,Periodo FROM dbo.PeriodosVencimientos '
      + 'ORDER BY Periodo',DtCombo) then begin
      SetLength(IdCombos[0],DtCombo.RecordCount);
      for t:=1 to DtCombo.RecordCount  do begin
        DtCombo.RecNo:=t;
        PERIO.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
        PERIO1.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
        PERIO2.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
        PERIO3.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
        PERIO4.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
        PERIO5.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
        IdCombos[0,t-1]:=DtCombo.Fields[0].AsString;
      end;
    end
    else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    PeriodosVencimientos.Free;
  end;
  PERIO.ItemIndex:=0;
  PERIO1.ItemIndex:=0;
  PERIO2.ItemIndex:=0;
  PERIO3.ItemIndex:=0;
  PERIO4.ItemIndex:=0;
  PERIO5.ItemIndex:=0;
end;
if nro=4 then begin
  DataSet1.Free;
  DataSet1:=TClientdataSet.Create(nil);
  DataSource2.DataSet:=DataSet1;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if NroOpcion = 1 then begin //Ventas
    NroId:=DataSet0.Fields[1].AsVariant;
    if not Funciones.Run_Fn_VistaParcelasMovimientosVent(NroId,DataSet1,'',0) then
       messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  end;
  if NroOpcion = 2 then begin  //Servcios
    NroId:=DataSet0.Fields[1].AsVariant;
    if not Funciones.Run_Fn_VistaParcelasMovimientosServ(NroId,DataSet1,'',0) then
       messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  end;
  if NroOpcion = 3 then begin  //Servcios
    NroId:=DataSet0.Fields[1].AsVariant;
    if not Funciones.Run_Fn_VistaParcelasMovimientosMant(NroId,DataSet1,'',0) then
       messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  end;
  Funciones.Free;
  if NroOpcion < 3 then begin
    DBGrid2.Columns[0].Width:=50;
    DBGrid2.Columns[1].Width:=50;
    DBGrid2.Columns[2].Width:=85;
    DBGrid2.Columns[3].Width:=125;
    DBGrid2.Columns[4].Width:=50;
    DBGrid2.Columns[5].Width:=50;
    DBGrid2.Columns[6].Width:=50;
    DBGrid2.Columns[7].Width:=50;
    DBGrid2.Columns[8].Width:=50;
    DBGrid2.Columns[9].Width:=50;
  end
  else begin
    DBGrid2.Columns[0].Width:=50;
    DBGrid2.Columns[1].Width:=50;
    DBGrid2.Columns[2].Width:=85;
    DBGrid2.Columns[3].Width:=125;
    DBGrid2.Columns[4].Width:=50;
    DBGrid2.Columns[5].Width:=50;
    DBGrid2.Columns[6].Width:=50;
    DBGrid2.Columns[7].Width:=50;
    DBGrid2.Columns[8].Width:=50;
    DBGrid2.Columns[9].Width:=50;
  end;
end;

if nro = 6 then begin
  for t:=1 to DataSet0.RecordCount do begin
    DataSet0.RecNo:=t;
    grilla2.RowCount:=t+1;
    grilla2.Cells[0,t]:=StrFill(inttostr(t),4,'0','');
    if NroOpcion = 1 then begin //Ventas
      grilla2.Cells[1,t]:=DataSet0.Fields[0].AsString;
      grilla2.Cells[2,t]:=DataSet0.Fields[15].AsString;
      grilla2.Cells[3,t]:=DataSet0.Fields[2].AsString;
    end;
    if NroOpcion = 2 then begin //Servicios
      grilla2.Cells[1,t]:=DataSet0.Fields[0].AsString;
      grilla2.Cells[2,t]:=DataSet0.Fields[20].AsString;
      grilla2.Cells[3,t]:=DataSet0.Fields[2].AsString;
    end;
    if NroOpcion = 3 then begin //Mant
      grilla2.Cells[1,t]:=DataSet0.Fields[1].AsString;
      grilla2.Cells[2,t]:=DataSet0.Fields[9].AsString;
      grilla2.Cells[3,t]:=DataSet0.Fields[2].AsString;
    end;
    if NroOpcion = 4 then begin //Servicios
      grilla2.Cells[1,t]:=DataSet0.Fields[1].AsString;
      grilla2.Cells[2,t]:=DataSet0.Fields[3].AsString;
      grilla2.Cells[3,t]:=DataSet0.Fields[2].AsString;
    end;
  end;
end;
end;

procedure TAuditaMovim.R1Click(Sender: TObject);
begin
FECHA.Visible:=false;
NOMB.Visible:=false;
DNI.Visible:=false;
LB1.Visible:=true;
if (R1.Checked = true) or (R5.Checked = true) then begin
  if R1.Checked then LB1.Caption:='Ingrese N° DNI';
  if R5.Checked then LB1.Caption:='Ingrese N° Préstamo';
  DNI.Visible:=true;
  DNI.SetFocus;
end;
if R3.Checked = true then begin
  LB1.Caption:='Ingrese Fecha';
  FECHA.Visible:=true;
  FECHA.SetFocus;
end;
if R4.Checked = true then begin
  LB1.Caption:='Ingrese Nombre';
  NOMB.Visible:=true;
  NOMB.SetFocus;
end;
end;

procedure TAuditaMovim.R2Click(Sender: TObject);
begin
LB1.Visible:=false;
DNI.Visible:=false;
NOMB.Visible:=false;
FECHA.Visible:=false;
Buscar.SetFocus;
end;

procedure TAuditaMovim.NOMBKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then Buscar.SetFocus;
end;

procedure TAuditaMovim.FECHAKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = chr(13) then Buscar.SetFocus;
end;

procedure TAuditaMovim.FECHAExit(Sender: TObject);
var fec:Tdatetime;
begin
try
 fec:=strtodate(trim(FECHA.Text));
except
  messagedlgpos('La fecha es Erronea!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  FECHA.SetFocus;
end;
end;

procedure TAuditaMovim.DNIKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then Buscar.SetFocus;
end;

procedure TAuditaMovim.CODIGOKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  if (R1.Checked = true) or (R5.Checked = true) then DNI.SetFocus
  else if R2.Checked = true then BUSCAR.SetFocus
  else if R3.Checked = true then FECHA.SetFocus
  else if R4.Checked = true then NOMB.SetFocus;
end;
end;

procedure TAuditaMovim.BUSCARClick(Sender: TObject);
begin
Coloca1(1,'');
end;

procedure TAuditaMovim.DBGrid1CellClick(Column: TColumn);
begin
if not(DataSet0.IsEmpty) then begin
  coloca1(4,'');
  PC1.Enabled:=true;
 { if NroOpcion = 3 then ID.Text:=DataSet0.Fields[1].AsString
  else ID.Text:=DataSet0.Fields[0].AsString;}
  ID.Text:=DataSet0.Fields[1].AsString;
  EDITAR.Enabled:=false;
  BORRAR.Enabled:=false;
  Barra1.Panels[2].Text:='Posición: ' + inttostr(DataSet0.RecNo);
end
else PC1.Enabled:=false;
end;

procedure TAuditaMovim.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var h:byte;
begin
if trim(DataSet1.Fields[9].AsString) = 'True' then h:=2
else h:=1; //Conf
case h of
  1:begin
    DBGrid2.Canvas.Brush.Color:=clWindow;
    DBGrid2.Canvas.FillRect(Rect);
    DBGrid2.Canvas.Font.Color:= clBlack;
    end;
  2:begin
    DBGrid2.Canvas.Brush.Color:=$00C7D8C7;
    DBGrid2.Canvas.FillRect(Rect);
    DBGrid2.Canvas.Font.Color:= clBlack;
    end;
end;
DBGrid2.DefaultDrawColumnCell(Rect,Datacol,Column,State);
end;

procedure TAuditaMovim.DBGrid1TitleClick(Column: TColumn);
begin
DataSet0.IndexFieldNames:=Column.FieldName;
end;

procedure TAuditaMovim.DBGrid2CellClick(Column: TColumn);
begin
if not(DataSet1.IsEmpty) then begin
  EDITAR.Enabled:=true;
  if DataSet1.RecordCount > 1 then BORRAR.Enabled:=true
  else BORRAR.Enabled:=false;
  ID.Text:=DataSet1.Fields[0].AsString;
//  PREST.Text:=DataSet1.Fields[1].AsString;
  FECH.Text:=DataSet1.Fields[2].AsString;
  ORIGEN.ItemIndex:=DataSet1.Fields[10].AsInteger-1;
  DETA.Text:=DataSet1.Fields[3].AsString;
  PUESTO.Text:=DataSet1.Fields[4].AsString;
  DEU.Text:=DataSet1.Fields[5].AsString;
  PAG.Text:=DataSet1.Fields[6].AsString;
  PUN.Text:=DataSet1.Fields[7].AsString;
  SAL.Text:=DataSet1.Fields[8].AsString;
  if DataSet1.Fields[9].AsString = 'True' then C2.Checked:=true
  else C2.Checked:=false;
  FECH.SetFocus;
end
else begin
  EDITAR.Enabled:=false;
  BORRAR.Enabled:=false;
end;
end;

procedure TAuditaMovim.EDITARClick(Sender: TObject);
var gf:integer;
    txt,txt2:string;
begin
gf:=messagedlgpos('Confirma la Modificación del Movimiento Seleccionado?'
    ,mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
if gf = 1 then begin
  if C2.Checked = true then txt:='1'
  else txt:='0';
  try
    if trim(PUESTO.Text) = '' then txt2:='null'
    else txt2:=trim(PUESTO.Text);
   { modulo2.Com1.CommandText:='UPDATE PrestamosMovimientos SET TipoOrigen=' + NroOrigen
    + ',Detalle=' + chr(39) + trim(DETA.Text) + chr(39) + ' ,Puesto=' + txt2
    + ',Fecha=' + chr(39) + trim(FECH.Text) + chr(39) + ',Deudas=' + trim(DEU.Text)
    + ',Pagos=' + trim(PAG.Text) + ',Punitorios=' + trim(PUN.Text) + ',Saldo='
    + trim(SAL.Text) + ',Activo=' + txt + ' WHERE (Id=' + ID.Text + ');';
    modulo2.Com1.Execute;}
    Barra1.SimpleText:='Datos guardados Correctamente!!';
    Coloca1(4,'');
  except
    Barra1.SimpleText:='ERROR!!!... No se guardaron los Datos.';
  end;
end;
end;

procedure TAuditaMovim.ORIGENKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then PUESTO.SetFocus;
end;

procedure TAuditaMovim.ORIGENExit(Sender: TObject);
begin
if ORIGEN.ItemIndex < 0 then begin
  messagedlgpos('ERROR!! No Existe el Origen Ingresado!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  ORIGEN.SetFocus;
end;
end;

procedure TAuditaMovim.CTAExit(Sender: TObject);
begin
if DBGrid2.Focused = true then
else begin
  if CTA.ItemIndex < 0 then begin
    messagedlgpos('ERROR!! No Existe Cuota Ingresada!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
    CTA.SetFocus;
  end
  else begin
    if NroOrigen = '1' then DETA.Text:=ORIGEN.Text + ' ' + CTA.Text;
  end;
end;  
end;

procedure TAuditaMovim.CTAKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then PUESTO.SetFocus;
end;

procedure TAuditaMovim.PUESTOKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then DEU.SetFocus
else begin
  if ( StrScan('0123456789',Key) <> nil ) or
     ( Key = Char(VK_BACK) ) then
  else Key := #0;
end;
end;

procedure TAuditaMovim.DEUKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then PAG.SetFocus
else begin
  if ( StrScan('0123456789',Key) <> nil ) or
     ( Key = Char(VK_BACK) ) then
  else Key := #0;
end;
end;

procedure TAuditaMovim.PAGKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then PUN.SetFocus
else begin
  if ( StrScan('0123456789',Key) <> nil ) or
     ( Key = Char(VK_BACK) ) then
  else Key := #0;
end;
end;

procedure TAuditaMovim.PUNKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then SAL.SetFocus
else begin
  if ( StrScan('0123456789',Key) <> nil ) or
     ( Key = Char(VK_BACK) ) then
  else Key := #0;
end;
end;

procedure TAuditaMovim.SALKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then C2.SetFocus;
end;

procedure TAuditaMovim.BORRARClick(Sender: TObject);
var gf:integer;
    txt,txt2:string;
begin
gf:=messagedlgpos('Confirma Borrar el Movimiento Seleccionado?' + chr(13)
    + 'Se Eliminará definitivamente de la Base de Datos'
    ,mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
if gf = 1 then begin
{  try
    modulo2.Com1.CommandText:='BEGIN TRANSACTION;';
    modulo2.Com1.Execute;
    modulo2.Com1.CommandText:='DELETE PrestamosMovimientos WHERE (Id=' + ID.Text + ');';
    modulo2.Com1.Execute;
    modulo2.Com1.CommandText:='UPDATE PrestamosMovimientos SET Activo=1 WHERE (Id='
    + 'SELECT Max(Id) FROM PrestamosMovimientos WHERE (NroPrestamo=' + trim(PREST.Text) + '));';
    modulo2.Com1.Execute;
    modulo2.Com1.CommandText:='COMMIT TRANSACTION';
    modulo2.Com1.Execute;
    Barra1.SimpleText:='Datos Eliminados Correctamente!!';
    Coloca1(4,'');
  except
    Barra1.SimpleText:='Error al Intentar Borrar los Datos';
    modulo2.Com1.CommandText:='ROLLBACK TRANSACTION';
    modulo2.Com1.Execute;
  end;  }
end;
end;

procedure TAuditaMovim.PERIOKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then RECREA.SetFocus;
end;

procedure TAuditaMovim.PERIOExit(Sender: TObject);
begin
if PERIO.ItemIndex < 0 then begin
  messagedlgpos('ERROR!! No Existe el Periodo Ingresado!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  PERIO.SetFocus;
end
end;

procedure TAuditaMovim.RECREAClick(Sender: TObject);
var gf:integer;
    Cons:widestring;
begin
gf:=messagedlgpos('Confirma Recrear los Movimientos del Prestamo Seleccionado?' + chr(13)
    + 'Se Eliminará definitivamente de la Base de Datos los movimientos Actuales!!'
    ,mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
if gf = 1 then begin
  try
    Funciones:=TFuncionesVarias.Create(nil);
    Funciones.ConnectionString:=modulo2.Conexion;
    Cons:='RecreaMovimientos ' + inttostr(NroOpcion) + ' , ' + trim(PERIO.Text)
          + ' , ' + trim(ID.Text) + ',0';
    if not Funciones.ListarSinResp(Cons) then messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
    else begin


 {   modulo2.Com1.CommandText:='CambioAutomaticoEstadosPrestamos ' + NroCodigo
    + ' , ' + trim(PREST.Text);
    modulo2.Com1.Execute;
  }
      Funciones.Free;
      Barra1.SimpleText:= 'Datos Recreados Correctamente';
      Coloca1(4,'');
    end;
  except
    Barra1.SimpleText:='Error al Intentar Recrear los Datos';
  end;
end;
end;

procedure TAuditaMovim.PERIO1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then MOVIM.SetFocus;
end;

procedure TAuditaMovim.PERIO1Exit(Sender: TObject);
begin
if PERIO.ItemIndex < 0 then begin
  messagedlgpos('ERROR!! No Existe el Periodo Ingresado!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  PERIO.SetFocus;
end;
end;

procedure TAuditaMovim.MOVIMClick(Sender: TObject);
var gf:integer;
    txt,txt2:string;
begin
gf:=messagedlgpos('Confirma Agregar el Movimiento Mensual del Prestamo Seleccionado?'
    ,mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
if gf = 1 then begin
 { try
    modulo2.BarData.CommandText:='MovimientosMensualesAutomatico ' + NroCodigo
    + ' , '  + trim(PREST.Text) + ' , ' + trim(PERIO1.Text);
    modulo2.BarData.Open;
    messagedlgpos( modulo2.BarData.Fields[0].AsString,mtWarning,[mbok],0,screen.Width div 3,screen.Height div 3);
    Coloca1(4,'');
  except
    Barra1.SimpleText:='Error al Intentar Agregar los Datos';
  end;
  modulo2.BarData.Close;  }
end;
end;

procedure TAuditaMovim.FECHKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then ORIGEN.SetFocus;
end;

procedure TAuditaMovim.FECHExit(Sender: TObject);
var fec:Tdatetime;
begin
try
 fec:=strtodate(trim(FECH.Text));
except
  messagedlgpos('La fecha es Erronea!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  FECH.SetFocus;
end;
end;

procedure TAuditaMovim.PC1Change(Sender: TObject);
begin
if (PC1.ActivePageIndex = 1) and (R2.Checked = true) and not(DataSet0.IsEmpty) then begin
end
else PC1.ActivePage:=PC1.Pages[0];
end;


procedure TAuditaMovim.MOVPAGClick(Sender: TObject);
var gf:integer;
    txt,txt2:string;
    Cons:widestring;
begin
gf:=messagedlgpos('Confirma Actualizar los Pagos de Todas las Acciones?'
    ,mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
if gf = 1 then begin
{grilla2.Cells[0,0]:='Ord';
grilla2.Cells[1,0]:='N° Prestamo';
grilla2.Cells[2,0]:='Afiliado';
grilla2.Cells[3,0]:='Fecha';
grilla2.Cells[4,0]:='Act. Pagos';
grilla2.Cells[5,0]:='Punitorios';
grilla2.Cells[6,0]:='Movim.Final';';
SELECT NroPrestamo,FechaCarga , Nombre, Capital,CantCuotas, '
  + 'ValorCuota, Oficina, Puesto, Confirmado, DetalleEstado}
   Coloca1(6,'');
  try
    Funciones:=TFuncionesVarias.Create(nil);
    Funciones.ConnectionString:=modulo2.Conexion;

    Progreso.Max:=DataSet0.RecordCount;
    for gf:=1 to DataSet0.RecordCount do begin
      DataSet0.RecNo:=gf;
      DataSet2.Free;
      DataSet2:=TClientdataSet.Create(nil);
      if NroOpcion <> 4 then
        Cons:='MovimientosMensualesAutomatico ' + IntToStr(NroOpcion) + ' , ' + trim(DataSet0.Fields[1].AsString)
              + ' , ' + trim(PERIO2.Text) + ',1'
      else
        Cons:='RecreaMovimientos ' + IntToStr(NroOpcion) + ' , ' + trim(PERIO2.Text)
          + ' , ' + trim(DataSet0.Fields[1].AsString) + ',1';
      if Funciones.Listar(Cons,DataSet2) then grilla2.Cells[4,gf]:=DataSet2.Fields[0].AsString
      else grilla2.Cells[4,gf]:='ERROR AL PROCESAR';
      Barra1.Panels[0].Text:='Procesando: Registro N° '  + inttostr(DataSet0.RecNo) + ' de '+ inttostr(DataSet0.RecordCount);
      Progreso.Position:=gf;
      Self.Update;
    end;
    messagedlgpos('Movimientos Mensuales Generados Correctamente!!'
    ,mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
    MOVPUN.Enabled:=true;
    MOVPAG.Enabled:=false;  
  except
    Barra1.SimpleText:='Error al Intentar Agregar los Datos';
  end;
end;
end;

procedure TAuditaMovim.PERIO3KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then PUNIT.SetFocus;
end;

procedure TAuditaMovim.PERIO3Exit(Sender: TObject);
begin
if PERIO3.ItemIndex < 0 then begin
  messagedlgpos('ERROR!! No Existe el Periodo Ingresado!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  PERIO3.SetFocus;
end
end;

procedure TAuditaMovim.PUNITClick(Sender: TObject);
var gf:integer;
    txt,txt2:string;
begin
gf:=messagedlgpos('Confirma Calcular y Agregar Punitorios al Prestamo Seleccionado?'
    ,mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
if gf = 1 then begin
  {try
    modulo2.BarData.CommandText:='PunitoriosMensualesAutomatico ' + NroCodigo
    + ' , '  + trim(PREST.Text) + ' , ' + trim(PERIO3.Text);
    modulo2.BarData.Open;
    messagedlgpos( modulo2.BarData.Fields[0].AsString + chr(13)
    + 'Debe Crear el Movimiento Mensual para que Impacte en Base Datos',mtWarning,[mbok],0,screen.Width div 3,screen.Height div 3);
  except
    Barra1.SimpleText:='Error al Intentar Agregar los Datos';
  end;
  modulo2.BarData.Close;}
end;
end;

procedure TAuditaMovim.MOVPUNClick(Sender: TObject);
var gf:integer;
    txt,txt2:string;
begin
gf:=messagedlgpos('Confirma Agregar los Punitorios Mensual de Todos los Prestamos?'
    ,mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
if gf = 1 then begin
{grilla2.Cells[0,0]:='Ord';
grilla2.Cells[1,0]:='N° Prestamo';
grilla2.Cells[2,0]:='Afiliado';
grilla2.Cells[3,0]:='Fecha';
grilla2.Cells[4,0]:='Estado';
SELECT NroPrestamo,FechaCarga , Nombre, Capital,CantCuotas, '
  + 'ValorCuota, Oficina, Puesto, Confirmado, DetalleEstado}
{  try
    Progreso.Max:=LOTE.RecordCount;
    for gf:=1 to LOTE.RecordCount do begin
      LOTE.RecNo:=gf;
      modulo2.BarData.Close;
      modulo2.BarData.CommandText:='PunitoriosMensualesAutomatico ' + NroCodigo
      + ' , '  + trim(LOTE.Fields[0].AsString) + ' , ' + trim(PERIO4.Text);
      modulo2.BarData.Open;
      grilla2.Cells[5,gf]:=modulo2.BarData.Fields[0].AsString;
      Progreso.Position:=gf;
      Self.Update;
    end;
    messagedlgpos('Punitorios Generados Correctamente!!'
    ,mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
    MOVPUN.Enabled:=false;
    MOVMES.Enabled:=true;
  except
    Barra1.SimpleText:='Error al Intentar Agregar los Datos';
  end;  
  modulo2.BarData.Close; }
end;
end;

procedure TAuditaMovim.MOVMESClick(Sender: TObject);
var gf:integer;
    txt,txt2:string;
begin
gf:=messagedlgpos('Confirma Actualizar los Movimientos Mensuales de Todos los Prestamos?'
    ,mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
if gf = 1 then begin
{grilla2.Cells[0,0]:='Ord';
grilla2.Cells[1,0]:='N° Prestamo';
grilla2.Cells[2,0]:='Afiliado';
grilla2.Cells[3,0]:='Fecha';
grilla2.Cells[4,0]:='Act. Pagos';
grilla2.Cells[5,0]:='Punitorios';
grilla2.Cells[6,0]:='Movim.Final';';
SELECT NroPrestamo,FechaCarga , Nombre, Capital,CantCuotas, '
  + 'ValorCuota, Oficina, Puesto, Confirmado, DetalleEstado}
{  try
    Progreso.Max:=LOTE.RecordCount;
    for gf:=1 to LOTE.RecordCount do begin
      LOTE.RecNo:=gf;
      modulo2.BarData.Close;
      modulo2.BarData.CommandText:='MovimientosMensualesAutomatico ' + NroCodigo
      + ' , '  + trim(LOTE.Fields[0].AsString) + ' , ' + trim(PERIO2.Text);
      modulo2.BarData.Open;
      grilla2.Cells[6,gf]:=modulo2.BarData.Fields[0].AsString;
      Progreso.Position:=gf;
      Self.Update;
    end;
    messagedlgpos('Movimientos Mensuales Generados Correctamente!!'
    ,mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
  except
    Barra1.SimpleText:='Error al Intentar Agregar los Datos';
  end;   
  modulo2.BarData.Close; }
end;
end;

procedure TAuditaMovim.PERIO5Exit(Sender: TObject);
begin
if PERIO5.ItemIndex < 0 then begin
  messagedlgpos('ERROR!! No Existe el Periodo Ingresado!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  PERIO5.SetFocus;
end;
end;

procedure TAuditaMovim.PERIO2Exit(Sender: TObject);
begin
if PERIO2.ItemIndex < 0 then begin
  messagedlgpos('ERROR!! No Existe el Periodo Ingresado!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  PERIO2.SetFocus;
end;
end;

procedure TAuditaMovim.PERIO4Exit(Sender: TObject);
begin
if PERIO4.ItemIndex < 0 then begin
  messagedlgpos('ERROR!! No Existe el Periodo Ingresado!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  PERIO4.SetFocus;
end;
end;

end.

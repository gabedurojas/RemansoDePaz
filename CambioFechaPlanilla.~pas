unit CambioFechaPlanilla;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid, ExtCtrls,
  ComCtrls, JvgPage, Buttons, JvExButtons, JvBitBtn, ToolWin, DB,
  JvgGroupBox, Mask, JvExGrids, JvStringGrid, Unidad, DBClient,
  WSDLIntf, ClaseFunciones, StrUtils, LMDControl, LMDBaseControl,
  LMDBaseGraphicControl, LMDGraphicControl, LMDScrollText,
  ClaseComprobantesCobrados,ClaseSistemas, RpDefine, RpBase, RpSystem, ImgList;

type
  TCambioFecPlanilla = class(TForm)
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    Limpiar: TJvBitBtn;
    GUARDA: TJvBitBtn;
    ToolButton3: TToolButton;
    JvBitBtn1: TJvBitBtn;
    Barra1: TStatusBar;
    ToolButton1: TToolButton;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DataSource1: TDataSource;
    Buscar: TJvBitBtn;
    GroupBox6: TGroupBox;
    Shape2: TShape;
    Label14: TLabel;
    C1: TRadioButton;
    C2: TRadioButton;
    C3: TRadioButton;
    C0: TRadioButton;
    Bevel1: TBevel;
    COBRA: TComboBox;
    FEC: TMaskEdit;
    ODNI: TEdit;
    JvgGroupBox3: TJvgGroupBox;
    DBGrid1: TDBGrid;
    JvgGroupBox5: TJvgGroupBox;
    Label11: TLabel;
    Label19: TLabel;
    Label6: TLabel;
    D1: TEdit;
    JvgGroupBox1: TJvgGroupBox;
    JvgGroupBox2: TJvgGroupBox;
    DBGrid2: TDBGrid;
    Label8: TLabel;
    grilla2: TJvStringGrid;
    Label1: TLabel;
    DataSource2: TDataSource;
    D4: TEdit;
    D5: TEdit;
    D2: TEdit;
    Label2: TLabel;
    D3: TEdit;
    Shape1: TShape;
    Label4: TLabel;
    todos: TRichEdit;
    Image1: TImage;
    Label5: TLabel;
    D6: TEdit;
    Edit1: TMaskEdit;
    Label3: TLabel;
    Label7: TLabel;
    GroupBox1: TGroupBox;
    modfif: TRadioButton;
    modfin: TRadioButton;
    Label9: TLabel;
    Label10: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure C0Click(Sender: TObject);
    procedure BuscarClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure LimpiarVentana(nro:byte);
    procedure LimpiarClick(Sender: TObject);
    procedure GUARDAClick(Sender: TObject);
    procedure ODNIKeyPress(Sender: TObject; var Key: Char);
    procedure COBRAExit(Sender: TObject);
    procedure FECExit(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Exit(Sender: TObject);
    procedure grilla2DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure Button1Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2Exit(Sender: TObject);
  private
    gh:boolean;
    IdCombos:array of array of string;
    nrop:string;
    DataSet0,DataSet1,DtCombo:TClientDataSet;
  public
    Funciones:TFuncionesVarias;
    //ComprobantesCobradosUpdate:ComprobantesCobrados;
    ComprobantesCobrados:TComprobantesCobrados;
    ComprobantesCobradosUpdate:TComprobantesCobrados;
    //PlanillaCobranzas:TPlanillaCobranzas;
    Sistemas:TSistemas;
    FechaActual:string;
    CorreccionImpr:double;
    TiposFormularios:Unidad.TablaXML;{ Private declarations }
  end;

var
  CambioFecPlanilla: TCambioFecPlanilla;

implementation

uses Modulo, Busqueda;
{$R *.dfm}

procedure TCambioFecPlanilla.FormActivate(Sender: TObject);
begin
if not(gh) then begin
  gh:=true;
  setlength(IdCombos,5);
  grilla2.Cells[0,0]:='Orden';
  grilla2.Cells[1,0]:='Objeto';
  grilla2.Cells[2,0]:='Cantidad';
  grilla2.Cells[3,0]:='Importe';
  grilla2.Cells[4,0]:='Comisión';
  grilla2.Cells[5,0]:='% Com.';
  grilla2.Cells[6,0]:='Total';
  grilla2.Cells[0,1]:='1';
  grilla2.Cells[0,2]:='2';
  grilla2.Cells[0,3]:='3';
  grilla2.Cells[0,4]:='4';
  grilla2.Cells[0,5]:='5';
  grilla2.Cells[0,6]:='6';
  grilla2.Cells[0,7]:='7';
  grilla2.Cells[0,8]:='->';
  grilla2.Cells[1,1]:='Ventas';
  grilla2.Cells[1,2]:='Servicios';
  grilla2.Cells[1,3]:='Mantenimiento';
  grilla2.Cells[1,4]:='Consolidados';
  grilla2.Cells[1,5]:='Tramites Varios';
  grilla2.Cells[1,6]:='Plan Previsión (PSP)';
  grilla2.Cells[1,7]:='Anulados';
  grilla2.Cells[1,8]:='----------------------';
  grilla2.Cells[2,8]:='-------------';
  grilla2.Cells[3,8]:='--------------------';
  grilla2.Cells[4,8]:='--------------------';
  grilla2.Cells[5,8]:='------------';
  grilla2.Cells[6,8]:='--------------------';
  grilla2.Cells[1,9]:='T O T A L';
  FechaActual:=LeftStr(Fec_System(),10);
  PC1.ActivePage:=PC1.Pages[0];
  FEC.Text:=FechaActual;
  Coloca1(1);
  ODNI.SetFocus;
end;
end;

procedure TCambioFecPlanilla.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TCambioFecPlanilla.Coloca1(nro:byte);
var t,y,r,s:integer;
    NroCobrador,NroForm,ValNull:variant;
    txt:string;
    txtw:widestring;
    tot1,tot2,tot3,tot4:real;
begin
if nro=0 then begin //Cargamos los Pagos Registrados
  DataSource1.DataSet:=nil;
  DataSet0.Free;
  DataSet0:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=DataSet0;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if C1.Checked then begin
    NroCobrador:=null;
    NroForm:=null;
    txt:=trim(FEC.Text);
  end;
  if C2.Checked then begin
    NroCobrador:=null;
    NroForm:=ODNI.Text;
    txt:='';
  end;
  if C3.Checked then begin
    NroCobrador:=IdCombos[1,COBRA.ItemIndex];
    NroForm:=null;
    txt:='';
  end;
  if C0.Checked then begin
    NroCobrador:=null;
    NroForm:=null;
    txt:='';
  end;
  if not Funciones.Run_Fn_VistaComprobantesConPlanillas(NroForm,txt,NroCobrador,DataSet0,'',0) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if not DataSet0.IsEmpty then begin
    Barra1.Panels[1].Text:='Cant. Registros: ' + inttostr(DataSet0.RecordCount);
    for t:=0 to DataSet0.FieldCount-1 do DBGrid1.Columns[t].Width:=70;
  end;
end;
if nro=1 then begin //Combo Cobradores
  COBRA.Clear;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT * FROM Fn_VistaPersonalAreas(2,NULL,NULL,0) WHERE (Cuif<>0) ORDER BY RazonSocial';
  if not Funciones.Listar(txtw,DtCombo) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
    SetLength(IdCombos[1],DtCombo.RecordCount);
    for t:=1 to DtCombo.RecordCount  do begin
      DtCombo.RecNo:=t;
      COBRA.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
      IdCombos[1,t-1]:=DtCombo.Fields[2].AsString;
    end;
  end;
  Funciones.Free;
  COBRA.ItemIndex:=0;
end;
if nro=2 then begin //Cargamos los Pagos Registrados
  DataSource2.DataSet:=nil;
  DataSet1.Free;
  DataSet1:=TClientdataSet.Create(nil);
  DataSource2.DataSet:=DataSet1;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  NroCobrador:=DataSet0.Fields[2].AsVariant;ValNull:=DataSet0.Fields[4].AsVariant;
  NroForm:=DataSet0.Fields[5].AsVariant;
  if not Funciones.Run_Fn_VistaComprobantesCobrados(ValNull,NroCobrador,'',NroForm,'',DataSet1,'',0) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  for t:=1 to 9 do begin
    if t <> 8 then begin
      grilla2.Cells[2,t]:='0';
      grilla2.Cells[3,t]:='0.00';
      grilla2.Cells[4,t]:='0.00';
      grilla2.Cells[5,t]:='0.00';
      grilla2.Cells[6,t]:='0.00';
      grilla2.Cells[7,t]:='0.00';
    end;
  end;
  if not DataSet1.IsEmpty then begin
    //DataSet1.IndexFieldNames:=DataSet1.Fields[12].FieldName;
    for t:=0 to DataSet1.FieldCount-1 do DBGrid2.Columns[t].Width:=70;
     DtCombo.Free;
    DtCombo:=TClientdataSet.Create(nil);
    Funciones:=TFuncionesVarias.Create(nil);
    Funciones.ConnectionString:=modulo2.Conexion;
    if not Funciones.Run_Fn_VistaComprobantesAgrupados(NroForm,NroCobrador,ValNull,DtCombo,'',0) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
    else begin
      tot1:=0;tot2:=0;tot3:=0;tot4:=0;
      for t:=1 to 7 do begin
        if DtCombo.Locate('NroTipoObjeto',t,[loCaseInsensitive]) then begin
          grilla2.Cells[2,t]:=DtCombo.Fields[1].AsString;
          grilla2.Cells[3,t]:=Redondeo(DtCombo.Fields[2].AsString,2);
          grilla2.Cells[4,t]:=Redondeo(DtCombo.Fields[3].AsString,2);
          grilla2.Cells[5,t]:=Redondeo(DtCombo.Fields[4].AsString,2);
          grilla2.Cells[6,t]:=Redondeo(DtCombo.Fields[5].AsString,2);
          tot1:=tot1 + DtCombo.Fields[1].AsInteger;
          tot2:=tot2 + DtCombo.Fields[2].AsFloat;
          tot3:=tot3 + DtCombo.Fields[3].AsFloat;
          tot4:=tot4 + DtCombo.Fields[5].AsFloat;
        end;
      end;
      grilla2.Cells[2,9]:=FloatToStr(Tot1);
      grilla2.Cells[3,9]:=Redondeo(FloatToStr(tot2),2);
      grilla2.Cells[4,9]:=Redondeo(FloatToStr(tot3),2);
      grilla2.Cells[6,9]:=Redondeo(FloatToStr(tot4),2);
    end;
    Funciones.Free;
  end
  else messagedlg('ERROR!! No existen comprobantes para la Planilla Buscada.',mtError,[mbok],0);
end;
end;


procedure TCambioFecPlanilla.JvBitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TCambioFecPlanilla.C1Click(Sender: TObject);
begin

ODNI.Visible:=false;
FEC.Visible:=false;
COBRA.Visible:=false;
PC1.ActivePage:=PC1.Pages[0];
if C1.Checked then begin
  FEC.Visible:=true;
  FEC.SetFocus;
end;
if C2.Checked then begin
  ODNI.Visible:=true;
  ODNI.SetFocus;
end;
if C3.Checked then begin
  COBRA.Visible:=true;
  COBRA.SetFocus;
end;
end;

procedure TCambioFecPlanilla.C0Click(Sender: TObject);
begin
ODNI.Visible:=false;
FEC.Visible:=false;
Buscar.SetFocus;
end;

procedure TCambioFecPlanilla.BuscarClick(Sender: TObject);
begin
Coloca1(0);
end;

procedure TCambioFecPlanilla.DBGrid1CellClick(Column: TColumn);
begin
if not DataSet0.IsEmpty then begin
  D2.Text:=DataSet0.Fields[2].AsString;
  D3.Text:=DataSet0.Fields[3].AsString;
  //nrop:=DataSet0.Fields[3].AsString;
  label10.Caption:=DataSet0.Fields[2].AsString;
  D4.Text:=DataSet0.Fields[0].AsString;
  D5.Text:=DataSet0.Fields[1].AsString;
  if DataSet0.Fields[6].AsString = '' then begin
    Coloca1(2);
    //PC1.ActivePage:=PC1.Pages[1];
    D1.Text:='00000';
    GUARDA.Enabled:=true;
    groupbox1.Visible:=true;
  end
  else begin
    messagedlg('ATENCION esta Planilla se encuentra CONFIRMADA.. Imposible su Modificacion',mtError,[mbok],0);
    D1.Text:=DataSet0.Fields[6].AsString;
    GUARDA.Enabled:=false;
    edit1.ReadOnly:=true;
  end;
end;
end;

procedure TCambioFecPlanilla.DBGrid1TitleClick(Column: TColumn);
begin
DataSet0.IndexFieldNames:=Column.FieldName;
end;

procedure TCambioFecPlanilla.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var h:byte;
begin
if trim(DataSet0.Fields[6].Text) = '' then h:=0
else begin
  if trim(DataSet0.Fields[8].Text) <> '' then h:=1;
end;
case h of
  0:begin
    DBGrid1.Canvas.Brush.Color:=clWindow;
    DBGrid1.Canvas.FillRect(Rect);
    DBGrid1.Canvas.Font.Color:= clBlack;
    end;
  1:begin // sin confirmar
    DBGrid1.Canvas.Brush.Color:=$00C7D8C7;
    DBGrid1.Canvas.FillRect(Rect);
    DBGrid1.Canvas.Font.Color:= clBlack;
    end;
end;
DBGrid1.DefaultDrawColumnCell(Rect,Datacol,Column,State);
end;

procedure TCambioFecPlanilla.LimpiarVentana(nro:byte);
var t,r:integer;
begin
if nro =0 then begin
  DataSource1.DataSet:=nil;
  DataSource2.DataSet:=nil;
  C2.Checked:=true;
  PC1.ActivePage:=PC1.Pages[0];
  if c2.Checked= true then  begin
    odni.Text:=d2.Text;
    odni.SetFocus;
    buscar.Click;
  end
  else begin
     if c1.Checked= true then fec.SetFocus;
     if c3.Checked= true then cobra.SetFocus;
     if c0.Checked= true then buscar.SetFocus;
  end;
  D1.Text:='00000';
  D2.Clear;
  D3.Clear;
  D4.Clear;
  D5.Clear;
  D6.Clear;
end;
GUARDA.Enabled:=false;
end;

procedure TCambioFecPlanilla.LimpiarClick(Sender: TObject);
begin
LimpiarVentana(0);
end;

procedure TCambioFecPlanilla.GUARDAClick(Sender: TObject);
var gf,t:integer;
    TodoOk1,m:boolean;
    txtw:widestring;
begin
 if modfif.Checked then begin
   gf:=messagedlg('Desea Modificar la Fecha de carga de esta Planilla de Pagos Nro: ' + trim(d2.Text) ,mtWarning,[mbok,mbCancel],0);
   if gf = 1 then begin
      ComprobantesCobrados:=TComprobantesCobrados.Create(nil);
      ComprobantesCobrados.ConnectionString:=modulo2.Conexion;
      txtw:='UPDATE ComprobantesCobrados SET fechaplanilla = ' + chr(39)+ trim(edit1.Text) + chr(39)
      + ' WHERE (fechaplanilla=' + chr(39)+ trim(d3.Text) + chr(39) + ') and (nroplanilla= ' + trim(d2.Text) +')';
      m:=ComprobantesCobrados.ListarSinResp(txtw);
      ComprobantesCobrados.Free;
      if m then begin
        messagedlg('La Fecha de Carga de esta Planilla se ha modificado con Exito...',mtConfirmation,[mbok],0);
      end
      else begin
        messagedlg('Error al modificar la fecha de esta planilla. Consulte con un Administrador',mtError,[mbok],0);
      end;
   end
   else begin
    messagedlg('Ud. acaba de Cancelar esta Acción. No se produjeron ningún cambio en la Base de Datos',mtError,[mbok],0);
   end;
 end;
 if modfin.Checked then begin
   gf:=messagedlg('Desea Modificar el Número de esta Planilla de Pagos Nro: ' + trim(d2.Text) ,mtWarning,[mbok,mbCancel],0);
   if gf = 1 then begin
      ComprobantesCobrados:=TComprobantesCobrados.Create(nil);
      ComprobantesCobrados.ConnectionString:=modulo2.Conexion;
      txtw:='UPDATE ComprobantesCobrados SET nroplanilla = ' + trim(edit2.Text)
      + ' WHERE (fechaplanilla=' + chr(39)+ trim(d3.Text) + chr(39) + ') and (nroplanilla= ' + trim(d2.Text) +')';
      m:=ComprobantesCobrados.ListarSinResp(txtw);
      ComprobantesCobrados.Free;
      if m then begin
        messagedlg('El Nuevo Numero de esta Planilla se ha modificado con Exito...',mtConfirmation,[mbok],0);
      end
      else begin
        messagedlg('Error al modificar el numero de esta planilla. Consulte con un Administrador',mtError,[mbok],0);
      end;
   end
   else begin
    messagedlg('Ud. acaba de Cancelar esta Acción. No se produjeron ningún cambio en la Base de Datos',mtError,[mbok],0);
   end;
 end;
end;
procedure TCambioFecPlanilla.ODNIKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  Buscar.SetFocus;
end;
end;

procedure TCambioFecPlanilla.COBRAExit(Sender: TObject);
begin
if COBRA.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Cobrador Ingresado!!',mterror,[mbok],0);
  COBRA.SetFocus;
end;
end;

procedure TCambioFecPlanilla.FECExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(FEC.Text));
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  FEC.SetFocus;
end;
end;

procedure TCambioFecPlanilla.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var h:byte;
begin
if trim(DataSet1.Fields[18].Text) = 'True' then h:=1
else h:=0;
case h of
  0:begin
    DBGrid2.Canvas.Brush.Color:=clWindow;
    DBGrid2.Canvas.FillRect(Rect);
    DBGrid2.Canvas.Font.Color:= clBlack;
    end;
  1:begin // sin confirmar
    DBGrid2.Canvas.Brush.Color:=$00C7D8C7;
    DBGrid2.Canvas.FillRect(Rect);
    DBGrid2.Canvas.Font.Color:= clBlack;
    end;
end;
DBGrid2.DefaultDrawColumnCell(Rect,Datacol,Column,State);
end;

procedure TCambioFecPlanilla.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  if GUARDA.Enabled then GUARDA.SetFocus;
end;
end;

procedure TCambioFecPlanilla.Edit1Exit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(edit1.Text));
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  edit1.SetFocus;
end;
end;

procedure TCambioFecPlanilla.grilla2DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
if ARow = 7 then begin
  grilla2.Canvas.Brush.Color := $0079F1F4;
  grilla2.Canvas.FillRect(Rect);
  grilla2.Canvas.Font.Style:=[fsBold];
  grilla2.Canvas.Font.Size:=9;
  grilla2.Canvas.Font.Color:= clRed;
  grilla2.Canvas.TextOut(Rect.Left + 2, Rect.Top + 2, grilla2.cells[Acol,Arow]);
end;
end;

procedure TCambioFecPlanilla.Button1Click(Sender: TObject);
begin
  if modfif.Checked then begin
      PC1.ActivePage:=PC1.Pages[1];
      label7.Enabled:=false;
      edit2.Enabled:=false;
      edit1.ReadOnly:=false;
      edit1.Enabled:=true;
      edit1.SetFocus;
  end;
  if modfin.Checked then begin
      PC1.ActivePage:=PC1.Pages[1];
      label7.Enabled:=true;
      edit2.Enabled:=true;
      edit2.SetFocus;
      edit1.ReadOnly:=false;
      edit1.Enabled:=false;
  end;
groupbox1.Visible:=false;
end;

procedure TCambioFecPlanilla.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  if GUARDA.Enabled then GUARDA.SetFocus;
end
else begin
  if ( StrScan('0123456789',Key) <> nil ) or
      ( Key = Char(VK_BACK) ) then
   else Key := #0;
end;
end;

procedure TCambioFecPlanilla.Edit2Exit(Sender: TObject);
begin
if trim(Edit2.Text)='' then Edit2.Text:='00000000';
if trim(Edit2.Text)='0' then Edit2.Text:='00000000';

if trim(Edit2.Text) = '00000000' then begin
  messagedlg('ERROR!!... El N° de Planilla no puede tener el valor 0 (Cero)'
  ,mterror,[mbok],0);
  Edit2.SetFocus;
end;
end;

end.

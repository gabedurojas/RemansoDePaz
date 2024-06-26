unit Elimina_PagoPlanilla;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid, ExtCtrls,
  ComCtrls, JvgPage, Buttons, JvExButtons, JvBitBtn, ToolWin, DB,
  JvgGroupBox, Mask, JvExGrids, JvStringGrid, Unidad, DBClient,
  WSDLIntf, ClaseFunciones, StrUtils, LMDControl, LMDBaseControl,
  LMDBaseGraphicControl, LMDGraphicControl, LMDScrollText, ClasePlanillaCobranzas,
  ClaseSistemas, RpDefine, RpBase, RpSystem, ImgList,ClaseComprobantesCobrados;

type
  TElim_PagodePlanilla = class(TForm)
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
    Bevel1: TBevel;
    COBRA: TComboBox;
    Label15: TLabel;
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
    ToolButton7: TToolButton;
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
    GroupBox1: TGroupBox;
    Id: TEdit;
    Comprobante: TEdit;
    Accion: TEdit;
    Importe: TEdit;
    Label3: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Edit1: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
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
    procedure DBGrid2CellClick(Column: TColumn);
  private
    IdCombos:array of array of string;
    DataSet0,DataSet1,DtCombo:TClientDataSet;

    Funciones:TFuncionesVarias;
    PlanillaCobranzas:TPlanillaCobranzas;
    Sistemas:TSistemas;

    FechaActual:string;
    CorreccionImpr:double;
    TiposFormularios:Unidad.TablaXML;{ Private declarations }
  public
    ComprobantesCobrados:TComprobantesCobrados;
    gh:boolean;{ Public declarations }
  end;

var
  Elim_PagodePlanilla: TElim_PagodePlanilla;

implementation

uses Modulo, Busqueda, Anula_Generica;
{$R *.dfm}

procedure TElim_PagodePlanilla.FormActivate(Sender: TObject);
begin
if not(gh) then begin
  gh:=true;
  setlength(IdCombos,5);

  FechaActual:=LeftStr(Fec_System(),10);
  PC1.ActivePage:=PC1.Pages[0];

  FEC.Text:=FechaActual;
  CorreccionImpr:=0;
  grilla2.Cells[0,0]:='Orden';
  grilla2.Cells[1,0]:='DetalleComprobante';
  grilla2.Cells[2,0]:='Cantidades';
  grilla2.Cells[3,0]:='Total Importe';
  grilla2.Cells[4,0]:='Total GastoAdmin.';
  grilla2.Cells[5,0]:='';
  grilla2.Cells[6,0]:='';
  Coloca1(1);
  ODNI.SetFocus;
end;
end;

procedure TElim_PagodePlanilla.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TElim_PagodePlanilla.Coloca1(nro:byte);
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
  if not Funciones.Run_Fn_VistaComprobantesConPlanillas(NroForm,txt,NroCobrador,DataSet0,'',0) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if not DataSet0.IsEmpty then begin
    //Barra1.Panels[1].Text:='Cant. Registros: ' + inttostr(DataSet0.RecordCount);
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
  txtw:='SELECT Id,NroComprobante,DetalleComprobante,Formulario,Cobrador,Identificador as NroAccion,'
  + 'Importe,GastoAdmin,Porcentaje FROM Fn_VistaComprobantesCobrados (' + chr(39) + trim(DataSet0.Fields[4].asstring) + chr(39) + ',' + DataSet0.Fields[2].asString
  + ',null,' + DataSet0.Fields[5].asString + ',null,0) order by 2';
  if not funciones.Listar(txtw,DataSet1) then
      messagedlg('ERROR!! No existen comprobantes para la Planilla Buscada.',mtError,[mbok],0);
  funciones.Free;
   if not DataSet1.IsEmpty then begin
    Barra1.Panels[1].Text:='Cant. Registros: ' + inttostr(DataSet1.RecordCount);
    DtCombo.Free;
    DtCombo:=TClientdataSet.Create(nil);
    Funciones:=TFuncionesVarias.Create(nil);
    Funciones.ConnectionString:=modulo2.Conexion;
    txtw:='select row_number() over (order by DetalleComprobante asc) as Orden,DetalleComprobante,count(DetalleComprobante) as Cantidad,'
    + 'sum(Importe) as TotalImporte,sum(GastoAdmin) as TotalGastoAdm FROM Fn_VistaComprobantesCobrados (' + chr(39) + trim(DataSet0.Fields[4].asstring)  + chr(39) + ','
    + DataSet0.Fields[2].asString + ',null,' + DataSet0.Fields[5].asString  + ',null,0) group by DetalleComprobante';
    if not Funciones.Listar(txtw,DtCombo) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0) ;
    Funciones.Free;
    for t:=0 to grilla2.ColCount-1 do
    for y:=1 to grilla2.RowCount-1 do grilla2.Cells[t,y]:='';
      for t:=1 to DtCombo.RecordCount  do begin
        DtCombo.RecNo:=t;
        grilla2.RowCount:=t+1;
        grilla2.Cells[0,t]:=trim(DtCombo.Fields[0].AsString);
        grilla2.Cells[1,t]:=trim(DtCombo.Fields[1].AsString);
        grilla2.Cells[2,t]:=trim(DtCombo.Fields[2].AsString);
        grilla2.Cells[3,t]:=trim(DtCombo.Fields[3].AsString);
        grilla2.Cells[4,t]:=trim(DtCombo.Fields[4].AsString);
      end;
  end
  else messagedlg('ERROR!! No existen comprobantes para la Planilla Buscada.',mtError,[mbok],0);
end;
end;


procedure TElim_PagodePlanilla.JvBitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TElim_PagodePlanilla.C1Click(Sender: TObject);
begin
Label15.Visible:=true;
ODNI.Visible:=false;
FEC.Visible:=false;
COBRA.Visible:=false;
PC1.ActivePage:=PC1.Pages[0];
if C1.Checked then begin
  Label15.Caption:='Ingrese Fecha:';
  FEC.Visible:=true;
  FEC.SetFocus;
end;
if C2.Checked then begin
  Label15.Caption:='Ingrese N� Planilla:';
  ODNI.Visible:=true;
  ODNI.SetFocus;
end;
if C3.Checked then begin
  Label15.Caption:='Seleccione Cobrador:';
  COBRA.Visible:=true;
  COBRA.SetFocus;
end;
end;

procedure TElim_PagodePlanilla.BuscarClick(Sender: TObject);
begin
Coloca1(0);
end;

procedure TElim_PagodePlanilla.DBGrid1CellClick(Column: TColumn);
begin
if not DataSet0.IsEmpty then begin
  D2.Text:=DataSet0.Fields[2].AsString;
  D3.Text:=DataSet0.Fields[3].AsString;
  D4.Text:=DataSet0.Fields[0].AsString;
  D5.Text:=DataSet0.Fields[1].AsString;
  if DataSet0.Fields[6].AsString = '' then begin
    D1.Text:='00000';
    GUARDA.Enabled:=true;
  end
  else begin
    D1.Text:=DataSet0.Fields[6].AsString;
    GUARDA.Enabled:=false;
  end;
  Coloca1(2);
  PC1.ActivePage:=PC1.Pages[1];
end;
end;

procedure TElim_PagodePlanilla.DBGrid1TitleClick(Column: TColumn);
begin
DataSet0.IndexFieldNames:=Column.FieldName;
end;

procedure TElim_PagodePlanilla.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TElim_PagodePlanilla.LimpiarVentana(nro:byte);
var t,r:integer;
begin
if nro = 0 then begin
  DataSource1.DataSet:=nil;
  DataSource2.DataSet:=nil;
  C2.Checked:=true;
  PC1.ActivePage:=PC1.Pages[0];
  if c2.Checked= true then  begin
    odni.Text:=d2.Text;
    //odni.Text:='00000000';
    odni.SetFocus;
    buscar.Click;
  end
  else begin
     if c1.Checked= true then fec.SetFocus;
     if c3.Checked= true then cobra.SetFocus;
  end;
end;
if nro <= 1 then begin
  D1.Text:='00000';
  D2.Clear;
  D3.Clear;
  D4.Clear;
  D5.Clear;
  for t:=1 to 8 do begin
    if t <> 7 then begin
      grilla2.Cells[2,t]:='0';
      grilla2.Cells[3,t]:='0.00';
      grilla2.Cells[4,t]:='0.00';
      grilla2.Cells[5,t]:='0.00';
      grilla2.Cells[6,t]:='0.00';
    end;
  end;
end;

GUARDA.Enabled:=false;
end;

procedure TElim_PagodePlanilla.LimpiarClick(Sender: TObject);
begin
LimpiarVentana(0);
end;

procedure TElim_PagodePlanilla.GUARDAClick(Sender: TObject);
var bt:boolean;
begin
  ComprobantesCobrados:=TComprobantesCobrados.Create(nil);
  ComprobantesCobrados.ConnectionString:=modulo2.Conexion;
  bt:=ComprobantesCobrados.Borrar(id.Text);
  ComprobantesCobrados.Free;
      if bt then  begin
         messagedlg('Se ha Borrado el Pago con Exito',mtConfirmation,[mbok],0);
         Coloca1(2);
         id.Clear;
         comprobante.Clear;
         edit1.Clear;
         accion.Clear;
         importe.Clear;
      end
      else begin
        messagedlg('Error al Borrar el Pago Seleccionado. Consulte con un Administrador',mtError,[mbok],0);
      end;
guarda.Enabled:=false;
end;

procedure TElim_PagodePlanilla.ODNIKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  Buscar.SetFocus;
end;
end;

procedure TElim_PagodePlanilla.COBRAExit(Sender: TObject);
begin
if COBRA.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Cobrador Ingresado!!',mterror,[mbok],0);
  COBRA.SetFocus;
end;
end;

procedure TElim_PagodePlanilla.FECExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(FEC.Text));
except
  messagedlg('La Fecha Ingresada No es V�lida',mterror,[mbok],0);
  FEC.SetFocus;
end;
end;

procedure TElim_PagodePlanilla.DBGrid2CellClick(Column: TColumn);
var gf:integer;
begin
if trim(DataSet0.Fields[8].Text) <> '' then begin
   messagedlg('ATENCION!! NO se podran eliminar pagos, porque la Planilla '+ trim(d2.Text) + chr(13)
   +'Se Encuentra CONFIRAMDA...',mterror,[mbok],0);
end
else begin

    if not DataSet1.IsEmpty then begin
    gf:=messagedlg('Desea Borrar este PAGO la Planilla de Pagos Nro: ' + trim(d2.Text) + chr(13)
        + 'ATENCION!! El proceso har� que impacten los Pagos',mtWarning,[mbok,mbCancel],0);
        if gf = 1 then begin
          id.Text:=DataSet1.Fields[0].AsString;
          comprobante.Text:=DataSet1.Fields[1].AsString;
          accion.Text:=DataSet1.Fields[5].AsString;
          importe.Text:=DataSet1.Fields[6].AsString;
          comprobante.Text:=DataSet1.Fields[2].AsString;
          guarda.Enabled:=true;
          guarda.SetFocus;
        end;
    end;
end;
end;

end.

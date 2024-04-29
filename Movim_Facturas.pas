unit Movim_Facturas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExButtons, JvBitBtn, StdCtrls, Buttons, ComCtrls, ToolWin,
  Grids, DBGrids, ExtCtrls, Mask, JvgGroupBox, DBCtrls, Unidad, DBClient,
  WSDLIntf, ClaseFunciones, StrUtils, DB, ClaseSistemas, ImgList, LMDCustomButton, LMDButton, JvSimLogic,
  ADODB,JvExGrids, JvStringGrid, RpDefine, RpBase, RpSystem, TeEngine,
  TeeTools, TeeLegendScrollBar, Series, ErrorBar, TeeProcs, Chart;

type LosEdit = class(TEdit);
type HackTable = class(TADOTable);
type
  TMov_Facturas = class(TForm)
    Barra1: TStatusBar;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    JvBitBtn1: TJvBitBtn;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    Label15: TLabel;
    Bevel1: TBevel;
    C1: TRadioButton;
    C2: TRadioButton;
    C0: TRadioButton;
    Buscar: TJvBitBtn;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    C3: TRadioButton;
    ImageList1: TImageList;
    anio: TComboBox;
    mes: TComboBox;
    print: TButton;
    RvS: TRvSystem;
    T8: TClientDataSet;
    Image1: TImage;
    DataSource2: TDataSource;
    GroupBox4: TGroupBox;
    Shape2: TShape;
    Label14: TLabel;
    Shape3: TShape;
    Label12: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    exporta: TButton;
    RE5: TRichEdit;
    PC2: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DataSource3: TDataSource;
    TabSheet4: TTabSheet;
    Grafico2: TChart;
    ChartTool1: TLegendScrollBar;
    ChartTool2: TDragMarksTool;
    BarSeries1: TErrorBarSeries;
    Grilla1: TStringGrid;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure BuscarClick(Sender: TObject);
    procedure anioExit(Sender: TObject);
    procedure anioKeyPress(Sender: TObject; var Key: Char);
    procedure mesKeyPress(Sender: TObject; var Key: Char);
    procedure mesExit(Sender: TObject);
    procedure printClick(Sender: TObject);
    procedure RvSPrint(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure exportaClick(Sender: TObject);
  private
    IdCombos:array of array of string;
    IdPagos:array of array of string;
    PosSelec,PosPv:integer;
    sumapos,sumaimp,sumatot:double;
    DataSet0,DataSet1,DtCombo,DtComboAnul,DataSet2,DtComboAgrup:TClientDataSet;
    Funciones:TFuncionesVarias;
    Sistemas:TSistemas;
    habventana:boolean;
    FechaActual,MotAnula,FecAnula,elbanco,elcheque,bank,letracheque,cheque,elmes,elanio:string;
    TiposFormularios,TiposObjetos,TiposComprobantes:Unidad.TablaXML;{ Private declarations }
  public
    gh:boolean;{ Public declarations }
    PosH:Array [0..9] of Double;//Posiciones
    Camp:Array [0..9] of Integer;//Campos a Tomar en cuenta
    TxtCamp:Array [0..9] of String;//Textos de los Campos a Tomar en cuenta
  end;

var
  Mov_Facturas: TMov_Facturas;

implementation

uses Modulo, Busqueda, Anula_Generica,AM_TalonCobro,DatosCheque,SelecPagos;

{$R *.dfm}

procedure TMov_Facturas.FormActivate(Sender: TObject);
begin
if not(gh) then begin
  gh:=true;
  setlength(IdCombos,5);
  PosPv:=0;
    grafico2.Series[0].Clear;
  FechaActual:=LeftStr(Fec_System(),10);
  PC1.ActivePage:=PC1.Pages[0];
  PC2.ActivePage:=PC2.Pages[0];
  ElMes:=strcut_midle(FechaActual,4,5);
  ElAnio:=RightStr(FechaActual,4);
  print.Enabled:=false;
  exporta.Enabled:=false;
  anio.SetFocus;
  Coloca1(0);
end;
end;

procedure TMov_Facturas.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TMov_Facturas.Coloca1(nro:byte);
var t,ta,tn,x,a:integer;
    NroDni,ValNull,SubCob:variant;
    txt,txt1,NroCompr,anulados:string;
    txtw:widestring;
    tot:real;
begin
  ta:=0;
  tn:=0;
if nro=0 then begin //Combo Formularios
  anio.Clear;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT DISTINCT LEFT(Periodo, 4) AS Expr1 FROM PeriodosVencimientos WHERE (Periodo <= ' + ElAnio + elMES + ') ORDER BY Expr1 DESC';
  if not Funciones.Listar(txtw,DtCombo) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
    for t:=1 to DtCombo.RecordCount  do begin
      DtCombo.RecNo:=t;
      anio.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
    end;
  end;
  Funciones.Free;
  anio.ItemIndex:=0;
end;
if nro = 1 then begin
  DataSet1.Free;
  DataSet1:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if C1.Checked then begin
   txtw:='(YEAR(dbo.ComprobantesCobrados.FechaPlanilla) = '+ trim(anio.Text)+') AND (MONTH(dbo.ComprobantesCobrados.FechaPlanilla) = '+ trim(mes.Text)+') '
   + 'AND (dbo.ComprobantesCobrados.IdTipoComprobante = 6) AND (dbo.ComprobantesCobrados.Anulado=0) AND (dbo.VLosCobradores.Tipo = ''cobrador'') ';
  end;
  if C2.Checked then begin
   txtw:='(YEAR(dbo.ComprobantesCobrados.FechaPlanilla) = '+ trim(anio.Text)+') AND (MONTH(dbo.ComprobantesCobrados.FechaPlanilla) = '+ trim(mes.Text)+') '
   + 'AND (dbo.ComprobantesCobrados.IdTipoComprobante = 7) AND (dbo.ComprobantesCobrados.Anulado=0) AND (dbo.VLosCobradores.Tipo = ''cobrador'') ';
  end;
  if C3.Checked then begin
   txtw:='(YEAR(dbo.ComprobantesCobrados.FechaPlanilla) = '+ trim(anio.Text)+') AND (MONTH(dbo.ComprobantesCobrados.FechaPlanilla) = '+ trim(mes.Text)+') '
   + 'AND (dbo.ComprobantesCobrados.IdTipoComprobante = 5) AND (dbo.ComprobantesCobrados.Anulado=0) AND (dbo.VLosCobradores.Tipo = ''cobrador'') ';
  end;
  if C0.Checked then begin
   txtw:='(YEAR(dbo.ComprobantesCobrados.FechaPlanilla) = '+ trim(anio.Text)+') AND (MONTH(dbo.ComprobantesCobrados.FechaPlanilla) = '+ trim(mes.Text)+') '
   + 'AND  (dbo.ComprobantesCobrados.Anulado=1) AND (dbo.VLosCobradores.Tipo = ''cobrador'') ';
  end;
  txtw:='SELECT count(*) FROM dbo.ComprobantesCobrados INNER JOIN'
  + ' dbo.TiposComprobantes ON dbo.ComprobantesCobrados.IdTipoComprobante = dbo.TiposComprobantes.IDTipoComprobante INNER JOIN '
  + ' dbo.TiposFormularios ON dbo.ComprobantesCobrados.NroFormulario = dbo.TiposFormularios.NroFormulario INNER JOIN '
  + ' dbo.VLosCobradores ON dbo.ComprobantesCobrados.CuifCobrador = dbo.VLosCobradores.Cuif WHERE ' + txtw + ' order by 1';
  if not  Funciones.Listar(txtw,DataSet1) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if not DataSet1.IsEmpty then begin
    if c0.Checked then label2.Caption:='...'
      else label2.Caption:=DataSet1.Fields[0].AsString;
  end;
end;
if nro = 2 then begin
  DataSet2.Free;
  DataSet2:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if C1.Checked then begin
   txtw:='(YEAR(dbo.ComprobantesCobrados.FechaPlanilla) = '+ trim(anio.Text)+') AND (MONTH(dbo.ComprobantesCobrados.FechaPlanilla) = '+ trim(mes.Text)+') '
   + 'AND (dbo.ComprobantesCobrados.IdTipoComprobante = 6) AND (dbo.ComprobantesCobrados.Anulado=1) AND (dbo.VLosCobradores.Tipo = ''cobrador'') ';
  end;
  if C2.Checked then begin
   txtw:='(YEAR(dbo.ComprobantesCobrados.FechaPlanilla) = '+ trim(anio.Text)+') AND (MONTH(dbo.ComprobantesCobrados.FechaPlanilla) = '+ trim(mes.Text)+') '
   + 'AND (dbo.ComprobantesCobrados.IdTipoComprobante = 7) AND (dbo.ComprobantesCobrados.Anulado=1) AND (dbo.VLosCobradores.Tipo = ''cobrador'') ';
  end;
  if C3.Checked then begin
   txtw:='(YEAR(dbo.ComprobantesCobrados.FechaPlanilla) = '+ trim(anio.Text)+') AND (MONTH(dbo.ComprobantesCobrados.FechaPlanilla) = '+ trim(mes.Text)+') '
   + 'AND (dbo.ComprobantesCobrados.IdTipoComprobante = 5) AND (dbo.ComprobantesCobrados.Anulado=1) AND (dbo.VLosCobradores.Tipo = ''cobrador'') ';
  end;
  if C0.Checked then begin
   txtw:='(YEAR(dbo.ComprobantesCobrados.FechaPlanilla) = '+ trim(anio.Text)+') AND (MONTH(dbo.ComprobantesCobrados.FechaPlanilla) = '+ trim(mes.Text)+') '
   + 'AND  (dbo.ComprobantesCobrados.Anulado=1) AND (dbo.VLosCobradores.Tipo = ''cobrador'') ';
  end;
  txtw:='SELECT count(*) FROM dbo.ComprobantesCobrados INNER JOIN'
  + ' dbo.TiposComprobantes ON dbo.ComprobantesCobrados.IdTipoComprobante = dbo.TiposComprobantes.IDTipoComprobante INNER JOIN '
  + ' dbo.TiposFormularios ON dbo.ComprobantesCobrados.NroFormulario = dbo.TiposFormularios.NroFormulario INNER JOIN '
  + ' dbo.VLosCobradores ON dbo.ComprobantesCobrados.CuifCobrador = dbo.VLosCobradores.Cuif WHERE ' + txtw + ' order by 1';
  if not  Funciones.Listar(txtw,DataSet2) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if not DataSet2.IsEmpty then begin
    label1.Caption:=DataSet2.Fields[0].AsString;
  end;
end;
if nro=5 then begin //Datos de las facturas acumuladas
  grafico2.Series[0].Clear;
  grafico2.BottomAxis.Maximum:=7;
  grafico2.BottomAxis.Minimum:=0;
  grafico2.Title.Text.Clear;
  grafico2.BottomAxis.Title.Font.Size:=14;
  grafico2.BottomAxis.Title.Caption:='Cobradores';
  grafico2.LeftAxis.Title.Font.Size:=14;
  grafico2.LeftAxis.Title.Caption:='Cantidades';
  grafico2.Title.Font.Size:=14;
  //grafico2.Title.Text.Add('Cantidad de Comprobamtes');

  DtComboAgrup.Free;
  DtComboAgrup:=TClientdataSet.Create(nil);
  DataSource2.DataSet:=DtComboAgrup;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if C1.Checked then begin
   grafico2.Title.Text.Add('Cantidad de Comprobantes Tipo: FACTURA A' );
   txtw:='SELECT row_number() over (order by Cobrador asc) as Orden,Cobrador,Totalfacturas FROM Fn_FacturasAgrupadas (1 ,'
   +trim(anio.Text)+ ',' + trim(mes.Text) +')';
    //txtw:='(YEAR(dbo.ComprobantesCobrados.FechaPlanilla) = '+ trim(anio.Text)+') AND (MONTH(dbo.ComprobantesCobrados.FechaPlanilla) = '+ trim(mes.Text)+') '
    //+ 'AND (dbo.ComprobantesCobrados.IdTipoComprobante = 6) AND (dbo.VLosCobradores.Tipo = ''cobrador'') ';
  end;
  if C2.Checked then begin
   grafico2.Title.Text.Add('Cantidad de Comprobantes Tipo: FACTURA B' );
   txtw:='SELECT row_number() over (order by Cobrador asc) as Orden,Cobrador,Totalfacturas FROM Fn_FacturasAgrupadas (2 ,'
   +trim(anio.Text)+ ',' + trim(mes.Text) +')';
    //txtw:='(YEAR(dbo.ComprobantesCobrados.FechaPlanilla) = '+ trim(anio.Text)+') AND (MONTH(dbo.ComprobantesCobrados.FechaPlanilla) = '+ trim(mes.Text)+') '
    //+ 'AND (dbo.ComprobantesCobrados.IdTipoComprobante = 7) AND (dbo.VLosCobradores.Tipo = ''cobrador'') ';
  end;
  if C3.Checked then begin
   grafico2.Title.Text.Add('Cantidad de Comprobantes Tipo: RECIBO' );
   txtw:='SELECT row_number() over (order by Cobrador asc) as Orden,Cobrador,Totalfacturas FROM Fn_FacturasAgrupadas (3 ,'
   +trim(anio.Text)+ ',' + trim(mes.Text) +')';
    //txtw:='(YEAR(dbo.ComprobantesCobrados.FechaPlanilla) = '+ trim(anio.Text)+') AND (MONTH(dbo.ComprobantesCobrados.FechaPlanilla) = '+ trim(mes.Text)+') '
    //+ 'AND (dbo.ComprobantesCobrados.IdTipoComprobante = 5) AND (dbo.VLosCobradores.Tipo = ''cobrador'') ';
  end;
  if C0.Checked then begin
   grafico2.Title.Text.Add('Cantidad de Comprobantes ANULADOS' );
   txtw:='SELECT row_number() over (order by Cobrador asc) as Orden,Cobrador,Totalfacturas FROM Fn_FacturasAgrupadas (4 ,'
   +trim(anio.Text)+ ',' + trim(mes.Text) +')';
    //txtw:='(YEAR(dbo.ComprobantesCobrados.FechaPlanilla) = '+ trim(anio.Text)+') AND (MONTH(dbo.ComprobantesCobrados.FechaPlanilla) = '+ trim(mes.Text)+') '
    //+ 'AND (dbo.ComprobantesCobrados.Anulado=1) AND (dbo.VLosCobradores.Tipo = ''cobrador'') ';
  end;
  {txtw:='select a.Cobrador,COUNT(a.NroComprobante) as TotalFacturas from (SELECT TOP (100) PERCENT dbo.VLosCobradores.Nombre AS Cobrador,'
    + ' dbo.ComprobantesCobrados.NroPlanilla,dbo.ComprobantesCobrados.NroComprobante,dbo.ComprobantesCobrados.FechaPlanilla,'
    + ' dbo.ComprobantesCobrados.CuifCobrador,dbo.TiposComprobantes.DetalleComprobante,dbo.TiposFormularios.Detalle, '
    + ' case when dbo.ComprobantesCobrados.Anulado=0 then ''NO'' else ''SI'' end as Anulado FROM dbo.ComprobantesCobrados INNER JOIN '
    + ' dbo.TiposComprobantes ON dbo.ComprobantesCobrados.IdTipoComprobante = dbo.TiposComprobantes.IDTipoComprobante INNER JOIN '
    + ' dbo.TiposFormularios ON dbo.ComprobantesCobrados.NroFormulario = dbo.TiposFormularios.NroFormulario INNER JOIN '
    + ' dbo.VLosCobradores ON dbo.ComprobantesCobrados.CuifCobrador = dbo.VLosCobradores.Cuif'
    + ' WHERE ' + txtw + ' ORDER BY Cobrador)a  group by a.Cobrador ';}
   if not Funciones.Listar(txtw,DtComboAgrup) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',
       mtError,[mbok],0)
   else begin
    dbgrid1.Columns[0].Width:=60;
    dbgrid1.Columns[1].Width:=350;
    dbgrid1.Columns[2].Width:=100;
    //cargamos la grilla para el grafico
    if DtComboAgrup.RecordCount > 0 then begin
     for a:=1 to DtComboAgrup.RecordCount do begin
      DtComboAgrup.RecNo:=a;
      grilla1.RowCount:=a+1;
      grilla1.Cells[0,a]:=trim(DtComboAgrup.Fields[0].asstring);
      grilla1.Cells[1,a]:=trim(DtComboAgrup.Fields[1].AsString);
      grilla1.Cells[2,a]:=trim(DtComboAgrup.Fields[2].AsString);
      grafico2.Series[0].Add(DtComboAgrup.Fields[2].AsFloat,inttostr(a),536870912);
     end;
    end;
  end;
end;
if nro = 6 then begin //detalle de  todas las facturas
  DataSet0.Free;
  DataSet0:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=DataSet0;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if C1.Checked then begin
   txtw:='(YEAR(dbo.ComprobantesCobrados.FechaPlanilla) = '+ trim(anio.Text)+') AND (MONTH(dbo.ComprobantesCobrados.FechaPlanilla) = '+ trim(mes.Text)+') '
   + 'AND (dbo.ComprobantesCobrados.IdTipoComprobante = 6) AND (dbo.VLosCobradores.Tipo = ''cobrador'') ';
  end;
  if C2.Checked then begin
   txtw:='(YEAR(dbo.ComprobantesCobrados.FechaPlanilla) = '+ trim(anio.Text)+') AND (MONTH(dbo.ComprobantesCobrados.FechaPlanilla) = '+ trim(mes.Text)+') '
   + 'AND (dbo.ComprobantesCobrados.IdTipoComprobante = 7) AND (dbo.VLosCobradores.Tipo = ''cobrador'') ';
  end;
  if C3.Checked then begin
   txtw:='(YEAR(dbo.ComprobantesCobrados.FechaPlanilla) = '+ trim(anio.Text)+') AND (MONTH(dbo.ComprobantesCobrados.FechaPlanilla) = '+ trim(mes.Text)+') '
   + 'AND (dbo.ComprobantesCobrados.IdTipoComprobante = 5) AND (dbo.VLosCobradores.Tipo = ''cobrador'') ';
  end;
  if C0.Checked then begin
   txtw:='(YEAR(dbo.ComprobantesCobrados.FechaPlanilla) = '+ trim(anio.Text)+') AND (MONTH(dbo.ComprobantesCobrados.FechaPlanilla) = '+ trim(mes.Text)+') '
   + 'AND (dbo.ComprobantesCobrados.Anulado=1) AND (dbo.VLosCobradores.Tipo =''cobrador'') ';
  end;
  txtw:='SELECT row_number() over (order by NroPlanilla asc) as Orden,dbo.VLosCobradores.Nombre AS Cobrador,dbo.ComprobantesCobrados.NroPlanilla,dbo.ComprobantesCobrados.FechaPlanilla,'
  + ' LEFT(dbo.ComprobantesCobrados.NroComprobante,3) AS PuntoVenta,RIGHT(dbo.ComprobantesCobrados.NroComprobante,7) AS NroComprobante,'
  + ' dbo.ComprobantesCobrados.Importe, dbo.ComprobantesCobrados.GastoAdmin,dbo.ComprobantesCobrados.Porcentaje,dbo.TiposFormularios.Detalle,'
  + ' case when dbo.ComprobantesCobrados.NroFormulario=''FRM-17-01'' then  ''COBRANZA'' else ''PARCELAS'' end as Detalle,'
  + ' dbo.TiposComprobantes.DetalleComprobante, case when dbo.ComprobantesCobrados.Anulado=0 then ''NO'' else ''SI'' end as Anulado,'
  + ' dbo.ComprobantesCobrados.NroFormulario,dbo.TiposObjetos.Detalle'
  + ' FROM dbo.ComprobantesCobrados left JOIN '
  + ' dbo.TiposObjetos ON dbo.ComprobantesCobrados.NroTipoObjeto = dbo.TiposObjetos.nrotipo inner JOIN '
  + ' dbo.TiposComprobantes ON dbo.ComprobantesCobrados.IdTipoComprobante = dbo.TiposComprobantes.IDTipoComprobante INNER JOIN '
  + ' dbo.TiposFormularios ON dbo.ComprobantesCobrados.NroFormulario = dbo.TiposFormularios.NroFormulario INNER JOIN '
  + ' dbo.VLosCobradores ON dbo.ComprobantesCobrados.CuifCobrador = dbo.VLosCobradores.Cuif WHERE ' + txtw + ' order by 1,2,3';

  if not  Funciones.Listar(txtw,DataSet0) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if not DataSet0.IsEmpty then begin
    Barra1.Panels[1].Text:='Cant. Reg.: ' + IntToStr(DataSet0.RecordCount);
    print.Enabled:=true;
    exporta.Enabled:=true;
    dbgrid2.Columns[0].Width:=60;
    dbgrid2.Columns[1].Width:=200;
    dbgrid2.Columns[2].Width:=95;
    dbgrid2.Columns[3].Width:=85;
    dbgrid2.Columns[4].Width:=65;
    dbgrid2.Columns[5].Width:=65;
    dbgrid2.Columns[6].Width:=65;
    try
     dbgrid2.datasource.dataset.disablecontrols;
     dbgrid2.datasource.dataset.first;
     while not dbgrid2.datasource.dataset.eof do
     begin
      sumapos := sumapos + dbgrid2.datasource.dataset.fieldbyname('Importe').asfloat;
      sumaimp := sumaimp + dbgrid2.datasource.dataset.fieldbyname('GastoAdmin').asfloat;
       //sumatot := sumatot + dbgrid1.datasource.dataset.fieldbyname('TotalEfectivo').asfloat;
      dbgrid2.datasource.dataset.next;
     end;
    finally
      dbgrid2.datasource.dataset.enablecontrols;
    end;
  end
  else begin
   IF application.MessageBox('PLANILLA SIN COMPROBANTES ASIGNADOS, !Desea Cargar los Comprobnates!?','Advertencia'
            ,mb_OKcancel+mb_IconHAnd) = IdOk then begin
    print.Enabled:=false;
    exporta.Enabled:=false;
   end;
  end;
end;
if nro= 7 then begin
  DtComboAnul.Free;
  DtComboAnul:=TClientdataSet.Create(nil);
  DataSource3.DataSet:=DtComboAnul;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if C1.Checked then begin
   txtw:='(YEAR(dbo.ComprobantesCobrados.FechaPlanilla) = '+ trim(anio.Text)+') AND (MONTH(dbo.ComprobantesCobrados.FechaPlanilla) = '+ trim(mes.Text)+') '
   + 'AND(dbo.ComprobantesCobrados.Anulado=1) AND (dbo.ComprobantesCobrados.IdTipoComprobante = 6) AND (dbo.VLosCobradores.Tipo = ''cobrador'') ';
  end;
  if C2.Checked then begin
   txtw:='(YEAR(dbo.ComprobantesCobrados.FechaPlanilla) = '+ trim(anio.Text)+') AND (MONTH(dbo.ComprobantesCobrados.FechaPlanilla) = '+ trim(mes.Text)+') '
   + 'AND (dbo.ComprobantesCobrados.Anulado=1) AND (dbo.ComprobantesCobrados.IdTipoComprobante = 7) AND (dbo.VLosCobradores.Tipo = ''cobrador'') ';
  end;
  if C3.Checked then begin
   txtw:='(YEAR(dbo.ComprobantesCobrados.FechaPlanilla) = '+ trim(anio.Text)+') AND (MONTH(dbo.ComprobantesCobrados.FechaPlanilla) = '+ trim(mes.Text)+') '
   + 'AND (dbo.ComprobantesCobrados.Anulado=1) AND (dbo.ComprobantesCobrados.IdTipoComprobante = 5) AND (dbo.VLosCobradores.Tipo = ''cobrador'') ';
  end;
  if C0.Checked then begin
   txtw:='(YEAR(dbo.ComprobantesCobrados.FechaPlanilla) = '+ trim(anio.Text)+') AND (MONTH(dbo.ComprobantesCobrados.FechaPlanilla) = '+ trim(mes.Text)+') '
   + 'AND (dbo.ComprobantesCobrados.Anulado=1) AND (dbo.VLosCobradores.Tipo =''cobrador'') ';
  end;
  txtw:='SELECT row_number() over (order by NroPlanilla asc) as Orden,dbo.VLosCobradores.Nombre AS Cobrador, dbo.ComprobantesCobrados.NroPlanilla,dbo.ComprobantesCobrados.FechaPlanilla,'
  + ' LEFT(dbo.ComprobantesCobrados.NroComprobante,3) AS PuntoVenta,RIGHT(dbo.ComprobantesCobrados.NroComprobante,7) AS NroComprobante,'
  + ' dbo.ComprobantesCobrados.Importe,dbo.ComprobantesCobrados.GastoAdmin,'
  + ' dbo.ComprobantesCobrados.Porcentaje,dbo.TiposFormularios.Detalle,'
  + ' dbo.TiposComprobantes.DetalleComprobante,case when dbo.ComprobantesCobrados.Anulado=0 then ''NO'' else ''SI'' end as Anulado '
  + ' FROM dbo.ComprobantesCobrados INNER JOIN'
  + ' dbo.TiposComprobantes ON dbo.ComprobantesCobrados.IdTipoComprobante = dbo.TiposComprobantes.IDTipoComprobante INNER JOIN '
  + ' dbo.TiposFormularios ON dbo.ComprobantesCobrados.NroFormulario = dbo.TiposFormularios.NroFormulario INNER JOIN '
  + ' dbo.VLosCobradores ON dbo.ComprobantesCobrados.CuifCobrador = dbo.VLosCobradores.Cuif WHERE ' + txtw + ' order by 1,3,2';
  if not  Funciones.Listar(txtw,DtComboAnul) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if not DtComboAnul.IsEmpty then begin
    exporta.Enabled:=true;
    dbgrid3.Columns[0].Width:=50;
    dbgrid3.Columns[1].Width:=200;
    dbgrid3.Columns[2].Width:=80;
    dbgrid3.Columns[3].Width:=80;
    dbgrid3.Columns[4].Width:=60;
    dbgrid3.Columns[5].Width:=60;
    dbgrid3.Columns[6].Width:=60;
  end
  else begin
    //    IF application.MessageBox('PLANILLA SIN COMPROBANTES ASIGNADOS, !Desea Cargar los Comprobnates!?','Advertencia'
    //            ,mb_OKcancel+mb_IconHAnd) = IdOk then begin
    //      print.Enabled:=false;
    //      exporta.Enabled:=false;
    //    end;
  end;
end;
end;

procedure TMov_Facturas.JvBitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TMov_Facturas.C1Click(Sender: TObject);
begin
Label15.Visible:=true;
anio.SetFocus;
end;

procedure TMov_Facturas.BuscarClick(Sender: TObject);
begin
Coloca1(5);
Coloca1(6);
Coloca1(7);
Coloca1(1);
Coloca1(2);
end;

procedure TMov_Facturas.anioExit(Sender: TObject);
begin
if anio.ItemIndex < 0 then begin
  messagedlg('ERROR!! Año fuera de Rango!!',mterror,[mbok],0);
  anio.SetFocus;
end;
end;

procedure TMov_Facturas.anioKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  mes.SetFocus;
end;
end;

procedure TMov_Facturas.mesKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  Buscar.SetFocus;
end;
end;

procedure TMov_Facturas.mesExit(Sender: TObject);
begin
if mes.ItemIndex < 0 then begin
  messagedlg('ERROR!! Mes fuera de Rango!!',mterror,[mbok],0);
  mes.SetFocus;
end;
end;

procedure TMov_Facturas.printClick(Sender: TObject);
begin
rvs.Execute;
end;

procedure TMov_Facturas.RvSPrint(Sender: TObject);
var posfx,posfy,final,salto:double;
var t,y,hoja,nro:integer;
var txt:string;
var pso:boolean;

 Function Logo(posx,posy:double;vaf:integer):double;
   var Imagen1,MarcaAgua:TBitMap;
       PathLogo,PathLogo1:string;
   begin
   with RvS do begin
     //Pegamos el Logo en el reporte
     Imagen1 := TBitMap.Create;
     PathLogo:=modulo2.path_todo + '\Imagenes\' + modulo2.INI1.ReadString('Resumen Caja','Imagen1','');
     if FileExists(PathLogo) then begin
       Image1.Picture.LoadFromFile(PathLogo);
       Imagen1.Assign(Image1.Picture.Graphic);
       BaseReport.PrintBitmapRect(posx+6,posy+2,posx+30,posy+22,Imagen1);
     end;
     Imagen1.Free;

     {Colocamos el título}
     BaseReport.Rectangle(posx+2,posy+1,posx+200,posy+23);
     BaseReport.SetFont('Arial Black',9);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+34,posy+5,'CARMELO MONTE S.A. Servicios & Mandatos');
     BaseReport.SetFont('Arial Black',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+34,posy+9,modulo2.INI1.ReadString('Resumen Planillas','Titulo2',''));
     BaseReport.SetFont('Arial',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+149,posy+22,'Pág.: ' + inttostr(vaf));
     BaseReport.PrintXY(posx+160,posy+22,'Usu Imp.: ' + inttostr(modulo2.nro_usu) + ' - Fec. Imp.:' + strcut(Fec_System(),10));
     BaseReport.SetFont('Arial',10);
     BaseReport.FontColor:=clBlack;
     Rvs.BaseReport.SetFont('Arial Black',9);
     Rvs.BaseReport.FontColor:=clBlack;
     if c1.Checked then Rvs.BaseReport.PrintXY(posfx+34,posfy+17,'LISTA DE COMPROBANTES "FACTURA A"  -  Periodo: ' + trim(anio.Text)+ trim(mes.Text));
     if c2.Checked then Rvs.BaseReport.PrintXY(posfx+34,posfy+17,'LISTA DE COMPROBANTES "FACTURA B"  -  Periodo: '+ trim(anio.Text)+ trim(mes.Text));
     if c3.Checked then Rvs.BaseReport.PrintXY(posfx+34,posfy+17,'LISTA DE COMPROBANTES "RECIBOS"  -  Periodo: '+ trim(anio.Text)+ trim(mes.Text));
     if c0.Checked then Rvs.BaseReport.PrintXY(posfx+34,posfy+17,'LISTA DE COMPROBANTES "ANULADOS" -  Periodo: '+ trim(anio.Text)+ trim(mes.Text));
     Rvs.BaseReport.PrintXY(posfx+2,posfy+27,'CANT. COMPROBANTES CARGADOS : '+ TRIM(LABEL2.Caption)
         + '                                  CANT. COMPROBANTES ANULADOS : '+ TRIM(LABEL1.Caption));
     Logo:=posy+25;
   end;
   end;

  Function GrillaCabecera(posx,posy:double;texto:string):double;
  var t:integer;
  begin
     with RvS do begin
      BaseReport.Rectangle(posx+2,posy,posx+200,posy+5);
      for t:=1 to length(Camp)-1 do begin
      BaseReport.Rectangle(posx + PosH[t]-2,posy,posx + PosH[t]-2,posy+5);
      end;
     end;
      Rvs.BaseReport.SetFont('Arial Black',6);
      Rvs.BaseReport.FontColor:=clBlack;
      for t:=0 to length(Camp)-1 do begin
        Rvs.BaseReport.PrintXY(posx + PosH[t],posy+4,TxtCamp[t]);
     end;
  Result:=posy+5;
  end;

  /// Grilla Detalle
  Function GrillaDetalle(posx,posy:double;texto:string):double;
  var t:integer;
  begin
  Rvs.BaseReport.SetFont('Arial',7);
  Rvs.BaseReport.FontColor:=clBlack;
    for t:=0 to length(Camp)-1 do
     Rvs.BaseReport.PrintXY(posx + PosH[t],posy+4,HackTable(FindComponent(texto)).Fields[Camp[t]].AsString);
    Result:=posy+4;
  end;

  //// Grilla Recuadro
  Function GrillaRecuadro(posx,posy,posy2:double):double;
  var t:integer;
  begin
  with RvS do begin
    BaseReport.Rectangle(posx+2,posy,posx+200,posy2);
    for t:=1 to length(Camp)-1 do begin
      BaseReport.Rectangle(posx + PosH[t]-2,posy,posx + PosH[t]-2,posy2);
    end;
  Result:=posy+4;
  end;
  end;

begin
try
  posfx:=1.5;posfy:=2;
  salto:=4;final:=0;hoja:=1;
  posfy:=Logo(posfx,posfy,hoja);
  { SELECT row_number() over (order by NroPlanilla asc) as Orden,0
  dbo.VLosCobradores.Nombre AS Cobrador,   1
  dbo.ComprobantesCobrados.NroPlanilla,     2
  dbo.ComprobantesCobrados.FechaPlanilla,'    3
  + ' LEFT(dbo.ComprobantesCobrados.NroComprobante,3) AS PuntoVenta,    4
  RIGHT(dbo.ComprobantesCobrados.NroComprobante,7) AS NroComprobante,'  5
  + ' dbo.ComprobantesCobrados.Importe,       6
  dbo.ComprobantesCobrados.GastoAdmin,      7
  dbo.ComprobantesCobrados.Porcentaje,    8
  dbo.TiposFormularios.Detalle,'   9
  + ' case when dbo.ComprobantesCobrados.NroFormulario=''FRM-17-01'' then ''COBRANZA'' else ''PARCELAS'' end as Detalle,'  10
  + ' dbo.TiposComprobantes.DetalleComprobante,    11
  case when dbo.ComprobantesCobrados.Anulado=0 then ''NO'' else ''SI'' end as  Anulado,'   12
  + ' dbo.ComprobantesCobrados.NroFormulario,  13
  dbo.TiposObjetos.Detalle' 13}
  Camp[0]:=0; Camp[1]:=2; Camp[2]:=3;  Camp[3]:=4;
  Camp[4]:=5; Camp[5]:=6; Camp[6]:=7; Camp[7]:=10;  Camp[8]:=12; Camp[9]:=14;

  TxtCamp[0]:='Orden';  TxtCamp[1]:='N°Planilla'; TxtCamp[2]:='FechaPlanilla';  TxtCamp[3]:='PuntoVenta';
  TxtCamp[4]:='N°Comprobante';   TxtCamp[5]:='Importe';    TxtCamp[6]:='GastoAdmin'; TxtCamp[7]:='DetallePlanilla';
  TxtCamp[8]:='Anulado';   TxtCamp[9]:='Movim.';

  PosH[0]:=3;   PosH[1]:=20;  PosH[2]:=35;  PosH[3]:=61;
  PosH[4]:=79;  PosH[5]:=100;  PosH[6]:=115; PosH[7]:=135;
  PosH[8]:=190;
  PosH[9]:=155;

  T8.Close;
  T8.CloneCursor(DataSet0,false,true);
  txt:='T8';
  final:=GrillaCabecera(posfx,posfy+5,txt);
  posfy:=final;
  pso:=false;

      for y:=1 to HackTable(findcomponent(txt)).RecordCount do begin
        HackTable(FindComponent(txt)).RecNo:=y;
        if pso then Rvs.BaseReport.Rectangle(posfx+2,posfy+1,posfx+200,posfy+1)
        else pso:=true;
        posfy:=GrillaDetalle(posfx,posfy,txt);
        if posfy > 260 then begin
          posfy:=GrillaRecuadro(posfx,final,posfy+2);
          posfx:=1.5;
          posfy:=2;
          hoja:=hoja+1;
          RvS.BaseReport.NewPage;
          posfy:=Logo(posfx,posfy,hoja);  // llamamos al encabezado
          final:=GrillaCabecera(posfx,posfy+5,txt);
          posfy:=final;pso:=false;
        end;
      end;
            Rvs.BaseReport.SetFont('Arial Black',9);
            Rvs.BaseReport.FontColor:=clBlack;
            Rvs.BaseReport.PrintXY(posfx+120,posfy+8,'Total Importe :  $'+ floattostr(sumapos));
            Rvs.BaseReport.PrintXY(posfx+120,posfy+13,'Total GastoAdmin :    $'+ floattostr(sumaimp));
            //Rvs.BaseReport.PrintXY(posfx+140,posfy+18,'Total Efectivo:   $'+ floattostr(sumatot));

      if pso then posfy:=GrillaRecuadro(posfx,final,posfy+2);
  except
end;
end;

procedure TMov_Facturas.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var h:byte;
begin
h:=0;
if trim(DataSet0.Fields[12].Text) = 'SI' then h:=1;
case h of
  0:begin
    DBGrid2.Canvas.Brush.Color:=clWindow;
    DBGrid2.Canvas.FillRect(Rect);
    DBGrid2.Canvas.Font.Color:= clBlack;
    end;
  1:begin // anulados
    DBGrid2.Canvas.Brush.Color:=clLime;
    DBGrid2.Canvas.FillRect(Rect);
    DBGrid2.Canvas.Font.Color:= clBlack;
    end;
end;
DBGrid2.DefaultDrawColumnCell(Rect,Datacol,Column,State);
end;

procedure TMov_Facturas.exportaClick(Sender: TObject);
var texto:widestring;
var txt:string;
var t,y:integer;
begin
RE5.Clear;
texto:='';
RE5.Lines.Add('Comprobantes Agrupados por COBRADOR');
for t:=0 to DtComboAgrup.FieldCount-1 do begin
  texto:=texto + DtComboAgrup.Fields[t].FieldName + chr(9);
end;
RE5.Lines.Add(texto);
for y:=1 to DtComboAgrup.RecordCount do begin
  DtComboAgrup.RecNo:=y;
  texto:='';
  for t:=0 to DtComboAgrup.FieldCount-1 do begin
    texto:=texto + DtComboAgrup.Fields[t].AsString + chr(9);
  end;
  RE5.Lines.Add(texto);
end;

texto:='';
RE5.Lines.Add('');
RE5.Lines.Add('Detalle de Comprobantes Cargados');

for t:=0 to DataSet0.FieldCount-1 do begin
  texto:=texto + DataSet0.Fields[t].FieldName + chr(9);
end;
RE5.Lines.Add(texto);
for y:=1 to DataSet0.RecordCount do begin
  DataSet0.RecNo:=y;
  texto:='';
  for t:=0 to DataSet0.FieldCount-1 do begin
    texto:=texto + DataSet0.Fields[t].AsString + chr(9);
  end;
  RE5.Lines.Add(texto);
end;

RE5.SelectAll;
RE5.CopyToClipboard;
messagedlgpos('Se Copiaron los Datos listo para pegarlos a Excel',mtwarning,[mbok],0,screen.Width div 3,screen.Height div 3);
end;



end.

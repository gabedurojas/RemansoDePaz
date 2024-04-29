unit Movim_Planillas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExButtons, JvBitBtn, StdCtrls, Buttons, ComCtrls, ToolWin,
  Grids, DBGrids, ExtCtrls, Mask, JvgGroupBox, DBCtrls, Unidad, DBClient,
  WSDLIntf, ClaseFunciones, StrUtils, DB, ClaseSistemas, ImgList, LMDCustomButton,
   LMDButton, JvSimLogic,
  ADODB,JvExGrids, JvStringGrid, RpDefine, RpBase, RpSystem, TeEngine,
  TeeTools, TeeLegendScrollBar, Series, ErrorBar, TeeProcs, Chart;

type LosEdit = class(TEdit);
type HackTable = class(TADOTable);
type
  TMov_planillas = class(TForm)
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
    Buscar: TJvBitBtn;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ImageList1: TImageList;
    anio: TComboBox;
    mes: TComboBox;
    print: TButton;
    RvS: TRvSystem;
    T8: TClientDataSet;
    Image1: TImage;
    DataSource2: TDataSource;
    exporta: TButton;
    RE5: TRichEdit;
    Label7: TLabel;
    TPOFORM: TComboBox;
    PC2: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DataSource3: TDataSource;
    TabSheet4: TTabSheet;
    Grilla1: TStringGrid;
    Grafico2: TChart;
    StringGrid1: TStringGrid;
    BarSeries1: TErrorBarSeries;
    ChartTool1: TLegendScrollBar;
    ChartTool2: TDragMarksTool;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure BuscarClick(Sender: TObject);
    procedure anioExit(Sender: TObject);
    procedure anioKeyPress(Sender: TObject; var Key: Char);
    procedure mesKeyPress(Sender: TObject; var Key: Char);
    procedure mesExit(Sender: TObject);
    procedure printClick(Sender: TObject);
    procedure RvSPrint(Sender: TObject);
    procedure exportaClick(Sender: TObject);
    procedure TPOFORMExit(Sender: TObject);
    procedure TPOFORMKeyPress(Sender: TObject; var Key: Char);
  private
    IdCombos:array of array of string;
    IdPagos:array of array of string;
    PosSelec,PosPv:integer;
    DataSet0,DataSet1,DtCombo,DtComboComp,DataSet2:TClientDataSet;
    Funciones:TFuncionesVarias;
    Sistemas:TSistemas;
    habventana:boolean;
    FechaActual,MotAnula,FecAnula,elbanco,elcheque,bank,letracheque,cheque,elmes,elanio:string;
    TiposFormularios,TiposObjetos,TiposComprobantes:Unidad.TablaXML;{ Private declarations }
  public
    gh:boolean;{ Public declarations }
    PosH:Array [0..3] of Double;//Posiciones
    Camp:Array [0..3] of Integer;//Campos a Tomar en cuenta
    TxtCamp:Array [0..3] of String;//Textos de los Campos a Tomar en cuenta
  end;

var
  Mov_planillas: TMov_planillas;

implementation

uses Modulo, Busqueda, Anula_Generica,AM_TalonCobro,DatosCheque,SelecPagos;

{$R *.dfm}

procedure TMov_planillas.FormActivate(Sender: TObject);
begin
if not(gh) then begin
  gh:=true;
  setlength(IdCombos,5);
  grafico2.Series[0].Clear;
  PosPv:=0;
  FechaActual:=LeftStr(Fec_System(),10);
  PC1.ActivePage:=PC1.Pages[0];
  PC2.ActivePage:=PC2.Pages[0];
  ElMes:=strcut_midle(FechaActual,4,5);
  ElAnio:=RightStr(FechaActual,4);
  print.Enabled:=false;
  exporta.Enabled:=false;
  tpoform.SetFocus;
  Coloca1(0);
  Coloca1(3);
end;
end;

procedure TMov_planillas.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TMov_planillas.Coloca1(nro:byte);
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
if nro=3 then begin
  TPOFORM.Clear;
  TiposFormularios:=LeeXML('TiposFormularios','(Cobranzas=' + chr(39) + 'True' + chr(39) + ')');
  if length(TiposFormularios) <> 0 then begin
    SetLength(IdCombos[0],High(TiposFormularios[1]) + 1);
    for t:=0 to High(TiposFormularios[1])  do begin
      TPOFORM.Items.Insert(t,TiposFormularios[1,t]);
      IdCombos[0,t]:=TiposFormularios[0,t];
    end;
  end
  else begin
    DtCombo.Free;
    DtCombo:=TClientdataSet.Create(nil);
    Funciones:=TFuncionesVarias.Create(nil);
    Funciones.ConnectionString:=modulo2.Conexion;
    if not Funciones.Listar('SELECT NroFormulario,Detalle FROM TiposFormularios '
    + 'WHERE (Cobranzas=1)',DtCombo) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
    else begin
      SetLength(IdCombos[0],DtCombo.RecordCount);
      for t:=1 to DtCombo.RecordCount  do begin
        DtCombo.RecNo:=t;
        TPOFORM.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
        IdCombos[0,t-1]:=DtCombo.Fields[0].AsString;
      end;
    end;
    Funciones.Free;
  end;
  TPOFORM.ItemIndex:=0;
end;
if nro=5 then begin //Datos de las planillas acumuladas
    grafico2.Series[0].Clear;
    grafico2.BottomAxis.Maximum:=7;
    grafico2.BottomAxis.Minimum:=0;
    grafico2.Title.Text.Clear;
    grafico2.BottomAxis.Title.Font.Size:=14;
    grafico2.BottomAxis.Title.Caption:='Gestores';
    grafico2.LeftAxis.Title.Font.Size:=14;
    grafico2.LeftAxis.Title.Caption:='Cantidades';
    grafico2.Title.Font.Size:=14;
    grafico2.Title.Text.Add('Cantidad de ' + trim(tpoform.Text));

  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  DataSource2.DataSet:=DtCombo;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT * FROM Fn_PlanillasAgrupadasxGestor (' + trim(anio.Text)
    +','+ trim(mes.Text)+ ',' + chr(39)+ IdCombos[0,TPOFORM.ItemIndex]+ chr(39) +')';
  if not  Funciones.Listar(txtw,DtCombo) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  dbgrid1.Columns[0].Width:=60;
  dbgrid1.Columns[1].Width:=350;
  dbgrid1.Columns[2].Width:=100;
    if not DtCombo.IsEmpty then begin
       if DtCombo.RecordCount > 0 then begin
       for a:=1 to DtCombo.RecordCount do begin
         DtCombo.RecNo:=a;
         grilla1.RowCount:=a+1;
         grilla1.Cells[0,a]:=trim(DtCombo.Fields[0].asstring);
         grilla1.Cells[1,a]:=trim(DtCombo.Fields[1].AsString);
         grilla1.Cells[2,a]:=trim(DtCombo.Fields[2].AsString);
         grafico2.Series[0].Add(DtCombo.Fields[2].AsFloat,inttostr(a),536870912);
       end;
      end;
   end;
end;
if nro = 6 then begin //detalle de las facturas
  DataSet0.Free;
  DataSet0:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=DataSet0;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT row_number() over (order by NroPlanilla asc) as Orden,NroPlanilla,Cobrador FROM  VLosComprobantesCobrados '
  +  'WHERE (YEAR(FechaPlanilla) = '+ trim(anio.Text)+') AND (MONTH(FechaPlanilla) = '+ trim(mes.Text)+') '
  + ' and nroformulario='+ chr(39)+ IdCombos[0,TPOFORM.ItemIndex]+ chr(39)+' group by NroPlanilla,Cobrador order by NroPlanilla,cobrador';
  if not  Funciones.Listar(txtw,DataSet0) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if not DataSet0.IsEmpty then begin
    Barra1.Panels[1].Text:='Cant. Planillas Cargadas: ' + IntToStr(DataSet0.RecordCount);
    print.Enabled:=true;
    exporta.Enabled:=true;
  end
  else begin
    IF application.MessageBox('PLANILLA SIN COMPROBANTES ASIGNADOS, !Desea Cargar los Comprobnates!?','Advertencia'
            ,mb_OKcancel+mb_IconHAnd) = IdOk then begin
      print.Enabled:=false;
      exporta.Enabled:=false;
    end;
  end;
end;
if nro=7 then  begin   /// planillas anuladas
  DataSet2.Free;
  DataSet2:=TClientdataSet.Create(nil);
  DataSource3.DataSet:=DataSet2;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT row_number() over (order by NroPlanilla asc) as Orden,NroPlanilla, Usu_A, FechaAnula, MotivoAnula FROM PlanillasCobranzasNumeros'
     + ' WHERE  (nroformulario='+ chr(39)+ IdCombos[0,TPOFORM.ItemIndex]+ chr( 39) + ') AND '
     + '(YEAR(FechaAnula) = '+ trim(anio.Text)+') AND (MONTH(FechaAnula) = '+ trim(mes.Text)+ ') order by NroPlanilla';
  if not  Funciones.Listar(txtw,DataSet2) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if not DataSet2.IsEmpty then begin
    Barra1.Panels[0].Text:='Cant. planillas Anuladas: ' + IntToStr(DataSet2.RecordCount);
    print.Enabled:=true;
    exporta.Enabled:=true;
  end
  else begin
    Barra1.Panels[0].Text:='';
  end;
end;

end;

procedure TMov_planillas.JvBitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TMov_planillas.BuscarClick(Sender: TObject);
begin
Coloca1(5);  // juntamos los resultados
Coloca1(6);
Coloca1(7);
end;

procedure TMov_planillas.anioExit(Sender: TObject);
begin
if anio.ItemIndex < 0 then begin
  messagedlg('ERROR!! Año fuera de Rango!!',mterror,[mbok],0);
  anio.SetFocus;
end;
end;

procedure TMov_planillas.anioKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  mes.SetFocus;
end;
end;

procedure TMov_planillas.mesKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  Buscar.SetFocus;
end;
end;

procedure TMov_planillas.mesExit(Sender: TObject);
begin
if mes.ItemIndex < 0 then begin
  messagedlg('ERROR!! Mes fuera de Rango!!',mterror,[mbok],0);
  mes.SetFocus;
end;
end;

procedure TMov_planillas.printClick(Sender: TObject);
begin
rvs.Execute;
end;

procedure TMov_planillas.RvSPrint(Sender: TObject);
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
     Rvs.BaseReport.PrintXY(posfx+34,posfy+17,'LISTA DE ' + trim(tpoform.Text)+ ' - Periodo: ' + trim(anio.Text)+ trim(mes.Text));
     Rvs.BaseReport.PrintXY(posfx+2,posfy+27,'CANT. PLANILLAS CARGADAS : '+ IntToStr(DataSet0.RecordCount)
         + '                                  CANT. PLANILLAS ANULADAS : '+ IntToStr(DataSet2.RecordCount));
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
  posfx:=1.5;
  posfy:=2;
  salto:=4;
  final:=0;
  hoja:=1;
  posfy:=Logo(posfx,posfy,hoja);
  Camp[0]:=0; Camp[1]:=1; Camp[2]:=2;  Camp[3]:=3;
  TxtCamp[0]:='Orden';  TxtCamp[1]:='NroPlanilla.'; TxtCamp[2]:='Cobrador';  TxtCamp[3]:='Anulado';
  PosH[0]:=3;   PosH[1]:=35;  PosH[2]:=70;  PosH[3]:=190;
  T8.Close;
  T8.CloneCursor(DtCombo,false,true);
  txt:='T8';
 // Rvs.BaseReport.PrintXY(posfx+10,posfy,'LISTA DE ' + trim(tpoform.Text)+ ' ' +  '- Periodo: ' + trim(anio.Text)+ trim(mes.Text));
  final:=GrillaCabecera(posfx,posfy+5,txt);
  posfy:=final;
  pso:=false;

      for y:=1 to HackTable(findcomponent(txt)).RecordCount do begin
        HackTable(FindComponent(txt)).RecNo:=y;
        if pso then Rvs.BaseReport.Rectangle(posfx+2,posfy+1,posfx+200,posfy+1)
        else pso:=true;
        posfy:=GrillaDetalle(posfx,posfy,txt);
        if posfy > 280 then begin
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
      if pso then posfy:=GrillaRecuadro(posfx,final,posfy+2);
  except
end;
end;

procedure TMov_planillas.exportaClick(Sender: TObject);
var texto:widestring;
var txt:string;
var t,y:integer;
begin
RE5.Clear;
texto:='';
//
//for t:=0 to DtCombo.FieldCount-1 do begin
//  texto:=texto + DtCombo.Fields[t].FieldName + chr(9);
//end;
//RE5.Lines.Add(texto);
//for y:=1 to DtCombo.RecordCount do begin
//  DtCombo.RecNo:=y;
//  texto:='';
//  for t:=0 to DtCombo.FieldCount-1 do begin
//    texto:=texto + DtCombo.Fields[t].AsString + chr(9);
//  end;
//  RE5.Lines.Add(texto);
//end;
//
//texto:='';
RE5.Lines.Add('');
RE5.Lines.Add('Planillas ANULADAS');
for t:=0 to DataSet2.FieldCount-1 do begin
  texto:=texto + DataSet2.Fields[t].FieldName + chr(9);
end;
RE5.Lines.Add(texto);
for y:=1 to DataSet2.RecordCount do begin
  DataSet2.RecNo:=y;
  texto:='';
  for t:=0 to DataSet2.FieldCount-1 do begin
    texto:=texto + DataSet2.Fields[t].AsString + chr(9);
  end;
  RE5.Lines.Add(texto);
end;

texto:='';
RE5.Lines.Add('');
RE5.Lines.Add('Planillas CARGADAS');
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


procedure TMov_planillas.TPOFORMExit(Sender: TObject);
begin
if TPOFORM.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Formulario Ingresado!!',mterror,[mbok],0);
  TPOFORM.SetFocus;
end;
end;

procedure TMov_planillas.TPOFORMKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  anio.SetFocus;
end;
end;

end.

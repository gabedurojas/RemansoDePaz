unit Movim_Diarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExButtons, JvBitBtn, StdCtrls, Buttons, ComCtrls, ToolWin,
  Grids, DBGrids, ExtCtrls, Mask, JvgGroupBox, DBCtrls, Unidad, DBClient,
  WSDLIntf, ClaseFunciones, StrUtils, DB, ClaseSistemas, ImgList, LMDCustomButton,
   LMDButton, JvSimLogic,
  ADODB,JvExGrids, JvStringGrid, RpDefine, RpBase, RpSystem, TeEngine,
  TeeTools, TeeLegendScrollBar, Series, TeeProcs, Chart, JvExMask,
  JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit;

type LosEdit = class(TEdit);
type HackTable = class(TADOTable);
type
  TMov_Diariospla = class(TForm)
    Barra1: TStatusBar;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    JvBitBtn1: TJvBitBtn;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    Buscar: TJvBitBtn;
    GroupBox1: TGroupBox;
    ImageList1: TImageList;
    print: TButton;
    RvS: TRvSystem;
    T8: TClientDataSet;
    Image1: TImage;
    DataSource2: TDataSource;
    exporta: TButton;
    RE5: TRichEdit;
    Label7: TLabel;
    TPOFORM: TComboBox;
    R1: TRadioButton;
    R2: TRadioButton;
    anio: TComboBox;
    mes: TComboBox;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    DBGrid2: TDBGrid;
    Image3: TImage;
    RvS1: TRvSystem;
    T2: TClientDataSet;
    TabSheet4: TTabSheet;
    Grafico2: TChart;
    ChartTool1: TLegendScrollBar;
    ChartTool2: TDragMarksTool;
    BarSeries1: THorizBarSeries;
    Grilla1: TStringGrid;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    CB1: TCheckBox;
    FECNAC: TJvDatePickerEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure BuscarClick(Sender: TObject);
    procedure printClick(Sender: TObject);
    procedure RvSPrint(Sender: TObject);
    procedure exportaClick(Sender: TObject);
    procedure TPOFORMExit(Sender: TObject);
    procedure TPOFORMKeyPress(Sender: TObject; var Key: Char);
    procedure R1Click(Sender: TObject);
    procedure R2Click(Sender: TObject);
    procedure anioExit(Sender: TObject);
    procedure anioKeyPress(Sender: TObject; var Key: Char);
    procedure mesExit(Sender: TObject);
    procedure mesKeyPress(Sender: TObject; var Key: Char);
    procedure RvS1Print(Sender: TObject);
    procedure Impresion(nro:byte);
    procedure FECNACExit(Sender: TObject);
    procedure FECNACKeyPress(Sender: TObject; var Key: Char);
  private
    IdCombos:array of array of string;
    IdPagos:array of array of string;
    PosSelec,PosPv,pagos,pagosp:integer;
    DataSet0,DataSet1,DtCombo,DtComboComp,DataSet2:TClientDataSet;
    Funciones:TFuncionesVarias;
    Sistemas:TSistemas;
    sumapos,sumaimp,sumatot,sumacomi:double;
    habventana:boolean;
    FechaActual,MotAnula,FecAnula,elbanco,elcheque,bank,letracheque,cheque,elmes,elanio:string;
    TiposFormularios,TiposObjetos,TiposComprobantes:Unidad.TablaXML;{ Private declarations }
  public
    gh:boolean;{ Public declarations }
    PosH:Array [0..9] of Double;
    Camp:Array [0..9] of Integer;
    TxtCamp:Array [0..9] of String;

    PosiH:Array [0..8] of Double;
    Campos:Array [0..8] of Integer;
    TxtCampos:Array [0..8] of String;
  end;

var
  Mov_Diariospla: TMov_Diariospla;

implementation

uses Modulo, Busqueda, Anula_Generica,AM_TalonCobro,DatosCheque,SelecPagos;

{$R *.dfm}

procedure TMov_Diariospla.FormActivate(Sender: TObject);
begin
if not(gh) then begin
  gh:=true;
  setlength(IdCombos,5);
  PosPv:=0;
  grafico2.Series[0].Clear;
  FechaActual:=LeftStr(Fec_System(),10);
  PC1.ActivePage:=PC1.Pages[0];
  PageControl1.ActivePage:=PageControl1.Pages[0];
  fecnac.Text:=FechaActual;
  ElMes:=strcut_midle(FechaActual,4,5);
  ElAnio:=RightStr(FechaActual,4);
  print.Enabled:=false;
  coloca1(0);
  exporta.Enabled:=false;
  tpoform.SetFocus;
  Coloca1(3);
end;
end;

procedure TMov_Diariospla.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TMov_Diariospla.Coloca1(nro:byte);
var t,ta,tn,x,a:integer;
    NroDni,ValNull,SubCob:variant;
    txt,txt1,NroCompr,anulados:string;
    txtw:widestring;
    tot:real;
    suma:double;
begin
  ta:=0;
  tn:=0;
if nro=0 then begin
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
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT distinct Nombre,cuif FROM VLosCobradores ORDER BY Nombre';
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
if nro=4 then begin //Datos de las facturas acumuladas
  grafico2.Series[0].Clear;
  grafico2.BottomAxis.Maximum:=7;
  grafico2.BottomAxis.Minimum:=0;
  grafico2.Title.Text.Clear;
  grafico2.BottomAxis.Title.Font.Size:=14;
  grafico2.BottomAxis.Title.Caption:='Cantidades';
  grafico2.LeftAxis.Title.Font.Size:=14;
  grafico2.LeftAxis.Title.Caption:='Tipos Pagos';
  grafico2.Title.Font.Size:=14;
  grafico2.Title.Text.Add('Cantidad de Pagos');

  DataSet2.Free;
  DataSet2:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if r1.Checked=true then begin
  txtw:='SELECT ''Cant.Pagos'' as CantPagos,isnull(sum(CantidadPagos),0) as Total FROM ' +
    'FnPlanillasCobranzas ('+ chr(39) + trim(fecnac.Text) + chr(39)+ ',' + IdCombos[0,TPOFORM.ItemIndex] +',0,null,null) union '
   + 'SELECT ''PagosPosnet'' as CantPagos,COUNT(*) as Total  ' +
   'FROM FnPlanillasCobranzasPosnet (0,'+ chr(39) + trim(fecnac.Text) + chr(39)+ ',' + IdCombos[0,TPOFORM.ItemIndex] +',null,null)';
  end;
  if r2.Checked=true then begin
  txtw:='SELECT ''Cant.Pagos'' as CantPagos,isnull(sum(CantidadPagos),0) as Total FROM ' +
    'FnPlanillasCobranzas ('''',' + IdCombos[0,TPOFORM.ItemIndex] +',1,' + trim(anio.Text) + ',' + trim(mes.Text) +') union '
   + 'SELECT ''PagosPosnet'' as CantPagos,COUNT(*) as Total  ' +
   'FROM FnPlanillasCobranzasPosnet (1,null ,' + IdCombos[0,TPOFORM.ItemIndex] +',' + trim(anio.Text) + ',' + trim(mes.Text) +')';
  end;
  if not Funciones.Listar(txtw,DataSet2) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',
       mtError,[mbok],0)
  else begin
      //cargamos la grilla para el grafico
      if DataSet2.RecordCount > 0 then begin
       for a:=1 to DataSet2.RecordCount do begin
         DataSet2.RecNo:=a;
         grilla1.RowCount:=a+1;
         grilla1.Cells[0,a]:=trim(DataSet2.Fields[0].asstring);
         grilla1.Cells[1,a]:=trim(DataSet2.Fields[1].AsString);
         grafico2.Series[0].Add(DataSet2.Fields[1].AsFloat,inttostr(a),536870912);
       end;
      end;
  end;
    Funciones.Free;
end;
if nro=5 then begin //Datos de las facturas acumuladas
  //DtCombo.Close;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  DataSource2.DataSet:=DtCombo;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if r1.Checked=true then begin
   txtw:='SELECT row_number() over (order by NroPlanilla asc) as Orden,NroPlanilla,Objeto,CantidadPagos,CantidadPagosPosnet,'
   + 'Importe as ImportePlanilla,Comision,PorcentajeCobrador,isnull(Posnet,0) as ImpPosnet,(Importe - Comision) - isnull(Posnet,0) as TotalEfectivo'
   + ' FROM FnPlanillasCobranzas ('+ chr(39) + trim(fecnac.Text) + chr(39)+ ',' + IdCombos[0,TPOFORM.ItemIndex] +',0,null,null)';
  end;
  if r2.Checked=true then begin
   txtw:='SELECT row_number() over (order by NroPlanilla asc) as Orden,NroPlanilla,Objeto,CantidadPagos,CantidadPagosPosnet,'
   + 'Importe as ImportePlanilla,Comision,PorcentajeCobrador,isnull(Posnet,0) as ImpPosnet,(Importe - Comision) - isnull(Posnet,0) as TotalEfectivo'
   + ' FROM FnPlanillasCobranzas ('''',' + IdCombos[0,TPOFORM.ItemIndex] +',1,' + trim(anio.Text) + ',' + trim(mes.Text) +')';
  end;
  if not Funciones.Listar(txtw,DtCombo) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',
       mtError,[mbok],0)
  else begin
      if DtCombo.RecordCount > 0 then begin
       dbgrid1.Columns[0].Width:=30;
       dbgrid1.Columns[1].Width:=60;
       dbgrid1.Columns[2].Width:=80;
       dbgrid1.Columns[3].Width:=80;
       dbgrid1.Columns[4].Width:=110;
       dbgrid1.Columns[5].Width:=80;
       dbgrid1.Columns[6].Width:=80;
       dbgrid1.Columns[7].Width:=100;
       dbgrid1.Columns[8].Width:=60;
       dbgrid1.Columns[9].Width:=100;
       print.enabled:=true;
       exporta.enabled:=true;
      end;

      try
        dbgrid1.datasource.dataset.disablecontrols;
        dbgrid1.datasource.dataset.first;
        while not dbgrid1.datasource.dataset.eof do
        begin
          sumapos := sumapos + dbgrid1.datasource.dataset.fieldbyname('ImpPosnet').asfloat;
          sumaimp := sumaimp + dbgrid1.datasource.dataset.fieldbyname('ImportePlanilla').asfloat;
          sumatot := sumatot + dbgrid1.datasource.dataset.fieldbyname('TotalEfectivo').asfloat;
          sumacomi := sumacomi + dbgrid1.datasource.dataset.fieldbyname('Comision').asfloat;
            //pagos := pagos + dbgrid1.datasource.dataset.fieldbyname('CantidadPagos').AsInteger;
            //pagosp := pagosp + dbgrid1.datasource.dataset.fieldbyname('CantidadPagosPosnet').AsInteger;
          dbgrid1.datasource.dataset.next;
        end;
        EDIT1.Text:=floattostr(sumaimp);
        EDIT2.Text:=floattostr(sumapos);
        EDIT4.Text:=floattostr(sumacomi);
        EDIT3.Text:=floattostr(sumatot);
      finally
        dbgrid1.datasource.dataset.enablecontrols;
      end;
  end;
    Funciones.Free;
end;
if nro = 6 then begin
  DtComboComp.Free;
  DtComboComp:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=DtComboComp;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if r1.Checked=true then begin
  txtw:='SELECT nroplanilla,comprobante,Nrocomprobante,tipomovimiento,fechaplanilla,nroaccion,importe,gastoadmin,'
  + 'cobrador,CASE WHEN tipoplanilla =''PLANILLA DE RENDICION DE COBRANZAS'' THEN  ''COBRANZA'' ELSE ''PARCELAS'' END AS tipoplanilla'
  + ' FROM FnPlanillasCobranzasPosnet (0,'+ chr(39) + trim(fecnac.Text) + chr(39)+ ',' + IdCombos[0,TPOFORM.ItemIndex] +',null,null) order by 1';
  end;
  if r2.Checked=true then begin
  txtw:='SELECT nroplanilla,comprobante,Nrocomprobante,tipomovimiento,fechaplanilla,nroaccion,importe,gastoadmin,'
  + 'cobrador,CASE WHEN tipoplanilla =''PLANILLA DE RENDICION DE COBRANZAS'' THEN  ''COBRANZA'' ELSE ''PARCELAS'' END AS tipoplanilla'
  + ' FROM FnPlanillasCobranzasPosnet (1,null,' + IdCombos[0,TPOFORM.ItemIndex] +',' + trim(anio.Text) + ',' + trim(mes.Text)+ ') order by 1';
  end;
  if not Funciones.Listar(txtw,DtComboComp) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',
       mtError,[mbok],0)
  else begin
      if DtComboComp.RecordCount > 0 then begin
       dbgrid2.Columns[0].Width:=60;
       dbgrid2.Columns[1].Width:=80;
       dbgrid2.Columns[2].Width:=80;
       dbgrid2.Columns[3].Width:=120;
       dbgrid2.Columns[4].Width:=80;
       dbgrid2.Columns[5].Width:=60;
       dbgrid2.Columns[6].Width:=100;
       dbgrid2.Columns[7].Width:=60;
       dbgrid2.Columns[8].Width:=60;
      end;
  end;
end;
end;

procedure TMov_Diariospla.JvBitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TMov_Diariospla.BuscarClick(Sender: TObject);
begin
sumapos:=0;
sumaimp:=0;
sumatot:=0;
sumacomi:=0;
Coloca1(5);
Coloca1(6);
Coloca1(4);
end;

procedure TMov_Diariospla.printClick(Sender: TObject);
begin
rvs.Execute;
end;

procedure TMov_Diariospla.RvSPrint(Sender: TObject);
var posfx,posfy,final,salto:double;
var t,y,hoja,nro:integer;
var txt:string;
var pso:boolean;

 Function Logo(posx,posy:double;vaf:integer):double;
   var Imagen1,MarcaAgua:TBitMap;
       PathLogo,PathLogo1:string;
   begin
   with RvS do begin
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
     if r1.Checked then Rvs.BaseReport.PrintXY(posfx+34,posfy+17,'LISTA DE PAGOS DEL DIA: ' + trim(fecnac.Text))
        else Rvs.BaseReport.PrintXY(posfx+34,posfy+17,'LISTA DE PAGOS DEL PERIODO: ' + trim(anio.Text) + trim(mes.Text));
     Rvs.BaseReport.PrintXY(posfx+2,posfy+27,'COBRADOR: '+ trim(tpoform.Text));
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
  Camp[4]:=4; Camp[5]:=5; Camp[6]:=6;  Camp[7]:=7;   Camp[8]:=9;  Camp[9]:=8;

  TxtCamp[0]:='Orden';  TxtCamp[1]:='NroPlanilla'; TxtCamp[2]:='Objeto';  TxtCamp[3]:='CantPagos';
  TxtCamp[4]:='CantPagosPosnet';  TxtCamp[5]:='ImportePlanilla'; TxtCamp[6]:='ImporteComision';
  TxtCamp[7]:='%Cobrador';  TxtCamp[8]:='Total Efectivo'; TxtCamp[9]:='Posnet';

  PosH[0]:=3;   PosH[1]:=13;  PosH[2]:=30;  PosH[3]:=60;  PosH[4]:=75;
  PosH[5]:=100;  PosH[6]:=120;  PosH[7]:=145;  PosH[8]:=165;  PosH[9]:=185;
  T8.Close;
  T8.CloneCursor(DtCombo,false,true);
  txt:='T8';
  final:=GrillaCabecera(posfx,posfy+5,txt);
  posfy:=final;
  pso:=false;

      for y:=1 to HackTable(findcomponent(txt)).RecordCount do begin
        HackTable(FindComponent(txt)).RecNo:=y;
        if pso then Rvs.BaseReport.Rectangle(posfx+2,posfy+1,posfx+200,posfy+1)
        else pso:=true;
        posfy:=GrillaDetalle(posfx,posfy,txt);
        if posfy > 250 then begin
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
            Rvs.BaseReport.PrintXY(posfx+140,posfy+8,'Total Planillas +:  $');
            Rvs.BaseReport.PrintXY(posfx+180,posfy+8,floattostr(sumaimp));
            Rvs.BaseReport.PrintXY(posfx+140,posfy+13,'Total Posnet -:     $');
            Rvs.BaseReport.PrintXY(posfx+180,posfy+13,floattostr(sumapos));
            Rvs.BaseReport.PrintXY(posfx+140,posfy+18,'Total Comision -:  $');
            Rvs.BaseReport.PrintXY(posfx+180,posfy+18,floattostr(sumacomi));
            Rvs.BaseReport.PrintXY(posfx+140,posfy+23,'Total Efectivo:     $');
            Rvs.BaseReport.PrintXY(posfx+180,posfy+23,floattostr(sumatot));
            if pso then posfy:=GrillaRecuadro(posfx,final,posfy+2);
            Rvs.BaseReport.NewPage;
            if cb1.Checked then Impresion(1);/// imprimos el detalle de los posnet
 except
 end;
end;


procedure TMov_Diariospla.exportaClick(Sender: TObject);
var texto:widestring;
var txt:string;
var t,y:integer;
begin
RE5.Clear;
texto:='';

RE5.Lines.Add('');
RE5.Lines.Add('Total Importe Planillas' + trim(edit1.Text));
RE5.Lines.Add('Total Importe Posnet' + trim(edit2.Text));
RE5.Lines.Add('Total Importe Comision' + trim(edit4.Text));
RE5.Lines.Add('Total Efectivo' + trim(edit3.Text));

RE5.Lines.Add('Planillas Cargadas');
for t:=0 to DtCombo.FieldCount-1 do begin
  texto:=texto + DtCombo.Fields[t].FieldName + chr(9);
end;
RE5.Lines.Add(texto);
for y:=1 to DtCombo.RecordCount do begin
  DtCombo.RecNo:=y;
  texto:='';
  for t:=0 to DtCombo.FieldCount-1 do begin
    texto:=texto + DtCombo.Fields[t].AsString + chr(9);
  end;
  RE5.Lines.Add(texto);
end;

RE5.SelectAll;
RE5.CopyToClipboard;
messagedlgpos('Se Copiaron los Datos listo para pegarlos a Excel',mtwarning,[mbok],0,screen.Width div 3,screen.Height div 3);
end;


procedure TMov_Diariospla.TPOFORMExit(Sender: TObject);
begin
if TPOFORM.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Formulario Ingresado!!',mterror,[mbok],0);
  TPOFORM.SetFocus;
end;
end;

procedure TMov_Diariospla.TPOFORMKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  fecnac.SetFocus;
end;
end;

procedure TMov_Diariospla.R1Click(Sender: TObject);
begin
 if r1.Checked then  begin
  anio.Visible:=false;
  mes.Visible:=false;
  fecnac.Visible:=true;
  fecnac.SetFocus;
 end
end;

procedure TMov_Diariospla.R2Click(Sender: TObject);
begin
 if r2.Checked then  begin
  anio.Visible:=true;
  mes.Visible:=true;
  fecnac.Visible:=false;
  anio.SetFocus;
 end;
end;

procedure TMov_Diariospla.anioExit(Sender: TObject);
begin
if anio.ItemIndex < 0 then begin
  messagedlg('ERROR!! Año fuera de Rango!!',mterror,[mbok],0);
  anio.SetFocus;
end;
end;

procedure TMov_Diariospla.anioKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  mes.SetFocus;
end;
end;

procedure TMov_Diariospla.mesExit(Sender: TObject);
begin
if mes.ItemIndex < 0 then begin
  messagedlg('ERROR!! Mes fuera de Rango!!',mterror,[mbok],0);
  mes.SetFocus;
end;
end;

procedure TMov_Diariospla.mesKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  Buscar.SetFocus;
end;
end;

procedure TMov_Diariospla.Impresion(nro:byte);
begin
 if nro = 1 then  begin
   rvs1.Execute;
 end;
end;

procedure TMov_Diariospla.RvS1Print(Sender: TObject);
var posfx,posfy,final,salto:double;
var t,y,hoja,nro:integer;
var txt:string;
var pso:boolean;

Function Logo1(posx,posy:double;vaf:integer):double;
   var Imagen2,MarcaAgua:TBitMap;
       PathLogo,PathLogo1:string;
   begin
   with RvS1 do begin
//     Imagen2 := TBitMap.Create;
//     PathLogo1:=modulo2.path_todo + '\Imagenes\' + modulo2.INI1.ReadString('Resumen Caja','Imagen1','');
//     if FileExists(PathLogo1) then begin
//       Image2.Picture.LoadFromFile(PathLogo1);
//       Imagen2.Assign(Image2.Picture.Graphic);
//       Rvs1.BaseReport.PrintBitmapRect(posx+6,posy+2,posx+30,posy+22,Imagen2);
//     end;
//     Imagen2.Free;
     Rvs1.BaseReport.Rectangle(posx+2,posy+1,posx+200,posy+23);
     Rvs1.BaseReport.SetFont('Arial Black',9);
     Rvs1.BaseReport.FontColor:=clBlack;
     Rvs1.BaseReport.PrintXY(posx+34,posy+5,'CARMELO MONTE S.A. Servicios & Mandatos');
     Rvs1.BaseReport.SetFont('Arial Black',8);
     Rvs1.BaseReport.FontColor:=clBlack;
     Rvs1.BaseReport.PrintXY(posx+34,posy+9,modulo2.INI1.ReadString('Resumen Planillas','Titulo2',''));
     Rvs1.BaseReport.SetFont('Arial',7);
     Rvs1.BaseReport.FontColor:=clBlack;
     Rvs1.BaseReport.PrintXY(posx+149,posy+22,'Pág.: ' + inttostr(vaf));
     Rvs1.BaseReport.PrintXY(posx+160,posy+22,'Usu Imp.: ' + inttostr(modulo2.nro_usu) + ' - Fec. Imp.:' + strcut(Fec_System(),10));
     Rvs1.BaseReport.SetFont('Arial',10);
     Rvs1.BaseReport.FontColor:=clBlack;
     Rvs1.BaseReport.SetFont('Arial Black',9);
     Rvs1.BaseReport.FontColor:=clBlack;
     if r1.Checked then Rvs1.BaseReport.PrintXY(posfx+34,posfy+17,'LISTA DE PAGOS POSNET DEL DIA: ' + trim(fecnac.Text))
        else Rvs1.BaseReport.PrintXY(posfx+34,posfy+17,'LISTA DE PAGOS POSNET DEL PERIODO: ' + trim(anio.Text) + trim(mes.Text));
     Rvs1.BaseReport.PrintXY(posfx+2,posfy+27,'COBRADOR: '+ trim(tpoform.Text));
     Logo1:=posy+25;
   end;
   end;

  Function GrillaCabecera1(posx,posy:double;texto:string):double;
  var t:integer;
  begin
     with RvS1 do begin
      Rvs1.BaseReport.Rectangle(posx+2,posy,posx+200,posy+5);
      for t:=1 to length(Campos)-1 do begin
       Rvs1.BaseReport.Rectangle(posx + PosiH[t]-2,posy,posx + PosiH[t]-2,posy+5);
      end;
     end;
      Rvs1.BaseReport.SetFont('Arial Black',6);
      Rvs1.BaseReport.FontColor:=clBlack;
      for t:=0 to length(Campos)-1 do begin
        Rvs1.BaseReport.PrintXY(posx + PosiH[t],posy+4,TxtCampos[t]);
     end;
  Result:=posy+5;
  end;

  /// Grilla Detalle
  Function GrillaDetalle1(posx,posy:double;texto:string):double;
  var t:integer;
  begin
  Rvs1.BaseReport.SetFont('Arial',7);
  Rvs1.BaseReport.FontColor:=clBlack;
    for t:=0 to length(Campos)-1 do
     Rvs1.BaseReport.PrintXY(posx + PosiH[t],posy+4,HackTable(FindComponent(texto)).Fields[Campos[t]].AsString);
    Result:=posy+4;
  end;

  //// Grilla Recuadro
  Function GrillaRecuadro1(posx,posy,posy2:double):double;
  var t:integer;
  begin
  with RvS1 do begin
    BaseReport.Rectangle(posx+2,posy,posx+200,posy2);
    for t:=1 to length(Campos)-1 do begin
      BaseReport.Rectangle(posx + PosiH[t]-2,posy,posx + PosiH[t]-2,posy2);
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
  posfy:=Logo1(posfx,posfy,hoja);
  Campos[0]:=0; Campos[1]:=1; Campos[2]:=2;  Campos[3]:=3;
  Campos[4]:=4; Campos[5]:=5; Campos[6]:=6;  Campos[7]:=8;   Campos[8]:=9;
  {nroplanilla,comprobante,Nrocomprobante,tipomovimiento,fechaplanilla,nroaccion,importe,'
  + 'cobrador,tipoplanilla}
  TxtCampos[0]:='NroPlanilla';  TxtCampos[1]:='TipoComp.'; TxtCampos[2]:='NroComprob.';  TxtCampos[3]:='Tipo';
  TxtCampos[4]:='FecPlanilla';  TxtCampos[5]:='NroAccion'; TxtCampos[6]:='Importe';
  TxtCampos[7]:='cobrador';  TxtCampos[8]:='Planilla';

  PosiH[0]:=3;   PosiH[1]:=19;  PosiH[2]:=38;  PosiH[3]:=58;
  PosiH[4]:=85;   PosiH[5]:=100;  PosiH[6]:=115;  PosiH[7]:=130;  PosiH[8]:=180;
  T2.Close;
  T2.CloneCursor(DtComboComp,false,true);
  txt:='T2';
  final:=GrillaCabecera1(posfx,posfy+5,txt);
  posfy:=final;
  pso:=false;

      for y:=1 to HackTable(findcomponent(txt)).RecordCount do begin
        HackTable(FindComponent(txt)).RecNo:=y;
        if pso then Rvs1.BaseReport.Rectangle(posfx+2,posfy+1,posfx+200,posfy+1)
        else pso:=true;
        posfy:=GrillaDetalle1(posfx,posfy,txt);
        if posfy > 250 then begin
          posfy:=GrillaRecuadro1(posfx,final,posfy+2);
          posfx:=1.5;
          posfy:=2;
          hoja:=hoja+1;
          RvS1.BaseReport.NewPage;
          posfy:=Logo1(posfx,posfy,hoja);  // llamamos al encabezado
          final:=GrillaCabecera1(posfx,posfy+5,txt);
          posfy:=final;pso:=false;
        end;
      end;
 except
 end;
end;

procedure TMov_Diariospla.FECNACExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(FECNAC.Text));
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  FECNAC.SetFocus;
end;
end;

procedure TMov_Diariospla.FECNACKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  buscar.SetFocus;
end;
end;

end.

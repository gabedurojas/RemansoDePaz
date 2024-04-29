unit LasNovedadesParcelas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls, ADODB, DB,
  ClaseFunciones,ClaseParcelasNovedades,DBClient,ClaseSistemas, Buttons,
  JvExButtons, JvBitBtn, ToolWin, RpDefine, RpBase, RpSystem, TeEngine,
  TeeTools, TeeLegendScrollBar, Series, TeeProcs, Chart, StrUtils, Mask;

 type HackTable = class(TADOTable);
type
  TParcelasNov = class(TForm)
    GroupBox9: TGroupBox;
    GroupBox13: TGroupBox;
    rnovedad: TButton;
    DataSource1: TDataSource;
    ToolBar1: TToolBar;
    ToolButton3: TToolButton;
    sale: TJvBitBtn;
    RvNov: TRvSystem;
    T8: TClientDataSet;
    Image1: TImage;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit3: TEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBGrid2: TDBGrid;
    DBGrid1: TDBGrid;
    DataSource2: TDataSource;
    Grilla1: TStringGrid;
    Grafico2: TChart;
    BarSeries1: THorizBarSeries;
    ChartTool1: TLegendScrollBar;
    ChartTool2: TDragMarksTool;
    GroupBox1: TGroupBox;
    Shape3: TShape;
    Label43: TLabel;
    Shape2: TShape;
    Label47: TLabel;
    GroupBox2: TGroupBox;
    R1: TRadioButton;
    R2: TRadioButton;
    R3: TRadioButton;
    calendario: TMonthCalendar;
    Label4: TLabel;
    FECEMI: TEdit;
    Label6: TLabel;
    FECNAC: TMaskEdit;
    Label5: TLabel;
    fecnac1: TMaskEdit;
    vernovedad: TButton;
    impnovedades: TJvBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure calendarioClick(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure rnovedadClick(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure vernovedadClick(Sender: TObject);
    procedure saleClick(Sender: TObject);
    procedure impnovedadesClick(Sender: TObject);
    procedure RvNovPrint(Sender: TObject);
    procedure R1Click(Sender: TObject);
    procedure R2Click(Sender: TObject);
    procedure FECEMIExit(Sender: TObject);
    procedure FECEMIKeyPress(Sender: TObject; var Key: Char);
    procedure R3Click(Sender: TObject);
    procedure FECNACExit(Sender: TObject);
    procedure FECNACKeyPress(Sender: TObject; var Key: Char);
    procedure fecnac1Exit(Sender: TObject);
    procedure fecnac1KeyPress(Sender: TObject; var Key: Char);
  private
   gh:boolean;
   lafec:string;
   DataClie,DataSet2:TClientDataSet;
   Funciones:TFuncionesVarias;
   nronov:integer;

   PosH:Array [0..6] of Double;//Posiciones
   Camp:Array [0..6] of Integer;//Campos a Tomar en cuenta
   TxtCamp:Array [0..6] of String;//Textos de los Campos a Tomar en cuenta

    { Private declarations }
  public
  LaOpcion:integer;
  ParcelasNovedades:TParcelasNovedades;
    { Public declarations }
  end;

var
  ParcelasNov: TParcelasNov;

implementation

uses Unidad, modulo;

{$R *.dfm}

procedure TParcelasNov.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TParcelasNov.FormActivate(Sender: TObject);
begin
 if not(gh) then begin
  gh:=true;
  grafico2.Series[0].Clear;
  PageControl1.ActivePage:=PageControl1.Pages[0];
  pagecontrol1.Pages[1].TabVisible:=true;
  pagecontrol1.Pages[2].TabVisible:=true;
  if LaOpcion = 1 then begin
   groupbox2.Visible:=true;
   calendario.Date:=strtodate(strcut(Fec_System(),10));
   FECEMI.Text:=strcut(Fec_System(),10);
   vernovedad.Enabled :=false;
   impnovedades.Enabled :=false;
   vernovedad.Click;
   calendario.SetFocus;
   label4.Visible:=false;
   fecnac.Visible:=false;
   fecnac1.Visible:=false;
   label5.Visible:=false;
   label6.Visible:=false;
  end;
  if LaOpcion = 2 then begin
   groupbox2.Visible:=false;
   PageControl1.Align:=alclient;
   pagecontrol1.Pages[1].TabVisible:=false;
   pagecontrol1.Pages[2].TabVisible:=false;
   Coloca1(0);
  end;
  //FECEMI.clear;
 end;
end;

procedure TParcelasNov.calendarioClick(Sender: TObject);
begin
 fecemi.Clear;
 FECEMI.Text:=Datetostr(CALENDARIO.Date);
 vernovedad.Enabled :=true;
 vernovedad.Click;
end;

procedure TParcelasNov.Coloca1(nro:byte);
var txtw:widestring;
    a:integer;
begin
if nro=0 then begin
 DataClie.Free;
  DataClie:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=DataClie;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT id, ParcelasNovedades.Nroaccion,parcelas.Sector ,parcelas.Parcela, Novedad,'
   +'CASE WHEN fecharesuelto is not null THEN ''SI'' ELSE ''NO'' END AS Resuelto, '
   +' convert(char(10),fechaalta,103) as fechaalta'
   +' FROM ParcelasNovedades inner join Parcelas on Parcelas.NroAccion = ParcelasNovedades.Nroaccion'
   +' where fecharesuelto is null and fechaalta is not null '
   +' order by 1 desc';
   //+' order by convert(char(10),fechaalta,103) desc';
  if not Funciones.Listar(txtw,DataClie) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if DAtaclie.IsEmpty  then begin
    impnovedades.Enabled :=false;
    messagedlg('ERROR No se encontraron Novedades para esta consulta..', mtInformation,[mbok],0);
  end
  else  impnovedades.Enabled :=true;
end;
if nro=1 then begin
  DataClie.Free;
  DataClie:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=DataClie;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if r1.Checked  then begin
   txtw:='SELECT id, ParcelasNovedades.Nroaccion, Novedad, CASE WHEN fecharesuelto is not null THEN ''SI'' ELSE ''NO'' END AS Resuelto, '
   + 'convert(char(10),fechaalta,103) as fechaalta, convert(char(10),fecharesuelto,103) as fecharesuelto,'
   + 'parcelas.Sector ,parcelas.Parcela'
   + ' FROM ParcelasNovedades inner join Parcelas on Parcelas.NroAccion = ParcelasNovedades.Nroaccion '
   //+ ' WHERE (fechaalta = ' + chr(39)+ trim(fecemi.Text) + chr(39) + ' ) order by 1 desc';
   + ' WHERE (convert(char(10),fechaalta,103) = ' + chr(39)+ trim(fecemi.Text) + chr(39) + ' ) order by 1 desc';
  end;
  if r2.Checked  then begin
   txtw:='SELECT id, ParcelasNovedades.Nroaccion, Novedad, CASE WHEN fecharesuelto is not null THEN ''SI'' ELSE ''NO'' END AS Resuelto, '
   + 'convert(char(10),fechaalta,103) as fechaalta, convert(char(10),fecharesuelto,103) as fecharesuelto,'
   + 'parcelas.Sector ,parcelas.Parcela'
   + ' FROM ParcelasNovedades inner join Parcelas on Parcelas.NroAccion = ParcelasNovedades.Nroaccion '
   + ' WHERE (ParcelasNovedades.Nroaccion = ' + trim(fecemi.Text) + ' ) order by 1 desc'; //order by 2';
  end;
  if r3.Checked  then begin
   txtw:='SELECT id, ParcelasNovedades.Nroaccion, Novedad, CASE WHEN fecharesuelto is not null THEN ''SI'' ELSE ''NO'' END AS Resuelto, '
   + 'convert(char(10),fechaalta,103) as fechaalta, convert(char(10),fecharesuelto,103) as fecharesuelto,'
   + 'parcelas.Sector ,parcelas.Parcela'
   + ' FROM ParcelasNovedades inner join Parcelas on Parcelas.NroAccion = ParcelasNovedades.Nroaccion '
   + ' WHERE (fechaalta >= ' + chr(39) + trim(fecnac.Text) + chr(39) + ' )'
   + ' and (fechaalta <= ' + chr(39) + trim(fecnac1.Text) + chr(39) + ' ) order by 1 desc'; //order by 2';
  end;
  if not Funciones.Listar(txtw,DataClie) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if DAtaclie.IsEmpty  then begin
    impnovedades.Enabled :=false;
    messagedlg('ERROR No se encontraron Novedades para esta consulta..', mtInformation,[mbok],0);
  end
  else  impnovedades.Enabled :=true;
end;
if nro=2 then begin //Datos de las facturas acumuladas
  grafico2.Series[0].Clear;
  grafico2.BottomAxis.Maximum:=7;
  grafico2.BottomAxis.Minimum:=0;
  grafico2.Title.Text.Clear;
  grafico2.BottomAxis.Title.Font.Size:=14;
  grafico2.BottomAxis.Title.Caption:='Cantidades';
  grafico2.LeftAxis.Title.Font.Size:=14;
  grafico2.LeftAxis.Title.Caption:='Novedades Resueltas';
  grafico2.Title.Font.Size:=14;
  grafico2.Title.Text.Add('Valores');

  DataSet2.Free;
  DataSet2:=TClientdataSet.Create(nil);
  DataSource2.DataSet:=DataSet2;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if r1.Checked=true then begin
   txtw:='SELECT case when Resuelto=0 then ''NO'' else ''SI'' end as NovedadesResueltas ,'
   + ' COUNT(Resuelto)  as CantNovedades FROM ParcelasNovedades where (CONVERT(char(10),fechaalta,103)='+ chr(39) + trim(fecemi.Text) + chr(39) +') group by Resuelto';
  end;
  if r2.Checked=true then begin
   txtw:='SELECT case when Resuelto=0 then ''NO'' else ''SI'' end as NovedadesResueltas ,'
   + ' COUNT(Resuelto)  as CantNovedades FROM ParcelasNovedades where (Nroaccion='+ trim(fecemi.Text)+') group by Resuelto';
  end;
  if r3.Checked=true then begin
   txtw:='SELECT case when Resuelto=0 then ''NO'' else ''SI'' end as NovedadesResueltas ,COUNT(Resuelto) as CantNovedades '
   + ' FROM ParcelasNovedades WHERE (fechaalta >= ' + chr(39) + trim(fecnac.Text) + chr(39) + ' )'
   + ' and (fechaalta <= ' + chr(39) + trim(fecnac1.Text) + chr(39) + ' ) group by Resuelto';
  end;
  if not Funciones.Listar(txtw,DataSet2) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
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

end;
procedure TParcelasNov.rnovedadClick(Sender: TObject);
var gf:integer;
    TodoOk1:boolean;
    txtw:widestring;
begin
gf:=messagedlg('Desea Resolver esta Novedad seleccionada?',mtWarning,[mbok,mbCancel],0);
  if gf = 1 then begin
   ParcelasNovedades:=TParcelasNovedades.Create(nil);
   ParcelasNovedades.ConnectionString:=modulo2.Conexion;
   txtw:='UPDATE ParcelasNovedades SET Resuelto = 1, fecharesuelto= getdate()'
   + ' WHERE (id =' + inttostr(nronov) + ')';
   TodoOk1:=ParcelasNovedades.ListarSinResp(txtw);
   ParcelasNovedades.Free;
   if TodoOk1 then begin
     messagedlg('Se ha RESUELTO esta Novedad con Exito',mtConfirmation,[mbok],0);
     edit1.Clear;
     edit2.Clear;
     edit3.Clear;
     if LaOpcion = 1 then coloca1(1)
     else coloca1(0);
     rnovedad.Enabled:=false;
   end
   else begin
     messagedlg('Error al RESOLVER esta NOVEDAD. Consulte con un Administrador',mtError,[mbok],0);
   end;
  end;
end;

procedure TParcelasNov.DBGrid2CellClick(Column: TColumn);
begin
if LaOpcion = 1 then begin
 if not DataClie.IsEmpty then begin
  rnovedad.Enabled:=true;
  nronov:=strtoint(trim(DataClie.Fields[0].AsString));
  edit1.Text:=trim(DataClie.Fields[1].AsString);
  edit2.Text:=trim(DataClie.Fields[2].AsString);
  edit3.Text:=trim(DataClie.Fields[4].AsString);
  if trim(DataClie.Fields[3].AsString)='NO' then rnovedad.Enabled:=true
  else
  begin
    messagedlg('Esta Novedad ya se Encuentra Resuelto.',mtInformation,[mbok],0);
    rnovedad.Enabled:=false;
  end;
 end;
end;
if LaOpcion = 2 then begin
 if not DataClie.IsEmpty then begin
  rnovedad.Enabled:=true;
  nronov:=strtoint(trim(DataClie.Fields[0].AsString));
  edit1.Text:=trim(DataClie.Fields[1].AsString);
  edit2.Text:=trim(DataClie.Fields[4].AsString);
  edit3.Text:=trim(DataClie.Fields[6].AsString);
  if trim(DataClie.Fields[5].AsString)='NO' then rnovedad.Enabled:=true
  else
  begin
    messagedlg('Esta Novedad ya se Encuentra Resuelto.',mtInformation,[mbok],0);
    rnovedad.Enabled:=false;
  end;
 end;
end;
end;

procedure TParcelasNov.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var t:integer;
begin
if not(DataClie.IsEmpty) then begin
 if trim(DataClie.Fields[3].Text) = 'SI' then t:=1
 else t:=2;
 case t of
 1:begin
  DBGrid2.Canvas.Brush.Color:=clLime;
  DBGrid2.Canvas.FillRect(Rect);
  DBGrid2.Canvas.Font.Color:= clBlack;
 end;
 2:begin
  DBGrid2.Canvas.Brush.Color:=clWindow;
  DBGrid2.Canvas.FillRect(Rect);
  DBGrid2.Canvas.Font.Color:= clBlack;
 end;
 end;
 DBGrid2.DefaultDrawColumnCell(Rect,Datacol,Column,State);
end;
end;

procedure TParcelasNov.vernovedadClick(Sender: TObject);
begin
if r2.Checked  then begin
 if (trim(FECEMI.Text) = '0')  or (trim(FECEMI.Text) = '') then begin
  messagedlg('ERROR!!... El N° de Accion es Incorrecto ',mterror,[mbok],0);
  FECEMI.SetFocus;
 end
 else begin
  coloca1(1);
  coloca1(2);
 end;
end
else begin
 if r3.Checked  then begin
  if (trim(FECnac.Text) = '/  /')  or (trim(FECnac1.Text) = '/  /') then begin
   messagedlg('ERROR!!... Alguna de las Fechas es Incorrecto ',mterror,[mbok],0);
   FECnac.SetFocus;
  end
  else begin
   coloca1(1);
   coloca1(2);
  end;
 end
 else begin
  coloca1(1);
  coloca1(2);
 end;
end;

end;

procedure TParcelasNov.saleClick(Sender: TObject);
begin
close;
end;

procedure TParcelasNov.impnovedadesClick(Sender: TObject);
begin
rvnov.Execute;
end;

procedure TParcelasNov.RvNovPrint(Sender: TObject);
var posfx,posfy,final,salto:double;
var t,y,hoja,nro:integer;
var txt:string;
var pso:boolean;

 Function Logo(posx,posy:double;vaf:integer):double;
   var Imagen1,MarcaAgua:TBitMap;
       PathLogo,PathLogo1:string;
   begin
   with RvNov do begin
     Imagen1 := TBitMap.Create;
     PathLogo:=modulo2.path_todo + '\Imagenes\' + modulo2.INI1.ReadString('Resumen Caja','Imagen1','');
     if FileExists(PathLogo) then begin
       Image1.Picture.LoadFromFile(PathLogo);
       Imagen1.Assign(Image1.Picture.Graphic);
       BaseReport.PrintBitmapRect(posx+6,posy+2,posx+30,posy+22,Imagen1);
     end;
     Imagen1.Free;
     BaseReport.Rectangle(posx+2,posy+1,posx+275,posy+23);
     BaseReport.SetFont('Arial Black',9);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+34,posy+5,'CARMELO MONTE S.A. Servicios & Mandatos');
     BaseReport.SetFont('Arial Black',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+34,posy+9,modulo2.INI1.ReadString('Resumen Planillas','Titulo2',''));
     BaseReport.SetFont('Arial',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+180,posy+22,'Pág.: ' + inttostr(vaf));
     BaseReport.PrintXY(posx+200,posy+22,'Usu Imp.: ' + inttostr(modulo2.nro_usu) + ' - Fec. Imp.:' + strcut(Fec_System(),10));
     BaseReport.SetFont('Arial',10);
     BaseReport.FontColor:=clBlack;
     RvNov.BaseReport.SetFont('Arial Black',8);
     RvNov.BaseReport.FontColor:=clBlack;
     if r1.Checked then RvNov.BaseReport.PrintXY(posfx+34,posfy+17,'LISTA DE NOVEDADES DE FECHA : ' + TRIM(fecemi.Text));
     if r2.Checked then RvNov.BaseReport.PrintXY(posfx+34,posfy+17,'LISTA DE NOVEDADES DE ACCION NRO: ' + TRIM(fecemi.Text));
     if r3.Checked then RvNov.BaseReport.PrintXY(posfx+34,posfy+17,'LISTA DE NOVEDADES DESDE FECHA : ' + TRIM(FECNAC.Text) + '   HASTA: ' + TRIM(FECNAC1.Text));
     Logo:=posy+19;
   end;
   end;

  Function GrillaCabecera(posx,posy:double;texto:string):double;
  var t:integer;
  begin
   with RvNov do begin
    BaseReport.Rectangle(posx+2,posy,posx+275,posy+5);
    for t:=1 to length(Camp)-1 do begin
    BaseReport.Rectangle(posx + PosH[t]-2,posy,posx + PosH[t]-2,posy+5);
    end;
   end;
    RvNov.BaseReport.SetFont('Arial Black',7);
    RvNov.BaseReport.FontColor:=clBlack;
    for t:=0 to length(Camp)-1 do begin
      RvNov.BaseReport.PrintXY(posx + PosH[t],posy+4,TxtCamp[t]);
   end;
  Result:=posy+5;
  end;

  /// Grilla Detalle
  Function GrillaDetalle(posx,posy:double;texto:string):double;
  var t:integer;
  begin
  RvNov.BaseReport.SetFont('Arial',7);
  RvNov.BaseReport.FontColor:=clBlack;
    for t:=0 to length(Camp)-1 do
     RvNov.BaseReport.PrintXY(posx + PosH[t],posy+4,HackTable(FindComponent(texto)).Fields[Camp[t]].AsString);
    Result:=posy+4;
  end;

  //// Grilla Recuadro
  Function GrillaRecuadro(posx,posy,posy2:double):double;
  var t:integer;
  begin
  with RvNov do begin
    BaseReport.Rectangle(posx+2,posy,posx+275,posy2);
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
  {id, ParcelasNovedades.Nroaccion, Novedad,  Resuelto, '
    + 'fechaalta, fecharesuelto,'
    + 'parcelas.Sector ,parcelas.Parcela}
  Camp[0]:=1; Camp[1]:=6; Camp[2]:=7; Camp[3]:=3; Camp[4]:=2; Camp[5]:=4; Camp[6]:=5;
  TxtCamp[0]:='Accion';  TxtCamp[1]:='Sector'; TxtCamp[2]:='Parcela';
  TxtCamp[3]:='Resuelto';  TxtCamp[4]:='Novedades'; TxtCamp[5]:='FechaNov.';  TxtCamp[6]:='FechaResuelto';
  PosH[0]:=4; PosH[1]:=17; PosH[2]:=29; PosH[3]:=43; PosH[4]:=60; PosH[5]:= 235;   PosH[6]:=255;

  T8.Close;
  T8.CloneCursor(DataClie,false,true);
  txt:='T8';
  final:=GrillaCabecera(posfx,posfy+5,txt);
  posfy:=final;
  pso:=false;

  for y:=1 to HackTable(findcomponent(txt)).RecordCount do begin
    HackTable(FindComponent(txt)).RecNo:=y;
    if pso then RvNov.BaseReport.Rectangle(posfx+2,posfy+1,posfx+275,posfy+1)
    else pso:=true;
    posfy:=GrillaDetalle(posfx,posfy,txt);
    if posfy > 180 then begin
      posfy:=GrillaRecuadro(posfx,final,posfy+2);
      posfx:=1.5;
      posfy:=2;
      hoja:=hoja+1;
      RvNov.BaseReport.NewPage;
      posfy:=Logo(posfx,posfy,hoja);
      final:=GrillaCabecera(posfx,posfy+5,txt);
      posfy:=final;pso:=false;
    end;
  end;
  if pso then posfy:=GrillaRecuadro(posfx,final,posfy+2);
  except
end;
end;


procedure TParcelasNov.R1Click(Sender: TObject);
begin
vernovedad.Visible:=false;
fecnac.Visible:=false;
fecnac1.Visible:=false;
label4.Visible:=false;
label5.Visible:=false;
label6.Visible:=false;
vernovedad.Enabled:=false;
impnovedades.Enabled :=false;
fecemi.Enabled:=false;
calendario.Visible:=true;
calendario.SetFocus;
end;

procedure TParcelasNov.R2Click(Sender: TObject);
begin
  vernovedad.Visible:=true;
  fecnac.Visible:=false;
  fecnac1.Visible:=false;
  label5.Visible:=false;
  label6.Visible:=false;
  label4.Visible:=true;
  vernovedad.Enabled:=false;
  impnovedades.Enabled :=false;
  calendario.Visible:=false;
  fecemi.Visible :=true;
  fecemi.Enabled:=true;
  fecemi.Clear;
  fecemi.SetFocus;
end;

procedure TParcelasNov.FECEMIExit(Sender: TObject);
begin
//  if r2.Checked  then begin
//    if (trim(FECEMI.Text) = '0')  or (trim(FECEMI.Text) = '') then begin
//    messagedlg('ERROR!!... El N° de Accion es Incorrecto '
//    ,mterror,[mbok],0);
//    FECEMI.SetFocus;
//  end
//end;
end;

procedure TParcelasNov.FECEMIKeyPress(Sender: TObject; var Key: Char);
begin
if r2.Checked  then begin
  if key = #13 then begin
    Key := #0;
    vernovedad.Enabled:=true;
    vernovedad.SetFocus;
end
else begin
  if ( StrScan('0123456789.',Key) <> nil ) or
      ( Key = Char(VK_BACK) ) then
   else Key := #0;
end;
end;

end;

procedure TParcelasNov.R3Click(Sender: TObject);
begin
vernovedad.Visible:=true;
label4.Visible:=true;
vernovedad.Enabled:=false;
impnovedades.Enabled :=false;
calendario.Visible:=false;
fecemi.Visible:=false;
label4.Visible:=false;
label5.Visible:=true;
label6.Visible:=true;
fecnac.Visible:=true;
fecnac1.Visible:=true;
//fecemi.Clear;
fecnac.SetFocus;
end;

procedure TParcelasNov.FECNACExit(Sender: TObject);
var kl:Tdatetime;
begin
//try
//  kl:=strtodate(trim(FECNAC.Text));
//except
//  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
//  FECNAC.SetFocus;
//end;
end;

procedure TParcelasNov.FECNACKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
   Key := #0;
   fecnac1.SetFocus;
end;
end;

procedure TParcelasNov.fecnac1Exit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(FECNAC1.Text));
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  FECNAC1.SetFocus;
end;
end;

procedure TParcelasNov.fecnac1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
   Key := #0;
   vernovedad.Enabled:=true;
   vernovedad.SetFocus;
end;
end;

end.

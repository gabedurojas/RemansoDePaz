unit ComprobantesFaltantes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, JvExDBGrids, JvDBGrid, StdCtrls, Buttons,DateUtils,
  StrUtils,WSDLIntf,ADODB, ClaseComprobantesCobrados,
  JvExButtons, JvBitBtn,ClaseFunciones,Unidad, DB, ComCtrls, Mask,DBClient,ClaseTiposSectores,
  RpDefine, RpBase, RpSystem,ExtCtrls,ClaseSistemas, JvExComCtrls,
  JvProgressBar;
type HackTable = class(TADOTable);
type
  TCompFaltantes = class(TForm)
    DataSource1: TDataSource;
    Barra1: TStatusBar;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    Sector: TComboBox;
    labusque: TJvBitBtn;
    print: TJvBitBtn;
    DataSource2: TDataSource;
    Image1: TImage;
    JvBitBtn1: TJvBitBtn;
    PC2: TPageControl;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    FECNAC: TMaskEdit;
    Label6: TLabel;
    Label20: TLabel;
    TPOTALON: TComboBox;
    Label18: TLabel;
    PV: TComboBox;
    RvS1: TRvSystem;
    exporta: TButton;
    RE5: TRichEdit;
    T8: TClientDataSet;
    Label1: TLabel;
    FECNAC1: TMaskEdit;
    CheckBox1: TCheckBox;
    GroupBox1: TGroupBox;
    DBGrid2: TDBGrid;
    GroupBox2: TGroupBox;
    Edit2: TEdit;
    Proceso: TJvProgressBar;
    Panel1: TPanel;
    anula: TJvBitBtn;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    JvBitBtn2: TJvBitBtn;
    fecanula: TMaskEdit;
    procedure FormActivate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure FormCreate(Sender: TObject);
    procedure SectorExit(Sender: TObject);
    procedure SectorKeyPress(Sender: TObject; var Key: Char);
    procedure labusqueClick(Sender: TObject);
    procedure printClick(Sender: TObject);
    procedure FECNACExit(Sender: TObject);
    procedure FECNACKeyPress(Sender: TObject; var Key: Char);
    procedure TPOTALONExit(Sender: TObject);
    procedure TPOTALONKeyPress(Sender: TObject; var Key: Char);
    procedure PVKeyPress(Sender: TObject; var Key: Char);
    procedure PVExit(Sender: TObject);
    procedure RvS1Print(Sender: TObject);
    procedure exportaClick(Sender: TObject);
    procedure FECNAC1Exit(Sender: TObject);
    procedure FECNAC1KeyPress(Sender: TObject; var Key: Char);
    procedure CheckBox1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Exit(Sender: TObject);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure anulaClick(Sender: TObject);
    procedure fecanulaExit(Sender: TObject);
    procedure fecanulaKeyPress(Sender: TObject; var Key: Char);
    procedure JvBitBtn2Click(Sender: TObject);
  private
    gh:boolean;
    action:integer;
    Sistemas:TSistemas;
    PosH:Array [0..4] of Double;
    Camp:Array [0..4] of Integer;
    TxtCamp:Array [0..4] of String;
    ComprobantesCobrados:TComprobantesCobrados;
    { Private declarations }
  public
      Funciones:TFuncionesVarias;
      Dtcombo,DataSetC,DataSet,DataSet1,DtComboC,DataSetT:TClientDataSet;
      IdCombos:array of array of string; // para los combobox
      idreser:integer;
      fecday,MotAnula:string;
    { Public declarations }
  end;

var
  CompFaltantes: TCompFaltantes;

implementation

uses Modulo,SplashFormNro;
{$R *.dfm}

procedure TCompFaltantes.FormActivate(Sender: TObject);
begin
 if not gh then begin
  gh:=true;
  setlength(IdCombos,2);
  fecday :=LeftStr(Fec_System(),10);
  fecnac.Text:=LeftStr(Fec_System(),10);
  fecnac1.Text:=LeftStr(Fec_System(),10);
  fecanula.Text:=strcut(Fec_System(),10);
  try
   image1.Picture.LoadFromFile(modulo2.path_todo + '\Imagenes\LogoCarmeloMonte.jpg');
  except
  end;
  coloca1(1);
  coloca1(2);
  PC1.ActivePage:=PC1.Pages[0];
  PC2.ActivePage:=PC2.Pages[0];
  CheckBox1.Checked:=true;
  sector.SetFocus;
  Panel1.Visible:=false;
  print.Enabled:=false;
  JvBitBtn2.Enabled:=false;
 end;
end;

procedure TCompFaltantes.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TCompFaltantes.Coloca1(nro:byte);
var sec:string;
    txtw:widestring;
    TiposSectores:TTiposSectores;
    t,NroDni:integer;
    accion:variant;
    Param:TWideStrings;
begin
if nro=0 then begin
  DataSet.Free;
  DataSet:=TClientDataSet.Create(nil);
  DataSource1.DataSet:=DataSet;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if not CheckBox1.Checked then begin
   txtw:='select NroTalonario,FechaEntrega,CantidadTalonario,CantidadFaltantes,Cobrador,TipoComprobante,Desde,Hasta'
   + ' from ComprobantesEntregadosFaltantesxfechas (' + CHR(39) + TRIM(FECNAC.Text) + CHR(39)
   + ',' + CHR(39) + TRIM(FECNAC1.Text) + CHR(39)
   + ',' + IdCombos[0,SECTOR.ItemIndex]
   + ',' + CHR(39) + TRIM(TPOTALON.Text) + CHR(39)
   + ',' + trim(pv.Text) + ',0' + ')';
  end
  else begin
   txtw:='select NroTalonario,FechaEntrega,CantidadTalonario,CantidadFaltantes,Cobrador,TipoComprobante,Desde,Hasta'
   + ' from ComprobantesEntregadosFaltantesxfechas (' + CHR(39) + TRIM(FECNAC.Text) + CHR(39)
   + ',' + CHR(39) + TRIM(FECNAC1.Text) + CHR(39)
   + ',' + IdCombos[0,SECTOR.ItemIndex]
   + ',' + CHR(39) + TRIM(TPOTALON.Text) + CHR(39)
   + ',' + trim(pv.Text) + ',1' + ')';
  end;
  {
   txtw:='select NroTalonario,FechaEntrega,CantidadTalonario,CantidadFaltantes,Cobrador,TipoComprobante,Desde,Hasta'
  + ' from ComprobantesEntregadosFaltantes ('  + CHR(39) + TRIM(FECNAC.Text) + CHR(39)
  + ',' + IdCombos[0,SECTOR.ItemIndex]
  + ',' + CHR(39) + TRIM(TPOTALON.Text) + CHR(39)
  + ',' + trim(pv.Text) + ')';
  }
  if not Funciones.Listar(txtw,DataSet) then
   messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if DataSet.RecordCount > 0 then begin
   print.Enabled:=true;
   dbgrid1.Columns[0].Width:=80;
   dbgrid1.Columns[1].Width:=80;
   dbgrid1.Columns[2].Width:=50;
   dbgrid1.Columns[3].Width:=80;
   dbgrid1.Columns[4].Width:=200;
   dbgrid1.Columns[5].Width:=100;
  end
  else begin
    print.Enabled:=false;
  end;
end;
if nro=1 then begin //Combo Talonarios
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if not Funciones.Listar('SELECT IDTipoComprobante,DetalleComprobante FROM TiposComprobantes '
  + 'WHERE (Cobranzas=1) order by 1 desc',DtCombo) then
   messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
   SetLength(IdCombos[1],DtCombo.RecordCount);
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    TPOTALON.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
    IdCombos[1,t-1]:=DtCombo.Fields[0].AsString;
   end;
  end;
  Funciones.Free;
  TPOTALON.ItemIndex:=0;
end;
if nro=2 then begin   //tipos cobradores
  SECTOR.Clear;
  DtCombo.Free;
  Dtcombo:=TClientDataSet.Create(nil);
  TiposSectores:=TTiposSectores.Create(nil);
  TiposSectores.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT distinct Nombre,CUIF FROM VLosCobradores ORDER BY Nombre';
  if TiposSectores.Listar(txtw,DtCombo) then begin
   SetLength(IdCombos[0],DtCombo.RecordCount);
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    SECTOR.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
    IdCombos[0,t-1]:=DtCombo.Fields[1].AsString;
   end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  TiposSectores.Free;
  SECTOR.ItemIndex:=0;
end;
if nro=5 then begin
  DtComboC.Free;
  DtcomboC:=TClientDataSet.Create(nil);
  DataSource2.DataSet:=DtcomboC;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if not CheckBox1.Checked then begin
   txtw:='select NroTalonario,CuifCobrador,Cobrador ,DetalleComprobante,PuntoVenta,Fecha,Cantidad,IdTipoComprobante,NroComprobante'
   + ' from ComprobantesEntregadosFaltantesDetallexFechas (' + CHR(39) + TRIM(FECNAC.Text) + CHR(39)
   + ',' + CHR(39) + TRIM(FECNAC1.Text) + CHR(39)
   + ',' + IdCombos[0,SECTOR.ItemIndex]
   + ',' + CHR(39) + TRIM(TPOTALON.Text) + CHR(39)
   + ',' + trim(pv.Text)  + ',0' + ') order by NroTalonario,NroComprobante';
  end
  else begin
   txtw:='select NroTalonario,CuifCobrador,Cobrador ,DetalleComprobante,PuntoVenta,Fecha,Cantidad,IdTipoComprobante,NroComprobante'
   + ' from ComprobantesEntregadosFaltantesDetallexFechas (' + CHR(39) + TRIM(FECNAC.Text) + CHR(39)
   + ',' + CHR(39) + TRIM(FECNAC1.Text) + CHR(39)
   + ',' + IdCombos[0,SECTOR.ItemIndex]
   + ',' + CHR(39) + TRIM(TPOTALON.Text) + CHR(39)
   + ',' + trim(pv.Text)  + ',1' + ') order by NroTalonario,NroComprobante';
  end;
  if not Funciones.Listar(txtw,DtComboC) then
   messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if dtcomboc.RecordCount > 0 then begin
   print.Enabled:=true;
   dbgrid2.Columns[0].Width:=65;
   dbgrid2.Columns[1].Width:=70;
   dbgrid2.Columns[2].Width:=200;
   dbgrid2.Columns[3].Width:=70;
   dbgrid2.Columns[4].Width:=70;
   dbgrid2.Columns[5].Width:=50;
  end
  else begin
    print.Enabled:=false;
  end;
end;
end;

procedure TCompFaltantes.SectorExit(Sender: TObject);
begin
if Sector.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Gestor Ingresado!!',mterror,[mbok],0);
  Sector.SetFocus;
end
else begin
 edit2.Text :=IdCombos[0,sector.ItemIndex];
end;
end;

procedure TCompFaltantes.SectorKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  FECNAC.SetFocus;
 end;
end;

procedure TCompFaltantes.labusqueClick(Sender: TObject);
begin
 Coloca1(0);
 coloca1(5);
 if (Datasource2.DataSet.RecordCount = 0) then begin
  Barra1.Panels[0].Text:='Sin Datos en Grilla';
  IF application.MessageBox('COMPROBANTES FALTANTES NO encontrados, !Desea Buscar Reservas por otro Sector!?','Advertencia'
    ,mb_OKcancel+mb_IconHAnd) = IdOk then begin
    PC1.Enabled:=true;
    sector.SetFocus;
  end
  else begin
    PC1.Enabled:=true;
    Barra1.Panels[0].Text:='La opcion Busqueda fue Cancelada';
    labusque.SetFocus;
  end;
 end
 else begin
  PC2.ActivePage:=PC2.Pages[0];
  Barra1.Panels[1].Text:='Registos encontrados: ' + inttostr(Datasource2.DataSet.RecordCount);
  print.Enabled:=true;
  JvBitBtn2.Enabled :=true;
 end;
end;

procedure TCompFaltantes.printClick(Sender: TObject);
begin
rvs1.Execute;
end;

procedure TCompFaltantes.FECNACExit(Sender: TObject);
var kl:Tdatetime;
begin
 try
  kl:=strtodate(trim(FECNAC.Text));
 except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  FECNAC.SetFocus;
 end;
end;

procedure TCompFaltantes.FECNACKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
   Key := #0;
   fecnac1.SetFocus;
 end;
end;

procedure TCompFaltantes.TPOTALONExit(Sender: TObject);
begin
 if TPOTALON.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Talonario Ingresado!!',mterror,[mbok],0);
  TPOTALON.SetFocus;
 end;
end;

procedure TCompFaltantes.TPOTALONKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  //LABUSQUE.SetFocus;
  PV.SetFocus;
end;
end;

procedure TCompFaltantes.PVKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  labusque.SetFocus;
end;
end;

procedure TCompFaltantes.PVExit(Sender: TObject);
begin
if PV.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Punto de Venta Ingresado!!',mterror,[mbok],0);
  PV.SetFocus;
end;
end;

procedure TCompFaltantes.RvS1Print(Sender: TObject);
var posfx,posfy,final,salto:double;
var t,k,y,hoja:integer;
var txt,val:string;
var pso:boolean;
var sd,sd1,posn,posw:double;

   Function Logo(posx,posy:double;vaf:integer):double;
   var Imagen1:TBitMap;
       Fuente,PathLogo:string;
       Tamanio:integer;
   begin
    with RvS1 do begin
     Imagen1 := TBitMap.Create;
     Imagen1.Assign(image1.Picture.Graphic);
     BaseReport.PrintBitmapRect(posy+5,posy+7,posy+57,posy+18,Imagen1);
     Imagen1.Free;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+20);
     BaseReport.SetFont(Fuente,Tamanio);
     BaseReport.FontColor:=clBlack;
     BaseReport.SetFont('Arial',9);
     BaseReport.PrintXY(posfx+150,posfy+13,'Fecha Imp.: ' + LeftStr(Fec_System(),10));
     BaseReport.PrintXY(posfx+150,posfy+18,'Nº Pagina ' + inttostr(hoja) + '  -  UsuImp ' + inttostr(modulo2.nro_usu));
     BaseReport.SetFont('Arial Black',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+30);
     BaseReport.PrintXY(posx+5,posy+24,'REGISTRO AGRUPADOS DE COMPROBANTES FALTANTES ');
     BaseReport.PrintXY(posx+5,posy+28,'GESTOR: ' + TRIM(sector.Text));
     BaseReport.SetFont('Arial ',9);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+105,posy+28,'Desde Fecha: ' + TRIM(fecnac.Text) + ' - Hasta: ' + TRIM(fecnac1.Text));
     Logo:=posy+27;
    end;
   end;

   Function Mostrar1(posx,posy:double):double;
   var t,y:integer;
   begin
    with Rvs1 do begin
     BaseReport.SetFont('Arial',9);
     BaseReport.PrintXY(posx+4,posy +4 ,' -----  DATOS AGRUPADOS DE COMPROBANTES ----- ');
     posy:=posy + 5;
     BaseReport.Rectangle(posx+4,posy,posx+200,posy+5);
     BaseReport.Rectangle(posx+34,posy,posx+200,posy+5);
     BaseReport.Rectangle(posx+64,posy,posx+200,posy+5);
     BaseReport.Rectangle(posx+79,posy,posx+200,posy+5);
     BaseReport.Rectangle(posx+110,posy,posx+200,posy+5);
     BaseReport.Rectangle(posx+149,posy,posx+200,posy+5);
     BaseReport.Rectangle(posx+164,posy,posx+200,posy+5);
     BaseReport.Rectangle(posx+179,posy,posx+200,posy+5);

     BaseReport.PrintXY(posx+5,posy+4,'FechaEntrega');
     BaseReport.PrintXY(posx+35,posy+4,'NroTalonario');
     BaseReport.PrintXY(posx+65,posy+4,'Cantidad');
     BaseReport.PrintXY(posx+80,posy+4,'CantFaltantes');
     BaseReport.PrintXY(posx+111,posy+4,'TipoComprobante');
     BaseReport.PrintXY(posx+150,posy+4,'PtoVta');
     BaseReport.PrintXY(posx+165,posy+4,'Desde');
     BaseReport.PrintXY(posx+180,posy+4,'Hasta');
    end;
   END;

   Function GrillaCabecera(posx,posy:double;texto:string):double;
   var t:integer;
   begin
    with RvS1 do begin
     BaseReport.Rectangle(posx+4,posy,posx+200,posy+5);
     for t:=1 to length(Camp)-1 do begin
     BaseReport.Rectangle(posx + PosH[t]-2,posy,posx + PosH[t]-2,posy+5);
     end;
    end;
    Rvs1.BaseReport.SetFont('Arial Black',7);
    Rvs1.BaseReport.FontColor:=clBlack;
    for t:=0 to length(Camp)-1 do begin
     Rvs1.BaseReport.PrintXY(posx + PosH[t],posy+4,TxtCamp[t]);
    end;
    Result:=posy+5;
   end;

  /// Grilla Detalle
  Function GrillaDetalle(posx,posy:double;texto:string):double;
  var t:integer;
  begin
   Rvs1.BaseReport.SetFont('Arial',8);
   Rvs1.BaseReport.FontColor:=clBlack;
   for t:=0 to length(Camp)-1 do
     Rvs1.BaseReport.PrintXY(posx + PosH[t],posy+4,HackTable(FindComponent(texto)).Fields[Camp[t]].AsString);
     Result:=posy+4;
  end;

  //// Grilla Recuadro
  Function GrillaRecuadro(posx,posy,posy2:double):double;
  var t:integer;
  begin
   with RvS1 do begin
    BaseReport.Rectangle(posx+4,posy,posx+200,posy2);
    for t:=1 to length(Camp)-1 do begin
      BaseReport.Rectangle(posx + PosH[t]-2,posy,posx + PosH[t]-2,posy2);
    end;
   Result:=posy+4;
   end;
  end;

begin
 try
   posfx:=5.5;
   posfy:=5;
   salto:=4;
   final:=0;
   hoja:=1;
   posfy:=Logo(posfx,posfy,hoja)+ salto;   // llamamos al encabezado
   posfy:=Mostrar1(posfx,posfy)+ salto;
   posw:=posfy;
   sd1:=posn;
   posfy:=posfy+14;
   for t:=1 to datasource1.dataset.RecordCount do begin
    datasource1.dataset.RecNo:=t;
    posfy:=posfy-0.5;
    RVS1.BaseReport.SetFont('Arial',9);
    RVS1.BaseReport.PrintXY(posfx+6,posfy,trim(datasource1.dataset.Fields[1].AsString));
    RVS1.BaseReport.MoveTo(posw,posfy);
    RVS1.BaseReport.PrintLeft(trim(datasource1.dataset.Fields[0].AsString),posfx+35);
    RVS1.BaseReport.MoveTo(posw,posfy);
    RVS1.BaseReport.PrintLeft(trim(datasource1.dataset.Fields[2].AsString),posfx+66);
    RVS1.BaseReport.MoveTo(posw,posfy);
    RVS1.BaseReport.PrintLeft(trim(datasource1.dataset.Fields[3].AsString),posfx+80);
    RVS1.BaseReport.MoveTo(posw,posfy);
    RVS1.BaseReport.PrintLeft(trim(datasource1.dataset.Fields[5].AsString),posfx+111);
    RVS1.BaseReport.MoveTo(posw,posfy);
    RVS1.BaseReport.PrintLeft('2',posfx+150);
    RVS1.BaseReport.MoveTo(posw,posfy);
    RVS1.BaseReport.PrintLeft(trim(datasource1.dataset.Fields[6].AsString),posfx+165);
    RVS1.BaseReport.MoveTo(posw,posfy);
    RVS1.BaseReport.PrintLeft(trim(datasource1.dataset.Fields[7].AsString),posfx+180);
    RVS1.BaseReport.MoveTo(posw,posfy);
    posfy:=posfy+0.5;

     // hacemos la lineas internas de las grilla
    RVS1.BaseReport.Rectangle(posfx+4,posfy,posfx+200,posfy-4);
    RVS1.BaseReport.Rectangle(posfx+34,posfy,posfx+200,posfy-4);
    RVS1.BaseReport.Rectangle(posfx+64,posfy,posfx+200,posfy-4);
    RVS1.BaseReport.Rectangle(posfx+79,posfy,posfx+200,posfy-4);
    RVS1.BaseReport.Rectangle(posfx+110,posfy,posfx+200,posfy-4);
    RVS1.BaseReport.Rectangle(posfx+149,posfy,posfx+200,posfy-4);
    RVS1.BaseReport.Rectangle(posfx+164,posfy,posfx+200,posfy-4);
    RVS1.BaseReport.Rectangle(posfx+179,posfy,posfx+200,posfy-4);
    posfy:=posfy + salto;
   end;
   RVS1.BaseReport.PrintXY(posfx+4,posfy + 2,' ----- DETALLE DE LOS COMPROBANTES FALTANTES  ----- ');

  Camp[0]:=0; Camp[1]:=5; Camp[2]:=8;  Camp[3]:=3; Camp[4]:=4;
  TxtCamp[0]:='NroTalonario';  TxtCamp[1]:='FechaEntrega'; TxtCamp[2]:='NroComprobante';  TxtCamp[3]:='TipoComprobante';
  TxtCamp[4]:='PuntoVenta';
  PosH[0]:=5; PosH[1]:=40; PosH[2]:=70; PosH[3]:=120; PosH[4]:=150;

  T8.Close;
  T8.CloneCursor(DtcomboC,false,true);
  txt:='T8';

  final:=GrillaCabecera(posfx,posfy+5,txt);
  posfy:=final;
  pso:=false;
  for y:=1 to HackTable(findcomponent(txt)).RecordCount do begin
   HackTable(FindComponent(txt)).RecNo:=y;
   if pso then Rvs1.BaseReport.Rectangle(posfx+4,posfy+1,posfx+200,posfy+1)
   else pso:=true;
   posfy:=GrillaDetalle(posfx,posfy,txt);
   if posfy > 280 then begin
    posfy:=GrillaRecuadro(posfx,final,posfy+2);
    posfx:=1.5;
    posfy:=2;
    hoja:=hoja+1;
    RvS1.BaseReport.NewPage;
    posfy:=Logo(posfx,posfy,hoja);  // llamamos al encabezado
    final:=GrillaCabecera(posfx,posfy+5,txt);
    posfy:=final;
    pso:=false;
   end;
  end;
 except
 //
 end;
end;

procedure TCompFaltantes.exportaClick(Sender: TObject);
var texto:widestring;
var txt:string;
var t,y:integer;
begin
 RE5.Clear;
 texto:='';
 RE5.Lines.Add('Comprobantes Faltantes Agrupados');
 for t:=0 to DataSet.FieldCount-1 do begin
   texto:=texto + DataSet.Fields[t].FieldName + chr(9);
 end;
 RE5.Lines.Add(texto);
 for y:=1 to DataSet.RecordCount do begin
  DataSet.RecNo:=y;
  texto:='';
  for t:=0 to DataSet.FieldCount-1 do begin
   texto:=texto + DataSet.Fields[t].AsString + chr(9);
  end;
 RE5.Lines.Add(texto);
 end;

 texto:='';
 RE5.Lines.Add('');
 RE5.Lines.Add('Detalle de Comprobantes Faltantes');

 for t:=0 to DtComboC.FieldCount-1 do begin
  texto:=texto + DtComboC.Fields[t].FieldName + chr(9);
 end;
 RE5.Lines.Add(texto);
 
 for y:=1 to DtComboC.RecordCount do begin
  DtComboC.RecNo:=y;
  texto:='';
  for t:=0 to DtComboC.FieldCount-1 do begin
    texto:=texto + DtComboC.Fields[t].AsString + chr(9);
  end;
  RE5.Lines.Add(texto);
 end;

 RE5.SelectAll;
 RE5.CopyToClipboard;
 messagedlgpos('Se Copiaron los Datos listo para pegarlos a Excel',mtwarning,[mbok],0,screen.Width div 3,screen.Height div 3);
end;

procedure TCompFaltantes.FECNAC1Exit(Sender: TObject);
var kl:Tdatetime;
begin
 try
  kl:=strtodate(trim(FECNAC1.Text));
 except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  FECNAC1.SetFocus;
 end;
end;

procedure TCompFaltantes.FECNAC1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
   Key := #0;
   TPOTALON.SetFocus;
end;
end;

procedure TCompFaltantes.CheckBox1Click(Sender: TObject);
begin
 if CheckBox1.Checked = true then begin
   tpotalon.Enabled:=true;
   pv.Enabled:=true;
 end
 else begin
   tpotalon.Enabled:=false;
   pv.Enabled:=false;
 end;
end;

procedure TCompFaltantes.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  if trim(Edit1.Text) = '' then begin
   messagedlg('Error!! Ingrese un Nro de Planilla Válida.',mterror,[mbok],0);
   Edit1.SetFocus;
   anula.Enabled :=false;
  end
  else begin
   anula.Enabled:=true;
   anula.SetFocus;
  end;
 end
 else begin
  if ( StrScan('0123456789',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;
end;

procedure TCompFaltantes.Edit1Exit(Sender: TObject);
begin
 if trim(Edit1.Text) = '' then begin
  messagedlg('Error!! Ingrese un Nro de Planilla Válida.',mterror,[mbok],0);
  Edit1.SetFocus;
  anula.Enabled :=false;
 end
 else begin
  anula.Enabled:=true;
  anula.SetFocus;
 end;
end;

procedure TCompFaltantes.JvBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TCompFaltantes.anulaClick(Sender: TObject);
var gf,t,p:integer;
var ElId:string;
var TodoOk1,TodoOk,TodoOkPosnet:boolean;
begin
 gf:=messagedlgpos('Confirma la Anulacion de todos estos Comprobantes?',mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
 if gf = 1 then begin
  Proceso.Position:=0;
  Proceso.Max:= datasource2.DataSet.RecordCount - 1;
  for t:=1 to datasource2.dataset.RecordCount do begin
    datasource2.dataset.RecNo:=t;
    ComprobantesCobrados:=TComprobantesCobrados.Create(nil);
    ComprobantesCobrados.ConnectionString:=modulo2.Conexion;
    ComprobantesCobrados.C_NroComprobante_IX1:=trim(datasource2.dataset.Fields[8].AsString);
    //ComprobantesCobrados.C_NroComprobante_IX1:=StrFill(PV.Text,3,'0','') + '-' + StrFill(COMPROB.Text,7,'0','');
    ComprobantesCobrados.C_IdTipoComprobante_IX2:='20';
    ComprobantesCobrados.C_NroFormulario_IX3:='FRM-17-01';
    ComprobantesCobrados.C_NroPlanilla_IX4:=trim(edit1.Text);
    ComprobantesCobrados.C_FechaPlanilla_IX5:=trim(fecanula.Text);
    ComprobantesCobrados.C_CuifCobrador_IX6:=trim(edit2.Text);
    ComprobantesCobrados.C_Observ:='ANULACION MASIVA DE COMPROBANTES';
    ComprobantesCobrados.C_EsMinoritario:=true;
    ComprobantesCobrados.C_PagoAnual:=false;
    ComprobantesCobrados.C_AnioAnual:=null;
    ComprobantesCobrados.C_Identificador:=null;
    ComprobantesCobrados.C_NroTipoObjeto_IX7:=null;
    ComprobantesCobrados.C_FechaCobro_IX8:=trim(fecday);
    ComprobantesCobrados.C_Importe:='0.00';
    ComprobantesCobrados.C_GastoAdmin:='0.00';
    ComprobantesCobrados.C_Porcentaje:='0.00';
    ComprobantesCobrados.C_Usu_A:=IntToStr(modulo2.nro_usu);
    ComprobantesCobrados.C_Anulado:=true;
    ComprobantesCobrados.C_FechaAnula:=trim(fecday);
    ComprobantesCobrados.C_UsuAnula:=IntToStr(modulo2.nro_usu);
    ComprobantesCobrados.C_MotivoAnula:='ANULACION MASIVA DE COMPROBANTES';
    ComprobantesCobrados.C_DeAdmin:=false;
    ComprobantesCobrados.C_NroCheque:='';
    ComprobantesCobrados.C_Banco:='';
    ComprobantesCobrados.C_IdFormaPago:='2';
    ComprobantesCobrados.C_IdServicio:=null;
    ComprobantesCobrados.C_NroFactura_IX9 :='';
    TodoOk1:=ComprobantesCobrados.Agrega;
   // ElId:=ComprobantesCobrados.Identidad;
    ComprobantesCobrados.Free;
    Proceso.Position:=t;
  end;
  messagedlg('OK!!... El Proceso de Anulacion se realizao correctamente...',mtConfirmation,[mbok],0);
  edit1.Clear;
  JvBitBtn2.Enabled :=false;
  labusque.SetFocus;
  Proceso.Position:=0;
  labusque.Click;
  PANEL1.Visible:=FALSE;
 end;
end;

procedure TCompFaltantes.fecanulaExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(fecanula.Text));
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  fecanula.SetFocus;
end;
end;

procedure TCompFaltantes.fecanulaKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  edit1.SetFocus;
end;
end;

procedure TCompFaltantes.JvBitBtn2Click(Sender: TObject);
begin
 panel1.Visible :=true;
 fecanula.SetFocus ;
end;

end.

unit Con_PagosAnuales;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, JvExGrids, JvStringGrid, StdCtrls, ExtCtrls, JvgGroupBox,
  Buttons, JvExButtons, JvBitBtn, ComCtrls, ToolWin, ClaseFunciones,ClaseSistemas, DBClient,
  DB, DBGrids, JvExDBGrids, JvDBGrid, RpDefine, RpBase, RpSystem,StrUtils,Unidad,ADODB;

type HackTable = class(TADOTable);
type
  TCons_LosPagosAnuales = class(TForm)
    Barra1: TStatusBar;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    ToolButton2: TToolButton;
    ToolButton5: TToolButton;
    Limpiar: TJvBitBtn;
    ToolButton3: TToolButton;
    JvBitBtn1: TJvBitBtn;
    JvgGroupBox5: TJvgGroupBox;
    Bevel1: TBevel;
    Label15: TLabel;
    Buscar: TJvBitBtn;
    DataSource1: TDataSource;
    todos: TRichEdit;
    RvS: TRvSystem;
    T8: TClientDataSet;
    Image1: TImage;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TJvDBGrid;
    IMPRIME: TJvBitBtn;
    PERIODO: TComboBox;
    TabSheet2: TTabSheet;
    DBGrid2: TJvDBGrid;
    DataSource2: TDataSource;
    Label5: TLabel;
    Sector: TComboBox;
    exporta: TJvBitBtn;
    RE5: TRichEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure BuscarClick(Sender: TObject);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure LimpiarClick(Sender: TObject);
    procedure RvSPrint(Sender: TObject);
    procedure IMPRIMEClick(Sender: TObject);
    procedure PERIODOKeyPress(Sender: TObject; var Key: Char);
    procedure PERIODOExit(Sender: TObject);
    procedure SectorExit(Sender: TObject);
    procedure SectorKeyPress(Sender: TObject; var Key: Char);
    procedure exportaClick(Sender: TObject);
  private
    IdCombos:array of array of string;
    DataSet0,DataSet1,DtCombo:TClientDataSet;
    PosH:Array [0..7] of Double;
    Camp:Array [0..7] of Integer;
    TxtCamp:Array [0..7] of String;
    Funciones:TFuncionesVarias;
    { Private declarations }
  public
    gh:boolean;{ Public declarations }
  end;

var
  Cons_LosPagosAnuales: TCons_LosPagosAnuales;

implementation

uses Modulo;

{$R *.dfm}

procedure TCons_LosPagosAnuales.FormActivate(Sender: TObject);
begin
if not(gh) then begin
  gh:=true;
  PC1.ActivePage:=PC1.Pages[0];
  setlength(IdCombos,1);
  Coloca1(0);
  Coloca1(1);
  sector.SetFocus;
end;
end;

procedure TCons_LosPagosAnuales.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TCons_LosPagosAnuales.Coloca1(nro:byte);
var t:integer;
    NroTalon,NroCompr,CuifCob:variant;
begin
if nro = 0 then begin
  PERIODO.Clear;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if not Funciones.Listar('SELECT AnioCalendario,ValorActual FROM ParcelasMantenimientoPreciosAnuales where activo=1',DtCombo) then
  else begin
    for t:=1 to DtCombo.RecordCount do begin
      DtCombo.RecNo:=t;
      PERIODO.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
    end;
  end;
  Funciones.Free;
  PERIODO.ItemIndex:=0;
end;
if nro=1 then begin
    SECTOR.Clear;
    DtCombo.Free;
    DtCombo:=TClientdataSet.Create(nil);
    Funciones:=TFuncionesVarias.Create(nil);
    Funciones.ConnectionString:=modulo2.Conexion;
    if not Funciones.Listar('SELECT distinct Nombre,CUIF FROM VLosCobradores ORDER BY Nombre',DtCombo) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
    else begin
      SetLength(IdCombos[0],DtCombo.RecordCount);
      for t:=1 to DtCombo.RecordCount  do begin
        DtCombo.RecNo:=t;
        SECTOR.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
        IdCombos[0,t-1]:=DtCombo.Fields[1].AsString;
      end;
    end;
    Funciones.Free;
  SECTOR.ItemIndex:=0;
end;
if nro = 2 then begin
  Dataset0.Free;
  Dataset0:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=Dataset0;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if not Funciones.Listar('SELECT orden,NroAccion,TipoComprobante,NroComprobante,NroPlanilla,FechaPlanilla,Importe,AnioAnual,acumulado '
    + ' FROM Fn_VistaParcelasMantenimientoPagosAnuales ('+ IdCombos[0,SECTOR.ItemIndex] +','+ trim(periodo.Text) +',0)',Dataset0) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0) ;
  Funciones.Free;
      if Dataset0.RecordCount > 0 then begin
       Barra1.Panels[0].Text:='Cant. Registros: ' + inttostr(Dataset0.RecordCount);
       dbgrid1.Columns[0].Width:=60;
       dbgrid1.Columns[1].Width:=60;
       dbgrid1.Columns[2].Width:=80;
       dbgrid1.Columns[3].Width:=80;
       dbgrid1.Columns[4].Width:=60;
       dbgrid1.Columns[5].Width:=60;
       imprime.enabled:=true;
       exporta.Enabled:=true;
      end;
end;
if nro = 3 then begin
  Dataset1.Free;
  Dataset1:=TClientdataSet.Create(nil);
  DataSource2.DataSet:=Dataset1;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if not Funciones.Listar('SELECT periodo,subtotal as CantPagos FROM Fn_VistaParcelasMantenimientoPagosAnuales ('
  + IdCombos[0,SECTOR.ItemIndex] +','+ trim(periodo.Text) +',0) where subtotal <> '''' order by 1',Dataset1) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0) ;
  Funciones.Free;
      if Dataset1.RecordCount > 0 then begin
       dbgrid2.Columns[0].Width:=80;
       dbgrid2.Columns[1].Width:=100;
      end;
end;
end;

procedure TCons_LosPagosAnuales.BuscarClick(Sender: TObject);
begin
Coloca1(2);
Coloca1(3);
end;

procedure TCons_LosPagosAnuales.JvBitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TCons_LosPagosAnuales.LimpiarClick(Sender: TObject);
begin
DataSource1.DataSet:=nil;
DataSet0.Close;
IMPRIME.Enabled:=false;
end;

procedure TCons_LosPagosAnuales.RvSPrint(Sender: TObject);
var posfx,posfy,final,salto,posw:double;
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
     Rvs.BaseReport.SetFont('Arial Black',8);
     Rvs.BaseReport.FontColor:=clBlack;
     Rvs.BaseReport.PrintXY(posfx+34,posfy+17,'LISTA PAGOS ANUALES DEL COBRADOR ' + TRIM(SECTOR.Text) + ' AÑO: ' + trim(periodo.Text));
     Logo:=posy+25;
   end;
   end;

   Function Mostrar1(posx,posy:double):double;
   var t,y:integer;
   begin
     with RvS do begin
       BaseReport.PrintXY(posx+2,posy - 1,'Datos Agrupados');
       BaseReport.SetFont('Arial',8);
       BaseReport.Rectangle(posx+2,posy,posx+50,posy+5);
       BaseReport.Rectangle(posx+29,posy,posx+50,posy+5);

       BaseReport.PrintXY(posx+5,posy+4,'Periodos');
       BaseReport.PrintXY(posx+30,posy+4,'CantidadPagos');
     end;
   END;

   Function GrillaCabecera(posx,posy:double;texto:string):double;
   var t:integer;
   begin
     with RvS do begin
      BaseReport.Rectangle(posx+2,posy,posx+200,posy+5);
      for t:=1 to length(Camp)-1 do begin
      BaseReport.Rectangle(posx + PosH[t]-2,posy,posx + PosH[t]-2,posy+5);
      end;
     end;
      Rvs.BaseReport.SetFont('Arial Black',7);
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
  Rvs.BaseReport.SetFont('Arial',8);
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
  posfx:=5.5;
  posfy:=5;
  salto:=4;
  final:=0;
  hoja:=1;
  posfy:=Logo(posfx,posfy,hoja)+salto;
  posfy:=Mostrar1(posfx,posfy)+ salto;
  posw:=posfy;
  posfy:=posfy+9;
   for t:=1 to datasource2.dataset.RecordCount do begin
         datasource2.dataset.RecNo:=t;
         posfy:=posfy-0.5;
         RVS.BaseReport.SetFont('Arial',9);
         RVS.BaseReport.PrintXY(posfx+6,posfy,trim(datasource2.dataset.Fields[0].AsString));
         RVS.BaseReport.MoveTo(posw,posfy);
         RVS.BaseReport.PrintLeft(trim(datasource2.dataset.Fields[1].AsString),posfx+30);
         RVS.BaseReport.MoveTo(posw,posfy);
         posfy:=posfy+0.5;

         // hacemos la lineas internas de las grilla
         RVS.BaseReport.Rectangle(posfx+2,posfy,posfx+50,posfy-4);
         RVS.BaseReport.Rectangle(posfx+29,posfy,posfx+50,posfy-4);
         posfy:=posfy + salto;
   end;

  Camp[0]:=0; Camp[1]:=1; Camp[2]:=2;  Camp[3]:=3; Camp[4]:=4; Camp[5]:=5; Camp[6]:=6; Camp[7]:=8;
  TxtCamp[0]:='Orden';  TxtCamp[1]:='NroAccion'; TxtCamp[2]:='TipoComprobante';  TxtCamp[3]:='NroComprobante';
  TxtCamp[4]:='NroPlanilla';  TxtCamp[5]:='FechaPlanilla'; TxtCamp[6]:='Importe';  TxtCamp[7]:='AcumxMes';
  PosH[0]:=3; PosH[1]:=13; PosH[2]:=30; PosH[3]:=60; PosH[4]:=90; PosH[5]:= 110; PosH[6]:=140; PosH[7]:=170;

  T8.Close;
  T8.CloneCursor(Dataset0,false,true);
  txt:='T8';

  final:=GrillaCabecera(posfx,posfy+5,txt);
  posfy:=final;
  pso:=false;

      for y:=1 to HackTable(findcomponent(txt)).RecordCount do begin
        HackTable(FindComponent(txt)).RecNo:=y;
        if pso then Rvs.BaseReport.Rectangle(posfx+2,posfy+1,posfx+200,posfy+1)
        else pso:=true;
        posfy:=GrillaDetalle(posfx,posfy,txt);
        if posfy > 290 then begin
          posfy:=GrillaRecuadro(posfx,final,posfy+2);
          posfx:=1.5;
          posfy:=2;
          hoja:=hoja+1;
          RvS.BaseReport.NewPage;
          posfy:=Logo(posfx,posfy,hoja);  // llamamos al encabezado
          final:=GrillaCabecera(posfx,posfy+5,txt);
          posfy:=final;
          pso:=false;
        end;
      end;
 except
 end;
end;

procedure TCons_LosPagosAnuales.IMPRIMEClick(Sender: TObject);
begin
rvs.Execute;
end;

procedure TCons_LosPagosAnuales.PERIODOKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  buscar.SetFocus;
end
else begin
  if ( StrScan('0123456789',Key) <> nil ) or
      ( Key = Char(VK_BACK) ) then
   else Key := #0;
end;
end;

procedure TCons_LosPagosAnuales.PERIODOExit(Sender: TObject);
begin
if PERIODO.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el PERIODO Ingresado!!',mterror,[mbok],0);
  PERIODO.SetFocus;
end;
end;

procedure TCons_LosPagosAnuales.SectorExit(Sender: TObject);
begin
if Sector.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Gestor Ingresado!!',mterror,[mbok],0);
  Sector.SetFocus;
end;
end;

procedure TCons_LosPagosAnuales.SectorKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  periodo.SetFocus;
end;
end;

procedure TCons_LosPagosAnuales.exportaClick(Sender: TObject);
var texto:widestring;
var txt:string;
var t,y:integer;
begin
RE5.Clear;
texto:='';
RE5.Lines.Add('Pagos Anuales Agrupados');
for t:=0 to DataSet1.FieldCount-1 do begin
  texto:=texto + DataSet1.Fields[t].FieldName + chr(9);
end;
RE5.Lines.Add(texto);
for y:=1 to DataSet1.RecordCount do begin
  DataSet1.RecNo:=y;
  texto:='';
  for t:=0 to DataSet1.FieldCount-1 do begin
    texto:=texto + DataSet1.Fields[t].AsString + chr(9);
  end;
  RE5.Lines.Add(texto);
end;

texto:='';
RE5.Lines.Add('');
RE5.Lines.Add('Detalle de Pagos Anuales ');

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

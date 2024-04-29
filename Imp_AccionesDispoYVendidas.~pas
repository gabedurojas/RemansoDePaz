unit Imp_AccionesDispoYVendidas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,DBClient, StdCtrls, DBCtrls, Grids, DBGrids, ComCtrls, StrUtils,
  DB, Mask, ADODB, Buttons, ExtCtrls,ClaseSistemas,
  WSDLIntf, Unidad, JvExGrids, JvStringGrid, JvExDBGrids, JvDBGrid,
  ToolWin, JvExButtons, JvBitBtn, RpDefine, RpBase, RpSystem, JvgGroupBox,
  TeEngine, TeeTools, TeeLegendScrollBar, Series, ErrorBar, TeeProcs, Chart;

type THackStringGrid = class(TStringGrid);
type HackTable = class(TADOTable);
type
  TImpAccionesDispoyVend = class(TForm)
    Barra1: TStatusBar;
    PC1: TPageControl;
    TabSheet3: TTabSheet;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    JvBitBtn3: TJvBitBtn;
    Label2: TLabel;
    RvS: TRvSystem;
    DataSource2: TDataSource;
    JvgGroupBox5: TJvgGroupBox;
    DBGrid2: TDBGrid;
    imprime: TJvBitBtn;
    Image1: TImage;
    T8: TClientDataSet;
    Image2: TImage;
    busca: TJvBitBtn;
    RE5: TRichEdit;
    Label3: TLabel;
    COBRADOR: TComboBox;
    BitBtn1: TBitBtn;
    DataSource1: TDataSource;
    RvS1: TRvSystem;
    procedure Coloca1(nro:byte);
    procedure FormActivate(Sender: TObject);
    procedure SALEClick(Sender: TObject);
    procedure ImprimeClick(Sender: TObject);
    procedure JvBitBtn3Click(Sender: TObject);
    procedure RvSPrint(Sender: TObject);
    procedure buscaClick(Sender: TObject);
    procedure COBRADORExit(Sender: TObject);
    procedure COBRADORKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure RvS1Print(Sender: TObject);
  private
    control:boolean;{Controla que no hubiere errores en la carga de datos}
    sumapos:double;
    { Private declarations }
  public
    // aca instancio la clase si la clase esta definida en el uses de la ventana
    Resultado,elcuif,ArchivoImg,id:string;
    pos,TipoCliente:integer;
    Sistemas:TSistemas;
    DataSet1,DtCombo,DataResul:TClientDataSet; //declaro el DAtaset de los Combobox
    IdCombos:array of array of string;

    PosH:Array [0..11] of Double;//Posiciones
    Camp:Array [0..11] of Integer;//Campos a Tomar en cuenta
    TxtCamp:Array [0..11] of String;//Textos de los Campos a Tomar en cuenta

    PosH1:Array [0..2] of Double;//Posiciones
    Camp1:Array [0..2] of Integer;//Campos a Tomar en cuenta
    TxtCamp1:Array [0..2] of String;//Textos de los Campos a Tomar en cuent
  end;

var
  ImpAccionesDispoyVend: TImpAccionesDispoyVend;

implementation

uses Modulo,ClaseFunciones,SplashFormNro;

{$R *.dfm}

procedure TImpAccionesDispoyVend.FormActivate(Sender: TObject);
begin
setlength(IdCombos,1);
PC1.ActivePage:=PC1.Pages[0];
imprime.Enabled:=false;
barra1.Panels[1].Text:='Procesando Acciones . . . ';
coloca1(2);
cobrador.SetFocus;
end;

procedure TImpAccionesDispoyVend.Coloca1(nro:byte);
var t,y,a:integer;
    txt,sex:string;
    txtw:widestring;
    Funciones:TFuncionesVarias;
    Sistema:TSistemas;
    Param:TWideStrings;
    NroDni,NroCuif,nroid:variant;

begin
if nro=0 then begin
//
end;
if nro=1 then begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  DataSource2.DataSet:=DtCombo;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='select * from RegistroAccionesTransferidasyDisponibles ('+ chr(39) +  trim(cobrador.Text) + chr(39) +') ';
  if not Funciones.Listar(txtw,DtCombo) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
    if not (DtCombo.IsEmpty) then begin
     imprime.Enabled:=true;
     busca.Enabled:=true;
     barra1.Panels[1].Text:='Total de Acciones:' + inttostr(DataSource2.DataSeT.RecordCount);
    end;
   dbgrid2.Columns[0].Width:=60;
   dbgrid2.Columns[1].Width:=60;
   dbgrid2.Columns[2].Width:=60;
   dbgrid2.Columns[3].Width:=60;
   dbgrid2.Columns[4].Width:=80;
   dbgrid2.Columns[5].Width:=80;
   dbgrid2.Columns[6].Width:=250;
   dbgrid2.Columns[7].Width:=80;
   dbgrid2.Columns[8].Width:=250;
   dbgrid2.Columns[9].Width:=80;
   dbgrid2.Columns[10].Width:=80;
   dbgrid2.Columns[11].Width:=80;
end;
if nro=2 then begin
  COBRADOR.Clear;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT Sector FROM TiposSectores where sector <> ''L''';
  if not Funciones.Listar(txtw,DtCombo) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
    SetLength(IdCombos[0],DtCombo.RecordCount);
    for t:=1 to DtCombo.RecordCount  do begin
      DtCombo.RecNo:=t;
      COBRADOR.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
      IdCombos[0,t-1]:=DtCombo.Fields[0].AsString;
    end;
  end;
  Funciones.Free;
  COBRADOR.ItemIndex:=0;
end;
if nro= 3 then  begin
//
end;
end;

procedure TImpAccionesDispoyVend.SALEClick(Sender: TObject);
begin
Close;
end;

procedure TImpAccionesDispoyVend.ImprimeClick(Sender: TObject);
var gf,t,y:integer;
var texto:widestring;
var txt:string;
begin
/////
gf:=messagedlgpos('Desea Exportar a Excel el Detalle de las Acciones de este Sector'
    ,mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
if gf = 1 then begin
   SplashConNro := TSplashConNro.Create(Application);
   SplashConNro.Show;
   SplashConNro.ProgressBar1.Max:=DataSource2.DataSeT.RecordCount - 1;
    RE5.Clear;texto:='';
    for t:=0 to DataSource2.DataSeT.FieldCount-1 do begin
      texto:=texto + DataSource2.DataSeT.Fields[t].FieldName + chr(9);
    end;
    RE5.Lines.Add(texto);
    for y:=1 to DataSource2.DataSeT.RecordCount do begin
      DataSource2.DataSeT.RecNo:=y;
      texto:='';
      SplashConNro.ProgressBar1.Position:=y;
      SplashConNro.Label3.Caption:=inttostr(y);
      SplashConNro.Update;
      for t:=0 to DataSource2.DataSeT.FieldCount-1 do begin
        texto:=texto + DataSource2.DataSeT.Fields[t].AsString + chr(9);
      end;
      RE5.Lines.Add(texto);
    end;
    RE5.SelectAll;
    RE5.CopyToClipboard;
    SplashConNro.Hide;
    SplashConNro.Free;
    messagedlgpos('Se Copiaron todos las Acciones, listo para pegarlos a Excel',mtwarning,[mbok],0,screen.Width div 3,screen.Height div 3);
end;
end;

procedure TImpAccionesDispoyVend.JvBitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TImpAccionesDispoyVend.RvSPrint(Sender: TObject);
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

     MarcaAgua := TBitMap.Create;
     PathLogo1:=modulo2.path_todo + '\Imagenes\RemansoAgua.jpg';
     if FileExists(PathLogo) then begin
       Image2.Picture.LoadFromFile(PathLogo);
       MarcaAgua.Assign(Image1.Picture.Graphic);
       BaseReport.PrintBitmapRect(posx+6,posy+2,posx+30,posy+22,MarcaAgua);
     end;
     MarcaAgua.Free;

     BaseReport.Rectangle(posx+2,posy+1,posx+275,posy+23);
     BaseReport.SetFont('Arial Black',9);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+34,posy+5,'CARMELO MONTE S.A. Servicios & Mandatos');
     BaseReport.SetFont('Arial Black',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+34,posy+9,modulo2.INI1.ReadString('Resumen Planillas','Titulo2',''));
     BaseReport.SetFont('Arial',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+260,posy+22,'Pág.: ' + inttostr(vaf));
     BaseReport.PrintXY(posx+240,posy+15,'Fecha Situacion: ' + strcut(Fec_System(), 10)); //'Usu Imp.: ' + inttostr(modulo2.nro_usu) +
     BaseReport.SetFont('Arial',10);
     BaseReport.FontColor:=clBlack;
     Rvs.BaseReport.SetFont('Arial Black',9);
     Rvs.BaseReport.FontColor:=clBlack;
     Rvs.BaseReport.PrintXY(posfx+34,posfy+15,'ZONA:  VIP HABILITADA');
     Rvs.BaseReport.PrintXY(posfx+110,posfy+15,'L I S T A D O    D E   P A R C E L A S   D I S P O N I B L E S');
     Rvs.BaseReport.PrintXY(posfx+34,posfy+20,'SECTOR: ' + trim(cobrador.Text));
     Logo:=posy+19;
   end;
   end;

   /////////  GRILLA de RECAUDACION
  Function GrillaCabecera(posx,posy:double;texto:string):double;
  var t:integer;
  begin
     with RvS do begin
      BaseReport.Rectangle(posx+2,posy,posx+275,posy+5);
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
  Rvs.BaseReport.SetFont('Arial',5);
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
    BaseReport.Rectangle(posx+2,posy,posx+275,posy2);
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

    Camp[0]:=0; Camp[1]:=1; Camp[2]:=2;  Camp[3]:=3;
    Camp[4]:=4; Camp[5]:=5; Camp[6]:=6; Camp[7]:=7;
    Camp[8]:=8; Camp[9]:=9; Camp[10]:=10; Camp[11]:=11;

    TxtCamp[0]:='Titulo';  TxtCamp[1]:='Parcela'; TxtCamp[2]:='Sector';  TxtCamp[3]:='Cat';
    TxtCamp[4]:='Cesion';   TxtCamp[5]:='Nro Cuenta';    TxtCamp[6]:='Actual Titular';     TxtCamp[7]:='NroDocumento';
    TxtCamp[8]:='Cedido a';   TxtCamp[9]:='Tipo';    TxtCamp[10]:='Nro Dni';      TxtCamp[11]:='Fecha Cesion';

    PosH[0]:=3;   PosH[1]:=13;  PosH[2]:=27;  PosH[3]:=38;
    PosH[4]:=50; PosH[5]:=65; PosH[6]:=95; PosH[7]:=155;
    PosH[8]:=175; PosH[9]:=230; PosH[10]:=240; PosH[11]:=255;

    T8.Close;
    T8.CloneCursor(DtCombo,false,true);
    txt:='T8';
    final:=GrillaCabecera(posfx,posfy+5,txt);
    posfy:=final;
    pso:=false;
        for y:=1 to HackTable(findcomponent(txt)).RecordCount do begin
          HackTable(FindComponent(txt)).RecNo:=y;
          if pso then Rvs.BaseReport.Rectangle(posfx+2,posfy+1,posfx+275,posfy+1)
          else pso:=true;
          posfy:=GrillaDetalle(posfx,posfy,txt);
          if posfy > 200 then begin
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
        if pso then posfy:=GrillaRecuadro(posfx,final,posfy+2);
   except
   end;
end;

procedure TImpAccionesDispoyVend.buscaClick(Sender: TObject);
var gf:integer;
begin
gf:=messagedlgpos('Desea Realizar la impreison las Acciones de este Sector'
    ,mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
if gf = 1 then begin
  rvs.Execute;
end;
end;

procedure TImpAccionesDispoyVend.COBRADORExit(Sender: TObject);
begin
 if cobrador.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Sector Ingresado!!',mterror,[mbok],0);
  cobrador.SetFocus;
end
else begin
bitbtn1.SetFocus;
end;
end;

procedure TImpAccionesDispoyVend.COBRADORKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  bitbtn1.SetFocus;
end;
end;

procedure TImpAccionesDispoyVend.BitBtn1Click(Sender: TObject);
begin
coloca1(1);
end;

procedure TImpAccionesDispoyVend.RvS1Print(Sender: TObject);
var posfx,posfy,final,salto:double;
var t,y,hoja,nro:integer;
var txt:string;
var pso:boolean;

  Function Logo1(posx,posy:double;vaf:integer):double;
   var Imagen1,MarcaAgua:TBitMap;
       PathLogo,PathLogo1:string;
   begin
   with RvS1 do begin
     BaseReport.Rectangle(posx+2,posy+1,posx+290,posy+200);
     BaseReport.SetFont('Arial Black',9);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+10,'CARMELO MONTE Servicios & Mandatos S.A.');
     BaseReport.SetFont('Arial',9);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+150,posy+15,'Administracion: Ayacucho Nº 160 - Tel (3704) 430671 - CP (3600) - Formosa'); //'Usu Imp.: ' + inttostr(modulo2.nro_usu) +
     BaseReport.SetFont('Arial Black',28);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posfx+100,posfy+80,'SECTOR "' + TRIM(cobrador.text));// + '"   Categoría ');
     BaseReport.SetFont('Arial',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posfx+160,posfy+180,'CONSECIONARIO EXCLUSIVO DEL');
     BaseReport.PrintXY(posfx+160,posfy+190,'CEMENTERIO "REMANSO DE PAZ S.A." PARQUE DE LOS RECUERDOS');
     Logo1:=posy+19;
   end;
   end;

begin
    posfx:=1.5;posfy:=2;
    salto:=4;final:=0;hoja:=1;
    posfy:=Logo1(posfx,posfy,hoja);
end;

end.

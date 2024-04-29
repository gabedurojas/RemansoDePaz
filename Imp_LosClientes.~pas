unit Imp_LosClientes;

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
  TImpTodosLosClientes = class(TForm)
    Barra1: TStatusBar;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    JvBitBtn3: TJvBitBtn;
    Label2: TLabel;
    RvS: TRvSystem;
    DataSource2: TDataSource;
    T8: TClientDataSet;
    PC1: TPageControl;
    TabSheet3: TTabSheet;
    JvgGroupBox5: TJvgGroupBox;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    RE5: TRichEdit;
    DBGrid2: TDBGrid;
    imprime: TJvBitBtn;
    busca: TJvBitBtn;
    BitBtn1: TBitBtn;
    procedure Coloca1(nro:byte);
    procedure FormActivate(Sender: TObject);
    procedure SALEClick(Sender: TObject);
    procedure ImprimeClick(Sender: TObject);
    procedure JvBitBtn3Click(Sender: TObject);
    procedure RvSPrint(Sender: TObject);
    procedure buscaClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
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

    PosH:Array [0..4] of Double;//Posiciones
    Camp:Array [0..4] of Integer;//Campos a Tomar en cuenta
    TxtCamp:Array [0..4] of String;//Textos de los Campos a Tomar en cuenta

    PosH1:Array [0..2] of Double;//Posiciones
    Camp1:Array [0..2] of Integer;//Campos a Tomar en cuenta
    TxtCamp1:Array [0..2] of String;//Textos de los Campos a Tomar en cuent
    //TiposAccio:Unidad.TablaXML;

  end;

var
  ImpTodosLosClientes: TImpTodosLosClientes;

implementation

uses Modulo,ClaseFunciones,SplashFormNro;

{$R *.dfm}

procedure TImpTodosLosClientes.FormActivate(Sender: TObject);
begin
setlength(IdCombos,1);
PC1.ActivePage:=PC1.Pages[0];
//PC2.ActivePage:=PC2.Pages[0];
imprime.Enabled:=false;
//grafico2.Series[0].Clear;
barra1.Panels[1].Text:='Procesando Titulares . . . ';
//coloca1(0);
//coloca1(2);
bitbtn1.SetFocus;
end;

procedure TImpTodosLosClientes.Coloca1(nro:byte);
var t,y,a:integer;
    txt,sex:string;
    txtw:widestring;
    Funciones:TFuncionesVarias;
    Sistema:TSistemas;
    Param:TWideStrings;
    NroDni,NroCuif,nroid:variant;

begin
if nro=0 then begin
//  DataResul.Free;
//  DataResul:=TClientdataSet.Create(nil);
//  DataSource2.DataSet:=DataResul;
//  Funciones:=TFuncionesVarias.Create(nil);
//  Funciones.ConnectionString:=modulo2.Conexion;
//  txtw:='SELECT row_number() over (order by gestor asc) as Orden,NroAccion,Sector,Parc,Plaza,'
//  +' Gestor,clientes.nrodni,PrimerTitular,barrio + '' - '' + AccionesParaResumenNew.Domicilio as Domicilio'
//  +' FROM AccionesParaResumenNew ( 0  ,null ,2 ,0  ,null) inner join Clientes on AccionesParaResumenNew.Cuif=Clientes.Cuif';
//  if not Funciones.Listar(txtw,DataResul) then
//    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
//  Funciones.Free;
//    if not (DataResul.IsEmpty) then begin
//    end;
end;
if nro=1 then begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  DataSource2.DataSet:=DtCombo;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT barrio,cliente,nrodni,domicilio,telefonos FROM ClientesActivos (0)';
  if not Funciones.Listar(txtw,DtCombo) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
    if not (DtCombo.IsEmpty) then begin
     imprime.Enabled:=true;
     busca.Enabled:=true;
     barra1.Panels[1].Text:='Total de Titulares:' + inttostr(DataSource2.DataSeT.RecordCount);
    end;
   dbgrid2.Columns[0].Width:=150;
   dbgrid2.Columns[1].Width:=250;
   dbgrid2.Columns[2].Width:=250;
   dbgrid2.Columns[3].Width:=80;
   dbgrid2.Columns[4].Width:=150;
   //dbgrid2.Columns[5].Width:=80;
   //dbgrid2.Columns[6].Width:=100;
   //dbgrid2.Columns[7].Width:=200;
end;
if nro=2 then begin
//  COBRADOR.Clear;
//  DtCombo.Free;
//  DtCombo:=TClientdataSet.Create(nil);
//  Funciones:=TFuncionesVarias.Create(nil);
//  Funciones.ConnectionString:=modulo2.Conexion;
//  txtw:='SELECT  distinct  a.Nombre,a.cuif '
//  + '  FROM (SELECT dbo.Personal.Cuif, dbo.Clientes.RazonSocial AS Nombre, ''COBRADOR'' AS Tipo,'
//  + ' dbo.Personal.NroGestor FROM dbo.Personal INNER JOIN '
//  + ' dbo.Clientes ON dbo.Personal.Cuif = dbo.Clientes.Cuif INNER JOIN '
//  + ' dbo.PersonalAreas ON dbo.Personal.Cuif = dbo.PersonalAreas.Cuif WHERE (dbo.PersonalAreas.NroArea = 2)) AS a';
//  if not Funciones.Listar(txtw,DtCombo) then
//     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
//  else begin
//    SetLength(IdCombos[0],DtCombo.RecordCount);
//    for t:=1 to DtCombo.RecordCount  do begin
//      DtCombo.RecNo:=t;
//      COBRADOR.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
//      IdCombos[0,t-1]:=DtCombo.Fields[1].AsString;
//    end;
//  end;
//  Funciones.Free;
//  COBRADOR.ItemIndex:=0;
end;
if nro= 3 then  begin
 //
end;
end;

procedure TImpTodosLosClientes.SALEClick(Sender: TObject);
begin
Close;
end;

procedure TImpTodosLosClientes.ImprimeClick(Sender: TObject);
var gf,t,y:integer;
var texto:widestring;
var txt:string;
begin
gf:=messagedlgpos('Desea Exportar a Excel el Detalle del Resumen de Titulares?'
    ,mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
if gf = 1 then begin
   SplashConNro := TSplashConNro.Create(Application);
   SplashConNro.Show;
   SplashConNro.ProgressBar1.Max:=DataSource2.DataSeT.RecordCount - 1;
    RE5.Clear;
    texto:='';
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
    messagedlgpos('Se Copiaron todos los Titulares, listo para pegarlos a Excel',mtwarning,[mbok],0,screen.Width div 3,screen.Height div 3);
end;
end;

procedure TImpTodosLosClientes.JvBitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TImpTodosLosClientes.RvSPrint(Sender: TObject);
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
     Rvs.BaseReport.PrintXY(posfx+34,posfy+17,'LISTA DE TITULARES ACTIVOS ');
     Logo:=posy+19;
   end;
   end;

   /////////  GRILLA de RECAUDACION
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
  Result:=posy+4;
  end;

  /// Grilla Detalle
  Function GrillaDetalle(posx,posy:double;texto:string):double;
  var t:integer;
  begin
  Rvs.BaseReport.SetFont('Arial',5);
  Rvs.BaseReport.FontColor:=clBlack;
    for t:=0 to length(Camp)-1 do
     Rvs.BaseReport.PrintXY(posx + PosH[t],posy+4,HackTable(FindComponent(texto)).Fields[Camp[t]].AsString);
    Result:=posy+3;
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
  Result:=posy+3;
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
  Camp[4]:=4; //Camp[5]:=6; Camp[6]:=7; Camp[7]:=8;

  //barrio,cliente,nrodni,domicilio,telefonos
  TxtCamp[0]:='Barrio';  TxtCamp[1]:='Nombre Cliente'; TxtCamp[2]:='NroDni';  TxtCamp[3]:='Domicilio';
  TxtCamp[4]:='Telefonos';  //TxtCamp[5]:='NroDni';    TxtCamp[6]:='1º Titular';     TxtCamp[7]:='Domicilio';

  PosH[0]:=3;   PosH[1]:=45;  PosH[2]:=100;  PosH[3]:=120;   PosH[4]:=175;
  //PosH[5]:=85; PosH[6]:=115; PosH[7]:=175;

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

procedure TImpTodosLosClientes.buscaClick(Sender: TObject);
begin
rvs.Execute;
end;

procedure TImpTodosLosClientes.BitBtn1Click(Sender: TObject);
begin
coloca1(1);
end;

end.

unit NotaMuni_Inhumados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid, ExtCtrls,
  ComCtrls, JvgPage, Buttons, JvExButtons, JvBitBtn, ToolWin, DB,
  JvgGroupBox, Mask, JvExGrids, JvStringGrid, Unidad, DBClient,
  WSDLIntf, ClaseFunciones, StrUtils, LMDControl, LMDBaseControl,
  LMDBaseGraphicControl, LMDGraphicControl, LMDScrollText,
  ClaseSistemas, RpDefine, RpBase, RpSystem, ImgList, DBCtrls;


type
  TNotaInhumaConsulta = class(TForm)
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
    DataSource1: TDataSource;
    JvgGroupBox3: TJvgGroupBox;
    DBGrid1: TDBGrid;
    DataSource2: TDataSource;
    todos: TRichEdit;
    Image1: TImage;
    RvS: TRvSystem;
    GroupBox1: TGroupBox;
    Buscar: TJvBitBtn;
    Label12: TLabel;
    Label13: TLabel;
    FECNAC: TMaskEdit;
    FECNACD: TMaskEdit;
    CheckBox1: TCheckBox;
    ToolButton2: TToolButton;
    listado: TJvBitBtn;
    RvS1: TRvSystem;
    Label7: TLabel;
    ELMES: TComboBox;
    Label1: TLabel;
    ELANO: TComboBox;
    Label2: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure BuscarClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure LimpiarVentana(nro:byte);
    procedure LimpiarClick(Sender: TObject);
    procedure GUARDAClick(Sender: TObject);
    procedure RvSPrint(Sender: TObject);
    procedure FECNACExit(Sender: TObject);
    procedure FECNACDExit(Sender: TObject);
    procedure FECNACKeyPress(Sender: TObject; var Key: Char);
    procedure FECNACDKeyPress(Sender: TObject; var Key: Char);
    procedure RvS1Print(Sender: TObject);
    procedure listadoClick(Sender: TObject);
    procedure RvS1BeforePrint(Sender: TObject);
    procedure ELMESExit(Sender: TObject);
    procedure ELANOExit(Sender: TObject);
    procedure ELMESKeyPress(Sender: TObject; var Key: Char);
    procedure ELANOKeyPress(Sender: TObject; var Key: Char);
  private
    gh:boolean;
    IdCombos:array of array of string;
    DataSet0,DataSet1,DtCombo:TClientDataSet;
  public
    Funciones:TFuncionesVarias;
    Sistemas:TSistemas;
    cuif:integer;
    FechaActual:string;
    CorreccionImpr:double;
//    TfrxReportPage;

    PosH:Array [0..5] of Double;//Posiciones
    Camp:Array [0..5] of Integer;//Campos a Tomar en cuenta
    TxtCamp:Array [0..5] of String;//Textos de los Campos a Tomar en cuenta

    PosH1:Array [0..14] of Double;//Posiciones
    Camp1:Array [0..14] of Integer;//Campos a Tomar en cuenta
    TxtCamp1:Array [0..14] of String;//Textos de los Campos a Tomar en cuenta

    IdHabitante, NroAccion, Nivel, Posicion, Objeto, DniFallecido,DniTitular,
    NombTitular, NombreFallecido, FechaIngreso,FechaFallecimiento, FechaInhumacion,
    HoraFallecimiento, HoraSalida, HoraLlegada, NroSeccion, NroActa, NroFolio, NroTomo, Medico, Diagnostico,
    PadreFallecido, MadreFallecido, ConError, NroOrdenServicio, CuifFallecido, NroParcela,LaReligion, ElNivel,
    Responsable,ElSolicitante, Cocheria,FecActaDefuncion,NroMedico, Abreviatura, Edad, DetalleEstado,
    Nacionalidad, FechaNacimiento, Detalle, Localidad, Domicilio,NroOrdenServ,ElSector ,
    cantiser,cantiseranio, tipodocr,domr,barrior,dnir,NroActaInhumacion,
    HoraInhumacion,FechaActaInhumacion,mesfalle: string;
  end;

var
  NotaInhumaConsulta: TNotaInhumaConsulta;

implementation

uses Modulo, Busqueda;
{$R *.dfm}

procedure TNotaInhumaConsulta.FormActivate(Sender: TObject);
begin
if not(gh) then begin
  gh:=true;
  setlength(IdCombos,5);
  Coloca1(1);
  FechaActual:=LeftStr(Fec_System(),10);
  PC1.ActivePage:=PC1.Pages[0];
  elmes.SetFocus;
end;
end;

procedure TNotaInhumaConsulta.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TNotaInhumaConsulta.Coloca1(nro:byte);
var t,y,r,s:integer;
    NroCobrador,NroForm,ValNull:variant;
    txt:string;
    txtw:widestring;
    tot1,tot2,tot3,tot4:real;
    paso:boolean;
begin
if nro=0 then begin //Cargamos los Pagos Registrados
  DataSet0.Free;
  DataSet0:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=DataSet0;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT IdHabitante,NroAccion,Nivel,Posicion,Objeto,DniTitular,NombreTitular,DniFallecido,NombreFallecido, NombreSolicitante, FechaIngreso, FechaFallecimiento, Edad, FechaInhumacion, '
  + 'HoraFallecimiento, HoraSalida, HoraLlegada, NroSeccion, NroActa,NroFolio, NroTomo, Medico, Diagnostico, PadreFallecido, MadreFallecido, ConError, NroOrdenServicio, CuifFallecido, '
  +'FecActaDefuncion, NroMedico, Abreviatura, DetalleEstado, Nacionalidad,FechaNacimiento, Detalle, Localidad, Domicilio, Sector, Parcela, NombreResponsable, ObservPlaca, domcilioresponsable, '
  + 'barrioresponsable, tipodocresponsable, nrodocresponsable,NroActaInhumacion,HoraInhumacion,Fecha,''Sepelio'' as TipoServicio FROM VParcelasInhumadosxAccion '
  + ' WHERE NroAccion > 0 AND YEAR(FechaFallecimiento)='+ trim(elano.Text) +' AND MONTH(FechaFallecimiento)='+ mesfalle +' ORDER BY FechaFallecimiento ';
  //+ ' WHERE (FechaFallecimiento >= ' + chr(39) + trim(fecnac.Text) + chr(39) + ')'
  //+' AND (FechaFallecimiento <= '+ chr(39) + trim(fecnacd.Text) + chr(39) +') ORDER BY FechaFallecimiento ';
  if not Funciones.Listar(txtw,DataSet0) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0) ;
  Funciones.Free;
  if not DataSet0.IsEmpty then begin
   Barra1.Panels[1].Text:='Cant. Registros: ' + inttostr(DataSet0.RecordCount);
   DBGrid1.Columns[0].Width:=60;
   DBGrid1.Columns[1].Width:=60;
   DBGrid1.Columns[2].Width:=50;
   DBGrid1.Columns[3].Width:=50;
   DBGrid1.Columns[4].Width:=80;
   DBGrid1.Columns[5].Width:=70;
   DBGrid1.Columns[6].Width:=250;
   DBGrid1.Columns[7].Width:=80;
   DBGrid1.Columns[8].Width:=250;
   DBGrid1.Columns[9].Width:=150;
   guarda.Enabled:=true;
   listado.Enabled:=true;
  end;
end;
if nro=1 then begin
  elano.Clear;
  DtCombo.Free;
  Dtcombo:=TClientDataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if Funciones.Listar('SELECT DISTINCT YEAR(FechaFallecimiento) AS GER FROM VParcelasInhumadosxAccion '
  +' WHERE FechaFallecimiento IS NOT NULL  ORDER BY GER desc',DtCombo) then begin
    for t:=1 to DtCombo.RecordCount  do begin
      DtCombo.RecNo:=t;
      elano.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
    end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
 elano.ItemIndex:=0;
end;
end;

procedure TNotaInhumaConsulta.JvBitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TNotaInhumaConsulta.BuscarClick(Sender: TObject);
begin
Coloca1(0);
end;

procedure TNotaInhumaConsulta.DBGrid1TitleClick(Column: TColumn);
begin
DataSet0.IndexFieldNames:=Column.FieldName;
end;

procedure TNotaInhumaConsulta.LimpiarVentana(nro:byte);
var t,r:integer;
begin
if nro =0 then begin
  DataSource1.DataSet:=nil;
  PC1.ActivePage:=PC1.Pages[0];
end;
GUARDA.Enabled:=false;
end;

procedure TNotaInhumaConsulta.LimpiarClick(Sender: TObject);
begin
LimpiarVentana(0);
end;

procedure TNotaInhumaConsulta.GUARDAClick(Sender: TObject);
var gf,t:integer;
    m:boolean;
    txtw:widestring;
begin
 gf:=messagedlg('Desea Realmente Imprimir esta consula de Inhumados',mtWarning,[mbok,mbCancel],0);
  if gf = 1 then begin
   if CheckBox1.Checked then rvs.SystemPrinter.Copies:=2
    else rvs.SystemPrinter.Copies:=1;
   AuditAccesos('Mdulo 2','IMP. NOTA MUNICIPAL DE INHUMADOS- Usu ' + inttostr(modulo2.nro_usu));
   rvs.Execute;
  end
  else begin
    messagedlg('Ud. acaba de Cancelar esta Acción. No se produjeron ningún cambio en la Base de Datos',mtWarning,[mbok],0);
  end;
end;

procedure TNotaInhumaConsulta.RvSPrint(Sender: TObject);
var posfx,posfy,final,salto:double;
var t,y,hoja,nro:integer;
var txt,PathLogo:string;
var pso:boolean;

   Function Logo(posx,posy:double;vaf:integer):double;
   var Imagen1:TBitMap;
   begin
    with RvS do begin
     Imagen1 := TBitMap.Create;
     PathLogo:=modulo2.path_todo + '\Imagenes\' + modulo2.INI1.ReadString('Resumen Caja','Imagen1','');
     if FileExists(PathLogo) then begin
        Image1.Picture.LoadFromFile(PathLogo);
        Imagen1.Assign(Image1.Picture.Graphic);
        BaseReport.PrintBitmapRect(posfx+5,posfy+5,posfx+60,posfy+25,Imagen1);
     end;
     Imagen1.Free;
     BaseReport.Rectangle(posx+4,posy+5,posx+190,posy+29);  //(posx+4,posy+5,posx+195,posy+37);
     BaseReport.SetFont('Arial',9);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+23,posy+24,'SERVICIOS & MANDATOS');
     // BaseReport.PrintXY(posx+23,posy+28,'Ayacucho N° 160 -  Formosa - CP:3600');
     // BaseReport.PrintXY(posx+100,posy+28,'LISTA DE INHUMADOS POR FECHAS   DESDE: ' + trim(FECNAC.Text)+ ' - HASTA: '+ trim(FECNACD.Text));;
     BaseReport.SetFont('Arial',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+23,posy+28,'Concesionario Exclusivo de Cementerio Parque REMANSO DE PAZ');
     BaseReport.PrintXY(posx+175,posy+9,'Pág.: ' + inttostr(vaf));
     BaseReport.SetFont('Arial',9);
     BaseReport.FontColor:=clBlack;
     //BaseReport.RoundRect(posx+20,posy+31,posx+190,posy+36,5,5);
     //BaseReport.PrintXY(posx+23,posy+34.5,'LISTA DE INHUMADOS');
     //BaseReport.SetFont('Arial Black',8);
     //BaseReport.PrintXY(posx+215,posy+34.5,'Total: ' + IntToStr(DataSet0.RecordCount));
     BaseReport.PrintXY(posx+130,posy+35,'FORMOSA, ' + Fec_Texto(FechaActual));
     BaseReport.PrintXY(posx+5,posy+45,'Señor');
     BaseReport.PrintXY(posx+5,posy+49,'Director Area Cementerio y Serv. Funararios de la Municipalidad de Formosa');
     BaseReport.PrintXY(posx+5,posy+53,'Su Despacho');
     BaseReport.PrintXY(posx+5,posy+54,'____________');

     BaseReport.PrintXY(posx+5,posy+65,'De mi consideración:');
     BaseReport.PrintXY(posx+50,posy+69,'Atento a la Ord. Municipal Nº 168/87 y conforme a lo dispuesto en el Art. 59 del Decreto Nacional');
     BaseReport.PrintXY(posx+5,posy+73,'Nº 8204/63 y Ley 26413,adjuntamos a la presente el detalle de inhumaciones realizadas en el Cementerio Parque REMANSO DE PAZ');
     BaseReport.PrintXY(posx+5,posy+77,'en el período comprendido entre el ' +  trim(fecnac.Text) + ' y el ' + trim(fecnacd.Text) + ' .- ' );
     Logo:=posy+75;
    end;
   end;

            /////////  GRILLA de RECAUDACION
  Function GrillaCabecera(posx,posy:double;texto:string):double;
  var t:integer;
  begin
   with RvS do begin
    BaseReport.Rectangle(posx+4,posy,posx+200,posy+5);
    for t:=1 to length(Camp)-1 do begin
     BaseReport.Rectangle(posx + PosH[t]-2,posy,posx + PosH[t]-2,posy+5);
    end;
   end;
    RvS.BaseReport.SetFont('Arial Black',7);
    RvS.BaseReport.FontColor:=clBlack;
    for t:=0 to length(Camp)-1 do begin
      RvS.BaseReport.PrintXY(posx + PosH[t],posy+4,TxtCamp[t]);
   end;
   Result:=posy+5;
  end;

  /// Grilla Detalle
  Function GrillaDetalle(posx,posy:double;texto:string):double;
  var t:integer;
  begin
  RvS.BaseReport.SetFont('Arial',7);
  RvS.BaseReport.FontColor:=clBlack;
    for t:=0 to length(Camp)-1 do
    RvS.BaseReport.PrintXY(posx + PosH[t],posy+4,DataSet0.Fields[Camp[t]].AsString);
    Result:=posy+4;
  end;

  //// Grilla Recuadro
  Function GrillaRecuadro(posx,posy,posy2:double):double;
  var t:integer;
  begin
  with RvS do begin
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
  posfy:=Logo(posfx,posfy,hoja);
  Camp[0]:=8;  Camp[1]:=11; Camp[2]:=13; Camp[3]:=37; Camp[4]:=38;  Camp[5]:=40;
  TxtCamp[0]:='Nombre Apellido del Extinto';TxtCamp[1]:='Fecha Fallecimento';
  TxtCamp[2]:='Fecha Inhumacion';TxtCamp[3]:='Sector';TxtCamp[4]:='Parcela'; TxtCamp[5]:='Cocheria';
  PosH[0]:=5;PosH[1]:=90;PosH[2]:=120;PosH[3]:=149;PosH[4]:=160;  PosH[5]:=175;
  final:=GrillaCabecera(posfx,posfy+5,txt);
  posfy:=final;
  pso:=false;
  for y:=1 to DataSet0.RecordCount do begin
   DataSet0.RecNo:=y;
   if pso then begin
      RvS.BaseReport.Rectangle(posfx+4,posfy+1,posfx+200,posfy+1)
   end
   else pso:=true;
   posfy:=GrillaDetalle(posfx,posfy,txt);
    if posfy > 280 then begin
     posfy:=GrillaRecuadro(posfx,final,posfy+2);
     posfx:=5.5;
     posfy:=5;
     hoja:=hoja+1;
     RvS.BaseReport.NewPage;
     posfy:=Logo(posfx,posfy,hoja);  // llamamos al encabezado
     final:=GrillaCabecera(posfx,posfy+5,txt);
     posfy:=final;
     pso:=false;
    end;
  end;
  Rvs.BaseReport.SetFont('Arial ',9);
  Rvs.BaseReport.FontColor:=clBlack;
  Rvs.BaseReport.PrintXY(posfx+4,posfy+8,'Total de Inhumados:  ');
  Rvs.BaseReport.SetFont('Arial Black',11);
  Rvs.BaseReport.FontColor:=clBlack;
  Rvs.BaseReport.PrintXY(posfx+40,posfy+8,inttostr(DataSet0.RecordCount));
  Rvs.BaseReport.SetFont('Arial ',9);
  Rvs.BaseReport.FontColor:=clBlack;
  Rvs.BaseReport.PrintXY(posfx+130,posfy+12,'Sin más saludo a Ud., muy atentamente');
  if pso then posfy:=GrillaRecuadro(posfx,final,posfy+2);
  except
end;
end;

procedure TNotaInhumaConsulta.FECNACExit(Sender: TObject);
var kl:Tdatetime;
begin
//try
//  kl:=strtodate(trim(FECNAC.Text));
//except
//  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
//  FECNAC.SetFocus;
//end;
end;

procedure TNotaInhumaConsulta.FECNACDExit(Sender: TObject);
var kl:Tdatetime;
begin
//try
//  kl:=strtodate(trim(FECNACD.Text));
//except
//  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
//  FECNACD.SetFocus;
//end;
end;

procedure TNotaInhumaConsulta.FECNACKeyPress(Sender: TObject; var Key: Char);
var kl:Tdatetime;
begin
//if key = #13 then begin
//  Key := #0;
//  FECNACD.SetFocus;
//end;
end;

procedure TNotaInhumaConsulta.FECNACDKeyPress(Sender: TObject; var Key: Char);
var kl:Tdatetime;
begin
//if key = #13 then begin
//  Key := #0;
//  buscar.SetFocus;
//end;
end;


procedure TNotaInhumaConsulta.RvS1Print(Sender: TObject);
var posfx,posfy,final,salto,alto,ancho:double;
var t,y,hoja,nro:integer;
var txt,PathLogo:string;
var pso:boolean;

   Function Logo(posx,posy:double;vaf:integer):double;
   var Imagen1:TBitMap;
   begin
    with RvS1 do begin
     Imagen1 := TBitMap.Create;
     PathLogo:=modulo2.path_todo + '\Imagenes\' + modulo2.INI1.ReadString('Resumen Caja','Imagen1','');
     if FileExists(PathLogo) then begin
      Image1.Picture.LoadFromFile(PathLogo);
      Imagen1.Assign(Image1.Picture.Graphic);
      BaseReport.PrintBitmapRect(posfx+5,posfy+5,posfx+60,posfy+20,Imagen1);
     end;
     Imagen1.Free;
     BaseReport.Rectangle(posx+5,posy+20,posx+340,posy+24);  //(posx+4,posy+5,posx+195,posy+37);
     BaseReport.SetFont('C G Omega',9);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+80,posy+23,'LIBRO DE REGISTRO DE INHUMACIONES');
     BaseReport.PrintXY(posx+230,posy+23,'PERIODO ' + trim(elmes.Text ) + ' '+ trim(elano.Text ));
     BaseReport.PrintXY(posx+20,posy+198, 'Libro de Inhumaciones conforme a Ord. Municipal 168/87 y conforme lo dispuesto por el Art. 59 del Dcto Nac. 8204/63 y Ley 26.413  -  REMANSO DE PAZ Parque de los Recuerdos');
     //BaseReport.PrintXY(posx+5,posy+77,'en el período comprendido entre el ' +  trim(fecnac.Text) + ' y el ' + trim(fecnacd.Text) + ' .- ' );
     BaseReport.SetFont('C G Omega',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+34,'Fecha. Inhum');
     BaseReport.PrintXY(posx+22,posy+34,'Nombre del Extinto');
     BaseReport.PrintXY(posx+69,posy+34,'Tpo');
     BaseReport.PrintXY(posx+77,posy+34,'Dni');
     BaseReport.PrintXY(posx+89,posy+34,'Nacionalidad');
     BaseReport.PrintXY(posx+113,posy+34,'Edad');
     BaseReport.PrintXY(posx+119,posy+34,'Fec.Fallem');
     BaseReport.PrintXY(posx+134,posy+34,'Tipo Serv.');
     BaseReport.PrintXY(posx+153,posy+34,'Cocheria');
     BaseReport.PrintXY(posx+184,posy+34,'Est. Medica Expedis por');
     BaseReport.PrintXY(posx+220,posy+34,'Sector');
     BaseReport.PrintXY(posx+230,posy+34,'Parcela');
     BaseReport.PrintXY(posx+245,posy+34,'Nivel');
     BaseReport.PrintXY(posx+255,posy+34,'Diag. Fallecimiento');
     BaseReport.PrintXY(posx+325,posy+34,'Acta Inhum.');
     Logo:=posy+25;
    end;
   end;

  /////////  GRILLA de RECAUDACION
  Function GrillaCabecera(posx,posy:double;texto:string):double;
  var t:integer;
  begin
   with RvS1 do begin
    BaseReport.Rectangle(posx+4,posy,posx+340,posy+5);
    for t:=1 to length(Camp1)-1 do begin
     BaseReport.Rectangle(posx + PosH1[t]-2,posy,posx + PosH1[t]-2,posy+5);
    end;
   end;
    RvS1.BaseReport.SetFont('C G Omega',7);
    RvS1.BaseReport.FontColor:=clBlack;
    for t:=0 to length(Camp1)-1 do begin
      RvS1.BaseReport.PrintXY(posx + PosH1[t],posy+4,TxtCamp1[t]);
   end;
   Result:=posy+5;
  end;

  /// Grilla Detalle
  Function GrillaDetalle(posx,posy:double;texto:string):double;
  var t:integer;
  begin
   RvS1.BaseReport.SetFont('C G Omega',7);
   RvS1.BaseReport.FontColor:=clBlack;
    for t:=0 to length(Camp1)-1 do
    RvS1.BaseReport.PrintXY(posx + PosH1[t],posy+4,DataSet0.Fields[Camp1[t]].AsString);
    Result:=posy+4;
  end;

  //// Grilla Recuadro
  Function GrillaRecuadro(posx,posy,posy2:double):double;
  var t:integer;
  begin
   with RvS1 do begin
    BaseReport.Rectangle(posx+4,posy,posx+340,posy2);
    for t:=1 to length(Camp1)-1 do begin
      BaseReport.Rectangle(posx + PosH1[t]-2,posy,posx + PosH1[t]-2,posy2);
    end;
   Result:=posy+4;
   end;
  end;

begin
  alto:= 331;
  ancho:= 215;
 try
  posfx:=10;
  posfy:=1;
  salto:=4;
  final:=0;
  posfy:=Logo(posfx,posfy,hoja);
  hoja:=1;
  RvS1.BaseReport.SetFont('C G Omega',7);
  //rvs1.BaseReport.p
  Camp1[0]:=13;  Camp1[1]:=8; Camp1[2]:=30; Camp1[3]:=7; Camp1[4]:=27;  Camp1[5]:=12;
  Camp1[6]:=11;  Camp1[7]:=48; Camp1[8]:=40;  Camp1[9]:=21;   Camp1[10]:=37;
  Camp1[11]:=38;  Camp1[12]:=2;  Camp1[13]:=22; Camp1[14]:=26;
  PosH1[0]:=5;PosH1[1]:=22;PosH1[2]:=70;PosH1[3]:=77;PosH1[4]:=93;  PosH1[5]:=115;
  PosH1[6]:=120;   PosH1[7]:=135;  PosH1[8]:=150;   PosH1[9]:=185;
  PosH1[10]:=220;   PosH1[11]:=230;    PosH1[12]:=245;   PosH1[13]:=255;   PosH1[14]:=325;

  final:=GrillaCabecera(posfx,posfy+5,txt);
  posfy:=final;
  pso:=false;
  for y:=1 to DataSet0.RecordCount do begin
   DataSet0.RecNo:=y;
   if pso then begin
      RvS1.BaseReport.Rectangle(posfx+4,posfy+1,posfx+340,posfy+1)
   end
   else pso:=true;
   posfy:=GrillaDetalle(posfx,posfy,txt);
    if posfy > 190 then begin
     posfy:=GrillaRecuadro(posfx,final,posfy+2);
     posfx:=5.5;
     posfy:=5;
     hoja:=hoja+1;
     RvS1.BaseReport.NewPage;
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

procedure TNotaInhumaConsulta.listadoClick(Sender: TObject);
VAR gf:INTEGER;
begin
   gf:=messagedlgpos('Para esta Impresion se Necesita que la Impresoa'+ chr(13) +
   'sea Configurad en Hoja ''OFICIO'' y Orientacion ''HORIZONTAL''',mtInformation,[
             mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
  if gf = 1 then begin
   AuditAccesos('Mdulo 2','IMP. LISTADO DE INHUMADOS- Usu ' + inttostr(modulo2.nro_usu));
   RVS1.Execute;
  end;
end;

procedure TNotaInhumaConsulta.RvS1BeforePrint(Sender: TObject);
  var alto,ancho:double;
begin
  //PrinterSetupDialog1.Execute;
end;

procedure TNotaInhumaConsulta.ELMESExit(Sender: TObject);
begin
 if ELMES.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el MES Ingresado!!',mterror,[mbok],0);
  ELMES.SetFocus;
 end
 else begin
  if trim(ELMES.Text) = 'ENERO' then mesfalle:='1';
  if trim(ELMES.Text) = 'FEBRERO' then mesfalle:='2';
  if trim(ELMES.Text) = 'MARZO' then mesfalle:='3';
  if trim(ELMES.Text) = 'ABRIL' then mesfalle:='4';
  if trim(ELMES.Text) = 'MAYO' then mesfalle:='5';
  if trim(ELMES.Text) = 'JUNIO' then mesfalle:='6';
  if trim(ELMES.Text) = 'JULIO' then mesfalle:='7';
  if trim(ELMES.Text) = 'AGOSTO' then mesfalle:='8';
  if trim(ELMES.Text) = 'SEPTIEMBRE' then mesfalle:='9';
  if trim(ELMES.Text) = 'OCTUBRE' then mesfalle:='10';
  if trim(ELMES.Text) = 'NOVIEMBRE' then mesfalle:='11';
  if trim(ELMES.Text) = 'DICIEMBRE' then mesfalle:='12';
  label2.caption := mesfalle;
 end;
end;

procedure TNotaInhumaConsulta.ELANOExit(Sender: TObject);
begin
  if ELANO.ItemIndex < 0 then begin
    messagedlg('ERROR!! No Existe el AÑO Ingresado!!',mterror,[mbok],0);
    ELANO.SetFocus;
  end
end;

procedure TNotaInhumaConsulta.ELMESKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  elano.SetFocus;
 end;
end;

procedure TNotaInhumaConsulta.ELANOKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  buscar.SetFocus;
 end;
end;

end.

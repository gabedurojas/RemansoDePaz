unit Inhu_Movim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Buttons, Mask, DB, ADODB, Grids,
  DBGrids, RpDefine, RpBase, RpSystem, LMDCustomButton, LMDButton, ToolWin,
  JvExButtons, JvBitBtn,StrUtils;


type HackTable = Class(TADOTable);
type HackText = Class(TEdit);
type
  TInhu_FecNacFalle = class(TForm)
    Barra1: TStatusBar;
    GroupBox1: TGroupBox;
    R1: TRadioButton;
    R4: TRadioButton;
    Buscar: TButton;
    GroupBox2: TGroupBox;
    FECEMI: TMaskEdit;
    Label1: TLabel;
    FECVEN: TMaskEdit;
    Label3: TLabel;
    R2: TRadioButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    R3: TRadioButton;
    RvS: TRvSystem;
    R5: TRichEdit;
    SALE: TLMDButton;
    year: TComboBox;
    mes: TComboBox;
    dia: TComboBox;
    GroupBox3: TGroupBox;
    Button1: TButton;
    IMPRIME: TBitBtn;
    CAMBIA: TJvBitBtn;
    GroupBox4: TGroupBox;
    Label2: TLabel;
    R0: TRadioButton;
    Label4: TLabel;
    Image1: TImage;
    R6: TRadioButton;
    procedure R1Click(Sender: TObject);
    procedure R2Click(Sender: TObject);
    procedure R4Click(Sender: TObject);
    procedure FECEMIKeyPress(Sender: TObject; var Key: Char);
    procedure FECVENKeyPress(Sender: TObject; var Key: Char);
    procedure FECEMIExit(Sender: TObject);
    procedure FECVENExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BuscarClick(Sender: TObject);
    procedure R3Click(Sender: TObject);
    procedure IMPRIMEClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid2TitleClick(Column: TColumn);
    procedure SALEClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CAMBIAClick(Sender: TObject);
    procedure R0Click(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure mesExit(Sender: TObject);
    procedure mesChange(Sender: TObject);
    procedure RvSPrint(Sender: TObject);
  private
    gh:boolean;
    IdCombos:array of array of string;
    CANTIDADES,DETALLE,DataSet1,DataSet:TADODataSet;
    Com1:TADOCommand;
    NroAniv,elmes:string;
    tot:integer;
   { Private declarations }
  public
    PosH:Array [0..8] of Double;//Posiciones
    TxtCamp:Array [0..8] of String;
    Camp:Array [0..8] of Integer;
     { Public declarations }
  end;

var
  Inhu_FecNacFalle: TInhu_FecNacFalle;

implementation

uses Modulo, Unidad, SplashFormNro,Bus_Aniversarios;

{$R *.dfm}

procedure TInhu_FecNacFalle.FormCreate(Sender: TObject);
begin
gh:=false;
DataSet1:=TADODataSet.Create(nil);
DataSet1.ConnectionString:=modulo2.Conexion;
DataSet:=TADODataSet.Create(nil);
DataSet.ConnectionString:=modulo2.Conexion;
end;

procedure TInhu_FecNacFalle.FormActivate(Sender: TObject);
begin
if not(gh) then begin
  gh:=true;
  CANTIDADES:=TADODataSet.Create(nil);
  CANTIDADES.ConnectionString:=modulo2.Conexion;
  DataSource1.DataSet:=CANTIDADES;
  FECVEN.Text:=strcut(Fec_System(),10);
  FECEMI.Text:=FECVEN.Text;
  //cambia.click;
  NroAniv:='0';
  r1.OnClick(Sender);
  SetLength(IdCombos,1);
  coloca1(0);
  coloca1(1);
  label2.Caption:='FECHA DE FALLECIMIENTO';
  buscar.Click;
end;
end;

procedure TInhu_FecNacFalle.Coloca1(nro:byte);
var txt,txtw:widestring;
var t:integer;
begin
 if nro=0 then begin
  DataSet1.CommandText:='exec fecha;';
  DataSet1.Open;
  elmes:=strcut_midle(dataset1.Fields[0].AsString,4,5);
  dataset1.Close;
  mes.ItemIndex:=strtoint(elmes) -1;
  label4.Caption:=elmes;
 end;
 if nro=1 then begin
  if NroAniv='0' then txt:='select distinct AñoFallecimiento FROM  LosInhumadosFechasNaciFalle where (AñoFallecimiento is not null)  order by 1 desc'
     else txt:='select distinct AñoCumpleaños FROM  LosInhumadosFechasNaciFalle where (AñoCumpleaños is not null) order by 1 desc';
  year.Clear;
  DataSet1.CommandText:=txt;
  DataSet1.Open;
  SetLength(IdCombos[0],DataSet1.RecordCount);
  for t:=1 to DataSet1.RecordCount  do begin
    DataSet1.RecNo:=t;
    year.Items.Insert(t-1,trim(DataSet1.Fields[0].AsString));
    IdCombos[0,t-1]:=DataSet1.Fields[0].AsString;
  end;
  DataSet1.Close;
  year.ItemIndex:=0;
 end;
end;

procedure TInhu_FecNacFalle.R1Click(Sender: TObject);
begin
 if r1.Checked = true then begin
  year.visible:=true;
  year.setfocus;
 end
 else begin
  mes.visible:=false;
  dia.visible:=false;
  label4.Visible:=false;
  fecemi.visible:=false;
  label1.visible:=false;
  fecven.visible:=false;
  label3.visible:=false;
  year.visible:=false;
  //year.setfocus;
 end;
end;

procedure TInhu_FecNacFalle.R2Click(Sender: TObject);
begin
mes.visible:=true;
label4.Visible:=true;
dia.visible:=false;
fecemi.visible:=false;
label1.visible:=false;
fecven.visible:=false;
label3.visible:=false;
year.visible:=false;
mes.setfocus;
end;

procedure TInhu_FecNacFalle.R4Click(Sender: TObject);
begin
mes.visible:=false;
label4.Visible:=false;
dia.visible:=false;
fecemi.visible:=true;
label1.visible:=true;
fecven.visible:=true;
label3.visible:=true;
year.visible:=false;
fecemi.setfocus;
end;

procedure TInhu_FecNacFalle.FECEMIKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then FECVEN.SetFocus;
end;

procedure TInhu_FecNacFalle.FECVENKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then Buscar.SetFocus;
end;

procedure TInhu_FecNacFalle.FECEMIExit(Sender: TObject);
var fec:Tdatetime;
begin
try
 fec:=strtodate(trim(FECEMI.Text));
except
  messagedlg('La fecha es Erronea!!',mterror,[mbok],0);
  FECEMI.SetFocus;
end;  
end;

procedure TInhu_FecNacFalle.FECVENExit(Sender: TObject);
var fec:Tdatetime;
begin
try
 fec:=strtodate(trim(FECVEN.Text));
except
  messagedlg('La fecha es Erronea!!',mterror,[mbok],0);
  FECVEN.SetFocus;
end;
end;

procedure TInhu_FecNacFalle.BuscarClick(Sender: TObject);
var txtw:widestring;
    t:integer;
begin
CANTIDADES.Close;
 if R1.Checked then begin  //por años
  if NroAniv='0' then txtw:='SELECT row_number() over (order by RazonSocial asc) as Orden,RazonSocial as [ApellidoNombre Inhumado],Fecha as [Fecha de Fallecimieto],titulo,sector,parcela,plaza,año,total'
   + ' FROM Fn_Aniversarios (6,'+year.Text +',0,'''','''') '
  else txtw:='SELECT row_number() over (order by RazonSocial asc) as Orden,RazonSocial as [Nombre y Apellido],Fecha as [Fecha de Nacimiento],titulo,sector,parcela,plaza,año,total'
   + ' FROM Fn_Aniversarios (5,'+year.Text +',0,'''','''') ';
 end;
 if R2.Checked then begin   // por mes
  if NroAniv='0' then txtw:='SELECT row_number() over (order by RazonSocial asc) as Orden,RazonSocial as [ApellidoNombre Inhumado],Fecha as [Fecha de Fallecimieto],titulo,sector,parcela,plaza,año,total'
   + ' FROM Fn_Aniversarios (2,' + label4.Caption +',0,'''','''') '
  else txtw:='SELECT row_number() over (order by RazonSocial asc) as Orden,RazonSocial as [Nombre y Apellido],Fecha as [Fecha de Nacimiento],titulo,sector,parcela,plaza,año,total'
   + ' FROM Fn_Aniversarios (1,'+ label4.Caption +',0,'''','''') ';
 end;
 if R3.Checked then begin   // por un dia en particular
  if NroAniv='0' then txtw:='SELECT row_number() over (order by RazonSocial asc) as Orden,RazonSocial as [ApellidoNombre Inhumado],Fecha as [Fecha de Fallecimieto],titulo,sector,parcela,plaza,año,total'
   + ' FROM Fn_Aniversarios (9,' + dia.Text +',0,'''','''') '
  else txtw:='SELECT row_number() over (order by RazonSocial asc) as Orden,RazonSocial as [Nombre y Apellido],Fecha as [Fecha de Nacimiento],titulo,sector,parcela,plaza,año,total'
   + ' FROM Fn_Aniversarios (10,'+ dia.Text +',0,'''','''') ';
 end;
 if R6.Checked then begin  //por dia actual
  if NroAniv='0' then txtw:='SELECT row_number() over (order by RazonSocial asc) as Orden,RazonSocial as [ApellidoNombre Inhumado],Fecha as [Fecha de Fallecimieto],titulo,sector,parcela,plaza,año,total'
   + ' FROM Fn_Aniversarios (3,0,0,'''','''') '
  else txtw:='SELECT row_number() over (order by RazonSocial asc) as Orden,RazonSocial as [Nombre y Apellido],Fecha as [Fecha de Nacimiento],titulo,sector,parcela,plaza,año,total'
   + ' FROM Fn_Aniversarios (4,0,0,'''','''') ';
 end;
 if R4.Checked then begin
  if NroAniv='0' then txtw:='SELECT row_number() over (order by RazonSocial asc) as Orden,RazonSocial as [ApellidoNombre Inhumado],Fecha as [Fecha de Fallecimieto],titulo,sector,parcela,plaza,año,total'
   + ' FROM Fn_Aniversarios (8,0,0,' + chr(39) + trim(fecemi.Text) + chr(39) +',' + chr(39)+ trim(fecven.Text) + chr(39)+ ') order by 2'
  else txtw:='SELECT row_number() over (order by RazonSocial asc) as Orden,RazonSocial as [Nombre y Apellido],Fecha as [Fecha de Nacimiento],titulo,sector,parcela,plaza,año,total'
   + ' FROM Fn_Aniversarios (7,0,0,'+ chr(39) + trim(fecemi.Text) + chr(39)+','+ chr(39)+ trim(fecven.Text) + chr(39)+') order by 2';
 end;
 CANTIDADES.CommandText:=txtw;
 CANTIDADES.Open;
 tot:=0;
 if CANTIDADES.RecordCount > 0 then begin
  DBGrid1.Columns[0].Width:=50;
  DBGrid1.Columns[1].Width:=200;
  dataset.Close;
  dataset.CommandText:= txtw + ' where Total is null order by 2';
  dataset.Open;
  barra1.Panels[0].Text:='Cant. de Registros encontrados: '+ inttostr(dataset.RecordCount);
  tot:=dataset.RecordCount;
  IMPRIME.Enabled:=true;
 end;
end;

procedure TInhu_FecNacFalle.R3Click(Sender: TObject);
begin
mes.visible:=false;
dia.visible:=true;
fecemi.visible:=false;
label1.visible:=false;
fecven.visible:=false;
label3.visible:=false;
year.visible:=false;
dia.setfocus;
end;

procedure TInhu_FecNacFalle.IMPRIMEClick(Sender: TObject);
var gf:integer;
begin
gf:=messagedlg('Desea realizar la impresion de los datos?',mtWarning,[mbok,mbCancel],0);
 if gf = 1 then BEGIN
  Rvs.Execute;
  AuditAccesos('Mdulo 2','IMPRIME ANIV. INHUMADOS');
 END
 else messagedlg('ATENCION!!... Ud. a Cancelado la Impresion.',mtError,[mbok],0);
end;

procedure TInhu_FecNacFalle.Button1Click(Sender: TObject);
var p,t:integer;
var texto:widestring;
begin
 R5.Clear;
 SplashConNro := TSplashConNro.Create(Application);
 SplashConNro.Show;
 SplashConNro.ProgressBar1.Max:=800;
 for p:=1 to CANTIDADES.RecordCount do begin
  SplashConNro.ProgressBar1.Position:=1;
  texto:='';
  CANTIDADES.RecNo:=p;
  SplashConNro.Label3.Caption:=inttostr(p);
  SplashConNro.Update;
  if p=1 then begin
   texto:='Código' + chr(9) + 'DetalleCodigo' + chr(9) + 'CantidadVendida';
   R5.Lines.Add(texto);
   texto:='';
  end;
  for t:=0 to CANTIDADES.FieldCount-1 do begin
   texto:=texto + CANTIDADES.Fields[t].AsString + chr(9);
  end;
  R5.Lines.Add(texto);
 end;
texto:='';
R5.Lines.Add(texto);
R5.Lines.Add(texto);

R5.SelectAll;
R5.CopyToClipboard;
SplashConNro.Hide;
SplashConNro.Free;
messagedlg('Se Copiaron los Datos al Clipboard',mtwarning,[mbok],0);
 AuditAccesos('Mdulo 2','EXPORTA EXCEL ANIV. INHUMADOS');
end;

procedure TInhu_FecNacFalle.DBGrid1TitleClick(Column: TColumn);
begin
CANTIDADES.IndexFieldNames:=Column.FieldName;
end;

procedure TInhu_FecNacFalle.DBGrid2TitleClick(Column: TColumn);
begin
DETALLE.IndexFieldNames:=Column.FieldName;
end;

procedure TInhu_FecNacFalle.SALEClick(Sender: TObject);
begin
Close;
end;

procedure TInhu_FecNacFalle.CAMBIAClick(Sender: TObject);
var Bus_Aniv:TBus_Aniv;
begin
  Bus_Aniv:=TBus_Aniv.Create(self);
  try
   Bus_Aniv.ShowModal;
   NroAniv:=Bus_Aniv.la_os;
   label2.Caption:=Bus_Aniv.OS.Text;
  finally
   Bus_Aniv.free;
  end;
  buscar.Click;
end;


procedure TInhu_FecNacFalle.R0Click(Sender: TObject);
begin
mes.visible:=false;
dia.visible:=false;
label4.Visible:=false;
fecemi.visible:=false;
label1.visible:=false;
fecven.visible:=false;
label3.visible:=false;
year.visible:=false;
buscar.setfocus;
end;

procedure TInhu_FecNacFalle.mesExit(Sender: TObject);
begin
elmes:=el_mesAnumero(mes.Text);
label4.Caption:=elmes;
end;

procedure TInhu_FecNacFalle.mesChange(Sender: TObject);
begin
elmes:=el_mesAnumero(mes.Text);
label4.Caption:=elmes;
end;

procedure TInhu_FecNacFalle.RvSPrint(Sender: TObject);
var posfx,posfy,final,salto:double;
var t,k,y,hoja:integer;
var txt,val:string;
var sd,sd1,posn,posw:double;

   Function Logo(posx,posy:double;vaf:integer):double;
   var Imagen1:TBitMap;
       PathLogo:string;
   begin
    with Rvs do begin
    Imagen1 := TBitMap.Create;
    PathLogo:=modulo2.path_todo + '\Imagenes\CarmeloMonte.bmp';
    if FileExists(PathLogo) then begin
     Image1.Picture.LoadFromFile(PathLogo);
     Imagen1.Assign(image1.Picture.Graphic);
     BaseReport.PrintBitmapRect(posx+6,posy+2,posx+47,posy+25,Imagen1);
    end;
    BaseReport.RoundRect(posx+4,posy,posx+200,posy+27,5,5);
    BaseReport.SetFont('Arial Black',12);
    BaseReport.FontColor:=clBlack;
    BaseReport.PrintXY(posx+65,posy+20,'RESUMEN DE: ');
    BaseReport.PrintXY(posx+65,posy+25,TRIM(LABEL2.Caption));
    BaseReport.SetFont('Arial Black',8);
    BaseReport.PrintXY(posx+150,posy+11,'Usuario Impresion: ' + inttostr(modulo2.nro_usu));
    BaseReport.PrintXY(posx+150,posy+17,'Fecha Impresión: ' + DateToStr(Date));
    BaseReport.PrintXY(posx+150,posy+23,'Cantidad Registros: '+ inttostr(tot));
    Logo:=posy+25;
    end;
   end;

   Function Mostrar1(posx,posy:double):double;
   var t,y:integer;
   begin
    with Rvs do begin
     BaseReport.SetFont('Arial Black',9);
     BaseReport.Rectangle(posx+4,posy,posx+200,posy+5);
     BaseReport.Rectangle(posx+20,posy,posx+200,posy+5);
     BaseReport.Rectangle(posx+70,posy,posx+200,posy+5);
     BaseReport.Rectangle(posx+90,posy,posx+200,posy+5);
     BaseReport.Rectangle(posx+110,posy,posx+200,posy+5);
     BaseReport.Rectangle(posx+130,posy,posx+200,posy+5);
     BaseReport.Rectangle(posx+150,posy,posx+200,posy+5);
     BaseReport.Rectangle(posx+170,posy,posx+200,posy+5);

     BaseReport.PrintXY(posx+5,posy+4,'Id');
     BaseReport.PrintXY(posx+22,posy+4,'Nombre y Apellido');
     BaseReport.PrintXY(posx+72,posy+4,'Fecha');
     BaseReport.PrintXY(posx+92,posy+4,'Titulo');
     BaseReport.PrintXY(posx+112,posy+4,'Sector');
     BaseReport.PrintXY(posx+132,posy+4,'Parcela');
     BaseReport.PrintXY(posx+152,posy+4,'Año');
     BaseReport.PrintXY(posx+172,posy+4,'Total');
    end;
   END;

begin
 try
   posfx:=5.5;posfy:=5;
   salto:=4;final:=0;hoja:=1;

   posfy:=Logo(posfx,posfy,hoja)+ salto;   // llamamos al encabezado
   posfy:=Mostrar1(posfx,posfy)+ salto;

   posw:=posfy;
   sd1:=posn;
   posfy:=posfy+9;
   for t:=1 to CANTIDADES.RecordCount do begin
     CANTIDADES.RecNo:=t;
     posfy:=posfy-0.5;
     RVS.BaseReport.SetFont('Arial',7);
     RVS.BaseReport.PrintXY(posfx+6,posfy,trim(CANTIDADES.Fields[0].AsString));
     RVS.BaseReport.MoveTo(posw,posfy);
     RVS.BaseReport.PrintLeft(trim(CANTIDADES.Fields[1].AsString),posfx+22);
     RVS.BaseReport.MoveTo(posw,posfy);
     RVS.BaseReport.PrintLeft(trim(CANTIDADES.Fields[2].AsString),posfx+72);
     RVS.BaseReport.MoveTo(posw,posfy);
     RVS.BaseReport.PrintLeft(trim(CANTIDADES.Fields[3].AsString),posfx+92);
     RVS.BaseReport.MoveTo(posw,posfy);
     RVS.BaseReport.PrintLeft(trim(CANTIDADES.Fields[4].AsString),posfx+112);
     RVS.BaseReport.MoveTo(posw,posfy);
     RVS.BaseReport.PrintLeft(trim(CANTIDADES.Fields[5].AsString),posfx+132);
     RVS.BaseReport.MoveTo(posw,posfy);
     RVS.BaseReport.PrintLeft(trim(CANTIDADES.Fields[7].AsString),posfx+152);
     RVS.BaseReport.SetFont('Arial Black',9);
     RVS.BaseReport.MoveTo(posw,posfy);
     RVS.BaseReport.PrintLeft(trim(CANTIDADES.Fields[8].AsString),posfx+172);
     posfy:=posfy+0.5;

     // hacemos la lineas internas de las grilla
     RVS.BaseReport.Rectangle(posfx+4,posfy,posfx+200,posfy-4);
     RVS.BaseReport.Rectangle(posfx+20,posfy,posfx+200,posfy-4);
     RVS.BaseReport.Rectangle(posfx+70,posfy,posfx+200,posfy-4);
     RVS.BaseReport.Rectangle(posfx+90,posfy,posfx+200,posfy-4);
     RVS.BaseReport.Rectangle(posfx+110,posfy,posfx+200,posfy-4);
     RVS.BaseReport.Rectangle(posfx+130,posfy,posfx+200,posfy-4);
     RVS.BaseReport.Rectangle(posfx+150,posfy,posfx+200,posfy-4);
     RVS.BaseReport.Rectangle(posfx+170,posfy,posfx+200,posfy-4);
     posfy:=posfy + salto;
     if posfy > 265 then begin
      posfx:=5.5;
      posfy:=5;
      hoja:=hoja+1;
      RVS.BaseReport.NewPage;
      posfy:=Logo(posfx,posfy,hoja)+ salto;   // llamamos al encabezado
      posfy:=Mostrar1(posfx,posfy)+ salto;
      posfy:=posfy+9;
     end;
   end;
 except
 end;
end;

end.

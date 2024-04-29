unit Imprime_Placa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, JvExButtons, JvBitBtn, ComCtrls, ToolWin, DB,
  Grids, DBGrids, JvExDBGrids, JvDBGrid, ExtCtrls, JvExComCtrls, JvComCtrls,ClaseFunciones,
  JvgGroupBox, Mask,DBClient,StrUtils, RpDefine, RpBase, RpSystem;

type
  TImpPlaca = class(TForm)
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    ToolButton2: TToolButton;
    Imprime: TJvBitBtn;
    ToolButton3: TToolButton;
    Sale: TJvBitBtn;
    PC1: TJvPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    RAccion: TRadioButton;
    Bevel2: TBevel;
    RServicio: TRadioButton;
    LB1: TLabel;
    ODNI: TEdit;
    Busca: TJvBitBtn;
    DBGrid1: TJvDBGrid;
    DataSource1: TDataSource;
    Barra1: TStatusBar;
    JvgGroupBox1: TJvgGroupBox;
    Label47: TLabel;
    Label11: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    nroacc: TEdit;
    nroacta: TEdit;
    sector: TEdit;
    parcela: TEdit;
    codplaza: TEdit;
    plaza: TEdit;
    JvgGroupBox2: TJvgGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    nomtit: TEdit;
    domtit: TEdit;
    cuenta: TEdit;
    JvgGroupBox3: TJvgGroupBox;
    Label4: TLabel;
    Label6: TLabel;
    nomfalle: TEdit;
    alias: TEdit;
    Label25: TLabel;
    fecnac: TMaskEdit;
    Label5: TLabel;
    fecfalle: TMaskEdit;
    Label58: TLabel;
    religionfalle: TEdit;
    JvgGroupBox4: TJvgGroupBox;
    Label13: TLabel;
    Label50: TLabel;
    Label57: TLabel;
    Label61: TLabel;
    Accion: TEdit;
    IdHab: TEdit;
    accselec: TEdit;
    fecservicio: TMaskEdit;
    GroupBox1: TGroupBox;
    LN: TLabel;
    LA: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    LFF: TLabel;
    LFN: TLabel;
    LS: TLabel;
    LP: TLabel;
    Label32: TLabel;
    dnitit: TEdit;
    RvS: TRvSystem;
    Image1: TImage;
    GroupBox2: TGroupBox;
    ImagenCa: TRadioButton;
    ImagenJu: TRadioButton;
    ImagenMo: TRadioButton;
    Image2: TImage;
    procedure SaleClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BuscaClick(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure Limpiar(nro:byte);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure ODNIKeyPress(Sender: TObject; var Key: Char);
    procedure ImprimeClick(Sender: TObject);
    procedure RvSPrint(Sender: TObject);
    procedure ImagenCaClick(Sender: TObject);
    procedure ImagenJuClick(Sender: TObject);
    procedure ImagenMoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   Funciones:TFuncionesVarias;
   DataSetCli,Dtcombo:TClientDataSet; //declaro los DataSet
  end;

var
  ImpPlaca: TImpPlaca;

implementation

uses Modulo,unidad,ClaseParcelas;

{$R *.dfm}

procedure TImpPlaca.SaleClick(Sender: TObject);
begin
close;
end;

procedure TImpPlaca.FormActivate(Sender: TObject);
begin
PC1.ActivePage:=PC1.Pages[0];
odni.setfocus;
imagenca.OnClick(Sender);
end;

procedure TImpPlaca.Limpiar(nro:byte);

begin
//
end;

procedure TImpPlaca.Coloca1(nro:byte);
var    NroDni,IdHabitante,NroAccion,idcliente,idhabi,DniTitular,DniFallecido,nrogestion:variant;
       razonsocial,NombreTitular,NombreFallecido,fechafallecimiento:string;
       txtw:widestring;
       Parcelas:TParcelas;
begin
if nro=1 then begin  // buscamos los datos de la accion en servicios
  DataSetCli.Free;
  DataSetCli:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=DataSetCli;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if Raccion.Checked then begin
     NroAccion:=trim(ODNI.Text);razonsocial:='';NroDni:=null;
  end;
  //if not Funciones.Run_Fn_VistaParcelasInhumadosServicios(null,NroAccion,razonsocial,NroDni,Datasetcli,'',0) then
  if not Funciones.Run_Fn_VistaParcelasInhumadosServicios(null,NroAccion,Datasetcli,'',0) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
   Funciones.Free;
   dbgrid1.Columns[0].Width:=60;
   dbgrid1.Columns[1].Width:=80;
   dbgrid1.Columns[2].Width:=80;
   dbgrid1.Columns[3].Width:=180;
   dbgrid1.Columns[4].Width:=80;
end;
if nro=5 then begin
  DtCombo.Free;
  Dtcombo:=TClientDataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  NroDni:=trim(odni.Text);
  IdCliente:=null;
  if not Funciones.Run_Fn_VistaParcelasTitulares(IdCliente,strtoint(Nrodni),DtCombo,'',0) then
       messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    //if not Funciones.Run_Fn_VistaClientes(IdCliente,RazonSocial,Nrodni,null,null,'',DtCombo,'',0) then
    //   messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  nomtit.Text:=DtCombo.Fields[10].AsString;
  domtit.Text:=DtCombo.Fields[19].asstring;
  cuenta.text:=DtCombo.Fields[1].asstring;
  dnitit.text:=DtCombo.Fields[12].asstring;
  Funciones.Free;
end;
if nro = 6  then begin
    DtCombo.Free;
    Dtcombo:=TClientDataSet.Create(nil);
    Parcelas:=TParcelas.Create(nil);
    Parcelas.ConnectionString:=modulo2.Conexion;
    txtw:='SELECT dbo.Parcelas.NroAccion, dbo.Parcelas.NroActa, dbo.Parcelas.Sector,'
          + 'dbo.Parcelas.Parcela, dbo.TiposPlazas.Codigo,dbo.TiposPlazas.Detalle'
          + ' FROM dbo.Parcelas INNER JOIN dbo.TiposPlazas ON dbo.Parcelas.IdPlaza = dbo.TiposPlazas.IdPlaza'
          + ' WHERE (dbo.Parcelas.NroAccion=' + trim(accselec.Text) + ') ORDER BY dbo.Parcelas.NroAccion';
    if Parcelas.Listar(txtw,DtCombo)  then begin
     nroacc.Text:=DtCombo.Fields[0].AsString;
     nroacta.Text:=DtCombo.Fields[1].AsString;
     sector.Text:=DtCombo.Fields[2].AsString;
     LS.Caption:=trim(sector.Text);
     parcela.Text:=DtCombo.Fields[3].AsString;
     LP.Caption:=trim(parcela.Text);
     codplaza.Text:=DtCombo.Fields[4].AsString;
     plaza.Text:=DtCombo.Fields[5].AsString;
    end
    else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    Parcelas.Free;
end;
if nro = 10 then begin
   DtCombo.Free;
   Dtcombo:=TClientDataSet.Create(nil);
   Funciones:=TFuncionesVarias.Create(nil);
   Funciones.ConnectionString:=modulo2.Conexion;
   idcliente:=null;razonsocial:='';
   NroDni:=strtoint(strcut_midle(trim(DataSetCli.Fields[4].AsString),3,10));
   if not Funciones.Run_Fn_VistaClientes(idcliente,razonsocial,NroDni,null,null,'',DtCombo,'',0) then
   messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
   nomfalle.Text:=DtCombo.Fields[2].AsString;
   LN.Caption:=trim(nomfalle.Text);
   alias.Text:=DtCombo.Fields[3].AsString;
   LA.Caption:=trim(alias.Text);
   fecnac.Text:=DtCombo.Fields[11].AsString;
   LFN.Caption:=trim(fecnac.Text);
   religionfalle.Text:=DtCombo.Fields[8].AsString;
    Funciones.Free;
end;
if nro = 11 then begin
   DtCombo.Free;
   Dtcombo:=TClientDataSet.Create(nil);
   Funciones:=TFuncionesVarias.Create(nil);
   Funciones.ConnectionString:=modulo2.Conexion;
   IdHabitante:=trim(idhab.Text);Nroaccion:=null;DniTitular:=null;NombreTitular:='';DniFallecido:=null;
   NombreFallecido:='';fechafallecimiento:='';
   if not Funciones.Run_Fn_VistaParcelasInhumados(IdHabitante,NroAccion,DniTitular,
   NombreTitular,DniFallecido,NombreFallecido,fechafallecimiento,DtCombo,'',0) then
   messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
   fecfalle.Text:=trim(DtCombo.Fields[11].AsString);
   LFF.Caption:=trim(fecfalle.Text);
   Funciones.Free;
end;
end;

procedure TImpPlaca.BuscaClick(Sender: TObject);
begin
Coloca1(1);
if (DataSetCli.RecordCount = 0) then begin
  Barra1.Panels[0].Text:='Sin Datos en Grilla';
  IF application.MessageBox('SERVICIO NO encontrado, !Desea Buscar otro Servicio!?','Advertencia'
    ,mb_OKcancel+mb_IconHAnd) = IdOk then begin
    PC1.Enabled:=true;
  end
  else begin
    PC1.Enabled:=false;
    Barra1.Panels[0].Text:='La opcion Busqueda fue Cancelada';
    BUSCA.SetFocus;
  end;
end
else begin
  Barra1.Panels[1].Text:='Registos encontrados: ' + inttostr(Datasource1.DataSet.RecordCount);
end;
end;

procedure TImpPlaca.DBGrid1CellClick(Column: TColumn);
begin
if not (DataSetCli.IsEmpty) then begin
  PC1.ActivePage:=PC1.Pages[1];
  accion.Text:=trim(DataSetCli.Fields[0].AsString);
  idhab.Text:=trim(DataSetCli.Fields[1].AsString);
  accselec.Text:=trim(DataSetCli.Fields[2].AsString);
  fecservicio.Text:=trim(DataSetCli.Fields[5].AsString);
  //dnitit.Text:=trim(DataSetCli.Fields[6].AsString);
  coloca1(5);
  Coloca1(10);
  coloca1(11);
  coloca1(6);
  imprime.Enabled:=true;
end;
end;

procedure TImpPlaca.ODNIKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then busca.SetFocus;
end;

procedure TImpPlaca.ImprimeClick(Sender: TObject);
var gf:integer;
begin
gf:=messagedlgpos('Desea Imprimir el Diseño de Placa a ser Grabado?'
    ,mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
if gf = 1 then begin
  AuditAccesos('Mdulo 2','IMPRECION DE PLACA DE INHUMADO');
  RvS.Execute;
end;
end;

procedure TImpPlaca.RvSPrint(Sender: TObject);
var posfx,posfy,posfin,pos_y,salto:double;
var hoja:integer;

Function Imagenjpg(posx,posy:double;vaf:integer):double;
   var Imagen1:  TBitmap;
       Fuente,PathLogo,tipot,nombret,tipodoct,dnit,domt:string;
       Tamanio,t:integer;
       ElMes,ElAnio,ElDia,txt:string;
       Marca:TBitMap;
 begin
  with RvS do begin
   Imagen1 := TBitMap.Create;
   image2.Stretch:=true;

   PathLogo:=modulo2.path_todo + '\Formularios\FRM-09.01.jpg';
   if FileExists(PathLogo) then begin
     Image1.Picture.LoadFromFile(PathLogo);
     Imagen1.Assign(Image1.Picture.Graphic);
     BaseReport.PrintBitmapRect(posx+1,posy,posx+215,posy+285,Imagen1);

     Marca := TBitMap.Create;
     Marca.Assign(image2.Picture.Graphic);
     image2.Stretch:=true;
   end;
   Imagen1.Free;

   BaseReport.SetFont('Arial Black',12);
   BaseReport.FontColor:=clBlack;
   BaseReport.PrintXY(posx+185,posy+16,TRIM(idhab.text));
   BaseReport.SetFont('Arial ',10);
   BaseReport.FontColor:=clBlack;
     BaseReport.PrintBitmapRect(28,105,60,125,Marca);
   BaseReport.PrintXY(posx+70,posy+25,TRIM(nomtit.text));
   BaseReport.PrintXY(posx+60,posy+31,TRIM(domtit.text));
   BaseReport.PrintXY(posx+51,posy+41,TRIM(nomfalle.text));
   BaseReport.PrintXY(posx+160,posy+41,TRIM(alias.text));
   BaseReport.PrintXY(posx+55,posy+46,TRIM(fecnac.text));
   BaseReport.PrintXY(posx+115,posy+46,TRIM(fecfalle.text));
   BaseReport.PrintXY(posx+175,posy+46,TRIM(religionfalle.text));
   BaseReport.PrintXY(posx+35,posy+52,TRIM(sector.text));
   BaseReport.PrintXY(posx+70,posy+52,TRIM(parcela.text));

   BaseReport.SetFont('Arial ',16);
   BaseReport.FontColor:=clBlack;
   BaseReport.PrintBitmapRect(28,235,60,255,Marca);
   BaseReport.PrintXY(posx+60,posy+99,TRIM(nomfalle.text));
   BaseReport.PrintXY(posx+190,posy+99,TRIM(alias.text));
   BaseReport.PrintXY(posx+95,posy+111,TRIM(fecnac.text));
   BaseReport.PrintXY(posx+140,posy+111,TRIM(fecfalle.text));
   BaseReport.PrintXY(posx+130,posy+122,TRIM(sector.text));
   BaseReport.PrintXY(posx+177,posy+122,TRIM(parcela.text));

   BaseReport.SetFont('Arial Black',12);
   BaseReport.FontColor:=clBlack;
   BaseReport.PrintXY(posx+185,posy+151,TRIM(idhab.text));
   BaseReport.SetFont('Arial',10);
   BaseReport.FontColor:=clBlack;
   ElMes:=el_mes(strtoint(strcut_midle(trim(fecservicio.Text),4,5)));
   ElAnio:=strcut_midle(trim(fecservicio.Text),7,10);
   ElDia:=LeftStr(trim(fecservicio.Text),2);
   BaseReport.PrintXY(posx+131,posy+162,ElDia);
   BaseReport.PrintXY(posx+148,posy+162,ElMes);
   BaseReport.PrintXY(posx+191,posy+162,ElAnio);
   BaseReport.PrintXY(posfx+30,posfy+175,modulo2.INI1.ReadString('Grabacion Placa','Titulo0',''));
   BaseReport.PrintXY(posfx+30,posfy+180,modulo2.INI1.ReadString('Grabacion Placa','Titulo1',''));
   BaseReport.PrintXY(posfx+30,posfy+185,modulo2.INI1.ReadString('Grabacion Placa','Titulo2',''));
   BaseReport.SetFont('Arial ',16);
   BaseReport.FontColor:=clBlack;
   BaseReport.PrintXY(posx+60,posy+228,TRIM(nomfalle.text));
   BaseReport.PrintXY(posx+190,posy+228,TRIM(alias.text));
   BaseReport.PrintXY(posx+95,posy+240,TRIM(fecnac.text));
   BaseReport.PrintXY(posx+140,posy+240,TRIM(fecfalle.text));
   BaseReport.PrintXY(posx+135,posy+251,TRIM(sector.text));
   BaseReport.PrintXY(posx+180,posy+251,TRIM(parcela.text));
  end;
 end;

begin
posfx:=1;posfy:=1;salto:=4;hoja:=1;
posfy:=Imagenjpg(posfx,posfy,hoja);
end;


procedure TImpPlaca.ImagenCaClick(Sender: TObject);
var PathLogo:string;
begin
PathLogo:=modulo2.path_todo + '\Imagenes\cruzcatolica.jpg';
if FileExists(PathLogo) then begin
    image2.Picture.LoadFromFile(PathLogo);
end;
end;

procedure TImpPlaca.ImagenJuClick(Sender: TObject);
var PathLogo:string;
begin
PathLogo:=modulo2.path_todo + '\Imagenes\cruzjudia.jpg';
if FileExists(PathLogo) then begin
    image2.Picture.LoadFromFile(PathLogo);
end;
end;

procedure TImpPlaca.ImagenMoClick(Sender: TObject);
var PathLogo:string;
begin
PathLogo:=modulo2.path_todo + '\Imagenes\RemansoAgua.jpg';
if FileExists(PathLogo) then begin
    image2.Picture.LoadFromFile(PathLogo);
end;
end;

end.

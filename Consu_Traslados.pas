unit Consu_Traslados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid, ExtCtrls,
  ComCtrls, JvgPage, Buttons, JvExButtons, JvBitBtn, ToolWin, DB,
  JvgGroupBox, Mask, JvExGrids, JvStringGrid, Unidad, DBClient,
  WSDLIntf, ClaseFunciones, StrUtils, LMDControl, LMDBaseControl,
  LMDBaseGraphicControl, LMDGraphicControl, LMDScrollText,
  ClaseParcelasInhumados,
  ClaseSistemas, RpDefine, RpBase, RpSystem, ImgList, DBCtrls, Menus;

type
  TTrasladosConsultas = class(TForm)
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
    C2: TRadioButton;
    c1: TRadioButton;
    Label4: TLabel;
    Label5: TLabel;
    sector: TEdit;
    nombre: TEdit;
    Buscar: TJvBitBtn;
    accion: TEdit;
    parcela: TEdit;
    JvgGroupBox5: TJvgGroupBox;
    Label11: TLabel;
    Label19: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label10: TLabel;
    Label7: TLabel;
    D1: TEdit;
    D4: TEdit;
    D5: TEdit;
    D2: TEdit;
    D3: TEdit;
    D6: TEdit;
    D7: TEdit;
    D9: TEdit;
    D8: TEdit;
    DBNavigator1: TDBNavigator;
    RvG: TRvSystem;
    Label9: TLabel;
    D10: TEdit;
    C7: TRadioButton;
    Label12: TLabel;
    Label13: TLabel;
    FECNAC: TMaskEdit;
    FECNACD: TMaskEdit;
    ImpActaInhu: TJvBitBtn;
    Image2: TImage;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure BuscarClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure LimpiarVentana(nro:byte);
    procedure LimpiarClick(Sender: TObject);
    procedure GUARDAClick(Sender: TObject);
    procedure accionKeyPress(Sender: TObject; var Key: Char);
    procedure parcelaKeyPress(Sender: TObject; var Key: Char);
    procedure nombreKeyPress(Sender: TObject; var Key: Char);
    procedure RvSPrint(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure RvGPrint(Sender: TObject);
    procedure FECNACExit(Sender: TObject);
    procedure FECNACDExit(Sender: TObject);
    procedure FECNACKeyPress(Sender: TObject; var Key: Char);
    procedure FECNACDKeyPress(Sender: TObject; var Key: Char);
    procedure ImpActaInhuClick(Sender: TObject);
  private
    gh:boolean;
    IdCombos:array of array of string;
    DataSet0,DataSet1,DtCombo:TClientDataSet;
    ParcelasInhumados:TParcelasInhumados;
  public
    Funciones:TFuncionesVarias;
    Sistemas:TSistemas;
    cuif:integer;
    FechaActual:string;
    CorreccionImpr:double;

    PosH:Array [0..8] of Double;//Posiciones
    Camp:Array [0..8] of Integer;//Campos a Tomar en cuenta
    TxtCamp:Array [0..8] of String;//Textos de los Campos a Tomar en cuenta

    PosHI:Array [0..6] of Double;//Posiciones
    CampI:Array [0..6] of Integer;//Campos a Tomar en cuenta
    TxtCampI:Array [0..6] of String;//Textos de los Campos a Tomar en cuenta

    IdHabitante, NroAccion, Nivel, Posicion, Objeto, DniFallecido,DniTitular,
    NombTitular, NombreFallecido, FechaIngreso,FechaFallecimiento, FechaInhumacion,
    HoraFallecimiento, HoraSalida, HoraLlegada, NroSeccion, NroActa, NroFolio, NroTomo, Medico, Diagnostico,
    PadreFallecido, MadreFallecido, ConError, NroOrdenServicio, CuifFallecido, NroParcela,LaReligion, ElNivel,
    Responsable,ElSolicitante, Cocheria,FecActaDefuncion,NroMedico, Abreviatura, Edad, DetalleEstado, FormaPago,
    Nacionalidad, FechaNacimiento, Detalle, Localidad, Domicilio,NroOrdenServ, laobserv,  ElSector , cantiser,
    cantiseranio, tipodocr,domr,barrior,dnir,NroActaInhumacion,HoraInhumacion,FechaActaInhumacion,nroactager: string;

  end;

var
  TrasladosConsultas: TTrasladosConsultas;

implementation

uses Modulo, Busqueda;
{$R *.dfm}

procedure TTrasladosConsultas.FormActivate(Sender: TObject);
begin
if not(gh) then begin
  gh:=true;
  Impactainhu.Enabled:=false;
  setlength(IdCombos,5);
  FechaActual:=LeftStr(Fec_System(),10);
  FECNAC.Text:=LeftStr(Fec_System(),10);
  fecnacd.Text:=LeftStr(Fec_System(),10);
  PC1.ActivePage:=PC1.Pages[0];
  c2.Checked:=true;
  nombre.visible:=false;            parcela.visible:=false;
  sector.Visible:=false;            label12.Visible:=false;
  label13.Visible:=false;           FECNAC.Visible:=false;
  FECNACD.Visible:=false;           accion.Visible:=true;
  accion.SetFocus;
end;
end;

procedure TTrasladosConsultas.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TTrasladosConsultas.Coloca1(nro:byte);
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
  if C1.Checked then begin
   txtw:='SELECT  IdTraslado, NroSolicitud, FechaServicio, Hora, Inhumado, Dniinhumado, FechaNacimiento, Suscribe, DniSuscribe, '
   +'origen, destino, Km, UnidadTraslado, chofer, Tipoformapago, banco, TarjetaCredito, NroComprobante, Titular, Serie, '
   +'NroCheque, Importe, NroCuotas, ValorCouta FROM VParcelasServiciosTraslados'
   + ' WHERE (inhumado LIKE ' + chr(39) + chr(37) + transforma(trim(nombre.Text),chr(39),chr(33)) + chr(37) + chr(39) + ') order by inhumado';
  end;
  if C2.Checked then begin
   txtw:='SELECT  IdTraslado, NroSolicitud, FechaServicio, Hora, Inhumado, Dniinhumado, FechaNacimiento, Suscribe, DniSuscribe, '
   +'origen, destino, Km, UnidadTraslado, chofer, Tipoformapago, banco, TarjetaCredito, NroComprobante, Titular, Serie, '
   +'NroCheque, Importe, NroCuotas, ValorCouta FROM VParcelasServiciosTraslados where (NroSolicitud = ' + trim(accion.Text) +') order by inhumado';
  end;
  if c7.Checked then begin
   txtw:='SELECT  IdTraslado, NroSolicitud, FechaServicio, Hora, Inhumado, Dniinhumado, FechaNacimiento, Suscribe, DniSuscribe, '
   +'origen, destino, Km, UnidadTraslado, chofer, Tipoformapago, banco, TarjetaCredito, NroComprobante, Titular, Serie, '
   +'NroCheque, Importe, NroCuotas, ValorCouta FROM  VParcelasServiciosTraslados'
   +' WHERE (FechaServicio >= ' + chr(39) + trim(fecnac.Text) + chr(39) + ') '
    + 'AND (FechaServicio <= '+ chr(39) + trim(fecnacd.Text) + chr(39) +') ORDER BY FechaServicio ';
  end;
  if not Funciones.Listar(txtw,DataSet0) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0) ;
  Funciones.Free;
  if not DataSet0.IsEmpty then begin
   Barra1.Panels[1].Text:='Cant. Registros: ' + inttostr(DataSet0.RecordCount);
    DBGrid1.Columns[0].Width:=60;
    DBGrid1.Columns[1].Width:=60;
    DBGrid1.Columns[2].Width:=80;
    DBGrid1.Columns[3].Width:=60;
    DBGrid1.Columns[4].Width:=200;
    DBGrid1.Columns[5].Width:=80;
    DBGrid1.Columns[6].Width:=80;
    DBGrid1.Columns[7].Width:=200;
    DBGrid1.Columns[8].Width:=80;
    DBGrid1.Columns[9].Width:=150;
   guarda.Enabled:=true;
  end
  else begin
   guarda.Enabled:=false;
   messagedlg('La opcion seleccionada no arrojo ningun resultado.. por favor realice otra busqueda',mtInformation,[mbok],0);
   impactainhu.Enabled :=false;
    D1.Clear;
    D3.Clear;
    D2.Clear;
    D8.Clear;
    D9.Clear;
    D5.Clear;
    D6.Clear;
    D10.Clear;
    D4.Clear;
  end;
end;
if nro=18 then begin
 DtCombo.Free;
 Dtcombo:=TClientDataSet.Create(nil);
 Funciones:=TFuncionesVarias.Create(nil);
 Funciones.ConnectionString:=modulo2.Conexion;
 txtw:='SELECT * FROM CantServiciosxMes ('+ chr(39) + strcut(Fec_System(),10) + chr(39)+ ',0)';
 if Funciones.Listar(txtw,DtCombo) then begin
  cantiser:=DtCombo.Fields[0].AsString;
 end
 else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
 funciones.Free;
end;
if nro=19 then begin
  DtCombo.Free;
  Dtcombo:=TClientDataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT * FROM CantServiciosxMes ('+ chr(39) + strcut(Fec_System(),10) + chr(39)+ ',1)';
  if Funciones.Listar(txtw,DtCombo) then begin
   cantiseranio:=DtCombo.Fields[0].AsString;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  funciones.Free;
end;
end;

procedure TTrasladosConsultas.JvBitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TTrasladosConsultas.C1Click(Sender: TObject);
begin
if C1.Checked then begin
  label5.Visible:=false;
  label4.Caption:='Ingrese Nombre Inhumado';
  nombre.visible:=true;
  parcela.visible:=false;
  sector.Visible:=false;
  accion.Visible:=false;
  label12.Visible:=false;
  label13.Visible:=false;
  FECNAC.VISIBLE:=FALSE;
  FECNACd.Visible:=FALSE;
  nombre.SetFocus;
end;
if C2.Checked then begin
  label5.Visible:=false;
  label4.Caption:='Ingrese Nro Traslado:';
  nombre.visible:=false;
  parcela.visible:=false;
  sector.Visible:=false;
  accion.Visible:=true;
  label12.Visible:=false;
  label13.Visible:=false;
  FECNAC.VISIBLE:=FALSE;
  FECNACd.Visible:=FALSE;
  accion.SetFocus;
end;
if C7.Checked then begin
  label12.Visible:=true;
  label13.Visible:=true;
  label5.Visible:=false;
  label4.Caption:='Se Listaran Todos los Inhumados:';
  nombre.visible:=false;
  parcela.visible:=false;
  sector.Visible:=false;
  accion.Visible:=false;
  FECNAC.VISIBLE:=true;
  FECNACd.Visible:=true;
  FECNAC.SetFocus;
end;
end;

procedure TTrasladosConsultas.BuscarClick(Sender: TObject);
begin
Coloca1(0);
end;

procedure TTrasladosConsultas.DBGrid1CellClick(Column: TColumn);
var p,u:integer;
begin
 if not DataSet0.IsEmpty then begin
 IdHabitante:=trim(DataSet0.Fields[0].AsString);  //IdServicio
 D1.Text:=DataSet0.Fields[1].AsString;
 D3.Text:=DataSet0.Fields[2].AsString;   //fecserv
 D2.Text:=DataSet0.Fields[3].AsString;   //hora
 D8.Text:=DataSet0.Fields[4].AsString;   //inhumado
 D9.Text:=DataSet0.Fields[5].AsString;   //dniinhu
 D5.Text:=DataSet0.Fields[6].AsString;   //fecnac
 D6.Text:=DataSet0.Fields[7].AsString;   //suscribe
 D10.Text:=DataSet0.Fields[8].AsString;   //dnisuscribe
 NroActa:=trim(DataSet0.Fields[9].AsString);   //origen
 NroFolio:=trim(DataSet0.Fields[10].AsString);  //destino
 NroTomo:=trim(DataSet0.Fields[11].AsString);    //km
 HoraInhumacion:=trim(DataSet0.Fields[12].AsString); //unidadtraslado
 D4.Text:=DataSet0.Fields[13].AsString;   //CHOFER
 FormaPago:=DataSet0.Fields[14].AsString;   //FORMAPAGO

  Medico:=trim(DataSet0.Fields[15].AsString);  //banco
  NroAccion:=trim(DataSet0.Fields[16].AsString);    //TarjetaCredito
  Nivel:=trim(DataSet0.Fields[17].AsString);         //NroComprobante
  Posicion:=trim(DataSet0.Fields[18].AsString);      //Titular
  Objeto:=trim(DataSet0.Fields[19].AsString);        //Serie
  DniTitular:=trim(DataSet0.Fields[20].AsString);    //NroCheque
  FechaActaInhumacion:=trim(DataSet0.Fields[21].AsString);   //Importe
  HoraSalida:=trim(DataSet0.Fields[22].AsString);    //NroCuotas
  dnir:=trim(DataSet0.Fields[23].AsString);  //ValorCouta
 // DniFallecido:=trim(DataSet0.Fields[24].AsString);
 //FechaNacimiento:=trim(DataSet0.Fields[21].AsString);
 impactainhu.Enabled:=true;
{
  IdHabitante:=trim(DataSet0.Fields[0].AsString);
  NroAccion:=trim(DataSet0.Fields[1].AsString);
  Nivel:=trim(DataSet0.Fields[2].AsString);
  Posicion:=trim(DataSet0.Fields[3].AsString);
  Objeto:=trim(DataSet0.Fields[4].AsString);
  DniTitular:=trim(DataSet0.Fields[5].AsString);
  NombTitular:=trim(DataSet0.Fields[6].AsString);
  DniFallecido:=trim(DataSet0.Fields[7].AsString);
  NombreFallecido:=trim(DataSet0.Fields[8].AsString);
  ElSolicitante:=trim(DataSet0.Fields[9].AsString);
  FechaIngreso:=trim(DataSet0.Fields[10].AsString);
  FechaFallecimiento:=trim(DataSet0.Fields[11].AsString);
  Edad:=trim(DataSet0.Fields[12].AsString);
  FechaInhumacion:=trim(DataSet0.Fields[13].AsString);
  HoraFallecimiento:=trim(DataSet0.Fields[14].AsString);
  HoraSalida:=trim(DataSet0.Fields[15].AsString);
  HoraLlegada:=trim(DataSet0.Fields[16].AsString);
  NroSeccion:=trim(DataSet0.Fields[17].AsString);
  NroActa:=trim(DataSet0.Fields[18].AsString);
  NroFolio:=trim(DataSet0.Fields[19].AsString);
  NroTomo:=trim(DataSet0.Fields[20].AsString);
  Medico:=trim(DataSet0.Fields[21].AsString);
  Diagnostico:=trim(DataSet0.Fields[22].AsString);
  NroOrdenServ:=trim(DataSet0.Fields[26].AsString);
  FecActaDefuncion:=trim(DataSet0.Fields[28].AsString);
  Abreviatura:=trim(DataSet0.Fields[30].AsString);
  DetalleEstado:=trim(DataSet0.Fields[31].AsString);
  Nacionalidad:=trim(DataSet0.Fields[32].AsString);
  FechaNacimiento:=trim(DataSet0.Fields[33].AsString);
  LaReligion:=trim(DataSet0.Fields[34].AsString);
  ElSector:=trim(DataSet0.Fields[37].AsString);
  NroParcela:=trim(DataSet0.Fields[38].AsString);
  Responsable:=trim(DataSet0.Fields[39].AsString);
  Cocheria:='';
  //Cocheria:=trim(DataSet0.Fields[39].AsString);
  Domicilio:=trim(DataSet0.Fields[41].AsString);
  domr:=trim(DataSet0.Fields[42].AsString);
  tipodocr:=trim(DataSet0.Fields[43].AsString);
  barrior:=trim(DataSet0.Fields[41].AsString);
  dnir:=trim(DataSet0.Fields[44].AsString);
  if trim(DataSet0.Fields[45].AsString) <> '' then begin
   NroActaInhumacion:=trim(DataSet0.Fields[45].AsString);
   HoraInhumacion:=trim(DataSet0.Fields[46].AsString);
   FechaActaInhumacion:=trim(DataSet0.Fields[47].AsString);
   impactainhu.Enabled:=true;
   coloca1(9);
  end
  else begin
   impactainhu.Enabled:=false;
  end;
  laobserv:=trim(DataSet0.Fields[49].AsString);
  nroactager:=trim(DataSet0.Fields[50].AsString);  }
 end;
end;

procedure TTrasladosConsultas.DBGrid1TitleClick(Column: TColumn);
begin
DataSet0.IndexFieldNames:=Column.FieldName;
end;

procedure TTrasladosConsultas.LimpiarVentana(nro:byte);
var t,r:integer;
begin
 if nro =0 then begin
  DataSource1.DataSet:=nil;
  C2.Checked:=true;
  PC1.ActivePage:=PC1.Pages[0];
  D1.Clear;
  D3.Clear;
  D2.Clear;
  D8.Clear;
  D9.Clear;
  D5.Clear;
  D6.Clear;
  D10.Clear;
  D4.Clear;
 end;
 GUARDA.Enabled:=false;
end;

procedure TTrasladosConsultas.LimpiarClick(Sender: TObject);
begin
LimpiarVentana(0);
end;

procedure TTrasladosConsultas.GUARDAClick(Sender: TObject);
var gf,t:integer;
    m:boolean;
    txtw:widestring;
begin
 gf:=messagedlg('Desea Realmente Imprimir esta consula de Traslados',mtWarning,[mbok,mbCancel],0);
  if gf = 1 then begin
   AuditAccesos('Mdulo 2','IMPRESION DE Traslados');
   rvg.Execute;
 end
 else begin
    messagedlg('Ud. acaba de Cancelar esta Acción. No se produjeron ningún cambio en la Base de Datos',mtWarning,[mbok],0);
  end;
end;

procedure TTrasladosConsultas.accionKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  buscar.SetFocus;
end
else begin
  if ( StrScan('0123456789',Key) <> nil ) or  ( Key = Char(VK_BACK) ) then
   else Key := #0;
end;
end;

procedure TTrasladosConsultas.parcelaKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  buscar.SetFocus;
end
else begin
  if ( StrScan('0123456789',Key) <> nil ) or  ( Key = Char(VK_BACK) ) then
   else Key := #0;
end;
end;

procedure TTrasladosConsultas.nombreKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  buscar.SetFocus;
end;
end;


procedure TTrasladosConsultas.RvSPrint(Sender: TObject);
var posfx,posfy,final,salto:double;
var t,y,hoja,nro:integer;
var txt,PathLogo:string;
var pso:boolean;

{IdHabitante:=trim(DataSet0.Fields[0].AsString);  //IdServicio
 D1.Text:=DataSet0.Fields[1].AsString;
 D3.Text:=DataSet0.Fields[2].AsString;   //fecserv
 D2.Text:=DataSet0.Fields[3].AsString;   //hora
 D8.Text:=DataSet0.Fields[4].AsString;   //inhumado
 D9.Text:=DataSet0.Fields[5].AsString;   //dniinhu
 D5.Text:=DataSet0.Fields[6].AsString;   //fecnac
 D6.Text:=DataSet0.Fields[7].AsString;   //suscribe
 D10.Text:=DataSet0.Fields[8].AsString;   //dnisuscribe
 NroActa:=trim(DataSet0.Fields[9].AsString);   //origen
 NroFolio:=trim(DataSet0.Fields[10].AsString);  //destino
 NroTomo:=trim(DataSet0.Fields[11].AsString);    //km
 HoraInhumacion:=trim(DataSet0.Fields[12].AsString); //unidadtraslado
 D4.Text:=DataSet0.Fields[13].AsString;   //CHOFER
 FormaPago:=DataSet0.Fields[14].AsString;   //FORMAPAGO

  Medico:=trim(DataSet0.Fields[15].AsString);  //banco
  NroAccion:=trim(DataSet0.Fields[16].AsString);    //TarjetaCredito
  Nivel:=trim(DataSet0.Fields[17].AsString);         //NroComprobante
  Posicion:=trim(DataSet0.Fields[18].AsString);      //Titular
  Objeto:=trim(DataSet0.Fields[19].AsString);        //Serie
  DniTitular:=trim(DataSet0.Fields[20].AsString);    //NroCheque
  FechaActaInhumacion:=trim(DataSet0.Fields[21].AsString);   //Importe
  HoraSalida:=trim(DataSet0.Fields[22].AsString);    //NroCuotas
  dnir:=trim(DataSet0.Fields[23].AsString);  //ValorCouta}

   Function Logo(posx,posy:double;vaf:integer):double;
   var Imagen1:TBitMap;
       Fuente,PathLogo:string;
       Tamanio,hoja:integer;

   begin
    with Rvs do begin
     Imagen1 := TBitMap.Create;
     PathLogo:=modulo2.path_todo + '\Imagenes\logo_carmelo.jpg';
     if FileExists(PathLogo) then begin
      Image2.Picture.LoadFromFile(PathLogo);
      Imagen1.Assign(Image2.Picture.Graphic);
      BaseReport.PrintBitmapRect(posx+5,posy+5,posx+50,posy+20,Imagen1);
     end;
     Imagen1.Free;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+20);
     Fuente:=modulo2.INI1.ReadString('Titulo3 Facturas','Fuente','Arial Black');
     try
      Tamanio:=strtoint(modulo2.INI1.ReadString('Titulo3 Facturas','Tamaño','10'));
     except
      Tamanio:=10;
     end;
     BaseReport.SetFont(Fuente,Tamanio);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+50,posy+15,'Servicios & Mandatos S.A.');
     BaseReport.SetFont('Arial',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+50,posy+19,'Remanso de Paz - Parque de los Recuerdos');
     BaseReport.SetFont('Arial Black',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+130,posy+15,'TRASLADO / Solicitud Nº: ' + D1.Text);
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+30);
     BaseReport.PrintXY(posx+5,posy+27,'REGISTRO DE TRASLADOS   - DESTINO:  ' + NroActa);
     BaseReport.SetFont('Arial',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+40);
     BaseReport.PrintXY(posx+5,posy+37,'DATOS DEL DIFUNTO');
     BaseReport.SetFont('Arial',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+175,posy+37,'Id:' + IdHabitante );// + cantiser + '  |  ' + cantiseranio);

     BaseReport.SetFont('Arial Black',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+60);
     BaseReport.PrintXY(posx+5,posy+43,'Fecha Servicio');
     BaseReport.PrintXY(posx+30,posy+43,'Hora');
     BaseReport.PrintXY(posx+50,posy+43,'Nombre del Extinto');
     BaseReport.PrintXY(posx+109,posy+43,'N° Doc.');
     BaseReport.PrintXY(posx+130,posy+43,'Fec. Defuncion');
     BaseReport.PrintXY(posx+170,posy+43,'Fec. Nac.');

     BaseReport.PrintXY(posx+5,posy+47,trim(D3.Text));
     BaseReport.PrintXY(posx+30,posy+47,trim(D2.Text));
     BaseReport.PrintXY(posx+50,posy+47,trim(D8.Text));
     BaseReport.PrintXY(posx+109,posy+47,trim(D9.Text));   //dniinhu
    // BaseReport.PrintXY(posx+130,posy+47,fecnacinhu);
     BaseReport.PrintXY(posx+170,posy+47,trim(D5.Text));

     //BaseReport.PrintXY(posx+5,posy+53,'Medico');
     //BaseReport.PrintXY(posx+65,posy+53,'Seccion');
     //BaseReport.PrintXY(posx+80,posy+53,'Acta');
     //BaseReport.PrintXY(posx+95,posy+53,'Folio');
     //BaseReport.PrintXY(posx+110,posy+53,'Tomo');
     //BaseReport.PrintXY(posx+130,posy+53,'Fec. Defuncion');

     //BaseReport.PrintXY(posx+5,posy+57,trim(losmedicos.Text));
     //BaseReport.PrintXY(posx+68,posy+57,trim(nrosec.Text));
     //BaseReport.PrintXY(posx+83,posy+57,trim(acta.Text));
     //BaseReport.PrintXY(posx+98,posy+57,trim(nrofolio.Text));
     //BaseReport.PrintXY(posx+113,posy+57,trim(nrotomo.Text));
     //BaseReport.PrintXY(posx+130,posy+57,trim(fecinhu.Text));

     BaseReport.SetFont('Arial',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+100);
     BaseReport.PrintXY(posx+5,posy+67,' REFERENCIAS DEL SERVICIO');

     BaseReport.SetFont('Arial Black',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+88);
     BaseReport.PrintXY(posx+5,posy+73,'Suscribe');
     //BaseReport.PrintXY(posx+40,posy+73,'Tipo Servicio');
     BaseReport.PrintXY(posx+75,posy+73,'Nº doc.');
     BaseReport.PrintXY(posx+108,posy+73,'Kms Recorridos');
     //BaseReport.PrintXY(posx+125,posy+73,'H/Salida ');
     //BaseReport.PrintXY(posx+142,posy+73,'H/Llegada ');
     //BaseReport.PrintXY(posx+158,posy+73,'Sector');
     //BaseReport.PrintXY(posx+170,posy+73,'Parcela');
     //BaseReport.PrintXY(posx+185,posy+73,'Nivel');

     BaseReport.PrintXY(posx+5,posy+77,trim(D6.Text));
     //BaseReport.PrintXY(posx+40,posy+77,'Cremacion');  //trim(tiposerv.Text)
     BaseReport.PrintXY(posx+75,posy+77,trim(D10.Text));
     //if origen.ItemIndex = 0 then BaseReport.PrintXY(posx+108,posy+77,'')
     // else
     BaseReport.PrintXY(posx+108,posy+77,trim(NroTomo));
     //BaseReport.PrintXY(posx+108,posy+77,trim(kms.Text));
     ////BaseReport.PrintXY(posx+125,posy+77,trim(horasale.Text));
     //BaseReport.PrintXY(posx+142,posy+77,trim(horallega.Text));
     //BaseReport.PrintXY(posx+158,posy+77,trim(sector.Text));
     //BaseReport.PrintXY(posx+170,posy+77,trim(parcela.Text));
     //BaseReport.PrintXY(posx+185,posy+77,trim(nivel1.Text));

     BaseReport.PrintXY(posx+5,posy+81,'Origen');
     BaseReport.PrintXY(posx+5,posy+86,trim(NroActa));
     BaseReport.PrintXY(posx+108,posy+81,'Destino');
     BaseReport.PrintXY(posx+108,posy+86,trim(NroFolio));

     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+125);
     BaseReport.SetFont('Arial ',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+95,'Chofer : ' + trim(D4.Text));
     BaseReport.PrintXY(posx+100,posy+95,'Unidad Traslado : ' + trim(HoraInhumacion));

     BaseReport.SetFont('Arial Black',10);
     BaseReport.FontColor:=clBlack;
     //    BaseReport.PrintXY(posx+5,posy+110,'Servicio de Traslado : ' + tipocomprob);
     BaseReport.SetFont('Arial Black',12);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+115,'EXCLUSIVAMENTE P/CONTROL GERENCIAL E INFORMATICO');
     BaseReport.PrintXY(posx+5,posy+120,'SIN EXCEPCION Y DE CARACTER OBLIGATORIO');
     BaseReport.SetFont('Arial ',10);
     BaseReport.FontColor:=clBlack;
     // BaseReport.PrintXY(posx+5,posy+129,'OPERADOR SERVICIO: ' + MODULO2.nom_usu + ' Fecha: ' + trim(D3.Text));
     Logo:=posy+30;
    end;
   end;

     Function Mostrar3(posx,posy:double;vaf:integer):double;
    var a,y,pos,maxfil,j:integer;
    sd,sd1,posn,posw:double;
    tot,maxfila,val:real;
   begin
    with Rvs do begin
      BaseReport.SetFont('Arial Black',9);
      BaseReport.RoundRect(posx+60,posy+11,posx+160,posy+16,5,5);
      BaseReport.PrintXY(posx+62,posy+15,'Detalle del Pago del Servicio de Traslado');
      //BaseReport.PrintXY(posx+4,posy+22,tipocomprob );
      BaseReport.SetFont('Arial',8);
      if trim(FormaPago) = 'EFECTIVO' then begin
       BaseReport.SetFont('Arial',9);
       BaseReport.PrintXY(posx+4,posy+19,'CONTADO IMPORTE:$ ' + TRIM(FechaActaInhumacion));
      end;
      {if tpopago.ItemIndex = 1 then begin
       BaseReport.SetFont('Arial Black',8);
       BaseReport.PrintXY(posx+4,posy+19,'FINANCIADO');
       BaseReport.SetFont('Arial',9);
       BaseReport.PrintXY(posx+80,posy+19,'Nro Cuotas:');
       BaseReport.PrintXY(posx+140,posy+19,'Imp. Cuotas:');
       BaseReport.SetFont('Arial Black',8);
       BaseReport.PrintXY(posx+100,posy+19,trim(edit2.Text));
       BaseReport.PrintXY(posx+160,posy+19,trim(valcuota.Text));
      end;}
      if trim(FormaPago)= 'CHEQUE' then begin
       BaseReport.SetFont('Arial',9);
       BaseReport.PrintXY(posx+4,posy+19,'Banco:');
       BaseReport.PrintXY(posx+70,posy+19,'Titular:');
       BaseReport.PrintXY(posx+140,posy+19,'Nro Cheque:');
       BaseReport.PrintXY(posx+4,posy+23,'Fecha Cheque:');
       //BaseReport.PrintXY(posx+70,posy+23,'Fecha Cobro:');
       BaseReport.PrintXY(posx+140,posy+23,'Importe:');
       BaseReport.SetFont('Arial Black',8);
       BaseReport.PrintXY(posx+22,posy+19,trim(Medico));
       BaseReport.PrintXY(posx+83,posy+19,trim(Posicion));
       BaseReport.PrintXY(posx+163,posy+19,trim(Objeto) + '-' + trim(DniTitular));
       //BaseReport.PrintXY(posx+29,posy+23,trim(fcheque.Text));
       BaseReport.PrintXY(posx+163,posy+23,'$ ' + trim(FechaActaInhumacion));
      end;
      if trim(FormaPago)= 'TARJETA DE CREDITO' then begin
       BaseReport.SetFont('Arial',9);
       BaseReport.PrintXY(posx+4,posy+19,'Tarjeta:');
       BaseReport.PrintXY(posx+70,posy+19,'Titular:');
       BaseReport.PrintXY(posx+130,posy+19,'NroCuota:');
       BaseReport.PrintXY(posx+170,posy+19,'Cuota $:');
       BaseReport.PrintXY(posx+4,posy+23,'Comprobante:');
       BaseReport.PrintXY(posx+70,posy+23,'Fecha Cobro:');
       BaseReport.PrintXY(posx+130,posy+23,'Importe Total:');
       BaseReport.SetFont('Arial Black',8);
       BaseReport.PrintXY(posx+22,posy+19,trim(NroAccion));
       BaseReport.PrintXY(posx+85,posy+19,trim(Posicion));
       BaseReport.PrintXY(posx+155,posy+19,trim(HoraSalida));
       BaseReport.PrintXY(posx+185,posy+19,trim(dnir));
       BaseReport.PrintXY(posx+28,posy+23,trim(Nivel));
       //BaseReport.PrintXY(posx+90,posy+23,trim(ftarje.Text));
       BaseReport.PrintXY(posx+153,posy+23,'$ ' + trim(FechaActaInhumacion));
      end;
      if trim(FormaPago)= 'CUENTA CORRIENTE' then begin
       BaseReport.SetFont('Arial',9);
       BaseReport.PrintXY(posx+4,posy+19,'CUENTA CORRIENTE IMPORTE:$ ' + TRIM(FechaActaInhumacion));
      end;
      {if tpopago.ItemIndex = 4 then begin
       BaseReport.SetFont('Arial Black',8);
       BaseReport.PrintXY(posx+4,posy+19,'FINANCIADO SIN INTERES');
       BaseReport.SetFont('Arial',9);
       BaseReport.PrintXY(posx+80,posy+19,'Nro Cuotas:');
       BaseReport.PrintXY(posx+140,posy+19,'Imp. Cuotas:');
       BaseReport.SetFont('Arial Black',8);
       BaseReport.PrintXY(posx+100,posy+19,trim(edit2.Text));  //ctas
       BaseReport.PrintXY(posx+160,posy+19,trim(valcuota.Text));  // importe
      end;  }
    end;
   end;

begin
 posfx:=1;
 posfy:=1;
 salto:=4;
 hoja:=1;
 posfy:=Logo(posfx,posfy,hoja);
 posfx:=5;
 posfy:=posfy + 90;
 posfy:=Mostrar3(posfx,posfy,hoja);

 hoja:=hoja+1;
 posfx:=1;
 posfy:=1;
 salto:=4;
 Rvs.BaseReport.NewPage;
 posfy:=Logo(posfx,posfy,hoja);
 posfx:=5;
 posfy:=posfy + 90;
 posfy:=Mostrar3(posfx,posfy,hoja);
end;

procedure TTrasladosConsultas.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
 IdHabitante:=trim(DataSet0.Fields[0].AsString);  //IdServicio
 D6.Text:=DataSet0.Fields[1].AsString;   //TitularServicio
 D1.Text:=DataSet0.Fields[2].AsString;   //accion
 D2.Text:=DataSet0.Fields[3].AsString;   //SEC
 D9.Text:=DataSet0.Fields[4].AsString;   //parcela
 D10.Text:=DataSet0.Fields[5].AsString;   //fechasepelio
 D8.Text:=DataSet0.Fields[6].AsString;   //inhumado
 D4.Text:=DataSet0.Fields[7].AsString;   //observ
 D5.Text:=DataSet0.Fields[17].AsString;   //fecdeguncion
 D7.Text:=DataSet0.Fields[9].AsString;    //medico
 NroActa:=trim(DataSet0.Fields[18].AsString);   //acta
 NroFolio:=trim(DataSet0.Fields[13].AsString);  //folio
 NroTomo:=trim(DataSet0.Fields[12].AsString);    //tomo
 HoraInhumacion:=trim(DataSet0.Fields[14].AsString); //horasepelio
 FechaActaInhumacion:=trim(DataSet0.Fields[15].AsString);   //fecentrada
 HoraSalida:=trim(DataSet0.Fields[16].AsString);    //horaentrada
 dnir:=trim(DataSet0.Fields[19].AsString);  //nrodnititular
 DniFallecido:=trim(DataSet0.Fields[20].AsString);
 FechaNacimiento:=trim(DataSet0.Fields[21].AsString);
 // D1.Text:=DataSet0.Fields[0].AsString;
 // D3.Text:=DataSet0.Fields[1].AsString;
//  D2.Text:=DataSet0.Fields[2].AsString;
 // D9.Text:=DataSet0.Fields[3].AsString;
 // D4.Text:=DataSet0.Fields[4].AsString;
 // D5.Text:=DataSet0.Fields[7].AsString;
 // D6.Text:=DataSet0.Fields[5].AsString;
 // D7.Text:=DataSet0.Fields[6].AsString;
 // D8.Text:=DataSet0.Fields[8].AsString;
end;

procedure TTrasladosConsultas.RvGPrint(Sender: TObject);
var posfx,posfy,final,salto:double;
var t,y,hoja,nro:integer;
var txt,PathLogo:string;
var pso:boolean;

Function Logo(posx,posy:double;vaf:integer):double;
   var Imagen1:TBitMap;
   begin
     with RvG do begin
       Imagen1 := TBitMap.Create;
       PathLogo:=modulo2.path_todo + '\Imagenes\' + modulo2.INI1.ReadString('Resumen Caja','Imagen1','');
       if FileExists(PathLogo) then begin
          Image1.Picture.LoadFromFile(PathLogo);
          Imagen1.Assign(Image1.Picture.Graphic);
          BaseReport.PrintBitmapRect(posfx+5,posfy+5,posfx+60,posfy+25,Imagen1);
       end;
       Imagen1.Free;
       BaseReport.Rectangle(posx+4,posy+5,posx+280,posy+37);
       BaseReport.SetFont('Arial',9);
       BaseReport.FontColor:=clBlack;
       BaseReport.PrintXY(posx+23,posy+24,'SERVICIOS & MANDATOS');
       //BaseReport.PrintXY(posx+23,posy+28,'Ayacucho N° 160 -  Formosa - CP:3600');
       BaseReport.PrintXY(posx+160,posy+15,'Fecha Imp.: ' + DateToStr(Date));
       BaseReport.PrintXY(posx+160,posy+9,'Pág.: ' + inttostr(vaf));
       BaseReport.RoundRect(posx+20,posy+25,posx+180,posy+30,5,5);
       BaseReport.SetFont('Arial Black',9);
       BaseReport.FontColor:=clBlack;
       BaseReport.PrintXY(posx+23,posy+28.5,'LISTA GENERAL DE IMHUMADOS (por Orden Alfabetico)    -     Cant. Inhumados: ' + inttostr(DataSet0.RecordCount));
       Logo:=posy+26;
     end;
   end;

            /////////  GRILLA de RECAUDACION
  Function GrillaCabecera(posx,posy:double;texto:string):double;
  var t:integer;
  begin
   with RvG do begin
    BaseReport.Rectangle(posx+4,posy,posx+280,posy+5);
    for t:=1 to length(CampI)-1 do begin
     BaseReport.Rectangle(posx + PosHI[t]-2,posy,posx + PosHI[t]-2,posy+5);
    end;
   end;
    RvG.BaseReport.SetFont('Arial Black',7);
    RvG.BaseReport.FontColor:=clBlack;
    for t:=0 to length(CampI)-1 do begin
      RvG.BaseReport.PrintXY(posx + PosHI[t],posy+4,TxtCampI[t]);
   end;
  Result:=posy+5;
  end;

  /// Grilla Detalle
  Function GrillaDetalle(posx,posy:double;texto:string):double;
  var t:integer;
  begin
    RvG.BaseReport.SetFont('Arial',5);
    RvG.BaseReport.FontColor:=clBlack;
    for t:=0 to length(CampI)-1 do
    RvG.BaseReport.PrintXY(posx + PosHI[t],posy+4,DataSet0.Fields[CampI[t]].AsString);
    Result:=posy+3.5;
  end;

  //// Grilla Recuadro
  Function GrillaRecuadro(posx,posy,posy2:double):double;
  var t:integer;
  begin
  with RvG do begin
    BaseReport.Rectangle(posx+4,posy,posx+280,posy2);
    for t:=1 to length(CampI)-1 do begin
      BaseReport.Rectangle(posx + PosHI[t]-2,posy,posx + PosHI[t]-2,posy2);
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

  {SELECT  IdTraslado, NroSolicitud, FechaServicio, Hora, Inhumado, Dniinhumado, FechaNacimiento, Suscribe, DniSuscribe, '
   +'origen, destino, Km, UnidadTraslado, chofer, Tipoformapago, banco, TarjetaCredito, NroComprobante, Titular, Serie, '
   +'NroCheque, Importe, NroCuotas, ValorCouta FROM  VParcelasServiciosTraslados'}


  CampI[0]:=1;CampI[1]:=7;CampI[2]:=4;CampI[3]:=2;CampI[4]:=9;CampI[5]:=10;CampI[6]:=11;
  TxtCampI[0]:='Orden';TxtCampI[1]:='Suscribe';TxtCampI[2]:='NombreInhumado';TxtCampI[3]:='FecServicio';
  TxtCampI[4]:='Origen';TxtCampI[5]:='Destino';TxtCampI[6]:='Kms';
  PosHI[0]:=5;PosHI[1]:=15;PosHI[2]:=68;PosHI[3]:=127;PosHI[4]:=153;PosHI[5]:=210;PosHI[6]:=270;
  final:=GrillaCabecera(posfx,posfy+5,txt);
  posfy:=final;
  pso:=false;
  for y:=1 to DataSet0.RecordCount do begin
   DataSet0.RecNo:=y;
   if pso then begin
     RvG.BaseReport.Rectangle(posfx+4,posfy+1,posfx+280,posfy+1)
   end
   else pso:=true;
   posfy:=GrillaDetalle(posfx,posfy,txt);
   if posfy > 280 then begin
    posfy:=GrillaRecuadro(posfx,final,posfy+2);
    posfx:=5.5;
    posfy:=5;
    hoja:=hoja+1;
    RvG.BaseReport.NewPage;
    posfy:=Logo(posfx,posfy,hoja);  // llamamos al encabezado
    final:=GrillaCabecera(posfx,posfy+5,txt);
    posfy:=final;pso:=false;
   end;
  end;
  if pso then posfy:=GrillaRecuadro(posfx,final,posfy+2);
  except
end;
end;


procedure TTrasladosConsultas.FECNACExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(FECNAC.Text));
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  FECNAC.SetFocus;
end;
end;

procedure TTrasladosConsultas.FECNACDExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(FECNACD.Text));
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  FECNACD.SetFocus;
end;
end;

procedure TTrasladosConsultas.FECNACKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  FECNACD.SetFocus;
end;
end;

procedure TTrasladosConsultas.FECNACDKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  buscar.SetFocus;
end;
end;

procedure TTrasladosConsultas.ImpActaInhuClick(Sender: TObject);
var gf:integer;
begin
gf:=messagedlgpos('Desea Imprimir la Orden de Sepelio correspondiente?'
    ,mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
 if gf = 1 then begin
  auditAccesos('M0dulo 2','REIMP. ORDEN DE SEPELIO: ' + TRIM(D1.Text) + ' Usu ' + inttostr(modulo2.nro_usu));
  RvS.Execute;
 end;
end;

end.

unit Consu_Sepelios;

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
  TSepelioConsulta = class(TForm)
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
    RvOrden: TRvSystem;
    C7: TRadioButton;
    Label12: TLabel;
    Label13: TLabel;
    FECNAC: TMaskEdit;
    FECNACD: TMaskEdit;
    ImpActaInhu: TJvBitBtn;
    grillaTestigos: TJvStringGrid;
    impactacircu: TJvBitBtn;
    RVActa: TRvSystem;
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
    procedure RvOrdenPrint(Sender: TObject);
    procedure FECNACExit(Sender: TObject);
    procedure FECNACDExit(Sender: TObject);
    procedure FECNACKeyPress(Sender: TObject; var Key: Char);
    procedure FECNACDKeyPress(Sender: TObject; var Key: Char);
    procedure ImpActaInhuClick(Sender: TObject);
    procedure impactacircuClick(Sender: TObject);
    procedure RVActaPrint(Sender: TObject);
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
    cantiseranio, tipodocr,domr,barrior,dnir,NroActaInhumacion,HoraInhumacion,FechaActaInhumacion,nroactager,edadinhu,
    Nacioihum,EstCivInhum,elDominhum,eldomtitular,RazSocial: string;
  end;

var
  SepelioConsulta: TSepelioConsulta;

implementation

uses Modulo, Busqueda;
{$R *.dfm}

procedure TSepelioConsulta.FormActivate(Sender: TObject);
begin
 if not(gh) then begin
  gh:=true;
  Impactainhu.Enabled:=false;
  impactacircu.Enabled :=false;
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

procedure TSepelioConsulta.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TSepelioConsulta.Coloca1(nro:byte);
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
   txtw:='SELECT IdServicio,TitularServicio,Nroaccion,Sector ,Parcela,Fecha,inhumado,Observaciones,Tipoformapago '
   +',Medico,NroComprobante,FormaPago,TOMO,FOLIO,HORA,FECHAENTRADA,HORAENTRADA,fechadefuncion,acta,nrodnititular, '
   +' Nrodniinhumado,fecnacinhumado,Nacionalidadihum,EstadoCivilInhum,elDominhum,domtit,RazonSocial FROM VParcelasServiciosSepelios'
   + ' WHERE (inhumado LIKE ' + chr(39) + chr(37) + transforma(trim(nombre.Text),chr(39),chr(33)) + chr(37) + chr(39) + ') order by inhumado';
  end;
  if C2.Checked then begin
   txtw:='SELECT IdServicio,TitularServicio,Nroaccion,Sector ,Parcela,Fecha,inhumado,Observaciones,Tipoformapago '
   +',Medico,NroComprobante,FormaPago,TOMO,FOLIO,HORA,FECHAENTRADA,HORAENTRADA,fechadefuncion,acta,nrodnititular, '
   +'Nrodniinhumado,fecnacinhumado,Nacionalidadihum,EstadoCivilInhum,elDominhum,domtit,RazonSocial '
   +' FROM VParcelasServiciosSepelios where (IdServicio = ' + trim(accion.Text) +') order by inhumado';
  end;
  if c7.Checked then begin
   txtw:='SELECT IdServicio,TitularServicio,Nroaccion,Sector ,Parcela,Fecha,inhumado,Observaciones,Tipoformapago '
   +',Medico,NroComprobante,FormaPago,TOMO,FOLIO,HORA,FECHAENTRADA,HORAENTRADA,fechadefuncion,acta,nrodnititular, '
   +'Nrodniinhumado,fecnacinhumado,Nacionalidadihum,EstadoCivilInhum,elDominhum,domtit,RazonSocial FROM VParcelasServiciosSepelios'
   +' WHERE (Fecha >= ' + chr(39) + trim(fecnac.Text) + chr(39) + ') '
    + 'AND (Fecha <= '+ chr(39) + trim(fecnacd.Text) + chr(39) +') ORDER BY Fecha ';
  end;
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
    DBGrid1.Columns[5].Width:=80;
    DBGrid1.Columns[6].Width:=200;
    DBGrid1.Columns[7].Width:=80;
    DBGrid1.Columns[8].Width:=250;
    DBGrid1.Columns[9].Width:=150;
   guarda.Enabled:=true;
  end
  else begin
   guarda.Enabled:=false;
   messagedlg('La opcion seleccionada no arrojo ningun resultado.. por favor realice otra busqueda',mtInformation,[mbok],0);
   impactainhu.Enabled :=false;
   D6.Clear;
   D1.Clear;
   D2.Clear;
   D9.Clear;
   D10.Clear;
   D8.Clear;
   D4.Clear;
   D5.Clear;
   D7.Clear;
  end;
 end;
 if nro = 9 then begin  //cargo la grilla de los testigos
 //
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

procedure TSepelioConsulta.JvBitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TSepelioConsulta.C1Click(Sender: TObject);
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
  label4.Caption:='Ingrese Nro Accion:';
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

procedure TSepelioConsulta.BuscarClick(Sender: TObject);
begin
Coloca1(0);
end;

procedure TSepelioConsulta.DBGrid1CellClick(Column: TColumn);
var p,u:integer;
begin
 if not DataSet0.IsEmpty then begin
 {IdServicio,TitularServicio,Nroaccion,Sector ,Parcela,Fecha,inhumado,Observaciones,Tipoformapago '  //8
   +',Medico,NroComprobante,FormaPago,TOMO,FOLIO,HORA,FECHAENTRADA,HORAENTRADA,fechadefuncion,acta,nrodnititular, ' //19
   +' Nrodniinhumado,fecnacinhumado,Nacionalidadihum,EstadoCivilInhum,elDominhum ,eldomtitu  // 25}
 IdHabitante:=trim(DataSet0.Fields[0].AsString);  //IdServicio
 D6.Text:=DataSet0.Fields[1].AsString;   //TitularServicio
 D1.Text:=DataSet0.Fields[2].AsString;   //accion
 D2.Text:=DataSet0.Fields[3].AsString;   //SEC
 D9.Text:=DataSet0.Fields[4].AsString;   //parcela
 D10.Text:=DataSet0.Fields[5].AsString;   //fechasepelio
 D8.Text:=DataSet0.Fields[6].AsString;   //inhumado
 D4.Text:=DataSet0.Fields[7].AsString;   //observ
 FormaPago:=DataSet0.Fields[8].AsString;   //FORMAPAGO
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
 edadinhu:=unidad.edad(strcut(Fec_System(),10),trim(FechaNacimiento));
 impactainhu.Enabled:=true;
 impactacircu.Enabled :=true;
 Nacioihum:=trim(DataSet0.Fields[22].AsString);
 EstCivInhum:=trim(DataSet0.Fields[23].AsString);
 elDominhum:=trim(DataSet0.Fields[24].AsString);
 eldomtitular :=trim(DataSet0.Fields[25].AsString);
 RazSocial :=trim(DataSet0.Fields[26].AsString);
{  D1.Text:=DataSet0.Fields[1].AsString;    //ACCION
  //EDIT1.Text:=DataSet0.Fields[1].AsString;
  D3.Text:=DataSet0.Fields[2].AsString;    //NIV
 // EDIT2.Text:=DataSet0.Fields[2].AsString;
  D2.Text:=DataSet0.Fields[37].AsString;   //SEC
 // EDIT3.Text:=DataSet0.Fields[37].AsString;
  D9.Text:=DataSet0.Fields[38].AsString;   //PARCELA
 // EDIT4.Text:=DataSet0.Fields[38].AsString;
  D4.Text:=DataSet0.Fields[3].AsString;     //POS
  //  EDIT5.Text:=DataSet0.Fields[3].AsString;
  D5.Text:=DataSet0.Fields[33].AsString;    // FEC FALLECIM
  D6.Text:=DataSet0.Fields[39].AsString;     //TIT PARCELA
  D7.Text:=DataSet0.Fields[4].AsString;     // OBJETO
  D8.Text:=DataSet0.Fields[8].AsString;     //NOMBRE FALLECIDO
  // EDIT6.Text:=DataSet0.Fields[8].AsString;
  D10.Text:=DataSet0.Fields[13].AsString;    //FEC INHUM
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

procedure TSepelioConsulta.DBGrid1TitleClick(Column: TColumn);
begin
DataSet0.IndexFieldNames:=Column.FieldName;
end;

procedure TSepelioConsulta.LimpiarVentana(nro:byte);
var t,r:integer;
begin
 if nro =0 then begin
  DataSource1.DataSet:=nil;
  C2.Checked:=true;
  PC1.ActivePage:=PC1.Pages[0];
  D1.Clear;
  D2.Clear;
  D3.Clear;
  D4.Clear;
  D5.Clear;
  D6.Clear;
  D7.Clear;
  d8.Clear;
 end;
 GUARDA.Enabled:=false;
end;

procedure TSepelioConsulta.LimpiarClick(Sender: TObject);
begin
LimpiarVentana(0);
end;

procedure TSepelioConsulta.GUARDAClick(Sender: TObject);
var gf,t:integer;
    m:boolean;
    txtw:widestring;
begin
 gf:=messagedlg('Desea Realmente Imprimir esta consula de Sepelios',mtWarning,[mbok,mbCancel],0);
  if gf = 1 then begin
   AuditAccesos('Mdulo 2','IMPRESION DE INHUMADOS');
   rvs.Execute;
  end
  else begin
    messagedlg('Ud. acaba de Cancelar esta Acción. No se produjeron ningún cambio en la Base de Datos',mtWarning,[mbok],0);
  end;
end;

procedure TSepelioConsulta.accionKeyPress(Sender: TObject; var Key: Char);
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

procedure TSepelioConsulta.parcelaKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  buscar.SetFocus;
 end
 else begin
  if ( StrScan('0123456789',Key) <> nil ) or   ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;
end;

procedure TSepelioConsulta.nombreKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  buscar.SetFocus;
end;
end;

procedure TSepelioConsulta.RvSPrint(Sender: TObject);
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
    BaseReport.Rectangle(posx+4,posy+5,posx+280,posy+37);  //(posx+4,posy+5,posx+195,posy+37);
    BaseReport.SetFont('Arial',9);
    BaseReport.FontColor:=clBlack;
    BaseReport.PrintXY(posx+23,posy+24,'SERVICIOS & MANDATOS');
    BaseReport.PrintXY(posx+5,posy+28,'Ayacucho N° 160 -  Formosa - CP:3600');
    if c2.Checked then BaseReport.PrintXY(posx+120,posy+28,'Accion Nº: ' + trim(accion.Text));
    if c1.Checked then BaseReport.PrintXY(posx+120,posy+28,'Por Nombre De Inhumado: '  + trim(nombre.Text));
    if c7.Checked then BaseReport.PrintXY(posx+80,posy+28,'LISTA DE SEPELIOS DESDE: ' + trim(FECNAC.Text)+ ' - HASTA: '+ trim(FECNACD.Text));;
    BaseReport.SetFont('Arial',8);
    BaseReport.FontColor:=clBlack;
    BaseReport.PrintXY(posx+165,posy+9,'Pág.: ' + inttostr(vaf));
    BaseReport.PrintXY(posx+165,posy+15,'Fecha Imp.: ' + DateToStr(Date));
    BaseReport.RoundRect(posx+20,posy+31,posx+280,posy+36,5,5);
    BaseReport.SetFont('Arial',9);
    BaseReport.FontColor:=clBlack;
    BaseReport.PrintXY(posx+23,posy+34.5,'LISTA DE INHUMADOS');
    BaseReport.SetFont('Arial Black',8);
    BaseReport.PrintXY(posx+170,posy+34.5,'Total: ' + IntToStr(DataSet0.RecordCount));
    Logo:=posy+33;
   end;
  end;
            /////////  GRILLA de RECAUDACION
  Function GrillaCabecera(posx,posy:double;texto:string):double;
  var t:integer;
  begin
   with RvS do begin
    BaseReport.Rectangle(posx+4,posy,posx+280,posy+5);
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
    BaseReport.Rectangle(posx+4,posy,posx+280,posy2);
    for t:=1 to length(Camp)-1 do begin
      BaseReport.Rectangle(posx + PosH[t]-2,posy,posx + PosH[t]-2,posy2);
    end;
   Result:=posy+4;
   end;
  end;

begin
 Rvs.SystemPrinter.Orientation:=poPortrait;
 // Rvs.SystemPrinter.Orientation:=poLandScape;
 try
  posfx:=5.5;
  posfy:=5;
  salto:=4;
  final:=0;
  hoja:=1;
  posfy:=Logo(posfx,posfy,hoja);
  Camp[0]:=0;         Camp[1]:=1;
  Camp[2]:=2;         Camp[3]:=3;
  Camp[4]:=4;
  Camp[5]:=5;         Camp[6]:=6;
  Camp[7]:=21;        Camp[8]:=15;
  TxtCamp[0]:='IdServ.';TxtCamp[1]:='Titular';TxtCamp[2]:='Accion';TxtCamp[3]:='Sector';
  TxtCamp[4]:='Parcela';TxtCamp[5]:='FechaServicio';TxtCamp[6]:='NombreInhumado';
  TxtCamp[7]:='DniInhumado'; TxtCamp[8]:='FecEntrada';
  PosH[0]:=5;PosH[1]:=18;PosH[2]:=60;PosH[3]:=72;PosH[4]:=85;
  PosH[5]:=99; PosH[6]:=120;
  PosH[7]:=170;PosH[8]:=190;
  final:=GrillaCabecera(posfx,posfy+5,txt);
  posfy:=final;
  pso:=false;
  for y:=1 to DataSet0.RecordCount do begin
   DataSet0.RecNo:=y;
   if pso then begin
      RvS.BaseReport.Rectangle(posfx+4,posfy+1,posfx+280,posfy+1)
   end
   else pso:=true;
    posfy:=GrillaDetalle(posfx,posfy,txt);
    if posfy > 190 then begin    //190
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
  if pso then posfy:=GrillaRecuadro(posfx,final,posfy+2);
  except
end;
end;

procedure TSepelioConsulta.DBNavigator1Click(Sender: TObject;
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
 
 edadinhu:=unidad.edad(strcut(Fec_System(),10),trim(FechaNacimiento));
 impactainhu.Enabled:=true;
 impactacircu.Enabled :=true;
 Nacioihum:=trim(DataSet0.Fields[22].AsString);
 EstCivInhum:=trim(DataSet0.Fields[23].AsString);
 elDominhum:=trim(DataSet0.Fields[24].AsString);
 eldomtitular :=trim(DataSet0.Fields[25].AsString);
 RazSocial :=trim(DataSet0.Fields[26].AsString);
end;

procedure TSepelioConsulta.RvGPrint(Sender: TObject);
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
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+37);
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
    BaseReport.Rectangle(posx+4,posy,posx+200,posy+5);
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
    BaseReport.Rectangle(posx+4,posy,posx+200,posy2);
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
  CampI[0]:=0;CampI[1]:=1;CampI[2]:=2;CampI[3]:=3;CampI[4]:=4;CampI[5]:=5;CampI[6]:=6;
  TxtCampI[0]:='Orden';TxtCampI[1]:='NombreInhumado';TxtCampI[2]:='NroAccion';TxtCampI[3]:='Sector';
  TxtCampI[4]:='Parcela';TxtCampI[5]:='FechaFellecimiento';TxtCampI[6]:='FechaInhumacion';
  PosHI[0]:=5;PosHI[1]:=15;PosHI[2]:=88;PosHI[3]:=107;PosHI[4]:=123;PosHI[5]:=140;PosHI[6]:=170;
  final:=GrillaCabecera(posfx,posfy+5,txt);
  posfy:=final;
  pso:=false;
  for y:=1 to DataSet0.RecordCount do begin
   DataSet0.RecNo:=y;
   if pso then begin
     RvG.BaseReport.Rectangle(posfx+4,posfy+1,posfx+200,posfy+1)
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


procedure TSepelioConsulta.RvOrdenPrint(Sender: TObject);
var posfx,posfy,posfin,pos_y,salto:double;
      hoja:integer;

  Function Logo(posx,posy:double;vaf:integer):double;
   var Imagen1:TBitMap;
       Fuente,PathLogo:string;
       Tamanio,hoja:integer;
   begin
     with RvOrden do begin
     Imagen1 := TBitMap.Create;
     PathLogo:=modulo2.path_todo + '\Imagenes\logo_carmelo.jpg';
     if FileExists(PathLogo) then begin
      Image1.Picture.LoadFromFile(PathLogo);
      Imagen1.Assign(Image1.Picture.Graphic);
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
     BaseReport.PrintXY(posx+140,posy+15,'Remanso de Paz - Parque de los Recuerdos');
     BaseReport.SetFont('Arial Black',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+30);
     BaseReport.PrintXY(posx+5,posy+27,'REGISTRO DE SEPELIOS   - ORIGEN :  ' + trim(d4.Text));
     BaseReport.PrintXY(posx+130,posy+27,'SEPELIO Nº: '+ IdHabitante);
     BaseReport.SetFont('Arial',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+40);
     BaseReport.PrintXY(posx+5,posy+37,'DATOS DEL FALLECIDO');
     BaseReport.SetFont('Arial Black',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+60);
     BaseReport.PrintXY(posx+5,posy+43,'Fec. Entrada');
     BaseReport.PrintXY(posx+30,posy+43,'Hora Entrada');
     BaseReport.PrintXY(posx+55,posy+43,'Fecha Serv.');
     BaseReport.PrintXY(posx+75,posy+43,'Hora Serv.');
     BaseReport.PrintXY(posx+105,posy+43,'Nombre del Extinto');
     BaseReport.PrintXY(posx+150,posy+43,'N° Doc.');
   //  BaseReport.PrintXY(posx+165,posy+43,'Edad');
     BaseReport.PrintXY(posx+180,posy+43,'Fec. Nac.');

     BaseReport.PrintXY(posx+5,posy+47,trim(FechaActaInhumacion));
     BaseReport.PrintXY(posx+30,posy+47,trim(HoraSalida));
     BaseReport.PrintXY(posx+55,posy+47,trim(D10.Text));
     BaseReport.PrintXY(posx+75,posy+47,trim(HoraInhumacion));   //dniinhu
     BaseReport.PrintXY(posx+105,posy+47,trim(D8.Text));
     BaseReport.PrintXY(posx+150,posy+47,DniFallecido);
   //  BaseReport.PrintXY(posx+165,posy+47,edadinhu);
     BaseReport.PrintXY(posx+180,posy+47,FechaNacimiento);

     BaseReport.PrintXY(posx+5,posy+53,'Medico');
     BaseReport.PrintXY(posx+80,posy+53,'Acta');
     BaseReport.PrintXY(posx+90,posy+53,'Folio');
     BaseReport.PrintXY(posx+110,posy+53,'Tomo');
     BaseReport.PrintXY(posx+130,posy+53,'Fec. Defuncion');

     BaseReport.PrintXY(posx+5,posy+57,trim(D7.Text));
     BaseReport.PrintXY(posx+83,posy+57,NroActa);
   //  BaseReport.PrintXY(posx+93,posy+57,NroFolio));
     BaseReport.PrintXY(posx+113,posy+57,NroTomo);
     BaseReport.PrintXY(posx+130,posy+57,trim(D5.Text));

     BaseReport.SetFont('Arial',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+70);
     BaseReport.PrintXY(posx+5,posy+67,' REFERENCIAS DEL SERVICIO');

     BaseReport.SetFont('Arial Black',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+88);
     BaseReport.PrintXY(posx+5,posy+73,'Suscribe');
     BaseReport.PrintXY(posx+65,posy+73,'Nº doc.');
     BaseReport.PrintXY(posx+125,posy+73,'Nro Accion ');
     BaseReport.PrintXY(posx+158,posy+73,'Sector');
     BaseReport.PrintXY(posx+175,posy+73,'Parcela');
     BaseReport.PrintXY(posx+5,posy+77,trim(D6.Text));
     BaseReport.PrintXY(posx+65,posy+77,dnir);
     //if origen.ItemIndex = 0 then begin
      BaseReport.PrintXY(posx+125,posy+77,trim(d1.Text));
      BaseReport.PrintXY(posx+158,posy+77,trim(d2.Text));
      BaseReport.PrintXY(posx+175,posy+77,trim(d9.Text));
     //end;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+125);
     BaseReport.SetFont('Arial Black',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.SetFont('Arial ',8);
     BaseReport.FontColor:=clBlack;

     BaseReport.SetFont('Arial Black',12);
     BaseReport.FontColor:=clBlack;
   //  BaseReport.PrintXY(posx+5,posy+105,'Sepelio : ' + tipocomprob);
     BaseReport.PrintXY(posx+5,posy+115,'EXCLUSIVAMENTE P/CONTROL GERENCIAL E INFORMATICO');
     BaseReport.PrintXY(posx+5,posy+120,'SIN EXCEPCION Y DE CARACTER OBLIGATORIO');
     BaseReport.SetFont('Arial ',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+129,'OPERADOR SERVICIO: ' + MODULO2.nom_usu + ' FechaHora: ' + Fec_System());
     Logo:=posy+30;
    end;
   end;

   
   Function Mostrar3(posx,posy:double;vaf:integer):double;
    var a,y,pos,maxfil,j:integer;
    sd,sd1,posn,posw:double;
    tot,maxfila,val:real;
   begin
    with RvOrden do begin
      BaseReport.SetFont('Arial Black',9);
      BaseReport.RoundRect(posx+60,posy+11,posx+130,posy+16,5,5);
      BaseReport.PrintXY(posx+62,posy+15,'Detalle del Pago del Sepelio');
     // BaseReport.PrintXY(posx+4,posy+22,tipocomprob );
      BaseReport.SetFont('Arial',8);
     { if tpopago.ItemIndex = 0 then begin
       BaseReport.SetFont('Arial',9);
       BaseReport.PrintXY(posx+4,posy+25,'CONTADO IMPORTE:$ ' + TRIM(E5.Text));
      end;
      if tpopago.ItemIndex = 1 then begin
       BaseReport.SetFont('Arial',9);
       BaseReport.PrintXY(posx+4,posy+20,'Banco:');
       BaseReport.PrintXY(posx+70,posy+20,'Titular:');
       BaseReport.PrintXY(posx+140,posy+20,'Nro Cheque:');
       BaseReport.PrintXY(posx+4,posy+25,'Fecha Cheque:');
       BaseReport.PrintXY(posx+130,posy+25,'Importe:');
       BaseReport.SetFont('Arial Black',8);
       BaseReport.PrintXY(posx+22,posy+20,trim(banco.Text));
       BaseReport.PrintXY(posx+83,posy+20,trim(titcheq.Text));
       BaseReport.PrintXY(posx+163,posy+20,trim(e1.Text) + '-' + trim(e2.Text));
       BaseReport.PrintXY(posx+29,posy+25,trim(fcheque.Text));
       BaseReport.PrintXY(posx+153,posy+25,'$ ' + trim(E5.Text));
      end;
      if tpopago.ItemIndex = 2 then begin
       BaseReport.SetFont('Arial',9);
       BaseReport.PrintXY(posx+4,posy+20,'Tarjeta:');
       BaseReport.PrintXY(posx+70,posy+20,'Titular:');
       BaseReport.PrintXY(posx+130,posy+20,'NroCuota:');
       BaseReport.PrintXY(posx+4,posy+25,'Comprobante:');
       BaseReport.PrintXY(posx+70,posy+25,'Fecha Cobro:');
       BaseReport.PrintXY(posx+130,posy+25,'Importe :');
       BaseReport.SetFont('Arial Black',8);
       BaseReport.PrintXY(posx+22,posy+20,trim(tarjeta.Text));
       BaseReport.PrintXY(posx+85,posy+20,trim(tittarje.Text));
       BaseReport.PrintXY(posx+155,posy+20,trim(nrocuota.Text));
       BaseReport.PrintXY(posx+28,posy+25,trim(nrocb.Text));
       BaseReport.PrintXY(posx+90,posy+25,trim(ftarje.Text));
       BaseReport.PrintXY(posx+153,posy+25,'$ ' + trim(valcuota.Text));
      end;
      if tpopago.ItemIndex = 3 then begin
       BaseReport.SetFont('Arial',9);
       BaseReport.PrintXY(posx+4,posy+20,'CUENTA IMPORTE:$ ' + TRIM(E5.Text));
      end; }
    end;
   end;

begin
 posfx:=1;
 posfy:=1;
 salto:=4;
 hoja:=1;
 posfy:=Logo(posfx,posfy,hoja);
 posfx:=5;
 posfy:=posfy + 95;
 posfy:=Mostrar3(posfx,posfy,hoja);
end;

procedure TSepelioConsulta.FECNACExit(Sender: TObject);
var kl:Tdatetime;
begin
 try
  kl:=strtodate(trim(FECNAC.Text));
 except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  FECNAC.SetFocus;
 end;
end;

procedure TSepelioConsulta.FECNACDExit(Sender: TObject);
var kl:Tdatetime;
begin
 try
  kl:=strtodate(trim(FECNACD.Text));
 except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  FECNACD.SetFocus;
 end;
end;

procedure TSepelioConsulta.FECNACKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  FECNACD.SetFocus;
end;
end;

procedure TSepelioConsulta.FECNACDKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  buscar.SetFocus;
 end;
end;

procedure TSepelioConsulta.ImpActaInhuClick(Sender: TObject);
var gf:integer;
begin
gf:=messagedlgpos('Desea Imprimir la Orden de Sepelio correspondiente?'
    ,mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
 if gf = 1 then begin
  auditAccesos('M0dulo 2','REIMP. ORDEN DE SEPELIO: ' + TRIM(D1.Text) + ' Usu ' + inttostr(modulo2.nro_usu));
  RvOrden.Execute;
 end;
end;

procedure TSepelioConsulta.impactacircuClick(Sender: TObject);
begin
RVActa.Execute;
end;

procedure TSepelioConsulta.RVActaPrint(Sender: TObject);
var posfx,posfy,posfin,pos_y,salto:double;
   hoja,m,t:integer;
   mes,meses,anio,day:string;
   Imagen3:TBitMap;

   Function Logo(posx,posy:double;vaf:integer):double;
   var Imagen1:TBitMap;
       Fuente,PathLogo:string;
       Tamanio,hoja:integer;
   begin
   {IdServicio,TitularServicio,Nroaccion,Sector ,Parcela,Fecha,inhumado,Observaciones,Tipoformapago '  //8
   +',Medico,NroComprobante,FormaPago,TOMO,FOLIO,HORA,FECHAENTRADA,HORAENTRADA,fechadefuncion,acta,nrodnititular, ' //19
   +' Nrodniinhumado,fecnacinhumado,Nacionalidadihum,EstadoCivilInhum,elDominhum ,razonsocial  // 25
 IdHabitante:=trim(DataSet0.Fields[0].AsString);  //IdServicio
 D6.Text:=DataSet0.Fields[1].AsString;   //TitularServicio
 D1.Text:=DataSet0.Fields[2].AsString;   //accion
 D2.Text:=DataSet0.Fields[3].AsString;   //SEC
 D9.Text:=DataSet0.Fields[4].AsString;   //parcela
 D10.Text:=DataSet0.Fields[5].AsString;   //fechasepelio
 D8.Text:=DataSet0.Fields[6].AsString;   //inhumado
 D4.Text:=DataSet0.Fields[7].AsString;   //observ
 FormaPago:=DataSet0.Fields[8].AsString;   //FORMAPAGO
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
 edadinhu:=unidad.edad(strcut(Fec_System(),10),trim(FechaNacimiento));
 impactainhu.Enabled:=true;
 impactacircu.Enabled :=true;
 Nacioihum:=trim(DataSet0.Fields[22].AsString);
 EstCivInhum:=trim(DataSet0.Fields[23].AsString);
 elDominhum:=trim(DataSet0.Fields[24].AsString); }

    with RVActa do begin
     Mes:=el_mes(strtoint(strcut_midle(trim(D10.Text),4,5)));
     Anio:=strcut_midle(trim(D10.Text),7,10);
     day:=LeftStr(trim(D10.Text),2);
     Imagen1 := TBitMap.Create;
      PathLogo:=modulo2.path_todo + '\Formularios\ActaCiruclacionSEPELIO.jpg';
      if FileExists(PathLogo) then begin
       Image1.Picture.LoadFromFile(PathLogo);
       Imagen1.Assign(Image1.Picture.Graphic);
       BaseReport.PrintBitmapRect(posx,posy,posx+215,posy+290,Imagen1);
      end;
      Imagen1.Free;

      BaseReport.SetFont('Arial Black',12);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posx+165,posy+23,IdHabitante); //actacircu);

      BaseReport.SetFont('Arial Black',10);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posx+84,posy+30,day);
      BaseReport.PrintXY(posx+96,posy+30, 'de ' + mes);
      BaseReport.PrintXY(posx+140,posy+30, 'del ' + Anio);
      BaseReport.PrintXY(posx+172,posy+30,HoraInhumacion);

      BaseReport.PrintXY(posx+75,posy+37,IdHabitante);

      BaseReport.PrintXY(posx+100,posy+45,trim(D8.Text));
      BaseReport.PrintXY(posx+52,posy+50,trim(DniFallecido));
      BaseReport.PrintXY(posx+97,posy+50,trim(FechaNacimiento));
      BaseReport.PrintXY(posx+149,posy+50,trim(Nacioihum));

      BaseReport.SetFont('Arial Black',9);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posx+35,posy+56,trim(EstCivInhum));
      BaseReport.SetFont('Arial Black',10);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posx+68,posy+56,trim(edadinhu));
      BaseReport.PrintXY(posx+135,posy+56,trim(elDominhum));

      BaseReport.PrintXY(posx+60,posy+64,trim(D5.Text));
      BaseReport.PrintXY(posx+130,posy+64,trim(D7.Text));

      BaseReport.PrintXY(posx+85,posy+72,trim(NroActa));
      if trim(D4.Text) = 'CARMELO MONTE' then begin
       BaseReport.PrintXY(posx+55,posy+79,trim(D9.Text));
       BaseReport.PrintXY(posx+83,posy+79,trim(D2.Text));
       BaseReport.PrintXY(posx+139,posy+79,trim(RazSocial));
       BaseReport.PrintXY(posx+105,posy+87,trim(D1.Text));
      end;

      BaseReport.PrintXY(posx+75,posy+108,trim(D6.Text));
      BaseReport.PrintXY(posx+180,posy+108,trim(dnir));
      BaseReport.PrintXY(posx+45,posy+117,trim(eldomtitular));

      BaseReport.PrintXY(posx+55,posy+222,trim(D4.Text));
    end;
   end;

begin
  posfx:=0;
  posfy:=0;
  salto:=4;
  hoja:=1;
  posfy:=Logo(posfx,posfy,hoja);
end;

end.

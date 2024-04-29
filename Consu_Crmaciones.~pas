unit Consu_Crmaciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid, ExtCtrls,
  ComCtrls, JvgPage, Buttons, JvExButtons, JvBitBtn, ToolWin, DB,
  JvgGroupBox, Mask, JvExGrids, JvStringGrid, Unidad, DBClient,ADODB,
  WSDLIntf, ClaseFunciones, StrUtils, LMDControl, LMDBaseControl,
  LMDBaseGraphicControl, LMDGraphicControl, LMDScrollText,
  ClaseParcelasInhumados,
  ClaseSistemas, RpDefine, RpBase, RpSystem, ImgList, DBCtrls, Menus;

type
  TCremacionConsulta = class(TForm)
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
    cambiaorigen: TJvBitBtn;
    GroupBox2: TGroupBox;
    Panel2: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    modifica: TJvBitBtn;
    cierra: TJvBitBtn;
    Label17: TLabel;
    origen: TComboBox;
    idser: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Coloca1(nro:byte);
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
    procedure RvOrdenPrint(Sender: TObject);
    procedure FECNACExit(Sender: TObject);
    procedure FECNACDExit(Sender: TObject);
    procedure FECNACKeyPress(Sender: TObject; var Key: Char);
    procedure FECNACDKeyPress(Sender: TObject; var Key: Char);
    procedure ImpActaInhuClick(Sender: TObject);
    procedure cambiaorigenClick(Sender: TObject);
    procedure cierraClick(Sender: TObject);
    procedure origenExit(Sender: TObject);
    procedure origenKeyPress(Sender: TObject; var Key: Char);
    procedure modificaClick(Sender: TObject);
    procedure JvBitBtn1Click(Sender: TObject);
  private
    gh:boolean;
    IdCombos:array of array of string;
    DataSet0,DataSet1,DtCombo:TClientDataSet;
    ParcelasInhumados:TParcelasInhumados;
        PROCESO: TADODataSet;
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

    IdHabitante, NroAccion,  Posicion, Objeto, DniFallecido,DniTitular,
    NombTitular, NombreFallecido, FechaIngreso,FechaFallecimiento, FechaInhumacion,
    HoraFallecimiento, HoraSalida, HoraLlegada, NroSeccion, NroActa, NroFolio, NroTomo, Medico, Diagnostico,
    PadreFallecido, MadreFallecido, ConError, NroOrdenServicio, CuifFallecido, NroParcela,LaReligion,
    Responsable,ElSolicitante, Cocheria,FecActaDefuncion,NroMedico, Abreviatura, Edad, DetalleEstado,
    Nacionalidad, FechaNacimiento, Detalle, Localidad, Domicilio,NroOrdenServ, laobserv,  ElSector , cantiser,
    cantiseranio, tipodocr,domr,barrior,dnir,NroActaInhumacion,HoraInhumacion,FechaActaInhumacion,nroactager: string;
  end;

var
  CremacionConsulta: TCremacionConsulta;

implementation

uses Modulo, Busqueda;
{$R *.dfm}

procedure TCremacionConsulta.FormActivate(Sender: TObject);
begin
 if not(gh) then begin
  gh:=true;
  PROCESO:=TADODataSet.Create(nil);
  PROCESO.ConnectionString:=modulo2.Conexion;
  //ImpOrdServ.Enabled:=false;
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
  cambiaorigen.Enabled :=false;
  GroupBox2.Visible :=false;
  coloca1(10);
 end;
end;

procedure TCremacionConsulta.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TCremacionConsulta.Coloca1(nro:byte);
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
   txtw:='SELECT IdCremacion,FechaCremacion,NroSolicitud,Descripcion,QueSuscribe,Fallecido,Testigo1,Testigo2,EdadFallecido '
   +',FechaFallecimiento,NroMedico,ActadeDefuncion,NroTomo,NroFolio,RegCivil,ProvinciaRegCivil '
   +',Parentezco ,Observ,Detalle ,HoraCremacion ,FechaServicio,HoraServicio,Dominio,CHOFER,Diagnostico FROM VParcelasCremaciones '
   +' WHERE (Fallecido LIKE ' + chr(39) + chr(37) + transforma(trim(nombre.Text),chr(39),chr(33)) + chr(37) + chr(39) + ') order by IdCremacion';
  end;
  if C2.Checked then begin
   txtw:='SELECT IdCremacion,FechaCremacion,NroSolicitud,Descripcion,QueSuscribe,Fallecido,Testigo1,Testigo2,EdadFallecido '
   +',FechaFallecimiento,NroMedico,ActadeDefuncion,NroTomo,NroFolio,RegCivil,ProvinciaRegCivil '
   +',Parentezco ,Observ,Detalle,HoraCremacion,FechaServicio ,HoraServicio,Dominio,CHOFER,Diagnostico FROM VParcelasCremaciones '
   + ' where (NroSolicitud LIKE ' + chr(39) + chr(37) + transforma(trim(accion.Text),chr(39),chr(33)) + chr(37) + chr(39) +') order by IdCremacion';
  end;
  if c7.Checked then begin
   txtw:='SELECT IdCremacion,FechaCremacion,NroSolicitud,Descripcion,QueSuscribe,Fallecido,Testigo1,Testigo2,EdadFallecido '
   +',FechaFallecimiento,NroMedico,ActadeDefuncion,NroTomo,NroFolio,RegCivil,ProvinciaRegCivil '
   +',Parentezco ,Observ,Detalle ,HoraCremacion,FechaServicio ,HoraServicio,Dominio,CHOFER,Diagnostico FROM VParcelasCremaciones WHERE (FechaCremacion >= ' + chr(39) + trim(fecnac.Text) + chr(39) + ') '
    + 'AND (FechaCremacion <= '+ chr(39) + trim(fecnacd.Text) + chr(39) +') order by FechaCremacion';
  end;
  if not Funciones.Listar(txtw,DataSet0) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0) ;
  Funciones.Free;
  if not DataSet0.IsEmpty then begin
   Barra1.Panels[1].Text:='Cant. Registros: ' + inttostr(DataSet0.RecordCount);
    DBGrid1.Columns[0].Width:=80;
    DBGrid1.Columns[1].Width:=100;
    DBGrid1.Columns[2].Width:=80;
    DBGrid1.Columns[3].Width:=200;
    DBGrid1.Columns[4].Width:=200;
    DBGrid1.Columns[5].Width:=200;
    DBGrid1.Columns[6].Width:=200;
    DBGrid1.Columns[7].Width:=200;
    DBGrid1.Columns[8].Width:=250;
    DBGrid1.Columns[9].Width:=150;
   guarda.Enabled:=true;
  end
  else begin
   guarda.Enabled:=false;
   messagedlg('La opcion seleccionada no arrojo ningun resultado.. por favor realice otra busqueda',mtInformation,[mbok],0);
   impactainhu.Enabled :=false;
    D10.Clear;
    D3.Clear;
    D2.Clear;
    D6.Clear;
    D8.Clear;
    D9.Clear;
    D4.Clear;
    D5.Clear;
    D7.Clear;
  end;
 end;
 if nro=10 then begin //Combo origen servicio   idcombo 3
  Origen.Clear;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if Funciones.listar('SELECT Id,Descripcion FROM ParcelasCremacionesOrigen WHERE Fechavigenciahasta is null order by 1 asc',DtCombo) then begin
   SetLength(IdCombos[3],DtCombo.RecordCount);
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    Origen.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
    IdCombos[3,t-1]:=DtCombo.Fields[0].AsString;
   end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  Origen.ItemIndex:=0;
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

procedure TCremacionConsulta.C1Click(Sender: TObject);
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
  fecnac.SetFocus;
 end;
end;

procedure TCremacionConsulta.BuscarClick(Sender: TObject);
begin
Coloca1(0);
end;

procedure TCremacionConsulta.DBGrid1CellClick(Column: TColumn);
var p,u:integer;
begin
 if not DataSet0.IsEmpty then begin
//IdCremacion,FechaCremacion,NroSolicitud,Descripcion,QueSuscribe,Fallecido,Testigo1,Testigo2,EdadFallecido '  //8
//   +',FechaFallecimiento,NroMedico,ActadeDefuncion,NroTomo,NroFolio,RegCivil,ProvinciaRegCivil '        //15
//   +',Parentezco ,Observ,Detalle, ,HoraCremacion,FechaServicio ,HoraServicio,Dominio,CHOFER,Diagnostico  //24

  D1.Text:=DataSet0.Fields[0].AsString;
  D10.Text:=DataSet0.Fields[1].AsString;
  D3.Text:=DataSet0.Fields[2].AsString;
  D2.Text:=DataSet0.Fields[3].AsString;   //SEC
  D6.Text:=DataSet0.Fields[4].AsString;   //PARCELA
  D8.Text:=DataSet0.Fields[5].AsString;     //POS
  D9.Text:=DataSet0.Fields[8].AsString;    // FEC FALLECIM
  D4.Text:=DataSet0.Fields[9].AsString;     //TIT PARCELA
  D7.Text:=DataSet0.Fields[6].AsString;     // OBJETO
  D5.Text:=DataSet0.Fields[7].AsString;     //NOMBRE FALLECIDO

  NroActa:=trim(DataSet0.Fields[11].AsString);
  NroFolio:=trim(DataSet0.Fields[12].AsString);
  NroTomo:=trim(DataSet0.Fields[13].AsString);
  DetalleEstado:=trim(DataSet0.Fields[14].AsString);
  Abreviatura:=trim(DataSet0.Fields[16].AsString);
  laobserv:=trim(DataSet0.Fields[17].AsString);
  Medico:=trim(DataSet0.Fields[18].AsString);
  HoraSalida:=trim(DataSet0.Fields[19].AsString);
  HoraLlegada:=trim(DataSet0.Fields[20].AsString);
  NroSeccion:=trim(DataSet0.Fields[21].AsString);
  Responsable:=trim(DataSet0.Fields[22].AsString);
  Cocheria:=trim(DataSet0.Fields[23].AsString);
  Diagnostico:=trim(DataSet0.Fields[24].AsString);
  impactainhu.Enabled:=true;

  if modulo2.nro_usu = 1 then   cambiaorigen.Enabled :=true
    else   cambiaorigen.Enabled :=false;

{ // EDIT6.Text:=DataSet0.Fields[8].AsString;
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
  end
  else begin
   impactainhu.Enabled:=false;
  end;
  laobserv:=trim(DataSet0.Fields[49].AsString);
  nroactager:=trim(DataSet0.Fields[50].AsString);    }

 end;
end;

procedure TCremacionConsulta.DBGrid1TitleClick(Column: TColumn);
begin
DataSet0.IndexFieldNames:=Column.FieldName;
end;

procedure TCremacionConsulta.LimpiarVentana(nro:byte);
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
  d9.Clear;
  d10.Clear;
  ImpActaInhu.Enabled:=false;
  cambiaorigen.Enabled:=false;
 end;
 GUARDA.Enabled:=false;
end;

procedure TCremacionConsulta.LimpiarClick(Sender: TObject);
begin
LimpiarVentana(0);
end;

procedure TCremacionConsulta.GUARDAClick(Sender: TObject);
var gf,t:integer;
    m:boolean;
    txtw:widestring;
begin
 gf:=messagedlg('Desea Realmente Imprimir esta consula de Cremaciones',mtWarning,[mbok,mbCancel],0);
  if gf = 1 then begin
   AuditAccesos('Mdulo 2','IMPRESION DE CREMACIONES');
   rvs.Execute;
  end
  else begin
    messagedlg('Ud. acaba de Cancelar esta Acción. No se produjeron ningún cambio en la Base de Datos',mtWarning,[mbok],0);
  end;
end;

procedure TCremacionConsulta.accionKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  buscar.SetFocus;
 end
 else begin
  if ( StrScan('0123456789/',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;
end;

procedure TCremacionConsulta.parcelaKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  buscar.SetFocus;
 end
 else begin
  if ( StrScan('0123456789',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;
end;

procedure TCremacionConsulta.nombreKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  buscar.SetFocus;
end;
end;

procedure TCremacionConsulta.RvSPrint(Sender: TObject);
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
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+37);  //(posx+4,posy+5,posx+195,posy+37);
     BaseReport.SetFont('Arial',9);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+23,posy+24,'SERVICIOS & MANDATOS');
     BaseReport.PrintXY(posx+5,posy+28,'Ayacucho N° 160 -  Formosa - CP:3600');
     if c2.Checked then BaseReport.PrintXY(posx+120,posy+28,'Accion Nº: ' + trim(accion.Text));
     if c1.Checked then BaseReport.PrintXY(posx+120,posy+28,'Por Nombre De Inhumado: '  + trim(nombre.Text));
     if c7.Checked then BaseReport.PrintXY(posx+80,posy+28,'LISTA DE CREMACIONES DESDE: ' + trim(FECNAC.Text)+ ' - HASTA: '+ trim(FECNACD.Text));;

     BaseReport.SetFont('Arial',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+165,posy+9,'Pág.: ' + inttostr(vaf));
     BaseReport.PrintXY(posx+165,posy+15,'Fecha Imp.: ' + DateToStr(Date));
     BaseReport.RoundRect(posx+20,posy+31,posx+200,posy+36,5,5);
     BaseReport.SetFont('Arial',9);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+23,posy+34.5,'LISTA DE CREMACIONES');
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
 Rvs.SystemPrinter.Orientation:=poPortrait;
  //if c6.Checked then Rvs.SystemPrinter.Orientation:=poPortrait
  //   else Rvs.SystemPrinter.Orientation:=poLandScape;
 try
  posfx:=5.5;
  posfy:=5;
  salto:=4;
  final:=0;
  hoja:=1;
  {//IdCremacion,FechaCremacion,NroSolicitud,Descripcion,QueSuscribe,Fallecido,Testigo1,Testigo2,EdadFallecido '  //8
//   +',FechaFallecimiento,NroMedico,ActadeDefuncion,NroTomo,NroFolio,RegCivil,ProvinciaRegCivil '        //15
//   +',Parentezco ,Observ,Detalle, ,HoraCremacion,FechaServicio ,HoraServicio  //21

  D1.Text:=DataSet0.Fields[0].AsString;
  D3.Text:=DataSet0.Fields[2].AsString;
  D2.Text:=DataSet0.Fields[3].AsString;   //SEC
  D6.Text:=DataSet0.Fields[4].AsString;   //PARCELA
  D8.Text:=DataSet0.Fields[5].AsString;     //POS
  D9.Text:=DataSet0.Fields[8].AsString;    // FEC FALLECIM
  D4.Text:=DataSet0.Fields[9].AsString;     //TIT PARCELA
  D7.Text:=DataSet0.Fields[6].AsString;     // OBJETO
  D5.Text:=DataSet0.Fields[7].AsString;     //NOMBRE FALLECIDO

  NroActa:=trim(DataSet0.Fields[11].AsString);
  NroFolio:=trim(DataSet0.Fields[12].AsString);
  NroTomo:=trim(DataSet0.Fields[13].AsString);
  DetalleEstado:=trim(DataSet0.Fields[14].AsString);
  Abreviatura:=trim(DataSet0.Fields[16].AsString);
  laobserv:=trim(DataSet0.Fields[17].AsString);
  Medico:=trim(DataSet0.Fields[18].AsString);
  HoraSalida:=trim(DataSet0.Fields[19].AsString);
  HoraLlegada:=trim(DataSet0.Fields[21].AsString);
  NroSeccion:=trim(DataSet0.Fields[21].AsString);}
  posfy:=Logo(posfx,posfy,hoja);
  Camp[0]:=1;          Camp[1]:=2;
  Camp[2]:=37;         Camp[3]:=38;
  Camp[4]:=3;          Camp[5]:=8;
  Camp[6]:=13;         Camp[7]:=11;
  Camp[8]:=26;
  TxtCamp[0]:='NroAccion';TxtCamp[1]:='Nivel';TxtCamp[2]:='Sector';TxtCamp[3]:='Parcela';
  TxtCamp[4]:='Posicion';TxtCamp[5]:='NombreInhumado';TxtCamp[6]:='FechaInhum.';
  TxtCamp[7]:='FecFallec.'; TxtCamp[8]:='NºServicio';
  PosH[0]:=5;PosH[1]:=23;PosH[2]:=35;PosH[3]:=47;PosH[4]:=65;PosH[5]:=80;
  PosH[6]:=135;PosH[7]:=160;PosH[8]:=180;
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

procedure TCremacionConsulta.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  D1.Text:=DataSet0.Fields[0].AsString;
  D3.Text:=DataSet0.Fields[1].AsString;
  D2.Text:=DataSet0.Fields[2].AsString;
  D9.Text:=DataSet0.Fields[3].AsString;
  D4.Text:=DataSet0.Fields[4].AsString;
  D5.Text:=DataSet0.Fields[7].AsString;
  D6.Text:=DataSet0.Fields[5].AsString;
  D7.Text:=DataSet0.Fields[6].AsString;
  D8.Text:=DataSet0.Fields[8].AsString;

end;

procedure TCremacionConsulta.RvOrdenPrint(Sender: TObject);
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
     //BaseReport.PrintXY(posx+140,posy+15,modulo2.INI1.ReadString('Titulo3 Facturas','Titulo0','')+ ' - Parque de los Recuerdos');
     BaseReport.SetFont('Arial',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+140,posy+15,'Remanso de Paz - Parque de los Recuerdos');

     BaseReport.SetFont('Arial Black',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+50,posy+19,'Remanso de Paz - Parque de los Recuerdos');
     BaseReport.PrintXY(posx+150,posy+27,'CREMACION Nº: ' + trim(D3.Text));
     BaseReport.SetFont('Arial Black',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+30);
     BaseReport.PrintXY(posx+5,posy+27,'REGISTRO DE CREMACIONES - ORIGEN: ' + trim(D2.Text));
    // BaseReport.PrintXY(posx+150,posy+27,'DESTINO: ' + trim(destino.Text));
     BaseReport.SetFont('Arial',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+40);
     BaseReport.PrintXY(posx+5,posy+37,'DATOS DEL FALLECIDO');
     BaseReport.SetFont('Arial',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+175,posy+37,'Id:' + TRIM(D1.Text) );// + cantiser + '  |  ' + cantiseranio);

     BaseReport.SetFont('Arial Black',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+60);
     BaseReport.PrintXY(posx+5,posy+43,'Fec. Serv.');
     BaseReport.PrintXY(posx+25,posy+43,'Hora Servicio');
     BaseReport.PrintXY(posx+50,posy+43,'Fec. Cremacion');
     BaseReport.PrintXY(posx+78,posy+43,'Hora Cremacion');
     BaseReport.PrintXY(posx+105,posy+43,'Nombre del Extinto');
     //BaseReport.PrintXY(posx+150,posy+43,'N° Doc.');
     BaseReport.PrintXY(posx+165,posy+43,'Edad');
     //BaseReport.PrintXY(posx+180,posy+43,'Fec. Nac.');

     BaseReport.PrintXY(posx+5,posy+47,HoraLlegada);
     BaseReport.PrintXY(posx+25,posy+47,NroSeccion);
     BaseReport.PrintXY(posx+50,posy+47,trim(D10.Text));
     BaseReport.PrintXY(posx+78,posy+47,HoraSalida);   //dniinhu
     BaseReport.PrintXY(posx+105,posy+47,trim(D8.Text));
     //BaseReport.PrintXY(posx+150,posy+47,dniinhu);
     BaseReport.PrintXY(posx+165,posy+47,TRIM(D9.TexT));
     //BaseReport.PrintXY(posx+180,posy+47,fecnacinhu);

     BaseReport.PrintXY(posx+5,posy+53,'Medico');
     BaseReport.PrintXY(posx+80,posy+53,'Acta');
     BaseReport.PrintXY(posx+95,posy+53,'Folio');
     BaseReport.PrintXY(posx+110,posy+53,'Tomo');
     BaseReport.PrintXY(posx+130,posy+53,'Fec. Defuncion');

     BaseReport.PrintXY(posx+5,posy+57,Medico);
     BaseReport.PrintXY(posx+83,posy+57,NroActa);
     BaseReport.PrintXY(posx+98,posy+57,NroFolio);
     BaseReport.PrintXY(posx+113,posy+57,NroTomo);
     BaseReport.PrintXY(posx+130,posy+57,trim(D4.Text));

     BaseReport.SetFont('Arial',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+100);
     BaseReport.PrintXY(posx+5,posy+67,' REFERENCIAS DEL SERVICIO');

     BaseReport.SetFont('Arial Black',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+88);
     BaseReport.PrintXY(posx+5,posy+73,'Suscribe');
     //BaseReport.PrintXY(posx+65,posy+73,'Nº doc.');
     BaseReport.PrintXY(posx+5,posy+77,trim(D6.Text));
     //BaseReport.PrintXY(posx+65,posy+77,dnisusc);
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+125);
     BaseReport.SetFont('Arial ',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+95,'Chofer : ' +  Cocheria);
     BaseReport.PrintXY(posx+100,posy+95,'Unidad Traslado : ' + Responsable);

     BaseReport.SetFont('Arial Black',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+110,'Cremacion : ' + laobserv);
     BaseReport.SetFont('Arial Black',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+120,'EXCLUSIVAMENTE P/CONTROL GERENCIAL E INFORMATICO');
     BaseReport.PrintXY(posx+5,posy+125,'SIN EXCEPCION Y DE CARACTER OBLIGATORIO');
    // BaseReport.SetFont('Arial ',10);
    // BaseReport.FontColor:=clBlack;
    // BaseReport.PrintXY(posx+5,posy+129,'OPERADOR SERVICIO: ' + MODULO2.nom_usu + ' FechaHora: ' + Fec_System());
     Logo:=posy+30;
     end;
   end;

begin
   posfx:=2;
   posfy:=5;
   salto:=4;
   hoja:=1;
   posfy:=Logo(posfx,posfy,hoja);
   hoja:=hoja+1;
   posfx:=6;posfy:=5;salto:=4;
   RvOrden.BaseReport.NewPage;
   posfy:=Logo(posfx,posfy,hoja);
end;

procedure TCremacionConsulta.FECNACExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(FECNAC.Text));
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  FECNAC.SetFocus;
end;
end;

procedure TCremacionConsulta.FECNACDExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(FECNACD.Text));
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  FECNACD.SetFocus;
end;
end;

procedure TCremacionConsulta.FECNACKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  FECNACD.SetFocus;
end;
end;

procedure TCremacionConsulta.FECNACDKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  buscar.SetFocus;
end;
end;

procedure TCremacionConsulta.ImpActaInhuClick(Sender: TObject);
var gf:integer;
begin
gf:=messagedlgpos('Desea Imprimir la Orden de Cremacion correspondiente?'
    ,mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
 if gf = 1 then begin
  auditAccesos('M0dulo 2','REIMP. ORDEN CREMACION ACCION' + TRIM(D1.Text) + ' Usu ' + inttostr(modulo2.nro_usu));
  RVORDEN.Execute;
 end;
end;

procedure TCremacionConsulta.cambiaorigenClick(Sender: TObject);
begin
  GroupBox2.Visible :=true;
end;

procedure TCremacionConsulta.cierraClick(Sender: TObject);
begin
  GroupBox2.Visible :=false;
  ImpActaInhu.SetFocus;
end;

procedure TCremacionConsulta.origenExit(Sender: TObject);
begin
 if origen.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe un origen de Servicio Ingresado!!',mterror,[mbok],0);
  origen.SetFocus;
 end
 else begin
  idser.Clear;
  idser.Text := IdCombos[3,origen.ItemIndex];
 end;
end;

procedure TCremacionConsulta.origenKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then begin
   Key := #0;
   modifica.SetFocus;
 end;
end;

procedure TCremacionConsulta.modificaClick(Sender: TObject);
var gf,p,t:integer;
begin
    PROCESO.Close;
 gf:=messagedlgpos('Desea Modificar el Origen de este Servicio Cremacion',mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
 if gf = 1 then begin
   PROCESO.CommandText:='exec SPC_ParcelasCremacionesModificar ' + trim(d1.Text )
    + ' , ' + IdCombos[3,origen.ItemIndex] ; //trim(cuif.Text) // IdCombos[3,origen.ItemIndex]
   PROCESO.Open;
   if PROCESO.Fields[0].AsString = 'OK' then begin
     messagedlg('EXITO.... El Origen la de CREMACION se guardo correctamente..', mtConfirmation,[mbok],0);
     GroupBox2.Visible :=false;
     ImpActaInhu.SetFocus;
     LimpiarVentana(0);
     
   end
   else begin
    messagedlg('Error al Guardar el Origen de este SERVICIO de CREMACION. Consulte con un Administrador',mtError,[mbok],0);
    cierra.SetFocus;
   end;
 end;
end;

procedure TCremacionConsulta.JvBitBtn1Click(Sender: TObject);
begin
close;
end;

end.

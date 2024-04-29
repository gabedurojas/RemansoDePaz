unit Consu_Exhumados;

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
  TExhumaConsulta = class(TForm)
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
    c3: TRadioButton;
    c5: TRadioButton;
    Label4: TLabel;
    Label5: TLabel;
    sector: TEdit;
    nombre: TEdit;
    Buscar: TJvBitBtn;
    c4: TRadioButton;
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
    DPOS: TEdit;
    Dfalle: TEdit;
    DS: TEdit;
    DN: TEdit;
    DT: TEdit;
    DOB: TEdit;
    DP: TEdit;
    DE: TEdit;
    DBNavigator1: TDBNavigator;
    C6: TRadioButton;
    RvG: TRvSystem;
    Label9: TLabel;
    Dnacim: TEdit;
    ImpOrdServ: TJvBitBtn;
    RvOrden: TRvSystem;
    C7: TRadioButton;
    Label12: TLabel;
    Label13: TLabel;
    FECNAC: TMaskEdit;
    FECNACD: TMaskEdit;
    ImpActaInhu: TJvBitBtn;
    RvActa: TRvSystem;
    Label14: TLabel;
    Dexhum: TEdit;
    Label15: TLabel;
    DR: TEdit;
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
    procedure sectorKeyPress(Sender: TObject; var Key: Char);
    procedure RvSPrint(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure RvGPrint(Sender: TObject);
    procedure RvOrdenPrint(Sender: TObject);
    procedure ImpOrdServClick(Sender: TObject);
    procedure FECNACExit(Sender: TObject);
    procedure FECNACDExit(Sender: TObject);
    procedure FECNACKeyPress(Sender: TObject; var Key: Char);
    procedure FECNACDKeyPress(Sender: TObject; var Key: Char);
    procedure ImpActaInhuClick(Sender: TObject);
    procedure RvActaPrint(Sender: TObject);
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
    Responsable,ElSolicitante, Cocheria,FecActaDefuncion,NroMedico, Abreviatura, Edad, DetalleEstado,
    Nacionalidad, FechaNacimiento, Detalle, Localidad, Domicilio,NroOrdenServ,ElSector ,
    cantiser,cantiseranio, tipodocr,domr,barrior,dnir,NroActaInhumacion,HoraInhumacion,FechaActaInhumacion: string;

  end;

var
  ExhumaConsulta: TExhumaConsulta;

implementation

uses Modulo, Busqueda;
{$R *.dfm}

procedure TExhumaConsulta.FormActivate(Sender: TObject);
begin
if not(gh) then begin
  gh:=true;
  ImpOrdServ.Enabled:=false;
  Impactainhu.Enabled:=false;
  setlength(IdCombos,5);
  FechaActual:=LeftStr(Fec_System(),10);
  PC1.ActivePage:=PC1.Pages[0];
  c2.Checked:=true;

  nombre.visible:=false;            parcela.visible:=false;
  sector.Visible:=false;            label12.Visible:=false;
  label13.Visible:=false;           FECNAC.Visible:=false;
  FECNACD.Visible:=false;           accion.Visible:=true;
  accion.SetFocus;
end;
end;

procedure TExhumaConsulta.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TExhumaConsulta.Coloca1(nro:byte);
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
  if C1.Checked then begin //nombreexhumado
    txtw:='SELECT IdHabitante,NroAccion,Nivel,Posicion,Objeto,DniExhumado,NombreExhumado,DniTitular,Nombretitular, NombreSolicitante, FechaIngreso, FechaFallecimiento,  FechaInhumacion, '
    + 'HoraFallecimiento, HoraSalida, HoraLlegada, NroSeccion, NroActa,NroFolio, NroTomo, Medico, Diagnostico, PadreFallecido, MadreFallecido, NroOrdenServicio,'// CuifFallecido, '
    + 'FecActaDefuncion,  Objeto, Nacioexhumado,FecNacExhumado, Loctitular, Domtitular, Sector, Parcela, RespoLegal, testigo1, testigo2, '
    + 'horaexhumacion, encargadoparque, observacionexhumacion,destinoservicio,Horafallecimiento '
    + ' FROM Fn_VistaParcelasExhumados (null,null,' + chr(39) + chr(37) + transforma(trim(nombre.Text),chr(39),chr(33)) + chr(37) + chr(39) + ',null,null)';
  end;
  if C2.Checked then begin  // nroaccion
    txtw:='SELECT IdHabitante,NroAccion,Nivel,Posicion,Objeto,DniExhumado,NombreExhumado,DniTitular,Nombretitular, NombreSolicitante, FechaIngreso, FechaFallecimiento, FechaInhumacion, '
    + 'HoraFallecimiento, HoraSalida, HoraLlegada, NroSeccion, NroActa,NroFolio, NroTomo, Medico, Diagnostico, PadreFallecido, MadreFallecido, NroOrdenServicio,'// CuifFallecido, '
    + 'FecActaDefuncion,  Objeto, Nacioexhumado,FecNacExhumado, Loctitular, Domtitular, Sector, Parcela, RespoLegal, testigo1, testigo2, '
    + 'horaexhumacion, encargadoparque, observacionexhumacion,destinoservicio,Horafallecimiento '
    + ' FROM Fn_VistaParcelasExhumados (' + trim(accion.Text) +',null,null,null,null)';
  end;
  {if C3.Checked then begin
    txtw:='SELECT IdHabitante,NroAccion,Nivel,Posicion,Objeto,DniTitular,NombreTitular,DniFallecido,NombreFallecido, NombreSolicitante, FechaIngreso, FechaFallecimiento, FechaInhumacion, '
    + 'HoraFallecimiento, HoraSalida, HoraLlegada, NroSeccion, NroActa,NroFolio, NroTomo, Medico, Diagnostico, PadreFallecido, MadreFallecido,  NroOrdenServicio, CuifFallecido, '
    + 'FecActaDefuncion, NroMedico, Abreviatura, DetalleEstado, Nacionalidad,FechaNacimiento, Detalle, Localidad, Domicilio, Sector, Parcela, NombreResponsable, ObservPlaca, domcilioresponsable, '
    + 'barrioresponsable, tipodocresponsable, nrodocresponsable,NroActaInhumacion,HoraInhumacion,Fecha'
    + ' FROM VParcelasInhumadosxAccion where (sector = '+ chr(39) + trim(sector.Text) + chr(39) +') and (parcela = '+ trim(parcela.Text)  +') order by NombreFallecido';
  end;
  if C4.Checked then begin
    txtw:='SELECT IdHabitante,NroAccion,Nivel,Posicion,Objeto,DniTitular,NombreTitular,DniFallecido,NombreFallecido, NombreSolicitante, FechaIngreso, FechaFallecimiento, FechaInhumacion, '
    + 'HoraFallecimiento, HoraSalida, HoraLlegada, NroSeccion, NroActa,NroFolio, NroTomo, Medico, Diagnostico, PadreFallecido, MadreFallecido, NroOrdenServicio, CuifFallecido, '
    + 'FecActaDefuncion, NroMedico, Abreviatura, DetalleEstado, Nacionalidad,FechaNacimiento, Detalle, Localidad, Domicilio, Sector, Parcela, NombreResponsable, ObservPlaca, domcilioresponsable, '
    + 'barrioresponsable, tipodocresponsable, nrodocresponsable,NroActaInhumacion,HoraInhumacion,Fecha'
    + ' FROM VParcelasInhumadosxAccion where (sector = '+ chr(39) + trim(sector.Text) + chr(39) +') order by NombreFallecido';
  end;
  if C5.Checked then begin
    txtw:='SELECT IdHabitante,NroAccion,Nivel,Posicion,Objeto,DniTitular,NombreTitular,DniFallecido,NombreFallecido, NombreSolicitante, FechaIngreso, FechaFallecimiento, Edad, FechaInhumacion, '
    + 'HoraFallecimiento, HoraSalida, HoraLlegada, NroSeccion, NroActa,NroFolio, NroTomo, Medico, Diagnostico, PadreFallecido, MadreFallecido, NroOrdenServicio, CuifFallecido, '
    + 'FecActaDefuncion, NroMedico, Abreviatura, DetalleEstado, Nacionalidad,FechaNacimiento, Detalle, Localidad, Domicilio, Sector, Parcela, NombreResponsable, ObservPlaca, domcilioresponsable, '
    + 'barrioresponsable, tipodocresponsable, nrodocresponsable,NroActaInhumacion,HoraInhumacion,Fecha'
    + ' FROM VParcelasInhumadosxAccion where (parcela = '+ trim(parcela.Text)  +')  order by NombreFallecido';
  end;
   }
  if c6.Checked then begin
    txtw:='select row_number() over (order by NombreExhumado asc) as Orden,NombreExhumado,nroaccion,sector,parcela,fechaexhumacion,FechaInhumacion,NroOrdenServicio '
    + ' FROM Fn_VistaParcelasExhumados (null,null,null,null,null)';
  end;
  if c7.Checked then begin
    txtw:='SELECT IdHabitante,NroAccion,Nivel,Posicion,Objeto,DniExhumado,NombreExhumado,DniTitular,Nombretitular, NombreSolicitante, FechaIngreso, FechaFallecimiento, FechaInhumacion, '
    + 'HoraFallecimiento, HoraSalida, HoraLlegada, NroSeccion, NroActa,NroFolio,NroTomo, Medico, Diagnostico, PadreFallecido, MadreFallecido, NroOrdenServicio,'
    + 'FecActaDefuncion, Objeto, Nacioexhumado,FecNacExhumado, Loctitular, Domtitular, Sector, Parcela, RespoLegal, testigo1, testigo2, '
    + 'horaexhumacion, encargadoparque, observacionexhumacion,destinoservicio,Horafallecimiento '
    + ' FROM Fn_VistaParcelasExhumados (null,null,null,' + chr(39) + trim(fecnac.Text) + chr(39) +',' + chr(39) + trim(fecnacd.Text) + chr(39) + ')';
  end;
  if not Funciones.Listar(txtw,DataSet0) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0) ;
  Funciones.Free;
  if not DataSet0.IsEmpty then begin
    Barra1.Panels[1].Text:='Cant. Registros: ' + inttostr(DataSet0.RecordCount);
    if c6.Checked then begin
      DBGrid1.Columns[0].Width:=60;
      DBGrid1.Columns[1].Width:=250;
      DBGrid1.Columns[2].Width:=80;
      DBGrid1.Columns[3].Width:=80;
      DBGrid1.Columns[4].Width:=80;
      DBGrid1.Columns[5].Width:=100;
      DBGrid1.Columns[6].Width:=100;
    end
    else begin
      DBGrid1.Columns[0].Width:=60;
      DBGrid1.Columns[1].Width:=250;
      DBGrid1.Columns[2].Width:=50;
      DBGrid1.Columns[3].Width:=50;
      DBGrid1.Columns[4].Width:=50;
      DBGrid1.Columns[5].Width:=250;
      DBGrid1.Columns[6].Width:=100;
      DBGrid1.Columns[7].Width:=90;
      DBGrid1.Columns[8].Width:=250;
      DBGrid1.Columns[9].Width:=150;
    end;
    guarda.Enabled:=true;
  end
  else begin
   guarda.Enabled:=false;
   messagedlg('La opcion seleccionada no arrojo ningun resultado.. por favor realice otra busqueda',mtInformation,[mbok],0);
  end;
end;
if nro = 9 then begin  //cargo la grilla de los testigos
{  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if not Funciones.Run_Fn_VistaParcelasInhumadosTestigos(IdHabitante,DtCombo,'',0) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  for t:=0 to grillaTestigos.ColCount-1 do
    for y:=1 to grillaTestigos.RowCount-1 do grillaTestigos.Cells[t,y]:='';
  for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    grillaTestigos.RowCount:=t+1;
    grillaTestigos.Cells[0,t]:=completa1(inttostr(t),2,'0');
    grillaTestigos.Cells[1,t]:=trim(DtCombo.Fields[0].AsString);
    grillaTestigos.Cells[2,t]:=trim(DtCombo.Fields[1].AsString);
    grillaTestigos.Cells[3,t]:=trim(DtCombo.Fields[2].AsString);
    grillaTestigos.Cells[4,t]:=trim(DtCombo.Fields[3].AsString);
    grillaTestigos.Cells[5,t]:=trim(DtCombo.Fields[4].AsString);
    grillaTestigos.Cells[6,t]:=trim(DtCombo.Fields[5].AsString);
    grillaTestigos.Cells[7,t]:=trim(DtCombo.Fields[6].AsString);
    grillaTestigos.Cells[8,t]:=trim(DtCombo.Fields[7].AsString);
    grillaTestigos.Cells[10,t]:=trim(DtCombo.Fields[8].AsString)
  end;    }
end;
if nro=18 then begin
{    DtCombo.Free;
    Dtcombo:=TClientDataSet.Create(nil);
    Funciones:=TFuncionesVarias.Create(nil);
    Funciones.ConnectionString:=modulo2.Conexion;
    txtw:='SELECT * FROM CantServiciosxMes ('+ chr(39) + strcut(Fec_System(),10) + chr(39)+ ',0)';
    if Funciones.Listar(txtw,DtCombo) then begin
        cantiser:=DtCombo.Fields[0].AsString;
    end
    else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    funciones.Free;    }
end;
if nro=19 then begin
{    DtCombo.Free;
    Dtcombo:=TClientDataSet.Create(nil);
    Funciones:=TFuncionesVarias.Create(nil);
    Funciones.ConnectionString:=modulo2.Conexion;
    txtw:='SELECT * FROM CantServiciosxMes ('+ chr(39) + strcut(Fec_System(),10) + chr(39)+ ',1)';
    if Funciones.Listar(txtw,DtCombo) then begin
        cantiseranio:=DtCombo.Fields[0].AsString;
    end
    else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    funciones.Free;  }
end;
end;


procedure TExhumaConsulta.JvBitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TExhumaConsulta.C1Click(Sender: TObject);
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
{if C3.Checked then begin
  label5.Visible:=true;
  label4.Visible:=true;
  label4.Caption:='Ingrese Sector';
  nombre.visible:=false;
  parcela.visible:=true;
  sector.Visible:=true;
  accion.Visible:=false;
  label12.Visible:=false;
  label13.Visible:=false;
  FECNAC.VISIBLE:=FALSE;
  FECNACd.Visible:=FALSE;
  sector.SetFocus;
end;
if C4.Checked then begin
  label5.Visible:=false;
  label4.Caption:='Ingrese Sector';
  nombre.visible:=false;
  parcela.visible:=false;
  sector.Visible:=true;
  accion.Visible:=false;
  label12.Visible:=false;
  label13.Visible:=false;
  FECNAC.VISIBLE:=FALSE;
  FECNACd.Visible:=FALSE;
  sector.SetFocus;
end;
if C5.Checked then begin
  label4.Visible:=false;
  label5.Visible:=true;
  nombre.visible:=false;
  parcela.visible:=true;
  sector.Visible:=false;
  accion.Visible:=false;
  label12.Visible:=false;
  label13.Visible:=false;
  FECNAC.VISIBLE:=FALSE;
  FECNACd.Visible:=FALSE;
  parcela.SetFocus;
end;                  }
if C6.Checked then begin
  label5.Visible:=false;
  label4.Caption:='Se Listaran Todos los Exhumados:';
  nombre.visible:=false;
  parcela.visible:=false;
  sector.Visible:=false;
  accion.Visible:=false;
  label12.Visible:=false;
  label13.Visible:=false;
  FECNAC.VISIBLE:=FALSE;
  FECNACd.Visible:=FALSE;
  buscar.SetFocus;
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

procedure TExhumaConsulta.BuscarClick(Sender: TObject);
begin
Coloca1(0);
end;

procedure TExhumaConsulta.DBGrid1CellClick(Column: TColumn);
var p,u:integer;
begin
 if not DataSet0.IsEmpty then begin
 {if c6.Checked then begin
  D8.Text:=DataSet0.Fields[0].AsString;
  D1.Text:=DataSet0.Fields[1].AsString;
  D2.Text:=DataSet0.Fields[2].AsString;
  D9.Text:=DataSet0.Fields[3].AsString;
  D5.Text:=DataSet0.Fields[4].AsString;
  D10.Text:=DataSet0.Fields[5].AsString;
  ImpOrdServ.Enabled:=false;
  impactainhu.Enabled:=false;
 end
 else begin
  D1.Text:=DataSet0.Fields[1].AsString;    //ACCION                             
  D3.Text:=DataSet0.Fields[2].AsString;    //NIV
  D2.Text:=DataSet0.Fields[37].AsString;   //SEC
  D9.Text:=DataSet0.Fields[38].AsString;   //PARCELA
  D4.Text:=DataSet0.Fields[3].AsString;     //POS
  D5.Text:=DataSet0.Fields[33].AsString;    // FEC FALLECIM
  D6.Text:=DataSet0.Fields[39].AsString;     //TIT PARCELA
  D7.Text:=DataSet0.Fields[4].AsString;     // OBJETO
  D8.Text:=DataSet0.Fields[8].AsString;     //NOMBRE FALLECIDO
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
  Domicilio:=trim(DataSet0.Fields[41].AsString);
  domr:=trim(DataSet0.Fields[42].AsString);
  tipodocr:=trim(DataSet0.Fields[43].AsString);
  barrior:=trim(DataSet0.Fields[41].AsString);
  dnir:=trim(DataSet0.Fields[44].AsString);
   for p:=0 to grillatestigos.ColCount-1 do
      for u:=1 to grillatestigos.RowCount-1 do grillatestigos.Cells[p,u]:='';
      grillatestigos.RowCount:=2;
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
  ImpOrdServ.Enabled:=true;
 end;  }
 end;
end;

procedure TExhumaConsulta.DBGrid1TitleClick(Column: TColumn);
begin
DataSet0.IndexFieldNames:=Column.FieldName;
end;

procedure TExhumaConsulta.LimpiarVentana(nro:byte);
var t,r:integer;
begin
if nro =0 then begin
  DataSource1.DataSet:=nil;
  C2.Checked:=true;
  PC1.ActivePage:=PC1.Pages[0];
//  D1.Clear;
//  D2.Clear;
//  D3.Clear;
//  D4.Clear;
//  D5.Clear;
//  D6.Clear;
//  D7.Clear;
//  d8.Clear;
end;
GUARDA.Enabled:=false;
end;

procedure TExhumaConsulta.LimpiarClick(Sender: TObject);
begin
LimpiarVentana(0);
end;

procedure TExhumaConsulta.GUARDAClick(Sender: TObject);
var gf,t:integer;
    m:boolean;
    txtw:widestring;
begin
 gf:=messagedlg('Desea Realmente Imprimir esta consula de Inhumados',mtWarning,[mbok,mbCancel],0);
  if gf = 1 then begin
   if c6.Checked then rvg.Execute
    else rvs.Execute;
  end
  else begin
    messagedlg('Ud. acaba de Cancelar esta Acción. No se produjeron ningún cambio en la Base de Datos',mtWarning,[mbok],0);
  end;
end;

procedure TExhumaConsulta.accionKeyPress(Sender: TObject; var Key: Char);
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

procedure TExhumaConsulta.parcelaKeyPress(Sender: TObject; var Key: Char);
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

procedure TExhumaConsulta.nombreKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  buscar.SetFocus;
end;
end;

procedure TExhumaConsulta.sectorKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  if c3.Checked then begin
    parcela.SetFocus;
  end;
  if c4.Checked then begin
    buscar.SetFocus;
  end;
end;

end;

procedure TExhumaConsulta.RvSPrint(Sender: TObject);
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
       if c6.Checked then BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+37)
        else BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+37);  //(posx+4,posy+5,posx+195,posy+37);
       BaseReport.SetFont('Arial',9);
       BaseReport.FontColor:=clBlack;
       BaseReport.PrintXY(posx+23,posy+24,'SERVICIOS & MANDATOS');
       BaseReport.PrintXY(posx+5,posy+28,'Ayacucho N° 160 -  Formosa - CP:3600');
       if c2.Checked then BaseReport.PrintXY(posx+120,posy+28,'Accion Nº: ' + trim(accion.Text));
       if c4.Checked then BaseReport.PrintXY(posx+120,posy+28,'SECTOR : ' + trim(sector.Text));
       if c5.Checked then BaseReport.PrintXY(posx+120,posy+28,'PARCELA Nº: ' + trim(parcela.Text));
       if c1.Checked then BaseReport.PrintXY(posx+120,posy+28,'Por Nombre De Inhumado: '  + trim(nombre.Text));
       if c3.Checked then BaseReport.PrintXY(posx+120,posy+28,'SECTOR: ' + trim(sector.Text)+ ' - PARCELA Nº: '+ trim(parcela.Text));
       if c6.Checked then BaseReport.PrintXY(posx+120,posy+28,'LISTA GENERAL DE IMHUMADOS (por Orden Alfabetico)');
       if c7.Checked then BaseReport.PrintXY(posx+80,posy+28,'LISTA DE INHUMADOS DESDE: ' + trim(FECNAC.Text)+ ' - HASTA: '+ trim(FECNACD.Text));;

       BaseReport.SetFont('Arial',8);
       BaseReport.FontColor:=clBlack;
       BaseReport.PrintXY(posx+165,posy+9,'Pág.: ' + inttostr(vaf));
       BaseReport.PrintXY(posx+165,posy+15,'Fecha Imp.: ' + DateToStr(Date));
       BaseReport.RoundRect(posx+20,posy+31,posx+200,posy+36,5,5);
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
      if c6.Checked then BaseReport.Rectangle(posx+4,posy,posx+200,posy+5)
         else BaseReport.Rectangle(posx+4,posy,posx+200,posy+5);
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
    if c6.Checked then BaseReport.Rectangle(posx+4,posy,posx+200,posy2)
     else BaseReport.Rectangle(posx+4,posy,posx+200,posy2);
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
  posfy:=Logo(posfx,posfy,hoja);
  if c6.Checked then begin
    //txtw:='select nroaccion,nivel,sector,parcela,posicion,nombretitular as TitulardeParcela,FechaInhumacion,'
    //+ 'fechafallecimiento,NombreFallecido,ReligionFallecido FROM Fn_VistaParcelasLosInhumados (null,null,null,null,null,null,null,null,null,0) ORDER BY 6';
      Camp[0]:=8;           Camp[1]:=0;
      Camp[2]:=2;           Camp[3]:=3;
      Camp[4]:=7;           Camp[5]:=6;
      Camp[6]:=10;          Camp[7]:=10;
      Camp[8]:=10;
      TxtCamp[0]:='NombreInhumado';TxtCamp[1]:='NroAccion';TxtCamp[2]:='Sector';TxtCamp[3]:='Parcela';
      TxtCamp[4]:='FechaFellecimiento';TxtCamp[5]:='FechaInhumacion';TxtCamp[6]:='';
      TxtCamp[7]:=''; TxtCamp[8]:='';
      PosH[0]:=5;PosH[1]:=23;PosH[2]:=35;PosH[3]:=50;PosH[4]:=70;PosH[5]:=85;
      PosH[6]:=0;PosH[7]:=0;PosH[8]:=0;
      final:=GrillaCabecera(posfx,posfy+5,txt);
  end
  else begin
        //Rvs.SystemPrinter.Orientation:=poLandScape;
        //IdHabitante,NroAccion,Nivel,Posicion,Objeto,DniTitular,NombreTitular,DniFallecido,NombreFallecido, NombreSolicitante,
        //FechaIngreso, FechaFallecimiento, Edad, FechaInhumacion, '
        //    + 'HoraFallecimiento, HoraSalida, HoraLlegada, NroSeccion, NroActa,NroFolio, NroTomo, Medico, Diagnostico,
        //PadreFallecido, MadreFallecido, ConError, NroOrdenServicio, CuifFallecido, '
        //    + 'FecActaDefuncion, NroMedico, Abreviatura, DetalleEstado, Nacionalidad,FechaNacimiento,
        //Detalle, Localidad, Domicilio, Sector, Parcela, NombreResponsable, ObservPlaca, domcilioresponsable, '
        //    + 'barrioresponsable, tipodocresponsable, nrodocresponsable
     {if c7.Checked  then begin
        Camp[0]:=1;
        Camp[1]:=2;
        Camp[2]:=37;
        Camp[3]:=38;
        Camp[4]:=3;
        Camp[5]:=8;
        Camp[6]:=13;
        Camp[7]:=11;
        Camp[8]:=22;
        TxtCamp[0]:='NroAccion';TxtCamp[1]:='Nivel';TxtCamp[2]:='Sector';TxtCamp[3]:='Parcela';
        TxtCamp[4]:='Posicion';TxtCamp[5]:='NombreInhumado';TxtCamp[6]:='FechaInhum.';
        TxtCamp[7]:='FecFallec.'; TxtCamp[8]:='Diagnostico';
        PosH[0]:=5;PosH[1]:=23;PosH[2]:=35;PosH[3]:=50;PosH[4]:=70;PosH[5]:=85;
        PosH[6]:=155;PosH[7]:=180;PosH[8]:=200;
        final:=GrillaCabecera(posfx,posfy+5,txt);
     end
     else begin }
        Camp[0]:=1;          Camp[1]:=2;
        Camp[2]:=37;         Camp[3]:=38;
        Camp[4]:=3;          Camp[5]:=8;
        Camp[6]:=13;          Camp[7]:=11;
        TxtCamp[0]:='NroAccion';TxtCamp[1]:='Nivel';TxtCamp[2]:='Sector';TxtCamp[3]:='Parcela';
        TxtCamp[4]:='Posicion';TxtCamp[5]:='NombreInhumado';TxtCamp[6]:='FechaInhum.';
        TxtCamp[7]:='FecFallec.'; TxtCamp[8]:='';
        PosH[0]:=5;PosH[1]:=23;PosH[2]:=35;PosH[3]:=47;PosH[4]:=65;PosH[5]:=80;
        PosH[6]:=135;PosH[7]:=170;PosH[8]:=210;
        final:=GrillaCabecera(posfx,posfy+5,txt);
     //end;
  end;
  posfy:=final;
  pso:=false;
  for y:=1 to DataSet0.RecordCount do begin
    DataSet0.RecNo:=y;
    if pso then begin
       if c6.Checked then RvS.BaseReport.Rectangle(posfx+4,posfy+1,posfx+200,posfy+1)
         else RvS.BaseReport.Rectangle(posfx+4,posfy+1,posfx+200,posfy+1)
    end
    else pso:=true;
    posfy:=GrillaDetalle(posfx,posfy,txt);
    if c6.Checked then begin
      if posfy > 150 then begin
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
    end
    else begin
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
  end;
  if pso then posfy:=GrillaRecuadro(posfx,final,posfy+2);
  except
end;
end;

procedure TExhumaConsulta.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
{ if c6.Checked then begin
  D8.Text:=DataSet0.Fields[0].AsString;
  D1.Text:=DataSet0.Fields[1].AsString;
  D2.Text:=DataSet0.Fields[2].AsString;
  D9.Text:=DataSet0.Fields[3].AsString;
  D5.Text:=DataSet0.Fields[4].AsString;
  D10.Text:=DataSet0.Fields[5].AsString;
 end
 else begin
  D1.Text:=DataSet0.Fields[0].AsString;
  D3.Text:=DataSet0.Fields[1].AsString;
  D2.Text:=DataSet0.Fields[2].AsString;
  D9.Text:=DataSet0.Fields[3].AsString;
  D4.Text:=DataSet0.Fields[4].AsString;
  D5.Text:=DataSet0.Fields[7].AsString;
  D6.Text:=DataSet0.Fields[5].AsString;
  D7.Text:=DataSet0.Fields[6].AsString;
  D8.Text:=DataSet0.Fields[8].AsString;
  //D10.Text:=DataSet0.Fields[6].AsString;
 end;  }
end;

procedure TExhumaConsulta.RvGPrint(Sender: TObject);
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
       //if c6.Checked then BaseReport.PrintXY(posx+120,posy+28,'LISTA GENERAL DE IMHUMADOS (por Orden Alfabetico)');
       BaseReport.PrintXY(posx+160,posy+15,'Fecha Imp.: ' + DateToStr(Date));
       BaseReport.PrintXY(posx+160,posy+9,'Pág.: ' + inttostr(vaf));
       BaseReport.RoundRect(posx+20,posy+25,posx+180,posy+30,5,5);
       BaseReport.SetFont('Arial Black',9);
       BaseReport.FontColor:=clBlack;
       BaseReport.PrintXY(posx+23,posy+28.5,'LISTA GENERAL DE EXHUMADOS (por Orden Alfabetico)    -     Cant. Exhumados: ' + inttostr(DataSet0.RecordCount));
       //BaseReport.SetFont('Arial Black',8);
       //BaseReport.PrintXY(posx+215,posy+34.5,'Total :' + IntToStr(DataSet0.RecordCount));
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
           if posfy > 290 then begin
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


procedure TExhumaConsulta.RvOrdenPrint(Sender: TObject);
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
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+30);
     BaseReport.PrintXY(posx+5,posy+27,'REGISTRO DE EXHUMACIONES');
     //BaseReport.PrintXY(posx+130,posy+27,'ORDEN DE SERVICIO Nº: ' + NroOrdenServ);

     BaseReport.SetFont('Arial',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+40);
     BaseReport.PrintXY(posx+5,posy+37,'DATOS DEL FALLECIDO Y ORIGEN DEL SERVICIO');
     BaseReport.PrintXY(posx+130,posy+37,'Nº ORDEN:  ' + cantiser + '  |  ' + cantiseranio);

     BaseReport.SetFont('Arial Black',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+60);
     BaseReport.PrintXY(posx+5,posy+43,'Fecha Ingreso');
     BaseReport.PrintXY(posx+25,posy+43,'Hora');
     BaseReport.PrintXY(posx+35,posy+43,'Nombre del Extinto');
     BaseReport.PrintXY(posx+88,posy+43,'Tipo y N° Doc.');
     BaseReport.PrintXY(posx+110,posy+43,'Nacio.');
     BaseReport.PrintXY(posx+130,posy+43,'Est. Civil');
     BaseReport.PrintXY(posx+155,posy+43,'Edad');
     BaseReport.PrintXY(posx+165,posy+43,'Fec. Nac.');
     BaseReport.SetFont('Arial ',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+47,FechaIngreso);
     BaseReport.PrintXY(posx+25,posy+47,HoraFallecimiento);
     BaseReport.PrintXY(posx+35,posy+47,NombreFallecido);
     BaseReport.PrintXY(posx+88,posy+47,Abreviatura + '-' + DniFallecido);
     BaseReport.PrintXY(posx+110,posy+47,Nacionalidad);
     BaseReport.PrintXY(posx+130,posy+47,DetalleEstado);
     BaseReport.PrintXY(posx+155,posy+47,edad);
     BaseReport.PrintXY(posx+165,posy+47,FechaNacimiento);

     BaseReport.SetFont('Arial Black',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+53,'Domicilio');
     BaseReport.PrintXY(posx+65,posy+53,'Seccion');
     BaseReport.PrintXY(posx+80,posy+53,'Acta');
     BaseReport.PrintXY(posx+90,posy+53,'Folio');
     BaseReport.PrintXY(posx+110,posy+53,'Tomo');
     BaseReport.PrintXY(posx+130,posy+53,'Fec. Defuncion');
     BaseReport.SetFont('Arial ',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+57,Domicilio);
     BaseReport.PrintXY(posx+68,posy+57,NroSeccion);
     BaseReport.PrintXY(posx+83,posy+57,Nroacta);
     BaseReport.PrintXY(posx+93,posy+57,nrofolio);
     BaseReport.PrintXY(posx+113,posy+57,nrotomo);
     BaseReport.PrintXY(posx+130,posy+57,FechaFallecimiento);

     BaseReport.SetFont('Arial',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+70);
     BaseReport.PrintXY(posx+5,posy+67,' REFERENCIAS DEL SERVICIO DEL PARQUE');

     BaseReport.SetFont('Arial Black',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+88);
     BaseReport.PrintXY(posx+5,posy+73,'Cocheria');
     BaseReport.PrintXY(posx+40,posy+73,'Tipo Servicio');
     BaseReport.PrintXY(posx+65,posy+73,'Religion');
     BaseReport.PrintXY(posx+108,posy+73,'Fec. Inhu.');
     BaseReport.PrintXY(posx+125,posy+73,'H/Salida ');
     BaseReport.PrintXY(posx+142,posy+73,'H/Llegada ');
     BaseReport.PrintXY(posx+158,posy+73,'Sector');
     BaseReport.PrintXY(posx+170,posy+73,'Parcela');
     BaseReport.PrintXY(posx+185,posy+73,'Nivel');
     BaseReport.SetFont('Arial ',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+77,Cocheria);
     BaseReport.PrintXY(posx+40,posy+77,'Inhumacion');  //trim(tiposerv.Text)
     BaseReport.PrintXY(posx+65,posy+77,LaReligion);
     BaseReport.PrintXY(posx+108,posy+77,FechaInhumacion);
     BaseReport.PrintXY(posx+125,posy+77,HoraSalida);
     BaseReport.PrintXY(posx+142,posy+77,HoraLlegada);
     BaseReport.PrintXY(posx+158,posy+77,ElSector);
     BaseReport.PrintXY(posx+170,posy+77,NroParcela);
     BaseReport.PrintXY(posx+185,posy+77,Nivel);

     BaseReport.SetFont('Arial Black',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+81,'Titular Parcela');
     BaseReport.PrintXY(posx+65,posy+81,'N° Titulo');
     BaseReport.PrintXY(posx+108,posy+81,'Objeto');
     BaseReport.PrintXY(posx+142,posy+81,'Posicion');
     BaseReport.SetFont('Arial ',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+84,NombTitular);
     BaseReport.PrintXY(posx+65,posy+84,NroAccion);
     BaseReport.PrintXY(posx+108,posy+84,Objeto);
     BaseReport.PrintXY(posx+142,posy+84,Posicion);

     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+106);
     BaseReport.SetFont('Arial Black',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+93,'Solicitante:');
     BaseReport.PrintXY(posx+5,posy+98,'Responsable');
     BaseReport.PrintXY(posx+58,posy+98,'Tipo y N° Doc');
     BaseReport.PrintXY(posx+90,posy+98,'Domicilio');
     BaseReport.PrintXY(posx+155,posy+98,'Barrio');
     BaseReport.SetFont('Arial ',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+30,posy+93,ElSolicitante);
     BaseReport.PrintXY(posx+5,posy+102,Responsable);
     BaseReport.PrintXY(posx+58,posy+102,tipodocr+ '-' + dnir);
     BaseReport.PrintXY(posx+90,posy+102,domr);
     BaseReport.PrintXY(posx+155,posy+102,barrior); // + '-' + trim(d23.Text));

     BaseReport.SetFont('Arial',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+125);
     BaseReport.PrintXY(posx+5,posy+110,' OBSERVACIONES');
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

procedure TExhumaConsulta.ImpOrdServClick(Sender: TObject);
var gf,t:integer;
begin
gf:=messagedlgpos('Desea Imprimir la ORDEN DE SERVICIO correspondiente?'
    ,mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
 if gf = 1 then begin
  coloca1(18);
  coloca1(19);
  rvorden.Execute ;
 end;
end;

procedure TExhumaConsulta.FECNACExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(FECNAC.Text));
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  FECNAC.SetFocus;
end;
end;

procedure TExhumaConsulta.FECNACDExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(FECNACD.Text));
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  FECNACD.SetFocus;
end;
end;

procedure TExhumaConsulta.FECNACKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  FECNACD.SetFocus;
end;
end;

procedure TExhumaConsulta.FECNACDKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  buscar.SetFocus;
end;
end;

procedure TExhumaConsulta.ImpActaInhuClick(Sender: TObject);
var gf:integer;
begin
gf:=messagedlgpos('Desea Imprimir el ACTA De INHUMACION correspondiente?'
    ,mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
 if gf = 1 then begin
    RvActa.Execute;
 end;
end;

procedure TExhumaConsulta.RvActaPrint(Sender: TObject);
var posfx,posfy,posfin,pos_y,salto:double;
var hoja:integer;

   Function Imagenjpg(posx,posy:double;vaf:integer):double;
   var Imagen1:  TBitmap;
       Fuente,PathLogo,tipot,nombret,tipodoct,dnit,domt:string;
       Tamanio,t:integer;
   begin
   with RvActa do begin
     Imagen1 := TBitMap.Create;

     PathLogo:=modulo2.path_todo + '\Formularios\FRM-07-01.jpg';
     if FileExists(PathLogo) then begin
       Image1.Picture.LoadFromFile(PathLogo);
       Imagen1.Assign(Image1.Picture.Graphic);
       BaseReport.PrintBitmapRect(posx+5,posy,posx+215,posy+290,Imagen1);
     end;
     Imagen1.Free;
         BaseReport.SetFont('Arial Black',12);
         BaseReport.FontColor:=clBlack;
         BaseReport.PrintXY(posx+182,posy+26,TRIM(NroActaInhumacion));
         BaseReport.SetFont('Arial Black',8);
         BaseReport.FontColor:=clBlack;
         BaseReport.PrintXY(posx+60,posy+34,TRIM(fec_texto(trim(FechaActaInhumacion))));
         BaseReport.PrintXY(posx+135,posy+34,TRIM(HoraInhumacion));
         BaseReport.PrintXY(posx+22,posy+41,TRIM(NroOrdenServ));
         //BaseReport.PrintXY(posx+125,posy+41,TRIM(d8.text));
         BaseReport.PrintXY(posx+45,posy+48,TRIM(Abreviatura));
         BaseReport.PrintXY(posx+59,posy+48,TRIM(DniFallecido));
         BaseReport.PrintXY(posx+97,posy+48,TRIM(FechaNacimiento));
         BaseReport.PrintXY(posx+172,posy+48,TRIM(Nacionalidad));
         BaseReport.PrintXY(posx+32,posy+56,TRIM(DetalleEstado));

         BaseReport.PrintXY(posx+133,posy+70,TRIM(FechaFallecimiento));

         BaseReport.PrintXY(posx+30,posy+77,TRIM(HoraFallecimiento));
         BaseReport.PrintXY(posx+50,posy+77,TRIM(Diagnostico));
         BaseReport.PrintXY(posx+15,posy+84,TRIM(Medico));
         BaseReport.PrintXY(posx+164,posy+84,TRIM(FechaFallecimiento));

//         BaseReport.PrintXY(posx+165,posy+120,TRIM(d3.text));
//         BaseReport.PrintXY(posx+15,posy+127,TRIM(d9.text));
//         BaseReport.PrintXY(posx+44,posy+127,TRIM(d2.text));
//         BaseReport.PrintXY(posx+15,posy+134,TRIM(d6.text));
//         BaseReport.PrintXY(posx+150,posy+134,TRIM(DniTitular));
//         BaseReport.PrintXY(posx+49,posy+141,TRIM(d1.text));
   end;
   end;

begin
  posfx:=1;posfy:=1;salto:=4;hoja:=1;
  posfy:=Imagenjpg(posfx,posfy,hoja);

   RvActa.BaseReport.SetFont('Arial',7);
   RvActa.BaseReport.FontColor:=clBlack;
   RvActa.BaseReport.PrintXY(posfx+157,posfy+270,' ------- ORIGINAL -------');
end;

end.

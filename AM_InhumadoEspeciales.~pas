unit AM_InhumadoEspeciales;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,DBClient, StdCtrls, DBCtrls, Grids, DBGrids, ComCtrls, StrUtils,
  DB, Mask,ADODB, Buttons, ExtCtrls, JvExDBGrids, JvDBGrid, RpDefine,jpeg,
  RpBase, RpSystem, JvgPage, JvExButtons, JvBitBtn, WSDLIntf, ClaseFunciones,
  ClaseParcelasInhumados,JvExGrids, JvStringGrid,Unidad, JvExStdCtrls, JvGroupBox,
  DateUtils,ClaseParcelasInhumadosTestigos, ToolWin, JvgGroupBox,ClaseTiposSectores,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdMessageClient, IdSMTP,ClaseClientes;

type LasFilas = array[1..2] of integer;
type HackTable = class(TClientDataSet);
type THackStringGrid = class(TStringGrid);
type
  TAM_InhumadosEsp = class(TForm)
    Barra1: TStatusBar;
    DataSource1: TDataSource;
    PC1: TJvgPageControl;
    TabSheet1: TTabSheet;
    todos: TRichEdit;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    BORRA: TJvBitBtn;
    ToolButton2: TToolButton;
    GUARDA: TJvBitBtn;
    ToolButton3: TToolButton;
    Sale: TJvBitBtn;
    ToolButton1: TToolButton;
    GroupBox1: TGroupBox;
    RDniTit: TRadioButton;
    RAccion: TRadioButton;
    ElSector: TComboBox;
    LB1: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    LaAccion: TComboBox;
    ODNI: TEdit;
    Edit2: TEdit;
    Busca: TJvBitBtn;
    PC3: TJvgPageControl;
    TabSheet4: TTabSheet;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label43: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label73: TLabel;
    dnitit: TEdit;
    buscliente: TJvBitBtn;
    cuift: TEdit;
    tipodoct: TEdit;
    nomt: TEdit;
    domt: TEdit;
    barriot: TEdit;
    provt: TEdit;
    religiont: TEdit;
    naciot: TEdit;
    estcivilt: TEdit;
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
    Idclien: TEdit;
    TabSheet5: TTabSheet;
    Label21: TLabel;
    Label6: TLabel;
    Label28: TLabel;
    Label7: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label74: TLabel;
    dnis: TEdit;
    JvBitBtn3: TJvBitBtn;
    cuifs: TEdit;
    tipodocs: TEdit;
    noms: TEdit;
    doms: TEdit;
    barrios: TEdit;
    provs: TEdit;
    tels: TEdit;
    TabSheet3: TTabSheet;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label75: TLabel;
    dnir: TEdit;
    Button5: TJvBitBtn;
    cuifr: TEdit;
    tipodocr: TEdit;
    nomr: TEdit;
    domr: TEdit;
    barrior: TEdit;
    provr: TEdit;
    telr: TEdit;
    TabSheet9: TTabSheet;
    JvgGroupBox6: TJvgGroupBox;
    GrillaT: TJvStringGrid;
    PC2: TJvgPageControl;
    TabSheet6: TTabSheet;
    Label20: TLabel;
    Label4: TLabel;
    Label15: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label58: TLabel;
    Label62: TLabel;
    DNIfalle: TEdit;
    Button4: TJvBitBtn;
    APEYNOM: TEdit;
    CUIF: TEdit;
    tipodoc: TEdit;
    nacio: TEdit;
    estcivil: TEdit;
    fecnac: TMaskEdit;
    edad: TEdit;
    domi: TEdit;
    datopadre: TEdit;
    datomadre: TEdit;
    religionfalle: TEdit;
    loca: TEdit;
    TabSheet7: TTabSheet;
    Label8: TLabel;
    Label14: TLabel;
    Label10: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Fecing: TMaskEdit;
    horasale: TMaskEdit;
    horallega: TMaskEdit;
    fecinhu: TMaskEdit;
    horafalle: TMaskEdit;
    JvgGroupBox4: TJvgGroupBox;
    Label9: TLabel;
    Label12: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label39: TLabel;
    Label54: TLabel;
    fecfalle: TMaskEdit;
    nrosec: TEdit;
    acta: TEdit;
    nrofolio: TEdit;
    nrotomo: TEdit;
    NroReligion: TJvBitBtn;
    losMedicos: TComboBox;
    diag: TComboBox;
    JvBitBtn2: TJvBitBtn;
    fecdefun: TMaskEdit;
    JvgGroupBox5: TJvgGroupBox;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    tipoobjeto: TComboBox;
    Label55: TLabel;
    lacocheria: TComboBox;
    RadioButton1: TRadioButton;
    LasMutuales: TComboBox;
    Label5: TLabel;
    nivel1: TEdit;
    Label13: TLabel;
    cocheria: TComboBox;
    Timer1: TTimer;
    Label42: TLabel;
    NroInhumado: TEdit;
    Label50: TLabel;
    NroOrdServicio: TEdit;
    posicion1: TEdit;
    Label72: TLabel;
    ElNroServ: TEdit;
    vernivel: TSpeedButton;
    procedure Coloca1(nro:byte);
    procedure FormActivate(Sender: TObject);
    procedure RTituloClick(Sender: TObject);
    procedure RAccionClick(Sender: TObject);
    procedure BuscaClick(Sender: TObject);
    procedure JvBitBtn3Click(Sender: TObject);
    procedure ODNIKeyPress(Sender: TObject; var Key: Char);
    procedure actaExit(Sender: TObject);
    procedure nrofolioExit(Sender: TObject);
    procedure nrotomoExit(Sender: TObject);
    procedure NroReligionClick(Sender: TObject);
    procedure GUARDAClick(Sender: TObject);
    procedure saleClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure fecnacExit(Sender: TObject);
    procedure FecingExit(Sender: TObject);
    procedure fecfalleExit(Sender: TObject);
    procedure JvBitBtn2Click(Sender: TObject);
    procedure fecnacChange(Sender: TObject);
    procedure FecingKeyPress(Sender: TObject; var Key: Char);
    procedure horasaleKeyPress(Sender: TObject; var Key: Char);
    procedure horallegaKeyPress(Sender: TObject; var Key: Char);
    procedure nrosecKeyPress(Sender: TObject; var Key: Char);
    procedure actaKeyPress(Sender: TObject; var Key: Char);
    procedure nrofolioKeyPress(Sender: TObject; var Key: Char);
    procedure nrotomoKeyPress(Sender: TObject; var Key: Char);
    procedure fecfalleKeyPress(Sender: TObject; var Key: Char);
    procedure horafalleKeyPress(Sender: TObject; var Key: Char);
    procedure losMedicosKeyPress(Sender: TObject; var Key: Char);
    procedure diagKeyPress(Sender: TObject; var Key: Char);
    procedure BORRAClick(Sender: TObject);
    procedure fecdefunExit(Sender: TObject);
    procedure fecdefunKeyPress(Sender: TObject; var Key: Char);
    procedure losMedicosExit(Sender: TObject);
    procedure diagExit(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ElSectorExit(Sender: TObject);
    procedure ElSectorKeyPress(Sender: TObject; var Key: Char);
    procedure LaAccionExit(Sender: TObject);
    procedure LaAccionKeyPress(Sender: TObject; var Key: Char);
    procedure fecinhuKeyPress(Sender: TObject; var Key: Char);
    procedure fecinhuExit(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure LasMutualesExit(Sender: TObject);
    procedure LasMutualesKeyPress(Sender: TObject; var Key: Char);
    procedure tipoobjetoExit(Sender: TObject);
    procedure tipoobjetoKeyPress(Sender: TObject; var Key: Char);
    procedure nivel1Exit(Sender: TObject);
    procedure nivel1KeyPress(Sender: TObject; var Key: Char);
    procedure cocheriaExit(Sender: TObject);
    procedure cocheriaKeyPress(Sender: TObject; var Key: Char);
    procedure posicion1Exit(Sender: TObject);
    procedure posicion1KeyPress(Sender: TObject; var Key: Char);
    procedure Label79Click(Sender: TObject);
    procedure ElNroServKeyPress(Sender: TObject; var Key: Char);
    procedure fecnacKeyPress(Sender: TObject; var Key: Char);
    procedure vernivelClick(Sender: TObject);
  private
    gh,control:boolean;{Controla que no hubiere errores en la carga de datos}
    { Private declarations }
  public
    Resultado,nroorden,FechaActual,cantiinhu: string;
    name,adress,nrodocu,tabla,max,fecaltainhu,TTelef,ElId,cantiser,cantiseranio,elobjeto,ger:string;
    // aca instancio la clase si la clase esta definida en el uses de la ventana
    Funciones:TFuncionesVarias;
    Cliente:TClientes;
    ParcelasInhumados:TParcelasInhumados;
    ParcelasInhumadosTestigos:TParcelasInhumadosTestigos;
    maxi:integer;
    DataSetCli,DtCombo,DataSetT,DtComboOrdenS,DataSetNivPos:TClientDataSet; //declaro los DataSet
    IdCombos:array of array of string; // para los combobox
    paso:boolean;
    ///// para la impresion de datos segun parametros
    PosH1:Array [0..9] of Double;//Posiciones
    Camp1:Array [0..9] of Integer;//Campos a Tomar en cuenta
    TxtCamp1:Array [0..9] of String;//Textos de los Campos a Tomar en cuenta

    TMedico,TCliente,TDiag,TParentesco,TTestigo,TTiposObserv:Unidad.TablaXML;
  end;

var
  AM_InhumadosEsp: TAM_InhumadosEsp;

implementation

uses Modulo,Busqueda,AM_VenGenerica,AM_Clientes,ClaseTiposMedicos,ClaseParcelas,
     ClaseTiposDiagnosticos,ClaseParcelasServicios,ClaseTiposParentesco,
     ClaseTiposTestigos,ClaseSistemas,ClaseTiposObservaciones,InhumaSinServicios;

{$R *.dfm}


procedure TAM_InhumadosEsp.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TAM_InhumadosEsp.FormActivate(Sender: TObject);
begin
if not gh then begin
  gh:=true;
  setlength(IdCombos,9);
  barra1.Panels[2].Text:=modulo2.nivel;
  FechaActual:=LeftStr(Fec_System(),10);
  fecing.Text:=FechaActual;
  fecinhu.Text:=FechaActual;
  fecfalle.Text:=FechaActual;
  fecdefun.Text:=FechaActual;
  PC1.ActivePage:=PC1.Pages[0];
  PC1.Images:=modulo2.ImageList1;
  PC2.ActivePage:=PC2.Pages[0];
  PC3.ActivePage:=PC3.Pages[0];
  coloca1(2);    // losmedicos
  coloca1(3);    // diagnosticos
  coloca1(7);
  coloca1(8);
  coloca1(21);
  coloca1(23);
  coloca1(26);
  Raccion.OnClick(sender);
  odni.SetFocus;

  GrillaT.Cells[0,0]:='Orden';                      GrillaT.Cells[1,0]:='NroDNI';
  GrillaT.Cells[2,0]:='Nombre';                     GrillaT.Cells[3,0]:='TipoDNI';
  GrillaT.Cells[4,0]:='TipoTitular';                GrillaT.Cells[5,0]:='Domicilio';
  GrillaT.Cells[6,0]:='NroT';                       GrillaT.Cells[7,0]:='MDF';
  GrillaT.Cells[8,0]:='Cuif';                       GrillaT.Cells[9,0]:='FecNac';
  GrillaT.Cells[10,0]:='Nacionalidad';              GrillaT.Cells[11,0]:='EstCivil';
  GrillaT.Cells[12,0]:='Ciudad';

end;
end;

procedure TAM_InhumadosEsp.Coloca1(nro:byte);
var InhuSinServ: TInhuSinServ;
var t,y:integer;
    NroDni,IdHabitante,NroAccion,DniTitular,DniFallecido,idcliente,idhabi,nrogestion:variant;
    razonsocial,NombreTitular,NombreFallecido,fechafallecimiento,sec:string;
    TiposMedicos:TTiposMedicos;
    Cliente:TClientes;
    TiposDiagnosticos:TTiposDiagnosticos;
    ParcelasServicios:TParcelasServicios;
    TiposSectores:TTiposSectores;
    Parcelas:TParcelas;
    TiposParantesco:TTiposParentesco;
    TiposTestigos:TTiposTestigos;
    txtw:widestring;
    Param:TWideStrings;
    Sistema:TSistemas;
    TiposObservaciones:TTiposObservaciones;
    ct,ci:boolean;
    accio:variant;
begin
if nro= 0 then begin
  DataSetCli.Free;
  DataSetCli:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT   COUNT(*) AS CANTI FROM ParcelasInhumados '
  +'WHERE (NroAccion = ' + TRIM(NROACC.Text) + ') AND (Nivel = ' + TRIM(NIVEL1.Text) + ') AND (Posicion = ' + TRIM(POSICION1.Text) + ')';
  //+' WHERE  (dbo.ParcelasTitulares.NroAccion = ' + trim(nroacc.Text) + ')'; // AND (dbo.ParcelasTitulares.Nivel = 1)';
   if TRIM(TIPOOBJETO.Text) = 'ATAUD MAYOR' then begin
     txtw:= txtw + ' and  (Objeto = ''A'')';
   end;
   if TRIM(TIPOOBJETO.Text) = 'URNA'  then  begin
     txtw:= txtw + ' and  (Objeto = ''U'')';
   end;
   if TRIM(TIPOOBJETO.Text) = 'CENICERO' then  begin
     txtw:= txtw + ' AND  (Objeto = ''C'')';
   end;
  if Funciones.Listar(txtw,DataSetCli) then begin
    ger:=DataSetCli.Fields[0].AsString;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador', mtError,[mbok],0);
  Funciones.Free;
end;
if nro=1 then begin  // buscamos los datos de la accion en servicios
  DataSetCli.Free;
  DataSetCli:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT dbo.Clientes.NroDni, dbo.Clientes.Cuif, dbo.TiposDni.Abreviatura AS TipoDoc, dbo.Clientes.IdCliente,'
  +' dbo.Clientes.RazonSocial, dbo.Paises.Nacionalidad, dbo.Clientes.Domicilio, dbo.TiposEstadoCivil.DetalleEstado AS EstadoCivil,'
  +' dbo.Barrios.DetalleBarrio, dbo.Provincias.Provincia,(SELECT telef FROM dbo.LosTelefonosClientes(dbo.Clientes.Cuif) AS LosTelefonosClientes_1) AS telef,'
  +' dbo.TiposReligion.Detalle AS Religion, dbo.ParcelasTitulares.Nivel  FROM  dbo.Parcelas INNER JOIN '
  +' dbo.ParcelasTitulares ON dbo.Parcelas.NroAccion =  dbo.ParcelasTitulares.NroAccion RIGHT OUTER JOIN '
  +' dbo.Clientes ON dbo.ParcelasTitulares.Cuif = dbo.Clientes.Cuif LEFT OUTER JOIN '
  +' dbo.TiposProfesiones ON dbo.Clientes.NroProfesion = dbo.TiposProfesiones.NroProfesion LEFT OUTER JOIN '
  +' dbo.ClientesCategoria ON dbo.Clientes.IdCategoria = dbo.ClientesCategoria.IdCategoria LEFT OUTER JOIN '
  +' dbo.CodigoPostal ON dbo.Clientes.CodigoPostal = dbo.CodigoPostal.CODIGO LEFT OUTER JOIN '
  +' dbo.Barrios ON dbo.Clientes.IdBarrio = dbo.Barrios.IdBarrio LEFT OUTER JOIN  dbo.TiposSexos ON dbo.Clientes.Sexo = dbo.TiposSexos.Sexo LEFT OUTER JOIN '
  +' dbo.Localidades ON dbo.Clientes.IdLocalidad = dbo.Localidades.IdLocalidad LEFT OUTER JOIN dbo.Provincias ON dbo.Clientes.IdProvincia = dbo.Provincias.IdProvincia LEFT OUTER JOIN '
  +' dbo.TiposReligion ON dbo.Clientes.NroReligion = dbo.TiposReligion.NroReligion LEFT OUTER JOIN '
  +' dbo.TiposEstadoCivil ON dbo.Clientes.IdEstado = dbo.TiposEstadoCivil.IdEstado LEFT OUTER JOIN '
  +' dbo.Paises ON dbo.Clientes.NroNacionalidad = dbo.Paises.IdPais LEFT OUTER ' +
  'JOIN dbo.TiposDni ON dbo.Clientes.TipoDoc = dbo.TiposDni.TipoDoc ';
  //+' WHERE  (dbo.ParcelasTitulares.NroAccion = ' + trim(nroacc.Text) + ')'; // AND (dbo.ParcelasTitulares.Nivel = 1)';
   if rdnitit.Checked  then begin
     txtw:= txtw + ' WHERE  (dbo.ParcelasTitulares.NroAccion = ' + trim(nroacc.Text) + ') AND (dbo.ParcelasTitulares.Nivel = 1)';
   end;
   if raccion.Checked  then  begin
     txtw:= txtw + ' WHERE  (dbo.ParcelasTitulares.NroAccion = ' + trim(nroacc.Text) + ') AND (dbo.ParcelasTitulares.Nivel = 1)';
   end;
   if RadioButton1.Checked then  begin
     txtw:= txtw + ' WHERE  (dbo.ParcelasTitulares.NroAccion = ' + trim(nroacc.Text) + ')';
   end;
  if Funciones.Listar(txtw,DataSetCli) then begin
    /// datos del titular
    dnitit.Text:=DataSetCli.Fields[0].AsString;
    cuift.Text:=DataSetCli.Fields[1].AsString;
    tipodoct.Text:=DataSetCli.Fields[2].asstring;
    nomt.Text:=DataSetCli.Fields[4].AsString;
    domt.Text:=DataSetCli.Fields[6].asstring;
    barriot.Text:=DataSetCli.Fields[8].AsString;
    provt.Text:=DataSetCli.Fields[9].asstring;
    religiont.Text:=DataSetCli.Fields[11].AsString;
    naciot.Text:=DataSetCli.Fields[5].AsString;
    estcivilt.Text:=DataSetCli.Fields[7].AsString;
    // datos del solicitante
    dnis.Text:=DataSetCli.Fields[0].AsString;
    cuifs.Text:=DataSetCli.Fields[1].AsString;
    tipodocs.Text:=DataSetCli.Fields[2].asstring;
    noms.Text:=DataSetCli.Fields[4].AsString;
    doms.Text:=DataSetCli.Fields[6].asstring;
    // datos del resposable
    dnir.Text:=DataSetCli.Fields[0].AsString;
    cuifr.Text:=DataSetCli.Fields[1].AsString;
    tipodocr.Text:=DataSetCli.Fields[2].asstring;
    nomr.Text:=DataSetCli.Fields[4].AsString;
    domr.Text:=DataSetCli.Fields[6].asstring;
    end
    else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador', mtError,[mbok],0);
   Funciones.Free;
end;
if nro=2 then begin   /// combo medicos
  losMedicos.Clear;
  DtCombo.Free;
  Dtcombo:=TClientDataSet.Create(nil);
  TiposMedicos:=TTiposMedicos.Create(nil);
  TiposMedicos.ConnectionString:=modulo2.Conexion;
  if TiposMedicos.listar('SELECT detalle,nromedico FROM TiposMedicos ORDER BY detalle',DtCombo) then begin
    SetLength(IdCombos[0],DtCombo.RecordCount);
    for t:=1 to DtCombo.RecordCount  do begin
      DtCombo.RecNo:=t;
      losMedicos.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
      IdCombos[0,t-1]:=DtCombo.Fields[1].AsString;
    end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  TiposMedicos.Free;
  losmedicos.ItemIndex:=0;
end;
if nro = 3 then begin
  diag.Clear;
  DtCombo.Free;
  Dtcombo:=TClientDataSet.Create(nil);
  TiposDiagnosticos:=TTiposDiagnosticos.Create(nil);
  TiposDiagnosticos.ConnectionString:=modulo2.Conexion;
  if TiposDiagnosticos.listar('SELECT Diagnostico,NroDiagnostico FROM TiposDiagnosticos ORDER BY Diagnostico',DtCombo) then begin
    SetLength(IdCombos[1],DtCombo.RecordCount);
    for t:=1 to DtCombo.RecordCount  do begin
      DtCombo.RecNo:=t;
      diag.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
      IdCombos[1,t-1]:=DtCombo.Fields[1].AsString;
    end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  TiposDiagnosticos.Free;
  diag.ItemIndex:=0;
end;
if nro=4 then begin
  DataSetCli.Free;
  DataSetCli:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT distinct dbo.Clientes.NroDni, dbo.Clientes.Cuif, dbo.TiposDni.Abreviatura AS TipoDoc, dbo.Clientes.IdCliente,'
  +' dbo.Clientes.RazonSocial, dbo.Paises.Nacionalidad, dbo.Clientes.Domicilio, dbo.TiposEstadoCivil.DetalleEstado AS EstadoCivil,'
  +' dbo.Barrios.DetalleBarrio, dbo.Provincias.Provincia,(SELECT telef FROM dbo.LosTelefonosClientes(dbo.Clientes.Cuif) AS LosTelefonosClientes_1) AS telef,'
  +' dbo.TiposReligion.Detalle AS Religion, dbo.ParcelasTitulares.Nivel  FROM  dbo.Parcelas INNER JOIN '
  +' dbo.ParcelasTitulares ON dbo.Parcelas.NroAccion =  dbo.ParcelasTitulares.NroAccion RIGHT OUTER JOIN '
  +' dbo.Clientes ON dbo.ParcelasTitulares.Cuif = dbo.Clientes.Cuif LEFT OUTER JOIN '
  +' dbo.TiposProfesiones ON dbo.Clientes.NroProfesion = dbo.TiposProfesiones.NroProfesion LEFT OUTER JOIN '
  +' dbo.ClientesCategoria ON dbo.Clientes.IdCategoria = dbo.ClientesCategoria.IdCategoria LEFT OUTER JOIN '
  +' dbo.CodigoPostal ON dbo.Clientes.CodigoPostal = dbo.CodigoPostal.CODIGO LEFT OUTER JOIN '
  +' dbo.Barrios ON dbo.Clientes.IdBarrio = dbo.Barrios.IdBarrio LEFT OUTER JOIN  dbo.TiposSexos ON dbo.Clientes.Sexo = dbo.TiposSexos.Sexo LEFT OUTER JOIN '
  +' dbo.Localidades ON dbo.Clientes.IdLocalidad = dbo.Localidades.IdLocalidad LEFT OUTER JOIN dbo.Provincias ON dbo.Clientes.IdProvincia = dbo.Provincias.IdProvincia LEFT OUTER JOIN '
  +' dbo.TiposReligion ON dbo.Clientes.NroReligion = dbo.TiposReligion.NroReligion LEFT OUTER JOIN '
  +' dbo.TiposEstadoCivil ON dbo.Clientes.IdEstado = dbo.TiposEstadoCivil.IdEstado LEFT OUTER JOIN '
  +' dbo.Paises ON dbo.Clientes.NroNacionalidad = dbo.Paises.IdPais LEFT OUTER JOIN dbo.TiposDni ON dbo.Clientes.TipoDoc = dbo.TiposDni.TipoDoc '
  +' WHERE (dbo.ParcelasTitulares.cuif = ' + IdCombos[8,lasmutuales.ItemIndex] + ') AND ((dbo.ParcelasTitulares.Nivel = 1) or (dbo.ParcelasTitulares.Nivel = 0))';
  if  Funciones.Listar(txtw,DataSetCli) then begin
    nroacc.Text:=trim(edit2.Text);
    /// datos del titular
    dnitit.Text:=DataSetCli.Fields[0].AsString;
    cuift.Text:=DataSetCli.Fields[1].AsString;
    tipodoct.Text:=DataSetCli.Fields[2].asstring;
    nomt.Text:=DataSetCli.Fields[4].AsString;
    domt.Text:=DataSetCli.Fields[6].asstring;
    barriot.Text:=DataSetCli.Fields[8].AsString;
    provt.Text:=DataSetCli.Fields[9].asstring;
    religiont.Text:=DataSetCli.Fields[11].AsString;
    naciot.Text:=DataSetCli.Fields[5].AsString;
    estcivilt.Text:=DataSetCli.Fields[7].AsString;
    // datos del solicitante
    {dnis.Text:=DataSetCli.Fields[0].AsString;
    cuifs.Text:=DataSetCli.Fields[1].AsString;
    tipodocs.Text:=DataSetCli.Fields[2].asstring;
    noms.Text:=DataSetCli.Fields[4].AsString;
    doms.Text:=DataSetCli.Fields[6].asstring;   }
    // datos del resposable
    dnir.Text:=DataSetCli.Fields[0].AsString;
    cuifr.Text:=DataSetCli.Fields[1].AsString;
    tipodocr.Text:=DataSetCli.Fields[2].asstring;
    nomr.Text:=DataSetCli.Fields[4].AsString;
    domr.Text:=DataSetCli.Fields[6].asstring;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador', mtError,[mbok],0);
  Funciones.Free;
end;
if nro=5 then begin
  DtComboOrdenS.Free;
  DtComboOrdenS:=TClientDataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
    txtw:='SELECT maximonro FROM Maximos WHERE (tabla = ''OrdenServicio'')';
    if not Funciones.Listar(txtw,DtComboOrdenS)  then
       messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
       nroorden:=DtComboOrdenS.Fields[0].AsString;
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
    + ' WHERE (dbo.Parcelas.NroAccion=' + trim(nroacc.Text) + ') ORDER BY dbo.Parcelas.NroAccion';
  if Parcelas.Listar(txtw,DtCombo)  then begin
     //nroacc.Text:=DtCombo.Fields[0].AsString;
     nroacta.Text:=DtCombo.Fields[0].AsString;
     sector.Text:=DtCombo.Fields[2].AsString;
     parcela.Text:=DtCombo.Fields[3].AsString;
     codplaza.Text:=DtCombo.Fields[4].AsString;
     plaza.Text:=DtCombo.Fields[5].AsString;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Parcelas.Free;
end;
if nro = 7 then begin
{  Parentezco.Clear;
    DtCombo.Free;
    Dtcombo:=TClientDataSet.Create(nil);
    TiposParantesco:=TTiposParentesco.Create(nil);
    TiposParantesco.ConnectionString:=modulo2.Conexion;
    if TiposParantesco.listar('SELECT NroParentesco,detalle FROM TiposParentesco ORDER BY detalle',
      DtCombo) then begin
      SetLength(IdCombos[2],DtCombo.RecordCount);
      for t:=1 to DtCombo.RecordCount  do begin
        DtCombo.RecNo:=t;
        Parentezco.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
        IdCombos[2,t-1]:=DtCombo.Fields[0].AsString;
      end;
    end
    else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    TiposParantesco.Free;
  //end;
  Parentezco.ItemIndex:=0;   }
end;
if nro = 8 then begin
{  lostestigos.Clear;
    DtCombo.Free;
    Dtcombo:=TClientDataSet.Create(nil);
    TiposTestigos:=TTiposTestigos.Create(nil);
    TiposTestigos.ConnectionString:=modulo2.Conexion;
    if TiposTestigos.listar('SELECT Tipotestigo,detalle FROM TiposTestigos order by detalle',
      DtCombo) then begin
      SetLength(IdCombos[3],DtCombo.RecordCount);
      for t:=1 to DtCombo.RecordCount  do begin
        DtCombo.RecNo:=t;
        lostestigos.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
        IdCombos[3,t-1]:=DtCombo.Fields[1].AsString;
      end;
    end
    else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    TiposTestigos.Free;
  lostestigos.ItemIndex:=0;  }
end;
if nro = 9 then begin
{  DtComboOrdenS.Free;
  DtComboOrdenS:=TClientDataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT Clientes.RazonSocial FROM ParcelasInhumados inner join Clientes '
  + ' on Clientes.Cuif = ParcelasInhumados.CuifFallecido  where (NroOrdenServicio = ' + trim(edit3.Text) + ')';
  if Funciones.Listar(txtw,DtComboOrdenS)  then begin
   if not DtComboOrdenS.IsEmpty  then begin
      messagedlg('ERROR.. Nro Orden de Servicio ya Existente para el Inhumado: ' +  trim(DtComboOrdenS.Fields[0].AsString)
       + chr(13)+ 'Ingrese otro Valor',mtError,[mbok],0);
      edit3.SetFocus;
   end
   else begin
    nroorden:=trim(edit3.Text);
    JvBitBtn1.SetFocus;
   end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;   }
end;
if nro = 10 then begin
   DtCombo.Free;
   Dtcombo:=TClientDataSet.Create(nil);
   Funciones:=TFuncionesVarias.Create(nil);
   Funciones.ConnectionString:=modulo2.Conexion;
   NroDni:=strtoint(strcut_midle(trim(DataSetCli.Fields[4].AsString),3,10));
   if not Funciones.Run_Fn_VistaClientes(null,'',NroDni,null,null,'',DtCombo,'',0) then
   messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
   dnifalle.Text:=DtCombo.Fields[5].AsString;
   cuif.Text:=DtCombo.Fields[1].AsString;
   apeynom.Text:=DtCombo.Fields[2].AsString;
   tipodoc.Text:=DtCombo.Fields[4].AsString;
   nacio.Text:=DtCombo.Fields[9].AsString;
   estcivil.Text:=DtCombo.Fields[10].AsString;
   fecnac.Text:=DtCombo.Fields[11].AsString;
   edad.Text:=unidad.edad(strcut(Fec_System(),10),trim(fecnac.Text));
   domi.Text:=DtCombo.Fields[15].AsString;
   religionfalle.Text:=DtCombo.Fields[8].AsString;
   loca.Text:=DtCombo.Fields[13].AsString;
    Funciones.Free;
end;
if nro = 11 then begin
  DtCombo.Free;
  DtCombo:=TClientDataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if raccion.Checked then txtw:='SELECT * FROM VParcelasInhumadosxAccion where (NroAccion = ' + trim(odni.Text) + ')';
  if (rdnitit.Checked) or (RadioButton1.Checked) then txtw:='SELECT * FROM VParcelasInhumadosxAccion where (NroAccion = ' + trim(edit2.Text) + ')';
    if Funciones.Listar(txtw,DtCombo)  then begin
       if not DtCombo.IsEmpty  then begin
          InhuSinServ:= TInhuSinServ.create(self);
          try
           InhuSinServ.NroOpcion:=4;
           InhuSinServ.Caption:='Listado de Inhumados';
           InhuSinServ.nroacc:=trim(edit2.Text);
           InhuSinServ.ShowModal;
          finally
           nroinhumado.Text:=InhuSinServ.IdHabitante;
           dnifalle.Text:=InhuSinServ.DniFallecido;
           apeynom.Text:=InhuSinServ.NombreFallecido;
           cuif.Text:=InhuSinServ.CuifFallecido;
           tipodoc.Text:=InhuSinServ.Abreviatura;
           nacio.Text:=InhuSinServ.Nacionalidad;
           estcivil.Text:=InhuSinServ.DetalleEstado;
           fecnac.Text:=InhuSinServ.FechaNacimiento;
           edad.Text:=InhuSinServ.Edad;
           religionfalle.Text:=InhuSinServ.Detalle;
           loca.text:=InhuSinServ.Localidad;
           domi.Text:=InhuSinServ.Domicilio;
           fecing.Text:=InhuSinServ.FechaIngreso;
           horasale.Text:=InhuSinServ.HoraSalida;
           horallega.Text:=InhuSinServ.HoraLlegada;
           fecinhu.Text:=InhuSinServ.FechaInhumacion;
           horafalle.Text:=InhuSinServ.HoraFallecimiento;
           fecfalle.Text:=InhuSinServ.FechaFallecimiento;
           nrosec.Text:=InhuSinServ.NroSeccion;
           acta.Text:=InhuSinServ.NroActa;
           nrofolio.Text:=InhuSinServ.NroFolio;
           nrotomo.Text:=InhuSinServ.NroTomo;
           fecdefun.Text:=InhuSinServ.FecActaDefuncion;
           losmedicos.ItemIndex:=losmedicos.Items.IndexOf(trim(InhuSinServ.Medico));
           diag.ItemIndex:=diag.Items.IndexOf(trim(InhuSinServ.Diagnostico));
           tipoobjeto.ItemIndex:=tipoobjeto.Items.IndexOf(trim(InhuSinServ.Objeto));
           nivel1.Text:=InhuSinServ.Nivel;
           posicion1.Text:=InhuSinServ.Posicion;
           NroOrdServicio.text:=InhuSinServ.NroOrdenServ;
           InhuSinServ.destroy;
          end;
          busca.SetFocus;
       end
       else button4.Click;;
    end
    else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
   Funciones.Free;
end;
if nro = 12 then begin
   DtCombo.Free;
   Dtcombo:=TClientDataSet.Create(nil);
   Funciones:=TFuncionesVarias.Create(nil);
   Funciones.ConnectionString:=modulo2.Conexion;
   idcliente:=null;razonsocial:='';//NroDni:=trim(dnis.Text);
   NroDni:=strtoint(strcut_midle(trim(DataSetCli.Fields[9].AsString),3,10));
   if not Funciones.Run_Fn_VistaClientes(idcliente,razonsocial,NroDni,null,null,'',DtCombo,'',0) then
   messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
   cuifs.Text:=DtCombo.Fields[1].AsString;
   dnis.Text:=DtCombo.Fields[5].AsString;
   noms.Text:=DtCombo.Fields[2].AsString;
   tipodocs.Text:=DtCombo.Fields[4].AsString;
   doms.Text:=DtCombo.Fields[15].AsString;
   barrios.Text:=DtCombo.Fields[14].AsString;
   provs.Text:=DtCombo.Fields[12].AsString;
   Funciones.Free;
end;
if nro = 13 then begin  //cargo la grilla de los testigos
{  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  nrogestion:=4;
  if not Funciones.Run_Fn_VistaLosFormularios(nrogestion,DtCombo,'',0) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  for t:=0 to grillaformu.ColCount-1 do
    for y:=1 to grillaformu.RowCount-1 do grillaformu.Cells[t,y]:='';
  for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    grillaformu.RowCount:=t+1;
    grillaformu.Cells[0,t]:=trim(DtCombo.Fields[0].AsString);
    grillaformu.Cells[1,t]:=trim(DtCombo.Fields[2].AsString);
    grillaformu.Cells[2,t]:=trim(DtCombo.Fields[3].AsString);
  end;   }
end;
if nro=14 then begin   /// combo observaciones
//
end;
if nro = 15 then begin  // cargo el responsable
   DtCombo.Free;
   Dtcombo:=TClientDataSet.Create(nil);
   Funciones:=TFuncionesVarias.Create(nil);
   Funciones.ConnectionString:=modulo2.Conexion;
   idcliente:=null;razonsocial:='';
   NroDni:=strtoint(strcut_midle(trim(DataSetCli.Fields[8].AsString),3,10));
   if not Funciones.Run_Fn_VistaClientes(idcliente,razonsocial,NroDni,null,null,'',DtCombo,'',0) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
     cuifr.Text:=DtCombo.Fields[1].AsString;
     dnir.Text:=DtCombo.Fields[5].AsString;
     nomr.Text:=DtCombo.Fields[2].AsString;
     tipodocr.Text:=DtCombo.Fields[4].AsString;
     domr.Text:=DtCombo.Fields[15].AsString;
     barrior.Text:=DtCombo.Fields[14].AsString;
     provr.Text:=DtCombo.Fields[12].AsString;
    Funciones.Free;
end;
if nro=16 then begin   /// para cargar grilla testigos
  DataSetNivPos.Free;
  DataSetNivPos:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if (RadioButton1.Checked) or (RDniTit.Checked)  then begin
     accio:=trim(edit2.Text);
  end;
  if RAccion.Checked  then begin
     accio:=trim(odni.Text);
  end;
  elobjeto:=leftstr(trim(tipoobjeto.text),1);
  txtw:='SELECT * FROM AsignaPosicionInhumados (' + accio + ' , ' + chr(39) + elobjeto + chr(39) + ')';
  if not Funciones.Listar(txtw,DataSetNivPos) then begin
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  end;
  nivel1.Text:=trim(DataSetNivPos.Fields[0].AsString);
  posicion1.Text:=trim(DataSetNivPos.Fields[1].AsString);
  Funciones.Free;
  nivel1.SetFocus;
end;
if nro=17 then begin   /// Titulares activos
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if not Funciones.Run_Fn_VistaParcelasResponsables(strtoint(trim(nroacc.Text)),DtCombo,'where tipoaccionista =2 order by nivel' ,0) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  for t:=0 to grillat.ColCount-1 do
  for y:=1 to grillat.RowCount-1 do grillat.Cells[t,y]:='';
  for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    grillat.RowCount:=t+1;
    grillat.Cells[0,t]:=completa1(inttostr(t),2,'0');
    grillat.Cells[1,t]:=trim(DtCombo.Fields[0].AsString);
    grillat.Cells[2,t]:=trim(DtCombo.Fields[3].AsString);
    grillat.Cells[3,t]:=trim(DtCombo.Fields[2].AsString);
    grillat.Cells[4,t]:=trim(DtCombo.Fields[4].AsString);
    grillat.Cells[5,t]:=trim(DtCombo.Fields[5].AsString);
    grillat.Cells[8,t]:=trim(DtCombo.Fields[1].AsString);
  end;
  Funciones.Free;
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
if nro = 20 then begin
//
end;
if nro = 21 then begin //Combo cocheria
    cocheria.Clear;
    DtCombo.Free;
    Dtcombo:=TClientDataSet.Create(nil);
    Funciones:=TFuncionesVarias.Create(nil);
    Funciones.ConnectionString:=modulo2.Conexion;
    txtw:='SELECT NroCocheria, Detalle FROM TiposCocherias';
    if Funciones.Listar(txtw,DtCombo) then begin
      SetLength(IdCombos[6],DtCombo.RecordCount);
      for t:=1 to DtCombo.RecordCount  do begin
        DtCombo.RecNo:=t;
        cocheria.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
        IdCombos[6,t-1]:=DtCombo.Fields[0].AsString;
      end;
    end
    else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    funciones.Free;
    cocheria.ItemIndex:=0;
end;
if nro=23 then begin
    ELSECTOR.Clear;
    DtCombo.Free;
    Dtcombo:=TClientDataSet.Create(nil);
    TiposSectores:=TTiposSectores.Create(nil);
    TiposSectores.ConnectionString:=modulo2.Conexion;
    txtw:='SELECT Sector FROM TiposSectores';
    if TiposSectores.Listar(txtw,DtCombo) then begin
      SetLength(IdCombos[5],DtCombo.RecordCount);
      for t:=1 to DtCombo.RecordCount  do begin
        DtCombo.RecNo:=t;
        ELSECTOR.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
        IdCombos[5,t-1]:=DtCombo.Fields[0].AsString;
      end;
    end
    else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    TiposSectores.Free;
    ELSECTOR.ItemIndex:=0;
end;
if nro=24 then begin   /// carga de las acciones
  LAACCION.Clear;
  DtCombo.Free;
  Dtcombo:=TClientDataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  sec:=IdCombos[5,ELSECTOR.ItemIndex];
  txtw:='SELECT dbo.Parcelas.Parcela FROM dbo.Parcelas INNER JOIN '
  + ' dbo.TiposPlazas ON dbo.Parcelas.IdPlaza = dbo.TiposPlazas.IdPlaza '
  + ' WHERE (dbo.Parcelas.Sector = ' + chr(39) + sec + chr(39) + ') ORDER BY dbo.Parcelas.Parcela ';
  if Funciones.Listar(txtw,Dtcombo) then begin
    SetLength(IdCombos[7],Dtcombo.RecordCount);
    for t:=1 to Dtcombo.RecordCount  do begin
      Dtcombo.RecNo:=t;
      LAACCION.Items.Insert(t-1,trim(Dtcombo.Fields[0].AsString));
      IdCombos[7,t-1]:=Dtcombo.Fields[0].AsString;
      //action:=strtoint(Dtcombo.Fields[0].AsString);
    end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  funciones.Free;
  LAACCION.ItemIndex:=0;
end;
if nro=25 then begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  sec:=IdCombos[5,ELSECTOR.ItemIndex];
  txtw:='SELECT * FROM Fn_VistaParcelas (null,' + chr(39) + sec + chr(39) + ',' +
    'null,null,0)  where (parcela = '+  trim(laaccion.Text)+')';
  if not Funciones.Listar(txtw,DtCombo) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  edit2.Text:=DtCombo.Fields[0].AsString;
  Funciones.Free;
end;
if nro =  26 then begin
  lasmutuales.Clear;
  DtCombo.Free;
  Dtcombo:=TClientDataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT distinct clientes.RazonSocial,tit.Cuif '
  +' FROM ParcelasTitulares tit inner join Clientes on Clientes.Cuif = tit.Cuif WHERE (NroTipoAcc = 3)';
  if Funciones.Listar(txtw,DtCombo)then begin
    SetLength(IdCombos[8],DtCombo.RecordCount);
    for t:=1 to DtCombo.RecordCount  do begin
      DtCombo.RecNo:=t;
      lasmutuales.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
      IdCombos[8,t-1]:=DtCombo.Fields[1].AsString;
    end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  lasmutuales.ItemIndex:=0;
end;
if nro = 27 then begin
  DtCombo.Free;
  Dtcombo:=TClientDataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT NroAccion,Sector,Parcela,Nivel,Posicion FROM VParcelasInhumadosNew where (CuifFallecido = '+ trim(cuif.Text) + ')';
  if Funciones.Listar(txtw,DtCombo) then begin
   if not DtCombo.IsEmpty then begin
    messagedlg('ATENCION este Inhumado ya se encuentra en la Parcela' + trim(Dtcombo.Fields[2].AsString)
    + chr(13) + ' Sector: '  +trim(Dtcombo.Fields[1].AsString)  + ' Accion: '  + trim(Dtcombo.Fields[0].AsString)
    + chr(13) + ' Nivel: '  +trim(Dtcombo.Fields[3].AsString)  + ' Posicion: '  + trim(Dtcombo.Fields[4].AsString)
    + chr(13) + ' IMPOSIBLE CARGAR EL INHUMADO..',mtError,[mbok],0);
    cantiinhu:='1';
   end
   else cantiinhu:='0';
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  funciones.Free;
end;

end;

procedure TAM_InhumadosEsp.RTituloClick(Sender: TObject);
begin
  label76.Visible:=true;
  label77.Visible:=true;
  elsector.Visible:=true;
  laaccion.Visible:=true;
  edit2.Visible:=true;
  LB1.Visible:=false;
  lasmutuales.Visible:=false;
  ODNI.Visible:=false;
  ODNI.Text:='00000000';
  Busca.Enabled:=true;
  elsector.SetFocus;
end;

procedure TAM_InhumadosEsp.RAccionClick(Sender: TObject);
begin
  label76.Visible:=false;
  label77.Visible:=false;
  elsector.Visible:=false;
  laaccion.Visible:=false;
  lasmutuales.Visible:=false;
  lb1.Visible:=true;
  LB1.Caption:='Ingrese el Nro de Accion:';
  ODNI.Visible:=true;
  ODNI.Text:='00000000';
  Busca.Enabled:=true;
  ODNI.SetFocus;
end;

procedure TAM_InhumadosEsp.BuscaClick(Sender: TObject);
var p,u:integer;
begin
 if rdnitit.Checked  then begin
  nroacc.Text:=edit2.Text;
 end;
 if raccion.Checked  then  begin
  nroacc.Text:=odni.Text;
 end;
 if (rdnitit.Checked) or (raccion.Checked ) then begin
   Coloca1(1);   //  datos de las parcelas
   coloca1(17);  // cargo los titulares activos
 end;
 if RadioButton1.Checked then begin
   Coloca1(4);
 end;
 Coloca1(6);   //  datos de las parcelas
 //coloca1(13);  // cargamos los formularios
 //buscamos si la accion no tiene ya inhumados cargados
 //coloca1(11);
 button4.Click;
end;

procedure TAM_InhumadosEsp.JvBitBtn3Click(Sender: TObject);
var Busqueda:TLA_BUSQUEDA;
begin
Busqueda:=TLA_BUSQUEDA.Create(self);
try
  Busqueda.NroOpcion:=9;  //7
  busqueda.Edit1.Text:=trim(NROACC.Text);
  busqueda.valor:=trim(NROACC.Text);
  Busqueda.ShowModal;
  dnis.Text:=busqueda.DB1.Text;
  CUIFs.Text:=busqueda.DB2.Text;
  tipodocs.Text:=busqueda.DB3.Text;
  noms.Text:=busqueda.DB4.Text;
  doms.Text:=busqueda.DB6.Text;
  barrios.Text:=busqueda.DB7.Text;
  provs.Text:=busqueda.DB8.Text;
  tels.Text:=busqueda.eltelef;
finally
  Busqueda.Destroy;
  PC3.ActivePage:=PC3.Pages[1];
end;
end;

procedure TAM_InhumadosEsp.ODNIKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then busca.SetFocus;
end;

procedure TAM_InhumadosEsp.actaExit(Sender: TObject);
begin
if trim(nroacta.Text)='' then nroacta.Text:='0';
end;

procedure TAM_InhumadosEsp.nrofolioExit(Sender: TObject);
begin
if trim(nrofolio.Text)='' then nrofolio.Text:='0';
end;

procedure TAM_InhumadosEsp.nrotomoExit(Sender: TObject);
begin
if trim(nrotomo.Text)='' then nrotomo.Text:='0';
end;

procedure TAM_InhumadosEsp.NroReligionClick(Sender: TObject);
var AM_Generico:TAM_Generico;
begin
AM_Generico:=TAM_Generico.Create(self);
try
  AM_Generico.NroOpcion:=9;
  AM_Generico.Titulo1:='Medicos';
  AM_Generico.ShowModal;
finally
  AM_Generico.Destroy;
  //Modulo2.ActualizarTablaXML('TiposMedicos');
  Coloca1(2);
  losmedicos.SetFocus;
end;
end;

procedure TAM_InhumadosEsp.GUARDAClick(Sender: TObject);
var el_dni:string;
var txtw:widestring;
var ac,lafecha,ct:boolean;
var gf,t:integer;
begin
 ParcelasInhumados:=TParcelasInhumados.Create(nil);
 ParcelasInhumados.ConnectionString:=modulo2.Conexion;
 if noms.Text='' then begin
    messagedlgpos('Error!! Debe Ingresar el Dato del Solicitante.',mtError,[mbok],0,screen.Width div 3,screen.Height div 3);
    PC3.ActivePage:=PC3.Pages[1];
 end
 else begin
  gf:=messagedlgpos('Desea Agregar los Datos de esta Inhumacion?',mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
  if gf = 1 then begin
    if not paso then begin
     Cliente:=TClientes.Create(nil);
     Cliente.ConnectionString:=modulo2.Conexion;
     txtw:='UPDATE Clientes SET FechaNacimiento= ' + chr(39) +  trim(fecnac.Text) + chr(39)
     + ' WHERE (Cuif=' + trim(cuif.Text) + ') and (NroDni= ' + trim(dnifalle.Text) + ')';
     Cliente.ListarSinResp(txtw);
     Cliente.Free;
    end;
    ParcelasInhumados.C_NroAccion_IX1:=strtoint(nroacc.Text);
    ParcelasInhumados.C_Nivel_IX2:=strtoint(trim(nivel1.Text));
    ParcelasInhumados.C_Posicion_IX3:=strtoint(trim(posicion1.Text));
    ParcelasInhumados.C_Objeto_IX4:=strcut_midle(trim(tipoobjeto.text),1,1);
    ParcelasInhumados.C_CuifTitular_IX5:=strtoint64(trim(cuift.Text)); //strtoint64
    ParcelasInhumados.C_CuifFallecido_IX6:=strtoint64(trim(cuif.Text)); //strtoint64
    PArcelasInhumados.C_CuifSolicitante:=strtoint64(trim(cuifs.Text));  //strtoint64
    parcelasinhumados.C_CuifResponsable:=strtoint64(trim(cuifr.Text));
    PArcelasInhumados.C_FechaIngreso:=trim(fecing.Text);
    PArcelasInhumados.C_FechaFallecimiento:=trim(fecfalle.Text);
    PArcelasInhumados.C_HoraFallecimiento:=trim(horafalle.Text);
    PArcelasInhumados.C_NroDiagnostico_IX7:=strtoint(IdCombos[1,diag.ItemIndex]);
    PArcelasInhumados.C_HoraSalida:=trim(horasale.Text);
    PArcelasInhumados.C_HoraLlegada:=trim(horallega.Text);
    PArcelasInhumados.C_ActaInhumado_IX8:=strtoint(nroacta.Text);
    PArcelasInhumados.C_ObservPlaca:=trim(cocheria.Text);
    //PArcelasInhumados.C_IdServicio_IX9:=strtoint(nroacc.Text);
    PArcelasInhumados.C_NroSeccion:=strtoint(nrosec.Text);
    PArcelasInhumados.C_NroActa_IX10:=strtoint(acta.Text);
    PArcelasInhumados.C_NroFolio:=strtoint(nrofolio.Text);
    PArcelasInhumados.C_NroTomo:=trim(nrotomo.Text);
    PArcelasInhumados.C_NroMedico_IX11:=strtoint(IdCombos[0,losmedicos.ItemIndex]);
    PArcelasInhumados.C_PadreFallecido:='';//trim(datopadre.Text);
    PArcelasInhumados.C_MadreFallecido:='';//trim(datomadre.Text);
    PArcelasInhumados.C_Usu_A:=modulo2.nro_usu;
    parcelasinhumados.C_NroActaInhumado:=strtoint(DarMaximo('ActaInhumado'));//strtoint(max);  //aca se ingresa de maximo
    if trim(fecinhu.Text) = '/  /' then parcelasinhumados.C_FechaInhumacion:=''
     else parcelasinhumados.C_FechaInhumacion:=trim(fecinhu.Text);
    parcelasinhumados.C_Fecactadefuncion:=trim(fecdefun.Text);
    parcelasinhumados.C_DetalleObjeto:=trim(tipoobjeto.Text);
    parcelasinhumados.C_NroOrdenServicio:=trim(elnroserv.Text);
    parcelasinhumados.C_IdObserv:=0;
    parcelasinhumados.C_Confirmado:=true;
    parcelasinhumados.C_Usu_Conf:=modulo2.nro_usu;
    parcelasinhumados.C_Fecha_Conf:=strcut(Fec_System(),10);
    ac:=ParcelasInhumados.Agrega;
    ElId:=ParcelasInhumados.Identidad;
    ParcelasInhumados.Free;
    if ac then begin
     messagedlg('Se ha Guardado el nuevo Inhumado con Exito',mtConfirmation,[mbok],0);
       //PC1.ActivePage:=PC1.Pages[1];
     PC1.Enabled:=true;
     GUARDA.Enabled:=FALSE;
    end
    else begin
      messagedlg('Error al Guardar el nuevo Inhumado. Consulte con un Administrador',mtError,[mbok],0);
    end;
  end;
 end;
end;

procedure TAM_InhumadosEsp.saleClick(Sender: TObject);
begin
close;
end;

procedure TAM_InhumadosEsp.Button4Click(Sender: TObject);
var Busqueda:TLA_BUSQUEDA;
var control:boolean;
var txt:string;
begin
control:=true;
 if trim(dnis.Text)='00000000' then begin
    control:=false;
    txt:='ERROR falta datos del Solicitante' + chr(13)
    + 'Por Favor complete estos datos para proseguir la carga del inhumado';
 end;
 //else begin
 if trim(dnir.Text)='00000000' then begin
   control:=false;
   txt:='ERROR falta datos del Responsable'+ chr(13)
    + 'Por Favor complete estos datos para proseguir la carga del inhumado';
 end;
 if not control then begin
   messagedlg(txt ,mtError,[mbok],0);
 end
 else begin
  paso:=true;
  Busqueda:=TLA_BUSQUEDA.Create(self);
  try
   Busqueda.NroOpcion:=9;
   Busqueda.Caption:='Busqueda y Seleccion de Inhumados';
   Busqueda.ShowModal;
   dnifalle.Text:=busqueda.DB1.Text;
   CUIF.Text:=busqueda.DB2.Text;
   tipodoc.Text:=busqueda.DB3.Text;
   apeynom.Text:=busqueda.DB4.Text;
   domi.Text:=busqueda.DB5.Text;
   nacio.Text:=busqueda.DB8.Text;
   estcivil.Text:=busqueda.DB9.Text;
   if busqueda.DB10.Text='' then begin
    paso:=false;
   end
   else begin
    fecnac.Text:=busqueda.DB10.Text;
    edad.Text:=floattostr(trunc((Date - StrToDate(fecnac.Text))/365));
   end;
   religionfalle.Text:=busqueda.DB11.Text;
  finally
   Busqueda.Destroy;
  end;
  //coloca1(27);
  if trim(dnifalle.Text) = trim(dnitit.Text) then begin
   messagedlg('Error el Fallecido NO puede ser el Titular' + chr(13)
   + 'Por Favor seleccione otra Persona o modifique los Titulares de esta Accion' ,mtError,[mbok],0);
   button4.Click;
   guarda.Enabled:=false;
  end
  else begin
   if not paso then begin
    messagedlg('Error el Fallecido NO puede Fecha de Nacimiento Vacio' + chr(13)
    + 'Por Favor complete ese Dato para seguir con la carga de Datos...' ,mtError,[mbok],0);
    PC2.ActivePage:=PC2.Pages[0];
    fecnac.ReadOnly:=false;
    fecnac.SetFocus;
    IF NOT GUARDA.Enabled THEN guarda.Enabled:=true;
   end
   else begin
    coloca1(27);
    IF cantiinhu <> '0' then begin
     //fecnac.ReadOnly:=true;
     PC2.ActivePage:=PC2.Pages[0];
     button4.Click;
     guarda.Enabled:=false;
    end
    else begin
     fecnac.ReadOnly:=true;
     PC2.ActivePage:=PC2.Pages[1];
     fecing.SetFocus;
     IF NOT GUARDA.Enabled THEN guarda.Enabled:=true;
    end;
   end;
  end;
 end;
end;

procedure TAM_InhumadosEsp.fecnacExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(FECNAC.Text));
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  fecnac.SetFocus;
end;
end;

procedure TAM_InhumadosEsp.FecingExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(Fecing.Text));
  fecinhu.Text := trim(Fecing.Text);
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  Fecing.SetFocus;
end;
end;

procedure TAM_InhumadosEsp.fecfalleExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(fecfalle.Text));
  fecdefun.Text := trim(fecfalle.Text);
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  fecfalle.SetFocus;
end;
end;

procedure TAM_InhumadosEsp.JvBitBtn2Click(Sender: TObject);
var AM_Generico:TAM_Generico;
begin
AM_Generico:=TAM_Generico.Create(self);
try
  AM_Generico.NroOpcion:=7;
  AM_Generico.Titulo1:='Diagnosticos';
  AM_Generico.ShowModal;
finally
  AM_Generico.Destroy;
  Coloca1(3);
  diag.SetFocus;
end;
end;

procedure TAM_InhumadosEsp.fecnacChange(Sender: TObject);
begin
// edad.Text:=unidad.edad(strcut(Fec_System(),10),trim(fecnac.Text));
end;


procedure TAM_InhumadosEsp.FecingKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  horasale.SetFocus;
end;
end;

procedure TAM_InhumadosEsp.horasaleKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  horallega.SetFocus;
end;
end;

procedure TAM_InhumadosEsp.horallegaKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  fecinhu.SetFocus;
end;
end;

procedure TAM_InhumadosEsp.nrosecKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  acta.SetFocus;
end;
end;

procedure TAM_InhumadosEsp.actaKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  nrofolio.SetFocus;
end;
end;

procedure TAM_InhumadosEsp.nrofolioKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  nrotomo.SetFocus;
end;
end;

procedure TAM_InhumadosEsp.nrotomoKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  fecdefun.SetFocus;

end;
end;

procedure TAM_InhumadosEsp.fecfalleKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  nrosec.SetFocus;
end;
end;

procedure TAM_InhumadosEsp.horafalleKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  fecfalle.SetFocus;
end;
end;

procedure TAM_InhumadosEsp.losMedicosKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  diag.SetFocus;
end;
end;

procedure TAM_InhumadosEsp.diagKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  //if guarda.Enabled then  guarda.SetFocus;
  tipoobjeto.SetFocus;
end;
end;

procedure TAM_InhumadosEsp.BORRAClick(Sender: TObject);
var p,u:integer;
begin
coloca1(2);
coloca1(3);
coloca1(7);
coloca1(8);
dnitit.Text:='00000000';
cuift.Text:='00000000000';
tipodoct.Clear;
nomt.Clear;
domt.Clear;
barriot.Clear;
provt.Clear;
religiont.Clear;
estcivilt.Clear;
naciot.Clear;
nroacc.Clear;
nroacta.Text:='00';
sector.Clear;
parcela.Clear;
codplaza.Clear;
plaza.Clear;
dnis.Text:='00000000';cuifs.Text:='00000000000';
tipodocs.Clear;noms.Clear;doms.Clear;barrios.Clear;provs.Clear;
dnifalle.Text:='00000000';apeynom.Clear;cuif.Text:='00000000000';
tipodoc.Clear;nacio.Clear;estcivil.Clear;religionfalle.Clear;
fecnac.Clear;edad.Clear;domi.Clear;datopadre.Clear;datomadre.Clear;
fecing.Clear;horasale.Text:='00:00';horallega.Text:='00:00';nrosec.Text:='0';
acta.Text:='0';nrofolio.Text:='0';nrotomo.Text:='0';fecfalle.Clear;fecinhu.Clear;
horafalle.Text:='00:00';fecdefun.Clear;
losmedicos.ItemIndex:=0;diag.ItemIndex:=0;tipoobjeto.ItemIndex:=0;
nivel1.Clear;posicion1.Clear; fecdefun.Clear;
cocheria.ItemIndex:=0;
name:='';
nrodocu:='';
adress:='';

for p:=0 to grillat.ColCount-1 do
  for u:=1 to grillat.RowCount-1 do grillat.Cells[p,u]:='';
grillat.RowCount:=2;
guarda.Enabled:=false;

PC1.ActivePage:=PC1.Pages[0];
PC3.ActivePage:=PC3.Pages[0];
PC2.ActivePage:=PC2.Pages[0];

LB1.Caption:='Ingrese el Nro Inhumado:';
ODNI.Visible:=true;
ODNI.Text:='00000000';
Busca.Enabled:=true;
ODNI.SetFocus;
end;

procedure TAM_InhumadosEsp.fecdefunExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(fecdefun.Text));
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  fecdefun.SetFocus;
end;
end;

procedure TAM_InhumadosEsp.fecdefunKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  losmedicos.SetFocus;
end;
end;

procedure TAM_InhumadosEsp.losMedicosExit(Sender: TObject);
begin
if losMedicos.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el MEdico Ingresado!!',mterror,[mbok],0);
  losMedicos.SetFocus;
end;
end;

procedure TAM_InhumadosEsp.diagExit(Sender: TObject);
begin
if diag.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Diagnostico Ingresado!!',mterror,[mbok],0);
  diag.SetFocus;
end;
end;

procedure TAM_InhumadosEsp.Button5Click(Sender: TObject);
var Busqueda:TLA_BUSQUEDA;
begin
Busqueda:=TLA_BUSQUEDA.Create(self);
try
  Busqueda.NroOpcion:=9; //7
  busqueda.Edit1.Text:=trim(nroacc.Text);
  busqueda.valor:=trim(nroacc.Text);
  Busqueda.ShowModal;
  dnir.Text:=busqueda.DB1.Text;
  CUIFr.Text:=busqueda.DB2.Text;
  tipodocr.Text:=busqueda.DB3.Text;
  nomr.Text:=busqueda.DB4.Text;
  domr.Text:=busqueda.DB6.Text;
  barrior.Text:=busqueda.DB7.Text;
  provr.Text:=busqueda.DB8.Text;
  telr.Text:=busqueda.eltelef;
finally
  Busqueda.Destroy;
  PC3.ActivePage:=PC3.Pages[2];
end;
end;

procedure TAM_InhumadosEsp.ElSectorExit(Sender: TObject);
begin
if ElSector.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Sector Ingresado!!',mterror,[mbok],0);
  ElSector.SetFocus;
end;
end;

procedure TAM_InhumadosEsp.ElSectorKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  coloca1(24);
  laaccion.Enabled:=true;
  laaccion.SetFocus;
end;
end;

procedure TAM_InhumadosEsp.LaAccionExit(Sender: TObject);
begin
 if LaAccion.ItemIndex < 0 then begin
   messagedlg('ERROR!! No Existe el N° de Acción Ingresado!!',mterror,[mbok],0);
   LaAccion.SetFocus;
 end;
end;

procedure TAM_InhumadosEsp.LaAccionKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  coloca1(25);
  busca.SetFocus;
end;
end;

procedure TAM_InhumadosEsp.fecinhuKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  horafalle.SetFocus;
end;
end;

procedure TAM_InhumadosEsp.fecinhuExit(Sender: TObject);
var kl:Tdatetime;
begin
  try
    kl:=strtodate(trim(fecinhu.Text));
  except
    messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
    fecinhu.SetFocus;
  end;
end;


procedure TAM_InhumadosEsp.RadioButton1Click(Sender: TObject);
begin
  dnis.Clear ;
  cuifs.Clear ;
  tipodocs.Clear ;
  noms.Clear ;
  doms.Clear ;
  // datos del resposable
  dnir.Clear ;
  cuifr.Clear ;
  tipodocr.Clear ;
  nomr.Clear ;
  domr.Clear;

  label76.Visible:=false;
  label77.Visible:=false;
  elsector.Visible:=false;
  laaccion.Visible:=false;
  edit2.Visible:=true;
  lb1.Visible:=false;
  //LB1.Caption:='Ingrese el Nro de Accion:';
  ODNI.Visible:=false;
  lasmutuales.Visible:=true;
  lasmutuales.SetFocus;
end;

procedure TAM_InhumadosEsp.LasMutualesExit(Sender: TObject);
var InhuSinServ: TInhuSinServ;
begin
if LasMutuales.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe la Mutual/Sindicato Ingresado!!',mterror,[mbok],0);
  LasMutuales.SetFocus;
end
else begin
  InhuSinServ:= TInhuSinServ.create(self);
  try
   InhuSinServ.NroOpcion:=2;
   InhuSinServ.Caption:='Listado de Acciones';
   InhuSinServ.mutu:=trim(lasmutuales.Text);
   InhuSinServ.ElIdServ:=IdCombos[8,lasmutuales.ItemIndex];
   InhuSinServ.ShowModal;
  finally
   edit2.Text:=InhuSinServ.idinhu.Text;
   InhuSinServ.destroy;
  end;
  busca.SetFocus;
  busca.Click;
end;
end;

procedure TAM_InhumadosEsp.LasMutualesKeyPress(Sender: TObject;
  var Key: Char);
begin
    busca.SetFocus;
end;

procedure TAM_InhumadosEsp.tipoobjetoExit(Sender: TObject);
begin
if tipoobjeto.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el tipo de objeto Ingresado!!',mterror,[mbok],0);
  tipoobjeto.SetFocus;
end
else begin
  //coloca1(16);
end;
end;

procedure TAM_InhumadosEsp.tipoobjetoKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  nivel1.SetFocus;
end;
end;

procedure TAM_InhumadosEsp.nivel1Exit(Sender: TObject);
begin
if (trim(nivel1.Text)='') or (trim(nivel1.Text)='0') then begin
   messagedlg('ERROR!! Numero de Nivel Incorrecto!!',mterror,[mbok],0);
   nivel1.SetFocus;
end;  // nrotomo.Text:='0';
end;

procedure TAM_InhumadosEsp.nivel1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  posicion1.SetFocus;
end
else begin
  if ( StrScan('123',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
   else Key := #0;
end;
end;

procedure TAM_InhumadosEsp.cocheriaExit(Sender: TObject);
begin
if cocheria.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe la cocheria Ingresada!!',mterror,[mbok],0);
  cocheria.SetFocus;
end;
end;

procedure TAM_InhumadosEsp.cocheriaKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  if guarda.Enabled then  guarda.SetFocus;
end;
end;

procedure TAM_InhumadosEsp.posicion1Exit(Sender: TObject);
begin
 if (trim(posicion1.Text)='') or (trim(posicion1.Text)='0') then begin
   messagedlg('ERROR!! Numero de posicion Incorrecto!!',mterror,[mbok],0);
   posicion1.SetFocus;
 end
 else vernivel.Click;
end;

procedure TAM_InhumadosEsp.posicion1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  vernivel.Click;
end
else begin
  if ( StrScan('123',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
   else Key := #0;
end;
end;

procedure TAM_InhumadosEsp.Label79Click(Sender: TObject);
begin
Timer1.Enabled := False;
end;

procedure TAM_InhumadosEsp.ElNroServKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  cocheria.SetFocus;
end
else begin
  if ( StrScan('1234567890',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
   else Key := #0;
end;
end;

procedure TAM_InhumadosEsp.fecnacKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  PC2.ActivePage:=PC2.Pages[1];
  edad.Text:=unidad.edad(strcut(Fec_System(),10),trim(fecnac.Text));
  fecing.SetFocus;
end;
end;

procedure TAM_InhumadosEsp.vernivelClick(Sender: TObject);
begin
  Coloca1(0);
  if trim(ger) = '0' then begin
    ElNroServ.SetFocus;
    guarda.Enabled :=true;
  end
  else begin
   messagedlg('ERROR!! Numero de Nivel y Posicion para este objeto ESTA OCUPADO!!',mterror,[mbok],0);
   guarda.Enabled :=false;
   tipoobjeto.SetFocus;
  end
end;

end.

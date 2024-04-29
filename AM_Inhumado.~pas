unit AM_Inhumado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,DBClient, StdCtrls, DBCtrls, Grids, DBGrids, ComCtrls, StrUtils,
  DB, Mask,ADODB, Buttons, ExtCtrls, JvExDBGrids, JvDBGrid, RpDefine,jpeg,
  RpBase, RpSystem, JvgPage, JvExButtons, JvBitBtn, WSDLIntf, ClaseFunciones,
  ClaseParcelasInhumados,JvExGrids, JvStringGrid,Unidad, JvExStdCtrls, JvGroupBox,
  DateUtils,ClaseParcelasInhumadosTestigos, ToolWin, JvgGroupBox,ClaseTiposSectores,
  ClaseParcelasInhumadosMovimientos, ImgList;

type LasFilas = array[1..2] of integer;
type HackTable = class(TClientDataSet);//       class(TADOTable);
type THackStringGrid = class(TStringGrid);
type
  TAM_Inhu = class(TForm)
    Barra1: TStatusBar;
    DataSource1: TDataSource;
    PC1: TJvgPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TJvDBGrid;
    todos: TRichEdit;
    RAccion: TRadioButton;
    Bevel2: TBevel;
    LB1: TLabel;
    ODNI: TEdit;
    Busca: TJvBitBtn;
    RDniTit: TRadioButton;
    TabSheet2: TTabSheet;
    GroupBox6: TGroupBox;
    Shape3: TShape;
    Shape2: TShape;
    Label55: TLabel;
    Label56: TLabel;
    Shape1: TShape;
    Label63: TLabel;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    BORRA: TJvBitBtn;
    ToolButton2: TToolButton;
    GUARDA: TJvBitBtn;
    ToolButton3: TToolButton;
    Sale: TJvBitBtn;
    JvgGroupBox3: TJvgGroupBox;
    Label5: TLabel;
    Label13: TLabel;
    Accion: TEdit;
    cocheria: TEdit;
    Label50: TLabel;
    IdHab: TEdit;
    Label57: TLabel;
    accselec: TEdit;
    Label42: TLabel;
    tiposerv: TEdit;
    Label61: TLabel;
    fecservicio: TMaskEdit;
    confir: TEdit;
    ToolButton1: TToolButton;
    GroupBox3: TGroupBox;
    C3: TCheckBox;
    C6: TCheckBox;
    C4: TCheckBox;
    NumSer: TRadioButton;
    RvS: TRvSystem;
    lacocheria: TComboBox;
    Label76: TLabel;
    ElSector: TComboBox;
    LaAccion: TComboBox;
    Label77: TLabel;
    Edit2: TEdit;
    idser: TEdit;
    Label78: TLabel;
    nordenServ: TEdit;
    PC2: TPageControl;
    TabSheet8: TTabSheet;
    TabSheet10: TTabSheet;
    Label8: TLabel;
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
    Fecing: TMaskEdit;
    Label14: TLabel;
    horasale: TMaskEdit;
    Label10: TLabel;
    horallega: TMaskEdit;
    Label40: TLabel;
    fecinhu: TMaskEdit;
    Label41: TLabel;
    horafalle: TMaskEdit;
    JvgGroupBox5: TJvgGroupBox;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label71: TLabel;
    tipoobjeto: TComboBox;
    nivel1: TEdit;
    posicion1: TEdit;
    verificaNP: TJvBitBtn;
    Label72: TLabel;
    Observa: TComboBox;
    Image1: TImage;
    Label48: TLabel;
    datopadre: TEdit;
    Label49: TLabel;
    datomadre: TEdit;
    Label20: TLabel;
    DNIfalle: TEdit;
    Button4: TJvBitBtn;
    Label4: TLabel;
    APEYNOM: TEdit;
    Label15: TLabel;
    CUIF: TEdit;
    Label22: TLabel;
    tipodoc: TEdit;
    Label23: TLabel;
    nacio: TEdit;
    Label24: TLabel;
    estcivil: TEdit;
    Label62: TLabel;
    loca: TEdit;
    Label58: TLabel;
    religionfalle: TEdit;
    Label26: TLabel;
    edad: TEdit;
    fecnac: TMaskEdit;
    Label25: TLabel;
    Label27: TLabel;
    domi: TEdit;
    ImageList1: TImageList;
    PC3: TPageControl;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet11: TTabSheet;
    TabSheet12: TTabSheet;
    JvgGroupBox6: TJvgGroupBox;
    GrillaT: TJvStringGrid;
    Label64: TLabel;
    dnir: TEdit;
    Button5: TJvBitBtn;
    Label65: TLabel;
    cuifr: TEdit;
    Label66: TLabel;
    tipodocr: TEdit;
    nomr: TEdit;
    Label67: TLabel;
    Label68: TLabel;
    domr: TEdit;
    Label75: TLabel;
    telr: TEdit;
    barrior: TEdit;
    provr: TEdit;
    barrios: TEdit;
    Label74: TLabel;
    tels: TEdit;
    provs: TEdit;
    Label29: TLabel;
    doms: TEdit;
    noms: TEdit;
    Label7: TLabel;
    dnis: TEdit;
    Label21: TLabel;
    JvBitBtn3: TJvBitBtn;
    Label6: TLabel;
    cuifs: TEdit;
    Label28: TLabel;
    tipodocs: TEdit;
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
    Label37: TLabel;
    barriot: TEdit;
    Label38: TLabel;
    provt: TEdit;
    Label43: TLabel;
    religiont: TEdit;
    estcivilt: TEdit;
    Label60: TLabel;
    Label59: TLabel;
    naciot: TEdit;
    Idclien: TEdit;
    Label73: TLabel;
    dnitit: TEdit;
    buscliente: TJvBitBtn;
    Label33: TLabel;
    cuift: TEdit;
    Label34: TLabel;
    tipodoct: TEdit;
    Label32: TLabel;
    Label35: TLabel;
    nomt: TEdit;
    Label36: TLabel;
    domt: TEdit;
    procedure Coloca1(nro:byte);
    procedure FormActivate(Sender: TObject);
    procedure RTituloClick(Sender: TObject);
    procedure RAccionClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BuscaClick(Sender: TObject);
    procedure JvBitBtn3Click(Sender: TObject);
    procedure ODNIKeyPress(Sender: TObject; var Key: Char);
    procedure nrosecExit(Sender: TObject);
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
    procedure fecinhuKeyPress(Sender: TObject; var Key: Char);
    procedure horafalleKeyPress(Sender: TObject; var Key: Char);
    procedure losMedicosKeyPress(Sender: TObject; var Key: Char);
    procedure diagKeyPress(Sender: TObject; var Key: Char);
    procedure BORRAClick(Sender: TObject);
    procedure fecdefunExit(Sender: TObject);
    procedure fecdefunKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure losMedicosExit(Sender: TObject);
    procedure diagExit(Sender: TObject);
    procedure C3Click(Sender: TObject);
    procedure C6Click(Sender: TObject);
    procedure C4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure verificaNPClick(Sender: TObject);
    procedure nroobservClick(Sender: TObject);
    procedure NumSerClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RvSPrint(Sender: TObject);
    procedure ObservaExit(Sender: TObject);
    procedure ObservaKeyPress(Sender: TObject; var Key: Char);
    procedure ElSectorExit(Sender: TObject);
    procedure ElSectorKeyPress(Sender: TObject; var Key: Char);
    procedure LaAccionExit(Sender: TObject);
    procedure LaAccionKeyPress(Sender: TObject; var Key: Char);
    procedure lacocheriaExit(Sender: TObject);
    procedure lacocheriaKeyPress(Sender: TObject; var Key: Char);
  private
    gh,control:boolean;{Controla que no hubiere errores en la carga de datos}
    { Private declarations }
  public
    Resultado,nroorden: string;
    name,adress,nrodocu,tabla,max,fecaltainhu,TTelef,ElId,cantiser,cantiseranio:string;
    // aca instancio la clase si la clase esta definida en el uses de la ventana
    Funciones:TFuncionesVarias;
    ParcelasInhumados:TParcelasInhumados;
    ParcelasInhumadosMovimientos:TParcelasInhumadosMovimientos;
    ParcelasInhumadosTestigos:TParcelasInhumadosTestigos;
    //ClaseParcelasInhumadosTestigos
    maxi:integer;
    DataSetCli,DtCombo,DataSetT,DtComboOrdenS:TClientDataSet; //declaro los DataSet
    IdCombos:array of array of string; // para los combobox

    ///// para la impresion de datos segun parametros
    PosH1:Array [0..9] of Double;//Posiciones
    Camp1:Array [0..9] of Integer;//Campos a Tomar en cuenta
    TxtCamp1:Array [0..9] of String;//Textos de los Campos a Tomar en cuenta

    TMedico,TCliente,TDiag,TParentesco,TTestigo,TTiposObserv:Unidad.TablaXML;
  end;

var
  AM_Inhu: TAM_Inhu;

implementation

uses Modulo,Busqueda,AM_VenGenerica,AM_Clientes,ClaseTiposMedicos,ClaseParcelas,
     ClaseClientes,ClaseTiposDiagnosticos,ClaseParcelasServicios,ClaseTiposParentesco,
     ClaseTiposTestigos,ClaseSistemas,ClaseTiposObservaciones;

{$R *.dfm}


procedure TAM_Inhu.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TAM_Inhu.FormActivate(Sender: TObject);
begin
if not gh then begin
  gh:=true;
  setlength(IdCombos,8);
  barra1.Panels[2].Text:=modulo2.nivel;
  PC1.ActivePage:=PC1.Pages[0];
  PC1.Images:=modulo2.ImageList1;
  PC2.ActivePage:=PC2.Pages[0];
  PC3.ActivePage:=PC3.Pages[0];
  coloca1(0);
  coloca1(2);
  coloca1(3);
  coloca1(7);
  coloca1(8);
  coloca1(14);
  coloca1(21);
  coloca1(23);
  Raccion.OnClick(sender);
  odni.SetFocus;

  GrillaT.Cells[0,0]:='Orden';                    GrillaT.Cells[1,0]:='NroDNI';
  GrillaT.Cells[2,0]:='Nombre';                   GrillaT.Cells[3,0]:='TipoDNI';
  GrillaT.Cells[4,0]:='TipoTitular';              GrillaT.Cells[5,0]:='Domicilio';
  GrillaT.Cells[6,0]:='NroT';                     GrillaT.Cells[7,0]:='MDF';
  GrillaT.Cells[8,0]:='Cuif';                     GrillaT.Cells[9,0]:='FecNac';
  GrillaT.Cells[10,0]:='Nacionalidad';            GrillaT.Cells[11,0]:='EstCivil';
  GrillaT.Cells[12,0]:='Ciudad';
end;
end;

procedure TAM_Inhu.Coloca1(nro:byte);
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
    //ParcelasServicios:TParcelasServicios;
begin
if nro= 0 then begin
//    for t:=1 to grillaformu.RowCount-1 do begin
//        grillaformu.Cells[3,t] := 'X';
//    end;
//    impacta.Enabled:=true;
//    impordserv.Enabled:=true;
//    impsolinhu.Enabled:=true;
//    impdeptransi.Enabled:=true;
end;
if nro=1 then begin  // buscamos los datos de la accion en servicios
{
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

}
  DataSetCli.Free;
  DataSetCli:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=DataSetCli;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if Raccion.Checked then begin
   txtw:='(nroaccion= '+ trim(ODNI.Text) +')';
  end;
  if numser.Checked then begin
   txtw:='(IdServicio= '+ trim(ODNI.Text) +')';
  end;
  if RDniTit.Checked then begin
   txtw:='(sector= '+ chr(39) + trim(elsector.Text) + chr(39) +') and (parcela= '+ trim(laaccion.Text) +')';
  end;
  txtw:='select * from VParcelasInhumadosNew where ' + txtw ;
  if Funciones.Listar(txtw,Datasetcli) then begin
     dbgrid1.Columns[0].Width:=60;
     dbgrid1.Columns[1].Width:=80;
     dbgrid1.Columns[2].Width:=80;
     dbgrid1.Columns[3].Width:=180;
     dbgrid1.Columns[4].Width:=80;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  funciones.Free;
end;
if nro=2 then begin   /// combo medicos
  losMedicos.Clear;
  TMedico:=LeeXml('TiposMedicos','');
  if length(TMedico) <> 0 then begin
    SetLength(IdCombos[0],High(TMedico[1]) + 1);
    for t:=0 to High(TMedico[1])  do begin
      losMedicos.Items.Insert(t,TMedico[1,t]);
      IdCombos[0,t]:=TMedico[0,t];
    end;
  end
  else begin
    DtCombo.Free;
    Dtcombo:=TClientDataSet.Create(nil);
    TiposMedicos:=TTiposMedicos.Create(nil);
    TiposMedicos.ConnectionString:=modulo2.Conexion;
    if TiposMedicos.listar('SELECT nromedico,detalle FROM TiposMedicos ORDER BY detalle',
     DtCombo) then begin
     SetLength(IdCombos[0],DtCombo.RecordCount);
     for t:=1 to DtCombo.RecordCount  do begin
      DtCombo.RecNo:=t;
      losMedicos.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
      IdCombos[0,t-1]:=DtCombo.Fields[1].AsString;
     end;
    end
    else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    TiposMedicos.Free;
  end;
  losmedicos.ItemIndex:=0;
end;
if nro = 3 then begin
  diag.Clear;
  DtCombo.Free;
  Dtcombo:=TClientDataSet.Create(nil);
  TiposDiagnosticos:=TTiposDiagnosticos.Create(nil);
  TiposDiagnosticos.ConnectionString:=modulo2.Conexion;
  if TiposDiagnosticos.listar('SELECT Diagnostico,NroDiagnostico FROM TiposDiagnosticos ORDER BY Diagnostico',
   DtCombo) then begin
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
  DtCombo.Free;
  Dtcombo:=TClientDataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  NroAccion:=trim(accselec.Text);             //  trim(accion.Text);
  if not Funciones.Run_Fn_VistaParcelasServiciosInhumados(Nroaccion,DtCombo,'',0) then
   messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  cocheria.Text:=DtCombo.Fields[1].AsString;
  tiposerv.Text:=DtCombo.Fields[2].asstring;
  Funciones.Free;
end;
if nro=5 then begin
  DtCombo.Free;
  Dtcombo:=TClientDataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  NroDni:=null;
  razonsocial:='';
  IdCliente:=trim(idclien.Text);
  if not Funciones.Run_Fn_VistaClientes(IdCliente,RazonSocial,Nrodni,null,null,'',DtCombo,'',0) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    /// datos del titular
  dnitit.Text:=DtCombo.Fields[5].AsString;
  cuift.Text:=DtCombo.Fields[1].AsString;
  tipodoct.Text:=DtCombo.Fields[4].asstring;
  nomt.Text:=DtCombo.Fields[2].AsString;
  domt.Text:=DtCombo.Fields[15].asstring;
  barriot.Text:=DtCombo.Fields[14].AsString;
  provt.Text:=DtCombo.Fields[12].asstring;
  religiont.Text:=DtCombo.Fields[8].AsString;
  naciot.Text:=DtCombo.Fields[9].AsString;
  estcivilt.Text:=DtCombo.Fields[10].AsString;
  // datos del solicitante
  dnis.Text:=DtCombo.Fields[5].AsString;
  cuifs.Text:=DtCombo.Fields[1].AsString;
  tipodocs.Text:=DtCombo.Fields[4].asstring;
  noms.Text:=DtCombo.Fields[2].AsString;
  doms.Text:=DtCombo.Fields[15].asstring;
  // datos del resposable
  dnir.Text:=DtCombo.Fields[5].AsString;
  cuifr.Text:=DtCombo.Fields[1].AsString;
  tipodocr.Text:=DtCombo.Fields[4].asstring;
  nomr.Text:=DtCombo.Fields[2].AsString;
  domr.Text:=DtCombo.Fields[15].asstring;
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
   parcela.Text:=DtCombo.Fields[3].AsString;
   codplaza.Text:=DtCombo.Fields[4].AsString;
   plaza.Text:=DtCombo.Fields[5].AsString;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Parcelas.Free;
end;
if nro = 7 then begin
{  Parentezco.Clear;
  TParentesco:=LeeXml('TiposParantesco','');
  if length(TParentesco) <> 0 then begin
    SetLength(IdCombos[2],High(TParentesco[1]) + 1);
    for t:=0 to High(TParentesco[1])  do begin
      Parentezco.Items.Insert(t,TParentesco[1,t]);
      IdCombos[2,t]:=TParentesco[0,t];
    end;
  end
  else begin
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
  end;
  Parentezco.ItemIndex:=0;   }
end;
if nro = 8 then begin
 { lostestigos.Clear;
  TTestigo:=LeeXml('TiposTestigos','');
  if length(TTestigo) <> 0 then begin
    SetLength(IdCombos[3],High(TTestigo[1]) + 1);
    for t:=0 to High(TTestigo[1])  do begin
      lostestigos.Items.Insert(t,TTestigo[1,t]);
      IdCombos[3,t]:=TTestigo[0,t];
    end;
  end
  else begin
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
  end;
  lostestigos.ItemIndex:=0;     }
end;
if nro = 9 then begin  //cargo la grilla de los testigos
{  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  idhabi:=trim(idhab.Text);
  if not Funciones.Run_Fn_VistaParcelasInhumadosTestigos(idhabi,DtCombo,'',0) then
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
  end; }
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
   Dtcombo:=TClientDataSet.Create(nil);
   Funciones:=TFuncionesVarias.Create(nil);
   Funciones.ConnectionString:=modulo2.Conexion;
   IdHabitante:=trim(idhab.Text);
   Nroaccion:=null;
   DniTitular:=null;
   NombreTitular:='';
   DniFallecido:=null;
   NombreFallecido:='';
   fechafallecimiento:='';
   if not Funciones.Run_Fn_VistaParcelasInhumados(IdHabitante,NroAccion,DniTitular,
   NombreTitular,DniFallecido,NombreFallecido,fechafallecimiento,DtCombo,'',0) then
       messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
     datopadre.Text:=DtCombo.Fields[22].AsString;
     datomadre.Text:=DtCombo.Fields[23].AsString;
     fecing.Text:=trim(DtCombo.Fields[10].AsString);
     if trim(DtCombo.Fields[14].AsString)='' then horasale.Text:='00:00'
       else horasale.Text:=trim(DtCombo.Fields[14].AsString);
     if trim(DtCombo.Fields[15].AsString)='' then horallega.Text:='00:00'
       else horallega.Text:=trim(DtCombo.Fields[15].AsString);
     if trim(DtCombo.Fields[12].AsString)='' then fecinhu.Text:=trim(DtCombo.Fields[10].AsString)
       else fecinhu.Text:=trim(DtCombo.Fields[12].AsString);
     if trim(DtCombo.Fields[13].AsString)='' then horafalle.Text:='00:00'
       else horafalle.Text:=trim(DtCombo.Fields[13].AsString);
     fecfalle.Text:=trim(DtCombo.Fields[11].AsString);
     if trim(DtCombo.Fields[16].AsString)='' then nrosec.Text:='0'
       else nrosec.Text:=trim(DtCombo.Fields[16].AsString);
     if trim(DtCombo.Fields[17].AsString)='' then acta.Text:='0'
       else acta.Text:=trim(DtCombo.Fields[17].AsString);
     if trim(DtCombo.Fields[18].AsString)='' then nrofolio.Text:='0'
       else nrofolio.Text:=trim(DtCombo.Fields[18].AsString);
     if trim(DtCombo.Fields[19].AsString)='' then nrotomo.Text:='0'
       else nrotomo.Text:=trim(DtCombo.Fields[19].AsString);
     losmedicos.ItemIndex:=losmedicos.Items.IndexOf(trim(DtCombo.Fields[20].AsString));
     diag.ItemIndex:=diag.Items.IndexOf(trim(DtCombo.Fields[21].AsString));
     Tipoobjeto.ItemIndex:=tipoobjeto.Items.IndexOf(trim(DtCombo.Fields[39].AsString));
     if trim(DtCombo.Fields[25].AsString)='' then fecdefun.Text:=trim(DtCombo.Fields[13].AsString)
       else fecdefun.Text:=trim(DtCombo.Fields[25].AsString);
     nivel1.Text:=trim(DtCombo.Fields[2].AsString);
     posicion1.Text:=trim(DtCombo.Fields[3].AsString);
     observa.ItemIndex:=observa.Items.IndexOf(trim(DtCombo.Fields[40].AsString));
    Funciones.Free;
end;
if nro = 12 then begin
   DtCombo.Free;
   Dtcombo:=TClientDataSet.Create(nil);
   Funciones:=TFuncionesVarias.Create(nil);
   Funciones.ConnectionString:=modulo2.Conexion;
   idcliente:=null;
   razonsocial:='';//NroDni:=trim(dnis.Text);
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
  if not Funciones.Run_Fn_VistaLosFormularios(nrogestion,DtCombo,'',1) then
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
  end;  }
end;
if nro=14 then begin   /// combo observaciones
  observa.Clear;
  TTiposObserv:=LeeXml('TiposObservaciones','');
  if length(TTiposObserv) <> 0 then begin
   SetLength(IdCombos[4],High(TTiposObserv[1]) + 1);
   for t:=0 to High(TTiposObserv[1])  do begin
    observa.Items.Insert(t,TTiposObserv[1,t]);
    IdCombos[4,t]:=TTiposObserv[0,t];
   end;
  end
  else begin
   DtCombo.Free;
   Dtcombo:=TClientDataSet.Create(nil);
   TiposObservaciones:=TTiposObservaciones.Create(nil);
   TiposObservaciones.ConnectionString:=modulo2.Conexion;
   if TiposObservaciones.listar('SELECT IdObserv,DetalleObserv FROM TiposObservaciones order by DetalleObserv',
    DtCombo) then begin
    SetLength(IdCombos[4],DtCombo.RecordCount);
    for t:=1 to DtCombo.RecordCount  do begin
     DtCombo.RecNo:=t;
     observa.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
     IdCombos[4,t-1]:=DtCombo.Fields[1].AsString;
    end;
   end
   else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
   TiposObservaciones.Free;
  end;
  observa.ItemIndex:=0;
end;
if nro = 15 then begin  // cargo el responsable
   DtCombo.Free;
   Dtcombo:=TClientDataSet.Create(nil);
   Funciones:=TFuncionesVarias.Create(nil);
   Funciones.ConnectionString:=modulo2.Conexion;
   idcliente:=null;
   razonsocial:='';
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
//
end;
if nro=17 then begin   /// Titulares activos
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if not Funciones.Run_Fn_VistaParcelasResponsables(strtoint(trim(nroacc.Text)),DtCombo,'where tipoaccionista =2 order by nivel',0) then
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
{ ParcelasServicios:=TParcelasServicios.Create(nil);
 ParcelasServicios.ConnectionString:=modulo2.Conexion;
 txtw:='UPDATE ParcelasServicios SET solicita= ' + trim(cuifs.Text)
 + ' ,NroCocheria= ' + IdCombos[6,lacocheria.ItemIndex]
 + ' ,responsable= ' + trim(cuifr.Text)
 + ' WHERE (idservicio=' + trim(accion.Text) + ') and (nroaccion='+ trim(accselec.Text) +')';
 ct:=ParcelasServicios.ListarSinResp(txtw);
 ParcelasServicios.Free;   }
end;
if nro = 21 then begin //Combo cocheria
  lacocheria.Clear;
  DtCombo.Free;
  Dtcombo:=TClientDataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT NroCocheria, Detalle FROM TiposCocherias';
  if Funciones.Listar(txtw,DtCombo) then begin
   SetLength(IdCombos[6],DtCombo.RecordCount);
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    lacocheria.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
    IdCombos[6,t-1]:=DtCombo.Fields[0].AsString;
   end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  funciones.Free;
  lacocheria.ItemIndex:=0;
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
   end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',
   mtError,[mbok],0);
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
if nro = 26 then begin
  ParcelasInhumados:=TParcelasInhumados.Create(nil);
  ParcelasInhumados.ConnectionString:=modulo2.Conexion;
  txtw:='UPDATE ParcelasInhumados SET NroOrdenServicio= ' + nroorden
  + ' WHERE (IdHabitante=' + ElId + ') and (nroaccion='+ trim(accselec.Text) +')';
  ci:=ParcelasInhumados.ListarSinResp(txtw);
  ParcelasInhumados.Free;
end;
if nro = 27 then begin
//
end;
if nro=28 then begin
  DtComboOrdenS.Free;
  DtComboOrdenS:=TClientDataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
    txtw:='SELECT maximonro + 1 FROM Maximos WHERE (tabla = ''OrdenServicio'')';
    if not Funciones.Listar(txtw,DtComboOrdenS)  then
       messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
       nroorden:=DtComboOrdenS.Fields[0].AsString;
   Funciones.Free;
end;
end;

procedure TAM_Inhu.RTituloClick(Sender: TObject);
begin
  label76.Visible:=true;
  label77.Visible:=true;
  elsector.Visible:=true;
  laaccion.Visible:=true;
  edit2.Visible:=true;
  LB1.Visible:=false;
  ODNI.Visible:=false;
  ODNI.Text:='00000000';
  Busca.Enabled:=true;
  elsector.SetFocus;
end;

procedure TAM_Inhu.RAccionClick(Sender: TObject);
begin
  label76.Visible:=false;
  label77.Visible:=false;
  elsector.Visible:=false;
  laaccion.Visible:=false;
  edit2.Visible:=false;
  lb1.Visible:=true;
  LB1.Caption:='Ingrese el Nro de Accion:';
  ODNI.Visible:=true;
  ODNI.Text:='00000000';
  Busca.Enabled:=true;
  ODNI.SetFocus;
end;

procedure TAM_Inhu.DBGrid1CellClick(Column: TColumn);
var t,gf:integer;
var txt:widestring;
begin
borra.Click;
 if not (DataSetCli.IsEmpty) then begin
 coloca1(10);  // cargo el dato del muerto
 gf:=messagedlgpos('Desea MODIFICAR los Datos de este Inhumado: ' + chr(13) + trim(apeynom.Text) + chr(13) +
                  'Sector: ' + trim(DBGrid1.Fields[24].Text) + ' - Parcela: ' + trim(DBGrid1.Fields[25].Text) + chr(13) +
                  'Nivel: ' + trim(DBGrid1.Fields[11].Text) + ' - Posicion: ' + trim(DBGrid1.Fields[12].Text) + chr(13) +
                  'Nro. Orden Servicio: ' + trim(DBGrid1.Fields[23].Text)   ,mtInformation,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
 if gf = 1 then begin
   if (trim(DBGrid1.Fields[20].Text) = 'True') then begin
    txt:='ATENCION El Servicio N°: ' + trim(DBGrid1.Fields[0].Text) +' Asociado a esta Acción, ESTA ANULADO..imposible la carga de datos';
    messagedlg(txt,mtWarning,[mbok],0);
    PC1.ActivePage:=PC1.Pages[0];
    PC1.Pages[1].Enabled:=false;
    PC1.Pages[2].Enabled:=false;
   end
   else begin
     if (trim(DBGrid1.Fields[19].Text) = 'False') then begin
      txt:='ATENCION El Servicio N°: ' + trim(DBGrid1.Fields[0].Text) +' Asociado a esta Acción, NO ESTA CONFIRMADO..imposible la carga de datos';
      messagedlg(txt,mtWarning,[mbok],0);
      PC1.ActivePage:=PC1.Pages[0];
      PC1.Pages[1].Enabled:=false;
      PC1.Pages[2].Enabled:=false;
     end
     else begin
      if (trim(DBGrid1.Fields[1].Text) <> '') then begin
       c6.Checked:=true;
       PC1.Pages[1].Enabled:=true;
       //PC1.Pages[2].Enabled:=true;
       accion.Text:=trim(DataSetCli.Fields[0].AsString);
       accselec.Text:=trim(DataSetCli.Fields[2].AsString);
       idser.Text:=trim(DataSetCli.Fields[3].AsString);
       fecservicio.Text:=trim(DataSetCli.Fields[5].AsString);
       fecaltainhu:=trim(DataSetCli.Fields[6].AsString);
       idhab.Text:=trim(DataSetCli.Fields[1].AsString);
       tipoobjeto.Text:=trim(DBGrid1.Fields[10].Text);
       posicion1.Text:=trim(DBGrid1.Fields[12].Text);
       nivel1.Text:=trim(DBGrid1.Fields[11].Text);
       //cocheria.Text:=trim(DBGrid1.Fields[16].Text);
       tiposerv.Text:=trim(DBGrid1.Fields[15].Text);
       idclien.Text:=trim(DBGrid1.Fields[18].Text);
       nordenserv.Text:=trim(DBGrid1.Fields[23].Text);
       coloca1(5);  //cargo el dato del titular de la accion
       coloca1(6);
       coloca1(10);  // cargo el dato del muerto
       coloca1(11);  // cargo los datos de la inhumacion
       coloca1(12);  // cargo el dato del solicitante
       coloca1(13);  // cargamos los formularios
       coloca1(16);  // cargamos la grilla de los testigos
       coloca1(15);  // cargamos el responsable
       coloca1(17);
       losmedicos.ItemIndex:=losmedicos.Items.IndexOf(trim(DBGrid1.Fields[22].AsString));
       diag.ItemIndex:=diag.Items.IndexOf(trim(DBGrid1.Fields[21].AsString));
       lacocheria.ItemIndex:=lacocheria.Items.IndexOf(trim(DBGrid1.Fields[16].AsString));
       PC1.ActivePage:=PC1.Pages[1];
       lacocheria.SetFocus;
      end
      else begin
       c6.Checked:=false;
       PC1.Pages[1].Enabled:=true;
       //PC1.Pages[2].Enabled:=true;
       fecing.Text:=strcut(Fec_System(),10);
       fecinhu.Text:=strcut(Fec_System(),10);
       fecfalle.Text:=strcut(Fec_System(),10);
       fecdefun.Text:=strcut(Fec_System(),10);
       accion.Text:=trim(DataSetCli.Fields[0].AsString);
       accselec.Text:=trim(DataSetCli.Fields[2].AsString);
       idser.Text:=trim(DataSetCli.Fields[3].AsString);
       fecservicio.Text:=trim(DataSetCli.Fields[5].AsString);
       fecaltainhu:=trim(DataSetCli.Fields[6].AsString);
       idhab.Text:=trim(DataSetCli.Fields[1].AsString);
       tipoobjeto.Text:=trim(DBGrid1.Fields[10].Text);
       posicion1.Text:=trim(DBGrid1.Fields[12].Text);
       nivel1.Text:=trim(DBGrid1.Fields[11].Text);
       //cocheria.Text:=trim(DBGrid1.Fields[16].Text);
       tiposerv.Text:=trim(DBGrid1.Fields[15].Text);
       idclien.Text:=trim(DBGrid1.Fields[18].Text);
       lacocheria.ItemIndex:=lacocheria.Items.IndexOf(trim(DBGrid1.Fields[16].AsString));
       coloca1(5);  //cargo el dato del titular de la accion
       coloca1(6);
       coloca1(13);  // cargamos los formularios
       //coloca1(15);  // cargamos la responsable
       coloca1(17);
       PC1.ActivePage:=PC1.Pages[1];
       lacocheria.SetFocus;
      end;
     end;
   end;
 end
 else begin
   PC1.ActivePage:=PC1.Pages[0];
   busca.SetFocus;
 end;
end;
end;

procedure TAM_Inhu.BuscaClick(Sender: TObject);
var p,u:integer;
begin
 Coloca1(1);
 if (DataSetCli.RecordCount = 0) then begin
  Barra1.Panels[0].Text:='Sin Datos en Grilla';
  IF application.MessageBox('SERVICIO NO encontrado, !Desea Buscar otro Servicio!?','Advertencia'
    ,mb_OKcancel+mb_IconHAnd) = IdOk then begin
    if raccion.Checked then odni.SetFocus;
    if numser.Checked then odni.SetFocus;
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

procedure TAM_Inhu.JvBitBtn3Click(Sender: TObject);
var Busqueda:TLA_BUSQUEDA;
begin
Busqueda:=TLA_BUSQUEDA.Create(self);
try
  Busqueda.NroOpcion:=9;
  busqueda.Edit1.Text:=trim(accselec.Text);
  busqueda.valor:=trim(accselec.Text);
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

procedure TAM_Inhu.ODNIKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then busca.SetFocus;
end;

procedure TAM_Inhu.nrosecExit(Sender: TObject);
begin
if trim(nrosec.Text)='' then nrosec.Text:='0';
end;

procedure TAM_Inhu.actaExit(Sender: TObject);
begin
if trim(nroacta.Text)='' then nroacta.Text:='0';
end;

procedure TAM_Inhu.nrofolioExit(Sender: TObject);
begin
if trim(nrofolio.Text)='' then nrofolio.Text:='0';
end;

procedure TAM_Inhu.nrotomoExit(Sender: TObject);
begin
if trim(nrotomo.Text)='' then nrotomo.Text:='0';
end;

procedure TAM_Inhu.NroReligionClick(Sender: TObject);
var AM_Generico:TAM_Generico;
begin
AM_Generico:=TAM_Generico.Create(self);
try
  AM_Generico.NroOpcion:=9;
  AM_Generico.Titulo1:='Medicos';
  AM_Generico.ShowModal;
finally
  AM_Generico.Destroy;
  Modulo2.ActualizarTablaXML('TiposMedicos');
  Coloca1(2);
  losmedicos.SetFocus;
end;
end;

procedure TAM_Inhu.GUARDAClick(Sender: TObject);
var el_dni:string;
var ac,lafecha,ct:boolean;
var gf,t:integer;
begin
ParcelasInhumados:=TParcelasInhumados.Create(nil);
ParcelasInhumados.ConnectionString:=modulo2.Conexion;
 if C6.Checked = false then begin
 //
 end
 else begin
  //if C6.Checked = true then begin
   gf:=messagedlgpos('Desea Modificar los Datos del Cliente Seleccionado?',mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
   if gf = 1 then begin
     parcelasinhumados.C_IdHabitante_PK:=strtoint(trim(idhab.text));
     ParcelasInhumados.C_NroAccion_IX1:=strtoint(accselec.Text);
     ParcelasInhumados.C_Nivel_IX2:=strtoint(trim(nivel1.Text));
     ParcelasInhumados.C_Posicion_IX3:=strtoint(trim(posicion1.Text));
     ParcelasInhumados.C_Objeto_IX4:=strcut_midle(trim(tipoobjeto.text),1,1);
     ParcelasInhumados.C_CuifTitular_IX5:=strtoint64(trim(cuift.Text));
     ParcelasInhumados.C_CuifFallecido_IX6:=strtoint64(trim(cuif.Text));
     PArcelasInhumados.C_CuifSolicitante:=strtoint64(trim(cuifs.Text));
     parcelasinhumados.C_CuifResponsable:=strtoint64(trim(cuifr.Text));
     PArcelasInhumados.C_FechaIngreso:=trim(fecing.Text);
     PArcelasInhumados.C_FechaFallecimiento:=trim(fecfalle.Text);
     PArcelasInhumados.C_HoraFallecimiento:=trim(horafalle.Text);
     PArcelasInhumados.C_NroDiagnostico_IX7:=strtoint(IdCombos[1,diag.ItemIndex]);
     PArcelasInhumados.C_HoraSalida:=trim(horasale.Text);
     PArcelasInhumados.C_HoraLlegada:=trim(horallega.Text);
     PArcelasInhumados.C_ActaInhumado_IX8:=trim(nroacta.Text);
     PArcelasInhumados.C_IdServicio_IX9:=trim(accion.Text);
     PArcelasInhumados.C_NroSeccion:=trim(nrosec.Text);
     PArcelasInhumados.C_NroActa_IX10:=trim(acta.Text);
     PArcelasInhumados.C_NroFolio:=trim(nrofolio.Text);
     PArcelasInhumados.C_NroTomo:=trim(nrotomo.Text);
     PArcelasInhumados.C_NroMedico_IX11:=strtoint(IdCombos[0,losmedicos.ItemIndex]);
     PArcelasInhumados.C_PadreFallecido:=trim(datopadre.Text);
     PArcelasInhumados.C_MadreFallecido:=trim(datomadre.Text);
     PArcelasInhumados.C_Usu_M:=modulo2.nro_usu;
     PArcelasInhumados.C_Confirmado:=true;
     PArcelasInhumados.C_Fecha_M:=strcut(Fec_System(),10);
     if trim(fecinhu.Text) = '/  /' then parcelasinhumados.C_FechaInhumacion:=''
      else parcelasinhumados.C_FechaInhumacion:=trim(fecinhu.Text);
     parcelasinhumados.C_Fecactadefuncion:=trim(fecdefun.Text);
     parcelasinhumados.C_DetalleObjeto:=trim(tipoobjeto.Text);
     parcelasinhumados.C_ObservPlaca := trim(lacocheria.Text);
     parcelasinhumados.C_IdObserv:=1;
     ac:=ParcelasInhumados.Modificar;
     ParcelasInhumados.Free;
     if ac then begin
       //  coloca1(20);
      messagedlg('Se ha Modificado los datos del Inhumado con Exito',mtConfirmation,[mbok],0);
      guarda.Enabled:=false;
      PC1.ActivePage:=PC1.Pages[0];
      Coloca1(1);
      //coloca1(0);
     end
     else begin
      messagedlg('Error al Modificar el Inhumado. Consulte con un Administrador',mtError,[mbok],0);
     end;
   end;
 end;
end;

procedure TAM_Inhu.saleClick(Sender: TObject);
begin
close;
end;

procedure TAM_Inhu.Button4Click(Sender: TObject);
var Busqueda:TLA_BUSQUEDA;
begin
  Busqueda:=TLA_BUSQUEDA.Create(self);
  try
    Busqueda.NroOpcion:=9;
    Busqueda.ShowModal;
    dnifalle.Text:=busqueda.DB1.Text;
    CUIF.Text:=busqueda.DB2.Text;
    tipodoc.Text:=busqueda.DB3.Text;
    apeynom.Text:=busqueda.DB4.Text;
    domi.Text:=busqueda.DB5.Text;
    nacio.Text:=busqueda.DB8.Text;
    estcivil.Text:=busqueda.DB9.Text;
    fecnac.Text:=busqueda.DB10.Text;
    edad.Text:=floattostr(trunc((Date - StrToDate(fecnac.Text))/365));
    religionfalle.Text:=busqueda.DB11.Text;
  finally
    Busqueda.Destroy;
  end;
  if trim(dnifalle.Text) = trim(dnitit.Text) then begin
     messagedlg('Error el Fallecido NO puede ser el Titular' + chr(13)
     + 'Por Favor seleccione otra Persona o modifique los Titulares de esta Accion' ,mtError,[mbok],0);
     button4.Click;
     guarda.Enabled:=false;
  end
  else begin
     PC2.ActivePage:=PC2.Pages[1];
     fecing.SetFocus;
     guarda.Enabled:=true;
  end;
end;

procedure TAM_Inhu.fecnacExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(FECNAC.Text));
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  fecnac.SetFocus;
end;
end;

procedure TAM_Inhu.FecingExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(Fecing.Text));
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  Fecing.SetFocus;
end;
end;

procedure TAM_Inhu.fecfalleExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(fecfalle.Text));
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  fecfalle.SetFocus;
end;
end;

procedure TAM_Inhu.JvBitBtn2Click(Sender: TObject);
var AM_Generico:TAM_Generico;
begin
AM_Generico:=TAM_Generico.Create(self);
try
  AM_Generico.NroOpcion:=7;
  AM_Generico.Titulo1:='Diagnosticos';
  AM_Generico.ShowModal;
finally
  AM_Generico.Destroy;
  Modulo2.ActualizarTablaXML('TiposDiagnosticos');
  Coloca1(3);
  diag.SetFocus;
end;
end;

procedure TAM_Inhu.fecnacChange(Sender: TObject);
begin
if c3.Checked = true or c6.Checked = true then begin
  edad.Text:=unidad.edad(strcut(Fec_System(),10),trim(fecnac.Text));
end;
end;

procedure TAM_Inhu.FecingKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  horasale.SetFocus;
end;
end;

procedure TAM_Inhu.horasaleKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  horallega.SetFocus;
end;
end;

procedure TAM_Inhu.horallegaKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  fecinhu.SetFocus;
end;
end;

procedure TAM_Inhu.nrosecKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  acta.SetFocus;
end;
end;

procedure TAM_Inhu.actaKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  nrofolio.SetFocus;
end;
end;

procedure TAM_Inhu.nrofolioKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  nrotomo.SetFocus;
end;
end;

procedure TAM_Inhu.nrotomoKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  fecdefun.SetFocus;

end;
end;

procedure TAM_Inhu.fecfalleKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  nrosec.SetFocus;
end;
end;

procedure TAM_Inhu.fecinhuKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  horafalle.SetFocus;
end;
end;

procedure TAM_Inhu.horafalleKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  fecfalle.SetFocus;
end;
end;

procedure TAM_Inhu.losMedicosKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  diag.SetFocus;
end;
end;

procedure TAM_Inhu.diagKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  if guarda.Enabled then  guarda.SetFocus;
end;
end;

procedure TAM_Inhu.BORRAClick(Sender: TObject);
var p,u:integer;
begin
c3.Checked:=false;
c4.Checked:=false;
c6.Checked:=false;
accion.Text:='00000';
idhab.Text:='000';
accselec.Text:='000';
fecservicio.Clear;
confir.Text:='000';
cocheria.Clear;
tiposerv.Clear;

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

procedure TAM_Inhu.fecdefunExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(fecdefun.Text));
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  fecdefun.SetFocus;
end;
end;

procedure TAM_Inhu.fecdefunKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  losmedicos.SetFocus;

end;
end;

procedure TAM_Inhu.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var h:byte;
begin
 if (trim(DBGrid1.Fields[13].Text) = 'False')  then begin   //and (strtoint(DBGrid1.Fields[12].Text) < 15
  DBGrid1.Canvas.Brush.Color:=clLime;
  DBGrid1.Canvas.FillRect(Rect);
  DBGrid1.Canvas.Font.Color:= clBlack;
 end;
 if (trim(DBGrid1.Fields[13].Text) = 'True') then begin  //and (strtoint(DBGrid1.Fields[11].Text) < 15)  then begin
  DBGrid1.Canvas.Brush.Color:=clwindow;
  DBGrid1.Canvas.FillRect(Rect);
  DBGrid1.Canvas.Font.Color:= clBlack;
 end;
 DBGrid1.DefaultDrawColumnCell(Rect,Datacol,Column,State);
end;

procedure TAM_Inhu.losMedicosExit(Sender: TObject);
begin
if losMedicos.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el MEdico Ingresado!!',mterror,[mbok],0);
  losMedicos.SetFocus;
end;
end;

procedure TAM_Inhu.diagExit(Sender: TObject);
begin
if diag.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Diagnostico Ingresado!!',mterror,[mbok],0);
  diag.SetFocus;
end;
end;

procedure TAM_Inhu.C3Click(Sender: TObject);
begin
if c3.Checked = true then guarda.Enabled:=true
   else guarda.Enabled:=false;
end;

procedure TAM_Inhu.C6Click(Sender: TObject);
begin
if c6.Checked = true then guarda.Enabled:=true
   else guarda.Enabled:=false;
end;

procedure TAM_Inhu.C4Click(Sender: TObject);
begin
if c4.Checked = true then guarda.Enabled:=true
   else guarda.Enabled:=false;
end;

procedure TAM_Inhu.Button5Click(Sender: TObject);
var Busqueda:TLA_BUSQUEDA;
begin
 Busqueda:=TLA_BUSQUEDA.Create(self);
 try
  Busqueda.NroOpcion:=9;
  busqueda.Edit1.Text:=trim(accselec.Text);
  busqueda.valor:=trim(accselec.Text);
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
 //if trim(nomr.Text)  = trim(noms.Text) then begin
 // button5.Click;
 // messagedlg('ATENCION el Responsable NO puede ser la misma persona que el Solicitante ',mtWarning,[mbok],0);
 //end ;

end;

procedure TAM_Inhu.verificaNPClick(Sender: TObject);
var    nroaccion:variant;
var    objeto:string;
var txtw:widestring;
begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  nroaccion:=trim(accselec.Text);
  objeto:=leftstr(trim(tipoobjeto.text),1);
  txtw:='SELECT * FROM AsignaPosicionInhumados (' + nroaccion + ' ,' +
    ' ' + chr(39) + objeto + chr(39) + ')';
  if not Funciones.Listar(txtw,DtCombo) then begin
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  end;
  nivel1.Text:=trim(DtCombo.Fields[0].AsString);
  posicion1.Text:=trim(DtCombo.Fields[1].AsString);
  Funciones.Free;
end;

procedure TAM_Inhu.nroobservClick(Sender: TObject);
var AM_Generico:TAM_Generico;
begin
AM_Generico:=TAM_Generico.Create(self);
try
  AM_Generico.NroOpcion:=8;
  AM_Generico.Titulo1:='Observaciones';
  AM_Generico.ShowModal;
finally
  AM_Generico.Destroy;
  Coloca1(14);
  observa.SetFocus;
end;
end;

procedure TAM_Inhu.NumSerClick(Sender: TObject);
begin
  label76.Visible:=false;
  label77.Visible:=false;
  elsector.Visible:=false;
  laaccion.Visible:=false;
  edit2.Visible:=false;
  lb1.Visible:=true;
  LB1.Caption:='Ingrese el Nro Servicio:';
  ODNI.Visible:=true;
  ODNI.Text:='00000000';
  Busca.Enabled:=true;
  ODNI.SetFocus;
end;

procedure TAM_Inhu.RvSPrint(Sender: TObject);
var posfx,posfy,posfin,pos_y,salto:double;
    hoja,m,t:integer;
   Imagen3:TBitMap;

   Function Logo(posx,posy:double;vaf:integer):double;
   var Imagen1:TBitMap;
       Fuente,PathLogo:string;
       Tamanio,hoja:integer;
   begin
   with Rvs do begin
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
     BaseReport.PrintXY(posx+140,posy+15,modulo2.INI1.ReadString('Titulo3 Facturas','Titulo0','')+ ' - Parque de los Recuerdos');
     BaseReport.SetFont('Arial Black',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+30);
     BaseReport.PrintXY(posx+6,posy+30,'Nº Servicio: ' + trim(accion.Text));
     BaseReport.PrintXY(posx+6,posy+25,'Tipo Servicio: ' + trim(tiposerv.Text));
     //     BaseReport.PrintXY(posx+45,posy+25,'Id Inhumado:' + ElId);
     BaseReport.PrintXY(posx+80,posy+30,'Cocheria: ' + trim(lacocheria.Text));
   end;
   Logo:=posy+20;
   end;

   Function Datos(posx,posy:double):double;
   var posn,salto:double;
       j,mn,m,t:integer;
       Imagen2:TBitMap;
   begin
    with Rvs do begin
        Imagen2 := TBitMap.Create;
        salto:=5;
        BaseReport.SetFont('Arial Black',8);
        BaseReport.RoundRect(posx+60,posy+11,posx+130,posy+16,5,5);
        BaseReport.PrintXY(posx+70,posy+15,'Datos del RESPONSABLE');
        BaseReport.SetFont('Arial',9);
        BaseReport.PrintXY(posx+4,posy+20,'Titular:');
        BaseReport.PrintXY(posx+85,posy+20,'Nº Dni:');
        BaseReport.PrintXY(posx+135,posy+20,'IdCliente');
        BaseReport.PrintXY(posx+4,posy+25,'Domicilio:');
        BaseReport.PrintXY(posx+95,posy+25,'Barrio:');
        BaseReport.PrintXY(posx+4,posy+30,'NroAccion:');
        BaseReport.PrintXY(posx+85,posy+30,'FechaServicio:');

        BaseReport.SetFont('Arial Black',8);
        BaseReport.PrintXY(posx+15,posy+20,trim(nomt.Text));
        BaseReport.PrintXY(posx+98,posy+20,trim(dnitit.Text));
        BaseReport.PrintXY(posx+150,posy+20,trim(idclien.Text));
        BaseReport.PrintXY(posx+19,posy+25,trim(domt.Text));
        BaseReport.PrintXY(posx+109,posy+25,trim(barriot.Text));
        BaseReport.PrintXY(posx+20,posy+30,trim(accselec.Text));
        BaseReport.PrintXY(posx+105,posy+30,trim(fecservicio.Text));

        posy:=posy + 20;
        BaseReport.RoundRect(posx+50,posy+11,posx+150,posy+16,5,5);
        BaseReport.PrintXY(posx+70,posy+15,'Datos del SOLICITANTE');
        BaseReport.SetFont('Arial',9);
        BaseReport.PrintXY(posx+4,posy+20,'Solicitante:');
        BaseReport.PrintXY(posx+85,posy+20,'Nº Dni:');
        //BaseReport.PrintXY(posx+135,posy+20,'IdCliente');
        BaseReport.PrintXY(posx+4,posy+25,'Domicilio:');
        BaseReport.PrintXY(posx+95,posy+25,'Barrio:');
        BaseReport.PrintXY(posx+4,posy+30,'Telefonos:');
        //BaseReport.PrintXY(posx+85,posy+30,'FechaServicio:');

        BaseReport.SetFont('Arial Black',8);
        BaseReport.PrintXY(posx+20,posy+20,trim(noms.Text));
        BaseReport.PrintXY(posx+98,posy+20,trim(dnis.Text));
        //BaseReport.PrintXY(posx+150,posy+20,trim(idclient.Text));
        BaseReport.PrintXY(posx+19,posy+25,trim(doms.Text));
        BaseReport.PrintXY(posx+109,posy+25,trim(barrios.Text));
        BaseReport.PrintXY(posx+20,posy+30,trim(tels.Text));
        //BaseReport.PrintXY(posx+95,posy+30,trim(fecservicio.Text));

        posy:=posy + 20;
        BaseReport.RoundRect(posx+50,posy+11,posx+150,posy+16,5,5);
        BaseReport.PrintXY(posx+70,posy+15,'Datos del FALLECIDO');
        BaseReport.SetFont('Arial',9);
        BaseReport.PrintXY(posx+4,posy+20,'Nombre:');
        BaseReport.PrintXY(posx+85,posy+20,'Nº Dni:');
        BaseReport.PrintXY(posx+135,posy+20,'FechaNac:');
        BaseReport.PrintXY(posx+180,posy+20,'Edad:');
        BaseReport.PrintXY(posx+4,posy+25,'Domicilio:');
        BaseReport.PrintXY(posx+95,posy+25,'Nacionalidad:');
        BaseReport.PrintXY(posx+4,posy+30,'Religion:');
        BaseReport.PrintXY(posx+85,posy+30,'Est.Civil:');
        BaseReport.PrintXY(posx+4,posy+35,'Ape. y Nombre Padre:');
        BaseReport.PrintXY(posx+85,posy+35,'Ape. y Nombre Madre:');

        BaseReport.SetFont('Arial Black',8);
        BaseReport.PrintXY(posx+20,posy+20,trim(apeynom.Text));
        BaseReport.PrintXY(posx+98,posy+20,trim(dnifalle.Text));
        BaseReport.PrintXY(posx+155,posy+20,trim(fecnac.Text));
        BaseReport.PrintXY(posx+190,posy+20,trim(edad.Text));
        BaseReport.PrintXY(posx+20,posy+25,trim(domi.Text));
        BaseReport.PrintXY(posx+119,posy+25,trim(nacio.Text));
        BaseReport.PrintXY(posx+20,posy+30,trim(religionfalle.Text));
        BaseReport.PrintXY(posx+100,posy+30,trim(estcivil.Text));
        BaseReport.PrintXY(posx+35,posy+35,trim(datopadre.Text));
        BaseReport.PrintXY(posx+125,posy+35,trim(datomadre.Text));

        posy:=posy + 30;
        BaseReport.RoundRect(posx+50,posy+11,posx+150,posy+16,5,5);
        BaseReport.PrintXY(posx+70,posy+15,'Datos de la DEFUNCION');
        BaseReport.SetFont('Arial',9);
        BaseReport.PrintXY(posx+4,posy+20,'Fecha Ingreso :');
        BaseReport.PrintXY(posx+55,posy+20,'Hora Salida:');
        BaseReport.PrintXY(posx+85,posy+20,'Hora Llegada:');
        BaseReport.PrintXY(posx+120,posy+20,'Fecha Inhumacion:');
        BaseReport.PrintXY(posx+168,posy+20,'Hora Fellac.');
        BaseReport.PrintXY(posx+4,posy+25,'Fecha Fallecimiento:');
        BaseReport.PrintXY(posx+55,posy+25,'Fecha Cert. Defuncion:');
        BaseReport.PrintXY(posx+115,posy+25,'Seccion:');
        BaseReport.PrintXY(posx+135,posy+25,'Acta:');
        BaseReport.PrintXY(posx+150,posy+25,'Folio');
        BaseReport.PrintXY(posx+170,posy+25,'Tomo');
        BaseReport.PrintXY(posx+4,posy+30,'Medico:');
        BaseReport.PrintXY(posx+95,posy+30,'Diagnostico:');
        BaseReport.PrintXY(posx+4,posy+35,'Objeto:');
        BaseReport.PrintXY(posx+85,posy+35,'Nivel:');
        BaseReport.PrintXY(posx+140,posy+35,'Posicion:');
//        BaseReport.PrintXY(posx+85,posy+35,'Ape. y Nombre Madre:');

        BaseReport.SetFont('Arial Black',8);
        BaseReport.PrintXY(posx+28,posy+20,trim(fecing.Text));
        BaseReport.PrintXY(posx+74,posy+20,trim(horasale.Text));
        BaseReport.PrintXY(posx+107,posy+20,trim(horallega.Text));
        BaseReport.PrintXY(posx+149,posy+20,trim(fecinhu.Text));
        BaseReport.PrintXY(posx+188,posy+20,trim(horafalle.Text));
        BaseReport.PrintXY(posx+35,posy+25,trim(fecfalle.Text));
        BaseReport.PrintXY(posx+90,posy+25,trim(fecdefun.Text));
        BaseReport.PrintXY(posx+128,posy+25,trim(nrosec.Text));
        BaseReport.PrintXY(posx+142,posy+25,trim(acta.Text));
        BaseReport.PrintXY(posx+159,posy+25,trim(nrofolio.Text));
        BaseReport.PrintXY(posx+180,posy+25,trim(nrotomo.Text));
        BaseReport.PrintXY(posx+20,posy+30,trim(losmedicos.Text));
        BaseReport.PrintXY(posx+115,posy+30,trim(diag.Text));
        BaseReport.PrintXY(posx+15,posy+35,trim(tipoobjeto.Text));
        BaseReport.PrintXY(posx+95,posy+35,trim(nivel1.Text));
        BaseReport.PrintXY(posx+155,posy+35,trim(posicion1.Text));
    end;
   end;

begin
posfx:=6;posfy:=5;salto:=4;hoja:=1;
posfy:=Logo(posfx,posfy,hoja);
posfy:=Datos(posfx,posfy);
end;


procedure TAM_Inhu.ObservaExit(Sender: TObject);
begin
if Observa.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Observacion Ingresado!!',mterror,[mbok],0);
  Observa.SetFocus;
end;
end;

procedure TAM_Inhu.ObservaKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  guarda.SetFocus;
end;
end;

procedure TAM_Inhu.ElSectorExit(Sender: TObject);
begin
if ElSector.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Sector Ingresado!!',mterror,[mbok],0);
  ElSector.SetFocus;
end;
end;

procedure TAM_Inhu.ElSectorKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  coloca1(24);
  laaccion.Enabled:=true;
  laaccion.SetFocus;
end;
end;

procedure TAM_Inhu.LaAccionExit(Sender: TObject);
begin
 if LaAccion.ItemIndex < 0 then begin
   messagedlg('ERROR!! No Existe el N° de Acción Ingresado!!',mterror,[mbok],0);
   LaAccion.SetFocus;
 end;
end;

procedure TAM_Inhu.LaAccionKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  coloca1(25);
  busca.SetFocus;
end;
end;

procedure TAM_Inhu.lacocheriaExit(Sender: TObject);
begin
if lacocheria.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe la cocheria Ingresada!!',mterror,[mbok],0);
  lacocheria.SetFocus;
end;
end;

procedure TAM_Inhu.lacocheriaKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  button4.Click;
end;
end;

end.

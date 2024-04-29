unit VEN_ServiciosNew;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,DBClient, RpDefine, RpBase, RpSystem, DB, ComCtrls, ToolWin,
  ExtCtrls, StdCtrls, Grids, JvExGrids, JvStringGrid, ADODB,
  LMDCustomComponent, LMDContainerComponent, LMDMsg, Mask, JvExStdCtrls,
  JvEdit, JvValidateEdit, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, JvExExtCtrls, JvExtComponent,
  JvPanel, DBCtrls, JvgGroupBox, Buttons, JvExButtons, JvBitBtn, DBGrids,
  JvExDBGrids, JvDBGrid  ,
  ClaseParcelasServicios,ClaseParcelasServiciosDetalle,ClaseParcelasServiciosDeudas,
  ClaseFunciones,StrUtils, WSDLIntf, Unidad, ClaseParcelas, LMDControl,
  ClaseTiposServicios,ClaseTiposServiciosNivel,ClaseTiposFormasPago, Menus;

type LasFilas = array[1..2] of integer;
type HackTable = class(TClientDataSet);//       class(TADOTable);
type
 TVen_ServGer = class(TForm)
    Barra1: TStatusBar;
    DataSource1: TDataSource;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TJvDBGrid;
    todos: TRichEdit;
    DataSource2: TDataSource;
    FPago: TTabSheet;
    gb1: TGroupBox;
    Label11: TLabel;
    GDatos: TPageControl;
    TabSheet4: TTabSheet;
    DataSource3: TDataSource;
    RvS: TRvSystem;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    EXPORTAR: TJvBitBtn;
    ToolButton5: TToolButton;
    bGuardar: TJvBitBtn;
    ToolButton1: TToolButton;
    BORRA: TJvBitBtn;
    ToolButton3: TToolButton;
    bSalir: TJvBitBtn;
    GBDatos: TJvgGroupBox;
    grupo1: TJvgGroupBox;
    Label12: TLabel;
    Label44: TLabel;
    Label35: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label36: TLabel;
    Saldo: TEdit;
    CODIGO: TComboBox;
    FECHA: TJvDatePickerEdit;
    VALCUOTA: TEdit;
    IMPORTE: TEdit;
    TabSheet3: TTabSheet;
    grilla5: TStringGrid;
    TabSheet6: TTabSheet;
    JvgGroupBox5: TJvgGroupBox;
    Label43: TLabel;
    NROCREDITO: TEdit;
    CB1: TCheckBox;
    grupo7: TJvgGroupBox;
    Label27: TLabel;
    Label32: TLabel;
    Label31: TLabel;
    Label30: TLabel;
    CAPITAL: TEdit;
    INTERESES: TEdit;
    INTERTOT: TEdit;
    TOTAL1: TEdit;
    TabSheet8: TTabSheet;
    JvgGroupBox1: TJvgGroupBox;
    GrillaT: TJvStringGrid;
    Label20: TLabel;
    Label17: TLabel;
    tpopago: TComboBox;
    Label5: TLabel;
    IMPORTEE: TEdit;
    grupo6: TJvgGroupBox;
    Label33: TLabel;
    Label34: TLabel;
    COEF: TEdit;
    INTERES: TEdit;
    JvgGroupBox6: TJvgGroupBox;
    OPERA: TComboBox;
    JvgGroupBox2: TJvgGroupBox;
    Label8: TLabel;
    Label14: TLabel;
    Label71: TLabel;
    Label16: TLabel;
    TIPOOBJETO: TComboBox;
    nivel1: TEdit;
    posicion1: TEdit;
    verificaNP: TJvBitBtn;
    JvgGroupBox3: TJvgGroupBox;
    Label21: TLabel;
    PrecioXn: TEdit;
    grillaobjetos: TStringGrid;
    Edit1: TEdit;
    DPrecio: TEdit;
    Label2: TLabel;
    GroupBox4: TGroupBox;
    Label15: TLabel;
    D1: TDBEdit;
    Label7: TLabel;
    D2: TDBEdit;
    Label9: TLabel;
    D8: TDBEdit;
    D4: TDBEdit;
    Label6: TLabel;
    Label3: TLabel;
    D6: TDBEdit;
    Panel: TJvPanel;
    D5: TDBEdit;
    Label4: TLabel;
    Label13: TLabel;
    D3: TDBEdit;
    Label10: TLabel;
    D13: TDBEdit;
    GroupBox2: TGroupBox;
    c4: TCheckBox;
    C6: TCheckBox;
    CE: TCheckBox;
    GroupBox6: TGroupBox;
    Shape3: TShape;
    Shape2: TShape;
    Label55: TLabel;
    Label56: TLabel;
    Shape1: TShape;
    Label63: TLabel;
    Label28: TLabel;
    IDServ: TDBEdit;
    Edit2: TEdit;
    Label23: TLabel;
    PrecioL: TEdit;
    Label24: TLabel;
    precioche: TEdit;
    Grupotarje: TGroupBox;
    Label18: TLabel;
    Label19: TLabel;
    Label22: TLabel;
    Label40: TLabel;
    Label42: TLabel;
    CUOTA: TComboBox;
    TARJETA: TComboBox;
    NROCB: TJvValidateEdit;
    NroCuota: TEdit;
    ftarje: TMaskEdit;
    Edit3: TEdit;
    GrupoCheq: TGroupBox;
    Label39: TLabel;
    LB12: TLabel;
    LB3: TLabel;
    LB5: TLabel;
    LB7: TLabel;
    Label41: TLabel;
    Label45: TLabel;
    banco: TComboBox;
    E1: TEdit;
    E2: TEdit;
    Fcheque: TMaskEdit;
    E5: TEdit;
    fpagocheque: TMaskEdit;
    titcheq: TEdit;
    Dialogo: TLMDMessageBoxDlg;
    Label46: TLabel;
    tittarje: TEdit;
    Image1: TImage;
    Label54: TLabel;
    recibonro: TEdit;
    Label52: TLabel;
    OBSERV: TEdit;
    cocherias: TComboBox;
    Label1: TLabel;
    LB1: TLabel;
    ODNI: TEdit;
    Busca: TJvBitBtn;
    LasMutuales: TComboBox;
    CheckBox1: TCheckBox;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BuscaClick(Sender: TObject);
    procedure JvBitBtn3Click(Sender: TObject);
    procedure bExportarClick(Sender: TObject);
    procedure ONOMBKeyPress(Sender: TObject; var Key: Char);
    procedure ODNIKeyPress(Sender: TObject; var Key: Char);
    procedure IMPORTEEExit(Sender: TObject);
    procedure IMPORTEEKeyPress(Sender: TObject; var Key: Char);
    procedure SaldoKeyPress(Sender: TObject; var Key: Char);
    procedure FECHAKeyPress(Sender: TObject; var Key: Char);
    procedure FECHAExit(Sender: TObject);
    procedure DPrecioKeyPress(Sender: TObject; var Key: Char);
    procedure DPrecioExit(Sender: TObject);
    procedure bGuardarClick(Sender: TObject);
    procedure bSalirClick(Sender: TObject);
    procedure tpopagoKeyPress(Sender: TObject; var Key: Char);
    procedure tpopagoExit(Sender: TObject);
    procedure OBSERVKeyPress(Sender: TObject; var Key: Char);
    procedure OPERAExit(Sender: TObject);
    procedure OPERAKeyPress(Sender: TObject; var Key: Char);
    procedure TIPOOBJETOExit(Sender: TObject);
    procedure TIPOOBJETOKeyPress(Sender: TObject; var Key: Char);
    procedure verificaNPClick(Sender: TObject);
    procedure DesactivarObjeto1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure TARJETAExit(Sender: TObject);
    procedure NroCuotaExit(Sender: TObject);
    procedure NroCuotaKeyPress(Sender: TObject; var Key: Char);
    procedure NROCBKeyPress(Sender: TObject; var Key: Char);
    procedure NROCBExit(Sender: TObject);
    procedure TARJETAKeyPress(Sender: TObject; var Key: Char);
    procedure ftarjeExit(Sender: TObject);
    procedure ftarjeKeyPress(Sender: TObject; var Key: Char);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure bancoExit(Sender: TObject);
    procedure bancoKeyPress(Sender: TObject; var Key: Char);
    procedure titcheqKeyPress(Sender: TObject; var Key: Char);
    procedure E1KeyPress(Sender: TObject; var Key: Char);
    procedure E2Exit(Sender: TObject);
    procedure E2KeyPress(Sender: TObject; var Key: Char);
    procedure FchequeExit(Sender: TObject);
    procedure FchequeKeyPress(Sender: TObject; var Key: Char);
    procedure fpagochequeExit(Sender: TObject);
    procedure fpagochequeKeyPress(Sender: TObject; var Key: Char);
    procedure E5Exit(Sender: TObject);
    procedure E5KeyPress(Sender: TObject; var Key: Char);
    procedure BORRAClick(Sender: TObject);
    procedure tittarjeKeyPress(Sender: TObject; var Key: Char);
    procedure titcheqExit(Sender: TObject);
    procedure CODIGOChange(Sender: TObject);
    procedure RvSPrint(Sender: TObject);
    procedure VALCUOTAKeyPress(Sender: TObject; var Key: Char);
    procedure recibonroKeyPress(Sender: TObject; var Key: Char);
    procedure PrecioXnKeyPress(Sender: TObject; var Key: Char);
    procedure PrecioLKeyPress(Sender: TObject; var Key: Char);
    procedure preciocheKeyPress(Sender: TObject; var Key: Char);
    procedure cocheriasExit(Sender: TObject);
    procedure cocheriasKeyPress(Sender: TObject; var Key: Char);
    procedure nivel1KeyPress(Sender: TObject; var Key: Char);
    procedure posicion1KeyPress(Sender: TObject; var Key: Char);
    procedure LasMutualesExit(Sender: TObject);
    procedure LasMutualesKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBox1Click(Sender: TObject);
    procedure nivel1Exit(Sender: TObject);
    procedure posicion1Exit(Sender: TObject);
  private
    PROCESO: TADODataSet;
    gh:boolean;{Controla que no hubiere errores en la carga de datos}
    NroOpc:byte;{ Private declarations }
  public
    NroOpcion,tipopago:integer;
    valorcuota:real;
    coefi,inter,porcent,name,ElInhu,ElId,losinhu:string;
    Adress,NroDocu,TProfesion,TNacimiento,TNacion,Resultado,TCuif: string;
    TTel,TCel,TTipo,Naci,Nacio,TECivil,TCiudad,TEstado,TCP,TProvincia,TDoc,TDom: string;
    // aca instancio la clase si la clase esta definida en el uses de la ventana
    Funciones:TFuncionesVarias;
    DtCombo,DtComboO,DtcomboC,DataSetC,DataSet,DataSet1,DataSetCli,DataSetT:TClientDataSet; //declaro los DataSet
    IdCombos:array of array of string; // para los combobox
   ///// para la impresion de datos segun parametros
    TServicios:Unidad.TablaXML;
    PosH1:Array [0..9] of Double;//Posiciones
    Camp1:Array [0..9] of Integer;//Campos a Tomar en cuenta
    TxtCamp1:Array [0..9] of String;//Textos de los Campos a Tomar en cuenta
    TCuota,TCodigos,TColores:Unidad.TablaXML;
    Parcelas:TParcelas;
    ParcelasServicios:TParcelasServicios;
    ParcelasServiciosDetalle:TParcelasServiciosDetalle;
    ParcelasServiciosDeudas:TParcelasServiciosDeudas;
  end;

var
  Ven_ServGer: TVen_ServGer;

implementation

uses Modulo,Busqueda,AM_VenGenerica,ValidarArchivos,ClaseParcelasCoeficientes,
ClaseTiposCodigos,SelecCuotas,InhumaSinServicios;
{$R *.dfm}

procedure TVen_ServGer.FormActivate(Sender: TObject);
begin
if not gh then begin
  gh:=true;
  lasmutuales.Visible:=false;
  setlength(IdCombos,6);
  barra1.Panels[2].Text:=modulo2.nivel;
  Fcheque.Text:=strcut(Fec_System(),10);
  Ftarje.Text:=strcut(Fec_System(),10);
  Fpagocheque.Text:=strcut(Fec_System(),10);

  PROCESO:=TADODataSet.Create(nil);
  PROCESO.ConnectionString:=modulo2.Conexion;

  grilla5.Cells[0,0]:='N° Cuota';               grilla5.Cells[1,0]:='Periodo Envio';
  grilla5.Cells[2,0]:='Fechas Vtos';            grilla5.Cells[3,0]:='Capital';
  grilla5.Cells[4,0]:='Interes';                grilla5.Cells[5,0]:='Importe Cuota';
  grilla5.Cells[6,0]:='Detalle';

  GrillaT.Cells[0,0]:='Orden';                  GrillaT.Cells[1,0]:='DNI';
  GrillaT.Cells[2,0]:='Nombre';                 GrillaT.Cells[3,0]:='TipoDNI';
  GrillaT.Cells[4,0]:='TipoTitular';            GrillaT.Cells[5,0]:='Domicilio';
  GrillaT.Cells[6,0]:='NroT';                   GrillaT.Cells[7,0]:='MDF';
  GrillaT.Cells[8,0]:='Cuif';                   GrillaT.Cells[9,0]:='FecNac';
  GrillaT.Cells[10,0]:='Nacionalidad';          GrillaT.Cells[11,0]:='EstCivil';
  GrillaT.Cells[12,0]:='Ciudad';                GrillaT.Cells[13,0]:='Telefonos';

  grillaobjetos.Cells[0,0]:='IdObjeto';
  grillaobjetos.Cells[1,0]:='OBJETO';
  grillaobjetos.Cells[2,0]:='Precio';
  //grillaobjetos.Cells[3,0]:='mdf';
  tpopago.ItemIndex:=0;
  PC1.ActivePage:=PC1.Pages[0];
  GDatos.ActivePage:=GDatos.Pages[0];
  PC1.Images:=modulo2.ImageList1;
  Coloca1(7);  //Carga OPERACIONES
  coloca1(16); // cargamso las tarjetas
  coloca1(17); //carga los banco
  coloca1(5); //carga cocherias
  coloca1(20); //carga las mutuales
  grupotarje.Visible:=false;
  grupocheq.Visible:=false;
  ODNI.SetFocus;
  gdatos.Images:=modulo2.ImageList1;
end;
end;

procedure TVen_ServGer.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TVen_ServGer.Coloca1(nro:byte);
var InhuSinServ: TInhuSinServ;
var t,y,nroserv,p:integer;
    txt,sex,VColor:string;
    pt,at,ct,bt:boolean;
    txtw:widestring;
    NroAccion:variant;
    Param:TWideStrings;
    DataSetTit,DataSetInh,DtCombo:TClientDataSet;
    TColores:Unidad.TablaXML;
    TColorInt: integer;
    TiposServicios:TTiposServicios;
    TiposCodigos:TTiposCodigos;
    TiposServiciosNivel:TTiposServiciosNivel;
    Funciones:TFuncionesVarias;
    CuotasCoeficientes:TParcelasCoeficientes;
    TiposFormasPago:TTiposFormasPago;

    Procedure mostrando(cadena:string);
    begin
      Dialogo.MessageFont.Size:=15;
      Dialogo.MessageFont.Color:=clFuchsia;
      Dialogo.CaptionTitle:='DATOS DEL SERVICIO';
    end;

begin
if nro=0 then begin //Identificar COLOR
  TColores:=LeeXML('TiposColores','(TipoColor=' +  D8.Text  + ')');
  if length(TColores) <> 0 then begin
    VColor:=TColores[2,0];
    Panel.Color:=stringtocolor(VColor);
  end;
end;
if nro=1 then begin
  DataSet.Free;
  DataSet:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=DataSet;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if checkbox1.Checked then  begin
   txtw:='select * from Fn_VistaParcelasServiciosMayorista (null,' +trim(ODNI.Text) +',0)';
   if not Funciones.listar(txtw,DataSet) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  end
  else begin
  if not Funciones.Run_Fn_VistaParcelasServicios(null,trim(ODNI.Text),DataSet,'',0) then
   messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador', mtError,[mbok],0);
   //   EnviarLog('Consulta Libre : ' + Consulta,E.Message);
  end;
  Funciones.Free;
end;
if nro=2 then begin   //precio del servicio por nivel
  DataSet1.Free;
  DataSet1:=TClientDataSet.Create(nil);
  TiposServiciosNivel:=TTiposServiciosNivel.Create(nil);
  TiposServiciosNivel.ConnectionString:=modulo2.Conexion;
  if trim(edit1.Text)='2' then begin  /// exhumacion
   txtw:='SELECT PrecioContado,PrecioLista,PrecioCheque,anticipo FROM TiposServiciosNivel  '
   + '  where (NroTipoServicio=' + IdCombos[2,opera.ItemIndex] + ') and (Nivel=1) AND (Activo = 1)';
  end
  else begin
   txtw:='SELECT PrecioContado,PrecioLista,PrecioCheque,anticipo FROM TiposServiciosNivel  '
   + '  where (NroTipoServicio=' + IdCombos[2,opera.ItemIndex] + ') and (Nivel=' + trim(nivel1.Text) + ') AND (Activo = 1)';
  end;
  if TiposServiciosNivel.Listar(txtw,DataSet1)  then begin
   precioxn.Text:=trim(DataSet1.Fields[0].AsString);
   preciol.Text:=trim(DataSet1.Fields[1].AsString);
   precioche.Text:=trim(DataSet1.Fields[2].AsString);
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
end;
if nro=3 then begin   /// Titulares activos
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if not Funciones.Run_Fn_VistaParcelasResponsables(strtoint(trim(odni.Text)),DtCombo,'where Detalle <> ''mayoritario''',0) then
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
   grillat.Cells[5,t]:='Bº:'+ trim(DtCombo.Fields[6].AsString) +'- '+trim(DtCombo.Fields[5].AsString);
   grillat.Cells[8,t]:=trim(DtCombo.Fields[1].AsString);
   grillat.Cells[13,t]:=trim(DtCombo.Fields[11].AsString);
  end;
  Funciones.Free;
end;
if nro=4 then begin   /// Tipos de CODIGOS
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  IF (TPOPAGO.ItemIndex=0) or (TPOPAGO.ItemIndex=4) then
   txtw:='SELECT distinct montocuota FROM CreaDeudasVentas (2,' + chr(39) + trim(fecha.Text) + chr(39) +',0,'+ trim(saldo.Text) +',1,0) where (detalle=''cuotas normales'')';
  IF TPOPAGO.ItemIndex=1 THEN
   txtw:='SELECT distinct montocuota FROM CreaDeudasVentas (2,' + chr(39) +trim(fecha.Text)+ chr(39) + ',' + trim(importee.Text) +',' + trim (saldo.Text)+','+ trim(edit2.Text)+',0) where (detalle=''cuotas normales'')';
  IF TPOPAGO.ItemIndex=2 THEN
   txtw:='SELECT distinct montocuota FROM CreaDeudasVentas (2,' + chr(39) +trim(fecha.Text)+ chr(39) + ',' + trim(importee.Text) +',' + trim (saldo.Text)+','+ trim(edit2.Text)+',1) where (detalle=''cuotas normales'')';
  if not Funciones.listar(txtw,DtCombo) then
   messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  valcuota.Text:=trim(DtCombo.Fields[0].AsString);
end;
if nro=5 then begin //Combo CUOTAS
  cocherias.Clear;
  DtCombo.Free;
  Dtcombo:=TClientDataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT NroCocheria, Detalle FROM TiposCocherias';
  if Funciones.Listar(txtw,DtCombo) then begin
   SetLength(IdCombos[1],DtCombo.RecordCount);
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    cocherias.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
    IdCombos[1,t-1]:=DtCombo.Fields[0].AsString;
   end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  funciones.Free;
  cocherias.ItemIndex:=0;
end;
if nro=6 then begin
  DataSet1.Free;
  DataSet1:=TClientDataSet.Create(nil);
  CuotasCoeficientes:=TParcelasCoeficientes.Create(nil);
  CuotasCoeficientes.ConnectionString:=modulo2.Conexion;
  txtw:='Select coeficiente,interesaplicado AS cantcuotas FROM ParcelasCoeficientes Where '
  + ' (Codigo=' + IdCombos[1,CODIGO.ItemIndex] + ') and (NroCuota=' + trim(edit2.Text) + ')';
  if CuotasCoeficientes.Listar(txtw,DataSet1)  then begin
   coefi:=trim(DataSet1.Fields[0].AsString);
   inter:=trim(DataSet1.Fields[1].AsString);
   coef.Text:=trim(DataSet1.Fields[0].AsString);
   interes.Text:=trim(DataSet1.Fields[1].AsString);
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
end;
if nro=7 then begin
  OPERA.Clear;
  DtCombo.Free;
  Dtcombo:=TClientDataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT NroTipoServicio, Detalle FROM TiposServicios where nrotiposervicio in  (1,2) order by 1';
  if Funciones.Listar(txtw,DtCombo) then begin
   SetLength(IdCombos[2],DtCombo.RecordCount);
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    OPERA.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
    IdCombos[2,t-1]:=DtCombo.Fields[0].AsString;
   end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  funciones.Free;
  OPERA.ItemIndex:=0;
{  OPERA.Clear;
  TServicios:=LeeXML('TiposServicios','');
  if length(TServicios) <> 0 then begin
   SetLength(IdCombos[2],High(TServicios[1]) + 1);
   for t:=0 to High(TServicios[1])  do begin
    OPERA.Items.Insert(t,TServicios[1,t]);
    IdCombos[2,t]:=TServicios[0,t];
   end;
  end
  else begin
   DtCombo.Free;
   Dtcombo:=TClientDataSet.Create(nil);
   TiposServicios:=TTiposServicios.Create(nil);
   TiposServicios.ConnectionString:=modulo2.Conexion;
   Param:=TWideStrings.Create;
   Param.Add('');
   if TiposServicios.ListarSP(Param,DtCombo,0) then begin //' Select NroTipoServicio, Detalle, Inhumado, Objetos FROM TiposServicios'
    SetLength(IdCombos[2],DtCombo.RecordCount);
    for t:=1 to DtCombo.RecordCount  do begin
     DtCombo.RecNo:=t;
     OPERA.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
     IdCombos[2,t-1]:=DtCombo.Fields[0].AsString;
    end;
   end
    else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
   Param.Free;
   TiposServicios.Free;
  end;
  OPERA.ItemIndex:=0;    }
end;
if nro=8 then begin
  DtComboO.Free;
  DtComboO:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  IF (TRIM(EDIT1.Text)='5') OR (TRIM(EDIT1.Text)='2') then begin
    txtw:='SELECT idservicioobjeto,objeto,valor FROM Fn_VistaLosObjetosPrecios('+trim(edit1.text)  +',0)'
  END
  ELSE BEGIN
   txtw:='SELECT idservicioobjeto,objeto,valor FROM Fn_VistaLosObjetosPrecios('+ trim(edit1.text)  +',0)'
   + ' where (nivel = ' + trim(nivel1.Text) +')';
  END;
  if not Funciones.Listar(txtw,DtComboO) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  for t:=0 to grillaobjetos.ColCount-1 do
  for y:=1 to grillaobjetos.RowCount-1 do grillaobjetos.Cells[t,y]:='';
  for t:=1 to DtComboO.RecordCount  do begin
   DtComboO.RecNo:=t;
   grillaobjetos.RowCount:=t+1;
   grillaobjetos.Cells[0,t]:=trim(DtComboO.Fields[0].AsString);
   grillaobjetos.Cells[1,t]:=trim(DtComboO.Fields[1].AsString);
   grillaobjetos.Cells[2,t]:=trim(DtComboO.Fields[2].AsString);
  end;
end;
if nro=9  then begin  // CALCULAMOS LOS IMPORTES DE LAS CUOTAS
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  IF (TPOPAGO.ItemIndex=0) or (TPOPAGO.ItemIndex=4) THEN BEGIN
   txtw:='SELECT * FROM CreaDeudasVentas (2,' + chr(39) + trim(fecha.Text) + chr(39) +',0,'+ trim(saldo.Text) +',1,0)';
   if not Funciones.listar(txtw,DtCombo) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
   Funciones.Free;
   for t:=0 to grilla5.ColCount-1 do
     for y:=1 to grilla5.RowCount-1 do grilla5.Cells[t,y]:='';
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    grilla5.RowCount:=t+1;
    grilla5.Cells[0,t]:=trim(DtCombo.Fields[0].AsString);
    grilla5.Cells[1,t]:=trim(DtCombo.Fields[1].AsString);
    grilla5.Cells[2,t]:=trim(DtCombo.Fields[2].AsString);
    grilla5.Cells[3,t]:=trim(DtCombo.Fields[3].AsString);
    grilla5.Cells[4,t]:=trim(DtCombo.Fields[4].AsString);
    grilla5.Cells[5,t]:=trim(DtCombo.Fields[5].AsString);
    grilla5.Cells[6,t]:=trim(DtCombo.Fields[6].AsString);
   end;
  end;
  IF TPOPAGO.ItemIndex=1 THEN BEGIN
    txtw:='SELECT * FROM CreaDeudasVentas (2,' + chr(39) +trim(fecha.Text)+ chr(39)
    + ',' + trim(importee.Text) +',' + trim (saldo.Text)+','+ trim(edit2.Text)+',0)';
  //IF TPOPAGO.ItemIndex=2 THEN
  //  txtw:='SELECT * FROM CreaDeudasVentas (2,' + chr(39) +trim(fecha.Text)+ chr(39) + ',' + trim(importee.Text) +',' + trim (dprecio.Text)+','+ trim(edit2.Text)+',1)';
  {  IF TPOPAGO.ItemIndex=0 THEN
    txtw:='SELECT * FROM CreaDeudasVentas (2,' + chr(39) + trim(fecha.Text) + chr(39) +',0,'+ trim(dprecio.Text) +',1)'
  ELSE
    txtw:='SELECT * FROM CreaDeudasVentas (2,' + chr(39) +trim(fecha.Text)+ chr(39) + ',' + trim(importee.Text) +',' + trim (saldo.Text)+','+ trim(cuotas.Text)+')';}
  if not Funciones.listar(txtw,DtCombo) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
   Funciones.Free;
   for t:=0 to grilla5.ColCount-1 do
     for y:=1 to grilla5.RowCount-1 do grilla5.Cells[t,y]:='';
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    grilla5.RowCount:=t+1;
    grilla5.Cells[0,t]:=trim(DtCombo.Fields[0].AsString);
    grilla5.Cells[1,t]:=trim(DtCombo.Fields[1].AsString);
    grilla5.Cells[2,t]:=trim(DtCombo.Fields[2].AsString);
    grilla5.Cells[3,t]:=TRIM(VALCUOTA.Text);//trim(DtCombo.Fields[3].AsString);
    grilla5.Cells[4,t]:=trim(DtCombo.Fields[4].AsString);
    grilla5.Cells[5,t]:=TRIM(VALCUOTA.Text);//trim(DtCombo.Fields[5].AsString);
    grilla5.Cells[6,t]:=trim(DtCombo.Fields[6].AsString);
   end;
  END;
end;
if nro=10 then begin
 if c6.Checked = false then begin
  for t:=1 to grillaobjetos.RowCount-1 do begin
   ParcelasServiciosDetalle:=TParcelasServiciosDetalle.Create(nil);
   ParcelasServiciosDetalle.ConnectionString:=modulo2.Conexion;
   parcelasserviciosdetalle.C_IdServicio:=strtoint(ElId);
   parcelasserviciosdetalle.C_IDServicioObjeto:=strtoint(trim(grillaobjetos.Cells[0,t]));
   parcelasserviciosdetalle.C_Importe:=StrtoFloat(trim(grillaobjetos.Cells[2,t]));
   parcelasserviciosdetalle.C_Fecha_A:=strcut(fec_system(),10);
   parcelasserviciosdetalle.C_Usu_A:=modulo2.nro_usu;
   ct:=ParcelasServiciosDetalle.Agrega;
   ParcelasServiciosDetalle.Free;
  end;
  if ct then begin
   rvs.Execute;
   mostrando('El IdServicio es: ' + ElId + ' - Nro Accion: ' + trim(odni.Text));
   messagedlg('Este SERVICIO Se ha Guardado con Exito',mtConfirmation,[mbok],0);
   AuditAccesos('Modulo 2','SERVICIO GUARDADO ACCION ' + TRIM(D1.Text) + ' Nivel: '+ TRIM(nivel1.Text)  + ' Posicion:' + TRIM(posicion1.Text)  ) ;
   // verificamos si este servicio tiene un inhumado ya cargado antes del servicio
   coloca1(19);
   if losinhu <> '0' then begin
    InhuSinServ:= TInhuSinServ.create(self);
    try
     if edit1.Text='1' then begin
      InhuSinServ.NroOpcion:=1;
      InhuSinServ.Caption:='Lista de Inhumados';
      InhuSinServ.nroacc:=trim(d1.Text);
      InhuSinServ.niv:=trim(nivel1.Text);
      InhuSinServ.posi:=trim(posicion1.Text);
      InhuSinServ.obje:=LeftStr(trim(tipoobjeto.Text),1);
      InhuSinServ.elobjeto:=trim(tipoobjeto.Text);
      InhuSinServ.ElIdServ:=ElID;
      InhuSinServ.ShowModal;
     end;
     if edit1.Text='2' then begin
      InhuSinServ.NroOpcion:=5;
      InhuSinServ.Caption:='Lista de Inhumados';
      InhuSinServ.nroacc:=trim(d1.Text);
      InhuSinServ.niv:=trim(nivel1.Text);
      InhuSinServ.posi:=trim(posicion1.Text);
      InhuSinServ.obje:=LeftStr(trim(tipoobjeto.Text),1);
      InhuSinServ.elobjeto:=trim(tipoobjeto.Text);
      InhuSinServ.fechaexu:=trim(fecha.text);
      InhuSinServ.ShowModal;
     end;
    finally
      InhuSinServ.destroy;
    end;
    borra.Click;
   end
   else begin
    borra.Click;
   end;
   bguardar.Enabled :=false;
  end
  else  messagedlg('Error al Guardar este SERVICIO. Consulte con un Administrador',mtError,[mbok],0);
 end
 else begin
  ParcelasServiciosDetalle:=TParcelasServiciosDetalle.Create(nil);
  ParcelasServiciosDetalle.ConnectionString:=modulo2.Conexion;
  bt:=ParcelasServiciosDetalle.Borrar(idserv.Text);
  ParcelasServiciosDetalle.Free;
  if bt then  begin
   for t:=1 to grillaobjetos.RowCount-1 do begin
    ParcelasServiciosDetalle:=TParcelasServiciosDetalle.Create(nil);
    ParcelasServiciosDetalle.ConnectionString:=modulo2.Conexion;
    parcelasserviciosdetalle.C_IdServicio:=strtoint(idserv.text);
    parcelasserviciosdetalle.C_IDServicioObjeto:=strtoint(trim(grillaobjetos.Cells[0,t]));
    parcelasserviciosdetalle.C_Importe:=strtoint(trim(grillaobjetos.Cells[2,t]));
    parcelasserviciosdetalle.C_Fecha_A:=strcut(fec_system(),10);
    parcelasserviciosdetalle.C_Usu_A:=modulo2.nro_usu;
    ct:=ParcelasServiciosDetalle.Agrega;
    ParcelasServiciosDetalle.Free;
   end;
   if ct then begin
     messagedlg('Este SERVICIO Se ha Modificado con Exito',mtConfirmation,[mbok],0);
     bguardar.Enabled :=false;
     borra.Click;
   end
   else  messagedlg('Error al Modificar este SERVICIO. Consulte con un Administrador',mtError,[mbok],0);
  end;
 end;
end;
if nro=11 then begin
  DataSetT.Free;
  DataSetT:=TClientdataSet.Create(nil);
  DataSource2.DataSet:=DataSetT;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if not Funciones.Run_Fn_VistaParcelasParaVenta(trim(ODNI.Text),DataSetT,'',0) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
end;
if nro=12 then begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT NroCuota,Periodo,FechaVencimiento,Monto,Interes,Capital FROM Fn_VistaParcelasServicosDeudas (null,' +trim(odni.Text)+' ,0)'; //where NroCuota > 0';
  if not Funciones.listar(txtw,DtCombo) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  for t:=0 to grilla5.ColCount-1 do
    for y:=1 to grilla5.RowCount-1 do grilla5.Cells[t,y]:='';
  for t:=1 to DtCombo.RecordCount  do begin
   DtCombo.RecNo:=t;
   grilla5.RowCount:=t+1;
   grilla5.Cells[0,t]:=trim(DtCombo.Fields[0].AsString);
   grilla5.Cells[1,t]:='';
   grilla5.Cells[2,t]:=trim(DtCombo.Fields[1].AsString);
   grilla5.Cells[3,t]:=trim(DtCombo.Fields[5].AsString);
   grilla5.Cells[4,t]:=trim(DtCombo.Fields[4].AsString);
   grilla5.Cells[5,t]:=trim(DtCombo.Fields[3].AsString);
   grilla5.Cells[6,t]:=trim(DtCombo.Fields[2].AsString);
  end;
end;
if nro=13 then begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT idservicioobjeto,objeto FROM Fn_VistaParcelasServiciosDetalleObjetos('+trim(idserv.Text) +',0)';
  if not Funciones.listar(txtw,DtCombo) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  for t:=0 to grillaobjetos.ColCount-1 do
    for y:=1 to grillaobjetos.RowCount-1 do grillaobjetos.Cells[t,y]:='';
  for t:=1 to DtCombo.RecordCount  do begin
   DtCombo.RecNo:=t;
   grillaobjetos.RowCount:=t+1;
   grillaobjetos.Cells[0,t]:=trim(DtCombo.Fields[0].AsString);
   grillaobjetos.Cells[1,t]:=trim(DtCombo.Fields[1].AsString);
  end;
end;
if nro=14 then begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT * FROM CreaDeudasVentas (2,' + chr(39) +trim(fecha.Text)+ chr(39) + ',0,' + trim (precioche.Text)+',1,0)';
  if not Funciones.Listar(txtw,DtCombo) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  for t:=0 to grilla5.ColCount-1 do
    for y:=1 to grilla5.RowCount-1 do grilla5.Cells[t,y]:='';
  for t:=1 to DtCombo.RecordCount  do begin
   DtCombo.RecNo:=t;
   grilla5.RowCount:=t+1;
   grilla5.Cells[0,t]:=trim(DtCombo.Fields[0].AsString);
   grilla5.Cells[1,t]:=trim(DtCombo.Fields[1].AsString);
   grilla5.Cells[2,t]:=trim(DtCombo.Fields[2].AsString);
   grilla5.Cells[3,t]:=trim(DtCombo.Fields[3].AsString);
   grilla5.Cells[4,t]:=trim(DtCombo.Fields[4].AsString);
   grilla5.Cells[5,t]:=trim(DtCombo.Fields[5].AsString);
   grilla5.Cells[6,t]:=trim(DtCombo.Fields[6].AsString);
  end;
end;
if nro=15 then begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  //txtw:='SELECT * FROM CreaDeudasVentas (2,' + chr(39) +trim(fecha.Text)+ chr(39) + ',0,' + trim (preciol.Text)+',1,0)';
  if (trim(codigo.Text)='CONTADO') or (trim(codigo.Text)='CUENTA CORRIENTE') then
    txtw:='SELECT * FROM CreaDeudasVentas (2,' + chr(39) + trim(fecha.Text) + chr(39) +',0,'+ trim(precioxn.Text) +',1,0)';
  //if trim(codigo.Text)='CHEQUE' then
   //txtw:='select nrocuota,periodo,fechavto,capital,interes,montocuota,''Cheque'' as detalle '
   //+' FROM CreaDeudasVentas (2,' + chr(39) + trim(fecha.Text) + chr(39) + ',0,'+ trim(e5.Text) +',1,0)';
  if trim(codigo.Text)='TARJETA DE CREDITO' then
   txtw:='select nrocuota,periodo,fechavto,capital,interes,montocuota,''Tarjeta Credito'' as detalle '
   +' FROM CreaDeudasVentas (2,' + chr(39) + trim(fecha.Text) + chr(39) + ',0, '+ trim(preciol.Text) +',1,0)';
  if not Funciones.Listar(txtw,DtCombo) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  for t:=0 to grilla5.ColCount-1 do
    for y:=1 to grilla5.RowCount-1 do grilla5.Cells[t,y]:='';
  for t:=1 to DtCombo.RecordCount  do begin
   DtCombo.RecNo:=t;
   grilla5.RowCount:=t+1;
   grilla5.Cells[0,t]:=trim(DtCombo.Fields[0].AsString);
   grilla5.Cells[1,t]:=trim(DtCombo.Fields[1].AsString);
   grilla5.Cells[2,t]:=trim(DtCombo.Fields[2].AsString);
   grilla5.Cells[3,t]:=trim(DtCombo.Fields[3].AsString);
   grilla5.Cells[4,t]:=trim(DtCombo.Fields[4].AsString);
   grilla5.Cells[5,t]:=trim(DtCombo.Fields[5].AsString);
   grilla5.Cells[6,t]:=trim(DtCombo.Fields[6].AsString);
  end;
end;
if nro=16 then begin
  TARJETA.Clear;
  DtCombo.Free;
  Dtcombo:=TClientDataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT DetalleTarjeta,NroTarjeta FROM TiposTarjetasCredito order by 1';
  if Funciones.Listar(txtw,DtCombo)  then  begin
   SetLength(IdCombos[3],Dtcombo.RecordCount);
   for t:=1 to Dtcombo.RecordCount  do begin
    Dtcombo.RecNo:=t;
    TARJETA.Items.Insert(t-1,trim(Dtcombo.Fields[0].AsString));
    IdCombos[3,t-1]:=Dtcombo.Fields[1].AsString;
   end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  funciones.Free;
  TARJETA.ItemIndex:=0;
end;
if nro=17 then begin
  banco.Clear;
  DtComboC.Free;
  DtcomboC:=TClientDataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT NroEntidad, Nombre from EntidadesBancarias WHERE (NroEntidad > 0) order by 1';
  if Funciones.Listar(txtw,DtComboC)  then  begin
   SetLength(IdCombos[4],DtcomboC.RecordCount);
   for t:=1 to DtcomboC.RecordCount  do begin
    DtcomboC.RecNo:=t;
    banco.Items.Insert(t-1,trim(DtcomboC.Fields[1].AsString));
    IdCombos[4,t-1]:=DtcomboC.Fields[0].AsString;
   end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  funciones.Free;
  banco.ItemIndex:=0;
end;
if nro=18 then  begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  //  txtw:='SELECT * FROM CreaDeudasServiciosEspecial (' + chr(39) + trim(fecha.Text) + chr(39)
  //        + ',' + trim(saldo.Text) +','+ trim(edit2.Text)+','+ trim(nivel1.Text) +')';
  //  if trim(edit2.Text)<> '4' then  begin
  txtw:='SELECT * FROM CreaDeudasServiciosEspecial ('+ chr(39) +trim(fecha.Text)+ chr(39) +','+ trim(importee.text)+ ',3,'+ trim(nivel1.Text) +',' + trim(preciol.Text )  + ')' +
  ' where nrocuota=0 union '
  + 'SELECT * FROM CreaDeudasServiciosEspecialCuotas ('+ chr(39) +trim(fecha.Text)+ chr(39) +','+ trim(edit2.Text)+ ',' + trim(saldo.Text) + ')';
  if not Funciones.Listar(txtw,DtCombo) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  for t:=0 to grilla5.ColCount-1 do
    for y:=1 to grilla5.RowCount-1 do grilla5.Cells[t,y]:='';
  for t:=1 to DtCombo.RecordCount  do begin
   DtCombo.RecNo:=t;
   grilla5.RowCount:=t+1;
   grilla5.Cells[0,t]:=trim(DtCombo.Fields[0].AsString);
   grilla5.Cells[1,t]:=trim(DtCombo.Fields[1].AsString);
   grilla5.Cells[2,t]:=trim(DtCombo.Fields[2].AsString);
   grilla5.Cells[3,t]:=trim(DtCombo.Fields[3].AsString);
   grilla5.Cells[4,t]:=trim(DtCombo.Fields[4].AsString);
   grilla5.Cells[5,t]:=trim(DtCombo.Fields[5].AsString);
   grilla5.Cells[6,t]:=trim(DtCombo.Fields[6].AsString);
  end;
end;
if nro=19 then begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT COUNT(*) as Canti FROM dbo.ParcelasInhumados INNER JOIN '
  +' dbo.Clientes ON dbo.ParcelasInhumados.CuifFallecido = dbo.Clientes.Cuif INNER JOIN '
  +' dbo.TiposMedicos ON dbo.ParcelasInhumados.NroMedico = dbo.TiposMedicos.NroMedico INNER JOIN  '
  +' dbo.TiposDiagnosticos ON dbo.ParcelasInhumados.NroDiagnostico = dbo.TiposDiagnosticos.NroDiagnostico LEFT OUTER JOIN '
  +' dbo.ParcelasServicios ON dbo.ParcelasInhumados.IdServicio = dbo.ParcelasServicios.IdServicio'
  +' AND dbo.ParcelasInhumados.NroAccion = dbo.ParcelasServicios.NroAccion '
  +' WHERE (dbo.ParcelasInhumados.NroAccion = '+ trim(d1.Text)+') AND (dbo.ParcelasInhumados.IdServicio IS NULL)';
  if not Funciones.listar(txtw,DtCombo) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  losinhu:=trim(DtCombo.Fields[0].AsString);
end;
if nro =  20 then begin
  lasmutuales.Clear;
  DtCombo.Free;
  Dtcombo:=TClientDataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT distinct clientes.RazonSocial,tit.Cuif '
   +' FROM ParcelasTitulares tit inner join Clientes on Clientes.Cuif = tit.Cuif WHERE (NroTipoAcc = 3)';
  if Funciones.Listar(txtw,DtCombo)then begin
  SetLength(IdCombos[5],DtCombo.RecordCount);
  for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    lasmutuales.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
    IdCombos[5,t-1]:=DtCombo.Fields[1].AsString;
  end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  lasmutuales.ItemIndex:=0;
end;
end;

procedure TVen_ServGer.DBGrid1CellClick(Column: TColumn);
var txt:widestring;
begin
 if not (DataSet.IsEmpty) then begin
 // if (trim(DBGrid1.Fields[21].Text) = 'False') then begin
 //     txt:='ATENCION La Venta N°: ' + trim(DBGrid1.Fields[0].Text) +' Asociada a esta Acción, NO ESTA CONFIRMADA..imposible la carga de datos';
 //     messagedlg(txt,mtWarning,[mbok],0);
 //     PC1.ActivePage:=PC1.Pages[0];
 // end
 // else begin
   if (trim(DBGrid1.Fields[0].Text) <> '') then begin
    idserv.DataField:='IdServicio';
    coloca1(11);
    coloca1(12);
    coloca1(13);
    PC1.Pages[1].Enabled:=true;
    PC1.ActivePage:=PC1.Pages[1];
    D1.DataField:='NroAccion';
    D2.DataField:='NroTitulo';
    D3.DataField:='Sector';
    D4.DataField:='Detalle';
    D5.DataField:='Parcela';
    D6.DataField:='Activo';
    D8.DataField:='TipoColor';
    coloca1(3);
    Coloca1(0);  //Color de Parcela
    opera.SetFocus;
    if (trim(DBGrid1.Fields[14].Text) = 'True') then begin
      messagedlg('ATENCION Este Servicio se encuentra ANULADA imposible su Modificacion...',mtWarning,[mbok],0);
      PC1.Pages[1].Enabled:=false;
    end
   end
   else begin
    c6.Checked:=false;
    coloca1(11);
    PC1.Pages[1].Enabled:=true;
    PC1.ActivePage:=PC1.Pages[1];
    D1.DataField:='NroAccion';
    D2.DataField:='NroTitulo';
    D3.DataField:='Sector';
    D4.DataField:='Detalle';
    D5.DataField:='Parcela';
    D6.DataField:='Activo';
    D8.DataField:='TipoColor';
    coloca1(3);
    Coloca1(0);  //Color de Parcela
    opera.SetFocus;
   end;
 end;
end;

procedure TVen_ServGer.BuscaClick(Sender: TObject);
var p,u:integer;
begin
 Coloca1(1);
 if (Datasource1.DataSet.RecordCount = 0) then begin
  Barra1.Panels[0].Text:='Sin Datos en Grilla';
  //actualizamos en parcelasventas la accion faltante
  if checkbox1.Checked = false then begin
   PROCESO.Close;
   PROCESO.CommandText:='exec ActualizaventasporServicios ' + trim(odni.Text);
   PROCESO.Open;
   Coloca1(1);
  end;
  //IF application.MessageBox('PARCELA NO encontrado, !Desea Buscar otra Parcela!?','Advertencia' ,mb_OKcancel+mb_IconHAnd) = IdOk then begin
  //  PC1.Enabled:=true;
  //  ODNI.SetFocus;
  //end
  //else begin
  //  PC1.Enabled:=true;
  //  Barra1.Panels[0].Text:='La opcion Busqueda fue Cancelada';
  // BUSCA.SetFocus;
  //end;
 end
 else begin
  Barra1.Panels[1].Text:='Registos encontrados: ' + inttostr(Datasource1.DataSet.RecordCount);
  dbgrid1.SetFocus;
 end;
end;

procedure TVen_ServGer.JvBitBtn3Click(Sender: TObject);
begin
Close;
end;

procedure TVen_ServGer.bExportarClick(Sender: TObject);
var texto:widestring;
var txt:string;
var t,y:integer;
begin
  todos.Clear;
  texto:='';
  for t:=0 to DataSet.FieldCount-1 do begin
    texto:=texto + DataSet.Fields[t].FieldName + chr(9);
  end;
  todos.Lines.Add(texto);
  for y:=1 to DataSet.RecordCount do begin
    DataSet.RecNo:=y;
    texto:='';
    for t:=0 to DataSet.FieldCount-1 do begin
      texto:=texto + DataSet.Fields[t].AsString + chr(9);
    end;
    todos.Lines.Add(texto);
  end;
  todos.SelectAll;
  todos.CopyToClipboard;
  messagedlgpos('Se Copiaron los Datos, listo para pegarlos a Excel',mtwarning,[mbok],0,screen.Width div 3,screen.Height div 3);
end;

procedure TVen_ServGer.ONOMBKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then busca.SetFocus;

end;

procedure TVen_ServGer.ODNIKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  busca.SetFocus;
 end
 else begin
  if ( StrScan('0123456789',Key) <> nil ) or  ( Key = Char(VK_BACK) ) then
  else Key := #0;
 end;
end;

procedure TVen_ServGer.IMPORTEEExit(Sender: TObject);
var vSaldo:double;
var Seleccion_Cuotas: TSeleccion_Cuotas;
begin
 if (trim(ImporteE.text)='') or (trim(ImporteE.text)='0') then begin
  ImporteE.text:='00000.00';
  ImporteE.SetFocus;
 end
 else begin
  if (TPOPAGO.ItemIndex=0) or (TPOPAGO.ItemIndex=4) then  begin
    SALDO.Text:=trim(PRECIOxn.text);
  end;
  if tpopago.ItemIndex=1 then begin
   SALDO.Text:=FloatToStr(strtofloat(preciol.text)  -  strtofloat(IMPORTEE.text));
   IMPORTE.Text:= trim(saldo.Text);//    saldo.Text;   //
   Seleccion_Cuotas:= TSeleccion_Cuotas.create(self);
   try
    Seleccion_Cuotas.NroOpcion:=3;
    Seleccion_Cuotas.niv:=modulo2.nvl_usu;
    Seleccion_Cuotas.entrega:=strtofloat(importee.Text);
    Seleccion_Cuotas.capital:=strtofloat(saldo.Text);   //strtofloat(preciol.Text);
    Seleccion_Cuotas.fecha:=strcut(fec_system(),10);
    Seleccion_Cuotas.niv:=strtoint(nivel1.Text);
    Seleccion_Cuotas.edit1.Text :=trim(tpopago.Text);
    Seleccion_Cuotas.ShowModal;
   finally
    edit2.Text:=Seleccion_Cuotas.Nrocta.Text;
    valcuota.Text:= Seleccion_Cuotas.impcta.Text;//strcut_midle(Seleccion_cuotas.ImpCta.Text,3,10);
    codigo.Text:=Seleccion_cuotas.Edit1.Text;
    Seleccion_Cuotas.destroy;
   end;
  end;
  if tpopago.ItemIndex=2 then  begin
     SALDO.Text:=trim(PRECIOL.text);
  end;
  if tpopago.ItemIndex=3 then  begin
    SALDO.Text:=trim(PRECIOL.text);
  end;
  fecha.SetFocus;
 end;
end;

procedure TVen_ServGer.IMPORTEEKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  tpopago.SetFocus;
end;
end;

procedure TVen_ServGer.SaldoKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then precioche.setfocus//CODIGO.SetFocus
 else begin
  if ( StrScan('0123456789.',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
  else Key := #0;
 end;
end;

procedure TVen_ServGer.FECHAKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
    Key := #0;
  if (tpopago.itemindex = 0) or (tpopago.itemindex = 1) or (tpopago.itemindex = 4) then edit2.SetFocus;
  if (tpopago.itemindex = 2) then banco.SetFocus;
  if (tpopago.itemindex = 3) then tarjeta.SetFocus;
  end;
end;

procedure TVen_ServGer.FECHAExit(Sender: TObject);
var fec:Tdatetime;
begin
try
 fec:=strtodate(trim(FECHA.Text));
except
  messagedlgpos('La fecha es Erronea!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  FECHA.SetFocus;
end;
end;

procedure TVen_ServGer.DPrecioKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  if (tpopago.ItemIndex=0) or (tpopago.itemindex = 4) then fecha.SetFocus
  else importee.SetFocus;
 end
 else begin
  if ( StrScan('0123456789.',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
  else Key := #0;
 end;
end;

procedure TVen_ServGer.DPrecioExit(Sender: TObject);
begin
 if trim(DPrecio.text)=''  then begin
  messagedlg('EL Valor Ingresado No es Válido',mterror,[mbok],0);
  DPrecio.SetFocus;
 end
 else begin
  If StrToFloat(trim(DPrecio.text)) <= 0 then begin
   messagedlg('EL Valor Ingresado No es Válido',mterror,[mbok],0);
   DPrecio.SetFocus;
  end;
 end;
end;

procedure TVen_ServGer.bGuardarClick(Sender: TObject);
var ac,ct,pt,bt,at:boolean;
var gf,t,p:integer;
var lafecha:string;
begin
 lafecha:=strcut(fec_system(),10);
 if C6.Checked = false then begin
   ParcelasServicios:=TParcelasServicios.Create(nil);
   ParcelasServicios.ConnectionString:=modulo2.Conexion;
   gf:=messagedlgpos('Desea Agregar los Datos de este SERVICIO?',mtWarning,[
    mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
   if gf = 1 then begin
    //if checkbox1.Checked then  begin
     parcelasservicios.C_Confirmado:=true;
     parcelasservicios.C_UsuConfirma:=modulo2.nro_usu;
     parcelasservicios.C_FechaConfirma:=trim(fecha.Text);
     //  ParcelasServicios.C_NroAccion_IX1:=StrToInt(D1.Text);
     //  ParcelasServicios.C_CuentaCliente_IX2:=StrToInt(D1.Text);
     //  parcelasservicios.C_Solicita:=(trim(GrillaT.Cells[8,1]))
    // end
    // else begin
     ParcelasServicios.C_NroAccion_IX1:=StrToInt(D1.Text);
     parcelasservicios.C_Solicita:=null;
     ParcelasServicios.C_CuentaCliente_IX2:=null;
    //end;
    ParcelasServicios.C_Fecha_IX3:=trim(fecha.Text);
    ParcelasServicios.C_NroCocheria_IX4:=strtoint(IdCombos[1,cocherias.ItemIndex]);
    parcelasservicios.C_NroTipoServicio_IX5:=StrToInt(edit1.text);
    parcelasservicios.C_Responsable:=20000000001; //  strtoint64(trim(GrillaT.Cells[8,3]));
    parcelasservicios.C_Inhumado:=null;
    parcelasservicios.C_IDTipoServicioNivel:=StrToInt(edit1.text);
    IF (TRIM(EDIT1.Text)='5') OR (TRIM(EDIT1.Text)='2') then begin
     parcelasservicios.C_Nivel:='0';
     parcelasservicios.C_Posicion:='0';
    end
    else begin
     parcelasservicios.C_Nivel:=StrToInt(nivel1.text);
     parcelasservicios.C_Posicion:=StrToInt(posicion1.text);
    end;
    parcelasservicios.C_Objeto:=LeftStr(trim(tipoobjeto.Text),1);
    parcelasservicios.C_Total:=StrToFloat(saldo.Text);
    parcelasservicios.C_CantCuotas:=StrToInt(edit2.text);
    parcelasservicios.C_ValorCuota:=StrToFloat(valcuota.Text);
    parcelasservicios.C_Prepago:=false;
    parcelasservicios.C_Observaciones:=trim(OBSERV.text);
    if checkbox1.Checked then  begin
     parcelasservicios.C_Confirmado:=true;
     parcelasservicios.C_UsuConfirma:=modulo2.nro_usu;
     parcelasservicios.C_FechaConfirma:=trim(fecha.Text);
    end;
    parcelasservicios.C_IdFormaPago:=tipopago;
    parcelasservicios.C_TipoFormaPago:=trim(codigo.Text);
    parcelasservicios.C_NroRecibo:=trim(recibonro.Text);
    parcelasservicios.C_PrecioContado:=trim(precioxn.Text);
    parcelasservicios.C_PrecioFinanciado:=trim(preciol.Text);
    if trim(codigo.Text)='CHEQUE' then begin
     parcelasservicios.C_NroEntidad:=strtoint(IdCombos[4,banco.ItemIndex]);
     parcelasservicios.C_Titular:=trim(titcheq.Text);
     parcelasservicios.C_Serie:=trim(e1.Text);
     parcelasservicios.C_NroCheque:=trim(e2.Text);
     parcelasservicios.C_Fecha1:=trim(fcheque.Text);
     parcelasservicios.C_FechaCobro:=trim(fpagocheque.Text);
     parcelasservicios.C_Importe:=Trim(E5.Text);
    end;
    if trim(codigo.Text)='TARJETA DE CREDITO' then begin
     parcelasservicios.C_NroTarjeta:=strtoint(IdCombos[3,tarjeta.ItemIndex]);
     parcelasservicios.C_Titular:=trim(tittarje.Text);
     parcelasservicios.C_NroCuotas:=strtoint(nrocuota.Text);
     parcelasservicios.C_NroComprobante:=trim(nrocb.text);
     parcelasservicios.C_Fecha1:=trim(ftarje.Text);
     parcelasservicios.C_Importe:=Trim(edit3.Text);
    end;
    parcelasservicios.C_Usu_A:=modulo2.nro_usu;
    ac:=Parcelasservicios.Agrega;
    ElId:=Parcelasservicios.Identidad;
    parcelasservicios.Free;
    if ac then begin
     for p:=1 to grilla5.RowCount-1 do begin
      ParcelasServiciosDeudas:=TParcelasServiciosDeudas.Create(nil);
      ParcelasServiciosDeudas.ConnectionString:=modulo2.Conexion;
      parcelasserviciosdeudas.C_NroAccion:=StrToInt(D1.Text);
      parcelasserviciosdeudas.C_CuentaCliente_IX1:=null;
      parcelasserviciosdeudas.C_IdServicio_IX2:=strtoint(ElId);
      parcelasserviciosdeudas.C_NroCuota:=strtoint(trim(Grilla5.Cells[0,p]));;
      parcelasserviciosdeudas.C_Periodo_IX3:=strtoint(Grilla5.Cells[1,p]);
      parcelasserviciosdeudas.C_FechaVencimiento_IX4:=trim(Grilla5.Cells[2,p]);
      parcelasserviciosdeudas.C_Monto:=StrtoFloat(trim(Grilla5.Cells[5,p]));
      parcelasserviciosdeudas.C_Interes:=StrtoFloat(trim(Grilla5.Cells[4,p]));
      parcelasserviciosdeudas.C_Capital:=StrtoFloat(trim(Grilla5.Cells[3,p]));
      parcelasserviciosdeudas.C_DetalleCuota:=trim(Grilla5.Cells[6,p]);
      parcelasserviciosdeudas.C_EnMovimientos:=true;
      parcelasserviciosdeudas.C_DetalleCuota:='..';
      parcelasserviciosdeudas.C_BloqueoMonto:=false;
      parcelasserviciosdeudas.C_Usu_A:=modulo2.nro_usu;;
      parcelasserviciosdeudas.C_Fecha_A:=trim(lafecha);
      at:=ParcelasServiciosDeudas.Agrega;
      ParcelasServiciosDeudas.Free;
     end;
     if at then coloca1(10)
      else messagedlg('Error al Guardar este SERVICIO. Consulte con un Administrador',mtError,[mbok],0);
    end
    else begin
     messagedlg('Error al Guardar este SERVICIO. Consulte con un Administrador',mtError,[mbok],0);
    end;
   end
   else begin
    messagedlg('Ud. ha Cancelado este SERVICIO',mtError,[mbok],0);
   end;
 end
 else begin
   ParcelasServicios:=TParcelasServicios.Create(nil);
   ParcelasServicios.ConnectionString:=modulo2.Conexion;
   gf:=messagedlgpos('Desea MODIFICAR los Datos de este SERVICIO?',mtWarning,[
    mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
   if gf = 1 then begin
    ParcelasServicios.C_IdServicio_PK:=StrToInt(IdServ.Text);
    ParcelasServicios.C_NroAccion_IX1:=StrToInt(D1.Text);
    ParcelasServicios.C_CuentaCliente_IX2:=null;
    ParcelasServicios.C_Fecha_IX3:=trim(fecha.Text);
    ParcelasServicios.C_NroCocheria_IX4:=strtoint(IdCombos[1,cocherias.ItemIndex]);
    parcelasservicios.C_NroTipoServicio_IX5:=StrToInt(edit1.text);
    parcelasservicios.C_Solicita:=null;
    parcelasservicios.C_Responsable:=20000000079; //  strtoint64(trim(GrillaT.Cells[8,3]));
    parcelasservicios.C_Inhumado:=null;
    parcelasservicios.C_IDTipoServicioNivel:=StrToInt(edit1.text);
    parcelasservicios.C_Nivel:=StrToInt(nivel1.text);
    parcelasservicios.C_Posicion:=StrToInt(posicion1.text);
    parcelasservicios.C_Objeto:=LeftStr(trim(tipoobjeto.Text),1);
    parcelasservicios.C_Total:=StrToFloat(saldo.Text);
    parcelasservicios.C_CantCuotas:=StrToInt(edit2.text);
    parcelasservicios.C_ValorCuota:=StrToFloat(valcuota.Text);
    parcelasservicios.C_Prepago:=false;
    parcelasservicios.C_Observaciones:=trim(OBSERV.text);
    parcelasservicios.C_IdFormaPago:=tipopago;
    parcelasservicios.C_NroRecibo:=trim(recibonro.Text);
    parcelasservicios.C_PrecioContado:=trim(precioxn.Text);
    parcelasservicios.C_PrecioFinanciado:=trim(preciol.Text);
    parcelasservicios.C_Usu_A:=modulo2.nro_usu;
    ac:=Parcelasservicios.Modificar;
    parcelasservicios.Free;
    if ac then begin
     ParcelasServiciosDeudas:=TParcelasServiciosDeudas.Create(nil);
     ParcelasServiciosDeudas.ConnectionString:=modulo2.Conexion;
     bt:=ParcelasServiciosDeudas.Borrar(idserv.Text);
     ParcelasServiciosDeudas.Free;
     if bt then  begin
      for p:=1 to grilla5.RowCount-1 do begin
       ParcelasServiciosDeudas:=TParcelasServiciosDeudas.Create(nil);
       ParcelasServiciosDeudas.ConnectionString:=modulo2.Conexion;
       parcelasserviciosdeudas.C_NroAccion:=StrToInt(D1.Text);
       parcelasserviciosdeudas.C_CuentaCliente_IX1:=null;
       parcelasserviciosdeudas.C_IdServicio_IX2:=strtoint(idserv.text);
       parcelasserviciosdeudas.C_NroCuota:=strtoint(trim(Grilla5.Cells[0,p]));;
       parcelasserviciosdeudas.C_Periodo_IX3:=strtoint(Grilla5.Cells[1,p]);
       parcelasserviciosdeudas.C_FechaVencimiento_IX4:=trim(Grilla5.Cells[2,p]);
       parcelasserviciosdeudas.C_Monto:=StrtoFloat(trim(Grilla5.Cells[5,p]));
       parcelasserviciosdeudas.C_Interes:=StrtoFloat(trim(Grilla5.Cells[4,p]));
       parcelasserviciosdeudas.C_Capital:=StrtoFloat(trim(Grilla5.Cells[3,p]));
       parcelasserviciosdeudas.C_DetalleCuota:=trim(Grilla5.Cells[6,p]);
       parcelasserviciosdeudas.C_EnMovimientos:=true;
       parcelasserviciosdeudas.C_DetalleCuota:='..';
       parcelasserviciosdeudas.C_BloqueoMonto:=false;
       parcelasserviciosdeudas.C_Usu_A:=modulo2.nro_usu;;
       parcelasserviciosdeudas.C_Fecha_A:=trim(lafecha);
       at:=ParcelasServiciosDeudas.Agrega;
       ParcelasServiciosDeudas.Free;
      end;
      if at then  coloca1(10)
       else messagedlg('Error al Guardar este SERVICIO. Consulte con un Administrador',mtError,[mbok],0);
     end
     else begin
      messagedlg('Error al Modificar esta VENTA. Consulte con un Administrador',mtError,[mbok],0);
     end;
    end;
   end
   else begin
    messagedlg('Ud. ha Cancelado este SERVICIO',mtError,[mbok],0);
   end;
 end;
end;

procedure TVen_ServGer.bSalirClick(Sender: TObject);
begin
Close;
end;

procedure TVen_ServGer.tpopagoKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  if tpopago.itemindex = 0 then begin
   Key := #0;
   CODIGO.text:='CONTADO';
   edit2.Text:='0';
   tipopago:=2;
   fecha.setfocus;
   importee.Enabled:=false;
   codigo.Enabled:=false;
   bGuardar.Enabled:=true;
  end;
  if tpopago.itemindex = 1 then begin
   Key := #0;
   CODIGO.text:='FINANCIADO';
   if trim(codigo.Text)='FINANCIADO' then tipopago:=7
    else tipopago:=8;
   importee.Enabled:=true;
   importee.setfocus;
  end;
  if tpopago.itemindex = 2 then begin
   Key := #0;
   CODIGO.text:='CHEQHE';
   grupocheq.Visible:=true;
   grupotarje.Visible:=false;
   importee.Text:=precioche.Text;
   saldo.Text:=precioche.Text;
   IMPORTE.Text:=precioche.Text;
   VALCUOTA.Text:=precioche.Text;
   edit2.Text:='0';
   tipopago:=4;
   codigo.Text:='CHEQUE';
   fecha.SetFocus;
  end;
  if tpopago.itemindex = 3 then begin
   Key := #0;
   CODIGO.text:='TARJETA DE CREDITO';
   grupocheq.Visible:=false;
   grupotarje.Visible:=true;
   importee.Text:=preciol.Text;
   saldo.Text:=preciol.Text;
   IMPORTE.Text:=preciol.Text;
   VALCUOTA.Text:=preciol.Text;
   edit2.Text:='0';
   tipopago:=3;
   //codigo.Text:='TARJETA DE CREDITO';
   bGuardar.Enabled:=true;
   fecha.SetFocus;
  end;
  if tpopago.itemindex = 4 then begin  /// cuenta corriente
   Key := #0;
   CODIGO.text:='CUENTA CORRIENTE';
   edit2.Text:='0';
   tipopago:=0;
   fecha.setfocus;
   importee.Enabled:=false;
   codigo.Enabled:=false;
   bGuardar.Enabled:=true;
  end;
  if trim(codigo.Text)='CONTADO'  then  begin
   coloca1(15);
   tipopago:=2;
  end;
  //if trim(codigo.Text)='FINANCIADO CON INTERESES' then begin
  //  coloca1(14);
  //  tipopago:=8;
  //end;
  if trim(codigo.Text)='CHEQUE' then begin
   coloca1(14);
   tipopago:=4;
  end;
  if trim(codigo.Text)='TARJETA DE CREDITO' then begin
   coloca1(15);
   tipopago:=3;
  end;
  if trim(codigo.Text)='CUENTA CORRIENTE'  then  begin
   coloca1(15);
   tipopago:=0;
  end;
 end;
end;

procedure TVen_ServGer.tpopagoExit(Sender: TObject);
var t:integer;
var val,tot,vSaldo,vEntrega:real;
var Seleccion_Cuotas: TSeleccion_Cuotas;
 begin
  if tpopago.ItemIndex < 0 then begin
   messagedlg('ERROR!! No Existe el Tipo de Pago Ingresado!!',mterror,[mbok],0);
   tpopago.SetFocus;
  end
  else begin
   if tpopago.itemindex = 0 then begin
    if trim(tpopago.Text)='CONTADO' then begin
     grupocheq.Visible:=false;
     grupotarje.Visible:=false;
     saldo.Text:=precioxn.Text;
     VALCUOTA.Text:=precioxn.Text;
     IMPORTE.Text:=precioxn.Text;
     codigo.Text:='CONTADO';
     edit2.Text:='0';
     tipopago:=2;
     importee.Text:='00000.00';
    end;
   end;
   if tpopago.itemindex = 1 then begin
    grupocheq.Visible:=false;
    grupotarje.Visible:=false;
    codigo.Text:=trim(tpopago.Text);
    vEntrega:= strtofloat(preciol.text)/3;
    IMPORTEE.text:=FloatToStr(vEntrega);
    vSaldo:= strtofloat(preciol.text)  -  strtofloat(IMPORTEE.text);
    SALDO.Text:=FloatToStr(vsaldo);
    Seleccion_Cuotas:= TSeleccion_Cuotas.create(self);
    importee.Enabled:=true;
    importee.SetFocus;
    //if trim(codigo.Text)='FINANCIADO SIN INTERES' then tipopago:=7
    if trim(codigo.Text)='FINANCIADO' then tipopago:=7
     else tipopago:=8;
   end;
   if tpopago.itemindex = 2 then begin   //cheque
    grupocheq.Visible:=true;
    grupotarje.Visible:=false;
    importee.Text:=precioche.Text;
    saldo.Text:=precioche.Text;
    IMPORTE.Text:=precioche.Text;
    VALCUOTA.Text:=precioche.Text;
    edit2.Text:='0';
    codigo.Text:='CHEQUE';
    tipopago:=4;
    fecha.SetFocus;
   end;
   if tpopago.itemindex = 3 then begin   //tarje credito
    grupocheq.Visible:=false;
    grupotarje.Visible:=true;
    importee.Text:=preciol.Text;
    saldo.Text:=preciol.Text;
    IMPORTE.Text:=preciol.Text;
    VALCUOTA.Text:=preciol.Text;
    edit2.Text:='0';
    codigo.Text:='TARJETA DE CREDITO';
    tipopago:=3;
    fecha.SetFocus;
   end;
   if tpopago.itemindex = 4 then begin
    if trim(tpopago.Text)='CUENTA CORRIENTE' then begin
     grupocheq.Visible:=false;
     grupotarje.Visible:=false;
     saldo.Text:=precioxn.Text;
     VALCUOTA.Text:=precioxn.Text;
     IMPORTE.Text:=precioxn.Text;
     codigo.Text:='CUENTA CORRIENTE';
     edit2.Text:='0';
     tipopago:=0;
     importee.Text:='00000.00';
    end;
   end;
//      if trim(codigo.Text)='FINANCIADO SIN INTERESES' then begin
//        coloca1(9);
//      end;
//      if trim(codigo.Text)='CONTADO'  then  begin // contado
//       coloca1(15);
//      end;
//      if trim(codigo.Text)='FINANCIADO CON INTERESES' then begin
//       coloca1(14);
//      end;
//      if trim(codigo.Text)='CHEQUE' then begin
//       coloca1(14);
//      end;
//      if trim(codigo.Text)='TARJETA DE CREDITO' then begin
//       coloca1(14);
//      end;
  end;
end;

procedure TVen_ServGer.OBSERVKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  if bguardar.Enabled then  bguardar.setfocus;
 end;
end;

procedure TVen_ServGer.OPERAExit(Sender: TObject);
var t,suma:integer;
begin
 if OPERA.ItemIndex < 0 then begin
    messagedlg('ERROR!! No Existe el Tipo de Operacion Ingresado!!',mterror,[mbok],0);
    OPERA.SetFocus;
 end
 else begin
  edit1.Text:=IdCombos[2,opera.ItemIndex];
  if (trim(edit1.Text)='2') OR (trim(edit1.Text)='5')  then begin  /// exhumacion
    cocherias.Enabled:=false;
    tipoobjeto.Enabled:=false;
    verificanp.Enabled:=false;
    coloca1(2);
    Coloca1(8);
    precioxn.SetFocus;
  end
  else begin
    cocherias.Enabled:=true;
    tipoobjeto.Enabled:=true;
    verificanp.Enabled:=true;
    cocherias.SetFocus;
  end;
 end;
end;

procedure TVen_ServGer.OPERAKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  edit1.Text:=IdCombos[2,opera.ItemIndex];
  if trim(edit1.Text)='2' then begin  /// exhumacion
   cocherias.Enabled:=false;
   tipoobjeto.Enabled:=false;
   verificanp.Enabled:=false;
   coloca1(2);
   precioxn.SetFocus
  end
  else begin
   cocherias.Enabled:=true;
   tipoobjeto.Enabled:=true;
   verificanp.Enabled:=true;
   cocherias.SetFocus;
  end;
 end;
end;

procedure TVen_ServGer.TIPOOBJETOExit(Sender: TObject);
begin
if TIPOOBJETO.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Operacion Ingresado!!',mterror,[mbok],0);
  TIPOOBJETO.SetFocus;
end
end;

procedure TVen_ServGer.TIPOOBJETOKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  VerificaNP.SetFocus;
 end
end;

procedure TVen_ServGer.verificaNPClick(Sender: TObject);
var    nroaccion:variant;
var    objeto:string;
var txtw:widestring;
begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  nroaccion:=trim(D1.Text);
  objeto:=leftstr(trim(tipoobjeto.text),1);
  txtw:='SELECT * FROM AsignaPosicionInhumados (' + nroaccion + ' , ' + chr(39) + objeto + chr(39) + ')';
  if not Funciones.Listar(txtw,DtCombo) then begin
   messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  end;
  nivel1.Text:=trim(DtCombo.Fields[0].AsString);
  posicion1.Text:=trim(DtCombo.Fields[1].AsString);
  Funciones.Free;
  if (trim(nivel1.Text) = '0') and (trim(posicion1.Text) = '0') then begin
   nivel1.Text:='3';
   posicion1.Text:='1';
  end;
  coloca1(2);
  nivel1.SetFocus;
  Coloca1(8);  //Carga los objetos
end;

procedure TVen_ServGer.DesactivarObjeto1Click(Sender: TObject);
var t,suma:integer;
begin
{  if trim(grillaobjetos.Cells[3,grillaobjetos.Row]) = 'X' then begin
    IF application.MessageBox('Desea Desactivar este Objeto de este Servicio!?','Advertencia'
      ,mb_OKcancel+mb_IconHAnd) = IdOk then begin
        grillaobjetos.Cells[3,grillaobjetos.Row]:='';
        tpopago.SetFocus;
    end
    else begin
        grillaobjetos.Cells[3,grillaobjetos.Row]:='X';
        tpopago.SetFocus;
    end;
  end;
       suma:=0;
       for t:=1 to grillaobjetos.RowCount-1 do begin
            if trim(grillaobjetos.Cells[3,t]) = 'X' then begin
               Trim(grillaobjetos.Cells[2,t]);
               suma:=suma+StrToInt(grillaobjetos.Cells[2,t]);
            end;
       end;                           
       dprecio.Text:=IntToStr(suma); }
end;

procedure TVen_ServGer.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var h:byte;
begin
 if (trim(DBGrid1.Fields[11].Text) = 'False')  then begin
  DBGrid1.Canvas.Brush.Color:=clLime;
  DBGrid1.Canvas.FillRect(Rect);
  DBGrid1.Canvas.Font.Color:= clBlack;
 end;
 if (trim(DBGrid1.Fields[11].Text) = 'True')  then begin    //(strtoint(DBGrid1.Fields[11].Text) < 15)  then begin
  DBGrid1.Canvas.Brush.Color:=clwindow;
  DBGrid1.Canvas.FillRect(Rect);
  DBGrid1.Canvas.Font.Color:= clBlack;
 end;
 if (trim(DBGrid1.Fields[14].Text) = 'True') then begin    //and (strtoint(DBGrid1.Fields[11].Text) > 15) then begin
  DBGrid1.Canvas.Brush.Color:=clYellow;
  DBGrid1.Canvas.FillRect(Rect);
  DBGrid1.Canvas.Font.Color:= clBlack;
 end;
 DBGrid1.DefaultDrawColumnCell(Rect,Datacol,Column,State);
end;

procedure TVen_ServGer.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then valcuota.setfocus //OBSERV.SetFocus
  else begin
    if ( StrScan('0123456789',Key) <> nil ) or
       ( Key = Char(VK_BACK) ) then
    else Key := #0;
  end;
  if tpopago.ItemIndex=0 then observ.Text:= TRIM(OPERA.Text) + ' - Pago Contado ' + NumToPesos(trim(valcuota.text)) + ' $' + trim(valcuota.text);
  if tpopago.ItemIndex=1 then observ.Text:=TRIM(OPERA.Text) + ' Anticipo de $ '+ trim(importee.Text) +' y Saldo de ' + NumToPesos(trim(saldo.text)) + ' $' + trim(saldo.text)
       + ' en ' + trim(edit2.text) + ' pagos iguales y consec. de $' + trim(valcuota.text);
  if tpopago.ItemIndex=2 then observ.Text:=TRIM(OPERA.Text) + ' - Pago segun CHEQUE ';
  if tpopago.ItemIndex=3 then observ.Text:=TRIM(OPERA.Text) + ' - Pago segun Tarjeta de Credito';
  if tpopago.ItemIndex=4 then observ.Text:= TRIM(OPERA.Text) + ' - Pago Cuenta Corriente ' + NumToPesos(trim(valcuota.text)) + ' $' + trim(valcuota.text);
  end;

  procedure TVen_ServGer.Edit2Exit(Sender: TObject);
  begin
  //if trim(codigo.Text)='FINANCIADO SIN INTERESES' then begin
  if trim(codigo.Text)='FINANCIADO' then begin
   coloca1(18);
   tipopago:=7;
  end;
  if trim(codigo.Text)='CONTADO'  then  begin // contado
   coloca1(15);
   tipopago:=2;
  end;
  //if trim(codigo.Text)='FINANCIADO CON INTERESES' then begin
  // coloca1(18);
  // tipopago:=8;
  //end;
  if trim(codigo.Text)='CHEQUE' then begin
   coloca1(14);
    tipopago:=4;
  end;
  if trim(codigo.Text)='TARJETA DE CREDITO' then begin
    coloca1(14);
    tipopago:=3;
  end;
  if trim(codigo.Text)='CUENTA CORRIENTE'  then  begin // contado
   coloca1(15);
   tipopago:=0;
  end;
  if tpopago.ItemIndex=0 then observ.Text:=TRIM(OPERA.Text) + ' - Pago Contado ' + NumToPesos(trim(valcuota.text)) + ' $' + trim(valcuota.text);
  if tpopago.ItemIndex=1 then observ.Text:=TRIM(OPERA.Text) + ' Anticipo de $ '+ trim(importee.Text) +' y  Saldo de ' + NumToPesos(trim(saldo.text)) + ' $' + trim(saldo.text)
   + ' en ' + trim(edit2.text) + ' pagos iguales y consec. de $' + trim(valcuota.text);
  if tpopago.ItemIndex=2 then observ.Text:=TRIM(OPERA.Text) + ' - Pago segun CHEQUE ';
  if tpopago.ItemIndex=3 then observ.Text:=TRIM(OPERA.Text) + ' - Pago segun Tarjeta de Credito';
  if tpopago.ItemIndex=4 then observ.Text:= TRIM(OPERA.Text) + ' - Pago Cuenta Corriente ' + NumToPesos(trim(valcuota.text)) + ' $' + trim(valcuota.text);
  GDatos.ActivePage:=GDatos.Pages[2];
  valcuota.SetFocus;
end;

procedure TVen_ServGer.Edit2Change(Sender: TObject);
begin
  //if trim(codigo.Text)='FINANCIADO SIN INTERESES' then begin
  if trim(codigo.Text)='FINANCIADO' then begin
   coloca1(18);
   tipopago:=7;
  end;
  if trim(codigo.Text)='CONTADO'  then  begin // contado
   coloca1(15);
   tipopago:=2;
  end;
  //if trim(codigo.Text)='FINANCIADO CON INTERESES' then begin
  // coloca1(18);
  // tipopago:=8;
  //end;
  if trim(codigo.Text)='CHEQUE' then begin
   coloca1(14);
    tipopago:=4;
  end;
  if trim(codigo.Text)='TARJETA DE CREDITO' then begin
    coloca1(14);
    tipopago:=3;
  end;
  if trim(codigo.Text)='CUENTA CORRIENTE'  then  begin // contado
   coloca1(15);
   tipopago:=0;
  end;
  if tpopago.ItemIndex=0 then observ.Text:=TRIM(OPERA.Text) + ' - Pago Contado ' + NumToPesos(trim(valcuota.text)) + ' $' + trim(valcuota.text);
  if tpopago.ItemIndex=1 then observ.Text:=TRIM(OPERA.Text) + ' Anticipo de $ '+ trim(importee.Text) +' y Saldo de ' + NumToPesos(trim(saldo.text)) + ' $' + trim(saldo.text)
  + ' en ' + trim(edit2.text) + ' pagos iguales y consec. de $' + trim(valcuota.text);
  if tpopago.ItemIndex=2 then observ.Text:=TRIM(OPERA.Text) + ' - Pago segun CHEQUE ';
  if tpopago.ItemIndex=3 then observ.Text:=TRIM(OPERA.Text) + ' - Pago segun Tarjeta de Credito';
  if tpopago.ItemIndex=4 then observ.Text:= TRIM(OPERA.Text) + ' - Pago Cuenta Corriente ' + NumToPesos(trim(valcuota.text)) + ' $' + trim(valcuota.text);
  bGuardar.Enabled:=true;
  GDatos.ActivePage:=GDatos.Pages[2];
end;

procedure TVen_ServGer.TARJETAExit(Sender: TObject);
begin
if TARJETA.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe la Tarjeta Ingresada!!',mterror,[mbok],0);
  TARJETA.SetFocus;
end;
end;

procedure TVen_ServGer.NroCuotaExit(Sender: TObject);
begin
if (trim(NroCuota.Text) = '') OR (trim(NroCuota.Text) = '00') OR (trim(NroCuota.Text) = '0') then begin
  messagedlgpos('Error!! Nro de Cuota Ingresado Incorrectamente.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  NroCuota.SetFocus;
end;
end;

procedure TVen_ServGer.NroCuotaKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then NroCb.SetFocus
else begin
  if ( StrScan('0123456789',Key) <> nil ) or    ( Key = Char(VK_BACK) ) then
   else Key := #0;
  end;
end;

procedure TVen_ServGer.NROCBKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then ftarje.SetFocus
 else begin
  if ( StrScan('0123456789.',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
   else Key := #0;
  end;
end;

procedure TVen_ServGer.NROCBExit(Sender: TObject);
begin
if (trim(NROCB.Text) = '') OR (trim(NROCB.Text) = '0') then begin
  messagedlgpos('Error!! Nro de Comprobante Ingresado Incorrectamente.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  NROCB.SetFocus;
end;
end;

procedure TVen_ServGer.TARJETAKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then tittarje.SetFocus;
end;

procedure TVen_ServGer.ftarjeExit(Sender: TObject);
var fec:Tdatetime;
begin
try
 fec:=strtodate(trim(ftarje.Text));
except
  messagedlgpos('La fecha es Erronea!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  ftarje.SetFocus;
end;
end;

procedure TVen_ServGer.ftarjeKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then edit3.SetFocus;
end;

procedure TVen_ServGer.Edit3Exit(Sender: TObject);
begin
 if (trim(Edit3.text)='') or (trim(Edit3.text)='0') then begin
  messagedlg('EL Valor Ingresado del Cheque No es Válido',mterror,[mbok],0);
  Edit3.text:='00000.00';
  Edit3.SetFocus;
 end
 else begin
//coloca1(14);
 end;
end;

procedure TVen_ServGer.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then OBSERV.SetFocus
  else begin
  if ( StrScan('0123456789.',Key) <> nil ) or  ( Key = Char(VK_BACK) ) then
   else Key := #0;
  end;
 observ.Text:=TRIM(OPERA.Text) + ' - Pago S/Tarjeta ' + trim(tarjeta.Text) + ' en ' +  trim(nrocuota.Text) + ' cuotas s/comprobante: ' + trim(nrocb.Text)
             + ' de fecha: ' + trim(ftarje.Text) + ' con importe de '+ trim(edit3.Text);
end;

procedure TVen_ServGer.bancoExit(Sender: TObject);
begin
if banco.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Banco Ingresada!!',mterror,[mbok],0);
  banco.SetFocus;
end;
end;

procedure TVen_ServGer.bancoKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then titcheq.SetFocus;
end;

procedure TVen_ServGer.titcheqKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then E1.SetFocus;
end;

procedure TVen_ServGer.E1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then E2.SetFocus
else begin
  if ( StrScan('ABCDEFGHIJKLMNÑOPQRSTUVWXYZ',Key) <> nil ) or  ( Key = Char(VK_BACK) ) then
   else Key := #0;
  end;
end;

procedure TVen_ServGer.E2Exit(Sender: TObject);
begin
if (trim(E2.Text) = '') OR (trim(E2.Text) = '000000000000') OR (trim(E2.Text) = '0') then begin
  messagedlgpos('Error!! Nro de Cheque Ingresado Incorrectamente.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  E2.SetFocus;
end;
end;

procedure TVen_ServGer.E2KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then fcheque.SetFocus
 else begin
  if ( StrScan('1234567890',Key) <> nil ) or  ( Key = Char(VK_BACK) ) then
   else Key := #0;
  end;
end;

procedure TVen_ServGer.FchequeExit(Sender: TObject);
var fec:Tdatetime;
begin
try
 fec:=strtodate(trim(Fcheque.Text));
except
  messagedlgpos('La fecha es Erronea!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  Fcheque.SetFocus;
end;
end;

procedure TVen_ServGer.FchequeKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then fpagocheque.SetFocus;
end;

procedure TVen_ServGer.fpagochequeExit(Sender: TObject);
var fec:Tdatetime;
begin
try
 fec:=strtodate(trim(fpagocheque.Text));
except
  messagedlgpos('La fecha es Erronea!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  fpagocheque.SetFocus;
end;
end;

procedure TVen_ServGer.fpagochequeKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then e5.SetFocus;
end;

procedure TVen_ServGer.E5Exit(Sender: TObject);
begin
 if (trim(E5.text)='') or (trim(E5.text)='0') then begin
  messagedlg('EL Valor Ingresado del Cheque No es Válido',mterror,[mbok],0);
  E5.text:='00000.00';
  E5.SetFocus;
 end
 else begin
 //coloca1(14);
 end;
end;

procedure TVen_ServGer.E5KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then observ.SetFocus
 else begin
  if ( StrScan('0123456789',Key) <> nil ) or  ( Key = Char(VK_BACK) ) then
  else Key := #0;
  end;
  observ.Text:=TRIM(OPERA.Text) + ' - Pago S/Cheque ' + trim(e1.Text) + '-' + trim(e2.Text)
  + ' de banco: ' +  trim(banco.Text)  + ' de fecha: ' + trim(fcheque.Text);
end;

procedure TVen_ServGer.BORRAClick(Sender: TObject);
var u,p:integer;
begin
 fecha.Text:=strcut(fec_system(),10);
 ce.Checked:=false;
 c4.Checked:=false;
 c6.Checked:=false;
 cb1.Checked:=false;
 d1.Clear; d2.Clear; d3.Clear;
 d4.Clear; d5.Clear; d6.Clear; d13.Clear;
 nrocredito.Text:='00000000';
 coef.Clear; interes.Clear; capital.Clear;
 intertot.Clear; intereses.Clear; total1.Clear;

 observ.Clear;
 banco.ItemIndex:=0;   titcheq.Clear;
 e1.Text:='A';         e2.Text:='000000000000';
 fcheque.Clear;        fpagocheque.Clear;
 e5.Text:='0000.00';   grupocheq.Enabled:=false;

 tarjeta.ItemIndex:=0;   tittarje.Clear;
 nrocuota.Text:='00';    nrocb.Text:='0';
 ftarje.Clear;           edit3.Text:='0000.00';
 grupotarje.Visible:=false;

 valcuota.Text:='0'; edit2.Text:='0';
 importe.Text:='0000.00';    importee.Text:='0000.00';
 saldo.Text:='0000.00';      precioche.Text:='0000.00';
 tpopago.ItemIndex:=0;       preciol.Text:='0000.00';
 precioxn.Text:='0000.00';
 nivel1.Clear; posicion1.Clear;   label71.Caption:='...';
 idserv.Clear; edit1.Clear;
 opera.ItemIndex:=0;

  for p:=0 to grillaobjetos.ColCount-1 do
    for u:=1 to grillaobjetos.RowCount-1 do grillaobjetos.Cells[p,u]:='';
  grillaobjetos.RowCount:=2;

  for p:=0 to grillat.ColCount-1 do
    for u:=1 to grillat.RowCount-1 do grillat.Cells[p,u]:='';
  grillat.RowCount:=2;

 for p:=0 to grilla5.ColCount-1 do
    for u:=1 to grilla5.RowCount-1 do grilla5.Cells[p,u]:='';
  grilla5.RowCount:=2;

  DataSource1.DataSet.Free;
  DataSource2.DataSet.Free;
  DataSource3.DataSet.Free;
  dtcombo.Free;
  PC1.ActivePage:=PC1.Pages[0];
  odni.Text:='00000000';
  bsalir.SetFocus;
 // bGuardar.Enabled:=true;
end;

procedure TVen_ServGer.tittarjeKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then nrocuota.SetFocus;
end;

procedure TVen_ServGer.titcheqExit(Sender: TObject);
begin
if trim(titcheq.Text) = '' then begin
  messagedlg('Error!! No hay Titular del Cheque Ingresado.',mterror,[mbok],0);
  titcheq.SetFocus
end;
end;

procedure TVen_ServGer.CODIGOChange(Sender: TObject);
begin
if trim(codigo.Text)='CONTADO' then tipopago:=2;
if trim(codigo.Text)='CHEQUE' then tipopago:=4;
if trim(codigo.Text)='TARJETA CREDITO' then tipopago:=3;
if trim(codigo.Text)='FINANCIADO' then tipopago:=7;
if trim(codigo.Text)='FINANCIADO CON INTERES' then tipopago:=8;
end;

procedure TVen_ServGer.RvSPrint(Sender: TObject);
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
    BaseReport.PrintXY(posx+4,posy+27,'Tipo:' + trim(opera.Text));
    BaseReport.PrintXY(posx+45,posy+27,'Objeto:' + trim(tipoobjeto.Text));
    BaseReport.PrintXY(posx+105,posy+27,'Nivel:' + trim(nivel1.Text));
    BaseReport.PrintXY(posx+165,posy+27,'Posicion:' + trim(posicion1.Text));
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
      BaseReport.RoundRect(posx+60,posy+11,posx+130,posy+16,5,5);
      BaseReport.PrintXY(posx+70,posy+15,'DATOS DEL SERVICIO');
      BaseReport.SetFont('Arial',9);
      BaseReport.PrintXY(posx+4,posy+20,'Nº Accion:');
      BaseReport.PrintXY(posx+40,posy+20,'Nº Titulo:');
      BaseReport.PrintXY(posx+75,posy+20,'Sector:');
      BaseReport.PrintXY(posx+95,posy+20,'Parcela:');
      BaseReport.PrintXY(posx+150,posy+20,'Plaza:');
      BaseReport.PrintXY(posx+4,posy+25,'Forma Pago:');
      BaseReport.PrintXY(posx+4,posy+30,'Observ.:');
      BaseReport.SetFont('Arial',7);
      BaseReport.PrintXY(posx+17,posy+30,trim(observ.Text));
      BaseReport.SetFont('Arial Black',8);
      BaseReport.PrintXY(posx+19,posy+20,trim(d1.Text));
      BaseReport.PrintXY(posx+53,posy+20,trim(d2.Text));
      BaseReport.PrintXY(posx+88,posy+20,trim(d3.Text));
      BaseReport.PrintXY(posx+110,posy+20,trim(d5.Text));
      BaseReport.PrintXY(posx+160,posy+20,trim(d4.Text));
      BaseReport.PrintXY(posx+25,posy+25,trim(tpopago.Text));

      posy:=posy + 25;
      BaseReport.RoundRect(posx+60,posy+11,posx+130,posy+16,5,5);
      BaseReport.PrintXY(posx+70,posy+15,'FORMA DE PAGO DEL SERVICIO');
      BaseReport.SetFont('Arial',9);
      BaseReport.PrintXY(posx+4,posy+20,'Saldo:');
      BaseReport.PrintXY(posx+70,posy+20,'Cant. Cuotas:');
      BaseReport.PrintXY(posx+100,posy+20,'Valor Coutas:');
      BaseReport.PrintXY(posx+150,posy+20,'Fecha Servicio:');
      BaseReport.SetFont('Arial Black',8);
      BaseReport.PrintXY(posx+22,posy+20,'$ ' +trim(saldo.Text));
      BaseReport.PrintXY(posx+90,posy+20,trim(edit2.Text));
      BaseReport.PrintXY(posx+123,posy+20,'$ ' + trim(valcuota.Text));
      BaseReport.PrintXY(posx+180,posy+20,trim(fecha.Text));
      if grupocheq.Visible then begin
       BaseReport.SetFont('Arial',9);
       BaseReport.PrintXY(posx+4,posy+25,'Banco:');
       BaseReport.PrintXY(posx+70,posy+25,'Titular:');
       BaseReport.PrintXY(posx+100,posy+25,'Nro Cheque:');
       BaseReport.PrintXY(posx+4,posy+30,'Fecha Cheque:');
       BaseReport.PrintXY(posx+70,posy+30,'Fecha Cobro:');
       BaseReport.PrintXY(posx+130,posy+30,'Importe:');
       BaseReport.SetFont('Arial Black',8);
       BaseReport.PrintXY(posx+22,posy+25,trim(banco.Text));
       BaseReport.PrintXY(posx+90,posy+25,trim(titcheq.Text));
       BaseReport.PrintXY(posx+123,posy+25,trim(e1.Text) + '-' + trim(e2.Text));
       BaseReport.PrintXY(posx+22,posy+30,trim(fcheque.Text));
       BaseReport.PrintXY(posx+90,posy+30,trim(fpagocheque.Text));
       BaseReport.PrintXY(posx+153,posy+30,'$ ' + trim(e5.Text));
      end;
      if grupotarje.Visible then begin
       BaseReport.SetFont('Arial',9);
       BaseReport.PrintXY(posx+4,posy+25,'Tarjeta:');
       BaseReport.PrintXY(posx+70,posy+25,'Titular:');
       BaseReport.PrintXY(posx+150,posy+25,'NroCuota:');
       BaseReport.PrintXY(posx+4,posy+30,'Comprobante:');
       BaseReport.PrintXY(posx+70,posy+30,'Fecha Cobro:');
       BaseReport.PrintXY(posx+140,posy+30,'Importe:');
       BaseReport.SetFont('Arial Black',8);
       BaseReport.PrintXY(posx+22,posy+25,trim(tarjeta.Text));
       BaseReport.PrintXY(posx+90,posy+25,trim(tittarje.Text));
       BaseReport.PrintXY(posx+180,posy+25,trim(nrocuota.Text));
       BaseReport.PrintXY(posx+25,posy+30,trim(nrocb.Text));
       BaseReport.PrintXY(posx+90,posy+30,trim(ftarje.Text));
       BaseReport.PrintXY(posx+153,posy+30,'$ ' + trim(edit3.Text));
      end;
      if (grupocheq.Visible) or (grupotarje.Visible) then begin posy:=posy + 25
      end else posy:=posy + 15;
      BaseReport.SetFont('Arial Black',8);
      BaseReport.RoundRect(posx+60,posy+11,posx+130,posy+16,5,5);
      BaseReport.PrintXY(posx+77,posy+15,'Lista de Titulares');
      BaseReport.Rectangle(posx+4,posy+18,posx+200,posy+22);
      BaseReport.SetFont('Arial',8);
      BaseReport.PrintXY(posx+5,posy+22,'TipoDoc');
      BaseReport.PrintXY(posx+18,posy+22,'Nº Dni');
      BaseReport.PrintXY(posx+35,posy+22,'Nombre');
      BaseReport.PrintXY(posx+95,posy+22,'Domicilio');
      BaseReport.PrintXY(posx+145,posy+22,'Telefonos');

      posn:=posy + 22;
      for j:=1  to GRILLAT.RowCount-1   do begin
       salto:=j*4;
       BaseReport.SetFont('Arial',8);
       BaseReport.PrintXY(posx+5,posn+salto,trim(GRILLAT.Cells[3,j]));
       BaseReport.PrintXY(posx+19,posn+salto,trim(GRILLAT.Cells[1,j]));
       BaseReport.PrintXY(posx+36,posn+salto,trim(GRILLAT.Cells[2,j]));
       BaseReport.PrintXY(posx+95,posn+salto,trim(GRILLAT.Cells[5,j]));
       BaseReport.PrintXY(posx+146,posn+salto,trim(GRILLAT.Cells[13,j]));
      end;
      posn:=posn + salto + 1;
      BaseReport.Rectangle(posx+4,posy+18,posx+200,posn);
      BaseReport.Rectangle(posx+17,posy+18,posx+200,posn);
      BaseReport.Rectangle(posx+34,posy+18,posx+200,posn);
      BaseReport.Rectangle(posx+94,posy+18,posx+200,posn);
      BaseReport.Rectangle(posx+144,posy+18,posx+200,posn);
    end;
   end;

begin
posfx:=6;posfy:=5;salto:=4;hoja:=1;
posfy:=Logo(posfx,posfy,hoja);
posfy:=Datos(posfx,posfy);
end;

procedure TVen_ServGer.VALCUOTAKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then recibonro.setfocus //OBSERV.SetFocus
else begin
  if ( StrScan('0123456789.',Key) <> nil ) or  ( Key = Char(VK_BACK) ) then
  else Key := #0;
end;
end;

procedure TVen_ServGer.recibonroKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then OBSERV.SetFocus;
end;

procedure TVen_ServGer.PrecioXnKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then preciol.setfocus//tpopago.SetFocus
 else begin
  if ( StrScan('0123456789.',Key) <> nil ) or   ( Key = Char(VK_BACK) ) then
  else Key := #0;
 end;
end;

procedure TVen_ServGer.PrecioLKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then precioche.setfocus//CODIGO.SetFocus
 else begin
  if ( StrScan('0123456789.',Key) <> nil ) or  ( Key = Char(VK_BACK) ) then
  else Key := #0;
 end;
end;

procedure TVen_ServGer.preciocheKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then tpopago.setfocus//CODIGO.SetFocus
 else begin
  if ( StrScan('0123456789.',Key) <> nil ) or   ( Key = Char(VK_BACK) ) then
  else Key := #0;
 end;
end;

procedure TVen_ServGer.cocheriasExit(Sender: TObject);
begin
  if cocherias.ItemIndex < 0 then begin
    messagedlg('ERROR!! No Existe la Cocheria Ingresado!!',mterror,[mbok],0);
    cocherias.SetFocus;
  end;
end;

procedure TVen_ServGer.cocheriasKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  tipoobjeto.SetFocus;
end
end;

procedure TVen_ServGer.nivel1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  posicion1.SetFocus;
end
end;

procedure TVen_ServGer.posicion1KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  coloca1(2);
  precioxn.SetFocus;
 end
end;

procedure TVen_ServGer.LasMutualesExit(Sender: TObject);
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
   InhuSinServ.ElIdServ:=IdCombos[5,lasmutuales.ItemIndex];
   InhuSinServ.ShowModal;
  finally
   odni.Text:=InhuSinServ.idinhu.Text;
   InhuSinServ.destroy;
  end;
  busca.SetFocus;
  busca.Click;
 end;
end;

procedure TVen_ServGer.LasMutualesKeyPress(Sender: TObject; var Key: Char);
begin
    busca.SetFocus;
end;

procedure TVen_ServGer.CheckBox1Click(Sender: TObject);
begin
 if CheckBox1.Checked  then begin
  lb1.Caption:='Seleccione la Mutual';
  ODNI.Visible:=false;
  lasmutuales.Visible:=true;
  lasmutuales.SetFocus;
 end
 else begin
  lb1.Caption:='Ingrese el N° de Acción:';
  ODNI.Visible:=true;
  lasmutuales.Visible:=false;
  ODNI.SetFocus;
 end;
end;

procedure TVen_ServGer.nivel1Exit(Sender: TObject);
begin
 if trim(nivel1.Text) = '' then begin
  messagedlg('Error!! No hay un Nivel Ingresado.',mterror,[mbok],0);
  nivel1.SetFocus
 end;
end;

procedure TVen_ServGer.posicion1Exit(Sender: TObject);
begin
 if trim(posicion1.Text) = '' then begin
  messagedlg('Error!! No hay una Posicion Ingresado.',mterror,[mbok],0);
  posicion1.SetFocus
 end
 else coloca1(2);
end;

end.

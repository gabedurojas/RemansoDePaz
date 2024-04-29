unit VEN_Parcelas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,DBClient, RpDefine, RpBase, RpSystem, DB, ComCtrls, ToolWin,
  ExtCtrls, StdCtrls, Grids, JvExGrids, JvStringGrid,
  JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  JvgGroupBox, JvExExtCtrls, JvExtComponent, JvPanel, Mask, DBCtrls,
  Buttons, JvExButtons, JvBitBtn, DBGrids, JvExDBGrids, JvDBGrid,
  ClaseParcelasVentas,ClaseParcelasVentasDeudas,ClaseParcelasTitulares,
  ClaseFunciones,StrUtils, WSDLIntf, Unidad, ClaseParcelas, LMDControl,
  LMDBaseControl, LMDBaseGraphicControl, LMDGraphicControl, LMDScrollText;

type LasFilas = array[1..2] of integer;
type HackTable = class(TClientDataSet);//       class(TADOTable);
type
  TVen_Parcela = class(TForm)
    Barra1: TStatusBar;
    DataSource1: TDataSource;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TJvDBGrid;
    todos: TRichEdit;
    LB1: TLabel;
    ODNI: TEdit;
    Busca: TJvBitBtn;
    DataSource2: TDataSource;
    FPago: TTabSheet;
    gb1: TGroupBox;
    Label11: TLabel;
    GDatos: TPageControl;
    TabSheet4: TTabSheet;
    GroupBox8: TGroupBox;
    Label18: TLabel;
    DBEdit4: TEdit;
    GroupBox7: TGroupBox;
    Label28: TLabel;
    Label29: TLabel;
    Label25: TLabel;
    DBEdit7: TEdit;
    DBEdit8: TEdit;
    DBEdit10: TEdit;
    TabSheet5: TTabSheet;
    GRILLA1: TDBGrid;
    TabSheet6: TTabSheet;
    DBGrid2: TDBGrid;
    DataSource3: TDataSource;
    DBEDIT9: TEdit;
    TabSheet9: TTabSheet;
    GroupBox1: TGroupBox;
    Label15: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    Label13: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    Label8: TLabel;
    D1: TDBEdit;
    D2: TDBEdit;
    D8: TDBEdit;
    Panel: TJvPanel;
    D4: TDBEdit;
    D6: TDBEdit;
    D3: TDBEdit;
    D5: TDBEdit;
    D13: TDBEdit;
    D14: TDBEdit;
    TabSheet2: TTabSheet;
    RvS: TRvSystem;
    GDetpago: TPageControl;
    TabSheet7: TTabSheet;
    SC1: TLMDScrollText;
    Label16: TLabel;
    BUSCAR: TJvBitBtn;
    TabSheet8: TTabSheet;
    grilla5: TStringGrid;
    DIG: TJvBitBtn;
    DBEdit1: TEdit;
    Label19: TLabel;
    Label20: TLabel;
    DBEdit2: TEdit;
    DBEdit3: TEdit;
    DBEdit5: TEdit;
    DBEdit6: TEdit;
    DBEdit11: TEdit;
    DBEdit12: TEdit;
    DBEdit13: TEdit;
    DBEdit14: TEdit;
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
    JvgGroupBox1: TJvgGroupBox;
    Label14: TLabel;
    DNI: TEdit;
    BCliente: TJvBitBtn;
    DPrecio: TEdit;
    Label2: TLabel;
    Label5: TLabel;
    IMPORTEE: TEdit;
    Label1: TLabel;
    FECHAE: TJvDatePickerEdit;
    JvgGroupBox3: TJvgGroupBox;
    RbCredito: TRadioButton;
    RBContado: TRadioButton;
    rbDonacion: TRadioButton;
    Label17: TLabel;
    Edit1: TEdit;
    Button2: TJvBitBtn;
    NIVEL: TComboBox;
    Label53: TLabel;
    Agrega2: TJvBitBtn;
    Modifica2: TJvBitBtn;
    Quita2: TJvBitBtn;
    Borra2: TJvBitBtn;
    GrillaT: TJvStringGrid;
    grupo1: TJvgGroupBox;
    JvgGroupBox4: TJvgGroupBox;
    Saldo: TEdit;
    Label12: TLabel;
    Label44: TLabel;
    CODIGO: TComboBox;
    FECHA: TJvDatePickerEdit;
    Label35: TLabel;
    Label37: TLabel;
    CUOTAS: TComboBox;
    Label52: TLabel;
    OBSERV: TEdit;
    VALCUOTA: TEdit;
    Label38: TLabel;
    IMPORTE: TEdit;
    Label36: TLabel;
    grupo6: TJvgGroupBox;
    JvgGroupBox5: TJvgGroupBox;
    NROCREDITO: TEdit;
    Label43: TLabel;
    CB1: TCheckBox;
    grupo7: TJvgGroupBox;
    Label33: TLabel;
    COEF: TEdit;
    Label34: TLabel;
    INTERES: TEdit;
    CAPITAL: TEdit;
    Label27: TLabel;
    Label32: TLabel;
    INTERESES: TEdit;
    Label31: TLabel;
    Label30: TLabel;
    INTERTOT: TEdit;
    TOTAL: TEdit;
    grillaformu: TJvStringGrid;
    ImprimirActa: TJvBitBtn;
    ImprimirClausular: TJvBitBtn;
    ImprimirGarantia: TJvBitBtn;
    ImprimirCesion: TJvBitBtn;
    ImprimirCarta: TJvBitBtn;
    ImprimeReglamento: TJvBitBtn;
    Image1: TImage;
    GroupBox2: TGroupBox;
    c4: TCheckBox;
    C6: TCheckBox;
    CE: TCheckBox;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BuscaClick(Sender: TObject);
    procedure JvBitBtn3Click(Sender: TObject);
    procedure bExportarClick(Sender: TObject);
    procedure ONOMBKeyPress(Sender: TObject; var Key: Char);
    procedure ODNIKeyPress(Sender: TObject; var Key: Char);
    procedure BClienteClick(Sender: TObject);
    //procedure Agrega2Click(Sender: TObject);
    //procedure Modifica2Click(Sender: TObject);
    //procedure GrillaTClick(Sender: TObject);
    //procedure DNITitKeyPress(Sender: TObject; var Key: Char);
    //procedure NivelKeyPress(Sender: TObject; var Key: Char);
    procedure IMPORTEEExit(Sender: TObject);
    procedure IMPORTEEKeyPress(Sender: TObject; var Key: Char);
    procedure FECHAEKeyPress(Sender: TObject; var Key: Char);
    procedure SaldoKeyPress(Sender: TObject; var Key: Char);
    procedure CODIGOExit(Sender: TObject);
    procedure CODIGOKeyPress(Sender: TObject; var Key: Char);
    procedure CUOTASExit(Sender: TObject);
    procedure CUOTASKeyPress(Sender: TObject; var Key: Char);
    procedure IMPORTEKeyPress(Sender: TObject; var Key: Char);
    procedure FECHAKeyPress(Sender: TObject; var Key: Char);
    procedure FECHAExit(Sender: TObject);
    procedure DIGClick(Sender: TObject);
    procedure DPrecioKeyPress(Sender: TObject; var Key: Char);
    procedure DPrecioExit(Sender: TObject);
    procedure DNIExit(Sender: TObject);
    procedure RBContadoKeyPress(Sender: TObject; var Key: Char);
    procedure RbCreditoKeyPress(Sender: TObject; var Key: Char);
    procedure RBContadoExit(Sender: TObject);
    procedure DNIKeyPress(Sender: TObject; var Key: Char);
    procedure bGuardarClick(Sender: TObject);
    procedure ImprimirActaClick(Sender: TObject);
    procedure Agrega2Click(Sender: TObject);
    procedure Modifica2Click(Sender: TObject);
    procedure Quita2Click(Sender: TObject);
    procedure Borra2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure GrillaTClick(Sender: TObject);
    procedure NIVELKeyPress(Sender: TObject; var Key: Char);
    procedure ImprimeReglamentoClick(Sender: TObject);
    procedure ImprimirCesionClick(Sender: TObject);
    procedure ImprimirClausularClick(Sender: TObject);
    procedure ImprimirGarantiaClick(Sender: TObject);
    procedure ImprimirCartaClick(Sender: TObject);
    procedure bSalirClick(Sender: TObject);
    Procedure SolicitudAdquisicion();
    procedure Cesion();
    procedure Clausulas();
    procedure Garantias();
    procedure Reglamento();
    procedure Carta();
    procedure RvSPrint(Sender: TObject);
  private
    gh:boolean;{Controla que no hubiere errores en la carga de datos}
    NroOpc:byte;{ Private declarations }
  public
    Adress,Name,NroDocu,TProfesion,TNacimiento,TNacion,Resultado: string;
    TTel,TCel,TTipo,TECivil,TCiudad,TEstado,TCP,TProvincia: string;
    // aca instancio la clase si la clase esta definida en el uses de la ventana
    Funciones:TFuncionesVarias;
    DtcomboC,DataSetC,DataSet:TClientDataSet; //declaro los DataSet
    IdCombos:array of array of string; // para los combobox
   ///// para la impresion de datos segun parametros
    PosH1:Array [0..9] of Double;//Posiciones
    Camp1:Array [0..9] of Integer;//Campos a Tomar en cuenta
    TxtCamp1:Array [0..9] of String;//Textos de los Campos a Tomar en cuenta
    TCuota,TCodigos,TColores:Unidad.TablaXML;
    Parcelas:TParcelas;
    ParcelasVentas:TParcelasVentas;
    ParcelasVentasDeudas:TParcelasVentasDeudas;
    ParcelasTitulares:TParcelasTitulares;
  end;

var
  Ven_Parcela: TVen_Parcela;

implementation

uses Modulo,Busqueda,AM_VenGenerica,ValidarArchivos,ClaseParcelasCoeficientes,
ClaseTiposCodigos;
{$R *.dfm}

procedure TVen_Parcela.FormActivate(Sender: TObject);
begin
if not gh then begin
  gh:=true;
  setlength(IdCombos,3);

  grilla5.Cells[0,0]:='N° Cuota';
  grilla5.Cells[1,0]:='Periodo Envio';
  grilla5.Cells[2,0]:='Periodo Cobro';
  grilla5.Cells[3,0]:='Capital';
  grilla5.Cells[4,0]:='Interes';
  grilla5.Cells[5,0]:='Importe Cuota';


  GrillaT.Cells[0,0]:='Orden';
  GrillaT.Cells[1,0]:='Id';
  GrillaT.Cells[2,0]:='Nombre';
  GrillaT.Cells[3,0]:='Dni';
  GrillaT.Cells[4,0]:='Domicilio';
  GrillaT.Cells[5,0]:='Nivel';
  GrillaT.Cells[6,0]:='NroT';
  GrillaT.Cells[7,0]:='MDF';
  GrillaT.Cells[8,0]:='Cuif';

  PC1.ActivePage:=PC1.Pages[0];
  PC1.Images:=modulo2.ImageList1;
  ODNI.SetFocus;
end;
end;

procedure TVen_Parcela.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TVen_Parcela.Coloca1(nro:byte);
var t,y:integer;
    txt,sex,VColor:string;
    txtw:widestring;
    NroAccion:variant;
    Param:TWideStrings;
    DataSetTit,DataSetInh,DtCombo:TClientDataSet;
    TColores:Unidad.TablaXML;
    TColorInt: integer;
    TiposCodigos:TTiposCodigos;
    Funciones:TFuncionesVarias;
    CuotasCoeficientes:TParcelasCoeficientes;
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
  if not Funciones.Run_Fn_VistaParcelasParaVenta(trim(ODNI.Text),DataSet,'',0) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
end;
if nro=3 then begin   /// Precio de Parcela Segun COLOR
  DataSetC.Free;
  datasetC:=TClientdataSet.Create(nil);
  DataSource3.DataSet:=DatasetC;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if not Funciones.Run_Fn_VistaParcelasPreciosColores(trim(D8.Text),trim(D3.Text),DataSetC,'',0) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
end;
if nro=4 then begin   /// Tipos de CODIGOS
  CODIGO.Clear;
  TCodigos:=LeeXML('TiposCodigos','');
  if length(TCodigos) <> 0 then begin
    SetLength(IdCombos[1],High(TCodigos[1]) + 1);
    for t:=0 to High(TCodigos[1])  do begin
      CODIGO.Items.Insert(t,TCodigos[1,t]);
      IdCombos[1,t]:=TCodigos[0,t];
    end;
  end
  else begin
    DtCombo.Free;
    Dtcombo:=TClientDataSet.Create(nil);
    TiposCodigos:=TTiposCodigos.Create(nil);
    TiposCodigos.ConnectionString:=modulo2.Conexion;
    Param:=TWideStrings.Create;
    Param.Add('');
    Param.Add('');
    Param.Add('');
    if TiposCodigos.ListarSP(Param,DtCombo,0) then begin //'SELECT Detalle,sexo FROM tipossexos ORDER BY Detalle'
      SetLength(IdCombos[1],DtCombo.RecordCount);
      for t:=1 to DtCombo.RecordCount  do begin
        DtCombo.RecNo:=t;
        CODIGO.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
        IdCombos[1,t-1]:=DtCombo.Fields[0].AsString;
      end;
    end
    else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    Param.Free;
    TiposCodigos.Free;
  end;
  CODIGO.ItemIndex:=0;
end;      
if nro=5 then begin //Combo CUOTAS
    CUOTAS.Clear;
    DtComboC.Free;
    DtcomboC:=TClientDataSet.Create(nil);
    CuotasCoeficientes:=TParcelasCoeficientes.Create(nil);
    CuotasCoeficientes.ConnectionString:=modulo2.Conexion;
    //txtw:='Select COUNT(*) AS cantcuotas FROM ParcelasCoeficientes '
    txtw:='SELECT  Id, Codigo, NroCuota, Coeficiente, InteresAplicado  FROM ParcelasCoeficientes '
    + 'WHERE (Codigo=' + IdCombos[1,CODIGO.ItemIndex] + ') ORDER BY Codigo,NroCuota';
    if CuotasCoeficientes.Listar(txtw,DtcomboC)  then begin
      SetLength(IdCombos[2],DtcomboC.RecordCount);
      for t:=1 to DtcomboC.RecordCount  do begin
        DtcomboC.RecNo:=t;
        CUOTAS.Items.Insert(t-1,trim(DtcomboC.Fields[2].AsString));
        IdCombos[2,t-1]:=DtcomboC.Fields[0].AsString;
      end;
    end
    else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  CUOTAS.ItemIndex:=0;
end;
if nro=7 then begin
//
end;

end;

procedure TVen_Parcela.DBGrid1CellClick(Column: TColumn);
begin
if not (DataSet.IsEmpty) then begin
  PC1.ActivePage:=PC1.Pages[1];
  D1.DataField:='NroAccion';
  D2.DataField:='NroTitulo';
  D3.DataField:='Sector';
  D4.DataField:='Detalle';
  D5.DataField:='Parcela';
  D6.DataField:='Activo';
  D8.DataField:='TipoColor';
  D13.DataField:='RazonSocial';
  //D14.DataField:='PrecioLista';
  Coloca1(0);  //Color de Parcela
  Coloca1(3);  //Precio
  Coloca1(4);  //Codigos de Financiacion
  //PC1.ActivePage:=PC1.Pages[2];
  if not (DataSetC.IsEmpty) then begin
   D14.DataField:='PrecioLista';
   DPrecio.TExT:=D14.text;
   SALDO.Text:=DPRECIO.Text;
   SALDO.Text:=DPRECIO.Text;
   IMPORTE.Text:=DPRECIO.Text;
  end;
  {if not (DataSetC.IsEmpty) then begin
   D14.DataField:='PrecioLista';
   DPrecio.TExT:=D14.text;
   SALDO.Text:=DPRECIO.Text;
   SALDO.Text:=DPRECIO.Text;
   IMPORTE.Text:=DPRECIO.Text;
  end;  }
  //DNI.SetFocus;
  bcliente.Click;
end;
end;

procedure TVen_Parcela.BuscaClick(Sender: TObject);
var p,u:integer;
begin
Coloca1(1);
if (Datasource1.DataSet.RecordCount = 0) then begin
  Barra1.Panels[0].Text:='Sin Datos en Grilla';
  IF application.MessageBox('PARCELA NO encontrado, !Desea Buscar otra Parcela!?','Advertencia'
    ,mb_OKcancel+mb_IconHAnd) = IdOk then begin
    PC1.Enabled:=true;
    ODNI.SetFocus;
  end
  else begin
    PC1.Enabled:=true;
    Barra1.Panels[0].Text:='La opcion Busqueda fue Cancelada';
    BUSCA.SetFocus;
  end;
end
else begin
  Barra1.Panels[1].Text:='Registos encontrados: ' + inttostr(Datasource1.DataSet.RecordCount);
  odni.SetFocus;
end;
end;

procedure TVen_Parcela.JvBitBtn3Click(Sender: TObject);
begin
Close;
end;

procedure TVen_Parcela.bExportarClick(Sender: TObject);
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

procedure TVen_Parcela.ONOMBKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then busca.SetFocus;

end;

procedure TVen_Parcela.ODNIKeyPress(Sender: TObject; var Key: Char);
begin
//if key = #13 then busca.SetFocus;
if key = #13 then begin
  busca.SetFocus;
end
else begin
  if ( StrScan('0123456789',Key) <> nil ) or
     ( Key = Char(VK_BACK) ) then
  else Key := #0;
end;
//if key = #13 then busca.SetFocus;
end;

procedure TVen_Parcela.BClienteClick(Sender: TObject);
var Busqueda:TLA_BUSQUEDA;
var t:integer;
begin
Busqueda:=TLA_BUSQUEDA.Create(self);
try
  Busqueda.NroOpcion:=3;
  Busqueda.ShowModal;
  DNI.Text:=busqueda.DB1.Text;
  DBEDIT8.Text:=busqueda.DB1.Text; //DNI
  DBEDIT9.Text:=busqueda.DB2.Text; //CUIF
  DBEDIT7.Text:=busqueda.DB4.Text; //Nombre
  DBEDIT10.Text:=busqueda.DB10.Text; //Nacimiento
  DBEDIT2.Text:=busqueda.DB3.Text;   //Tipo Doc
  DBEDIT4.Text:=busqueda.DB5.Text;   //Domicilio
  DBEDIT1.Text:=busqueda.DB7.Text;   //Ciudad
  DBEDIT11.Text:=busqueda.DB11.Text;   //Profesion
  DBEDIT3.Text:=busqueda.DB8.Text;       //Nacionalidad
  DBEDIT5.Text:=busqueda.DB7.Text;     //Provincia
  DBEDIT6.Text:=busqueda.DB9.Text;     //Estado Civil
  DBEDIT12.Text:='-- ------';             //Celular
  DBEDIT13.Text:='----- ------';          //Telefono
  DBEDIT14.Text:='3600';                //C.P.
    //Agrega Titular NIVEL 1
    t:=1;
    GrillaT.Cells[0,t]:=completa1(inttostr(t),2,'0'); //
    GrillaT.Cells[1,t]:='?';                          //
    GrillaT.Cells[2,t]:=trim(DBEDIT7.Text);           //Nombre
    GrillaT.Cells[3,t]:=trim(DBEDIT2.Text);           //Tipo
    GrillaT.Cells[4,t]:=trim(DNI.Text);               //DNI
    GrillaT.Cells[5,t]:=trim(DBEDIT4.Text);           //Domicilio
    GrillaT.Cells[6,t]:='1';                          //Nivel
    GrillaT.Cells[7,t]:=trim(DBEDIT1.Text);           //Ciudad
    GrillaT.Cells[8,t]:=trim(DBEDIT11.Text);          //Profesion
    GrillaT.Cells[9,t]:=trim(DBEDIT3.Text);           //Nacionalidad
    GrillaT.Cells[10,t]:=trim(DBEDIT14.Text);          //C.P.
    GrillaT.Cells[11,t]:=trim(DBEDIT8.Text);           //Estado Civil
    GrillaT.Cells[12,t]:=trim(DBEDIT13.Text);          //Telefono
    GrillaT.Cells[13,t]:=trim(DBEDIT12.Text);          //Celular
    GrillaT.Cells[14,t]:=trim(DBEDIT9.text);           //CUIF
    GrillaT.Cells[15,t]:=trim(DBEDIT10.text);           //Nacimiento
    GrillaT.Cells[16,t]:=trim(DBEDIT5.text);           //Provincia
    GrillaT.Cells[17,t]:='X';
finally
  Busqueda.Destroy;
  DPRECIO.SetFocus;
end;
end;

procedure TVen_Parcela.IMPORTEEExit(Sender: TObject);
var vSaldo:double;
begin
if trim(ImporteE.text)=''  then begin
  messagedlg('EL Valor Ingresado No es Válido',mterror,[mbok],0);
  ImporteE.SetFocus;
end
else begin
  If StrToFloat(trim(ImporteE.text)) > 0 then  Begin
    ce.Checked := TRUE;
    vSaldo:= strtofloat(DPRECIO.text)  -  strtofloat(IMPORTEE.text);
    //If StrToFloat(trim(ImporteE.text)) > 0 then
      rbCredito.Checked:=true;
      SALDO.Text:=FloatToStr(vsaldo);
      IMPORTE.Text:=FloatToStr(vsaldo);
  end
  else begin
  SALDO.Text:=trim(DPRECIO.text);
  end;
end;
end;

procedure TVen_Parcela.IMPORTEEKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  FECHAE.SetFocus;
end;
end;

procedure TVen_Parcela.FECHAEKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  rbContado.SetFocus;
end;
end;

procedure TVen_Parcela.SaldoKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then CODIGO.SetFocus
else begin
  if ( StrScan('0123456789.',Key) <> nil ) or
     ( Key = Char(VK_BACK) ) then
  else Key := #0;
end;
{if key = #13 then begin
  Key := #0;
  CODIGO.SetFocus;
end; }
end;

procedure TVen_Parcela.CODIGOExit(Sender: TObject);
begin
coloca1(5);
end;

procedure TVen_Parcela.CODIGOKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  FECHA.SetFocus;
end
end;

procedure TVen_Parcela.CUOTASExit(Sender: TObject);
var tot,imp,val1,val,dif,Monto:real;
    ElMes,ElAnio,ElDia,txt,elmesa,a:string;
    t,y,m:integer;
begin
//Borramos la grilla de Cuotas
  for t:=1 to grilla5.RowCount do
    for y:=0 to grilla5.ColCount-1 do grilla5.Cells[y,t]:='';
    grilla5.RowCount:=2;

  //Carga Grilla CUOTAS
  if  DtcomboC.RecordCount = 0 then begin
    messagedlgpos('ERROR!! No Existe el Coeficiente para la Cuota Ingresada!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
    CUOTAS.SetFocus;
  end
  else begin
    COEF.Text:=transforma(DtcomboC.Fields[3].AsString,chr(44),chr(46));
    INTERES.Text:=transforma(DtcomboC.Fields[4].AsString,chr(44),chr(46));
    try
      imp:=strtofloat(transforma(trim(IMPORTE.Text),chr(44),chr(46)));
    except
      imp:=strtofloat(transforma(trim(IMPORTE.Text),chr(46),chr(44)));
    end;
    tot:=imp * DtcomboC.Fields[3].AsFloat;
    Monto:=strtofloat(redondeo(floattostr(imp * DtcomboC.Fields[3].AsFloat),5));
    Monto:=Monto - (imp * strtofloat(INTERES.Text)/100);
    if monto > trunc(monto) then  monto:=trunc(monto)+1;
    CAPITAL.Text:=IMPORTE.Text;
    val:=imp * DtcomboC.Fields[4].AsFloat * strtoint(CUOTAS.Text) / 100;
    INTERESES.Text:=redondeo(floattostr(val),2);
    INTERTOT.Text:=floattostr(val + ((monto * strtoint(CUOTAS.Text)) - (tot * strtoint(CUOTAS.Text))));
    if (val + imp) > trunc(val + imp) then TOTAL.Text:=redondeo(floattostr(trunc(val + imp)+1),2)
       else TOTAL.Text:=redondeo(floattostr(val + imp),2);
    val1:=imp * DtcomboC.Fields[4].AsFloat / 100;
    if val1 > trunc(val1) then val1:=trunc(val1)+1;
    VALCUOTA.Text:=redondeo(floattostr(monto + val1),2);
    //Reglas de las Fechas
    ElMes:=strcut_midle(trim(FECHA.Text),4,5);
    ElAnio:=RightStr(trim(FECHA.Text),4);
    ElDia:=LeftStr(trim(FECHA.Text),2);
    //Calculamos las Cuotas y llenamos la grillas
    {grilla5.Cells[0,0]:='N° Cuota';
    grilla5.Cells[1,0]:='Periodo Envio';
    grilla5.Cells[2,0]:='Periodo Cobro';
    grilla5.Cells[3,0]:='Capital';
    grilla5.Cells[4,0]:='Interes';
    grilla5.Cells[5,0]:='Importe Cuota';}
    dif:=0;val:=0;
    for t:=1 to DtcomboC.RecordCount do begin
      grilla5.RowCount:=t+1;
      grilla5.Cells[0,t]:=completa1(inttostr(t),2,'0');
      txt:=FechaIncremento('10/' + ElMes + '/' + ElAnio,t);
      grilla5.Cells[1,t]:=RightStr(txt,4) + strcut_midle(txt,4,5);
      txt:=FechaIncremento('10/' + ElMes + '/' + ElAnio,t+1);
      grilla5.Cells[2,t]:=RightStr(txt,4) + strcut_midle(txt,4,5);
      grilla5.Cells[4,t]:=redondeo(floattostr(imp * DtcomboC.Fields[3].AsFloat /100),2);
      grilla5.Cells[3,t]:=redondeo(floattostr(monto),2); //Capital
      grilla5.Cells[5,t]:=redondeo(floattostr(monto + val1),2);
    end;
    bGuardar.Enabled:=true;
  end;
end;
procedure TVen_Parcela.CUOTASKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then OBSERV.SetFocus
else begin
  if ( StrScan('0123456789',Key) <> nil ) or
     ( Key = Char(VK_BACK) ) then
  else Key := #0;
end;
end;

procedure TVen_Parcela.IMPORTEKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then CUOTAS.SetFocus
else begin
  if ( StrScan('0123456789.',Key) <> nil ) or
     ( Key = Char(VK_BACK) ) then
  else Key := #0;
end;
end;

procedure TVen_Parcela.FECHAKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  CUOTAS.SetFocus;
end;
end;

procedure TVen_Parcela.FECHAExit(Sender: TObject);
var fec:Tdatetime;
begin
try
 fec:=strtodate(trim(FECHA.Text));
except
  messagedlgpos('La fecha es Erronea!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  FECHA.SetFocus;
end;
coloca1(7);
end;

procedure TVen_Parcela.DIGClick(Sender: TObject);
//var AM_CpTwain: TAM_CpTwain;
begin
{AM_CpTwain:= TAM_CpTwain.create(self);
try
  AM_CpTwain.D1.Text:=D1.Text;
  AM_CpTwain.D2.Text:=PUESTO.Text;
  AM_CpTwain.D4.Text:=D2.Text;
  AM_CpTwain.D5.Text:=DNI.Text;
  AM_CpTwain.D6.Text:=D4.Text;
  AM_CpTwain.ShowModal;
  Coloca1(1,'');
  //buscar.Enabled:=true;
  BUSCAR.Enabled:=false;

  if (inttostr(modulo2.num_usuario) = '4')  or (inttostr(modulo2.num_usuario) = '1') then begin
    BUSCAR.Enabled:=true;
    BUSCAR.SetFocus;
  end
  else begin
    if ExistenImagenes() then begin
      BUSCAR.Enabled:=true;
      BUSCAR.SetFocus;
    end
    else messagedlg('No existe digitalizado el Recibo de Sueldo!!',mtWarning,[mbok],0);
  end
finally
  AM_CpTwain.destroy;
end;}
end;

procedure TVen_Parcela.DPrecioKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  importee.SetFocus;
end
else begin
  if ( StrScan('0123456789.',Key) <> nil ) or
     ( Key = Char(VK_BACK) ) then
  else Key := #0;
end;
{if key = #13 then begin
  Key := #0;
  IMPORTEE.SetFocus;
end; }
end;


procedure TVen_Parcela.DPrecioExit(Sender: TObject);
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

procedure TVen_Parcela.DNIExit(Sender: TObject);
begin
if (trim(dni.Text)='' ) or (trim(dni.Text)='0') or (trim(dni.Text) = '00000000') then begin
  messagedlg('ERROR!!... El N° de DNI no puede tener el valor 0 (Cero)'
  ,mterror,[mbok],0);
  BCliente.Click;
end;
end;

procedure TVen_Parcela.RBContadoKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  //SALDO.SetFocus;
  CODIGO.Enabled:=true;
  CODIGO.text:='CONTADO';
  CUOTAS.Text:='1';
  bGUARDAR.setfocus;
end;
end;

procedure TVen_Parcela.RbCreditoKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  CODIGO.Enabled:=TRUE;
  Coloca1(4);
  Coloca1(5);
  FECHA.setfocus;
end;
end;

procedure TVen_Parcela.RBContadoExit(Sender: TObject);
var tot,imp,val1,val,dif,Monto:real;
    ElMes,ElAnio,ElDia,txt,elmesa,a:string;
    t,y,m:integer;
begin
      VALCUOTA.Text:=SALDO.Text;
      IMPORTE.Text:=SALDO.Text;
      VALCUOTA.Text:=SALDO.Text;
      t:=1;
      grilla5.RowCount:=t+1;
      grilla5.Cells[0,t]:='0';        // Nro
      grilla5.Cells[1,t]:=FECHA.text; //Fecha
      grilla5.Cells[2,t]:=FECHA.text; //Fecha
      grilla5.Cells[3,t]:=IMPORTE.Text; //Capital
      grilla5.Cells[4,t]:='0';          //Interes;
      grilla5.Cells[5,t]:=VALCUOTA.Text; //CUOTA
end;

procedure TVen_Parcela.DNIKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  if (trim(dni.Text)='' ) or (trim(dni.Text)='0') or (trim(dni.Text) = '00000000') then begin
  BCliente.Click;
end;
end;
end;

procedure TVen_Parcela.bGuardarClick(Sender: TObject);
var el_dni,ElId:string;
var ac,lafecha,ct:boolean;
var gf,t:integer;
begin
ParcelasVentas:=TParcelasVentas.Create(nil);
ParcelasVentas.ConnectionString:=modulo2.Conexion;
gf:=messagedlgpos('Desea Agregar los Datos de esta VENTA?',mtWarning,[
             mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
if gf = 1 then begin
  ParcelasVentas.C_NroAccion_IX1:=StrToInt(D1.Text);
  parcelasVEntas.C_CuentaCliente_IX2:=null;
  parcelasventas.C_Fecha_IX3:=fechae.Text;
  ParcelasVentas.C_PrecioReal:=StrToFloat(D14.Text);
  ParcelasVentas.C_PorcentajeDescuento:=0;
  ParcelasVentas.C_MontoDescuento:=0;
  ParcelasVentas.C_MontoPagado:=StrToFloat(IMPORTEE.Text);
  ParcelasVentas.C_DeudaPendiente:=StrToFloat(SALDO.Text);
  If rbDonacion.Checked then ParcelasVentas.C_Donacion:=True
  else ParcelasVentas.C_Donacion:=False;
  If rbContado.Checked then ParcelasVentas.C_Financiado:=True
  else ParcelasVentas.C_Financiado:=False;
  ParcelasVentas.C_CantCuotas:=StrToInt(CUOTAS.Text);
  ParcelasVentas.C_ValorCuota:=StrToFloat(VALCUOTA.Text);
  ParcelasVentas.C_ComisionVenta:=0;
  ParcelasVentas.C_CuifVendedor_IX4:=null;
  ParcelasVentas.C_Observaciones:=trim(OBSERV.text);
  ParcelasVentas.C_Confirmado:=False;
  ParcelasVentas.C_FechaConfirma_IX5:='';
  ParcelasVentas.C_UsuConfirma:=null;
  ParcelasVentas.C_Anulado:=False;
  ParcelasVentas.C_FechaAnula_IX6:='';
  ParcelasVentas.C_UsuAnula:=null;
  ParcelasVentas.C_MotivoAnula:='';
  ParcelasVentas.C_Usu_A:=modulo2.nro_usu;
  ParcelasVentas.C_IdCuentaPar:=null;
  ac:=ParcelasVentas.Agrega;
  ElId:=ParcelasVentas.Identidad;
  ParcelasVentas.Free;
  if ac then begin
    for t:=1 to Grilla5.RowCount-1 do begin
      ParcelasVentasDeudas:=TParcelasVentasDeudas.Create(nil);
      ParcelasVentasDeudas.ConnectionString:=modulo2.Conexion;
      ParcelasVentasDeudas.C_IdDeuda_PK:=strtoint(ElId);
      //ParcelasVentasDeudas.C_IdVenta_IX1:=strtoint(ElId);
      ParcelasVentasDeudas.C_NroCuota:=strtoint(trim(Grilla5.Cells[0,t]));
      ParcelasVentasDeudas.C_Periodo_IX3:=Grilla5.Cells[1,t];
      //ParcelasVentasDeudas.C_Periodo_IX2:=Grilla5.Cells[1,t];
      //ParcelasVentasDeudas.C_FechaVencimiento_IX3:=trim(Grilla5.Cells[2,t]);
      ParcelasVentasDeudas.C_FechaVencimiento_IX4:=trim(Grilla5.Cells[2,t]);
      ParcelasVentasDeudas.C_Monto:=StrtoFloat(IMPORTE.Text);
      ParcelasVentasDeudas.C_Interes:=StrtoFloat(trim(Grilla5.Cells[4,t]));
      ParcelasVentasDeudas.C_Capital:=StrtoFloat(trim(Grilla5.Cells[3,t]));
      ParcelasVentasDeudas.C_EnMovimientos:=False;
      ParcelasVentasDeudas.C_Capital:=StrtoFloat(IMPORTE.Text);
      ParcelasVentasDeudas.C_DetalleCuota:='';
      ParcelasVentasDeudas.C_BloqueoMonto:=False;
      ParcelasVentasDeudas.C_Usu_A:=(modulo2.nro_usu);
      ct:=ParcelasVentasDeudas.Agrega;
      ParcelasVentasDeudas.Free;
    end;
    messagedlg('Se ha Guardado la nueva VENTA con Exito',mtConfirmation,[mbok],0);
    borra.Click;
    PC1.Enabled:=false;
  end
  else begin
    messagedlg('Error al Guardar esta VENTA. Consulte con un Administrador',mtError,[mbok],0);
  end;
end;
end;

procedure TVen_Parcela.ImprimirActaClick(Sender: TObject);
var gf:integer;
begin
gf:=messagedlgpos('Desea Imprimir la SOLICITUD DE ADQUISICION correspondiente?'
    ,mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
if gf = 1 then begin
  NroOpc:=1;
  RvS.Execute;
end;
end;

procedure TVen_Parcela.Agrega2Click(Sender: TObject);
var t:integer;

  function busca():boolean;
    var p:integer;
  begin
    busca:=true;
  if GrillaT.Cells[0,1] <> '' then begin
    for p:=1 to GrillaT.RowCount-1 do
      if (GrillaT.Cells[2,p]=trim(name))
      and (GrillaT.Cells[3,p]=trim(nrodocu))
      and (GrillaT.Cells[5,p]=trim(NIVEL.Text))
      then busca:=false;
  end;
  end;

begin
if busca() then begin
  if (GrillaT.RowCount > 1) and (trim(GrillaT.Cells[0,1])<>'') then begin
    t:=GrillaT.RowCount;
    GrillaT.RowCount:=GrillaT.RowCount+1;
  end
  else t:=1;
  if  GrillaT.RowCount = 5 then begin
    messagedlg('Error No se Puede seguir ingresando Titulares ',mtError,[mbok],0);
    GrillaT.Cells[0,t]:='';
    GrillaT.Cells[1,t]:='';
    GrillaT.Cells[2,t]:='';
    GrillaT.Cells[3,t]:='';
    GrillaT.Cells[4,t]:='';
    GrillaT.Cells[5,t]:='';
    GrillaT.Cells[6,t]:='';
    GrillaT.Cells[7,t]:='';
    GrillaT.Cells[8,t]:='';
    GrillaT.Cells[9,t]:='';
    GrillaT.Cells[10,t]:='';
    GrillaT.Cells[11,t]:='';
    GrillaT.Cells[12,t]:='';
    GrillaT.Cells[13,t]:='';
    GrillaT.Cells[14,t]:='';
    GrillaT.Cells[15,t]:='';
    GrillaT.Cells[16,t]:='';
    GrillaT.RowCount:=GrillaT.RowCount-1;
  end
  else begin
    GrillaT.Cells[0,t]:=completa1(inttostr(t),2,'0'); //
    GrillaT.Cells[1,t]:='?';                          //
    GrillaT.Cells[2,t]:=trim(name);             //Nombre
    GrillaT.Cells[3,t]:=trim(TTipo);            //Tipo
    GrillaT.Cells[4,t]:=trim(nrodocu);          //DNI
    GrillaT.Cells[5,t]:=trim(Adress);           //Domicilio
    GrillaT.Cells[6,t]:=trim(NIVEL.text);       //Nivel
    GrillaT.Cells[7,t]:=trim(DBEDIT1.Text);     //Ciudad
    GrillaT.Cells[8,t]:=trim(TProfesion);       //Profesion
    GrillaT.Cells[9,t]:=trim(TNacion);          //Nacionalidad
    GrillaT.Cells[10,t]:=trim(TCP);             //C.P.
    GrillaT.Cells[11,t]:=trim(TEstado);         //Estado Civil
    GrillaT.Cells[12,t]:=trim(TTel);            //Telefono
    GrillaT.Cells[13,t]:=trim(TCel);            //Celular
    GrillaT.Cells[14,t]:=trim(edit1.text);      //CUIF
    GrillaT.Cells[15,t]:=trim(TProvincia);      //Nacimiento
    GrillaT.Cells[16,t]:=trim(TNacimiento);      //Provincia
    GrillaT.Cells[17,t]:='X';
    C4.Checked:=true;
  end;
  if modifica2.Enabled = false then Agrega2.Enabled:=true;
  Agrega2.Enabled:=FALSE;
  EDIT1.Text:='00000000000';
  name:='';
  nrodocu:='';
  adress:='';
end
else messagedlg('ERROR!! No Puede Existir dos Titulares del mismo NIVEL!!',mterror,[mbok],0);
Button2.SetFocus;
end;

procedure TVen_Parcela.Modifica2Click(Sender: TObject);

  function busca(ht:integer):boolean;
    var p:integer;
  begin
    busca:=true;
  if GrillaT.Cells[0,1] <> '' then begin
    for p:=1 to GrillaT.RowCount-1 do
      if (GrillaT.Cells[2,p]=trim(name))
      and (GrillaT.Cells[3,p]=trim(nrodocu))
      and (GrillaT.Cells[5,p]=trim(NIVEL.Text))
      and (ht<>p) then busca:=false;
  end;
  end;

begin
if busca(GrillaT.Row) then begin
  if GrillaT.Cells[1,GrillaT.Row] <> '?' then begin
    //C6.Checked:=false;
    GrillaT.Cells[15,GrillaT.Row]:='X';
  end;
  GrillaT.Cells[2,GrillaT.Row]:=trim(name);
  GrillaT.Cells[3,GrillaT.Row]:=trim(nrodocu);
  GrillaT.Cells[4,GrillaT.Row]:=trim(adress);
  GrillaT.Cells[5,GrillaT.Row]:=trim(NIVEL.text);
  GrillaT.Cells[6,GrillaT.Row]:=trim(IdCombos[3,NIVEL.ItemIndex]);
  GrillaT.Cells[8,GrillaT.Row]:=trim(edit1.text);
  C4.Checked:=true;
  Agrega2.Enabled:=false;
  Borra2.Enabled:=false;
  Modifica2.Enabled:=false;
  //GUARDA.Enabled:=true;
  button2.SetFocus;
end
else messagedlg('ERROR!! No Puede Existir dos Clientes con el mismo NIVEL!!',mterror,[mbok],0);
end;

procedure TVen_Parcela.Quita2Click(Sender: TObject);
begin
EDIT1.Text:='00000000000';
NIVEL.ItemIndex:=0;
name:='';
nrodocu:='';
adress:='';
Modifica2.Enabled:=false;
Borra2.Enabled:=false;
Agrega2.Enabled:=true;
Quita2.Enabled:=false;
end;

procedure TVen_Parcela.Borra2Click(Sender: TObject);
var t,p,gf:integer;
var bt:boolean;
begin
if trim(GrillaT.Cells[0,1])<>'' then begin
  gf:=1;t:=0;
  if GrillaT.Cells[1,GrillaT.Row] = '?' then t:=1
  else gf:=messagedlg('Desea Borrar los datos del Titular Seleccionado??' + chr(13)
       + 'Se eliminará definitivamente de la Base de Datos',mtWarning,[mbok,mbCancel],0);
  if gf = 1 then begin
    if t=0 then begin
      ParcelasTitulares:=TParcelasTitulares.Create(nil);
      ParcelasTitulares.ConnectionString:=modulo2.Conexion;

      bt:=ParcelasTitulares.Borrar(GrillaT.Cells[1,GrillaT.Row]);
      ParcelasTitulares.Free;
      if bt then  begin
         messagedlg('Se ha Borrado el Testigo Correctamente',mtConfirmation,[mbok],0);
          Barra1.SimpleText:='Se ha Borrado el Testigo Correctamente';
      end
      else begin
         messagedlg('Error al Borrar el Titular. Consulte con un Administrador',mtError,[mbok],0);
         Barra1.SimpleText:='Error al Borrar el Titular';
      end;
    end;
    t:=GrillaT.Row;
    if (t >= 1) and (GrillaT.RowCount > 2) then begin
      //THackStringGrid(GrillaT).DeleteRow(t);
    end
    else begin
      for t:=0 to GrillaT.ColCount-1 do GrillaT.Cells[t,1]:='';
    end;
  end;
  Borra2.Enabled:=false;
  Modifica2.Enabled:=false;
  button2.SetFocus;
end;
end;

procedure TVen_Parcela.Button2Click(Sender: TObject);
var Busqueda:TLA_BUSQUEDA;
begin
  Busqueda:=TLA_BUSQUEDA.Create(self);
  try
    Busqueda.NroOpcion:=3;
    Busqueda.ShowModal;
    NroDocu:=busqueda.DB1.Text;         //DNI
    edit1.Text:=busqueda.DB2.Text;     //CUIF
    name:=busqueda.DB4.Text;           //Nombre
    adress:=busqueda.DB5.Text;         //Domicilio
    TNacimiento:=busqueda.DB10.Text; //Nacimiento
    TTipo:=busqueda.DB3.Text;   //Tipo Doc
    TCiudad:=busqueda.DB7.Text;   //Ciudad
    TProfesion:=busqueda.DB11.Text;   //Profesion
    TNacion:=busqueda.DB8.Text;       //Nacionalidad
    TECivil:=busqueda.DB9.Text;       //Estado Civil
    TCel:='-- ------';                //Celular
    TTel:='----- ------';             //Telefono
  finally
    Busqueda.Destroy;
    NIVEL.SetFocus;
  end;
end;

procedure TVen_Parcela.GrillaTClick(Sender: TObject);
begin
Agrega2.Enabled:=false;
Borra2.Enabled:=true;
Quita2.Enabled:=true;
Modifica2.Enabled:=true;
edit1.Text:=trim(GrillaT.Cells[10,GrillaT.Row]);
NIVEL.ItemIndex:=NIVEL.Items.IndexOf(trim(GrillaT.Cells[5,GrillaT.Row]));
button2.SetFocus;
end;

procedure TVen_Parcela.NIVELKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
      Agrega2.Enabled:=true;
      Agrega2.SetFocus;
end;
end;

procedure TVen_Parcela.ImprimeReglamentoClick(Sender: TObject);
var gf:integer;
begin
gf:=messagedlgpos('Desea Imprimir el REGLAMENTO INTERNO?'
    ,mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
if gf = 1 then begin
  NroOpc:=5;
  RvS.Execute;
end;

end;

procedure TVen_Parcela.ImprimirCesionClick(Sender: TObject);
var gf:integer;
begin
gf:=messagedlgpos('Desea Imprimir la CESION Y TRANSFERENCIA DE ACCIONES?'
    ,mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
if gf = 1 then begin
  NroOpc:=2;
  RvS.Execute;
end;
end;

procedure TVen_Parcela.ImprimirClausularClick(Sender: TObject);
var gf:integer;
begin
gf:=messagedlgpos('Desea Imprimir las CLAUSULAS PARTICULARES?'
    ,mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
if gf = 1 then begin
  NroOpc:=3;
  RvS.Execute;
end;
end;

procedure TVen_Parcela.ImprimirGarantiaClick(Sender: TObject);
var gf:integer;
begin
gf:=messagedlgpos('Desea Imprimir la CONSTITUCION DE GARANTIA?'
    ,mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
if gf = 1 then begin
  NroOpc:=4;
  RvS.Execute;
end;
end;

procedure TVen_Parcela.ImprimirCartaClick(Sender: TObject);
var gf:integer;
begin
gf:=messagedlgpos('Desea Imprimir la CARTA DE CESION?'
    ,mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
if gf = 1 then begin
  NroOpc:=6;
  RvS.Execute;
end;
end;

procedure TVen_Parcela.bSalirClick(Sender: TObject);
begin
Close;
end;


Procedure TVen_Parcela.SolicitudAdquisicion();
var posx,posy:double;
    t,hoja:integer;
    Imagen1:TBitmap;
    PathLogo:string;
    ElMes,ElAnio,ElDia,txt:string;
begin
posx:=1;posy:=2;hoja:=1;
with RvS do begin
  Imagen1 := TBitMap.Create;
  PathLogo:=modulo2.path_todo + '\Formularios\FRM-01-01.jpg';
  if FileExists(PathLogo) then begin
    Image1.Picture.LoadFromFile(PathLogo);
    Imagen1.Assign(Image1.Picture.Graphic);
    BaseReport.PrintBitmapRect(1,1,posx+215,posy+290,Imagen1);
  end;
  Imagen1.Free;

  ElMes:=el_mes(strtoint(strcut_midle(FECHA.Text,4,5)));
  ElAnio:=strcut_midle(FECHA.Text,7,10);
  ElDia:=LeftStr(FECHA.Text,2);

  BaseReport.SetFont('Arial Black',8);
  BaseReport.FontColor:=clRED;

  BaseReport.PrintXY(posx+143,posy+31,ElDia);
  BaseReport.PrintXY(posx+154,posy+31,ElMes);
  BaseReport.PrintXY(posx+195,posy+31,ElAnio);     

  BaseReport.PrintXY(posx+37,posy+39,trim(DBEdit7.text));     //Nombre
  BaseReport.PrintXY(posx+159,posy+39,trim(DBEdit2.text));    //Tipo
  BaseReport.PrintXY(posx+178,posy+39,trim(DBEdit8.text));    //Nro Doc
  BaseReport.PrintXY(posx+38,posy+44,trim(DBEdit4.text));    //Domicilio
  BaseReport.PrintXY(posx+150,posy+44,trim(DBEdit1.text));   //Ciudad
  BaseReport.PrintXY(posx+113,posy+66,trim(D4.text));   //Plaza
  BaseReport.PrintXY(posx+174,posy+66,trim(D3.text));   //Sector
  BaseReport.PrintXY(posx+14,posy+71,trim(D5.text));    //Parcela
  BaseReport.PrintXY(posx+23,posy+76,'.');               //Zona
  BaseReport.PrintXY(posx+57,posy+76,trim(D8.text));     //Categoria
  BaseReport.PrintXY(posx+89,posy+76,'.');               //Calificada
  BaseReport.PrintXY(posx+114,posy+76,'.');              //Plan

  //Titular Nivel 1
  BaseReport.PrintXY(posx+78,posy+87,trim(DBEdit7.text));     //Nombre
  BaseReport.PrintXY(posx+194,posy+87,trim(DBEdit2.text));    //Tipo
  BaseReport.PrintXY(posx+19,posy+92,trim(DBEdit8.text));    //Nro Doc
  BaseReport.PrintXY(posx+68,posy+92,trim(DBEdit3.text));    //Nacionalidad
  BaseReport.PrintXY(posx+132,posy+92,trim(DBEdit6.text));    //Estado Civil
  BaseReport.PrintXY(posx+175,posy+92,trim(DBEdit10.text));    //Fecha Nacimiento
  BaseReport.PrintXY(posx+26,posy+98,trim(DBEdit4.text));    //Domicilio
  BaseReport.PrintXY(posx+117,posy+98,trim(DBEdit1.text));   //Ciudad
  BaseReport.PrintXY(posx+164,posy+98,trim(DBEdit1.text));   //Provincia
  BaseReport.PrintXY(posx+197,posy+98,'3600');               //C.P.
  BaseReport.PrintXY(posx+28,posy+103,trim(DBEdit1.text));   //Teléfono
  BaseReport.PrintXY(posx+71,posy+103,trim(DBEdit1.text));   //Celular
  BaseReport.PrintXY(posx+130,posy+103,trim(DBEdit11.text));  //Profesion
  for t:=2 to GrillaT.RowCount-1 do begin
    if  t=2 then begin
     //Titular Nivel 2
      BaseReport.PrintXY(posx+97,posy+109,TRIM(GrillaT.Cells[2,t]));     //Nombre
      BaseReport.PrintXY(posx+196,posy+109,TRIM(GrillaT.Cells[3,t]));    //Tipo
      BaseReport.PrintXY(posx+19,posy+114,TRIM(GrillaT.Cells[4,t]));    //Nro Doc
      BaseReport.PrintXY(posx+68,posy+114,TRIM(GrillaT.Cells[9,t]));    //Nacionalidad
      BaseReport.PrintXY(posx+132,posy+114,TRIM(GrillaT.Cells[11,t]));    //Estado Civil
      BaseReport.PrintXY(posx+175,posy+114,TRIM(GrillaT.Cells[15,t]));    //Fecha Nacimiento
      BaseReport.PrintXY(posx+28,posy+119,TRIM(GrillaT.Cells[5,t]));    //Domicilio
      BaseReport.PrintXY(posx+117,posy+119,TRIM(GrillaT.Cells[7,t]));   //Ciudad
      BaseReport.PrintXY(posx+162,posy+119,TRIM(GrillaT.Cells[16,t]));   //Provincia
      BaseReport.PrintXY(posx+195,posy+119,TRIM(GrillaT.Cells[10,t]));               //C.P.
      BaseReport.PrintXY(posx+28,posy+125,TRIM(GrillaT.Cells[12,t]));   //Teléfono
      BaseReport.PrintXY(posx+71,posy+125,TRIM(GrillaT.Cells[13,t]));   //Celular
      BaseReport.PrintXY(posx+130,posy+125,TRIM(GrillaT.Cells[8,t]));  //Profesion
    end;
    if  t=3 then begin
     //Titular Nivel 3
      BaseReport.PrintXY(posx+97,posy+130,TRIM(GrillaT.Cells[2,t]));     //Nombre
      BaseReport.PrintXY(posx+196,posy+130,TRIM(GrillaT.Cells[3,t]));    //Tipo
      BaseReport.PrintXY(posx+19,posy+135,TRIM(GrillaT.Cells[4,t]));    //Nro Doc
      BaseReport.PrintXY(posx+68,posy+135,TRIM(GrillaT.Cells[9,t]));    //Nacionalidad
      BaseReport.PrintXY(posx+132,posy+135,TRIM(GrillaT.Cells[11,t]));    //Estado Civil
      BaseReport.PrintXY(posx+175,posy+135,TRIM(GrillaT.Cells[15,t]));    //Fecha Nacimiento
      BaseReport.PrintXY(posx+28,posy+140,TRIM(GrillaT.Cells[5,t]));    //Domicilio
      BaseReport.PrintXY(posx+117,posy+140,TRIM(GrillaT.Cells[7,t]));   //Ciudad
      BaseReport.PrintXY(posx+162,posy+140,TRIM(GrillaT.Cells[16,t]));   //Provincia
      BaseReport.PrintXY(posx+195,posy+140,TRIM(GrillaT.Cells[10,t]));               //C.P.
      BaseReport.PrintXY(posx+28,posy+147,TRIM(GrillaT.Cells[12,t]));   //Teléfono
      BaseReport.PrintXY(posx+71,posy+147,TRIM(GrillaT.Cells[13,t]));   //Celular
      BaseReport.PrintXY(posx+130,posy+147,TRIM(GrillaT.Cells[8,t]));  //Profesion
    end;
  end;
  //Importe Venta
  BaseReport.PrintXY(posx+25,posy+157,NumToPesos(trim(DPrecio.text))); //Precio Letras
  BaseReport.PrintXY(posx+157,posy+157,trim(DPrecio.text));            //Precio Numero

  //Anticipo
  BaseReport.PrintXY(posx+25,posy+167,NumToPesos(trim(IMPORTE.text))); //Precio Letras
  BaseReport.PrintXY(posx+157,posy+167,trim(IMPORTE.text));            //Precio Numero

  //Saldo
  BaseReport.PrintXY(posx+25,posy+178,NumToPesos(trim(SALDO.text))); //Precio Letras
  BaseReport.PrintXY(posx+157,posy+178,trim(SALDO.text));            //Precio Numero
  BaseReport.PrintXY(posx+95,posy+250,trim(DBEdit7.text));

  BaseReport.SetFont('Arial',7);
  BaseReport.FontColor:=clBlack;
  BaseReport.PrintXY(posx+157,posy+275,' ------- ORIGINAL -------');
     {
     hoja:=hoja+1;
     RvCON.BaseReport.NewPage;
     posfy:=Imagen(posfx,posfy,hoja);

     RvCON.BaseReport.SetFont('Arial',7);
     RvCON.BaseReport.FontColor:=clBlack;
     RvCON.BaseReport.PrintXY(posfx+157,posfy+275,' ------- DUPLICADO -------');
     }
end;
end;


procedure TVen_Parcela.Cesion();
var posx,posy:double;
    ElMes,ElAnio,ElDia: string;
    t,hoja:integer;
    Imagen1:  TBitmap;
    PathLogo:string;
begin
posx:=1;posy:=2;hoja:=1;
with RvS do begin
  Imagen1 := TBitMap.Create;
  PathLogo:=modulo2.path_todo + '\Formularios\FRM-02-01.jpg';
  if FileExists(PathLogo) then begin
    Image1.Picture.LoadFromFile(PathLogo);
    Imagen1.Assign(Image1.Picture.Graphic);
    BaseReport.PrintBitmapRect(1,1,posx+215,posy+290,Imagen1);
  end;
  Imagen1.Free;

  ElMes:=el_mes(strtoint(strcut_midle(FECHA.Text,4,5)));
  ElAnio:=strcut_midle(FECHA.Text,7,10);
  ElDia:=LeftStr(FECHA.Text,2);

  BaseReport.SetFont('Arial Black',8);
  BaseReport.FontColor:=clRED;
  BaseReport.PrintXY(posx+149,posy+30,ElDia);
  BaseReport.PrintXY(posx+178,posy+30,ElMes);
  BaseReport.PrintXY(posx+16,posy+34,ElAnio);
  BaseReport.PrintXY(posx+27,posy+44,trim(DBEdit7.text));     //Nombre
  BaseReport.PrintXY(posx+159,posy+44,trim(DBEdit2.text));    //Tipo
  BaseReport.PrintXY(posx+178,posy+44,trim(DBEdit8.text));    //Nro Doc
  BaseReport.PrintXY(posx+30,posy+48,trim(DBEdit4.text));    //Domicilio
  BaseReport.PrintXY(posx+177,posy+48,trim(DBEdit1.text));   //Ciudad
  BaseReport.PrintXY(posx+30,posy+52,trim(DBEdit1.text));   //Provincia

  //Importe Venta
  BaseReport.PrintXY(posx+108,posy+84,NumToPesos(trim(DPrecio.text))); //Precio Letras
  BaseReport.PrintXY(posx+15,posy+88,trim(DPrecio.text));            //Precio Numero
  BaseReport.PrintXY(posx+155,posy+94,trim(D1.text));    //Titulo
  BaseReport.PrintXY(posx+85,posy+98,trim(D2.text));    //Accion
  BaseReport.PrintXY(posx+113,posy+102,trim(D4.text));   //Plaza
  BaseReport.PrintXY(posx+174,posy+102,trim(D3.text));   //Sector
  BaseReport.PrintXY(posx+12,posy+106,trim(D5.text));   //Parcela

  for t:=1 to GrillaT.RowCount-1 do begin
    if  t=1 then BaseReport.PrintXY(posx+85,posy+234,TRIM(GrillaT.Cells[2,t]));     //Nombre 1º Cesionario
    if  t=2 then BaseReport.PrintXY(posx+150,posy+234,TRIM(GrillaT.Cells[2,t]));     //Nombre 2º Cesionario
  end;
end;
end;


procedure TVen_Parcela.Clausulas();
var posx,posy:double;
    t,hoja:integer;
    ElMes,ElAnio,ElDia: string;
    Imagen1:  TBitmap;
    PathLogo:string;
begin
posx:=1;posy:=2;hoja:=1;
with RvS do begin
  Imagen1 := TBitMap.Create;
  PathLogo:=modulo2.path_todo + '\Formularios\FRM-03-01.jpg';
  if FileExists(PathLogo) then begin
    Image1.Picture.LoadFromFile(PathLogo);
    Imagen1.Assign(Image1.Picture.Graphic);
    BaseReport.PrintBitmapRect(1,1,posx+215,posy+290,Imagen1);
  end;
  Imagen1.Free;

  ElMes:=el_mes(strtoint(strcut_midle(FECHA.Text,4,5)));
  ElAnio:=strcut_midle(FECHA.Text,7,10);
  ElDia:=LeftStr(FECHA.Text,2);

  BaseReport.SetFont('Arial Black',8);
  BaseReport.FontColor:=clRED;
  BaseReport.PrintXY(posx+147,posy+32,ElDia);
  BaseReport.PrintXY(posx+177,posy+32,ElMes);
  BaseReport.PrintXY(posx+15,posy+35,ElAnio);

  BaseReport.PrintXY(posx+43,posy+35,trim(DBEdit7.text));     //Nombre
  BaseReport.PrintXY(posx+166,posy+35,trim(DBEdit2.text));    //Tipo
  BaseReport.PrintXY(posx+184,posy+35,trim(DBEdit8.text));    //Nro Doc
  BaseReport.PrintXY(posx+60,posy+38,trim(DBEdit4.text));    //Domicilio
  BaseReport.PrintXY(posx+30,posy+42,trim(DBEdit1.text));   //Ciudad
  BaseReport.PrintXY(posx+163,posy+42,trim(D2.text));    //Accion
  BaseReport.PrintXY(posx+50,posy+46,trim(D1.text));    //Titulo
  BaseReport.PrintXY(posx+29,posy+50,trim(D4.text));   //Plaza
  BaseReport.PrintXY(posx+82,posy+50,trim(D3.text));   //Sector
  BaseReport.PrintXY(posx+108,posy+50,trim(D5.text));   //Parcela
  BaseReport.PrintXY(posx+42,posy+215,ElDia);
  BaseReport.PrintXY(posx+55,posy+215,ElMes);
  BaseReport.PrintXY(posx+93,posy+215,ElAnio);
  for t:=1 to GrillaT.RowCount-1 do begin
    if  t=1 then BaseReport.PrintXY(posx+20,posy+250,TRIM(GrillaT.Cells[2,t]));     //Nombre 1º Cesionario
    if  t=2 then BaseReport.PrintXY(posx+140,posy+250,TRIM(GrillaT.Cells[2,t]));     //Nombre 2º Cesionario
  end;
end;
end;


procedure TVen_Parcela.Garantias();
var posx,posy:double;
    hoja:integer;
    ElMes,ElAnio,ElDia: string;
    Imagen1:  TBitmap;
    PathLogo:string;
begin
posx:=1;posy:=2;hoja:=1;
with RvS do begin
  Imagen1 := TBitMap.Create;
  PathLogo:=modulo2.path_todo + '\Formularios\FRM-06-01.jpg';
  if FileExists(PathLogo) then begin
    Image1.Picture.LoadFromFile(PathLogo);
    Imagen1.Assign(Image1.Picture.Graphic);
    BaseReport.PrintBitmapRect(1,1,posx+215,posy+290,Imagen1);
  end;
  Imagen1.Free;

  ElMes:=el_mes(strtoint(strcut_midle(FECHA.Text,4,5)));
  ElAnio:=strcut_midle(FECHA.Text,7,10);
  ElDia:=LeftStr(FECHA.Text,2);

  BaseReport.SetFont('Arial Black',8);
  BaseReport.FontColor:=clRED;
  BaseReport.PrintXY(posx+185,posy+28,'XXXX');
  BaseReport.PrintXY(posx+96,posy+36,ElDia);
  BaseReport.PrintXY(posx+126,posy+36,ElMes);
  BaseReport.PrintXY(posx+173,posy+36,ElAnio);
  BaseReport.PrintXY(posx+10,posy+41,trim(DBEdit7.text));     //Nombre
  BaseReport.PrintXY(posx+33,posy+41,trim(DBEdit2.text));    //Tipo
  BaseReport.PrintXY(posx+153,posy+41,trim(DBEdit8.text));    //Nro Doc
  BaseReport.PrintXY(posx+10,posy+44,trim(DBEdit3.text));    //Nacionalidad
  BaseReport.PrintXY(posx+65,posy+44,trim(DBEdit6.text));    //Estado Civil
  BaseReport.PrintXY(posx+113,posy+44,trim(DBEdit4.text));    //Domicilio
  BaseReport.PrintXY(posx+33,posy+47,trim(DBEdit1.text));   //Ciudad
  BaseReport.PrintXY(posx+10,posy+52,trim(D2.text));    //Accion
  BaseReport.PrintXY(posx+82,posy+52,trim(D1.text));    //Titulo
  BaseReport.PrintXY(posx+60,posy+55,trim(D4.text));   //Plaza
  BaseReport.PrintXY(posx+122,posy+55,trim(D3.text));   //Sector
  BaseReport.PrintXY(posx+143,posy+55,trim(D5.text));   //Parcela
  BaseReport.PrintXY(posx+91,posy+62,ElDia);
  BaseReport.PrintXY(posx+103,posy+62,ElMes);
  BaseReport.PrintXY(posx+135,posy+62,ElAnio);

  //Importe Venta
  BaseReport.PrintXY(posx+10,posy+68,NumToPesos(trim(DPrecio.text))); //Precio Letras
  BaseReport.PrintXY(posx+113,posy+68,trim(DPrecio.text));            //Precio Numero
  BaseReport.PrintXY(posx+10,posy+98,'AYACUCHO Nº 160');
  BaseReport.PrintXY(posx+126,posy+98,'FORMOSA');
  BaseReport.PrintXY(posx+60,posy+102,TRIM(GrillaT.Cells[2,2])); //NOMBRE FIADOR
  BaseReport.PrintXY(posx+60,posy+102,TRIM(GrillaT.Cells[3,2])); //Tipo DOC FIADOR
  BaseReport.PrintXY(posx+60,posy+102,TRIM(GrillaT.Cells[4,2])); //NRO DOC FIADOR

  //CESIONARIO
  BaseReport.PrintXY(posx+73,posy+130,trim(DBEdit7.text));     //Nombre
  BaseReport.PrintXY(posx+10,posy+134,trim(DBEdit4.text));    //Domicilio
  BaseReport.PrintXY(posx+105,posy+134,trim(DBEdit1.text));   //Ciudad

  //FIADOR
  BaseReport.PrintXY(posx+150,posy+134,TRIM(GrillaT.Cells[2,2])); //NOMBRE FIADOR
  BaseReport.PrintXY(posx+35,posy+138,TRIM(GrillaT.Cells[5,2])); //DOMICILIO FIADOR
  BaseReport.PrintXY(posx+140,posy+138,TRIM(GrillaT.Cells[7,2])); //CIUDAD FIADOR
  BaseReport.PrintXY(posx+43,posy+145,'AYACUCHO Nº 160');
  BaseReport.PrintXY(posx+151,posy+145,'FORMOSA');

  //Saldo
  //BaseReport.PrintXY(posx+25,posy+178,NumToPesos(trim(SALDO.text))); //Precio Letras
  //BaseReport.PrintXY(posx+157,posy+178,trim(SALDO.text));            //Precio Numero

  BaseReport.PrintXY(posx+35,posy+178,trim(DBEdit7.text));     //Nombre
  BaseReport.PrintXY(posx+135,posy+178,TRIM(GrillaT.Cells[2,2])); //NOMBRE FIADOR
  BaseReport.PrintXY(posx+165,posy+204,trim(DPrecio.text));            //Precio Numero
  BaseReport.PrintXY(posx+43,posy+226,NumToPesos(trim(DPrecio.text))); //Precio Letras
  BaseReport.PrintXY(posx+30,posy+246,trim(DBEdit7.text));     //Nombre
  BaseReport.PrintXY(posx+30,posy+253,trim(DBEdit4.text));    //Domicilio
  BaseReport.PrintXY(posx+30,posy+260,trim(DBEdit1.text));   //Ciudad
  BaseReport.PrintXY(posx+30,posy+268,trim(DBEdit13.text));   //Telefono
end;
end;


procedure TVen_Parcela.Reglamento();
var posx,posy:double;
    t,hoja:integer;
    Imagen1:  TBitmap;
    Fuente,PathLogo:string;
begin
posx:=1;posy:=2;hoja:=1;
with RvS do begin
  Imagen1 := TBitMap.Create;
  PathLogo:=modulo2.path_todo + '\Formularios\FRM-04-01.jpg';
  if FileExists(PathLogo) then begin
    Image1.Picture.LoadFromFile(PathLogo);
    Imagen1.Assign(Image1.Picture.Graphic);
    BaseReport.PrintBitmapRect(1,1,posx+215,posy+290,Imagen1);
  end;
  Imagen1.Free;

  BaseReport.NewPage;
  hoja:=hoja+1;

  Imagen1 := TBitMap.Create;
  PathLogo:=modulo2.path_todo + '\Formularios\FRM-04-02.jpg';
  if FileExists(PathLogo) then begin
    Image1.Picture.LoadFromFile(PathLogo);
    Imagen1.Assign(Image1.Picture.Graphic);
    BaseReport.PrintBitmapRect(1,1,posx+215,posy+290,Imagen1);
    for t:=1 to GrillaT.RowCount-1 do begin
      if  t=1 then BaseReport.PrintXY(posx+20,posy+262,TRIM(GrillaT.Cells[2,t]));     //Nombre 1º Cesionario
      if  t=2 then BaseReport.PrintXY(posx+85,posy+262,TRIM(GrillaT.Cells[2,t]));     //Nombre 2º Cesionario
      if  t=3 then BaseReport.PrintXY(posx+155,posy+262,TRIM(GrillaT.Cells[2,t]));     //Nombre 3º Cesionario
    end;
  end;
  Imagen1.Free;
end;
end;

procedure TVen_Parcela.Carta();
var posx,posy:double;
    hoja:integer;
    ElMes,ElAnio,ElDia: string;
    Imagen1:  TBitmap;
    PathLogo:string;
begin
posx:=1;posy:=2;hoja:=1;
with RvS do begin
  Imagen1 := TBitMap.Create;
  PathLogo:=modulo2.path_todo + '\Formularios\FRM-05-01.jpg';
  if FileExists(PathLogo) then begin
    Image1.Picture.LoadFromFile(PathLogo);
    Imagen1.Assign(Image1.Picture.Graphic);
    BaseReport.PrintBitmapRect(1,1,posx+215,posy+290,Imagen1);
  end;
  Imagen1.Free;

  ElMes:=el_mes(strtoint(strcut_midle(FECHA.Text,4,5)));
  ElAnio:=strcut_midle(FECHA.Text,7,10);
  ElDia:=LeftStr(FECHA.Text,2);

  BaseReport.SetFont('Arial Black',8);
  BaseReport.FontColor:=clRED;
  BaseReport.PrintXY(posx+147,posy+21,ElDia);
  BaseReport.PrintXY(posx+152,posy+21,ElMes);
  BaseReport.PrintXY(posx+191,posy+21,ElAnio);
  BaseReport.PrintXY(posx+106,posy+72,trim(DBEdit7.text));     //Nombre
  BaseReport.PrintXY(posx+50,posy+80,trim(DBEdit2.text));    //Tipo
  BaseReport.PrintXY(posx+65,posy+80,trim(DBEdit8.text));    //Nro Doc
  BaseReport.PrintXY(posx+115,posy+80,trim(DBEdit4.text));    //Domicilio
  BaseReport.PrintXY(posx+121,posy+89,ElDia);
  BaseReport.PrintXY(posx+133,posy+89,ElMes);
  BaseReport.PrintXY(posx+175,posy+89,ElAnio);
  BaseReport.PrintXY(posx+91,posy+120,trim(D2.text));    //Accion
  BaseReport.PrintXY(posx+151,posy+145,trim(D1.text));    //Titulo
  BaseReport.PrintXY(posx+165,posy+153,trim(D4.text));   //Plaza
  BaseReport.PrintXY(posx+43,posy+160,trim(D3.text));   //Sector
  BaseReport.PrintXY(posx+72,posy+160,trim(D5.text));   //Parcela
  BaseReport.PrintXY(posx+110,posy+251,trim(DBEdit7.text));     //Nombre
end;
end;

procedure TVen_Parcela.RvSPrint(Sender: TObject);
begin
if NroOpc = 1 then SolicitudAdquisicion;
if NroOpc = 2 then Cesion;
if NroOpc = 3 then Clausulas;
if NroOpc = 4 then Garantias;
if NroOpc = 5 then Reglamento;
if NroOpc = 6 then Carta;
end;

end.

unit AM_Servicios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,DBClient, RpDefine, RpBase, RpSystem, DB, ComCtrls, ToolWin,
  ExtCtrls, StdCtrls,  Grids, JvExGrids, JvStringGrid,
  JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  JvgGroupBox, JvExExtCtrls, JvExtComponent, JvPanel, Mask, DBCtrls,
  Buttons, JvExButtons, JvBitBtn, DBGrids, JvExDBGrids, JvDBGrid,
  ClaseParcelasServicios,  ClaseParcelasServiciosDeudas,ClaseParcelasServiciosDetalle,
  ClaseParcelasTitulares, ClaseFunciones,StrUtils, WSDLIntf, Unidad, ClaseParcelas, ClaseParcelasInhumados,
  ClaseTiposCodigos,ClaseParcelasCoeficientes,ClaseTiposCaracter;

type LasFilas = array[1..2] of integer;
type HackTable = class(TClientDataSet);//       class(TADOTable);
type
  TAM_Servicio = class(TForm)
    Barra1: TStatusBar;
    DataSource1: TDataSource;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TJvDBGrid;
    todos: TRichEdit;
    Busca: TJvBitBtn;
    DataSource2: TDataSource;
    FPago: TTabSheet;
    gb1: TGroupBox;
    Label11: TLabel;
    GDatos: TPageControl;
    TabSheet4: TTabSheet;
    GroupBox7: TGroupBox;
    Label28: TLabel;
    Label29: TLabel;
    Label25: TLabel;
    DBEdit7: TEdit;
    DBEdit10: TEdit;
    TabSheet5: TTabSheet;
    GRILLA1: TDBGrid;
    TabSheet6: TTabSheet;
    DBInhumados: TDBGrid;
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
    Label8: TLabel;
    D1: TDBEdit;
    D2: TDBEdit;
    D8: TDBEdit;
    Panel: TJvPanel;
    D4: TDBEdit;
    D6: TDBEdit;
    D3: TDBEdit;
    D5: TDBEdit;
    D14: TDBEdit;
    TabSheet2: TTabSheet;
    RvS: TRvSystem;
    Label20: TLabel;
    DBEdit2: TEdit;
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
    Label14: TLabel;
    DNI: TEdit;
    BCliente: TJvBitBtn;
    DPrecio: TEdit;
    Label2: TLabel;
    Label5: TLabel;
    IMPORTEE: TEdit;
    Label1: TLabel;
    FECHAE: TJvDatePickerEdit;
    JvgGroupBox4: TJvgGroupBox;
    GrillaFormu: TJvStringGrid;
    ImprimirActa: TJvBitBtn;
    ImprimirClausulas: TJvBitBtn;
    ImprimirGarantia: TJvBitBtn;
    ImprimirCesion: TJvBitBtn;
    ImprimirCarta: TJvBitBtn;
    ImprimirReglamento: TJvBitBtn;
    Image1: TImage;
    GroupBox2: TGroupBox;
    c4: TCheckBox;
    C6: TCheckBox;
    CE: TCheckBox;
    JvgGroupBox6: TJvgGroupBox;
    OPERA: TComboBox;
    JvgGroupBox7: TJvgGroupBox;
    TabSheet3: TTabSheet;
    DBGInh: TJvDBGrid;
    DBEdit4: TEdit;
    Label18: TLabel;
    JvgGroupBox1: TJvgGroupBox;
    TIPOOBJETO: TComboBox;
    Label10: TLabel;
    nivel1: TEdit;
    Label17: TLabel;
    posicion1: TEdit;
    Label71: TLabel;
    Label19: TLabel;
    SERVICIO: TComboBox;
    Label21: TLabel;
    JvgGroupBox2: TJvgGroupBox;
    Label53: TLabel;
    OBJETOS: TComboBox;
    Agrega2: TJvBitBtn;
    Modifica2: TJvBitBtn;
    GrillaObjetos: TJvStringGrid;
    Borra2: TJvBitBtn;
    Quita2: TJvBitBtn;
    GDetpago: TPageControl;
    TabSheet7: TTabSheet;
    Label16: TLabel;
    grupo1: TJvgGroupBox;
    Label12: TLabel;
    Label44: TLabel;
    Label35: TLabel;
    Label37: TLabel;
    Label52: TLabel;
    Label38: TLabel;
    Saldo: TEdit;
    CODIGO: TComboBox;
    FECHA: TJvDatePickerEdit;
    CUOTAS: TComboBox;
    OBSERV: TEdit;
    VALCUOTA: TEdit;
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
    TOTAL: TEdit;
    grupo6: TJvgGroupBox;
    Label33: TLabel;
    Label34: TLabel;
    COEF: TEdit;
    INTERES: TEdit;
    TabSheet8: TTabSheet;
    grilla5: TStringGrid;
    Label22: TLabel;
    CARACTER: TComboBox;
    LB1: TLabel;
    ODNI: TEdit;
    verificaNP: TJvBitBtn;
    JvgGroupBox3: TJvgGroupBox;
    Label23: TLabel;
    OBJETO1: TComboBox;
    Agrega: TJvBitBtn;
    Modifica: TJvBitBtn;
    GrillaObjetos1: TJvStringGrid;
    JvBitBtn3: TJvBitBtn;
    JvBitBtn4: TJvBitBtn;
    DBEDIT8: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BuscaClick(Sender: TObject);
    procedure bExportarClick(Sender: TObject);
    procedure ONOMBKeyPress(Sender: TObject; var Key: Char);
    procedure ODNIKeyPress(Sender: TObject; var Key: Char);
    procedure BClienteClick(Sender: TObject);
    procedure IMPORTEEExit(Sender: TObject);
    procedure IMPORTEEKeyPress(Sender: TObject; var Key: Char);
    procedure FECHAEKeyPress(Sender: TObject; var Key: Char);
    procedure SaldoKeyPress(Sender: TObject; var Key: Char);
    procedure CODIGOExit(Sender: TObject);
    procedure CODIGOKeyPress(Sender: TObject; var Key: Char);
    procedure CUOTASExit(Sender: TObject);
    procedure CUOTASKeyPress(Sender: TObject; var Key: Char);
    procedure OPERAExit(Sender: TObject);
    procedure OPERAKeyPress(Sender: TObject; var Key: Char);
    procedure verificaNPClick(Sender: TObject);
    procedure SERVICIOExit(Sender: TObject);
    procedure SERVICIOKeyPress(Sender: TObject; var Key: Char);
    procedure CARACTERExit(Sender: TObject);
    procedure CARACTERKeyPress(Sender: TObject; var Key: Char);
    procedure TIPOOBJETOExit(Sender: TObject);
    procedure TIPOOBJETOKeyPress(Sender: TObject; var Key: Char);
    procedure bSalirClick(Sender: TObject);
    procedure AgregaClick(Sender: TObject);
    procedure DPrecioKeyPress(Sender: TObject; var Key: Char);
    procedure DPrecioExit(Sender: TObject);
    procedure bGuardarClick(Sender: TObject);
    procedure OBJETO1KeyPress(Sender: TObject; var Key: Char);
  private
    gh:boolean;{Controla que no hubiere errores en la carga de datos}
    //NroOpc:byte;{ Private declarations }
  public
    Adress,Name,NroDocu,TProfesion,TNacimiento,TNacion,Resultado: string;
    TTel,TCel,TTipo,TECivil,TCiudad,TEstado,TCP,TProvincia: string;
    NroNivel,NroServicio:integer;
    // aca instancio la clase si la clase esta definida en el uses de la ventana
    Funciones:TFuncionesVarias;
    DataSetCli,Dtcombo,DtcomboC,DataSetC,DataSet:TClientDataSet; //declaro los DataSet
    IdCombos:array of array of string; // para los combobox
    ///// para la impresion de datos segun parametros
    PosH1:Array [0..9] of Double;//Posiciones
    Camp1:Array [0..9] of Integer;//Campos a Tomar en cuenta
    TxtCamp1:Array [0..9] of String;//Textos de los Campos a Tomar en cuenta
    TCodigos,TColores:Unidad.TablaXML;
    TServicios:Unidad.TablaXML;
    ParcelasServicios:TParcelasServicios;
    ParcelasServiciosDeudas:TParcelasServiciosDeudas;
    ParcelasServiciosDetalle:TParcelasServiciosDetalle;
    Parcelas:TParcelas;
    ParcelasTitulares:TParcelasTitulares;
    ParcelasInhumados:TParcelasInhumados;
    TiposCaracter:TTiposCaracter;
  end;

var
  AM_Servicio: TAM_Servicio;

implementation

uses Modulo,Busqueda,AM_VenGenerica,ClaseTiposServicios;

{$R *.dfm}

procedure TAM_Servicio.FormActivate(Sender: TObject);
begin
if not gh then begin
  gh:=true;
  setlength(IdCombos,6);
  grilla5.Cells[0,0]:='N° Cuota';
  grilla5.Cells[1,0]:='Periodo Envio';
  grilla5.Cells[2,0]:='Periodo Cobro';
  grilla5.Cells[3,0]:='Capital';
  grilla5.Cells[4,0]:='Interes';
  grilla5.Cells[5,0]:='Importe Cuota';
  grilla5.Cells[6,0]:='FechaVto';
  GrillaFormu.Cells[0,0]:='Formulario';
  GrillaFormu.Cells[1,0]:='Detalle';
  GrillaFormu.Cells[2,0]:='Imprime?';
  GrillaFormu.Cells[3,0]:='Copias';
  GrillaFormu.Cells[4,0]:='Selecc.';
  Coloca1(7);  //Carga OPERACIONES
  //Coloca1(10); //Carga FORMULARIOS
  PC1.ActivePage:=PC1.Pages[0];
  PC1.Images:=modulo2.ImageList1;
  ODNI.SetFocus;
end;
end;

procedure TAM_Servicio.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TAM_Servicio.Coloca1(nro:byte);
var t,y:integer;
    VColor:string;
    txtw:widestring;
    NroGestion,NroAccion:variant;
    Param:TWideStrings;
    TColores:Unidad.TablaXML;
    TiposCodigos:TTiposCodigos;
    TiposServicios:TTiposServicios;
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
if nro=2 then begin  // buscamos los datos de la accion en servicios
  DataSetCli.Free;
  DataSetCli:=TClientdataSet.Create(nil);
  DataSource2.DataSet:=DataSetCli;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  NroAccion:=trim(ODNI.Text);
  if not Funciones.Run_Fn_VistaParcelasInhumadosServicios(null,NroAccion,DataSetCli,'',0) then
  //if not Funciones.Run_Fn_VistaParcelasInhumadosServicios(null,NroAccion,'',null,DataSetCli,'',0) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
   Funciones.Free;
   DBGInh.Columns[0].Width:=60;
   DBGInh.Columns[1].Width:=80;
   DBGInh.Columns[2].Width:=80;
   DBGInh.Columns[3].Width:=180;
   DBGInh.Columns[4].Width:=80;
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
    SetLength(IdCombos[0],High(TCodigos[1]) + 1);
    for t:=0 to High(TCodigos[1])  do begin
      CODIGO.Items.Insert(t,TCodigos[1,t]);
      IdCombos[0,t]:=TCodigos[0,t];
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
      SetLength(IdCombos[0],DtCombo.RecordCount);
      for t:=1 to DtCombo.RecordCount  do begin
        DtCombo.RecNo:=t;
        CODIGO.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
        IdCombos[0,t-1]:=DtCombo.Fields[0].AsString;
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
    txtw:='SELECT Id,Codigo,NroCuota,Coeficiente, InteresAplicado  FROM ParcelasCoeficientes '
    //txtw:='Select COUNT(*) AS cantcuotas FROM ParcelasCoeficientes '
    + 'WHERE (Codigo=' + IdCombos[0,CODIGO.ItemIndex] + ') order by CODIGO,NroCuota';/// ORDER BY CODIGO,NroCuota';
    if CuotasCoeficientes.Listar(txtw,DtcomboC)  then begin
      SetLength(IdCombos[1],DtcomboC.RecordCount);
      for t:=1 to DtcomboC.RecordCount  do begin
        DtcomboC.RecNo:=t;
        CUOTAS.Items.Insert(t-1,trim(DtcomboC.Fields[2].AsString));
        IdCombos[1,t-1]:=DtcomboC.Fields[0].AsString;
      end;
    end
    else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  CUOTAS.ItemIndex:=0;
end;
if nro=6 then begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  NroAccion:=trim(ODNI.Text);
  if not Funciones.Run_Fn_VistaParcelasTitulares(null,NroAccion,DtCombo,'',0) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if not(DtCombo.IsEmpty) then begin
   //dbedit2.Text:=trim(DtCombo.Fields[2].AsString);
   //dbedit9.Text:=trim(DtCombo.Fields[0].AsString);
   //dbedit4.Text:=trim(DtCombo.Fields[11].AsString);
   //dbedit7.Text:=trim(DtCombo.Fields[10].AsString);
   dni.Text:=trim(DtCombo.Fields[12].AsString);
  end;
end;
if nro=7 then begin //Combo OPeraciones
  OPERA.Clear;
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
  OPERA.ItemIndex:=0;
end;
if nro = 10 then begin  //cargo la grilla de los FORMULARIOS
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  NroGestion:=1;
  if not Funciones.Run_Fn_VistaLosFormularios(NroGestion,DtCombo,'',0) then
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
    grillaformu.Cells[3,t]:=trim(DtCombo.Fields[5].AsString);
  end;
end;
if nro=11 then begin   /// Servicios por nivel
  SERVICIO.clear;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  NroServicio:=strtoint(IdCombos[2,OPERA.ItemIndex]);
  NroNivel:=strtoint(Nivel1.text);
  if not Funciones.Run_Fn_VistaServicioNivel(NroServicio,NroNivel,DtCombo,'',0) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  SetLength(IdCombos[3],DtCombo.RecordCount);
  for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    SERVICIO.Items.Insert(t-1,trim(DtCombo.Fields[2].AsString));
    IdCombos[3,t-1]:=DtCombo.Fields[1].AsString;
  end;
  SERVICIO.ItemIndex:=0;
end;
if nro=12 then begin   /// CARACTER
  CARACTER.clear;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  TiposCaracter:=TTiposCaracter.Create(nil);
  TiposCaracter.ConnectionString:=modulo2.Conexion;
  Param:=TWideStrings.Create;
  Param.Add('');
  if TiposCaracter.ListarSP(Param,DtCombo,0) then begin
    SetLength(IdCombos[4],DtCombo.RecordCount);
    for t:=1 to DtCombo.RecordCount  do begin
      DtCombo.RecNo:=t;
      CARACTER.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
      IdCombos[4,t-1]:=DtCombo.Fields[2].AsString;
    end;
   end
   else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
   TiposCaracter.Free;
  CARACTER.ItemIndex:=0;
end;
if nro=13 then begin   /// Tipos de OBJETOS
  OBJETO1.clear;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  NroServicio:=strtoint(IdCombos[2,OPERA.ItemIndex]);
  if Funciones.Run_Fn_VistaServiciosObjetos(NroServicio,True,DtCombo,'',0) then begin
    SetLength(IdCombos[5],DtCombo.RecordCount);
    for t:=1 to DtCombo.RecordCount  do begin
      DtCombo.RecNo:=t;
      OBJETO1.Items.Insert(t-1,trim(DtCombo.Fields[2].AsString));
      IdCombos[5,t-1]:=DtCombo.Fields[3].AsString;
    end;
  end
  else
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  OBJETO1.ItemIndex:=0;
end;

end;

procedure TAM_Servicio.DBGrid1CellClick(Column: TColumn);
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

  Coloca1(0);  //Color de Parcela
  Coloca1(2);  //Grilla Inhumados
  Coloca1(3);  //Precio
  Coloca1(4);  //Codigos de Financiacion
  //Coloca1(6);  //datos del titular
  //PC1.ActivePage:=PC1.Pages[2];
  if not (DataSetC.IsEmpty) then begin
   D14.DataField:='PrecioLista';
  end;
  OPERA.SetFocus;
end;
end;

procedure TAM_Servicio.BuscaClick(Sender: TObject);
var u:integer;
begin
Coloca1(1);
if (Datasource1.DataSet.RecordCount = 0) then begin
  Barra1.Panels[0].Text:='Sin Datos en Grilla';
  IF application.MessageBox('PARCELA NO encontrada, !Desea Buscar otra Parcela!?','Advertencia'
    ,mb_OKcancel+mb_IconHAnd) = IdOk then begin
    PC1.Enabled:=true;
    ODNI.SetFocus;
  end
  else begin
    PC1.Enabled:=true;
    Barra1.Panels[0].Text:='La opcion Busqueda fue Cancelada';
    odni.SetFocus;
  end;
end
else begin
  Barra1.Panels[1].Text:='Registos encontrados: ' + inttostr(Datasource1.DataSet.RecordCount);
  odni.SetFocus;
end;
end;


procedure TAM_Servicio.bExportarClick(Sender: TObject);
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
messagedlgpos('Se Copiaron los Datos, listo para pegarlos a Excel',mtConfirmation,[mbok],0,screen.Width div 3,screen.Height div 3);
end;

procedure TAM_Servicio.ONOMBKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then busca.SetFocus;

end;

procedure TAM_Servicio.ODNIKeyPress(Sender: TObject; var Key: Char);
begin
//if key = #13 then busca.SetFocus;
if key = #13 then begin
  busca.SetFocus;
end
else begin
  if ( StrScan('0123456789',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
  else Key := #0;
end;
end;

procedure TAM_Servicio.BClienteClick(Sender: TObject);
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
  DBEDIT4.Text:=busqueda.DB12.Text;   //Domicilio
finally
  Busqueda.Destroy;
  DPRECIO.SetFocus;
end;
end;

procedure TAM_Servicio.IMPORTEEExit(Sender: TObject);
var vSaldo:double;
begin
if trim(ImporteE.text)=''  then begin
  messagedlg('EL Valor Ingresado No es Válido',mterror,[mbok],0);
  ImporteE.SetFocus;
end
else begin
  If StrToFloat(trim(ImporteE.text)) > 0 then Begin
    ce.Checked := TRUE;
    vSaldo:= strtofloat(DPRECIO.text)  -  strtofloat(IMPORTEE.text);
    //If StrToFloat(trim(ImporteE.text)) > 0 then
      SALDO.Text:=FloatToStr(vsaldo);
  End
  else begin
  SALDO.Text:=trim(DPRECIO.text);
  end;
end;
end;

procedure TAM_Servicio.IMPORTEEKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  FECHAE.SetFocus;
end
else begin
  if ( StrScan('0123456789.',Key) <> nil ) or  ( Key = Char(VK_BACK) ) then
  else Key := #0;
end;
{if key = #13 then begin
  Key := #0;
  FECHAE.SetFocus;
end; }
end;

procedure TAM_Servicio.FECHAEKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
    gdetpago.ActivePage:=gdetpago.Pages[0];
    saldo.SetFocus;
end;
end;

procedure TAM_Servicio.SaldoKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  CODIGO.SetFocus;
end;
end;


procedure TAM_Servicio.CODIGOExit(Sender: TObject);
begin
coloca1(5);
end;

procedure TAM_Servicio.CODIGOKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  FECHA.SetFocus;
end
end;

procedure TAM_Servicio.CUOTASExit(Sender: TObject);
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
      imp:=strtofloat(transforma(trim(SALDO.Text),chr(44),chr(46)));
    except
      imp:=strtofloat(transforma(trim(SALDO.Text),chr(46),chr(44)));
    end;
    tot:=imp * DtcomboC.Fields[3].AsFloat;
    Monto:=strtofloat(redondeo(floattostr(imp * DtcomboC.Fields[3].AsFloat),5));
    //24/01/2011
    Monto:=Monto - (imp * strtofloat(INTERES.Text)/100);
    if monto > trunc(monto) then  monto:=trunc(monto)+1;

    CAPITAL.Text:=SALDO.Text;
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
      grilla5.Cells[6,t]:='10/' + strcut_midle(txt,4,5) + '/' + RightStr(txt,4);
    end;
    bGuardar.Enabled:=true;
  end;
end;

procedure TAM_Servicio.CUOTASKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then OBSERV.SetFocus
else begin
  if ( StrScan('0123456789',Key) <> nil ) or  ( Key = Char(VK_BACK) ) then
  else Key := #0;
end;
end;

procedure TAM_Servicio.OPERAExit(Sender: TObject);
begin
if OPERA.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Operacion Ingresado!!',mterror,[mbok],0);
  OPERA.SetFocus;
end
else coloca1(13);
end;

procedure TAM_Servicio.OPERAKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  TIPOOBJETO.SetFocus;
end
end;

procedure TAM_Servicio.verificaNPClick(Sender: TObject);
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
  txtw:='SELECT * FROM AsignaPosicionInhumados (' + nroaccion + ' ,' +
    ' ' + chr(39) + objeto + chr(39) + ')';
  if not Funciones.Listar(txtw,DtCombo) then begin
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  end;
  nivel1.Text:=trim(DtCombo.Fields[0].AsString);
  posicion1.Text:=trim(DtCombo.Fields[1].AsString);
  Funciones.Free;
  coloca1(11);
  coloca1(12);
  SERVICIO.setfocus;
end;

procedure TAM_Servicio.SERVICIOExit(Sender: TObject);
begin
if SERVICIO.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Operacion Ingresado!!',mterror,[mbok],0);
  SERVICIO.SetFocus;
end;
end;

procedure TAM_Servicio.SERVICIOKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  CARACTER.SetFocus;
end
end;

procedure TAM_Servicio.CARACTERExit(Sender: TObject);
begin
if SERVICIO.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Operacion Ingresado!!',mterror,[mbok],0);
  SERVICIO.SetFocus;
end;
end;

procedure TAM_Servicio.CARACTERKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  OBJETO1.SetFocus;
end
end;

procedure TAM_Servicio.TIPOOBJETOExit(Sender: TObject);
begin
if TIPOOBJETO.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Operacion Ingresado!!',mterror,[mbok],0);
  TIPOOBJETO.SetFocus;
end
end;

procedure TAM_Servicio.TIPOOBJETOKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  VerificaNP.SetFocus;
end
end;

procedure TAM_Servicio.bSalirClick(Sender: TObject);
begin
Close;
end;

procedure TAM_Servicio.AgregaClick(Sender: TObject);
var precio: double;
    t:integer;

  function busca():boolean;
    var p:integer;
  begin
    busca:=true;
  if GrillaObjetos1.Cells[0,1] <> '' then begin
    for p:=1 to GrillaObjetos1.RowCount-1 do
      if (GrillaObjetos1.Cells[2,p]=trim(OBJETO1.Text))
      then busca:=false;
  end;
  end;

begin
if busca() then begin
  if (GrillaObjetos1.RowCount > 1) and (trim(GrillaObjetos1.Cells[0,1])<>'') then begin
    t:=GrillaObjetos1.RowCount;
    GrillaObjetos1.RowCount:=GrillaObjetos1.RowCount+1;
  end
  else t:=1;
  if  GrillaObjetos1.RowCount = 5 then begin
    messagedlg('Error No se Puede seguir ingresando OBJETOS ',mtError,[mbok],0);
    GrillaObjetos1.Cells[0,t]:='';
    GrillaObjetos1.Cells[1,t]:='';
    GrillaObjetos1.Cells[2,t]:='';
    GrillaObjetos1.Cells[3,t]:='';
    GrillaObjetos1.Cells[4,t]:='';
    GrillaObjetos1.Cells[5,t]:='';
    GrillaObjetos1.RowCount:=GrillaObjetos1.RowCount-1;
  end
  else begin
  GrillaObjetos1.Cells[0,t]:=completa1(inttostr(t),2,'0');
  GrillaObjetos1.Cells[1,t]:='?';
  GrillaObjetos1.Cells[2,t]:=trim(OBJETO1.text);
  GrillaObjetos1.Cells[3,t]:='';
  //Calcula TOTAL Servicio
  //   Precio:= strtofloat(IdCombos[4,OBJETOS.ItemIndex]);
  //
  GrillaObjetos1.Cells[4,t]:='X';
  GrillaObjetos1.Cells[5,t]:='';
  C4.Checked:=true;
  end;
  if modifica.Enabled = false then Agrega.Enabled:=true;
   Agrega.Enabled:=FALSE;
   OBJETO1.ItemIndex:=0;
end
else messagedlg('ERROR!! No Puede Existir dos OBJETOS del mismo Tipo !!',mterror,[mbok],0);
OBJETO1.SetFocus;
end;

procedure TAM_Servicio.DPrecioKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  importee.SetFocus;
end
else begin
  if ( StrScan('0123456789.',Key) <> nil ) or  ( Key = Char(VK_BACK) ) then
  else Key := #0;
end;
end;

procedure TAM_Servicio.DPrecioExit(Sender: TObject);
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

procedure TAM_Servicio.bGuardarClick(Sender: TObject);
var ElId:string;
var ser,serd,ct:boolean;
var gf,t:integer;
begin
 ParcelasServicios:=TParcelasServicios.Create(nil);
 ParcelasServicios.ConnectionString:=modulo2.Conexion;
 gf:=messagedlgpos('Desea Agregar los Datos de esta SERVICIO?',mtWarning,[
             mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
  if gf = 1 then begin
  ParcelasServicios.C_NroAccion_IX1:=StrToInt(D1.Text);
  ParcelasServicios.C_CuentaCliente_IX2:=StrToInt(nrocredito.Text);
  ParcelasServicios.C_Fecha_IX3:=trim(fechae.Text);
  parcelasservicios.C_NroCocheria_IX4:=1;
  parcelasservicios.C_NroTipoServicio_IX5:=strtoint(IdCombos[3,servicio.ItemIndex]);
  parcelasservicios.C_Solicita:=null;
  parcelasservicios.C_Responsable:=trim(dbedit9.Text);
  parcelasservicios.C_Inhumado:=null;
  parcelasservicios.C_IDTipoServicioNivel:=strtoint(IdCombos[4,caracter.ItemIndex]);
  parcelasservicios.C_Nivel:=StrToInt(nivel1.Text);
  parcelasservicios.C_Posicion:=StrToInt(posicion1.Text);
  parcelasservicios.C_Objeto:=strcut_midle(trim(tipoobjeto.Text),1,1);
  parcelasservicios.C_Total:=StrToFloat(saldo.Text);
  parcelasservicios.C_CantCuotas:=strtoint(cuotas.Text);
  parcelasservicios.C_ValorCuota:=StrToFloat(valcuota.Text);
  parcelasservicios.C_Prepago:=false;
  parcelasservicios.C_Observaciones:=trim(observ.Text);
  parcelasservicios.C_Fecha_A:=strcut(Fec_System(),10);
  parcelasservicios.C_Usu_A:=modulo2.nro_usu;
  ser:=parcelasservicios.Agrega;
  ElId:=parcelasservicios.Identidad;
  parcelasservicios.Free;
    if ser then begin
      ParcelasServiciosDetalle:=ParcelasServiciosDetalle.Create(nil);
      ParcelasServiciosDetalle.ConnectionString:=modulo2.Conexion;
      ParcelasServiciosDetalle.C_IdServicio:=strtoint(ElId);
      ParcelasServiciosDetalle.C_IDServicioObjeto:=strtoint(IdCombos[2,opera.ItemIndex]);
      ParcelasServiciosDetalle.C_Importe:=StrToFloat(saldo.Text);
      ParcelasServiciosDetalle.C_Fecha_A:=strcut(Fec_System(),10);
      ParcelasServiciosDetalle.C_Usu_A:=modulo2.nro_usu;
      serd:=ParcelasServiciosDetalle.Agrega;
      ParcelasServiciosDetalle.Free;
      if serd then begin
       for t:=1 to Grilla5.RowCount-1 do begin
        ParcelasServiciosDeudas:=TParcelasServiciosDeudas.Create(nil);
        ParcelasServiciosDeudas.ConnectionString:=modulo2.Conexion;
        ParcelasServiciosDeudas.C_NroAccion:=StrToInt(D1.Text);
        parcelasserviciosdeudas.C_CuentaCliente_IX1:=StrToInt(nrocredito.Text);
        parcelasserviciosdeudas.C_IdServicio_IX2:=strtoint(ElId);
        parcelasserviciosdeudas.C_NroCuota:=strtoint(trim(Grilla5.Cells[0,t]));
        parcelasserviciosdeudas.C_Periodo_IX3:=strtoint(trim(Grilla5.Cells[1,t]));
        parcelasserviciosdeudas.C_FechaVencimiento_IX4:=fecha.Text;
        parcelasserviciosdeudas.C_Monto:=strtoint(trim(Grilla5.Cells[5,t]));
        parcelasserviciosdeudas.C_Interes:=strtoint(trim(Grilla5.Cells[4,t]));
        parcelasserviciosdeudas.C_Capital:=strtoint(trim(Grilla5.Cells[3,t]));
        ct:=ParcelasServiciosDeudas.Agrega;
        ParcelasServiciosDeudas.Free;
       end;
      end;
    messagedlg('Se ha Guardado el nuevo SERVICIO con Exito',mtConfirmation,[mbok],0);
    borra.Click;
    PC1.Enabled:=false;
  end
  else begin
    messagedlg('Error al Guardar este SERVICIO. Consulte con un Administrador',mtError,[mbok],0);
  end;
end;
end;

procedure TAM_Servicio.OBJETO1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  Agrega.Enabled:=true;
  Agrega.SetFocus;
end;
end;

end.

unit ParcelasNewConsilidados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid, ADODB,
  Mask, DBCtrls, DB, Buttons, JvExButtons, JvBitBtn ,DBClient,StrUtils,
  ClaseSistemas,Unidad, ClaseFunciones,ClaseTiposSectores, JvExGrids,
  JvStringGrid,ClaseParcelasConsolidados,ClaseParcelasConsolidadosDeudas,ClaseParcelasConsolidadosPagos,
  JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  ToolWin,WSDLIntf,ClaseParcelasConsolidadosPeriodos, RpDefine, RpRave,
  RpBase, RpSystem, ExtCtrls,DateUtils,ClaseParcelasMovimientosDiarrioDetalle ;

type HackTable = class(TADOTable);
type
  TLasParcelasConso = class(TForm)
    GroupBox1: TGroupBox;
    Label14: TLabel;
    ElSector: TComboBox;
    Label29: TLabel;
    LaAccion: TComboBox;
    ODNI: TEdit;
    LB1: TLabel;
    Busca: TJvBitBtn;
    DBGrid1: TJvDBGrid;
    Barra1: TStatusBar;
    DataSource1: TDataSource;
    GroupBox2: TGroupBox;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    bGuardar: TJvBitBtn;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
    bSalir: TJvBitBtn;
    DataSource11: TDataSource;
    RvS: TRvSystem;
    Image1: TImage;
    Label35: TLabel;
    FECHA: TJvDatePickerEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox3: TGroupBox;
    Label15: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    Label13: TLabel;
    Label4: TLabel;
    D1: TDBEdit;
    D2: TDBEdit;
    D8: TDBEdit;
    D4: TDBEdit;
    D6: TDBEdit;
    D3: TDBEdit;
    D5: TDBEdit;
    GrillaT: TJvStringGrid;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label52: TLabel;
    preciop: TEdit;
    DPrecio: TEdit;
    IMPORTEE: TEdit;
    OBSERV: TEdit;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    GroupBox6: TGroupBox;
    impm: TEdit;
    GroupBox7: TGroupBox;
    impv: TEdit;
    GroupBox8: TGroupBox;
    imps: TEdit;
    GroupBox9: TGroupBox;
    impc: TEdit;
    grillam: TJvStringGrid;
    grillav: TJvStringGrid;
    grillas: TJvStringGrid;
    grillac: TJvStringGrid;
    RvActa: TRvSystem;
    Image2: TImage;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure limpiar(nro:byte);
    procedure ElSectorExit(Sender: TObject);
    procedure ElSectorKeyPress(Sender: TObject; var Key: Char);
    procedure LaAccionExit(Sender: TObject);
    procedure LaAccionKeyPress(Sender: TObject; var Key: Char);
    procedure BuscaClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FECHAExit(Sender: TObject);
    procedure preciopExit(Sender: TObject);
    procedure FECHAKeyPress(Sender: TObject; var Key: Char);
    procedure preciopKeyPress(Sender: TObject; var Key: Char);
    procedure IMPORTEEKeyPress(Sender: TObject; var Key: Char);
    procedure IMPORTEEExit(Sender: TObject);
    procedure bSalirClick(Sender: TObject);
    procedure preciopChange(Sender: TObject);
    procedure bGuardarClick(Sender: TObject);
    procedure OBSERVKeyPress(Sender: TObject; var Key: Char);
    procedure RvSPrint(Sender: TObject);
    procedure grillamClick(Sender: TObject);
    procedure grillavClick(Sender: TObject);
    procedure grillasClick(Sender: TObject);
    procedure grillacClick(Sender: TObject);
    procedure sumaDeuda(nro:byte);
    procedure RvActaPrint(Sender: TObject);
    //procedure guardaMentenimiento(Sender: TObject);
  private
      gh:boolean;{Controla que no hubiere errores en la carga de datos}
    { Private declarations }
  public
    ParcelasConsolidados:TParcelasConsolidados;
    ParcelasConsolidadosDeudas:TParcelasConsolidadosDeudas;
    ParcelasConsolidadosPagos:TParcelasConsolidadosPagos;
    ParcelasConsolidadosPeriodos:TParcelasConsolidadosPeriodos;
    ParcelasMovimientosDiarrioDetalle:TParcelasMovimientosDiarrioDetalle;
    PosH:Array [0..7] of Double;
    Camp:Array [0..7] of Integer;
    TxtCamp:Array [0..7] of String;
      Sistemas:TSistemas;
      IdCombos:array of array of string; // para los combobox
      Funciones:TFuncionesVarias;      //DataMante:TClientDataSet;
      Dtcombo,DataSetC,DataSet,DataSet1,DataSetCli,DataSetT,DataGer,DataConsol,DataResul,DtCombPeri:TClientDataSet; //declaro los DataSet
    { Public declarations }
  end;

var
  LasParcelasConso: TLasParcelasConso;

implementation

uses Modulo;

{$R *.dfm}

procedure TLasParcelasConso.FormActivate(Sender: TObject);
begin
if not gh then begin
  gh:=true;
  setlength(IdCombos,3);
  GrillaT.Cells[0,0]:='Orden';              GrillaT.Cells[1,0]:='Id';
  GrillaT.Cells[2,0]:='Nombre';             GrillaT.Cells[3,0]:='TipoDNI';
  GrillaT.Cells[4,0]:='DNI';                GrillaT.Cells[5,0]:='Domicilio';
  GrillaT.Cells[6,0]:='NroT';               GrillaT.Cells[7,0]:='MDF';
  GrillaT.Cells[8,0]:='Cuif';               GrillaT.Cells[9,0]:='FecNac';
  GrillaT.Cells[10,0]:='Nacionalidad';      GrillaT.Cells[11,0]:='EstCivil';
  GrillaT.Cells[12,0]:='Ciudad';            GrillaT.Cells[13,0]:='Telefonos';

  grillam.Cells[0,0]:='Periodo';
  grillam.Cells[1,0]:='Vencimiento';
  grillam.Cells[2,0]:='TotalCuota';
  grillam.Cells[3,0]:='Seleccion';

  grillav.Cells[0,0]:='NroCuota';
  grillav.Cells[1,0]:='Periodo';
  grillav.Cells[2,0]:='Vencimiento';
  grillav.Cells[3,0]:='TotalCuota';
  grillav.Cells[4,0]:='Seleccion';

  grillas.Cells[0,0]:='IdServicio';
  grillas.Cells[1,0]:='NroCuota';
  grillas.Cells[2,0]:='TotalCuota';
  grillas.Cells[3,0]:='Seleccion';
  //coloca1(0);
  coloca1(6);
  fecha.Text:=strcut(Fec_System(),10);
  elsector.SetFocus;
  PageControl1.ActivePage:=PageControl1.Pages[0];
end;
end;

procedure TLasParcelasConso.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TLasParcelasConso.limpiar(nro:byte);
var p,u:integer;
begin
  if nro=1 then  begin
    odni.Text:='00000000';
    DataSource1.DataSet.Free;
    d1.Clear; d2.Clear; d3.Clear;
    d4.Clear; d5.Clear; d6.Clear;
   fecha.Text:=strcut(fec_system(),10);
   for p:=0 to grillat.ColCount-1 do
    for u:=1 to grillat.RowCount-1 do grillat.Cells[p,u]:='';
    grillat.RowCount:=2;
   for p:=0 to grillam.ColCount-1 do
    for u:=1 to grillam.RowCount-1 do grillam.Cells[p,u]:='';
    grillam.RowCount:=2;
   for p:=0 to grillav.ColCount-1 do
    for u:=1 to grillav.RowCount-1 do grillav.Cells[p,u]:='';
    grillav.RowCount:=2;
   for p:=0 to grillas.ColCount-1 do
    for u:=1 to grillas.RowCount-1 do grillas.Cells[p,u]:='';
    grillas.RowCount:=2;
   for p:=0 to grillac.ColCount-1 do
    for u:=1 to grillac.RowCount-1 do grillac.Cells[p,u]:='';
    grillac.RowCount:=2;
   impm.text:='0';
   impv.text:='0';
   imps.text:='0';
   impc.text:='0';
   preciop.Text:='0000.00';
   importee.Text:='0000.00';
   dprecio.Text:='0000.00';
   observ.Clear;
   laaccion.Clear;
   elsector.ItemIndex:=0;
   elsector.SetFocus;
  end;
end;

procedure TLasParcelasConso.Coloca1(nro:byte);
var txtw:widestring;
    txt,sex,VColor,sec,ElMes,ElAnio,elperiodo,newfecha:string;
    t,y,action:integer;
    m:boolean;
    Funciones:TFuncionesVarias;
    TiposSectores:TTiposSectores;
    cons:widestring;
    Param:TWideStrings;
    kl:Tdatetime;
begin
IF NRO=0 then begin
 try
  if (strtoint(strcut_midle(trim(FECHA.Text),1,2)) > 25) and
     (strtoint(strcut_midle(trim(FECHA.Text),1,2)) <= 31) then begin
   newfecha:=diaincremento(strcut(trim(FECHA.Text),10),6);
   ElMes:=strcut_midle(trim(newfecha),4,5);
   ElAnio:=RightStr(trim(newfecha),4);
   elperiodo:=elanio+''+elmes;
  end
  else begin
   ElMes:=strcut_midle(trim(FECHA.Text),4,5);
   ElAnio:=RightStr(trim(FECHA.Text),4);
   elperiodo:=elanio+''+elmes;
  end;
  DataResul.Free;
  DataResul:=TClientdataSet.Create(nil);
  Sistemas:=TSistemas.Create(nil);
  Sistemas.ConnectionString:=modulo2.Conexion;
  Param:=TWideStrings.Create;
  Param.Add('4');
  Param.Add(elperiodo);
  Param.Add(trim(odni.Text));
  Param.Add('1');
  if not Sistemas.ListarSP(Param,'RecreaMovimientos',DataResul) then
     Barra1.Panels[2].Text:=TRIM(DataResul.Fields[0].AsString)
  else begin
     Barra1.Panels[2].Text:=TRIM(DataResul.Fields[0].AsString);
  end;
  Param.Free;
  Sistemas.Free;
 except
  Barra1.Panels[2].Text:='Error al Intentar Recrear los Datos';
 end;
end;
if nro=1 then begin
  DataSet.Free;
  DataSet:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=DataSet;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  sec:=trim(odni.text);
  if not Funciones.Run_Fn_VistaParcelasParaVenta(sec,DataSet,'',0) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
end;
if nro=2 then begin
  DataSet.Free;
  DataSet:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  sec:=IdCombos[1,ELSECTOR.ItemIndex];
  txtw:='SELECT * FROM Fn_VistaParcelas (null,' + chr(39) + sec + chr(39) + ',' +
    'null,null,0)  where (parcela = '+  trim(laaccion.Text)+')';
  if not Funciones.Listar(txtw,DataSet) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  odni.Text:=DataSet.Fields[0].AsString;
  Funciones.Free;
end;
if nro =3 then  begin
//
end;
if nro=4 then begin   /// carga de las acciones
  LAACCION.Clear;
  DtCombo.Free;
  Dtcombo:=TClientDataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  sec:=IdCombos[1,ELSECTOR.ItemIndex];
  txtw:='SELECT dbo.Parcelas.Parcela FROM dbo.Parcelas INNER JOIN '
  + ' dbo.TiposPlazas ON dbo.Parcelas.IdPlaza = dbo.TiposPlazas.IdPlaza '
  + ' WHERE (dbo.Parcelas.Sector = ' + chr(39) + sec + chr(39) + ') ORDER BY dbo.Parcelas.Parcela ';
  if Funciones.Listar(txtw,Dtcombo) then begin
   SetLength(IdCombos[0],Dtcombo.RecordCount);
   for t:=1 to Dtcombo.RecordCount  do begin
    Dtcombo.RecNo:=t;
    LAACCION.Items.Insert(t-1,trim(Dtcombo.Fields[0].AsString));
    IdCombos[0,t-1]:=Dtcombo.Fields[0].AsString;
    action:=strtoint(Dtcombo.Fields[0].AsString);
   end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',
  mtError,[mbok],0);
  funciones.Free;
  LAACCION.ItemIndex:=0;
end;
if nro=6 then begin   //tipos sectores
  ELSECTOR.Clear;
  DtCombo.Free;
  Dtcombo:=TClientDataSet.Create(nil);
  TiposSectores:=TTiposSectores.Create(nil);
  TiposSectores.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT Sector FROM TiposSectores';
  if TiposSectores.Listar(txtw,DtCombo) then begin
   SetLength(IdCombos[1],DtCombo.RecordCount);
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    ELSECTOR.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
    IdCombos[1,t-1]:=DtCombo.Fields[0].AsString;
   end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  TiposSectores.Free;
  ELSECTOR.ItemIndex:=0;
end;
if nro = 7 then begin
//
end;
if nro = 8 then begin    // estado cuenta mantenimiento
  DataSetC.Free;
  DataSetC:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='select periodo,vencimiento,totalcuota  from EstadoCuentaMantenimiento ('+ trim(d1.text)
  +',GETDATE(),0) where Vencimiento <= '+ chr(39) + trim(fecha.text) + chr(39) +' and estadopago=''deuda''';
  if not Funciones.Listar(txtw,DataSetC) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  for t:=0 to grillam.ColCount-1 do
  for y:=1 to grillam.RowCount-1 do grillam.Cells[t,y]:='';
  for t:=1 to DataSetC.RecordCount  do begin
    DataSetC.RecNo:=t;
    grillam.RowCount:=t+1;
    grillam.Cells[0,t]:=trim(DataSetC.Fields[0].AsString);
    grillam.Cells[1,t]:=trim(DataSetC.Fields[1].AsString);
    grillam.Cells[2,t]:=trim(DataSetC.Fields[2].AsString);
    grillam.Cells[3,t]:='';
  end;
end;
if nro = 9 then begin    // estado cuenta ventas
  DataSet1.Free;
  DataSet1:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='select nrocuota,periodo,vencimiento,totalcuota  from EstadoCuentaventas('+ trim(d1.text)
  +',GETDATE(),0) where estadopago=''deuda''';
  if not Funciones.Listar(txtw,DataSet1) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  for t:=0 to grillav.ColCount-1 do
  for y:=1 to grillav.RowCount-1 do grillav.Cells[t,y]:='';
  for t:=1 to DataSet1.RecordCount  do begin
   DataSet1.RecNo:=t;
   grillav.RowCount:=t+1;
   grillav.Cells[0,t]:=trim(DataSet1.Fields[0].AsString);
   grillav.Cells[1,t]:=trim(DataSet1.Fields[1].AsString);
   grillav.Cells[2,t]:=trim(DataSet1.Fields[2].AsString);
   grillav.Cells[3,t]:=trim(DataSet1.Fields[3].AsString);
   grillav.Cells[4,t]:='';
  end;
end;
if nro = 10 then begin    // estado cuenta servicios
  DataGer.Free;
  DataGer:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='select idservicio,nrocuota,importecuota from EstadoCuentaServiciosTotalesxAccion ('+ trim(d1.text)
  +',GETDATE(),0) where estadopago=''deuda''';
  if not Funciones.Listar(txtw,DataGer) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
   for t:=0 to grillas.ColCount-1 do
    for y:=1 to grillas.RowCount-1 do grillas.Cells[t,y]:='';
    for t:=1 to DataGer.RecordCount  do begin
      DataGer.RecNo:=t;
      grillas.RowCount:=t+1;
      grillas.Cells[0,t]:=trim(DataGer.Fields[0].AsString);
      grillas.Cells[1,t]:=trim(DataGer.Fields[1].AsString);
      grillas.Cells[2,t]:=trim(DataGer.Fields[2].AsString);
      grillas.Cells[3,t]:='';
    end;
end;
if nro = 11 then begin    // estado cuenta consolidados
//
end;
if nro=12 then begin
  DataSetT.Free;
  DataSetT:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='Select *,(SELECT * FROM LosTelefonosClientes (Cuif)) as telef  FROM vistalostitularesminoristas Where (NroAccion = ' + trim(odni.Text) +') and (nivel > 0) ';
  if not Funciones.listar(txtw,DataSetT) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
    for t:=0 to grillat.ColCount-1 do
    for y:=1 to grillat.RowCount-1 do grillat.Cells[t,y]:='';
  for t:=1 to DataSetT.RecordCount  do begin
    DataSetT.RecNo:=t;
    grillat.RowCount:=t+1;
    grillat.Cells[0,t]:=completa1(inttostr(t),2,'0');
    grillat.Cells[1,t]:=trim(DataSetT.Fields[0].AsString);
    grillat.Cells[2,t]:=trim(DataSetT.Fields[1].AsString);
    grillat.Cells[3,t]:=trim(DataSetT.Fields[2].AsString);
    grillat.Cells[4,t]:=trim(DataSetT.Fields[3].AsString);
    grillat.Cells[5,t]:=trim(DataSetT.Fields[4].AsString);
    grillat.Cells[6,t]:=trim(DataSetT.Fields[5].AsString);
    grillat.Cells[7,t]:=trim(DataSetT.Fields[6].AsString);
    grillat.Cells[8,t]:=trim(DataSetT.Fields[7].AsString);
    grillat.Cells[9,t]:=trim(DataSetT.Fields[9].AsString);
    grillat.Cells[10,t]:=trim(DataSetT.Fields[8].AsString);
    grillat.Cells[11,t]:=trim(DataSetT.Fields[10].AsString);
    grillat.Cells[12,t]:=trim(DataSetT.Fields[11].AsString);
    grillat.Cells[13,t]:=trim(DataSetT.Fields[13].AsString);
  end;
end;
end;

procedure TLasParcelasConso.ElSectorExit(Sender: TObject);
begin
if ElSector.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Sector Ingresado!!',mterror,[mbok],0);
  ElSector.SetFocus;
end;
end;

procedure TLasParcelasConso.ElSectorKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  coloca1(4);
  laaccion.Enabled:=true;
  laaccion.SetFocus;
end;
end;

procedure TLasParcelasConso.LaAccionExit(Sender: TObject);
begin
if LaAccion.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el N° de Acción Ingresado!!',mterror,[mbok],0);
  LaAccion.SetFocus;
end;
end;

procedure TLasParcelasConso.LaAccionKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  coloca1(2);
  fecha.SetFocus;
end;
end;

procedure TLasParcelasConso.BuscaClick(Sender: TObject);
begin
Coloca1(1);
if (Datasource1.DataSet.RecordCount = 0) then begin
  Barra1.Panels[0].Text:='Sin Datos en Grilla';
  IF application.MessageBox('PARCELA NO encontrado, !Desea Buscar otra Parcela!?','Advertencia'
    ,mb_OKcancel+mb_IconHAnd) = IdOk then begin
    laaccion.SetFocus;
  end
  else begin
    Barra1.Panels[0].Text:='La opcion Busqueda fue Cancelada';
    BUSCA.SetFocus;
  end;
end
else begin
  Barra1.Panels[1].Text:='Registos encontrados: ' + inttostr(Datasource1.DataSet.RecordCount);
  dbgrid1.SetFocus;
end;
end;

procedure TLasParcelasConso.DBGrid1CellClick(Column: TColumn);
begin
  if not (DataSet.IsEmpty) then begin
   D1.DataField:='NroAccion';
   D2.DataField:='NroTitulo';
   D3.DataField:='Sector';
   D4.DataField:='Detalle';
   D5.DataField:='Parcela';
   D6.DataField:='Activo';
   D8.DataField:='TipoColor';
   coloca1(12);
   coloca1(8);
   coloca1(9);
   coloca1(10);
   fecha.SetFocus;
  end;
end;

procedure TLasParcelasConso.FECHAExit(Sender: TObject);
var fec:Tdatetime;
begin
try
 fec:=strtodate(trim(FECHA.Text));
except
  messagedlgpos('La fecha es Erronea!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  FECHA.SetFocus;
end;
end;

procedure TLasParcelasConso.preciopExit(Sender: TObject);
begin
if (trim(preciop.text)='') or (trim(preciop.text)='0')  or (trim(preciop.text)='0000.00') then begin
  messagedlg('EL Valor Ingresado de la Entrega No es Válido',mterror,[mbok],0);
  preciop.text:='0000.00';
  preciop.SetFocus;
end
end;

procedure TLasParcelasConso.FECHAKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then busca.SetFocus;
end;

procedure TLasParcelasConso.preciopKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
   importee.Text:='0000.00';
   importee.SetFocus;
end
else begin
  if ( StrScan('0123456789.',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
  else Key := #0;
end;
end;

procedure TLasParcelasConso.IMPORTEEKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
   dprecio.Text:= redondeo(floattostr((strtofloat(preciop.Text) - strtofloat(importee.Text))),2);
   observ.Text:='Deuda total Consolidado $ ' + trim(preciop.Text)
   + ', Anticipo $ ' + trim(importee.Text) + ' , Saldo a la fecha $: ' + trim(dprecio.Text);
   observ.SetFocus
end
else begin
  if ( StrScan('0123456789.',Key) <> nil ) or  ( Key = Char(VK_BACK) ) then
  else Key := #0;
end;
end;

procedure TLasParcelasConso.IMPORTEEExit(Sender: TObject);
begin
//if (trim(IMPORTEE.text)='') or (trim(IMPORTEE.text)='0')  or (trim(IMPORTEE.text)='0000.00') then begin
//  messagedlg('EL Valor Ingresado de la Entrega No es Válido',mterror,[mbok],0);
//  IMPORTEE.text:='0000.00';
//  IMPORTEE.SetFocus;
//end
//else begin
  dprecio.Text:= redondeo(floattostr((strtofloat(preciop.Text) - strtofloat(importee.Text))),2);
//end;
end;


procedure TLasParcelasConso.bSalirClick(Sender: TObject);
begin
close;
end;

procedure TLasParcelasConso.preciopChange(Sender: TObject);
begin
bguardar.Enabled:=true;
end;

procedure TLasParcelasConso.bGuardarClick(Sender: TObject);
var el_dni,ElId,valor:string;
var ac,ad,ap,Ok,pt:boolean;
var gf,t,p,estat,estac,ger:integer;
var txtw,elorigen,eltipo,txt:widestring;
begin
  DataConsol.Free;
  DataConsol:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT COUNT(*) AS Expr1 FROM  ParcelasConsolidados where (NroAccion = '+ trim(odni.Text) +')';
  if not Funciones.Listar(txtw,DataConsol) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  ger:=strtoint(DataConsol.Fields[0].AsString);
  if ger <> 0  then  begin
   ParcelasConsolidados:=TParcelasConsolidados.Create(nil);
   ParcelasConsolidados.ConnectionString:=modulo2.Conexion;
   txtw:='UPDATE ParcelasConsolidados SET activo= 0 WHERE (nroaccion=' + trim(odni.Text) + ')';
   ac:=ParcelasConsolidados.ListarSinResp(txtw);
   ParcelasConsolidados.Free;

   ParcelasConsolidados:=TParcelasConsolidados.Create(nil);
   ParcelasConsolidados.ConnectionString:=modulo2.Conexion;
   gf:=messagedlgpos('Desea Agregar los Datos de esta Deuda Consolidada?',mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
   if gf = 1 then begin
    ParcelasConsolidados.C_NroAccion_IX1:=StrToInt(d1.Text);
    ParcelasConsolidados.C_FechaVigencia_IX3:=trim(fecha.Text);
    ParcelasConsolidados.C_Activo:=true;
    ParcelasConsolidados.C_Observaciones:=trim(OBSERV.text);
    ParcelasConsolidados.C_Usu_A:=modulo2.nro_usu;
    ac:=ParcelasConsolidados.Agrega;
    valor:=ParcelasConsolidados.Identidad;
    ParcelasConsolidados.Free;
    if ac then begin
     ParcelasConsolidadosDeudas:=TParcelasConsolidadosDeudas.Create(nil);
     ParcelasConsolidadosDeudas.ConnectionString:=modulo2.Conexion;
     ParcelasConsolidadosDeudas.C_NroAccion_IX1:=StrToInt(d1.Text);
     ParcelasConsolidadosDeudas.C_Codigo_IX3:=0;
     ParcelasConsolidadosDeudas.C_CantCuotas:=0;
     ParcelasConsolidadosDeudas.C_Capital:=StrtoFloat(trim(preciop.Text));
     ParcelasConsolidadosDeudas.C_Interes:=0;
     ParcelasConsolidadosDeudas.C_TotalDeuda:=StrtoFloat(trim(preciop.Text));
     ParcelasConsolidadosDeudas.C_Observaciones:='Anticipo del Consolidado' + trim(importee.Text);
     ParcelasConsolidadosDeudas.C_Usu_A:=modulo2.nro_usu;
     ParcelasConsolidadosDeudas.C_Confirmado:=true;
     ParcelasConsolidadosDeudas.C_Usu_Confirma:=modulo2.nro_usu;
     ParcelasConsolidadosDeudas.C_FechaConfirma_IX4:=trim(fecha.Text);
     ParcelasConsolidadosDeudas.C_Anulado:=false;
     ParcelasConsolidadosDeudas.C_EnMovimientos:=true;
     ad:=ParcelasConsolidadosDeudas.Agrega;
     ParcelasConsolidadosDeudas.free;
     if ad then begin
       if trim(impm.Text) <> '0' then begin
        for t:=1 to grillam.RowCount-1 do begin
         if trim(grillam.Cells[3,t]) = 'X' then begin
          ParcelasConsolidadosPeriodos:=TParcelasConsolidadosPeriodos.Create(nil);
          ParcelasConsolidadosPeriodos.ConnectionString:=modulo2.Conexion;
          ParcelasConsolidadosPeriodos.C_NroAccion:=StrToInt(d1.Text);
          ParcelasConsolidadosPeriodos.C_NroTipoObjeto:=3;
          ParcelasConsolidadosPeriodos.C_IdConsolidado:=strtoint(valor);
          ParcelasConsolidadosPeriodos.C_Periodo:=trim(grillam.Cells[0,t]);
          ParcelasConsolidadosPeriodos.C_ImporteCuota:=trim(grillam.Cells[2,t]);
          ParcelasConsolidadosPeriodos.C_TotalCuota:=trim(grillam.Cells[2,t]);
          Ok:=ParcelasConsolidadosPeriodos.Agrega;
          ParcelasConsolidadosPeriodos.Free;
          if Ok then Barra1.Panels[1].Text:='Periodos mantenimiento guardados Correctamente'
           else Barra1.Panels[1].Text:='Periodos guardados con ERROR';
         end;
        end;
       end;
       /// guadamos los periodos involucrados de la venta
       if trim(impv.Text) <> '0' then begin
        for t:=1 to grillav.RowCount-1 do begin
         if trim(grillav.Cells[4,t]) = 'X' then begin
          ParcelasConsolidadosPeriodos:=TParcelasConsolidadosPeriodos.Create(nil);
          ParcelasConsolidadosPeriodos.ConnectionString:=modulo2.Conexion;
          ParcelasConsolidadosPeriodos.C_NroAccion:=StrToInt(d1.Text);
          ParcelasConsolidadosPeriodos.C_NroTipoObjeto:=1;
          ParcelasConsolidadosPeriodos.C_IdConsolidado:=strtoint(valor);
          ParcelasConsolidadosPeriodos.C_Periodo:=trim(grillav.Cells[0,t]);
          ParcelasConsolidadosPeriodos.C_ImporteCuota:=trim(grillav.Cells[3,t]);
          ParcelasConsolidadosPeriodos.C_TotalCuota:=trim(grillav.Cells[3,t]);
          Ok:=ParcelasConsolidadosPeriodos.Agrega;
          ParcelasConsolidadosPeriodos.Free;
          if Ok then Barra1.Panels[1].Text:='Periodos ventas guardados Correctamente'
           else Barra1.Panels[1].Text:='Periodos guardados con ERROR';
         end;
        end;
       end;
       /// guadamos los periodos involucrados del servicio
       if trim(imps.Text) <> '0' then begin
        for t:=1 to grillas.RowCount-1 do begin
         if trim(grillas.Cells[3,t]) = 'X' then begin
          ParcelasConsolidadosPeriodos:=TParcelasConsolidadosPeriodos.Create(nil);
          ParcelasConsolidadosPeriodos.ConnectionString:=modulo2.Conexion;
          ParcelasConsolidadosPeriodos.C_NroAccion:=StrToInt(d1.Text);
          ParcelasConsolidadosPeriodos.C_NroTipoObjeto:=2;
          ParcelasConsolidadosPeriodos.C_IdConsolidado:=strtoint(valor);
          ParcelasConsolidadosPeriodos.C_Periodo:=trim(grillas.Cells[1,t]);
          ParcelasConsolidadosPeriodos.C_ImporteCuota:=trim(grillas.Cells[2,t]);
          ParcelasConsolidadosPeriodos.C_TotalCuota:=trim(grillas.Cells[2,t]);
          Ok:=ParcelasConsolidadosPeriodos.Agrega;
          ParcelasConsolidadosPeriodos.Free;
          if Ok then Barra1.Panels[1].Text:='Periodos servicios guardados Correctamente'
           else Barra1.Panels[1].Text:='Periodos guardados con ERROR';
         end;
        end;
       end;
       messagedlg('Se ha Guardado la nueva DEUDA CONSOLIDADA con Exito',mtConfirmation,[mbok],0);
       /////
       eltipo:='DEUDA CONSOLIDADO' ;
       elorigen:= 'Deuda Consolidada - Accion: ' + trim(odni.Text) + 'Total Deuda: $' + trim(preciop.Text);
       ParcelasMovimientosDiarrioDetalle:=TParcelasMovimientosDiarrioDetalle.Create(nil);
       ParcelasMovimientosDiarrioDetalle.ConnectionString:=modulo2.Conexion;
       txt:= ' null , null , null , null'
       + ' , ' + chr(39) + strcut(Fec_System(),10) + chr(39)
       + ' , ' + trim(odni.Text)
       + ' , ' + trim(dprecio.Text)
       + ' , null  , null  , null '
       + ' , ' + chr(39) + elorigen + chr(39)
       + ' , null , null , null , null , null  , ' + inttostr(modulo2.nro_usu)
       + ' , ' + chr(39) + eltipo + chr(39);
       txtw:='INSERT INTO ParcelasMovimientosDiarrioDetalle (IdVenta,IdServicio,IdExhumacion,IdTraslado,Fecha,NroAccion,'
       +'Importe,FormaPago,NroCuotas,ValorCouta,Observaciones,Tarjeta,TarjetaTitular,TarjetaNroCuotas,TarjetaComprobante,' +
       'SerieCheque,Usu_A,TipoVenta) VALUES (' +  txt + ')';
       pt:=ParcelasMovimientosDiarrioDetalle.ListarSinResp(txtw);
       ParcelasMovimientosDiarrioDetalle.Free;
       /////
       rvs.Execute;
       //rvacta.Execute;
       coloca1(0);
       limpiar(1);
     end
     else begin
       messagedlg('Error al Guardar esta DEUDA CONSOLIDADA. Consulte con un Administrador',mtError,[mbok],0);
       limpiar(1);
     end;
    end;
   end;
  end
  else begin
   ParcelasConsolidados:=TParcelasConsolidados.Create(nil);
   ParcelasConsolidados.ConnectionString:=modulo2.Conexion;
   gf:=messagedlgpos('Desea Agregar los Datos de esta Deuda Consolidada?',mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
   if gf = 1 then begin
       ParcelasConsolidados.C_NroAccion_IX1:=StrToInt(d1.Text);
       ParcelasConsolidados.C_FechaVigencia_IX3:=trim(fecha.Text);
       ParcelasConsolidados.C_Activo:=true;
       ParcelasConsolidados.C_Observaciones:=trim(OBSERV.text);
       ParcelasConsolidados.C_Usu_A:=modulo2.nro_usu;
       ac:=ParcelasConsolidados.Agrega;
       valor:=ParcelasConsolidados.Identidad;
       ParcelasConsolidados.Free;
       if ac then begin
        ParcelasConsolidadosDeudas:=TParcelasConsolidadosDeudas.Create(nil);
        ParcelasConsolidadosDeudas.ConnectionString:=modulo2.Conexion;
        ParcelasConsolidadosDeudas.C_NroAccion_IX1:=StrToInt(d1.Text);
        ParcelasConsolidadosDeudas.C_Codigo_IX3:=0;
        ParcelasConsolidadosDeudas.C_CantCuotas:=0;
        ParcelasConsolidadosDeudas.C_Capital:=StrtoFloat(trim(preciop.Text));
        ParcelasConsolidadosDeudas.C_Interes:=0;
        ParcelasConsolidadosDeudas.C_TotalDeuda:=StrtoFloat(trim(preciop.Text));
        ParcelasConsolidadosDeudas.C_Observaciones:= 'Anticipo del Consolidado $' + trim(importee.Text);
        ParcelasConsolidadosDeudas.C_Usu_A:=modulo2.nro_usu;
        ParcelasConsolidadosDeudas.C_Confirmado:=true;
        ParcelasConsolidadosDeudas.C_Usu_Confirma:=modulo2.nro_usu;
        ParcelasConsolidadosDeudas.C_FechaConfirma_IX4:=trim(fecha.Text);
        ParcelasConsolidadosDeudas.C_Anulado:=false;
        ParcelasConsolidadosDeudas.C_EnMovimientos:=true;
        ad:=ParcelasConsolidadosDeudas.Agrega;
        ParcelasConsolidadosDeudas.free;
        if ad then begin
          /// guadamos los periodos involucrados del mantenimiento
         if trim(impm.Text) <> '0' then begin
          for t:=1 to grillam.RowCount-1 do begin
           if trim(grillam.Cells[3,t]) = 'X' then begin
            ParcelasConsolidadosPeriodos:=TParcelasConsolidadosPeriodos.Create(nil);
            ParcelasConsolidadosPeriodos.ConnectionString:=modulo2.Conexion;
            ParcelasConsolidadosPeriodos.C_NroAccion:=StrToInt(d1.Text);
            ParcelasConsolidadosPeriodos.C_NroTipoObjeto:=3;
            ParcelasConsolidadosPeriodos.C_IdConsolidado:=strtoint(valor);
            ParcelasConsolidadosPeriodos.C_Periodo:=trim(grillam.Cells[0,t]);
            ParcelasConsolidadosPeriodos.C_ImporteCuota:=trim(grillam.Cells[2,t]);
            ParcelasConsolidadosPeriodos.C_TotalCuota:=trim(grillam.Cells[2,t]);
            Ok:=ParcelasConsolidadosPeriodos.Agrega;
            ParcelasConsolidadosPeriodos.Free;
            if Ok then Barra1.Panels[1].Text:='Periodos mantenimiento guardados Correctamente'
             else Barra1.Panels[1].Text:='Periodos guardados con ERROR';
           end;
          end;
         end;
         /// guadamos los periodos involucrados de la venta
         if trim(impv.Text) <> '0' then begin
          for t:=1 to grillav.RowCount-1 do begin
           if trim(grillav.Cells[4,t]) = 'X' then begin
            ParcelasConsolidadosPeriodos:=TParcelasConsolidadosPeriodos.Create(nil);
            ParcelasConsolidadosPeriodos.ConnectionString:=modulo2.Conexion;
            ParcelasConsolidadosPeriodos.C_NroAccion:=StrToInt(d1.Text);
            ParcelasConsolidadosPeriodos.C_NroTipoObjeto:=1;
            ParcelasConsolidadosPeriodos.C_IdConsolidado:=strtoint(valor);
            ParcelasConsolidadosPeriodos.C_Periodo:=trim(grillav.Cells[0,t]);
            ParcelasConsolidadosPeriodos.C_ImporteCuota:=trim(grillav.Cells[3,t]);
            ParcelasConsolidadosPeriodos.C_TotalCuota:=trim(grillav.Cells[3,t]);
            Ok:=ParcelasConsolidadosPeriodos.Agrega;
            ParcelasConsolidadosPeriodos.Free;
            if Ok then Barra1.Panels[1].Text:='Periodos ventas guardados Correctamente'
             else Barra1.Panels[1].Text:='Periodos guardados con ERROR';
           end;
          end;
         end;
         /// guadamos los periodos involucrados del servicio
         if trim(imps.Text) <> '0' then begin
          for t:=1 to grillas.RowCount-1 do begin
           if trim(grillas.Cells[3,t]) = 'X' then begin
            ParcelasConsolidadosPeriodos:=TParcelasConsolidadosPeriodos.Create(nil);
            ParcelasConsolidadosPeriodos.ConnectionString:=modulo2.Conexion;
            ParcelasConsolidadosPeriodos.C_NroAccion:=StrToInt(d1.Text);
            ParcelasConsolidadosPeriodos.C_NroTipoObjeto:=2;
            ParcelasConsolidadosPeriodos.C_IdConsolidado:=strtoint(valor);
            ParcelasConsolidadosPeriodos.C_Periodo:=trim(grillas.Cells[1,t]);
            ParcelasConsolidadosPeriodos.C_ImporteCuota:=trim(grillas.Cells[2,t]);
            ParcelasConsolidadosPeriodos.C_TotalCuota:=trim(grillas.Cells[2,t]);
            Ok:=ParcelasConsolidadosPeriodos.Agrega;
            ParcelasConsolidadosPeriodos.Free;
            if Ok then Barra1.Panels[1].Text:='Periodos servicios guardados Correctamente'
               else Barra1.Panels[1].Text:='Periodos guardados con ERROR';
           end;
          end;
         end;
         messagedlg('Se ha Guardado la nueva DEUDA CONSOLIDADA con Exito',mtConfirmation,[mbok],0);
         eltipo:='CONSOLIDADO - Accion: ' + trim(odni.Text) ;
         elorigen:= 'Deuda Consolidada' ;
         ParcelasMovimientosDiarrioDetalle:=TParcelasMovimientosDiarrioDetalle.Create(nil);
         ParcelasMovimientosDiarrioDetalle.ConnectionString:=modulo2.Conexion;
         txt:= ' null , null , null , null'
         + ' , ' + chr(39) + strcut(Fec_System(),10) + chr(39)
         + ' , ' + trim(odni.Text)
         + ' , ' + trim(dprecio.Text)
         + ' , null  , null  , null '
         + ' , ' + chr(39) + elorigen + chr(39)
         + ' , null , null , null , null , null  , ' + inttostr(modulo2.nro_usu)
         + ' , ' + chr(39) + eltipo + chr(39);
         txtw:='INSERT INTO ParcelasMovimientosDiarrioDetalle (IdVenta,IdServicio,IdExhumacion,IdTraslado,Fecha,NroAccion,'
         +'Importe,FormaPago,NroCuotas,ValorCouta,Observaciones,Tarjeta,TarjetaTitular,TarjetaNroCuotas,TarjetaComprobante,' +
         'SerieCheque,Usu_A,TipoVenta) VALUES (' +  txt + ')';
         pt:=ParcelasMovimientosDiarrioDetalle.ListarSinResp(txtw);
         ParcelasMovimientosDiarrioDetalle.Free;
         rvs.Execute;
         //rvacta.Execute;
         coloca1(0);
         limpiar(1);
       end
       else begin
        messagedlg('Error al Guardar esta DEUDA CONSOLIDADA. Consulte con un Administrador',mtError,[mbok],0);
        limpiar(1);
       end;
     end;
   end;
  end;
end;

procedure TLasParcelasConso.OBSERVKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then bguardar.SetFocus;
end;

procedure TLasParcelasConso.RvSPrint(Sender: TObject);
var posfx,posfy,final,salto,posw,pos5,posfv,posfs,poswv:double;
var t,y,hoja,nro,m,s,v:integer;
var txt:string;
var pso:boolean;

   Function Logo(posx,posy:double;vaf:integer):double;
   var Imagen1,MarcaAgua:TBitMap;
       PathLogo,PathLogo1:string;
       t:integer;
   begin
   with RvS do begin
     Imagen1 := TBitMap.Create;
     PathLogo:=modulo2.path_todo + '\Imagenes\' + modulo2.INI1.ReadString('Resumen Caja','Imagen1','');
     if FileExists(PathLogo) then begin
       Image1.Picture.LoadFromFile(PathLogo);
       Imagen1.Assign(Image1.Picture.Graphic);
       BaseReport.PrintBitmapRect(posx+6,posy+2,posx+30,posy+22,Imagen1);
     end;
     Imagen1.Free;
     BaseReport.Rectangle(posx+2,posy+1,posx+200,posy+23);
     BaseReport.SetFont('Arial Black',9);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+34,posy+5,'CARMELO MONTE S.A. Servicios & Mandatos');
     BaseReport.SetFont('Arial Black',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+34,posy+9,modulo2.INI1.ReadString('Resumen Planillas','Titulo2',''));
     BaseReport.SetFont('Arial',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+149,posy+22,'Pág.: ' + inttostr(vaf));
     BaseReport.PrintXY(posx+160,posy+22,'Usu Imp.: ' + inttostr(modulo2.nro_usu) + ' - Fec. Imp.:' + strcut(Fec_System(),10));
     BaseReport.SetFont('Arial',10);
     BaseReport.FontColor:=clBlack;
     Rvs.BaseReport.SetFont('Arial Black',8);
     Rvs.BaseReport.FontColor:=clBlack;
     Rvs.BaseReport.PrintXY(posfx+34,posfy+17,'DETALLE DE CONSOLIDACION DE DEUDA');
     Rvs.BaseReport.PrintXY(posfx+34,posfy+22,'Nº ACCION: ' + TRIM(d1.Text)+ '          -                SECTOR: ' + TRIM(d3.Text) + ' PARCELA: ' + TRIM(d5.Text));
     Logo:=posy+25;

     BaseReport.SetFont('Arial Black',9);
     BaseReport.FontColor:=clBlack;
     BaseReport.RoundRect(posfx+2,posfy+28,posfx+80,posfy+33,5,5);
     BaseReport.PrintXY(posfx+10,posfy+32,'Titulares');
     BaseReport.SetFont('Arial Black',8);
     BaseReport.FontColor:=clBlack;
     Pos5:=0;
      //Imprimiendo Titulares
         for t:=1 to DataSetT.RecordCount do begin
          DataSetT.RecNo:=t;
          BaseReport.PrintXY(posfx+2,posfy+38 + Pos5,DataSetT.Fields[5].AsString + ' - ' + trim(DataSetT.Fields[1].AsString) + ' - ' + DataSetT.Fields[4].AsString);
          Pos5:=Pos5 + 4;
      end;

      BaseReport.SetFont('Arial Black',8);
      Rvs.BaseReport.PrintXY(posfx+2,posfy+55,'FECHA DE CONSOLIDACION: ' + TRIM(FECHA.Text));
      Rvs.BaseReport.PrintXY(posfx+2,posfy+60,'DEUDA INICIAL: $ ' + TRIM(preciop.Text));
      Rvs.BaseReport.PrintXY(posfx+62,posfy+60,'IMPORTE ANTICIPO: $ ' + TRIM(importee.Text));
      Rvs.BaseReport.PrintXY(posfx+122,posfy+60,'SALDO DEUDA: $ ' + TRIM(dprecio.Text));
      BaseReport.RoundRect(posfx+40,posfy+69,posfx+180,posfy+74,5,5);
      Rvs.BaseReport.PrintXY(posfx+50,posfy+73,'DETALLE DE PERIODOS/CUOTAS CONSOLIDADAS POR OBJETOS');

      BaseReport.SetFont('Arial',8);
      Rvs.BaseReport.PrintXY(posfx+2,posfy+65,'Observaciones: ' + TRIM(observ.Text));

      //Rvs.BaseReport.PrintXY(posfx+80,posfy+75,'DETALLE DE PERIODOS/CUOTAS CONSOLIDADAS POR OBJETOS');
   end;
   end;

   Function Mostrar1(posx,posy:double):double;
   var t,y:integer;
   begin
     with RvS do begin
       BaseReport.SetFont('Arial Black',8);
       BaseReport.PrintXY(posx+2,posy - 1,'   Deuda Mantenimiento');
       BaseReport.SetFont('Arial',8);
       BaseReport.Rectangle(posx+2,posy,posx+50,posy+5);
       BaseReport.Rectangle(posx+29,posy,posx+50,posy+5);
       BaseReport.PrintXY(posx+5,posy+4,'Periodos');
       BaseReport.PrintXY(posx+30,posy+4,'Importe');

       BaseReport.SetFont('Arial Black',8);
       BaseReport.PrintXY(posx+85,posy - 1,'   Deuda Parcelas');
       BaseReport.SetFont('Arial',8);
       BaseReport.Rectangle(posx+82,posy,posx+120,posy+5);
       BaseReport.Rectangle(posx+100,posy,posx+120,posy+5);
       BaseReport.PrintXY(posx+85,posy+4,'NroCuota');
       BaseReport.PrintXY(posx+103,posy+4,'Importe');

       BaseReport.SetFont('Arial Black',8);
       BaseReport.PrintXY(posx+142,posy - 1,'   Deuda Servicios');
       BaseReport.SetFont('Arial',8);
       BaseReport.Rectangle(posx+138,posy,posx+190,posy+5);
       BaseReport.Rectangle(posx+159,posy,posx+190,posy+5);
       BaseReport.PrintXY(posx+140,posy+4,'NroCuota');
       BaseReport.PrintXY(posx+160,posy+4,'Importe');
     end;
   END;

begin
 try
  posfx:=5.5;
  posfy:=5;
  posfv:=5.5;
  posfs:=5.5;
  salto:=4;
  final:=0;
  hoja:=1;
  posfy:=Logo(posfx,posfy,hoja)+salto;

  posfy:=posfy + 50;
  posfy:=Mostrar1(posfx,posfy)+ salto;
  posfy:=posfy+90;
  posfv:=posfy;
  posfs:=posfy;

        for m:=1 to grillam.RowCount-1 do begin
          if trim(grillam.Cells[3,m]) = 'X' then begin
             posfy:=posfy-0.5;
             RVS.BaseReport.SetFont('Arial',9);
             RVS.BaseReport.PrintXY(posfx+6,posfy,trim(grillam.Cells[0,m]));
             RVS.BaseReport.MoveTo(posw,posfy);
             RVS.BaseReport.PrintLeft(trim(grillam.Cells[2,m]),posfx+30);
             RVS.BaseReport.MoveTo(posw,posfy);
             posfy:=posfy+0.5;

             // hacemos la lineas internas de las grilla
             RVS.BaseReport.Rectangle(posfx+2,posfy,posfx+50,posfy-4);
             RVS.BaseReport.Rectangle(posfx+29,posfy,posfx+50,posfy-4);
             posfy:=posfy + salto;
          end;
        end;

        for v:=1 to grillav.RowCount-1 do begin
          if trim(grillav.Cells[4,v]) = 'X' then begin
                 posfv:=posfv-0.5;
                 RVS.BaseReport.SetFont('Arial',9);
                 RVS.BaseReport.PrintXY(posfx+88,posfv,trim(grillav.Cells[0,v]));
                 RVS.BaseReport.MoveTo(posw,posfv);
                 RVS.BaseReport.PrintLeft(trim(grillav.Cells[3,v]),posfx+103);
                 RVS.BaseReport.MoveTo(posw,posfv);
                 posfv:=posfv+0.5;

                 // hacemos la lineas internas de las grilla
                 RVS.BaseReport.Rectangle(posfx+82,posfv,posfx+120,posfv-4);
                 RVS.BaseReport.Rectangle(posfx+100,posfv,posfx+120,posfv-4);
                 posfv:=posfv + salto;
          end;
        end;

        for s:=1 to grillaS.RowCount-1 do begin
           if trim(grillas.Cells[3,s]) = 'X' then begin
                 posfs:=posfs-0.5;
                 RVS.BaseReport.SetFont('Arial',9);
                 RVS.BaseReport.PrintXY(posfx+143,posfs,trim(grillas.Cells[1,s]));
                 RVS.BaseReport.MoveTo(posw,posfs);
                 RVS.BaseReport.PrintLeft(trim(grillas.Cells[2,s]),posfx+160);
                 RVS.BaseReport.MoveTo(posw,posfs);
                 posfs:=posfs+0.5;

                 // hacemos la lineas internas de las grilla
                 RVS.BaseReport.Rectangle(posfx+138,posfs,posfx+190,posfs-4);
                 RVS.BaseReport.Rectangle(posfx+159,posfs,posfx+190,posfs-4);
                 posfs:=posfs + salto;
           end;
        end;
 except
 end;
end;

procedure TLasParcelasConso.grillamClick(Sender: TObject);
begin
 if (trim(grillam.Cells[0,grillam.Row])<>'') then begin
   if grillam.Cells[3,grillam.Row] = '' then grillam.Cells[3,grillam.Row]:='X'
    else grillam.Cells[3,grillam.Row]:='';
   sumaDeuda(1);
 end;
end;

procedure TLasParcelasConso.grillavClick(Sender: TObject);
begin
 if (trim(grillav.Cells[0,grillav.Row])<>'') then begin
   if grillav.Cells[4,grillav.Row] = '' then grillav.Cells[4,grillav.Row]:='X'
     else grillav.Cells[4,grillav.Row]:='';
   sumaDeuda(2);
 end;
end;

procedure TLasParcelasConso.grillasClick(Sender: TObject);
begin
  if (trim(grillas.Cells[0,grillas.Row])<>'') then begin   //and (trim(grillas.Cells[3,grillas.Row])='DEUDA')
    if grillas.Cells[3,grillas.Row] = '' then grillas.Cells[3,grillas.Row]:='X'
    else grillas.Cells[3,grillas.Row]:='';
   sumaDeuda(3);
  end;
end;

procedure TLasParcelasConso.grillacClick(Sender: TObject);
begin
// if (trim(grillac.Cells[16,grillac.Row])='') and (trim(grillac.Cells[9,grillac.Row])='DEUDA') then
//   grillac.Cells[16,grillac.Row]:='X';
//  sumaDeuda(4);
end;

procedure TLasParcelasConso.sumaDeuda(nro:byte);
var t:integer;
    totalm,totalv,totals,totalc:real;
begin
totalc:=0;
  if nro=1 then begin
   totalm:=0;
   for t:=1 to grillam.RowCount-1 do begin
     if trim(grillam.Cells[3,t]) = 'X' then begin
       totalm:= totalm + strtofloat(grillam.Cells[2,t]) ;
     end;
   end;
   impm.Text:=floattostr(totalm);
  end;
  if nro=2 then begin
   totalv:=0;
   for t:=1 to grillav.RowCount-1 do begin
     if trim(grillav.Cells[4,t]) = 'X' then begin
       totalv:= totalv + strtofloat(grillav.Cells[3,t]);
     end;
   end;
   impv.Text:=floattostr(totalv);
  end;
  if nro=3 then begin
   totals:=0;
   for t:=1 to grillas.RowCount-1 do begin
     if trim(grillas.Cells[3,t]) = 'X' then begin
       totals:= totals + strtofloat(grillas.Cells[2,t]) ;
     end;
   end;
   imps.Text:=floattostr(totals);
  end;
  if nro=4 then begin
//   for t:=1 to grillac.RowCount-1 do begin
//     if trim(grillac.Cells[16,t]) = 'X' then begin
//       totalc:= totalc + strtofloat(grillac.Cells[5,t]) + strtofloat(grillac.Cells[6,t]) ;
//     end;
//   end;
//   impc.Text:=floattostr(totalc);
  end;
  preciop.text:=floattostr(strtofloat(impm.Text) + strtofloat(impv.Text) + strtofloat(imps.Text));
end;

procedure TLasParcelasConso.RvActaPrint(Sender: TObject);
var posfx,posfy,posfin,pos_y,salto:double;
var hoja:integer;

   Function Imagenjpg(posx,posy:double;vaf:integer):double;
   var Imagen2:  TBitmap;
       Fuente,PathLogo,tipot,nombret,tipodoct,dnit,domt:string;
       Tamanio,t:integer;
   begin
     with RvActa do begin
       Imagen2 := TBitMap.Create;
       PathLogo:=modulo2.path_todo + '\Formularios\FRM-11.01.jpg';
       if FileExists(PathLogo) then begin
         Image2.Picture.LoadFromFile(PathLogo);
         Imagen2.Assign(Image2.Picture.Graphic);
         BaseReport.PrintBitmapRect(posx+5,posy,posx+215,posy+290,Imagen2);
       end;
       Imagen2.Free;

         BaseReport.SetFont('Arial Black',8);
         BaseReport.FontColor:=clBlack;
//         BaseReport.PrintXY(posx+60,posy+34,TRIM(fec_texto(trim(fecfalle.Text))));
//         BaseReport.PrintXY(posx+20,posy+40,TRIM(accion.text));
//         BaseReport.PrintXY(posx+125,posy+40,TRIM(apeynom.text));
//         BaseReport.PrintXY(posx+45,posy+49,TRIM(tipodoc.text));
//         BaseReport.PrintXY(posx+59,posy+49,TRIM(dnifalle.text));
//         BaseReport.PrintXY(posx+97,posy+49,TRIM(fecnac.text));
//         BaseReport.PrintXY(posx+172,posy+49,TRIM(nacio.text));
//         BaseReport.PrintXY(posx+32,posy+55,TRIM(estcivil.text));
     end;
   end;

begin
posfx:=1;posfy:=1;salto:=4;hoja:=1;
posfy:=Imagenjpg(posfx,posfy,hoja);

end;

end.

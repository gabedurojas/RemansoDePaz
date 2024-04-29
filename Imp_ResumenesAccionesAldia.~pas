unit Imp_ResumenesAccionesAldia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, Grids, DBGrids, JvgGroupBox, Buttons,
  JvExButtons, JvBitBtn, ComCtrls, ToolWin, DBClient, WSDLIntf, ClaseFunciones,
  StrUtils, ClaseSistemas, Unidad, RpDefine, RpBase, RpSystem, ADODB, Menus,
  JvExStdCtrls, JvGroupBox, Mask, TeeProcs, TeEngine, Chart, DBChart,
  Series, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit;

type HackTable = class(TADOTable);
type
  TImp_ResumenAldia = class(TForm)
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    Limpiar: TJvBitBtn;
    ToolButton3: TToolButton;
    JvBitBtn1: TJvBitBtn;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Splitter1: TSplitter;
    Barra1: TStatusBar;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label3: TLabel;
    Label4: TLabel;
    HASTA: TEdit;
    DESDE: TEdit;
    IMPRIME: TJvBitBtn;
    TabSheet3: TTabSheet;
    PC2: TPageControl;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    DBGrid5: TDBGrid;
    DBGrid6: TDBGrid;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    DataSource6: TDataSource;
    TabSheet9: TTabSheet;
    DBGrid7: TDBGrid;
    DataSource7: TDataSource;
    PERIODO: TComboBox;
    Label2: TLabel;
    RvS: TRvSystem;
    P1: TProgressBar;
    Image1: TImage;
    RvC: TRvSystem;
    resumcob: TJvBitBtn;
    HISTO: TADODataSet;
    TabSheet10: TTabSheet;
    DataSource8: TDataSource;
    DBGrid8: TDBGrid;
    LasDeudas: TStringGrid;
    TabSheet11: TTabSheet;
    StringGridUP: TStringGrid;
    DataSource9: TDataSource;
    DataResult: TADODataSet;
    TabSheet12: TTabSheet;
    GRILLADETSERV: TStringGrid;

    T8: TClientDataSet;
    DataSource10: TDataSource;
    PageControl1: TPageControl;
    TabSheet13: TTabSheet;
    JvgGroupBox5: TJvgGroupBox;
    Image2: TImage;
    DBGrid1: TDBGrid;
    Button3: TButton;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    LabelCA: TLabel;
    LabelCM: TLabel;
    LabelPM: TLabel;
    Image3: TImage;
    BitBtn1: TBitBtn;
    Image4: TImage;
    BitBtn2: TBitBtn;
    Label5: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    COBRADOR: TComboBox;
    TPOOBJ: TComboBox;
    Label7: TLabel;
    RE5: TRichEdit;    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure DESDEKeyPress(Sender: TObject; var Key: Char);
    procedure HASTAKeyPress(Sender: TObject; var Key: Char);
    procedure HASTAExit(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure RvSPrint(Sender: TObject);
    procedure IMPRIMEClick(Sender: TObject);
    procedure resumcobClick(Sender: TObject);
    procedure RvCPrint(Sender: TObject);
    procedure COBRADORExit(Sender: TObject);
    procedure COBRADORKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure PERIODOKeyPress(Sender: TObject; var Key: Char);
    procedure PERIODOExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure TPOOBJExit(Sender: TObject);
    procedure TPOOBJKeyPress(Sender: TObject; var Key: Char);
  private
    IdCombos:array of array of string;
    DataSet0,DataSet1,DataSet2,DataSet3,DataSet4,DataSet5,DataSet6,DtCombo,
    DtComboCob,DtFiltro,DataDeudas,DataSetCuotasVta,DataSetCuotasServ,
    DtComboReg,DtComboCobros,DatosPagosH,DataSetProces:TClientDataSet;
    ACCION,CUOTAS,ULTIMOP,PROCESO1,PROCESO2,PROCESO3: TADODataSet;
    Funciones:TFuncionesVarias;
    Sistemas:TSistemas;
    FechaActual,totclie,elnrogestor,valormante,sumapos:string;{ Private declarations }
    nextmes,ctasserv,totregm:integer;
    porcen:real;
  public
    gh,Paso:boolean;
    Ini,Fin:integer;{ Public declarations }
    txtfecha,elmes,elanio,cantreg,laaccion:string;
    PosH:Array [0..8] of Double;//Posiciones
    Camp:Array [0..8] of Integer;//Campos a Tomar en cuenta
    TxtCamp:Array [0..8] of String;//Textos de los Campos a Tomar en cuenta

    PosHa:Array [0..1] of Double;//Posiciones
    Campa:Array [0..1] of Integer;//Campos a Tomar en cuenta
    TxtCampa:Array [0..1] of String;//Textos de los Campos a Tomar en cuenta
  end;

var
  Imp_ResumenAldia: TImp_ResumenAldia;

implementation

uses Modulo;

{$R *.dfm}

procedure TImp_ResumenAldia.FormActivate(Sender: TObject);
begin
if not(gh) then begin
  gh:=true;
  ACCION:=TADODataSet.Create(nil);
  ACCION.ConnectionString:=modulo2.Conexion;
  CUOTAS:=TADODataSet.Create(nil);
  CUOTAS.ConnectionString:=modulo2.Conexion;
  Datasource8.DataSet:=cuotas;
  ULTIMOP:=TADODataSet.Create(nil);
  ULTIMOP.ConnectionString:=modulo2.Conexion;
  Datasource9.DataSet:=ULTIMOP;
  PROCESO1:=TADODataSet.Create(nil);
  PROCESO1.ConnectionString:=modulo2.Conexion;
  PROCESO2:=TADODataSet.Create(nil);
  PROCESO2.ConnectionString:=modulo2.Conexion;
  PROCESO2.CommandTimeout:=180;
  PROCESO3:=TADODataSet.Create(nil);
  PROCESO3.ConnectionString:=modulo2.Conexion;
  setlength(IdCombos,2);
  FechaActual:=LeftStr(Fec_System(),10);
  //fechadesde.t:=FechaActual;
  //fechahasta.Text:=FechaActual;
  PC1.ActivePage:=PC1.Pages[0];
  PC2.ActivePage:=PC2.Pages[0];
  IMPRIME.Enabled:=false;
  resumcob.Enabled:=false;
  button3.Enabled:=false;

  Coloca1(0);
  Coloca1(4);
  Coloca1(7);
  Coloca1(10);
  labelca.Caption:='...';
  labelcm.Caption:='...';
  labelpm.Caption:='...';
  cobrador.Visible:=true;
  resumcob.Enabled:=false;
  PageControl1.ActivePage:=PageControl1.Pages[0];
  PERIODO.SetFocus;
end;
end;

procedure TImp_ResumenAldia.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TImp_ResumenAldia.Coloca1(nro:byte);
var t,y:integer;
    NroDni,ValNull:variant;
    txt,sec:string;
    txtw:widestring;
begin
if nro=0 then begin
  PERIODO.Clear;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if not Funciones.Listar('SELECT * FROM PeriodoImpresion (' + chr(39) + FechaActual + chr(39) + ')',DtCombo) then
  //if not Funciones.Listar('SELECT TOP 5 Periodo FROM PeriodosVencimientos WHERE (Vencimiento<= DATEADD(MONTH, 1,'
  //+ chr(39) + FechaActual + chr(39) + ')) ORDER BY periodo desc',DtCombo) then
  //if not Funciones.Listar('SELECT * FROM Fn_LosPeriodos (' + chr(39) + FechaActual + chr(39) + ') ORDER BY periodo desc',DtCombo) then
  //  messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
    for t:=1 to DtCombo.RecordCount  do begin
      DtCombo.RecNo:=t;
      PERIODO.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
    end;
  end;
  Funciones.Free;
  PERIODO.ItemIndex:=0;
end;
if nro=1 then begin //Grilla Principal
  Paso:=false;
  DataSet0.Free;
  DataSet0:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=DataSet0;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  ValNull:=null;
  //if R1.Checked then NroDni:=2;
  //if R2.Checked then NroDni:=1;
  //if R3.Checked then NroDni:=null;
  txtw:='SELECT * FROM AccionesParaResumenNew ( 0  ,null  ,2  ,0  ,null) order by 1';
  if not Funciones.Listar(txtw,DataSet0) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if not DataSet0.IsEmpty then begin
    DESDE.Text:='1';
    HASTA.Text:=IntToStr(DataSet0.RecordCount);
    IMPRIME.Enabled:=true;
    Barra1.Panels[1].Text:='Cant. Reg.: ' + IntToStr(DataSet0.RecordCount);
    Paso:=true;
  end;
end;
if nro = 2 then begin
  ValNull:=PERIODO.Text;
  NroDni:=DataDeudas.Fields[1].AsVariant;
  //NroDni:=DataSet0.Fields[1].AsVariant;
  ElMes:=RightStr(trim(periodo.Text),2);
  ElAnio:=LeftStr(trim(periodo.Text),4);
  txtfecha:='05/' + ElMes + '/' + ElAnio;
  ctasserv:=0;

  //Traemos los Titulares
  DataSet1.Free;
  DataSet1:=TClientdataSet.Create(nil);
  DataSource2.DataSet:=DataSet1;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if not Funciones.Run_Fn_VistaTitularesParaResumen(NroDni,DataSet1,'ORDER BY 1',3) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;

  //Traemos Cuenta de ventas
  DataSet2.Free;
  DataSet2:=TClientdataSet.Create(nil);
  DataSource3.DataSet:=DataSet2;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if not Funciones.Run_SaldosPorAccion(1,NroDni,ValNull,true,DataSet2,'ORDER BY 1',0) then
  //if not Funciones.Run_SaldosPorAccion(1,NroDni,ValNull,true,DataSet2,' where detalle =''SALDO FINAL'' ORDER BY 1',0) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;

  //Traemos Cuenta de servicios
  DataSet3.Free;
  DataSet3:=TClientdataSet.Create(nil);
  DataSource4.DataSet:=DataSet3;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if not Funciones.Run_SaldosPorAccion(2,NroDni,ValNull,true,DataSet3,'ORDER BY 1',0) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;

  //Traemos Cuenta de mantenimiento
  DataSet4.Free;
  DataSet4:=TClientdataSet.Create(nil);
  DataSource5.DataSet:=DataSet4;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT ID,Periodo,Vencimiento,ImporteCuota,InteresAcumulado,PorcentajeAplicado,TotalCuota, '
  + 'EstadoVto,EstadoPago,OrigenPago,FechaCobro,NroComprobante,ImporteCobrado'
  + ' FROM EstadoCuentaMantenimiento ( ' + inttostr(NroDni) +',' + chr(39)+  txtfecha +chr(39) +',0) where Periodo = 999999';
  if not Funciones.Listar(txtw,DataSet4) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;

  //Traemos Cuenta de consolidadados
  DataSet5.Free;
  DataSet5:=TClientdataSet.Create(nil);
  DataSource6.DataSet:=DataSet5;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if not Funciones.Run_SaldosPorAccion(4,NroDni,ValNull,true,DataSet5,'ORDER BY 1',0) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;

 //Traemos Cuenta de psp
  DataSet6.Free;
  DataSet6:=TClientdataSet.Create(nil);
  DataSource7.DataSet:=DataSet6;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if not Funciones.Run_SaldosPorAccion(6,NroDni,ValNull,true,DataSet6,'ORDER BY 1',0) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;

  //cargamos los periodos adeudados
  CUOTAS.Close;
  CUOTAS.CommandText:='exec EstadoCuentaMantenimientoMin ' + inttostr(NroDni) +
     ',' + chr(39) + txtfecha + chr(39) ;
  CUOTAS.Open;
  for t:=0 to lasdeudas.ColCount-1 do
    for y:=1 to lasdeudas.RowCount-1 do lasdeudas.Cells[t,y]:='';
     for t:=1 to Datasource8.DataSet.RecordCount do begin
      Datasource8.DataSet.RecNo:=t;
      lasdeudas.RowCount:=t+1;
      lasdeudas.Cells[0,t]:=trim(Datasource8.DataSet.Fields[0].AsString);
      lasdeudas.Cells[1,t]:=trim(Datasource8.DataSet.Fields[1].AsString);
      lasdeudas.Cells[2,t]:=trim(Datasource8.DataSet.Fields[2].AsString);
      lasdeudas.Cells[3,t]:=trim(Datasource8.DataSet.Fields[3].AsString);
      lasdeudas.Cells[4,t]:=trim(Datasource8.DataSet.Fields[4].AsString);
      lasdeudas.Cells[5,t]:=trim(Datasource8.DataSet.Fields[5].AsString);
      lasdeudas.Cells[6,t]:=trim(Datasource8.DataSet.Fields[6].AsString);
      lasdeudas.Cells[7,t]:=trim(Datasource8.DataSet.Fields[7].AsString);
      lasdeudas.Cells[8,t]:=trim(Datasource8.DataSet.Fields[8].AsString);
      lasdeudas.Cells[9,t]:=trim(Datasource8.DataSet.Fields[9].AsString);
      lasdeudas.Cells[10,t]:=trim(Datasource8.DataSet.Fields[10].AsString);
      lasdeudas.Cells[11,t]:=trim(Datasource8.DataSet.Fields[11].AsString);
      lasdeudas.Cells[12,t]:=trim(Datasource8.DataSet.Fields[12].AsString);
     end;

  //cargamos los ULTIMOS Pagos
  ULTIMOP.Close;
  ULTIMOP.CommandText:=' SELECT * FROM UltimosPagosxAccion (' + inttostr(NroDni) +')';
  ULTIMOP.Open;
  for t:=0 to StringGridUP.ColCount-1 do
    for y:=1 to StringGridUP.RowCount-1 do StringGridUP.Cells[t,y]:='';
     for t:=1 to Datasource9.DataSet.RecordCount do begin
      Datasource9.DataSet.RecNo:=t;
      StringGridUP.RowCount:=t+1;
      StringGridUP.Cells[0,t]:=trim(Datasource9.DataSet.Fields[0].AsString);
      StringGridUP.Cells[1,t]:=trim(Datasource9.DataSet.Fields[1].AsString);
      StringGridUP.Cells[2,t]:=trim(Datasource9.DataSet.Fields[2].AsString);
      StringGridUP.Cells[3,t]:=trim(Datasource9.DataSet.Fields[3].AsString);
      StringGridUP.Cells[4,t]:=trim(Datasource9.DataSet.Fields[4].AsString);
      StringGridUP.Cells[5,t]:=trim(Datasource9.DataSet.Fields[5].AsString);
     end;

   //Traemos las cuotas e importes de las ventas
  DataSetCuotasVta.Free;
  DataSetCuotasVta:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='select convert(nvarchar(5),(count(id))) + ''/''+ convert(nvarchar(5),(max(nrocuota))),importecuota'
  + ' from EstadoCuentaVentas( ' + inttostr(NroDni) + ',' + chr(39)+  txtfecha + chr(39) +',0) where estadopago=''deuda'' group by NroAccion,importecuota';
  if not Funciones.Listar(txtw,DataSetCuotasVta) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;

  //Traemos las cuotas e importes de los servicios
  DataSetCuotasServ.Free;
  DataSetCuotasServ:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT idservicio,count(NroCuota) as CantcuotasDeuda,Importe as ImpCuota,Punitorio '
   + ' FROM Fn_PeriodosDeudaServ (' + inttostr(NroDni) + ') group by idservicio,Importe,Punitorio  order by 1,2';
  if not Funciones.Listar(txtw,DataSetCuotasServ) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  for t:=0 to GRILLADETSERV.ColCount-1 do
    for y:=1 to GRILLADETSERV.RowCount-1 do GRILLADETSERV.Cells[t,y]:='';
     for t:=1 to DataSetCuotasServ.RecordCount do begin
      DataSetCuotasServ.RecNo:=t;
      GRILLADETSERV.RowCount:=t+1;
      GRILLADETSERV.Cells[0,t]:=trim(DataSetCuotasServ.Fields[0].AsString);
      GRILLADETSERV.Cells[1,t]:=trim(DataSetCuotasServ.Fields[1].AsString);
      ctasserv:=ctasserv +  strtoint(GRILLADETSERV.Cells[1,t]);
      GRILLADETSERV.Cells[2,t]:=trim(DataSetCuotasServ.Fields[2].AsString);
     end;

end;
if nro=3 then begin
  DtComboReg.Free;
  DtComboReg:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT MAX(id) FROM AccionesParaResumenNew ( 1 ,null  ,2  ,0  , '+ chr(39) + trim(cobrador.Text) + chr(39)+') order by 1';
  if not Funciones.Listar(txtw,DtComboReg) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  cantreg:=DtComboReg.Fields[0].AsString;
end;
if nro=4 then begin
  COBRADOR.Clear;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT distinct Nombre,cuif,nrogestor FROM VLosCobradores ORDER BY Nombre ';
  if not Funciones.Listar(txtw,DtCombo) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
    SetLength(IdCombos[0],DtCombo.RecordCount);
    for t:=1 to DtCombo.RecordCount  do begin
      DtCombo.RecNo:=t;
      COBRADOR.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
      IdCombos[0,t-1]:=DtCombo.Fields[1].AsString;
    end;
  end;
  Funciones.Free;
  COBRADOR.ItemIndex:=0;
end;
if nro= 5 then begin
  ACCION.Close;
  sec:=trim(cobrador.Text);
  txtw:='SELECT * FROM AccionesMorososParaResumenxGestor (' + chr(39) + sec + chr(39) +')' ;
  ACCION.CommandText:=txtw;
  ACCION.Open;
  if not accion.IsEmpty then begin
    totclie:=inttostr(accion.RecordCount);
  end;
end;
if nro=6 then begin
  DtComboCob.Free;
  DtComboCob:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT nrogestor FROM VLosCobradores where (cuif=' + IdCombos[0,COBRADOR.ItemIndex]+ ')';
  if not Funciones.Listar(txtw,DtComboCob) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  elnrogestor:=DtComboCob.Fields[0].AsString;
end;
if nro=7 then begin   ///traemos el importe del mantenimiento activo
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT  ImporteNormal FROM ParcelasMantenimientoPrecios WHERE  (FechaFin IS NULL)';
  if not Funciones.Listar(txtw,DtCombo) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  valormante:=DtCombo.Fields[0].AsString;
end;
if nro=8 then begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if not Funciones.Listar('SELECT top 1  * FROM Fn_LosPeriodos (' + chr(39) + FechaActual + chr(39) + ') ORDER BY periodo desc',DtCombo) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
      nextmes:=strtoint(DtCombo.Fields[0].AsString);
  end;
  Funciones.Free;
end;
if nro=9 then  begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT SUM(CONVERT(numeric(12, 2), observacion)) AS Expr1 FROM  LasAccionesResumenMorosos WHERE observacion is not null ' ;
  if not Funciones.Listar(txtw,DtCombo) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  sumapos:=DtCombo.Fields[0].AsString;
//  ElMes:=RightStr(trim(periodo.Text),2);
//  ElAnio:=LeftStr(trim(periodo.Text),4);
//  txtfecha:='05/' + ElMes + '/' + ElAnio;
//  DtComboCobros.Free;
//  DtComboCobros:=TClientdataSet.Create(nil);
//  DataSource10.DataSet:=DtComboCobros;
//  Funciones:=TFuncionesVarias.Create(nil);
//  Funciones.ConnectionString:=modulo2.Conexion;
//  if not Funciones.Listar(txtw,DtComboCobros) then
//     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
//  Funciones.Free;
//  if not DtComboCobros.IsEmpty then begin
//    //DBGrid9.Columns[0].Width:=100;
//    //DBGrid9.Columns[1].Width:=80;
//    //DBGrid9.Columns[2].Width:=100;
//   // DBGrid9.Columns[3].Width:=100;
//  end;
end;
if nro=10 then begin //Combo TipoObjetos
  TPOOBJ.Clear;
//  TiposObjetos:=LeeXML('TiposObjetos','(nrotipo <> 9)');
//  if length(TiposObjetos) <> 0 then begin
//    SetLength(IdCombos[3],High(TiposObjetos[1]) + 1);
//    for t:=0 to High(TiposObjetos[1])  do begin
//      TPOOBJ.Items.Insert(t,TiposObjetos[1,t]);
//      IdCombos[3,t]:=TiposObjetos[0,t];
//    end;
//  end
//  else begin
    DtCombo.Free;
    DtCombo:=TClientdataSet.Create(nil);
    Funciones:=TFuncionesVarias.Create(nil);
    Funciones.ConnectionString:=modulo2.Conexion;
    if not Funciones.Listar('SELECT NroTipo,Detalle FROM TiposObjetos WHERE nrotipo in (2,1) Order by 1',DtCombo) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
    else begin
      SetLength(IdCombos[1],DtCombo.RecordCount);
      for t:=1 to DtCombo.RecordCount  do begin
        DtCombo.RecNo:=t;
        TPOOBJ.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
        IdCombos[1,t-1]:=DtCombo.Fields[0].AsString;
      end;
    end;
    Funciones.Free;
//  end;
  TPOOBJ.ItemIndex:=0;
end;
end;

procedure TImp_ResumenAldia.JvBitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TImp_ResumenAldia.DESDEKeyPress(Sender: TObject; var Key: Char);
begin
if key= #13 then HASTA.SetFocus
else begin
  if ( StrScan('0123456789',Key) <> nil ) or
      ( Key = Char(VK_BACK) ) then
   else Key := #0;
end;
end;

procedure TImp_ResumenAldia.HASTAKeyPress(Sender: TObject; var Key: Char);
begin
if key= #13 then IMPRIME.SetFocus
else begin
  if ( StrScan('0123456789',Key) <> nil ) or
      ( Key = Char(VK_BACK) ) then
   else Key := #0;
end;
end;

procedure TImp_ResumenAldia.HASTAExit(Sender: TObject);
var t,u:integer;
begin
t:=0;u:=0;
try
  t:=strtoint(DESDE.Text);
  u:=strtoint(HASTA.Text);
except
  DESDE.Text:='0';
  HASTA.Text:='0';
end;
if t > u then begin
  messagedlg('ERROR Desde no puede ser mayor a HASTA!!!',mterror,[mbok],0);
  DESDE.SetFocus;
end;
end;

procedure TImp_ResumenAldia.DBGrid1CellClick(Column: TColumn);
begin
//if not(DataSet0.IsEmpty) then begin
if not(DataDeudas.IsEmpty) then begin
  //datasource2.DataSet.Fields
  //laaccion:=datasource2.DataSet.Fields[0].AsString;
  //DESDE.Text:=inttostr(DataSet0.RecNo);
  //HASTA.Text:=inttostr(DataSet0.RecNo);
  //        DataDeudas:=TClientdataSet.Create(nil);
  //      DataSource1.DataSet:=DataDeudas;
  laaccion:=DataSource1.DataSet.Fields[1].AsString;
  DESDE.Text:=inttostr(DataDeudas.RecNo);
  HASTA.Text:=inttostr(DataDeudas.RecNo);
end;
end;

procedure TImp_ResumenAldia.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
if not(DataSet0.IsEmpty)  and Paso then Coloca1(2);
end;

procedure TImp_ResumenAldia.RvSPrint(Sender: TObject);
var posfx,posfy,Pos1,Pos2,Pos3,Pos4,Pos5,Salto:double;
    PosR: array of double;
var r,w,l,h,y,t,j,cont,x:integer;
    tot,tot1:real;
    Fuente,PathLogo,PathLogo1:string;
    Imagen1,MarcaAgua:TBitMap;
    Bandera:boolean;
    txtw:widestring;

begin
try
   SetLength(PosR,5);
   PosR[0]:=35;
   PosR[1]:=57;
   PosR[2]:=80;
   PosR[3]:=103;
   PosR[4]:=125;
   posfx:=5.5;
   posfy:=5;
   Imagen1 := TBitMap.Create;
   Salto:=4;
   r:=Ini;
   //DataSet0.RecNo:=r;
   DataDeudas.RecNo:=r;

   with RvS do begin
      BaseReport.FontRotation:=0;
      BaseReport.Rectangle(posfx+2,posfy,posfx+195,posfy+15);
          Imagen1 := TBitMap.Create;
          PathLogo:=modulo2.path_todo + '\Imagenes\' + modulo2.INI1.ReadString('Resumen Caja','Imagen1','');
          if FileExists(PathLogo) then begin
            Image1.Picture.LoadFromFile(PathLogo);
            Imagen1.Assign(Image1.Picture.Graphic);
            BaseReport.PrintBitmapRect(posfx+3,posfy+1,posfx+65,posfy+14,Imagen1);
          end;
          Imagen1.Free;

      BaseReport.SetFont('Arial Black',10);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posfx+75,posfy+8,'SERVICIOS & MANDATOS');
      BaseReport.SetFont('Arial' ,9);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posfx+135,posfy+6,'Ayacucho N° 160 - Tel:(370) 4430761');
      BaseReport.PrintXY(posfx+140,posfy+10,'         CP (3600) - Formosa');
      BaseReport.SetFont('Arial' ,8);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posfx+105,posfy+14,'Consesionario exclusivo de Cementerio Parque REMANSO DE PAZ');

      //BaseReport.Rectangle(posfx+2,posfy+20,posfx+Pos3+93.5,posfy+90);
      BaseReport.Rectangle(posfx+Pos3+93.5,posfy+20,posfx+195,posfy+52);
      //BaseReport.Rectangle(posfx+2,posfy+95,posfx+Pos3+93.5,posfy+120);
      //BaseReport.Rectangle(posfx+2,posfy+125,posfx+Pos3+93.5,posfy+140);

      BaseReport.SetFont('Arial Black',10);
      BaseReport.FontColor:=clBlack;
      BaseReport.RoundRect(posfx+20,posfy+15,posfx+80,posfy+20,5,5);
      BaseReport.PrintXY(posfx+40,posfy+19,'Titulares');
      BaseReport.RoundRect(posfx+120,posfy+15,posfx+170,posfy+20,5,5);  //
      BaseReport.PrintXY(posfx+125,posfy+19,'Resumen de Cuenta');

      BaseReport.SetFont('Arial',7);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posfx+175,posfy+19,'Nro Orden:' +  DataDeudas.Fields[0].AsString  ); //DataSet0.Fields[0].AsString  );

      BaseReport.SetFont('Arial',8);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posfx+100,posfy+27,'Fecha Impresion:');
      BaseReport.PrintXY(posfx+162,posfy+27,'Periodo:');

      BaseReport.SetFont('Arial',7);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posfx+3,posfy+24,'1º)  Titular:');
      BaseReport.PrintXY(posfx+3,posfy+28,'           Dni:');
      BaseReport.PrintXY(posfx+3,posfy+32,'Dom. Legal:');
      BaseReport.PrintXY(posfx+3,posfy+38,'Telefonos:');

      BaseReport.PrintXY(posfx+3,posfy+44,'2º)  Titular:');
      BaseReport.PrintXY(posfx+3,posfy+48,'           Dni:');
      BaseReport.PrintXY(posfx+3,posfy+52,'Dom. Legal:');
      BaseReport.PrintXY(posfx+3,posfy+58,'Telefonos:');

      BaseReport.PrintXY(posfx+3,posfy+64,'3º)  Titular:');
      BaseReport.PrintXY(posfx+3,posfy+68,'           Dni:');
      BaseReport.PrintXY(posfx+3,posfy+72,'Dom. Legal:');
      BaseReport.PrintXY(posfx+3,posfy+78,'Telefonos:');

      BaseReport.SetFont('Arial Black',9);
      BaseReport.FontColor:=clBlack;
      BaseReport.RoundRect(posfx+120,posfy+58,posfx+170,posfy+63,5,5);
      BaseReport.PrintXY(posfx+129,posfy+62,'Datos de la Acción');

      BaseReport.SetFont('Arial',8);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posfx+102,posfy+67,'N° TITULO:');
      BaseReport.PrintXY(posfx+102,posfy+72,'Sector:');
      BaseReport.PrintXY(posfx+127,posfy+72,'Parcela:');
      BaseReport.PrintXY(posfx+153,posfy+72,'Plaza:');
      BaseReport.PrintXY(posfx+102,posfy+77,'Fecha Cesión:');
      BaseReport.PrintXY(posfx+154,posfy+77,'Inhumados:');
      BaseReport.PrintXY(posfx+102,posfy+82,'GESTOR:');

      BaseReport.SetFont('Arial Black',8);
      BaseReport.FontColor:=clBlack;
      BaseReport.RoundRect(posfx+3,posfy+80,posfx+97,posfy+84,5,5);
      BaseReport.PrintXY(posfx+4,posfy+83,'Valor del Mantenimiento del mes $' + valormante);

      BaseReport.SetFont('Arial',7);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posfx,posfy+132,'Domicilio Cobro:  ' + DataDeudas.Fields[13].AsString); //DataDeudas.Fields[13].AsString);
      BaseReport.PrintXY(posfx,posfy+135,'Observaciones:  ' + DataDeudas.Fields[14].AsString); //DataDeudas.Fields[14].AsString);

      //Imprimiendo Titulares
      BaseReport.SetFont('Arial Black',7);
      BaseReport.FontColor:=clBlack;
      Pos5:=0;
        for t:=1 to DataSet1.RecordCount do begin
          DataSet1.RecNo:=t;
          //if t > 2 then Break
          //else begin
          BaseReport.PrintXY(posfx+Pos3+17,posfy+Pos4+24 + Pos5,DataSet1.Fields[2].AsString);
          BaseReport.PrintXY(posfx+Pos3+17,posfy+Pos4+28 + Pos5,DataSet1.Fields[4].AsString);
          //BaseReport.PrintXY(posfx+Pos3+20,posfy+Pos4+34,DataSet1.Fields[2].AsString);
          BaseReport.PrintXY(posfx+Pos3+17,posfy+Pos4+32 + Pos5,strcut_midle(trim(DataSet1.Fields[5].AsString) + ' - ' + trim(DataSet1.Fields[6].AsString),1,50));
          BaseReport.PrintXY(posfx+Pos3+17,posfy+Pos4+36 + Pos5,strcut_midle(trim(DataSet1.Fields[5].AsString) + ' - ' + trim(DataSet1.Fields[6].AsString),51,100));
          BaseReport.PrintXY(posfx+Pos3+17,posfy+Pos4+38 + Pos5,DataSet1.Fields[11].AsString);
          //BaseReport.PrintXY(posfx+Pos3+20,posfy+Pos4+40 + Pos5,strcut_midle(trim(DataSet1.Fields[5].AsString) + ' - ' + trim(DataSet1.Fields[6].AsString),1,50));
          //BaseReport.PrintXY(posfx+Pos3+20,posfy+Pos4+44 + Pos5,strcut_midle(trim(DataSet1.Fields[5].AsString) + ' - ' + trim(DataSet1.Fields[6].AsString),51,100));
          //if t = 1 then Pos5:=Pos5 + 24; //24
          Pos5:=Pos5 + 20; //24
          //end;
        end;

      //Imprimiendo Datos de la Acción
             //DataDeudas
      BaseReport.SetFont('Arial Black',8);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posfx+Pos3+117,posfy+Pos4+67,DataDeudas.Fields[1].AsString + '.-'); //DataSet0.Fields[1].AsString + '.-');
      BaseReport.SetFont('Arial Black',9);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posfx+Pos3+113,posfy+Pos4+72,DataDeudas.Fields[2].AsString); //DataSet0.Fields[2].AsString);
      BaseReport.PrintXY(posfx+Pos3+139,posfy+Pos4+72,DataDeudas.Fields[3].AsString); //DataSet0.Fields[3].AsString);
      BaseReport.PrintXY(posfx+Pos3+161,posfy+Pos4+72,DataDeudas.Fields[4].AsString); //DataSet0.Fields[4].AsString);
      BaseReport.PrintXY(posfx+Pos3+123,posfy+Pos4+77,DataDeudas.Fields[5].AsString); //DataSet0.Fields[5].AsString);
      BaseReport.PrintXY(posfx+Pos3+172,posfy+Pos4+77,DataDeudas.Fields[6].AsString); //DataSet0.Fields[6].AsString);
      BaseReport.SetFont('Arial Black',8);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posfx+Pos3+117,posfy+Pos4+82,DataDeudas.Fields[7].AsString); //DataSet0.Fields[7].AsString);

      //Imprimiendo la Cuenta
      BaseReport.SetFont('Arial Black',9);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posfx+Pos3+126,posfy+Pos4+27,FechaActual);
      BaseReport.PrintXY(posfx+Pos3+175,posfy+Pos4+27,PERIODO.Text);
      tot:=0;
      tot1:=0;
      BaseReport.Rectangle(posfx+Pos3+93.5,posfy+Pos4+30,posfx+Pos3+195,posfy+Pos4+34);
      //BaseReport.Rectangle(posfx+Pos3+101,posfy+Pos4+30,posfx+Pos3+125,posfy+Pos4+34);
      //BaseReport.Rectangle(posfx+Pos3+140,posfy+Pos4+30,posfx+Pos3+165,posfy+Pos4+34);
      //BaseReport.Rectangle(posfx+Pos3+178,posfy+Pos4+30,posfx+Pos3+195,posfy+Pos4+34);
      BaseReport.SetFont('Arial Black',7);
      BaseReport.FontColor:=clBlack;
      //BaseReport.PrintXY(posfx+Pos3+95,posfy+Pos4+33,'Obj.');
      BaseReport.PrintXY(posfx+Pos3+105,posfy+Pos4+33,'Detalle');
      BaseReport.PrintXY(posfx+Pos3+130,posfy+Pos4+33,'CtasDeudas');
      BaseReport.PrintXY(posfx+Pos3+155,posfy+Pos4+33,'Imp.Cuota');
      BaseReport.PrintXY(posfx+Pos3+180,posfy+Pos4+33,'Importe');  //166 x 186
      //BaseReport.PrintXY(posfx+Pos3+179,posfy+Pos4+33,'Acumulado');
      Pos5:=posfy+Pos4+34 + 4;

      //Parcelas
      BaseReport.SetFont('Arial',7);
      BaseReport.PrintXY(posfx+Pos3+95,Pos5,'SALDO PARCELAS');
      Bandera:=false;
      for t:=1 to DataSet2.RecordCount do begin
        DataSet2.RecNo:=t;
        if TRIM(DataSet2.Fields[4].AsString) = 'SALDO FINAL' then begin
          BaseReport.PrintRight(trim(DataSetCuotasVta.Fields[0].AsString),posfx+Pos3+140);
          BaseReport.PrintRight('$' + trim(DataSetCuotasVta.Fields[1].AsString),posfx+Pos3+165);
          BaseReport.MoveTo(posfx+Pos3+177,Pos5);
          BaseReport.PrintRight(redondeo(DataSet2.Fields[3].AsString,2),posfx+Pos3+190);   //177 x 190
          BaseReport.Rectangle(posfx+Pos3+93.5,Pos5+0.5,posfx+Pos3+195,Pos5+0.5);
          tot:=tot + DataSet2.Fields[3].AsFloat;
          Bandera:=true;
          break;
        end;
      end;
      if not Bandera then begin
        BaseReport.MoveTo(posfx+Pos3+175,Pos5);
        BaseReport.PrintRight('0.00',posfx+Pos3+177);
      end;

      //Servicios
      Pos5:=Pos5 + 4;
      BaseReport.SetFont('Arial',7);
      BaseReport.MoveTo(posfx+Pos3+175,Pos5);
      BaseReport.PrintXY(posfx+Pos3+95,Pos5,'SALDO SERVICIOS');
      Bandera:=false;
      for t:=DataSet3.RecordCount downto 1  do begin
         DataSet3.RecNo:=t;
         if TRIM(DataSet3.Fields[4].AsString) = 'SALDO FINAL'  then begin
              if ctasserv=0 then BaseReport.PrintRight('',posfx+Pos3+140)
               else BaseReport.PrintRight(inttostr(ctasserv),posfx+Pos3+140);
              BaseReport.MoveTo(posfx+Pos3+177,Pos5);
              BaseReport.PrintRight(redondeo(DataSet3.Fields[3].AsString,2),posfx+Pos3+190);
              BaseReport.Rectangle(posfx+Pos3+93.5,Pos5+0.5,posfx+Pos3+195,Pos5+0.5);
              tot:=tot + DataSet3.Fields[3].AsFloat;
            Bandera:=true;
            break;
         end;
      end;
      if not Bandera then begin
        BaseReport.MoveTo(posfx+Pos3+175,Pos5);
        BaseReport.Rectangle(posfx+Pos3+93.5,Pos5+0.5,posfx+Pos3+195,Pos5+0.5);
        BaseReport.PrintRight('0.00',posfx+Pos3+177);
      end;

      //Consolidados
      Pos5:=Pos5 + 4;
      BaseReport.SetFont('Arial',7);
       BaseReport.MoveTo(posfx+Pos3+175,Pos5);
      BaseReport.PrintXY(posfx+Pos3+95,Pos5,'SALDO CONSOLID.');
      Bandera:=false;
      for t:=DataSet5.RecordCount downto 1  do begin
         DataSet5.RecNo:=t;
         if TRIM(DataSet5.Fields[4].AsString) = 'SALDO FINAL'  then begin
              BaseReport.MoveTo(posfx+Pos3+177,Pos5);
              BaseReport.PrintRight(redondeo(DataSet5.Fields[3].AsString,2),posfx+Pos3+190);
              BaseReport.Rectangle(posfx+Pos3+93.5,Pos5+0.5,posfx+Pos3+195,Pos5+0.5);
              tot:=tot + DataSet5.Fields[3].AsFloat;
            Bandera:=true;
            break;
         end;
      end;
      if not Bandera then begin
        BaseReport.MoveTo(posfx+Pos3+175,Pos5);
        BaseReport.Rectangle(posfx+Pos3+93.5,Pos5+0.5,posfx+Pos3+195,Pos5+0.5);
        BaseReport.PrintRight('0.00',posfx+Pos3+177);
      end;

      //Mantenimiento
      Pos5:=Pos5 + 4;
      BaseReport.SetFont('Arial',7);
      BaseReport.MoveTo(posfx+Pos3+175,Pos5);
      BaseReport.PrintXY(posfx+Pos3+95,Pos5,'SALDO MANTENIM.');
      Bandera:=false;
      for t:=DataSet4.RecordCount downto 1  do begin
         DataSet4.RecNo:=t;
         if TRIM(DataSet4.Fields[9].AsString) = 'SALDO ACTUAL'  then begin
              BaseReport.MoveTo(posfx+Pos3+177,Pos5);
              BaseReport.PrintRight(redondeo(DataSet4.Fields[6].AsString,2),posfx+Pos3+190);
              tot:=tot + DataSet4.Fields[6].AsFloat;
            Bandera:=true;
            break;
         end;
      end;
      if not Bandera then begin
        BaseReport.MoveTo(posfx+Pos3+175,Pos5);
        BaseReport.Rectangle(posfx+Pos3+93.5,Pos5+0.5,posfx+Pos3+195,Pos5+0.5);
        BaseReport.PrintRight('0.00',posfx+Pos3+177);
      end;

      Pos5:=Pos5 + 5;
      BaseReport.SetFont('Arial Black',7);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posfx+Pos3+95,Pos5,'DEUDA ACUMULADA DEL PERIODO ACTUAL:');
      BaseReport.MoveTo(posfx+Pos3+177,Pos5);
      BaseReport.PrintRight('$ ' + redondeo(FloatToStr(tot),2),posfx+Pos3+190);//177
      BaseReport.Rectangle(posfx+Pos3+94,Pos5+0.5,posfx+Pos3+195,Pos5+0.5);

      Pos5:=Pos5 + 5;
      BaseReport.SetFont('Arial Black',7);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posfx+45,Pos5+27,' ---------- DETALLE DE CUOTAS ADEUDADAS DE MANTENIMIENTO ----------');
      BaseReport.MoveTo(posfx+Pos3+177,Pos5);

      salto:=3;
      Pos5:=Pos5 + 30;
      BaseReport.SetFont('Arial Black',7);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posfx+3,Pos5,'AÑO    ENERO     FEBRERO     MARZO     ' +
        '  ABRIL      MAYO     JUNIO     JULIO     AGOSTO   SEPTIEMBRE     ' +
        'OCTUBRE     NOVIEMBRE   DICIEMBRE');
      Pos5:=Pos5 + 2;
        for t:=1 to Datasource8.DataSet.RecordCount  do  begin
          BaseReport.SetFont('Arial',7);
          BaseReport.FontColor:=clBlack;
          BaseReport.PrintXY(posfx+3,Pos5,lasdeudas.Cells[0,t]);
          BaseReport.PrintXY(posfx+13,Pos5,lasdeudas.Cells[1,t]);
          BaseReport.PrintXY(posfx+28,Pos5,lasdeudas.Cells[2,t]);
          BaseReport.PrintXY(posfx+44,Pos5,lasdeudas.Cells[3,t]);
          BaseReport.PrintXY(posfx+58,Pos5,lasdeudas.Cells[4,t]);
          BaseReport.PrintXY(posfx+72,Pos5,lasdeudas.Cells[5,t]);
          BaseReport.PrintXY(posfx+85,Pos5,lasdeudas.Cells[6,t]);
          BaseReport.PrintXY(posfx+95,Pos5,lasdeudas.Cells[7,t]);
          BaseReport.PrintXY(posfx+110,Pos5,lasdeudas.Cells[8,t]);
          BaseReport.PrintXY(posfx+125,Pos5,lasdeudas.Cells[9,t]);
          BaseReport.PrintXY(posfx+149,Pos5,lasdeudas.Cells[10,t]);
          BaseReport.PrintXY(posfx+167,Pos5,lasdeudas.Cells[11,t]);
          BaseReport.PrintXY(posfx+183,Pos5,lasdeudas.Cells[12,t]);
          Pos5:=Pos5 + salto + 0.5;
       end;

      //posfx+5,posfy
      BaseReport.SetFont('Arial',6);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posfx+13,Pos5,'      ----------- DETALLE DE ULTIMOS PAGOS ------------   ');
      //BaseReport.PrintXY(posfx+123,Pos5,'      ----------- DETALLE DEUDA SERVICIOS ------------   ');
      //BaseReport.PrintXY(posfx+123,Pos5 + 2 ,' IdServ      CantCuotasDeuda    ImpCuota  ');
      //BaseReport.PrintXY(posfx+113,Pos5 + salto ,'Movimiento       NºComprobante  TipoComprobante  FechaCobro   Importe');
      Pos5:=Pos5 + salto;
        for t:=1 to Datasource9.DataSet.RecordCount  do  begin
          BaseReport.SetFont('Arial',6);
          BaseReport.FontColor:=clBlack;
          BaseReport.PrintXY(posfx+3,Pos5,StringGridUP.Cells[0,t]);
          BaseReport.PrintXY(posfx+18,Pos5,StringGridUP.Cells[2,t] + ' - ' + StringGridUP.Cells[1,t]);
          //BaseReport.PrintXY(posfx+118,'Comprobante' +Pos5,StringGridUP.Cells[1,t]);
          //BaseReport.PrintXY(posfx+134,Pos5,StringGridUP.Cells[2,t]);
          BaseReport.PrintXY(posfx+45,Pos5,'Fec.Cob:' + StringGridUP.Cells[3,t]);
          BaseReport.PrintXY(posfx+65,Pos5,'Imp. $'+StringGridUP.Cells[4,t] + ' - '+StringGridUP.Cells[5,t]);
          //BaseReport.PrintXY(posfx+110,Pos5,'- '+StringGridUP.Cells[5,t]);
          Pos5:=Pos5 + salto;
       end;
       Pos5:=Pos5 + 2;
       BaseReport.PrintXY(posfx+13,Pos5,'      ----------- DETALLE DEUDA SERVICIOS ------------   ');
       BaseReport.PrintXY(posfx+13,Pos5 + 2 ,' IdServ      CantCuotasDeuda    ImpCuota  ');
       for x:=1 to  DataSetCuotasServ.RecordCount do  begin
         BaseReport.PrintXY(posfx+13,Pos5+4 ,GRILLADETSERV.Cells[0,x]);
         BaseReport.PrintXY(posfx+30,Pos5+4 ,GRILLADETSERV.Cells[1,x]);
         BaseReport.PrintXY(posfx+42,Pos5+4 ,'$ '+ GRILLADETSERV.Cells[2,x]);
         Pos5:=Pos5 + salto;
       END;
//       Pos5:=Pos5 - SALTO - SALTO - salto;
//       for t:=1 to  DataSetCuotasServ.RecordCount do  begin
//          BaseReport.SetFont('Arial',6);
//          BaseReport.FontColor:=clBlack;
//          BaseReport.PrintXY(posfx+125,Pos5 + 2,GRILLADETSERV.Cells[0,t]);
//          BaseReport.PrintXY(posfx+138,Pos5 + 2,GRILLADETSERV.Cells[1,t]);
//          BaseReport.PrintXY(posfx+153,Pos5 +2,'$ '+ GRILLADETSERV.Cells[2,t]);
//          Pos5:=Pos5 + salto;
//       END;
   end;
except
end;
end;

procedure TImp_ResumenAldia.IMPRIMEClick(Sender: TObject);
var gf:integer;
    ps:string;
begin
  RvS.DefaultDest:=rdPrinter;
  RvS.SystemOptions:=[];
  RvS.SystemSetups:=[];

RvS.SystemPrinter.Orientation:=poPortrait;
gf:=messagedlg('Desea realizar las Impresiones?',mtWarning,[mbok,mbCancel],0);
if gf = 1 then begin
  Ini:=strtoint(DESDE.Text);
  Fin:=strtoint(HASTA.Text);
  P1.Min:=1;
  P1.Max:=100;
  gf:=Fin-Ini;
  while Ini <= Fin do begin
        RvS.Execute;
        Barra1.Panels[2].Text:=IntToStr(Ini) + '/' + IntToStr(Fin);
        P1.Position:=trunc(Ini * 100/gf);
        Ini:=Ini + 1;
  end;
  LiberarMemoria;
end;
end;

procedure TImp_ResumenAldia.resumcobClick(Sender: TObject);
begin
Coloca1(5);
rvc.Execute;
end;

procedure TImp_ResumenAldia.RvCPrint(Sender: TObject);
var posfx,posfy,final,salto,posw,sd1,posn:double;
var t,y,hoja,nro:integer;
var txt,PathLogo:string;
var pso:boolean;

   Function Logo(posx,posy:double;vaf:integer):double;
   var Imagen1:TBitMap;
   begin
     with RvC do begin
      Imagen1 := TBitMap.Create;
      PathLogo:=modulo2.path_todo + '\Imagenes\' + modulo2.INI1.ReadString('Resumen Caja','Imagen1','');
      if FileExists(PathLogo) then begin
        Image1.Picture.LoadFromFile(PathLogo);
        Imagen1.Assign(Image1.Picture.Graphic);
        BaseReport.PrintBitmapRect(posfx+5,posfy+5,posfx+60,posfy+25,Imagen1);
      end;
      Imagen1.Free;
     BaseReport.Rectangle(posx+4,posy+5,posx+205,posy+37);  //(posx+4,posy+5,posx+195,posy+37);
     BaseReport.SetFont('Arial Black',9);
     BaseReport.FontColor:=clBlack;
     if PageControl1.ActivePageIndex = 0  then begin
        BaseReport.PrintXY(posx+80,posy+24,'PERIODO DE DEUDA   ' + TRIM(PERIODO.TEXT));
     end;
     //if PageControl1.ActivePageIndex = 1 then begin
     //   BaseReport.PrintXY(posx+80,posy+24,'MOVIM. DE PAGOS DESDE: ' + TRIM(FECHAD.Text) + ' - HASTA:' + TRIM(FECHAH.Text));
     //end;
     BaseReport.SetFont('Arial',9);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+23,posy+24,'SERVICIOS & MANDATOS');
     BaseReport.PrintXY(posx+23,posy+28,'Ayacucho N° 160 -  Formosa - CP:3600');
     BaseReport.PrintXY(posx+160,posy+28,'Fecha Imp.: ' + DateToStr(Date));
     BaseReport.SetFont('Arial',9);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+185,posy+9,'Pág.: ' + inttostr(vaf));
     BaseReport.RoundRect(posx+20,posy+29,posx+205,posy+34,5,5);
     if PageControl1.ActivePageIndex = 0  then begin
         BaseReport.PrintXY(posx+23,posy+32.5,'CLIENTES AL DIA por ' + trim(tpoobj.Text) + ' A CARGO DEL GESTOR: ' + TRIM(COBRADOR.TEXT) + ' - ' + elnrogestor);
     end;
     //if PageControl1.ActivePageIndex = 1  then begin
     //    BaseReport.PrintXY(posx+23,posy+32.5,'HISTORIAL DE PAGOS DE ACCIONES A CARGO DEL GESTOR: ' + TRIM(COBRADOR.TEXT) + ' - ' + elnrogestor);
     //end;
     BaseReport.SetFont('Arial Black',8);
     Logo:=posy+33;
     end;
   end;

   Function GrillaCabecera(posx,posy:double;texto:string):double;
   var t:integer;
   begin
     with RvC do begin
      BaseReport.Rectangle(posx+4,posy,posx+205,posy+5);
      for t:=1 to length(Camp)-1 do begin
      BaseReport.Rectangle(posx + PosH[t]-2,posy,posx + PosH[t]-2,posy+5);
      end;
     end;
      RvC.BaseReport.SetFont('Arial Black',6);
      RvC.BaseReport.FontColor:=clBlack;
      for t:=0 to length(Camp)-1 do begin
        RvC.BaseReport.PrintXY(posx + PosH[t],posy+4,TxtCamp[t]);
     end;
     Result:=posy+5;
   end;

  /// Grilla Detalle
  Function GrillaDetalle(posx,posy:double;texto:string):double;
  var t:integer;
  begin
  RvC.BaseReport.SetFont('Arial',6);
  RvC.BaseReport.FontColor:=clBlack;
    for t:=0 to length(Camp)-1 do
     RvC.BaseReport.PrintXY(posx + PosH[t],posy+4,HackTable(FindComponent(texto)).Fields[Camp[t]].AsString);
    Result:=posy+4;
  end;

  //// Grilla Recuadro
  Function GrillaRecuadro(posx,posy,posy2:double):double;
  var t:integer;
  begin
  with RvC do begin
    BaseReport.Rectangle(posx+4,posy,posx+205,posy2);
    for t:=1 to length(Camp)-1 do begin
      BaseReport.Rectangle(posx + PosH[t]-2,posy,posx + PosH[t]-2,posy2);
    end;
  Result:=posy+4;
  end;
  end;

  Function Mostrar1(posx,posy:double):double;
   var t,y:integer;
   begin
    with RvC do begin
       BaseReport.SetFont('Arial',8);
       BaseReport.Rectangle(posx+4,posy,posx+200,posy+5);
       BaseReport.Rectangle(posx+22,posy,posx+200,posy+5);
       BaseReport.Rectangle(posx+84,posy,posx+200,posy+5);
       BaseReport.Rectangle(posx+149,posy,posx+200,posy+5);
       BaseReport.Rectangle(posx+179,posy,posx+200,posy+5);

       BaseReport.PrintXY(posx+5,posy+4,'NroAccion');
       BaseReport.PrintXY(posx+23,posy+4,'Titular');
       BaseReport.PrintXY(posx+85,posy+4,'Periodo/Cant.Pagos');
       BaseReport.PrintXY(posx+150,posy+4,'UltPeriPago/Comprb');
       BaseReport.PrintXY(posx+180,posy+4,'MesesDeuda');
    end;
    END;

begin
  try
   posfx:=1.5;
   posfy:=2;
   salto:=4;
   final:=0;
   hoja:=1;
   posfy:=Logo(posfx,posfy,hoja);
   if PageControl1.ActivePageIndex = 0  then begin
    Camp[0]:=0; Camp[1]:=1; Camp[2]:=2;  Camp[3]:=3;Camp[4]:=9; Camp[5]:=12; Camp[6]:=11;
    Camp[7]:=10; Camp[8]:=15;

    TxtCamp[0]:='Nº';  TxtCamp[1]:='Accion'; TxtCamp[2]:='Sector';  TxtCamp[3]:='Parcela';
    TxtCamp[4]:='Titular';   TxtCamp[5]:='Barrio';    TxtCamp[6]:='Domicllio';
    TxtCamp[7]:='Telefonos';    TxtCamp[8]:='CoutasFaltantes';

    PosH[0]:=5;   PosH[1]:=13;  PosH[2]:=26;  PosH[3]:=38;  PosH[4]:=50; PosH[5]:=88; PosH[6]:=120;
    PosH[7]:=155; PosH[8]:=181;

    T8.Close;
    T8.CloneCursor(DataDeudas,false,true);
    txt:='T8';
    final:=GrillaCabecera(posfx,posfy+5,txt);
    posfy:=final;
    pso:=false;

    for y:=1 to HackTable(findcomponent(txt)).RecordCount do begin
        HackTable(FindComponent(txt)).RecNo:=y;
        if pso then RvC.BaseReport.Rectangle(posfx+4,posfy+1,posfx+205,posfy+1)
        else pso:=true;
        posfy:=GrillaDetalle(posfx,posfy,txt);
        if posfy > 270 then begin
          posfy:=GrillaRecuadro(posfx,final,posfy+2);
          posfx:=1.5;
          posfy:=2;
          hoja:=hoja+1;
          RvC.BaseReport.NewPage;
          posfy:=Logo(posfx,posfy,hoja);  // llamamos al encabezado
          final:=GrillaCabecera(posfx,posfy+5,txt);
          posfy:=final;
          pso:=false;
        end;
    end;

    RvC.BaseReport.SetFont('Arial',11);
    RvC.BaseReport.FontColor:=clBlack;
    RvC.BaseReport.Rectangle(posfx+4,posfy+5,posfx+200,posfy+25);
    RvC.BaseReport.PrintXY(posfx+5,posfy+10,'Cantidad de Acciones del Gestor: ');
    if  IdCombos[1,TPOOBJ.ItemIndex] = '3' then begin   ///mantenimiento
        RvC.BaseReport.PrintXY(posfx+5,posfy+17,'Cantidad de Acciones Morosos: ');
        RvC.BaseReport.PrintXY(posfx+5,posfy+22,'Porcentaje de Morosidad: ');
        RvC.BaseReport.SetFont('Arial Black',9);
        RvC.BaseReport.FontColor:=clBlack;
        RvC.BaseReport.PrintXY(posfx+66,posfy+10, cantreg);
        RvC.BaseReport.PrintXY(posfx+60,posfy+15,inttostr(totregm));
        porcen:= totregm *100 / strtoint(cantreg);
        RvC.BaseReport.PrintXY(posfx+51,posfy+22, floattostr(round(porcen)) + '% aprox.');
    end
    else begin
        RvC.BaseReport.SetFont('Arial Black',9);
        RvC.BaseReport.FontColor:=clBlack;
        RvC.BaseReport.PrintXY(posfx+66,posfy+10, cantreg);
        Rvc.BaseReport.SetFont('Arial Black',9);
        Rvc.BaseReport.FontColor:=clBlack;
        Rvc.BaseReport.PrintXY(posfx+150,posfy+23,'Total DEUDA:  $'+         sumapos);
    end;

    if pso then posfy:=GrillaRecuadro(posfx,final,posfy+2);

   END;

   {if PageControl1.ActivePageIndex = 1  then begin
     posfy:=posfy+5;
     posfy:=Mostrar1(posfx,posfy);
     posfy:=posfy+50;

     for t:=1 to datasource11.dataset.RecordCount do begin
         datasource11.dataset.RecNo:=t;
         posfy:=posfy-0.5;
         RvC.BaseReport.SetFont('Arial',7);
         RvC.BaseReport.PrintXY(posfx+6,posfy,trim(datasource11.dataset.Fields[0].AsString));
         RvC.BaseReport.MoveTo(posw,posfy);
         RvC.BaseReport.PrintLeft(trim(datasource11.dataset.Fields[1].AsString),posfx+23);
         RvC.BaseReport.MoveTo(posw,posfy);
         RvC.BaseReport.PrintLeft(trim(datasource11.dataset.Fields[2].AsString),posfx+85);
         RvC.BaseReport.MoveTo(posw,posfy);
         RvC.BaseReport.PrintLeft(trim(datasource11.dataset.Fields[3].AsString),posfx+150);
         RvC.BaseReport.MoveTo(posw,posfy);
         RvC.BaseReport.PrintLeft(trim(datasource11.dataset.Fields[4].AsString),posfx+180);
         RvC.BaseReport.MoveTo(posw,posfy);
         posfy:=posfy+0.5;

         // hacemos la lineas internas de las grilla
         RvC.BaseReport.Rectangle(posfx+4,posfy,posfx+200,posfy-4);
         RvC.BaseReport.Rectangle(posfx+22,posfy,posfx+200,posfy-4);
         RvC.BaseReport.Rectangle(posfx+84,posfy,posfx+200,posfy-4);
         RvC.BaseReport.Rectangle(posfx+149,posfy,posfx+200,posfy-4);
         RvC.BaseReport.Rectangle(posfx+179,posfy,posfx+200,posfy-4);
         posfy:=posfy + salto;
          if posfy > 280 then begin
           posfx:=5.5;
           posfy:=5;
           hoja:=hoja+1;
           RvC.BaseReport.NewPage;
           posfy:=Logo(posfx,posfy,hoja)+ salto;   // llamamos al encabezado
           posfy:=Mostrar1(posfx,posfy)+ salto;
           posfy:=posfy+9;
          end;
      end;
   END; }

  except
  end;
end;

procedure TImp_ResumenAldia.COBRADORExit(Sender: TObject);
begin
 if cobrador.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Cobrador Ingresado!!',mterror,[mbok],0);
  cobrador.SetFocus;
end
else begin
Coloca1(1);
Coloca1(8);
coloca1(6);
image3.visible:=false;
image4.visible:=false;
label5.Caption:='...';
label6.Caption:='...';
tpoobj.SetFocus;
end;
end;

procedure TImp_ResumenAldia.COBRADORKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  tpoobj.SetFocus;
end;
end;

procedure TImp_ResumenAldia.DBGrid1DrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
     if Field.FieldName = 'NroAccion' then
      (Sender as TDBGrid).Canvas.Font.Color := clRed;  { En rojo / in red }
      (Sender as TDBGrid).Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 2,
        Field.AsString);
end;

procedure TImp_ResumenAldia.PERIODOKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  cobrador.SetFocus;
END;
end;

procedure TImp_ResumenAldia.PERIODOExit(Sender: TObject);
begin
if PERIODO.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Periodo Ingresado!!',mterror,[mbok],0);
  PERIODO.SetFocus;
end;
end;

procedure TImp_ResumenAldia.BitBtn1Click(Sender: TObject);
begin
   labelca.Caption:='...';
   labelcm.Caption:='...';
   labelpm.Caption:='...';
   coloca1(3);
   Image3.visible:=true;
   PROCESO1.Close;
   PROCESO1.CommandText:='exec AccionesResumenMorosos 0,2,null,' + chr(39) + trim(Cobrador.Text)+ chr(39)+ ',NULL';
   PROCESO1.Open;
   if PROCESO1.Fields[0].AsString = 'OK' then begin
      label5.Caption:='PROCESO1 FINALIZADO';
      Image3.Picture.LoadFromFile(modulo2.path_todo + '\Imagenes\button_ok.ico');
      BitBtn2.Enabled:=true;
      BitBtn2.SetFocus;
   end
   else begin
      label5.Caption:='PROCESO1 con Errores';
      Image3.Picture.LoadFromFile(modulo2.path_todo + '\Imagenes\button_cancel.ico');
   end;
end;

procedure TImp_ResumenAldia.BitBtn2Click(Sender: TObject);
var    txtw:widestring;
var     a:integer;
begin
   ElMes:=RightStr(trim(periodo.Text),2);
   ElAnio:=LeftStr(trim(periodo.Text),4);
   txtfecha:='05/' + ElMes + '/' + ElAnio;
   image4.visible:=true;
   PROCESO2.Close;
   //if  IdCombos[1,TPOOBJ.ItemIndex] = '3' then begin   ///mantenimiento
   //   PROCESO2.CommandText:='exec AccionesResumenMorosos 1,2,null,' + chr(39) + trim(Cobrador.Text)+ chr(39) + ',' + CHR(39) + txtfecha + CHR(39);
   //end;
   if  IdCombos[1,TPOOBJ.ItemIndex] = '2' then begin //servicios
      PROCESO2.CommandText:='exec AccionesResumenAlDiaServicios 1 ';
   end;
   if  IdCombos[1,TPOOBJ.ItemIndex] = '1' then begin  //ventas
      PROCESO2.CommandText:='exec AccionesResumenAlDiaVEntas 1 ';
   end;
   PROCESO2.Open;
   if PROCESO2.Fields[0].AsString = 'OK' then begin
      label6.Caption:='PROCESO2 FINALIZADO';
      Image4.Picture.LoadFromFile(modulo2.path_todo + '\Imagenes\button_ok.ico');
      ///
        Paso:=false;
        DataDeudas.Free;
        DataDeudas:=TClientdataSet.Create(nil);
        DataSource1.DataSet:=DataDeudas;
        Funciones:=TFuncionesVarias.Create(nil);
        Funciones.ConnectionString:=modulo2.Conexion;
        txtw:='SELECT row_number() over (order by NroAccion asc) as Orden,nroaccion,sector,parc,plaza,fechasecion,inhumados,gestor,'
         +'cuif,primertitular,telefono,domcilio,barrio,domcobro,observacion,convert(nvarchar(3),cantmesesdeuda) + '' - $ '' + observacion  FROM  LasAccionesResumenMorosos '
         +' WHERE (cantmesesdeuda is not null) order by 1';
        if not Funciones.Listar(txtw,DataDeudas) then
          messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
        Funciones.Free;
        if not DataDeudas.IsEmpty then begin
          DESDE.Text:='1';
          HASTA.Text:=IntToStr(DataDeudas.RecordCount);
          IMPRIME.Enabled:=true;
          resumcob.Enabled:=true;
          button3.Enabled:=true;
          totregm:=DataDeudas.RecordCount;
          Barra1.Panels[1].Text:='Cant. Reg.: ' + IntToStr(DataDeudas.RecordCount);
          Coloca1(2);
          Coloca1(9);    /// obtengo el importe total de la deuda
          Paso:=true;
        end
        else begin
          messagedlg('ATENCION.... No se encontraron Acciones con este Estado',mtWarning,[mbok],0);
        end;
      PC1.ActivePage:=PC1.Pages[1];
      labelca.Caption:=cantreg;
      //      if  IdCombos[1,TPOOBJ.ItemIndex] = '3' then begin
      //       labelcm.Caption:=inttostr(totregm);
      //       porcen:= totregm *100 / strtoint(cantreg);
      //       labelpm.Caption:=floattostr(round(porcen)) + ' %';
      //     end;
   end
   else begin
      label5.Caption:='PROCESO2 con Errores';
      Image4.Picture.LoadFromFile(modulo2.path_todo + '\Imagenes\button_cancel.ico');
   end;
end;

procedure TImp_ResumenAldia.Button3Click(Sender: TObject);
var texto,texto1:widestring;
var txt:string;
var t,y:integer;
begin
texto:='';
texto1:='';
if PageControl1.ActivePageIndex = 0  then begin
      RE5.Clear;
      texto:='';
      RE5.Lines.Add('Detalle de Acciones al dia por ' + trim(tpoobj.Text));
      RE5.Lines.Add('');
      for t:=0 to Datasource1.DataSet.FieldCount-1 do begin
        texto:=texto + Datasource1.DataSet.Fields[t].FieldName + chr(9);
      end;
      RE5.Lines.Add(texto);
      for y:=1 to Datasource1.DataSet.RecordCount do begin
        Datasource1.DataSet.RecNo:=y;
        texto:='';
        for t:=0 to Datasource1.DataSet.FieldCount-1 do begin
          texto:=texto + Datasource1.DataSet.Fields[t].AsString + chr(9);
        end;
        RE5.Lines.Add(texto);
      end;
      RE5.SelectAll;
      RE5.CopyToClipboard;
end;
{if PageControl1.ActivePageIndex = 1  then begin
   RE5.Clear;
   texto1:='';
   RE5.Lines.Add('Detalle de Movimientos de Cobros');
   RE5.Lines.Add('');
   if Datasource11.DataSet.RecNo > 0 then begin
      for t:=0 to Datasource11.DataSet.FieldCount-1 do begin
        texto1:=texto1 + Datasource11.DataSet.Fields[t].FieldName + chr(9);
      end;
      RE5.Lines.Add(texto);
      for y:=1 to Datasource11.DataSet.RecordCount do begin
        Datasource11.DataSet.RecNo:=y;
        texto1:='';
        for t:=0 to Datasource11.DataSet.FieldCount-1 do begin
          texto1:=texto1 + Datasource11.DataSet.Fields[t].AsString + chr(9);
        end;
        RE5.Lines.Add(texto1);
      end;
   end
   else begin
        messagedlg('Grilla de Historial de pagos sin Datos..',mterror,[mbok],0);
   end;
   RE5.SelectAll;
   RE5.CopyToClipboard;
end;  }
//RE5.SelectAll;
//RE5.CopyToClipboard;
messagedlgpos('Se Copiaron los Datos listo para pegarlos a Excel',mtConfirmation,[mbok],0,screen.Width div 3,screen.Height div 3);
end;

procedure TImp_ResumenAldia.TPOOBJExit(Sender: TObject);
begin
if TPOOBJ.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Objeto Ingresado!!',mterror,[mbok],0);
  TPOOBJ.SetFocus;
end;
end;

procedure TImp_ResumenAldia.TPOOBJKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  BitBtn1.SetFocus;
end;
end;

end.

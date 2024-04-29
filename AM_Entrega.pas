unit AM_Entrega;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, ExtCtrls, ComCtrls, DBGrids, DB, ADODB, JvExGrids,
  JvStringGrid, Mask, DBCtrls, JvExComCtrls, JvProgressBar, StrUtils,
  JvExButtons, JvBitBtn, Buttons, ToolWin, Unidad, DBClient, WSDLIntf,
  ClaseFunciones, ClaseComprobantesEntrega,
  ClaseComprobantesEntregaConfig, RpDefine, RpBase, RpSystem;

type THackStringGrid = class(TStringGrid);
type
  TAM_EntregaTalon = class(TForm)
    Barra1: TStatusBar;
    DataSource1: TDataSource;
    PC1: TPageControl;
    TabSheet4: TTabSheet;
    Label3: TLabel;
    Label11: TLabel;
    CUIP: TEdit;
    TabSheet1: TTabSheet;
    C2: TRadioButton;
    C3: TRadioButton;
    C1: TRadioButton;
    Label15: TLabel;
    ODNI: TEdit;
    Buscar: TJvBitBtn;
    Bevel1: TBevel;
    Splitter1: TSplitter;
    CB1: TCheckBox;
    GroupBox6: TGroupBox;
    Shape3: TShape;
    Shape2: TShape;
    Label12: TLabel;
    Label14: TLabel;
    Label4: TLabel;
    Grupo2: TGroupBox;
    Agrega2: TJvBitBtn;
    Quita2: TJvBitBtn;
    Borra2: TJvBitBtn;
    Label2: TLabel;
    TOT1: TEdit;
    Label22: TLabel;
    TOT2: TEdit;
    PC2: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet5: TTabSheet;
    grilla3: TJvStringGrid;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    grilla2: TJvStringGrid;
    CONTREC: TJvBitBtn;
    Proceso: TJvProgressBar;
    COBRADOR: TComboBox;
    Label19: TLabel;
    CONFIRMA: TJvBitBtn;
    GroupBox7: TGroupBox;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Splitter2: TSplitter;
    GroupBox3: TGroupBox;
    C4: TCheckBox;
    C7: TCheckBox;
    C5: TCheckBox;
    C6: TCheckBox;
    FEC: TMaskEdit;
    FECHA: TMaskEdit;
    todos: TRichEdit;
    grilla4: TJvStringGrid;
    BuscarTalon: TJvBitBtn;
    RvS: TRvSystem;
    Image1: TImage;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    EXPORTAR: TJvBitBtn;
    ToolButton5: TToolButton;
    GUARDA: TJvBitBtn;
    ToolButton1: TToolButton;
    Limpiar: TJvBitBtn;
    ToolButton3: TToolButton;
    JvBitBtn1: TJvBitBtn;
    IMPRIME: TJvBitBtn;
    ToolButton2: TToolButton;
    CB2: TCheckBox;
    CB3: TCheckBox;
    respon: TEdit;
    Label5: TLabel;
    Label1: TLabel;
    OBSERV: TEdit;
    CBtodos: TCheckBox;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure C2Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure BuscarClick(Sender: TObject);
    procedure FECHAKeyPress(Sender: TObject; var Key: Char);
    procedure FECHAExit(Sender: TObject);
    procedure COBRADORKeyPress(Sender: TObject; var Key: Char);
    procedure COBRADORExit(Sender: TObject);
    procedure OBSERVKeyPress(Sender: TObject; var Key: Char);
    procedure FECHAChange(Sender: TObject);
    procedure Borra2Click(Sender: TObject);
    procedure Quita2Click(Sender: TObject);
    procedure grilla2Click(Sender: TObject);
    procedure RecreaGrilla3();
    procedure CONTRECClick(Sender: TObject);
    procedure ExportarClick(Sender: TObject);
    procedure GUARDAClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure CONFIRMAClick(Sender: TObject);
    procedure FECKeyPress(Sender: TObject; var Key: Char);
    procedure FECExit(Sender: TObject);
    procedure ODNIKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure LimpiarClick(Sender: TObject);
    procedure LimpiarVentana(nro:byte);
    procedure BuscarTalonClick(Sender: TObject);
    procedure IMPRIMEClick(Sender: TObject);
    procedure RvSPrint(Sender: TObject);
    procedure CB2KeyPress(Sender: TObject; var Key: Char);
    procedure CB2Click(Sender: TObject);
    procedure CB3Click(Sender: TObject);
    procedure responKeyPress(Sender: TObject; var Key: Char);
    procedure PC1Change(Sender: TObject);
  private
    { Private declarations }
    IdCombos:array of array of string;
    DataSet0,DataSet1,DataSet2,DtCombo,DataSet3:TClientDataSet;
    Funciones:TFuncionesVarias;
    ComprobantesEntrega:TComprobantesEntrega;
    ComprobantesEntregaConfig:TComprobantesEntregaConfig;
    CorreccionImpr:double;
    FechaActual,tiporec,ptovta:string;
    TiposComprobantes:Unidad.TablaXML;
  public
    gh:boolean;
    { Public declarations }
  end;

var
  AM_EntregaTalon: TAM_EntregaTalon;

implementation

uses modulo, Bus_Talon;

{$R *.dfm}

procedure TAM_EntregaTalon.FormActivate(Sender: TObject);
begin
if not(gh) then begin
  gh:=true;
  setlength(IdCombos,2);
  CorreccionImpr:=0;
  FechaActual:=LeftStr(Fec_System(),10);
  PC1.ActivePage:=PC1.Pages[1];
  PC2.ActivePage:=PC2.Pages[0];
  grilla2.Cells[0,0]:='Orden';                       grilla2.Cells[1,0]:='Identificador';
  grilla2.Cells[2,0]:='N° Talonario';                grilla2.Cells[3,0]:='Tipo Talonario';
  grilla2.Cells[4,0]:='Punto Venta';                 grilla2.Cells[5,0]:='N° Inicio';
  grilla2.Cells[6,0]:='Cantidad';                    grilla2.Cells[7,0]:='N° Tipo';
  grilla2.Cells[8,0]:='MDF';

  grilla3.Cells[0,0]:='Orden';                       grilla3.Cells[1,0]:='Identificador';
  grilla3.Cells[2,0]:='N° Talonario';                grilla3.Cells[3,0]:='N° Comprobante';
  grilla3.Cells[4,0]:='Estado';                      grilla3.Cells[5,0]:='Procesar';
  grilla3.Cells[6,0]:='N° Tipo';

  grilla4.Cells[0,0]:='Orden';                        grilla4.Cells[1,0]:='Identificador';
  grilla4.Cells[2,0]:='N° Talonario';                 grilla4.Cells[3,0]:='N° Comprobante';
  grilla4.Cells[4,0]:='Tipo Comprobante';             grilla4.Cells[5,0]:='Estado';
  grilla4.Cells[6,0]:='Procesar';

  FECHA.Text:=FechaActual;
  FEC.Text:=FechaActual;

  C4.Checked:=false;

  Coloca1(0);
  ODNI.Visible:=false;
  //FEC.Visible:=true;
  fecha.SetFocus;
  //buscar.Click;
end;
end;

procedure TAM_EntregaTalon.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TAM_EntregaTalon.Coloca1(nro:byte);
var t,y,r,s:integer;
    NroDni,ValNull:variant;
    txtw:widestring;
begin
if nro=0 then begin
  COBRADOR.Clear;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT distinct Nombre,cuif FROM VLosCobradores ORDER BY Nombre ';
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
//if nro = 1 then begin  // controlamos si el cobrador tiene talonarios no devueltos
//  DataSet3.Free;
//  DataSet3:=TClientdataSet.Create(nil);
//  Funciones:=TFuncionesVarias.Create(nil);
//  Funciones.ConnectionString:=modulo2.Conexion;
//  txtw:='SELECT COUNT(*) FROM [Prueba].[dbo].[Fn_VistaComprobantesEntregaNODevueltos] (1 ,'
//  + chr(39) + trim(cobrador.Text) + chr(39) + ') where detallecomprobante = ' + chr(39) + trim(cobrador.Text) + chr(39)
//  + ' and puntoventa= 2';
//
//  if not Funciones.Listar(txtw,DataSet1) then
//    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
//  Funciones.Free;
//end;
if nro = 2 then begin //Grilla de Entregas y Talonarios
  ValNull:=null;
  DataSet0.Free;
  DataSet0:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=DataSet0;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
//  if CBtodos.Checked = true then txtw:='SELECT * FROM Fn_VistaComprobantesEntrega (Null,Null,Null,Null,null,0) where (Confirmado=0) order  by 1 desc'
//  else txtw:='SELECT top 1 * FROM Fn_VistaComprobantesEntrega (Null,Null,Null,Null,null,0) where (Confirmado=0) order  by 1 desc';
// // txtw:='SELECT top 1 * FROM Fn_VistaComprobantesEntrega (Null,Null,Null,Null,null,0) order  by 1 desc';
//  if not Funciones.Listar(txtw,DataSet0) then
//    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  if C1.Checked then begin
    if not Funciones.Run_Fn_VistaComprobantesEntrega(ValNull,ValNull,'','',null,DataSet0,'',0) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  end;
  if C2.Checked then begin
    if not Funciones.Run_Fn_VistaComprobantesEntrega(ValNull,ValNull,'',FEC.Text,null,DataSet0,'',0) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  end;
  if C3.Checked then begin
    NroDni:=ODNI.Text;
    if not Funciones.Run_Fn_VistaComprobantesEntrega(NroDni,ValNull,'','',null,DataSet0,'',0) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  end;
  if CB1.Checked then begin
    DataSet0.Filter:='(Confirmado=0)';
    DataSet0.Filtered:=true;
  end
  else DataSet0.Filtered:=false;
  for t:=0 to DataSet0.FieldCount-1 do DBGrid1.Columns[t].Width:=80;
  Funciones.Free;
end;
if nro = 3 then begin
  DataSet1.Free;
  DataSet1:=TClientdataSet.Create(nil);
  DataSource2.DataSet:=DataSet1;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT dbo.ComprobantesEntregaConfig.IdConfig, dbo.ComprobantesEntregaConfig.NroTalonario,'
  + ' dbo.ComprobantesEntregaConfig.IdComprobante, dbo.ComprobantesEntregaConfig.PuntoVenta,'
  + ' dbo.ComprobantesEntregaConfig.Desde, dbo.ComprobantesEntregaConfig.Cantidad, dbo.TiposComprobantes.DetalleComprobante,'
  + ' dbo.ComprobantesEntregaConfig.IdTipoComprobante,dbo.ComprobantesEntrega.Observaciones  FROM dbo.ComprobantesEntregaConfig INNER JOIN '
  + ' dbo.TiposComprobantes ON dbo.ComprobantesEntregaConfig.IdTipoComprobante = dbo.TiposComprobantes.IDTipoComprobante INNER JOIN'
  + ' dbo.ComprobantesEntrega ON dbo.ComprobantesEntregaConfig.IdComprobante = dbo.ComprobantesEntrega.IdComprobante '
  + ' WHERE (dbo.ComprobantesEntregaConfig.IdComprobante = ' + DataSet0.Fields[0].AsString + ');';
//  txtw:='SELECT IdConfig,NroTalonario,IdComprobante,PuntoVenta,Desde,Cantidad,DetalleComprobante,'
//        + 'ComprobantesEntregaConfig.IdTipoComprobante FROM ComprobantesEntregaConfig '
//        + 'INNER JOIN TiposComprobantes ON ComprobantesEntregaConfig.IdTipoComprobante'
//        + ' = dbo.TiposComprobantes.IDTipoComprobante WHERE (IdComprobante='  + DataSet0.Fields[0].AsString + ');';
  if not Funciones.Listar(txtw,DataSet1) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
end;
if nro = 4 then begin
  r:=1;
  for t:=1 to DataSet1.RecordCount do begin
    DataSet1.RecNo:=t;
    if DataSet0.Fields[6].AsString = 'True' then begin
      DataSet2.Free;
      DataSet2:=TClientdataSet.Create(nil);
      DataSource3.DataSet:=DataSet2;
      Funciones:=TFuncionesVarias.Create(nil);
      Funciones.ConnectionString:=modulo2.Conexion;
      txtw:='SELECT Id,IdConfig,NroComprobante,DetalleComprobante FROM TiposComprobantes '
       + 'INNER JOIN ComprobantesEntregaDetalle ON TiposComprobantes.IDTipoComprobante '
       + '= ComprobantesEntregaDetalle.IdTipoComprobante WHERE (IdConfig=' + DataSet1.Fields[0].AsString + ');';
      if not Funciones.Listar(txtw,DataSet2) then
        messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
      Funciones.Free;
      For y:=1 to DataSet2.RecordCount do begin
        DataSet2.RecNo:=y;
        grilla4.RowCount:=r+1;
        grilla4.Cells[0,r]:=StrFill(IntToStr(r),5,'0','');
        grilla4.Cells[1,r]:=DataSet2.Fields[0].AsString;
        grilla4.Cells[2,r]:=DataSet2.Fields[1].AsString;
        grilla4.Cells[3,r]:=DataSet2.Fields[2].AsString;
        grilla4.Cells[4,r]:=DataSet2.Fields[3].AsString;
        r:=r+1;
      end;
    end
    else begin
      for y:=1 to DataSet1.Fields[5].AsInteger do begin
        grilla4.RowCount:=r+1;
        grilla4.Cells[0,r]:=StrFill(inttostr(r),5,'0','');
        grilla4.Cells[1,r]:=DataSet1.Fields[0].AsString;
        grilla4.Cells[2,r]:=DataSet1.Fields[1].AsString;
        s:=strtoint(DataSet1.Fields[4].AsString) + y -1;
        grilla4.Cells[3,r]:=StrFill(DataSet1.Fields[3].AsString,3,'0','') + '-' + StrFill(inttostr(s),7,'0','');
        grilla4.Cells[4,r]:=DataSet1.Fields[7].AsString;
        r:=r+1;
      end;
    end;
  end;
end;
end;

procedure TAM_EntregaTalon.JvBitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TAM_EntregaTalon.C2Click(Sender: TObject);
begin
Label15.Visible:=true;
ODNI.Visible:=false;
FEC.Visible:=false;
if C2.Checked then begin
  Label15.Caption:='Ingrese Fecha:';
  FEC.Visible:=true;
  FEC.SetFocus;
end;
if C3.Checked then begin
  Label15.Caption:='Ingrese N° Entrega:';
  ODNI.Visible:=true;
  ODNI.SetFocus;
end;
end;

procedure TAM_EntregaTalon.C1Click(Sender: TObject);
begin
Label15.Visible:=false;
ODNI.Visible:=false;
FEC.Visible:=false;
Buscar.SetFocus;
end;

procedure TAM_EntregaTalon.BuscarClick(Sender: TObject);
begin
Coloca1(2);
end;

procedure TAM_EntregaTalon.FECHAKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  CB2.SetFocus;
end;
end;

procedure TAM_EntregaTalon.FECHAExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(FECHA.Text));
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  FECHA.SetFocus;
end;
end;

procedure TAM_EntregaTalon.COBRADORKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  respon.SetFocus;
end;
end;

procedure TAM_EntregaTalon.COBRADORExit(Sender: TObject);
begin
if COBRADOR.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Cobrador Ingresado!!',mterror,[mbok],0);
  COBRADOR.SetFocus;
end
else Grupo2.Enabled:=true;
end;

procedure TAM_EntregaTalon.OBSERVKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  contrec.SetFocus;
end;
end;

procedure TAM_EntregaTalon.FECHAChange(Sender: TObject);
begin
C4.Checked:=true;
if C7.Checked then GUARDA.Enabled:=true;
end;

procedure TAM_EntregaTalon.Borra2Click(Sender: TObject);
var t,p,gf:integer;
    bt:boolean;
begin
if trim(grilla2.Cells[0,1])<>'' then begin
  gf:=1;t:=0;
  if grilla2.Cells[1,grilla2.Row] = '?' then t:=1
  else gf:=messagedlg('Desea Borrar el N° Talonario Seleccionado??' + chr(13)
       + 'Se eliminará definitivamente de la Base de Datos',mtWarning,[mbok,mbCancel],0);
  if gf = 1 then begin
    if t=0 then begin
      ComprobantesEntregaConfig:=TComprobantesEntregaConfig.Create(nil);
      ComprobantesEntregaConfig.ConnectionString:=modulo2.Conexion;
      bt:=ComprobantesEntregaConfig.Borrar(grilla2.Cells[2,grilla2.Row]);
      ComprobantesEntregaConfig.Free;
    end;
    t:=grilla2.Row;
    if (t >= 1) and (grilla2.RowCount > 2) then begin
      THackStringGrid(grilla2).DeleteRow(t);
    end
    else begin
      for t:=0 to grilla2.ColCount-1 do grilla2.Cells[t,1]:='';
    end;
  end;
  RecreaGrilla3();
  Borra2.Enabled:=false;
end;
end;

procedure TAM_EntregaTalon.Quita2Click(Sender: TObject);
begin
Borra2.Enabled:=false;
BuscarTalon.Enabled:=true;
Quita2.Enabled:=false;
end;

procedure TAM_EntregaTalon.grilla2Click(Sender: TObject);
begin
Borra2.Enabled:=true;
Quita2.Enabled:=true;
end;

procedure TAM_EntregaTalon.RecreaGrilla3();
var t,r,y,s:integer;
begin
GUARDA.Enabled:=false;
for t:=0 to grilla3.ColCount-1 do
  for r:=1 to grilla3.RowCount-1 do grilla3.Cells[t,r]:='';
grilla3.RowCount:=2;
{ grilla3.Cells[0,0]:='Orden';               grilla3.Cells[1,0]:='Identificador';
  grilla3.Cells[2,0]:='N° Talonario';        grilla3.Cells[3,0]:='N° Comprobante';
  grilla3.Cells[4,0]:='Estado';              grilla3.Cells[5,0]:='Procesar';
  grilla3.Cells[6,0]:='N° Tipo';}
if trim(grilla2.Cells[2,1]) <> '' then begin
  r:=1;
  for t:=1 to grilla2.RowCount-1 do begin
    for y:=1 to strtoint(trim(grilla2.Cells[6,t])) do begin
      grilla3.RowCount:=r+1;
      grilla3.Cells[0,r]:=StrFill(inttostr(r),5,'0','');
      grilla3.Cells[1,r]:=grilla2.Cells[1,t];
      grilla3.Cells[2,r]:=grilla2.Cells[2,t];
      s:=strtoint(grilla2.Cells[5,t]) + y -1;
      grilla3.Cells[3,r]:=StrFill(grilla2.Cells[4,t],3,'0','') + '-' + StrFill(inttostr(s),7,'0','');
      grilla3.Cells[6,r]:=grilla2.Cells[7,t];
      r:=r+1;
    end;
  end;
  TOT1.Text:=inttostr(grilla2.RowCount-1);
  TOT2.Text:=inttostr(r-1);
end;
end;

procedure TAM_EntregaTalon.CONTRECClick(Sender: TObject);
var gf:integer;
    TodoOk:boolean;
    NroEntrega,NroConfig,TpoComprob,ValNull:variant;
begin
gf:=messagedlg('Desea Iniciar el Control de Comprobantes??' + chr(13)
    + 'El proceso verificará la repetición de Comprobantes contra la Base de Datos' + chr(13)
    + 'Por favor espere. Este proceso puede demorar unos minutos.',mtWarning,[mbok,mbCancel],0);
Proceso.Position:=0;
TodoOk:=true;
ValNull:=null;
if gf = 1 then begin
  Proceso.Max:=grilla3.RowCount-1;
  for gf:=1 to grilla3.RowCount-1 do begin
    DtCombo.Free;
    DtCombo:=TClientdataSet.Create(nil);
    Funciones:=TFuncionesVarias.Create(nil);
    Funciones.ConnectionString:=modulo2.Conexion;
    TpoComprob:=grilla3.Cells[6,gf];
    if C7.Checked = true then begin
      NroEntrega:=CUIP.Text;
      NroConfig:=grilla3.Cells[1,gf];
      Funciones.Run_Fn_VistaComprobantesEntregaConfig(NroConfig,NroEntrega,TpoComprob,
      grilla3.Cells[3,gf],ValNull,DtCombo,'',0);
    end
    else Funciones.Run_Fn_VistaComprobantesEntregaConfig(ValNull,ValNull,TpoComprob,
    grilla3.Cells[3,gf],ValNull,DtCombo,'',0);
    Funciones.Free;
    if DtCombo.RecordCount > 0 then begin
      grilla3.Cells[4,gf]:='ERROR!! COMPROBANTE ENTREGADO A '; //+ DtCombo.Fields[1].AsString;
                          // + ' EL ' + DtCombo.Fields[10].AsString + ' - ENTREGA N°: '
                          // + DtCombo.Fields[2].AsString + ' - COMPROBANTE N°: ' + DtCombo.Fields[7].AsString;
      grilla3.Cells[5,gf]:='NO';
      TodoOk:=false;
    end
    else begin
      grilla3.Cells[4,gf]:='CORRECTO';
      grilla3.Cells[5,gf]:='SI';
    end;
    Proceso.Position:=gf;
  end;
    messagedlg('OK!!... El Proceso de Verificacion de Repatición no Arrojo ningun error' + chr(13)
            + 'Puede Guardar lo comprobantes con toda Seguridad...',mtWarning,[mbok],0);
end
else TodoOk:=false;
if TodoOk then begin
  GUARDA.Enabled:=true;
  guarda.Click;
end
else begin
  GUARDA.Enabled:=false;
  messagedlg('ERROR!!... No se procesa lote por existir Talonarios registrados.',mtError,[mbok],0);
end;
end;

procedure TAM_EntregaTalon.ExportarClick(Sender: TObject);
var texto:widestring;
var txt:string;
var t,y,r:integer;
begin
todos.Clear;
texto:='';
texto:=texto + 'N° Entrega' + chr(9) + 'Fecha' + chr(9) + 'Cobrador' + chr(9) + 'Observaciones';
todos.Lines.Add(texto);
if strtoint(CUIP.Text) = 0 then texto:='SIN ASIGNAR' + chr(9)
else texto:=CUIP.Text + chr(9);
texto:=texto + FECHA.Text + chr(9) + COBRADOR.Text + chr(9) + OBSERV.Text;
todos.Lines.Add(texto);
texto:='';
todos.Lines.Add(texto);
texto:=texto + 'Orden' + chr(9) + 'Tipo Talonario' + chr(9) + 'N° Talonario' + chr(9)
       + 'Punto Venta' + chr(9) + 'N° Comprobante' + chr(9) + 'Estado';
todos.Lines.Add(texto);
r:=1;
for y:=1 to grilla2.RowCount-1 do begin
  for t:=1 to grilla3.RowCount-1 do begin
    if (grilla3.Cells[2,t] = grilla2.Cells[2,y]) and (grilla3.Cells[6,t] = grilla2.Cells[7,y]) then begin
      texto:=StrFill(inttostr(r),4,'0','') + chr(9) + grilla2.Cells[3,y] + chr(9);
      texto:=texto + grilla2.Cells[2,y] + chr(9) + grilla2.Cells[4,y] + chr(9);
      texto:=texto + grilla3.Cells[3,t] + chr(9) + grilla3.Cells[4,t] + chr(9);
      todos.Lines.Add(texto);
      r:=r+1;
    end;
  end;       
end;
todos.SelectAll;
todos.CopyToClipboard;
messagedlg('Se Copiaron los Datos, listo para pegarlos a Excel',mtwarning,[mbok],0);
end;

procedure TAM_EntregaTalon.GUARDAClick(Sender: TObject);
var gf,t:integer;
    ElId1:string;
    TodoOk1:boolean;
begin
//gf:=messagedlg('Desea Guardar los Talonarios y Comprobantes?',mtWarning,[mbok,mbCancel],0);
Proceso.Position:=0;
//if gf = 1 then begin
  if not C7.Checked then begin //Altas
    ComprobantesEntrega:=TComprobantesEntrega.Create(nil);
    ComprobantesEntrega.ConnectionString:=modulo2.Conexion;
    if CB2.Checked then ComprobantesEntrega.C_CuifCobrador_IX1:=null
       else ComprobantesEntrega.C_CuifCobrador_IX1:=IdCombos[0,COBRADOR.ItemIndex];
    ComprobantesEntrega.C_Fecha_IX2:=FECHA.Text;
    ComprobantesEntrega.C_PorComprobante:=CB2.Checked;
    ComprobantesEntrega.C_Responsable:=AnsiReplaceStr(trim(respon.Text),chr(39),chr(33));
    ComprobantesEntrega.C_Observaciones:=AnsiReplaceStr(trim(OBSERV.Text),chr(39),chr(33));
    ComprobantesEntrega.C_Usu_A:=modulo2.nro_usu;
    ComprobantesEntrega.C_Usu_M:=null;
    ComprobantesEntrega.C_Fecha_M:='';
    ComprobantesEntrega.C_Confirmado:=false;
    ComprobantesEntrega.C_UsuConfirma:=null;
    ComprobantesEntrega.C_FechaConfirma:='';
    TodoOk1:=ComprobantesEntrega.Agrega;
    ElId1:=ComprobantesEntrega.Identidad;
    ComprobantesEntrega.Free;
    if TodoOk1 then begin
      For t:=1 to grilla2.RowCount-1 do begin
        ComprobantesEntregaConfig:=TComprobantesEntregaConfig.Create(nil);
        ComprobantesEntregaConfig.ConnectionString:=modulo2.Conexion;
        ComprobantesEntregaConfig.C_IdComprobante_IX2:=ELId1;
        ComprobantesEntregaConfig.C_NroTalonario_IX1:=grilla2.Cells[2,t];
        ComprobantesEntregaConfig.C_PuntoVenta:=grilla2.Cells[4,t];
        ComprobantesEntregaConfig.C_Desde:=grilla2.Cells[5,t];
        ComprobantesEntregaConfig.C_Cantidad:=grilla2.Cells[6,t];
        ComprobantesEntregaConfig.C_IdTipoComprobante_IX3:=grilla2.Cells[7,t];
        TodoOk1:=ComprobantesEntregaConfig.Agrega;
        ComprobantesEntregaConfig.Free;
        if not TodoOk1 then break;
      end;
    end;
    if not TodoOk1 then begin //Algún error hubo. Eliminamos la cabecera y por cascada se elimana el resto
      ComprobantesEntrega:=TComprobantesEntrega.Create(nil);
      ComprobantesEntrega.ConnectionString:=modulo2.Conexion;
      ComprobantesEntrega.Borrar(ElId1);
      ComprobantesEntrega.Free;
      messagedlg('ERROR!!... Al Guardar los Datos.',mtError,[mbok],0);
    end
    else begin
      messagedlg('Se ha Guardado la Entrega de Talonarios con Exito',mtConfirmation,[mbok],0);
      Limpiar.Click;
      buscar.Click;
    end;
  end
  else begin //Modificaciones
    TodoOk1:=true;
    if C4.Checked then begin
      ComprobantesEntrega:=TComprobantesEntrega.Create(nil);
      ComprobantesEntrega.ConnectionString:=modulo2.Conexion;
      ComprobantesEntrega.C_IdComprobante_PK:=CUIP.Text;
      ComprobantesEntrega.C_CuifCobrador_IX1:=IdCombos[0,COBRADOR.ItemIndex];
      ComprobantesEntrega.C_Fecha_IX2:=FECHA.Text;
      ComprobantesEntrega.C_PorComprobante:=CB2.Checked;
      ComprobantesEntrega.C_Responsable:=AnsiReplaceStr(trim(respon.Text),chr(39),chr(33));
      ComprobantesEntrega.C_Observaciones:=AnsiReplaceStr(trim(OBSERV.Text),chr(39),chr(33));
      ComprobantesEntrega.C_Usu_M:=modulo2.nro_usu;
      ComprobantesEntrega.C_Fecha_M:=FechaActual;
      TodoOk1:=ComprobantesEntrega.Modificar;
      ComprobantesEntrega.Free;
    end;
    if not TodoOk1 then messagedlg('ERROR!!... Al Guardar los Datos. (Cabecera)',mtError,[mbok],0)
    else messagedlg('Se ha Guardado la Entrega de Talonarios con Exito',mtConfirmation,[mbok],0);
    if C5.Checked and TodoOk1 then begin
      For t:=1 to grilla2.RowCount-1 do begin
        if grilla2.Cells[1,t] = '?' then begin
          ComprobantesEntregaConfig:=TComprobantesEntregaConfig.Create(nil);
          ComprobantesEntregaConfig.ConnectionString:=modulo2.Conexion;
          ComprobantesEntregaConfig.C_IdComprobante_IX2:=ELId1;
          ComprobantesEntregaConfig.C_NroTalonario_IX1:=grilla2.Cells[2,t];
          ComprobantesEntregaConfig.C_PuntoVenta:=grilla2.Cells[4,t];
          ComprobantesEntregaConfig.C_Desde:=grilla2.Cells[5,t];
          ComprobantesEntregaConfig.C_Cantidad:=grilla2.Cells[6,t];
          ComprobantesEntregaConfig.C_IdTipoComprobante_IX3:=grilla2.Cells[7,t];
          TodoOk1:=ComprobantesEntregaConfig.Agrega;
          ComprobantesEntregaConfig.Free;
          if not TodoOk1 then break;
        end
        else begin
          if grilla2.Cells[8,t] = 'X' then begin
            ComprobantesEntregaConfig:=TComprobantesEntregaConfig.Create(nil);
            ComprobantesEntregaConfig.ConnectionString:=modulo2.Conexion;
            ComprobantesEntregaConfig.C_IdComprobante_IX2:=ELId1;
            ComprobantesEntregaConfig.C_NroTalonario_IX1:=grilla2.Cells[2,t];
            ComprobantesEntregaConfig.C_PuntoVenta:=grilla2.Cells[4,t];
            ComprobantesEntregaConfig.C_Desde:=grilla2.Cells[5,t];
            ComprobantesEntregaConfig.C_Cantidad:=grilla2.Cells[6,t];
            ComprobantesEntregaConfig.C_IdTipoComprobante_IX3:=grilla2.Cells[7,t];
            TodoOk1:=ComprobantesEntregaConfig.Modificar;
            ComprobantesEntregaConfig.Free;
            if not TodoOk1 then break;
          end;
        end;
      end;
    end;
    if not TodoOk1 then messagedlg('ERROR!!... Al Guardar los Datos. (Detalle)',mtError,[mbok],0)
    else begin
      messagedlg('Se ha Guardado la Entrega de Talonarios con Exito',mtConfirmation,[mbok],0);
      Limpiar.Click;
    end;  
  end;
//end;
end;

procedure TAM_EntregaTalon.DBGrid1CellClick(Column: TColumn);
var t:integer;
begin
LimpiarVentana(1);
if not DataSet0.IsEmpty then begin
  Coloca1(3);
  Coloca1(4);
  if (DataSet0.Fields[7].AsString <> 'True') then begin
    if DataSet0.Fields[7].AsString = 'False' then CONFIRMA.Enabled:=true
       else CONFIRMA.Enabled:=false;
    CUIP.Text:=DataSet0.Fields[0].AsString;
    FECHA.Text:=DataSet0.Fields[4].AsString;
    COBRADOR.ItemIndex:=COBRADOR.Items.IndexOf(trim(DataSet0.Fields[3].AsString));
    OBSERV.Text:=AnsiReplaceStr(trim(DataSet0.Fields[5].Text),chr(33),chr(39));
    if not DataSet1.IsEmpty then begin
      C7.Checked:=true;
      DataSet1.RecNo:=1;
      for t:=1 to DataSet1.RecordCount do begin
        DataSet1.RecNo:=t;
        grilla2.RowCount:=t+1;
        grilla2.Cells[0,t]:=StrFill(inttostr(t),2,'0','');
        grilla2.Cells[1,t]:=trim(DataSet1.Fields[0].AsString);
        grilla2.Cells[2,t]:=trim(DataSet1.Fields[1].AsString);
        grilla2.Cells[3,t]:=trim(DataSet1.Fields[6].AsString);
        grilla2.Cells[4,t]:=trim(DataSet1.Fields[3].AsString);
        grilla2.Cells[5,t]:=trim(DataSet1.Fields[4].AsString);
        grilla2.Cells[6,t]:=trim(DataSet1.Fields[5].AsString);
        grilla2.Cells[7,t]:=trim(DataSet1.Fields[6].AsString);
        grilla2.Cells[8,t]:='';
      end;
      RecreaGrilla3();
      C4.Checked:=false;
      C5.Checked:=false;
      C6.Checked:=false;
      confirma.click;
    end
    else begin
      messagedlg('ERROR!!... Los Datos de Entrega estan Incompletos para Modificar o Confirmar.' + chr(13)
      + 'Consultar Con Administradores',mtError,[mbok],0);
      CONFIRMA.Enabled:=false;
      C7.Checked:=false;
    end;
  end
  else begin
    messagedlg('ERROR!!...Imposible MODIFICAR una Entrega ya Confirmada.' + chr(13)
      + 'Consultar Con Administradores',mtError,[mbok],0);
    IMPRIME.Enabled:=true;
  end;
end;
end;

procedure TAM_EntregaTalon.CONFIRMAClick(Sender: TObject);
var gf,t:integer;
    TodoOk:boolean;
    TpoComprob,ValNull:variant;
    txt:string;
begin
gf:=messagedlg('Desea Confirmar la Entrega de Talonarios Seleccionada?' + chr(13)
    + 'Se verificará la repetición de comprobantes. Por favor espere.' + chr(13)
    + 'Este proceso puede demorar unos minutos.',mtWarning,[mbok,mbCancel],0);
Proceso.Position:=0;
TodoOk:=true;
ValNull:=null;
  if gf = 1 then begin
   Proceso.Max:=grilla3.RowCount-1;
   for gf:=1 to grilla3.RowCount-1 do begin
    DtCombo.Free;
    DtCombo:=TClientdataSet.Create(nil);
    Funciones:=TFuncionesVarias.Create(nil);
    Funciones.ConnectionString:=modulo2.Conexion;
    TpoComprob:=grilla4.Cells[4,gf];
    Funciones.Run_Fn_VistaComprobantesEntregaConfig(ValNull,ValNull,TpoComprob,
    grilla4.Cells[3,gf],ValNull,DtCombo,'',0);
    Funciones.Free;
    if DtCombo.RecordCount > 0 then begin
      grilla4.Cells[5,gf]:='ERROR!! COMPROBANTE ENTREGADO A ';// + DtCombo.Fields[9].AsString
                          // + ' EL ' + DtCombo.Fields[10].AsString + ' - ENTREGA N°: '
                          // + DtCombo.Fields[2].AsString + ' - COMPROBANTE N°: ' + DtCombo.Fields[7].AsString;
      grilla4.Cells[6,gf]:='NO';
      TodoOk:=false;
    end
    else begin
      grilla4.Cells[5,gf]:='CORRECTO';
      grilla4.Cells[6,gf]:='SI';
    end;
    Proceso.Position:=gf;
   end;

    if TodoOk then begin
      DtCombo.Free;
      DtCombo:=TClientdataSet.Create(nil);
      Funciones:=TFuncionesVarias.Create(nil);
      Funciones.ConnectionString:=modulo2.Conexion;
      if CB2.Checked then txt:='AgregaDetalleEntrega ' + CUIP.Text + ' , NULL'
      else txt:='AgregaDetalleEntrega ' + CUIP.Text + ' , ' + inttostr(modulo2.nro_usu);
      if not Funciones.ListarSinResp(txt) then
        messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
      else begin
        if not Funciones.Listar('SELECT Confirmado FROM ComprobantesEntrega WHERE (IdComprobante='
        + CUIP.Text + ')',DtCombo) then
          messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
        else begin
          if DtCombo.Fields[0].AsBoolean = true then begin
            messagedlg('ATENCION!!... Datos Guardados Correctamente!...',mtWarning,[mbok],0);
            IMPRIME.Enabled:=true;
            CONFIRMA.Enabled:=false;
            imprime.Click;
            limpiarventana(0);
            PC1.ActivePage:=PC1.Pages[1];
            fecha.SetFocus;
          end
          else messagedlg('ERROR Al Crear los Comprobante. Consulte con Administrador',mtError,[mbok],0);
        end;
      end;
      Funciones.Free;
    end
    else messagedlg('ERROR!!... No se Confirma la Entrega por existir Comprobantes ya registrados.',mtError,[mbok],0);
  end
 else begin
  messagedlg('ATENCION!!... Ud. ha cancelado el proceso de Verificación de Comprobantes..',mtWarning,[mbok],0);
 end;
end;

procedure TAM_EntregaTalon.FECKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  BUSCAR.SetFocus;
end;
end;

procedure TAM_EntregaTalon.FECExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(FEC.Text));
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  FEC.SetFocus;
end;
end;

procedure TAM_EntregaTalon.ODNIKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  BUSCAR.SetFocus;
end
else begin
  if ( StrScan('0123456789',Key) <> nil ) or
      ( Key = Char(VK_BACK) ) then
   else Key := #0;
end;
end;

procedure TAM_EntregaTalon.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var h:byte;
begin
if trim(DataSet0.Fields[7].Text) = 'True' then h:=1
else h:=0;
case h of
  0:begin
    DBGrid1.Canvas.Brush.Color:=clWindow;
    DBGrid1.Canvas.FillRect(Rect);
    DBGrid1.Canvas.Font.Color:= clBlack;
    end;
  1:begin // sin confirmar
    DBGrid1.Canvas.Brush.Color:=$00C7D8C7;
    DBGrid1.Canvas.FillRect(Rect);
    DBGrid1.Canvas.Font.Color:= clBlack;
    end;
end;
DBGrid1.DefaultDrawColumnCell(Rect,Datacol,Column,State);
end;

procedure TAM_EntregaTalon.LimpiarClick(Sender: TObject);
begin
LimpiarVentana(0);
end;

procedure TAM_EntregaTalon.LimpiarVentana(nro:byte);
var t,r:integer;
begin

if Nro =0 then begin
  DataSource1.DataSet:=nil;
  DataSource2.DataSet:=nil;
  DataSource3.DataSet:=nil;
  for t:=0 to grilla4.ColCount-1 do
    for r:=1 to grilla4.RowCount-1 do grilla4.Cells[t,r]:='';
  grilla4.RowCount:=2;


  for t:=0 to grilla2.ColCount-1 do
    for r:=1 to grilla2.RowCount-1 do grilla2.Cells[t,r]:='';
  grilla2.RowCount:=2;
  for t:=0 to grilla3.ColCount-1 do
    for r:=1 to grilla3.RowCount-1 do grilla3.Cells[t,r]:='';
  grilla3.RowCount:=2;

  CUIP.Text:='00000';
  COBRADOR.ItemIndex:=0;
  OBSERV.Clear;

  TOT1.Text:='000';
  TOT2.Text:='000000';      

  C4.Checked:=false;    C5.Checked:=false;
  C6.Checked:=false;    C7.Checked:=false;

  IMPRIME.Enabled:=false;
  GUARDA.Enabled:=false;
  PC1.ActivePage:=PC1.Pages[0];
end;
end;

procedure TAM_EntregaTalon.BuscarTalonClick(Sender: TObject);
var Busca_Talonario: TBusca_Talonario;
    t,r:integer;

    function busca(NroTalon:string):boolean;
    var p:integer;
  begin
    Result:=true;
    if grilla2.Cells[0,1] <> '' then begin
      for p:=1 to grilla2.RowCount-1 do
        if (grilla2.Cells[2,p]=NroTalon) then Result:=false;
    end;
  end;

  function busca1(Tipo,Pv,Inicio:string):boolean;
    var p:integer;
  begin
    Result:=true;
    if grilla2.Cells[0,1] <> '' then begin
      for p:=1 to grilla2.RowCount-1 do
        if (grilla2.Cells[3,p]=Tipo)
        and (grilla2.Cells[4,p]=Pv)
        and (grilla2.Cells[5,p]=Inicio) then Result:=false;
    end;
  end;

begin
 Busca_Talonario:= TBusca_Talonario.create(self);
 try
  Busca_Talonario.UnSoloTaonario:=CB2.Checked;
  Busca_Talonario.Nroopcion:=1;
  Busca_Talonario.cobrador:=trim(cobrador.Text);
  Busca_Talonario.ShowModal;
  for t:=0 to Busca_Talonario.LISTADO.Items.Count-1 do begin
   if Busca_Talonario.LISTADO.Checked[t] then begin
    if busca(Busca_Talonario.DatosResult[0,t]) and
     busca1(Busca_Talonario.DatosResult[1,t],Busca_Talonario.DatosResult[2,t],Busca_Talonario.DatosResult[3,t]) then begin
     if (grilla2.RowCount > 1) and (trim(grilla2.Cells[0,1])<>'') then begin
      r:=grilla2.RowCount;
      grilla2.RowCount:=grilla2.RowCount+1;
     end
     else r:=1;
     grilla2.Cells[0,r]:=StrFill(inttostr(r),2,'0','');
     grilla2.Cells[1,r]:='?';
     grilla2.Cells[2,r]:=Busca_Talonario.DatosResult[0,t];
     grilla2.Cells[3,r]:=Busca_Talonario.DatosResult[1,t];
     grilla2.Cells[4,r]:=Busca_Talonario.DatosResult[2,t];
     grilla2.Cells[5,r]:=Busca_Talonario.DatosResult[3,t];
     grilla2.Cells[6,r]:=Busca_Talonario.DatosResult[4,t];
     grilla2.Cells[7,r]:=Busca_Talonario.DatosResult[5,t];
     grilla2.Cells[8,r]:='X';
    end
    else messagedlg('ERROR!! No Pueden Existir dos N° Talonarios, Tipo y Punto Venta iguales!!',mterror,[mbok],0);
    if trim(grilla2.Cells[0,1])<>'' then begin
     C5.Checked:=true;
     C6.Checked:=true;
     CONTREC.Enabled:=true;
     tiporec:=Busca_Talonario.TPOTALON.Text;
     ptovta:=Busca_Talonario.PV.Text;
     if (trim(tiporec)='FACTURA B') and (trim(ptovta)='02') then begin
      observ.Text:='FECHA DE FACTURACION:';
      observ.SetFocus;
     end
     else begin
      observ.Clear;
      contrec.SetFocus;
     end;
    end;
   end;
  end;
  RecreaGrilla3();
 finally
   Busca_Talonario.destroy;
 end;
end;

procedure TAM_EntregaTalon.IMPRIMEClick(Sender: TObject);
begin
RvS.Execute;
end;

procedure TAM_EntregaTalon.RvSPrint(Sender: TObject);
var Posfy,Posfx,PosUlt:double;
    y,Total:integer;

    Function Logo(posx,posy:double):double;
    var Imagen1:TBitMap;
        Fuente,PathLogo:string;
        Tamanio,CantImg,t:integer;
        P1,P2,P3,P4:double;
    begin
     with RvS do begin
      CantImg:=StrToInt(modulo2.INI1.ReadString('Resumen Planillas','CantImg','1'));
      for t:=1 to CantImg do begin
       Imagen1 := TBitMap.Create;
       PathLogo:=modulo2.path_todo + '\Imagenes\' + modulo2.INI1.ReadString('Resumen Planillas','Imagen' + IntToStr(t),'');
       if FileExists(PathLogo) then begin
        Image1.Picture.LoadFromFile(PathLogo);
        Imagen1.Assign(Image1.Picture.Graphic);
        Fuente:=modulo2.INI1.ReadString('Resumen Planillas','Tamaño' + IntToStr(t),'');
        PathLogo:=modulo2.INI1.ReadString('Resumen Planillas','Pos' + IntToStr(t),'');
        if (Fuente <> '') and (PathLogo <> '') then begin
         P1:=StrToFloat(Extrae(Fuente,',',1));
         P2:=StrToFloat(Extrae(Fuente,',',2));
         P3:=StrToFloat(Extrae(PathLogo,',',1));
         P4:=StrToFloat(Extrae(PathLogo,',',2));
         BaseReport.PrintBitmapRect(posx+P3,posy+P4,posx+P3+P1,posy+P4+P2,Imagen1);
        end;
       end;
       Imagen1.Free;
      end;
      BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+24);
      BaseReport.SetFont('Arial Black',8);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posx+50,posy+11,'ENTREGA DE TALONARIOS');
      BaseReport.PrintXY(posx+50,posy+17,'COMPROBANTE Nº ' + StrFill(DataSet0.Fields[0].AsString,5,'0',''));
      BaseReport.PrintXY(posx+50,posy+22,'FECHA: ' + FechaActual);
      BaseReport.SetFont('Arial',6);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posfx+155,posfy+26,'Usu Imp.: ' + inttostr(modulo2.nro_usu) + ' - Fec. Imp.:' + FechaActual);
      BaseReport.SetFont('Arial',9);
      BaseReport.FontColor:=clBlack;
      BaseReport.Rectangle(posx+4,posy+24,posx+200,posy+36);
      BaseReport.PrintXY(posx+5,posy+29,'Cobrador: ' + DataSet0.Fields[3].AsString);
      BaseReport.SetFont('Arial Black',8);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posx+5,posy+34,'Responsable: ' + DataSet0.Fields[10].AsString);
      BaseReport.SetFont('Arial',8);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posx+5,posy+41,'Fecha Entrega: ' + DataSet0.Fields[4].AsString);
      BaseReport.SetFont('Arial Black',8);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posx+65,posy+41,'CANTIDAD TALONARIOS ENTREGADOS: ' + inttostr(DataSet1.RecordCount));
      BaseReport.SetFont('Arial',8);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(Posx+5,Posy + 46,'Observaciones: ' + trim(DataSet1.Fields[8].AsString));
     end;
     Result:=posy+48;
    end;

    Function LosComprobantesCab(posx,posy:double):double;
    begin
     with RvS do begin
      BaseReport.SetFont('Arial Black',8);
      BaseReport.FontColor:=clBlack;
      BaseReport.RoundRect(posx+45,posy,posx+150,posy+4,5,5);
      BaseReport.PrintXY(posx+60,posy+3,'DETALLE COMPROBANTES');
      BaseReport.Rectangle(posx+4,posy+4,posx+200,posy+9);
      BaseReport.Rectangle(posx+25,posy+4,posx+50,posy+9);
      BaseReport.Rectangle(posx+85,posy+4,posx+100,posy+9);
      BaseReport.Rectangle(posx+120,posy+4,posx+200,posy+9);
      BaseReport.PrintXY(posx+5,posy+8,'Id.');
      BaseReport.PrintXY(posx+27,posy+8,'N° Talonario');
      BaseReport.PrintXY(posx+55,posy+8,'Tipo');
      BaseReport.PrintXY(posx+87,posy+8,'PuntoV');
      BaseReport.PrintXY(posx+105,posy+8,'Desde');
      BaseReport.PrintXY(posx+125,posy+8,'Hasta');
     end;
     Result:=posy+9;
    end;

    Function LosComprobantesLn(posx,posy,Posy1:double):double;
    begin
     with RvS do begin
      BaseReport.Rectangle(posx+4,posy,posx+200,Posy1);
      BaseReport.Rectangle(posx+25,posy,posx+50,Posy1);
      BaseReport.Rectangle(posx+85,posy,posx+100,Posy1);
      BaseReport.Rectangle(posx+120,posy,posx+200,Posy1);
     end;
     Result:=Posy1;
    end;

begin
  Posfx:=2 + CorreccionImpr;
  Posfy:=Logo(Posfx,5);
  PosUlt:=LosComprobantesCab(Posfx,Posfy);
  Posfy:=PosUlt;
  for y:=1 to DataSet1.RecordCount do begin
   Posfy:=Posfy + 3;
   DataSet1.RecNo:=y;
   with RvS do begin
    BaseReport.SetFont('Arial',7);
    BaseReport.FontColor:=clBlack;
    BaseReport.PrintXY(Posfx+5,Posfy,StrFill(DataSet1.Fields[0].AsString,7,'0',''));
    BaseReport.PrintXY(Posfx+26,Posfy,StrFill(DataSet1.Fields[1].AsString,8,'0',''));
    BaseReport.PrintXY(Posfx+51,Posfy,DataSet1.Fields[6].AsString);
    BaseReport.PrintXY(Posfx+90,Posfy,StrFill(DataSet1.Fields[3].AsString,3,'0',''));
    BaseReport.PrintXY(Posfx+105,Posfy,StrFill(DataSet1.Fields[4].AsString,7,'0',''));
    Total:=DataSet1.Fields[4].AsInteger + DataSet1.Fields[5].AsInteger - 1;
    BaseReport.PrintXY(Posfx+125,Posfy,StrFill(IntToStr(Total),7,'0',''));
    if Posfy > 185 then begin
     LosComprobantesLn(Posfx,PosUlt,Posfy+0.5);
     BaseReport.NewPage;
     Posfy:=Logo(Posfx,5);
     PosUlt:=LosComprobantesCab(Posfx,Posfy);
     Posfy:=PosUlt;
    end;
   end;
  end;
 LosComprobantesLn(Posfx,PosUlt,Posfy+0.5);
 Posfy:=Posfy+0.5;
 with RvS do begin
  BaseReport.Rectangle(Posfx+15,Posfy+15,Posfx+65,Posfy+15);
  BaseReport.Rectangle(Posfx+115,Posfy+15,Posfx+170,Posfy+15);
  BaseReport.PrintXY(Posfx+25,Posfy + 18,'Firma Responsable');
  BaseReport.PrintXY(Posfx+136,Posfy + 18,'Firma Cobrador');
  BaseReport.Rectangle(Posfx+15,Posfy+25,Posfx+65,Posfy+25);
  BaseReport.Rectangle(Posfx+115,Posfy+25,Posfx+170,Posfy+25);
  BaseReport.PrintXY(Posfx+25,Posfy + 28,'Aclaracion Responsable');
  BaseReport.PrintXY(Posfx+133,Posfy + 28,'Aclaracion Cobrador');
 end;
end;

procedure TAM_EntregaTalon.CB2KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  if COBRADOR.Enabled then COBRADOR.SetFocus
  else OBSERV.SetFocus;
end;
end;

procedure TAM_EntregaTalon.CB2Click(Sender: TObject);
var t,r:integer;
begin
COBRADOR.Enabled:=not(CB2.Checked);
Grupo2.Enabled:=CB2.Checked;
for t:=0 to grilla2.ColCount-1 do
  for r:=1 to grilla2.RowCount-1 do grilla2.Cells[t,r]:='';
grilla2.RowCount:=2;
for t:=0 to grilla3.ColCount-1 do
  for r:=1 to grilla3.RowCount-1 do grilla3.Cells[t,r]:='';
grilla3.RowCount:=2;
end;

procedure TAM_EntregaTalon.CB3Click(Sender: TObject);
begin
if CB3.Checked then CorreccionImpr:=148.5
else CorreccionImpr:=0;
end;

procedure TAM_EntregaTalon.responKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  buscartalon.SetFocus;
end;
end;

procedure TAM_EntregaTalon.PC1Change(Sender: TObject);
begin
  if pc1.TabIndex = 0 then buscar.Click;
  if pc1.TabIndex = 1 then cobrador.SetFocus;
end;

end.




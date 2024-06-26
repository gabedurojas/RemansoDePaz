unit CON_Parcelas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,DBClient, StdCtrls, DBCtrls, Grids, DBGrids, ComCtrls, StrUtils,
  DB, Mask,ADODB, Buttons, ExtCtrls, JvExDBGrids, JvDBGrid, RpDefine,
  RpBase, RpSystem, JvgPage, JvExButtons, JvBitBtn, WSDLIntf,ClaseFunciones,
  Unidad,ClaseParcelas;

type LasFilas = array[1..2] of integer;
type HackTable = class(TClientDataSet);//       class(TADOTable);
type
  TCon_Parcela = class(TForm)
    Barra1: TStatusBar;
    DataSource1: TDataSource;
    GroupBox2: TGroupBox;
    PC1: TPageControl;
    TabSheet2: TTabSheet;
    Label15: TLabel;
    Label7: TLabel;
    Label13: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label9: TLabel;
    Exporta: TJvBitBtn;
    sale: TJvBitBtn;
    D1: TDBEdit;
    D2: TDBEdit;
    D3: TDBEdit;
    D4: TDBEdit;
    D5: TDBEdit;
    D7: TDBEdit;
    D8: TDBEdit;
    TabSheet1: TTabSheet;
    DBGrid1: TJvDBGrid;
    todos: TRichEdit;
    RD: TRadioButton;
    RT: TRadioButton;
    RC: TRadioButton;
    Bevel2: TBevel;
    LB1: TLabel;
    ODNI: TEdit;
    Busca: TJvBitBtn;
    DBGInhumados: TJvDBGrid;
    DataSource2: TDataSource;
    TabSheet3: TTabSheet;
    GroupBox3: TGroupBox;
    DBGTitulares: TJvDBGrid;
    Splitter1: TSplitter;
    DataSource3: TDataSource;
    RP: TRadioButton;
    ONOMB: TEdit;
    D6: TDBEdit;
    Label3: TLabel;
    D9: TDBEdit;
    D10: TDBEdit;
    Label1: TLabel;
    D11: TDBEdit;
    Label5: TLabel;
    D12: TDBEdit;
    Label8: TLabel;
    procedure Coloca1(nro:byte);
    procedure FormActivate(Sender: TObject);
    procedure RDClick(Sender: TObject);
    procedure RCClick(Sender: TObject);
    procedure RTClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BuscaClick(Sender: TObject);
    procedure JvBitBtn3Click(Sender: TObject);
    procedure ExportaClick(Sender: TObject);
    procedure ONOMBKeyPress(Sender: TObject; var Key: Char);
    procedure ODNIKeyPress(Sender: TObject; var Key: Char);
    procedure RPClick(Sender: TObject);
  private
    control:boolean;{Controla que no hubiere errores en la carga de datos}
    { Private declarations }
  public
    Resultado: string;
    // aca instancio la clase si la clase esta definida en el uses de la ventana
    Funciones:TFuncionesVarias;

    DataSet:TClientDataSet; //declaro los DataSet
    IdCombos:array of array of string; // para los combobox

    ///// para la impresion de datos segun parametros
    PosH1:Array [0..9] of Double;//Posiciones
    Camp1:Array [0..9] of Integer;//Campos a Tomar en cuenta
    TxtCamp1:Array [0..9] of String;//Textos de los Campos a Tomar en cuenta

    TColores:Unidad.TablaXML;
    Parcelas:TParcelas;
  end;

var
  Con_Parcela: TCon_Parcela;

implementation

uses Modulo,Busqueda,AM_VenGenerica;

{$R *.dfm}

procedure TCon_Parcela.FormActivate(Sender: TObject);
begin
setlength(IdCombos,1);

//DBGInhumados


PC1.ActivePage:=PC1.Pages[0];
PC1.Images:=modulo2.ImageList1;
RD.OnClick(sender);
Coloca1(0);
ODNI.SetFocus;
end;

procedure TCon_Parcela.Coloca1(nro:byte);
var t,y:integer;
    txt,sex,VColor:string;
    txtw:widestring;
    NroAccion:variant;
    Param:TWideStrings;
    DataSetTit,DataSetInh,DtCombo:TClientDataSet;
begin
if nro=1 then begin
  DataSet.Free;
  DataSet:=TClientdataSet.Create(nil);

  DataSource1.DataSet:=DataSet;

  Parcelas:=TParcelas.Create(nil);
  Parcelas.ConnectionString:=modulo2.Conexion;

  Param:=TWideStrings.Create;

  if RD.Checked then begin  //Por NRO ACCION
    Param.add(trim(ODNI.text)); //@NroAccion
    Param.add(''); //@NroTitulo
    Param.add(''); //@Sector
    Param.add(''); //@CodigoPlaza
    Param.add(''); //@Parcela
    Param.add(''); //@Nomenclatura
    Param.add(''); //@X1
    Param.add(''); //@Y1
    Param.add(''); //@X2
    Param.add(''); //@Y2
    Param.add(''); //@Top
  end;
  if RC.Checked then begin  //Por SECTOR
    Param.add(''); //@NroAccion
    Param.add(''); //@NroTitulo
    Param.add(trim(ONOMB.Text)); //@Sector
    Param.add(''); //@CodigoPlaza
    Param.add(''); //@Parcela
    Param.add(''); //@Nomenclatura
    Param.add(''); //@X1
    Param.add(''); //@Y1
    Param.add(''); //@X2
    Param.add(''); //@Y2
    Param.add(''); //@Top
  end;
  if RP.Checked then begin  //Por PARCELAS
    Param.add(''); //@NroAccion
    Param.add(''); //@NroTitulo
    Param.add(''); //@Sector
    Param.add(''); //@CodigoPlaza
    Param.add('trim(ONOMB.Text)'); //@Parcela
    Param.add(''); //@Nomenclatura
    Param.add(''); //@X1
    Param.add(''); //@Y1
    Param.add(''); //@X2
    Param.add(''); //@Y2
    Param.add(''); //@Top
  end;
  if RT.Checked then begin  //Por TODOS
    Param.add(''); //@NroAccion
    Param.add(''); //@NroTitulo
    Param.add(''); //@Sector
    Param.add(''); //@CodigoPlaza
    Param.add(''); //@Parcela
    Param.add(''); //@Nomenclatura
    Param.add(''); //@X1
    Param.add(''); //@Y1
    Param.add(''); //@X2
    Param.add(''); //@Y2
    Param.add(''); //@Top
  end;
  if not Parcelas.ListarSP(Param,DataSet,0) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Parcelas.Free;
  Param.Free;
  end;

if nro=2 then begin   /// Grilla INHUMADOS
  DataSetInh.Free;
  DataSetInh:=TClientdataSet.Create(nil);
  DataSource2.DataSet:=DataSetInh;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  NroAccion:=D1.Text;
  if not Funciones.Run_Fn_VistaParcelasInhumados(NroAccion,DataSetInh,0) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
end;

if nro=3 then begin   /// Grilla TITULARES
  DataSetTit.Free;
  DataSetTit:=TClientdataSet.Create(nil);
  DataSource3.DataSet:=DataSetTit;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  NroAccion:=D1.Text;
  if not Funciones.Run_Fn_VistaParcelasTitulares(NroAccion,DataSetTit,0) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
end;


end;

procedure TCon_Parcela.RDClick(Sender: TObject);
begin
ONOMB.Visible:=false;
LB1.Caption:='Ingrese el N� de ACCION:';
ODNI.Visible:=true;
ODNI.Text:='000000';
Busca.Enabled:=true;
ODNI.SetFocus;
end;

procedure TCon_Parcela.RCClick(Sender: TObject);
begin
ODNI.Visible:=false;
LB1.Caption:='Ingrese el SECTOR';
ONOMB.Visible:=true;
ONOMB.Text:='';
Busca.Enabled:=true;
ONOMB.SetFocus;
end;

procedure TCon_Parcela.RTClick(Sender: TObject);
begin
  ONOMB.Visible:=FALSE;
  ODNI.Visible:=FALSE;
  LB1.Caption:='';
  Busca.Enabled:=true;
  Busca.SetFocus;
end;

procedure TCon_Parcela.DBGrid1CellClick(Column: TColumn);
begin
if not (DataSet.IsEmpty) then begin
  PC1.ActivePage:=PC1.Pages[1];
  D1.DataField:='NroAccion';
  D2.DataField:='NroTitulo';
  D3.DataField:='Sector';
  D4.DataField:='CodigoPlaza';
  D5.DataField:='Parcela';
  D6.DataField:='Sector';
  D7.DataField:='Nomenclatura';
  D8.DataField:='TipoColor';
  D9.DataField:='PosX1';
  D10.DataField:='PosY1';
  D11.DataField:='PosX2';
  D12.DataField:='PosY2';
  Coloca1(2);  //Inhumados
  Coloca1(3);  //Titulares
end;
end;

procedure TCon_Parcela.BuscaClick(Sender: TObject);
var p,u:integer;
begin
Coloca1(1);
if (Datasource1.DataSet.RecordCount = 0) then begin
  Barra1.Panels[0].Text:='Sin Datos en Grilla';
  IF application.MessageBox('PARCELA NO encontrado, !Desea Buscar otra Parcela!?','Advertencia'
    ,mb_OKcancel+mb_IconHAnd) = IdOk then begin
    PC1.Enabled:=true;
    if RC.Checked=true then ODNI.SetFocus;
    if RD.Checked=true then ONOMB.SetFocus;
    if RP.Checked=true then ONOMB.SetFocus;
    if Rt.Checked=true then busca.SetFocus;
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

procedure TCon_Parcela.JvBitBtn3Click(Sender: TObject);
begin
Close;
end;

procedure TCon_Parcela.ExportaClick(Sender: TObject);
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

procedure TCon_Parcela.ONOMBKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then busca.SetFocus;

end;

procedure TCon_Parcela.ODNIKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then busca.SetFocus;
end;

procedure TCon_Parcela.RPClick(Sender: TObject);
begin
ONOMB.Visible:=false;
LB1.Caption:='Ingrese el N� de PARCELA:';
ODNI.Visible:=true;
ODNI.Text:='0000';
Busca.Enabled:=true;
ODNI.SetFocus;
end;

end.

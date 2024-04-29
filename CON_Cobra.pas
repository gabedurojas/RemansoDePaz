unit CON_Cobra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, JvExGrids, JvStringGrid, StdCtrls, JvgGroupBox, Mask,DBClient,
  DBGrids, JvExDBGrids, JvDBGrid, Buttons, JvExButtons, JvBitBtn, ExtCtrls,
  ComCtrls, DB,DBCtrls,StrUtils, ToolWin;

type THackStringGrid = class(TStringGrid);
type
  TConsulta_Cobrador = class(TForm)
    PC1: TPageControl;
    TabSheet3: TTabSheet;
    grupo1: TGroupBox;
    LB1: TLabel;
    Bevel2: TBevel;
    ODNI: TEdit;
    ONOMB: TEdit;
    RA: TRadioButton;
    RD: TRadioButton;
    RT: TRadioButton;
    RC: TRadioButton;
    DBGrid1: TJvDBGrid;
    TabSheet4: TTabSheet;
    Label15: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label27: TLabel;
    CUIF: TEdit;
    APEYNOM: TEdit;
    OBSERV: TEdit;
    FecIng: TMaskEdit;
    FecEgre: TMaskEdit;
    JvgGroupBox1: TJvgGroupBox;
    grilla2: TJvStringGrid;
    JvgGroupBox2: TJvgGroupBox;
    grilla3: TJvStringGrid;
    Busca: TJvBitBtn;
    Barra1: TStatusBar;
    DataSource1: TDataSource;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    ToolButton2: TToolButton;
    exporta: TJvBitBtn;
    ToolButton3: TToolButton;
    JvBitBtn3: TJvBitBtn;
    todos: TRichEdit;
    JvgGroupBox3: TJvgGroupBox;
    grilla4: TJvStringGrid;
    procedure FormActivate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure BuscaClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure JvBitBtn3Click(Sender: TObject);
    procedure exportaClick(Sender: TObject);
  private
    { Private declarations }
  public
  
    DataSet,DtCombo:TClientDataSet; //declaro el DAtaset de los Combobox
    DSGral:TClientDataSet;//declaro el DAtaset de la grilla

    ///// para la impresion de datos segun parametros
    PosH1:Array [0..9] of Double;//Posiciones
    Camp1:Array [0..9] of Integer;//Campos a Tomar en cuenta
    TxtCamp1:Array [0..9] of String;//Textos de los Campos a Tomar en cuenta

    { Public declarations }
  end;

var
  Consulta_Cobrador: TConsulta_Cobrador;

implementation

uses Modulo,Unidad,Busqueda,ClaseSistemas,ClaseFunciones;

{$R *.dfm}

procedure TConsulta_Cobrador.FormActivate(Sender: TObject);
begin

PC1.ActivePage:=PC1.Pages[0];

{grilla2.Cells[0,0]:='Orden';
grilla2.Cells[1,0]:='IdArea';
grilla2.Cells[2,0]:='Detalle Area';
grilla2.Cells[3,0]:='Nro area';
grilla2.Cells[4,0]:=''; }

grilla3.Cells[0,0]:='Orden';
grilla3.Cells[1,0]:='Id.';
grilla3.Cells[2,0]:='Cuif';
grilla3.Cells[3,0]:='NombreSubCobrador';
grilla3.Cells[4,0]:='Fecha Desde';
grilla3.Cells[5,0]:='Fecha Hasta';
grilla3.Cells[6,0]:='Observ';
grilla3.Cells[7,0]:='';

grilla4.Cells[0,0]:='Orden';
grilla4.Cells[1,0]:='IdComi';
grilla4.Cells[2,0]:='Area';
grilla4.Cells[3,0]:='TipoComision';
grilla4.Cells[4,0]:='Comision';
grilla4.Cells[5,0]:='Porcentual';
grilla4.Cells[6,0]:='NroArea';
grilla4.Cells[7,0]:='NroAccion';
grilla4.Cells[8,0]:='Activo';
grilla4.Cells[9,0]:='';
grilla4.Cells[10,0]:='';

Coloca1(0);
end;

procedure TConsulta_Cobrador.Coloca1(nro:byte);
var t,y:integer;
    txt,sex:string;
    txtw:widestring;
    Funciones:TFuncionesVarias;
    Sistema:TSistemas;
    NroDni,NroCuif,cuifsubcod,cuifcobrador,NroArea:variant;
begin
if nro=1 then begin    //buscamo las areas del cobrador
{  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  NroArea:=null;NroCuif:=trim(cuif.Text);txt:='';
  if not Funciones.Run_Fn_VistaPersonalAreas(NroArea,txt,NroCuif,DtCombo,'',0) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  for t:=0 to grilla2.ColCount-1 do
    for y:=1 to grilla2.RowCount-1 do grilla2.Cells[t,y]:='';
  for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    grilla2.RowCount:=t+1;
    grilla2.Cells[0,t]:=completa1(inttostr(t),2,'0');
    grilla2.Cells[1,t]:=trim(DtCombo.Fields[6].AsString);
    grilla2.Cells[2,t]:=trim(DtCombo.Fields[4].AsString);
    grilla2.Cells[3,t]:=trim(DtCombo.Fields[3].AsString);
  end;  }
end;
if nro=2 then begin    //buscamo los subcobradores
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  cuifcobrador:=cuif.Text;
  nrocuif:=null;
  if not Funciones.Run_Fn_VistaPersonalSubCobradores(cuifcobrador,nrocuif,DtCombo,'',0) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  for t:=0 to grilla3.ColCount-1 do
    for y:=1 to grilla3.RowCount-1 do grilla3.Cells[t,y]:='';
  for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    grilla3.RowCount:=t+1;
    grilla3.Cells[0,t]:=completa1(inttostr(t),2,'0');
    grilla3.Cells[1,t]:=trim(DtCombo.Fields[9].AsString);
    grilla3.Cells[2,t]:=trim(DtCombo.Fields[3].AsString);//trim(DtCombo.Fields[3].AsString);
    grilla3.Cells[3,t]:=trim(DtCombo.Fields[2].AsString);
    grilla3.Cells[4,t]:=trim(DtCombo.Fields[6].AsString);
    grilla3.Cells[5,t]:=trim(DtCombo.Fields[7].AsString);
    grilla3.Cells[6,t]:=trim(DtCombo.Fields[8].AsString);
  end;
end;
if nro=4 then begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  cuifcobrador:=cuif.Text;
  if not Funciones.Run_Fn_VistaPersonalAreasComision(cuifcobrador,DtCombo,'',0) then
  Funciones.Free;
  for t:=0 to grilla4.ColCount-1 do
    for y:=1 to grilla4.RowCount-1 do grilla4.Cells[t,y]:='';
  for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    grilla4.RowCount:=t+1;
    grilla4.Cells[0,t]:=completa1(inttostr(t),2,'0');
    grilla4.Cells[1,t]:=trim(DtCombo.Fields[0].AsString);
    grilla4.Cells[2,t]:=trim(DtCombo.Fields[1].AsString);
    grilla4.Cells[3,t]:=trim(DtCombo.Fields[2].AsString);
    grilla4.Cells[4,t]:=trim(DtCombo.Fields[3].AsString);
    grilla4.Cells[5,t]:=trim(DtCombo.Fields[4].AsString);
    grilla4.Cells[6,t]:=trim(DtCombo.Fields[5].AsString);
    grilla4.Cells[7,t]:=trim(DtCombo.Fields[6].AsString);
    grilla4.Cells[8,t]:=trim(DtCombo.Fields[7].AsString);
   // grilla4.Cells[10,t]:=trim(DtCombo.Fields[8].AsString);
  end;
end;
if nro=8 then begin
  PC1.ActivePage:=PC1.Pages[0];
  DataSet.Free;
  Dataset:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=Dataset;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if RD.Checked then begin
    NroDni:=trim(ODNI.Text);NroCuif:=null;txt:='';
  end;
  if RT.Checked then begin
    NroDni:=null;NroCuif:=null;txt:='';
  end;
  if RC.Checked then begin
    NroDni:=null;NroCuif:=trim(ODNI.Text);txt:='';
  end;
  if RA.Checked then begin
    NroDni:=null;NroCuif:=null;txt:=trim(ONOMB.Text);
  end;
  if not Funciones.Run_Fn_VistaPersonal(NroCuif,txt,NroDni,DataSet,'',0) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',
      mtError,[mbok],0);
    Funciones.Free;
end;end;



procedure TConsulta_Cobrador.BuscaClick(Sender: TObject);
begin
Coloca1(8);
if (Datasource1.DataSet.RecordCount = 0) then begin
  Barra1.Panels[0].Text:='Sin Datos en Grilla';
  IF application.MessageBox('COBRADOR NO encontrado, !Necesita realizar otra consulta!?','Advertencia'
    ,mb_OKcancel+mb_IconHAnd) = IdOk
   then begin
     PC1.ActivePage:=PC1.Pages[1];
     pc1.Pages[1].Enabled:=true;
     if RA.Checked=true then ONOMB.SetFocus;
     if RD.Checked=true then ODNI.SetFocus;
     if RC.Checked=true then ODNI.SetFocus;
     if Rt.Checked=true then busca.SetFocus;
     busca.SetFocus;
  end
  else begin
     PC1.ActivePage:=PC1.Pages[0];
     pc1.Pages[1].Enabled:=false;
     Barra1.Panels[0].Text:='La opcion de Busqueda fue Cancelada';
     BUSCA.SetFocus;
  end;
end
else begin
Barra1.Panels[1].Text:='Registos encontrados: ' + inttostr(Datasource1.DataSet.RecordCount);
end;
end;

procedure TConsulta_Cobrador.DBGrid1CellClick(Column: TColumn);
begin
if not (Dataset.IsEmpty) then begin
  PC1.Pages[1].Enabled:=true;
  PC1.ActivePage:=PC1.Pages[1];
  cuif.Text:=trim(dataset.Fields[1].AsString);
  APEYNOM.Text:=AnsiReplaceStr(trim(dataset.Fields[2].Text),chr(33),chr(39));
  fecing.Text:=trim(dataset.Fields[3].AsString);
  fecegre.Text:=trim(dataset.Fields[4].AsString);
  observ.Text:=AnsiReplaceStr(trim(dataset.Fields[5].Text),chr(33),chr(39));
  Coloca1(1);
  Coloca1(2);
  Coloca1(4);
  exporta.Enabled:=true;
end;
end;

procedure TConsulta_Cobrador.JvBitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TConsulta_Cobrador.exportaClick(Sender: TObject);
var texto:widestring;
var txt:string;
var t,p,a,b:integer;
begin
    todos.Clear;
    todos.Lines.Add('Consulta de Cobradores');
    todos.Lines.Add('Cobrador:' + trim(apeynom.Text));
    todos.Lines.Add('Fecha de Ingreso' + trim(fecing.Text));
    todos.Lines.Add('Fecha de Egreso:' + trim(fecegre.Text));

   { todos.Lines.Add('');
    todos.Lines.Add('Areas del Cobrador');
    for t:=0 to grilla2.RowCount -1   DO BEGIN
      texto:='';
    for p:=0 to grilla2.ColCount - 1 do begin
      texto:= texto + grilla2.Cells[p,t] + chr(9);
    end;
    todos.Lines.Add(texto);
    end; }
        todos.Lines.Add('');
        todos.Lines.Add('Detalle de Subcobradores');
        for t:=0 to grilla3.RowCount -1   DO BEGIN
          texto:='';
        for p:=0 to grilla3.ColCount - 1 do begin
          texto:= texto + grilla3.Cells[p,t] + chr(9);
        end;
        todos.Lines.Add(texto);
        end;
            todos.Lines.Add('');
            todos.Lines.Add('Detalle de Comisiones');
             for t:=0 to grilla4.RowCount -1   DO BEGIN
              texto:='';
            for p:=0 to grilla4.ColCount - 1 do begin
              texto:= texto + grilla4.Cells[p,t] + chr(9);
            end;
            todos.Lines.Add(texto);
            end;

    todos.SelectAll;
    todos.CopyToClipboard;
    messagedlgpos('Datos Procesados y Listos para pegarlos a Excel',mtwarning,[mbok],0,screen.Width div 3,screen.Height div 3);
end;


end.

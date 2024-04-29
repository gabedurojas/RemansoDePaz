unit Con_Comprob;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, JvExGrids, JvStringGrid, StdCtrls, ExtCtrls, JvgGroupBox,
  Buttons, JvExButtons, JvBitBtn, ComCtrls, ToolWin, ClaseFunciones, DBClient,
  DB, DBGrids, JvExDBGrids, JvDBGrid;

type
  TCons_Compr = class(TForm)
    Barra1: TStatusBar;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    ToolButton2: TToolButton;
    IMPRIME: TJvBitBtn;
    ToolButton5: TToolButton;
    Limpiar: TJvBitBtn;
    ToolButton3: TToolButton;
    JvBitBtn1: TJvBitBtn;
    JvgGroupBox5: TJvgGroupBox;
    C1: TRadioButton;
    C2: TRadioButton;
    C3: TRadioButton;
    C0: TRadioButton;
    Bevel1: TBevel;
    COBRADOR: TComboBox;
    Label15: TLabel;
    Buscar: TJvBitBtn;
    ODNI: TEdit;
    DBGrid1: TJvDBGrid;
    DataSource1: TDataSource;
    todos: TRichEdit;
    EXPORTAR: TJvBitBtn;
    Label18: TLabel;
    PV: TComboBox;
    Label20: TLabel;
    TPOTALON: TComboBox;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure C0Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure ODNIKeyPress(Sender: TObject; var Key: Char);
    procedure COBRADORExit(Sender: TObject);
    procedure BuscarClick(Sender: TObject);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure LimpiarClick(Sender: TObject);
    procedure EXPORTARClick(Sender: TObject);
    procedure TPOTALONExit(Sender: TObject);
    procedure TPOTALONKeyPress(Sender: TObject; var Key: Char);
    procedure PVExit(Sender: TObject);
    procedure PVKeyPress(Sender: TObject; var Key: Char);
  private
    IdCombos:array of array of string;
    DataSet0,DtCombo:TClientDataSet;

    Funciones:TFuncionesVarias;
    { Private declarations }
  public
    gh:boolean;{ Public declarations }
  end;

var
  Cons_Compr: TCons_Compr;

implementation

uses Modulo;

{$R *.dfm}

procedure TCons_Compr.FormActivate(Sender: TObject);
begin
if not(gh) then begin
  gh:=true;
  setlength(IdCombos,1);
  Coloca1(0);
  Coloca1(1);
  tpotalon.SetFocus;
end;
end;

procedure TCons_Compr.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TCons_Compr.Coloca1(nro:byte);
var t:integer;
    filtro:widestring;
    NroTalon,NroCompr,CuifCob:variant;
begin
if nro=0 then begin //Combo Talonarios
  TPOTALON.Clear;
    DtCombo.Free;
    DtCombo:=TClientdataSet.Create(nil);
    Funciones:=TFuncionesVarias.Create(nil);
    Funciones.ConnectionString:=modulo2.Conexion;
    if not Funciones.Listar('SELECT IDTipoComprobante,DetalleComprobante FROM ' +
      'TiposComprobantes WHERE (Cobranzas=1)',DtCombo) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
    else begin
      SetLength(IdCombos[0],DtCombo.RecordCount);
      for t:=1 to DtCombo.RecordCount  do begin
        DtCombo.RecNo:=t;
        TPOTALON.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
        IdCombos[0,t-1]:=DtCombo.Fields[0].AsString;
      end;
    end;
    Funciones.Free;
  TPOTALON.ItemIndex:=0;
end;
if nro=1 then begin //Combo Puntos de Venta
  COBRADOR.Clear;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;    
  if not Funciones.Listar('SELECT distinct Nombre,cuif FROM VLosCobradores ORDER BY Nombre',DtCombo) then
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
if nro = 2 then begin
  Dataset0.Free;
  Dataset0:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=Dataset0;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if C1.Checked then begin
    NroTalon:=null;
    NroCompr:=null;
    CuifCob:=IdCombos[0,COBRADOR.ItemIndex];
  end;
  //if C2.Checked then begin
  //  NroTalon:=ODNI.Text;
  //  NroCompr:=null;
  //  CuifCob:=null;
  //end;
  if C3.Checked then begin
    NroTalon:=null;
    NroCompr:=ODNI.Text;
    CuifCob:=null;
  end;
  if C0.Checked then begin
    NroTalon:=null;
    NroCompr:=null;
    CuifCob:=null;
  end;
  if c3.Checked then begin
     filtro:= 'where (DetalleComprobante = ' + chr(39) + trim(tpotalon.Text) + chr(39) + ') and (SUBSTRING (NroComprobante,3 ,1)= ' + trim(pv.Text) + ')';
     if not Funciones.Run_Fn_VistaControlComprobantes(NroTalon,NroCompr,CuifCob,Dataset0,filtro,0) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador', mtError,[mbok],0);
  end
  else begin
    if  c2.Checked  then begin
     if not Funciones.Listar('SELECT idcobro,id,nrotalonario,DetalleComprobante,Numero,NroComprobante,'
     +'Cobrador,null as fechaentrega, Cobrado,nroplanilla,fechaplanilla,'
     +' case when Origen =  ''Cobros'' then ''HABILITADO'' else Origen end as estadocomprobante,'
     +' Origen FROM Fn_ComprobantesxNroTalonario('+ trim(ODNI.Text) +') where DetalleComprobante= '+ chr(39) +  trim(tpotalon.Text) + chr(39),Dataset0) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador', mtError,[mbok],0)
    end
    else begin
      if not Funciones.Run_Fn_VistaControlComprobantes(NroTalon,NroCompr,CuifCob,Dataset0,'',0) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    end;
  end;
  Funciones.Free;
  if not(Dataset0.IsEmpty) then begin
    dbgrid1.Columns[0].Width:=60;
    dbgrid1.Columns[1].Width:=60;
    dbgrid1.Columns[2].Width:=100;
    dbgrid1.Columns[3].Width:=100;
    dbgrid1.Columns[4].Width:=100;
    dbgrid1.Columns[5].Width:=150;
    dbgrid1.Columns[6].Width:=60;
    EXPORTAR.Enabled:=true;
  end
  else EXPORTAR.Enabled:=false;
end;  
end;

procedure TCons_Compr.C0Click(Sender: TObject);
begin
Label15.Visible:=false;
COBRADOR.Visible:=false;
Buscar.SetFocus;
end;

procedure TCons_Compr.C1Click(Sender: TObject);
begin
Label15.Visible:=true;
if C1.Checked then begin
  Label15.Caption:='Seleccione Cobrador:';
  label20.Visible:=false;
  label18.Visible:=false;
  tpotalon.Visible:=false;
  pv.Visible:=false;
  ODNI.Visible:=false;
  COBRADOR.Visible:=true;
  COBRADOR.SetFocus;
end;
if C2.Checked then begin
  Label15.Caption:='Ingrese N° Talonario:';
  COBRADOR.Visible:=false;
  label20.Visible:=true;
  label18.Visible:=false;
  tpotalon.Visible:=true;
  pv.Visible:=false;
  ODNI.Visible:=true;
  tpotalon.SetFocus;
  //ODNI.SetFocus;
end;
if C3.Checked then begin
  Label15.Caption:='Ingrese N° Comprobante:';
  COBRADOR.Visible:=false;
  label20.Visible:=true;
  label18.Visible:=true;
  tpotalon.Visible:=true;
  pv.Visible:=true;
  ODNI.Visible:=true;
  tpotalon.SetFocus;
end;
end;

procedure TCons_Compr.ODNIKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  Buscar.SetFocus;
end;
end;

procedure TCons_Compr.COBRADORExit(Sender: TObject);
begin
if COBRADOR.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Cobrador Ingresado!!',mterror,[mbok],0);
  COBRADOR.SetFocus;
end;
end;

procedure TCons_Compr.BuscarClick(Sender: TObject);
begin
Coloca1(2);
end;

procedure TCons_Compr.JvBitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TCons_Compr.LimpiarClick(Sender: TObject);
begin
COBRADOR.ItemIndex:=0;
DataSource1.DataSet:=nil;
DataSet0.Close;
IMPRIME.Enabled:=false;
Exportar.Enabled:=false;
end;

procedure TCons_Compr.EXPORTARClick(Sender: TObject);
var texto:widestring;
var txt:string;
var t,y,r:integer;
begin
todos.Clear;
r:=1;
if not DataSet0.IsEmpty then begin
  texto:='Orden' + chr(9);
  for t:=0 to DataSet0.FieldCount-1 do begin
    texto:=texto + DataSet0.Fields[t].FieldName + chr(9);
  end;
  todos.Lines.Add(texto);
  for y:=1 to DataSet0.RecordCount do begin
    DataSet0.RecNo:=y;
    texto:=inttostr(r) + chr(9);
    for t:=0 to DataSet0.FieldCount-1 do begin
      texto:=texto + DataSet0.Fields[t].AsString + chr(9);
    end;
    todos.Lines.Add(texto);
    r:=r+1;
  end;
end;
todos.SelectAll;
todos.CopyToClipboard;
messagedlg('Se Copiaron los Datos, listo para pegarlos a Excel',mtwarning,[mbok],0);
end;

procedure TCons_Compr.TPOTALONExit(Sender: TObject);
begin
if TPOTALON.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Talonario Ingresado!!',mterror,[mbok],0);
  TPOTALON.SetFocus;
end;
end;

procedure TCons_Compr.TPOTALONKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
   if c2.Checked  then odni.SetFocus
    else PV.SetFocus;
 end;
end;

procedure TCons_Compr.PVExit(Sender: TObject);
begin

if PV.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Punto de Venta Ingresado!!',mterror,[mbok],0);
  PV.SetFocus;
end;
end;

procedure TCons_Compr.PVKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  odni.SetFocus;
end;
end;

end.

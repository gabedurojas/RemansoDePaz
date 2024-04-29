unit AM_Talon;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, JvExGrids, JvStringGrid, ComCtrls, Buttons,
  JvExButtons, JvBitBtn, ToolWin, JvgGroupBox,Unidad, DBClient, WSDLIntf,
  ClaseFunciones, StrUtils, ClaseComprobantesTalonarios, JvExComCtrls,
  JvProgressBar;

type THackStringGrid = class(TStringGrid);
type
  TAM_Talonarios = class(TForm)
    Barra1: TStatusBar;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    EXPORTAR: TJvBitBtn;
    ToolButton5: TToolButton;
    GUARDA: TJvBitBtn;
    ToolButton1: TToolButton;
    Limpiar: TJvBitBtn;
    ToolButton3: TToolButton;
    JvBitBtn1: TJvBitBtn;
    JvgGroupBox2: TJvgGroupBox;
    Label18: TLabel;
    Label20: TLabel;
    Buscar: TJvBitBtn;
    TPOTALON: TComboBox;
    grupo2: TJvgGroupBox;
    Label5: TLabel;
    TALON: TEdit;
    Label17: TLabel;
    INICIO: TEdit;
    Label1: TLabel;
    NROCOMP: TEdit;
    CAN: TEdit;
    Label16: TLabel;
    grilla2: TJvStringGrid;
    PV: TComboBox;
    Proceso: TJvProgressBar;
    todos: TRichEdit;
    Agrega2: TJvBitBtn;
    Quita2: TJvBitBtn;
    Borra2: TJvBitBtn;
    Edit1: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure TPOTALONKeyPress(Sender: TObject; var Key: Char);
    procedure TPOTALONExit(Sender: TObject);
    procedure PVKeyPress(Sender: TObject; var Key: Char);
    procedure PVExit(Sender: TObject);
    procedure BuscarClick(Sender: TObject);
    procedure TALONKeyPress(Sender: TObject; var Key: Char);
    procedure NROCOMPKeyPress(Sender: TObject; var Key: Char);
    procedure INICIOKeyPress(Sender: TObject; var Key: Char);
    procedure INICIOChange(Sender: TObject);
    procedure CANKeyPress(Sender: TObject; var Key: Char);
    procedure Agrega2Click(Sender: TObject);
    procedure Borra2Click(Sender: TObject);
    procedure grilla2Click(Sender: TObject);
    procedure Quita2Click(Sender: TObject);
    procedure GUARDAClick(Sender: TObject);
    procedure EXPORTARClick(Sender: TObject);
    procedure LimpiarClick(Sender: TObject);

  private
    IdCombos:array of array of string;
    DtCombo:TClientDataSet;

    Funciones:TFuncionesVarias;
    ComprobantesTalonarios:TComprobantesTalonarios;

    FechaActual:string;
    TiposComprobantes:Unidad.TablaXML;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AM_Talonarios: TAM_Talonarios;

implementation

uses Modulo;
{$R *.dfm}

procedure TAM_Talonarios.FormActivate(Sender: TObject);
begin
setlength(IdCombos,1);
FechaActual:=LeftStr(Fec_System(),10);
grilla2.Cells[0,0]:='Orden';
grilla2.Cells[1,0]:='N° Talonario';
grilla2.Cells[2,0]:='Tipo Talonario';
grilla2.Cells[3,0]:='Punto Venta';
grilla2.Cells[4,0]:='N° Inicio';
grilla2.Cells[5,0]:='Cantidad';
grilla2.Cells[6,0]:='N° Tipo';
grilla2.Cells[7,0]:='Identificador';
PV.ItemIndex:=0;
Coloca1(1);
end;

procedure TAM_Talonarios.Coloca1(nro:byte);
var t,y,r,s:integer;
    TpoComp,PuntoV,ValNull:variant;
    txtw:widestring;
begin
if nro=1 then begin //Combo Talonarios
  edit1.Clear;
  TPOTALON.Clear;
  //TiposComprobantes:=LeeXML('TiposComprobantes','(Cobranzas=' + chr(39) + 'True' + chr(39) + ')');
  //if length(TiposComprobantes) <> 0 then begin
  //    SetLength(IdCombos[0],High(TiposComprobantes[1]) + 1);
  //  for t:=0 to High(TiposComprobantes[1])  do begin
  //     TPOTALON.Items.Insert(t,TiposComprobantes[1,t]);
  //    IdCombos[0,t]:=TiposComprobantes[0,t];
  //   end;
  // end
  // else begin
    DtCombo.Free;
    DtCombo:=TClientdataSet.Create(nil);
    Funciones:=TFuncionesVarias.Create(nil);
    Funciones.ConnectionString:=modulo2.Conexion;
    if not Funciones.Listar('SELECT IDTipoComprobante,DetalleComprobante FROM TiposComprobantes '
    + 'WHERE (Cobranzas=1)',DtCombo) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
    else begin
      SetLength(IdCombos[0],DtCombo.RecordCount);
      for t:=1 to DtCombo.RecordCount  do begin
        DtCombo.RecNo:=t;
        TPOTALON.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
        IdCombos[0,t-1]:=DtCombo.Fields[0].AsString;
        //TpoComp:=DtCombo.Fields[0].AsString;//IdCombos[0,TPOTALON.ItemIndex];
      end;
    end;
    Funciones.Free;
 // end;
  TPOTALON.ItemIndex:=0;
end;
if nro = 2 then begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  //IdCombos[2,TPOTALON.ItemIndex]
  TpoComp:=IdCombos[0,TPOTALON.ItemIndex];
  edit1.Text := TpoComp;
  PuntoV:=PV.Text;
  ValNull:=null;
  if TpoComp = 20 then begin  // recibos oficiales
   if PuntoV = 2  then  begin   // punto de venta 2
    txtw:='select * from Fn_VistaComprobantesTalonarios (null,'+ TpoComp +','+ PuntoV +',1,0) order by 1 desc';
    can.Text:='50';
   end
   else begin
    txtw:='select * from Fn_VistaComprobantesTalonarios (null,'+ TpoComp +','+PuntoV +',0,0) order by 1 desc';
    can.Text:='50';
   end;
  end;

  if TpoComp = 5 then begin  // recibos
  //if TpoComp = 20 then begin  // recibos oficiales
   if PuntoV = 2  then  begin   // punto de venta 2
    txtw:='select * from Fn_VistaComprobantesTalonarios (null,'+ TpoComp +','+ PuntoV +',1,0) order by 1 desc';
    can.Text:='50';
   end
   else begin
    txtw:='select * from Fn_VistaComprobantesTalonarios (null,'+ TpoComp +','+PuntoV +',0,0) order by 1 desc';
    can.Text:='50';
   end;
  end
  else begin
   if TpoComp = 7 then begin  // factura B
    if PuntoV = 2  then  begin   // punto de venta 2
     txtw:='select * from Fn_VistaComprobantesTalonarios (null,'+ TpoComp +','+ PuntoV +',1,0) order by 1 desc';
     can.Text:='50';
    end
    else begin
     txtw:='select * from Fn_VistaComprobantesTalonarios (null,'+ TpoComp +','+PuntoV +',0,0) order by 1 desc';
     can.Text:='25';
    end;
   end
   else begin
    txtw:='select * from Fn_VistaComprobantesTalonarios (null,'+ TpoComp +','+ PuntoV +',0,0) order by 1 desc';
    can.Text:='25';
   end;
  end;
 
  if not Funciones.Listar(txtw,DtCombo) then
  //if not Funciones.Run_Fn_VistaComprobantesTalonarios(ValNull,TpoComp,PuntoV,DtCombo,'',1) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
   grupo2.Enabled:=true;
   Self.Update;
   if not DtCombo.IsEmpty then begin
    TALON.Color:=clGradientActiveCaption;
    TALON.ReadOnly:=true;
    NROCOMP.Color:=clGradientActiveCaption;
    NROCOMP.ReadOnly:=true;
    TALON.Text:=DtCombo.Fields[1].AsString;
    NROCOMP.Text:=DtCombo.Fields[5].AsString;
    INICIO.SetFocus;
   end
   else begin
    TALON.Color:=clWindow;
    TALON.ReadOnly:=false;
    NROCOMP.Color:=clWindow;
    NROCOMP.ReadOnly:=false;
    Barra1.Panels[0].Text:='No se encontraron talonarios registrados!!';
    TALON.SetFocus;
   end;
  end;
  Funciones.Free;
end;
end;

procedure TAM_Talonarios.JvBitBtn1Click(Sender: TObject);
begin
Close;
end;


procedure TAM_Talonarios.TPOTALONKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  PV.SetFocus;
end;
end;

procedure TAM_Talonarios.TPOTALONExit(Sender: TObject);
begin
if TPOTALON.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Talonario Ingresado!!',mterror,[mbok],0);
  TPOTALON.SetFocus;
end;
end;

procedure TAM_Talonarios.PVKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  BUSCAR.SetFocus;
end;
end;

procedure TAM_Talonarios.PVExit(Sender: TObject);
begin
if PV.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Punto de Venta Ingresado!!',mterror,[mbok],0);
  PV.SetFocus;
end;
end;

procedure TAM_Talonarios.BuscarClick(Sender: TObject);
begin
Coloca1(2);
end;

procedure TAM_Talonarios.TALONKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  NROCOMP.SetFocus;
end
else begin
  if ( StrScan('0123456789',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
   else Key := #0;
end;
end;

procedure TAM_Talonarios.NROCOMPKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  INICIO.SetFocus;
end
else begin
  if ( StrScan('0123456789',Key) <> nil ) or  ( Key = Char(VK_BACK) ) then
   else Key := #0;
end;
end;

procedure TAM_Talonarios.INICIOKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  CAN.SetFocus;
end
else begin
  if ( StrScan('0123456789',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
   else Key := #0;
end;
end;

procedure TAM_Talonarios.INICIOChange(Sender: TObject);
begin
Agrega2.Enabled:=true;
end;

procedure TAM_Talonarios.CANKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  if Agrega2.Enabled then Agrega2.SetFocus;
end
else begin
  if ( StrScan('0123456789',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
   else Key := #0;
end;
end;

procedure TAM_Talonarios.Agrega2Click(Sender: TObject);
var t,y,s,r,q:integer;
    Vc:boolean;

  function busca(val1:string):boolean;
    var p:integer;
  begin
    Result:=true;
    if grilla2.Cells[0,1] <> '' then begin
      for p:=1 to grilla2.RowCount-1 do
        if (grilla2.Cells[2,p]=trim(TPOTALON.Text))
        and (grilla2.Cells[3,p]=trim(PV.Text))
        and (grilla2.Cells[4,p]=val1) then Result:=false;
    end;
  end;
  
begin
if grilla2.Cells[0,1] = '' then Vc:=true
else Vc:=false;

s:=StrToInt(trim(TALON.Text));
if s = 0 then r:=StrToInt(trim(CAN.Text)) * -1
else r:=StrToInt(trim(NROCOMP.Text))-1;
for y:=1 to StrToInt(INICIO.Text) do begin
  s:=s + 1;
  q:=r + (StrToInt(trim(CAN.Text)) * y) + 1;
  if not Vc then Vc:=busca(IntToStr(q));
  if vc then begin
    if (grilla2.RowCount > 1) and (trim(grilla2.Cells[0,1])<>'') then begin
      t:=grilla2.RowCount;
      grilla2.RowCount:=grilla2.RowCount+1;
    end
    else t:=1;
    grilla2.Cells[0,t]:=StrFill(inttostr(t),2,'0','');
    grilla2.Cells[1,t]:=IntToStr(s);
    grilla2.Cells[2,t]:=trim(TPOTALON.Text);
    grilla2.Cells[3,t]:=trim(PV.Text);
    grilla2.Cells[4,t]:=IntToStr(q);
    grilla2.Cells[5,t]:=trim(CAN.Text);
    grilla2.Cells[6,t]:=IdCombos[0,TPOTALON.ItemIndex];
    grilla2.Cells[7,t]:='0';
  end
  else begin
    messagedlg('ERROR!! No Pueden Existir dos N° Talonarios, Punto Venta e Inicio iguales!!',mterror,[mbok],0);
    break;
  end;
end;
if (grilla2.RowCount > 1) and (grilla2.Cells[0,1] <> '') then begin
  GUARDA.Enabled:=true;
  EXPORTAR.Enabled:=true;
end;
INICIO.SetFocus;
end;

procedure TAM_Talonarios.Borra2Click(Sender: TObject);
var t,p,gf:integer;
var bt:boolean;
begin
 if trim(grilla2.Cells[0,1])<>'' then begin
  gf:=1;t:=0;
  gf:=messagedlg('Desea Borrar el Talonario Seleccionado?',mtWarning,[mbok,mbCancel],0);
  if gf = 1 then begin
   t:=grilla2.Row;
   if (t >= 1) and (grilla2.RowCount > 2) then begin
    THackStringGrid(grilla2).DeleteRow(t);
   end
   else begin
    for t:=0 to grilla2.ColCount-1 do grilla2.Cells[t,1]:='';
   end;
  end;
  Borra2.Enabled:=false;
  INICIO.SetFocus;
 end;
end;

procedure TAM_Talonarios.grilla2Click(Sender: TObject);
begin
Agrega2.Enabled:=false;
Borra2.Enabled:=true;
Quita2.Enabled:=true;
end;

procedure TAM_Talonarios.Quita2Click(Sender: TObject);
begin
Borra2.Enabled:=false;
Agrega2.Enabled:=true;
Quita2.Enabled:=false;
end;

procedure TAM_Talonarios.GUARDAClick(Sender: TObject);
var gf,t:integer;
    ElId1:string;
    TodoOk1:boolean;
begin
gf:=messagedlg('Desea Guardar los Talonarios y Comprobantes?',mtWarning,[mbok,mbCancel],0);
 if gf = 1 then begin
  Proceso.Position:=0;
  Proceso.Max:=grilla2.RowCount - 1;
  for t:=1 to grilla2.RowCount - 1 do begin
    ComprobantesTalonarios:=TComprobantesTalonarios.Create(nil);
    ComprobantesTalonarios.ConnectionString:=modulo2.Conexion;
    ComprobantesTalonarios.C_NroTalonario_IX1:=grilla2.Cells[1,t];
    ComprobantesTalonarios.C_IdTipoComprobante_IX2:=grilla2.Cells[6,t];
    ComprobantesTalonarios.C_PuntoVenta_IX3:=grilla2.Cells[3,t];
    ComprobantesTalonarios.C_Desde:=grilla2.Cells[4,t];
    ComprobantesTalonarios.C_Cantidad:=grilla2.Cells[5,t];
    ComprobantesTalonarios.C_Usu_A:=modulo2.nro_usu;
    TodoOk1:=ComprobantesTalonarios.Agrega;
    Proceso.Position:=t;
    if not TodoOk1 then begin
      Barra1.Panels[0].Text:='Hubo Errores al Guardar Datos. Inciando DESHACER!!...';
      gf:=t;
      Break;
    end
    else grilla2.Cells[7,t]:=ComprobantesTalonarios.Identidad;
    ComprobantesTalonarios.Free;
  end;
  if not TodoOk1 then begin
   for t:=gf downto 1 do begin
    ComprobantesTalonarios:=TComprobantesTalonarios.Create(nil);
    ComprobantesTalonarios.ConnectionString:=modulo2.Conexion;
    ComprobantesTalonarios.Borrar(grilla2.Cells[7,t]);
    ComprobantesTalonarios.Free;
    Proceso.Position:=t;
   end;
   Proceso.Position:=0;
  end
  else begin
    messagedlg('Se ha Guardado la Entrega de Talonarios con Exito',mtConfirmation,[mbok],0);
    Limpiar.Click;
  end;
 end;
end;

procedure TAM_Talonarios.EXPORTARClick(Sender: TObject);
var texto:widestring;
var t,y:integer;
begin
todos.Clear;
for y:=0 to grilla2.RowCount-1 do begin
  texto:='';
  for t:=0 to grilla2.ColCount-1 do texto:=texto + grilla2.Cells[t,y] + chr(9);
  todos.Lines.Add(texto);
end;
todos.SelectAll;
todos.CopyToClipboard;
messagedlg('Se Copiaron los Datos, listo para pegarlos a Excel',mtwarning,[mbok],0);
end;

procedure TAM_Talonarios.LimpiarClick(Sender: TObject);
var t,r:integer;
begin
for t:=0 to grilla2.ColCount-1 do
  for r:=1 to grilla2.RowCount-1 do grilla2.Cells[t,r]:='';
grilla2.RowCount:=2;

TPOTALON.ItemIndex:=0;
PV.ItemIndex:=0;
TALON.Text:='00000000';
NROCOMP.Text:='0000000';
INICIO.Text:='00000';
CAN.Text:='25';

grupo2.Enabled:=false;

AGREGA2.Enabled:=false;
QUITA2.Enabled:=false;
BORRA2.Enabled:=false;

EXPORTAR.Enabled:=false;
GUARDA.Enabled:=false;
end;

end.

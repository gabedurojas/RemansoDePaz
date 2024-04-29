unit Bus_Talon;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, JvExControls, JvxCheckListBox, StrUtils,
  Buttons, JvExButtons, JvBitBtn, JvgGroupBox,Unidad, DBClient, WSDLIntf,
  ClaseFunciones, ExtCtrls, ComCtrls;

type
  TBusca_Talonario = class(TForm)
    JvgGroupBox2: TJvgGroupBox;
    Label18: TLabel;
    Label20: TLabel;
    Buscar: TJvBitBtn;
    TPOTALON: TComboBox;
    PV: TComboBox;
    LISTADO: TJvxCheckListBox;
    SALE: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Barra1: TStatusBar;
    procedure FormActivate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure BuscarClick(Sender: TObject);
    procedure LISTADOClickCheck(Sender: TObject);
    procedure SALEClick(Sender: TObject);
    procedure TPOTALONKeyPress(Sender: TObject; var Key: Char);
    procedure TPOTALONExit(Sender: TObject);
    procedure PVKeyPress(Sender: TObject; var Key: Char);
    procedure PVExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    IdCombos:array of array of string;
    DtCombo,DataSet3:TClientDataSet;
    Funciones:TFuncionesVarias;
    tranca:boolean;
    TiposComprobantes:Unidad.TablaXML;{ Private declarations }
  public
    Nroopcion:integer;
    cobrador:string;
    DatosResult:array of array of string;
    UnSoloTaonario:boolean;{ Public declarations }
  end;

var
  Busca_Talonario: TBusca_Talonario;

implementation

uses Modulo;

{$R *.dfm}
procedure TBusca_Talonario.FormActivate(Sender: TObject);
begin
tranca:=false;
setlength(IdCombos,1);
setlength(DatosResult,6);
PV.ItemIndex:=0;
Coloca1(1);
end;

procedure TBusca_Talonario.Coloca1(nro:byte);
var t,y,r,s,canti:integer;
    TpoComp,PuntoV,ValNull:variant;
    txtw:widestring;
begin
if nro = 0 then begin  // controlamos si el cobrador tiene talonarios no devueltos
  DataSet3.Free;
  DataSet3:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT * FROM Fn_VistaComprobantesEntregaNODevueltos (1 ,'
  + chr(39) + trim(cobrador) + chr(39) + ') where detallecomprobante = ' + chr(39) + trim(tpotalon.Text) + chr(39)
  + ' and puntoventa=' + RightStr(trim(pv.Text),1);
  if not Funciones.Listar(txtw,DataSet3) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  if not DataSet3.IsEmpty then begin
    messagedlg('ATENCION este Cobrador tiene ' +inttostr(DataSet3.RecordCount) + ' Talonarios sin Devolver '
    + chr(13) + 'Imposible continuar con la Entrega de Talonarios...',mtWarning,[mbok],0);
    tranca:=true;
  end;
  Funciones.Free;
end;
if nro=1 then begin //Combo Talonarios
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
if nro = 2 then begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if Nroopcion=0 then  begin
   txtw:='SELECT NroTalonario,Tipo,PuntoVenta,Desde,Cantidad,IdTipoComprobante '
   + 'FROM VComprobantesTalonariosEntregados WHERE (IdTipoComprobante='
   + IdCombos[0,TPOTALON.ItemIndex] + ') AND (PuntoVenta=' + PV.Text + ') ORDER BY NroTalonario';
  end;
  if Nroopcion=1 then  begin
   txtw:='SELECT NroTalonario,Tipo,PuntoVenta,Desde,Cantidad,IdTipoComprobante '
   + 'FROM VComprobantesTalonariosEntregados WHERE (IdTipoComprobante='
   + IdCombos[0,TPOTALON.ItemIndex] + ') AND (PuntoVenta=' + PV.Text + ') AND (Entregado=0) ORDER BY NroTalonario';
  end;
  if not Funciones.Listar(txtw,DtCombo) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
    if DtCombo.IsEmpty then begin
      messagedlg('No existen Talonarios CARGADOS para Entregar. Consulte con Administrador',mtWarning,[mbok],0);
      TPOTALON.SetFocus;
    end
    else begin
     LISTADO.Items.Clear;
     for t:=0 to 5 do SetLength(DatosResult[t],DtCombo.RecordCount);
     for t:=1 to DtCombo.RecordCount do begin
      DtCombo.RecNo:=t;
      LISTADO.Items.Append(StrFill(DtCombo.Fields[0].AsString,6,'0','') + ' - '
                             + StrFill(DtCombo.Fields[1].AsString,9,' ','') + ' - '
                             + StrFill(DtCombo.Fields[2].AsString,3,'0','') + ' - '
                             + StrFill(DtCombo.Fields[3].AsString,7,'0','') + ' - '
                             + DtCombo.Fields[4].AsString);
      DatosResult[0,t-1]:=DtCombo.Fields[0].AsString;
      DatosResult[1,t-1]:=DtCombo.Fields[1].AsString;
      DatosResult[2,t-1]:=DtCombo.Fields[2].AsString;
      DatosResult[3,t-1]:=DtCombo.Fields[3].AsString;
      DatosResult[4,t-1]:=DtCombo.Fields[4].AsString;
      DatosResult[5,t-1]:=DtCombo.Fields[5].AsString;
     end;
    end;
  end;
  Funciones.Free;
end;
end;


procedure TBusca_Talonario.BuscarClick(Sender: TObject);
begin
Coloca1(0);
if not tranca then Coloca1(2);
end;

procedure TBusca_Talonario.LISTADOClickCheck(Sender: TObject);
var t,r:integer;
    Encontrado:boolean;
    paso:byte;
begin
Paso:=1;
Encontrado:=false;
for t:=LISTADO.Items.Count-1 downto 0 do begin
  if LISTADO.Checked[t] and not Encontrado then begin
    Encontrado:=true;
    Paso:=0;
  end;
  if not LISTADO.Checked[t] and (Paso = 0) then begin
    Paso:=1;
    break
  end;
end;
Paso:=0; //Cambiar cuando se carguen todos los talonarios
r:=0;

for t:=LISTADO.Items.Count-1 downto 0 do begin
  if LISTADO.Checked[t] then r:=r+1;
end;
if UnSoloTaonario and (r > 1) then  Paso:=2;
if Paso = 1 then begin
  SALE.Enabled:=false;
  Barra1.Panels[0].Text:='ERROR!! No está permitido el salteo de Talonarios';
end
else if Paso = 2 then begin
  SALE.Enabled:=false;
  Barra1.Panels[0].Text:='ERROR!! Solo está permitido seleccionar 1 solo Talonario';
end
else if Paso = 0 then begin
  SALE.Enabled:=true;
  Barra1.Panels[0].Text:='';
end;
end;

procedure TBusca_Talonario.SALEClick(Sender: TObject);
begin
Close;
end;

procedure TBusca_Talonario.TPOTALONKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  PV.SetFocus;
end;
end;

procedure TBusca_Talonario.TPOTALONExit(Sender: TObject);
begin
if TPOTALON.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Talonario Ingresado!!',mterror,[mbok],0);
  TPOTALON.SetFocus;
end;
end;

procedure TBusca_Talonario.PVKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  Buscar.SetFocus;
end;
end;

procedure TBusca_Talonario.PVExit(Sender: TObject);
begin
if PV.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Punto de Venta Ingresado!!',mterror,[mbok],0);
  PV.SetFocus;
end;
end;

procedure TBusca_Talonario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var gf:integer;
begin
if key = VK_ESCAPE then begin
  gf:=messagedlg('Desea Cancelar la Lista actual??' + chr(13)
    + 'Se eliminarán las selecciones realizadas.',mtWarning,[mbok,mbCancel],0);
  if gf = 1 then begin
    for gf:=LISTADO.Items.Count-1 downto 0 do  LISTADO.Checked[gf]:=false;
    Close;
  end;
end;
end;

end.

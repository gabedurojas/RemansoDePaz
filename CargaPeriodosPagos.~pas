unit CargaPeriodosPagos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,DBClient,ClaseSistemas,ClaseFunciones, StdCtrls,ADODB,
  Grids, JvExGrids, JvStringGrid, JvgGroupBox,
  ClaseParcelasMantenimientoPagosPeriodos, ComCtrls, StrUtils;

type
  Tcperiodospagps = class(TForm)
    Label8: TLabel;
    NROCUENTA: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    JvgGroupBox17: TJvgGroupBox;
    GR1: TJvStringGrid;
    BT6: TButton;
    barra: TStatusBar;
    GR2: TJvStringGrid;
    Label3: TLabel;
    Label4: TLabel;
    ANIO: TEdit;
    losperiodos: TEdit;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure NROCUENTAKeyPress(Sender: TObject; var Key: Char);
    procedure GR1Click(Sender: TObject);
    procedure BT6Click(Sender: TObject);
    procedure Limpiar(nro: byte);
    procedure GR1DblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure losperiodosKeyPress(Sender: TObject; var Key: Char);
    procedure ANIOKeyPress(Sender: TObject; var Key: Char);
    procedure CorregirGrilla2();
    procedure Button1Click(Sender: TObject);
  private
    DataSet0,DataSet1,DtCombo,DtComboConso:TClientDataSet;
    Funciones:TFuncionesVarias;
    ParcelasMantenimientoPagosPeriodos:TParcelasMantenimientoPagosPeriodos;
    idpago,PeriodoInicio:integer;
    Sistemas:TSistemas;
    paso:boolean;
    { Private declarations }
  public
     gh:boolean;{ Public declarations }
  end;

var
  cperiodospagps: Tcperiodospagps;

implementation

uses unidad,Modulo;
{$R *.dfm}

procedure Tcperiodospagps.FormCreate(Sender: TObject);
begin
 gh:=false;
end;

procedure Tcperiodospagps.FormActivate(Sender: TObject);
begin
 if not(gh) then begin
  gh:=true;
  GR1.Cells[0,0]:='Orden';
  GR1.Cells[1,0]:='Periodo';
  GR1.Cells[2,0]:='Selecc.';
  nrocuenta.SetFocus;
 end;
end;

procedure Tcperiodospagps.Coloca1(nro:byte);
var t,y,r,s:integer;
    Ident,NroObj,NroCta:variant;
    txt:string;
    txtw:widestring;

begin
if nro=1 then begin //Combo TipoObjetos
   paso:=false;
    DtCombo:=TClientdataSet.Create(nil);
    Funciones:=TFuncionesVarias.Create(nil);
    Funciones.ConnectionString:=modulo2.Conexion;
    if not Funciones.Listar('select MAX(idpago) from ParcelasMantenimientoPagos where NroAccion=' + trim(nrocuenta.Text),DtCombo) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
    else begin
        label1.Caption:=trim(DtCombo.Fields[0].AsString);
        if label1.Caption <> '' then paso:=true;
    end;
    DtCombo.Free;
    if paso then begin
      DtCombo:=TClientdataSet.Create(nil);
      if not Funciones.Listar('select year(FechaVigencia)*100 + month(FechaVigencia) '
        + 'FROM ParcelasMantenimiento WHERE (NroAccion=' + trim(nrocuenta.Text)
        + ') AND (Activo=1)',DtCombo) then
        messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
      else begin
        txt:=trim(DtCombo.Fields[0].AsString);
        try
          PeriodoInicio:=StrToInt(txt);
          if PeriodoInicio < 200401 then PeriodoInicio:=200401;
        except
          PeriodoInicio:=200401;
        end;
      end;
      Funciones.Free;
      DtCombo.Free;
    end
    else messagedlg('ERROR!.. Parcela sin Pagos o no vigente. Verificar',mtError,[mbok],0);
end;
if nro=2 then begin
  for t:=0 to GR2.ColCount-1 do
    for y:=1 to GR2.RowCount-1 do GR2.Cells[t,y]:='';
    GR2.RowCount:=2;
    DtCombo:=TClientdataSet.Create(nil);
    Funciones:=TFuncionesVarias.Create(nil);
    Funciones.ConnectionString:=modulo2.Conexion;
    if not Funciones.Listar('SELECT  Id, Periodo FROM PeriodosVencimientos WHERE '
    + '(Periodo >= ' + IntToStr(PeriodoInicio) + ') and (Periodo <= ' + losPeriodos.Text
    + ')',DtCombo) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
    else begin
      for t:=1 to DtCombo.recordcount do begin
        DtCombo.RecNo:=t;
        GR2.RowCount:=t+1;
        GR2.Cells[0,t]:=DtCombo.Fields[0].AsString;
        GR2.Cells[1,t]:=DtCombo.Fields[1].AsString;
        GR2.Cells[2,t]:='SI';
      end;
      bt6.Enabled:=true;
    end;
    Funciones.Free;
    DtCombo.Free;
end;
IF nro=3 then begin
  for t:=0 to GR1.ColCount-1 do
    for y:=1 to GR1.RowCount-1 do GR1.Cells[t,y]:='';
  GR1.RowCount:=2;
  y:=1;
  for t:=1 to GR2.RowCount-1 do begin
    if StrToInt(LeftStr(GR2.Cells[1,t],4)) >= StrToInt(ANIO.Text) then begin
      GR1.RowCount:=y+1;
      GR1.Cells[0,y]:=GR2.Cells[0,t];
      GR1.Cells[1,y]:=GR2.Cells[1,t];
      GR1.Cells[2,y]:='SI';
      y:=y+1;
    end;
  end;
end;
end;

procedure Tcperiodospagps.NROCUENTAKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
 coloca1(1);
 if paso then begin
  coloca1(2);
  coloca1(3);
  bt6.SetFocus;
 end
 else begin
  limpiar(1);
  NROCUENTA.SetFocus;
 end;
end
else begin
  if ( StrScan('0123456789',Key) <> nil ) or
     ( Key = Char(VK_BACK) ) then
  else Key := #0;
end;

end;

procedure Tcperiodospagps.GR1Click(Sender: TObject);
var ini,fin,t:integer;
begin
if trim(GR1.Cells[0,1]) <> '' then BT6.Enabled:=true;
ini:=GR1.Selection.Top;
fin:=GR1.Selection.Bottom;
if ini <> fin then begin
  for t:=ini to fin do begin
    if GR1.Cells[2,t] = 'NO' then GR1.Cells[2,t]:='SI'
    else GR1.Cells[2,t]:='NO';
  end;
  CorregirGrilla2();
end;
end;

procedure Tcperiodospagps.BT6Click(Sender: TObject);
var gf,p,t,u,a:integer;
    pt,pth:boolean;
begin
for p:=1 to GR2.RowCount-1 do begin
  if trim(GR2.Cells[2,p]) = 'SI' then begin
    ParcelasMantenimientoPagosPeriodos:=TParcelasMantenimientoPagosPeriodos.Create(nil);
    ParcelasMantenimientoPagosPeriodos.ConnectionString:=modulo2.Conexion;
    ParcelasMantenimientoPagosPeriodos.C_IdMantenimientoPagos:=label1.Caption;
    ParcelasMantenimientoPagosPeriodos.C_Periodo:=strtoint64(GR2.Cells[1,p]);
    pt:=ParcelasMantenimientoPagosPeriodos.Agrega;
     if pt then begin
        Barra.Panels[1].Text:='Se Guardado la accion:' + trim(nrocuenta.Text);
     end
     else begin
       Barra.Panels[1].Text:='Error al Guardar los Titulares';
     end;
    ParcelasMantenimientoPagosPeriodos.Free;
  end;
end;
limpiar(1);
bt6.Enabled:=false;
anio.Text:='2014';
nrocuenta.SetFocus;
end;


procedure Tcperiodospagps.limpiar(nro:byte);
var p,u:integer;
begin
if nro=1 then  begin
  for p:=0 to GR1.ColCount-1 do
    for u:=1 to GR1.RowCount-1 do GR1.Cells[p,u]:='';
  GR1.RowCount:=2;
  for p:=0 to GR2.ColCount-1 do
    for u:=1 to GR2.RowCount-1 do GR2.Cells[p,u]:='';
  GR2.RowCount:=2;
  label1.Caption:='';
  nrocuenta.Clear;
end;
end;

procedure Tcperiodospagps.GR1DblClick(Sender: TObject);
begin
if GR1.Cells[2,GR1.Row] = 'NO' then GR1.Cells[2,GR1.Row]:='SI'
else GR1.Cells[2,GR1.Row]:='NO';
CorregirGrilla2();
end;

procedure Tcperiodospagps.CorregirGrilla2();
var t,y:integer;
begin
for t:=1 to GR1.RowCount-1 do begin
  for y:=1 to GR2.RowCount-1 do begin
    if GR1.Cells[0,t] = GR2.Cells[0,y] then GR2.Cells[2,y]:=GR1.Cells[2,t];
  end;
end;
end;

procedure Tcperiodospagps.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_F4 then BT6.Click;
end;

procedure Tcperiodospagps.losperiodosKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then ANIO.SetFocus
else begin
  if ( StrScan('0123456789',Key) <> nil ) or
     ( Key = Char(VK_BACK) ) then
  else Key := #0;
end;
end;

procedure Tcperiodospagps.ANIOKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then NROCUENTA.SetFocus
else begin
  if ( StrScan('0123456789',Key) <> nil ) or
     ( Key = Char(VK_BACK) ) then
  else Key := #0;
end;
end;

procedure Tcperiodospagps.Button1Click(Sender: TObject);
begin
Limpiar(1);
end;

end.

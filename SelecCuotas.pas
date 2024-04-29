unit SelecCuotas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Menus, ImgList, ComCtrls,ClaseFunciones,DBClient,
  StdCtrls, JvgGroupBox, Buttons, JvExButtons, JvBitBtn;

type
  TSeleccion_Cuotas = class(TForm)
    ImageList1: TImageList;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    grilla4: TStringGrid;
    PageControl2: TPageControl;
    TabSheet2: TTabSheet;
    grilla2: TStringGrid;
    grupo6: TJvgGroupBox;
    Label33: TLabel;
    Label34: TLabel;
    Nrocta: TEdit;
    ImpCta: TEdit;
    Label1: TLabel;
    Edit1: TEdit;
    Busca: TJvBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure grilla4KeyPress(Sender: TObject; var Key: Char);
    procedure grilla2KeyPress(Sender: TObject; var Key: Char);
    Procedure CargaDatos(nro:byte);
    procedure grilla4Click(Sender: TObject);
    procedure grilla2Click(Sender: TObject);
    procedure grilla4DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure grilla2DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure BuscaClick(Sender: TObject);
  private
    { Private declarations }
  public
    Funciones:TFuncionesVarias;
   // Dtcombo:TClientDataSet; //declaro los DataSet
    NroOpcion:byte;
    nromov,niv:integer;
    entrega,capital:real;
    fecha,totalfinan:string;
    fila:integer;{ Public declarations }
  end;

var
  Seleccion_Cuotas: TSeleccion_Cuotas;

implementation

uses Modulo,Unidad;

{$R *.dfm}

procedure TSeleccion_Cuotas.FormActivate(Sender: TObject);
begin
 if nroopcion=1 then begin
   grilla2.Cells[0,0]:='NroCuota';
   grilla2.Cells[1,0]:='ValorCuota';
   grilla4.Cells[0,0]:='NroCuota';
   grilla4.Cells[1,0]:='ValorCuota';
   grilla4.Cells[2,0]:='TotalFinanciado';
   cargadatos(0);
 end;
 if nroopcion=2 then begin
   grilla2.Cells[0,0]:='NroCuota';
   grilla2.Cells[1,0]:='ValorCuota';
   grilla4.Cells[0,0]:='NroCuota';
   grilla4.Cells[1,0]:='ValorCuota';
   grilla4.Cells[2,0]:='TotalFinanciado';
   cargadatos(2);
 end;
 if nroopcion=3 then begin
   grilla2.Cells[0,0]:='NroCuota';
   grilla2.Cells[1,0]:='ValorCuota';
   grilla4.Cells[0,0]:='NroCuota';
   grilla4.Cells[1,0]:='ValorCuota';
   grilla4.Cells[2,0]:='TotalFinanciado';
   cargadatos(3);
 end;
 if nroopcion=4 then begin
   grilla2.Cells[0,0]:='NroCuota';
   grilla2.Cells[1,0]:='ValorCuota';
   grilla4.Cells[0,0]:='NroCuota';
   grilla4.Cells[1,0]:='ValorCuota';
   grilla4.Cells[2,0]:='DetalleCuota';
   cargadatos(4);
 end;
end;

procedure TSeleccion_Cuotas.grilla4KeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(27) then begin
  fila:=grilla4.Row;
  close;
end;
end;

procedure TSeleccion_Cuotas.cargadatos(nro:byte);
var DtCombo,DtComboI:TClientDataSet;
var txtw:widestring;
var t,y:integer;
begin
if nro=0 then begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if modulo2.usu_level > 1 then
   txtw:='SELECT NroCuota,ImporteCuota,totalfinanciado FROM ConfiguracionFinaciacion ('+ floattostr(capital) +') where NroCuota >=4'
   //txtw:='SELECT nrocuota,montocuota,detalle FROM RecreaCuotas (1,1,'+floattostr(entrega) +','+ floattostr(capital) +',0)'
  else
   txtw:='SELECT NroCuota,ImporteCuota,totalfinanciado FROM ConfiguracionFinaciacion ('+ floattostr(capital) +') where NroCuota >=4';
   //txtw:='SELECT nrocuota,montocuota,detalle FROM RecreaCuotasAdmin (1,1,' + floattostr(entrega)+','+ floattostr(capital) +',0)';
  if not Funciones.listar(txtw,DtCombo) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  for t:=0 to grilla4.ColCount-1 do
    for y:=1 to grilla4.RowCount-1 do grilla4.Cells[t,y]:='';
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    grilla4.RowCount:=t+1;
    grilla4.Cells[0,t]:=trim(DtCombo.Fields[0].AsString);
    grilla4.Cells[1,t]:=trim(DtCombo.Fields[1].AsString);
    grilla4.Cells[2,t]:=trim(DtCombo.Fields[2].AsString);
  end;
end;
if nro=1 then begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if floattostr(entrega)='0' then begin
   txtw:='SELECT * FROM CreaDeudasServiciosEspecial (' + chr(39) + strcut(fec_system(),10) + chr(39)
   + ',' + floattostr(entrega) +',3,'+ inttostr(niv) +',' + floattostr(capital)  + ') where nrocuota > 1';
  end
  else begin
   txtw:='SELECT * FROM CreaDeudasServiciosEspecial (' + chr(39) + strcut(fec_system(),10) + chr(39)
   + ',' + floattostr(entrega) +',3,'+ inttostr(niv) +',' + floattostr(capital)  + ')';
  end;
  if not Funciones.listar(txtw,DtCombo) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  for t:=0 to grilla4.ColCount-1 do
    for y:=1 to grilla4.RowCount-1 do grilla4.Cells[t,y]:='';
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    grilla4.RowCount:=t+1;
    grilla4.Cells[0,t]:=trim(DtCombo.Fields[0].AsString);
    grilla4.Cells[1,t]:=trim(DtCombo.Fields[5].AsString);
    grilla4.Cells[2,t]:=trim(DtCombo.Fields[6].AsString);
   end;
end;
if nro=2 then begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if modulo2.usu_level  > 1 then
   txtw:='SELECT nrocuota,montocuota,detalle FROM RecreaCuotas (1,2,' + floattostr(entrega) +','+ floattostr(capital) +',0)'
  else
   txtw:='SELECT nrocuota,montocuota,detalle FROM RecreaCuotasAdmin (1,2,' + floattostr(entrega) +','+ floattostr(capital) +',0)';
  if not Funciones.listar(txtw,DtCombo) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  for t:=0 to grilla4.ColCount-1 do
    for y:=1 to grilla4.RowCount-1 do grilla4.Cells[t,y]:='';
  for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    grilla4.RowCount:=t+1;
    grilla4.Cells[0,t]:=trim(DtCombo.Fields[0].AsString);
    grilla4.Cells[1,t]:=trim(DtCombo.Fields[1].AsString);
    grilla4.Cells[2,t]:=trim(DtCombo.Fields[2].AsString);
  end;
end;
if nro=3 then begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if modulo2.usu_level > 1 then
   txtw:='SELECT NroCuota,ImporteCuota,totalfinanciado FROM ConfiguracionFinaciacion ('+ floattostr(capital) +') where NroCuota <=6'  //<4
   //txtw:='SELECT nrocuota,montocuota,detalle FROM RecreaCuotas (1,1,'+floattostr(entrega) +','+ floattostr(capital) +',0)'
  else
   txtw:='SELECT NroCuota,ImporteCuota,totalfinanciado FROM ConfiguracionFinaciacion ('+ floattostr(capital) +') where NroCuota <=6';  //<4
   //txtw:='SELECT nrocuota,montocuota,detalle FROM RecreaCuotasAdmin (1,1,' + floattostr(entrega)+','+ floattostr(capital) +',0)';
  if not Funciones.listar(txtw,DtCombo) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  for t:=0 to grilla4.ColCount-1 do
    for y:=1 to grilla4.RowCount-1 do grilla4.Cells[t,y]:='';
  for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    grilla4.RowCount:=t+1;
    grilla4.Cells[0,t]:=trim(DtCombo.Fields[0].AsString);
    grilla4.Cells[1,t]:=trim(DtCombo.Fields[1].AsString);
    grilla4.Cells[2,t]:=trim(DtCombo.Fields[2].AsString);
  end;
end;
if nro=4 then begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if modulo2.usu_level > 1 then
   txtw:='SELECT NroCuota,ImporteCuota,totalfinanciado FROM ConfiguracionFinaciacion ('+ floattostr(capital) +') where NroCuota <=3 '
   //txtw:='SELECT nrocuota,montocuota,detalle FROM RecreaCuotas (1,1,'+floattostr(entrega) +','+ floattostr(capital) +',0)'
  else
   txtw:='SELECT NroCuota,ImporteCuota,totalfinanciado FROM ConfiguracionFinaciacion ('+ floattostr(capital) +') where NroCuota <=3 ';
   //txtw:='SELECT nrocuota,montocuota,detalle FROM RecreaCuotasAdmin (1,1,' + floattostr(entrega)+','+ floattostr(capital) +',0)';
  if not Funciones.listar(txtw,DtCombo) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  for t:=0 to grilla4.ColCount-1 do
    for y:=1 to grilla4.RowCount-1 do grilla4.Cells[t,y]:='';
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    grilla4.RowCount:=t+1;
    grilla4.Cells[0,t]:=trim(DtCombo.Fields[0].AsString);
    grilla4.Cells[1,t]:=trim(DtCombo.Fields[1].AsString);
    grilla4.Cells[2,t]:=trim(DtCombo.Fields[2].AsString);
  end;
end;
end;

procedure TSeleccion_Cuotas.grilla2KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = chr(27) then begin
  fila:=grilla2.Row;
  close;
end;
end;

procedure TSeleccion_Cuotas.grilla4Click(Sender: TObject);
begin
//edit1.Text:=trim(grilla4.Cells[2,grilla4.Row]);//'FINANCIADO SIN INTERESES';
Nrocta.Text:=trim(grilla4.Cells[0,grilla4.Row]);
ImpCta.Text:=trim(grilla4.Cells[1,grilla4.Row]);
totalfinan:=trim(grilla4.Cells[2,grilla4.Row]);
BUSCA.SetFocus;
end;

procedure TSeleccion_Cuotas.grilla2Click(Sender: TObject);
begin
//edit1.Text:=trim(grilla2.Cells[2,grilla4.Row]);//'FINANCIADO CON INTERESES';
Nrocta.Text:=trim(grilla2.Cells[0,grilla2.Row]);
ImpCta.Text:=trim(grilla2.Cells[1,grilla2.Row]);
totalfinan:=trim(grilla4.Cells[2,grilla4.Row]);
end;

procedure TSeleccion_Cuotas.grilla4DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  if (ACol = 1) and (ARow = 0) then
    with TStringGrid(Sender) do
    begin
      Canvas.Brush.Color := clYEllow;
      Canvas.FillRect(Rect);
      Canvas.TextOut(Rect.Left+2,Rect.Top+2,Cells[ACol, ARow]);
    end;
end;

procedure TSeleccion_Cuotas.grilla2DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  if (ACol = 1) and (ARow = 0) then
    with TStringGrid(Sender) do
    begin
      Canvas.Brush.Color := clYEllow;
      Canvas.FillRect(Rect);
      Canvas.TextOut(Rect.Left+2,Rect.Top+2,Cells[ACol, ARow]);
    end;
end;

procedure TSeleccion_Cuotas.BuscaClick(Sender: TObject);
begin
  fila:=grilla2.Row;
  close;
end;

end.

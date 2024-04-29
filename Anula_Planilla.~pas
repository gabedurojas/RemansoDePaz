unit Anula_Planilla;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Grids, DBGrids, JvgGroupBox,
  Buttons, JvExButtons, JvBitBtn, ToolWin, DB, ClaseFunciones, Unidad, DBClient,
  ClasePlanillasCobranzasNumeros, StrUtils, JvExDBGrids, JvDBGrid,ClaseComprobantesCobrados;

type
  TAnula_PlanillaCobranza = class(TForm)
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    GUARDA: TJvBitBtn;
    ToolButton1: TToolButton;
    Limpiar: TJvBitBtn;
    ToolButton3: TToolButton;
    JvBitBtn1: TJvBitBtn;
    JvgGroupBox2: TJvgGroupBox;
    Label7: TLabel;
    Buscar: TJvBitBtn;
    TPOFORM: TComboBox;
    GroupBox1: TGroupBox;
    Label17: TLabel;
    INICIO: TEdit;
    Barra1: TStatusBar;
    GroupBox6: TGroupBox;
    Shape3: TShape;
    Shape2: TShape;
    Label12: TLabel;
    Label14: TLabel;
    Shape1: TShape;
    Label1: TLabel;
    Label4: TLabel;
    DataSource1: TDataSource;
    DBGrid1: TJvDBGrid;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure TPOFORMKeyPress(Sender: TObject; var Key: Char);
    procedure TPOFORMExit(Sender: TObject);
    procedure INICIOKeyPress(Sender: TObject; var Key: Char);
    procedure BuscarClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure LimpiarClick(Sender: TObject);
    procedure GUARDAClick(Sender: TObject);
  private
    IdCombos:array of array of string;
    DtCombo,DataSet0:TClientDataSet;

    Funciones:TFuncionesVarias;
    PlanillasCobranzasNumeros:TPlanillasCobranzasNumeros;
    ComprobantesCobrados:TComprobantesCobrados;

    FechaActual,MotAnula,cantidad:string;
    TiposFormularios:Unidad.TablaXML;
    gh:boolean;{ Private declarations }
  public
    { Public declarations }
  end;

var
  Anula_PlanillaCobranza: TAnula_PlanillaCobranza;

implementation

uses Modulo, Anula_Generica;

{$R *.dfm}

procedure TAnula_PlanillaCobranza.FormActivate(Sender: TObject);
begin
if not gh then begin
  gh:=true;
  setlength(IdCombos,1);
  FechaActual:=LeftStr(Fec_System(),10);
  Coloca1(1);
  TPOFORM.SetFocus;
end;
end;

procedure TAnula_PlanillaCobranza.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TAnula_PlanillaCobranza.Coloca1(nro:byte);
var t:integer;
    txtw:widestring;
begin
if nro=0 then begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT * FROM ComprobantesCobrados where (NroFormulario=' + chr(39) + IdCombos[0,TPOFORM.ItemIndex]+ chr(39)
        + ') AND (NroPlanilla=' + trim(INICIO.Text) + ') ORDER BY 1 ';
  if not Funciones.Listar(txtw,DtCombo) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
   cantidad:=trim(DtCombo.Fields[0].AsString);
  end;
  Funciones.Free;
end;
if nro=1 then begin //Combo Talonarios
  TPOFORM.Clear;
  TiposFormularios:=LeeXML('TiposFormularios','(Cobranzas=' + chr(39) + 'True' + chr(39) + ')');
  if length(TiposFormularios) <> 0 then begin
    SetLength(IdCombos[0],High(TiposFormularios[1]) + 1);
    for t:=0 to High(TiposFormularios[1])  do begin
      TPOFORM.Items.Insert(t,TiposFormularios[1,t]);
      IdCombos[0,t]:=TiposFormularios[0,t];
    end;
  end
  else begin
    DtCombo.Free;
    DtCombo:=TClientdataSet.Create(nil);
    Funciones:=TFuncionesVarias.Create(nil);
    Funciones.ConnectionString:=modulo2.Conexion;
    if not Funciones.Listar('SELECT NroFormulario,Detalle FROM TiposFormularios '
    + 'WHERE (Cobranzas=1)',DtCombo) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
    else begin
      SetLength(IdCombos[0],DtCombo.RecordCount);
      for t:=1 to DtCombo.RecordCount  do begin
        DtCombo.RecNo:=t;
        TPOFORM.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
        IdCombos[0,t-1]:=DtCombo.Fields[0].AsString;
      end;
    end;
    Funciones.Free;
  end;
  TPOFORM.ItemIndex:=0;
end;
if nro = 2 then begin
  DataSet0.Free;
  DataSet0:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=DataSet0;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if not Funciones.Run_Fn_VistaPlanillaCobranzasNumeros(IdCombos[0,TPOFORM.ItemIndex],trim(INICIO.Text),DataSet0,'',0) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  GUARDA.Enabled:=false;
  Funciones.Free;
  Barra1.Panels[0].Text:='';
  Barra1.Panels[1].Text:='';
  if not DataSet0.IsEmpty then begin
    DBGrid1.Columns[0].Width:=80;
    DBGrid1.Columns[1].Width:=60;
    DBGrid1.Columns[2].Width:=70;
    DBGrid1.Columns[3].Width:=50;
    DBGrid1.Columns[4].Width:=70;
    DBGrid1.Columns[5].Width:=160;
    DBGrid1.Columns[6].Width:=35;
    DBGrid1.Columns[7].Width:=90;
    DBGrid1.Columns[8].Width:=70;
    DBGrid1.Columns[9].Width:=45;
    DBGrid1.Columns[10].Width:=130;
    if (trim(DataSet0.Fields[3].Text) = 'True') and (trim(DataSet0.Fields[6].Text) = '') then Barra1.Panels[0].Text:='N° de Planilla YA Anulada!!';
    if (trim(DataSet0.Fields[3].Text) = 'False') and (trim(DataSet0.Fields[6].Text) <> '') then begin
      Barra1.Panels[0].Text:='N° de Planilla con Pagos cargados!!';
      Barra1.Panels[1].Text:='Cant. Pagos: ' + IntToStr(DataSet0.RecordCount);
    end;
    if (trim(DataSet0.Fields[3].Text) = 'False') and (trim(DataSet0.Fields[6].Text) = '') then Barra1.Panels[0].Text:='ATENCION!!...Es posible anular este N° de Planilla';
  end;
end;
end;

procedure TAnula_PlanillaCobranza.TPOFORMKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  INICIO.SetFocus;
end;
end;

procedure TAnula_PlanillaCobranza.TPOFORMExit(Sender: TObject);
begin
if TPOFORM.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Formulario Ingresado!!',mterror,[mbok],0);
  TPOFORM.SetFocus;
end;
end;

procedure TAnula_PlanillaCobranza.INICIOKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  Buscar.SetFocus;
end
else begin
  if ( StrScan('0123456789',Key) <> nil ) or
      ( Key = Char(VK_BACK) ) then
   else Key := #0;
end;
end;

procedure TAnula_PlanillaCobranza.BuscarClick(Sender: TObject);
begin
Coloca1(2);
end;

procedure TAnula_PlanillaCobranza.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var h:byte;
begin
h:=0;
if trim(DataSet0.Fields[3].Text) = 'True' then h:=1
else if trim(DataSet0.Fields[6].Text) <> '' then h:=2;
case h of
  0:begin
    DBGrid1.Canvas.Brush.Color:=clWindow;
    DBGrid1.Canvas.FillRect(Rect);
    DBGrid1.Canvas.Font.Color:= clBlack;
    end;
  1:begin // sin confirmar
    DBGrid1.Canvas.Brush.Color:=$009F9FFF;
    DBGrid1.Canvas.FillRect(Rect);
    DBGrid1.Canvas.Font.Color:= clBlack;
    end;
  2:begin
    DBGrid1.Canvas.Brush.Color:=$00C7D8C7;
    DBGrid1.Canvas.FillRect(Rect);
    DBGrid1.Canvas.Font.Color:= clBlack;
    end;
end;
DBGrid1.DefaultDrawColumnCell(Rect,Datacol,Column,State);
end;

procedure TAnula_PlanillaCobranza.DBGrid1CellClick(Column: TColumn);
begin
if (trim(DataSet0.Fields[3].Text) = 'False') then GUARDA.Enabled:=true  // and (trim(DataSet0.Fields[6].Text)='')
else GUARDA.Enabled:=false;
end;

procedure TAnula_PlanillaCobranza.JvBitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TAnula_PlanillaCobranza.LimpiarClick(Sender: TObject);
begin
TPOFORM.ItemIndex:=0;
INICIO.Text:='0000000';
DataSource1.DataSet:=nil;

GUARDA.Enabled:=false;
TPOFORM.SetFocus;
end;
procedure TAnula_PlanillaCobranza.GUARDAClick(Sender: TObject);
var gf:integer;
    Anula_General:TAnula_General;
    txtw:widestring;
    TodoOk1,TodoOk:boolean;
begin
gf:=messagedlg('Desea Anular la Planilla Seleccionada?',mtWarning,[mbok,mbCancel],0);
if gf = 1 then begin
  MotAnula:='';
  Anula_General:= TAnula_General.create(self);
  try
    Anula_General.ShowModal;
    MotAnula:=AnsiReplaceStr(trim(Anula_General.MOTIVO.Text),chr(39),chr(33));
  finally
    Anula_General.destroy;
  end;
  coloca1(0);
  PlanillasCobranzasNumeros:=TPlanillasCobranzasNumeros.Create(nil);
  PlanillasCobranzasNumeros.ConnectionString:=modulo2.Conexion;
  txtw:='UPDATE PlanillasCobranzasNumeros SET Anulado=1,UsuAnula=' + IntToStr(modulo2.nro_usu)
        + ',FechaAnula=' + chr(39) + FechaActual + chr(39) + ',MotivoAnula=' + chr(39)+ MotAnula + chr(39)
        + ' WHERE (NroFormulario=' + chr(39) + IdCombos[0,TPOFORM.ItemIndex]+ chr(39) + ') AND (NroPlanilla=' + trim(INICIO.Text) + ')';
  TodoOk1:=PlanillasCobranzasNumeros.ListarSinResp(txtw);
  PlanillasCobranzasNumeros.Free;
  if not TodoOk1 then messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
     if  cantidad <> ''   then begin
          ComprobantesCobrados:=TComprobantesCobrados.Create(nil);
          ComprobantesCobrados.ConnectionString:=modulo2.Conexion;
          txtw:='UPDATE ComprobantesCobrados SET Anulado=1,UsuAnula=' + IntToStr(modulo2.nro_usu)
                + ',FechaAnula=' + chr(39) + FechaActual + chr(39) + ',MotivoAnula=' + chr(39)+ MotAnula + chr(39)
                + ' WHERE (NroFormulario=' + chr(39) + IdCombos[0,TPOFORM.ItemIndex]+ chr(39) + ') AND (NroPlanilla=' + trim(INICIO.Text) + ')';
          TodoOk:=ComprobantesCobrados.ListarSinResp(txtw);
          ComprobantesCobrados.Free;
          if not TodoOk then messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
          else begin
            messagedlg('Planilla de Cobranzas ANULADA Satisfactoriamente',mtConfirmation,[mbok],0);
            Limpiar.Click;
          end;
     end
     else begin
            messagedlg('Planilla de Cobranzas ANULADA Satisfactoriamente',mtConfirmation,[mbok],0);
            Limpiar.Click;
     end;
  end;
end;
end;

end.

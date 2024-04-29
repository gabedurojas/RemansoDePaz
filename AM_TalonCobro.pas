unit AM_TalonCobro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, JvExGrids, JvStringGrid, ComCtrls, Buttons,
  JvExButtons, JvBitBtn, ToolWin, JvgGroupBox,Unidad, DBClient, WSDLIntf,
  ClaseFunciones, StrUtils, ClasePlanillasCobranzasNumeros, JvExComCtrls,
  JvProgressBar;

type THackStringGrid = class(TStringGrid);
type
  TAM_TalonCobranzas = class(TForm)
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
    Buscar: TJvBitBtn;
    grupo2: TJvgGroupBox;
    Label5: TLabel;
    TALON: TEdit;
    Label17: TLabel;
    INICIO: TEdit;
    Label1: TLabel;
    NROCOMP: TEdit;
    CAN: TEdit;
    Label16: TLabel;
    Agrega2: TJvBitBtn;
    Borra2: TJvBitBtn;
    Quita2: TJvBitBtn;
    Proceso: TJvProgressBar;
    todos: TRichEdit;
    Label7: TLabel;
    TPOFORM: TComboBox;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    grilla2: TJvStringGrid;
    TabSheet2: TTabSheet;
    grilla3: TJvStringGrid;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure TPOFORMKeyPress(Sender: TObject; var Key: Char);
    procedure TPOFORMExit(Sender: TObject);
    procedure BuscarClick(Sender: TObject);
    procedure TALONKeyPress(Sender: TObject; var Key: Char);
    procedure NROCOMPKeyPress(Sender: TObject; var Key: Char);
    procedure INICIOKeyPress(Sender: TObject; var Key: Char);
    procedure INICIOChange(Sender: TObject);
    procedure CANKeyPress(Sender: TObject; var Key: Char);
    Procedure RecreaDetalle(BorrarSolamente:boolean);
    procedure Agrega2Click(Sender: TObject);
    procedure Borra2Click(Sender: TObject);
    procedure grilla2Click(Sender: TObject);
    procedure Quita2Click(Sender: TObject);
    procedure GUARDAClick(Sender: TObject);
    procedure EXPORTARClick(Sender: TObject);
    procedure LimpiarClick(Sender: TObject);
    procedure CANChange(Sender: TObject);
  private
    IdCombos:array of array of string;
    DtCombo:TClientDataSet;

    Funciones:TFuncionesVarias;
    PlanillasCobranzasNumeros:TPlanillasCobranzasNumeros;

    FechaActual:string;
    TiposFormularios:Unidad.TablaXML;
    gh:boolean;{ Private declarations }
  public
    { Public declarations }
  end;

var
  AM_TalonCobranzas: TAM_TalonCobranzas;

implementation

uses Modulo,SplashFormNro;
{$R *.dfm}

procedure TAM_TalonCobranzas.FormActivate(Sender: TObject);
begin
if not gh then begin
  gh:=true;
  setlength(IdCombos,1);
  PC1.ActivePage:=PC1.Pages[0];
  FechaActual:=LeftStr(Fec_System(),10);
  grilla2.Cells[0,0]:='Orden';
  grilla2.Cells[1,0]:='Tipo Formulario';
  grilla2.Cells[2,0]:='N° Talonario';
  grilla2.Cells[3,0]:='N° Inicio';
  grilla2.Cells[4,0]:='Cantidad';
  grilla2.Cells[5,0]:='N° Tipo Form';

  grilla3.Cells[0,0]:='Orden';
  grilla3.Cells[1,0]:='N° Talonario';
  grilla3.Cells[2,0]:='N° Planilla';
  grilla3.Cells[3,0]:='Tipo Formulario';
  grilla3.Cells[4,0]:='N° Identificador';
  Coloca1(1);
end;
end;

procedure TAM_TalonCobranzas.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TAM_TalonCobranzas.Coloca1(nro:byte);
var t:integer;
begin
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
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if not Funciones.Run_ObtieneNumerosPlanillasCobranzas(IdCombos[0,TPOFORM.ItemIndex],DtCombo,'',0) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
    grupo2.Enabled:=true;
    Self.Update;
    if DtCombo.Fields[0].AsInteger <> 0 then begin
      TALON.Color:=clGradientActiveCaption;
      TALON.ReadOnly:=true;
      NROCOMP.Color:=clGradientActiveCaption;
      NROCOMP.ReadOnly:=true;
      TALON.Text:=DtCombo.Fields[0].AsString;
      NROCOMP.Text:=DtCombo.Fields[1].AsString;
      //INICIO.SetFocus;
      Can.SetFocus;
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

procedure TAM_TalonCobranzas.JvBitBtn1Click(Sender: TObject);
begin
Close;
end;


procedure TAM_TalonCobranzas.TPOFORMKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  Buscar.SetFocus;
end;
end;

procedure TAM_TalonCobranzas.TPOFORMExit(Sender: TObject);
begin
if TPOFORM.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Formulario Ingresado!!',mterror,[mbok],0);
  TPOFORM.SetFocus;
end;
end;

procedure TAM_TalonCobranzas.BuscarClick(Sender: TObject);
begin
Coloca1(2);
end;

procedure TAM_TalonCobranzas.TALONKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  NROCOMP.SetFocus;
end
else begin
  if ( StrScan('0123456789',Key) <> nil ) or
      ( Key = Char(VK_BACK) ) then
   else Key := #0;
end;
end;

procedure TAM_TalonCobranzas.NROCOMPKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  INICIO.SetFocus;
end
else begin
  if ( StrScan('0123456789',Key) <> nil ) or
      ( Key = Char(VK_BACK) ) then
   else Key := #0;
end;
end;

procedure TAM_TalonCobranzas.INICIOKeyPress(Sender: TObject; var Key: Char);
begin
//if key = #13 then begin
//  Key := #0;
//  CAN.SetFocus;
//end
//else begin
//  if ( StrScan('0123456789',Key) <> nil ) or
//      ( Key = Char(VK_BACK) ) then
//   else Key := #0;
//end;
end;

procedure TAM_TalonCobranzas.INICIOChange(Sender: TObject);
begin
//Agrega2.Enabled:=true;
end;

procedure TAM_TalonCobranzas.CANKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  Agrega2.Enabled:=true;
  if Agrega2.Enabled then Agrega2.SetFocus;
end
else begin
  if ( StrScan('0123456789',Key) <> nil ) or
      ( Key = Char(VK_BACK) ) then
   else Key := #0;
end;
end;


Procedure TAM_TalonCobranzas.RecreaDetalle(BorrarSolamente:boolean);
var t,r,s,y:integer;
begin
for t:=0 to grilla3.ColCount-1 do
  for r:=1 to grilla3.RowCount-1 do grilla3.Cells[t,r]:='';
  grilla3.RowCount:=2;

  if not BorrarSolamente then begin
    s:=1;
    for t:=1 to grilla2.RowCount-1 do begin
      y:=StrToInt(grilla2.Cells[4,t]) + StrToInt(grilla2.Cells[3,t]) - 1;
      for r:=StrToInt(grilla2.Cells[3,t]) to y do begin
        grilla3.RowCount:=s+1;
        grilla3.Cells[0,s]:=StrFill(inttostr(s),4,'0','');
        grilla3.Cells[1,s]:=grilla2.Cells[2,t];
        grilla3.Cells[2,s]:=StrFill(inttostr(r),7,'0','');
        grilla3.Cells[3,s]:=grilla2.Cells[5,t];
        s:=s+1;
      end;
    end;
  end;
end;


procedure TAM_TalonCobranzas.Agrega2Click(Sender: TObject);
var t,y,s,r,q:integer;
    Vc:boolean;

  function busca(val1:string):boolean;
    var p:integer;
  begin
    Result:=true;
    if grilla2.Cells[0,1] <> '' then begin
      for p:=1 to grilla2.RowCount-1 do
        if (grilla2.Cells[1,p]=trim(TPOFORM.Text))
        and (grilla2.Cells[3,p]=val1) then Result:=false;
    end;
  end;

begin

if grilla2.Cells[0,1] = '' then Vc:=true
else Vc:=false;
s:=StrToInt(trim(TALON.Text));
if s = 0 then r:=StrToInt(trim(CAN.Text)) * -1
else r:=StrToInt(trim(NROCOMP.Text))-1;
for y:=1 to StrToInt(INICIO.Text) do begin
  //s:=s + 1;
  //q:=r + (StrToInt(trim(CAN.Text)) * y) + 1;
  //q:=r + (StrToInt(trim(CAN.Text)) * y);
  q:=r + (StrToInt(trim(INICIO.Text))) +1 ;
  if not Vc then Vc:=busca(IntToStr(q));
  if vc then begin
    if (grilla2.RowCount > 1) and (trim(grilla2.Cells[0,1])<>'') then begin
      t:=grilla2.RowCount;
      grilla2.RowCount:=grilla2.RowCount+1;
    end
    else t:=1;
    grilla2.Cells[0,t]:=StrFill(inttostr(t),2,'0','');
    grilla2.Cells[1,t]:=trim(TPOFORM.Text);
    grilla2.Cells[2,t]:=IntToStr(s);
    grilla2.Cells[3,t]:=IntToStr(q);
    grilla2.Cells[4,t]:=trim(CAN.Text);
    grilla2.Cells[5,t]:=IdCombos[0,TPOFORM.ItemIndex];
    RecreaDetalle(false);
  end
  else begin
    messagedlg('ERROR!! No Pueden Existir dos N° Talonarios e Inicio iguales!!',mterror,[mbok],0);
    break;
  end;
end;
if (grilla2.RowCount > 1) and (grilla2.Cells[0,1] <> '') then begin
  GUARDA.Enabled:=true;
  EXPORTAR.Enabled:=true;
end;
TPOFORM.SetFocus;
end;

procedure TAM_TalonCobranzas.Borra2Click(Sender: TObject);
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
      RecreaDetalle(false);
    end
    else begin
      for t:=0 to grilla2.ColCount-1 do grilla2.Cells[t,1]:='';
      RecreaDetalle(true);
    end;      
  end;
  Borra2.Enabled:=false;
  INICIO.SetFocus;
end;
end;

procedure TAM_TalonCobranzas.grilla2Click(Sender: TObject);
begin
Agrega2.Enabled:=false;
Borra2.Enabled:=true;
Quita2.Enabled:=true;
end;

procedure TAM_TalonCobranzas.Quita2Click(Sender: TObject);
begin
Borra2.Enabled:=false;
Agrega2.Enabled:=true;
Quita2.Enabled:=false;
end;

procedure TAM_TalonCobranzas.GUARDAClick(Sender: TObject);
var gf,t:integer;
    ElId1:string;
    TodoOk1:boolean;
begin
gf:=messagedlg('Desea Guardar los Talonarios y Comprobantes?',mtWarning,[mbok,mbCancel],0);
if gf = 1 then begin
  Proceso.Position:=0;
  SplashConNro := TSplashConNro.Create(Application);
  SplashConNro.Show;
  SplashConNro.ProgressBar1.Max:=500;
  {grilla3.Cells[0,0]:='Orden';
  grilla3.Cells[1,0]:='N° Talonario';
  grilla3.Cells[2,0]:='N° Planilla';
  grilla3.Cells[3,0]:='Tipo Formulario';}
  Proceso.Max:=grilla3.RowCount - 1;
  for t:=1 to grilla3.RowCount - 1 do begin
    PlanillasCobranzasNumeros:=TPlanillasCobranzasNumeros.Create(nil);
    PlanillasCobranzasNumeros.ConnectionString:=modulo2.Conexion;
    PlanillasCobranzasNumeros.C_NroTalonario_IX2:=grilla3.Cells[1,t];
    PlanillasCobranzasNumeros.C_NroFormulario:=grilla3.Cells[3,t];
    PlanillasCobranzasNumeros.C_NroPlanilla_IX3:=grilla3.Cells[2,t];
    PlanillasCobranzasNumeros.C_Usu_A:=modulo2.nro_usu;
    PlanillasCobranzasNumeros.C_Anulado_IX4:=false;
    PlanillasCobranzasNumeros.C_UsuAnula:=null;
    PlanillasCobranzasNumeros.C_Fecha_A:=trim(FechaActual);
    PlanillasCobranzasNumeros.C_FechaAnula:='';
    PlanillasCobranzasNumeros.C_MotivoAnula:='';
    TodoOk1:=PlanillasCobranzasNumeros.Agrega;
    Proceso.Position:=t;
    if not TodoOk1 then begin
      Barra1.Panels[0].Text:='Hubo Errores al Guardar Datos. Inciando DESHACER!!...';
      gf:=t;
      Break;
    end
    else grilla3.Cells[4,t]:=PlanillasCobranzasNumeros.Identidad;
    PlanillasCobranzasNumeros.Free;
    SplashConNro.Label3.Caption:=inttostr(t);
    SplashConNro.ProgressBar1.Position:=t;
    SplashConNro.Update;
  end;
  if not TodoOk1 then begin
   for t:=gf downto 1 do begin
    PlanillasCobranzasNumeros:=TPlanillasCobranzasNumeros.Create(nil);
    PlanillasCobranzasNumeros.ConnectionString:=modulo2.Conexion;
    PlanillasCobranzasNumeros.Borrar(grilla3.Cells[4,t]);
    PlanillasCobranzasNumeros.Free;
    Proceso.Position:=t;
   end;
   Proceso.Position:=0;
  end
  else begin
   SplashConNro.Hide;
   SplashConNro.Free;
   messagedlg('Se ha Guardado la Creación de Talonarios de Cobranzas con Exito',mtConfirmation,[mbok],0);
   Limpiar.Click;
  end;
end;
end;

procedure TAM_TalonCobranzas.EXPORTARClick(Sender: TObject);
var texto:widestring;
var t,y:integer;
begin
todos.Clear;
for y:=0 to grilla3.RowCount-1 do begin
  texto:='';
  for t:=0 to grilla3.ColCount-1 do texto:=texto + grilla3.Cells[t,y] + chr(9);
  todos.Lines.Add(texto);
end;
todos.SelectAll;
todos.CopyToClipboard;
messagedlg('Se Copiaron los Datos, listo para pegarlos a Excel',mtwarning,[mbok],0);
end;

procedure TAM_TalonCobranzas.LimpiarClick(Sender: TObject);
var t,r:integer;
begin
for t:=0 to grilla2.ColCount-1 do
  for r:=1 to grilla2.RowCount-1 do grilla2.Cells[t,r]:='';
grilla2.RowCount:=2;

RecreaDetalle(true);

TPOFORM.ItemIndex:=0;
TALON.Text:='00000000';
NROCOMP.Text:='0000000';
INICIO.Text:='00000';
CAN.Text:='100';

grupo2.Enabled:=false;

AGREGA2.Enabled:=false;
QUITA2.Enabled:=false;
BORRA2.Enabled:=false;

EXPORTAR.Enabled:=false;
GUARDA.Enabled:=false;
end;



procedure TAM_TalonCobranzas.CANChange(Sender: TObject);
begin
Agrega2.Enabled:=true;
end;

end.

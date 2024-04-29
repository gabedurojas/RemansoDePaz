unit CambiaOrigenDestinorCremacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,DBClient, StdCtrls, DBCtrls, Grids, DBGrids, ComCtrls, StrUtils,
  DB, Mask, ADODB, Buttons, ExtCtrls,ClaseParcelas, ToolWin,
  JvDBGrid, JvExButtons, JvBitBtn, JvExMask, JvToolEdit,DateUtils,
  JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, JvgGroupBox, JvExDBGrids,
  WSDLIntf,
   Unidad, JvExGrids, JvStringGrid, ClaseParcelasMantenimientoPrecios,
  jpeg, RpDefine, RpBase, RpSystem, Menus;


type THackStringGrid = class(TStringGrid);
type
  TCambiadestinoorigen = class(TForm)
    Barra1: TStatusBar;
    DataSource1: TDataSource;
    PC1: TPageControl;
    TabSheet3: TTabSheet;
    grupo1: TGroupBox;
    DBGrid1: TJvDBGrid;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    ToolButton2: TToolButton;
    JvBitBtn3: TJvBitBtn;
    Label2: TLabel;
    image1: TImage;
    RE5: TRichEdit;
    ToolButton1: TToolButton;
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    MOTIVO: TEdit;
    Label1: TLabel;
    GUARDA: TJvBitBtn;
    JvBitBtn1: TJvBitBtn;
    Button1: TButton;
    procedure Coloca1(nro:byte);
    procedure FormActivate(Sender: TObject);
    procedure SALEClick(Sender: TObject);
    procedure GUARDAClick(Sender: TObject);
    procedure JvBitBtn3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    gh:boolean;
    control:boolean;{Controla que no hubiere errores en la carga de datos}
    { Private declarations }
  public
    // aca instancio la clase si la clase esta definida en el uses de la ventana
    //ParcelasCuentas:TParcelasCuentas;
    nroopion:integer;
    Resultado,elcuif,fechaant:string;
    pos,TipoCliente:integer;
    PROCESO1: TADODataSet;
    DataSet,DtCombo:TClientDataSet; //declaro el DAtaset de los Combobox
    DSGral:TClientDataSet;//declaro el DAtaset de la grilla
    IdCombos:array of array of string;
    ParcelasMantenimientoPreciosUpdate:TParcelasMantenimientoPrecios;
    ParcelasMantenimientoPrecios:TParcelasMantenimientoPrecios;
   // ParcelasUpdate:TParcelas;
   // Parcelas:TParcelas;
  end;

var
  Cambiadestinoorigen: TCambiadestinoorigen;

implementation

uses Modulo,ClaseSistemas,ClaseFunciones;

{$R *.dfm}


procedure TCambiadestinoorigen.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TCambiadestinoorigen.FormActivate(Sender: TObject);
begin
 if not gh then begin
  PROCESO1:=TADODataSet.Create(nil);
  PROCESO1.ConnectionString:=modulo2.Conexion;
  gh:=true;
  PC1.ActivePage:=PC1.Pages[0];
  Coloca1(1);
  GUARDA.Enabled:=false;
  Panel1.Visible :=FALSE;
 end;
end;

procedure TCambiadestinoorigen.Coloca1(nro:byte);
var t,y:integer;
    txt,sec:string;
    txtw:widestring;
    Funciones:TFuncionesVarias;
    Sistema:TSistemas;
    Param:TWideStrings;
    NroDni,NroCuif,nroid:variant;
begin
 if nro=1 then begin
  DataSet.Free;
  DataSet:=TClientDataSet.Create(nil);
  ParcelasMantenimientoPrecios:=TParcelasMantenimientoPrecios.Create(nil);
  DataSource1.DataSet:=Dataset;
  ParcelasMantenimientoPrecios.ConnectionString:=modulo2.Conexion;
  if nroopion = 0 then begin  // origen
    //DataSet.Free;
    //DataSet:=TClientDataSet.Create(nil);
    //ParcelasMantenimientoPrecios:=TParcelasMantenimientoPrecios.Create(nil);
    //DataSource1.DataSet:=Dataset;
    //ParcelasMantenimientoPrecios.ConnectionString:=modulo2.Conexion;
    txtw:='SELECT [Id],[Descripcion],[Fechavigencia],[ValorTotal],[Fechavigenciahasta] FROM.[ParcelasCremacionesOrigen] '
    + ' where Fechavigenciahasta is null order by 1' ;
    if not ParcelasMantenimientoPrecios.Listar(txtw,DataSet) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    dbgrid1.Columns[0].Width:=30;
    dbgrid1.Columns[1].Width:=150;
    dbgrid1.Columns[2].Width:=90;
    dbgrid1.Columns[3].Width:=90;
    dbgrid1.Columns[4].Width:=90;
  end;
  if nroopion = 1 then begin   // destino
    txtw:='SELECT Id, Destino FROM ParcelasCremacionesDestino WHERE (Activo = 1) order by 1' ;
    if not ParcelasMantenimientoPrecios.Listar(txtw,DataSet) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    dbgrid1.Columns[0].Width:=30;
    dbgrid1.Columns[1].Width:=180;
  end;
 end;
 {if nro=2 then begin
  DataSet.Free;
  DataSet:=TClientDataSet.Create(nil);
  ParcelasMantenimientoPrecios:=TParcelasMantenimientoPrecios.Create(nil);
  DataSource1.DataSet:=Dataset;
  ParcelasMantenimientoPrecios.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT  IdTipoServicioNivel as id, NroTipoServicio, Nivel, PrecioLista, PrecioContado, PrecioCheque, '
  +' convert(char(10),Vigencia,103) as Vigencia,Activo FROM TiposServiciosNivel WHERE (NroTipoServicio = 7) ORDER BY IdTipoServicioNivel asc' ;
  if not ParcelasMantenimientoPrecios.Listar(txtw,DataSet) then
   messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  dbgrid1.Columns[0].Width:=30;
  dbgrid1.Columns[1].Width:=80;
  dbgrid1.Columns[2].Width:=80;
  dbgrid1.Columns[3].Width:=90;
  dbgrid1.Columns[4].Width:=90;
  dbgrid1.Columns[5].Width:=70;
  dbgrid1.Columns[6].Width:=70;
  dbgrid1.Columns[7].Width:=60;
 end;  }
end;

procedure TCambiadestinoorigen.SALEClick(Sender: TObject);
begin
Close;
end;

procedure TCambiadestinoorigen.GUARDAClick(Sender: TObject);
var gf,t:integer;
var m,a:boolean;
var txtw:widestring;
begin
 IF TRIM(MOTIVO.Text) = '' then begin
      messagedlg('ATENCION.. El detalle NO puede estar Vacio.. Ingrese alguna Descripcion para poder continuar',mtError,[mbok],0);
 end
 else begin
  if nroopion = 0 then begin
   gf:=messagedlgpos('Desea Realmente Incoporar un Nuevo ORGEN de Cremacion?...',mtWarning,[
               mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
   if gf = 1 then begin
    PROCESO1.Close;
    PROCESO1.CommandText:='exec SPC_ParcelasCremacionesOrigenInsertar ' + chr(39) + trim(motivo.Text) + chr(39); //trim(cuif.Text) //
    PROCESO1.Open;
    if PROCESO1.Fields[0].AsString = 'OK' then begin
     messagedlg('EXITO al Guardar el ORIGEN de la CREMACION...',mtConfirmation,[mbok],0);
     Coloca1(1);
     panel1.Visible :=false;
     guarda.Enabled :=false;
    end
    else begin
     messagedlg('Error al Guardar el ORIGEN de la CREMACION. Consulte con un Administrador',mtError,[mbok],0);
     motivo.SetFocus;
    end;
   end
   else begin
    messagedlg('Ud. acaba de Cancelar esta Acción. No se produjeron ningún cambio en la Base de Datos',mtWarning,[mbok],0);
   end;
  end;
  if nroopion = 1 then begin
   gf:=messagedlgpos('Desea Realmente Incoporar un Nuevo DESTINO de Cremacion?...',mtWarning,[
       mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
   if gf = 1 then begin
    PROCESO1.Close;
    PROCESO1.CommandText:='exec SPC_ParcelasCremacionesDestinoInsertar ' + chr(39) + trim(motivo.Text) + chr(39); //trim(cuif.Text) //
    PROCESO1.Open;
    if PROCESO1.Fields[0].AsString = 'OK' then begin
     messagedlg('EXITO al Guardar el DESTINO de la CREMACION...',mtConfirmation,[mbok],0);
     Coloca1(1);
     panel1.Visible :=false;
     guarda.Enabled :=false;
    end
    else begin
     messagedlg('Error al Guardar el DESTINO de la CREMACION. Consulte con un Administrador',mtError,[mbok],0);
     motivo.SetFocus;
    end;
   end
   else begin
    messagedlg('Ud. acaba de Cancelar esta Acción. No se produjeron ningún cambio en la Base de Datos',mtWarning,[mbok],0);
   end;
  end;
 end;
end;

procedure TCambiadestinoorigen.JvBitBtn3Click(Sender: TObject);
begin
 if nroopion = 0 then LABEL1.Caption :='INGRESE NUEVO ORIGEN'
  ELSE  LABEL1.Caption :='INGRESE NUEVO DESTINO';
 Panel1.Visible :=TRUE;
 MOTIVO.SetFocus;
 guarda.Enabled :=true;
end;

procedure TCambiadestinoorigen.DBGrid1CellClick(Column: TColumn);
var gf:integer;
begin
 if not (Dataset.IsEmpty) then begin
  {if (trim(DBGrid1.Fields[7].Text) = 'False')  then begin
   gf:=messagedlgpos('ATENCION!! Esta Valor NO es el Actual, desea Modificar sus Valores??...',mtWarning,[
           mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
   if gf = 1 then begin
    guarda.Enabled:=false;
    grupovalor.Enabled:=false;
    DBGrid1.SetFocus;
   end
   else begin
    guarda.Enabled:=false;
   end;
  end
  else begin
   guarda.Enabled:=true;
   fecha.SetFocus;
  end; }
 end;
end;

procedure TCambiadestinoorigen.JvBitBtn1Click(Sender: TObject);
begin
CLOSE;
end;

procedure TCambiadestinoorigen.Button1Click(Sender: TObject);
begin
Panel1.Visible :=FALSE;
DBGRID1.SetFocus;
end;

end.

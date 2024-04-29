unit EliminaUltimoInhumado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,DBClient, StdCtrls, DBCtrls, Grids, DBGrids, ComCtrls, StrUtils,
  DB, Mask, ADODB, Buttons, ExtCtrls,ClaseParcelas, ToolWin,
  JvDBGrid, JvExButtons, JvBitBtn, JvExMask, JvToolEdit,DateUtils,
  JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, JvgGroupBox, JvExDBGrids,
  WSDLIntf, Unidad, JvExGrids, JvStringGrid, ClaseParcelasMantenimientoPrecios,
  RpDefine, RpBase, RpSystem, jpeg, Menus;


type THackStringGrid = class(TStringGrid);
type
  TBorraUltimoInhum = class(TForm)
    Barra1: TStatusBar;
    DataSource1: TDataSource;
    PC1: TPageControl;
    TabSheet3: TTabSheet;
    grupo1: TGroupBox;
    DBGrid1: TJvDBGrid;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    ToolButton2: TToolButton;
    GUARDA: TJvBitBtn;
    ToolButton3: TToolButton;
    JvBitBtn3: TJvBitBtn;
    Label2: TLabel;
    ToolButton1: TToolButton;
    image1: TImage;
    RE5: TRichEdit;
    grupovalor: TJvgGroupBox;
    orden: TEdit;
    observ: TEdit;
    lafecha: TEdit;
    formapago: TEdit;
    posicion: TEdit;
    nivel: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    objeto: TEdit;
    Label4: TLabel;
    id: TEdit;
    Label5: TLabel;
    Edit1: TEdit;
    Label11: TLabel;
    Edit2: TEdit;
    procedure Coloca1(nro:byte);
    procedure FormActivate(Sender: TObject);
    procedure SALEClick(Sender: TObject);
    procedure GUARDAClick(Sender: TObject);
    procedure JvBitBtn3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
  private
    gh:boolean;
    control:boolean;{Controla que no hubiere errores en la carga de datos}
    { Private declarations }
  public
    // aca instancio la clase si la clase esta definida en el uses de la ventana
    //ParcelasCuentas:TParcelasCuentas;
    Resultado,elcuif,fechaant:string;
    pos,TipoCliente:integer;
    PROCESO1: TADODataSet;
    DataSet,DtCombo:TClientDataSet; //declaro el DAtaset de los Combobox
    DSGral:TClientDataSet;//declaro el DAtaset de la grilla
    IdCombos:array of array of string;
    ParcelasMantenimientoPreciosUpdate:TParcelasMantenimientoPrecios;
    ParcelasMantenimientoPrecios:TParcelasMantenimientoPrecios;
  end;

var
  BorraUltimoInhum: TBorraUltimoInhum;

implementation

uses Modulo,ClaseSistemas,ClaseFunciones;

{$R *.dfm}


procedure TBorraUltimoInhum.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TBorraUltimoInhum.FormActivate(Sender: TObject);
begin
 if not gh then begin
  gh:=true;
  PC1.ActivePage:=PC1.Pages[0];
  Coloca1(1);
  GUARDA.Enabled:=false;
  grupovalor.Enabled:=false;
 end;
end;

procedure TBorraUltimoInhum.Coloca1(nro:byte);
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
  txtw:='SELECT dbo.ParcelasInhumados.IdHabitante,dbo.Clientes.RazonSocial AS Titular,dbo.ParcelasInhumados.NroAccion,'
  +'dbo.ParcelasInhumados.NroOrdenServicio,dbo.ParcelasInhumados.Nivel, dbo.ParcelasInhumados.Posicion,dbo.ParcelasInhumados.Objeto,'
  +'Clientes_1.RazonSocial AS Fallecido,Clientes_2.RazonSocial AS Solicitante,Clientes_3.RazonSocial AS Responsable, '
  +'convert(char(10),dbo.ParcelasInhumados.FechaFallecimiento,103) as FechaFallecimiento,convert(char(10),dbo.ParcelasInhumados.FechaInhumacion,103) as FechaInhumacion, '
  +'dbo.ParcelasInhumados.DetalleObjeto FROM dbo.ParcelasInhumados INNER JOIN  '
  +' dbo.Clientes ON dbo.ParcelasInhumados.CuifTitular = dbo.Clientes.Cuif INNER JOIN '
  +' dbo.Clientes AS Clientes_1 ON dbo.ParcelasInhumados.CuifFallecido = Clientes_1.Cuif INNER JOIN '
  +' dbo.Clientes AS Clientes_2 ON dbo.ParcelasInhumados.CuifSolicitante = Clientes_2.Cuif INNER JOIN  '
  +' dbo.Clientes AS Clientes_3 ON dbo.ParcelasInhumados.CuifResponsable = Clientes_3.Cuif  '
  +' WHERE (dbo.ParcelasInhumados.NroOrdenServicio = (SELECT  maximonro FROM dbo.Maximos WHERE (tabla = ''OrdenServicio''))) '
  +' AND (dbo.ParcelasInhumados.Confirmado = 1) AND (dbo.ParcelasInhumados.Anulado = 0)';
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
    dbgrid1.Columns[8].Width:=90;
 end;
end;

procedure TBorraUltimoInhum.SALEClick(Sender: TObject);
begin
Close;
end;

procedure TBorraUltimoInhum.GUARDAClick(Sender: TObject);
var gf,t:integer;
var m,a:boolean;
var txtw:widestring;
begin
   gf:=messagedlgpos('Desea Realmente Desea Eliminar este Ultimo Inhumado?...',mtWarning,[
             mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
   if gf = 1 then begin
     PROCESO1:=TADODataSet.Create(nil);
     PROCESO1.ConnectionString:=modulo2.Conexion;
     PROCESO1.Close;
     PROCESO1.CommandText:='exec EliminarUltimoInhumado 1 ';
     PROCESO1.Open;
     if PROCESO1.Fields[0].AsString = 'OK' then begin
      //Barra1.Panels[2].Text:='OK';
      messagedlg('EXITO al Eliminar el Ultimo Inhumado Cargado',mtConfirmation,[mbok,mbCancel],0);
      PC1.ActivePage:=PC1.Pages[0];
      id.Clear;
      orden.Clear;
      lafecha.Clear;
      nivel.Clear;
      posicion.Clear;
      objeto.Clear;
      formapago.Clear;
      observ.Clear;
      GUARDA.Enabled :=FALSE;
     end
     else begin
       messagedlg('ERROR al Eliminar el Inhumado seleccionado ',mtError,[mbok,mbCancel],0)
     end;
     PROCESO1.Free;
   end
   else begin
     messagedlg('Ud. acaba de Cancelar esta Acción. No se produjeron ningún cambio en la Base de Datos',mtWarning,[mbok],0);
   end;
end;

procedure TBorraUltimoInhum.JvBitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TBorraUltimoInhum.DBGrid1CellClick(Column: TColumn);
var gf:integer;
begin
 if not (Dataset.IsEmpty) then begin
  id.Text:=trim(DBGrid1.Fields[0].Text);
  observ.Text:=trim(DBGrid1.Fields[1].Text);
  orden.Text:=trim(DBGrid1.Fields[2].Text);
  objeto.Text:=trim(DBGrid1.Fields[3].Text);
  nivel.Text:=trim(DBGrid1.Fields[4].Text);
  posicion.Text:=trim(DBGrid1.Fields[5].Text);
  formapago.Text:=trim(DBGrid1.Fields[6].Text);
  lafecha.Text:=trim(DBGrid1.Fields[7].Text);
  edit1.Text:=trim(DBGrid1.Fields[8].Text);
  edit2.Text:=trim(DBGrid1.Fields[9].Text);
  guarda.Enabled:=true;
  guarda.SetFocus;
 end;
end;

end.

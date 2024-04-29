unit EliminaServiciosInhum;

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
  TBorraServicioInhum = class(TForm)
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
    GroupBox3: TGroupBox;
    Label4: TLabel;
    id: TEdit;
    ToolButton1: TToolButton;
    image1: TImage;
    RE5: TRichEdit;
    busca: TJvBitBtn;
    Label5: TLabel;
    Edit1: TEdit;
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
    procedure Coloca1(nro:byte);
    procedure FormActivate(Sender: TObject);
    procedure SALEClick(Sender: TObject);
    procedure GUARDAClick(Sender: TObject);
    procedure JvBitBtn3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure buscaClick(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
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
  BorraServicioInhum: TBorraServicioInhum;

implementation

uses Modulo,ClaseSistemas,ClaseFunciones;

{$R *.dfm}


procedure TBorraServicioInhum.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TBorraServicioInhum.FormActivate(Sender: TObject);
begin
 if not gh then begin
  gh:=true;
  PC1.ActivePage:=PC1.Pages[0];
  //Coloca1(1);
  GUARDA.Enabled:=false;
  grupovalor.Enabled:=false;
  EDIT1.SetFocus;
 end;
end;

procedure TBorraServicioInhum.Coloca1(nro:byte);
var t,y:integer;
    txt,sec:string;
    txtw:widestring;
    Funciones:TFuncionesVarias;
    Sistema:TSistemas;
    Param:TWideStrings;
    NroDni,NroCuif,nroid:variant;
begin
 if nro = 0 then begin
  //PROCESO1:=TADODataSet.Create(nil);
  //PROCESO1.ConnectionString:=modulo2.Conexion;
  // PROCESO1.Close;
  //PROCESO1.CommandText:='SELECT convert(char(10),DATEADD(DAY,-1,'+ chr(39) +  trim(fecha.Text) +chr(39)+'),103) as ger';
  //PROCESO1.Open;
  //FechaAnt:=PROCESO1.Fields[0].AsString ;
  //PROCESO1.Free;
 end;
 if nro=1 then begin
  DataSet.Free;
  DataSet:=TClientDataSet.Create(nil);
  ParcelasMantenimientoPrecios:=TParcelasMantenimientoPrecios.Create(nil);
  DataSource1.DataSet:=Dataset;
  ParcelasMantenimientoPrecios.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT dbo.ParcelasServicios.NroAccion, convert(char(10),Fecha,103) as FechaServicio,'
  +'dbo.ParcelasServicios.Nivel, dbo.ParcelasServicios.Posicion, dbo.ParcelasServicios.Objeto, Observaciones, '
  +'Tipoformapago , dbo.ParcelasServicios.IdServicio '
  +' FROM  dbo.ParcelasServicios WHERE (NroTipoServicio = 1) AND (dbo.ParcelasServicios.Anulado = 0)'
  +' AND (dbo.ParcelasServicios.Confirmado = 1) AND (dbo.ParcelasServicios.NroAccion = ' + trim(edit1.Text) + ')'
  +' ORDER BY IdServicio desc ';
  //// original
  //txtw:='SELECT inhum.NroOrdenServicio, dbo.ParcelasServicios.NroAccion, convert(char(10),Fecha,103) as FechaServicio,'
  //+' dbo.ParcelasServicios.Nivel, dbo.ParcelasServicios.Posicion, dbo.ParcelasServicios.Objeto, Observaciones, '
  //+'Tipoformapago , dbo.ParcelasServicios.IdServicio FROM  dbo.ParcelasServicios  '
  //+'inner join  ParcelasInhumados inhum on dbo.ParcelasServicios.NroAccion=inhum.NroAccion '
  //+'and dbo.ParcelasServicios.Nivel = inhum.Nivel and dbo.ParcelasServicios.Posicion = inhum.Posicion '
  //+' WHERE  (NroTipoServicio = 1) AND (dbo.ParcelasServicios.Anulado = 0) '
  //+' AND (dbo.ParcelasServicios.Confirmado = 1) AND (dbo.ParcelasServicios.NroAccion = ' + trim(edit1.Text) + ') ORDER BY IdServicio desc';
  if not ParcelasMantenimientoPrecios.Listar(txtw,DataSet) then
   messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
   if not DataSet.IsEmpty then begin
    dbgrid1.Columns[0].Width:=30;
    dbgrid1.Columns[1].Width:=80;
    dbgrid1.Columns[2].Width:=80;
    dbgrid1.Columns[3].Width:=90;
    dbgrid1.Columns[4].Width:=90;
    dbgrid1.Columns[5].Width:=70;
    dbgrid1.Columns[6].Width:=70;
    dbgrid1.Columns[7].Width:=60;
    //dbgrid1.Columns[8].Width:=90;
   end
   else begin
     messagedlg('No se encontro ningun Servicio de inhumacion para esta Accion',mtInformation,[mbok],0);
     edit1.SetFocus ;
   end;
 end;
 if nro=2 then begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT NombreFallecido ,Nivel ,Posicion FROM [Fn_VistaParcelasLosInhumados] '
  +'(null ,' + trim(edit1.Text) + ',null ,null ,null ,null ,null ,null  ,null ,0)'
  +' where (Nivel = ' + trim(nivel.Text) + ') and (Posicion =' + trim(posicion.Text) + ')' ;
  if not Funciones.Listar(txtw,DtCombo) then
   messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  if not DtCombo.IsEmpty then begin
    messagedlg('Atencion Servicio con un Inhumado Asignado.. '
    + CHR(13) + 'Inhumado: '  + trim(DtCombo.Fields[0].AsString)
    + CHR(13) + 'Nivel: ' + trim(DtCombo.Fields[1].AsString)
    + CHR(13) + 'Posicion: ' + trim(DtCombo.Fields[2].AsString)
    + CHR(13) + 'Para poder Eliminar este Servicio, primero Elimine al Inhumado ',mtInformation,[mbok],0);
    guarda.Enabled:=false;
   end
   else begin
    guarda.Enabled:=true;
    guarda.SetFocus;
   end;
  Funciones.Free;
 end;
end;

procedure TBorraServicioInhum.SALEClick(Sender: TObject);
begin
Close;
end;

procedure TBorraServicioInhum.GUARDAClick(Sender: TObject);
var gf,t:integer;
var m,a:boolean;
var txtw:widestring;
begin
 gf:=messagedlgpos('Desea Realmente Desea Eliminar este Servicio de Inhuamcion?...',mtWarning,[
           mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
 if gf = 1 then begin
   PROCESO1:=TADODataSet.Create(nil);
   PROCESO1.ConnectionString:=modulo2.Conexion;
   PROCESO1.Close;
   PROCESO1.CommandText:='exec EliminaServiciosInhumacion ' + trim(id.Text) ;
   PROCESO1.Open;
   if PROCESO1.Fields[0].AsString = 'PAGO' then begin
    messagedlg('ATENCION Imposible Eliminar este Servicio por poseer PAGOS registrados...',mtWarning,[mbok,mbCancel],0);
   end
   else begin
    if PROCESO1.Fields[0].AsString = 'OK' then begin
     messagedlg('EXITO al Eliminar el Servicio de Inhumacion seleccioando',mtConfirmation,[mbok,mbCancel],0);
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
      messagedlg('ERROR al Eliminar el Servicio de Inhumacion ',mtError,[mbok,mbCancel],0)
    end;
    PROCESO1.Free;
   end;
 end
 else begin
   messagedlg('Ud. acaba de Cancelar esta Acción. No se produjeron ningún cambio en la Base de Datos',mtWarning,[mbok],0);
 end;
end;

procedure TBorraServicioInhum.JvBitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TBorraServicioInhum.DBGrid1CellClick(Column: TColumn);
var gf:integer;
begin
 if not (Dataset.IsEmpty) then begin
  id.Text:=trim(DBGrid1.Fields[7].Text);
  //orden.Text:=trim(DBGrid1.Fields[0].Text);
  lafecha.Text:=trim(DBGrid1.Fields[1].Text);
  nivel.Text:=trim(DBGrid1.Fields[2].Text);
  posicion.Text:=trim(DBGrid1.Fields[3].Text);
  objeto.Text:=trim(DBGrid1.Fields[4].Text);
  formapago.Text:=trim(DBGrid1.Fields[6].Text);
  observ.Text:=trim(DBGrid1.Fields[5].Text);
  Coloca1(2);
  //guarda.Enabled:=true;
  //guarda.SetFocus;
 end;
end;

procedure TBorraServicioInhum.buscaClick(Sender: TObject);
begin
 if trim(EDIT1.Text)='' then begin
  messagedlg('ERROR!! No se ingreso ningun Nro de Accion para la busqueda!',mterror,[mbok],0);
  edit1.SetFocus;
 end
 else begin
  Coloca1(1);
 end;
end;

procedure TBorraServicioInhum.Edit1Exit(Sender: TObject);
begin
 busca.SetFocus;
end;

procedure TBorraServicioInhum.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
    Key := #0;
    busca.SetFocus;
  end
  else begin
    if ( StrScan('0123456789',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
     else Key := #0;
  end;
end;

end.

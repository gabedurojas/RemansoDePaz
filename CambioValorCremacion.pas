unit CambioValorCremacion;

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
  TCamValorCrema = class(TForm)
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
    grupovalor: TJvgGroupBox;
    Label27: TLabel;
    imp: TEdit;
    Label35: TLabel;
    FECHA: TJvDatePickerEdit;
    GroupBox3: TGroupBox;
    Shape2: TShape;
    Label55: TLabel;
    ToolButton1: TToolButton;
    JvBitBtn1: TJvBitBtn;
    RvS1: TRvSystem;
    image1: TImage;
    RE5: TRichEdit;
    PopupMenu1: TPopupMenu;
    ExportarDatos1: TMenuItem;
    procedure Coloca1(nro:byte);
    procedure FormActivate(Sender: TObject);
    procedure SALEClick(Sender: TObject);
    procedure GUARDAClick(Sender: TObject);
    procedure JvBitBtn3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FECHAExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FECHAKeyPress(Sender: TObject; var Key: Char);
    procedure impKeyPress(Sender: TObject; var Key: Char);
    procedure impExit(Sender: TObject);
    procedure RvS1Print(Sender: TObject);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure RvS1BeforePrint(Sender: TObject);
    procedure RvS1AfterPrint(Sender: TObject);
    procedure ExportarDatos1Click(Sender: TObject);
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
   // ParcelasUpdate:TParcelas;
   // Parcelas:TParcelas;
  end;

var
  CamValorCrema: TCamValorCrema;

implementation

uses Modulo,ClaseSistemas,ClaseFunciones;

{$R *.dfm}


procedure TCamValorCrema.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TCamValorCrema.FormActivate(Sender: TObject);
begin
 if not gh then begin
  PROCESO1:=TADODataSet.Create(nil);
  PROCESO1.ConnectionString:=modulo2.Conexion;
  gh:=true;
  PC1.ActivePage:=PC1.Pages[0];
  Coloca1(1);
  GUARDA.Enabled:=false;
  grupovalor.Enabled:=false;
 end;
end;

procedure TCamValorCrema.Coloca1(nro:byte);
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
  txtw:='SELECT  IdTipoServicioNivel as id, NroTipoServicio, Nivel, PrecioLista, PrecioContado, PrecioCheque, '
  +' convert(char(10),Vigencia,103) as Vigencia,Activo FROM TiposServiciosNivel WHERE (NroTipoServicio = 7) ORDER BY IdTipoServicioNivel desc' ;
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
 end;
 if nro=2 then begin
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
 end;
end;

procedure TCamValorCrema.SALEClick(Sender: TObject);
begin
Close;
end;

procedure TCamValorCrema.GUARDAClick(Sender: TObject);
var gf,t:integer;
var m,a:boolean;
var txtw:widestring;
begin
 gf:=messagedlgpos('Desea Realmente Incoporar un Nuevo Valor de la Cremacion?...',mtWarning,[
             mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
 if gf = 1 then begin
  PROCESO1.Close;
  PROCESO1.CommandText:='exec SPC_TiposServiciosCremacionInsertar ' + trim(imp.Text) + ',' + chr(39) + trim(fecha.Text) + chr(39); //trim(cuif.Text) //
  PROCESO1.Open;
  if PROCESO1.Fields[0].AsString = 'OK' then begin
   messagedlg('EXITO al Guardar el VALOR de la CREMACION...',mtConfirmation,[mbok],0);
   Coloca1(1);
   guarda.Enabled :=false;
   grupovalor.Enabled:=false;
  end
  else begin
   messagedlg('Error al Guardar el VALOR de la CREMACION. Consulte con un Administrador',mtError,[mbok],0);
  end;
 end
 else begin
  messagedlg('Ud. acaba de Cancelar esta Acci�n. No se produjeron ning�n cambio en la Base de Datos',mtWarning,[mbok],0);
 end;
end;

procedure TCamValorCrema.JvBitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TCamValorCrema.DBGrid1CellClick(Column: TColumn);
var gf:integer;
begin
 if not (Dataset.IsEmpty) then begin
  if (trim(DBGrid1.Fields[7].Text) = 'False')  then begin
   gf:=messagedlgpos('ATENCION!! Esta Valor NO es el Actual, desea Modificar sus Valores??...',mtWarning,[
           mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
   if gf = 1 then begin
    guarda.Enabled:=false;
    grupovalor.Enabled:=false;
    DBGrid1.SetFocus;
   end
   else begin
    grupovalor.Enabled:=false;
    guarda.Enabled:=false;
   end;
  end
  else begin
   guarda.Enabled:=true;
   grupovalor.Enabled:=true;
   fecha.SetFocus;
  end;
 end;
end;

procedure TCamValorCrema.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
 if (trim(DBGrid1.Fields[7].Text) = 'True')  then begin
  DBGrid1.Canvas.Brush.Color:=clLime;
  DBGrid1.Canvas.FillRect(Rect);
  DBGrid1.Canvas.Font.Color:= clBlack;
 end;
 if (trim(DBGrid1.Fields[7].Text) = 'False') then begin
  DBGrid1.Canvas.Brush.Color:=clwindow;
  DBGrid1.Canvas.FillRect(Rect);
  DBGrid1.Canvas.Font.Color:= clBlack;
 end;
 DBGrid1.DefaultDrawColumnCell(Rect,Datacol,Column,State);
end;

procedure TCamValorCrema.FECHAExit(Sender: TObject);
var fec:Tdatetime;
begin
  try
   fec:=strtodate(trim(FECHA.Text));
  except
    messagedlgpos('La fecha es Erronea!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
    FECHA.SetFocus;
  end;
end;

procedure TCamValorCrema.FECHAKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  imp.SetFocus;
end;
end;

procedure TCamValorCrema.impKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
    Key := #0;
    guarda.SetFocus;
  end
  else begin
    if ( StrScan('0123456789.',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
     else Key := #0;
  end;
end;

procedure TCamValorCrema.impExit(Sender: TObject);
begin
 if (trim(imp.Text)='') or (trim(imp.Text)='0') then imp.Text:='00.00';
 if trim(imp.Text)='00.00' then begin
  messagedlg('ERROR!! EL Importe de la Cremacion NO puede ser Cero(0)!!',mterror,[mbok],0);
  imp.SetFocus;
 end;
end;

procedure TCamValorCrema.RvS1Print(Sender: TObject);
var posfx,posfy,final,salto:double;
var t,k,y,hoja:integer;
var txt,val:string;
var pso:boolean;
var sd,sd1,posn,posw:double;

   Function Logo(posx,posy:double;vaf:integer):double;
   var Imagen2:TBitMap;
       Fuente,PathLogo:string;
       Tamanio:integer;
   begin
    with RvS1 do begin
     Imagen2 := TBitMap.Create;
     Imagen2.Assign(image1.Picture.Graphic);
     BaseReport.PrintBitmapRect(posy+5,posy+7,posy+57,posy+18,Imagen2);
     Imagen2.Free;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+34);
     BaseReport.SetFont(Fuente,Tamanio);
     BaseReport.FontColor:=clBlack;
     BaseReport.SetFont('Arial',8);
     BaseReport.PrintXY(posfx+150,posfy+13,'Fecha Imp.: ' + LeftStr(Fec_System(),10));
     BaseReport.PrintXY(posfx+150,posfy+18,'N� Pagina ' + inttostr(hoja) + '  -  UsuImp ' + inttostr(modulo2.nro_usu));
     BaseReport.SetFont('Arial Black',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+34);
     BaseReport.PrintXY(posx+5,posy+24,'LISTADO DE HISTORICO DE VALORES POR SERICIO DE CREMACION'); // + '  -----> TOTAL ACCIONES: ' + TRIM(LABEL3.Caption));
     Logo:=posy+27;
    end;
   end;

   Function Mostrar1(posx,posy:double):double;
   var t,y:integer;
   begin
    with Rvs1 do begin
     BaseReport.SetFont('Arial',8);
     posy:=posy + 5;
     BaseReport.Rectangle(posx+4,posy,posx+200,posy+5);
     BaseReport.Rectangle(posx+40,posy,posx+200,posy+5);
     BaseReport.Rectangle(posx+80,posy,posx+200,posy+5);
     BaseReport.Rectangle(posx+110,posy,posx+200,posy+5);
     BaseReport.Rectangle(posx+140,posy,posx+200,posy+5);     //
     BaseReport.Rectangle(posx+180,posy,posx+200,posy+5);
     //BaseReport.Rectangle(posx+102,posy,posx+200,posy+5);
     //BaseReport.Rectangle(posx+120,posy,posx+200,posy+5);
     //BaseReport.Rectangle(posx+143,posy,posx+200,posy+5);
     BaseReport.PrintXY(posx+5,posy+4,'Nivel');
     BaseReport.PrintXY(posx+41,posy+4,'PrecioLista');
     BaseReport.PrintXY(posx+81,posy+4,'PrecioContado');
     BaseReport.PrintXY(posx+111,posy+4,'PrecioCheque');
     BaseReport.PrintXY(posx+141,posy+4,'Vigencia');    //
     BaseReport.PrintXY(posx+181,posy+4,'Activo');
    // BaseReport.PrintXY(posx+103,posy+4,'Transferida');
    // BaseReport.PrintXY(posx+121,posy+4,'Cant.Inhumados');
    // BaseReport.PrintXY(posx+144,posy+4,'Observaciones');
    end;
   END;

begin
 try
  posfx:=5.5;
  posfy:=5;
  salto:=4;
  final:=0;
  hoja:=1;
  posfy:=Logo(posfx,posfy,hoja)+ salto;   // llamamos al encabezado
  posfy:=Mostrar1(posfx,posfy)+ salto;
  posw:=posfy;
  sd1:=posn;
  posfy:=posfy+14;
  for t:=1 to DataSource1.dataset.RecordCount do begin
   DataSource1.dataset.RecNo:=t;
   posfy:=posfy-0.5;
   RVS1.BaseReport.SetFont('Arial',8);
   RVS1.BaseReport.PrintXY(posfx+6,posfy,trim(DataSource1.dataset.Fields[2].AsString));
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft('$ ' + trim(DataSource1.dataset.Fields[3].AsString),posfx+41);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft('$ ' + trim(DataSource1.dataset.Fields[4].AsString),posfx+81);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft('$ ' + trim(DataSource1.dataset.Fields[5].AsString),posfx+111);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(DataSource1.dataset.Fields[6].AsString),posfx+141);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(DataSource1.dataset.Fields[7].AsString),posfx+181);
   //RVS1.BaseReport.MoveTo(posw,posfy);
   //RVS1.BaseReport.PrintLeft(trim(DataSource1.dataset.Fields[6].AsString),posfx+103);
   //RVS1.BaseReport.MoveTo(posw,posfy);
   //RVS1.BaseReport.PrintLeft(trim(DataSource1.dataset.Fields[7].AsString),posfx+121);
   //RVS1.BaseReport.MoveTo(posw,posfy);
   //RVS1.BaseReport.PrintLeft(trim(DataSource1.dataset.Fields[8].AsString),posfx+144);
   posfy:=posfy+0.5;
   // hacemos la lineas internas de las grilla
   RVS1.BaseReport.Rectangle(posfx+4,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+40,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+80,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+110,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+140,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+180,posfy,posfx+200,posfy-4);
   //RVS1.BaseReport.Rectangle(posfx+102,posfy,posfx+200,posfy-4);
   //RVS1.BaseReport.Rectangle(posfx+120,posfy,posfx+200,posfy-4);
   //RVS1.BaseReport.Rectangle(posfx+143,posfy,posfx+200,posfy-4);
   posfy:=posfy + salto;
   if posfy > 260 then begin
    posfx:=5.5;
    posfy:=5;
    hoja:=hoja+1;
    RvS1.BaseReport.NewPage;
    posfy:=Logo(posfx,posfy,hoja)+ salto;   // llamamos al encabezado
    posfy:=Mostrar1(posfx,posfy)+ salto;
    final:=Mostrar1(posfx,posfy)+ salto + 14;
    posfy:=final;
    pso:=false;
   end;
  end;
 except
 end;
end;

procedure TCamValorCrema.JvBitBtn1Click(Sender: TObject);
begin
RVS1.Execute;
end;

procedure TCamValorCrema.RvS1BeforePrint(Sender: TObject);
begin
Coloca1(2);
end;

procedure TCamValorCrema.RvS1AfterPrint(Sender: TObject);
begin
Coloca1(1);
end;

procedure TCamValorCrema.ExportarDatos1Click(Sender: TObject);
var texto:widestring;
var txt:string;
var t,y:integer;
begin
  Coloca1(2);
  RE5.Clear;
  texto:='';
  for t:=1 to DataSource1.DataSet.FieldCount-1 do begin
  texto:=texto + DataSource1.DataSet.Fields[t].FieldName + chr(9);
  end;
  RE5.Lines.Add(texto);
  for y:=1 to DataSource1.DataSet.RecordCount do begin
   DataSource1.DataSet.RecNo:=y;
   texto:='';
  for t:=1 to DataSource1.DataSet.FieldCount-1 do begin
    texto:=texto + DataSource1.DataSet.Fields[t].AsString + chr(9);
  end;
  RE5.Lines.Add(texto);
  end;
  RE5.SelectAll;
  RE5.CopyToClipboard;
  messagedlgpos('Se Copiaron los Datos son Exito',mtwarning,[mbok],0,screen.Width div 3,screen.Height div 3);
  Coloca1(1);
end;

end.

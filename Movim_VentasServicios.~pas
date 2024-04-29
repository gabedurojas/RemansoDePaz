unit Movim_VentasServicios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExButtons, JvBitBtn, StdCtrls, Buttons, ComCtrls, ToolWin,
  Grids, DBGrids, ExtCtrls, Mask, JvgGroupBox, DBCtrls, Unidad, DBClient,
  WSDLIntf, ClaseFunciones, StrUtils, DB, ClaseSistemas, ImgList, LMDCustomButton,
   LMDButton, JvSimLogic,
  ADODB,JvExGrids, JvStringGrid, RpDefine, RpBase, RpSystem;

type LosEdit = class(TEdit);
type HackTable = class(TADOTable);
type
  TMov_MantServ = class(TForm)
    Barra1: TStatusBar;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    JvBitBtn1: TJvBitBtn;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    Label15: TLabel;
    Bevel1: TBevel;
    Buscar: TJvBitBtn;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ImageList1: TImageList;
    anio: TComboBox;
    mes: TComboBox;
    print: TButton;
    RvS: TRvSystem;
    T8: TClientDataSet;
    Image1: TImage;
    DataSource2: TDataSource;
    exporta: TButton;
    RE5: TRichEdit;
    GroupBox2: TGroupBox;
    DBGrid2: TDBGrid;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure BuscarClick(Sender: TObject);
    procedure anioExit(Sender: TObject);
    procedure anioKeyPress(Sender: TObject; var Key: Char);
    procedure mesKeyPress(Sender: TObject; var Key: Char);
    procedure mesExit(Sender: TObject);
    procedure printClick(Sender: TObject);
    procedure RvSPrint(Sender: TObject);
    procedure exportaClick(Sender: TObject);
  private
    IdCombos:array of array of string;
    IdPagos:array of array of string;
    PosSelec,PosPv:integer;
    DataSet0,DataSet1,DtCombo,DtComboComp,DataSet2:TClientDataSet;
    Funciones:TFuncionesVarias;
    Sistemas:TSistemas;
    habventana:boolean;
    FechaActual,MotAnula,FecAnula,elbanco,elcheque,bank,letracheque,cheque,elmes,elanio:string;
    TiposFormularios,TiposObjetos,TiposComprobantes:Unidad.TablaXML;{ Private declarations }
  public
    gh:boolean;{ Public declarations }
    PosH:Array [0..7] of Double;//Posiciones
    Camp:Array [0..7] of Integer;//Campos a Tomar en cuenta
    TxtCamp:Array [0..7] of String;//Textos de los Campos a Tomar en cuenta
  end;

var
  Mov_MantServ: TMov_MantServ;

implementation

uses Modulo, Busqueda, Anula_Generica,AM_TalonCobro,DatosCheque,SelecPagos;

{$R *.dfm}

procedure TMov_MantServ.FormActivate(Sender: TObject);
begin
if not(gh) then begin
  gh:=true;
  setlength(IdCombos,5);
  PosPv:=0;
  FechaActual:=LeftStr(Fec_System(),10);
  PC1.ActivePage:=PC1.Pages[0];
  ElMes:=strcut_midle(FechaActual,4,5);
  ElAnio:=RightStr(FechaActual,4);
  print.Enabled:=false;
  exporta.Enabled:=false;
  anio.SetFocus;
  Coloca1(0);
end;
end;

procedure TMov_MantServ.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TMov_MantServ.Coloca1(nro:byte);
var t,ta,tn,x:integer;
    NroDni,ValNull,SubCob:variant;
    txt,txt1,NroCompr,anulados:string;
    txtw:widestring;
    tot:real;
begin
if nro=0 then begin
  anio.Clear;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT DISTINCT LEFT(Periodo, 4) AS Expr1 FROM PeriodosVencimientos WHERE (Periodo <= ' + ElAnio + elMES + ') ORDER BY Expr1 DESC';
  if not Funciones.Listar(txtw,DtCombo) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
    for t:=1 to DtCombo.RecordCount  do begin
      DtCombo.RecNo:=t;
      anio.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
    end;
  end;
  Funciones.Free;
  anio.ItemIndex:=0;
end;
if nro=4 then  begin
  DtComboComp.Free;
  DtComboComp:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT ''VENTAS'' as TipoMovimiento,NroAccion,'
  + ' case when TipoFormaPago IS null then ''TRANSFERENCIA'' else TipoFormaPago end as Detalle,CantCuotas,'
  + ' Fecha,ValorCuota,case when TipoFormaPago IS null then ''CONTADO'' else TipoFormaPago end as Tipoformapago,'
  + ' Observaciones FROM  ParcelasVentas '
  + ' WHERE  (YEAR(Fecha) = '+ trim(anio.Text)+') AND (MONTH(Fecha) = '+ trim(mes.Text)+') AND (Anulado = 0) '
  + ' union '
  + ' SELECT ''SERVICIOS'' as TipoMovimiento, NroAccion,TiposServicios.Detalle,'
  + ' CantCuotas, Fecha, ValorCuota,Tipoformapago, '
  + ' Observaciones FROM  ParcelasServicios '
  + ' inner join TiposServicios on ParcelasServicios.IDTipoServicioNivel = TiposServicios.NroTipoServicio '
  + ' WHERE (YEAR(Fecha) = '+ trim(anio.Text)+') AND (MONTH(Fecha) = '+ trim(mes.Text)+') AND (Anulado = 0)';
  if not  Funciones.Listar(txtw,DtComboComp) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
end;
if nro=5 then begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  DataSource2.DataSet:=DtCombo;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT ''VENTAS'' as TipoMovimiento, NroAccion, Fecha, TiposServicios.Detalle, Nivel, Posicion, '
  + ' Total,CantCuotas,ValorCuota,Observaciones,Tipoformapago FROM  ParcelasServicios'
  + ' inner join TiposServicios on ParcelasServicios.IDTipoServicioNivel = TiposServicios.NroTipoServicio'
  + ' WHERE (YEAR(Fecha) = '+ trim(anio.Text)+') AND (MONTH(Fecha) = '+ trim(mes.Text)+') AND (Anulado = 0)';
  if not  Funciones.Listar(txtw,DtCombo) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if not DtCombo.IsEmpty then begin
    edit1.Text:=IntToStr(DtCombo.RecordCount);
    print.Enabled:=true;
    exporta.Enabled:=true;
  end
  else begin
    IF application.MessageBox('NO existen Servicios para este Periodo','Advertencia'
            ,mb_OKcancel+mb_IconHAnd) = IdOk then begin
      print.Enabled:=false;
      exporta.Enabled:=false;
      edit1.Clear;
    end;
  end;
end;
if nro = 6 then begin
  DataSet0.Free;
  DataSet0:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=DataSet0;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT ''SERVICIOS'' as TipoMovimiento,NroAccion,Fecha,'
  + ' case when TipoFormaPago IS null then ''TRANSFERENCIA'' else TipoFormaPago end as Detalle,'
  + ' PrecioReal,MontoPagado AS Entrega,DeudaPendiente,Donacion,Financiado,CantCuotas,ValorCuota, Observaciones,'
  + ' case when TipoFormaPago IS null then ''CONTADO'' else TipoFormaPago end as Tipoformapago FROM  ParcelasVentas '
  + ' WHERE  (YEAR(Fecha) = '+ trim(anio.Text)+') AND (MONTH(Fecha) = '+ trim(mes.Text)+') AND (Anulado = 0)';
  if not  Funciones.Listar(txtw,DataSet0) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if not DataSet0.IsEmpty then begin
    edit2.Text:=IntToStr(DataSet0.RecordCount);
    print.Enabled:=true;
    exporta.Enabled:=true;
  end
  else begin
    IF application.MessageBox('NO existen Ventas Existentes para este Periodo','Advertencia'
            ,mb_OKcancel+mb_IconHAnd) = IdOk then begin
      print.Enabled:=false;
      exporta.Enabled:=false;
      edit2.Clear;
    end;
  end;
end;
end;

procedure TMov_MantServ.JvBitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TMov_MantServ.BuscarClick(Sender: TObject);
begin
Coloca1(4);
Coloca1(5);
Coloca1(6);
end;

procedure TMov_MantServ.anioExit(Sender: TObject);
begin
if anio.ItemIndex < 0 then begin
  messagedlg('ERROR!! Año fuera de Rango!!',mterror,[mbok],0);
  anio.SetFocus;
end;
end;

procedure TMov_MantServ.anioKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  mes.SetFocus;
end;
end;

procedure TMov_MantServ.mesKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  Buscar.SetFocus;
end;
end;

procedure TMov_MantServ.mesExit(Sender: TObject);
begin
if mes.ItemIndex < 0 then begin
  messagedlg('ERROR!! Mes fuera de Rango!!',mterror,[mbok],0);
  mes.SetFocus;
end;
end;

procedure TMov_MantServ.printClick(Sender: TObject);
begin
rvs.Execute;
end;

procedure TMov_MantServ.RvSPrint(Sender: TObject);
var posfx,posfy,final,salto:double;
var t,y,hoja,nro:integer;
var txt:string;
var pso:boolean;

 Function Logo(posx,posy:double;vaf:integer):double;
   var Imagen1,MarcaAgua:TBitMap;
       PathLogo,PathLogo1:string;
   begin
   with RvS do begin
     //Pegamos el Logo en el reporte
     Imagen1 := TBitMap.Create;
     PathLogo:=modulo2.path_todo + '\Imagenes\' + modulo2.INI1.ReadString('Resumen Caja','Imagen1','');
     if FileExists(PathLogo) then begin
       Image1.Picture.LoadFromFile(PathLogo);
       Imagen1.Assign(Image1.Picture.Graphic);
       BaseReport.PrintBitmapRect(posx+6,posy+2,posx+30,posy+22,Imagen1);
     end;
     Imagen1.Free;

     {Colocamos el título}
     BaseReport.Rectangle(posx+2,posy+1,posx+275,posy+23);
     BaseReport.SetFont('Arial Black',9);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+34,posy+5,'CARMELO MONTE S.A. Servicios & Mandatos');
     BaseReport.SetFont('Arial Black',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+34,posy+9,modulo2.INI1.ReadString('Resumen Planillas','Titulo2',''));
     BaseReport.SetFont('Arial',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+149,posy+22,'Pág.: ' + inttostr(vaf));
     BaseReport.PrintXY(posx+160,posy+22,'Usu Imp.: ' + inttostr(modulo2.nro_usu) + ' - Fec. Imp.:' + strcut(Fec_System(),10));
     BaseReport.SetFont('Arial',10);
     BaseReport.FontColor:=clBlack;
     Rvs.BaseReport.SetFont('Arial Black',9);
     Rvs.BaseReport.FontColor:=clBlack;
     Rvs.BaseReport.PrintXY(posfx+34,posfy+17,'LISTA DE "VENTAS Y SERIVIOS"  - PERIODO: ' + trim(anio.Text)+ trim(mes.Text));
     Logo:=posy+19;
   end;
   end;

  Function GrillaCabecera(posx,posy:double;texto:string):double;
  var t:integer;
  begin
     with RvS do begin
      BaseReport.Rectangle(posx+2,posy,posx+275,posy+5);
      for t:=1 to length(Camp)-1 do begin
      BaseReport.Rectangle(posx + PosH[t]-2,posy,posx + PosH[t]-2,posy+5);
      end;
     end;
      Rvs.BaseReport.SetFont('Arial Black',6);
      Rvs.BaseReport.FontColor:=clBlack;
      for t:=0 to length(Camp)-1 do begin
        Rvs.BaseReport.PrintXY(posx + PosH[t],posy+4,TxtCamp[t]);
     end;
  Result:=posy+5;
  end;

  /// Grilla Detalle
  Function GrillaDetalle(posx,posy:double;texto:string):double;
  var t:integer;
  begin
  Rvs.BaseReport.SetFont('Arial',5);
  Rvs.BaseReport.FontColor:=clBlack;
    for t:=0 to length(Camp)-1 do
     Rvs.BaseReport.PrintXY(posx + PosH[t],posy+4,HackTable(FindComponent(texto)).Fields[Camp[t]].AsString);
    Result:=posy+4;
  end;

  //// Grilla Recuadro
  Function GrillaRecuadro(posx,posy,posy2:double):double;
  var t:integer;
  begin
  with RvS do begin
    BaseReport.Rectangle(posx+2,posy,posx+275,posy2);
    for t:=1 to length(Camp)-1 do begin
      BaseReport.Rectangle(posx + PosH[t]-2,posy,posx + PosH[t]-2,posy2);
    end;
  Result:=posy+4;
  end;
  end;

begin
try
  posfx:=1.5;posfy:=2;
  salto:=4;final:=0;hoja:=1;
  posfy:=Logo(posfx,posfy,hoja);

  Camp[0]:=0; Camp[1]:=1; Camp[2]:=2;  Camp[3]:=3;
  Camp[4]:=4; Camp[5]:=5; Camp[6]:=6;  Camp[7]:=7;

  TxtCamp[0]:='Movimiento';  TxtCamp[1]:='NroAccion'; TxtCamp[2]:='Detalle';  TxtCamp[3]:='CantCuotas';
  TxtCamp[4]:='Fecha';   TxtCamp[5]:='ValorCuota';    TxtCamp[6]:='Tipoformapago';     TxtCamp[7]:='Observaciones';

  PosH[0]:=3;   PosH[1]:=20;  PosH[2]:=36;  PosH[3]:=70;
  PosH[4]:=86;  PosH[5]:=102;  PosH[6]:=117; PosH[7]:=150;

  T8.Close;
  T8.CloneCursor(DtComboComp,false,true);
  txt:='T8';
  final:=GrillaCabecera(posfx,posfy+5,txt);
  posfy:=final;
  pso:=false;
  for y:=1 to HackTable(findcomponent(txt)).RecordCount do begin
    HackTable(FindComponent(txt)).RecNo:=y;
    if pso then Rvs.BaseReport.Rectangle(posfx+2,posfy+1,posfx+275,posfy+1)
    else pso:=true;
    posfy:=GrillaDetalle(posfx,posfy,txt);
    if posfy > 180 then begin
      posfy:=GrillaRecuadro(posfx,final,posfy+2);
      posfx:=1.5;
      posfy:=2;
      hoja:=hoja+1;
      RvS.BaseReport.NewPage;
      posfy:=Logo(posfx,posfy,hoja);
      final:=GrillaCabecera(posfx,posfy+5,txt);
      posfy:=final;pso:=false;
    end;
  end;
  if pso then posfy:=GrillaRecuadro(posfx,final,posfy+2);
  except
end;
end;

procedure TMov_MantServ.exportaClick(Sender: TObject);
var texto:widestring;
var txt:string;
var t,y:integer;
begin
RE5.Clear;
texto:='';

for t:=0 to DtCombo.FieldCount-1 do begin
  texto:=texto + DtCombo.Fields[t].FieldName + chr(9);
end;
RE5.Lines.Add(texto);
for y:=1 to DtCombo.RecordCount do begin
  DtCombo.RecNo:=y;
  texto:='';
  for t:=0 to DtCombo.FieldCount-1 do begin
    texto:=texto + DtCombo.Fields[t].AsString + chr(9);
  end;
  RE5.Lines.Add(texto);
end;

texto:='';
RE5.Lines.Add('');
RE5.Lines.Add('');

for t:=0 to DataSet0.FieldCount-1 do begin
  texto:=texto + DataSet0.Fields[t].FieldName + chr(9);
end;
RE5.Lines.Add(texto);
for y:=1 to DataSet0.RecordCount do begin
  DataSet0.RecNo:=y;
  texto:='';
  for t:=0 to DataSet0.FieldCount-1 do begin
    texto:=texto + DataSet0.Fields[t].AsString + chr(9);
  end;
  RE5.Lines.Add(texto);
end;

RE5.SelectAll;
RE5.CopyToClipboard;
messagedlgpos('Se Copiaron los Datos al Clipboard',mtwarning,[mbok],0,screen.Width div 3,screen.Height div 3);
end;



end.  begin

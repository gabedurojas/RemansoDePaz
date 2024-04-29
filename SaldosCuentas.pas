unit SaldosCuentas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, LMDCustomControl, LMDCustomPanel,DBCtrls,
  LMDCustomBevelPanel, LMDCaptionPanel, LMDCustomButton, LMDButton, DB,
  ADODB, ComCtrls, Grids, DBGrids, ImgList, RpRave, RpBase, RpSystem,
  RpDefine, RpCon, RpConDS,StrUtils,DBClient,Unidad, JvExGrids,
  JvStringGrid, JvExButtons, JvBitBtn, Buttons, ToolWin, ExtCtrls;

  {   Buttons, ExtCtrls,
  WSDLIntf, Unidad, JvExGrids, JvStringGrid, JvExDBGrids, JvDBGrid,
  JvExButtons, JvBitBtn, ToolWin;}
type HackTable = class(TADOTable);
type THackStringGrid = class(TStringGrid);
type
  TCierreCuenta = class(TForm)
    GroupBox1: TGroupBox;
    Label42: TLabel;
    Cuenta: TComboBox;
    BUSCAR: TLMDButton;
    LMDCaptionPanel1: TLMDCaptionPanel;
    Label1: TLabel;
    Label2: TLabel;
    fechad: TMaskEdit;
    fechah: TMaskEdit;
    StatusBar1: TStatusBar;
    ImageList1: TImageList;
    todos: TRichEdit;
    RvS: TRvSystem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox2: TGroupBox;
    corte: TLMDButton;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    naci: TMaskEdit;
    tdebe: TEdit;
    thaber: TEdit;
    tsaldo: TEdit;
    Label7: TLabel;
    obs: TEdit;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    ImpPDF: TBitBtn;
    ToolButton1: TToolButton;
    imprime: TJvBitBtn;
    ToolButton2: TToolButton;
    Exporta: TJvBitBtn;
    ToolButton3: TToolButton;
    JvBitBtn2: TJvBitBtn;
    grilla2: TJvStringGrid;
    grilla1: TJvStringGrid;
    Image1: TImage;
    DataSource1: TDataSource;
    T8: TClientDataSet;
    procedure Coloca1(nro:byte;valor:string);
    procedure FormActivate(Sender: TObject);
    procedure fechadExit(Sender: TObject);
    procedure CuentaKeyPress(Sender: TObject; var Key: Char);
    procedure fechadKeyPress(Sender: TObject; var Key: Char);
    procedure fechahKeyPress(Sender: TObject; var Key: Char);
    procedure BUSCARClick(Sender: TObject);
    procedure fechahExit(Sender: TObject);
    procedure CuentaChange(Sender: TObject);
    procedure CuentaExit(Sender: TObject);
    procedure ImprimeClick(Sender: TObject);
    procedure RvSPrint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure corteClick(Sender: TObject);
    procedure naciExit(Sender: TObject);
    procedure naciKeyPress(Sender: TObject; var Key: Char);
    procedure PageControl1Change(Sender: TObject);
    procedure obsKeyPress(Sender: TObject; var Key: Char);
    procedure ExportaClick(Sender: TObject);
    procedure JvBitBtn2Click(Sender: TObject);
    procedure grilla1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
  private
    { Private declarations }
  public
    debe,haber,saldos:string;
    filas:integer;
    NroCuenta:string;
    gh:boolean;
    PosError:byte;
    PathFoto:widestring;{ Public declarations }
    PosH1:Array [0..5] of Double;//Posiciones
    Camp1:Array [0..5] of Integer;//Campos a Tomar en cuenta
    TxtCamp1:Array [0..5] of String;//Textos de los Campos a Tomar en cuenta
    PosH:Array [0..8] of Double;//Posiciones
    Camp:Array [0..8] of Integer;//Campos a Tomar en cuenta
    TxtCamp:Array [0..8] of String;//Textos de los Campos a Tomar en cuenta
      IdCombos:array of array of string;
    DataSet,DtCombo:TClientDataSet; //declaro el DAtaset de los Combobox
    DSGral:TClientDataSet;//declaro el DAtaset de la grilla

    { Public declarations }
  end;

var
  CierreCuenta: TCierreCuenta;

implementation

uses Modulo,ClaseFunciones;

{$R *.dfm}

procedure TCierreCuenta.Coloca1(nro:byte;valor:string);
var t,y:integer;
    usu:variant;
    tdebe,thaber,tsaldo,fdesde,fhasta:string;
    Funciones:TFuncionesVarias;
    txtw:widestring;
begin
if nro=1 then begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=DtCombo;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if not Funciones.Listar('SELECT Orden,FechaMov,Concepto,Cantidad,SubTipoMov,Importe,Entrada,'
  + 'Debe,Haber,Saldo FROM SaldoCaja (' +  chr(39) + trim(fechad.Text) + chr(39)
    + ',' + chr(39) + trim(fechah.Text) + chr(39)+')',DtCombo) then
   messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
   Funciones.Free;
   for t:=0 to grilla2.ColCount-1 do
    for y:=1 to grilla2.RowCount-1 do grilla2.Cells[t,y]:='';
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    grilla2.RowCount:=t+1;
    grilla2.Cells[0,t]:=trim(DtCombo.Fields[0].AsString);
    grilla2.Cells[1,t]:=trim(DtCombo.Fields[1].AsString);
    grilla2.Cells[2,t]:=trim(DtCombo.Fields[2].AsString);//trim(DtCombo.Fields[3].AsString);
    grilla2.Cells[3,t]:=trim(DtCombo.Fields[3].AsString);
    grilla2.Cells[4,t]:=trim(DtCombo.Fields[4].AsString);
    grilla2.Cells[5,t]:='$ ' + trim(DtCombo.Fields[5].AsString);
    grilla2.Cells[6,t]:=trim(DtCombo.Fields[6].AsString);
    grilla2.Cells[7,t]:='$ ' + trim(DtCombo.Fields[7].AsString);
    grilla2.Cells[8,t]:='$ ' + trim(DtCombo.Fields[8].AsString);
    grilla2.Cells[9,t]:='$ ' + trim(DtCombo.Fields[9].AsString);
  end;
end;
if nro=2 then begin
  CUENTA.Clear;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT CodUsu, Nombre FROM VLosUsuarios';
  if not Funciones.Listar(txtw,DtCombo) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
    SetLength(IdCombos[0],DtCombo.RecordCount);
    for t:=1 to DtCombo.RecordCount  do begin
      DtCombo.RecNo:=t;
      CUENTA.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
      IdCombos[0,t-1]:=DtCombo.Fields[0].AsString;
    end;
  end;
  Funciones.Free;
  CUENTA.ItemIndex:=0;
end;
if nro=3 then begin
  DataSet.Free;
  Dataset:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  usu:=IdCombos[0,cuenta.ItemIndex];
  //usu:=99;
  if not Funciones.Listar('SELECT 	Nro,Concepto,Detalle,Cantidad,ImporteTotal,Signo FROM FnCierreCajaxFechasTotal (' +  chr(39) + trim(fechad.Text) + chr(39)
  + ',' + chr(39) + trim(fechah.Text) + chr(39)  + ',' + usu + ')',DataSet) then
  //+ ',' + chr(39) + trim(fechah.Text) + chr(39)  + ',99)',DataSet) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  for t:=0 to grilla1.ColCount-1 do
    for y:=1 to grilla1.RowCount-1 do grilla1.Cells[t,y]:='';
   for t:=1 to DataSet.RecordCount  do begin
    DataSet.RecNo:=t;
    grilla1.RowCount:=t+1;
    grilla1.Cells[0,t]:=trim(DataSet.Fields[0].AsString);
    grilla1.Cells[1,t]:=trim(DataSet.Fields[1].AsString);
    grilla1.Cells[2,t]:=trim(DataSet.Fields[2].AsString);//trim(DtCombo.Fields[3].AsString);
    grilla1.Cells[3,t]:=trim(DataSet.Fields[3].AsString);
    grilla1.Cells[4,t]:='$ ' + trim(DataSet.Fields[4].AsString);
    grilla1.Cells[5,t]:=trim(DataSet.Fields[5].AsString);
  end;
end;
if nro=4 then begin
{  modulo2.Com1.CommandText:='select idcorte,codigo,fecha_a '
    + ' from CajaPeriodoSaldos where (Codigo =' + el_codigo(1) + ')'
    + ' and  (CONVERT(char(10), Fecha_A, 103)=' + chr(39) + trim(naci.text) + chr(39) + ') and (activo=1);';
  modulo2.BarData.Recordset:=modulo2.Com1.Execute;
  modulo2.BarData.Open;
  filas:=modulo2.BarData.RecordCount;}
end;
if nro=5 then begin
{  modulo2.Com1.CommandText:='select sum(DEBE),sum(HABER),sum(HABER)-sum(DEBE) as saldo '
    + 'from SaldoCaja (' + chr(39) +  trim(fechad.Text) + chr(39) + ',' + chr(39) +  trim(fechah.Text) + chr(39) + ', '
    + el_codigo(1) + ') where (orden > 1) ;';
  modulo2.BarData.Recordset:=modulo2.Com1.Execute;
  modulo2.BarData.Open;
  debe:=modulo2.BarData.Fields[0].AsString;
  haber:=modulo2.BarData.Fields[1].AsString;
  saldos:=modulo2.BarData.Fields[2].AsString; }
end;
end;

procedure TCierreCuenta.FormActivate(Sender: TObject);
begin
if not(gh) then begin
  PageControl1.ActivePage:=PageControl1.Pages[0];
  gh:=true;
  setlength(IdCombos,1);
  coloca1(2,'');
  fechad.Text:=strcut(Fec_System(),10);
  fechah.Text:=strcut(Fec_System(),10);
  naci.Text:=strcut(Fec_System(),10);
  fechad.SetFocus;

grilla1.Cells[0,0]:='Orden';
grilla1.Cells[1,0]:='Concepto';
grilla1.Cells[2,0]:='Detalle';
grilla1.Cells[3,0]:='Cantidad';
grilla1.Cells[4,0]:='ImporteTotal';
grilla1.Cells[5,0]:='Signo';

grilla2.Cells[0,0]:='Orden';
grilla2.Cells[1,0]:='FechaMov';
grilla2.Cells[2,0]:='Concepto';
grilla2.Cells[3,0]:='Cantidad';
grilla2.Cells[4,0]:='SubTipoMov';
grilla2.Cells[5,0]:='Importe';
grilla2.Cells[6,0]:='Entrada';
grilla2.Cells[7,0]:='DEBE';
grilla2.Cells[8,0]:='HABER';
grilla2.Cells[9,0]:='SALDO';
grilla2.Cells[10,0]:='';
end;
end;

procedure TCierreCuenta.fechadExit(Sender: TObject);
var fec:Tdatetime;
begin
try
 fec:=strtodate(fechad.Text);
except
  messagedlgpos('La fecha es Erronea!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  fechad.SetFocus;
end;
end;

procedure TCierreCuenta.CuentaKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then fechad.SetFocus;
end;

procedure TCierreCuenta.fechadKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then fechah.SetFocus;
end;

procedure TCierreCuenta.fechahKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then buscar.SetFocus;
end;

procedure TCierreCuenta.BUSCARClick(Sender: TObject);
begin
coloca1(3,'');
coloca1(1,'');
coloca1(5,'');
exporta.Enabled:=true;
imprime.Enabled:=true;
//tdebe.Text:=debe;
//thaber.Text:=haber;
//tsaldo.Text:=saldos;
//CORTE.Enabled:=TRUE;
end;

procedure TCierreCuenta.fechahExit(Sender: TObject);
var fec:Tdatetime;
begin
  try
     fec:=strtodate(FECHAH.Text);
  except
    messagedlgpos('La fecha es Erronea!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
    fechah.SetFocus;
  end;

  if strtodate(FECHAH.Text) < strtodate(FECHAD.Text) then begin
       messagedlgpos('La FECHA HASTA no puede ser menor a la anterior!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
       FECHAH.SetFocus;
  end
  else begin
     buscar.setfocus;
  end;
end;

procedure TCierreCuenta.CuentaChange(Sender: TObject);
var p,u:integer;
begin
  fechad.Text:=strcut(Fec_System(),10);
  fechah.Text:=strcut(Fec_System(),10);
  //naci.Text:=strcut(Fec_System(),10);
  //cuenta.ItemIndex:=0;
  //tdebe.Clear;thaber.Clear;tsaldo.Clear;
  imprime.Enabled:=false;
  exporta.Enabled:=false;

  for p:=0 to grilla1.ColCount-1 do
    for u:=1 to grilla1.RowCount-1 do grilla1.Cells[p,u]:='';
  grilla1.RowCount:=2;

  for p:=0 to grilla2.ColCount-1 do
    for u:=1 to grilla2.RowCount-1 do grilla2.Cells[p,u]:='';
  grilla2.RowCount:=2;

  fechad.SetFocus;
 //obs.Clear;
//coloca1(3,'');
//exporta.Enabled:=false;
//imprime.Enabled:=false;
//corte.Enabled:=false;
end;

procedure TCierreCuenta.CuentaExit(Sender: TObject);
begin                                        
{if Cuenta.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el USUARIO Ingresado!!',mterror,[mbok],0);
  Cuenta.SetFocus;
end; }
end;

procedure TCierreCuenta.ImprimeClick(Sender: TObject);
var gf:integer;
begin
  gf:=messagedlgpos('Desea Imprimir el Resumen de Cierre de Caja?'
    ,mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
  if gf = 1 then begin
  Rvs.Execute;
  end;
end;

procedure TCierreCuenta.RvSPrint(Sender: TObject);
var posfx,posfy,final,salto:double;
var t,y,hoja,nro:integer;
//var tot,total:real;
var txt:string;
var pso:boolean;

   Function Logo(posx,posy:double;vaf:integer):double;
   var Imagen1,MarcaAgua:TBitMap;
       PathLogo:string;
   begin
   with RvS do begin
     //Pegamos el Logo en el reporte
     Imagen1 := TBitMap.Create;
     PathLogo:=modulo2.path_todo + '\Imagenes\' + modulo2.INI1.ReadString('Resumen Caja','Imagen1','');
     if FileExists(PathLogo) then begin
       Image1.Picture.LoadFromFile(PathLogo);
       Imagen1.Assign(Image1.Picture.Graphic);
       BaseReport.PrintBitmapRect(posx+6,posy+6,posx+55,posy+28,Imagen1);
     end;
     Imagen1.Free;

     {Colocamos el título}
     BaseReport.Rectangle(posx+2,posy+5,posx+260,posy+37);
     BaseReport.SetFont('Arial Black',9);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+59,posy+10,'CARMELO MONTE S.A. Servicios & Mandatos');
     BaseReport.SetFont('Arial Black',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+59,posy+14,modulo2.INI1.ReadString('Resumen Planillas','Titulo2',''));
     BaseReport.SetFont('Arial',8);
     BaseReport.FontColor:=clBlack;
    // BaseReport.PrintXY(posx+39,posy+18,'Tel. 437015 - E_Mail: secgral_adf@hotmail.com');
    // BaseReport.PrintXY(posx+39,posy+21,'secadm_adf@hotmail.com');

     BaseReport.SetFont('Arial',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+180,posy+9,'Pág.: ' + inttostr(vaf));
     BaseReport.PrintXY(posx+180,posy+14,'Usu Imp.: ' + inttostr(modulo2.nro_usu) + ' - Fec. Imp.:' + strcut(Fec_System(),10));
     BaseReport.SetFont('Arial',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.RoundRect(posx+65,posy+27,posx+155,posy+32,5,5);
     BaseReport.PrintXY(posx+80,posy+31,'RESUMEN DE CIERRE DE CAJA');

     BaseReport.PrintXY(posx+150,posy+21,'Desde Fecha:' + TRIM(fechad.Text) + '     Hasta Fecha:' + TRIM(fechah.Text));
     Logo:=posy+37;
   end;
   end;

   /////////  GRILLA de RECAUDACION
  Function GrillaCabecera(posx,posy:double;texto:string):double;
  var t:integer;
  begin
     with RvS do begin
      BaseReport.Rectangle(posx+2,posy,posx+260,posy+5);
      for t:=1 to length(Camp)-1 do begin
      BaseReport.Rectangle(posx + PosH[t]-2,posy,posx + PosH[t]-2,posy+5);
      end;
     end;
      Rvs.BaseReport.SetFont('Arial Black',8);
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
  Rvs.BaseReport.SetFont('Arial',8);
  Rvs.BaseReport.FontColor:=clBlack;
    for t:=0 to length(Camp)-1 do
    if (t >=5 ) then  Rvs.BaseReport.PrintXY(posx + PosH[t],posy+4,'$ '+HackTable(FindComponent(texto)).Fields[Camp[t]].AsString)
        else Rvs.BaseReport.PrintXY(posx + PosH[t],posy+4,HackTable(FindComponent(texto)).Fields[Camp[t]].AsString);;
    Result:=posy+4;
  end;

  //// Grilla Recuadro
  Function GrillaRecuadro(posx,posy,posy2:double):double;
  var t:integer;
         //// Grilla Totales
       { Function DatosTotales(posx,posy:double):double;
        begin
        with RvS do begin
          BaseReport.Rectangle(posx+2,posy+5,posx+260,posy);
          BaseReport.SetFont('Arial Black',8);
          BaseReport.FontColor:=clBlack;
          BaseReport.PrintXY(posx+155,posy+3,'TOTALES');
          BaseReport.PrintXY(posx+200,posy+3,trim(tdebe.text));
          BaseReport.PrintXY(posx+220,posy+3,trim(thaber.text));
          BaseReport.PrintXY(posx+240,posy+3,trim(tsaldo.text));
        Result:=posy2;
        end;
        end; }
  begin
  with RvS do begin
    BaseReport.Rectangle(posx+2,posy,posx+260,posy2);
    for t:=1 to length(Camp)-1 do begin
      BaseReport.Rectangle(posx + PosH[t]-2,posy,posx + PosH[t]-2,posy2);
    end;
  Result:=posy+4;
  //posy:=DatosTotales(posfx,posfy+5);
  //Result:=posy2;
  end;
  end;

begin
try
  posfx:=5.5;posfy:=5;
  salto:=4;final:=0;hoja:=1;
  posfy:=Logo(posfx,posfy,hoja);

  Rvs.BaseReport.SetFont('Arial Black',9);
  Rvs.BaseReport.FontColor:=clBlack;
  Rvs.BaseReport.RoundRect(posfx+65,posfy,posfx+200,posfy+5,5,5);
  Rvs.BaseReport.PrintXY(posfx+80,posfy+4,'DETALLE CIERRE DE CAJA DE : ' + TRIM(CUENTA.Text));

      Camp[0]:=0;Camp[1]:=1;Camp[2]:=2;Camp[3]:=3;Camp[4]:=4;Camp[5]:=5;Camp[6]:=7;Camp[7]:=8;Camp[8]:=9;
      TxtCamp[0]:='Orden';TxtCamp[1]:='FechaMov.';TxtCamp[2]:='Concepto';TxtCamp[3]:='Cantidad.';
      TxtCamp[4]:='SubTipoMov.';TxtCamp[5]:='Importe.';TxtCamp[6]:='DEBE';TxtCamp[7]:='HABER';;TxtCamp[8]:='SALDO';
      PosH[0]:=6;PosH[1]:=20;PosH[2]:=40;PosH[3]:=76;PosH[4]:=110;PosH[5]:=150;PosH[6]:=200;PosH[7]:=220;PosH[8]:=240;

      T8.Close;
      T8.CloneCursor(DtCombo,false,true);
      txt:='T8';
      final:=GrillaCabecera(posfx,posfy+5,txt);

      posfy:=final;
      pso:=false;
      for y:=1 to HackTable(findcomponent(txt)).RecordCount do begin
        HackTable(FindComponent(txt)).RecNo:=y;
        if pso then Rvs.BaseReport.Rectangle(posfx+2,posfy+1,posfx+260,posfy+1)
        else pso:=true;
        posfy:=GrillaDetalle(posfx,posfy,txt);
        if posfy > 260 then begin
          posfy:=GrillaRecuadro(posfx,final,posfy+2);
          posfx:=5.5;posfy:=5;hoja:=hoja+1;
          RvS.BaseReport.NewPage;
          posfy:=Logo(posfx,posfy,hoja);  // llamamos al encabezado
          final:=GrillaCabecera(posfx,posfy+5,txt);
          posfy:=final;pso:=false;
        end;
      end;
      if pso then posfy:=GrillaRecuadro(posfx,final,posfy+2);
  except
end;
end;


procedure TCierreCuenta.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TCierreCuenta.corteClick(Sender: TObject);
var lafecha:string;
    ElMes,ElAnio,ElDia,Periodo:string;
var gf:integer;
begin
  ElMes:=strcut_midle(trim(naci.Text),4,5);
  ElAnio:=RightStr(trim(naci.Text),4);
  ElDia:=LeftStr(trim(naci.Text),2);
  Periodo:=ElAnio+Elmes+Eldia;

  gf:=messagedlgpos('Ud, esta por Realizar un CORTE DE CAJA. desea hacerlo?'
    ,mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
  if gf = 1 then begin
   coloca1(4,'');  // pregunto si ya hay un corte con la misma fecha y nro de codigo
   if filas > 0 then begin
      messagedlgpos('Imposible generar el Corte, por Existir uno con la fecha de hoy!!',mtError,[mbok],0,screen.Width div 3,screen.Height div 3);;
   end
   else begin
     {try
        coloca1(5,'');
        modulo2.CommandText:='BEGIN TRANSACTION;';
        modulo2.Com.Execute;

         modulo2.Com.CommandText:='Update CajaPeriodoSaldos set Activo=0 where (codigo=' + el_codigo(1) +') and (activo=1);';
         modulo2.Com.Execute;

        modulo2.Com1.CommandText:='INSERT INTO CajaPeriodoSaldos (Periodo,codigo,'
        + 'debe,haber,saldo,activo,fecha_a,obs,Usu_a) VALUES (' + periodo + ' , '
        + el_codigo(1) + ' , ' + debe + ' , ' + haber + ' , ' + saldos
        + ' , 1 , ' + chr(39) + trim(naci.Text) + chr(39) + ' , ' + chr(39) + trim(obs.Text) + chr(39)
        + ' , ' + inttostr(modulo2.num_usuario) + ');';
        modulo2.Com1.Execute;

        messagedlgpos('El Corte de Caja se han Guardado Satisfactoriamente!!',mtWarning,[mbok],0,screen.Width div 3,screen.Height div 3);;
        modulo2.Com1.CommandText:='COMMIT TRANSACTION';
        modulo2.Com1.Execute;
        limpiar(1);
     except
         messagedlgpos('Error!! Ocurrió un Error al Guardar el Corte de Caja.',mtError,[mbok],0,screen.Width div 3,screen.Height div 3);
        modulo2.Com1.CommandText:='ROLLBACK TRANSACTION';
        modulo2.Com1.Execute;
     end;}
     corte.Enabled:=false;
   end;
  end;
end;

procedure TCierreCuenta.naciExit(Sender: TObject);
var kl:Tdatetime;
begin
if trim(naci.Text) = '/  /' then begin
   messagedlgpos('Por Favor... Ingrese una fecha ',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
   naci.SetFocus;
end
else begin
  try
     kl:=strtodate(trim(naci.Text));
  except begin
       messagedlgpos('La Fecha Ingresada No es Válida',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
       naci.SetFocus;
     end;
  end;
end;
end;


procedure TCierreCuenta.naciKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then obs.SetFocus;

//if key = #13 then begin
//   corte.Enabled:=true;
//   corte.SetFocus;
//end;
end;

procedure TCierreCuenta.PageControl1Change(Sender: TObject);
begin
{  if PageControl1.ActivePageIndex = 0 then begin
          dbgrid2.SetFocus;
          imprime.Enabled:=false;
  end;
  if PageControl1.ActivePageIndex = 1 then begin
          naci.SetFocus;
          imprime.Enabled:=true;
   end;}
end;

procedure TCierreCuenta.obsKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
   corte.Enabled:=true;
   corte.SetFocus;
end;
end;

procedure TCierreCuenta.ExportaClick(Sender: TObject);
var texto:widestring;
var txt:string;
var t,p:integer;
begin
todos.Clear;texto:='';
       todos.Lines.Add('');
       todos.Lines.Add('Movimientos del Usuario:' + trim(cuenta.Text));
       todos.Lines.Add('');
       todos.Lines.Add('');
        todos.Lines.Add('Detalle de Saldos');
        for t:=0 to grilla1.RowCount -1   DO BEGIN
          texto:='';
        for p:=0 to grilla1.ColCount - 1 do begin
          texto:= texto + grilla1.Cells[p,t] + chr(9);
        end;
        todos.Lines.Add(texto);
        end;
            todos.Lines.Add('');
            todos.Lines.Add('Detalle de DEBE HABER y SALDO');
             for t:=0 to grilla2.RowCount -1   DO BEGIN
              texto:='';
            for p:=0 to grilla2.ColCount - 1 do begin
              texto:= texto + grilla2.Cells[p,t] + chr(9);
            end;
            todos.Lines.Add(texto);
            end;

    todos.SelectAll;
    todos.CopyToClipboard;
    messagedlgpos('Datos Procesados y Listos para pegarlos a Excel',mtwarning,[mbok],0,screen.Width div 3,screen.Height div 3);
end;

procedure TCierreCuenta.JvBitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TCierreCuenta.grilla1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
if ARow = 12 then begin
  grilla1.Canvas.Brush.Color :=clyellow;
  grilla1.Canvas.FillRect(Rect);
  grilla1.Canvas.Font.Style:=[fsBold];
  grilla1.Canvas.Font.Size:=9;
  grilla1.Canvas.Font.Color:= clRed;
  grilla1.Canvas.TextOut(Rect.Left + 2, Rect.Top + 2, grilla1.cells[Acol,Arow]);
end;
end;

end.

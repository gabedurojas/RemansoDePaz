unit Resu_Caja;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, JvExButtons, JvBitBtn, ToolWin, DB,
  Mask, JvgGroupBox, ExtCtrls, Grids, DBGrids, DBClient, ClaseFunciones,
  StrUtils, ClaseSistemas, WSDLIntf, ClaseResumenCaja, RpDefine, RpBase,
  RpSystem, CapaDatos, ClaseResumenCajaDetalle;

type HackTable = class(TClientDataSet);
type
  TResumen_Caja = class(TForm)
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    Exporta: TJvBitBtn;
    ToolButton5: TToolButton;
    IMPRIME: TJvBitBtn;
    ToolButton2: TToolButton;
    GUARDA: TJvBitBtn;
    ToolButton1: TToolButton;
    Limpiar: TJvBitBtn;
    ToolButton3: TToolButton;
    JvBitBtn1: TJvBitBtn;
    Barra1: TStatusBar;
    Splitter2: TSplitter;
    Splitter1: TSplitter;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid3: TDBGrid;
    TabSheet6: TTabSheet;
    DBGrid4: TDBGrid;
    TabSheet2: TTabSheet;
    DBGrid5: TDBGrid;
    TabSheet7: TTabSheet;
    DBGrid6: TDBGrid;
    TabSheet14: TTabSheet;
    DBGrid16: TDBGrid;
    TabSheet9: TTabSheet;
    DBGrid7: TDBGrid;
    TabSheet10: TTabSheet;
    DBGrid8: TDBGrid;
    JvgGroupBox2: TJvgGroupBox;
    FECPRE: TMaskEdit;
    Label3: TLabel;
    Label1: TLabel;
    NRORES: TEdit;
    Buscar: TBitBtn;
    JvgGroupBox1: TJvgGroupBox;
    DBGrid1: TDBGrid;
    D1: TDataSource;
    D2: TDataSource;
    D3: TDataSource;
    D4: TDataSource;
    D5: TDataSource;
    D6: TDataSource;
    D7: TDataSource;
    D9: TDataSource;
    DataSource1: TDataSource;
    JvgGroupBox3: TJvgGroupBox;
    DBGrid2: TDBGrid;
    OPERADOR: TComboBox;
    Label7: TLabel;
    TabSheet3: TTabSheet;
    DBGrid9: TDBGrid;
    D8: TDataSource;
    RvS: TRvSystem;
    Image1: TImage;
    T1: TClientDataSet;
    T2: TClientDataSet;
    T3: TClientDataSet;
    T4: TClientDataSet;
    T5: TClientDataSet;
    T6: TClientDataSet;
    T7: TClientDataSet;
    T8: TClientDataSet;
    T9: TClientDataSet;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure BuscarClick(Sender: TObject);
    procedure OPERADORKeyPress(Sender: TObject; var Key: Char);
    procedure OPERADORExit(Sender: TObject);
    procedure FECPREKeyPress(Sender: TObject; var Key: Char);
    procedure FECPREExit(Sender: TObject);
    procedure IMPRIMEClick(Sender: TObject);
    procedure RvSPrint(Sender: TObject);
    Function Logo(posx,posy:double;vaf:integer):double;
    Function GrillaCabecera(posx,posy:double;texto:string):double;
    Function GrillaDetalle(posx,posy:double;texto:string):double;
    Function GrillaRecuadro(posx,posy,posy2:double):double;
    procedure GUARDAClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    gh,ConMov:boolean;

    IdCombos:array of array of string;
    DtCombo,Caja:TClientDataSet;
    FechaActual:string;

    Funciones:TFuncionesVarias;
    Sistemas:TSistemas;
    ResumenCaja:TResumenCaja;
    ResumenCajaDetalle:TResumenCajaDetalle;
    CapaDatos:TCapaDatos;

    PosH:Array [1..10] of Double;//Posiciones
    Camp:Array [1..10] of Integer;//Campos a Tomar en cuenta
    TxtCamp:Array [1..10] of String;//Textos de los Campos a Tomar en cuenta
    AligCamp:Array [1..10] of String;//Alineacione de los
    PosAlig:Array [1..10] of Double;//Posiciones de Alineacion
    ChrDer:Array [1..10] of String;//Caracter a la Izq de los Campos a Tomar en cuenta
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Resumen_Caja: TResumen_Caja;

implementation

uses Modulo, Unidad;

{$R *.dfm}

procedure TResumen_Caja.FormActivate(Sender: TObject);
begin
if not gh then begin
  gh:=true;
  setlength(IdCombos,2);

  FechaActual:=LeftStr(Fec_System(),10);
  FECPRE.Text:=FechaActual;
  PC1.ActivePage:=PC1.Pages[0];

  Coloca1(1);
end;
end;

procedure TResumen_Caja.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TResumen_Caja.Coloca1(nro:byte);
var t:integer;
    txtw:widestring;
    Param:TWideStrings;
    Paso:boolean;
begin
if nro=1 then begin //Combo Cobradores
  OPERADOR.Clear;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Sistemas:=TSistemas.Create(nil);
  Sistemas.ConnectionString:=modulo2.Conexion1;
  Param:=TWideStrings.Create;
  Param.Add('');
  Param.Add('');
  if not Sistemas.ListarSP(Param,'SPC_UsuariosConsultar',DtCombo) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
    SetLength(IdCombos[0],DtCombo.RecordCount);
    for t:=1 to DtCombo.RecordCount  do begin
      DtCombo.RecNo:=t;
      OPERADOR.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
      IdCombos[0,t-1]:=DtCombo.Fields[0].AsString;
    end;
  end;
  Param.Free;
  Sistemas.Free;
  OPERADOR.ItemIndex:=0;
end;
if nro = 2 then begin
  Caja.Free;
  Caja:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=Caja;
  Sistemas:=TSistemas.Create(nil);
  Sistemas.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT TOP (100) NroResumen,Fecha,SaldoAnterior,Ventas,Servicios,Mantenimiento,'
  + 'Consolidados,Gastos,GastosAnulados,Acreditaciones FROM ResumenCaja WHERE (Usu_A='
  + IdCombos[0,OPERADOR.ItemIndex] + ') ORDER BY 1 DESC;';
  if not Sistemas.Listar(txtw,Caja) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
    if not Caja.IsEmpty then Barra1.Panels[1].Text:='Cant. Registros: ' + inttostr(Caja.RecordCount);
  end;
  Sistemas.Free;
end;
if nro = 3 then begin
  IMPRIME.Enabled:=false;
  GUARDA.Enabled:=false;
  try
    DtCombo.Free;
    DtCombo:=TClientdataSet.Create(nil);
    Funciones:=TFuncionesVarias.Create(nil);
    Funciones.ConnectionString:=modulo2.Conexion;
    txtw:='SELECT Nro,Concepto,Detalle,Cantidad,ImporteTotal,Signo'
    + ' FROM FnCierreCajaTotal (' + chr(39) + trim(FECPRE.Text) + chr(39) + ' ,  '
    + IdCombos[0,OPERADOR.ItemIndex] + ')';
    if not Funciones.Listar(txtw,DtCombo) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    Funciones.Free;

    T9.Close;
    T9.CloneCursor(DtCombo,false,true);
    if not T9.IsEmpty then begin
      SetLength(IdCombos[1],DtCombo.RecordCount);
      for t:=1 to DtCombo.RecordCount  do begin
        DtCombo.RecNo:=t;
        IdCombos[1,t-1]:=DtCombo.Fields[4].AsString;
      end;

      IMPRIME.Enabled:=true;
      GUARDA.Enabled:=true;
      DBgrid2.Columns[0].Width:=25;
      DBgrid2.Columns[1].Width:=130;
      DBgrid2.Columns[2].Width:=52;
      DBgrid2.Columns[3].Width:=52;
      DBgrid2.Columns[4].Width:=70;
      DBgrid2.Columns[5].Width:=35;
    end;

    Paso:=true;
    for t:=1 to 8 do begin
      Sistemas:=TSistemas.Create(nil);
      Sistemas.ConnectionString:=modulo2.Conexion;
      Param:=TWideStrings.Create;
      Param.Add(inttostr(t));
      Param.Add(IdCombos[0,OPERADOR.ItemIndex]);
      Param.Add('0');
      Param.Add(trim(FECPRE.Text));
      if not Sistemas.ExecProcSinResp('CreaVistas',Param) then begin
        messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
        break;
      end;
      Param.Free;
      Sistemas.Free;

      DtCombo.Free;
      DtCombo:=TClientdataSet.Create(nil);
      Funciones:=TFuncionesVarias.Create(nil);
      Funciones.ConnectionString:=modulo2.Conexion;
      txtw:='SELECT * FROM VTemporal';
      Paso:=Funciones.Listar(txtw,DtCombo);
      if not Paso then begin
        messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
        break;
      end;
      if t=1 then begin
        T1.Close;
        T1.CloneCursor(DtCombo,false,true);
      end;
      if t=2 then begin
        T2.Close;
        T2.CloneCursor(DtCombo,false,true);
      end;
      if t=3 then begin
        T3.Close;
        T3.CloneCursor(DtCombo,false,true);
      end;
      if t=4 then begin
        T4.Close;
        T4.CloneCursor(DtCombo,false,true);
      end;
      if t=5 then begin
        T5.Close;
        T5.CloneCursor(DtCombo,false,true);
      end;
      if t=6 then begin
        T6.Close;
        T6.CloneCursor(DtCombo,false,true);
      end;
      if t=7 then begin
        T7.Close;
        T7.CloneCursor(DtCombo,false,true);
      end;
      if t=8 then begin
        T8.Close;
        T8.CloneCursor(DtCombo,false,true);
      end;

      Funciones.Free;
    end;
    if not(T1.IsEmpty) then
      Barra1.Panels[1].Text:='Cantidad Registros: ' + inttostr(T1.RecordCount)
    else
      Barra1.Panels[1].Text:='Cantidad Registros: 0';
  except
     IMPRIME.Enabled:=false;
     GUARDA.Enabled:=false;
  end;
end;
end;

procedure TResumen_Caja.JvBitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TResumen_Caja.BuscarClick(Sender: TObject);
begin
Coloca1(3);
Coloca1(2);
end;

procedure TResumen_Caja.OPERADORKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  FECPRE.SetFocus;
end;
end;

procedure TResumen_Caja.OPERADORExit(Sender: TObject);
begin
if OPERADOR.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Operador Ingresado!!',mterror,[mbok],0);
  OPERADOR.SetFocus;
end;
end;

procedure TResumen_Caja.FECPREKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  Buscar.SetFocus;
end;
end;

procedure TResumen_Caja.FECPREExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(FECPRE.Text));
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  FECPRE.SetFocus;
end;
end;

procedure TResumen_Caja.IMPRIMEClick(Sender: TObject);
var gf:integer;
begin
RvS.SystemPrinter.Orientation:=poPortrait;
gf:=messagedlg('Desea Imprimir el Resumen Seleccionado?'
    ,mtWarning,[mbok,mbCancel],0);
if gf = 1 then RvS.Execute;
end;


procedure TResumen_Caja.RvSPrint(Sender: TObject);
var posfx,posfy,final,salto:double;
var u,y,hoja:integer;
var txt,Titulo:string;
var pso:boolean;
begin
try
  ConMov:=false;
  posfx:=5.5;posfy:=5;
  salto:=4;final:=0;hoja:=1;
  posfy:=Logo(posfx,posfy,hoja);

  //Imprimimos el Detalle
  for u:=1 to 9 do begin
    txt:='T' + inttostr(u);
    if not(HackTable(FindComponent(txt)).IsEmpty) then begin
      if u <> 9 then ConMov:=true;
      Rvs.BaseReport.SetFont('Arial Black',9);
      Rvs.BaseReport.FontColor:=clBlack;
      Rvs.BaseReport.RoundRect(posfx+60,posfy,posfx+125,posfy+5,5,5);
      case u of
        1..5:begin
            if u = 1 then Titulo:='VENTAS REALIZADAS';
            if u = 2 then Titulo:='SERVICIOS REALIZADOS';
            if u = 3 then Titulo:='MANTENIMIENTOS COBRADOS';
            if u = 4 then Titulo:='CONSOLIDADOS COBRADOS';
            if u = 5 then Titulo:='COMPROBANTES ANULADOS';
            Camp[1]:=0;Camp[2]:=1;Camp[3]:=2;Camp[4]:=3;Camp[5]:=4;Camp[6]:=5;Camp[7]:=7;Camp[8]:=8;Camp[9]:=9;Camp[10]:=-1;
            TxtCamp[1]:='N° Id';TxtCamp[2]:='Cobrador';TxtCamp[3]:='Planilla';TxtCamp[4]:='Fecha';
            TxtCamp[5]:='Tipo Comprob.';TxtCamp[6]:='N° Comprobante';TxtCamp[7]:='Identif.';
            TxtCamp[8]:='Fecha Cobro';TxtCamp[9]:='Importe';TxtCamp[10]:='';
            PosH[1]:=2;PosH[2]:=17;PosH[3]:=60;PosH[4]:=75;PosH[5]:=90;PosH[6]:=115;
            PosH[7]:=140;PosH[8]:=155;PosH[9]:=175;PosH[10]:=180;
            AligCamp[1]:='I';AligCamp[2]:='I';AligCamp[3]:='I';AligCamp[4]:='I';AligCamp[5]:='I';
            AligCamp[6]:='I';AligCamp[7]:='I';AligCamp[8]:='I';AligCamp[9]:='D';AligCamp[10]:='D';
            PosAlig[2]:=63;PosAlig[8]:=190;PosAlig[9]:=190;PosAlig[10]:=190;
            ChrDer[1]:='';ChrDer[2]:='';ChrDer[3]:='';ChrDer[4]:='';ChrDer[5]:='';
            ChrDer[6]:='';ChrDer[7]:='';ChrDer[8]:='';ChrDer[9]:='$ ';ChrDer[10]:='';
          end;
      6,7:begin
            if u = 6 then Titulo:='       RESUMEN GASTOS';
            if u = 7 then Titulo:='    RESUMEN GASTOS ANUL.';
            Camp[1]:=0;Camp[2]:=1;Camp[3]:=2;Camp[4]:=3;Camp[5]:=4;Camp[6]:=5;Camp[7]:=6;Camp[8]:=7;Camp[9]:=8;Camp[10]:=-1;
            TxtCamp[1]:='ID';TxtCamp[2]:='Fecha';TxtCamp[3]:='Proveedor';TxtCamp[4]:='Tipo';
            TxtCamp[5]:='Sub Tipo';TxtCamp[6]:='Forma Pago';TxtCamp[7]:='N° Fact.';TxtCamp[8]:='T.Fac';
            TxtCamp[9]:='Monto';
            PosH[1]:=2;PosH[2]:=12;PosH[3]:=25;PosH[4]:=63;PosH[5]:=98;PosH[6]:=143;
            PosH[7]:=163;PosH[8]:=178;PosH[9]:=188;
            AligCamp[1]:='I';AligCamp[2]:='I';AligCamp[3]:='I';AligCamp[4]:='I';AligCamp[5]:='I';
            AligCamp[6]:='I';AligCamp[7]:='I';AligCamp[8]:='I';AligCamp[9]:='D';
            PosAlig[9]:=196;
            ChrDer[1]:='';ChrDer[2]:='';ChrDer[3]:='';ChrDer[4]:='';ChrDer[5]:='';
            ChrDer[6]:='';ChrDer[7]:='';ChrDer[8]:='';ChrDer[9]:='$ ';
          end;
        8:begin
            Titulo:='   ACREDITACIONES';
            Camp[1]:=0;Camp[2]:=1;Camp[3]:=2;Camp[4]:=3;Camp[5]:=4;Camp[6]:=5;Camp[7]:=6;Camp[7]:=7;Camp[8]:=-1;Camp[9]:=-1;Camp[10]:=-1;
            TxtCamp[1]:='Nº';TxtCamp[2]:='Objeto';TxtCamp[3]:='Identif.';TxtCamp[4]:='N° Recibo';
            TxtCamp[5]:='Fecha';TxtCamp[6]:='Motivo';TxtCamp[7]:='Monto';
            PosH[1]:=5;PosH[2]:=15;PosH[3]:=40;PosH[4]:=55;PosH[5]:=85;PosH[6]:=160;PosH[7]:=180;
            AligCamp[1]:='I';AligCamp[2]:='I';AligCamp[3]:='I';AligCamp[4]:='I';AligCamp[5]:='I';
            AligCamp[6]:='D';AligCamp[7]:='D';
            PosAlig[6]:=179;PosAlig[7]:=199;
            ChrDer[1]:='';ChrDer[2]:='';ChrDer[3]:='';ChrDer[4]:='';ChrDer[5]:='';
            ChrDer[6]:='';ChrDer[7]:='$';
          end;
       9:begin
            Titulo:='     TOTAL DE MOVIMIENTOS';
            Camp[1]:=0;Camp[2]:=1;Camp[3]:=3;Camp[4]:=4;Camp[5]:=5;Camp[6]:=-1;Camp[7]:=-1;Camp[8]:=-1;Camp[9]:=-1;Camp[10]:=-1;
            TxtCamp[1]:='Orden';TxtCamp[2]:='Detalle';TxtCamp[3]:='Cantidad';TxtCamp[4]:='Importe';
            TxtCamp[5]:='Signo';
            PosH[1]:=5;PosH[2]:=20;PosH[3]:=130;PosH[4]:=150;PosH[5]:=180;
            AligCamp[1]:='I';AligCamp[2]:='I';AligCamp[3]:='D';AligCamp[4]:='D';AligCamp[5]:='D';
            PosAlig[3]:=140;PosAlig[4]:=178; PosAlig[5]:=190;
            ChrDer[1]:='';ChrDer[2]:='';ChrDer[3]:='';ChrDer[4]:='$ ';ChrDer[5]:='';
          end;
      end;
      Rvs.BaseReport.PrintXY(posfx+63,posfy+4,Titulo);

      final:=GrillaCabecera(posfx,posfy+5,txt);

      posfy:=final;pso:=false;
      for y:=1 to HackTable(FindComponent(txt)).RecordCount do begin
        HackTable(FindComponent(txt)).RecNo:=y;
        if pso then Rvs.BaseReport.Rectangle(posfx+4,posfy+1,posfx+195,posfy+1)
        else pso:=true;
        posfy:=GrillaDetalle(posfx-1,posfy,txt);
        if posfy > 230 then begin
          posfy:=GrillaRecuadro(posfx,final,posfy+1);
          posfx:=5.5;posfy:=5;hoja:=hoja+1;
          RvS.BaseReport.NewPage;
          posfy:=Logo(posfx,posfy,hoja);  // llamamos al encabezado
          final:=GrillaCabecera(posfx,posfy+5,txt);
          posfy:=final;pso:=false;
        end;
      end;
      if pso then posfy:=GrillaRecuadro(posfx,final,posfy+2);
    end;
  end;
  if not ConMov then begin
    Rvs.BaseReport.Rectangle(posfx+4,posfy+1,posfx+195,posfy+10);
    Rvs.BaseReport.SetFont('Arial Black',15);
    Rvs.BaseReport.FontColor:=clBlack;
    Rvs.BaseReport.PrintXY(posfx+20,posfY+8,'SIN MOVIMIENTOS DE CAJA EN EL DIA DE LA FECHA');
    posfy:=posfy + 10;
  end;

except
  On E : Exception  do begin
    CapaDatos:=TCapaDatos.Create(nil);
    CapaDatos.EnviarLog(Name,E.Message);
    CapaDatos.Free;
  end;
end;
end;


Function TResumen_Caja.Logo(posx,posy:double;vaf:integer):double;
var Imagen1:TBitMap;
        Fuente,PathLogo:string;
        Tamanio,CantImg,t:integer;
        P1,P2,P3,P4:double;
begin
{El Logo}
with RvS do begin
 {Pegamos el Logo de Osfatun para el reporte}
  CantImg:=StrToInt(modulo2.INI1.ReadString('Resumen Caja','CantImg','1'));

  for t:=1 to CantImg do begin
    Imagen1 := TBitMap.Create;
    PathLogo:=modulo2.path_todo + '\Imagenes\' + modulo2.INI1.ReadString('Resumen Caja','Imagen' + IntToStr(t),'');
    if FileExists(PathLogo) then begin
      Image1.Picture.LoadFromFile(PathLogo);
      Imagen1.Assign(Image1.Picture.Graphic);
      Fuente:=modulo2.INI1.ReadString('Resumen Caja','Tamaño' + IntToStr(t),'');
      PathLogo:=modulo2.INI1.ReadString('Resumen Caja','Pos' + IntToStr(t),'');
      if (Fuente <> '') and (PathLogo <> '') then begin
        P1:=StrToFloat(Extrae(Fuente,',',1));
        P2:=StrToFloat(Extrae(Fuente,',',2));
        P3:=StrToFloat(Extrae(PathLogo,',',1));
        P4:=StrToFloat(Extrae(PathLogo,',',2));
        BaseReport.PrintBitmapRect(posx+P3,posy+P4,posx+P3+P1,posy+P4+P2,Imagen1);
      end;
    end;
    Imagen1.Free;
  end;
  {Colocamos el título}
  BaseReport.Rectangle(posx+4,posy+5,posx+195,posy+23);
  BaseReport.SetFont('Arial',6);
  BaseReport.FontColor:=clBlack;
  BaseReport.PrintXY(posx+5,posy+22,'Usu Imp.: ' + inttostr(modulo2.nro_usu) + ' - Fec. Imp.:' + FechaActual);

  if StrToInt(NRORES.Text) = 0 then begin
    BaseReport.SetFont('Arial Black',8);
    BaseReport.FontColor:=clBlack;
    BaseReport.PrintXY(posx+85,posy+8,'RESUMEN DE CAJA');
    BaseReport.PrintXY(posx+85,posy+11,'Nº ' + NRORES.Text);
    BaseReport.PrintXY(posx+85,posy+14,'FECHA: ' + FechaActual);
    BaseReport.PrintXY(posx+85,posy+19,'NO GUARDADO - NO VALIDO');
    BaseReport.PrintXY(posx+85,posy+22,'   COMO DOCUMENTACION');
  end
  else begin
    BaseReport.SetFont('Arial Black',8);
    BaseReport.FontColor:=clBlack;
    BaseReport.PrintXY(posx+85,posy+8,'RESUMEN DE CAJA');
    BaseReport.PrintXY(posx+85,posy+11,'Nº ' + NRORES.Text);
    BaseReport.PrintXY(posx+85,posy+14,'FECHA: ' + FECPRE.Text);
    BaseReport.PrintXY(posx+85,posy+19,'GUARDADO - VALIDO');
    BaseReport.PrintXY(posx+85,posy+22,'COMO DOCUMENTACION');
  end;
  BaseReport.SetFont('Arial',8);
  BaseReport.FontColor:=clBlack;
  BaseReport.Rectangle(posx+4,posy+24,posx+195,posy+28);
  BaseReport.PrintXY(posx+5,posy+27,'Resumen del Usuario: ' + OPERADOR.Text );
  BaseReport.PrintXY(posx+125,posy+27,'N° Usuario: ' + IdCombos[0,OPERADOR.ItemIndex] );
end;
Result:=posy+28;
end;
{fin del logo}


Function TResumen_Caja.GrillaCabecera(posx,posy:double;texto:string):double;
var t:integer;
    psn:double;
begin
with RvS do begin
  //Cabecera
  BaseReport.Rectangle(posx+4,posy,posx+195,posy+4);
  psn:=posx+4;
  for t:=1 to length(Camp) do begin
    if Camp[t] <> -1 then
      BaseReport.Rectangle(psn + PosH[t]-2,posy,psn + PosH[t]-2,posy+4);
  end;
end;
Rvs.BaseReport.SetFont('Arial Black',7);
Rvs.BaseReport.FontColor:=clBlack;
for t:=1 to length(Camp) do begin
  if Camp[t] <> -1 then
    Rvs.BaseReport.PrintXY(psn + PosH[t],posy+3.5,TxtCamp[t]);
end;
Result:=posy+4;
end;


Function TResumen_Caja.GrillaDetalle(posx,posy:double;texto:string):double;
var t:integer;
    psn:double;
begin
Rvs.BaseReport.SetFont('Arial',6);
Rvs.BaseReport.FontColor:=clBlack;
psn:=posx+4;
for t:=1 to length(Camp) do begin
  if Camp[t] <> -1 then begin
    if AligCamp[t] = 'I' then
      Rvs.BaseReport.PrintXY(psn + PosH[t],posy+3.5,ChrDer[t] + HackTable(FindComponent(texto)).Fields[Camp[t]].AsString);
    if AligCamp[t] = 'D' then begin
      RvS.BaseReport.MoveTo(psn + PosH[t],posy+3.5);
      Rvs.BaseReport.PrintRight(ChrDer[t] + HackTable(FindComponent(texto)).Fields[Camp[t]].AsString,psn + PosAlig[t]);
    end;
  end;
end;
Result:=posy+3;
end;


Function TResumen_Caja.GrillaRecuadro(posx,posy,posy2:double):double;
var t:integer;
    psn:double;
begin
with RvS do begin
  BaseReport.Rectangle(posx+4,posy,posx+195,posy2);
  psn:=posx+4;
  for t:=1 to length(Camp) do begin
    if Camp[t] <> -1 then
      BaseReport.Rectangle(psn + PosH[t]-2,posy,psn + PosH[t]-2,posy2);
  end;
end;
Result:=posy2;
end;


procedure TResumen_Caja.GUARDAClick(Sender: TObject);
var gf,t,y:integer;
    nro:string;
    TodoOk1:boolean;
begin
gf:=messagedlgpos('Desea Guardar el Resumen?'
    ,mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
 if gf = 1 then begin
  try
    ResumenCaja:=TResumenCaja.Create(nil);
    ResumenCaja.ConnectionString:=modulo2.Conexion;
    nro:=DarMaximo('ResumenCaja');
    ResumenCaja.C_NroResumen_PK:=nro;
    ResumenCaja.C_Fecha_IX2:=FECPRE.Text;
    ResumenCaja.C_SaldoAnterior:=IdCombos[1,0];
    ResumenCaja.C_Ventas:=IdCombos[1,1];
    ResumenCaja.C_Servicios:=IdCombos[1,2];
    ResumenCaja.C_Mantenimiento:=IdCombos[1,3];
    ResumenCaja.C_Consolidados:=IdCombos[1,4];
    ResumenCaja.C_Gastos:=IdCombos[1,6];
    ResumenCaja.C_GastosAnulados:=IdCombos[1,7];
    ResumenCaja.C_Acreditaciones:=IdCombos[1,8];
    ResumenCaja.C_Usu_A_IX3:=modulo2.nro_usu;
    ResumenCaja.C_Usu_M:=null;
    ResumenCaja.C_Fecha_M:='';
    TodoOk1:=ResumenCaja.Agrega;
    ResumenCaja.Free;
    if TodoOk1 then begin
     for t:=1 to 8 do begin
      for y:=1 to HackTable(FindComponent('T' + inttostr(t))).RecordCount do begin
       HackTable(FindComponent('T' + inttostr(t))).RecNo:=y;
       ResumenCajaDetalle:=TResumenCajaDetalle.Create(nil);
       ResumenCajaDetalle.ConnectionString:=modulo2.Conexion;
       ResumenCajaDetalle.C_NroResumen:=nro;
       ResumenCajaDetalle.C_Identificador:=HackTable(FindComponent('T' + inttostr(t))).Fields[0].AsString;
       ResumenCajaDetalle.C_Tabla:=PC1.Pages[t-1].Caption;
       TodoOk1:=ResumenCajaDetalle.Agrega;
       ResumenCajaDetalle.Free;
       if not TodoOk1 then break;
      end;
     end;
    end;
    if not TodoOk1 then begin
     messagedlg('ERROR!!... Al Guardar los Datos.',mtError,[mbok],0);
     ResumenCaja:=TResumenCaja.Create(nil);
     ResumenCaja.ConnectionString:=modulo2.Conexion;
     TodoOk1:=ResumenCaja.Borrar(nro);
     ResumenCaja.Free;
     if not TodoOk1 then begin
      CapaDatos:=TCapaDatos.Create(nil);
      CapaDatos.EnviarLog(Name,'ROLLBACK realizado de forma erronea. N° Resumen: ' + nro);
      CapaDatos.Free;
     end;
    end
    else begin
      messagedlg('Se ha Guardado el Resumen de Caja con Exito',mtConfirmation,[mbok],0);
      Barra1.Panels[0].Text:='Datos Guardados Satisfactoriamente!!';
    end;
  except
    Barra1.Panels[0].Text:='ERROR!! al guardar los Datos';
  end;
 end;
end;

procedure TResumen_Caja.DBGrid1CellClick(Column: TColumn);
begin
{guarda.Enabled:=false;
if (trim(DBGrid1.Fields[0].AsString) <> '') then begin
  ModifResu:=true;
  NRORES.Text:=trim(DBGrid1.Fields[0].AsString);
  NroResumen:=trim(DBGrid1.Fields[0].AsString);;
  FECPRE.Text:=trim(DBGrid1.Fields[1].AsString);
  OPERADOR.Text:=trim(DBGrid1.Fields[3].AsString);
  el_op:=DBGrid1.Fields[2].AsString;
//  Usu_A.Text:=elop;
  FECPRE.Enabled:=false;OPERADOR.Enabled:=false;
  NRORES.Enabled:=false;
  Barra1.Panels[0].Text:='Ha Seleccionado un Resumen para su IMPRESION..!';
  IMPRIME.Enabled:=TRUE;

  Coloca1(3);
end;  }
end;

end.

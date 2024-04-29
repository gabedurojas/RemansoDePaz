unit Imp_LibroIva;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, Grids, DBGrids, JvgGroupBox, Buttons,
  JvExButtons, JvBitBtn, ComCtrls, ToolWin, DBClient, WSDLIntf, ClaseFunciones,
  StrUtils, ClaseSistemas, Unidad, RpDefine, RpBase, RpSystem,
  LMDCustomButton, LMDButton;

type
  TImp_LIVA = class(TForm)
    Barra1: TStatusBar;
    Image1: TImage;
    DataSource1: TDataSource;
    RvS: TRvSystem;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox2: TGroupBox;
    Image2: TImage;
    SQL: TEdit;
    GrillaE: TStringGrid;
    todos: TRichEdit;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    rActual: TRadioButton;
    rAnterior: TRadioButton;
    bBuscar: TLMDButton;
    Grilla1: TDBGrid;
    ToolBar2: TToolBar;
    ToolButton4: TToolButton;
    Imprime: TJvBitBtn;
    ToolButton2: TToolButton;
    ToolButton1: TToolButton;
    JvBitBtn3: TJvBitBtn;
    PERIODOI: TComboBox;
    PERIODOF: TComboBox;
    Label1: TLabel;
    rIngresar: TRadioButton;
    Exporta: TJvBitBtn;
    procedure Coloca1(nro:byte);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    Procedure Grillas(nro:byte);
    procedure RvSPrint(Sender: TObject);
    procedure bBuscarClick(Sender: TObject);
    procedure rAnteriorClick(Sender: TObject);
    procedure rActualClick(Sender: TObject);
    procedure rIngresarClick(Sender: TObject);
    procedure ImprimeClick(Sender: TObject);
    procedure JvBitBtn3Click(Sender: TObject);
    procedure ExportaClick(Sender: TObject);
  private
    DataSet1,DtCombo:TClientDataSet;
    Funciones:TFuncionesVarias;
    Sistemas:TSistemas;

  public
    elop:integer;
    valor,la_os:string;
    gh:boolean;{ Public declarations }
  end;

var
  Imp_LIVA: TImp_LIVA;

implementation

uses Modulo;

{$R *.dfm}
procedure TImp_LIVA.Coloca1(nro:byte);
var t:integer;
    tot:real;
    txt:string;

begin
if nro=0 then begin //Combo
  PERIODOI.Clear;
  PERIODOF.Clear;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if not Funciones.Listar('Select distinct(year(FechaCobro)*100 + month(FechaCobro)) as PERIODOS'
  + ' from ComprobantesCobrados order by 1 desc',DtCombo) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
    for t:=1 to DtCombo.RecordCount  do begin
      DtCombo.RecNo:=t;
      PERIODOI.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
      PERIODOF.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
    end;
  end;
  Funciones.Free;
  PERIODOi.ItemIndex:=0;
  PERIODOf.ItemIndex:=0;
end;
if nro=1 then begin

end;

end;


procedure TImp_LIVA.FormActivate(Sender: TObject);
var
  OnEventTmp: TNotifyEvent;
begin
if not(gh) then begin
  gh:=true;
  Image1.Picture.LoadFromFile(modulo2.path_todo + '\Imagenes\Encabezado.jpg');
  Coloca1(0);
  rAnteriorClick(self);
  bBuscar.SetFocus;
end;
end;

procedure TImp_LIVA.FormCreate(Sender: TObject);
begin
  gh:=false;
end;



Procedure TImp_LIVA.Grillas(nro:byte);
var t,y:integer;
    txtw:widestring;
begin
if nro=1 then begin
    //SELECT * FROM [Remanso].[dbo].[Fn_ComprobantesLibroIVA] (null,null,0)
  DataSet1.Free;
  DataSet1:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=DataSet1;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT detallecomprobante as Tipo,nrocomprobante as Nro,fechacobro as Fecha,Periodo,importe as TotalFactura,'
  +'gastoAdmin as ImporteGastos,Iva,TotalIva,Anulado FROM Fn_ComprobantesLibroIVA ('
  + PeriodoI.text + ',' + PeriodoF.text + ',' + '0);';
  if not Funciones.Listar(txtw,DataSet1) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else Exporta.Enabled:=true;
  Funciones.Free;
  Grilla1.Columns[0].Width:=90;
  Grilla1.Columns[1].Width:=100;
  Grilla1.Columns[2].Width:=90;
  Grilla1.Columns[3].Width:=60;
  Grilla1.Columns[4].Width:=90;
  Grilla1.Columns[5].Width:=90;
  Grilla1.Columns[6].Width:=40;
  Grilla1.Columns[7].Width:=80;
  Grilla1.Columns[8].Width:=60;
  end;
if nro=2 then begin
end;
end;
procedure TImp_LIVA.RvSPrint(Sender: TObject);
var top,botton,posfx,posfy,salto:double;
    mn,hoja:integer;
    ot, Periodo,vAnul:string;
    tot,tot1,valor:real;

    {Este procedimiento es el encabezado}
  Function MostrarEncabezado(pos1,pos2:double;hoja:integer):double;
  var Imagen1:TBitMap;
      el_mes,el_anio:integer;

  begin
    with RvS do begin
      {Pegamos el Logo para el reporte}
      Imagen1 := TBitMap.Create;
      Imagen1.Assign(image1.Picture.Graphic);
      BaseReport.PrintBitmapRect(pos1+6,pos2+4,pos1+105,pos2+20,Imagen1);
      {Colocamos el título}
      BaseReport.SetFont('Arial Black',14);
      BaseReport.FontColor:=clBlack;
      //BaseReport.PrintXY(pos1+80,pos2+9,'  PUNTO Y TOMA - CLIMATIZACION');// + trim(modulo2.Datos3.Fields[9].AsString));{titulo}
      BaseReport.PrintXY(pos1+80,pos2+30,'LIBRO I.V.A.');{titulo}
      //BaseReport.PrintXY(pos1+90,pos2+17,'------------------------------------------');{titulo}

      BaseReport.SetFont('Arial Black',8);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(pos1+180,pos2+19,'Pág.: ' + inttostr(hoja));{titulo}
      BaseReport.Rectangle(pos1+125,pos2+23,pos1+195,pos2+31);

      BaseReport.SetFont('Arial Black',8);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(pos1+135,pos2+29,'PERIODO:');{titulo}

      {Colocamos los Datos que faltan}
      //Periodo:=trim(FechaINI.Text) + ' al ' + trim(FechaFIN.Text);
      BaseReport.PrintXY(pos1+155,pos2+29,Periodo);
      Result:=pos2+40;
    end;
  end;

  Function MostrarDetalle(pos1,pos2:double):double;
  begin
    with RvS do begin
      BaseReport.Rectangle(pos1+5,pos2+1,pos1+195,pos2+7);
      BaseReport.SetFont('Arial',8);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(pos1+8,pos2+6,'Orden');
      BaseReport.PrintXY(pos1+18,pos2+6,'Fecha');
      BaseReport.PrintXY(pos1+40,pos2+6,'Cliente');
      BaseReport.PrintXY(pos1+75,pos2+6,'CUIT');
      BaseReport.PrintXY(pos1+100,pos2+6,'Comprobante');
      BaseReport.PrintXY(pos1+120,pos2+6,'Numero');
      BaseReport.PrintXY(pos1+145,pos2+6,'Importe');
      BaseReport.PrintXY(pos1+175,pos2+6,'Acumulado');
    end;
    Result:=pos2+7;
  end;


begin
{Empezamos con los textos}
hoja:=1;posfx:=8;posfy:=5;salto:=3.5;
posfy:=MostrarEncabezado(posfx,posfy,hoja);
posfy:=MostrarDetalle(posfx,posfy)+5;
with RvS.BaseReport do begin
  {Tomamos el color del texto}
  FontColor:=clBlack;ot:='';
  tot:=0;valor:=0;
  Top:=PosFy;
  {for mn:=1 to MOVIMIENTOS.RecordCount do begin
    MOVIMIENTOS.RecNo:=mn;
    SetFont('Arial',7);
      Rectangle(PosFx+5,posfy-3,PosFx+195,PosFy+0.5);
      if MOVIMIENTOS.Fields[7].AsString = 'False' then begin
          vAnul:='';
          tot:=tot + MOVIMIENTOS.Fields[6].AsFloat;
      end
      else begin
          vAnul:='ANULADO';
      end;


      //Factura:= trim(DBGrid1.Fields[9].AsString) + '-'+trim(DBGrid1.Fields[10].AsString);

      //Select Fecha,Cliente,'
      //CUIT,Categoria,Comprobante,Numero,Importe,Anulado

      PrintXY(posfx+8,posfy,completa1(inttostr(mn),3,'0'));                   //Nro
      PrintXY(posfx+15,posfy,trim(Grilla1.Fields[0].AsString));               //Fecha
      PrintXY(posfx+30,posfy,strcut(trim(Grilla1.Fields[1].AsString),19));    //Cliente
      PrintXY(posfx+70,posfy,strcut(trim(Grilla1.Fields[2].AsString),25));    //Cuit
      PrintXY(posfx+100,posfy,strcut(trim(Grilla1.Fields[4].AsString),25));   //Comprobante
      PrintXY(posfx+120,posfy,strcut(trim(Grilla1.Fields[5].AsString),20));   //Numero
      //PrintXY(posfx+145,posfy,redondeo(Grilla1.Fields[6].AsString,2,'R'));                    //Importe
      PrintXY(posfx+160,posfy,trim(vAnul));                                   //Anulado
      SetFont('Arial Black',7);
      //PrintXY(posfx+175,posfy,redondeos(tot,2,'s'));
      posfy:=posfy + salto;
      Botton:=PosFy;

      if (posfy > 295) then begin
        posfx:=8;
        posfy:=5;
        hoja:=hoja+1;
        NewPage;
        posfy:=MostrarEncabezado(posfx,posfy,hoja);
        posfy:=MostrarDetalle(posfx,posfy)+5;
      end;
  end;     }
//  Rectangle(PosFx+10,Top,PosFx+20,Botton);

 {Tomamos el color del texto}
  FontColor:=clBlack;ot:='';
  tot:=0;tot1:=0;
  if (posfy + (valor*5)) > 280 then begin
    posfx:=8;
    posfy:=5;
    hoja:=hoja+1;
    NewPage;

    posfy:=MostrarEncabezado(posfx,posfy,hoja);
  end;
end ;
//auditor('IMPRESION DE RESUMENES','FECHA: ');
end;


procedure TImp_LIVA.bBuscarClick(Sender: TObject);

begin
  Grillas(1);
  Grillas(2);
  //Exportar.Enabled:=True;
  //SQL.SetFocus;

end;

procedure TImp_LIVA.rAnteriorClick(Sender: TObject);
Var Inicio,Final:integer;
Var ElPeriodo,Mes,FechaActual:string;
begin
  FechaActual:=Fec_System();
  Mes:=inttostr(strtoint(strcut_midle(FechaActual,4,5))-1);
  If length(Mes) = 1 then Mes := '0' + Mes;
  ElPeriodo:=strcut_midle(FechaActual,7,10) + Mes;
  PERIODOi.text:=ElPeriodo;
  PERIODOf.text:=ElPeriodo;
  PERIODOi.Enabled:=FALSE;
  PERIODOi.Enabled:=FALSE;
  bBuscar.SetFocus;
end;

procedure TImp_LIVA.rActualClick(Sender: TObject);
Var Inicio,Final:integer;
var ElPeriodo,FechaActual:string;
begin
  FechaActual:=Fec_System();
  ElPeriodo:=strcut_midle(FechaActual,7,10) + strcut_midle(FechaActual,4,5);
  PERIODOi.text:=ElPeriodo;
  PERIODOf.text:=ElPeriodo;
  PERIODOf.Enabled:=FALSE;
  PERIODOf.Enabled:=FALSE;
  bBuscar.SetFocus;
end;

procedure TImp_LIVA.rIngresarClick(Sender: TObject);
begin
  PERIODOi.Enabled:=TRUE;
  PERIODOf.Enabled:=TRUE;
  PERIODOi.setfocus;
end;


procedure TImp_LIVA.ImprimeClick(Sender: TObject);
var gf:integer;
begin
  gf:=messagedlgpos('¿Desea IMPRIMIR el Libro IVA?',mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
  if gf = 1 then begin
    Rvs.SystemPrinter.Orientation:=poPortrait;
    RvS.Execute;
  end;
end;

procedure TImp_LIVA.JvBitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TImp_LIVA.ExportaClick(Sender: TObject);
var texto:widestring;
var txt:string;
var t,y,r:integer;
begin
todos.Clear;
texto:='';
todos.Lines.Add(texto);
r:=1;
if not DataSet1.IsEmpty then begin
  texto:='Orden' + chr(9);
  for t:=0 to DataSet1.FieldCount-1 do begin
    texto:=texto + DataSet1.Fields[t].FieldName + chr(9);
  end;
  todos.Lines.Add(texto);
  for y:=1 to DataSet1.RecordCount do begin
    DataSet1.RecNo:=y;
    texto:=inttostr(r) + chr(9);
    for t:=0 to DataSet1.FieldCount-1 do begin
      texto:=texto + DataSet1.Fields[t].AsString + chr(9);
    end;
    todos.Lines.Add(texto);
    r:=r+1;
  end;
end;
todos.SelectAll;
todos.CopyToClipboard;
messagedlg('Se Copiaron los Datos, listo para pegarlos a Excel',mtwarning,[mbok],0);

end;

end.

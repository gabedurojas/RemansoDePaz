unit Est_MoviVentas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,Unidad,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Buttons, Mask, DB, ADODB, Grids,DBClient,
  DBGrids, RpDefine, RpBase, RpSystem, LMDCustomButton, LMDButton, ToolWin,ClaseFunciones,ClaseSistemas;

type
  TEstad_movVentas = class(TForm)
    Barra1: TStatusBar;
    GroupBox1: TGroupBox;
    Bevel1: TBevel;
    Buscar: TButton;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Rv: TRvSystem;
    IMPRIME: TBitBtn;
    Button1: TButton;
    R5: TRichEdit;
    Splitter1: TSplitter;
    SALE: TLMDButton;
    R2: TRadioButton;
    PERIODO: TComboBox;
    Movim: TComboBox;
    comprobante: TComboBox;
    cabeza: TStringGrid;
    cuerpo: TStringGrid;
    Image1: TImage;
    procedure R2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BuscarClick(Sender: TObject);
    procedure IMPRIMEClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid2TitleClick(Column: TColumn);
    procedure SALEClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure PERIODOExit(Sender: TObject);
    procedure MovimExit(Sender: TObject);
    procedure comprobanteExit(Sender: TObject);
    procedure PERIODOKeyPress(Sender: TObject; var Key: Char);
    procedure MovimKeyPress(Sender: TObject; var Key: Char);
    procedure comprobanteKeyPress(Sender: TObject; var Key: Char);
    procedure RvPrint(Sender: TObject);
  private
    gh:boolean;
    mes:integer;
    elmes:string;
    Funciones:TFuncionesVarias;
    Sistemas:TSistemas;
    IdCombos:array of array of string;
    DtCombo:TClientDataSet;
    CANTIDADES,DETALLE,DataSet1,DataSet2,DataSet3:TADODataSet;
    Com1:TADOCommand;
    //FechaActual:string;{
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Estad_movVentas: TEstad_movVentas;

implementation

uses Modulo,SplashForm;

{$R *.dfm}

procedure TEstad_movVentas.FormCreate(Sender: TObject);
begin
gh:=false;
DataSet1:=TADODataSet.Create(nil);
DataSet1.ConnectionString:=modulo2.Conexion;
DataSet2:=TADODataSet.Create(nil);
DataSet2.ConnectionString:=modulo2.Conexion;
end;

procedure TEstad_movVentas.FormActivate(Sender: TObject);
begin
if not(gh) then begin
  gh:=true;
  setlength(IdCombos,3);
  CANTIDADES:=TADODataSet.Create(nil);
  CANTIDADES.ConnectionString:=modulo2.Conexion;
  DataSource1.DataSet:=CANTIDADES;
  DETALLE:=TADODataSet.Create(nil);
  DETALLE.ConnectionString:=modulo2.Conexion;
  Datasource2.DataSet:=DETALLE;
  r2.Checked;
  Coloca1(1);
  Coloca1(2);
  Coloca1(3);
  PERIODO.SetFocus;
end;
end;


procedure TEstad_movVentas.Coloca1(nro:byte);
var txtw:widestring;
    t:integer;
begin
if nro=1 then begin //Combo Cobradores
  PERIODO.Clear;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT DISTINCT YEAR(Fecha) * 100 + MONTH(Fecha),null fROM PlanillaCobranzas ORDER BY 1 DESC';
  if not Funciones.Listar(txtw,DtCombo) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
    SetLength(IdCombos[0],DtCombo.RecordCount);
    for t:=1 to DtCombo.RecordCount  do begin
      DtCombo.RecNo:=t;
      PERIODO.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
      IdCombos[0,t-1]:=DtCombo.Fields[1].AsString;
    end;
  end;
  Funciones.Free;
  PERIODO.ItemIndex:=0;
end;
if nro=2 then begin //Combo Cobradores
  movim.Clear;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT Detalle,null FROM TiposObjetos ORDER BY Detalle DESC';
  if not Funciones.Listar(txtw,DtCombo) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
    SetLength(IdCombos[1],DtCombo.RecordCount);
    for t:=1 to DtCombo.RecordCount  do begin
      DtCombo.RecNo:=t;
      movim.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
      IdCombos[1,t-1]:=DtCombo.Fields[1].AsString;
    end;
  end;
  Funciones.Free;
  movim.ItemIndex:=0;
end;
if nro=3 then begin //Combo Cobradores
  comprobante.Clear;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT DetalleComprobante,null FROM  TiposComprobantes WHERE  (Cobranzas = 1) ORDER BY DetalleComprobante';
  if not Funciones.Listar(txtw,DtCombo) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
    SetLength(IdCombos[2],DtCombo.RecordCount);
    for t:=1 to DtCombo.RecordCount  do begin
      DtCombo.RecNo:=t;
      comprobante.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
      IdCombos[2,t-1]:=DtCombo.Fields[1].AsString;
    end;
  end;
  Funciones.Free;
  comprobante.ItemIndex:=0;
end;
end;


procedure TEstad_movVentas.R2Click(Sender: TObject);
begin
PERIODO.SetFocus;
end;

procedure TEstad_movVentas.BuscarClick(Sender: TObject);
var t,y:integer;
begin
CANTIDADES.Close;
DETALLE.Close;
    if R2.Checked then begin
//      CANTIDADES.CommandText:='SELECT  ''-> '' + Detalle AS MOVIMIENTO, RazonSocial, COUNT(RazonSocial) AS CANTIDAD,'
//      + ' SUM(importe) AS IMPORTATOTAL,VALORIVA, SUM(ivaventas) AS IVAVENTAS,SUM(Expr1) AS TOTALNETO '
//      + ' from Fn_LibroVentas ('+ periodo.text +') '
//      + ' where  (Detalle='+chr(39) +trim(movim.Text) + chr(39)+') and (DetalleComprobante='+chr(39) +trim(comprobante.Text) + chr(39)+')'
//      + ' GROUP BY Detalle,RazonSocial,VALORIVA  UNION  '
//      + 'SELECT ''TOTAL '' AS MOVIMIENTO, '''' AS RazonSocial,null as cantidad,SUM(importe),NULL,SUM(ivaventas),SUM(Expr1) '
//      + 'from Fn_LibroVentas ('+ periodo.text +') '
//      + 'where (Detalle='+chr(39) +trim(movim.Text) + chr(39)+') and (DetalleComprobante='+chr(39) +trim(comprobante.Text) + chr(39)+');';
      CANTIDADES.CommandText:='SELECT  ''-> '' + Detalle AS MOVIMIENTO, RazonSocial, COUNT(RazonSocial) AS CANTIDAD,'
      + ' SUM(importe) AS IMPORTATOTAL,VALORIVA, SUM(Subtotal) AS SUBTOTAL,SUM(NETOGRABADO) AS NETOGRABADO, '
      + ' SUM(IVA21) AS IVA21, sum(exento) as EXENTO from Fn_LibroVentasNew ('+ periodo.text +') '
      + ' where  (Detalle='+chr(39) +trim(movim.Text) + chr(39)+') and (DetalleComprobante='+chr(39) +trim(comprobante.Text) + chr(39)+')'
      + ' GROUP BY Detalle,RazonSocial,VALORIVA UNION  '
      + ' SELECT ''TOTAL '' AS MOVIMIENTO, '''' AS RazonSocial,null as cantidad,SUM(importe),NULL,SUM(Subtotal),'
      + ' SUM(NETOGRABADO),SUM(IVA21), sum(exento) from Fn_LibroVentasNEw ('+ periodo.text +') '
      + 'where (Detalle='+chr(39) +trim(movim.Text) + chr(39)+') and (DetalleComprobante='+chr(39) +trim(comprobante.Text) + chr(39)+');';
      CANTIDADES.Open;
        dbgrid1.Columns[0].Width:=150;
        dbgrid1.Columns[1].Width:=100;
        dbgrid1.Columns[2].Width:=100;
        dbgrid1.Columns[3].Width:=100;
        dbgrid1.Columns[4].Width:=100;
        dbgrid1.Columns[5].Width:=100;
        dbgrid1.Columns[6].Width:=100;
        dbgrid1.Columns[7].Width:=100;
        dbgrid1.Columns[8].Width:=100;
    end;
    for t:=0 to cabeza.ColCount-1 do
    for y:=1 to cabeza.RowCount-1 do cabeza.Cells[t,y]:='';
     for t:=1 to Datasource1.DataSet.RecordCount do begin
      Datasource1.DataSet.RecNo:=t;
      cabeza.RowCount:=t+1;
      cabeza.Cells[0,t]:=trim(Datasource1.DataSet.Fields[0].AsString);
      cabeza.Cells[1,t]:=trim(Datasource1.DataSet.Fields[1].AsString);
      cabeza.Cells[2,t]:=trim(Datasource1.DataSet.Fields[2].AsString);
      cabeza.Cells[3,t]:=trim(Datasource1.DataSet.Fields[3].AsString);
      cabeza.Cells[4,t]:=trim(Datasource1.DataSet.Fields[4].AsString);
      cabeza.Cells[5,t]:=trim(Datasource1.DataSet.Fields[5].AsString);
      cabeza.Cells[6,t]:=trim(Datasource1.DataSet.Fields[6].AsString);
      cabeza.Cells[7,t]:=trim(Datasource1.DataSet.Fields[7].AsString);
      cabeza.Cells[8,t]:=trim(Datasource1.DataSet.Fields[8].AsString);
     end;

    if R2.Checked then begin
      DETALLE.CommandText:='select case when detalle=''PLAN DE PREVISION (PSP)'' then ''PSP'' else detalle end as Detalle,'
      + ' RazonSocial AS Cobrador,nrogestor,DetalleComprobante,NroComprobante,'
      + ' CONVERT(CHAR(10),FechaCobro,103) AS FechaCobro,PuntoVenta AS Imputacion,Importe,ValorIVA,'
      + ' Subtotal,netograbado,iva21,exento from Fn_LibroVentasNew ('+ periodo.text +') '
      + ' where  (Detalle='+chr(39) +trim(movim.Text) + chr(39)+') and (' +
        'DetalleComprobante='+chr(39)+ trim(comprobante.Text) + chr(39)+') ORDER BY 2;';
      DETALLE.Open;
        dbgrid2.Columns[0].Width:=100;
        dbgrid2.Columns[1].Width:=100;
        dbgrid2.Columns[2].Width:=60;
        dbgrid2.Columns[3].Width:=60;
        dbgrid2.Columns[4].Width:=80;
    end;
    for t:=0 to cuerpo.ColCount-1 do
    for y:=1 to cuerpo.RowCount-1 do cuerpo.Cells[t,y]:='';
     for t:=1 to Datasource2.DataSet.RecordCount do begin
      Datasource2.DataSet.RecNo:=t;
      cuerpo.RowCount:=t+1;
      cuerpo.Cells[0,t]:=trim(Datasource2.DataSet.Fields[0].AsString);
      cuerpo.Cells[1,t]:=trim(Datasource2.DataSet.Fields[1].AsString);
      cuerpo.Cells[2,t]:=trim(Datasource2.DataSet.Fields[2].AsString);
      cuerpo.Cells[3,t]:=trim(Datasource2.DataSet.Fields[3].AsString);
      cuerpo.Cells[4,t]:=trim(Datasource2.DataSet.Fields[4].AsString);
      cuerpo.Cells[5,t]:=trim(Datasource2.DataSet.Fields[5].AsString);
      cuerpo.Cells[6,t]:=trim(Datasource2.DataSet.Fields[6].AsString);
      cuerpo.Cells[7,t]:=trim(Datasource2.DataSet.Fields[7].AsString);
      cuerpo.Cells[8,t]:=trim(Datasource2.DataSet.Fields[8].AsString);
      cuerpo.Cells[9,t]:=trim(Datasource2.DataSet.Fields[9].AsString);
      cuerpo.Cells[10,t]:=trim(Datasource2.DataSet.Fields[10].AsString);
      cuerpo.Cells[11,t]:=trim(Datasource2.DataSet.Fields[11].AsString);
      cuerpo.Cells[12,t]:=trim(Datasource2.DataSet.Fields[12].AsString);
     end;

if DETALLE.RecordCount <> 0 then IMPRIME.Enabled:=true
  else IMPRIME.Enabled:=false;
end;

procedure TEstad_movVentas.IMPRIMEClick(Sender: TObject);
begin
      Rv.SystemPrinter.Orientation:=poPortrait;
      Rv.Execute;
end;

procedure TEstad_movVentas.Button1Click(Sender: TObject);
var p,t:integer;
var texto:widestring;
begin
R5.Clear;
for p:=1 to CANTIDADES.RecordCount do begin
  texto:='';
  CANTIDADES.RecNo:=p;
  if p=1 then begin
    texto:='Movimiento' +  chr(9) + 'Cobrador' + chr(9) + 'Cantidades' + chr(9) + 'ImporteTotal'
    + chr(9) + 'ValorIva' + chr(9) + 'Subtotal' + chr(9) + 'NetoGrabado'
    + chr(9) + 'IVA21%' + chr(9) + 'Exento';
    R5.Lines.Add(texto);
    texto:='';
  end;
  for t:=0 to CANTIDADES.FieldCount-1 do begin
    texto:=texto + CANTIDADES.Fields[t].AsString + chr(9);
  end;
  R5.Lines.Add(texto);
end;
texto:='';
R5.Lines.Add(texto);
R5.Lines.Add(texto);

  Splash := TSplash.Create(Application);
  Splash.Show;
  Splash.ProgressBar1.Max:=800;
  for p:=1 to DETALLE.RecordCount do begin
    Splash.ProgressBar1.Position:=1;
    texto:='';
    DETALLE.RecNo:=p;
    Splash.Label3.Caption:=inttostr(p);
    Splash.Update;
    if p=1 then begin
      texto:='Detalle' + chr(9) + 'Cobrador' + chr(9) + 'NroGestor' + chr(9)
           + 'Comprobante' + chr(9) + 'NroComprobante' + chr(9) + 'FechaCobro' + chr(9)
           + 'Imputacion' + chr(9) + 'Importe' + chr(9)+ 'ValorIva' + chr(9)
           + 'SubTotal' + chr(9) + 'NetoGrabado' + chr(9)+ 'IVA21%' + chr(9)+ 'Exento';
      R5.Lines.Add(texto);
      texto:='';
    end;
    for t:=0 to DETALLE.FieldCount-1 do begin
          texto:=texto + DETALLE.Fields[t].AsString + chr(9);
    end;
    R5.Lines.Add(texto);
  end;
R5.SelectAll;
R5.CopyToClipboard;
Splash.Hide;
Splash.Free;
messagedlg('Se Copiaron los Datos al Clipboard',mtwarning,[mbok],0);
end;

procedure TEstad_movVentas.DBGrid1TitleClick(Column: TColumn);
begin
CANTIDADES.IndexFieldNames:=Column.FieldName;
end;

procedure TEstad_movVentas.DBGrid2TitleClick(Column: TColumn);
begin
DETALLE.IndexFieldNames:=Column.FieldName;
end;

procedure TEstad_movVentas.SALEClick(Sender: TObject);
begin
Close;
end;


procedure TEstad_movVentas.PERIODOExit(Sender: TObject);

begin
if PERIODO.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el PERIODO Ingresado!!',mterror,[mbok],0);
  PERIODO.SetFocus;
end
else begin
     mes:=strtoint(strcut_midle(trim(periodo.Text),5,6));
     elmes:=el_mes(mes);
end;
end;

procedure TEstad_movVentas.MovimExit(Sender: TObject);
begin
if Movim.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo De Movimiento Ingresado!!',mterror,[mbok],0);
  Movim.SetFocus;
end;
end;

procedure TEstad_movVentas.comprobanteExit(Sender: TObject);
begin
if comprobante.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo De Comprobante Ingresado!!',mterror,[mbok],0);
  comprobante.SetFocus;
end;
end;

procedure TEstad_movVentas.PERIODOKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then movim.SetFocus;
end;

procedure TEstad_movVentas.MovimKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then comprobante.SetFocus;
end;

procedure TEstad_movVentas.comprobanteKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = chr(13) then buscar.SetFocus;
end;

procedure TEstad_movVentas.RvPrint(Sender: TObject);
var posfx,posfy,posfin,pos_y,salto:double;
    acum,calc,acum1:real;
    mn,hoja,t,y,peri,Tamanio:integer;
    txt, Fuente,PathLogo:string;
    yh:boolean;
    Imagen1:TBitMap;

   Function Logo(pos1,pos2:double;hoja:integer;impuesto:byte):double;
   var posn:double;
   begin
   with Rv do begin
     posn:=pos2;
     Imagen1 := TBitMap.Create;
     PathLogo:=modulo2.path_todo + '\Imagenes\logo_carmelo.jpg';
     if FileExists(PathLogo) then begin
       Image1.Picture.LoadFromFile(PathLogo);
       Imagen1.Assign(Image1.Picture.Graphic);
       BaseReport.PrintBitmapRect(pos1+5,posn+5,pos1+50,posn+20,Imagen1);
     end;
     Imagen1.Free;
     BaseReport.Rectangle(pos1+4,posn+5,pos1+205,posn+20);
     Fuente:=modulo2.INI1.ReadString('Titulo3 Facturas','Fuente','Arial Black');
     try
       Tamanio:=strtoint(modulo2.INI1.ReadString('Titulo3 Facturas','Tamaño','10'));
     except
       Tamanio:=10;
     end;
     BaseReport.SetFont(Fuente,Tamanio);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(pos1+50,posn+15,'Servicios & Mandatos S.A.');
     BaseReport.PrintXY(pos1+140,posn+15,modulo2.INI1.ReadString('Titulo3 Facturas','Titulo0','')+ ' - Parque de los Recuerdos');
     BaseReport.SetFont('Arial Black',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(pos1+4,posn+5,pos1+205,posn+30);
     BaseReport.PrintXY(pos1+5,posn+27,'Libro Ventas Periodo: ' + elmes + ' - ' + strcut_midle(trim(periodo.Text),1,4) +' ('+ trim(periodo.Text) +')');
   end;
   Logo:=posn+28;
   end;

  Function mostrar1(pos1,pos2:double;hoja:integer;impuesto:byte):double;
  var posn:double;
  begin
      posn:=pos2;
      Rv.BaseReport.SetFont('Arial Black',10);
      Rv.BaseReport.FontColor:=clBlack;
      posn:=posn + 5;
      Rv.BaseReport.SetFont('MS Sans Serif',7);
      Rv.BaseReport.FontColor:=clBlack;
      Rv.BaseReport.Rectangle(pos1+5,posn,pos1+205,posn+9);
      Rv.BaseReport.PrintXY(pos1+6,posn+4,'Tramite');
      Rv.BaseReport.PrintXY(pos1+30,posn+4,'Cobrador');
      Rv.BaseReport.PrintXY(pos1+75,posn+4,'Tipo');
        Rv.BaseReport.PrintXY(pos1+75,posn+8,'Comprobante');
      Rv.BaseReport.PrintXY(pos1+95,posn+4,'Numero');
        Rv.BaseReport.PrintXY(pos1+95,posn+8,'Comprobante');
      Rv.BaseReport.PrintXY(pos1+113,posn+4,'FechaCobro');
      Rv.BaseReport.PrintXY(pos1+130,posn+4,'Imputacion');
      Rv.BaseReport.PrintXY(pos1+146,posn+4,'Importe');
        Rv.BaseReport.PrintXY(pos1+146,posn+8,'Total');
      Rv.BaseReport.PrintXY(pos1+162,posn+4,'Sub');
        Rv.BaseReport.PrintXY(pos1+162,posn+8,'Total');
      Rv.BaseReport.PrintXY(pos1+171,posn+4,'Neto');
        Rv.BaseReport.PrintXY(pos1+171,posn+8,'Grabado');
      Rv.BaseReport.PrintXY(pos1+186,posn+4,'Valor');
        Rv.BaseReport.PrintXY(pos1+186,posn+8,'IVA');
      Rv.BaseReport.PrintXY(pos1+195,posn+4,'Exento');
      mostrar1:=posn;
  end;

  Procedure mostrar_raya(pos1,pos2,posfin:double);
  var posn:double;
  begin
     posn:=pos2;
     Rv.BaseReport.MoveTo(pos1+5,posn);Rv.BaseReport.LineTo(pos1+5,posfin+2);{Linea de la izq.}
     Rv.BaseReport.MoveTo(pos1+29,posn);Rv.BaseReport.LineTo(pos1+29,posfin+2);{cobrador}
     Rv.BaseReport.MoveTo(pos1+74,posn);Rv.BaseReport.LineTo(pos1+74,posfin+2);{tipoplanilla}
     Rv.BaseReport.MoveTo(pos1+94,posn);Rv.BaseReport.LineTo(pos1+94,posfin+2);{comsion}
     Rv.BaseReport.MoveTo(pos1+112,posn);Rv.BaseReport.LineTo(pos1+112,posfin+2);{entrada}
     Rv.BaseReport.MoveTo(pos1+129,posn);Rv.BaseReport.LineTo(pos1+129,posfin+2);{salida}
     Rv.BaseReport.MoveTo(pos1+145,posn);Rv.BaseReport.LineTo(pos1+145,posfin+2);{totalneto}
     Rv.BaseReport.MoveTo(pos1+161,posn);Rv.BaseReport.LineTo(pos1+161,posfin+2);{nroplanilla}
     Rv.BaseReport.MoveTo(pos1+170,posn);Rv.BaseReport.LineTo(pos1+170,posfin+2);{fplanilla}
     Rv.BaseReport.MoveTo(pos1+185,posn);Rv.BaseReport.LineTo(pos1+185,posfin+2);{fplanilla}
     Rv.BaseReport.MoveTo(pos1+194,posn);Rv.BaseReport.LineTo(pos1+194,posfin+2);{fplanilla}
     Rv.BaseReport.MoveTo(pos1+205,posn);Rv.BaseReport.LineTo(pos1+205,posfin+2);{Linea de la der.}
     Rv.BaseReport.MoveTo(pos1+5,posfin+2);Rv.BaseReport.LineTo(pos1+205,posfin+2);{Linea de Abajo}
  end;

  Function Pie(pos1,pos2:double;hoja:integer;impuesto:byte):double;
  var posn:double;
      t:integer;
      impt,subt,netog,iva,exe:real;
  begin
      posn:=pos2 + 5;
//      Rv.BaseReport.SetFont('Arial Black',7);
//      Rv.BaseReport.FontColor:=clBlack;
//      Rv.BaseReport.PrintXY(pos1+54,posn,'TOTALES' );
       for t:=1 to datasource1.DataSet.RecordCount  do  begin
         if Trim(cabeza.Cells[0,t]) = 'TOTAL' then begin
          Rv.BaseReport.SetFont('Arial Black',8);
          Rv.BaseReport.FontColor:=clBlack;
          impt:=strtofloat(cabeza.Cells[3,t]);
          subt:=strtofloat(cabeza.Cells[5,t]);
          netog:=strtofloat(cabeza.Cells[6,t]);
          iva:=strtofloat(cabeza.Cells[7,t]);
          exe:=strtofloat(cabeza.Cells[8,t]);
         end;
       end;
          Rv.BaseReport.PrintXY(pos1+146,posn,'Importe Total:   $' + floattostr(impt));//salida
          Rv.BaseReport.PrintXY(pos1+146,posn+5,'SubTotal:          $' + floattostr(subt));//totalneto
          Rv.BaseReport.PrintXY(pos1+146,posn+10,'Neto Grabado:   $' + floattostr(netog));//totalneto
          Rv.BaseReport.PrintXY(pos1+146,posn+15,'Total IVA21%:   $' + floattostr(iva));//totalneto
          Rv.BaseReport.PrintXY(pos1+146,posn+20,'Total Exento:    $' + floattostr(exe));//totalneto
      //      posn:=posn + 25;
      Rv.BaseReport.SetFont('Arial ',7);
      Rv.BaseReport.FontColor:=clBlack;
      Rv.BaseReport.PrintXY(pos1+146,posn+25,'Fec Imp: '  + trim(strcut(Fec_System(),10)));
  end;

begin
hoja:=1;posfx:=5;posfy:=0;salto:=3;
yh:=true;
posfy:=logo(posfx,posfy,hoja,2);
posfy:=mostrar1(posfx,posfy,hoja,2);
pos_y:=posfy+salto+salto+salto;
  for t:=1 to datasource2.DataSet.RecordCount  do  begin
    Rv.BaseReport.SetFont('Arial',7);
    Rv.BaseReport.FontColor:=clBlack;
    Rv.BaseReport.PrintXY(posfx+6,pos_y+4,cuerpo.Cells[0,t]);//tipotram
    Rv.BaseReport.PrintXY(posfx+30,pos_y+4,cuerpo.Cells[1,t]);//cobrador
    Rv.BaseReport.PrintXY(posfx+75,pos_y+4,cuerpo.Cells[3,t]);//Comprobante
    Rv.BaseReport.PrintXY(posfx+95,pos_y+4,cuerpo.Cells[4,t]);//nroComprobante
    Rv.BaseReport.PrintXY(posfx+113,pos_y+4,cuerpo.Cells[5,t]);//FechaCobro
    Rv.BaseReport.PrintXY(posfx+130,pos_y+4,cuerpo.Cells[6,t]);//imputacion
    Rv.BaseReport.PrintXY(posfx+146,pos_y+4,cuerpo.Cells[7,t]);//Imp.Total
    Rv.BaseReport.PrintXY(posfx+162,pos_y+4,cuerpo.Cells[9,t]);//subtotal
    Rv.BaseReport.PrintXY(posfx+171,pos_y+4,cuerpo.Cells[10,t]);//NetoGrabado
    Rv.BaseReport.PrintXY(posfx+186,pos_y+4,cuerpo.Cells[11,t]);//valoriva
    Rv.BaseReport.PrintXY(posfx+195,pos_y+4,cuerpo.Cells[12,t]);//exento
    pos_y:=pos_y + salto;

    if (pos_y > 260) and (t < datasource2.DataSet.RecordCount -1) then begin {Aca sumamos una nueva pagina}
      posfin:=pos_y ;
      mostrar_raya(posfx,posfy,posfin);
      posfin:=posfin + 9;
      posfx:=5;
      posfy:=0;
      hoja:=hoja+1;
      Rv.BaseReport.NewPage;
      logo(posfx,posfy,hoja,2);
      posfy:=posfy+28;
      posfy:=mostrar1(posfx,posfy,hoja,2);
      pos_y:=posfy+salto+salto+salto;
    end;
  end;

posfin:=pos_y;
mostrar_raya(posfx,posfy,posfin);
posfy:=posfin + 4;
pie(posfx,posfy,hoja,2);
posfin:=posfin + 3;
end;

end.

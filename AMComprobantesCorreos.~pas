unit AMComprobantesCorreos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, JvExDBGrids, JvDBGrid, StdCtrls, Buttons,DateUtils,
  StrUtils,WSDLIntf,ADODB,ClaseComprobantesCobradosCorreo,
  JvExButtons, JvBitBtn,ClaseFunciones,Unidad, DB, ComCtrls, Mask,DBClient,ClaseTiposSectores,
  RpDefine, RpBase, RpSystem,ExtCtrls,ClaseSistemas;
type HackTable = class(TADOTable);
type
  TCompCorreo = class(TForm)
    DataSource1: TDataSource;
    Barra1: TStatusBar;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    Sector: TComboBox;
    labusque: TJvBitBtn;
    Image1: TImage;
    JvBitBtn1: TJvBitBtn;
    PC2: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBGrid1: TDBGrid;
    FECNAC: TMaskEdit;
    Label6: TLabel;
    Label20: TLabel;
    TPOTALON: TComboBox;
    RE5: TRichEdit;
    T8: TClientDataSet;
    grilla2: TStringGrid;
    GroupBox1: TGroupBox;
    Label18: TLabel;
    PV: TComboBox;
    Label1: TLabel;
    MaskEdit1: TMaskEdit;
    Label21: TLabel;
    IMPORTE: TEdit;
    GUARDA: TJvBitBtn;
    TabSheet4: TTabSheet;
    DBGrid2: TDBGrid;
    DataSource2: TDataSource;
    GroupBox2: TGroupBox;
    print: TJvBitBtn;
    RvS1: TRvSystem;
    CheckBox1: TCheckBox;
    procedure FormActivate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure FormCreate(Sender: TObject);
    procedure SectorExit(Sender: TObject);
    procedure SectorKeyPress(Sender: TObject; var Key: Char);
    procedure labusqueClick(Sender: TObject);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure FECNACExit(Sender: TObject);
    procedure FECNACKeyPress(Sender: TObject; var Key: Char);
    procedure TPOTALONExit(Sender: TObject);
    procedure TPOTALONKeyPress(Sender: TObject; var Key: Char);
    procedure PVExit(Sender: TObject);
    procedure PVKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure grilla2Click(Sender: TObject);
    procedure grilla2DblClick(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure IMPORTEKeyPress(Sender: TObject; var Key: Char);
    procedure IMPORTEExit(Sender: TObject);
    procedure GUARDAClick(Sender: TObject);
    procedure printClick(Sender: TObject);
    procedure RvS1Print(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    gh:boolean;
    FechaActual:string;
    action:integer;
    Sistemas:TSistemas;
    ComprobantesCobradosCorreo:TComprobantesCobradosCorreo;
    PosH:Array [0..3] of Double;
    Camp:Array [0..3] of Integer;
    TxtCamp:Array [0..3] of String;
    { Private declarations }
  public
      Funciones:TFuncionesVarias;
      Dtcombo,DataSetC,DataSet,DataSet1,DtComboC,DataSetT:TClientDataSet;
      IdCombos:array of array of string; // para los combobox
      idreser,cant:integer;
    { Public declarations }
  end;

var
  CompCorreo: TCompCorreo;

implementation

uses Modulo;
{$R *.dfm}

procedure TCompCorreo.FormActivate(Sender: TObject);
begin
if not gh then begin
  gh:=true;
  setlength(IdCombos,2);
  fecnac.Text:=LeftStr(Fec_System(),10);
  FechaActual:=LeftStr(Fec_System(),10);
  MaskEdit1.Text:=LeftStr(Fec_System(),10);
    try
      image1.Picture.LoadFromFile(modulo2.path_todo + '\Imagenes\LogoCarmeloMonte.jpg');
    except
    end;
  FechaActual:=LeftStr(Fec_System(),10);
  grilla2.Cells[0,0]:='Orden';
  grilla2.Cells[1,0]:='NroTalonario';
  grilla2.Cells[2,0]:='Cobrador';
  grilla2.Cells[3,0]:='NroComprobante';
  grilla2.Cells[4,0]:='TipoComprobante';
  grilla2.Cells[5,0]:='PuntoVenta';
  grilla2.Cells[6,0]:='IDTipoComprob.';
  grilla2.Cells[7,0]:='Selec.';
  coloca1(1);
  coloca1(2);
  PC1.ActivePage:=PC1.Pages[0];
  PC2.ActivePage:=PC2.Pages[0];
  sector.SetFocus;
  print.Enabled:=false;
end;
end;

procedure TCompCorreo.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TCompCorreo.Coloca1(nro:byte);
var sec:string;
    txtw:widestring;
    TiposSectores:TTiposSectores;
    t,y,NroDni,p,u:integer;
    accion:variant;
    Param:TWideStrings;
begin
if nro=0 then begin
    DataSet.Free;
    DataSet:=TClientDataSet.Create(nil);
    DataSource1.DataSet:=DataSet;
    Funciones:=TFuncionesVarias.Create(nil);
    Funciones.ConnectionString:=modulo2.Conexion;
    txtw:='SELECT dbo.LosComprobantesEntregadosFaltantes.NroTalonario, dbo.LosComprobantesEntregadosFaltantes.Fecha AS FechaEntrega,'
    +'dbo.LosComprobantesEntregadosFaltantes.Cantidad, COUNT(dbo.LosComprobantesEntregadosFaltantes.NroTalonario) AS CantFaltantes,'
    +' dbo.LosComprobantesEntregadosFaltantes.Nombre AS Cobrador,dbo.LosComprobantesEntregadosFaltantes.DetalleComprobante AS TipoComprobante,'
    +' dbo.LosComprobantesEntregadosFaltantes.PuntoVenta, dbo.ComprobantesEntregaConfig.Desde, dbo.ComprobantesEntregaConfig.Desde + 49 AS Hasta'
    //+',dbo.ComprobantesCobradosCorreo.NroComprobante
    +' FROM dbo.LosComprobantesEntregadosFaltantes INNER JOIN '
    +'dbo.ComprobantesEntregaConfig ON dbo.LosComprobantesEntregadosFaltantes.NroTalonario = dbo.ComprobantesEntregaConfig.NroTalonario LEFT OUTER JOIN '
    +'dbo.ComprobantesCobradosCorreo ON dbo.LosComprobantesEntregadosFaltantes.NroComprobante = dbo.ComprobantesCobradosCorreo.NroComprobante'
   // +' WHERE  (dbo.LosComprobantesEntregadosFaltantes.Fecha >= CONVERT(char(10), ' + CHR(39) + TRIM(FECNAC.Text) + CHR(39) +', 103)) '
    +' WHERE (dbo.LosComprobantesEntregadosFaltantes.CuifCobrador = '+ IdCombos[0,SECTOR.ItemIndex] + ') AND '
    +'(dbo.LosComprobantesEntregadosFaltantes.DetalleComprobante = '+ CHR(39) + TRIM(TPOTALON.Text) + CHR(39) +') AND '
    +'(dbo.LosComprobantesEntregadosFaltantes.PuntoVenta ='  + trim(pv.Text)+')'
    +'GROUP BY dbo.LosComprobantesEntregadosFaltantes.NroTalonario, dbo.LosComprobantesEntregadosFaltantes.Fecha,'
    +' dbo.LosComprobantesEntregadosFaltantes.Cantidad,dbo.LosComprobantesEntregadosFaltantes.Nombre, dbo.LosComprobantesEntregadosFaltantes.PuntoVenta,'
    +' dbo.LosComprobantesEntregadosFaltantes.DetalleComprobante,dbo.ComprobantesEntregaConfig.Desde, dbo.ComprobantesCobradosCorreo.NroComprobante '
    + 'HAVING  (dbo.ComprobantesCobradosCorreo.NroComprobante IS NULL) ORDER BY dbo.LosComprobantesEntregadosFaltantes.NroTalonario';
    if not Funciones.Listar(txtw,DataSet) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    Funciones.Free;
    if DataSet.RecordCount > 0 then begin
          print.Enabled:=true;
          dbgrid1.Columns[0].Width:=80;
          dbgrid1.Columns[1].Width:=80;
          dbgrid1.Columns[2].Width:=50;
          dbgrid1.Columns[3].Width:=80;
          dbgrid1.Columns[4].Width:=200;
          dbgrid1.Columns[5].Width:=100;
          coloca1(6);
    end
    else begin
      Barra1.Panels[0].Text:='Sin Datos en Grilla';
      IF application.MessageBox('COMPROBANTES NO encontrados, !Desea Buscar Reservas por otro Sector!?','Advertencia'
        ,mb_OKcancel+mb_IconHAnd) = IdOk then begin
        PC1.Enabled:=true;
          print.Enabled:=false;
        sector.SetFocus;
      end
      else begin
        PC1.Enabled:=true;
        Barra1.Panels[0].Text:='La opcion Busqueda fue Cancelada';
        print.Enabled:=false;
        labusque.SetFocus;
      end;
    end;
end;
if nro=1 then begin //Combo Talonarios
    DtCombo.Free;
    DtCombo:=TClientdataSet.Create(nil);
    Funciones:=TFuncionesVarias.Create(nil);
    Funciones.ConnectionString:=modulo2.Conexion;
    if not Funciones.Listar('SELECT IDTipoComprobante,DetalleComprobante FROM TiposComprobantes WHERE (Cobranzas=1)',DtCombo) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
    else begin
      SetLength(IdCombos[1],DtCombo.RecordCount);
      for t:=1 to DtCombo.RecordCount  do begin
        DtCombo.RecNo:=t;
        TPOTALON.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
        IdCombos[1,t-1]:=DtCombo.Fields[0].AsString;
      end;
    end;
    Funciones.Free;
  TPOTALON.ItemIndex:=0;
end;
if nro=2 then begin   //tipos cobradores
    SECTOR.Clear;
    DtCombo.Free;
    Dtcombo:=TClientDataSet.Create(nil);
    TiposSectores:=TTiposSectores.Create(nil);
    TiposSectores.ConnectionString:=modulo2.Conexion;
    txtw:='SELECT distinct Nombre,CUIF FROM VLosCobradores ORDER BY Nombre';
    if TiposSectores.Listar(txtw,DtCombo) then begin
      SetLength(IdCombos[0],DtCombo.RecordCount);
      for t:=1 to DtCombo.RecordCount  do begin
        DtCombo.RecNo:=t;
        SECTOR.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
        IdCombos[0,t-1]:=DtCombo.Fields[1].AsString;
      end;
    end
    else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    TiposSectores.Free;
    SECTOR.ItemIndex:=0;
end;
if nro=3 then begin  // controlo que haya comprob seleccionados
    cant:=0;
    for t:=1 to grilla2.RowCount-1 do
    if trim(grilla2.Cells[7,t])='X' then begin
       cant:=cant + 1;
    end;
    if cant=0 then begin
       messagedlg('ERROR NO Existen ningun Comprobante Seleccionado de la Grilla..', mtError,[mbok],0);
       guarda.Enabled:=false;
    end
    else begin
        guarda.Enabled:=true;
    end;
end;
if nro=4 then  begin   // proc de limpieza
 DataSource1.DataSet:=nil;
  DataSource2.DataSet:=nil;
 for p:=0 to grilla2.ColCount-1 do
  for u:=1 to grilla2.RowCount-1 do grilla2.Cells[p,u]:='';
 grilla2.RowCount:=2;
 MaskEdit1.Text:=LeftStr(Fec_System(),10);
 guarda.Enabled:=false;
 PC2.ActivePage:=PC2.Pages[0];
 checkbox1.Checked:=false;
 sector.SetFocus
end;
if nro=5 then begin
    DtComboC.Free;
    DtcomboC:=TClientDataSet.Create(nil);
    Funciones:=TFuncionesVarias.Create(nil);
    Funciones.ConnectionString:=modulo2.Conexion;
    txtw:='SELECT dbo.LosComprobantesEntregados.NroTalonario,dbo.LosComprobantesEntregados.Fecha as FecEntrega ,dbo.LosComprobantesEntregados.NroComprobante,'
    +' dbo.LosComprobantesEntregados.Nombre as Cobrador,dbo.LosComprobantesEntregados.DetalleComprobante as TipoComprobante, '
    +' dbo.LosComprobantesEntregados.PuntoVenta,dbo.LosComprobantesEntregados.IdTipoComprobante as IdTipoComprob'
    +' FROM dbo.LosComprobantesEntregados LEFT OUTER JOIN'
    +' dbo.ComprobantesCobradosCorreo ON dbo.LosComprobantesEntregados.NroComprobante = dbo.ComprobantesCobradosCorreo.NroComprobante LEFT OUTER JOIN '
    +' dbo.ComprobantesCobrados ON dbo.LosComprobantesEntregados.NroComprobante = dbo.ComprobantesCobrados.NroComprobante '
    +' WHERE (dbo.ComprobantesCobrados.NroComprobante IS NULL) '
    //AND (dbo.LosComprobantesEntregados.Fecha >= CONVERT(char(10),' + CHR(39) + TRIM(FECNAC.Text) + CHR(39) + ', 103)) '
    +' AND (dbo.ComprobantesCobradosCorreo.NroComprobante IS NULL) and (dbo.LosComprobantesEntregados.CuifCobrador = ' + IdCombos[0,SECTOR.ItemIndex] + ')'
    +' AND (dbo.LosComprobantesEntregados.DetalleComprobante = ' + CHR(39) + TRIM(TPOTALON.Text) + CHR(39) + ')'
    +' and (dbo.LosComprobantesEntregados.NroTalonario= ' + DataSource1.DataSet.Fields[0].AsString + ') and (dbo.LosComprobantesEntregados.PuntoVenta= ' + trim(pv.text) +')'
    +' ORDER BY dbo.LosComprobantesEntregados.NroTalonario, dbo.LosComprobantesEntregados.NroComprobante';
    if not Funciones.Listar(txtw,DtComboC) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    Funciones.Free;
    for t:=0 to grilla2.ColCount-1 do
    for y:=1 to grilla2.RowCount-1 do grilla2.Cells[t,y]:='';
    for t:=1 to DtComboC.RecordCount  do begin
      DtComboC.RecNo:=t;
      grilla2.RowCount:=t+1;
      grilla2.Cells[0,t]:=completa1(inttostr(t),2,'0');
      grilla2.Cells[1,t]:=trim(DtComboC.Fields[0].AsString);
      grilla2.Cells[2,t]:=trim(DtComboC.Fields[3].AsString);
      grilla2.Cells[3,t]:=trim(DtComboC.Fields[2].AsString);
      grilla2.Cells[4,t]:=trim(DtComboC.Fields[4].AsString);
      grilla2.Cells[5,t]:=trim(DtComboC.Fields[5].AsString);
      grilla2.Cells[6,t]:=trim(DtComboC.Fields[6].AsString);
      grilla2.Cells[7,t]:='';
    end;
end;
if nro=6 then begin
    DataSetC.Free;
    DataSetC:=TClientDataSet.Create(nil);
    DataSource2.DataSet:=DataSetC;
    Funciones:=TFuncionesVarias.Create(nil);
    Funciones.ConnectionString:=modulo2.Conexion;
    txtw:='SELECT row_number() over (order by dbo.ComprobantesCobradosCorreo.FechaPlanilla asc) as Orden,CONVERT(char(10),dbo.ComprobantesCobradosCorreo.FechaPlanilla, 103) AS FechaCarga, dbo.TiposComprobantes.DetalleComprobante, '
    +'dbo.ComprobantesCobradosCorreo.NroComprobante FROM dbo.ComprobantesCobradosCorreo INNER JOIN '
    +'dbo.TiposComprobantes ON dbo.ComprobantesCobradosCorreo.IdTipoComprobante = dbo.TiposComprobantes.IDTipoComprobante INNER JOIN  '
    +'dbo.VLosCobradores ON dbo.ComprobantesCobradosCorreo.CuifCobrador = dbo.VLosCobradores.Cuif where '
    +'(dbo.ComprobantesCobradosCorreo.IdTipoComprobante=' + IdCombos[1,TPOTALON.ItemIndex] + ') and '
    +'(dbo.ComprobantesCobradosCorreo.CuifCobrador= ' + IdCombos[0,SECTOR.ItemIndex] + ') and '
    +'( dbo.ComprobantesCobradosCorreo.NroTipoObjeto= ' + trim(pv.text) +' ) order by 1,3';
    if not Funciones.Listar(txtw,DataSetC) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    Funciones.Free;
    if DataSetC.RecordCount > 0 then begin
          print.Enabled:=true;
          dbgrid2.Columns[0].Width:=60;
          dbgrid2.Columns[1].Width:=80;
          dbgrid2.Columns[2].Width:=80;
          dbgrid2.Columns[3].Width:=80;
    end;
end;
end;

procedure TCompCorreo.SectorExit(Sender: TObject);
begin
if Sector.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Gestor Ingresado!!',mterror,[mbok],0);
  Sector.SetFocus;
end;
end;

procedure TCompCorreo.SectorKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  pv.SetFocus;
  //FECNAC.SetFocus;
end;
end;

procedure TCompCorreo.labusqueClick(Sender: TObject);
begin
Coloca1(0);
end;

procedure TCompCorreo.JvBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TCompCorreo.FECNACExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(FECNAC.Text));
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  FECNAC.SetFocus;
end;
end;

procedure TCompCorreo.FECNACKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
   Key := #0;
   pv.SetFocus;
end;
end;

procedure TCompCorreo.TPOTALONExit(Sender: TObject);
begin
if TPOTALON.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Talonario Ingresado!!',mterror,[mbok],0);
  TPOTALON.SetFocus;
end;
end;

procedure TCompCorreo.TPOTALONKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  LABUSQUE.SetFocus;
end;
end;

procedure TCompCorreo.PVExit(Sender: TObject);
begin
if PV.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Punto de Venta Ingresado!!',mterror,[mbok],0);
  PV.SetFocus;
end;
end;

procedure TCompCorreo.PVKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
   Key := #0;
   TPOTALON.SetFocus;
end;
end;

procedure TCompCorreo.DBGrid1CellClick(Column: TColumn);
begin
coloca1(5);
PC2.ActivePage:=PC2.Pages[1];
end;

procedure TCompCorreo.grilla2Click(Sender: TObject);
begin
if grilla2.Cells[7,grilla2.Row] = '' then grilla2.Cells[7,grilla2.Row]:='X'
else grilla2.Cells[7,grilla2.Row]:='';
maskedit1.SetFocus;
end;

procedure TCompCorreo.grilla2DblClick(Sender: TObject);
begin
if grilla2.Cells[7,grilla2.Row] = '' then grilla2.Cells[7,grilla2.Row]:='X'
else grilla2.Cells[7,grilla2.Row]:='';
maskedit1.SetFocus;
end;

procedure TCompCorreo.MaskEdit1Exit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(MaskEdit1.Text));
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  MaskEdit1.SetFocus;
end;
end;

procedure TCompCorreo.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
   Key := #0;
   importe.SetFocus;
end;
end;

procedure TCompCorreo.IMPORTEKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  coloca1(3);
  if GUARDA.Enabled then GUARDA.SetFocus;
end
else begin
  if ( StrScan('0123456789.,',Key) <> nil ) or
      ( Key = Char(VK_BACK) ) then
   else Key := #0;
end;
end;

procedure TCompCorreo.IMPORTEExit(Sender: TObject);
begin
if trim(IMPORTE.Text)='' then IMPORTE.Text:='000.00';
if trim(IMPORTE.Text)='0' then IMPORTE.Text:='000.00';
if  trim(IMPORTE.Text) = '000.00' then begin
   messagedlg('ERROR!!... El Importe ingresado es incorrecto',mterror,[mbok], 0);
end;
end;

procedure TCompCorreo.GUARDAClick(Sender: TObject);
var TodoOk1,TodoOk:boolean;
var t,p,gf:integer;
begin
  gf:=1;
  gf:=messagedlg('Desea Incorporar estos comprobantes como Valores'
  + chr(13)+ 'de Gastos de Correspondencia',mtWarning,[mbok,mbCancel],0);
  if gf = 1 then begin
          for t:=1 to grilla2.RowCount-1 do begin
            if trim(grilla2.Cells[7,t]) = 'X' then begin
              ComprobantesCobradosCorreo:=TComprobantesCobradosCorreo.Create(nil);
              ComprobantesCobradosCorreo.ConnectionString:=modulo2.Conexion;
              ComprobantesCobradosCorreo.C_NroComprobante:=trim(grilla2.Cells[3,t]);
              ComprobantesCobradosCorreo.C_IdTipoComprobante:=trim(grilla2.Cells[6,t]);
              ComprobantesCobradosCorreo.C_FechaPlanilla:=trim(maskedit1.Text);
              ComprobantesCobradosCorreo.C_CuifCobrador:=IdCombos[0,SECTOR.ItemIndex];
              ComprobantesCobradosCorreo.C_NroTipoObjeto:=trim(grilla2.Cells[5,t]);;
              ComprobantesCobradosCorreo.C_FechaCobro:=trim(maskedit1.Text);
              ComprobantesCobradosCorreo.C_Importe:=AnsiReplaceStr(trim(IMPORTE.Text),chr(44),chr(46));
              ComprobantesCobradosCorreo.C_Usu_A:=IntToStr(modulo2.nro_usu);
              ComprobantesCobradosCorreo.C_Anulado:=false;
              ComprobantesCobradosCorreo.C_Fecha_A:=trim(strcut(Fec_System(),10));
              TodoOk1:=ComprobantesCobradosCorreo.Agrega;
              ComprobantesCobradosCorreo.Free;
            end;
          end;
      if TodoOk1 then begin
        messagedlg('Se ha Guardado el Comprobante de Pago con Exito',mtConfirmation,[mbok],0);
        coloca1(4);
      end
      else messagedlg('ERROR!!... Al Guardar los Datos.',mtError,[mbok],0);
  end
  else begin
     messagedlg('ATENCION!!... Ud. ha Cancelado la Operacion de Guardar',mtError,[mbok],0);
  end;
end;

procedure TCompCorreo.printClick(Sender: TObject);
begin
rvs1.Execute;
end;

procedure TCompCorreo.RvS1Print(Sender: TObject);
var posfx,posfy,final,salto:double;
var t,k,y,hoja:integer;
var txt,val:string;
var pso:boolean;
var sd,sd1,posn,posw:double;

   Function Logo(posx,posy:double;vaf:integer):double;
   var Imagen1:TBitMap;
       Fuente,PathLogo:string;
       Tamanio:integer;
   begin
   with RvS1 do begin
     Imagen1 := TBitMap.Create;
     Imagen1.Assign(image1.Picture.Graphic);
     BaseReport.PrintBitmapRect(posy+5,posy+7,posy+57,posy+18,Imagen1);
     Imagen1.Free;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+20);
     BaseReport.SetFont(Fuente,Tamanio);
     BaseReport.FontColor:=clBlack;
     BaseReport.SetFont('Arial',9);
     BaseReport.PrintXY(posfx+150,posfy+13,'Fecha Imp.: ' + LeftStr(Fec_System(),10));
     BaseReport.PrintXY(posfx+150,posfy+18,'Nº Pagina ' + inttostr(hoja) + '  -  UsuImp ' + inttostr(modulo2.nro_usu));
     BaseReport.SetFont('Arial Black',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+30);
     BaseReport.PrintXY(posx+5,posy+24,'REGISTRO DE COMPROBANTES GASTOS DE CORRESPONDENCIA ');
     BaseReport.PrintXY(posx+5,posy+28,'GESTOR: ' + TRIM(sector.Text));
     Logo:=posy+27;
   end;
   end;

   Function GrillaCabecera(posx,posy:double;texto:string):double;
   var t:integer;
   begin
     with RvS1 do begin
      BaseReport.Rectangle(posx+4,posy,posx+200,posy+5);
      for t:=1 to length(Camp)-1 do begin
      BaseReport.Rectangle(posx + PosH[t]-2,posy,posx + PosH[t]-2,posy+5);
      end;
     end;
      Rvs1.BaseReport.SetFont('Arial Black',7);
      Rvs1.BaseReport.FontColor:=clBlack;
      for t:=0 to length(Camp)-1 do begin
        Rvs1.BaseReport.PrintXY(posx + PosH[t],posy+4,TxtCamp[t]);
     end;
     Result:=posy+5;
   end;

  Function GrillaDetalle(posx,posy:double;texto:string):double;
  var t:integer;
  begin
  Rvs1.BaseReport.SetFont('Arial',8);
  Rvs1.BaseReport.FontColor:=clBlack;
    for t:=0 to length(Camp)-1 do
     Rvs1.BaseReport.PrintXY(posx + PosH[t],posy+4,HackTable(FindComponent(texto)).Fields[Camp[t]].AsString);
     Result:=posy+4;
  end;

  Function GrillaRecuadro(posx,posy,posy2:double):double;
  var t:integer;
  begin
  with RvS1 do begin
    BaseReport.Rectangle(posx+4,posy,posx+200,posy2);
    for t:=1 to length(Camp)-1 do begin
      BaseReport.Rectangle(posx + PosH[t]-2,posy,posx + PosH[t]-2,posy2);
    end;
  Result:=posy+4;
  end;
  end;

begin
 try
  posfx:=5.5;
  posfy:=5;
  salto:=4;
  final:=0;
  hoja:=1;
  posfy:=Logo(posfx,posfy,hoja)+ salto;
  Camp[0]:=0; Camp[1]:=1; Camp[2]:=2;  Camp[3]:=3;
  TxtCamp[0]:='Orden';  TxtCamp[1]:='FechaCarga'; TxtCamp[2]:='TipoComprobante';  TxtCamp[3]:='NroComprobante';
  PosH[0]:=5; PosH[1]:=40; PosH[2]:=70; PosH[3]:=120;

  T8.Close;
  T8.CloneCursor(DataSetC,false,true);
  txt:='T8';
  final:=GrillaCabecera(posfx,posfy+5,txt);
  posfy:=final;
  pso:=false;

      for y:=1 to HackTable(findcomponent(txt)).RecordCount do begin
        HackTable(FindComponent(txt)).RecNo:=y;
        if pso then Rvs1.BaseReport.Rectangle(posfx+4,posfy+1,posfx+200,posfy+1)
        else pso:=true;
        posfy:=GrillaDetalle(posfx,posfy,txt);
        if posfy > 290 then begin
          posfy:=GrillaRecuadro(posfx,final,posfy+2);
          posfx:=1.5;
          posfy:=2;
          hoja:=hoja+1;
          RvS1.BaseReport.NewPage;
          posfy:=Logo(posfx,posfy,hoja);
          final:=GrillaCabecera(posfx,posfy+5,txt);
          posfy:=final;
          pso:=false;
        end;
      end;
 except
 end;
end;
procedure TCompCorreo.CheckBox1Click(Sender: TObject);
var t:integer;
begin
if CheckBox1.Checked then begin
    for t:=1 to grilla2.RowCount-1 do grilla2.Cells[7,t]:='X';
    maskedit1.SetFocus;
end
else begin
   for t:=1 to grilla2.RowCount-1 do grilla2.Cells[7,t]:='';
end;
end;

end.

unit GeneraPasosImp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExButtons, JvBitBtn, ComCtrls, ToolWin, StdCtrls, Buttons,ClaseComprobantesCobrados,
  ExtCtrls,ClaseFunciones,ClaseSistemas, Unidad, ADODB,StrUtils,DB, Mask, DBClient,
  Grids, JvExGrids, JvStringGrid;

type HackTable = class(TADOTable);
type
  TFactuMasiva = class(TForm)
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    JvBitBtn1: TJvBitBtn;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    Image3: TImage;
    Label1: TLabel;
    Label7: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    COBRADOR: TComboBox;
    TPOOBJ: TComboBox;
    Image1: TImage;
    BitBtn3: TBitBtn;
    Image2: TImage;
    RE5: TRichEdit;
    Solocob: TCheckBox;
    Label6: TLabel;
    FECNAC: TMaskEdit;
    BitBtn4: TBitBtn;
    Image4: TImage;
    ver: TBitBtn;
    TabSheet2: TTabSheet;
    grilla2: TJvStringGrid;
    GroupBox1: TGroupBox;
    grilla3: TJvStringGrid;
    NoFactu: TBitBtn;
    Edit1: TEdit;
    JvBitBtn2: TJvBitBtn;
    procedure JvBitBtn1Click(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure COBRADORExit(Sender: TObject);
    procedure TPOOBJExit(Sender: TObject);
    procedure COBRADORKeyPress(Sender: TObject; var Key: Char);
    procedure TPOOBJKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FECNACExit(Sender: TObject);
    procedure FECNACKeyPress(Sender: TObject; var Key: Char);
    procedure SolocobKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn4Click(Sender: TObject);
    procedure verClick(Sender: TObject);
    procedure grilla2Click(Sender: TObject);
    procedure grilla3Click(Sender: TObject);
    procedure NoFactuClick(Sender: TObject);
    procedure JvBitBtn2Click(Sender: TObject);
  private
    IdCombos:array of array of string;
    DataSet0,DataSet1,DataSet2,DataSet3,DataSet4,DataSet5,DataSet6,DtCombo:TClientDataSet;
    PROCESO1,PROCESO2,PROCESO3,PROCESO4,PROCESO5: TADODataSet;
    Funciones:TFuncionesVarias;
    FechaActual,laaccion,elid:String;
    Sistemas:TSistemas;
    texto:widestring;
    ComprobantesCobrados:TComprobantesCobrados;
    { Private declarations }
  public
     gh,Paso:boolean;
    { Public declarations }
  end;

var
  FactuMasiva: TFactuMasiva;

implementation

{$R *.dfm}

uses Modulo;

procedure TFactuMasiva.JvBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TFactuMasiva.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TFactuMasiva.FormActivate(Sender: TObject);
begin
if not(gh) then begin
  gh:=true;
  texto:='';
  setlength(IdCombos,2);
  image1.visible:=false;
  image2.visible:=false;
  image3.visible:=false;
  FechaActual:=LeftStr(Fec_System(),10);
  fecnac.Text := FechaActual;
  RE5.Clear;
  PC1.Pages[1].TabVisible:=false;
  grilla2.Cells[0,0]:='NroAccion';
  grilla2.Cells[1,0]:='Cantidad';
  grilla2.Cells[2,0]:='Cobrador';

  grilla3.Cells[0,0]:='Id';
  grilla3.Cells[1,0]:='Comprobante';
  grilla3.Cells[2,0]:='NroPlanilla';
  grilla3.Cells[3,0]:='FechaPlanilla';
  grilla3.Cells[4,0]:='Accion';
  grilla3.Cells[5,0]:='Detalle';
  grilla3.Cells[6,0]:='Importe';
  grilla3.Cells[7,0]:='Cobrador';

  PROCESO1:=TADODataSet.Create(nil);
  PROCESO1.ConnectionString:=modulo2.Conexion;
  PROCESO1.CommandTimeout:=180;
  PROCESO2:=TADODataSet.Create(nil);
  PROCESO2.ConnectionString:=modulo2.Conexion;
  PROCESO2.CommandTimeout:=180;
  PROCESO3:=TADODataSet.Create(nil);
  PROCESO3.ConnectionString:=modulo2.Conexion;
  PROCESO3.CommandTimeout:=180;
  PROCESO4:=TADODataSet.Create(nil);
  PROCESO4.ConnectionString:=modulo2.Conexion;
  PROCESO4.CommandTimeout:=180;
  PROCESO5:=TADODataSet.Create(nil);
  PROCESO5.ConnectionString:=modulo2.Conexion;
  PROCESO5.CommandTimeout:=180;
  ver.Enabled :=false;
  NoFactu.Enabled :=false;
  coloca1(1);
  coloca1(2);
  PC1.ActivePage:=PC1.Pages[0];
  fecnac.SetFocus;
end;
end;

procedure TFactuMasiva.Coloca1(nro:byte);
var t,y:integer;
    NroDni,ValNull:variant;
    txt,sec:string;
    txtw:widestring;
begin
 if nro=1 then begin
  COBRADOR.Clear;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT distinct Nombre,cuif,nrogestor FROM VLosCobradoresTodos '
  +' union select ''TODOS LOS COBRADORES'',20000000001,0 ORDER BY 1';
  if not Funciones.Listar(txtw,DtCombo) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
   SetLength(IdCombos[0],DtCombo.RecordCount);
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    COBRADOR.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
    IdCombos[0,t-1]:=DtCombo.Fields[1].AsString;
   end;
  end;
  Funciones.Free;
  COBRADOR.ItemIndex:=0;
 end;
 if nro=2 then begin //Combo TipoObjetos
  TPOOBJ.Clear;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if not Funciones.Listar('SELECT NroTipo,Detalle FROM TiposObjetos WHERE nrotipo in (3,2,6,4,5) Order by 2',DtCombo) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
   SetLength(IdCombos[1],DtCombo.RecordCount);
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    TPOOBJ.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
    IdCombos[1,t-1]:=DtCombo.Fields[0].AsString;
   end;
  end;
  Funciones.Free;
  TPOOBJ.ItemIndex:=0;
 end;
 if nro=3 then begin
  DataSet6.Free;
  DataSet6:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT Id,NroComprobante,NroPlanilla,convert(char(10),FechaPlanilla,103) as FechaPlanilla,Identificador,Observ,'
  +'Importe,cli.RazonSocial as Cobrador FROM ComprobantesCobrados '
  +'inner join Clientes cli on ComprobantesCobrados.CuifCobrador = cli.cuif  '
  +' WHERE (YEAR(FechaPlanilla) * 100 + MONTH(FechaPlanilla) = YEAR(GETDATE()) * 100 + MONTH(GETDATE())) '
  +' AND (NroTipoObjeto = ' + IdCombos[1,TPOOBJ.ItemIndex] + ') AND (NroFactura IS NULL) '
  //+' AND (IdTipoComprobante = 20) '
  +' AND (Identificador = '+ laaccion+ ') '
  +' and cli.RazonSocial=  ' + chr(39) + trim(cobrador.Text) + chr(39) + ' ORDER BY Id DESC';
  if not Funciones.Listar(txtw,DataSet6) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador', mtError,[mbok],0);
  Funciones.Free;
  if not DataSet6.IsEmpty then begin
    for t:=0 to grilla3.ColCount-1 do
    for y:=1 to grilla3.RowCount-1 do grilla3.Cells[t,y]:='';
   for t:=1 to DataSet6.RecordCount  do begin
    DataSet6.RecNo:=t;
    grilla3.RowCount:=t+1;
    grilla3.Cells[0,t]:=trim(DataSet6.Fields[0].AsString);
    grilla3.Cells[1,t]:=trim(DataSet6.Fields[1].AsString);
    grilla3.Cells[2,t]:=trim(DataSet6.Fields[2].AsString);
    grilla3.Cells[3,t]:=trim(DataSet6.Fields[3].AsString);
    grilla3.Cells[4,t]:=trim(DataSet6.Fields[4].AsString);
    grilla3.Cells[5,t]:=trim(DataSet6.Fields[5].AsString);
    grilla3.Cells[6,t]:=trim(DataSet6.Fields[6].AsString);
    grilla3.Cells[7,t]:=trim(DataSet6.Fields[7].AsString);
   end;
  end;
 end;
end;

procedure TFactuMasiva.COBRADORExit(Sender: TObject);
begin
 if cobrador.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Cobrador Ingresado!!',mterror,[mbok],0);
  cobrador.SetFocus;
 end;
end;

procedure TFactuMasiva.TPOOBJExit(Sender: TObject);
begin
 if TPOOBJ.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Objeto Ingresado!!',mterror,[mbok],0);
  TPOOBJ.SetFocus;
 end
 else begin
  bitbtn2.Caption :='Proc2 Genera Deuda ' +  trim(TPOOBJ.Text);
  bitbtn3.Caption :='Proc3 Guardando datos de ' +  trim(TPOOBJ.Text);
 end;
end;

procedure TFactuMasiva.COBRADORKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  tpoobj.SetFocus;
end;
end;

procedure TFactuMasiva.TPOOBJKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  bitbtn4.SetFocus;
  //solocob.SetFocus;
end;
end;

procedure TFactuMasiva.BitBtn1Click(Sender: TObject);
begin
 RE5.Clear;
 Image1.visible:=true;
 texto:='';
 texto:='INICIANDO PROCESO SELECCION DE ACCIONES';
 RE5.Lines.Add(texto);
 PROCESO1.Close;
  IF strtoint(IdCombos[1,TPOOBJ.ItemIndex])= 5 then begin   //tramites varios
    If solocob.Checked then PROCESO1.CommandText:='exec GeneraMasivasPaso15 ' + IdCombos[0,cobrador.ItemIndex] + ',' + chr(39) + trim(fecnac.Text) + chr(39) + ',1'
     ELSE PROCESO1.CommandText:='exec GeneraMasivasPaso15 ' + IdCombos[0,cobrador.ItemIndex] + ',NULL,0';
      texto:='INICIANDO PROCESO GeneraMasivasPaso15 - Tramites Varios ';
      RE5.Lines.Add(texto);
  end
  else begin
    IF strtoint(IdCombos[1,TPOOBJ.ItemIndex])= 6 then begin   //psp
     If solocob.Checked then PROCESO1.CommandText:='exec GeneraMasivasPaso12 ' + IdCombos[0,cobrador.ItemIndex] + ',' + chr(39) + trim(fecnac.Text) + chr(39) + ',1'
       ELSE PROCESO1.CommandText:='exec GeneraMasivasPaso12 ' + IdCombos[0,cobrador.ItemIndex] + ',NULL,0';
        texto:='INICIANDO PROCESO GeneraMasivasPaso12 - PSP';
        RE5.Lines.Add(texto);
    end
    else begin
     IF strtoint(IdCombos[1,TPOOBJ.ItemIndex])= 2 then begin   //servicios
       If solocob.Checked then PROCESO1.CommandText:='exec GeneraMasivasPaso11 ' + IdCombos[0,cobrador.ItemIndex] + ',' + chr(39) + trim(fecnac.Text) + chr(39) + ',1'
        ELSE PROCESO1.CommandText:='exec GeneraMasivasPaso11 ' + IdCombos[0,cobrador.ItemIndex] + ',NULL,0';
         texto:='INICIANDO PROCESO GeneraMasivasPaso11 - Servicios';
         RE5.Lines.Add(texto);
     end
     else begin
       IF strtoint(IdCombos[1,TPOOBJ.ItemIndex])= 4 then begin   //consolidado
        If solocob.Checked then PROCESO1.CommandText:='exec GeneraMasivasPaso14 ' + IdCombos[0,cobrador.ItemIndex] + ',' + chr(39) + trim(fecnac.Text) + chr(39) + ',1'
          ELSE PROCESO1.CommandText:='exec GeneraMasivasPaso14 ' + IdCombos[0,cobrador.ItemIndex] + ',NULL,0';
           texto:='INICIANDO PROCESO GeneraMasivasPaso14 - Consolidados';
           RE5.Lines.Add(texto);
       end
       else begin   ////mantenimiento
           If solocob.Checked then PROCESO1.CommandText:='exec GeneraMasivasPaso2 ' + IdCombos[0,cobrador.ItemIndex] + ',' + chr(39) + trim(fecnac.Text) + chr(39) + ',1'
           ELSE PROCESO1.CommandText:='exec GeneraMasivasPaso2 ' + IdCombos[0,cobrador.ItemIndex] + ',NULL,0';
            texto:='INICIANDO PROCESO GeneraMasivasPaso2 - Mantenimiento';
            RE5.Lines.Add(texto);
           //// MANTENIMIENTO ESP
           //If solocob.Checked then PROCESO1.CommandText:='exec GeneraMasivasPaso2Esp ' + IdCombos[0,cobrador.ItemIndex] + ',' + chr(39) + trim(fecnac.Text) + chr(39) + ',1'
           //ELSE PROCESO1.CommandText:='exec GeneraMasivasPaso2Esp ' + IdCombos[0,cobrador.ItemIndex] + ',NULL,0';
           //texto:='INICIANDO PROCESO GeneraMasivasPaso2Esp - Mantenimiento';
           //RE5.Lines.Add(texto);
       end;
     end;
    end;
  end;
 PROCESO1.Open;
 if PROCESO1.Fields[0].AsString = 'OK' then begin
  texto:='PROCESO FINALIZADO';
  RE5.Lines.Add(texto);
  Image1.Picture.LoadFromFile(modulo2.path_todo + '\Imagenes\button_ok.ico');
  BitBtn1.Enabled:=false;
  BitBtn2.Enabled:=true;
  BitBtn2.SetFocus;
 end
 else begin
  texto:='PROCESO CON ERRORES....';
  RE5.Lines.Add(texto);
  Image1.Picture.LoadFromFile(modulo2.path_todo + '\Imagenes\button_cancel.ico');
 end;
end;

procedure TFactuMasiva.BitBtn2Click(Sender: TObject);
begin
 RE5.Clear;
 Image2.visible:=true;
 texto:='INICIANDO PROCESO CALCULO DE DEUDA ';
 RE5.Lines.Add(texto);
 PROCESO2.Close;
 If solocob.Checked then begin
   IF strtoint(IdCombos[1,TPOOBJ.ItemIndex])= 3 then begin  // mantenimiento
      PROCESO2.CommandText:='exec GeneraMasivasPaso3 ' + IdCombos[0,cobrador.ItemIndex] + ',' + chr(39) + trim(fecnac.Text) + chr(39) + ', 1';
      texto:='INICIANDO PROCESO GeneraMasivasPaso3 - Mantenimiento';
      RE5.Lines.Add(texto);
      /// mantenim esp
      //PROCESO2.CommandText:='exec GeneraMasivasPaso3Esp ' + IdCombos[0,cobrador.ItemIndex] + ',' + chr(39) + trim(fecnac.Text) + chr(39) + ', 1';
      //texto:='INICIANDO PROCESO GeneraMasivasPaso3Esp - Mantenimiento';
      //RE5.Lines.Add(texto);
   end;
   IF strtoint(IdCombos[1,TPOOBJ.ItemIndex])= 2 then begin  // servicios
      PROCESO2.CommandText:='exec GeneraMasivasPaso4 ' + IdCombos[0,cobrador.ItemIndex] + ',' + chr(39) + trim(fecnac.Text) + chr(39);// + ', 1';
      texto:='INICIANDO PROCESO GeneraMasivasPaso4 - Servicios';
      RE5.Lines.Add(texto);
   end;
   IF strtoint(IdCombos[1,TPOOBJ.ItemIndex])= 1 then begin  //ventas
      PROCESO2.CommandText:='exec GeneraMasivasPaso5 ' + IdCombos[0,cobrador.ItemIndex] + ',' + chr(39) + trim(fecnac.Text) + chr(39) + ', 1';
      texto:='INICIANDO PROCESO GeneraMasivasPaso5 - Ventas';
      RE5.Lines.Add(texto);
   end;
   IF strtoint(IdCombos[1,TPOOBJ.ItemIndex])= 6 then begin   //psp
      PROCESO2.CommandText:='exec GeneraMasivasPaso9 ' + IdCombos[0,cobrador.ItemIndex] + ',' + chr(39) + trim(fecnac.Text) + chr(39) + ', 1';
      texto:='INICIANDO PROCESO GeneraMasivasPaso9 - PSP';
      RE5.Lines.Add(texto);
   end;
   IF strtoint(IdCombos[1,TPOOBJ.ItemIndex])= 4 then begin   //consolidado
      PROCESO2.CommandText:='exec GeneraMasivasPaso14 ' + IdCombos[0,cobrador.ItemIndex] + ',' + chr(39) + trim(fecnac.Text) + chr(39) + ', 1';
      texto:='INICIANDO PROCESO GeneraMasivasPaso14 - Consolidado';
      RE5.Lines.Add(texto);
   end;
   IF strtoint(IdCombos[1,TPOOBJ.ItemIndex])= 5 then begin   //tramites varios
      PROCESO2.CommandText:='exec GeneraMasivasPaso15 ' + IdCombos[0,cobrador.ItemIndex] + ',' + chr(39) + trim(fecnac.Text) + chr(39) + ', 1';
      texto:='INICIANDO PROCESO GeneraMasivasPaso15 - Tramites Varios';
      RE5.Lines.Add(texto);
   end;
 end
 else begin
   IF strtoint(IdCombos[1,TPOOBJ.ItemIndex])= 3 then begin   //mantenimiento
      PROCESO2.CommandText:='exec GeneraMasivasPaso3 ' + IdCombos[0,cobrador.ItemIndex] + ',' + chr(39) + trim(fecnac.Text) + chr(39) + ', 0';
      texto:='INICIANDO PROCESO GeneraMasivasPaso3 - Mantenimiento';
      RE5.Lines.Add(texto);
      /// manten eso
      //PROCESO2.CommandText:='exec GeneraMasivasPaso3Esp ' + IdCombos[0,cobrador.ItemIndex] + ',' + chr(39) + trim(fecnac.Text) + chr(39) + ', 0';
      //texto:='INICIANDO PROCESO GeneraMasivasPaso3Esp - Mantenimiento';
      //RE5.Lines.Add(texto);
   end;
   IF strtoint(IdCombos[1,TPOOBJ.ItemIndex])= 2 then begin   //servicios
      PROCESO2.CommandText:='exec GeneraMasivasPaso4 ' + IdCombos[0,cobrador.ItemIndex] + ',' + chr(39) + trim(fecnac.Text) + chr(39);//+ ', 0';
      texto:='INICIANDO PROCESO GeneraMasivasPaso4 - Servicios';
      RE5.Lines.Add(texto);
   end;
   IF strtoint(IdCombos[1,TPOOBJ.ItemIndex])= 1 then begin   //ventas
      PROCESO2.CommandText:='exec GeneraMasivasPaso5 ' + IdCombos[0, cobrador.ItemIndex] + ',' + chr(39) + trim(fecnac.Text) + chr(39)+ ',0';
      texto:='INICIANDO PROCESO GeneraMasivasPaso5 - Ventas';
      RE5.Lines.Add(texto);
   end;
   IF strtoint(IdCombos[1,TPOOBJ.ItemIndex])= 6 then begin   //psp
      PROCESO2.CommandText:='exec GeneraMasivasPaso9 ' + IdCombos[0, cobrador.ItemIndex] + ',' + chr(39) + trim(fecnac.Text) + chr(39)+ ',0';
      texto:='INICIANDO PROCESO GeneraMasivasPaso9 - PSP';
      RE5.Lines.Add(texto);
   end;
   IF strtoint(IdCombos[1,TPOOBJ.ItemIndex])= 4 then begin   //consolidado
      PROCESO2.CommandText:='exec GeneraMasivasPaso14 ' + IdCombos[0,cobrador.ItemIndex] + ',' + chr(39) + trim(fecnac.Text) + chr(39) + ', 1';
      texto:='INICIANDO PROCESO GeneraMasivasPaso14 - Consolidado';
      RE5.Lines.Add(texto);
   end;
   IF strtoint(IdCombos[1,TPOOBJ.ItemIndex])= 5 then begin   //tramites varios
      PROCESO2.CommandText:='exec GeneraMasivasPaso15' + IdCombos[0,cobrador.ItemIndex] + ',' + chr(39) + trim(fecnac.Text) + chr(39) + ', 1';
      texto:='INICIANDO PROCESO GeneraMasivasPaso15 - Tramites Varios';
      RE5.Lines.Add(texto);
   end;
 end;
 PROCESO2.Open;
 if PROCESO2.Fields[0].AsString = 'OK' then begin
  texto:='PROCESO FINALIZADO';
  RE5.Lines.Add(texto);
  Image2.Picture.LoadFromFile(modulo2.path_todo + '\Imagenes\button_ok.ico');
  BitBtn1.Enabled:=false;
  BitBtn2.Enabled:=false;
  BitBtn3.Enabled:=true;
  BitBtn3.SetFocus;
 end
 else begin
  texto:='PROCESO CON ERRORES....';
  RE5.Lines.Add(texto);
  Image2.Picture.LoadFromFile(modulo2.path_todo + '\Imagenes\button_cancel.ico');
 end;
end;

procedure TFactuMasiva.BitBtn3Click(Sender: TObject);
begin
 RE5.Clear;
 Image3.visible:=true;
 texto:='INICIANDO PROCESO DE FACTURACION';
 RE5.Lines.Add(texto);
 PROCESO3.Close;
 if solocob.Checked then begin
   IF strtoint(IdCombos[1,TPOOBJ.ItemIndex])= 3 then begin  //mantenimiento
     PROCESO3.CommandText:='exec GeneraMasivasPaso6 ' + IdCombos[0,cobrador.ItemIndex]
     + ',' + chr(39) + trim(fecnac.Text) + chr(39) + ',' + chr(39) + trim(fecnac.Text) + chr(39) + ', 1';
     texto:='INICIANDO PROCESO GeneraMasivasPaso6 - Mantenimiento';
     RE5.Lines.Add(texto);
   end;
   IF strtoint(IdCombos[1,TPOOBJ.ItemIndex])= 2 then begin  //servicios
     PROCESO3.CommandText:='exec GeneraMasivasPaso7 ' + IdCombos[0,cobrador.ItemIndex]
     + ',' + chr(39) + trim(fecnac.Text) + chr(39) + ',' + chr(39) + trim(fecnac.Text) + chr(39);//+ ', 1';;
     texto:='INICIANDO PROCESO GeneraMasivasPaso7 - Servicios';
     RE5.Lines.Add(texto);
   end;
   IF strtoint(IdCombos[1,TPOOBJ.ItemIndex])= 1 then begin   //ventas
     PROCESO3.CommandText:='exec GeneraMasivasPaso8 ' + IdCombos[0,cobrador.ItemIndex]
     + ',' + chr(39) + trim(fecnac.Text) + chr(39) + ',' + chr(39) + trim(fecnac.Text) + chr(39) + ', 1';
     texto:='INICIANDO PROCESO GeneraMasivasPaso8 - Ventas';
     RE5.Lines.Add(texto);
   end;
   IF strtoint(IdCombos[1,TPOOBJ.ItemIndex])= 6 then begin   //psp
     PROCESO3.CommandText:='exec GeneraMasivasPaso10 ' + IdCombos[0,cobrador.ItemIndex]
     + ',' + chr(39) + trim(fecnac.Text) + chr(39) + ',' + chr(39) + trim(fecnac.Text) + chr(39) + ', 1';
     texto:='INICIANDO PROCESO GeneraMasivasPaso10 - PSP';
     RE5.Lines.Add(texto);
   end;
   IF strtoint(IdCombos[1,TPOOBJ.ItemIndex])= 4 then begin   //consolidado
     PROCESO3.CommandText:='exec GeneraMasivasPaso13 ' + IdCombos[0,cobrador.ItemIndex]
     + ',' + chr(39) + trim(fecnac.Text) + chr(39) + ',' + chr(39) + trim(fecnac.Text) + chr(39) + ', 1';
     texto:='INICIANDO PROCESO GeneraMasivasPaso13 - Consolidado';
     RE5.Lines.Add(texto);
   end;
   IF strtoint(IdCombos[1,TPOOBJ.ItemIndex])= 5 then begin   //tramites varios
     PROCESO3.CommandText:='exec GeneraMasivasPaso16 ' + IdCombos[0,cobrador.ItemIndex]
     + ',' + chr(39) + trim(fecnac.Text) + chr(39) + ',' + chr(39) + trim(fecnac.Text) + chr(39) + ', 1';
     texto:='INICIANDO PROCESO GeneraMasivasPaso16 - Tramites Varios';
     RE5.Lines.Add(texto);
   end;
 end
 else begin
   IF strtoint(IdCombos[1,TPOOBJ.ItemIndex])= 3 then begin   //mantenimiento
     PROCESO3.CommandText:='exec GeneraMasivasPaso6 ' + IdCombos[0,cobrador.ItemIndex]
     + ',' + chr(39) + trim(fecnac.Text) + chr(39) + ',' + chr(39) + trim(fecnac.Text) + chr(39) + ', 0';
     texto:='INICIANDO PROCESO GeneraMasivasPaso6 - Mantenimiento';
     RE5.Lines.Add(texto);
   end;
   IF strtoint(IdCombos[1,TPOOBJ.ItemIndex])= 2 then begin   //servivios
     PROCESO3.CommandText:='exec GeneraMasivasPaso7 ' + IdCombos[0,cobrador.ItemIndex]
     + ',' + chr(39) + trim(fecnac.Text) + chr(39) + ',' + chr(39) + trim(fecnac.Text) + chr(39);// + ', 0';;
     texto:='INICIANDO PROCESO GeneraMasivasPaso7 - Servicios';
     RE5.Lines.Add(texto);
   end;
   IF strtoint(IdCombos[1,TPOOBJ.ItemIndex])= 1 then begin  //ventas
     PROCESO3.CommandText:='exec GeneraMasivasPaso8 ' + IdCombos[0,cobrador.ItemIndex]
     + ',' + chr(39) + trim(fecnac.Text) + chr(39) + ',' + chr(39) + trim(fecnac.Text) + chr(39) + ', 0';;
     texto:='INICIANDO PROCESO GeneraMasivasPaso8 - Ventas';
     RE5.Lines.Add(texto);
   end;
   IF strtoint(IdCombos[1,TPOOBJ.ItemIndex])= 6 then begin   //psp
     PROCESO3.CommandText:='exec GeneraMasivasPaso10 ' + IdCombos[0,cobrador.ItemIndex]
     + ',' + chr(39) + trim(fecnac.Text) + chr(39) + ',' + chr(39) + trim(fecnac.Text) + chr(39) + ', 1';;
     texto:='INICIANDO PROCESO GeneraMasivasPaso10 - PSP';
     RE5.Lines.Add(texto);
   end;
   IF strtoint(IdCombos[1,TPOOBJ.ItemIndex])= 4 then begin   //consolidado
     PROCESO3.CommandText:='exec GeneraMasivasPaso13 ' + IdCombos[0,cobrador.ItemIndex]
     + ',' + chr(39) + trim(fecnac.Text) + chr(39) + ',' + chr(39) + trim(fecnac.Text) + chr(39) + ', 1';;
     texto:='INICIANDO PROCESO GeneraMasivasPaso13 - Consolidado';
     RE5.Lines.Add(texto);
   end;
   IF strtoint(IdCombos[1,TPOOBJ.ItemIndex])= 5 then begin   //tramites varios
     PROCESO3.CommandText:='exec GeneraMasivasPaso16 ' + IdCombos[0,cobrador.ItemIndex]
     + ',' + chr(39) + trim(fecnac.Text) + chr(39) + ',' + chr(39) + trim(fecnac.Text) + chr(39) + ', 1';;
     texto:='INICIANDO PROCESO GeneraMasivasPaso16 - Tramites Varios';
     RE5.Lines.Add(texto);
   end;
 end;
 PROCESO3.Open;
 if PROCESO3.Fields[0].AsString = 'OK' then begin
  texto:='PROCESO FINALIZADO';
  RE5.Lines.Add(texto);
  Image3.Picture.LoadFromFile(modulo2.path_todo + '\Imagenes\button_ok.ico');
  BitBtn1.Enabled:=false;
  BitBtn2.Enabled:=false;
  BitBtn3.Enabled:=false;
 end
 else begin
  texto:='PROCESO CON ERRORES....';
  RE5.Lines.Add(texto);
  Image1.Picture.LoadFromFile(modulo2.path_todo + '\Imagenes\button_cancel.ico');
 end;
end;

procedure TFactuMasiva.FECNACExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(FECNAC.Text));
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  FECNAC.SetFocus;
end;
end;

procedure TFactuMasiva.FECNACKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  cobrador.SetFocus;
end;
end;

procedure TFactuMasiva.SolocobKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  bitbtn4.SetFocus;
end;
end;

procedure TFactuMasiva.BitBtn4Click(Sender: TObject);
var t,y:integer;
begin
 RE5.Clear;
 Image4.visible:=true;
 texto:='';
 texto:='VERIFICANDO ACCIONES DUPLICADAS A FACTURAR';
 RE5.Lines.Add(texto);
 PROCESO4.Close;
  IF strtoint(IdCombos[1,TPOOBJ.ItemIndex])= 5 then begin   //tramites varios
   PROCESO4.CommandText:='exec AccionesDuplicadasaFacturarxCobrador 5 , ' + chr(39) + trim(cobrador.Text) + chr(39) ;
   texto:='INICIANDO PROCESO Acciones Duplicadas a Facturar  - Tramites Varios ';
   RE5.Lines.Add(texto);
  end
  else begin
    IF strtoint(IdCombos[1,TPOOBJ.ItemIndex])= 6 then begin   //psp
     PROCESO4.CommandText:='exec AccionesDuplicadasaFacturarxCobrador 6 , ' + chr(39) + trim(cobrador.Text) + chr(39) ;
     texto:='INICIANDO PROCESO Acciones Duplicadas a Facturar - PSP';
     RE5.Lines.Add(texto);
    end
    else begin
     IF strtoint(IdCombos[1,TPOOBJ.ItemIndex])= 2 then begin   //servicios
      PROCESO4.CommandText:='exec AccionesDuplicadasaFacturarxCobrador 2 , ' + chr(39) + trim(cobrador.Text) + chr(39) ;
      texto:='INICIANDO PROCESO Acciones Duplicadas a Facturar - Servicios';
      RE5.Lines.Add(texto);
     end
     else begin
      IF strtoint(IdCombos[1,TPOOBJ.ItemIndex])= 4 then begin   //consolidado
       PROCESO4.CommandText:='exec AccionesDuplicadasaFacturarxCobrador 4 , ' + chr(39) + trim(cobrador.Text) + chr(39) ;
       texto:='INICIANDO PROCESO Acciones Duplicadas a Facturar - Consolidados';
       RE5.Lines.Add(texto);
      end
      else begin   ////mantenimiento
        PROCESO4.CommandText:='exec AccionesDuplicadasaFacturarxCobrador 3 , ' + chr(39) + trim(cobrador.Text) + chr(39) ;
        texto:='INICIANDO PROCESO Acciones Duplicadas a Facturar - Mantenimiento';
        RE5.Lines.Add(texto);
      end;
     end;
    end;
  end;
 PROCESO4.Open;
 if PROCESO4.RecordCount > 0 then begin
  //if PROCESO4.Fields[0].AsString = 'OK' then begin
  for t:=0 to grilla2.ColCount-1 do
    for y:=1 to grilla2.RowCount-1 do grilla2.Cells[t,y]:='';
  for t:=1 to PROCESO4.RecordCount  do begin
   PROCESO4.RecNo:=t;
   grilla2.RowCount:=t+1;
   grilla2.Cells[0,t]:=trim(PROCESO4.Fields[0].AsString);
   grilla2.Cells[1,t]:=trim(PROCESO4.Fields[1].AsString);
   grilla2.Cells[2,t]:=trim(PROCESO4.Fields[2].AsString);
  end;
  texto:='---> EXISTEN ACCIONES DUPLICADAS A FACTURAR';
  RE5.Lines.Add(texto);
  Image4.Picture.LoadFromFile(modulo2.path_todo + '\Imagenes\button_cancel.ico');
  BitBtn1.Enabled:=FALSE;
  VER.Enabled:=TRUE;
  PC1.Pages[1].TabVisible:=true;
 end
 else begin
  texto:='PROCESO CON DUPLICACIONES ....';
  RE5.Lines.Add(texto);
  Image4.Picture.LoadFromFile(modulo2.path_todo + '\Imagenes\button_ok.ico');
  PC1.Pages[1].TabVisible:=false;
  BitBtn1.Enabled:=TRUE;
  VER.Enabled:=FALSE;
  BitBtn1.SetFocus;
 end;
end;

procedure TFactuMasiva.verClick(Sender: TObject);
begin
 PC1.ActivePage:=PC1.Pages[1];
end;

procedure TFactuMasiva.grilla2Click(Sender: TObject);
begin
 laaccion:='';
 laaccion:=trim(grilla2.Cells[0,grilla2.Row]);
 coloca1(3);
end;

procedure TFactuMasiva.grilla3Click(Sender: TObject);
begin
 edit1.Text:=trim(grilla3.Cells[0,grilla3.Row]);
 NoFactu.Enabled :=true;
end;

procedure TFactuMasiva.NoFactuClick(Sender: TObject);
var gf:integer;
    txt:string;
    TodoOk1:boolean;
    txtw:widestring;
begin
 txt:='';
 gf:=messagedlg('Desea Actualizar el Comprobantes Seleccionado?',mtWarning,[mbok,mbCancel],0);
  if gf = 1 then begin
   ComprobantesCobrados:=TComprobantesCobrados.Create(nil);
   ComprobantesCobrados.ConnectionString:=modulo2.Conexion;
   txtw:='UPDATE ComprobantesCobrados SET Idservicio = 1 , NroFactura = ''.'' WHERE (Id =' + trim(edit1.Text) + ') and (Nrofactura is null)';
   TodoOk1:=ComprobantesCobrados.ListarSinResp(txtw);
   ComprobantesCobrados.Free;
   if TodoOk1 then begin
     //barra1.Panels[0].Text:='Se ha Actualizado este Comprobante con Exito';
    messagedlg('Se ha Actualizado este Comprobante con Exito',mtConfirmation,[mbok],0);
    laaccion:=trim(grilla2.Cells[0,grilla2.Row]);
    coloca1(3);
    edit1.Clear;
    NoFactu.Enabled :=false;
   end
   else begin
     messagedlg('Error al Actualizar este Comprobante. Consulte con un Administrador',mtError,[mbok],0);
   end;
  end;
end;

procedure TFactuMasiva.JvBitBtn2Click(Sender: TObject);
begin
 PC1.ActivePage:=PC1.Pages[0];
 BitBtn4.SetFocus; 
end;

end.

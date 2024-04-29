unit GeneraFactuMAsiva;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExButtons, JvBitBtn, ComCtrls, ToolWin, StdCtrls, Buttons,
  ExtCtrls,ClaseFunciones,ClaseSistemas, Unidad, ADODB,StrUtils,DB, Mask, DBClient;

type HackTable = class(TADOTable);
type
  TFactuMasiva1 = class(TForm)
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
  private
    IdCombos:array of array of string;
    DataSet0,DataSet1,DataSet2,DataSet3,DataSet4,DataSet5,DataSet6,DtCombo:TClientDataSet;
    PROCESO1,PROCESO2,PROCESO3,PROCESO4,PROCESO5: TADODataSet;
    Funciones:TFuncionesVarias;
    FechaActual:String;
    Sistemas:TSistemas;
    texto:widestring;
    { Private declarations }
  public
     gh,Paso:boolean;
    { Public declarations }
  end;

var
  FactuMasiva1: TFactuMasiva1;

implementation

{$R *.dfm}

uses Modulo;

procedure TFactuMasiva1.JvBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TFactuMasiva1.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TFactuMasiva1.FormActivate(Sender: TObject);
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
  coloca1(1);
  coloca1(2);
  fecnac.SetFocus;
  //COBRADOR.setfocus;
  //PANEL1.Visible:=FALSE;
end;
end;

procedure TFactuMasiva1.Coloca1(nro:byte);
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
end;

procedure TFactuMasiva1.COBRADORExit(Sender: TObject);
begin
 if cobrador.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Cobrador Ingresado!!',mterror,[mbok],0);
  cobrador.SetFocus;
// end
// else begin
//   if IdCombos[0,cobrador.ItemIndex] = '20000000001' then begin
//     groupbox1.Enabled:=true;
//   end
//   else begin
//      groupbox1.Enabled:=false;
//   end;
 end;
end;

procedure TFactuMasiva1.TPOOBJExit(Sender: TObject);
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

procedure TFactuMasiva1.COBRADORKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  //panel1.Visible:=false;
  //fecnac.SetFocus;
  tpoobj.SetFocus;
end;
end;

procedure TFactuMasiva1.TPOOBJKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  solocob.SetFocus;
  //bitbtn1.SetFocus;
end;
end;

procedure TFactuMasiva1.BitBtn1Click(Sender: TObject);
begin
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
       else begin
         If solocob.Checked then PROCESO1.CommandText:='exec GeneraMasivasPaso2 ' + IdCombos[0,cobrador.ItemIndex] + ',' + chr(39) + trim(fecnac.Text) + chr(39) + ',1'
           ELSE PROCESO1.CommandText:='exec GeneraMasivasPaso2 ' + IdCombos[0,cobrador.ItemIndex] + ',NULL,0';
           texto:='INICIANDO PROCESO GeneraMasivasPaso2 - Mantenimiento';
              RE5.Lines.Add(texto);
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

procedure TFactuMasiva1.BitBtn2Click(Sender: TObject);
begin
   Image2.visible:=true;
   //texto:='';
   //RE5.Clear;
   texto:='INICIANDO PROCESO CALCULO DE DEUDA ';
   RE5.Lines.Add(texto);
   PROCESO2.Close;
   If solocob.Checked then begin
     IF strtoint(IdCombos[1,TPOOBJ.ItemIndex])= 3 then begin  // mantenimiento
        PROCESO2.CommandText:='exec GeneraMasivasPaso3 ' + IdCombos[0,cobrador.ItemIndex] + ',' + chr(39) + trim(fecnac.Text) + chr(39) + ', 1';
        texto:='INICIANDO PROCESO GeneraMasivasPaso3 - Mantenimiento';
           RE5.Lines.Add(texto);
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

procedure TFactuMasiva1.BitBtn3Click(Sender: TObject);
begin
 Image3.visible:=true;
 //texto:='';
 //RE5.Clear;
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

procedure TFactuMasiva1.FECNACExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(FECNAC.Text));
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  FECNAC.SetFocus;
end;
end;

procedure TFactuMasiva1.FECNACKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  //if groupbox1.Enabled then desde.SetFocus
  //else button1.SetFocus;
  cobrador.SetFocus;
end;
end;

end.

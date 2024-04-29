unit Confirma_Inhumado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,DBClient, StdCtrls, DBCtrls, Grids, DBGrids, ComCtrls, StrUtils,
  DB, Mask,ADODB, Buttons, ExtCtrls, JvExDBGrids, JvDBGrid, RpDefine,jpeg,
  RpBase, RpSystem, JvgPage, JvExButtons, JvBitBtn, WSDLIntf, ClaseFunciones,ClaseParcelasInhumados;

type LasFilas = array[1..2] of integer;
type HackTable = class(TClientDataSet);//       class(TADOTable);
type
  TConfirma_Inhu = class(TForm)
    Barra1: TStatusBar;
    DataSource1: TDataSource;
    GroupBox2: TGroupBox;
    PC1: TJvgPageControl;
    TabSheet2: TTabSheet;
    Label15: TLabel;
    Label13: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    sale: TJvBitBtn;
    D1: TDBEdit;
    D3: TDBEdit;
    D4: TDBEdit;
    D5: TDBEdit;
    D10: TDBEdit;
    D15: TDBEdit;
    TabSheet1: TTabSheet;
    DBGrid1: TJvDBGrid;
    todos: TRichEdit;
    dnit: TRadioButton;
    Inhu: TRadioButton;
    acci: TRadioButton;
    nomt: TRadioButton;
    Bevel2: TBevel;
    LB1: TLabel;
    ODNI: TEdit;
    ONOMB: TEdit;
    Busca: TJvBitBtn;
    JvDBGrid1: TJvDBGrid;
    DataSource2: TDataSource;
    nomf: TRadioButton;
    dnif: TRadioButton;
    fecfalle: TRadioButton;
    FECH: TMaskEdit;
    Exporta: TJvBitBtn;
    limpiar: TJvBitBtn;
    anula: TJvBitBtn;
    confirma: TJvBitBtn;
    GroupBox6: TGroupBox;
    Shape3: TShape;
    Shape2: TShape;
    Label24: TLabel;
    Label27: TLabel;
    Shape1: TShape;
    Label25: TLabel;
    GroupBox3: TGroupBox;
    Label28: TLabel;
    D25: TDBEdit;
    Label29: TLabel;
    D26: TDBEdit;
    Label30: TLabel;
    D27: TDBEdit;
    RvOrden: TRvSystem;
    ImpOrdServ: TJvBitBtn;
    GroupBox4: TGroupBox;
    Label26: TLabel;
    D11: TDBEdit;
    Label16: TLabel;
    D14: TDBEdit;
    Label10: TLabel;
    D9: TDBEdit;
    Label31: TLabel;
    D28: TDBEdit;
    Label9: TLabel;
    D8: TDBEdit;
    Label33: TLabel;
    D30: TDBEdit;
    Label32: TLabel;
    D29: TDBEdit;
    Label34: TLabel;
    D31: TDBEdit;
    Label35: TLabel;
    D32: TDBEdit;
    Label1: TLabel;
    D12: TDBEdit;
    Label20: TLabel;
    D17: TDBEdit;
    Label8: TLabel;
    D18: TDBEdit;
    Label18: TLabel;
    D19: TDBEdit;
    Label17: TLabel;
    D20: TDBEdit;
    GroupBox5: TGroupBox;
    Label2: TLabel;
    D7: TDBEdit;
    Label11: TLabel;
    D6: TDBEdit;
    Label19: TLabel;
    D21: TDBEdit;
    Label21: TLabel;
    D22: TDBEdit;
    Label22: TLabel;
    D23: TDBEdit;
    Label23: TLabel;
    D24: TDBEdit;
    GroupBox7: TGroupBox;
    Label14: TLabel;
    D13: TDBEdit;
    Label5: TLabel;
    D16: TDBEdit;
    Label7: TLabel;
    D2: TDBEdit;
    Image1: TImage;
    procedure Coloca1(nro:byte);
    procedure FormActivate(Sender: TObject);
    procedure dnitClick(Sender: TObject);
    procedure nomtClick(Sender: TObject);
    procedure acciClick(Sender: TObject);
    procedure InhuClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BuscaClick(Sender: TObject);
    procedure JvBitBtn3Click(Sender: TObject);
    procedure ExportaClick(Sender: TObject);
    procedure ONOMBKeyPress(Sender: TObject; var Key: Char);
    procedure ODNIKeyPress(Sender: TObject; var Key: Char);
    procedure fecfalleClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FECHKeyPress(Sender: TObject; var Key: Char);
    procedure confirmaClick(Sender: TObject);
    procedure FECHExit(Sender: TObject);
    procedure anulaClick(Sender: TObject);
    procedure RvOrdenPrint(Sender: TObject);
    procedure ImpOrdServClick(Sender: TObject);
  private
    control:boolean;{Controla que no hubiere errores en la carga de datos}
    { Private declarations }
  public
    Resultado: string;
    // aca instancio la clase si la clase esta definida en el uses de la ventana
    Funciones:TFuncionesVarias;
    ParcelasInhumados:TParcelasInhumados;
    NroOpcion:integer;

    DataSetCli,DataSetTelf:TClientDataSet; //declaro los DataSet
    IdCombos:array of array of string; // para los combobox

    ///// para la impresion de datos segun parametros
    PosH1:Array [0..9] of Double;//Posiciones
    Camp1:Array [0..9] of Integer;//Campos a Tomar en cuenta
    TxtCamp1:Array [0..9] of String;//Textos de los Campos a Tomar en cuenta

  end;

var
  Confirma_Inhu: TConfirma_Inhu;

implementation

uses Unidad, Modulo,Busqueda,Anula_Generica;

{$R *.dfm}

procedure TConfirma_Inhu.FormActivate(Sender: TObject);
begin
PC1.ActivePage:=PC1.Pages[0];
PC1.Images:=modulo2.ImageList1;
inhu.OnClick(sender);
odni.SetFocus;
//BUSCA.SetFocus;
end;

procedure TConfirma_Inhu.Coloca1(nro:byte);
var t,y:integer;
    txt,sex:string;
    txtw:widestring;
   // NroDni,NroCuif,NroId:variant;
       NroDni,IdHabitante,NroAccion,DniTitular,DniFallecido,idcliente,idinhu,idhabi,NroId:variant;
    razonsocial,NombreTitular,NombreFallecido,fechafallecimiento,m:string;
begin
if nro=1 then begin
   DataSetCli.Free;
   DataSetCli:=TClientDataSet.Create(nil);
   DAtasource1.DataSet:=DataSetCli;

   Funciones:=TFuncionesVarias.Create(nil);
   Funciones.ConnectionString:=modulo2.Conexion;

   if inhu.Checked then begin
     IdHabitante:=trim(odni.Text);Nroaccion:=null;DniTitular:=null;NombreTitular:='';DniFallecido:=null;
     NombreFallecido:='';fechafallecimiento:='';
   end;
   if acci.Checked then begin
     IdHabitante:=null;Nroaccion:=trim(odni.Text);DniTitular:=null;NombreTitular:='';DniFallecido:=null;
     NombreFallecido:='';fechafallecimiento:='';
   end;
   if dnit.Checked then begin
     IdHabitante:=null;Nroaccion:=null;DniTitular:=trim(odni.Text);NombreTitular:='';DniFallecido:=null;
     NombreFallecido:='';fechafallecimiento:='';
   end;
   if nomt.Checked then begin
     IdHabitante:=null;Nroaccion:=null;DniTitular:='';NombreTitular:=trim(onomb.Text);DniFallecido:=null;
     NombreFallecido:='';fechafallecimiento:='';
   end;
   if dnif.Checked then begin
     IdHabitante:=null;Nroaccion:=null;DniTitular:='';NombreTitular:='';DniFallecido:=trim(odni.Text);
     NombreFallecido:='';fechafallecimiento:='';
   end;
   if nomf.Checked then begin
     IdHabitante:=null;Nroaccion:=null;DniTitular:='';NombreTitular:='';DniFallecido:=null;
     NombreFallecido:=trim(onomb.Text);fechafallecimiento:='';
   end;
   if fecfalle.Checked then begin
     IdHabitante:=null;Nroaccion:=null;DniTitular:='';NombreTitular:='';DniFallecido:=null;
     NombreFallecido:='';fechafallecimiento:=trim(fech.Text);
   end;
   if not Funciones.Run_Fn_VistaParcelasInhumados(IdHabitante,NroAccion,DniTitular,
   NombreTitular,DniFallecido,NombreFallecido,fechafallecimiento,DataSetCli,'',0) then
       messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);

   Funciones.Free;
end;
if nro=2 then begin   /// para cargar una grilla
  DataSetTelf.Free;
  DataSetTelf:=TClientdataSet.Create(nil);
  DataSource2.DataSet:=DataSetTelf;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  NroId:=D1.Text;
  if not funciones.Run_Fn_VistaParcelasInhumadosTestigos(NroId,DataSetTelf,'',0) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  JvDBGrid1.Columns[2].Width:=180;
  JvDBGrid1.Columns[3].Width:=80;
  JvDBGrid1.Columns[4].Width:=80;
end;
end;

procedure TConfirma_Inhu.dnitClick(Sender: TObject);
begin
if nroopcion=1 then begin
  ONOMB.Visible:=false;
  fech.Visible:=false;
  fech.Visible:=false;
  LB1.Caption:='Ingrese el N° DNI:';
  ODNI.Visible:=true;
  ODNI.Text:='00000000';
  Busca.Enabled:=true;
  ODNI.SetFocus;
end;
end;

procedure TConfirma_Inhu.nomtClick(Sender: TObject);
begin
if nroopcion=1 then begin
  LB1.Caption:='Ingrese Apellido:';
  fech.Visible:=false;
  ONOMB.Visible:=true;
  fech.Visible:=false;
  ODNI.Visible:=false;
  Busca.Enabled:=true;
  ONOMB.SetFocus;
end;
end;

procedure TConfirma_Inhu.acciClick(Sender: TObject);
begin
if nroopcion=1 then begin
  ONOMB.Visible:=false;
  fech.Visible:=false;
  LB1.Caption:='Ingrese el Nro de Acción:';
  ODNI.Visible:=true;
  ODNI.Text:='00000000';
  Busca.Enabled:=true;
  ODNI.SetFocus;
end;
end;

procedure TConfirma_Inhu.InhuClick(Sender: TObject);
begin
if nroopcion=1 then begin
  ONOMB.Visible:=false;
  fech.Visible:=false;
  LB1.Caption:='Ingrese el Id Inhumado:';
  ODNI.Visible:=true;
  ODNI.Text:='00000000';
  Busca.Enabled:=true;
  ODNI.SetFocus;
end;
end;

procedure TConfirma_Inhu.DBGrid1CellClick(Column: TColumn);
begin
if not (datasource1.DataSet.IsEmpty) then begin
//if not (DataSetCli.IsEmpty) then begin
      PC1.ActivePage:=PC1.Pages[1];
      D1.DataField:='IdHabitante';
      D2.DataField:='NroAccion';
      D3.DataField:='Nivel';
      D4.DataField:='Posicion';
      D5.DataField:='Objeto';
      D6.DataField:='DniTitular';
      D7.DataField:='NombreTitular';
      D8.DataField:='DniFallecido';
      D9.DataField:='NombreFallecido';
      D10.DataField:='NombreSolicitante';
      D11.DataField:='FechaIngreso';
      D12.DataField:='FechaFallecimiento';
      D13.DataField:='FechaInhumacion';
      D14.DataField:='HoraFallecimiento';
    //  D15.DataField:='HoraSalida';
      D16.DataField:='HoraLlegada';
      D17.DataField:='NroSeccion';
      D18.DataField:='NroActa';
      D19.DataField:='NroFolio';
      D20.DataField:='NroTomo';
      D21.DataField:='TipoDocTitular';
      D22.DataField:='DomTitular';
      D23.DataField:='LocTitular';
      D24.DataField:='BarrioTitular';
      if trim(DBGrid1.Fields[24].Text) = 'False' then confirma.Enabled:=true
         else confirma.Enabled:=false;
      if trim(DBGrid1.Fields[26].Text) = 'False' then anula.Enabled:=true
         else anula.Enabled:=false;
      D25.DataField:='fecha_anula';
      D26.DataField:='usu_anula';
      D27.DataField:='motivoanula';
      D28.DataField:='TipoDocFallecido';
      D29.DataField:='EstcivilFallecido';
      D30.DataField:='NacioFallecido';
      D31.DataField:='FecNacFellecido';
      D32.DataField:='DomFallecido';
      Coloca1(2);
  end;
end;

procedure TConfirma_Inhu.BuscaClick(Sender: TObject);
var p,u:integer;
begin
Coloca1(1);
if (DataSetCli.RecordCount = 0) then begin
  Barra1.Panels[0].Text:='Sin Datos en Grilla';
  IF application.MessageBox('Dato de Inhumado NO encontrado, !Desea Buscar otro Dato!?','Advertencia'
    ,mb_OKcancel+mb_IconHAnd) = IdOk then begin
    PC1.Enabled:=true;
    if nroopcion=1 then begin
        if inhu.Checked=true then ODNI.SetFocus;
        if acci.Checked=true then ODNI.SetFocus;
        if dnit.Checked=true then ODNI.SetFocus;
        if nomt.Checked=true then ONOMB.SetFocus;
        if dnif.Checked=true then ODNI.SetFocus;
        if nomf.Checked=true then ONOMB.SetFocus;
        if fecfalle.Checked=true then fech.SetFocus;
        if inhu.Checked=true then busca.SetFocus;
    end;
  end
  else begin
    PC1.Enabled:=false;
    Barra1.Panels[0].Text:='La opcion Busqueda fue Cancelada';
    BUSCA.SetFocus;
  end;
end
else begin
  Barra1.Panels[1].Text:='Registos encontrados: ' + inttostr(Datasource1.DataSet.RecordCount);
end;
end;

procedure TConfirma_Inhu.JvBitBtn3Click(Sender: TObject);
begin
Close;
end;

procedure TConfirma_Inhu.ExportaClick(Sender: TObject);
var texto:widestring;
var txt:string;
var t,y:integer;
begin
todos.Clear;
texto:='';
for t:=0 to DataSetCli.FieldCount-1 do begin
  texto:=texto + DataSetCli.Fields[t].FieldName + chr(9);
end;
todos.Lines.Add(texto);
for y:=1 to DataSetCli.RecordCount do begin
  DataSetCli.RecNo:=y;
  texto:='';
  for t:=0 to DataSetCli.FieldCount-1 do begin
    texto:=texto + DataSetCli.Fields[t].AsString + chr(9);
  end;
  todos.Lines.Add(texto);
end;
todos.SelectAll;
todos.CopyToClipboard;
messagedlgpos('Se Copiaron los Datos, listo para pegarlos a Excel',mtConfirmation,[mbok],0,screen.Width div 3,screen.Height div 3);
end;

procedure TConfirma_Inhu.ONOMBKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then busca.SetFocus;

end;

procedure TConfirma_Inhu.ODNIKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then busca.SetFocus;
end;

procedure TConfirma_Inhu.fecfalleClick(Sender: TObject);
begin
if nroopcion=1 then begin
  ONOMB.Visible:=false;
  odni.Visible:=false;
  LB1.Caption:='Ingrese la Fecha:';
  fech.Visible:=true;
  fech.SetFocus;
  Busca.Enabled:=true;
end;
end;

procedure TConfirma_Inhu.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var h:byte;
begin
h:=0;
if trim(DBGrid1.Fields[24].Text) = 'False' then h:=1;
if trim(DBGrid1.Fields[25].Text) = 'True' then h:=2;
case h of
  0:begin
    DBGrid1.Canvas.Brush.Color:=clWindow;
    DBGrid1.Canvas.FillRect(Rect);
    DBGrid1.Canvas.Font.Color:= clBlack;
    end;
  1:begin // sin confirmar
    DBGrid1.Canvas.Brush.Color:=clLime;
    DBGrid1.Canvas.FillRect(Rect);
    DBGrid1.Canvas.Font.Color:= clBlack;
    end;
  2:begin //anulados
    DBGrid1.Canvas.Brush.Color:=$00CECEFF;
    DBGrid1.Canvas.FillRect(Rect);
    DBGrid1.Canvas.Font.Color:= clBlack;
    end;
end;
DBGrid1.DefaultDrawColumnCell(Rect,Datacol,Column,State);
end;

procedure TConfirma_Inhu.FECHKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then busca.SetFocus;
end;

procedure TConfirma_Inhu.confirmaClick(Sender: TObject);
var gf:integer;
var m:boolean;
var txtw:widestring;
begin
  gf:=messagedlgpos('Desea Confirmar esta INHUMACION Seleccionada??',mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
  if gf = 1 then begin
    ParcelasInhumados:=TParcelasInhumados.Create(nil);
    ParcelasInhumados.ConnectionString:=modulo2.Conexion;

    txtw:='UPDATE ParcelasInhumados SET confirmado = 1,  Usu_Conf=' + inttostr(modulo2.nro_usu)
         + ', fecha_conf= ' + chr(39) + Fec_System() + chr(39) + ' WHERE (IdHabitante=' + trim(d1.Text) + ')';

    m:=ParcelasInhumados.ListarSinResp(txtw);
    ParcelasInhumados.Free;
    if m then begin
      messagedlg('Se ha CONFIRMADO esta INHUMACION con Exito',mtConfirmation,[mbok],0);
    end
    else begin
      messagedlg('Error al CONFIRMAr esta INHUMACION. Consulte con un Administrador',mtError,[mbok],0);
    end;
    confirma.Enabled:=false;
    ImpOrdServ.Enabled:=true;
  end;
end;

procedure TConfirma_Inhu.FECHExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(FECH.Text));
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  FECH.SetFocus;
end;
end;

procedure TConfirma_Inhu.anulaClick(Sender: TObject);
var Anula_General: TAnula_General;
begin
  Anula_General:= TAnula_General.create(self);
  try

    Anula_General.Caption:='Anulacion de Inhumados Cargados';
    Anula_General.ShowModal;
  finally
    Anula_General.destroy;
  end;
end;

procedure TConfirma_Inhu.RvOrdenPrint(Sender: TObject);
var posfx,posfy,posfin,pos_y,salto:double;

  Function Logo(posx,posy:double):double;
   var Imagen1:TBitMap;
       Fuente,PathLogo:string;
       Tamanio:integer;

   begin
   with RvOrden do begin
     {Pegamos el Logo para el reporte}
     {jpeg := TJPEGImage.Create;
      try
        jpeg.CompressionQuality := 100;
        jpeg.LoadFromFile(modulo2.path_todo + '\Imagenes\logo_carmelo.jpg');
        bmp := TBitmap.Create;
        try
          bmp.Assign(jpeg);
          bmp.SaveTofile(ChangeFileExt(modulo2.path_todo + '\Imagenes\logo_carmelo.jpg', '.bmp'));
          BaseReport.PrintBitmapRect(posx+5,posy+5,posx+50,posy+20,bmp);
        finally
          bmp.Free
        end;
      finally
        jpeg.Free
      end;  }
     Imagen1 := TBitMap.Create;

     PathLogo:=modulo2.path_todo + '\Imagenes\logo_carmelo.jpg';
     if FileExists(PathLogo) then begin
       Image1.Picture.LoadFromFile(PathLogo);
       Imagen1.Assign(Image1.Picture.Graphic);
       BaseReport.PrintBitmapRect(posx+5,posy+5,posx+50,posy+20,Imagen1);
     end;
     Imagen1.Free;
    {Colocamos el título}
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+20);
     Fuente:=modulo2.INI1.ReadString('Titulo3 Facturas','Fuente','Arial Black');
     try
       Tamanio:=strtoint(modulo2.INI1.ReadString('Titulo3 Facturas','Tamaño','10'));
     except
       Tamanio:=10;
     end;
     BaseReport.SetFont(Fuente,Tamanio);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+50,posy+15,'Servicios & Mandatarios S.A.');
     BaseReport.PrintXY(posx+140,posy+15,modulo2.INI1.ReadString('Titulo3 Facturas','Titulo0',''));

     BaseReport.SetFont('Arial Black',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+30);
     BaseReport.PrintXY(posx+5,posy+27,'REGISTRO DE INHUMACIONES');
     BaseReport.PrintXY(posx+130,posy+27,'ORDEN DE SERVICIO Nº: ' + d1.Text);

     BaseReport.SetFont('Arial',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+40);
     BaseReport.PrintXY(posx+5,posy+37,'DATOS DEL FALLECIDO Y ORIGEN DEL SERVICIO');
     BaseReport.PrintXY(posx+130,posy+37,'Nº ORDEN:');

     BaseReport.SetFont('Arial Black',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+60);
     BaseReport.PrintXY(posx+5,posy+43,'Fecha Ingreso');
     BaseReport.PrintXY(posx+25,posy+43,'Hora');
     BaseReport.PrintXY(posx+35,posy+43,'Nombre del Extinto');
     BaseReport.PrintXY(posx+88,posy+43,'Tipo y N° Doc.');
     BaseReport.PrintXY(posx+110,posy+43,'Nacio.');
     BaseReport.PrintXY(posx+130,posy+43,'Est. Civil');
     BaseReport.PrintXY(posx+155,posy+43,'Edad');
     BaseReport.PrintXY(posx+165,posy+43,'Fec. Nac.');
     BaseReport.SetFont('Arial ',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+47,trim(d11.Text));
     BaseReport.PrintXY(posx+25,posy+47,trim(d14.Text));
     BaseReport.PrintXY(posx+35,posy+47,trim(d9.Text));
     BaseReport.PrintXY(posx+88,posy+47,trim(d28.Text) + '-' + trim(d8.Text));
     BaseReport.PrintXY(posx+110,posy+47,trim(d30.Text));
     BaseReport.PrintXY(posx+130,posy+47,trim(d29.Text));
     BaseReport.PrintXY(posx+155,posy+47,unidad.edad(strcut(Fec_System(),10),trim(d31.Text)));
     BaseReport.PrintXY(posx+165,posy+47,trim(d31.Text));

     BaseReport.SetFont('Arial Black',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+53,'Domicilio');
     BaseReport.PrintXY(posx+65,posy+53,'Seccion');
     BaseReport.PrintXY(posx+80,posy+53,'Acta');
     BaseReport.PrintXY(posx+90,posy+53,'Folio');
     BaseReport.PrintXY(posx+110,posy+53,'Tomo');
     BaseReport.PrintXY(posx+130,posy+53,'Fec. Defuncion');
     BaseReport.SetFont('Arial ',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+57,trim(d32.Text));
     BaseReport.PrintXY(posx+65,posy+57,trim(d17.Text));
     BaseReport.PrintXY(posx+80,posy+57,trim(d18.Text));
     BaseReport.PrintXY(posx+90,posy+57,trim(d19.Text));
     BaseReport.PrintXY(posx+110,posy+57,trim(d20.Text));
     BaseReport.PrintXY(posx+130,posy+57,trim(d12.Text));

     BaseReport.SetFont('Arial',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+70);
     BaseReport.PrintXY(posx+5,posy+67,' REFERENCIAS DEL SERVICIO DEL PARQUE');

     BaseReport.SetFont('Arial Black',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+88);
     BaseReport.PrintXY(posx+5,posy+73,'Cocheria');
     BaseReport.PrintXY(posx+35,posy+73,'Tipo Servicio');
     BaseReport.PrintXY(posx+65,posy+73,'Religion');
     BaseReport.PrintXY(posx+108,posy+73,'Fec. Inhu.');
     BaseReport.PrintXY(posx+130,posy+73,'Hora ');
     BaseReport.PrintXY(posx+145,posy+73,'Acta N°');
     BaseReport.PrintXY(posx+158,posy+73,'Sector');
     BaseReport.PrintXY(posx+170,posy+73,'Parcela');
     BaseReport.PrintXY(posx+185,posy+73,'Nivel');
     BaseReport.SetFont('Arial ',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+108,posy+77,trim(d13.Text));
     BaseReport.PrintXY(posx+130,posy+77,trim(d16.Text));

     BaseReport.SetFont('Arial Black',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+81,'Titular Parcela');
     BaseReport.PrintXY(posx+65,posy+81,'N° Titulo');
     BaseReport.PrintXY(posx+108,posy+81,'Objeto');
     BaseReport.SetFont('Arial ',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+84,trim(d7.Text));
      BaseReport.PrintXY(posx+65,posy+84,trim(d2.Text));


     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+106);
     BaseReport.SetFont('Arial Black',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+93,'Solicitante:');
     BaseReport.PrintXY(posx+5,posy+98,'Responsable');
     BaseReport.PrintXY(posx+48,posy+98,'Tipo y N° Doc');
     BaseReport.PrintXY(posx+90,posy+98,'Domicilio');
     BaseReport.PrintXY(posx+155,posy+98,'Barrio');
     BaseReport.SetFont('Arial ',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+30,posy+93,trim(d10.Text));
     BaseReport.PrintXY(posx+5,posy+102,trim(d7.Text));
     BaseReport.PrintXY(posx+48,posy+102,trim(d21.Text) + '-' + trim(d6.Text));
     BaseReport.PrintXY(posx+90,posy+102,trim(d22.Text));
     BaseReport.PrintXY(posx+155,posy+102,trim(d24.Text) + '-' + trim(d23.Text));

     BaseReport.SetFont('Arial',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+125);
     BaseReport.PrintXY(posx+5,posy+110,' OBSERVACIONES');
    // Logo:=posy+30;
   end;
   end;

begin
posfx:=6;posfy:=5;salto:=4;
posfy:=Logo(posfx,posfy);
posfy:=posfy + 100;
posfy:=Logo(posfx,posfy);
end;

procedure TConfirma_Inhu.ImpOrdServClick(Sender: TObject);
begin
RvOrden.Execute;
end;

end.

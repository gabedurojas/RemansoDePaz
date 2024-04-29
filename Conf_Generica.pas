unit Conf_Generica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,DBClient, StdCtrls, DBCtrls, Grids, DBGrids, ComCtrls, StrUtils,
  DB, Mask,ADODB, Buttons, ExtCtrls, JvExDBGrids, JvDBGrid, RpDefine,
  RpBase, RpSystem, JvgPage, JvExButtons, JvBitBtn, WSDLIntf, ClaseFunciones,ClaseParcelasInhumados;

type LasFilas = array[1..2] of integer;
type HackTable = class(TClientDataSet);//       class(TADOTable);
type
  TConfirma_Gen = class(TForm)
    Barra1: TStatusBar;
    DataSource1: TDataSource;
    GroupBox2: TGroupBox;
    PC1: TJvgPageControl;
    TabSheet2: TTabSheet;
    Label15: TLabel;
    Label7: TLabel;
    Label13: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    sale: TJvBitBtn;
    D1: TDBEdit;
    D2: TDBEdit;
    D3: TDBEdit;
    D4: TDBEdit;
    D5: TDBEdit;
    D8: TDBEdit;
    D9: TDBEdit;
    D10: TDBEdit;
    D11: TDBEdit;
    D13: TDBEdit;
    D12: TDBEdit;
    D14: TDBEdit;
    D15: TDBEdit;
    Label5: TLabel;
    D16: TDBEdit;
    Label8: TLabel;
    D17: TDBEdit;
    D18: TDBEdit;
    Label18: TLabel;
    D19: TDBEdit;
    Label17: TLabel;
    D20: TDBEdit;
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
    Label19: TLabel;
    D21: TDBEdit;
    nomf: TRadioButton;
    dnif: TRadioButton;
    Label11: TLabel;
    D6: TDBEdit;
    Label2: TLabel;
    D7: TDBEdit;
    Label20: TLabel;
    D22: TDBEdit;
    D23: TDBEdit;
    D24: TDBEdit;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
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
    RvS: TRvSystem;
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
    procedure RvSPrint(Sender: TObject);
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
  Confirma_Gen: TConfirma_Gen;

implementation

uses Unidad, Modulo,Busqueda,Anula_Generica;

{$R *.dfm}

procedure TConfirma_Gen.FormActivate(Sender: TObject);
begin
PC1.ActivePage:=PC1.Pages[0];
PC1.Images:=modulo2.ImageList1;
inhu.OnClick(sender);
BUSCA.SetFocus;
end;

procedure TConfirma_Gen.Coloca1(nro:byte);
var t,y:integer;
    txt,sex:string;
    txtw:widestring;
    NroDni,NroCuif,NroId:variant;
begin
 if nro=1 then begin
  if nroopcion=1 then begin
    DataSetCli.Free;
    DataSetCli:=TClientdataSet.Create(nil);
    DataSource1.DataSet:=DataSetCli;
    ParcelasInhumados:=TParcelasInhumados.Create(nil);
    ParcelasInhumados.ConnectionString:=modulo2.Conexion;

    if inhu.Checked then begin
      txt:= txt + ' where (IdHabitante= ' + trim(odni.Text) + ')';
    end;
    if acci.Checked then begin
     txt:= txt + ' where (NroAccion= ' + trim(odni.Text) + ')';
    end;
    if dnit.Checked then begin
     txt:= txt + ' where (DniTitular= ' + trim(odni.Text) + ')';
    end;
    if nomt.Checked then begin
       txt:= txt + ' where (Titular= ' + trim(onomb.Text) + ')';
    end;
    if dnif.Checked then begin
     txt:= txt + ' where (DniFallecido= ' + trim(odni.Text) + ')';
    end;
    if nomf.Checked then begin
       txt:= txt + ' where (Fallecido= ' + trim(onomb.Text) + ')';
    end;
    if fecfalle.Checked then begin
       txt:= txt + ' where (FechaFallecimiento= ' + chr(39) + trim(fech.Text) + chr(39) +')';
    end;
    txtw:='SELECT  IdHabitante, NroAccion, Nivel, Posicion, Objeto, DniTitular,'
    + ' NombreTitular, DniFallecido, NombreFallecido, NombreSolicitante, FechaIngreso, FechaFallecimiento, FechaInhumacion,'
    + ' HoraFallecimiento, HoraSalida, HoraLlegada, NroSeccion, NroActa, NroFolio, NroTomo, Medico,'
    + ' Diagnostico, PadreFallecido, MadreFallecido, Confirmado,anulado,usu_anula,fecha_anula,motivoanula  FROM  VParcelasInhumados ' + txt + ' order by 1';

    if not ParcelasInhumados.Listar(txtw,DataSetCli) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    ParcelasInhumados.Free;
  end;
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

procedure TConfirma_Gen.dnitClick(Sender: TObject);
begin
if nroopcion=1 then begin
  ONOMB.Visible:=false;
  fech.Visible:=false;
  fech.Visible:=false;
  LB1.Caption:='Ingrese el N� DNI:';
  ODNI.Visible:=true;
  ODNI.Text:='00000000';
  Busca.Enabled:=true;
  ODNI.SetFocus;
end;
end;

procedure TConfirma_Gen.nomtClick(Sender: TObject);
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

procedure TConfirma_Gen.acciClick(Sender: TObject);
begin
if nroopcion=1 then begin
  ONOMB.Visible:=false;
  fech.Visible:=false;
  LB1.Caption:='Ingrese el Nro de Acci�n:';
  ODNI.Visible:=true;
  ODNI.Text:='00000000';
  Busca.Enabled:=true;
  ODNI.SetFocus;
end;
end;

procedure TConfirma_Gen.InhuClick(Sender: TObject);
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

procedure TConfirma_Gen.DBGrid1CellClick(Column: TColumn);
begin
 if not (DataSetCli.IsEmpty) then begin
  if nroopcion = 1 then begin
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
    D15.DataField:='HoraSalida';
    D16.DataField:='HoraLlegada';
    D17.DataField:='NroSeccion';
    D18.DataField:='NroActa';
    D19.DataField:='NroFolio';
    D20.DataField:='NroTomo';
    D21.DataField:='Medico';
    D22.DataField:='Diagnostico';
    D23.DataField:='PadreFallecido';
    D24.DataField:='MadreFallecido';
    if trim(DBGrid1.Fields[24].Text) = 'False' then confirma.Enabled:=true
       else confirma.Enabled:=false;
    if trim(DBGrid1.Fields[25].Text) = 'False' then anula.Enabled:=true
       else anula.Enabled:=false;
    D25.DataField:='fecha_anula';
    D26.DataField:='usu_anula';
    D27.DataField:='motivoanula';
    Coloca1(2);
  end;
 end;
end;

procedure TConfirma_Gen.BuscaClick(Sender: TObject);
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

procedure TConfirma_Gen.JvBitBtn3Click(Sender: TObject);
begin
Close;
end;

procedure TConfirma_Gen.ExportaClick(Sender: TObject);
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

procedure TConfirma_Gen.ONOMBKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then busca.SetFocus;

end;

procedure TConfirma_Gen.ODNIKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then busca.SetFocus;
end;

procedure TConfirma_Gen.fecfalleClick(Sender: TObject);
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

procedure TConfirma_Gen.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var h:byte;
begin
h:=0;
if NroOpcion = 1 then
   if trim(DBGrid1.Fields[24].Text) = 'False' then h:=1;
{if NroOpcion = 2 then
   if trim(DBGrid3.Fields[10].Text) = 'False' then h:=1;
if NroOpcion = 3 then
   if trim(DBGrid3.Fields[10].Text) = 'False' then h:=1; }
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

procedure TConfirma_Gen.FECHKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then busca.SetFocus;
end;

procedure TConfirma_Gen.confirmaClick(Sender: TObject);
var gf:integer;
var m:boolean;
var txtw:widestring;
begin
 if NroOpcion = 1 then begin
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
  end;
 end;
end;

procedure TConfirma_Gen.FECHExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(FECH.Text));
except
  messagedlg('La Fecha Ingresada No es V�lida',mterror,[mbok],0);
  FECH.SetFocus;
end;
end;

procedure TConfirma_Gen.anulaClick(Sender: TObject);
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

procedure TConfirma_Gen.RvSPrint(Sender: TObject);
var posfx,posfy,posfin,pos_y,salto:double;

  Function Logo(posx,posy:double):double;
   var Imagen1:TBitMap;
       Fuente,PathLogo:string;
       Tamanio:integer;
   begin
    {El Logo}
   with RvS do begin
     {Pegamos el Logo para el reporte}
     Imagen1 := TBitMap.Create;
     Imagen1.LoadFromFile(modulo2.path_todo + '\Imagenes\logo_carmelo.bmp');
     BaseReport.PrintBitmapRect(posx+90,posy+6,posx+130,posy+26,Imagen1);

    {Colocamos el t�tulo}
     BaseReport.Rectangle(posx+4,posy+5,posx+195,posy+30);
     Fuente:=modulo2.INI1.ReadString('Titulo1 Facturas','Fuente','Arial Black');
     try
       Tamanio:=strtoint(modulo2.INI1.ReadString('Titulo1 Facturas','Tama�o','10'));
     except
       Tamanio:=10;
     end;
     BaseReport.SetFont(Fuente,Tamanio);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+5,posy+11,modulo2.INI1.ReadString('Titulo1 Facturas','Titulo2','ADF'));

     Fuente:=modulo2.INI1.ReadString('Titulo2 Facturas','Fuente','Arial');
     try
       Tamanio:=strtoint(modulo2.INI1.ReadString('Titulo2 Facturas','Tama�o','8'));
     except
       Tamanio:=8;
     end;
     BaseReport.SetFont(Fuente,Tamanio);
     BaseReport.FontColor:=clBlack;

     BaseReport.PrintXY(posx+5,posy+14,modulo2.INI1.ReadString('Titulo3 Facturas','Titulo1',''));
     BaseReport.PrintXY(posx+5,posy+17,modulo2.INI1.ReadString('Titulo3 Facturas','Titulo2',''));
     BaseReport.PrintXY(posx+5,posy+20,modulo2.INI1.ReadString('Titulo3 Facturas','Titulo3',''));
     BaseReport.PrintXY(posx+5,posy+23,modulo2.INI1.ReadString('Titulo3 Facturas','Titulo4',''));
     BaseReport.PrintXY(posx+5,posy+26,modulo2.INI1.ReadString('Titulo3 Facturas','Titulo0',''));

     BaseReport.SetFont('Arial Black',12);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+140,posy+15,'RECIBO AUTORIZADO');
 //    BaseReport.PrintXY(posx+140,posy+20,'N� 0000 - ' + nrorec);
     Logo:=posy+30;
   end;
   end;

  Function mostrar_partes0(pos1,pos2:double):double;
  begin
  with Rvs do begin
    BaseReport.Rectangle(pos1+4,pos2,pos1+195,pos2+30);
    BaseReport.SetFont('Arial',9);
    BaseReport.FontColor:=clBlack;
    BaseReport.PrintXY(pos1+6,pos2+5,'Recib�(mos) de: ');
    BaseReport.PrintXY(pos1+6,pos2+10,'la suma de pesos: ');
    BaseReport.PrintXY(pos1+6,pos2+15,'En pago de: ');
  { if trim(el_codigo(1)) = '2' then begin
     BaseReport.PrintXY(pos1+6,pos2+20,'Periodos Pagados: ');
     BaseReport.PrintXY(pos1+6,pos2+25,'Correspondiente a la Retencion: ' + trim(reten.Text));
   end;
   if trim(el_codigo(1)) = '3' then  begin
      BaseReport.PrintXY(pos1+6,pos2+20,'Cuotas Pagadas: ');
      BaseReport.PrintXY(pos1+6,pos2+25,'Correspondiente al Nro. de Prestamo: ' + trim(nroprestamo.Text) + '  -  Tipo: ' + trim(label6.Caption));
   end;  }
   
    BaseReport.SetFont('Arial Black',8);
    BaseReport.FontColor:=clBlack;
  {  BaseReport.PrintXY(pos1+40,pos2+5, trim(nomraz.Text) + ' - N� Prestador: ' + trim(cliente.Text));
    BaseReport.PrintXY(pos1+35,pos2+10,numtopesos(redondeo(total_deuda,2))+ '.-');
   if trim(el_codigo(1)) = '2' then
     BaseReport.PrintXY(pos1+25,pos2+15,trim(OBSERVA.Text) + ' - N� Retencion: ' + el_codigo(1) + ' .-');
   if trim(el_codigo(1)) = '3' then
    BaseReport.PrintXY(pos1+25,pos2+15,trim(OBSERVA.Text));  }
    BaseReport.SetFont('Arial Black',7);
    BaseReport.FontColor:=clBlack;
 //   BaseReport.PrintXY(pos1+35,pos2+20,strcut(total_periodo,120));
  end;
  Result:=pos2 + 30;
  end;

  Function mostrar_partes2(pos1,pos2:double):double;
  var ul:integer;
  begin
  with Rvs do begin
   { BaseReport.Rectangle(pos1+4,pos2,pos1+90,pos2+35);
    BaseReport.SetFont('Arial',9);
    BaseReport.FontColor:=clBlack;
    BaseReport.PrintXY(pos1+6,pos2+5,'Forma Pago: ');
    BaseReport.SetFont('Arial Black',10);
    BaseReport.FontColor:=clBlack;
    BaseReport.PrintXY(pos1+6,pos2+10,'SON $ : ' + trim(TOTAL.Text));
    BaseReport.SetFont('Arial Black',8);
    BaseReport.FontColor:=clBlack;
    BaseReport.PrintXY(pos1+25,pos2+5,trim(FP1.Text)); }
  end;
  Result:=pos2 //pos2 + 20;
  end;

  Function mostrar_partes3(pos1,pos2:double):double;
  begin
  with Rvs do begin
    BaseReport.Rectangle(pos1+90,pos2,pos1+195,pos2+35);
    BaseReport.SetFont('Arial',9);
    BaseReport.FontColor:=clBlack;
    BaseReport.PrintXY(pos1+94,pos2+5,'Lugar y Fecha: ');
    BaseReport.SetFont('Arial Black',8);
    BaseReport.FontColor:=clBlack;
  //  BaseReport.PrintXY(pos1+120,pos2+5,'FORMOSA, ' + Fec_Texto(FECINI.Text));
    BaseReport.PrintXY(pos1+94,pos2+13,'FIRMA:............................................................................ ');
    BaseReport.PrintXY(pos1+94,pos2+23,'ACLARACION:................................................................ ');
    BaseReport.PrintXY(pos1+94,pos2+30,'DNI Nro:................................................................ ');
  end;
  Result:=pos2 + 50;
  end;

begin

posfx:=6;posfy:=5;salto:=4;
posfy:=Logo(posfx,posfy);
//posfy:=mostrar_partes0(posfx,posfy);
//posfy:=mostrar_partes2(posfx,posfy);  //forma pago
//mostrar_partes2(posfx,posfy);
//posfy:=mostrar_partes3(posfx,posfy);

end;

end.

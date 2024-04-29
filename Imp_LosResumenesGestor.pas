unit Imp_LosResumenesGestor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,DBClient, StdCtrls, DBCtrls, Grids, DBGrids, ComCtrls, StrUtils,
  DB, Mask, ADODB, Buttons, ExtCtrls,
  WSDLIntf, Unidad, JvExGrids, JvStringGrid, JvExDBGrids, JvDBGrid,
  ToolWin, JvExButtons, JvBitBtn, RpDefine, RpBase, RpSystem, JvgGroupBox;

type THackStringGrid = class(TStringGrid);
type HackTable = class(TADOTable);
type
  TImpResumGestor = class(TForm)
    Barra1: TStatusBar;
    DataSource1: TDataSource;
    PC1: TPageControl;
    TabSheet3: TTabSheet;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    BORRA: TJvBitBtn;
    ToolButton2: TToolButton;
    JvBitBtn3: TJvBitBtn;
    Label2: TLabel;
    RvS: TRvSystem;
    DataSource2: TDataSource;
    DBGrid1: TJvDBGrid;
    JvgGroupBox5: TJvgGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    DBGrid2: TDBGrid;
    DESDE: TEdit;
    HASTA: TEdit;
    imprime: TJvBitBtn;
    Splitter1: TSplitter;
    DataSource3: TDataSource;
    Image1: TImage;
    T8: TClientDataSet;
    GroupBox1: TGroupBox;
    COBRADOR: TComboBox;
    busca: TJvBitBtn;
    FG: TRadioButton;
    Image2: TImage;
    procedure Coloca1(nro:byte);
    procedure FormActivate(Sender: TObject);
    procedure SALEClick(Sender: TObject);
    procedure BORRAClick(Sender: TObject);
    procedure ImprimeClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure JvBitBtn3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure RvSPrint(Sender: TObject);
    procedure FGClick(Sender: TObject);
    procedure COBRADORExit(Sender: TObject);
    procedure COBRADORKeyPress(Sender: TObject; var Key: Char);
    procedure buscaClick(Sender: TObject);
    procedure COBRADORChange(Sender: TObject);
  private
    control:boolean;{Controla que no hubiere errores en la carga de datos}
    { Private declarations }
  public
    // aca instancio la clase si la clase esta definida en el uses de la ventana
    Resultado,elcuif,ArchivoImg,id:string;
    pos,TipoCliente:integer;

    DataSet,DtCombo:TClientDataSet; //declaro el DAtaset de los Combobox
    IdCombos:array of array of string;

    PosH:Array [0..8] of Double;//Posiciones
    Camp:Array [0..8] of Integer;//Campos a Tomar en cuenta
    TxtCamp:Array [0..8] of String;//Textos de los Campos a Tomar en cuenta
    //TiposAccio:Unidad.TablaXML;

  end;

var
  ImpResumGestor: TImpResumGestor;

implementation

uses Modulo,ClaseSistemas,ClaseFunciones;

{$R *.dfm}

procedure TImpResumGestor.FormActivate(Sender: TObject);
begin
setlength(IdCombos,1);
PC1.ActivePage:=PC1.Pages[0];
imprime.Enabled:=false;
coloca1(0);
coloca1(2);
end;

procedure TImpResumGestor.Coloca1(nro:byte);
var t,y:integer;
    txt,sex:string;
    txtw:widestring;
    Funciones:TFuncionesVarias;
    Sistema:TSistemas;
    Param:TWideStrings;
    NroDni,NroCuif,nroid:variant;

begin
if nro=0 then begin
  DataSet.Free;
  Dataset:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=Dataset;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT Id, Periodo, FechaCalculo FROM ParcelasResumen order by 1';
  if not Funciones.Listar(txtw,DataSet) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    Funciones.Free;
  dbgrid1.Columns[0].Width:=28;
end;
if nro=1 then begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  DataSource2.DataSet:=DtCombo;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT * FROM VParcelasResumenDetalleGAb where idresumen= ' + id +' order by 1';
  if not Funciones.Listar(txtw,DtCombo) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
    if not (DtCombo.IsEmpty) then begin
     DESDE.Text:='1';
     HASTA.Text:=inttostr(DtCombo.RecordCount);
     imprime.Enabled:=true;
    end;
end;
if nro=2 then begin //combotipodni
  COBRADOR.Clear;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  NroDni:=2;
  txtw:='SELECT distinct Nombre,cuif FROM VLosCobradores ORDER BY Nombre';
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
if nro=3 then begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  DataSource2.DataSet:=DtCombo;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT * FROM VParcelasResumenDetalleGAb where (idresumen= ' + id +') and (gestor=' + chr(39) + trim(cobrador.Text) + chr(39) +') order by 1';
  if not Funciones.Listar(txtw,DtCombo) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
    if not (DtCombo.IsEmpty) then begin
     DESDE.Text:='1';
     HASTA.Text:=inttostr(DtCombo.RecordCount);
     imprime.Enabled:=true;
    end;
end;
end;

procedure TImpResumGestor.SALEClick(Sender: TObject);
begin
Close;
end;

procedure TImpResumGestor.BORRAClick(Sender: TObject);
begin
 PC1.ActivePage:=PC1.Pages[0];
 DESDE.Text:='1';
 HASTA.Text:=inttostr(DtCombo.RecordCount);
 imprime.Enabled:=false;
 fg.Checked:=false;
 fg.OnClick(Sender);
end;


procedure TImpResumGestor.ImprimeClick(Sender: TObject);
var gf,t:integer;
begin
gf:=messagedlgpos('Desea Imprimir el Detalle del Resumen Seleccionado?'
    ,mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
if gf = 1 then begin
  Rvs.Execute;
end;
end;

procedure TImpResumGestor.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//if key = VK_F4 then GUARDA.Click;
//if key = VK_F11 then LIMPIAR.Click;
//if key = VK_ESCAPE	then SALIR.Click ;
end;

procedure TImpResumGestor.JvBitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TImpResumGestor.DBGrid1CellClick(Column: TColumn);
var gf:integer;
begin
if not (Dataset.IsEmpty) then begin
  id:=trim(dataset.Fields[0].AsString) ;
  gf:=messagedlg('Desea Obtener los Registros del Resumen Nro: ' + id + chr(13)
    + 'para poder Imprimirlos?..',mtWarning,[mbok,mbCancel],0);
  if gf = 1 then begin
  coloca1(1);
  end;
end;
end;

procedure TImpResumGestor.DBGrid2CellClick(Column: TColumn);
begin
  DESDE.Text:=inttostr(DtCombo.RecNo);
  HASTA.Text:=inttostr(DtCombo.RecNo);
  imprime.Enabled:=true;
end;

procedure TImpResumGestor.RvSPrint(Sender: TObject);
var posfx,posfy,final,salto:double;
var t,y,hoja,nro:integer;
//var tot,total:real;
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

          //Pegamos el Logo en el reporte
     MarcaAgua := TBitMap.Create;
     PathLogo1:=modulo2.path_todo + '\Imagenes\RemansoAgua.jpg';
     if FileExists(PathLogo) then begin
       Image2.Picture.LoadFromFile(PathLogo);
       MarcaAgua.Assign(Image1.Picture.Graphic);
       BaseReport.PrintBitmapRect(posx+6,posy+2,posx+30,posy+22,MarcaAgua);
     end;
     MarcaAgua.Free;


     {Colocamos el título}
     BaseReport.Rectangle(posx+2,posy+1,posx+205,posy+23);
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
     BaseReport.PrintXY(posx+34,posy+15,'RESUMEN DE CLIENTES');
     Logo:=posy+23;
   end;
   end;

   /////////  GRILLA de RECAUDACION
  Function GrillaCabecera(posx,posy:double;texto:string):double;
  var t:integer;
  begin
     with RvS do begin
      BaseReport.Rectangle(posx+2,posy,posx+205,posy+5);
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
  Rvs.BaseReport.SetFont('Arial',7);
  Rvs.BaseReport.FontColor:=clBlack;
    for t:=0 to length(Camp)-1 do
     if t>4  then Rvs.BaseReport.PrintXY(posx + PosH[t],posy+4,'$ ' + HackTable(FindComponent(texto)).Fields[Camp[t]].AsString)
       else Rvs.BaseReport.PrintXY(posx + PosH[t],posy+4,HackTable(FindComponent(texto)).Fields[Camp[t]].AsString);

    Result:=posy+4;
  end;

  //// Grilla Recuadro
  Function GrillaRecuadro(posx,posy,posy2:double):double;
  var t:integer;
  begin
  with RvS do begin
    BaseReport.Rectangle(posx+2,posy,posx+205,posy2);
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

  Rvs.BaseReport.SetFont('Arial Black',9);
  Rvs.BaseReport.FontColor:=clBlack;
  Rvs.BaseReport.RoundRect(posfx+35,posfy,posfx+165,posfy+5,5,5);
  if fg.Checked = true then Rvs.BaseReport.PrintXY(posfx+50,posfy+4,'LISTA DE CLIENTES DE: ' + TRIM(COBRADOR.TEXT))
    else Rvs.BaseReport.PrintXY(posfx+80,posfy+4,'LISTA DE CLIENTES');

  {IdResumen, NroAccion, NroActa, Sector, CodigoPlaza, Parcela,
   RazonSocial, Domicilio, CuentaCliente, Ventas, Servicios,
   Mantenimiento, Consolidados,CuifGestor, Gestor, NroGestor, IdBarrio}
      Camp[0]:=6; Camp[1]:=7; Camp[2]:=1;  Camp[3]:=5;
      Camp[4]:=3; Camp[5]:=9; Camp[6]:=10; Camp[7]:=11;  Camp[8]:=8;

      TxtCamp[0]:='Cliente';  TxtCamp[1]:='Domicilio'; TxtCamp[2]:='NroAccion';     TxtCamp[3]:='Parcela';
      TxtCamp[4]:='Sector';   TxtCamp[5]:='Ventas';    TxtCamp[6]:='Servicios';     TxtCamp[7]:='Mantem.';
      TxtCamp[8]:='Consol.';

      PosH[0]:=3;   PosH[1]:=45;  PosH[2]:=90;  PosH[3]:=110;
      PosH[4]:=125; PosH[5]:=140; PosH[6]:=155; PosH[7]:=172;   PosH[8]:=190;

      T8.Close;
      T8.CloneCursor(DtCombo,false,true);
      txt:='T8';
      final:=GrillaCabecera(posfx,posfy+5,txt);
      posfy:=final;
      pso:=false;

      for y:=1 to HackTable(findcomponent(txt)).RecordCount do begin
        HackTable(FindComponent(txt)).RecNo:=y;
        if pso then Rvs.BaseReport.Rectangle(posfx+2,posfy+1,posfx+205,posfy+1)
        else pso:=true;
        posfy:=GrillaDetalle(posfx,posfy,txt);
        if posfy > 270 then begin
          posfy:=GrillaRecuadro(posfx,final,posfy+2);
          posfx:=5.5;posfy:=5;hoja:=hoja+1;
          RvS.BaseReport.NewPage;
          posfy:=Logo(posfx,posfy,hoja);  // llamamos al encabezado
          posfy:=final;pso:=false;
        end;
      end;
      
      if pso then posfy:=GrillaRecuadro(posfx,final,posfy+2);
  except
end;
end;

procedure TImpResumGestor.FGClick(Sender: TObject);
begin
  if fg.Checked= true then begin
    cobrador.Enabled:=true;
    busca.Enabled:=true;
    cobrador.SetFocus;
  end
  else begin
    cobrador.Enabled:=false;
    busca.Enabled:=false;
  end;
end;

procedure TImpResumGestor.COBRADORExit(Sender: TObject);
begin
if COBRADOR.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Cobrador Ingresado!!',mterror,[mbok],0);
  COBRADOR.SetFocus;
end;
end;

procedure TImpResumGestor.COBRADORKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  busca.SetFocus;
end;
end;

procedure TImpResumGestor.buscaClick(Sender: TObject);
begin
coloca1(3);
end;

procedure TImpResumGestor.COBRADORChange(Sender: TObject);
begin
desde.Text:='0';
hasta.Text:='0';
end;

end.

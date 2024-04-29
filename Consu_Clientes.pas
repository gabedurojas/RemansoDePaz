unit Consu_Clientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,DBClient, StdCtrls, DBCtrls, Grids, DBGrids, ComCtrls, StrUtils,
  DB, Mask,ADODB, Buttons, ExtCtrls, JvExDBGrids, JvDBGrid, RpDefine,
  RpBase, RpSystem, JvgPage, JvExButtons, JvBitBtn, WSDLIntf, ClaseFunciones,
  ToolWin;

type LosDts = class(TDataSource);
type
  TCon_Cliente = class(TForm)
    Barra1: TStatusBar;
    DataSource0: TDataSource;
    Rv: TRvSystem;
    PC1: TJvgPageControl;
    TabSheet2: TTabSheet;
    Label15: TLabel;
    Label7: TLabel;
    Label13: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label11: TLabel;
    Label2: TLabel;
    Label9: TLabel;
    D1: TDBEdit;
    D2: TDBEdit;
    D3: TDBEdit;
    D4: TDBEdit;
    D5: TDBEdit;
    D6: TDBEdit;
    D7: TDBEdit;
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
    RB5: TRadioButton;
    RB1: TRadioButton;
    RB2: TRadioButton;
    RB6: TRadioButton;
    Bevel2: TBevel;
    LB1: TLabel;
    ODNI: TEdit;
    ONOMB: TEdit;
    Busca: TJvBitBtn;
    JvDBGrid1: TJvDBGrid;
    DataSource1: TDataSource;
    Label19: TLabel;
    D21: TDBEdit;
    Image2: TImage;
    TabSheet3: TTabSheet;
    GroupBox3: TGroupBox;
    JvDBGrid2: TJvDBGrid;
    Splitter1: TSplitter;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    PC2: TJvgPageControl;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    GroupBox4: TGroupBox;
    JvDBGrid3: TJvDBGrid;
    Panel1: TPanel;
    R2: TRadioButton;
    R1: TRadioButton;
    ToolBar1: TToolBar;
    ImpPDF: TBitBtn;
    Imprime: TJvBitBtn;
    Exporta: TJvBitBtn;
    sale: TJvBitBtn;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    Splitter2: TSplitter;
    GroupBox2: TGroupBox;
    JvDBGrid6: TJvDBGrid;
    GroupBox5: TGroupBox;
    JvDBGrid7: TJvDBGrid;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    JvDBGrid8: TJvDBGrid;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    DataSource6: TDataSource;
    DataSource7: TDataSource;
    GroupBox6: TGroupBox;
    JvDBGrid4: TJvDBGrid;
    Splitter3: TSplitter;
    GroupBox7: TGroupBox;
    JvDBGrid5: TJvDBGrid;
    DataSource8: TDataSource;
    Image1: TImage;
    todos: TRichEdit;
    RB3: TRadioButton;
    RB7: TRadioButton;
    RB4: TRadioButton;
    procedure FormActivate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure RB2Click(Sender: TObject);
    procedure RB1Click(Sender: TObject);
    procedure ImpPDFClick(Sender: TObject);
    procedure RvPrint(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BuscaClick(Sender: TObject);
    procedure JvBitBtn3Click(Sender: TObject);
    procedure ExportaClick(Sender: TObject);
    procedure ImprimeClick(Sender: TObject);
    procedure ONOMBKeyPress(Sender: TObject; var Key: Char);
    procedure ODNIKeyPress(Sender: TObject; var Key: Char);
    procedure PC1Change(Sender: TObject);
    procedure JvDBGrid4CellClick(Column: TColumn);
    procedure JvDBGrid6CellClick(Column: TColumn);
    procedure JvDBGrid2CellClick(Column: TColumn);
  private
    control,gh:boolean;{Controla que no hubiere errores en la carga de datos}
    Funciones:TFuncionesVarias;

    DataSet0,DataSet1,DataSet2,DataSet3,DataSet4,DataSet5,DataSet6,DataSet7,DataSet8:TClientDataSet; //declaro los DataSet
    IdCombos:array of array of string; // para los combobox

    ///// para la impresion de datos segun parametros
    PosH1:Array [0..9] of Double;//Posiciones
    Camp1:Array [0..9] of Integer;//Campos a Tomar en cuenta
    TxtCamp1:Array [0..9] of String;//Textos de los Campos a Tomar en cuenta
    { Private declarations }
  public
    Resultado: string;
    // aca instancio la clase si la clase esta definida en el uses de la ventana
  end;

var
  Con_Cliente: TCon_Cliente;

implementation

uses Unidad, Modulo,Busqueda,AM_VenGenerica, ClaseParcelasVentas;

{$R *.dfm}
procedure TCon_Cliente.FormActivate(Sender: TObject);
begin
if not(gh) then begin
  gh:=true;
  PC1.ActivePage:=PC1.Pages[0];
  PC2.ActivePage:=PC2.Pages[0];
  PC1.Images:=modulo2.ImageList1;
  control:=false;
  ODNI.SetFocus;
end;
end;

procedure TCon_Cliente.Coloca1(nro:byte);
var t,y:integer;
    txt,sex,NroSector:string;
    txtw:widestring;
    NroDni,NroCuif,ValNull,NroAcc,NroPar,nroparcela:variant;
    //nroparcela
    //NroSector,
    ParacVentas:TParcelasVentas;
    Param:TWideStrings;
begin
ValNull:=null;
if nro=1 then begin
  DataSet0.Free;
  DataSet0:=TClientdataSet.Create(nil);
  DataSource0.DataSet:=DataSet0;

  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if RB1.Checked then begin
    NroDni:=null;NroCuif:=null;txt:='';NroAcc:=null;NroPar:=null;sex:='';
  end;
//  if RB2.Checked then begin
//    NroDni:=null;NroCuif:=trim(ODNI.Text);txt:='';NroAcc:=null;NroPar:=null;sex:='';
//  end;
  if RB3.Checked then begin
    NroDni:=null;NroCuif:=null;txt:='';NroAcc:=trim(ODNI.Text);NroPar:=null;sex:='';
  end;
  if RB4.Checked then begin
    NroDni:=null;NroCuif:=trim(ODNI.Text);txt:='';NroAcc:=null;NroPar:=null;sex:=trim(ONOMB.Text);
  end;
  if RB5.Checked then begin
    NroDni:=trim(ODNI.Text);NroCuif:=null;txt:='';NroAcc:=null;NroPar:=null;sex:='';
  end;
  if RB6.Checked then begin
    NroDni:=null;NroCuif:=null;txt:=trim(ONOMB.Text);NroAcc:=null;NroPar:=null;sex:='';
  end;
  if RB7.Checked then begin
    NroDni:=null;NroCuif:=null;txt:='';NroAcc:=null;NroPar:=trim(ODNI.Text);sex:='';
  end;
  if not Funciones.Run_Fn_VistaClientes(NroCuif,txt,NroDni,NroAcc,NroPar,sex,DataSet0,'',0) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
end;
if nro=2 then begin   /// para cargar una grilla
  DataSet1.Free;
  DataSet1:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=DataSet1;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  NroCuif:=D1.Text;
  if not Funciones.Run_Fn_VistaClientesTelefonos(NroCuif,DataSet1,'',0) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
end;
if nro=3 then begin   /// para cargar una grilla
  DataSet2.Free;
  DataSet2:=TClientdataSet.Create(nil);
  DataSource2.DataSet:=DataSet2;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  NroCuif:=D1.Text;NroDni:=null;// NroCuif:=D1.Text;NroDni:=null;
  if not Funciones.Run_Fn_VistaParcelasTitulares(NroCuif,NroDni,DataSet2,'',0) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if DataSet2.IsEmpty then Panel1.Enabled:=false
  else begin
    Panel1.Enabled:=true;
    JvDBGrid2.Columns[0].Width:=70;
    JvDBGrid2.Columns[1].Width:=55;
    JvDBGrid2.Columns[2].Width:=120;
    JvDBGrid2.Columns[3].Width:=75;
    JvDBGrid2.Columns[4].Width:=110;
    JvDBGrid2.Columns[5].Width:=55;
    JvDBGrid2.Columns[6].Width:=75;
    JvDBGrid2.Columns[7].Width:=55;
    JvDBGrid2.Columns[8].Width:=150;
    JvDBGrid2.Columns[9].Width:=200;
  end;
end;
if nro=4 then begin   /// Inhumados
  DataSet3.Free;
  DataSet3:=TClientdataSet.Create(nil);
  DataSource3.DataSet:=DataSet3;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if R1.Checked then begin
    NroCuif:=D3.Text;NroDni:=null;
  end;
  if R2.Checked then begin
    NroCuif:=null;NroDni:=DataSet2.Fields[1].AsString;
  end;
  if not Funciones.Run_Fn_VistaParcelasInhumados(ValNull,NroDni,NroCuif,'',ValNull,'','',DataSet3,'',0) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if not DataSet2.IsEmpty then begin
    for t:=0 to 37 do JvDBGrid3.Columns[t].Width:=70;
  end;
end;
if nro=5 then begin   /// Lista de Ventas Existentes
  DataSet4.Free;
  DataSet4:=TClientdataSet.Create(nil);
  DataSource4.DataSet:=DataSet4;
  ParacVentas:=TParcelasVentas.Create(nil);
  ParacVentas.ConnectionString:=modulo2.Conexion;
  Param:=TWideStrings.Create;
  Param.Add('');
  Param.Add(DataSet2.Fields[1].AsString);
  Param.Add('');
  Param.Add('');
  Param.Add('');
  Param.Add('');
  if not ParacVentas.ListarSP(Param,DataSet4,0) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Param.Free;
  ParacVentas.Free;
end;
if nro=6 then begin   /// Estado Cuent Venta Seleccionada
  DataSet5.Free;
  DataSet5:=TClientdataSet.Create(nil);
  DataSource5.DataSet:=DataSet5;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  NroDni:=DataSet4.Fields[1].AsString;
  if not Funciones.Run_EstadoCuentaVentas(NroDni,DataSet5,'',0) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if not DataSet5.IsEmpty then begin
    JvDBGrid5.Columns[0].Width:=45;
    JvDBGrid5.Columns[1].Width:=50;
    JvDBGrid5.Columns[2].Width:=100;
    JvDBGrid5.Columns[3].Width:=75;
    JvDBGrid5.Columns[4].Width:=55;
    JvDBGrid5.Columns[5].Width:=55;
    JvDBGrid5.Columns[6].Width:=55;
    JvDBGrid5.Columns[7].Width:=55;
    JvDBGrid5.Columns[8].Width:=75;
    JvDBGrid5.Columns[9].Width:=65;
    JvDBGrid5.Columns[10].Width:=45;
    JvDBGrid5.Columns[11].Width:=55;
  end;
end;
if nro=7 then begin   /// Lista de Servicios Existentes
  DataSet6.Free;
  DataSet6:=TClientdataSet.Create(nil);
  DataSource6.DataSet:=DataSet6;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  NroDni:=DataSet2.Fields[1].AsString;
  if not Funciones.Run_Fn_VistaParcelasServicios(null,NroDni,DataSet6,'',0) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
end;
if nro=8 then begin   /// Estado Cuent Servicio Seleccionado
  DataSet7.Free;
  DataSet7:=TClientdataSet.Create(nil);
  DataSource7.DataSet:=DataSet7;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  NroDni:=DataSet6.Fields[1].AsString;
  if not Funciones.Run_EstadoCuentaServicios(NroDni,DataSet7,'',0) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if not DataSet7.IsEmpty then begin
    JvDBGrid7.Columns[0].Width:=45;
    JvDBGrid7.Columns[1].Width:=50;
    JvDBGrid7.Columns[2].Width:=100;
    JvDBGrid7.Columns[3].Width:=75;
    JvDBGrid7.Columns[4].Width:=55;
    JvDBGrid7.Columns[5].Width:=55;
    JvDBGrid7.Columns[6].Width:=55;
    JvDBGrid7.Columns[7].Width:=55;
    JvDBGrid7.Columns[8].Width:=75;
    JvDBGrid7.Columns[9].Width:=65;
    JvDBGrid7.Columns[10].Width:=45;
    JvDBGrid7.Columns[11].Width:=55;
  end;
end;
if nro=9 then begin   /// Estado Cuent Mantenimiento
  DataSet8.Free;
  DataSet8:=TClientdataSet.Create(nil);
  DataSource8.DataSet:=DataSet8;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  NroDni:=DataSet2.Fields[1].AsString;
  if not Funciones.Run_EstadoCuentaMantenimiento(NroDni,DataSet8,'',0) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if not DataSet8.IsEmpty then begin
    JvDBGrid8.Columns[0].Width:=45;
    JvDBGrid8.Columns[1].Width:=50;
    JvDBGrid8.Columns[2].Width:=100;
    JvDBGrid8.Columns[3].Width:=75;
    JvDBGrid8.Columns[4].Width:=55;
    JvDBGrid8.Columns[5].Width:=55;
    JvDBGrid8.Columns[6].Width:=55;
    JvDBGrid8.Columns[7].Width:=55;
    JvDBGrid8.Columns[8].Width:=75;
    JvDBGrid8.Columns[9].Width:=65;
    JvDBGrid8.Columns[10].Width:=45;
    JvDBGrid8.Columns[11].Width:=55;
  end;
end;
end;

procedure TCon_Cliente.RB2Click(Sender: TObject);
begin
if RB2.Checked or RB3.Checked or RB5.Checked or RB7.Checked then begin
  ONOMB.Visible:=false;
  ODNI.Visible:=true;
  ODNI.Text:='00000000';
  if RB2.Checked then LB1.Caption:='Ingrese el CUIT / CUIL:';
  if RB3.Checked then LB1.Caption:='Ingrese N° Acción:';
  if RB5.Checked then LB1.Caption:='Ingrese N° DNI:';
  if RB7.Checked then LB1.Caption:='Ingrese N° Parcela:';
  ODNI.SetFocus;
end;
if RB4.Checked or RB6.Checked then begin
  ONOMB.Visible:=true;
  ODNI.Visible:=false;
  ONOMB.Clear;
  if RB4.Checked then LB1.Caption:='Ingrese el Sector:';
  if RB6.Checked then LB1.Caption:='Ingrese el Apellido:';
  ONOMB.SetFocus;
end;
Busca.Enabled:=true;
end;

procedure TCon_Cliente.RB1Click(Sender: TObject);
begin
ONOMB.Visible:=FALSE;
ODNI.Visible:=FALSE;
LB1.Caption:='';
Busca.Enabled:=true;
Busca.SetFocus;
end;

procedure TCon_Cliente.ImpPDFClick(Sender: TObject);
begin
  rv.DefaultDest := rdFile;
  rv.DoNativeOutput := False;
  rv.RenderObject := modulo2.RvRenderPDF1;
  // esto es si queremos guardar el pdf en la maquina
  if FileExists(modulo2.path_todo + '\Imagenes\ConsultaCliente') then
      deletefile(modulo2.path_todo + '\Imagenes\ConsultaCliente');

  rv.OutputFileName := modulo2.path_todo + '\Imagenes\ConsultaCliente.pdf';
  rv.SystemSetups := rv.SystemSetups - [ssAllowSetup];
  Rv.Execute;
end;

procedure TCon_Cliente.RvPrint(Sender: TObject);
var posfx,posfy,final,salto:double;
var t,k,hoja,y:integer;
var tot,total:real;
var txt,val:widestring;
var pso:boolean;


   Function Logo(posx,posy:double;vaf:integer):double;
   var Imagen:TBitMap;
       PathLogo:string;
   begin
    {El Logo}
   with Rv do begin
     {Pegamos el Logo de la Empresa para el reporte}
     Imagen := TBitMap.Create;
     PathLogo:=modulo2.path_todo + '\Imagenes\'+modulo2.INI1.ReadString('Imagenes','ArchivoImagen3','');
     if FileExists(PathLogo) then begin
       Image1.Picture.LoadFromFile(PathLogo);
       Imagen.Assign(image1.Picture.Graphic);
       BaseReport.PrintBitmapRect(posx+8,posy+10,posx+35,posy+15,Imagen);
     end;

     //Marca de Agua
     PathLogo:=modulo2.path_todo + '\Imagenes\'+modulo2.INI1.ReadString('Imagenes','ArchivoImagen1','');
     if FileExists(PathLogo) then begin
       Image1.Picture.LoadFromFile(PathLogo);
       Imagen.Assign(image1.Picture.Graphic);
       BaseReport.PrintBitmapRect(posx+188,posy+10,posx+215,posy+25,Imagen);
     end;
     Imagen.Free;
    {Colocamos el título}
     BaseReport.Rectangle(posx+3,posy+5,posx+265,posy+27);
     BaseReport.SetFont('Garamond',12);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+30,posy+9,modulo2.INI1.ReadString('Titulo3 Facturas','Titulo0',''));
     BaseReport.SetFont('Garamond',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+230,posy+10,'Pág.: ' + inttostr(vaf));
     BaseReport.PrintXY(posx+230,posy+14,'Fec. Imp.' + strcut(Fec_System(),10));
     BaseReport.PrintXY(posx+230,posy+18,'Usu. Imp.' + inttostr(modulo2.nro_usu));

     BaseReport.SetFont('Garamond',12);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+40,posy+14,modulo2.INI1.ReadString('Titulo3 Facturas','Titulo1',''));
     BaseReport.PrintXY(posx+40,posy+17,modulo2.INI1.ReadString('Titulo3 Facturas','Titulo2',''));
     BaseReport.PrintXY(posx+40,posy+20,modulo2.INI1.ReadString('Titulo3 Facturas','Titulo3',''));
     BaseReport.PrintXY(posx+40,posy+23,modulo2.INI1.ReadString('Titulo3 Facturas','Titulo4',''));

     BaseReport.SetFont('Arial Black',12);
     BaseReport.RoundRect(posx+60,posy+28,posx+160,posy+33,5,5);
     BaseReport.PrintXY(posx+77,posy+32,'CONSULTAS DE CLIENTES');
     Logo:=posy+25;
   end;
   end;

   /////////  GRILLA de Titulos
  Function GrillaCabecera(posx,posy:double;texto:string):double;
  var t:integer;
  begin
     with Rv do begin
      BaseReport.Rectangle(posx+3,posy,posx+265,posy+5);
      for t:=1 to length(Camp1)-1 do begin
      BaseReport.Rectangle(posx + PosH1[t]-2,posy,posx + PosH1[t]-2,posy+5);
      end;
     end;
      Rv.BaseReport.SetFont('Arial Black',7);
      Rv.BaseReport.FontColor:=clBlack;
      for t:=0 to length(Camp1)-1 do begin
      Rv.BaseReport.PrintXY(posx + PosH1[t],posy+4,TxtCamp1[t]);
      end;
  Result:=posy+5;
  end;

  /// Grilla Detalle
  Function GrillaDetalle(posx,posy:double;texto:string):double;
  var t:integer;
  begin
  Rv.BaseReport.SetFont('Arial',8);
  Rv.BaseReport.FontColor:=clBlack;
  for t:=0 to length(Camp1)-1 do //coloca el signo pesos
  Rv.BaseReport.PrintXY(posx + PosH1[t],posy+4,datasource1.dataset.Fields[Camp1[t]].AsString);
   Result:=posy+4.5;
  end;

  //// Grilla Recuadro
  Function GrillaRecuadro(posx,posy,posy2:double):double;
  var t:integer;
      salto:double;
  begin
  with Rv do begin
    BaseReport.Rectangle(posx+5,posy,posx+265,posy2);
    for t:=1 to length(Camp1)-1 do begin
      BaseReport.Rectangle(posx + PosH1[t]-2,posy,posx + PosH1[t]-2,posy2);
    end;
  Result:=posy2;
  end;
  end;

begin
  try
  {Posicion de Inico de Hoja}
   posfx:=5.5;posfy:=5;
   salto:=4;final:=0;hoja:=1;
   posfy:=Logo(posfx,posfy,hoja)+5;

    Rv.BaseReport.SetFont('Arial',7);
    Rv.BaseReport.FontColor:=clBlack;
    Camp1[0]:=0;Camp1[1]:=1;Camp1[2]:=2;
    Camp1[3]:=3;Camp1[4]:=4;
    Camp1[5]:=5;Camp1[6]:=6;
    Camp1[7]:=7;Camp1[8]:=8;
    Camp1[9]:=9;

    TxtCamp1[0]:='Orden';
    TxtCamp1[1]:='Retención';
    TxtCamp1[2]:='Nombre';
    TxtCamp1[3]:='Periodo';
    TxtCamp1[4]:='Valor Reten.';
    TxtCamp1[5]:='Imp.Pagado';
    TxtCamp1[6]:='Diferencia';
    TxtCamp1[7]:='Deuda';
    TxtCamp1[8]:='Estado';
    TxtCamp1[9]:='Origen';

    PosH1[0]:=4;PosH1[1]:=13;PosH1[2]:=55;PosH1[3]:=99;PosH1[4]:=118;
    PosH1[5]:=137;PosH1[6]:=160;PosH1[7]:=179;PosH1[8]:=199;PosH1[9]:=229;

   // txt:='DataSource1.dataset';
    final:=GrillaCabecera(posfx,posfy+5,txt);

      posfy:=final;pso:=false;

      for y:=1 to datasource1.DataSet.RecordCount do begin
         datasource1.DataSet.RecNo:=y;

        if pso then Rv.BaseReport.Rectangle(posfx,posfy+1,posfx+265,posfy+1)
        else pso:=true;
        posfy:=GrillaDetalle(posfx,posfy,txt);
        if posfy > 200 then begin
          posfy:=GrillaRecuadro(posfx,final,posfy+2);
          posfx:=5.5;posfy:=5;hoja:=hoja+1;
          Rv.BaseReport.NewPage;
          posfy:=Logo(posfx,posfy,hoja);
          final:=GrillaCabecera(posfx,posfy+5,txt);
          posfy:=final;pso:=false;
        end;
      end;
      if pso then posfy:=GrillaRecuadro(posfx,final,posfy+2);
   except
   end;
end;

procedure TCon_Cliente.DBGrid1CellClick(Column: TColumn);
var t:integer;
    txt:string;
begin
for t:=1 to 8 do begin
  txt:='DataSource' + inttostr(t);
  LosDts(FindComponent(txt)).DataSet:=nil;
end;
if not (DataSet0.IsEmpty) then begin
  control:=true;
  PC1.ActivePage:=PC1.Pages[1];
  D1.DataField:='Cuif';
  D2.DataField:='TipoDoc';
  D3.DataField:='NroDni';
  D4.DataField:='FechaNacimiento';
  D5.DataField:='RazonSocial';
  D6.DataField:='Alias';
  D7.DataField:='Cuit';
  D8.DataField:='DetalleSexo';
  D9.DataField:='Religion';
  D10.DataField:='Nacionalidad';
  D11.DataField:='EstadoCivil';
  D12.DataField:='Provincia';
  D13.DataField:='Localidad';
  D14.DataField:='DetalleBarrio';
  D15.DataField:='Domicilio';
  D16.DataField:='CodigoPostal';
  D17.DataField:='DetallePostal';
  D18.DataField:='Categoria';
  D19.DataField:='mail';
  D20.DataField:='Observaciones';
  Coloca1(2);
  Coloca1(3);
  Coloca1(4);
end;
end;

procedure TCon_Cliente.BuscaClick(Sender: TObject);
var p,u:integer;
begin
Coloca1(1);
Barra1.Panels[1].Text:='Registos encontrados: ' + inttostr(DataSet0.RecordCount);
imppdf.Enabled:=true;
imprime.Enabled:=true;
end;

procedure TCon_Cliente.JvBitBtn3Click(Sender: TObject);
begin
Close;
end;

procedure TCon_Cliente.ExportaClick(Sender: TObject);
var texto:widestring;
var txt:string;
var t,y:integer;
begin
todos.Clear;
texto:='';
for t:=0 to DataSet0.FieldCount-1 do begin
  texto:=texto + DataSet0.Fields[t].FieldName + chr(9);
end;
todos.Lines.Add(texto);
for y:=1 to DataSet0.RecordCount do begin
  DataSet0.RecNo:=y;
  texto:='';
  for t:=0 to DataSet0.FieldCount-1 do begin
    texto:=texto + DataSet0.Fields[t].AsString + chr(9);
  end;
  todos.Lines.Add(texto);
end;
todos.SelectAll;
todos.CopyToClipboard;
messagedlgpos('Se Copiaron los Datos, listo para pegarlos a Excel',mtConfirmation,[mbok],0,screen.Width div 3,screen.Height div 3);
end;

procedure TCon_Cliente.ImprimeClick(Sender: TObject);
var gf:integer;
begin
//gf:=messagedlg('Desea Imprimir la consulta de Clientes?',mtWarning,[mbok,mbCancel],0);
//if gf = 1 then Rv.Execute;
end;

procedure TCon_Cliente.ONOMBKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then busca.SetFocus;

end;

procedure TCon_Cliente.ODNIKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then busca.SetFocus;
end;

procedure TCon_Cliente.PC1Change(Sender: TObject);
begin
if not control then PC1.ActivePage:=PC1.Pages[0]; 
end;

procedure TCon_Cliente.JvDBGrid4CellClick(Column: TColumn);
begin
if not DataSet4.IsEmpty then Coloca1(6);
end;

procedure TCon_Cliente.JvDBGrid6CellClick(Column: TColumn);
begin
if not DataSet6.IsEmpty then Coloca1(8);
end;

procedure TCon_Cliente.JvDBGrid2CellClick(Column: TColumn);
begin
if not DataSet2.IsEmpty then begin
  if R2.Checked then Coloca1(4);
  Coloca1(5);
  Coloca1(7);
  Coloca1(9);
end;
end;

end.

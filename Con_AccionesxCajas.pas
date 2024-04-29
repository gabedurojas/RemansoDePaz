unit Con_AccionesxCajas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, JvExGrids, JvStringGrid, StdCtrls, ExtCtrls, JvgGroupBox,
  Buttons, JvExButtons, JvBitBtn, ComCtrls, ToolWin, ClaseFunciones,ClaseSistemas, DBClient,
  DB, DBGrids, JvExDBGrids, JvDBGrid, RpDefine, RpBase, RpSystem,StrUtils,Unidad,ADODB;

type HackTable = class(TADOTable);
type
  TCons_AccixCajas = class(TForm)
    Barra1: TStatusBar;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    ToolButton2: TToolButton;
    ToolButton5: TToolButton;
    Limpiar: TJvBitBtn;
    ToolButton3: TToolButton;
    JvBitBtn1: TJvBitBtn;
    JvgGroupBox5: TJvgGroupBox;
    Bevel1: TBevel;
    Label15: TLabel;
    Buscar: TJvBitBtn;
    ODNI: TEdit;
    DataSource1: TDataSource;
    todos: TRichEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    RvS: TRvSystem;
    T8: TClientDataSet;
    Image1: TImage;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TJvDBGrid;
    RvS1: TRvSystem;
    IMPRIME: TJvBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure BuscarClick(Sender: TObject);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure LimpiarClick(Sender: TObject);
    procedure ODNIKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure ODNIExit(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure RvSPrint(Sender: TObject);
    procedure IMPRIMEClick(Sender: TObject);
  private
    IdCombos:array of array of string;
    DataSet0,DataSet1,DtCombo:TClientDataSet;
    PosH:Array [0..5] of Double;
    Camp:Array [0..5] of Integer;
    TxtCamp:Array [0..5] of String;
    Funciones:TFuncionesVarias;
    { Private declarations }
  public
    gh:boolean;{ Public declarations }
    elnroaccion,larazonsocial,elsector,laparcela,elnrocaja,lafechacesion,elbarrio,eldomicilio,
    elnrodni,eltelef:STRING;
  end;

var
  Cons_AccixCajas: TCons_AccixCajas;

implementation

uses Modulo;

{$R *.dfm}

procedure TCons_AccixCajas.FormActivate(Sender: TObject);
begin
if not(gh) then begin
  gh:=true;
  PC1.ActivePage:=PC1.Pages[0];
  setlength(IdCombos,1);
  ODNI.SetFocus;
end;
end;

procedure TCons_AccixCajas.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TCons_AccixCajas.Coloca1(nro:byte);
var t:integer;
    NroTalon,NroCompr,CuifCob:variant;
begin
if nro = 1 then begin
//
end;
if nro = 2 then begin
  Dataset0.Free;
  Dataset0:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=Dataset0;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if not Funciones.Listar('SELECT orden,nroaccion,razonsocial,sector,parcela,nrocaja FROM Fn_VistaVentasxCajas ('+ trim(odni.Text)+','+ trim(edit1.Text) +')',Dataset0) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0) ;
  Funciones.Free;
      if Dataset0.RecordCount > 0 then begin
       dbgrid1.Columns[0].Width:=60;
       dbgrid1.Columns[1].Width:=60;
       dbgrid1.Columns[2].Width:=300;
       dbgrid1.Columns[3].Width:=60;
       dbgrid1.Columns[4].Width:=60;
       dbgrid1.Columns[5].Width:=60;
       imprime.enabled:=true;
      end;
end;
end;

procedure TCons_AccixCajas.BuscarClick(Sender: TObject);
begin
Coloca1(2);
//Coloca1(1);
end;

procedure TCons_AccixCajas.JvBitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TCons_AccixCajas.LimpiarClick(Sender: TObject);
begin
DataSource1.DataSet:=nil;
DataSet0.Close;
DataSet1.Close;
IMPRIME.Enabled:=false;

end;

procedure TCons_AccixCajas.ODNIKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  edit1.SetFocus;
end
else begin
  if ( StrScan('0123456789',Key) <> nil ) or
      ( Key = Char(VK_BACK) ) then
   else Key := #0;
end;
end;

procedure TCons_AccixCajas.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  buscar.SetFocus;
end
else begin
  if ( StrScan('0123456789',Key) <> nil ) or
      ( Key = Char(VK_BACK) ) then
   else Key := #0;
end;
end;

procedure TCons_AccixCajas.ODNIExit(Sender: TObject);
begin
  if (trim(ODNI.Text) = '') or (trim(ODNI.Text) = '0') then begin
     messagedlg('ERROR!!... El Numero de Caja es incorrecto',mterror,[mbok],0);
     ODNI.SetFocus;
  end;
end;

procedure TCons_AccixCajas.Edit1Exit(Sender: TObject);
begin
  if (trim(Edit1.Text) = '') or (trim(Edit1.Text) = '0') then begin
     messagedlg('ERROR!!... El Numero de Caja es incorrecto',mterror,[mbok],0);
     Edit1.SetFocus;
  end;
end;

procedure TCons_AccixCajas.RvSPrint(Sender: TObject);
var posfx,posfy,final,salto:double;
var t,y,hoja,nro:integer;
var txt:string;
var pso:boolean;

   Function Logo(posx,posy:double;vaf:integer):double;
   var Imagen1,MarcaAgua:TBitMap;
       PathLogo,PathLogo1:string;
   begin
   with RvS do begin
     Imagen1 := TBitMap.Create;
     PathLogo:=modulo2.path_todo + '\Imagenes\' + modulo2.INI1.ReadString('Resumen Caja','Imagen1','');
     if FileExists(PathLogo) then begin
       Image1.Picture.LoadFromFile(PathLogo);
       Imagen1.Assign(Image1.Picture.Graphic);
       BaseReport.PrintBitmapRect(posx+6,posy+2,posx+30,posy+22,Imagen1);
     end;
     Imagen1.Free;
     BaseReport.Rectangle(posx+2,posy+1,posx+200,posy+23);
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
     Rvs.BaseReport.SetFont('Arial Black',9);
     Rvs.BaseReport.FontColor:=clBlack;
     IF TRIM(ODNI.Text) = TRIM(EDIT1.Text) THEN Rvs.BaseReport.PrintXY(posfx+34,posfy+17,'LISTA DE TITULOS DE LA CAJA Nº: ' + trim(ODNI.Text))
       ELSE Rvs.BaseReport.PrintXY(posfx+34,posfy+17,'LISTA DE TITULOS DE LA CAJA Nº: ' + trim(ODNI.Text) + ' HASTA Nº ' + TRIM(EDIT1.Text));
     Logo:=posy+25;
   end;
   end;

   Function GrillaCabecera(posx,posy:double;texto:string):double;
   var t:integer;
   begin
     with RvS do begin
      BaseReport.Rectangle(posx+2,posy,posx+200,posy+5);
      for t:=1 to length(Camp)-1 do begin
      BaseReport.Rectangle(posx + PosH[t]-2,posy,posx + PosH[t]-2,posy+5);
      end;
     end;
      Rvs.BaseReport.SetFont('Arial Black',7);
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
  Rvs.BaseReport.SetFont('Arial',9);
  Rvs.BaseReport.FontColor:=clBlack;
    for t:=0 to length(Camp)-1 do
     Rvs.BaseReport.PrintXY(posx + PosH[t],posy+4,HackTable(FindComponent(texto)).Fields[Camp[t]].AsString);
    Result:=posy+4;
  end;

  //// Grilla Recuadro
  Function GrillaRecuadro(posx,posy,posy2:double):double;
  var t:integer;
  begin
  with RvS do begin
    BaseReport.Rectangle(posx+2,posy,posx+200,posy2);
    for t:=1 to length(Camp)-1 do begin
      BaseReport.Rectangle(posx + PosH[t]-2,posy,posx + PosH[t]-2,posy2);
    end;
  Result:=posy+4;
  end;
  end;

begin
 try
  posfx:=1.5;
  posfy:=2;
  salto:=4;
  final:=0;
  hoja:=1;
  posfy:=Logo(posfx,posfy,hoja);
  Camp[0]:=0; Camp[1]:=1; Camp[2]:=2;  Camp[3]:=3; Camp[4]:=4; Camp[5]:=5;

  TxtCamp[0]:='Orden';  TxtCamp[1]:='NroTitulo'; TxtCamp[2]:='Titular';  TxtCamp[3]:='sector';
  TxtCamp[4]:='Parcela';  TxtCamp[5]:='NroCaja';

  PosH[0]:=3;   PosH[1]:=13;  PosH[2]:=30;  PosH[3]:=110;  PosH[4]:=130;   PosH[5]:=160;

  T8.Close;
  T8.CloneCursor(Dataset0,false,true);
  txt:='T8';
  final:=GrillaCabecera(posfx,posfy+5,txt);
  posfy:=final;
  pso:=false;
      for y:=1 to HackTable(findcomponent(txt)).RecordCount do begin
        HackTable(FindComponent(txt)).RecNo:=y;
        if pso then Rvs.BaseReport.Rectangle(posfx+2,posfy+1,posfx+200,posfy+1)
        else pso:=true;
        posfy:=GrillaDetalle(posfx,posfy,txt);
        if posfy > 250 then begin
          posfy:=GrillaRecuadro(posfx,final,posfy+2);
          posfx:=1.5;
          posfy:=2;
          hoja:=hoja+1;
          RvS.BaseReport.NewPage;
          posfy:=Logo(posfx,posfy,hoja);  // llamamos al encabezado
          final:=GrillaCabecera(posfx,posfy+5,txt);
          posfy:=final;pso:=false;
        end;
      end;
 except
 end;
end;

procedure TCons_AccixCajas.IMPRIMEClick(Sender: TObject);
begin
rvs.Execute;
end;

end.

unit Anula_Talon;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, ExtCtrls, ComCtrls, DBGrids, DB, ADODB, JvExGrids,
  JvStringGrid, Mask, DBCtrls, JvExComCtrls, JvProgressBar, StrUtils,
  JvExButtons, JvBitBtn, Buttons, ToolWin, Unidad, DBClient, WSDLIntf,
  ClaseFunciones, ClaseComprobantesEntrega,ClaseComprobantesTalonarios,
  RpDefine, RpBase, RpSystem;

type THackStringGrid = class(TStringGrid);
type
  TAnula_Talonario = class(TForm)
    Barra1: TStatusBar;
    DataSource1: TDataSource;
    PC1: TPageControl;
    TabSheet4: TTabSheet;
    Grupo2: TGroupBox;
    Agrega2: TJvBitBtn;
    Borra2: TJvBitBtn;
    Label2: TLabel;
    TOT1: TEdit;
    Label22: TLabel;
    TOT2: TEdit;
    PC2: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet5: TTabSheet;
    grilla3: TJvStringGrid;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    grilla2: TJvStringGrid;
    Proceso: TJvProgressBar;
    todos: TRichEdit;
    BuscarTalon: TJvBitBtn;
    RvS: TRvSystem;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    GUARDA: TJvBitBtn;
    ToolButton1: TToolButton;
    Limpiar: TJvBitBtn;
    ToolButton3: TToolButton;
    JvBitBtn1: TJvBitBtn;
    ToolButton2: TToolButton;
    Label3: TLabel;
    FECHA: TMaskEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure Borra2Click(Sender: TObject);
    procedure grilla2Click(Sender: TObject);
    procedure RecreaGrilla3();
    procedure GUARDAClick(Sender: TObject);
    procedure ODNIKeyPress(Sender: TObject; var Key: Char);
    procedure LimpiarClick(Sender: TObject);
    procedure LimpiarVentana(nro:byte);
    procedure BuscarTalonClick(Sender: TObject);
    procedure PC1Change(Sender: TObject);
  private
    { Private declarations }
    IdCombos:array of array of string;
    DataSet0,DataSet1,DataSet2,DtCombo:TClientDataSet;

    Funciones:TFuncionesVarias;

    CorreccionImpr:double;

    FechaActual,tiporec,ptovta:string;
    TiposComprobantes:Unidad.TablaXML;
  public
    gh:boolean;
    ComprobantesTalonarios:TComprobantesTalonarios;
    { Public declarations }
  end;

var
  Anula_Talonario: TAnula_Talonario;

implementation

uses modulo, Bus_Talon;

{$R *.dfm}

procedure TAnula_Talonario.FormActivate(Sender: TObject);
begin
 if not(gh) then begin
  gh:=true;
  setlength(IdCombos,2);
  CorreccionImpr:=0;
  FechaActual:=LeftStr(Fec_System(),10);
  PC1.ActivePage:=PC1.Pages[0];
  PC2.ActivePage:=PC2.Pages[0];
  grilla2.Cells[0,0]:='Orden';
  grilla2.Cells[1,0]:='Identificador';
  grilla2.Cells[2,0]:='N° Talonario';
  grilla2.Cells[3,0]:='Tipo Talonario';
  grilla2.Cells[4,0]:='Punto Venta';
  grilla2.Cells[5,0]:='N° Inicio';
  grilla2.Cells[6,0]:='Cantidad';
  grilla2.Cells[7,0]:='N° Tipo';
  grilla2.Cells[8,0]:='MDF';

  grilla3.Cells[0,0]:='Orden';
  grilla3.Cells[1,0]:='Identificador';
  grilla3.Cells[2,0]:='N° Talonario';
  grilla3.Cells[3,0]:='N° Comprobante';
  grilla3.Cells[4,0]:='Estado';
  grilla3.Cells[5,0]:='Procesar';
  grilla3.Cells[6,0]:='N° Tipo';
  FECHA.Text:=FechaActual;
  buscartalon.SetFocus;
 end;
end;

procedure TAnula_Talonario.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TAnula_Talonario.Coloca1(nro:byte);
begin
if nro=0 then begin
//
end;
end;

procedure TAnula_Talonario.JvBitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TAnula_Talonario.Borra2Click(Sender: TObject);
var t,p,gf:integer;
    bt:boolean;
begin
if trim(grilla2.Cells[0,1])<>'' then begin
  gf:=1;t:=0;
  if grilla2.Cells[1,grilla2.Row] = '?' then t:=1
  else gf:=messagedlg('Desea Borrar el N° Talonario Seleccionado??' + chr(13)
       + 'Se eliminará definitivamente de la Base de Datos',mtWarning,[mbok,mbCancel],0);
  if gf = 1 then begin
   if t=0 then begin
      //ComprobantesEntregaConfig:=TComprobantesEntregaConfig.Create(nil);
      //ComprobantesEntregaConfig.ConnectionString:=modulo2.Conexion;
      //bt:=ComprobantesEntregaConfig.Borrar(grilla2.Cells[2,grilla2.Row]);
      //ComprobantesEntregaConfig.Free;
   end;
   t:=grilla2.Row;
   if (t >= 1) and (grilla2.RowCount > 2) then begin
     THackStringGrid(grilla2).DeleteRow(t);
   end
   else begin
     for t:=0 to grilla2.ColCount-1 do grilla2.Cells[t,1]:='';
   end;
  end;
  RecreaGrilla3();
  Borra2.Enabled:=false;
end;
end;

procedure TAnula_Talonario.grilla2Click(Sender: TObject);
begin
Borra2.Enabled:=true;

end;

procedure TAnula_Talonario.RecreaGrilla3();
var t,r,y,s:integer;
begin
//GUARDA.Enabled:=false;
 for t:=0 to grilla3.ColCount-1 do
  for r:=1 to grilla3.RowCount-1 do grilla3.Cells[t,r]:='';
 grilla3.RowCount:=2;
 if trim(grilla2.Cells[2,1]) <> '' then begin
  r:=1;
  for t:=1 to grilla2.RowCount-1 do begin
   for y:=1 to strtoint(trim(grilla2.Cells[6,t])) do begin
    grilla3.RowCount:=r+1;
    grilla3.Cells[0,r]:=StrFill(inttostr(r),5,'0','');
    grilla3.Cells[1,r]:=grilla2.Cells[1,t];
    grilla3.Cells[2,r]:=grilla2.Cells[2,t];
    s:=strtoint(grilla2.Cells[5,t]) + y -1;
    grilla3.Cells[3,r]:=StrFill(grilla2.Cells[4,t],3,'0','') + '-' + StrFill(inttostr(s),7,'0','');
    grilla3.Cells[6,r]:=grilla2.Cells[7,t];
    r:=r+1;
   end;
  end;
  TOT1.Text:=inttostr(grilla2.RowCount-1);
  TOT2.Text:=inttostr(r-1);
 end;
end;

procedure TAnula_Talonario.GUARDAClick(Sender: TObject);
var gf,t:integer;
    ElId1:string;
    TodoOk1:boolean;
    txtw:widestring;
begin
 gf:=messagedlg('Desea Anular los Talonarios y Comprobantes?',mtWarning,[mbok,mbCancel],0);
  if gf = 1 then begin
   For t:=1 to grilla2.RowCount-1 do begin
    ComprobantesTalonarios:=TComprobantesTalonarios.Create(nil);
    ComprobantesTalonarios.ConnectionString:=modulo2.Conexion;
    txtw:='UPDATE ComprobantesTalonarios SET IdTipoComprobante = 9 '
    + ' WHERE (NroTalonario =' + grilla2.Cells[2,t] + ') and (IdTipoComprobante = ' + grilla2.Cells[7,t] +') and (PuntoVenta= '+ grilla2.Cells[4,t] +')';
    TodoOk1:=ComprobantesTalonarios.ListarSinResp(txtw);
    ComprobantesTalonarios.Free;
    if TodoOk1 then begin
      messagedlg('Se ha Anulado este Talonario con Exito',mtConfirmation,[mbok],0);
      LimpiarVentana(1);
    end
    else begin
      messagedlg('Error al Anular este Talonario. Consulte con un Administrador',mtError,[mbok],0);
   end;
  end;
 end;
end;


procedure TAnula_Talonario.ODNIKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
end
else begin
  if ( StrScan('0123456789',Key) <> nil ) or  ( Key = Char(VK_BACK) ) then
   else Key := #0;
end;
end;

procedure TAnula_Talonario.LimpiarClick(Sender: TObject);
begin
LimpiarVentana(1);
end;

procedure TAnula_Talonario.LimpiarVentana(nro:byte);
var t,r:integer;
begin
 if Nro =1 then begin
  for t:=0 to grilla3.ColCount-1 do
    for r:=1 to grilla3.RowCount-1 do grilla3.Cells[t,r]:='';
  grilla3.RowCount:=2;
  for t:=0 to grilla2.ColCount-1 do
    for r:=1 to grilla2.RowCount-1 do grilla2.Cells[t,r]:='';
  grilla2.RowCount:=2;
  tot1.Text:='0000';
  tot2.Text:='00000';
  GUARDA.Enabled:=false;
 end;
end;

procedure TAnula_Talonario.BuscarTalonClick(Sender: TObject);
var Busca_Talonario: TBusca_Talonario;
    t,r:integer;

  function busca(NroTalon:string):boolean;
    var p:integer;
  begin
    Result:=true;
    if grilla2.Cells[0,1] <> '' then begin
      for p:=1 to grilla2.RowCount-1 do
        if (grilla2.Cells[2,p]=NroTalon) then Result:=false;
    end;
  end;

  function busca1(Tipo,Pv,Inicio:string):boolean;
    var p:integer;
  begin
    Result:=true;
    if grilla2.Cells[0,1] <> '' then begin
      for p:=1 to grilla2.RowCount-1 do
        if (grilla2.Cells[3,p]=Tipo)
        and (grilla2.Cells[4,p]=Pv)
        and (grilla2.Cells[5,p]=Inicio) then Result:=false;
    end;
  end;

begin
 Busca_Talonario:= TBusca_Talonario.create(self);
 try
  Busca_Talonario.Nroopcion:=0;
  Busca_Talonario.ShowModal;
  for t:=0 to Busca_Talonario.LISTADO.Items.Count-1 do begin
    if Busca_Talonario.LISTADO.Checked[t] then begin
      if busca(Busca_Talonario.DatosResult[0,t]) and
         busca1(Busca_Talonario.DatosResult[1,t],Busca_Talonario.DatosResult[2,t],Busca_Talonario.DatosResult[3,t]) then begin
        if (grilla2.RowCount > 1) and (trim(grilla2.Cells[0,1])<>'') then begin
          r:=grilla2.RowCount;
          grilla2.RowCount:=grilla2.RowCount+1;
        end
        else r:=1;
        grilla2.Cells[0,r]:=StrFill(inttostr(r),2,'0','');
        grilla2.Cells[1,r]:='?';
        grilla2.Cells[2,r]:=Busca_Talonario.DatosResult[0,t];
        grilla2.Cells[3,r]:=Busca_Talonario.DatosResult[1,t];
        grilla2.Cells[4,r]:=Busca_Talonario.DatosResult[2,t];
        grilla2.Cells[5,r]:=Busca_Talonario.DatosResult[3,t];
        grilla2.Cells[6,r]:=Busca_Talonario.DatosResult[4,t];
        grilla2.Cells[7,r]:=Busca_Talonario.DatosResult[5,t];
        grilla2.Cells[8,r]:='X';
      end
      else messagedlg('ERROR!! No Pueden Existir dos N° Talonarios, Tipo y Punto Venta iguales!!',mterror,[mbok],0);
      if trim(grilla2.Cells[0,1])<>'' then begin
       tiporec:=Busca_Talonario.TPOTALON.Text;
       ptovta:=Busca_Talonario.PV.Text;
      end;
    end;
 end;
  RecreaGrilla3();
 finally
   Busca_Talonario.destroy;
   guarda.Enabled:=true;
   guarda.SetFocus;
 end;
end;

procedure TAnula_Talonario.PC1Change(Sender: TObject);
begin
//  if pc1.TabIndex = 0 then fec.SetFocus;
//  if pc1.TabIndex = 1 then cobrador.SetFocus;
end;

end.




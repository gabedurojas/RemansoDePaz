unit ParcelasEntregaTitulos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, JvExGrids, JvStringGrid, StdCtrls, ExtCtrls, JvgGroupBox,
  Buttons, JvExButtons, JvBitBtn, ComCtrls, ToolWin, ClaseFunciones, DBClient,
  DB, DBGrids, JvExDBGrids, JvDBGrid, Mask,StrUtils;

type
  TParcelaTitulos = class(TForm)
    Barra1: TStatusBar;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    ToolButton2: TToolButton;
    ToolButton5: TToolButton;
    Limpiar: TJvBitBtn;
    ToolButton3: TToolButton;
    JvBitBtn1: TJvBitBtn;
    JvgGroupBox5: TJvgGroupBox;
    C2: TRadioButton;
    Bevel1: TBevel;
    Label15: TLabel;
    Buscar: TJvBitBtn;
    ODNI: TEdit;
    DataSource1: TDataSource;
    todos: TRichEdit;
    GroupBox1: TGroupBox;
    GroupBox3: TGroupBox;
    JvDBGrid2: TJvDBGrid;
    DBGrid1: TJvDBGrid;
    DataSource2: TDataSource;
    IMPRIME: TJvBitBtn;
    Label6: TLabel;
    FECNAC: TMaskEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure BuscarClick(Sender: TObject);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure LimpiarClick(Sender: TObject);
    procedure C2Click(Sender: TObject);
    procedure ODNIExit(Sender: TObject);
    procedure ODNIKeyPress(Sender: TObject; var Key: Char);
    procedure IMPRIMEClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FECNACExit(Sender: TObject);
    procedure FECNACKeyPress(Sender: TObject; var Key: Char);
  private
    IdCombos:array of array of string;
    DataSet0,DtCombo,DataClie:TClientDataSet;

    Funciones:TFuncionesVarias;
    { Private declarations }
  public
    gh:boolean;{ Public declarations }
  end;

var
  ParcelaTitulos: TParcelaTitulos;

implementation

uses Modulo,unidad;

{$R *.dfm}

procedure TParcelaTitulos.FormActivate(Sender: TObject);
begin
if not(gh) then begin
  gh:=true;
  setlength(IdCombos,1);
  fecnac.Text:=LeftStr(Fec_System(),10);
  ODNI.SetFocus;
end;
end;

procedure TParcelaTitulos.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TParcelaTitulos.Coloca1(nro:byte);
var t:integer;
    txtw:widestring;
    NroTalon,NroCompr,CuifCob:variant;
begin
if nro=1 then begin
  DataClie.Free;
  DataClie:=TClientdataSet.Create(nil);
  DataSource2.DataSet:=DataClie;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT top 3 nroaccion,cuif,razonsocial,nivel,plaza,sector,parcela,idcliente,telef,dni,fechacesion,gestor,domicilio,esjubilado,nrocaja '
        +' FROM Fn_VistaParcelasTitulares (null, ' + (DataSet0.Fields[0].AsString) +',0) WHERE TipoAccionista=2 order by nivel';
  if not Funciones.Listar(txtw,DataClie) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
      if not(Dataset0.IsEmpty) then begin
      JvDBGrid2.Columns[0].Width:=80;
      JvDBGrid2.Columns[1].Width:=100;
      JvDBGrid2.Columns[2].Width:=200;
      JvDBGrid2.Columns[3].Width:=80;
      end;
end;
if nro = 2 then begin
  Dataset0.Free;
  Dataset0:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=Dataset0;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if C2.Checked then begin
   txtw:='SELECT NroAccion, NroTitulo, Parcela, NroCaja, Sector, CodigoPlaza, Plaza, Color '
   + ' FROM VParcelas where (nroaccion='+ trim(odni.Text)+' ) ';
     if not Funciones.Listar(txtw,DataSet0) then
       messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    Funciones.Free;
    if not(Dataset0.IsEmpty) then begin
      dbgrid1.Columns[0].Width:=80;
      dbgrid1.Columns[1].Width:=80;
      dbgrid1.Columns[2].Width:=80;
      dbgrid1.Columns[3].Width:=80;
      dbgrid1.Columns[4].Width:=80;
      dbgrid1.Columns[5].Width:=80;
      dbgrid1.Columns[6].Width:=120;
      dbgrid1.Columns[7].Width:=120;
      imprime.Enabled:=true;
    end;
  end;
end;
end;

procedure TParcelaTitulos.BuscarClick(Sender: TObject);
begin
Coloca1(2);
end;

procedure TParcelaTitulos.JvBitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TParcelaTitulos.LimpiarClick(Sender: TObject);
begin
DataSource1.DataSet:=nil;
DataSource2.DataSet:=nil;
//DataSet0.Close;
//DataClie.Close;
IMPRIME.Enabled:=false;
odni.Text:='0000';
fecnac.Text:=LeftStr(Fec_System(),10);
end;

procedure TParcelaTitulos.C2Click(Sender: TObject);
begin
Label15.Visible:=true;
if C2.Checked then begin
  Label15.Caption:='Ingrese N° Accion:';
  ODNI.Visible:=true;
  ODNI.SetFocus;
end;
end;

procedure TParcelaTitulos.ODNIExit(Sender: TObject);
begin
  if trim(ODNI.Text)='' then odni.Text:='0000';
  if trim(ODNI.Text)='0' then odni.Text:='0000';

  if trim(ODNI.Text) = '0000' then begin
    messagedlg('ERROR!!... El N° de Accion no puede tener el valor 0 (Cero)'
    ,mterror,[mbok],0);
    ODNI.SetFocus;
  end ;
end;

procedure TParcelaTitulos.ODNIKeyPress(Sender: TObject; var Key: Char);
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

procedure TParcelaTitulos.IMPRIMEClick(Sender: TObject);
var gf,t:integer;
    m:boolean;
    txt:string;
begin
  gf:=messagedlgpos('Desea Confirmar La entrega de este Titulo',mtWarning,[
             mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
  if gf = 1 then begin
     Funciones:=TFuncionesVarias.Create(nil);
     Funciones.ConnectionString:=modulo2.Conexion;
      txt:='exec ActualizarParcelasTitulo '+ trim(odni.Text) + ',' + chr(39) + trim(fecnac.Text) + chr(39);
    if not Funciones.ListarSinResp(txt) then
         messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
    else begin
      messagedlg('Datos Guardados Correctamente', mtConfirmation,[mbok],0);
      limpiar.Click;
    end;
  end
  else begin
       messagedlg('Ud. ha cancelado la Operacion de Entrega de Titulo', mtWarning,[mbok],0);
  end;
end;

procedure TParcelaTitulos.DBGrid1CellClick(Column: TColumn);
begin
  if not (DataSet0.IsEmpty) then begin
        Coloca1(1);
        fecnac.SetFocus;
  end;
end;

procedure TParcelaTitulos.FECNACExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(FECNAC.Text));
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  FECNAC.SetFocus;
end;
end;

procedure TParcelaTitulos.FECNACKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  imprime.SetFocus;
end;
end;

end.

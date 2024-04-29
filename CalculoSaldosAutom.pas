unit CalculoSaldosAutom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  DBClient,
  Dialogs, StdCtrls, Buttons, JvExButtons, JvBitBtn, DB, Grids, DBGrids,ADODB,ClaseFunciones;

type
  TCalAutomSaldos = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Busca: TJvBitBtn;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure BuscaClick(Sender: TObject);
  private
     gh:boolean;
     DtCombo:TClientDataSet;
     Funciones:TFuncionesVarias;
    { Private declarations }
  public
   periodo,tit:string;
    { Public declarations }
  end;

var
  CalAutomSaldos: TCalAutomSaldos;

implementation

uses Modulo;

{$R *.dfm}

procedure TCalAutomSaldos.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TCalAutomSaldos.FormActivate(Sender: TObject);
begin
if not(gh) then begin
  gh:=true;
  coloca1(1);
end;
end;

procedure TCalAutomSaldos.Coloca1(nro:byte);
var   txtw:widestring;
begin
  if nro=1 then  begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=DtCombo;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:=' exec RecreaMovimientosxAccion ' + tit + ','+ periodo;
    if not Funciones.Listar(txtw,DtCombo)  then
          messagedlg('ERROR al realizar Transac-SQL. Consulte con  Administrador',mtError,[mbok],0);
  Funciones.Free;
  end;
end;

procedure TCalAutomSaldos.BuscaClick(Sender: TObject);
begin
close;
end;

end.

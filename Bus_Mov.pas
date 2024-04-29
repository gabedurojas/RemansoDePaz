unit Bus_Mov;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,DBClient, StdCtrls, DBCtrls, Grids, DBGrids, ComCtrls, StrUtils,
  DB, Mask, ADODB, Buttons, ExtCtrls,
  WSDLIntf, Unidad, JvExGrids, JvStringGrid, JvExDBGrids, JvDBGrid,
  JvExButtons, JvBitBtn, ToolWin;


  //Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  //Dialogs, StdCtrls, Mask,DBClient,Unidad;

type
  TBUSCA_COD = class(TForm)
    Label3: TLabel;
    Button1: TButton;
    OS: TComboBox;
    procedure Coloca1(nro:byte);
    procedure Button1Click(Sender: TObject);
    procedure OSKeyPress(Sender: TObject; var Key: Char);
    procedure OSExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    la_os,movi:string;{ Public declarations }
    DataSet,DtCombo:TClientDataSet; //declaro el DAtaset de los Combobox
    DSGral:TClientDataSet;//declaro el DAtaset de la grilla
    IdCombos:array of array of string;
  end;

var
  BUSCA_COD: TBUSCA_COD;

implementation

uses Modulo, ClaseTiposObjetos;

{$R *.dfm}
procedure TBUSCA_COD.Coloca1(nro:byte);
var t:integer;
    TiposObjetos:TTiposObjetos;
begin
if nro=1 then begin
  OS.Clear;
    DtCombo.Free;
    Dtcombo:=TClientDataSet.Create(nil);
    TiposObjetos:=TTiposObjetos.Create(nil);
    TiposObjetos.ConnectionString:=modulo2.Conexion;
    if TiposObjetos.Listar('SELECT NroTipo,Detalle FROM TiposObjetos WHERE (' +
      'Ventas = 1)',DtCombo) then begin
      SetLength(IdCombos[0],DtCombo.RecordCount);
      for t:=1 to DtCombo.RecordCount  do begin
        DtCombo.RecNo:=t;
        OS.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
        IdCombos[0,t-1]:=DtCombo.Fields[0].AsString;
      end;
    end
    else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    TiposObjetos.Free;
  end;
  OS.ItemIndex:=0;
end;

procedure TBUSCA_COD.Button1Click(Sender: TObject);
begin
la_os:=IdCombos[0,os.ItemIndex];
movi:=trim(os.Text);
if la_os <> '' then close;
//if la_os = '' then la_os:=el_codigo(1);
//if la_os <> '' then close;
end;

procedure TBUSCA_COD.OSKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then Button1.SetFocus;
end;

procedure TBUSCA_COD.OSExit(Sender: TObject);
begin
if OS.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Movimiento Ingresado!!',mterror,[mbok],0);
  OS.SetFocus;
end;
end;

procedure TBUSCA_COD.FormActivate(Sender: TObject);
begin
setlength(IdCombos,1);
Coloca1(1);
end;

end.

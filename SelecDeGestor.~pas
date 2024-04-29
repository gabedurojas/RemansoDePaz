unit SelecDeGestor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,ClaseFunciones,ClaseParcelas, Buttons, JvExButtons,
  JvBitBtn,DBClient;

type
  TSelGestor = class(TForm)
    Label19: TLabel;
    COBRADOR: TComboBox;
    Label1: TLabel;
    sale: TJvBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure saleClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure COBRADORExit(Sender: TObject);
    procedure COBRADORKeyPress(Sender: TObject; var Key: Char);
  private
      IdCombos:array of array of string;
    { Private declarations }
  public
      accion,elcobrador:string;
      Dtcombo,DataSetC:TClientDataSet;
      gh:boolean;
      Funciones:TFuncionesVarias;
      ParcelasUpdate:TParcelas;
      Parcelas:TParcelas;
    { Public declarations }
  end;

var
  SelGestor: TSelGestor;

implementation

uses Modulo;

{$R *.dfm}

procedure TSelGestor.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TSelGestor.FormActivate(Sender: TObject);
begin
if not(gh) then begin
  gh:=true;
  setlength(IdCombos,1);
  Coloca1(0);
  cobrador.SetFocus;
end;
end;

procedure TSelGestor.Coloca1(nro:byte);
var t,y,r,s:integer;
    NroDni,ValNull:variant;
    txtw:widestring;
begin
if nro=0 then begin
  COBRADOR.Clear;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT distinct Nombre,cuif FROM VLosCobradores ORDER BY Nombre ';
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
end;

procedure TSelGestor.saleClick(Sender: TObject);
begin
close;
end;

procedure TSelGestor.FormClose(Sender: TObject; var Action: TCloseAction);
var txtw:widestring;
    m:boolean;
begin
      Parcelas:=TParcelas.Create(nil);
      Parcelas.ConnectionString:=modulo2.Conexion;
      txtw:='UPDATE Parcelas SET CuifCobrador=' + IdCombos[0,COBRADOR.ItemIndex]  + ' WHERE (NroAccion=' + accion + ')';
      m:=Parcelas.ListarSinResp(txtw);
      parcelas.Free;
end;

procedure TSelGestor.COBRADORExit(Sender: TObject);
begin
if COBRADOR.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Cobrador Ingresado!!',mterror,[mbok],0);
  COBRADOR.SetFocus;
end;
end;

procedure TSelGestor.COBRADORKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  sale.SetFocus;
end;
end;

end.

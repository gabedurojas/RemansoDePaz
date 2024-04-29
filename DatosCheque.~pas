unit DatosCheque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,ClaseFunciones, ClaseSistemas,DBClient;

type
  TChequeDato = class(TForm)
    GroupBox9: TGroupBox;
    LB1: TLabel;
    LB3: TLabel;
    LB9: TLabel;
    E2: TEdit;
    banco: TComboBox;
    Button1: TButton;
    E1: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure E1KeyPress(Sender: TObject; var Key: Char);
    procedure E2KeyPress(Sender: TObject; var Key: Char);
    procedure bancoExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure bancoKeyPress(Sender: TObject; var Key: Char);
  private
    Funciones:TFuncionesVarias;
    Sistemas:TSistemas;
    DtCombo:TClientDataSet;
    { Private declarations }
  public
      cheque,bank,datobanco:string;
      gh:boolean;{ Public declarations }
  end;

var
  ChequeDato: TChequeDato;

implementation

{$R *.dfm}

uses Modulo;

procedure TChequeDato.FormActivate(Sender: TObject);
begin
if not(gh) then begin
  gh:=true;
  coloca1(1);
  E1.SetFocus;
end;
end;

procedure TChequeDato.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TChequeDato.Coloca1(nro:byte);
var t:integer;
begin
if nro=1 then begin
    banco.Clear;
    DtCombo.Free;
    DtCombo:=TClientdataSet.Create(nil);
    Funciones:=TFuncionesVarias.Create(nil);
    Funciones.ConnectionString:=modulo2.Conexion;
    if not Funciones.Listar('SELECT Nombre FROM EntidadesBancarias WHERE  (NroEntidad > 0) ORDER BY Nombre',DtCombo) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
    else begin
      for t:=1 to DtCombo.RecordCount  do begin
        DtCombo.RecNo:=t;
        banco.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
      end;
    end;
    Funciones.Free;
    banco.ItemIndex:=0;
end;
end;

procedure TChequeDato.E1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  E2.SetFocus;
//end
//else begin
//  if ( StrScan('ABCDEFGHIJKLMNÑOPQRSTUVWXYZ',Key) <> nil ) or
//      ( Key = Char(VK_BACK) ) then
//   else Key := #0;
end;
end;

procedure TChequeDato.E2KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  banco.SetFocus;
end
else begin
  if ( StrScan('0123456789',Key) <> nil ) or
      ( Key = Char(VK_BACK) ) then
   else Key := #0;
end;
end;

procedure TChequeDato.bancoExit(Sender: TObject);
begin
if banco.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Banco Ingresado!!',mterror,[mbok],0);
  banco.SetFocus;
end;
end;

procedure TChequeDato.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_ESCAPE then Close;
end;

procedure TChequeDato.Button1Click(Sender: TObject);
begin
close;
end;

procedure TChequeDato.bancoKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  button1.SetFocus;
end;
end;

end.

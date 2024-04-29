unit Anula_Generica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Mask;

type
  TAnula_General = class(TForm)
    Barra1: TStatusBar;
    GroupBox2: TGroupBox;
    MOTIVO: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
  elcobrador:string;
    { Public declarations }
  end;

var
  Anula_General: TAnula_General;

implementation


{$R *.dfm}

procedure TAnula_General.FormActivate(Sender: TObject);
begin
Barra1.SimpleText:='Cant. Caracteres: ' + inttostr(MOTIVO.MaxLength);
MOTIVO.SetFocus;
barra1.Panels[0].Text:='Maximo de caracteres permitidos 125';
end;

procedure TAnula_General.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_ESCAPE then Close;
end;

end.

unit Bus_Aniversarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask,DB, ADODB;

type
  TBus_Aniv = class(TForm)
    Label3: TLabel;
    Button1: TButton;
    OS: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure OSKeyPress(Sender: TObject; var Key: Char);
    procedure OSExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    gh:boolean;
    { Private declarations }
  public
    la_os:string;{ Public declarations }
  end;

var
  Bus_Aniv: TBus_Aniv;

implementation

uses Modulo, Unidad;

{$R *.dfm}

procedure TBus_Aniv.FormActivate(Sender: TObject);
begin
if gh then begin
  gh:=true;
  os.SetFocus;
end;
end;

procedure TBus_Aniv.FormCreate(Sender: TObject);
begin
gh:=true;
end;

procedure TBus_Aniv.Button1Click(Sender: TObject);
begin
  close;
   if os.ItemIndex=0 then la_os:='1'
   else la_os:= '0';
end;

procedure TBus_Aniv.OSKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then Button1.SetFocus;
end;

procedure TBus_Aniv.OSExit(Sender: TObject);
begin
if OS.ItemIndex < 0 then begin
  messagedlg('EL Tipo de Aniversario es Errone0!!',mterror,[mbok],0);
  OS.SetFocus;
end;
end;



end.

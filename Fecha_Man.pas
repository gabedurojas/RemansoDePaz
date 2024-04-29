unit Fecha_Man;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask;

type
  TFECHA_FAC = class(TForm)
    OFECRESU: TMaskEdit;
    Label3: TLabel;
    Button1: TButton;
    procedure OFECRESUExit(Sender: TObject);
    procedure OFECRESUKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FECHA_FAC: TFECHA_FAC;

implementation

{$R *.dfm}

procedure TFECHA_FAC.OFECRESUExit(Sender: TObject);
var fec:Tdatetime;
begin
try
  fec:=strtodate(trim(OFECRESU.Text));
except
  messagedlgpos('La fecha es Erronea!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  OFECRESU.SetFocus;
end;
end;

procedure TFECHA_FAC.OFECRESUKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then Button1.SetFocus;
end;

procedure TFECHA_FAC.Button1Click(Sender: TObject);
begin
close;
end;

end.

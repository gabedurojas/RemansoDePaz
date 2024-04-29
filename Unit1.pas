unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExButtons, JvBitBtn, ComCtrls, ToolWin, StdCtrls, Buttons,
  ExtCtrls;

type
  TFactuMasiva = class(TForm)
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    JvBitBtn1: TJvBitBtn;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    Label2: TLabel;
    Image3: TImage;
    Image4: TImage;
    Label5: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    Label7: TLabel;
    PERIODO: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    COBRADOR: TComboBox;
    TPOOBJ: TComboBox;
    procedure JvBitBtn1Click(Sender: TObject);
    procedure Coloca1(nro:byte);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FactuMasiva: TFactuMasiva;

implementation

{$R *.dfm}

uses Modulo;

procedure TFactuMasiva.JvBitBtn1Click(Sender: TObject);
begin
close;
end;

end.

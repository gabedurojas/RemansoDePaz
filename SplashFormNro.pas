unit SplashFormNro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, LMDControl, LMDBaseControl, LMDBaseGraphicControl,
  LMDGraphicControl, LMDBaseMeter, LMDCustomProgressFill, LMDProgressFill,
  Gauges, StdCtrls, JvExControls, JvgDigits;

type
  TSplashConNro = class(TForm)
    ProgressBar1: TProgressBar;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
  private

    { Private declarations }
  public
    valor:string;
    { Public declarations }
  end;

var
  SplashConNro: TSplashConNro;

implementation

{$R *.dfm}

end.

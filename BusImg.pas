unit BusImg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, JvGradientCaption;

type
  TBuscaImagen = class(TForm)
    Barra1: TStatusBar;
    GroupBox1: TGroupBox;
    IMGEVE: TImage;
    JvGradientCaption1: TJvGradientCaption;
    Timer1: TTimer;
    Progreso: TProgressBar;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure CargarArchivoFtp();
  private
    { Private declarations }
  public
    Vr1,Vr2,Vr3:string;
    EsFtp:boolean;{ Public declarations }
  end;

var
  BuscaImagen: TBuscaImagen;

implementation

uses Menu,unidad;

//uses Menu, Unidad;

{$R *.dfm}

procedure TBuscaImagen.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #27 then Close;
end;

procedure TBuscaImagen.FormActivate(Sender: TObject);
begin
{Barra1.Panels[0].Text:=Vr1;
if EsFtp then begin
  try
    Barra1.Panels[1].Text:='Obteniendo Archivo de FTP';
    modulo2.SetearFTP(true);
    Progreso.Position:=0;
    Progreso.Max:=modulo2.TamanioArchivoFTP(Vr1,'Eventos/' + Vr3);
    Timer1.Enabled:=true;
    if modulo2.ExtraerArchivoFTP(Vr1,modulo2.path_todo + '\Tmp\' + Vr1,'Eventos/' + Vr3) then begin
      Progreso.Position:=Progreso.Max;
      Timer1.Enabled:=false;  }
      CargarArchivoFtp();
{    end;
  except
  end;
end
else IMGEVE.Picture.LoadFromFile(Vr1);   }
end;

procedure TBuscaImagen.Timer1Timer(Sender: TObject);
begin
//Progreso.Position:=modulo2.PositionFTP;
Self.Update;
end;

procedure TBuscaImagen.CargarArchivoFtp();
begin
//IMGEVE.Picture.LoadFromFile(Vr1);
IMGEVE.Picture.LoadFromFile(Vr1);
end;
end.

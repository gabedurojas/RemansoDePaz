unit AM_Captura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvAVICapture, ExtCtrls, tscap32_rt ,ClipBrd, Menus,
  tsLogBox, jpeg, LMDCustomButton, LMDButton, Buttons, JvExButtons,
  JvBitBtn;

type
  TAM_CaptImg = class(TForm)
    btnCapture: TButton;
    CONECTAR:TJvBitBtn;
    FOTO:TJvBitBtn;
    tsCap321: TtsCap32;
    Image1: TImage;
    DIRECTORIO: TEdit;
    ARCH: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure btnCaptureClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure CONECTARClick(Sender: TObject);
    procedure FOTOClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AM_CaptImg: TAM_CaptImg;

implementation

uses Modulo;

{$R *.dfm}

procedure TAM_CaptImg.btnCaptureClick(Sender: TObject);
var Path:string;
    gj:integer;
begin
Path:=trim(DIRECTORIO.Text) + '\' + trim(ARCH.Text) + '.JPG';
if FileExists(Path) then begin
  gj:=messagedlgpos('Ya Existe un Artículo con mismo nombre' + chr(13) + 'Desea Sobreescribirlo?'
      ,mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3)
end
else gj:=1;
if gj = 1 then begin
  Image1.Picture.SaveToFile(Path);
  messagedlgpos('Imagen Guardada Satisfactoriamente!!'
      ,mtWarning,[mbok],0,screen.Width div 3,screen.Height div 3)
end;
end;

procedure TAM_CaptImg.FormActivate(Sender: TObject);
var PathFoto:string;
begin
PathFoto:=modulo2.path_todo + modulo2.INI1.ReadString('Fotos','Directorio','');
DIRECTORIO.Text:=PathFoto ;
end;

procedure TAM_CaptImg.CONECTARClick(Sender: TObject);
begin
tscap321.Connected := Not tscap321.Connected;
end;

procedure TAM_CaptImg.FOTOClick(Sender: TObject);
var PathArchivo:string;
    Bmp:TBitMap;
    jpg:TJpegImage;
begin
PathArchivo:=Modulo2.path_todo + '\Tmp\Foto.bmp';
tscap321.SaveAsBMP := PathArchivo;
Jpg:=TJpegImage.Create;
Bmp:=TBitMap.Create;
Bmp.Width:=352*2;
Bmp.Height:=288*2;

Image1.Picture.Bitmap.PixelFormat:=pf32bit;
Image1.Picture.LoadFromFile(PathArchivo);
Image1.Picture.Bitmap.PixelFormat:=pf32bit;
//DeleteFile(PathArchivo);
Bmp.Canvas.StretchDraw(bmp.Canvas.ClipRect,Image1.Picture.Graphic);
Jpg.PixelFormat:=jf24Bit;
Jpg.Performance:=jpBestQuality;
Jpg.Assign(Bmp);
PathArchivo:=Modulo2.path_todo + '\Tmp\MiFoto.jpg';
Jpg.PixelFormat:=jf24Bit;
Jpg.Performance:=jpBestQuality;

jpg.SaveToFile(PathArchivo);
bmp.Free;
Jpg.Free;

end;

end.

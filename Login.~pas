unit Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask,   ClaseUsuarios, WSDLIntf, ExtCtrls;

type
  TAcceso = class(TForm)
    label1: TLabel;
    Edit2: TMaskEdit;
    edit1: TEdit;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Boton1: TButton;
    Button2: TButton;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    procedure FormActivate(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2Exit(Sender: TObject);
    procedure edit1Change(Sender: TObject);
    procedure edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure Boton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    band,control:boolean;
    cuenta:integer;
    usuario:string;
    User:TUsuarios;{ Public declarations }
  end;

var
  Acceso: TAcceso;

implementation

uses Modulo, Unidad, ClaseSistemas;   //

{$R *.dfm}

procedure TAcceso.FormActivate(Sender: TObject);
begin
User:=TUsuarios.Create(nil);
User.ConnectionString:=modulo2.Conexion1;
band:=false;
boton1.Enabled:=false;
control:=false;
Edit2.SetFocus;
cuenta:=1;
end;

procedure TAcceso.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then edit1.SetFocus;
end;

procedure TAcceso.Edit2Exit(Sender: TObject);
var r:string;
    t:integer;
begin
 if button2.Focused then button2.SetFocus
 else begin
  if User.BuscarPK(trim(edit2.Text)) then begin
    if User.IsEmpty then begin
      messagedlgpos('No exite el Nº de Operador Ingresado',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
      band:=false;
      edit2.SetFocus;
    end
    else begin
      Label4.Caption:=User.C_Nombre_IX1;
      usuario:=User.C_Nombre_IX1;
      if User.C_Intentos < 1 then cuenta:=1
      else cuenta:=User.C_Intentos;
      modulo2.nro_usu:=User.C_CodUsu_PK;
      //modulo2.nvl_usu:=User.C_Nivel;
    end;
  end
  else begin
    messagedlg('ERROR de consulta!!!... Consulte con el Administrador',mterror,[mbok],0);
    control:=true;
  end;
 end;
end;

procedure TAcceso.edit1Change(Sender: TObject);
begin
if edit1.Text='' then begin
 band:=false;boton1.Enabled:=false;
 end
else begin
 band:=true;boton1.Enabled:=true;
end;
end;

procedure TAcceso.edit1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = chr(13)) and band then begin
 boton1.Enabled:=true;
 boton1.SetFocus;
end;
end;

procedure TAcceso.Button2Click(Sender: TObject);
begin
band:=false;
close;
end;

procedure TAcceso.Boton1Click(Sender: TObject);
var clav,clav1:string;
    Sistemas:TSistemas;
    Param:TWideStrings;
begin
 if (cuenta < 3) or (User.C_Intentos > 3) then begin
  if not(User.C_Intentos > 3) then begin
    clav:=inttostr(User.C_Clave);
    Sistemas:=TSistemas.Create(nil);
    Param:=TWideStrings.Create;
    Param.Add(trim(edit2.text));
    Param.Add(trim(edit1.text));
    Sistemas.ConnectionString:=modulo2.Conexion1;
    if Sistemas.Run_TodosLoginSinMod(Param) then begin
      clav1:=Sistemas.Resultado;
      if not(clav1='OK') then begin
       messagedlg(clav1 + chr(13) +chr(13) + '   Acceso DENEGADO!!!',mterror,[mbok],160);
       modulo2.nvl_usu:=-1;
       band:=false;
       cuenta:=cuenta+1;
       edit1.SetFocus;
      end
      else begin
       control:=true;
       modulo2.nro_usu:=User.C_CodUsu_PK;
       modulo2.nom_usu:=User.C_Nombre_IX1;
       modulo2.nvl_usu:=User.C_Nivel;
       close;
      end;
    end
    else begin
      messagedlg('ERROR de consulta!!!... Consulte con el Administrador',mterror,[mbok],0);
      control:=true;
    end;
    Param.Free;
    Sistemas.Free;
  end
  else begin
    cuenta:=User.C_Intentos;
    messagedlgpos('El Nº de Operador ha Caducado su Cuenta'+chr(13)+chr(13)
    +'   Acceso DENEGADO!!!'+chr(13)+'Consulte con el Administrador',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
    close;
  end;
 end;
 //   messagedlgpos('El Nº de Operador ha Caducado su Cuenta'+chr(13)+chr(13)
 //   +'   Acceso DENEGADO!!!'+chr(13)+'Consulte con el Administrador',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
 //   close;
end;

end.

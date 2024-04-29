unit AM_Parcelas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, LMDCustomButton, LMDButton, Grids,
  DBGrids, Mask, ComCtrls, DBClient, StrUtils, ClaseUsuarios,ClaseParcelas, WSDLIntf;

type
  TAMParcela = class(TForm)
    Barra1: TStatusBar;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Edit3: TEdit;
    OAPELLIDO: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Label8: TLabel;
    OINTENTOS: TMaskEdit;
    ONUMOPER: TMaskEdit;
    Label4: TLabel;
    GroupBox2: TGroupBox;
    G1: TDBGrid;
    GroupBox3: TGroupBox;
    Boton1: TLMDButton;
    Boton2: TLMDButton;
    Boton3: TLMDButton;
    DataSource1: TDataSource;
    Label5: TLabel;
    Label6: TLabel;
    DNI: TMaskEdit;
    Label17: TLabel;
    FECBAJ: TMaskEdit;
    FECVEN: TMaskEdit;
    procedure Coloca1(nro:byte);
    procedure FormActivate(Sender: TObject);
    procedure OAPELLIDOExit(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);

  private
   { Private declarations }
  public
    gj:boolean;
    Clv,FecBaja:string;
    Dts,Dts1:TClientDataSet;
    Parcelas:TParcelas;
    param:TWideStrings;{ Public declarations }
  end;

var
  AMParcela: TAMParcela;

implementation

uses Unidad, Modulo, ClaseSistemas;

{$R *.dfm}
procedure TAMParcela.Coloca1(nro:byte);
begin
if nro=1 then begin
  {Incorporando datos de PARCELAS}
  Dts.Free;
  Dts:=TClientDataSet.Create(nil);
  DataSource1.DataSet:=Dts;
  Parcelas:=TParcelas.Create(nil);
  param:=TWideStrings.Create;
  Parcelas.ConnectionString:=modulo2.Conexion;
  Parcelas.ListarSP(param,Dts,0);
  Barra1.SimpleText:='Parcelas Existentes: '+ inttostr(Dts.RecordCount);
  param.Free;
  Parcelas.Free;
end;
end;


procedure TAMParcela.FormActivate(Sender: TObject);
begin
if gj then begin
   gj:=false;
end;
Barra1.SimpleText:='Cargando Datos de las Parcelas';
Coloca1(1);
FECVEN.Clear;
FECBAJ.Clear;
end;

procedure TAMParcela.OAPELLIDOExit(Sender: TObject);
var t:integer;
begin
{if boton3.Focused then boton3.SetFocus
else begin
  if not(Boton2.Enabled) then begin
    if OAPELLIDO.Text = '' then begin
      messagedlgpos('Se debe Ingresar un Nombre de Operador',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
      OAPELLIDO.SetFocus;
    end
    else begin
      Dts1.Free;
      Dts1:=TClientDataSet.Create(nil);
      param:=TWideStrings.Create;
      Usuarios:=TUsuarios.Create(nil);
      Usuarios.ConnectionString:=modulo2.Conexion;
      param.Add('');
      param.Add(trim(OAPELLIDO.Text));
      Usuarios.ListarSP(param,Dts1,0);
      if not Dts1.IsEmpty then begin
        messagedlgpos('Ya exite el Operador',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
        OAPELLIDO.SetFocus;
      end;
      param.Free;
      Usuarios.Free;
   end;
 end;
end;}
end;

procedure TAMParcela.Edit3Exit(Sender: TObject);
begin
if edit2.Text <> edit3.Text then begin
  messagedlgpos('ERROR!!  Las Claves Ingresadas no Coinciden',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  edit2.Clear;edit3.Clear;
  edit2.SetFocus;
end;
end;



end.

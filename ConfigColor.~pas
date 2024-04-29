unit ConfigColor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvxCheckListBox, ExtCtrls, JvExExtCtrls, JvShape,
  StdCtrls, JvgGroupBox, JvDialogs, ADODB, Buttons, JvExButtons, JvBitBtn;

type Hshp = class(TJvShape);
type
  TConfiguraColor = class(TForm)
    JvColorDialog1: TJvColorDialog;
    JvgGroupBox3: TJvgGroupBox;
    SHP0: TJvShape;
    LISTA: TJvxCheckListBox;
    SHP1: TJvShape;
    SHP3: TJvShape;
    SHP2: TJvShape;
    SHP4: TJvShape;
    SHP5: TJvShape;
    SHP6: TJvShape;
    SHP7: TJvShape;
    SHP8: TJvShape;
    GUARDA: TJvBitBtn;
    SALE: TJvBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure LISTAClickCheck(Sender: TObject);
    procedure SALEClick(Sender: TObject);
    procedure GUARDAClick(Sender: TObject);
  private
    DataSet1:TADODataSet;
    Com1:TADOCommand;
    gh:boolean;{ Private declarations }
  public
    Cancelado:boolean;{ Public declarations }
  end;

var
  ConfiguraColor: TConfiguraColor;

implementation

uses Modulo, Unidad;

{$R *.dfm}

procedure TConfiguraColor.FormCreate(Sender: TObject);
begin
gh:=false;
DataSet1:=TADODataSet.Create(nil);
DataSet1.ConnectionString:=modulo2.Conexion;
end;

procedure TConfiguraColor.FormActivate(Sender: TObject);
begin
if not(gh) then begin
  gh:=true;
  Cancelado:=false;
  Coloca1(0);
end;
end;

procedure TConfiguraColor.Coloca1(nro:byte);
var t,Obj:integer;
begin
if nro=0 then begin
  LISTA.Clear;
  DataSet1.CommandText:='SELECT Detalle,Color FROM ColoresGrafico ORDER BY Id ';
  DataSet1.Open;
  for t:=1 to DataSet1.RecordCount do begin
    DataSet1.RecNo:=t;
    LISTA.Items.Append(trim(DataSet1.Fields[0].AsString));
    Hshp(FindComponent('SHP' + IntToStr(t-1))).Brush.Color:=StringToColor(trim(DataSet1.Fields[1].AsString));
  end;
  DataSet1.Close;
end;
end;

procedure TConfiguraColor.LISTAClickCheck(Sender: TObject);
begin
GUARDA.Enabled:=true;
JvColorDialog1.Color:=Hshp(FindComponent('SHP' + IntToStr(LISTA.ItemIndex))).Brush.Color;
JvColorDialog1.Execute;
Hshp(FindComponent('SHP' + IntToStr(LISTA.ItemIndex))).Brush.Color:=JvColorDialog1.Color;
end;

procedure TConfiguraColor.SALEClick(Sender: TObject);
begin
Cancelado:=true;
Close;
end;

procedure TConfiguraColor.GUARDAClick(Sender: TObject);
var gf,r:integer;
    transac:widestring;
begin
gf:=messagedlg('Desea Asignar la Combinación de Colores creada?',mtWarning,[mbok,mbCancel],0);
if gf = 1 then begin
  try
    Com1:=TADOCommand.Create(nil);
    Com1.ConnectionString:=modulo2.Conexion;

    Com1.CommandText:='BEGIN TRANSACTION';
    Com1.Execute;

    for r:=0 to LISTA.Items.Count-1 do begin
      Com1.CommandText:='UPDATE ColoresGrafico SET Color=' + chr(39)
      + ColorToString(Hshp(FindComponent('SHP' + IntToStr(r))).Brush.Color) + chr(39)
      + ' WHERE (Id=' + IntToStr(r+1) + ')';
      Com1.Execute;
    end;
    Com1.CommandText:='COMMIT TRANSACTION';
    Com1.Execute;
    messagedlg('Cambio de Colores realizado Satisfactoriamente!!',mtWarning,[mbok],0);
    Close;
  except
    Com1.CommandText:='ROLLBACK TRANSACTION';
    Com1.Execute;
    messagedlg('Error!! Ocurrió un Error al Guardar los Datos.',mtError,[mbok],0);
  end;
  Com1.Free;
end;
end;

end.

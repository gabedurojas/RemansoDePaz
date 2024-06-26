unit AM_PreciosParcelas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,DBClient, StdCtrls, LMDCustomButton, LMDButton, DBCtrls, Grids,
  DBGrids, ComCtrls, StrUtils, DB, Mask,  ADODB, Buttons, ExtCtrls,
  ClaseSistemas, LMDCustomComponent,WSDLIntf,
  ToolWin, JvExButtons, JvBitBtn, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit ,
  ClaseParcelas,ClaseParcelasPrecios,
  Unidad,
  JvExDBGrids, JvDBGrid,
   ImgList;

type THackStringGrid = class(TStringGrid);
type
  TAM_PREPAR = class(TForm)
    Barra1: TStatusBar;
    grupo1: TGroupBox;
    LB1: TLabel;
    PC1: TPageControl;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    grilla2: TStringGrid;
    IDColor: TEdit;
    Busca: TBitBtn;
    TabSheet1: TTabSheet;
    GBDatos: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    OBSERVA: TEdit;
    Colores: TComboBox;
    FVigencia: TJvDatePickerEdit;
    PPRECIO: TEdit;
    PRECIOL: TEdit;
    Label1: TLabel;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    ToolButton2: TToolButton;
    guardar: TJvBitBtn;
    ToolButton3: TToolButton;
    JvBitBtn3: TJvBitBtn;
    grilla: TStringGrid;
    Label2: TLabel;
    anticipo: TEdit;
    modifica: TJvBitBtn;
    Image1: TImage;
    procedure Coloca1(nro:byte);
    procedure BuscaClick(Sender: TObject);
    procedure Grillas(nro:byte);
    procedure FormActivate(Sender: TObject);
    procedure modificaClick(Sender: TObject);
    procedure FVigenciaKeyPress(Sender: TObject; var Key: Char);
    procedure PPRECIOKeyPress(Sender: TObject; var Key: Char);
    procedure OBSERVAKeyPress(Sender: TObject; var Key: Char);
    procedure ColoresExit(Sender: TObject);
    procedure ColoresKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure PPRECIOExit(Sender: TObject);
    procedure PRECIOLExit(Sender: TObject);
    procedure PRECIOLKeyPress(Sender: TObject; var Key: Char);
    procedure JvBitBtn3Click(Sender: TObject);
    procedure grillaClick(Sender: TObject);
    procedure grillaDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure guardarClick(Sender: TObject);
    PROCEDURE LIMPIA(nro:byte);
  private
    gh:boolean;
    control:boolean;{Controla que no hubiere errores en la carga de datos}
    { Private declarations }
  public
    Resultado: string;
    // Clases definidas en el uses de la ventana
    Sistema:TSistemas;
    ParcelasPreciosUpdate:TParcelasPrecios;
    ParcelasPrecios:TParcelasPrecios;

    DataSet,DataSetD,DtCombo,DataSetH:TClientDataSet; //declaro el DAtaset
    DSGral:TClientDataSet;//declaro el DAtaset de la grilla
    IdCombos:array of array of string;
    TColores:Unidad.TablaXML;

  end;

var
  AM_PREPAR: TAM_PREPAR;

 
implementation

uses Modulo,Busqueda,ClaseTiposColores,ClaseFunciones;

{$R *.dfm}

procedure TAM_PREPAR.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TAM_PREPAR.FormActivate(Sender: TObject);
begin
if not gh then begin
  gh:=true;
  setlength(IdCombos,1);
  Coloca1(0);
  colores.ItemIndex:=0;
  PC1.ActivePage:=PC1.Pages[0];
  fvigencia.Text:=strcut(fec_system(),10);
  grilla2.Cells[0,0]:='Orden';
  Grilla2.Cells[1,0]:='ID';
  grilla2.Cells[2,0]:='ID Color';
  grilla2.Cells[3,0]:='Detalle Color';
  grilla2.Cells[4,0]:='PrecioLista';
  grilla2.Cells[5,0]:='PrecioContado';
  grilla2.Cells[6,0]:='Anticipo';
  grilla2.Cells[7,0]:='Observaciones';
  grilla2.Cells[8,0]:='Activo';

  grilla.Cells[0,0]:='ID';
  grilla.Cells[1,0]:='Selec';
  Grilla.Cells[2,0]:='Detalle Color';
  grilla.Cells[3,0]:='Sector';
  grilla.Cells[4,0]:='PrecioContado';
  grilla.Cells[5,0]:='PrecioLista';
  grilla.Cells[6,0]:='Anticipo';
  grilla.Cells[7,0]:='Vigencia';
  grilla.Cells[8,0]:='Activo';
  grilla.Cells[9,0]:='Observ';
  grilla.Cells[10,0]:='Selec';
  grilla.Cells[11,0]:='IdColor';
  grilla.Cells[12,0]:='IdSector';
  colores.SetFocus;
 end;
end;

procedure TAM_PREPAR.LIMPIA(nro:byte);
begin
  if nro=1 then begin
    fvigencia.Text:=strcut(fec_system(),10);
    pprecio.Text:='0000.00';
    preciol.Text:='0000.00';
    anticipo.Clear;
    observa.Clear;
  end;
end;

procedure TAM_PREPAR.Coloca1(nro:byte);
var t,y:integer;
    txt,sex:string;
    txtw:widestring;
    TiposColores:TTiposColores;
    Param:TWideStrings;
begin
 if nro=0 then begin //Combo COLORES
  COLORES.Clear;
  DtCombo.Free;
  Dtcombo:=TClientDataSet.Create(nil);
  TiposColores:=TTiposColores.Create(nil);
  TiposColores.ConnectionString:=modulo2.Conexion;
  COLORES.Clear;
  if TiposColores.Listar('SELECT TipoColor,Detalle FROM TiposColores ORDER BY Detalle',DtCombo) then begin
   SetLength(IdCombos[0],DtCombo.RecordCount);
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    COLORES.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
    IdCombos[0,t-1]:=DtCombo.Fields[0].AsString;
   end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  TiposColores.Free;
 end;
end;

procedure TAM_PREPAR.Grillas(nro:byte);
var t,y,ncolor:integer;
    txtw:widestring;
    Funciones,FuncionesH:TFuncionesVarias;
begin
if nro=1 then begin   //Fn_VistaLasParcelasPreciosColores
 DataSet.Free;
 dataset:=TClientdataSet.Create(nil);
 Funciones:=TFuncionesVarias.Create(nil);
 Funciones.ConnectionString:=modulo2.Conexion;
 txtw:='SELECT Id,Detalle AS Color,Sector,PrecioContado,PrecioLista,Anticipo,Vigencia,Activo,observaciones,'
 + 'TipoColor,IdSector FROM VParcelasPreciosColores WHERE (TipoColor =' + IdCombos[0,colores.ItemIndex] + ')'
 + ' and (activo=1) ORDER BY Sector';
 if not Funciones.Listar(txtw,dataset) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
 Funciones.Free;
 for t:=0 to grilla.ColCount-1 do
 for y:=1 to grilla.RowCount-1 do grilla.Cells[t,y]:='';
  for t:=1 to dataset.RecordCount  do begin
   dataset.RecNo:=t;
   grilla.RowCount:=t+1;
   grilla.Cells[0,t]:=trim(dataset.Fields[0].AsString);
   //grilla.Cells[1,t]:=trim(dataset.Fields[1].AsString);  imagen
   grilla.Cells[2,t]:=trim(dataset.Fields[1].AsString);
   grilla.Cells[3,t]:=trim(dataset.Fields[2].AsString);
   grilla.Cells[4,t]:=trim(dataset.Fields[3].AsString);
   grilla.Cells[5,t]:=trim(dataset.Fields[4].AsString);
   grilla.Cells[6,t]:=trim(dataset.Fields[5].AsString);
   grilla.Cells[7,t]:=trim(dataset.Fields[6].AsString);
   grilla.Cells[8,t]:=trim(dataset.Fields[7].AsString);
   grilla.Cells[9,t]:=trim(dataset.Fields[8].AsString);
   //grilla.Cells[10,t]:=trim(dataset.Fields[8].AsString);  selec
   grilla.Cells[11,t]:=trim(dataset.Fields[9].AsString);
   grilla.Cells[12,t]:=trim(dataset.Fields[10].AsString);
  end;
end;
if nro=2 then begin
  DataSetH.Free;
  DataSetH:=TClientdataSet.Create(nil);
  FuncionesH:=TFuncionesVarias.Create(nil);
  FuncionesH.ConnectionString:=modulo2.Conexion;
  if not FuncionesH.Run_Fn_VistaParcelasPreciosHistorico(null,trim(COLORES.Text),DataSetH,'',0) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  FuncionesH.Free;
  for t:=0 to grilla2.ColCount-1 do
   for y:=1 to grilla2.RowCount-1 do grilla2.Cells[t,y]:='';
   for t:=1 to DataSetH.RecordCount  do begin
    DataSetH.RecNo:=t;
    grilla2.RowCount:=t+1;
    grilla2.Cells[0,t]:=completa1(inttostr(t),2,'0');
    grilla2.Cells[1,t]:=trim(DataSetH.Fields[0].AsString);
    grilla2.Cells[2,t]:=trim(DataSetH.Fields[1].AsString);
    grilla2.Cells[3,t]:=trim(DataSetH.Fields[2].AsString);
    grilla2.Cells[4,t]:=trim(DataSetH.Fields[3].AsString);
    grilla2.Cells[5,t]:=trim(DataSetH.Fields[4].AsString);
    grilla2.Cells[6,t]:=trim(DataSetH.Fields[5].AsString);
    grilla2.Cells[7,t]:=trim(DataSetH.Fields[6].AsString);
    grilla2.Cells[8,t]:=trim(DataSetH.Fields[7].AsString);
    grilla2.Cells[9,t]:=trim(DataSetH.Fields[8].AsString);
   end;
end;
end;

procedure TAM_PREPAR.BuscaClick(Sender: TObject);
begin
 Grillas(1);
 if (DataSet.RecordCount = 0) then begin
  Barra1.Panels[0].Text:='Sin Datos en Grilla';
  Barra1.Panels[1].Text:='';
 end
 else begin
  Barra1.Panels[1].Text:='Registos encontrados: ' + inttostr(DataSet.RecordCount);
  grillas(2);
 end;
end;

procedure TAM_PREPAR.modificaClick(Sender: TObject);
var APP,ac:boolean;
var gf,t,f:integer;
var txtw:widestring;
begin
 for t:=1 to grilla.RowCount-1 do begin
   if trim(grilla.Cells[10,t]) = 'X' then begin
   grilla.Cells[7,t]:=trim(fvigencia.Text);
   grilla.Cells[4,t]:=trim(pprecio.Text);
   grilla.Cells[5,t]:=trim(preciol.Text);
   grilla.Cells[6,t]:=trim(anticipo.Text);
   grilla.Cells[9,t]:=trim(observa.Text);
   end;
 end;
 guardar.Enabled:=true;
 guardar.SetFocus;
end;

procedure TAM_PREPAR.FVigenciaKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  PPrecio.SetFocus;
end;
end;

procedure TAM_PREPAR.PPRECIOKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  PRECIOL.SetFocus;
end;
end;

procedure TAM_PREPAR.OBSERVAKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  modifica.SetFocus;
end;
end;

procedure TAM_PREPAR.ColoresExit(Sender: TObject);
begin
if Colores.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el COLOR Ingresado!!',mterror,[mbok],0);
  Colores.SetFocus;
end;
end;

procedure TAM_PREPAR.ColoresKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  BUSCA.SetFocus;
end;
end;

procedure TAM_PREPAR.PPRECIOExit(Sender: TObject);
begin
 if trim(PPRECIO.Text)='' then PPRECIO.Text:='00000.00';
 if (trim(PPRECIO.Text) = '00000.00') or (trim(PPRECIO.Text) = '0') then begin
  messagedlg('ERROR!!... El importe de Contado no puede tener el valor 0 (Cero)' ,mterror,[mbok],0);
  PPRECIO.SetFocus;
 end;
end;

procedure TAM_PREPAR.PRECIOLExit(Sender: TObject);
var anti:real;
begin
 if trim(PRECIOL.Text)='' then PRECIOL.Text:='00000.00';
 if (trim(PRECIOL.Text) = '00000.00') or (trim(PRECIOL.Text) = '0') then begin
  messagedlg('ERROR!!... El importe de Lista no puede tener el valor 0 (Cero)' ,mterror,[mbok],0);
  PRECIOL.SetFocus;
 end
 else begin
  anti:=strtofloat(preciol.text) * 0.15;
  anticipo.text:=floattostr(anti);
 end;
end;

procedure TAM_PREPAR.PRECIOLKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  observa.SetFocus;
end;
end;

procedure TAM_PREPAR.JvBitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TAM_PREPAR.grillaClick(Sender: TObject);
begin
fvigencia.Text:=trim(grilla.Cells[7,grilla.Row]);
pprecio.Text:=trim(grilla.Cells[4,grilla.Row]);
preciol.Text:=trim(grilla.Cells[5,grilla.Row]);
anticipo.text:=trim(grilla.Cells[6,grilla.Row]);
observa.text:=trim(grilla.Cells[9,grilla.Row]);
grilla.Cells[10,grilla.Row]:='X';
fvigencia.SetFocus;
end;

procedure TAM_PREPAR.grillaDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var s:string;
begin
 if (ACol =1) and (ARow>0) then begin
  with Sender as TStringGrid do begin
     s:=Cells[10,ARow];
     if s='X' then begin
       Canvas.Draw(Rect.Left, Rect.Top,Image1.Picture.Graphic );
     end;
  end;
 end;
end;

procedure TAM_PREPAR.guardarClick(Sender: TObject);
var APP,ac:boolean;
var gf,t,f:integer;
var txtw:widestring;
begin
 gf:=messagedlgpos('Desea Ingresar los Valores de PRECIOS?',mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
 if gf = 1 then begin
 // primero pongo activo=o
  for t:=1 to grilla.RowCount-1 do begin
   if trim(grilla.Cells[10,t]) = 'X' then begin
    ParcelasPrecios:=TParcelasPrecios.Create(nil);
    ParcelasPrecios.ConnectionString:=modulo2.Conexion;
    txtw:='UPDATE ParcelasPrecios SET activo= 0 WHERE (id=' + trim(grilla.Cells[0,t]) + ')';
    ac:=ParcelasPrecios.ListarSinResp(txtw);
    ParcelasPrecios.Free;
    if ac then begin
       //inserto los nuevos valores
     for f:=1 to grilla.RowCount-1 do begin
       if trim(grilla.Cells[10,f]) = 'X' then begin
        ParcelasPrecios:=TParcelasPrecios.Create(nil);
        ParcelasPrecios.ConnectionString:=modulo2.Conexion;
        parcelasprecios.C_TipoColor:=strtoint(trim(grilla.Cells[11,f]));
        parcelasprecios.C_IdSector:=strtoint(trim(grilla.Cells[12,f]));
        parcelasprecios.C_Vigencia:=trim(trim(grilla.Cells[7,f]));
        parcelasprecios.C_PrecioLista:=trim(trim(grilla.Cells[5,f]));
        parcelasprecios.C_PrecioContado:=trim(trim(grilla.Cells[4,f]));
        parcelasprecios.C_Anticipo:=trim(trim(grilla.Cells[6,f]));
        parcelasprecios.C_Observaciones:=trim(trim(grilla.Cells[9,f]));
        parcelasprecios.C_Activo:=true;
        parcelasprecios.C_Fecha_A:=strcut(fec_system(),10);
        parcelasprecios.C_Usu_A:=modulo2.nro_usu;;
        APP:=ParcelasPrecios.Agrega;
        ParcelasPrecios.Free;
        if APP then begin
          AuditAccesos('Modulo 2','MODIF. PRECIO DE PARCELA CON EXITO- Usu ' + inttostr(modulo2.nro_usu)) ;
          messagedlgpos('Los Nuevos valores de Parcelas se han Guardado Satisfactoriamente!!',mtWarning,[mbok],0,screen.Width div 3,screen.Height div 3);
          grillas(1);
          grillas(2);
          limpia(1);
        end
        else begin
          messagedlgpos('Error!! Ocurri� un Error al Guardar los Nuevos Valores.',mtError,[mbok],0,screen.Width div 3,screen.Height div 3);
        end;
       end;
     end;
    end
    else begin
      //Barra1.SimpleText:='Error al Guardar el telefono del  Cliente';
    end;
   end;
  end;
 end
 else begin
   messagedlg('Ud. ha Cancelado la Opcion...',mtWarning,[mbok],0);
 end;
end;

end.

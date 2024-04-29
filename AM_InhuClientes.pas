unit AM_InhuClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,DBClient, StdCtrls, DBCtrls, Grids, DBGrids, ComCtrls, StrUtils,
  ClaseClientes, DB, Mask, ADODB, Buttons, ExtCtrls,
  WSDLIntf, Unidad, JvExGrids, JvStringGrid, JvExDBGrids, JvDBGrid,
  JvExButtons, JvBitBtn, ToolWin;

type THackStringGrid = class(TStringGrid);
type
  TAM_InhumadoCli = class(TForm)
    Barra1: TStatusBar;
    DataSource1: TDataSource;
    BusDir: TOpenDialog;
    PC1: TPageControl;
    TabSheet4: TTabSheet;
    Label15: TLabel;
    CUIF: TEdit;
    Label4: TLabel;
    APEYNOM: TEdit;
    Label7: TLabel;
    TPODOC: TComboBox;
    Label11: TLabel;
    SEXO: TComboBox;
    Label13: TLabel;
    DNI: TEdit;
    Label6: TLabel;
    FECNAC: TMaskEdit;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    BORRA: TJvBitBtn;
    ToolButton2: TToolButton;
    GUARDA: TJvBitBtn;
    ToolButton3: TToolButton;
    SALIR: TJvBitBtn;
    GroupBox3: TGroupBox;
    C3: TCheckBox;
    C6: TCheckBox;
    procedure Coloca1(nro:byte);
    procedure FormActivate(Sender: TObject);
    procedure APEYNOMExit(Sender: TObject);
    procedure LGCENTESKeyPress(Sender: TObject; var Key: Char);
    procedure TPOOBRAKeyPress(Sender: TObject; var Key: Char);
    procedure TPODOCKeyPress(Sender: TObject; var Key: Char);
    procedure APEYNOMKeyPress(Sender: TObject; var Key: Char);
    procedure FECNACExit(Sender: TObject);
    procedure FECNACKeyPress(Sender: TObject; var Key: Char);
    procedure TPODOCChange(Sender: TObject);
    procedure TPODOCExit(Sender: TObject);
    procedure DNIKeyPress(Sender: TObject; var Key: Char);
    procedure DNIExit(Sender: TObject);
    procedure SEXOKeyPress(Sender: TObject; var Key: Char);
    procedure SEXOExit(Sender: TObject);
    procedure SALEClick(Sender: TObject);
    procedure BORRAClick(Sender: TObject);
    procedure GUARDAClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure FormKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure SALIRClick(Sender: TObject);
  private
    control:boolean;{Controla que no hubiere errores en la carga de datos}
    { Private declarations }
  public
    // aca instancio la clase si la clase esta definida en el uses de la ventana
    Cliente:TClientes;
    //ClientesTelefonos:TClientesTelefonos;

    Resultado,elcuif,ArchivoImg:string;
    pos,TipoCliente:integer;

    DataSet,DtCombo:TClientDataSet; //declaro el DAtaset de los Combobox
    DSGral:TClientDataSet;//declaro el DAtaset de la grilla
    IdCombos:array of array of string;

    TiposDni,TipSexos:Unidad.TablaXML;
  end;

var
  AM_InhumadoCli: TAM_InhumadoCli;

implementation

uses Modulo,Busqueda,AM_VenGenerica,ClaseTiposSexos,
     ClaseSistemas,ClaseTipoDni,ClaseFunciones;

{$R *.dfm}

procedure TAM_InhumadoCli.FormActivate(Sender: TObject);
begin
setlength(IdCombos,11);

PC1.ActivePage:=PC1.Pages[0];
Coloca1(0);
Coloca1(1);

GUARDA.Enabled:=false;
apeynom.SetFocus;
end;

procedure TAM_InhumadoCli.Coloca1(nro:byte);
var t,y:integer;
    txt,sex:string;
    txtw:widestring;
    TipoDni:TTipoDni;
    TiposSexos:TTiposSexos;
    Funciones:TFuncionesVarias;
    Sistema:TSistemas;
    Param:TWideStrings;
    NroDni,NroCuif:variant;
begin
if nro=0 then begin //combotipodni
  TPODOC.Clear;
  TiposDni:=LeeXML('TiposDni','');
  if length(TiposDni) <> 0 then begin
    SetLength(IdCombos[0],High(TiposDni[1]) + 1);
    for t:=0 to High(TiposDni[1])  do begin
      TPODOC.Items.Insert(t,TiposDni[2,t]);
      IdCombos[0,t]:=TiposDni[0,t];
    end;
  end
  else begin
    DtCombo.Free;
    Dtcombo:=TClientDataSet.Create(nil);
    TipoDni:=TTipoDni.Create(nil);
    TipoDni.ConnectionString:=modulo2.Conexion;
    if TipoDni.Listar('SELECT Abreviatura,tipodoc FROM TiposDni '
    + 'where tipodoc>0 ORDER BY tipodoc',DtCombo) then begin
      SetLength(IdCombos[0],DtCombo.RecordCount);
      for t:=1 to DtCombo.RecordCount  do begin
        DtCombo.RecNo:=t;
        TPODOC.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
        IdCombos[0,t-1]:=DtCombo.Fields[1].AsString;
      end;
    end
    else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    TipoDni.Free;
  end;
  TPODOC.ItemIndex:=0;
end;
if nro=1 then begin //combosexo
  Sexo.Clear;
  TipSexos:=LeeXML('TiposSexos','');
  if length(TipSexos) <> 0 then begin
    SetLength(IdCombos[1],High(TipSexos[1]) + 1);
    for t:=0 to High(TipSexos[1])  do begin
      SEXO.Items.Insert(t,TipSexos[1,t]);
      IdCombos[1,t]:=TipSexos[0,t];
    end;
  end
  else begin
    DtCombo.Free;
    Dtcombo:=TClientDataSet.Create(nil);
    TiposSexos:=TTiposSexos.Create(nil);
    TiposSexos.ConnectionString:=modulo2.Conexion;
    Param:=TWideStrings.Create;
    Param.Add('');
    Param.Add('');
    Param.Add('');
    if TiposSexos.ListarSP(Param,DtCombo,0) then begin //'SELECT Detalle,sexo FROM tipossexos ORDER BY Detalle'
      SetLength(IdCombos[1],DtCombo.RecordCount);
      for t:=1 to DtCombo.RecordCount  do begin
        DtCombo.RecNo:=t;
        sexo.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
        IdCombos[1,t-1]:=DtCombo.Fields[0].AsString;
      end;
    end
    else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    Param.Free;
    TiposSexos.Free;
  end;
  sexo.ItemIndex:=0;
end;
end;

procedure TAM_InhumadoCli.APEYNOMExit(Sender: TObject);
begin
if trim(APEYNOM.Text) = '' then begin
  messagedlg('Error!! No hay Nombres Ingresado.',mterror,[mbok],0);
  APEYNOM.SetFocus
end;
end;

procedure TAM_InhumadoCli.LGCENTESKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  if control then begin
    GUARDA.Enabled:=true;
    GUARDA.SetFocus
  end
  else begin
    messagedlg('Hubo Errores en la Carga de Datos!!'
    + chr(13) + 'No se Permite la Confirmación de los Datos',mterror,[mbok],0);
    apeynom.SetFocus;
  end;
end;
end;

procedure TAM_InhumadoCli.TPOOBRAKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  TPODOC.SetFocus;
end;
end;

procedure TAM_InhumadoCli.TPODOCKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  DNI.SetFocus;
end;
end;

procedure TAM_InhumadoCli.APEYNOMKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  tpodoc.SetFocus;
end;
end;

procedure TAM_InhumadoCli.FECNACExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(FECNAC.Text));
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  FECNAC.SetFocus;
end;
end;

procedure TAM_InhumadoCli.FECNACKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  if guarda.Enabled then  guarda.SetFocus;
end;
end;

procedure TAM_InhumadoCli.TPODOCChange(Sender: TObject);
begin
GUARDA.Enabled:=true;
pos:=0;
end;

procedure TAM_InhumadoCli.TPODOCExit(Sender: TObject);
begin
if TPODOC.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Documento Ingresado!!',mterror,[mbok],0);
  TPODOC.SetFocus;
end;
end;

procedure TAM_InhumadoCli.DNIKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  SEXO.SetFocus;
end
else begin
  if ( StrScan('0123456789',Key) <> nil ) or
      ( Key = Char(VK_BACK) ) then
   else Key := #0;
end;
end;

procedure TAM_InhumadoCli.DNIExit(Sender: TObject);
begin
if trim(DNI.Text)='' then dni.Text:='00000000';
if trim(DNI.Text)='0' then dni.Text:='00000000';
if trim(DNI.Text) = '00000000' then begin
  messagedlg('ERROR!!... El N° de DNI no puede tener el valor 0 (Cero)'
  ,mterror,[mbok],0);
  DNI.SetFocus;
end
else begin
 //Coloca1(7);
end;
end;

procedure TAM_InhumadoCli.SEXOKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  fecnac.SetFocus;
end;
end;

procedure TAM_InhumadoCli.SEXOExit(Sender: TObject);
begin
if SEXO.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Sexo Ingresado!!',mterror,[mbok],0);
  SEXO.SetFocus;
end;
end;

procedure TAM_InhumadoCli.SALEClick(Sender: TObject);
begin
Close;
end;

procedure TAM_InhumadoCli.BORRAClick(Sender: TObject);
var p,u:integer;
begin
  Coloca1(0);
  Coloca1(1);
  Coloca1(2);
  cuif.Text:='00000000000';
  APEYNOM.Clear;
  tpodoc.ItemIndex:=0;
  DNI.Text:='00000000';
  sexo.ItemIndex:=0;
  FECNAC.Clear;
  c3.Checked:=false;
  PC1.ActivePage:=PC1.Pages[0];
  salir.Click;
end;

procedure TAM_InhumadoCli.GUARDAClick(Sender: TObject);
var el_dni,ElId:string;
var ac,lafecha,ct:boolean;
var gf,t:integer;
begin
Cliente:=TClientes.Create(nil);
Cliente.ConnectionString:=modulo2.Conexion;
  gf:=messagedlgpos('Desea Agregar los Datos de este Cliente?',mtWarning,[
             mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
  if gf = 1 then begin
      elcuif:=CrearCuim(strtoint(trim(Dni.Text)),IdCombos[1,sexo.ItemIndex]);
      cliente.C_Cuif_PK:=strtoint64(trim(elcuif));
      cliente.C_RazonSocial_IX2:=trim(apeynom.Text);
      cliente.C_Alias:='';
      cliente.C_TipoDoc:=strtoint(IdCombos[0,tpodoc.ItemIndex]);
      cliente.C_NroDni_IX3:=strtoint(trim(Dni.Text));
      cliente.C_Sexo:=IdCombos[1,sexo.ItemIndex];
      cliente.C_Cuit:='';
      cliente.C_NroReligion:=0;
      cliente.C_NroNacionalidad_IX4:=1;
      cliente.C_IdEstado_IX6:=0;
      cliente.C_FechaNacimiento:=trim(fecnac.Text);
      cliente.C_IdProvincia_IX7:=38;
      cliente.C_IdLocalidad_IX8:=113;
      cliente.C_IdBarrio_IX9:=0;
      cliente.C_NroProfesion_IX5:=0;
      cliente.C_Domicilio:='..'; //trim(domi.Text);
      cliente.C_CodigoPostal_IX10:=3600;
      cliente.C_mail:='';
      cliente.C_Observaciones:='';
      cliente.C_EsJubilado:=False;
      cliente.C_IdCategoria_IX11:=5;
      cliente.C_DirFoto:='';
      cliente.C_Usu_A:=modulo2.nro_usu;
      ac:=cliente.Agrega;
      cliente.Free;
      if ac then begin 
        messagedlg('Se ha Guardado el nuevo Cliente como Inhumado con Exito',mtConfirmation,[mbok],0);
        //modulo2.MensajeTxt('Asignando Nuevo C.U.I.F.','El N° de CUIF Asignado es:' + chr(13)
        //+ chr(13) +trim(elcuif),modulo2.path_todo + '\Imagenes\bombillo.bmp');
        borra.Click;
      end
      else begin
        Barra1.SimpleText:='Error al Guardar el nuevo Cliente';
        messagedlg('Error al Guardar el nuevo Cliente. Consulte con un Administrador',mtError,[mbok],0);
      end;
  end
  else begin
   messagedlg('Ud. ha cancelado la Operacion de Carga de Clientes',
     mtWarning,[mbok],0);
  end;
end;

procedure TAM_InhumadoCli.DBGrid1TitleClick(Column: TColumn);
begin
dataset.IndexFieldNames:=column.FieldName;
end;

procedure TAM_InhumadoCli.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_F4 then GUARDA.Click;
if key = VK_F7 then SALIR.Click;
end;

procedure TAM_InhumadoCli.SALIRClick(Sender: TObject);
begin
close;
end;

end.

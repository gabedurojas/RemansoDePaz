unit AM_Proveedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,DBClient, StdCtrls, DBCtrls, Grids, DBGrids, ComCtrls, StrUtils,
  ClaseClientes,ClaseClientesTelefonos, DB, Mask, ADODB, Buttons, ExtCtrls,
  WSDLIntf, Unidad, JvExGrids, JvStringGrid, JvExDBGrids, JvDBGrid,
  JvExButtons, JvBitBtn, ToolWin;

type THackStringGrid = class(TStringGrid);
type
  TAM_Provee = class(TForm)
    Barra1: TStatusBar;
    DataSource1: TDataSource;
    BusDir: TOpenDialog;
    PC1: TPageControl;
    TabSheet3: TTabSheet;
    grupo1: TGroupBox;
    DBGrid1: TJvDBGrid;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    BORRA: TJvBitBtn;
    ToolButton2: TToolButton;
    GUARDA: TJvBitBtn;
    ToolButton3: TToolButton;
    SALIR: TJvBitBtn;
    GroupBox1: TGroupBox;
    Bevel2: TBevel;
    RT: TRadioButton;
    RD: TRadioButton;
    RA: TRadioButton;
    RC: TRadioButton;
    LB1: TLabel;
    ONOMB: TEdit;
    ODNI: TEdit;
    Busca: TJvBitBtn;
    TabSheet4: TTabSheet;
    Label15: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    CUIF: TEdit;
    APEYNOM: TEdit;
    CUIT: TEdit;
    GroupBox3: TGroupBox;
    C3: TCheckBox;
    C4: TCheckBox;
    C6: TCheckBox;
    C5: TCheckBox;
    procedure Coloca1(nro:byte);
    procedure FormActivate(Sender: TObject);
    procedure RDClick(Sender: TObject);
    procedure RAClick(Sender: TObject);
    procedure APEYNOMExit(Sender: TObject);
    procedure LGCENTESKeyPress(Sender: TObject; var Key: Char);
    procedure ONOMBKeyPress(Sender: TObject; var Key: Char);
    procedure ODNIKeyPress(Sender: TObject; var Key: Char);
    procedure APEYNOMKeyPress(Sender: TObject; var Key: Char);
    procedure CUITKeyPress(Sender: TObject; var Key: Char);
    procedure RCClick(Sender: TObject);
    procedure RTClick(Sender: TObject);
    procedure BuscaClick(Sender: TObject);
    procedure SALEClick(Sender: TObject);
    procedure BORRAClick(Sender: TObject);
    procedure GUARDAClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SALIRClick(Sender: TObject);
    procedure CUITExit(Sender: TObject);
  private
    control:boolean;{Controla que no hubiere errores en la carga de datos}
    { Private declarations }
  public
    // aca instancio la clase si la clase esta definida en el uses de la ventana
    Cliente:TClientes;
    ClientesTelefonos:TClientesTelefonos;

    Resultado,elcuif,ArchivoImg:string;
    pos,TipoCliente:integer;

    DataSet,DtCombo:TClientDataSet; //declaro el DAtaset de los Combobox
    DSGral:TClientDataSet;//declaro el DAtaset de la grilla
    IdCombos:array of array of string;

    TiposDni,TipSexos,TipReligion,Nacionalidad,TipEstadoCivil,Prov,
    Loca,Barr,TipoIVA,TiposTelefonos,TPostal,TProfes:Unidad.TablaXML;
    PROCESO1: TADODataSet;
  end;

var
  AM_Provee: TAM_Provee;

implementation

uses Modulo,Busqueda,AM_VenGenerica,ClaseTiposSexos,ClaseProvincias,
     ClaseLocalidades,ClaseBarrios,ClaseSistemas,ClaseClientesCategoria,
     ClaseTiposTelefonos,ClaseCodigoPostal,ClaseTipoDni,ClaseFunciones,
     ClaseTiposReligion,ClaseTiposEstadoCivil,ClasePaises,ClaseTiposIVA,
     AM_Captura, ClaseTiposProfesiones;

{$R *.dfm}

procedure TAM_Provee.FormActivate(Sender: TObject);
begin
 PC1.ActivePage:=PC1.Pages[0];
 PROCESO1:=TADODataSet.Create(nil);
 PROCESO1.ConnectionString:=modulo2.Conexion;
 Coloca1(8);
 GUARDA.Enabled:=false;
 onomb.SetFocus;
end;

procedure TAM_Provee.Coloca1(nro:byte);
var t,y:integer;
    txt,sex:string;
    txtw:widestring;
    TipoDni:TTipoDni;
    TiposSexos:TTiposSexos;
    Provincias:TProvincias;
    Localidades:TLocalidades;
    Barrios:TBarrios;
    ClientesCategoria:TClientesCategoria;
    TipoTelefonos:TTiposTelefonos;
    CodigoPostal:TCodigoPostal;
    Funciones:TFuncionesVarias;
    Sistema:TSistemas;
    TiposReligion:TTiposReligion;
    TiposEstadoCivil:TTiposEstadoCivil;
    TiposProfesiones:TTiposProfesiones;
    Paises:TPaises;
    TiposIVA:TTiposIVA;
    Param:TWideStrings;
    NroDni,NroCuif:variant;
begin
if nro=0 then begin //combotipodni

end;
if nro=1 then begin //combosexo

end;
if nro=2 then begin //comboprovincia

end;
if nro=3 then begin //combolocalidad

end;
if nro=4 then begin //combobarrio

end;
if nro=5 then begin //comboIVA

end;
if nro=6 then begin //combotipostelefonos
end;
if nro=7 then begin

end;
if nro=8 then begin
  PC1.ActivePage:=PC1.Pages[0];
  DataSet.Free;
  Dataset:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=Dataset;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw := 'select * from Fn_VistaProveedores (null,null,null,null)';
  if not Funciones.Listar(txtw,dataSet) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
end;
if nro=9 then begin
  PC1.ActivePage:=PC1.Pages[0];
  DataSet.Free;
  Dataset:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=Dataset;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if RD.Checked then begin
    txtw := 'select * from Fn_VistaProveedores (' + trim(ODNI.Text) +',null,null,null)';
  end;
  if RC.Checked then begin
    txtw := 'select * from Fn_VistaProveedores (null,null,' + trim(ODNI.Text) + ',null)' ;
    //NroDni:=null;txt:='';NroCuif:=trim(ODNI.Text);
  end;
  if RA.Checked then begin
    txtw := 'select * from Fn_VistaProveedores (null,' + chr(39) + trim(ONOMB.Text) + chr(39) +' ,null,null)' ;
   // NroDni:=null;txt:=trim(ONOMB.Text),NroCuif:=null;
  end;
  if not Funciones.Listar(txtw,dataSet) then
  //if not Funciones.Fn_VistaProveedores(NroDni,txt,NroCuif,0,'',DataSet) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
end;
end;

procedure TAM_Provee.BuscaClick(Sender: TObject);
begin
 Coloca1(9);
 if (Datasource1.DataSet.RecordCount = 0) then begin
  Barra1.Panels[0].Text:='Sin Datos en Grilla';
  IF application.MessageBox('PROVEEDOR NO encontrado, !Desea darlo de Alta!?','Advertencia'
    ,mb_OKcancel+mb_IconHAnd) = IdOk then begin
   borra.Click;
   PC1.ActivePage:=PC1.Pages[1];
   pc1.Pages[1].Enabled:=true;
   C3.Checked:=true;
   GUARDA.Enabled:=TRUE;
   if RC.Checked=true then CUIT.Text:=ODNI.Text;
   //if RD.Checked=true then DNI.Text:=ODNI.Text;
   if RA.Checked=true then APEYNOM.Text:=ONOMB.Text;
   apeynom.SetFocus;
  end
  else begin
   PC1.ActivePage:=PC1.Pages[0];
   pc1.Pages[1].Enabled:=false;
   Barra1.Panels[0].Text:='La opcion ALTA fue Cancelada';
   BUSCA.SetFocus;
  end;
 end
 else begin
 Barra1.Panels[1].Text:='Registos encontrados: ' + inttostr(Datasource1.DataSet.RecordCount);
 if rd.Checked then odni.SetFocus
  else busca.SetFocus;
 end;
end;


procedure TAM_Provee.RDClick(Sender: TObject);
begin
ONOMB.Visible:=false;
LB1.Caption:='Ingrese el N° CUIT:';
ODNI.Visible:=true;
ODNI.Text:='00000000';
Busca.Enabled:=true;
busca.Click;
end;

procedure TAM_Provee.RAClick(Sender: TObject);
var     Funciones:TFuncionesVarias;
  txtw:widestring;
begin
  LB1.Caption:='Ingrese Nombre:';
  ONOMB.Visible:=true;
  ODNI.Visible:=false;
  Busca.Enabled:=true;
  ONOMB.SetFocus;
end;

procedure TAM_Provee.APEYNOMExit(Sender: TObject);
begin
if trim(APEYNOM.Text) = '' then begin
  messagedlg('Error!! No hay Nombres Ingresado.',mterror,[mbok],0);
  APEYNOM.SetFocus
end;
end;

procedure TAM_Provee.LGCENTESKeyPress(Sender: TObject; var Key: Char);
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
    ODNI.SetFocus;
  end;
end;
end;

procedure TAM_Provee.ONOMBKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  Busca.SetFocus;
end;
end;

procedure TAM_Provee.ODNIKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  Busca.SetFocus;
end;
end;

procedure TAM_Provee.APEYNOMKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  cuit.SetFocus;
end;
end;

procedure TAM_Provee.CUITKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  guarda.SetFocus;
end
else begin
  if ( StrScan('0123456789',Key) <> nil ) or  ( Key = Char(VK_BACK) ) then
   else Key := #0;
end;
end;

procedure TAM_Provee.RCClick(Sender: TObject);
begin
ONOMB.Visible:=false;
LB1.Caption:='Ingrese el CUIT / CUIL:';
ODNI.Visible:=true;
ODNI.Text:='00000000';
Busca.Enabled:=true;
ODNI.SetFocus;
end;

procedure TAM_Provee.RTClick(Sender: TObject);
begin
ONOMB.Visible:=FALSE;
ODNI.Visible:=FALSE;
LB1.Caption:='';
Busca.Enabled:=true;
Busca.SetFocus;
end;

procedure TAM_Provee.SALEClick(Sender: TObject);
begin
Close;
end;

procedure TAM_Provee.BORRAClick(Sender: TObject);
var p,u:integer;
begin
cuif.Text:='00000000000';
APEYNOM.Clear;
CUIT.Text:='00000000000';

 c3.Checked:=false;
 c4.Checked:=false;
 c6.Checked:=false;

 PC1.ActivePage:=PC1.Pages[0];
 //pc1.Pages[1].Enabled:=false;
 if rA.Checked then onomb.SetFocus
   else BUSCA.SetFocus;
end;

procedure TAM_Provee.GUARDAClick(Sender: TObject);
var el_dni,ElId:string;
var ac,lafecha,ct:boolean;
var gf,t:integer;
begin
 Cliente:=TClientes.Create(nil);
 Cliente.ConnectionString:=modulo2.Conexion;
 if C6.Checked = false then begin
  gf:=messagedlgpos('Desea Agregar los Datos de este Proveedor?',mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
  if gf = 1 then begin
   PROCESO1.Close;
   PROCESO1.CommandText:='exec SPC_ProveedoresInsertar ' + chr(39) + trim(APEYNOM.Text) + chr(39) + ',' + trim(cuit.Text) ;
   PROCESO1.Open;
   if PROCESO1.Fields[0].AsString = 'OK' then begin
    messagedlg('Se ha Guardado el nuevo Proveedor con Exito',mtConfirmation,[mbok],0);
    borra.Click;
   end
   else begin
     messagedlg('Se ha Producido un Error con la carga del nuevo Proveedor',mtWarning,[mbok],0);
   end;
  end
  else begin
   messagedlg('Ud. ha cancelado la Operacion de Carga de Clientes', mtWarning,[mbok],0);
  end;
 end
 else begin
  gf:=messagedlgpos('Desea Modificar los Datos del Proveedor Seleccionado?',mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
  if gf = 1 then begin
   PROCESO1.Close;
   PROCESO1.CommandText:='exec SPC_ProveedoresModificar ' + trim(cuif.Text)
                         + ',' + chr(39) + trim(APEYNOM.Text) + chr(39) + ',' + trim(cuit.Text) ;
   PROCESO1.Open;
   if PROCESO1.Fields[0].AsString = 'OK' then begin
    messagedlg('Se ha Modificado los datos del Cliente con Exito',mtConfirmation,[mbok],0);
    borra.Click;
   end
   else begin
     messagedlg('Se ha Producido un Error al Modificar este Proveedor',mtWarning,[mbok],0);
   end;
  end
  else begin
   messagedlg('Ud. ha cancelado la Operacion de Modificar datos del Cliente',mtWarning,[mbok],0);
  end;
 end;
end;

procedure TAM_Provee.DBGrid1CellClick(Column: TColumn);
begin
 if not (Dataset.IsEmpty) then begin
  PC1.Pages[1].Enabled:=true;
  PC1.ActivePage:=PC1.Pages[1];
  C6.Checked:=true;
  cuif.Text:=trim(dataset.Fields[0].AsString);
  APEYNOM.Text:=AnsiReplaceStr(trim(dataset.Fields[2].Text),chr(33),chr(39));
  cuit.Text:=trim(dataset.Fields[1].AsString);
  C3.Checked:=false;
  apeynom.SetFocus;
  guarda.Enabled:=true;
 end;
end;

procedure TAM_Provee.DBGrid1TitleClick(Column: TColumn);
begin
dataset.IndexFieldNames:=column.FieldName;
end;

procedure TAM_Provee.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_F4 then GUARDA.Click;
if key = VK_ESCAPE	then SALIR.Click;
end;

procedure TAM_Provee.SALIRClick(Sender: TObject);
begin
close;
end;

procedure TAM_Provee.CUITExit(Sender: TObject);
begin
if trim(CUIT.Text)='' then CUIT.Text:='00000000000';
if trim(CUIT.Text)='0' then CUIT.Text:='0000000000';

if trim(CUIT.Text) = '0000000000' then begin
  messagedlg('ERROR!!... El N° de CUIT no puede tener el valor 0 (Cero)' ,mterror,[mbok],0);
  CUIT.SetFocus;
end
end;

end.

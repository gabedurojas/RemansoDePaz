unit AM_ParcelasCuentas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,DBClient, StdCtrls, DBCtrls, Grids, DBGrids, ComCtrls, StrUtils,
  ClaseParcelasCuentas,DB, Mask, ADODB, Buttons, ExtCtrls,
  WSDLIntf, Unidad, JvExGrids, JvStringGrid, JvExDBGrids, JvDBGrid,
  ToolWin, JvExButtons, JvBitBtn;

type THackStringGrid = class(TStringGrid);
type
  TAM_PCuentas = class(TForm)
    Barra1: TStatusBar;
    DataSource1: TDataSource;
    PC1: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    grupo1: TGroupBox;
    LB1: TLabel;
    Bevel2: TBevel;
    ODNI: TEdit;
    ONOMB: TEdit;
    RA: TRadioButton;
    RD: TRadioButton;
    RT: TRadioButton;
    RC: TRadioButton;
    Busca: TJvBitBtn;
    DBGrid1: TJvDBGrid;
    Label15: TLabel;
    CUIF: TEdit;
    Label4: TLabel;
    APEYNOM: TEdit;
    Label7: TLabel;
    TPODOC: TComboBox;
    Label13: TLabel;
    DNI: TEdit;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    BORRA: TJvBitBtn;
    ToolButton2: TToolButton;
    GUARDA: TJvBitBtn;
    ToolButton3: TToolButton;
    JvBitBtn3: TJvBitBtn;
    GroupBox3: TGroupBox;
    C3: TCheckBox;
    C6: TCheckBox;
    Label18: TLabel;
    mante: TEdit;
    Label1: TLabel;
    servicio: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    venta: TEdit;
    Label5: TLabel;
    ID: TEdit;
    Button5: TJvBitBtn;
    procedure Coloca1(nro:byte);
    procedure FormActivate(Sender: TObject);
    procedure RDClick(Sender: TObject);
    procedure RAClick(Sender: TObject);
    procedure LGCENTESKeyPress(Sender: TObject; var Key: Char);
    procedure ONOMBKeyPress(Sender: TObject; var Key: Char);
    procedure ODNIKeyPress(Sender: TObject; var Key: Char);
    procedure TPOOBRAKeyPress(Sender: TObject; var Key: Char);
    procedure TPODOCKeyPress(Sender: TObject; var Key: Char);
    procedure TPODOCChange(Sender: TObject);
    procedure TPODOCExit(Sender: TObject);
    procedure DNIKeyPress(Sender: TObject; var Key: Char);
    procedure DNIExit(Sender: TObject);
    procedure RCClick(Sender: TObject);
    procedure RTClick(Sender: TObject);
    procedure BuscaClick(Sender: TObject);
    procedure SALEClick(Sender: TObject);
    procedure BORRAClick(Sender: TObject);
    procedure GUARDAClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure JvBitBtn3Click(Sender: TObject);
    procedure ventaKeyPress(Sender: TObject; var Key: Char);
    procedure servicioKeyPress(Sender: TObject; var Key: Char);
    procedure manteKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button5Click(Sender: TObject);
  private
    control:boolean;{Controla que no hubiere errores en la carga de datos}
    { Private declarations }
  public
    // aca instancio la clase si la clase esta definida en el uses de la ventana
    ParcelasCuentas:TParcelasCuentas;
    Resultado,elcuif,ArchivoImg:string;
    pos,TipoCliente:integer;

    DataSet,DtCombo:TClientDataSet; //declaro el DAtaset de los Combobox
    DSGral:TClientDataSet;//declaro el DAtaset de la grilla
    IdCombos:array of array of string;

    TiposAccio:Unidad.TablaXML;

  end;

var
  AM_PCuentas: TAM_PCuentas;

implementation

uses Modulo,Busqueda,AM_VenGenerica,
     ClaseSistemas,ClaseTiposAccionistas,ClaseFunciones;

{$R *.dfm}

procedure TAM_PCuentas.FormActivate(Sender: TObject);
begin
setlength(IdCombos,1);
PC1.ActivePage:=PC1.Pages[0];
Coloca1(0);
GUARDA.Enabled:=false;
ODNI.SetFocus;
end;

procedure TAM_PCuentas.Coloca1(nro:byte);
var t,y:integer;
    txt,sex:string;
    txtw:widestring;
    TiposAccionistas:TTiposAccionistas;
    Funciones:TFuncionesVarias;
    Sistema:TSistemas;
    Param:TWideStrings;
    NroDni,NroCuif,nroid:variant;

begin
if nro=0 then begin //combotipodni
  TPODOC.Clear;
  TiposAccio:=LeeXML('TiposAccionistas','');
  if length(TiposAccio) <> 0 then begin
    SetLength(IdCombos[0],High(TiposAccio[1]) + 1);
    for t:=0 to High(TiposAccio[1])  do begin
      TPODOC.Items.Insert(t,TiposAccio[1,t]);
      IdCombos[0,t]:=TiposAccio[0,t];
    end;
  end
  else begin
    DtCombo.Free;
    Dtcombo:=TClientDataSet.Create(nil);
    TiposAccionistas:=TTiposAccionistas.Create(nil);
    TiposAccionistas.ConnectionString:=modulo2.Conexion;
    if TiposAccionistas.Listar('SELECT NroTipoAcc,Detalle FROM TiposAccionistas ORDER BY Detalle',DtCombo) then begin
      SetLength(IdCombos[0],DtCombo.RecordCount);
      for t:=1 to DtCombo.RecordCount  do begin
        DtCombo.RecNo:=t;
        TPODOC.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
        IdCombos[0,t-1]:=DtCombo.Fields[1].AsString;
      end;
    end
    else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    TiposAccionistas.Free;
  end;
  TPODOC.ItemIndex:=0;
end;
if nro=1 then begin
  PC1.ActivePage:=PC1.Pages[0];
  DataSet.Free;
  Dataset:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=Dataset;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if RD.Checked then begin
    nroid:=null;NroDni:=trim(ODNI.Text);NroCuif:=null;txt:='';
  end;
  if RT.Checked then begin
    nroid:=trim(ODNI.Text);NroDni:=null;NroCuif:=null;txt:='';
  end;
  if RC.Checked then begin
    nroid:=null;NroDni:=null;NroCuif:=null;txt:='';
  end;
  if RA.Checked then begin
    nroid:=null;NroDni:=null;NroCuif:=null;txt:=trim(ONOMB.Text);
  end;
  if not Funciones.Run_Fn_VistaLasParcelasCuentas(nroid,NroDni,NroCuif,txt,DataSet,'',0) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    Funciones.Free;
end;
if nro= 10 then begin  // combo religion

end;
end;

procedure TAM_PCuentas.BuscaClick(Sender: TObject);
begin
Coloca1(1);
if (Datasource1.DataSet.RecordCount = 0) then begin
  Barra1.Panels[0].Text:='Sin Datos en Grilla';
  IF application.MessageBox('CUENTA NO encontrada, !Desea darlo de Alta!?','Advertencia'
    ,mb_OKcancel+mb_IconHAnd) = IdOk
   then begin
     borra.Click;
     C3.Checked:=true;
     GUARDA.Enabled:=TRUE;
     PC1.ActivePage:=PC1.Pages[1];
     Button5.Click;
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
end;
end;


procedure TAM_PCuentas.RDClick(Sender: TObject);
begin
ONOMB.Visible:=false;
LB1.Caption:='Ingrese el N° DNI:';
ODNI.Visible:=true;
ODNI.Text:='00000000';
Busca.Enabled:=true;
ODNI.SetFocus;
end;

procedure TAM_PCuentas.RAClick(Sender: TObject);
begin
LB1.Caption:='Ingrese Apellido:';
ONOMB.Visible:=true;
ODNI.Visible:=false;
Busca.Enabled:=true;
ONOMB.SetFocus;
end;

procedure TAM_PCuentas.LGCENTESKeyPress(Sender: TObject; var Key: Char);
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

procedure TAM_PCuentas.ONOMBKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  Busca.SetFocus;
end;
end;

procedure TAM_PCuentas.ODNIKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  Busca.SetFocus;
end;
end;

procedure TAM_PCuentas.TPOOBRAKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  TPODOC.SetFocus;
end;
end;

procedure TAM_PCuentas.TPODOCKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  DNI.SetFocus;
end;
end;

procedure TAM_PCuentas.TPODOCChange(Sender: TObject);
begin
GUARDA.Enabled:=true;
pos:=0;
end;

procedure TAM_PCuentas.TPODOCExit(Sender: TObject);
begin
if TPODOC.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Documento Ingresado!!',mterror,[mbok],0);
  TPODOC.SetFocus;
end;
end;

procedure TAM_PCuentas.DNIKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
    mante.SetFocus;
end
else begin
  if ( StrScan('0123456789.',Key) <> nil ) or
      ( Key = Char(VK_BACK) ) then
   else Key := #0;
end;
end;

procedure TAM_PCuentas.DNIExit(Sender: TObject);
begin
if trim(DNI.Text)='' then dni.Text:='00000000';
if trim(DNI.Text)='0' then dni.Text:='00000000';

if trim(DNI.Text) = '00000000' then begin
  messagedlg('ERROR!!... El N° de DNI no puede tener el valor 0 (Cero)'
  ,mterror,[mbok],0);
  DNI.SetFocus;
end
else begin
 Coloca1(7);
end;
end;

procedure TAM_PCuentas.RCClick(Sender: TObject);
begin
ONOMB.Visible:=false;
LB1.Caption:='Se Buscan Todas las CUENTAS';
ODNI.Visible:=false;
Busca.Enabled:=true;
busca.SetFocus;
end;

procedure TAM_PCuentas.RTClick(Sender: TObject);
begin
ONOMB.Visible:=false;
LB1.Caption:='Ingrese el N° ID:';
ODNI.Visible:=true;
ODNI.Text:='00000000';
Busca.Enabled:=true;
ODNI.SetFocus;
end;

procedure TAM_PCuentas.SALEClick(Sender: TObject);
begin
Close;
end;

procedure TAM_PCuentas.BORRAClick(Sender: TObject);
var p,u:integer;
begin
Coloca1(0);
{Coloca1(1);
Coloca1(2);
Coloca1(3);
Coloca1(4);
Coloca1(5);
Coloca1(6);
Coloca1(10);
Coloca1(11);
Coloca1(12); }
id.Clear;
cuif.Text:='00000000000';
DNI.Text:='00000000';
APEYNOM.Clear;
tpodoc.ItemIndex:=0;
mante.Text:='00';
servicio.Text:='00';
venta.Text:='00';
 c3.Checked:=false;
 c6.Checked:=false;
 PC1.ActivePage:=PC1.Pages[0];
 BUSCA.SetFocus;
end;


procedure TAM_PCuentas.GUARDAClick(Sender: TObject);
var el_dni,ElId,elcuim:string;
var ac,lafecha,ct:boolean;
var gf,t:integer;
begin
ParcelasCuentas:=TParcelasCuentas.Create(nil);
ParcelasCuentas.ConnectionString:=modulo2.Conexion;
if C6.Checked = false then begin
  gf:=messagedlgpos('Desea Agregar los Datos de este Cliente?',mtWarning,[
             mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
  if gf = 1 then begin
      elcuif:=trim(cuif.Text);
      ParcelasCuentas.C_CuentaCliente_IX1:=strtoint(dni.Text);
      ParcelasCuentas.C_CuifCliente_IX2:=strtoint64(trim(elcuif));
      ParcelasCuentas.C_NroTipoAcc:=strtoint(IdCombos[0,tpodoc.ItemIndex]);
      ParcelasCuentas.C_PorcentajeMant:=strtoint(mante.Text);
      ParcelasCuentas.C_PorcentajeServ:=strtoint(servicio.Text);
      ParcelasCuentas.C_PorcentajeVentas:=strtoint(venta.Text);
      ac:=ParcelasCuentas.Agrega;
      ParcelasCuentas.Free;
      if ac then begin   /////////// Telefonos Clientes
        messagedlg('Se ha Guardado la nueva CUENTA con Exito',mtConfirmation,[mbok],0);
        borra.Click;
      end
      else begin
        Barra1.SimpleText:='Error al Guardar el nuevo Cliente';
        messagedlg('Error al Guardar la nueva CUENTA. Consulte con un Administrador',mtError,[mbok],0);
      end;
  end
  else begin
    gf:=messagedlgpos('Desea Modificar los Datos de la CUENTA Seleccionado?',mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
    if gf = 1 then begin
      ParcelasCuentas.C_Id:=strtoint(id.Text);
      ParcelasCuentas.C_CuentaCliente_IX1:=strtoint(dni.Text);
      ParcelasCuentas.C_CuifCliente_IX2:=strtoint64(trim(cuif.Text));
      ParcelasCuentas.C_NroTipoAcc:=strtoint(IdCombos[0,tpodoc.ItemIndex]);
      ParcelasCuentas.C_PorcentajeMant:=strtoint(mante.Text);
      ParcelasCuentas.C_PorcentajeServ:=strtoint(servicio.Text);
      ParcelasCuentas.C_PorcentajeVentas:=strtoint(venta.Text);
      ac:=ParcelasCuentas.Modificar;
      ParcelasCuentas.Free;
        if ac then begin
          messagedlg('Se ha Modificado los datos de la Cuenta con Exito',mtConfirmation,[mbok],0);
          borra.Click;
        end
        else begin
          messagedlg('Error al Modificar la Cuenta. Consulte con un Administrador',mtError,[mbok],0);
        end;
    end;
  end;
end;
end;

procedure TAM_PCuentas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//if key = VK_F4 then GUARDA.Click;
//if key = VK_F11 then LIMPIAR.Click;
//if key = VK_ESCAPE	then SALIR.Click ;
end;

procedure TAM_PCuentas.JvBitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TAM_PCuentas.ventaKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  if GUARDA.Enabled then GUARDA.SetFocus;
end
else begin
  if ( StrScan('0123456789.',Key) <> nil ) or
      ( Key = Char(VK_BACK) ) then
   else Key := #0;
end;
end;

procedure TAM_PCuentas.servicioKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  venta.SetFocus;
end
else begin
  if ( StrScan('0123456789.',Key) <> nil ) or
      ( Key = Char(VK_BACK) ) then
   else Key := #0;
end;
end;

procedure TAM_PCuentas.manteKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  servicio.SetFocus;
end
else begin
  if ( StrScan('0123456789.',Key) <> nil ) or
      ( Key = Char(VK_BACK) ) then
   else Key := #0;
end;
end;

procedure TAM_PCuentas.DBGrid1CellClick(Column: TColumn);
begin
if not (Dataset.IsEmpty) then begin
  PC1.Pages[1].Enabled:=true;
  PC1.ActivePage:=PC1.Pages[1];
  C6.Checked:=true;
  id.Text:=trim(dataset.Fields[0].AsString);
  cuif.Text:=trim(dataset.Fields[1].AsString);
  APEYNOM.Text:=AnsiReplaceStr(trim(dataset.Fields[4].Text),chr(33),chr(39));
  tpodoc.ItemIndex:=tpodoc.Items.IndexOf(trim(dataset.Fields[5].AsString)) ;
  dni.Text:=trim(dataset.Fields[3].AsString);
  mante.Text:=trim(dataset.Fields[6].AsString);
  servicio.Text:=trim(dataset.Fields[7].AsString);
  venta.Text:=trim(dataset.Fields[8].AsString);
end;
end;

procedure TAM_PCuentas.Button5Click(Sender: TObject);
var Busqueda:TLA_BUSQUEDA;
begin
Busqueda:=TLA_BUSQUEDA.Create(self);
try
  Busqueda.NroOpcion:=3;
  Busqueda.ShowModal;
  CUIF.Text:=busqueda.DB2.Text;
  apeynom.Text:=busqueda.DB4.Text;
finally
  Busqueda.Destroy;
  //PC3.ActivePage:=PC3.Pages[2];
  tpodoc.SetFocus;
end;
end;

end.

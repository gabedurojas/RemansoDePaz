unit AM_Cobradores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,DBClient, StdCtrls, DBCtrls, Grids, DBGrids, ComCtrls, StrUtils,
  DB, Mask, ADODB, Buttons, ExtCtrls,ClasePersonal,ClasePersonalAreas,
  ClasePersonalSubCobradores,ClasePersonalAreasComision,
  WSDLIntf, Unidad, JvExGrids, JvStringGrid, JvExDBGrids, JvDBGrid,
  JvExButtons, JvBitBtn, ToolWin, JvgGroupBox;
type THackStringGrid = class(TStringGrid);
type
  TAM_Cobra = class(TForm)
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
    Label3: TLabel;
    OBSERV: TEdit;
    Label6: TLabel;
    FecIng: TMaskEdit;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    BORRA: TJvBitBtn;
    ToolButton2: TToolButton;
    GUARDA: TJvBitBtn;
    ToolButton3: TToolButton;
    JvBitBtn3: TJvBitBtn;
    Label27: TLabel;
    FecEgre: TMaskEdit;
    GroupBox3: TGroupBox;
    C3: TCheckBox;
    C4: TCheckBox;
    C6: TCheckBox;
    C5: TCheckBox;
    buscob: TJvBitBtn;
    PC2: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    JvgGroupBox1: TJvgGroupBox;
    Label7: TLabel;
    Agrega2: TJvBitBtn;
    Modifica2: TJvBitBtn;
    Borra2: TJvBitBtn;
    Quita2: TJvBitBtn;
    Areas: TComboBox;
    grilla2: TJvStringGrid;
    JvgGroupBox2: TJvgGroupBox;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    grilla3: TJvStringGrid;
    Cuifsub: TEdit;
    fecini: TMaskEdit;
    fecfin: TMaskEdit;
    observa: TEdit;
    Agrega: TJvBitBtn;
    Quita: TJvBitBtn;
    Modifica: TJvBitBtn;
    Borrar: TJvBitBtn;
    subcobra: TJvBitBtn;
    NomCob: TEdit;
    C7: TCheckBox;
    Label2: TLabel;
    Comision: TComboBox;
    Label11: TLabel;
    ComiValor: TEdit;
    EsPorcen: TCheckBox;
    Activa: TJvBitBtn;
    Desactiva: TJvBitBtn;
    Label1: TLabel;
    gestor: TEdit;
    Label12: TLabel;
    IdPersonal: TEdit;
    procedure Coloca1(nro:byte);
    procedure FormActivate(Sender: TObject);
    procedure RDClick(Sender: TObject);
    procedure RAClick(Sender: TObject);
    procedure ONOMBKeyPress(Sender: TObject; var Key: Char);
    procedure ODNIKeyPress(Sender: TObject; var Key: Char);
    procedure FecIngExit(Sender: TObject);
    procedure FecIngKeyPress(Sender: TObject; var Key: Char);
    procedure OBSERVKeyPress(Sender: TObject; var Key: Char);
    procedure Agrega2Click(Sender: TObject);
    procedure Modifica2Click(Sender: TObject);
    procedure Borra2Click(Sender: TObject);
    procedure Quita2Click(Sender: TObject);
    procedure AreasExit(Sender: TObject);
    procedure RCClick(Sender: TObject);
    procedure RTClick(Sender: TObject);
    procedure BuscaClick(Sender: TObject);
    procedure SALEClick(Sender: TObject);
    procedure BORRAClick(Sender: TObject);
    procedure GUARDAClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure grilla2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FecEgreExit(Sender: TObject);
    procedure subcobraClick(Sender: TObject);
    procedure FecEgreKeyPress(Sender: TObject; var Key: Char);
    procedure feciniKeyPress(Sender: TObject; var Key: Char);
    procedure fecfinKeyPress(Sender: TObject; var Key: Char);
    procedure feciniExit(Sender: TObject);
    procedure fecfinExit(Sender: TObject);
    procedure AgregaClick(Sender: TObject);
    procedure ModificaClick(Sender: TObject);
    procedure QuitaClick(Sender: TObject);
    procedure BorrarClick(Sender: TObject);
    procedure grilla3Click(Sender: TObject);
    procedure JvBitBtn3Click(Sender: TObject);
    procedure AreasKeyPress(Sender: TObject; var Key: Char);
    procedure observaKeyPress(Sender: TObject; var Key: Char);
    procedure FecIngChange(Sender: TObject);
    procedure buscobClick(Sender: TObject);
    procedure ActivaClick(Sender: TObject);
    procedure DesactivaClick(Sender: TObject);
    procedure EsPorcenKeyPress(Sender: TObject; var Key: Char);
    procedure ComisionKeyPress(Sender: TObject; var Key: Char);
    procedure ComiValorKeyPress(Sender: TObject; var Key: Char);
    procedure ComisionExit(Sender: TObject);
    procedure EsPorcenExit(Sender: TObject);
    procedure ComiValorExit(Sender: TObject);
    procedure gestorKeyPress(Sender: TObject; var Key: Char);
    procedure gestorExit(Sender: TObject);
  private
    control:boolean;{Controla que no hubiere errores en la carga de datos}
    { Private declarations }
  public
    // aca instancio la clase si la clase esta definida en el uses de la ventana
    Resultado,elcuif,ArchivoImg,areaselec,areanro,areaid,elidareacob:string;
    pos,TipoCliente:integer;
    Personal:TPersonal;
    PersonalAreas:TPersonalAreas;
    PersonalSubCobradores:TPersonalSubCobradores;
    PersonalAreasComision:TPersonalAreasComision;

    DataSet,DtCombo:TClientDataSet; //declaro el DAtaset de los Combobox
    DSGral:TClientDataSet;//declaro el DAtaset de la grilla
    IdCombos:array of array of string;

    TipoA:Unidad.TablaXML;

  end;

var
  AM_Cobra: TAM_Cobra;

implementation

uses Modulo,Busqueda,AM_VenGenerica,ClaseSistemas,ClaseFunciones,ClaseTiposObjetos,
     AM_Captura, ClaseTiposAreas;

{$R *.dfm}

procedure TAM_Cobra.FormActivate(Sender: TObject);
begin
setlength(IdCombos,2);

PC1.ActivePage:=PC1.Pages[0];
PC2.ActivePage:=PC2.Pages[0];
grilla2.Cells[0,0]:='Orden';
grilla2.Cells[1,0]:='IdArea';
grilla2.Cells[2,0]:='Detalle Area';
grilla2.Cells[3,0]:='Tipo Comision';
grilla2.Cells[4,0]:='Nro area';
grilla2.Cells[5,0]:='MDA';
grilla2.Cells[6,0]:='Nro Comision';
grilla2.Cells[7,0]:='Comision';
grilla2.Cells[8,0]:='Porcentual?';
grilla2.Cells[9,0]:='Activo?';
grilla2.Cells[10,0]:='IdComision';

grilla3.Cells[0,0]:='Orden';
grilla3.Cells[1,0]:='Id.';
grilla3.Cells[2,0]:='NombreSubCobrador';
grilla3.Cells[3,0]:='Fecha Desde';
grilla3.Cells[4,0]:='Fecha Hasta';
grilla3.Cells[5,0]:='Observ';
grilla3.Cells[6,0]:='MDF';
grilla3.Cells[7,0]:='Cuif';

Coloca1(0);
Coloca1(3);
GUARDA.Enabled:=false;
//ODNI.SetFocus;
BUSCa.Click;
end;

procedure TAM_Cobra.Coloca1(nro:byte);
var t,y:integer;
    txt,sex:string;
    txtw:widestring;
    Funciones:TFuncionesVarias;
    Sistema:TSistemas;
    TiposAreas:TTiposAreas;
    TiposObjetos:TTiposObjetos;
    Param:TWideStrings;
    NroDni,NroCuif,cuifsubcod,cuifcobrador,NroArea:variant;
begin
if nro=0 then begin //comboTiposAreas
  Areas.Clear;
  {TipoA:=LeeXML('TiposAreas','');
  if length(TipoA) <> 0 then begin
    SetLength(IdCombos[0],High(TipoA[1]) + 1);
    for t:=0 to High(TipoA[1])  do begin
      areas.Items.Insert(t,TipoA[1,t]);
      IdCombos[0,t]:=TipoA[0,t];
    end;
  end
  else begin   }
    DtCombo.Free;
    Dtcombo:=TClientDataSet.Create(nil);
    TiposAreas:=TTiposAreas.Create(nil);
    TiposAreas.ConnectionString:=modulo2.Conexion;
    if TiposAreas.Listar('SELECT NroArea,DetalleArea FROM TiposAreas where nroarea = 2  ORDER BY NroArea',DtCombo) then begin
      SetLength(IdCombos[0],DtCombo.RecordCount);
      for t:=1 to DtCombo.RecordCount  do begin
        DtCombo.RecNo:=t;
         Areas.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
        IdCombos[0,t-1]:=DtCombo.Fields[0].AsString;
      end;
    end
    else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    TiposAreas.Free;
  //end;
  Areas.ItemIndex:=0;
end;
if nro=1 then begin    //buscamo las areas del cobrador
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  NroArea:=null;NroCuif:=trim(cuif.Text);txt:='';
  if not Funciones.Run_Fn_VistaPersonalAreas(NroArea,txt,NroCuif,DtCombo,'',0) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  for t:=0 to grilla2.ColCount-1 do
    for y:=1 to grilla2.RowCount-1 do grilla2.Cells[t,y]:='';
  for t:=1 to DtCombo.RecordCount  do begin
   DtCombo.RecNo:=t;
   grilla2.RowCount:=t+1;
   grilla2.Cells[0,t]:=completa1(inttostr(t),2,'0');
   grilla2.Cells[1,t]:=trim(DtCombo.Fields[6].AsString);
   grilla2.Cells[2,t]:=trim(DtCombo.Fields[4].AsString);
   grilla2.Cells[3,t]:=trim(DtCombo.Fields[8].AsString);
   grilla2.Cells[4,t]:=trim(DtCombo.Fields[3].AsString);
   grilla2.Cells[6,t]:=trim(DtCombo.Fields[7].AsString);
   grilla2.Cells[7,t]:=trim(DtCombo.Fields[9].AsString);
   grilla2.Cells[8,t]:=trim(DtCombo.Fields[10].AsString);
   grilla2.Cells[9,t]:=trim(DtCombo.Fields[11].AsString);
   grilla2.Cells[10,t]:=trim(DtCombo.Fields[12].AsString);
  end;
end;
if nro=2 then begin    //buscamo los subcobradores
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  cuifcobrador:=cuif.Text;
  nrocuif:=null;
  if not Funciones.Run_Fn_VistaPersonalSubCobradores(cuifcobrador,nrocuif,DtCombo,'',0) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  for t:=0 to grilla3.ColCount-1 do
    for y:=1 to grilla3.RowCount-1 do grilla3.Cells[t,y]:='';
  for t:=1 to DtCombo.RecordCount  do begin
   DtCombo.RecNo:=t;
   grilla3.RowCount:=t+1;
   grilla3.Cells[0,t]:=completa1(inttostr(t),2,'0');
   grilla3.Cells[1,t]:=trim(DtCombo.Fields[9].AsString);
   grilla3.Cells[2,t]:=trim(DtCombo.Fields[2].AsString); //trim(DtCombo.Fields[3].AsString);
   grilla3.Cells[3,t]:=trim(DtCombo.Fields[6].AsString);
   grilla3.Cells[4,t]:=trim(DtCombo.Fields[7].AsString);
   grilla3.Cells[5,t]:=trim(DtCombo.Fields[8].AsString);
   grilla3.Cells[7,t]:=trim(DtCombo.Fields[3].AsString); //trim(DtCombo.Fields[2].AsStrin
  end;
end;
if nro=3 then begin //comboTiposObjetos
  Comision.Clear;
  TipoA:=LeeXML('TiposObjetos','');
  if length(TipoA) <> 0 then begin
   SetLength(IdCombos[1],High(TipoA[1]) + 1);
   for t:=0 to High(TipoA[1])  do begin
    Comision.Items.Insert(t,TipoA[1,t]);
    IdCombos[1,t]:=TipoA[0,t];
   end;
  end
  else begin
   DtCombo.Free;
   Dtcombo:=TClientDataSet.Create(nil);
   TiposObjetos:=TTiposObjetos.Create(nil);
   TiposObjetos.ConnectionString:=modulo2.Conexion;
   if TiposObjetos.Listar('SELECT NroTipo,Detalle FROM TiposObjetos WHERE (NroTipo < 5)',DtCombo) then begin
    SetLength(IdCombos[1],DtCombo.RecordCount);
    for t:=1 to DtCombo.RecordCount  do begin
     DtCombo.RecNo:=t;
     Comision.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
     IdCombos[1,t-1]:=DtCombo.Fields[0].AsString;
    end;
   end
   else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
   TiposObjetos.Free;
  end;
  Comision.ItemIndex:=0;
end;
if nro=4 then begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  //txtw:='SELECT Objeto, Importe ,Id FROM ParcelasServiciosSepeliosObjetos WHERE (Activo = 1)';
  txtw:='SELECT Id FROM PersonalAreas WHERE (Cuif = ' + trim(cuif.Text)+ ')';
  if not Funciones.Listar(txtw,DtCombo) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if not DtCombo.IsEmpty then begin
   elidareacob:=trim(DtCombo.Fields[0].AsString);
  end;
 {   DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  cuifcobrador:=cuif.Text;
  if not Funciones.Run_Fn_VistaPersonalAreasComision(cuifcobrador,DtCombo,'',0) then
  Funciones.Free;
  for t:=0 to grilla4.ColCount-1 do
    for y:=1 to grilla4.RowCount-1 do grilla4.Cells[t,y]:='';
  for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    grilla4.RowCount:=t+1;
    grilla4.Cells[0,t]:=completa1(inttostr(t),2,'0');
    grilla4.Cells[1,t]:=trim(DtCombo.Fields[0].AsString);
    grilla4.Cells[2,t]:=trim(DtCombo.Fields[1].AsString);
    grilla4.Cells[3,t]:=trim(DtCombo.Fields[2].AsString);
    grilla4.Cells[4,t]:=trim(DtCombo.Fields[3].AsString);
    grilla4.Cells[5,t]:=trim(DtCombo.Fields[4].AsString);
    grilla4.Cells[6,t]:=trim(DtCombo.Fields[5].AsString);
    grilla4.Cells[7,t]:=trim(DtCombo.Fields[6].AsString);
    grilla4.Cells[8,t]:=trim(DtCombo.Fields[7].AsString);
    grilla4.Cells[10,t]:=trim(DtCombo.Fields[8].AsString);
  end; }
end;
if nro=8 then begin
  PC1.ActivePage:=PC1.Pages[0];
  DataSet.Free;
  Dataset:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=Dataset;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if RD.Checked then begin
    NroDni:=trim(ODNI.Text);NroCuif:=null;txt:='';
  end;
  if RT.Checked then begin
    NroDni:=null;NroCuif:=null;txt:='';
  end;
  if RC.Checked then begin
    NroDni:=null;NroCuif:=trim(ODNI.Text);txt:='';
  end;
  if RA.Checked then begin
    NroDni:=null;NroCuif:=null;txt:=trim(ONOMB.Text);
  end;
  if not Funciones.Run_Fn_VistaPersonal(NroCuif,txt,NroDni,DataSet,'',0) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',
      mtError,[mbok],0);
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
    NroDni:=trim(ODNI.Text);NroCuif:=null;txt:='';
  end;
  if RT.Checked then begin
    NroDni:=null;NroCuif:=null;txt:='';
  end;
  if RC.Checked then begin
    NroDni:=null;NroCuif:=trim(ODNI.Text);txt:='';
  end;
  if RA.Checked then begin
    NroDni:=null;NroCuif:=null;txt:=trim(ONOMB.Text);
  end;
  if not Funciones.Run_Fn_VistaClientes(NroCuif,txt,NroDni,null,null,'',DataSet,'',0) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    Funciones.Free;
end;
end;

procedure TAM_Cobra.BuscaClick(Sender: TObject);
begin
Coloca1(8);
if (Datasource1.DataSet.RecordCount = 0) then begin
  Barra1.Panels[0].Text:='Sin Datos en Grilla';
  IF application.MessageBox('COBRADOR NO encontrado, !Desea darlo de Alta!?','Advertencia'
    ,mb_OKcancel+mb_IconHAnd) = IdOk
   then begin
     borra.Click;
     PC1.ActivePage:=PC1.Pages[1];
     pc1.Pages[1].Enabled:=true;
     C3.Checked:=true;
     GUARDA.Enabled:=TRUE;
     if RA.Checked=true then APEYNOM.Text:=ONOMB.Text;
     buscob.Click;
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

procedure TAM_Cobra.RDClick(Sender: TObject);
begin
ONOMB.Visible:=false;
LB1.Caption:='Ingrese el N° DNI:';
ODNI.Visible:=true;
ODNI.Text:='00000000';
Busca.Enabled:=true;
ODNI.SetFocus;
end;

procedure TAM_Cobra.RAClick(Sender: TObject);
begin
LB1.Caption:='Ingrese Apellido:';
ONOMB.Visible:=true;
ODNI.Visible:=false;
Busca.Enabled:=true;
ONOMB.SetFocus;
end;

procedure TAM_Cobra.ONOMBKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  Busca.SetFocus;
end;
end;

procedure TAM_Cobra.ODNIKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  Busca.SetFocus;
end;
end;

procedure TAM_Cobra.FecIngExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(FecIng.Text));
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  FecIng.SetFocus;
end;
end;

procedure TAM_Cobra.FecIngKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  fecegre.SetFocus;
end;
end;


procedure TAM_Cobra.OBSERVKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  areas.SetFocus;
end;
end;

procedure TAM_Cobra.Agrega2Click(Sender: TObject);
var t:integer;
  function busca():boolean;
    var p:integer;
  begin
    busca:=true;
  if grilla2.Cells[0,1] <> '' then begin
    for p:=1 to grilla2.RowCount-1 do
      if (grilla2.Cells[2,p]=trim(areas.Text))
      and (grilla2.Cells[3,p]=trim(comision.Text)) then busca:=false;
  end;
  end;
begin
if busca then begin
  if (grilla2.RowCount > 1) and (trim(grilla2.Cells[0,1])<>'') then begin
    t:=grilla2.RowCount;
    grilla2.RowCount:=grilla2.RowCount+1;
  end
  else t:=1;
  grilla2.Cells[0,t]:=completa1(inttostr(t),2,'0');
  grilla2.Cells[1,t]:='?';
  grilla2.Cells[2,t]:=trim(areas.Text); //trim(comi.Text);
  grilla2.Cells[3,t]:=trim(comision.Text);
  grilla2.Cells[4,t]:=trim(IdCombos[0,areas.ItemIndex]);
  grilla2.Cells[5,t]:='X';
  grilla2.Cells[6,t]:=trim(IdCombos[1,comision.ItemIndex]);
  grilla2.Cells[7,t]:=trim(comivalor.Text);
  if EsPorcen.Checked = true then grilla2.Cells[8,t]:='True'
    else grilla2.Cells[8,t]:='False';
  grilla2.Cells[9,t]:='True';
  C4.Checked:=true;
  if modifica2.Enabled = false then Agrega2.Enabled:=true;
  GUARDA.Enabled:=true;
end
else messagedlg('ERROR!! No Puede Existir dos N° Teléfonos del mismo Tipo y Número!!',mterror,[mbok],0);
areas.SetFocus;
end;

procedure TAM_Cobra.Modifica2Click(Sender: TObject);
  function busca(ht:integer):boolean;
    var p:integer;
  begin
    busca:=true;
  if grilla2.Cells[0,1] <> '' then begin
    for p:=1 to grilla2.RowCount-1 do
      if (grilla2.Cells[2,p]=trim(areas.Text))
      and (grilla2.Cells[3,p]=trim(comision.Text))
      and (ht<>p) then busca:=false;
  end;
  end;
begin
if busca(grilla2.Row) then begin
  if grilla2.Cells[1,grilla2.Row] <> '?' then begin
    C6.Checked:=true;
    grilla2.Cells[5,grilla2.Row]:='X';
  end;
  grilla2.Cells[2,grilla2.Row]:=trim(areas.Text);
  grilla2.Cells[3,grilla2.Row]:=trim(comision.Text);
  grilla2.Cells[4,grilla2.Row]:=trim(IdCombos[0,areas.ItemIndex]);
  grilla2.Cells[6,grilla2.Row]:=trim(IdCombos[1,comision.ItemIndex]);
  grilla2.Cells[7,grilla2.Row]:=trim(Comivalor.Text);
  if EsPorcen.Checked = true then grilla2.Cells[8,grilla2.Row]:='True'
    else grilla2.Cells[8,grilla2.Row]:='False';
  C4.Checked:=true;
  Agrega2.Enabled:=false;
  Borra2.Enabled:=false;
  Modifica2.Enabled:=false;
  GUARDA.Enabled:=true;
  areas.SetFocus;
end
else messagedlg('ERROR!! No Puede Existir dos N° Areas del mismo Tipo y Número!!',mterror,[mbok],0);
end;

procedure TAM_Cobra.Borra2Click(Sender: TObject);
var t,p,gf:integer;
var bt:boolean;
begin
if trim(grilla2.Cells[0,1])<>'' then begin
  gf:=1;t:=0;
  if grilla2.Cells[1,grilla2.Row] = '?' then t:=1
  else gf:=messagedlg('Desea Borrar la Area Seleccionado??' + chr(13)
       + 'Se eliminará definitivamente de la Base de Datos',mtWarning,[mbok,mbCancel],0);
  if gf = 1 then begin
    if t=0 then begin
      PersonalAreas:=TPersonalAreas.Create(nil);
      PersonalAreas.ConnectionString:=modulo2.Conexion;

      bt:=PersonalAreas.Borrar(grilla2.Cells[1,grilla2.Row]);
      PersonalAreas.Free;
      if bt then  begin
         Barra1.SimpleText:='Se ha Borrado el Ares del Cobrador con Exito';
      end
      else begin
         Barra1.SimpleText:='Error al Borrar el telefono del  Cliente';
      end;
    end;
    t:=grilla2.Row;
    if (t >= 1) and (grilla2.RowCount > 2) then begin
      THackStringGrid(grilla2).DeleteRow(t);
    end
    else begin
      for t:=0 to grilla2.ColCount-1 do grilla2.Cells[t,1]:='';
    end;
  end;
  Borra2.Enabled:=false;
  Modifica2.Enabled:=false;
  areas.SetFocus;
end;
end;

procedure TAM_Cobra.Quita2Click(Sender: TObject);
begin
comivalor.Text:='00000';AREAS.ItemIndex:=0;comision.ItemIndex:=0;
esporcen.Checked:=false;
Modifica2.Enabled:=false;
Borra2.Enabled:=false;
Agrega2.Enabled:=true;
Quita2.Enabled:=false;
end;

procedure TAM_Cobra.AreasExit(Sender: TObject);
begin
if Areas.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Area Ingresado!!',mterror,[mbok],0);
  Areas.SetFocus;
end;
end;

procedure TAM_Cobra.RCClick(Sender: TObject);
begin
ONOMB.Visible:=false;
LB1.Caption:='Ingrese el CUIT / CUIL:';
ODNI.Visible:=true;
ODNI.Text:='00000000';
Busca.Enabled:=true;
ODNI.SetFocus;
end;

procedure TAM_Cobra.RTClick(Sender: TObject);
begin
ONOMB.Visible:=FALSE;
ODNI.Visible:=FALSE;
LB1.Caption:='';
Busca.Enabled:=true;
Busca.SetFocus;
end;

procedure TAM_Cobra.SALEClick(Sender: TObject);
begin
Close;
end;

procedure TAM_Cobra.BORRAClick(Sender: TObject);
var p,u:integer;
begin
Coloca1(0);
cuif.Text:='00000000000';
APEYNOM.Clear;
Cuifsub.Text:='00000000000';
fecing.Clear;fecegre.Clear;observ.Clear;
comivalor.Text:='00000';
areas.ItemIndex:=0;comision.ItemIndex:=0;
esporcen.Checked:=false;
for p:=0 to grilla2.ColCount-1 do
  for u:=1 to grilla2.RowCount-1 do grilla2.Cells[p,u]:='';
grilla2.RowCount:=2;
cuifsub.Text:='00000000000';
fecini.Clear;fecfin.Clear;observa.Clear;

for p:=0 to grilla3.ColCount-1 do
  for u:=1 to grilla3.RowCount-1 do grilla3.Cells[p,u]:='';
grilla3.RowCount:=2;
 c3.Checked:=false;
 c4.Checked:=false;
 c5.Checked:=false;
 c6.Checked:=false;

 PC1.ActivePage:=PC1.Pages[0];
 pc1.Pages[1].Enabled:=false;
 BUSCA.SetFocus;
end;

procedure TAM_Cobra.GUARDAClick(Sender: TObject);
var el_dni,ElId,IdArea:string;
var ac,lafecha,ct,TodoOk1:boolean;
var gf,t:integer;
begin
  if C6.Checked = false then begin
    gf:=messagedlgpos('Desea Agregar los Datos de este Cobrador?',mtWarning,[
               mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
    if gf = 1 then begin
     Personal:=TPersonal.Create(nil);
     Personal.ConnectionString:=modulo2.Conexion;
     Personal.C_Cuif_PK:=strtoint64(trim(cuif.Text));
     Personal.C_FechaIngreso_IX1:=trim(fecing.Text);
     Personal.C_FechaEgreso_IX2:=trim(fecegre.Text);
     Personal.C_Observaciones:=AnsiReplaceStr(OBSERV.Text,chr(39),chr(33));
     personal.C_NroGestor:= strtoint(gestor.Text);
     Personal.C_Usu_A:=modulo2.nro_usu;
     Personal.C_Mostrar:=true;
     TodoOk1:=Personal.Agrega;
     Personal.Free;
     if TodoOK1 then begin
       if c4.Checked = true then begin
         PersonalAreas:=TPersonalAreas.Create(nil);
         PersonalAreas.ConnectionString:=modulo2.Conexion;
         PersonalAreas.C_Cuif:=strtoint64(trim(cuif.Text));
         PersonalAreas.C_NroArea:=strtoint(trim(IdCombos[0,areas.ItemIndex])); //strtoint(trim(grilla2.Cells[4,t]));
         PersonalAreas.C_Usu_A:=modulo2.nro_usu;
         ct:=PersonalAreas.Agrega;
         Idarea:=PersonalAreas.Identidad;
         PersonalAreas.Free;
         if ct then begin
          for t:=1 to grilla2.RowCount-1 do begin
           if trim(grilla2.Cells[1,t]) = '?' then begin
             PersonalAreasComision:=TPersonalAreasComision.Create(nil);
             PersonalAreasComision.ConnectionString:=modulo2.Conexion;
             PersonalAreasComision.C_IdPersonalArea_IX1:=strtoint(idarea);  // strtoint(trim(grilla4.Cells[6,t]));
             PersonalAreasComision.C_NroTipo_IX2:=strtoint(trim(grilla2.Cells[6,t]));
             PersonalAreasComision.C_Comision:=strtoint(trim(grilla2.Cells[7,t]));
             if trim(grilla2.Cells[8,t])='True' then  PersonalAreasComision.C_Porcentual:=true
               else PersonalAreasComision.C_Porcentual:=false;
             if trim(grilla2.Cells[9,t])='True' then PersonalAreasComision.C_Activo:=true
               else  PersonalAreasComision.C_Activo:=false;
             PersonalAreasComision.C_Usu_A:=modulo2.nro_usu;
             ac:=PersonalAreasComision.Agrega;
             PersonalAreasComision.Free;
             if ac then Barra1.SimpleText:='Se ha Guardado sionla Comi del Cliente con Exito'
             //messagedlg('Se ha Guardado la Comi del Cliente con Exito.',mtError,[mbok],0)
             else
             begin
               break;
              end;
           end;
          end;
          messagedlg('Se ha Guardado la Comision del Cobrador con Exito.',mtConfirmation,[mbok],0);
          guarda.Enabled :=false;
         end
         else begin
          //break;
          Personal:=TPersonal.Create(nil);
          Personal.ConnectionString:=modulo2.Conexion;
          Personal.Borrar(trim(cuif.Text));
          Personal.Free;
          messagedlg('ERROR!!... Al Guardar las Area del Cobrador.',mtError,[mbok],0);
         end;
       end;    
     end;
    end;
  end
  else begin  /// modif
   gf:=messagedlgpos('Desea Modificar los Datos del Cliente Seleccionado?',mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
   if gf = 1 then begin
    TodoOk1:=true;
    Personal:=TPersonal.Create(nil);
    Personal.ConnectionString:=modulo2.Conexion;
    Personal.C_Cuif_PK:=strtoint64(trim(cuif.Text));
    Personal.C_FechaIngreso_IX1:=trim(fecing.Text);
    Personal.C_FechaEgreso_IX2:=trim(fecegre.Text);
    Personal.C_Observaciones:=AnsiReplaceStr(OBSERV.Text,chr(39),chr(33));
    personal.C_NroGestor:= strtoint(gestor.Text);
    Personal.C_Usu_M:=modulo2.nro_usu;
    Personal.C_Fecha_M:=strcut(Fec_System(),10);
    TodoOk1:=Personal.Modificar;
    Personal.Free;
    if C4.Checked and TodoOk1 then begin
     For t:=1 to grilla2.RowCount-1 do begin
       if grilla2.Cells[1,t] = '?' then begin
         //if TodoOk1 then begin
        PersonalAreasComision:=TPersonalAreasComision.Create(nil);
        PersonalAreasComision.ConnectionString:=modulo2.Conexion;
        PersonalAreasComision.C_IdPersonalArea_IX1:=elidareacob;  // strtoint(trim(grilla4.Cells[6,t]));
        PersonalAreasComision.C_NroTipo_IX2:=strtoint(trim(grilla2.Cells[6,t]));
        PersonalAreasComision.C_Comision:=strtoint(trim(grilla2.Cells[7,t]));
        if trim(grilla2.Cells[8,t])='True' then  PersonalAreasComision.C_Porcentual:=true
            else PersonalAreasComision.C_Porcentual:=false;
        if trim(grilla2.Cells[9,t])='True' then PersonalAreasComision.C_Activo:=true
             else  PersonalAreasComision.C_Activo:=false;
        PersonalAreasComision.C_Usu_A:=modulo2.nro_usu;
        ac:=PersonalAreasComision.Agrega;
        PersonalAreasComision.Free;
        if ac then begin
         messagedlg('Se ha Guardado la Nueva Comision del Cobrador con Exito.',mtConfirmation,[mbok],0) ;
         guarda.Enabled :=false;
        end
        else begin
          break;
        end;
         //end
         //else begin
         // break;
         //end;
       end
       else begin
        if grilla2.Cells[5,t] = 'X' then begin
         PersonalAreas:=TPersonalAreas.Create(nil);
         PersonalAreas.ConnectionString:=modulo2.Conexion;
         PersonalAreas.C_Id_PK:=strtoint(trim(grilla2.Cells[1,t]));
         PersonalAreas.C_Cuif:=strtoint64(trim(cuif.Text));
         PersonalAreas.C_NroArea:=strtoint(trim(grilla2.Cells[4,t]));
         PersonalAreas.C_Usu_A:=modulo2.nro_usu;
         ct:=PersonalAreas.Modificar;
         PersonalAreas.Free;
         if ct then begin
          PersonalAreasComision:=TPersonalAreasComision.Create(nil);
          PersonalAreasComision.ConnectionString:=modulo2.Conexion;
          PersonalAreasComision.C_Id_PK:=trim(grilla2.Cells[10,t]);
          PersonalAreasComision.C_IdPersonalArea_IX1:=strtoint(trim(grilla2.Cells[1,t]));
          PersonalAreasComision.C_NroTipo_IX2:=strtoint(trim(grilla2.Cells[6,t]));
          PersonalAreasComision.C_Comision:=trim(grilla2.Cells[7,t]);
          if trim(grilla2.Cells[8,t])='True' then  PersonalAreasComision.C_Porcentual:=true
            else PersonalAreasComision.C_Porcentual:=false;
          if trim(grilla2.Cells[9,t])='True' then PersonalAreasComision.C_Activo:=true
            else  PersonalAreasComision.C_Activo:=false;
          TodoOk1:=PersonalAreasComision.Modificar;
          PersonalAreasComision.Free;
          if TodoOk1 then begin
           messagedlg('Se ha Guardado la Nueva Comision del Cobrador con Exito.',mtConfirmation,[mbok],0);
           guarda.Enabled :=false;
          end
          else begin
            break;
          end;
            //if not TodoOk1 then break;
         end
         else begin
            break;
         end;
        end;
       end;
     end;
    end;
   end;
  end;
end;


procedure TAM_Cobra.DBGrid1CellClick(Column: TColumn);
begin
if not (Dataset.IsEmpty) then begin
  PC1.Pages[1].Enabled:=true;
  PC1.ActivePage:=PC1.Pages[1];
  C6.Checked:=true;
  cuif.Text:=trim(dataset.Fields[1].AsString);
  APEYNOM.Text:=AnsiReplaceStr(trim(dataset.Fields[2].Text),chr(33),chr(39));
  fecing.Text:=trim(dataset.Fields[3].AsString);
  fecegre.Text:=trim(dataset.Fields[4].AsString);
  observ.Text:=AnsiReplaceStr(trim(dataset.Fields[5].Text),chr(33),chr(39));
  gestor.Text:=trim(dataset.Fields[7].AsString);
  C3.Checked:=false;
  fecing.SetFocus;
  Coloca1(1);
  Coloca1(2);
  Coloca1(4);
// fecini.Text:=strcut(Fec_System(),10);
// fecfin.Text:=strcut(Fec_System(),10);
end;
end;

procedure TAM_Cobra.DBGrid1TitleClick(Column: TColumn);
begin
dataset.IndexFieldNames:=column.FieldName;
end;

procedure TAM_Cobra.grilla2Click(Sender: TObject);
begin
 Agrega2.Enabled:=false;
 Borra2.Enabled:=true;
 Quita2.Enabled:=true;
 Modifica2.Enabled:=true;
 areas.ItemIndex:=areas.Items.IndexOf(trim(grilla2.Cells[2,grilla2.Row]));
 comision.ItemIndex:=comision.Items.IndexOf(trim(grilla2.Cells[3,grilla2.Row]));
 comivalor.Text:=trim(grilla2.Cells[7,grilla2.Row]);
 if trim(grilla2.Cells[8,grilla2.Row])= 'True' then  EsPorcen.Checked:=true
     else EsPorcen.Checked:=false;
 if trim(grilla2.Cells[9,grilla2.Row])= 'True' then begin
   desactiva.Enabled:=true;
   activa.Enabled:=false;
 end
 else begin
   desactiva.Enabled:=false;
   activa.Enabled:=true;
 end;
 //areaid:=trim(grilla2.Cells[1,grilla2.Row]);
 //areaselec:=trim(grilla2.Cells[2,grilla2.Row]);
 areas.SetFocus;
end;

procedure TAM_Cobra.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//if key = VK_F4 then GUARDA.Click;
//if key = VK_F11 then LIMPIAR.Click;
//if key = VK_ESCAPE	then SALIR.Click ;
end;

procedure TAM_Cobra.FecEgreExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(FecEgre.Text));
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  FecEgre.SetFocus;
end;
end;

procedure TAM_Cobra.subcobraClick(Sender: TObject);
var Busqueda:TLA_BUSQUEDA;
begin
Busqueda:=TLA_BUSQUEDA.Create(self);
try
  Busqueda.NroOpcion:=3;
  Busqueda.ShowModal;
  CUIFsub.Text:=busqueda.DB2.Text;
  NomCob.Text:=busqueda.DB4.Text;
finally
  Busqueda.Destroy;
  fecini.Text:=strcut(Fec_System(),10);
  fecfin.Text:=strcut(Fec_System(),10);
  fecini.SetFocus;
end;
end;

procedure TAM_Cobra.FecEgreKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  gestor.SetFocus;
 end;
end;

procedure TAM_Cobra.feciniKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  fecfin.SetFocus;
end;
end;

procedure TAM_Cobra.fecfinKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  observa.SetFocus;
end;
end;

procedure TAM_Cobra.feciniExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(FecIni.Text));
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  FecIni.SetFocus;
end;
end;

procedure TAM_Cobra.fecfinExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(fecfin.Text));
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  fecfin.SetFocus;
end;
end;

procedure TAM_Cobra.AgregaClick(Sender: TObject);
var t:integer;
  function busca():boolean;
    var p:integer;
  begin
    busca:=true;
      if grilla3.Cells[0,1] <> '' then begin
        for p:=1 to grilla3.RowCount-1 do
        if (grilla3.Cells[7,p]=trim(cuifsub.Text)) //(grilla3.Cells[2,p]=trim(cuifsub.Text))
        and (grilla3.Cells[3,p]=trim(fecini.Text))
        and (grilla3.Cells[4,p]=trim(fecfin.Text)) then busca:=false;
      end;
  end;

begin
if busca then begin
  if (grilla3.RowCount > 1) and (trim(grilla3.Cells[0,1])<>'') then begin
    t:=grilla3.RowCount;
    grilla3.RowCount:=grilla3.RowCount+1;
  end
  else t:=1;
  grilla3.Cells[0,t]:=completa1(inttostr(t),2,'0');
  grilla3.Cells[1,t]:='?';
  grilla3.Cells[2,t]:=trim(nomcob.text);
  grilla3.Cells[3,t]:=trim(fecini.Text);
  grilla3.Cells[4,t]:=trim(fecfin.Text);
  grilla3.Cells[5,t]:=trim(observa.Text);
  grilla3.Cells[6,t]:='X';
  grilla3.Cells[7,t]:=trim(cuifsub.Text);
  C5.Checked:=true;
  if modifica.Enabled = false then Agrega.Enabled:=true;
  GUARDA.Enabled:=true;
end
else messagedlg('ERROR!! No Puede Existir dos N° Teléfonos del mismo Tipo y Número!!',mterror,[mbok],0);
subcobra.SetFocus;
end;

procedure TAM_Cobra.ModificaClick(Sender: TObject);
  function busca(ht:integer):boolean;
    var p:integer;
  begin
    busca:=true;
      if grilla3.Cells[0,1] <> '' then begin
        for p:=1 to grilla3.RowCount-1 do
        if (grilla3.Cells[7,p]=trim(cuifsub.Text))  //(grilla3.Cells[2,p]=trim(cuifsub.Text))
        and (grilla3.Cells[3,p]=trim(fecini.Text))
        and (grilla3.Cells[4,p]=trim(fecfin.Text)) then busca:=false;
      end;
  end;

begin
if busca(grilla3.Row) then begin
  if grilla3.Cells[1,grilla3.Row] <> '?' then begin
    C6.Checked:=true;
    grilla3.Cells[6,grilla3.Row]:='X';
  end;
  grilla3.Cells[2,grilla3.Row]:=trim(nomcob.Text);
  grilla3.Cells[3,grilla3.Row]:=trim(fecini.Text);
  grilla3.Cells[4,grilla3.Row]:=trim(fecfin.Text);
  grilla3.Cells[5,grilla3.Row]:=trim(observa.Text);
  grilla3.Cells[7,grilla3.Row]:=trim(cuifsub.Text);
  C5.Checked:=true;
  Agrega.Enabled:=false;
  Borrar.Enabled:=false;
  Modifica.Enabled:=false;
  GUARDA.Enabled:=true;
  subcobra.SetFocus;
end
else messagedlg('ERROR!! No Puede Existir dos SubCobradores Iguales!!',mterror,[mbok],0);
end;


procedure TAM_Cobra.QuitaClick(Sender: TObject);
begin
CUIFSUB.Text:='00000000000';FECINI.Clear;FECFIN.Clear;
OBSERVA.Clear;
Modifica.Enabled:=false;
BorraR.Enabled:=false;
Agrega.Enabled:=true;
Quita.Enabled:=false;
end;

procedure TAM_Cobra.BorrarClick(Sender: TObject);
var t,p,gf:integer;
var bt:boolean;
begin
if trim(grilla3.Cells[0,1])<>'' then begin
  gf:=1;t:=0;
  if grilla3.Cells[1,grilla2.Row] = '?' then t:=1
  else gf:=messagedlg('Desea Borrar el SUBCOBRADOR Seleccionado??' + chr(13)
       + 'Se eliminará definitivamente de la Base de Datos',mtWarning,[mbok,mbCancel],0);
  if gf = 1 then begin
   if t=0 then begin
    PersonalSubCobradores:=TPersonalSubCobradores.Create(nil);
    PersonalSubCobradores.ConnectionString:=modulo2.Conexion;

    bt:=PersonalSubCobradores.Borrar(grilla3.Cells[1,grilla2.Row]);
    PersonalSubCobradores.Free;
    if bt then  begin
       Barra1.SimpleText:='Se ha Borrado el SubCobrador del Cliente con Exito';
    end
    else begin
       Barra1.SimpleText:='Error al Borrar el SubCobrador del  Cliente';
    end;
   end;
   t:=grilla3.Row;
   if (t >= 1) and (grilla3.RowCount > 2) then begin
     THackStringGrid(grilla3).DeleteRow(t);
   end
   else begin
     for t:=0 to grilla3.ColCount-1 do grilla3.Cells[t,1]:='';
   end;
  end;
  Borrar.Enabled:=false;
  Modifica.Enabled:=false;
  subcobra.SetFocus;
end;
end;
procedure TAM_Cobra.grilla3Click(Sender: TObject);
begin
Agrega.Enabled:=false;
Borrar.Enabled:=true;
Quita.Enabled:=true;
Modifica.Enabled:=true;
cuifsub.Text:=trim(grilla3.Cells[7,grilla3.Row]); //trim(grilla3.Cells[2,grilla3.Row]);
fecini.Text:=trim(grilla3.Cells[3,grilla3.Row]);
fecfin.Text:=trim(grilla3.Cells[4,grilla3.Row]);
observa.Text:=trim(grilla3.Cells[5,grilla3.Row]);
nomcob.Text:=trim(grilla3.Cells[2,grilla3.Row]);//trim(grilla3.Cells[7,grilla3.Row]);
subcobra.SetFocus;
end;

procedure TAM_Cobra.JvBitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TAM_Cobra.AreasKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  comision.SetFocus;
end;
{if key = #13 then begin
  Key := #0;
  if Modifica2.Enabled = true then Modifica2.SetFocus
  else begin
    Agrega2.Enabled:=true;
    Agrega2.SetFocus;
  end;
end; }
end;

procedure TAM_Cobra.observaKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  if Modifica.Enabled = true then Modifica.SetFocus
  else begin
    Agrega.Enabled:=true;
    Agrega.SetFocus;
  end;
 end;
end;

procedure TAM_Cobra.FecIngChange(Sender: TObject);
begin
c3.Checked:=true;
guarda.Enabled:=true;
end;

procedure TAM_Cobra.buscobClick(Sender: TObject);
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
  fecing.SetFocus;
 end;
 fecing.Text:=strcut(Fec_System(),10);
 fecegre.Text:=strcut(Fec_System(),10);
//fecini.Text:=strcut(Fec_System(),10);
//fecfin.Text:=strcut(Fec_System(),10);
end;

procedure TAM_Cobra.ActivaClick(Sender: TObject);
var gf:integer;
var m:boolean;
var txtw:widestring;
begin
 gf:=messagedlgpos('Desea ACTIVAR esta Comision Seleccionada??',mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
 if gf = 1 then begin
  PersonalAreasComision:=TPersonalAreasComision.Create(nil);
  PersonalAreasComision.ConnectionString:=modulo2.Conexion;
  txtw:='UPDATE PersonalAreasComision SET Activo = 1  WHERE (' +
       'Id=' + trim(grilla2.Cells[10,grilla2.Row]) + ')';

  m:=PersonalAreasComision.ListarSinResp(txtw);
  PersonalAreasComision.Free;
  if m then begin
    messagedlg('Se ha ACTIVADO esta Comision con Exito',mtConfirmation,[mbok],0);
  end
  else begin
    messagedlg('Error al ACTIVAR esta Comision. Consulte con un Administrador',mtError,[mbok],0);
  end;
  activa.Enabled:=false;
 end;
 coloca1(1);
end;

procedure TAM_Cobra.DesactivaClick(Sender: TObject);
var gf:integer;
var m:boolean;
var txtw:widestring;
begin
 gf:=messagedlgpos('Desea DESACTIVAR esta Comision Seleccionada??',mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
 if gf = 1 then begin
  PersonalAreasComision:=TPersonalAreasComision.Create(nil);
  PersonalAreasComision.ConnectionString:=modulo2.Conexion;

  txtw:='UPDATE PersonalAreasComision SET Activo = 0  WHERE (' +
       'Id=' + trim(grilla2.Cells[10,grilla2.Row])  + ')';

  m:=PersonalAreasComision.ListarSinResp(txtw);
  PersonalAreasComision.Free;
  if m then begin
    messagedlg('Se ha DESACTIVADO esta Comision con Exito',mtConfirmation,[mbok],0);
  end
  else begin
    messagedlg('Error al DESACTIVAR esta Comision. Consulte con un Administrador',mtError,[mbok],0);
  end;
  desactiva.Enabled:=false;
 end;
 coloca1(1);
end;

procedure TAM_Cobra.EsPorcenKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  if Modifica2.Enabled = true then Modifica2.SetFocus
  else begin
    Agrega2.Enabled:=true;
    Agrega2.SetFocus;
  end;
end;
end;

procedure TAM_Cobra.ComisionKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  comivalor.SetFocus;
end;
end;

procedure TAM_Cobra.ComiValorKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  esporcen.SetFocus;
end
else begin
  if ( StrScan('0123456789.',Key) <> nil ) or  ( Key = Char(VK_BACK) ) then
   else Key := #0;
end;
end;

procedure TAM_Cobra.ComisionExit(Sender: TObject);
begin
if Comision.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe la Comision Ingresada!!',mterror,[mbok],0);
  Comision.SetFocus;
end;
end;

procedure TAM_Cobra.EsPorcenExit(Sender: TObject);
begin
if (esporcen.Checked=true) and (trim(comivalor.Text)='0000') then begin
 messagedlg('ERROR!! No Puede Poner Porcentaje a una ' +
   ' Comision con valor Cero(0)!!',mterror,[mbok],0);
comivalor.SetFocus;
end
else begin
   if Modifica2.Enabled = true then Modifica2.SetFocus
  else begin
    Agrega2.Enabled:=true;
    Agrega2.SetFocus;
  end;
end;
end;

procedure TAM_Cobra.ComiValorExit(Sender: TObject);
begin
if trim(comivalor.Text)=''  then comivalor.Text:='0000';

end;

procedure TAM_Cobra.gestorKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  observ.SetFocus;
end;
end;

procedure TAM_Cobra.gestorExit(Sender: TObject);
begin
if trim(gestor.Text) = '' then begin
  messagedlgpos('Error!! No hay Numero de Gestor Ingresado.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  gestor.SetFocus;
end;
end;

end.

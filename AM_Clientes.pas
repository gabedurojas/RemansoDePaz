unit AM_Clientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,DBClient, StdCtrls, DBCtrls, Grids, DBGrids, ComCtrls, StrUtils,
  ClaseClientes,ClaseClientesTelefonos, DB, Mask, ADODB, Buttons, ExtCtrls,
  WSDLIntf, Unidad, JvExGrids, JvStringGrid, JvExDBGrids, JvDBGrid,
  JvExButtons, JvBitBtn, ToolWin;

type THackStringGrid = class(TStringGrid);
type
  TAM_Cli = class(TForm)
    Barra1: TStatusBar;
    DataSource1: TDataSource;
    BusDir: TOpenDialog;
    PC1: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    grupo1: TGroupBox;
    DBGrid1: TJvDBGrid;
    Label15: TLabel;
    CUIF: TEdit;
    Label4: TLabel;
    APEYNOM: TEdit;
    Label19: TLabel;
    alias: TEdit;
    Label7: TLabel;
    TPODOC: TComboBox;
    Label11: TLabel;
    SEXO: TComboBox;
    Label20: TLabel;
    religion: TComboBox;
    NroReligion: TJvBitBtn;
    Label22: TLabel;
    EstCivil: TComboBox;
    Label9: TLabel;
    PROVINC: TComboBox;
    Label12: TLabel;
    BARRIO: TComboBox;
    NBarrio: TJvBitBtn;
    Label14: TLabel;
    CODPOST: TMaskEdit;
    BusCodPos: TJvBitBtn;
    Label5: TLabel;
    Label24: TLabel;
    Label1: TLabel;
    MAIL: TEdit;
    Label3: TLabel;
    OBSERV: TEdit;
    Label16: TLabel;
    CATEGORIA: TComboBox;
    Label13: TLabel;
    DNI: TEdit;
    Label2: TLabel;
    CUIT: TEdit;
    Label21: TLabel;
    nacio: TComboBox;
    NroNacio: TJvBitBtn;
    Label6: TLabel;
    FECNAC: TMaskEdit;
    Label10: TLabel;
    LOCALIDAD: TComboBox;
    NLocal: TJvBitBtn;
    Label26: TLabel;
    DOMI: TEdit;
    Label23: TLabel;
    PATH: TEdit;
    JvBitBtn1: TJvBitBtn;
    Panel1: TPanel;
    Foto: TImage;
    JvBitBtn2: TJvBitBtn;
    Label25: TLabel;
    PROFES: TComboBox;
    NroProfes: TJvBitBtn;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    BORRA: TJvBitBtn;
    ToolButton2: TToolButton;
    GUARDA: TJvBitBtn;
    ToolButton3: TToolButton;
    SALIR: TJvBitBtn;
    TabSheet1: TTabSheet;
    JUBIL: TCheckBox;
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
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    C3: TCheckBox;
    C4: TCheckBox;
    C6: TCheckBox;
    C5: TCheckBox;
    Agrega2: TJvBitBtn;
    Modifica2: TJvBitBtn;
    Quita2: TJvBitBtn;
    Borra2: TJvBitBtn;
    Label18: TLabel;
    CARAC: TEdit;
    Label8: TLabel;
    TELF: TEdit;
    Label17: TLabel;
    ORIGEN: TComboBox;
    Button2: TJvBitBtn;
    grilla2: TJvStringGrid;
    procedure Coloca1(nro:byte);
    procedure FormActivate(Sender: TObject);
    procedure RDClick(Sender: TObject);
    procedure RAClick(Sender: TObject);
    procedure APEYNOMExit(Sender: TObject);
    procedure LGCENTESKeyPress(Sender: TObject; var Key: Char);
    procedure ONOMBKeyPress(Sender: TObject; var Key: Char);
    procedure ODNIKeyPress(Sender: TObject; var Key: Char);
    procedure TPOOBRAKeyPress(Sender: TObject; var Key: Char);
    procedure TPODOCKeyPress(Sender: TObject; var Key: Char);
    procedure APEYNOMKeyPress(Sender: TObject; var Key: Char);
    procedure CUITKeyPress(Sender: TObject; var Key: Char);
    procedure FECNACExit(Sender: TObject);
    procedure FECNACKeyPress(Sender: TObject; var Key: Char);
    procedure DOMIKeyPress(Sender: TObject; var Key: Char);
    procedure DOMIExit(Sender: TObject);
    procedure PROVINCKeyPress(Sender: TObject; var Key: Char);
    procedure DEPTOPROVExit(Sender: TObject);
    procedure LOCALIDADKeyPress(Sender: TObject; var Key: Char);
    procedure CODPOSTKeyPress(Sender: TObject; var Key: Char);
    procedure NLocalClick(Sender: TObject);
    procedure PROVINCExit(Sender: TObject);
    procedure TPODOCChange(Sender: TObject);
    procedure MAILKeyPress(Sender: TObject; var Key: Char);
    procedure OBSERVKeyPress(Sender: TObject; var Key: Char);
    procedure CARACKeyPress(Sender: TObject; var Key: Char);
    procedure TELFKeyPress(Sender: TObject; var Key: Char);
    procedure ORIGENKeyPress(Sender: TObject; var Key: Char);
    procedure Agrega2Click(Sender: TObject);
    procedure Modifica2Click(Sender: TObject);
    procedure Borra2Click(Sender: TObject);
    procedure Quita2Click(Sender: TObject);
    procedure LOCALIDADExit(Sender: TObject);
    procedure BARRIOKeyPress(Sender: TObject; var Key: Char);
    procedure NBarrioClick(Sender: TObject);
    procedure TPODOCExit(Sender: TObject);
    procedure DNIKeyPress(Sender: TObject; var Key: Char);
    procedure DNIExit(Sender: TObject);
    procedure CATEGORIAKeyPress(Sender: TObject; var Key: Char);
    procedure RCClick(Sender: TObject);
    procedure RTClick(Sender: TObject);
    procedure BARRIOExit(Sender: TObject);
    procedure CATEGORIAExit(Sender: TObject);
    procedure ORIGENExit(Sender: TObject);
    procedure SEXOKeyPress(Sender: TObject; var Key: Char);
    procedure SEXOExit(Sender: TObject);
    procedure CODPOSTExit(Sender: TObject);
    procedure BusCodPosClick(Sender: TObject);
    procedure BuscaClick(Sender: TObject);
    procedure SALEClick(Sender: TObject);
    procedure BORRAClick(Sender: TObject);
    procedure GUARDAClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure aliasKeyPress(Sender: TObject; var Key: Char);
    procedure religionExit(Sender: TObject);
    procedure religionKeyPress(Sender: TObject; var Key: Char);
    procedure nacioExit(Sender: TObject);
    procedure nacioKeyPress(Sender: TObject; var Key: Char);
    procedure EstCivilExit(Sender: TObject);
    procedure EstCivilKeyPress(Sender: TObject; var Key: Char);
    procedure NroNacioClick(Sender: TObject);
    procedure PROVINCEnter(Sender: TObject);
    procedure NroReligionClick(Sender: TObject);
    procedure LOCALIDADEnter(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure grilla2Click(Sender: TObject);
    procedure JvBitBtn2Click(Sender: TObject);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure PROFESKeyPress(Sender: TObject; var Key: Char);
    procedure PROFESExit(Sender: TObject);
    procedure NroProfesClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SALIRClick(Sender: TObject);
    procedure JUBILKeyPress(Sender: TObject; var Key: Char);
    procedure ONOMBChange(Sender: TObject);
    procedure CARACExit(Sender: TObject);
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
  AM_Cli: TAM_Cli;

implementation

uses Modulo,Busqueda,AM_VenGenerica,ClaseTiposSexos,ClaseProvincias,
     ClaseLocalidades,ClaseBarrios,ClaseSistemas,ClaseClientesCategoria,
     ClaseTiposTelefonos,ClaseCodigoPostal,ClaseTipoDni,ClaseFunciones,
     ClaseTiposReligion,ClaseTiposEstadoCivil,ClasePaises,ClaseTiposIVA,
     AM_Captura, ClaseTiposProfesiones;

{$R *.dfm}

procedure TAM_Cli.FormActivate(Sender: TObject);
begin
  setlength(IdCombos,11);
  PC1.ActivePage:=PC1.Pages[0];
  grilla2.Cells[0,0]:='Orden';
  grilla2.Cells[1,0]:='Id.';                  
  grilla2.Cells[2,0]:='Caract.';
  grilla2.Cells[3,0]:='N° Teléfono';
  grilla2.Cells[4,0]:='Origen';
  grilla2.Cells[5,0]:='N° Origen';
  grilla2.Cells[6,0]:='MDF';
  fecnac.Text:=strcut(Fec_System(),10);
  Coloca1(0);      Coloca1(1);
  Coloca1(2);      Coloca1(3);
  Coloca1(4);      Coloca1(5);
  Coloca1(6);      Coloca1(10);
  Coloca1(11);     Coloca1(12);
  Coloca1(13);
 try
  foto.Picture.LoadFromFile(modulo2.path_todo + '\Fotos\foto.jpg');
  except
 end;

 if TipoCliente = 1 then begin  //Cliente basico
  ALIAS.Enabled:=false;
  RELIGION.Enabled:=false;
  CUIT.Enabled:=false;
  CODPOST.Enabled:=false;
  CATEGORIA.Enabled:=false;
  NroReligion.Enabled:=false;
  NroNacio.Enabled:=false;
  NroProfes.Enabled:=false;
  BusCodPos.Enabled:=false;
  //MAIL.Enabled:=false;
  //pc1.ActivePage[2]:=true;
  PC1.ActivePage:=PC1.Pages[0];
 end;
 GUARDA.Enabled:=false;
 ODNI.SetFocus;
end;

procedure TAM_Cli.Coloca1(nro:byte);
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
  TPODOC.Clear;
  //TiposDni:=LeeXML('TiposDni','');
  //if length(TiposDni) <> 0 then begin
  //  SetLength(IdCombos[0],High(TiposDni[1]) + 1);
  //  for t:=0 to High(TiposDni[1])  do begin
  //    TPODOC.Items.Insert(t,TiposDni[2,t]);
  //    IdCombos[0,t]:=TiposDni[0,t];
  //  end;
  //end
  //else begin
    DtCombo.Free;
    Dtcombo:=TClientDataSet.Create(nil);
    TipoDni:=TTipoDni.Create(nil);
    TipoDni.ConnectionString:=modulo2.Conexion;
    if TipoDni.Listar('SELECT Abreviatura,tipodoc FROM TiposDni where tipodoc>0 ORDER BY tipodoc',DtCombo) then begin
     SetLength(IdCombos[0],DtCombo.RecordCount);
     for t:=1 to DtCombo.RecordCount  do begin
      DtCombo.RecNo:=t;
      TPODOC.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
      IdCombos[0,t-1]:=DtCombo.Fields[1].AsString;
     end;
    end
    else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    TipoDni.Free;
  //end;
  TPODOC.ItemIndex:=0;
end;
if nro=1 then begin //combosexo
  Sexo.Clear;
  //TipSexos:=LeeXML('TiposSexos','');
  //if length(TipSexos) <> 0 then begin
  //  SetLength(IdCombos[1],High(TipSexos[1]) + 1);
  //  for t:=0 to High(TipSexos[1])  do begin
  //    SEXO.Items.Insert(t,TipSexos[1,t]);
  //    IdCombos[1,t]:=TipSexos[0,t];
  //  end;
  //end
  //else begin
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
  //end;
  sexo.ItemIndex:=0;
end;
if nro=2 then begin //comboprovincia
  PROVINC.Clear;
//  Prov:=LeeXML('Provincias','');
//  if length(Prov) <> 0 then begin
//    SetLength(IdCombos[2],High(Prov[1]) + 1);
//    for t:=0 to High(Prov[1]) do begin
//      PROVINC.Items.Insert(t,Prov[1,t]);
//      IdCombos[2,t]:=Prov[0,t];
//    end;
//  end
//  else begin
    DtCombo.Free;
    Dtcombo:=TClientDataSet.Create(nil);
    Provincias:=TProvincias.Create(nil);
    Provincias.ConnectionString:=modulo2.Conexion;
    if Provincias.Listar('SELECT Provincia,IdProvincia FROM Provincias WHERE (IdProvincia > 10) ORDER BY IdProvincia DESC',DtCombo)  then begin
     SetLength(IdCombos[2],DtCombo.RecordCount);
     for t:=1 to DtCombo.RecordCount  do begin
      DtCombo.RecNo:=t;
      PROVINC.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
      IdCombos[2,t-1]:=DtCombo.Fields[1].AsString;
     end;
    end
    else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    Provincias.Free;
  //end;
  PROVINC.ItemIndex:=0;
end;
if nro=3 then begin //combolocalidad
  Localidad.Clear;
  //  Loca:=LeeXML('Localidades','(IdProvincia=' + IdCombos[2,PROVINC.ItemIndex]  + ')');
  //  if length(Loca) <> 0 then begin
  //    SetLength(IdCombos[3],High(Loca[1]) + 1);
  //    for t:=0 to High(Loca[1]) do begin
  //      Localidad.Items.Insert(t,Loca[1,t]);
  //      IdCombos[3,t]:=Loca[0,t];
  //    end;
  //  end
  //  else begin
    DtCombo.Free;
    Dtcombo:=TClientDataSet.Create(nil);
    Localidades:=TLocalidades.Create(nil);
    Localidades.ConnectionString:=modulo2.Conexion;
    txtw:='SELECT dbo.Localidades.Localidad,dbo.Localidades.IdLocalidad FROM '
    + 'dbo.ProvinciasLocalidades INNER JOIN dbo.Localidades ON '
    + 'dbo.ProvinciasLocalidades.IdLocalidad = dbo.Localidades.IdLocalidad '
    + 'WHERE (dbo.ProvinciasLocalidades.IdProvincia=' + IdCombos[2,PROVINC.ItemIndex] + ') ORDER BY dbo.Localidades.Localidad';
    if Localidades.Listar(txtw,DtCombo)  then begin
     SetLength(IdCombos[3],DtCombo.RecordCount);
     for t:=1 to DtCombo.RecordCount  do begin
      DtCombo.RecNo:=t;
      Localidad.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
      IdCombos[3,t-1]:=DtCombo.Fields[1].AsString;
     end;
    end
    else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    Localidades.Free;
  //end;
  Localidad.ItemIndex:=0;
end;
if nro=4 then begin //combobarrio
  Barrio.Clear;
//  Barr:=LeeXML('Barrios','(IdLocalidad=' + IdCombos[3,Localidad.ItemIndex]  + ')');
//  if length(Barr) <> 0 then begin
//    SetLength(IdCombos[4],High(Barr[1]) + 1);
//    for t:=0 to High(Barr[1]) do begin
//      Barrio.Items.Insert(t,Barr[1,t]);
//      IdCombos[4,t]:=Barr[0,t];
//    end;
//  end
//  else begin
    DtCombo.Free;
    Dtcombo:=TClientDataSet.Create(nil);
    Barrios:=TBarrios.Create(nil);
    Barrios.ConnectionString:=modulo2.Conexion;
    Param:=TWideStrings.Create;
    Param.Add('');
    Param.Add(IdCombos[3,Localidad.ItemIndex]);
    Param.Add('');      //'SELECT detallebarrio,Idbarrio FROM Losbarrios '+' where (localidad='+ chr(39) + trim(localidad.Text)+ chr(39) +') order by detallebarrio'
    if Barrios.ListarSP(Param,DtCombo,0)  then begin
     SetLength(IdCombos[4],DtCombo.RecordCount);
     for t:=1 to DtCombo.RecordCount  do begin
      DtCombo.RecNo:=t;
      Barrio.Items.Insert(t-1,trim(DtCombo.Fields[2].AsString));
      IdCombos[4,t-1]:=DtCombo.Fields[0].AsString;
     end;
    end
    else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    Param.Free;
    Barrios.Free;
  //end;
  Barrio.ItemIndex:=0;
end;
if nro=5 then begin //comboIVA
  Categoria.Clear;
  //TipoIVA:=LeeXML('ClientesCategoria','');
  //if length(TipoIVA) <> 0 then begin
  //  SetLength(IdCombos[5],High(TipoIVA[1]) + 1);
  //  for t:=0 to High(TipoIVA[1]) do begin
  //    Categoria.Items.Insert(t,TipoIVA[1,t]);
  //    IdCombos[5,t]:=TipoIVA[0,t];
  //  end;
  //end
  //else begin
    DtCombo.Free;
    Dtcombo:=TClientDataSet.Create(nil);
    ClientesCategoria:=TClientesCategoria.Create(nil);
    ClientesCategoria.ConnectionString:=modulo2.Conexion;
    Param:=TWideStrings.Create;
    Param.Add('');    //'SELECT detalleiva,tipoiva FROM tiposiva order by tipoiva'
    Param.Add('');
    if ClientesCategoria.ListarSP(Param,DtCombo,0) then begin
     SetLength(IdCombos[5],DtCombo.RecordCount);
     for t:=1 to DtCombo.RecordCount  do begin
      DtCombo.RecNo:=t;
      Categoria.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
      IdCombos[5,t-1]:=DtCombo.Fields[0].AsString;
     end;
    end
    else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    Param.Free;
    ClientesCategoria.Free;
  //end;
  Categoria.ItemIndex:=0;
end;
if nro=6 then begin //combotipostelefonos
  ORIGEN.Clear;
  DtCombo.Free;
  Dtcombo:=TClientDataSet.Create(nil);
  TipoTelefonos:=TTiposTelefonos.Create(nil);
  TipoTelefonos.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT DetalleTipo,TipoTelefono FROM TiposTelefonos where TipoTelefono in (1,3) ORDER BY DetalleTipo';
  if TipoTelefonos.Listar(txtw,DtCombo)  then begin
   SetLength(IdCombos[6],DtCombo.RecordCount);
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    ORIGEN.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
    IdCombos[6,t-1]:=DtCombo.Fields[1].AsString;
   end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  TipoTelefonos.Free;
  origen.ItemIndex:=0;
  {TiposTelefonos:=LeeXML('TiposTelefonos','');
  if length(TiposTelefonos) <> 0 then begin
    SetLength(IdCombos[6],High(TiposTelefonos[1]) + 1);
    for t:=0 to High(TiposTelefonos[1]) do begin
      ORIGEN.Items.Insert(t,TiposTelefonos[1,t]);
      IdCombos[6,t]:=TiposTelefonos[0,t];
    end;
  end
  else begin
    DtCombo.Free;
    Dtcombo:=TClientDataSet.Create(nil);
    TipoTelefonos:=TTiposTelefonos.Create(nil);
    TipoTelefonos.ConnectionString:=modulo2.Conexion;
    Param:=TWideStrings.Create;
    Param.Add('');    //'SELECT detalletipo,tipotelefono FROM tipotelefonos order by detalletipo'
    Param.Add('');
    if TipoTelefonos.ListarSP(Param,DtCombo,0) then begin
      SetLength(IdCombos[6],DtCombo.RecordCount);
      for t:=1 to DtCombo.RecordCount  do begin
        DtCombo.RecNo:=t;
        ORIGEN.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
        IdCombos[6,t-1]:=DtCombo.Fields[0].AsString;
      end;
    end
    else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    Param.Free;
    TipoTelefonos.Free;
  end;    }

end;
if nro=7 then begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  CodigoPostal:=TCodigoPostal.Create(nil);
  CodigoPostal.ConnectionString:=modulo2.Conexion;
  Param:=TWideStrings.Create;
  Param.Add(trim(codpost.Text)); //   'SELECT postal FROM CodigoPostal where (codigo='+ trim(codpost.Text) +')';
  Param.Add('');
  if not  CodigoPostal.ListarSP(Param,DtCombo,0) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Param.Free;
  CodigoPostal.Free;
  if trim(DtCombo.Fields[0].AsString) <> '' then begin
    label24.Caption:=trim(DtCombo.Fields[1].AsString)
  end
  else begin
    messagedlg('ERROR Numero de Codigo Postal incorrecto',mtError,[mbok],0);
    BusCodPos.Click;
  end;
end;
if nro=8 then begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  NroCuif:=cuif.Text;
  if not Funciones.Run_Fn_VistaClientesTelefonos(NroCuif,DtCombo,'',0) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  for t:=0 to grilla2.ColCount-1 do
    for y:=1 to grilla2.RowCount-1 do grilla2.Cells[t,y]:='';
  for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    grilla2.RowCount:=t+1;
    grilla2.Cells[0,t]:=completa1(inttostr(t),2,'0');
    grilla2.Cells[1,t]:=trim(DtCombo.Fields[0].AsString);
    grilla2.Cells[2,t]:=trim(DtCombo.Fields[3].AsString);
    grilla2.Cells[3,t]:=trim(DtCombo.Fields[2].AsString);
    grilla2.Cells[4,t]:=trim(DtCombo.Fields[4].AsString);
    grilla2.Cells[5,t]:=trim(DtCombo.Fields[5].AsString);
  end;
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
if nro= 10 then begin  // combo religion
  RELIGION.Clear;
  DtCombo.Free;
  Dtcombo:=TClientDataSet.Create(nil);
  TiposReligion:=TTiposReligion.Create(nil);
  TiposReligion.ConnectionString:=modulo2.Conexion;
  Param:=TWideStrings.Create;
  Param.Add('');
  Param.Add('');
  if TiposReligion.ListarSP(Param,DtCombo,0) then begin
   SetLength(IdCombos[7],DtCombo.RecordCount);
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    RELIGION.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
    IdCombos[7,t-1]:=DtCombo.Fields[0].AsString;
   end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Param.Free;
  TiposReligion.Free;
  Religion.ItemIndex:=0;
end;
if nro= 11 then begin   // combo estcivil
  ESTCIVIL.Clear;
  DtCombo.Free;
  Dtcombo:=TClientDataSet.Create(nil);
  TiposEstadoCivil:=TTiposEstadoCivil.Create(nil);
  TiposEstadoCivil.ConnectionString:=modulo2.Conexion;
  Param:=TWideStrings.Create;
  Param.Add('');
  Param.Add('');
  if TiposEstadoCivil.ListarSP(Param,DtCombo,0) then begin
   SetLength(IdCombos[8],DtCombo.RecordCount);
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    ESTCIVIL.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
    IdCombos[8,t-1]:=DtCombo.Fields[0].AsString;
   end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Param.Free;
  TiposEstadoCivil.Free;
  estcivil.ItemIndex:=0;
end;
if nro= 12 then begin   // combo nacionalidad
  NACIO.Clear;
  //Nacionalidad:=LeeXML('Nacionalidad','');
  //if length(Nacionalidad) <> 0 then begin
  //  SetLength(IdCombos[9],High(Nacionalidad[1]) + 1);
  //  for t:=0 to High(Nacionalidad[1]) do begin
  //    NACIO.Items.Insert(t,Nacionalidad[1,t]);
  //    IdCombos[9,t]:=Nacionalidad[0,t];
  //  end;
  //end
  //else begin
    DtCombo.Free;
    Dtcombo:=TClientDataSet.Create(nil);
    Paises:=TPaises.Create(nil);
    Paises.ConnectionString:=modulo2.Conexion;
    Param:=TWideStrings.Create;
    Param.Add('');
    Param.Add('');
    if Paises.ListarSP(Param,DtCombo,0) then begin
     SetLength(IdCombos[9],DtCombo.RecordCount);
     for t:=1 to DtCombo.RecordCount  do begin
      DtCombo.RecNo:=t;
      NACIO.Items.Insert(t-1,trim(DtCombo.Fields[2].AsString));
      IdCombos[9,t-1]:=DtCombo.Fields[0].AsString;
     end;
    end
    else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    Param.Free;
    Paises.Free;
  //end;
  NACIO.ItemIndex:=0;
end;
if nro= 13 then begin   // combo Profesion
  PROFES.Clear;
  //TProfes:=LeeXML('TiposProfesiones','');
  //if length(TProfes) <> 0 then begin
  //  SetLength(IdCombos[10],High(TProfes[1]) + 1);
  //  for t:=0 to High(TProfes[1]) do begin
  //    PROFES.Items.Insert(t,TProfes[1,t]);
  //    IdCombos[10,t]:=TProfes[0,t];
  //  end;
  //end
  //else begin
    DtCombo.Free;
    Dtcombo:=TClientDataSet.Create(nil);
    TiposProfesiones:=TTiposProfesiones.Create(nil);
    TiposProfesiones.ConnectionString:=modulo2.Conexion;
    Param:=TWideStrings.Create;
    Param.Add('');
    Param.Add('');
    if TiposProfesiones.ListarSP(Param,DtCombo,0) then begin
     SetLength(IdCombos[10],DtCombo.RecordCount);
     for t:=1 to DtCombo.RecordCount  do begin
      DtCombo.RecNo:=t;
      PROFES.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
      IdCombos[10,t-1]:=DtCombo.Fields[0].AsString;
     end;
    end
    else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    Param.Free;
    TiposProfesiones.Free;
  //end;
  PROFES.ItemIndex:=0;
end;
if nro= 14 then begin
  PROCESO1:=TADODataSet.Create(nil);
  PROCESO1.ConnectionString:=modulo2.Conexion;
  PROCESO1.Close;
  PROCESO1.CommandText:='exec SPC_ClientesModificarCUIT ' + trim(elcuif);
  PROCESO1.Open;
  if PROCESO1.Fields[0].AsString = 'OK' then begin
    Barra1.Panels[2].Text:='OK';
  end
  else begin
   Barra1.Panels[2].Text:='NO';
  end;
  PROCESO1.Free;
end;
end;

procedure TAM_Cli.BuscaClick(Sender: TObject);
begin
 Coloca1(9);
 if (Datasource1.DataSet.RecordCount = 0) then begin
  Barra1.Panels[0].Text:='Sin Datos en Grilla';
  IF application.MessageBox('CLIENTE NO encontrado, !Desea darlo de Alta!?','Advertencia'
    ,mb_OKcancel+mb_IconHAnd) = IdOk then begin
   borra.Click;
   PC1.ActivePage:=PC1.Pages[1];
   pc1.Pages[1].Enabled:=true;
   C3.Checked:=true;
   GUARDA.Enabled:=TRUE;
   if RC.Checked=true then CUIT.Text:=ODNI.Text;
   if RD.Checked=true then DNI.Text:=ODNI.Text;
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
 if rd.Checked then  odni.SetFocus
  else busca.SetFocus;
 end;
end;


procedure TAM_Cli.RDClick(Sender: TObject);
begin
ONOMB.Visible:=false;
LB1.Caption:='Ingrese el N° DNI:';
ODNI.Visible:=true;
ODNI.Text:='00000000';
Busca.Enabled:=true;
busca.Click;
end;

procedure TAM_Cli.RAClick(Sender: TObject);
var     Funciones:TFuncionesVarias;
  txtw:widestring;
begin
  LB1.Caption:='Ingrese Apellido:';
  ONOMB.Visible:=true;
  ODNI.Visible:=false;
  Busca.Enabled:=true;
  ONOMB.SetFocus;
end;

procedure TAM_Cli.APEYNOMExit(Sender: TObject);
begin
if trim(APEYNOM.Text) = '' then begin
  messagedlg('Error!! No hay Nombres Ingresado.',mterror,[mbok],0);
  APEYNOM.SetFocus
end;
end;

procedure TAM_Cli.LGCENTESKeyPress(Sender: TObject; var Key: Char);
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

procedure TAM_Cli.ONOMBKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  Busca.SetFocus;
end;
end;

procedure TAM_Cli.ODNIKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  Busca.SetFocus;
end;
end;

procedure TAM_Cli.TPOOBRAKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  TPODOC.SetFocus;
end;
end;

procedure TAM_Cli.TPODOCKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  DNI.SetFocus;
end;
end;

procedure TAM_Cli.APEYNOMKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  if TipoCliente = 1 then TPODOC.SetFocus
  else alias.SetFocus;
end;
end;

procedure TAM_Cli.CUITKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
      SEXO.SetFocus;
end
else begin
  if ( StrScan('0123456789-',Key) <> nil ) or  ( Key = Char(VK_BACK) ) then
   else Key := #0;
end;
end;

procedure TAM_Cli.FECNACExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(FECNAC.Text));
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  FECNAC.SetFocus;
end;
end;

procedure TAM_Cli.FECNACKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  PROFES.SetFocus;
end;
end;


procedure TAM_Cli.DOMIKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  mail.SetFocus;
end;
end;

procedure TAM_Cli.DOMIExit(Sender: TObject);
begin
if trim(DOMI.Text) = '' then begin
  messagedlg('Error!! No hay Domicilio Ingresado.',mterror,[mbok],0);
  DOMI.SetFocus
end;
end;

procedure TAM_Cli.PROVINCKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  LOCALIDAD.SetFocus;
end;
end;

procedure TAM_Cli.DEPTOPROVExit(Sender: TObject);
begin
Coloca1(5);
end;

procedure TAM_Cli.LOCALIDADKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  BARRIO.SetFocus;
end;
end;

procedure TAM_Cli.CODPOSTKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  MAIL.SetFocus;
end;
end;

procedure TAM_Cli.NLocalClick(Sender: TObject);
var AM_Generico:TAM_Generico;
begin
 AM_Generico:=TAM_Generico.Create(self);
 try
  AM_Generico.nroloc:=trim(IdCombos[2,provinc.ItemIndex]);
  AM_Generico.NroOpcion:=2;
  AM_Generico.Titulo1:='Localidades';
  AM_Generico.Label1.Caption:='Provincia Selec.: ' + trim(provinc.Text);
  AM_Generico.ShowModal;
 finally
  AM_Generico.Destroy;
  Coloca1(3);
  if not modulo2.modif then localidad.ItemIndex:=pos;
  LOCALIDAd.SetFocus;
 end;
end;

procedure TAM_Cli.PROVINCExit(Sender: TObject);
begin
if PROVINC.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe la Provincia Ingresada!!',mterror,[mbok],0);
  PROVINC.SetFocus;
end
else begin
   Coloca1(3);
   localidad.ItemIndex:=pos;
end;
end;

procedure TAM_Cli.TPODOCChange(Sender: TObject);
begin
GUARDA.Enabled:=true;
pos:=0;
end;

procedure TAM_Cli.MAILKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  if TipoCliente = 1 then begin
    // PC1.ActivePage:=PC1.Pages[2];
     carac.Text:='370';
     carac.setfocus;
  end
  else  OBSERV.SetFocus;
end;
end;

procedure TAM_Cli.OBSERVKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  if TipoCliente = 1 then begin
   // PC1.ActivePage:=PC1.Pages[2];
    carac.SetFocus;
  end
  else jubil.setfocus;//CATEGORIA.SetFocus;
end;
end;

procedure TAM_Cli.CARACKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  TELF.SetFocus;
end
else begin
  if ( StrScan('0123456789',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
   else Key := #0;
end;
end;

procedure TAM_Cli.TELFKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  ORIGEN.SetFocus;
end
else begin
  if ( StrScan('0123456789',Key) <> nil ) or  ( Key = Char(VK_BACK) ) then
   else Key := #0;
end;
end;

procedure TAM_Cli.ORIGENKeyPress(Sender: TObject; var Key: Char);
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

procedure TAM_Cli.Agrega2Click(Sender: TObject);
var t:integer;
  function busca():boolean;
    var p:integer;
  begin
    busca:=true;
  if grilla2.Cells[0,1] <> '' then begin
    for p:=1 to grilla2.RowCount-1 do
      if (grilla2.Cells[2,p]=trim(CARAC.Text))
      and (grilla2.Cells[3,p]=trim(TELF.Text))
      and (grilla2.Cells[4,p]=trim(ORIGEN.Text)) then busca:=false;
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
  grilla2.Cells[2,t]:=trim(CARAC.Text);
  grilla2.Cells[3,t]:=trim(TELF.Text);
  grilla2.Cells[4,t]:=trim(ORIGEN.Text);
  grilla2.Cells[5,t]:=trim(IdCombos[6,origen.ItemIndex]);
  grilla2.Cells[6,t]:='X';
  C4.Checked:=true;
  if modifica2.Enabled = false then Agrega2.Enabled:=true;
  GUARDA.Enabled:=true;
end
else messagedlg('ERROR!! No Puede Existir dos N° Teléfonos del mismo Tipo y Número!!',mterror,[mbok],0);
CARAC.SetFocus;
end;

procedure TAM_Cli.Modifica2Click(Sender: TObject);

  function busca(ht:integer):boolean;
    var p:integer;
  begin
    busca:=true;
  if grilla2.Cells[0,1] <> '' then begin
    for p:=1 to grilla2.RowCount-1 do
      if (grilla2.Cells[2,p]=trim(CARAC.Text))
      and (grilla2.Cells[3,p]=trim(TELF.Text))
      and (grilla2.Cells[4,p]=trim(ORIGEN.Text))
      and (ht<>p) then busca:=false;
  end;
  end;

begin
if busca(grilla2.Row) then begin
  if grilla2.Cells[1,grilla2.Row] <> '?' then begin
    C6.Checked:=true;
    grilla2.Cells[6,grilla2.Row]:='X';
  end;
  grilla2.Cells[2,grilla2.Row]:=trim(CARAC.Text);
  grilla2.Cells[3,grilla2.Row]:=trim(TELF.Text);
  grilla2.Cells[4,grilla2.Row]:=trim(ORIGEN.Text);
  grilla2.Cells[5,grilla2.Row]:=trim(IdCombos[6,origen.ItemIndex]);
  C4.Checked:=true;
  Agrega2.Enabled:=false;
  Borra2.Enabled:=false;
  Modifica2.Enabled:=false;
  GUARDA.Enabled:=true;
  CARAC.SetFocus;
end
else messagedlg('ERROR!! No Puede Existir dos N° Teléfonos del mismo Tipo y Número!!',mterror,[mbok],0);
end;

procedure TAM_Cli.Borra2Click(Sender: TObject);
var t,p,gf:integer;
var bt:boolean;
begin
 if trim(grilla2.Cells[0,1])<>'' then begin
  gf:=1;t:=0;
  if grilla2.Cells[1,grilla2.Row] = '?' then t:=1
  else gf:=messagedlg('Desea Borrar el N° Telefónico Seleccionado??' + chr(13)
       + 'Se eliminará definitivamente de la Base de Datos',mtWarning,[mbok,mbCancel],0);
  if gf = 1 then begin
    if t=0 then begin
      clientestelefonos:=Tclientestelefonos.Create(nil);
      clientestelefonos.ConnectionString:=modulo2.Conexion;
      bt:=clientestelefonos.Borrar(grilla2.Cells[1,grilla2.Row]);
      clientestelefonos.Free;
      if bt then  begin
         Barra1.SimpleText:='Se ha Borrado el telefono del Cliente';
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
  CARAC.SetFocus;
 end;
end;

procedure TAM_Cli.Quita2Click(Sender: TObject);
begin
CARAC.Text:='370';
TELF.Text:='00000000000';
Modifica2.Enabled:=false;
Borra2.Enabled:=false;
Agrega2.Enabled:=true;
Quita2.Enabled:=false;
end;

procedure TAM_Cli.LOCALIDADExit(Sender: TObject);
begin
if NLocal.Focused = true then NLocal.SetFocus
else if PROVINC.Focused = true then PROVINC.SetFocus
else begin
  if LOCALIDAD.ItemIndex < 0 then begin
    messagedlg('ERROR!! No Existe la Localidad Ingresada!!',mterror,[mbok],0);
    LOCALIDAD.SetFocus;
  end
  else begin
    Coloca1(4);
    barrio.ItemIndex:=pos;
  end;
end;
end;

procedure TAM_Cli.BARRIOKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  DOMI.SetFocus;
end;
end;

procedure TAM_Cli.NBarrioClick(Sender: TObject);
var AM_Generico:TAM_Generico;
begin
AM_Generico:=TAM_Generico.Create(self);
try
  AM_Generico.nroloc:=trim(IdCombos[3,Localidad.ItemIndex]);
  AM_Generico.NroOpcion:=1;
  AM_Generico.Titulo1:='Barrios';
  AM_Generico.Label1.Caption:='Localidad Selec.: ' + trim(localidad.Text);
  AM_Generico.ShowModal;
finally
  AM_Generico.Destroy;
  Coloca1(4);
  barrio.SetFocus;
end;
end;

procedure TAM_Cli.TPODOCExit(Sender: TObject);
begin
if TPODOC.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Documento Ingresado!!',mterror,[mbok],0);
  TPODOC.SetFocus;
end
else begin
  if strtoint(trim(ODNI.Text))<>0 then DNI.Text:=ODNI.Text;
end;
end;

procedure TAM_Cli.DNIKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
    Key := #0;
    cuit.SetFocus;
  end
  else begin
    if ( StrScan('0123456789',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
     else Key := #0;
  end;
end;

procedure TAM_Cli.DNIExit(Sender: TObject);
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

procedure TAM_Cli.CATEGORIAKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  //PC1.ActivePage:=PC1.Pages[2];
  CARAC.SetFocus;
 end;
end;

procedure TAM_Cli.RCClick(Sender: TObject);
begin
ONOMB.Visible:=false;
LB1.Caption:='Ingrese el CUIT / CUIL:';
ODNI.Visible:=true;
ODNI.Text:='00000000';
Busca.Enabled:=true;
ODNI.SetFocus;
end;

procedure TAM_Cli.RTClick(Sender: TObject);
begin
ONOMB.Visible:=FALSE;
ODNI.Visible:=FALSE;
LB1.Caption:='';
Busca.Enabled:=true;
Busca.SetFocus;
end;

procedure TAM_Cli.BARRIOExit(Sender: TObject);
begin
if LOCALIDAD.Focused or NBARRIO.Focused then
else begin
  if barrio.ItemIndex < 0 then begin
    messagedlg('ERROR!! No Existe un Barrio Ingresada!!',mterror,[mbok],0);
    barrio.SetFocus;
  end
  else begin
    domi.SetFocus
  end;
end;
end;

procedure TAM_Cli.CATEGORIAExit(Sender: TObject);
begin
if CATEGORIA.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe al Categoría Ingresada!!',mterror,[mbok],0);
  CATEGORIA.SetFocus;
end;
end;

procedure TAM_Cli.ORIGENExit(Sender: TObject);
begin
if ORIGEN.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Origen Ingresado!!',mterror,[mbok],0);
  ORIGEN.SetFocus;
end;
end;

procedure TAM_Cli.SEXOKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  if TipoCliente = 1 then NACIO.SetFocus  //PROVINC.SetFocus
  else religion.SetFocus;
end;
end;

procedure TAM_Cli.SEXOExit(Sender: TObject);
begin
if SEXO.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Sexo Ingresado!!',mterror,[mbok],0);
  SEXO.SetFocus;
end;
end;

procedure TAM_Cli.CODPOSTExit(Sender: TObject);
begin
if trim(CODPOST.Text)='' then dni.Text:='0000';
if trim(CODPOST.Text)='0' then dni.Text:='0000';

if trim(CODPOST.Text) = '0000' then begin
  messagedlg('ERROR!!... El N° de Codigo Postal Incorrecto'
  ,mterror,[mbok],0);
  CODPOST.SetFocus;
end
else begin
Coloca1(7);
end;
end;

procedure TAM_Cli.BusCodPosClick(Sender: TObject);
var Busqueda:TLA_BUSQUEDA;
begin
Busqueda:=TLA_BUSQUEDA.Create(self);
try
  Busqueda.NroOpcion:=1;
  Busqueda.ShowModal;
  codpost.Text:=busqueda.DB1.Text;
  label24.Caption:=busqueda.DB2.Text;
finally
  Busqueda.Destroy;
  mail.SetFocus;
end;
end;

procedure TAM_Cli.SALEClick(Sender: TObject);
begin
Close;
end;

procedure TAM_Cli.BORRAClick(Sender: TObject);
var p,u:integer;
begin
Coloca1(0);
Coloca1(1);
Coloca1(2);
Coloca1(3);
Coloca1(4);
Coloca1(5);
Coloca1(6);
Coloca1(10);
Coloca1(11);
Coloca1(12);

cuif.Text:='00000000000';
APEYNOM.Clear;alias.clear; tpodoc.ItemIndex:=0;
DNI.Text:='00000000';sexo.ItemIndex:=0;CUIT.Text:='00000000000';
religion.ItemIndex:=0;nacio.ItemIndex:=0;estcivil.ItemIndex:=0;
FECNAC.Clear;profes.ItemIndex:=0;barrio.ItemIndex:=0;
DOMI.Clear;CODPOST.Text:='00000';
label24.Caption:='...';
MAIL.Clear;//OBSERV.Clear;
jubil.Checked:=false;categoria.ItemIndex:=0;
path.Clear;
foto.Picture.LoadFromFile(modulo2.path_todo + '\Fotos\foto.jpg');

CARAC.Text:='370';
TELF.Text:='00000000000';
origen.ItemIndex:=0;
for p:=0 to grilla2.ColCount-1 do
  for u:=1 to grilla2.RowCount-1 do grilla2.Cells[p,u]:='';
grilla2.RowCount:=2;
 c3.Checked:=false;
 c4.Checked:=false;
 c6.Checked:=false;

 PC1.ActivePage:=PC1.Pages[0];
 //pc1.Pages[1].Enabled:=false;
 if rd.Checked then odni.SetFocus
   else BUSCA.SetFocus;
end;

procedure TAM_Cli.GUARDAClick(Sender: TObject);
var el_dni,ElId:string;
var ac,lafecha,ct:boolean;
var gf,t:integer;
begin
 Cliente:=TClientes.Create(nil);
 Cliente.ConnectionString:=modulo2.Conexion;
 if C6.Checked = false then begin
  gf:=messagedlgpos('Desea Agregar los Datos de este Cliente?',mtWarning,[
      mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
  if gf = 1 then begin
   if TipoCliente = 0 then begin   /// datos completos
    elcuif:=CrearCuim(strtoint(trim(Dni.Text)),IdCombos[1,sexo.ItemIndex]);
    cliente.C_Cuif_PK:=strtoint64(trim(elcuif));
    cliente.C_RazonSocial_IX2:=trim(apeynom.Text); //trim(apeynom.Text);
    cliente.C_Alias:=trim(alias.Text);
    cliente.C_TipoDoc:=strtoint(IdCombos[0,tpodoc.ItemIndex]);
    cliente.C_NroDni_IX3:=strtoint(trim(Dni.Text));
    cliente.C_Sexo:=IdCombos[1,sexo.ItemIndex];
    cliente.C_Cuit:=trim(cuit.Text);
    cliente.C_NroReligion:=strtoint(IdCombos[7,religion.ItemIndex]);
    cliente.C_NroNacionalidad_IX4:=strtoint(IdCombos[9,nacio.ItemIndex]);
    cliente.C_NroProfesion_IX5:=strtoint(IdCombos[10,PROFES.ItemIndex]);
    cliente.C_IdEstado_IX6:=strtoint(IdCombos[8,estcivil.ItemIndex]);
    cliente.C_FechaNacimiento:=trim(fecnac.Text);
    cliente.C_IdProvincia_IX7:=strtoint(IdCombos[2,provinc.ItemIndex]);
    cliente.C_IdLocalidad_IX8:=strtoint(IdCombos[3,Localidad.ItemIndex]);
    cliente.C_IdBarrio_IX9:=strtoint(IdCombos[4,barrio.ItemIndex]);
    cliente.C_NroProfesion_IX5:=strtoint(IdCombos[10,PROFES.ItemIndex]);
    cliente.C_Domicilio:=AnsiReplaceStr(trim(domi.Text),chr(39),chr(33)); //trim(domi.Text);
    cliente.C_CodigoPostal_IX10:=strtoint(trim(codpost.Text));
    cliente.C_mail:=trim(mail.Text);
    cliente.C_Observaciones:=trim(observ.Text);
    if jubil.Checked = false then cliente.C_EsJubilado:=False
      else cliente.C_EsJubilado:=True;
    cliente.C_IdCategoria_IX11:=strtoint(IdCombos[5,categoria.ItemIndex]);
    cliente.C_DirFoto:=trim(path.Text);
    cliente.C_Usu_A:=modulo2.nro_usu;
    ac:=cliente.Agrega;
    cliente.Free;

    if ac then begin   /////////// Telefonos Clientes
     if c4.Checked=true then begin
      for t:=1 to grilla2.RowCount-1 do begin
       if trim(grilla2.Cells[1,t]) = '?' then begin
        clientestelefonos:=Tclientestelefonos.Create(nil);
        clientestelefonos.ConnectionString:=modulo2.Conexion;
        clientestelefonos.C_Cuif_IX1:=strtoint64(trim(elcuif));
        clientestelefonos.C_NroTelefono:=strtoint(trim(grilla2.Cells[3,t]));
        clientestelefonos.C_Caracteristica:=strtoint(trim(grilla2.Cells[2,t]));
        clientestelefonos.C_TipoTelefono_IX2:=strtoint(trim(grilla2.Cells[5,t]));
        ct:=clientestelefonos.Agrega;
        clientestelefonos.Free;
        if ct then Barra1.SimpleText:='Se ha Guardado el telefono del Cliente'
        else Barra1.SimpleText:='Error al Guardar el telefono del  Cliente';
       end;
      end;
     end;
     messagedlg('Se ha Guardado el nuevo Cliente con Exito',mtConfirmation,[mbok],0);
     modulo2.MensajeTxt('Asignando Nuevo C.U.I.F.','El N° de CUIF Asignado es:' + chr(13)
     + chr(13) +trim(elcuif),modulo2.path_todo + '\Imagenes\bombillo.bmp');
     AuditAccesos('Mdulo 2','ALTA DE CLIENTE NUEVO: ' + trim(elcuif) + ' Usu ' + inttostr(modulo2.nro_usu));
     /// actualizo el cuit
     Coloca1(14);
     borra.Click;
    end
    else begin
      Barra1.SimpleText:='Error al Guardar el nuevo Cliente';
      messagedlg('Error al Guardar el nuevo Cliente. Consulte con un Administrador',mtError,[mbok],0);
    end;
   end
   else begin
     /// datos de ventana reducida
    elcuif:=CrearCuim(strtoint(trim(Dni.Text)),IdCombos[1,sexo.ItemIndex]);
    cliente.C_Cuif_PK:=strtoint64(trim(elcuif));
    cliente.C_RazonSocial_IX2:=trim(apeynom.Text); //trim(apeynom.Text);
    cliente.C_Alias:='';
    cliente.C_TipoDoc:=strtoint(IdCombos[0,tpodoc.ItemIndex]);
    cliente.C_NroDni_IX3:=strtoint(trim(Dni.Text));
    cliente.C_Sexo:=IdCombos[1,sexo.ItemIndex];
    cliente.C_Cuit:='';
    cliente.C_NroReligion:=0;
    cliente.C_NroNacionalidad_IX4:=strtoint(IdCombos[9,nacio.ItemIndex]);
    cliente.C_IdEstado_IX6:=strtoint(IdCombos[8,estcivil.ItemIndex]);
    cliente.C_FechaNacimiento:=trim(fecnac.Text);
    cliente.C_IdProvincia_IX7:=strtoint(IdCombos[2,provinc.ItemIndex]);
    cliente.C_IdLocalidad_IX8:=strtoint(IdCombos[3,Localidad.ItemIndex]);
    cliente.C_IdBarrio_IX9:=strtoint(IdCombos[4,barrio.ItemIndex]);
    cliente.C_NroProfesion_IX5:=strtoint(IdCombos[10,PROFES.ItemIndex]);
    cliente.C_Domicilio:=AnsiReplaceStr(trim(domi.Text),chr(39),chr(33)); //trim(domi.Text);
    cliente.C_CodigoPostal_IX10:=3600;
    cliente.C_mail:='';
    cliente.C_Observaciones:=trim(observ.Text);
    if jubil.Checked = false then cliente.C_EsJubilado:=False
      else cliente.C_EsJubilado:=True;
    cliente.C_IdCategoria_IX11:=strtoint(IdCombos[5,categoria.ItemIndex]);
    cliente.C_DirFoto:='';
    cliente.C_Usu_A:=modulo2.nro_usu;
    ac:=cliente.Agrega;
    cliente.Free;
    if ac then begin   /////////// Telefonos Clientes
     if c4.Checked=true then begin
      for t:=1 to grilla2.RowCount-1 do begin
       if trim(grilla2.Cells[1,t]) = '?' then begin
        clientestelefonos:=Tclientestelefonos.Create(nil);
        clientestelefonos.ConnectionString:=modulo2.Conexion;
        clientestelefonos.C_Cuif_IX1:=strtoint64(trim(elcuif));
        clientestelefonos.C_NroTelefono:=strtoint(trim(grilla2.Cells[3,t]));
        clientestelefonos.C_Caracteristica:=strtoint(trim(grilla2.Cells[2,t]));
        clientestelefonos.C_TipoTelefono_IX2:=strtoint(trim(grilla2.Cells[5,t]));
        ct:=clientestelefonos.Agrega;
        clientestelefonos.Free;
        if ct then Barra1.SimpleText:='Se ha Guardado el telefono del Cliente'
         else Barra1.SimpleText:='Error al Guardar el telefono del  Cliente';
       end;
      end;
     end;
     messagedlg('Se ha Guardado el nuevo Cliente con Exito',mtConfirmation,[mbok],0);
     modulo2.MensajeTxt('Asignando Nuevo C.U.I.F.','El N° de CUIF Asignado es:' + chr(13)
     + chr(13) +trim(elcuif),modulo2.path_todo + '\Imagenes\bombillo.bmp');
     AuditAccesos('Mdulo 2','ALTA DE CLIENTE NUEVO: ' + trim(elcuif) + ' Usu ' + inttostr(modulo2.nro_usu));
     /// actualizo el cuit
     Coloca1(14);
     borra.Click;
    end
    else begin
      Barra1.SimpleText:='Error al Guardar el nuevo Cliente';
      messagedlg('Error al Guardar el nuevo Cliente. Consulte con un Administrador',mtError,[mbok],0);
    end;
   end;
  end
  else begin
   messagedlg('Ud. ha cancelado la Operacion de Carga de Clientes', mtWarning,[mbok],0);
  end;
 end
 else begin
  gf:=messagedlgpos('Desea Modificar los Datos del Cliente Seleccionado?',mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
  if gf = 1 then begin
    cliente.C_Cuif_PK:=strtoint64(trim(cuif.Text));
    cliente.C_RazonSocial_IX2:=trim(apeynom.Text);
    cliente.C_Alias:=trim(alias.Text);
    cliente.C_TipoDoc:=strtoint(IdCombos[0,tpodoc.ItemIndex]);
    cliente.C_NroDni_IX3:=strtoint(trim(Dni.Text));
    cliente.C_Sexo:=IdCombos[1,sexo.ItemIndex];
    cliente.C_Cuit:=trim(cuit.Text);
    cliente.C_NroReligion:=strtoint(IdCombos[7,religion.ItemIndex]);
    cliente.C_NroNacionalidad_IX4:=strtoint(IdCombos[9,nacio.ItemIndex]);
    cliente.C_NroProfesion_IX5:=strtoint(IdCombos[10,PROFES.ItemIndex]);
    cliente.C_IdEstado_IX6:=strtoint(IdCombos[8,estcivil.ItemIndex]);
    cliente.C_FechaNacimiento:=trim(fecnac.Text);
    cliente.C_IdProvincia_IX7:=strtoint(IdCombos[2,provinc.ItemIndex]);
    cliente.C_IdLocalidad_IX8:=strtoint(IdCombos[3,Localidad.ItemIndex]);
    cliente.C_IdBarrio_IX9:=strtoint(IdCombos[4,barrio.ItemIndex]);
    cliente.C_Domicilio:=AnsiReplaceStr(trim(domi.Text),chr(39),chr(33)); 
    cliente.C_CodigoPostal_IX10:=strtoint(trim(codpost.Text));
    cliente.C_mail:=trim(mail.Text);
    cliente.C_Observaciones:=trim(observ.Text);
    if jubil.Checked = false then cliente.C_EsJubilado:=False
        else cliente.C_EsJubilado:=True;
    cliente.C_IdCategoria_IX11:=strtoint(IdCombos[5,categoria.ItemIndex]);
    cliente.C_DirFoto:=trim(path.Text);
    cliente.C_Usu_M:=modulo2.nro_usu;
    cliente.C_Fecha_M:=strcut(Fec_System(),10);
    ac:=cliente.Modificar;
    cliente.Free;
    if ac then begin
     if c4.Checked=true then begin
      for t:=1 to grilla2.RowCount-1 do begin
       if trim(grilla2.Cells[1,t]) = '?' then begin     // ak se hace el INSERT por tener el id '?'
        clientestelefonos:=Tclientestelefonos.Create(nil);
        clientestelefonos.ConnectionString:=modulo2.Conexion;
        clientestelefonos.C_Cuif_IX1:=strtoint64(cuif.Text);
        clientestelefonos.C_NroTelefono:=strtoint(trim(grilla2.Cells[3,t]));
        clientestelefonos.C_Caracteristica:=strtoint(trim(grilla2.Cells[2,t]));
        clientestelefonos.C_TipoTelefono_IX2:=strtoint(trim(grilla2.Cells[5,t]));
        ct:=clientestelefonos.Agrega;
        clientestelefonos.Free;
        if ct then Barra1.SimpleText:='Se ha Guardado el telefono del Cliente'
         else Barra1.SimpleText:='Error al Guardar el telefono del  Cliente';
       end
       else begin
        if trim(grilla2.Cells[6,t]) = 'X' then begin  // ak se hace el UPDATE por ya tener el valor del id
         clientestelefonos:=Tclientestelefonos.Create(nil);
         clientestelefonos.ConnectionString:=modulo2.Conexion;
         clientestelefonos.C_IdTelefono_PK:=strtoint(trim(grilla2.Cells[1,t]));
         clientestelefonos.C_Cuif_IX1:=strtoint64(cuif.Text);
         clientestelefonos.C_NroTelefono:=strtoint(trim(grilla2.Cells[3,t]));
         clientestelefonos.C_Caracteristica:=strtoint(trim(grilla2.Cells[2,t]));
         clientestelefonos.C_TipoTelefono_IX2:=strtoint(trim(grilla2.Cells[5,t]));
         ct:=clientestelefonos.Modificar;
         clientestelefonos.Free;
         if ct then Barra1.SimpleText:='Se ha Modificado el telefono del Cliente'
         else Barra1.SimpleText:='Error al Guardar el telefono del  Cliente';
        end;
       end;
      end;
     end;
     AuditAccesos('Modulo 2','MODIF. DATOS CLIENTE CUIF'+ trim(cuif.Text) + ' Usu ' + inttostr(modulo2.nro_usu));
     messagedlg('Se ha Modificado los datos del Cliente con Exito',mtConfirmation,[mbok],0);
     /// actualizo el cuit
     //Coloca1(14);
     borra.Click;
    end
    else begin
      messagedlg('Error al Modificar el Cliente. Consulte con un Administrador',mtError,[mbok],0);
    end;
  end
   else begin
   messagedlg('Ud. ha cancelado la Operacion de Modificar datos del Cliente',
     mtWarning,[mbok],0);
  end;
 end;
end;

procedure TAM_Cli.DBGrid1CellClick(Column: TColumn);
begin
 if not (Dataset.IsEmpty) then begin
  PC1.Pages[1].Enabled:=true;
  PC1.ActivePage:=PC1.Pages[1];
  C6.Checked:=true;
  cuif.Text:=trim(dataset.Fields[1].AsString);
  APEYNOM.Text:=AnsiReplaceStr(trim(dataset.Fields[2].Text),chr(33),chr(39));
  alias.text:=AnsiReplaceStr(trim(dataset.Fields[3].Text),chr(33),chr(39));
  tpodoc.ItemIndex:=tpodoc.Items.IndexOf(trim(dataset.Fields[4].AsString)) ;
  dni.Text:=trim(dataset.Fields[5].AsString);
  sexo.ItemIndex:=sexo.Items.IndexOf(trim(dataset.Fields[6].AsString));
  if (trim(dataset.Fields[7].AsString) = '20222222223' ) then begin
   cuit.Text:=trim(dataset.Fields[7].AsString);
   end
   else begin
    if (trim(dataset.Fields[7].AsString) = '00000000000') or (trim(dataset.Fields[7].AsString) = '')  then cuit.Text:=trim(dataset.Fields[1].AsString)
     else cuit.Text:=trim(dataset.Fields[7].AsString);
   end;
  religion.ItemIndex:=religion.Items.IndexOf(trim(dataset.Fields[8].AsString)) ;
  nacio.ItemIndex:=nacio.Items.IndexOf(trim(dataset.Fields[9].AsString)) ;
  estcivil.ItemIndex:=estcivil.Items.IndexOf(trim(dataset.Fields[10].AsString)) ;
  fecnac.Text:=trim(dataset.Fields[11].AsString);
  provinc.ItemIndex:=provinc.Items.IndexOf(trim(dataset.Fields[12].AsString)) ;
  Coloca1(3);
  localidad.ItemIndex:=localidad.Items.IndexOf(trim(dataset.Fields[13].AsString)) ;
  Coloca1(4);
  barrio.ItemIndex:=barrio.Items.IndexOf(trim(dataset.Fields[14].AsString));
  domi.Text:=AnsiReplaceStr(trim(dataset.Fields[15].Text),chr(33),chr(39));
  codpost.Text:=trim(dataset.Fields[16].AsString);
  Coloca1(7);
  label24.Caption:=trim(dataset.Fields[17].AsString);
  mail.Text:=trim(dataset.Fields[18].AsString);
  observ.Text:=trim(dataset.Fields[19].AsString);
  if trim(dataset.Fields[33].AsString)='True' then jubil.Checked:=True
   else jubil.Checked:=False;
  categoria.ItemIndex:=categoria.Items.IndexOf(trim(dataset.Fields[20].AsString));
  path.Text:=trim(dataset.Fields[21].AsString);
  try
    FOTO.Picture.LoadFromFile(trim(dataset.Fields[21].AsString));
  except
  end;
  PROFES.ItemIndex:=PROFES.Items.IndexOf(trim(dataset.Fields[24].AsString));
  C3.Checked:=false;
  apeynom.SetFocus;
  Coloca1(8);
 end;
end;

procedure TAM_Cli.aliasKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  TPODOC.SetFocus;
end;
end;

procedure TAM_Cli.religionExit(Sender: TObject);
begin
if religion.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe la Religion Ingresado!!',mterror,[mbok],0);
  religion.SetFocus;
end;
end;

procedure TAM_Cli.religionKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  nacio.SetFocus;
end;
end;

procedure TAM_Cli.nacioExit(Sender: TObject);
begin
if nacio.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe la Nacionalidad Ingresado!!',mterror,[mbok],0);
  nacio.SetFocus;
end;
end;

procedure TAM_Cli.nacioKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  EstCivil.SetFocus;
end;
end;

procedure TAM_Cli.EstCivilExit(Sender: TObject);
begin
if EstCivil.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Estado Civil Ingresado!!',mterror,[mbok],0);
  EstCivil.SetFocus;
end;
end;

procedure TAM_Cli.EstCivilKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  fecnac.SetFocus;
end;
end;

procedure TAM_Cli.NroNacioClick(Sender: TObject);
var AM_Generico:TAM_Generico;
begin
AM_Generico:=TAM_Generico.Create(self);
try
  AM_Generico.NroOpcion:=4;
  AM_Generico.Titulo1:='Nacionalidades';
  AM_Generico.Label2.Caption:='Pais';
  AM_Generico.ShowModal;
finally
  AM_Generico.Destroy;
  Coloca1(12);
  nacio.SetFocus;
end;
end;

procedure TAM_Cli.PROVINCEnter(Sender: TObject);
begin
pos:=localidad.ItemIndex;
end;

procedure TAM_Cli.NroReligionClick(Sender: TObject);
var AM_Generico:TAM_Generico;
begin
AM_Generico:=TAM_Generico.Create(self);
try
  AM_Generico.NroOpcion:=5;
  AM_Generico.Titulo1:='Religiones';
  AM_Generico.ShowModal;
finally
  AM_Generico.Destroy;
  Coloca1(10);
  religion.SetFocus;
end;
end;

procedure TAM_Cli.LOCALIDADEnter(Sender: TObject);
begin
pos:=localidad.ItemIndex;
end;

procedure TAM_Cli.DBGrid1TitleClick(Column: TColumn);
begin
dataset.IndexFieldNames:=column.FieldName;
end;

procedure TAM_Cli.grilla2Click(Sender: TObject);
begin
Agrega2.Enabled:=false;
Borra2.Enabled:=true;
Quita2.Enabled:=true;
Modifica2.Enabled:=true;
CARAC.Text:=trim(grilla2.Cells[2,grilla2.Row]);
TELF.Text:=trim(grilla2.Cells[3,grilla2.Row]);
ORIGEN.Text:=trim(grilla2.Cells[4,grilla2.Row]);
CARAC.SetFocus;
end;

procedure TAM_Cli.JvBitBtn2Click(Sender: TObject);
begin
  BusDir.InitialDir:=modulo2.path_todo + '\Fotos\'; ;
  Busdir.FileName:=trim(DNI.Text)+'.jpg';
  busdir.Execute;
  PATH.Text:=trim(DNI.Text)+'.jpg';
  FOTO.Picture.LoadFromFile(busdir.FileName);
end;

procedure TAM_Cli.JvBitBtn1Click(Sender: TObject);
var AM_CaptImg: TAM_CaptImg;
begin
ArchivoImg:='';
AM_CaptImg:= TAM_CaptImg.create(self);
try
  AM_CaptImg.ShowModal;
  ArchivoImg:=AM_CaptImg.DIRECTORIO.Text;
  PATH.Text:=trim(DNI.Text)+'.jpg';
finally
  AM_CaptImg.destroy;
end;
end;

procedure TAM_Cli.PROFESKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  PROVINC.SetFocus;
end;
end;

procedure TAM_Cli.PROFESExit(Sender: TObject);
begin
if PROFES.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe la Profesión Ingresado!!',mterror,[mbok],0);
  PROFES.SetFocus;
end;
end;

procedure TAM_Cli.NroProfesClick(Sender: TObject);
var AM_Generico:TAM_Generico;
begin
AM_Generico:=TAM_Generico.Create(self);
try
  AM_Generico.NroOpcion:=6;
  AM_Generico.Titulo1:='Profesiones';
  AM_Generico.ShowModal;
finally
  AM_Generico.Destroy;
  Coloca1(13);
  PROFES.SetFocus;
end;
end;

procedure TAM_Cli.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_F4 then GUARDA.Click;
//if key = VK_F11 then LIMPIAR.Click;
if key = VK_ESCAPE	then SALIR.Click;
end;

procedure TAM_Cli.SALIRClick(Sender: TObject);
begin
close;
end;

procedure TAM_Cli.JUBILKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  categoria.SetFocus;
end;
end;

procedure TAM_Cli.ONOMBChange(Sender: TObject);
var     Funciones:TFuncionesVarias;
  txtw:widestring;
begin
{ if (length(trim(ONOMB.Text))> 2) then begin
  DataSet.Free;
  Dataset:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=Dataset;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  //txtw:='SELECT * FROM Fn_VistaClientes (null,null,null,null,null,null,100)'
  txtw:='SELECT * FROM Fn_VistaClientesxNombre (0)'
  +' where RazonSocial like ' +  QuotedStr(trim(onomb.Text) + '%') + ' order by RazonSocial';
  if not Funciones.Listar(txtw,DataSet)  then begin
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    Funciones.Free;
  end;
  if not Dataset.IsEmpty then begin
   DBGrid1.Columns[0].Width:=60;
   DBGrid1.Columns[1].Width:=80;
   DBGrid1.Columns[2].Width:=250;
   DBGrid1.Columns[3].Width:=50;
   DBGrid1.Columns[4].Width:=50;
   DBGrid1.Columns[5].Width:=100;
   DBGrid1.Columns[6].Width:=50;
   DBGrid1.Columns[7].Width:=90;
   DBGrid1.Columns[8].Width:=60;
   DBGrid1.Columns[9].Width:=170;
   DBGrid1.Columns[10].Width:=150;
   DBGrid1.Columns[11].Width:=65;
   DBGrid1.Columns[12].Width:=50;
   DBGrid1.Columns[13].Width:=20;
   DBGrid1.Columns[14].Width:=50;
   DBGrid1.Columns[15].Width:=180;
  end;
 end; }
end;


procedure TAM_Cli.CARACExit(Sender: TObject);
begin
if (trim(CARAC.Text) = '') or (trim(CARAC.Text) = '0')  then begin
  messagedlg('Error!! No hay una Caracteristica de Telefono Ingresada.',mterror,[mbok],0);
  CARAC.SetFocus
end;
end;

end.

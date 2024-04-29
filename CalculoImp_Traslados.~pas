unit CalculoImp_Traslados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, JvExGrids, JvStringGrid, StdCtrls, JvgGroupBox, Mask,DBClient,
  DBGrids, JvExDBGrids, JvDBGrid, Buttons, JvExButtons, JvBitBtn, ExtCtrls,
  ComCtrls, DB,DBCtrls,StrUtils, ToolWin,ClaseSistemas,ClaseFunciones,ADODB,
  RpDefine, RpBase, RpSystem, JvExStdCtrls, JvEdit, JvValidateEdit,
  ClaseParcelasMovimientosDiarrioDetalle,
  ClaseParcelasServiciosTrasladosDeudas,
  ClaseParcelasServiciosTrasladosEstados, JvSimLogic;

type LosDts = class(TDataSource);
type HackTable = class(TADOTable);

type THackStringGrid = class(TStringGrid);
type
  Tcaulculo_LosTraslados = class(TForm)
    PC1: TPageControl;
    TabSheet3: TTabSheet;
    Barra1: TStatusBar;
    ToolBar1: TToolBar;
    JvBitBtn3: TJvBitBtn;
    RvOrden: TRvSystem;
    TP: TClientDataSet;
    DataSource1: TDataSource;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    grupo1: TGroupBox;
    LB7: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    JvSIMConnector1: TJvSIMConnector;
    JvSIMConnector2: TJvSIMConnector;
    E5: TEdit;
    origen: TComboBox;
    kms: TEdit;
    FIJO: TEdit;
    NAFTA: TEdit;
    Image1: TImage;
    procedure FormActivate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure JvBitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure E5Exit(Sender: TObject);
    procedure E5KeyPress(Sender: TObject; var Key: Char);
    procedure origenExit(Sender: TObject);
    procedure origenKeyPress(Sender: TObject; var Key: Char);
    procedure Limpiar(nro:byte);
    procedure kmsExit(Sender: TObject);
    procedure kmsKeyPress(Sender: TObject; var Key: Char);
  //  procedure horasaleExit(Sender: TObject);

  private
   control,gh:boolean;
   Funciones:TFuncionesVarias;
   Sistemas:TSistemas;
   ParcelasMovimientosDiarrioDetalle:TParcelasMovimientosDiarrioDetalle;
   IdCombos:array of array of string;
   edadsusc,dnisusc,domsusc,edadinhu,dniinhu,dominhu,sexoinhu,nroorden,valorpago,
   edadt1,dnit1,domt1,edadt2,dnit2,domt2,fecnacinhu,tipocomprob,laobserva,idcrema,iddestino,valorkm:string;
   ParcelasServiciosTrasladosDeudas:TParcelasServiciosTrasladosDeudas;
   ParcelasServiciosTrasladosEstados:TParcelasServiciosTrasladosEstados;
    { Private declarations }
  public
    PROCESO: TADODataSet;
    DataSet,DtCombo,DtComboC,DtComboO,DataSetSaldo:TClientDataSet; //declaro el DAtaset de los Combobox
    DSGral:TClientDataSet;//declaro el DAtaset de la grilla
    ///// para la impresion de datos segun parametros
    PosH2:Array [0..4] of Double;//Posiciones
    Camp2:Array [0..4] of Integer;//Campos a Tomar en cuenta
    TxtCamp2:Array [0..4] of String;//Textos de los Campos a Tomar en cuenta
    { Public declarations }
  end;

var
  caulculo_LosTraslados: Tcaulculo_LosTraslados;

implementation

uses Modulo,Unidad,SelecCuotas,Busqueda,AM_VenGenerica;

{$R *.dfm}


procedure Tcaulculo_LosTraslados.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure Tcaulculo_LosTraslados.FormActivate(Sender: TObject);
begin
 if not(gh) then begin
  gh:=true;
  PROCESO:=TADODataSet.Create(nil);
  PROCESO.ConnectionString:=modulo2.Conexion;
  setlength(IdCombos,5);
  PC1.ActivePage:=PC1.Pages[0];
  //fecnac.Text:=LeftStr(Fec_System(),10);
  coloca1(10);
  coloca1(18);
  coloca1(14);
  coloca1(21);
  //sale.Enabled :=false;
  //actu.Enabled :=false;
  origen.SetFocus;
 end;
end;

procedure Tcaulculo_LosTraslados.limpiar(nro:byte);
begin
///
end;

procedure Tcaulculo_LosTraslados.Coloca1(nro:byte);
var t,y:integer;
    txt,sex,nrosoli:string;
    txtw:widestring;
    Funciones:TFuncionesVarias;
    Sistema:TSistemas;
    NroDni,NroCuif,NroArea:variant;
begin
 if nro=0 then begin
  DtComboO.Free;
  DtComboO:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT  Descripcion, case when Descripcion = ''EN EGIDO MUNCIPAL'' then ''SI'' else ''NO'' end as Fijo, '
  +' ImporteFijo AS valorcombustible fROM ParcelasServiciosTrasladosOrigen WHERE  (Activo = 1) '
  + ' and Descripcion = ' + chr(39) + trim(origen.Text) + chr(39);
  if not Funciones.Listar(txtw,DtComboO) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  FIJO.Text :=trim(DtComboO.Fields[1].AsString);
  NAFTA.Text :=trim(DtComboO.Fields[2].AsString);
 END;
 if nro=7 then begin
 end;
 if nro=10 then begin //Combo origen servicio   idcombo 3
  Origen.Clear;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if Funciones.listar('SELECT Id,Descripcion FROM ParcelasServiciosTrasladosOrigen where activo=1 order by 1 asc',DtCombo) then begin
   SetLength(IdCombos[3],DtCombo.RecordCount);
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    Origen.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
    IdCombos[3,t-1]:=DtCombo.Fields[0].AsString;
   end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  Origen.ItemIndex:=0;
 end;
 if nro=18 then begin
  DtComboO.Free;
  DtComboO:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT Importetotal FROM ParcelasServiciosTrasladosOrigen where Activo=1 ' //and ImporteFijo is not null '
  + ' and Descripcion = ' + chr(39) + trim(origen.Text) + chr(39);
  if not Funciones.Listar(txtw,DtComboO) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  e5.Text :=trim(DtComboO.Fields[0].AsString);
 end;
 if nro=20 then begin
  DtComboO.Free;
  DtComboO:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT COUNT(*) FROM dbo.ParcelasServiciosTraslados';
  if not Funciones.Listar(txtw,DtComboO) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  nroorden:=trim(DtComboO.Fields[0].AsString);
 end;
 if nro=21 then begin
  DtComboO.Free;
  DtComboO:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  //if valorkm then begin
    txtw:='SELECT importefijo FROM ParcelasServiciosTrasladosOrigen where Activo=1 '
    +' and Descripcion = ' + chr(39) + trim(origen.Text) + chr(39);
    if not Funciones.Listar(txtw,DtComboO) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    Funciones.Free;
    valorkm:=trim(DtComboO.Fields[0].AsString);
  //end
  //else valorkm:='1';
  end;
end;

procedure Tcaulculo_LosTraslados.JvBitBtn3Click(Sender: TObject);
begin
close;
end;

procedure Tcaulculo_LosTraslados.E5Exit(Sender: TObject);
begin
 if (trim(E5.Text) = '')  or (trim(E5.Text) = '0') then begin
  messagedlgpos('Error!! El Importe del Traslado esta Ingresado Incorrectamente.',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  E5.SetFocus;
 end;
end;

procedure Tcaulculo_LosTraslados.E5KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
   Key := #0;
   JvBitBtn3.SetFocus;
  end
  else begin
   if ( StrScan('0123456789.',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
    else Key := #0;
  end;
end;

procedure Tcaulculo_LosTraslados.origenExit(Sender: TObject);
begin
 if origen.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe un origen de Servicio Ingresado!!',mterror,[mbok],0);
  origen.SetFocus;
 end
 ELSE BEGIN
   Coloca1(0);
   KMS.Text:='1';
   E5.Text:= TRIM(NAFTA.Text) ;
   kms.SetFocus;
   //if trim(origen.Text)='EN EGIDO MUNCIPAL'  THEN  E5.Text:= TRIM(NAFTA.Text)
   //ELSE
 END
end;

procedure Tcaulculo_LosTraslados.origenKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
   Coloca1(0);
   KMS.Text:='1';
   E5.Text:= TRIM(NAFTA.Text) ;
   kms.SetFocus;
 end;
end;

procedure Tcaulculo_LosTraslados.kmsExit(Sender: TObject);
begin
  if (trim(kms.Text) = '') or (trim(kms.Text) = '0') then begin
   messagedlg('Error!! No hay un Kilometreja Ingresado.',mterror,[mbok],0);
   kms.SetFocus
  end
  else begin
    coloca1(21);
    if trim(origen.Text)='EN EGIDO MUNCIPAL' then BEGIN
     kms.Text := '1' ;
     e5.Text := TRIM(NAFTA.Text);
    END
    else e5.Text := floattostr(strtofloat(kms.Text) * strtofloat(valorkm))
  end;
end;

procedure Tcaulculo_LosTraslados.kmsKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
   Key := #0;
   JvBitBtn3.SetFocus;
  end
  else begin
   if ( StrScan('0123456789.',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
    else Key := #0;
  end;
end;

end.





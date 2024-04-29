unit AM_Acreditacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, DBCtrls, Grids,  StdCtrls, Mask, ExtCtrls, DBGrids,
  ComCtrls, ADODB, DB, ImgList, JvExButtons, JvBitBtn, ToolWin, JvgGroupBox,
  Unidad, DBClient, WSDLIntf, ClaseFunciones, StrUtils, ClaseAcreditaciones,
  ClaseSistemas,ClaseParcelasMantenimientoPagosPeriodos,ClaseAcreditacionesPeriodos;

type LosEdit = class(TEdit);
type
  TAM_Acreditaciones = class(TForm)
    PC1: TPageControl;
    TabSheet3: TTabSheet;
    DBGrid1: TDBGrid;
    Shape3: TShape;
    Shape1: TShape;
    Label45: TLabel;
    Label46: TLabel;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    Shape2: TShape;
    DataSource1: TDataSource;
    ImageList1: TImageList;
    Barra1: TStatusBar;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    Limpiar: TJvBitBtn;
    ToolButton2: TToolButton;
    GUARDA: TJvBitBtn;
    ToolButton3: TToolButton;
    JvBitBtn1: TJvBitBtn;
    CONFIRMA: TJvBitBtn;
    ANULA: TJvBitBtn;
    ToolButton1: TToolButton;
    ToolButton5: TToolButton;
    JvgGroupBox1: TJvgGroupBox;
    PC2: TPageControl;
    TabSheet5: TTabSheet;
    JvgGroupBox7: TJvgGroupBox;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    D29: TEdit;
    D30: TEdit;
    D31: TEdit;
    D32: TEdit;
    D33: TEdit;
    D34: TEdit;
    D36: TEdit;
    D37: TEdit;
    D38: TEdit;
    TabSheet6: TTabSheet;
    JvgGroupBox2: TJvgGroupBox;
    Label14: TLabel;
    Label26: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label31: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    D1: TEdit;
    D2: TEdit;
    D3: TEdit;
    D4: TEdit;
    D5: TEdit;
    D6: TEdit;
    D7: TEdit;
    D8: TEdit;
    D9: TCheckBox;
    TabSheet7: TTabSheet;
    JvgGroupBox4: TJvgGroupBox;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    D10: TEdit;
    D11: TEdit;
    D12: TEdit;
    D13: TEdit;
    D14: TEdit;
    D15: TEdit;
    D16: TEdit;
    D17: TEdit;
    D18: TEdit;
    D19: TEdit;
    TabSheet8: TTabSheet;
    JvgGroupBox6: TJvgGroupBox;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    D20: TEdit;
    D21: TEdit;
    D22: TEdit;
    D23: TEdit;
    D24: TEdit;
    D25: TEdit;
    D26: TEdit;
    D27: TEdit;
    D28: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    TPOOBJ: TComboBox;
    Label8: TLabel;
    NROCUENTA: TEdit;
    BusCodPos: TJvBitBtn;
    Bevel1: TBevel;
    C1: TRadioButton;
    C2: TRadioButton;
    C3: TRadioButton;
    C0: TRadioButton;
    Buscar: TJvBitBtn;
    Label15: TLabel;
    ODNI: TEdit;
    FEC: TMaskEdit;
    Label4: TLabel;
    grupo1: TJvgGroupBox;
    Label30: TLabel;
    Label38: TLabel;
    Label23: TLabel;
    Label32: TLabel;
    Label11: TLabel;
    FECINI: TMaskEdit;
    RECIBO1: TEdit;
    IMPORTE: TEdit;
    CH1: TCheckBox;
    DESCRIP: TEdit;
    IDENTIF: TEdit;
    GroupBox1: TGroupBox;
    GR2: TStringGrid;
    periodos: TJvBitBtn;
    C4: TCheckBox;
    C6: TCheckBox;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure TPOOBJKeyPress(Sender: TObject; var Key: Char);
    procedure TPOOBJExit(Sender: TObject);
    procedure NROCUENTAKeyPress(Sender: TObject; var Key: Char);
    procedure NROCUENTAExit(Sender: TObject);
    procedure BusCodPosClick(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure C0Click(Sender: TObject);
    procedure BuscarClick(Sender: TObject);
    procedure FECINIKeyPress(Sender: TObject; var Key: Char);
    procedure FECINIExit(Sender: TObject);
    procedure RECIBO1KeyPress(Sender: TObject; var Key: Char);
    procedure IMPORTEKeyPress(Sender: TObject; var Key: Char);
    procedure CH1KeyPress(Sender: TObject; var Key: Char);
    procedure DESCRIPKeyPress(Sender: TObject; var Key: Char);
    procedure RECIBO1Change(Sender: TObject);
    procedure GUARDAClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure LimpiarClick(Sender: TObject);
    procedure LimpiarVentana(nro:byte);
    procedure CONFIRMAClick(Sender: TObject);
    procedure ANULAClick(Sender: TObject);
    procedure FECKeyPress(Sender: TObject; var Key: Char);
    procedure FECExit(Sender: TObject);
    procedure IMPORTEExit(Sender: TObject);
    procedure periodosClick(Sender: TObject);
    procedure GR2Click(Sender: TObject);
    procedure GR2DblClick(Sender: TObject);
  private
    IdCombos:array of array of string;
    DataSet0,DataSet1,DtCombo,DtCombPeri:TClientDataSet;
    IdPagos:array of array of string;
    Funciones:TFuncionesVarias;
    Acreditaciones:TAcreditaciones;
    Sistemas:TSistemas;
    ParcelasMantenimientoPagosPeriodos:TParcelasMantenimientoPagosPeriodos;
    AcreditacionesPeriodos:TAcreditacionesPeriodos;
    FechaActual,MotAnula,FecAnula,ELID:string;
    TiposObjetos:Unidad.TablaXML;{ Private declarations }
  public
    gh:boolean;{ Public declarations }
  end;

var
  AM_Acreditaciones: TAM_Acreditaciones;

implementation

uses Modulo, Busqueda, Anula_Generica,SelecPagos;

{$R *.dfm}

procedure TAM_Acreditaciones.FormActivate(Sender: TObject);
begin
if not(gh) then begin
  gh:=true;
  setlength(IdCombos,1);
  GR2.Cells[0,0]:='Cuota/Periodo';
  GR2.Cells[1,0]:='ImpCuota';
  GR2.Cells[2,0]:='TotCuota';
  GR2.Cells[3,0]:='Selec.';
  pc1.Pages[0].TabVisible:=false;
  FechaActual:=LeftStr(Fec_System(),10);
  PC1.ActivePage:=PC1.Pages[1];
  PC2.ActivePage:=PC2.Pages[0];
  FEC.Text:=FechaActual;
  FECINI.Text:=FechaActual;
  Coloca1(1);
  tpoobj.SetFocus;
  //ODNI.SetFocus;
end;
end;

procedure TAM_Acreditaciones.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TAM_Acreditaciones.Coloca1(nro:byte);
var t,y,r,s,p:integer;
    Ident,NroObj,NroCta:variant;
    txt:string;
    txtw:widestring;
    tot:real;
    Ok:boolean;
begin
 if nro=1 then begin //Combo TipoObjetos
  TPOOBJ.Clear;
  TiposObjetos:=LeeXML('TiposObjetos','');
  if length(TiposObjetos) <> 0 then begin
   SetLength(IdCombos[0],High(TiposObjetos[1]) + 1);
   for t:=0 to High(TiposObjetos[1])  do begin
    TPOOBJ.Items.Insert(t,TiposObjetos[1,t]);
    IdCombos[0,t]:=TiposObjetos[0,t];
   end;
  end
  else begin
   DtCombo.Free;
   DtCombo:=TClientdataSet.Create(nil);
   Funciones:=TFuncionesVarias.Create(nil);
   Funciones.ConnectionString:=modulo2.Conexion;
   if not Funciones.Listar('SELECT NroTipo,Detalle,InicioDeuda FROM TiposObjetos Order by Detalle',DtCombo) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
    else begin
    SetLength(IdCombos[3],DtCombo.RecordCount);
    for t:=1 to DtCombo.RecordCount  do begin
     DtCombo.RecNo:=t;
     TPOOBJ.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
     IdCombos[0,t-1]:=DtCombo.Fields[0].AsString;
    end;
   end;
   Funciones.Free;
  end;
  TPOOBJ.ItemIndex:=0;
 end;
 if nro=2 then begin //Datos de las Acciones
  DataSet1.Free;
  DataSet1:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if IdCombos[0,TPOOBJ.ItemIndex] = '3' then begin  //Mantenimiento
   Ident:=NROCUENTA.Text;NroObj:=null;
   if not Funciones.Run_Fn_VistaParcelasMantenimientoTitulares(Ident,'','',NroObj,DataSet1,'',0) then
   messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
   else begin
    if not DataSet1.IsEmpty then begin
     D1.Text:=DataSet1.Fields[1].AsString;
     D2.Text:=DataSet1.Fields[13].AsString;
     D3.Text:=DataSet1.Fields[11].AsString;
     D4.Text:=DataSet1.Fields[2].AsString;
     if DataSet1.Fields[15].AsString = 'True' then D9.Checked:=true
     else D9.Checked:=false;
     if D9.Checked then D5.Text:=DataSet1.Fields[4].AsString
     else D5.Text:=DataSet1.Fields[3].AsString;
     D6.Text:=DataSet1.Fields[8].AsString;
     D7.Text:=DataSet1.Fields[10].AsString;
     D8.Text:=DataSet1.Fields[9].AsString;
    end
    else messagedlg('ERROR!! N° ACCION NO encontrado. Verifique el valor ingresado',mtError,[mbok],0);
   end;
   PC2.ActivePage:=PC2.Pages[1];
  end;

  if IdCombos[0,TPOOBJ.ItemIndex] = '1' then begin   //Ventas
   Ident:=NROCUENTA.Text;NroObj:=null;
   if not Funciones.Run_Fn_VistaParcelasVentasTitulares(NroObj,Ident,'',true,false,'',NroObj,DataSet1,'',0) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
   else begin
    if not DataSet1.IsEmpty then begin
     D20.Text:=DataSet1.Fields[0].AsString;
     D21.Text:=DataSet1.Fields[1].AsString;
     D22.Text:=DataSet1.Fields[21].AsString;
     D23.Text:=DataSet1.Fields[19].AsString;
     D24.Text:=DataSet1.Fields[2].AsString;
     D25.Text:=DataSet1.Fields[5].AsString;
     D26.Text:=DataSet1.Fields[14].AsString;
     D27.Text:=DataSet1.Fields[16].AsString;
     D28.Text:=DataSet1.Fields[15].AsString;
    end
    else messagedlg('ERROR!! N° de VENTA NO encontrado. Verifique el valor ingresado',mtError,[mbok],0);
   end;
   PC2.ActivePage:=PC2.Pages[3];
  end;

  if IdCombos[0,TPOOBJ.ItemIndex] = '2' then begin   //Servicios
   Ident:=NROCUENTA.Text;NroObj:=null;
   if not Funciones.Run_Fn_VistaParcelasServiciosTitulares(NroObj,Ident,'',true,false,'',NroObj,DataSet1,'',0) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
   else begin
    if not DataSet1.IsEmpty then begin
     D10.Text:=DataSet1.Fields[0].AsString;
     D11.Text:=DataSet1.Fields[1].AsString;
     D12.Text:=DataSet1.Fields[24].AsString;
     D13.Text:=DataSet1.Fields[22].AsString;
     D14.Text:=DataSet1.Fields[2].AsString;
     D15.Text:=DataSet1.Fields[7].AsString;
     D16.Text:=DataSet1.Fields[19].AsString;
     D17.Text:=DataSet1.Fields[21].AsString;
     D18.Text:=DataSet1.Fields[20].AsString;
     D19.Text:=DataSet1.Fields[26].AsString;
    end
    else messagedlg('ERROR!! N° de SERVICIO NO encontrado. Verifique el valor ingresado',mtError,[mbok],0);
   end;
   PC2.ActivePage:=PC2.Pages[2];
  end;

  if IdCombos[0,TPOOBJ.ItemIndex] = '4' then begin   //Consolidado
   Ident:=NROCUENTA.Text;
   NroObj:=null;
    if not Funciones.Listar('SELECT * FROM Fn_VistaParcelasConsolidadosTitulares (' +Ident +',null,null,null,0)',DataSet1) then
   //if not Funciones.Run_Fn_VistaParcelasConsolidadosTitulares(Ident,NroObj,'',NroObj,DataSet1,'',0) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
   else begin
    if not DataSet1.IsEmpty then begin
     D29.Text:=DataSet1.Fields[0].AsString;
     D30.Text:=DataSet1.Fields[1].AsString;
     D31.Text:=DataSet1.Fields[8].AsString;
     D32.Text:=DataSet1.Fields[6].AsString;
     D33.Text:=DataSet1.Fields[2].AsString;
     D36.Text:=DataSet1.Fields[3].AsString;
     D37.Text:=DataSet1.Fields[5].AsString;
     D38.Text:=DataSet1.Fields[4].AsString;
    end
    else messagedlg('ERROR!! CONSOLIDADO NO encontrado. Verifique el valor ingresado',mtError,[mbok],0);
   end;
   PC2.ActivePage:=PC2.Pages[0];
  end;
  Funciones.Free;
 end;
 if nro = 3 then begin
  DataSet0.Free;
  DataSet0:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=DataSet0;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if C1.Checked then begin
    Ident:=null;NroObj:=null;NroCta:=null;txt:=FEC.Text;
  end;
  if C2.Checked then begin
    Ident:=ODNI.Text;NroObj:=null;NroCta:=null;txt:='';
  end;
  if C3.Checked then begin
    Ident:=null;NroObj:=null;NroCta:=ODNI.Text;txt:='';
  end;
  if C0.Checked then begin
    Ident:=null;NroObj:=null;NroCta:=null;txt:='';
  end;
  if not Funciones.Run_Fn_VistaAcreditaciones(Ident,NroCta,txt,NroObj,DataSet0,'',0) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if not DataSet0.IsEmpty then Barra1.Panels[1].Text:='Cant. Reg.: ' + IntToStr(DataSet0.RecordCount);
 end;
 if nro=4 then begin
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if not Funciones.Listar('select MAX(idpago) from ParcelasMantenimientoPagos where NroAccion=' + trim(nrocuenta.Text),DtCombo) then
   messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
   ELID:=trim(DtCombo.Fields[0].AsString);
  end;
  DtCombo.Free;
 end;
 if nro = 5  then begin
  if (IdCombos[0,TPOOBJ.ItemIndex] = '3') then begin
   coloca1(4);
   for p:=1 to GR2.RowCount-1 do begin
    if trim(GR2.Cells[3,p]) = 'X' then begin
     ParcelasMantenimientoPagosPeriodos:=TParcelasMantenimientoPagosPeriodos.Create(nil);
     ParcelasMantenimientoPagosPeriodos.ConnectionString:=modulo2.Conexion;
     ParcelasMantenimientoPagosPeriodos.C_IdMantenimientoPagos:=ELID;
     ParcelasMantenimientoPagosPeriodos.C_Periodo:=strtoint64(GR2.Cells[0,p]);
     Ok:=ParcelasMantenimientoPagosPeriodos.Agrega;
     if Ok then Barra1.Panels[1].Text:='Se Guardado la accion:' + trim(nrocuenta.Text)
       else Barra1.Panels[1].Text:='Error al Guardar los Titulares';
     ParcelasMantenimientoPagosPeriodos.Free;
    end;
   end;
  end
  else begin
  end;
 end;
 if nro=6 then  begin
  DtCombPeri:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if (IdCombos[0,TPOOBJ.ItemIndex] = '2') then begin    /// estado de cueta servcios
   GR2.Cells[0,0]:='Cuota/Periodo';
   GR2.Cells[1,0]:='ImpCuota';
   GR2.Cells[2,0]:='IdServicio';
   GR2.Cells[3,0]:='Selec.';
   if not Funciones.Listar('select nrocuota,totalcuota,idservicio from EstadoCuentaServiciosTotalesxAccion  ' +
   '(' + trim(nrocuenta.Text) + ',getdate(),0) where EstadoPago=''DEUDA'' order by idservicio,nrocuota',DtCombPeri) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
   else begin
    for t:=1 to DtCombPeri.RecordCount do begin
     DtCombPeri.RecNo:=t;
     GR2.RowCount:=t+1;
     GR2.Cells[0,t]:=DtCombPeri.Fields[0].AsString;
     GR2.Cells[1,t]:=DtCombPeri.Fields[1].AsString;
     GR2.Cells[2,t]:=DtCombPeri.Fields[2].AsString;
     GR2.Cells[3,t]:='';
    end;
   end;
   GroupBox1.Visible:=true;
  end;

  if (IdCombos[0,TPOOBJ.ItemIndex] = '3') then begin    /// estado de cueta mantenimiento
   if not Funciones.Listar('select Periodo,ImporteCuota,TotalCuota from EstadoCuentaMantenimiento  ' +
   '(' + trim(nrocuenta.Text) + ',getdate(),0) where EstadoPago=''DEUDA'' order by periodo',DtCombPeri) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
   else begin
    for t:=1 to DtCombPeri.RecordCount do begin
     DtCombPeri.RecNo:=t;
     GR2.RowCount:=t+1;
     GR2.Cells[0,t]:=DtCombPeri.Fields[0].AsString;
     GR2.Cells[1,t]:=DtCombPeri.Fields[1].AsString;
     GR2.Cells[2,t]:=DtCombPeri.Fields[2].AsString;
     GR2.Cells[3,t]:='';
    end;
   end;
   GroupBox1.Visible:=true;
  end;

  if (IdCombos[0,TPOOBJ.ItemIndex] = '1') then begin  /// estado de cueta ventas
   if not Funciones.Listar('select NroCuota,ImporteCuota,TotalCuota  from EstadoCuentaVentas ' +
   '(' + trim(nrocuenta.Text) + ',getdate(),0) where Periodo <> 999999 and EstadoPago=''deuda'' order by 1',DtCombPeri) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
   else begin
    for t:=1 to DtCombPeri.RecordCount do begin
     DtCombPeri.RecNo:=t;
     GR2.RowCount:=t+1;
     GR2.Cells[0,t]:=DtCombPeri.Fields[0].AsString;
     GR2.Cells[1,t]:=DtCombPeri.Fields[1].AsString;
     GR2.Cells[2,t]:=DtCombPeri.Fields[2].AsString;
     GR2.Cells[3,t]:='';
    end;
   end;
   GroupBox1.Visible:=true;
  end;
  DtCombPeri.Free;
 end;

end;

procedure TAM_Acreditaciones.TPOOBJKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  NROCUENTA.SetFocus;
end;
end;

procedure TAM_Acreditaciones.TPOOBJExit(Sender: TObject);
var tipo:integer;
begin
if TPOOBJ.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Objeto Ingresado!!',mterror,[mbok],0);
  TPOOBJ.SetFocus;
end
else begin
 if TPOOBJ.ItemIndex=1 then PC2.ActivePage:=PC2.Pages[0];
 if TPOOBJ.ItemIndex=2 then PC2.ActivePage:=PC2.Pages[1];
 if TPOOBJ.ItemIndex=5 then PC2.ActivePage:=PC2.Pages[2];
 if TPOOBJ.ItemIndex=7 then PC2.ActivePage:=PC2.Pages[3];
end;
end;

procedure TAM_Acreditaciones.NROCUENTAKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  FECINI.SetFocus;
end
else begin
  if ( StrScan('0123456789',Key) <> nil ) or
      ( Key = Char(VK_BACK) ) then
   else Key := #0;
end;
end;

procedure TAM_Acreditaciones.NROCUENTAExit(Sender: TObject);
var Paso:boolean;
begin
if BusCodPos.Focused or TPOOBJ.Focused then
else begin
  //Buscamos los datos de la cuenta.
  Paso:=true;
  if trim(NROCUENTA.Text) = '' then Paso:=false;
  if Paso then begin
  //Comprobamos que no sea cero
    try
      if StrToInt(trim(NROCUENTA.Text)) = 0 then Paso:=false;
    except
      Paso:=false;
    end;
  end;
  if Paso then begin
    Coloca1(2);
    if DataSet1.IsEmpty then BusCodPos.SetFocus;
  end
  else BusCodPos.SetFocus;
end;
end;

procedure TAM_Acreditaciones.BusCodPosClick(Sender: TObject);
var Busqueda:TLA_BUSQUEDA;
begin
Busqueda:=TLA_BUSQUEDA.Create(self);
try
  if IdCombos[0,TPOOBJ.ItemIndex] = '1' then Busqueda.NroOpcion:=4;
  if IdCombos[0,TPOOBJ.ItemIndex] = '2' then Busqueda.NroOpcion:=5;
  if IdCombos[0,TPOOBJ.ItemIndex] = '3' then Busqueda.NroOpcion:=6;
  Busqueda.ShowModal;
  NROCUENTA.Text:=Busqueda.DB1.Text;
finally
  Busqueda.Destroy;
end;
end;

procedure TAM_Acreditaciones.C1Click(Sender: TObject);
begin
Label15.Visible:=true;
ODNI.Visible:=false;
FEC.Visible:=false;
if C1.Checked then begin
  Label15.Caption:='Ingrese Fecha:';
  FEC.Visible:=true;
  FEC.SetFocus;
end;
if C2.Checked then begin
  Label15.Caption:='Ingrese N° Acreditación:';
  ODNI.Visible:=true;
  ODNI.SetFocus;
end;
if C3.Checked then begin
  Label15.Caption:='Ingrese N° Acción:';
  ODNI.Visible:=true;
  ODNI.SetFocus;
end;
end;

procedure TAM_Acreditaciones.C0Click(Sender: TObject);
begin
Label15.Visible:=false;
ODNI.Visible:=false;
FEC.Visible:=false;
Buscar.SetFocus;
end;

procedure TAM_Acreditaciones.BuscarClick(Sender: TObject);
begin
Coloca1(3);
end;

procedure TAM_Acreditaciones.FECINIKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  RECIBO1.SetFocus;
end;
end;

procedure TAM_Acreditaciones.FECINIExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(FECINI.Text));
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  FECINI.SetFocus;
end;
end;

procedure TAM_Acreditaciones.RECIBO1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  IMPORTE.SetFocus;
end
else begin
  if ( StrScan('0123456789',Key) <> nil ) or
      ( Key = Char(VK_BACK) ) then
   else Key := #0;
end;
end;

procedure TAM_Acreditaciones.IMPORTEKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  CH1.SetFocus;
end
else begin
  if ( StrScan('0123456789.',Key) <> nil ) or
      ( Key = Char(VK_BACK) ) then
   else Key := #0;
end;
end;

procedure TAM_Acreditaciones.CH1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  DESCRIP.SetFocus;
end;
end;

procedure TAM_Acreditaciones.DESCRIPKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  if GUARDA.Enabled then GUARDA.SetFocus;
end;
end;

procedure TAM_Acreditaciones.RECIBO1Change(Sender: TObject);
begin
C4.Checked:=true;
GUARDA.Enabled:=true;
end;

procedure TAM_Acreditaciones.GUARDAClick(Sender: TObject);
var TodoOk1,Ok:boolean;
var t:integer;
    valor:string;
begin
if not C6.Checked then begin //Altas
 if (IdCombos[0,TPOOBJ.ItemIndex] = '2') then begin
 {    GR2.Cells[0,0]:='Cuota/Periodo';
    GR2.Cells[1,0]:='ImpCuota';
    GR2.Cells[2,0]:='IdServicio';
    GR2.Cells[3,0]:='Selec.';}
   for t:=1 to GR2.RowCount-1 do begin
    if trim(GR2.Cells[3,t]) = 'X' then begin
        Acreditaciones:=TAcreditaciones.Create(nil);
        Acreditaciones.ConnectionString:=modulo2.Conexion;
        Acreditaciones.C_IdObjeto_IX1:=trim(NROCUENTA.Text);
        Acreditaciones.C_NroObjeto_IX2:=IdCombos[0,TPOOBJ.ItemIndex];
        Acreditaciones.C_CuentaCliente:=trim(GR2.Cells[2,t]);
        Acreditaciones.C_FechaCarga_IX3:=FECINI.Text;
        Acreditaciones.C_NroRecibo:=RECIBO1.Text;
        Acreditaciones.C_MontoAcreditado:=IMPORTE.Text;
        Acreditaciones.C_Motivo:=DESCRIP.Text;
        Acreditaciones.C_Anulado:=false;
        Acreditaciones.C_FechaAnula:='';
        Acreditaciones.C_MotivoAnula:='';
        Acreditaciones.C_UsuAnula:=null;
        Acreditaciones.C_Confirmado:=true;
        Acreditaciones.C_UsuConfirma:=modulo2.nro_usu;
        Acreditaciones.C_FechaConfirma:=FECINI.Text;
        Acreditaciones.C_Usu_A:=modulo2.nro_usu;
        Acreditaciones.C_Usu_M:=null;
        Acreditaciones.C_Fecha_M:='';
        Acreditaciones.C_NoProcesar:=CH1.Checked;
        Acreditaciones.C_EnMovimientos:=false;
        TodoOk1:=Acreditaciones.Agrega;
        valor:=Acreditaciones.Identidad;
        Acreditaciones.Free;
        if TodoOk1 then begin
          /// inserto en acreditaciones periodos       NroCuota,ImporteCuota,TotalCuota
              //for t:=1 to GR2.RowCount-1 do begin
                //if trim(GR2.Cells[3,t]) = 'X' then begin
                  AcreditacionesPeriodos:=TAcreditacionesPeriodos.Create(nil);
                  AcreditacionesPeriodos.ConnectionString:=modulo2.Conexion;
                  AcreditacionesPeriodos.C_NroAccion:=trim(nrocuenta.Text);
                  AcreditacionesPeriodos.C_NroTipoObjeto:=IdCombos[0,TPOOBJ.ItemIndex];
                  AcreditacionesPeriodos.C_IdAcreditacion:=strtoint(valor);
                  AcreditacionesPeriodos.C_Periodo:=trim(GR2.Cells[0,t]);
                  AcreditacionesPeriodos.C_ImporteCuota:=trim(GR2.Cells[1,t]);
                  AcreditacionesPeriodos.C_TotalCuota:=trim(GR2.Cells[1,t]);
                  Ok:=AcreditacionesPeriodos.Agrega;
                  AcreditacionesPeriodos.Free;
                  if Ok then Barra1.Panels[1].Text:='Periodos guardados Correctamente'
                             else Barra1.Panels[1].Text:='Periodos guardados con ERROR';
                //end;
              //end;
          //coloca1(5);
          messagedlg('Se ha Guardado la Acreditación con Exito',mtConfirmation,[mbok],0);
          //LimpiarVentana(1);
          TPOOBJ.SetFocus;
        end
        else messagedlg('ERROR!!... Al Acreditar los Datos.',mtError,[mbok],0);
    end;
   end;
 end
 else begin
  Acreditaciones:=TAcreditaciones.Create(nil);
  Acreditaciones.ConnectionString:=modulo2.Conexion;
  Acreditaciones.C_IdObjeto_IX1:=trim(NROCUENTA.Text);
  Acreditaciones.C_NroObjeto_IX2:=IdCombos[0,TPOOBJ.ItemIndex];
  Acreditaciones.C_FechaCarga_IX3:=FECINI.Text;
  Acreditaciones.C_NroRecibo:=RECIBO1.Text;
  Acreditaciones.C_MontoAcreditado:=IMPORTE.Text;
  Acreditaciones.C_Motivo:=DESCRIP.Text;
  Acreditaciones.C_Anulado:=false;
  Acreditaciones.C_FechaAnula:='';
  Acreditaciones.C_MotivoAnula:='';
  Acreditaciones.C_UsuAnula:=null;
  Acreditaciones.C_Confirmado:=true;
  Acreditaciones.C_UsuConfirma:=modulo2.nro_usu;
  Acreditaciones.C_FechaConfirma:=FECINI.Text;
  Acreditaciones.C_Usu_A:=modulo2.nro_usu;
  Acreditaciones.C_Usu_M:=null;
  Acreditaciones.C_Fecha_M:='';
  Acreditaciones.C_NoProcesar:=CH1.Checked;
  Acreditaciones.C_EnMovimientos:=false;
  TodoOk1:=Acreditaciones.Agrega;
  valor:=Acreditaciones.Identidad;
  Acreditaciones.Free;
  if TodoOk1 then begin
   /// inserto en acreditaciones periodos       NroCuota,ImporteCuota,TotalCuota
   for t:=1 to GR2.RowCount-1 do begin
    if trim(GR2.Cells[3,t]) = 'X' then begin
      AcreditacionesPeriodos:=TAcreditacionesPeriodos.Create(nil);
      AcreditacionesPeriodos.ConnectionString:=modulo2.Conexion;
      AcreditacionesPeriodos.C_NroAccion:=trim(nrocuenta.Text);
      AcreditacionesPeriodos.C_NroTipoObjeto:=IdCombos[0,TPOOBJ.ItemIndex];
      AcreditacionesPeriodos.C_IdAcreditacion:=strtoint(valor);
      AcreditacionesPeriodos.C_Periodo:=trim(GR2.Cells[0,t]);
      AcreditacionesPeriodos.C_ImporteCuota:=trim(GR2.Cells[1,t]);
      AcreditacionesPeriodos.C_TotalCuota:=trim(GR2.Cells[2,t]);
      Ok:=AcreditacionesPeriodos.Agrega;
      AcreditacionesPeriodos.Free;
      if Ok then Barra1.Panels[1].Text:='Periodos guardados Correctamente'
                 else Barra1.Panels[1].Text:='Periodos guardados con ERROR';
    end;
   end;
   //coloca1(5);
   messagedlg('Se ha Guardado la Acreditación con Exito',mtConfirmation,[mbok],0);
   LimpiarVentana(1);
   TPOOBJ.SetFocus;
  end
  else messagedlg('ERROR!!... Al Acreditar los Datos.',mtError,[mbok],0);
 end;
end
else begin
  Acreditaciones:=TAcreditaciones.Create(nil);
  Acreditaciones.ConnectionString:=modulo2.Conexion;
  Acreditaciones.C_IdRegistro_PK:=IDENTIF.Text;
  Acreditaciones.C_IdObjeto_IX1:=NROCUENTA.Text;
  Acreditaciones.C_NroObjeto_IX2:=IdCombos[0,TPOOBJ.ItemIndex];
  Acreditaciones.C_FechaCarga_IX3:=FECINI.Text;
  Acreditaciones.C_NroRecibo:=RECIBO1.Text;
  Acreditaciones.C_MontoAcreditado:=IMPORTE.Text;
  Acreditaciones.C_Motivo:=DESCRIP.Text;
  //Acreditaciones.C_Anulado:=false;
  //Acreditaciones.C_FechaAnula:='';
  //Acreditaciones.C_MotivoAnula:='';
  //Acreditaciones.C_UsuAnula:=null;
  //Acreditaciones.C_Confirmado:=false;
  //Acreditaciones.C_UsuConfirma:=null;
  //Acreditaciones.C_FechaConfirma:='';
  Acreditaciones.C_Usu_M:=modulo2.nro_usu;
  Acreditaciones.C_Fecha_M:=FechaActual;
  Acreditaciones.C_NoProcesar:=CH1.Checked;
  Acreditaciones.C_EnMovimientos:=false;
  TodoOk1:=Acreditaciones.Modificar;
  Acreditaciones.Free;
  if TodoOk1 then begin
    messagedlg('Se ha Modificado la Acreditación con Exito',mtConfirmation,[mbok],0);
    LimpiarVentana(1);
    TPOOBJ.SetFocus;
  end
  else messagedlg('ERROR!!... Al Modificar las Acreditaciones.',mtError,[mbok],0);
end;
end;

procedure TAM_Acreditaciones.DBGrid1CellClick(Column: TColumn);
begin
CONFIRMA.Enabled:=false;
ANULA.Enabled:=false;
GUARDA.Enabled:=false;
if not DataSet0.IsEmpty then begin
  if trim(DataSet0.Fields[7].Text) = 'False' then begin
    if trim(DataSet0.Fields[9].Text) = 'False' then begin
      PC1.ActivePage:=PC1.Pages[1];
      IDENTIF.Text:=DataSet0.Fields[0].AsString;
      NROCUENTA.Text:=DataSet0.Fields[1].AsString;
      TPOOBJ.ItemIndex:=TPOOBJ.Items.IndexOf(trim(DataSet0.Fields[2].AsString));
      FECINI.Text:=DataSet0.Fields[3].AsString;
      RECIBO1.Text:=DataSet0.Fields[4].AsString;
      IMPORTE.Text:=DataSet0.Fields[5].AsString;
      DESCRIP.Text:=DataSet0.Fields[6].AsString;
      if trim(DataSet0.Fields[11].Text) = 'True' then CH1.Checked:=true
      else CH1.Checked:=false;
      Coloca1(2);
      CONFIRMA.Enabled:=true;
      ANULA.Enabled:=true;
      GUARDA.Enabled:=false;
      C6.Checked:=true;
      C4.Checked:=false;
      Self.Update;
      TPOOBJ.SetFocus;
    end
    else begin
      //Barra1.Panels[0].Text:='ATENCION!... No se puede Modificar una Acreditación CONFIRMADA.';
      //messagedlg('ATENCION!!... Solo es posible ANULAR la Acreditación seleccionada.',mtWarning,[mbok],0);
      ANULA.Enabled:=true;
    end;
  end
  else begin
    messagedlg('ERROR!!... Imposible Modificar una Acreditación ANULADA.',mtError,[mbok],0);
  end;
end;
end;

procedure TAM_Acreditaciones.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var h:byte;
begin
h:=0;
if trim(DataSet0.Fields[9].Text) = 'True' then h:=1;
if trim(DataSet0.Fields[7].Text) = 'True' then h:=2;
case h of
  0:begin
    DBGrid1.Canvas.Brush.Color:=clWindow;
    DBGrid1.Canvas.FillRect(Rect);
    DBGrid1.Canvas.Font.Color:= clBlack;
    end;
  1:begin // Confirmadas
    DBGrid1.Canvas.Brush.Color:=clMoneyGreen;
    DBGrid1.Canvas.FillRect(Rect);
    DBGrid1.Canvas.Font.Color:= clBlack;
    end;
  2:begin  //Anuladas
    DBGrid1.Canvas.Brush.Color:=$00CECEFF;
    DBGrid1.Canvas.FillRect(Rect);
    DBGrid1.Canvas.Font.Color:= clBlack;
    end;
end;
DBGrid1.DefaultDrawColumnCell(Rect,Datacol,Column,State);
end;

procedure TAM_Acreditaciones.JvBitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TAM_Acreditaciones.LimpiarClick(Sender: TObject);
begin
LimpiarVentana(0);
end;

procedure TAM_Acreditaciones.LimpiarVentana(nro:byte);
var t,r,p,u:integer;
begin
if nro = 0 then begin
  DataSource1.DataSet:=nil;
  TPOOBJ.ItemIndex:=0;
  NROCUENTA.Text:='000000';
  for p:=0 to GR2.ColCount-1 do
    for u:=1 to GR2.RowCount-1 do GR2.Cells[p,u]:='';
  GR2.RowCount:=2;
end;
if nro <= 1 then begin
//  for t:=1 to 38 do begin
//   if t = 9 then D9.Checked:=false
//    else LosEdit(FindComponent('D' + inttostr(t))).Clear;
//  end;
  for p:=0 to GR2.ColCount-1 do
    for u:=1 to GR2.RowCount-1 do GR2.Cells[p,u]:='';
  GR2.RowCount:=2;
  IDENTIF.Text:='00000';
  RECIBO1.Text:='000000000000';
  FECINI.Text:=FechaActual;
  IMPORTE.Text:='000.00';
  CH1.Checked:=false;
  DESCRIP.Clear;
  CONFIRMA.Enabled:=false;
  ANULA.Enabled:=false;
  GUARDA.Enabled:=false;
  GroupBox1.Visible:=false;
end;
end;

procedure TAM_Acreditaciones.CONFIRMAClick(Sender: TObject);
var gf:integer;
    Param:TWideStrings;
begin
gf:=messagedlg('Desea CONFIRMAR la Acreditación Seleccionada?' + chr(13)
    + 'ATENCION!! El proceso hará que se IMPACTEN Pagos',mtWarning,[mbok,mbCancel],0);
if gf = 1 then begin
  Barra1.Panels[0].Text:='Iniciando Proceso de Impacto de PAGOS. Por Favor espere!!';
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Sistemas:=TSistemas.Create(nil);
  Sistemas.ConnectionString:=modulo2.Conexion;
  Param:=TWideStrings.Create;
  Param.Add(DataSet0.Fields[0].AsString);
  Param.Add(DataSet0.Fields[10].AsString);
  Param.Add(DataSet0.Fields[1].AsString);
  Param.Add(inttostr(modulo2.nro_usu));
  if not Sistemas.ListarSP(Param,'ConfirmaAcreditacion',DtCombo) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
    if DtCombo.Fields[0].AsString <> 'OK' then begin
      Barra1.Panels[0].Text:='ERROR!! No impactaron los Pagos!!.';
      messagedlg('ERROR!! Al Confirmar la Acreditación Seleccionada.',mtError,[mbok],0);
    end
    else begin
      Barra1.Panels[0].Text:='Los Datos se han guardado Satisfactoriamente!!';
      messagedlg('ATENCION! Acreditacion Guardada Correctamente!!',mtConfirmation,[mbok],0);
      Buscar.Click;
      LimpiarVentana(1);
    end;
  end;
  Sistemas.free;
end;
end;

procedure TAM_Acreditaciones.ANULAClick(Sender: TObject);
var gf:integer;
    Param:TWideStrings;
    txt:string;
    Anula_General:TAnula_General;
begin
gf:=messagedlg('Desea ANULAR la Acreditación Seleccionada?' + chr(13)
    + 'ATENCION!! El proceso hará que se ELIMINE el Pago',mtWarning,[mbok,mbCancel],0);
if gf = 1 then begin
  Anula_General:= TAnula_General.create(self);
  try
    Anula_General.ShowModal;
    txt:=AnsiReplaceStr(trim(Anula_General.MOTIVO.Text),chr(39),chr(33));
  finally
    Anula_General.destroy;
  end;
  Barra1.Panels[0].Text:='Iniciando Proceso de Eliminación de PAGOS. Por Favor espere!!';
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Sistemas:=TSistemas.Create(nil);
  Sistemas.ConnectionString:=modulo2.Conexion;
  Param:=TWideStrings.Create;
  Param.Add(DataSet0.Fields[0].AsString);
  Param.Add(DataSet0.Fields[10].AsString);
  Param.Add(DataSet0.Fields[1].AsString);
  Param.Add(inttostr(modulo2.nro_usu));
  Param.Add(txt);
  if not Sistemas.ListarSP(Param,'AnulaAcreditacion',DtCombo) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
    if DtCombo.Fields[0].AsString <> 'OK' then begin
      Barra1.Panels[0].Text:='ERROR!! No se Anulo la Acreditación ni se eliminaron los Pagos!!.';
      messagedlg('ERROR!! Al Guardar Anular la Acreditación seleccionada.',mtError,[mbok],0);
    end
    else begin
      Barra1.Panels[0].Text:='Los Datos se han guardado Satisfactoriamente!!';
      messagedlg('ATENCION! Esta Acreditacion fue Anulada Correctamente!!',mtConfirmation,[mbok],0);
      Buscar.Click;
      LimpiarVentana(1);
    end;
  end;
  Sistemas.free;
end;
end;

procedure TAM_Acreditaciones.FECKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  Buscar.SetFocus;
end;
end;

procedure TAM_Acreditaciones.FECExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(FEC.Text));
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  FEC.SetFocus;
end;
end;

procedure TAM_Acreditaciones.IMPORTEExit(Sender: TObject);
var Selec_Pagos:TSelec_Pagos;
    t,p:integer;
begin
 coloca1(6);
 //if (IdCombos[0,TPOOBJ.ItemIndex] = '3') then coloca1(6);
   { try
      Selec_Pagos:=TSelec_Pagos.Create(nil);
      Selec_Pagos.NroAccion:=trim(nrocuenta.Text);
      Selec_Pagos.Importe:=strtofloat(importe.Text);
      Selec_Pagos.CB1.Checked:=false;
      Selec_Pagos.ShowModal;
      SetLength(IdPagos,6);
      SetLength(IdPagos[0], Selec_Pagos.CntRecords);
      SetLength(IdPagos[1], Selec_Pagos.CntRecords);
      SetLength(IdPagos[2], Selec_Pagos.CntRecords);
      SetLength(IdPagos[3], Selec_Pagos.CntRecords);
      SetLength(IdPagos[4], Selec_Pagos.CntRecords);
      SetLength(IdPagos[5], Selec_Pagos.CntRecords);
      for t:=0 to Selec_Pagos.CntRecords-1 do begin
        IdPagos[0,t]:=Selec_Pagos.IdCombos[0,t];
        IdPagos[1,t]:=Selec_Pagos.IdCombos[1,t];
        IdPagos[2,t]:=Selec_Pagos.IdCombos[2,t];
        IdPagos[3,t]:=Selec_Pagos.IdCombos[3,t];
        IdPagos[4,t]:=Selec_Pagos.IdCombos[4,t];
        IdPagos[5,t]:=Selec_Pagos.IdCombos[5,t];
      end;
    finally
      Selec_Pagos.Free;
    end;  }
   // GroupBox1.Visible:=true;
 //end;
end;

procedure TAM_Acreditaciones.periodosClick(Sender: TObject);
begin
GRoupbox1.Visible:=false;
descrip.Text:='ACRED. POR SISTEMA..';
descrip.SetFocus;
end;

procedure TAM_Acreditaciones.GR2Click(Sender: TObject);
var ini,fin,t:integer;
begin
if GR2.Cells[3,GR2.Row] = '' then GR2.Cells[3,GR2.Row]:='X'
else GR2.Cells[3,GR2.Row]:='';
periodos.Enabled:=true;
end;

procedure TAM_Acreditaciones.GR2DblClick(Sender: TObject);
begin
if GR2.Cells[3,GR2.Row] = '' then GR2.Cells[3,GR2.Row]:='X'
else GR2.Cells[3,GR2.Row]:='';
periodos.Enabled:=true;
end;

end.

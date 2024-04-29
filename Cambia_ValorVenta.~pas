unit Cambia_ValorVenta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid, ExtCtrls,
  ComCtrls, JvgPage, Buttons, JvExButtons, JvBitBtn, ToolWin, DB,
  JvgGroupBox, Mask, JvExGrids, JvStringGrid, Unidad, DBClient,
  WSDLIntf, ClaseFunciones, StrUtils, LMDControl, LMDBaseControl,
  LMDBaseGraphicControl, LMDGraphicControl, LMDScrollText,
  ClaseParcelasInhumados, ADODB,
  ClaseSistemas, RpDefine, RpBase, RpSystem, ImgList, DBCtrls, Menus;

type
  Tcambiavalorvta = class(TForm)
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    Limpiar: TJvBitBtn;
    ToolButton3: TToolButton;
    Barra1: TStatusBar;
    ToolButton1: TToolButton;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    DataSource1: TDataSource;
    JvgGroupBox3: TJvgGroupBox;
    DBGrid1: TDBGrid;
    DataSource2: TDataSource;
    todos: TRichEdit;
    Image1: TImage;
    GroupBox1: TGroupBox;
    C2: TRadioButton;
    Buscar: TJvBitBtn;
    accion: TEdit;
    JvgGroupBox5: TJvgGroupBox;
    Label11: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    D1: TEdit;
    D2: TEdit;
    D7: TEdit;
    D9: TEdit;
    cambia: TJvBitBtn;
    grilla2: TJvStringGrid;
    idventa: TEdit;
    JvBitBtn2: TJvBitBtn;
    confir: TJvBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure C1Click(Sender: TObject);
    procedure BuscarClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure LimpiarVentana(nro:byte);
    procedure LimpiarClick(Sender: TObject);
    procedure accionKeyPress(Sender: TObject; var Key: Char);
    procedure JvBitBtn2Click(Sender: TObject);
    procedure confirClick(Sender: TObject);
    procedure D7KeyPress(Sender: TObject; var Key: Char);
    procedure D7Exit(Sender: TObject);
    procedure cambiaClick(Sender: TObject);
  private
    gh:boolean;
    IdCombos:array of array of string;
    DataSet0,DataSet1,DtCombo:TClientDataSet;
    ParcelasInhumados:TParcelasInhumados;
    PROCESO1,PROCESO2: TADODataSet;
  public
    Funciones:TFuncionesVarias;
    Sistemas:TSistemas;
    cuif:integer;
    FechaActual:string;
    CorreccionImpr:double;

    PosH:Array [0..8] of Double;//Posiciones
    Camp:Array [0..8] of Integer;//Campos a Tomar en cuenta
    TxtCamp:Array [0..8] of String;//Textos de los Campos a Tomar en cuenta

    PosHI:Array [0..6] of Double;//Posiciones
    CampI:Array [0..6] of Integer;//Campos a Tomar en cuenta
    TxtCampI:Array [0..6] of String;//Textos de los Campos a Tomar en cuenta

    IdHabitante, NroAccion, Nivel, Posicion, Objeto, DniFallecido,DniTitular,
    NombTitular, NombreFallecido, FechaIngreso,FechaFallecimiento, FechaInhumacion,
    HoraFallecimiento, HoraSalida, HoraLlegada, NroSeccion, NroActa, NroFolio, NroTomo, Medico, Diagnostico,
    PadreFallecido, MadreFallecido, ConError, NroOrdenServicio, CuifFallecido, NroParcela,LaReligion, ElNivel,
    Responsable,ElSolicitante, Cocheria,FecActaDefuncion,NroMedico, Abreviatura, Edad, DetalleEstado, FormaPago,
    Nacionalidad, FechaNacimiento, Detalle, Localidad, Domicilio,NroOrdenServ, laobserv,  ElSector , cantiser,
    cantiseranio, tipodocr,domr,barrior,dnir,NroActaInhumacion,HoraInhumacion,FechaActaInhumacion,nroactager,edadinhu,
    Nacioihum,EstCivInhum,elDominhum,eldomtitular,RazSocial: string;
  end;

var
  cambiavalorvta: Tcambiavalorvta;

implementation

uses Modulo, Busqueda;
{$R *.dfm}

procedure Tcambiavalorvta.FormActivate(Sender: TObject);
begin
 if not(gh) then begin
  gh:=true;
  grilla2.Cells[0,0]:='IdDeuda';
  grilla2.Cells[1,0]:='NroAccion';
  grilla2.Cells[2,0]:='IdVenta';
  grilla2.Cells[3,0]:='NroCuota';
  grilla2.Cells[4,0]:='Periodo';
  grilla2.Cells[5,0]:='FechaVencimiento';
  grilla2.Cells[6,0]:='Monto Cuota';
  grilla2.Cells[7,0]:='Selec';
  PROCESO1:=TADODataSet.Create(nil);
  PROCESO1.ConnectionString:=modulo2.Conexion;
  //PROCESO1.CommandTimeout:=180;
  PROCESO2:=TADODataSet.Create(nil);
  PROCESO2.ConnectionString:=modulo2.Conexion;
  //PROCESO2.CommandTimeout:=180;
  setlength(IdCombos,5);
  FechaActual:=LeftStr(Fec_System(),10);
  confir.Enabled :=false;
  PC1.ActivePage:=PC1.Pages[0];
  accion.Visible:=true;
  accion.SetFocus;

 end;
end;

procedure Tcambiavalorvta.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure Tcambiavalorvta.Coloca1(nro:byte);
var t,y,r,s:integer;
    NroCobrador,NroForm,ValNull:variant;
    txt:string;
    txtw:widestring;
    tot1,tot2,tot3,tot4:real;
    paso:boolean;
begin
 if nro=0 then begin //Cargamos los Pagos Registrados
  DataSet0.Free;
  DataSet0:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=DataSet0;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if C2.Checked then begin
   txtw:='SELECT IdVenta, NroAccion, Fecha, PrecioReal, Financiado, CantCuotas,ValorCuota,Observaciones '
   +' FROM ParcelasVentas where (NroAccion = ' + trim(accion.Text) +') order by NroAccion';
  end;
  if not Funciones.Listar(txtw,DataSet0) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0) ;
  Funciones.Free;
  if not DataSet0.IsEmpty then begin
   // Barra1.Panels[1].Text:='Cant. Registros: ' + inttostr(DataSet0.RecordCount);
    DBGrid1.Columns[0].Width:=100;
    DBGrid1.Columns[1].Width:=100;
    DBGrid1.Columns[2].Width:=100;
    DBGrid1.Columns[3].Width:=100;
    DBGrid1.Columns[4].Width:=100;
    DBGrid1.Columns[5].Width:=100;
    DBGrid1.Columns[6].Width:=200;
  end
  else begin
   messagedlg('La opcion seleccionada no arrojo ningun resultado.. por favor realice otra busqueda',mtInformation,[mbok],0);
  // impactainhu.Enabled :=false;

   D7.Clear;
  end;
 end;
 if nro = 1 then begin  //cargo la grilla de los testigos
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  DataSource2.DataSet:=DtCombo;
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT  IdDeuda, NroAccion, IdVenta, NroCuota, Periodo, FechaVencimiento, Monto'
    + ' FROM  ParcelasVentasDeudas  WHERE  (IdVenta = ' + trim(idventa.Text) + ')';
  if not Funciones.Listar(txtw,DtCombo) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  for t:=0 to grilla2.ColCount-1 do
    for y:=1 to grilla2.RowCount-1 do grilla2.Cells[t,y]:='';
    for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    grilla2.RowCount:=t+1;
    grilla2.Cells[0,t]:=trim(DtCombo.Fields[0].AsString);
    grilla2.Cells[1,t]:=trim(DtCombo.Fields[1].AsString);
    grilla2.Cells[2,t]:=trim(DtCombo.Fields[2].AsString);
    grilla2.Cells[3,t]:=trim(DtCombo.Fields[3].AsString);
    grilla2.Cells[4,t]:=trim(DtCombo.Fields[4].AsString);
    grilla2.Cells[5,t]:=trim(DtCombo.Fields[5].AsString);
    grilla2.Cells[6,t]:=trim(DtCombo.Fields[6].AsString);
  end;
 end;
 if nro = 2 then begin  //control de cuota
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
 end;
end;

procedure Tcambiavalorvta.C1Click(Sender: TObject);
begin
 if C2.Checked then begin
  accion.Visible:=true;
  accion.SetFocus;
 end;
end;

procedure Tcambiavalorvta.BuscarClick(Sender: TObject);
begin
Coloca1(0);
end;

procedure Tcambiavalorvta.DBGrid1CellClick(Column: TColumn);
var p,u:integer;
begin
 if not DataSet0.IsEmpty then begin
 idventa.Text := trim(DataSet0.Fields[0].AsString);
 d2.Text:=trim(DataSet0.Fields[5].AsString);
 d1.Text:=trim(DataSet0.Fields[1].AsString);
 Coloca1(1);
 d7.SetFocus;
 //IdServicio,TitularServicio,Nroaccion,Sector ,Parcela,Fecha,inhumado,Observaciones,Tipoformapago '  //8
 //  +',Medico,NroComprobante,FormaPago,TOMO,FOLIO,HORA,FECHAENTRADA,HORAENTRADA,fechadefuncion,acta,nrodnititular, ' //19
 //  +' Nrodniinhumado,fecnacinhumado,Nacionalidadihum,EstadoCivilInhum,elDominhum ,eldomtitu  // 25
 {IdHabitante:=trim(DataSet0.Fields[0].AsString);  //IdServicio
 D6.Text:=DataSet0.Fields[1].AsString;   //TitularServicio
 D1.Text:=DataSet0.Fields[2].AsString;   //accion
 D2.Text:=DataSet0.Fields[3].AsString;   //SEC
 D9.Text:=DataSet0.Fields[4].AsString;   //parcela
 D10.Text:=DataSet0.Fields[5].AsString;   //fechasepelio
 D8.Text:=DataSet0.Fields[6].AsString;   //inhumado
 D4.Text:=DataSet0.Fields[7].AsString;   //observ
 FormaPago:=DataSet0.Fields[8].AsString;   //FORMAPAGO
 D5.Text:=DataSet0.Fields[17].AsString;   //fecdeguncion
 D7.Text:=DataSet0.Fields[9].AsString;    //medico
 NroActa:=trim(DataSet0.Fields[18].AsString);   //acta
 NroFolio:=trim(DataSet0.Fields[13].AsString);  //folio
 NroTomo:=trim(DataSet0.Fields[12].AsString);    //tomo
 HoraInhumacion:=trim(DataSet0.Fields[14].AsString); //horasepelio
 FechaActaInhumacion:=trim(DataSet0.Fields[15].AsString);   //fecentrada
 HoraSalida:=trim(DataSet0.Fields[16].AsString);    //horaentrada        
 dnir:=trim(DataSet0.Fields[19].AsString);  //nrodnititular
 DniFallecido:=trim(DataSet0.Fields[20].AsString);
 FechaNacimiento:=trim(DataSet0.Fields[21].AsString);
 edadinhu:=unidad.edad(strcut(Fec_System(),10),trim(FechaNacimiento));
 impactainhu.Enabled:=true;
 impactacircu.Enabled :=true;
 Nacioihum:=trim(DataSet0.Fields[22].AsString);
 EstCivInhum:=trim(DataSet0.Fields[23].AsString);
 elDominhum:=trim(DataSet0.Fields[24].AsString);
 eldomtitular :=trim(DataSet0.Fields[25].AsString);
 RazSocial :=trim(DataSet0.Fields[26].AsString);  }
 end;
end;

procedure Tcambiavalorvta.DBGrid1TitleClick(Column: TColumn);
begin
DataSet0.IndexFieldNames:=Column.FieldName;
end;

procedure Tcambiavalorvta.LimpiarVentana(nro:byte);
var t,r:integer;
begin
 if nro =0 then begin
  DataSource1.DataSet:=nil;
  C2.Checked:=true;
  PC1.ActivePage:=PC1.Pages[0];
  idventa.Clear;
  D2.Clear;
  D9.Clear;
  D7.Clear;
  d1.Clear;
  for t:=0 to grilla2.ColCount-1 do
   for r:=1 to grilla2.RowCount-1 do grilla2.Cells[t,r]:='';
   grilla2.RowCount:=2;
 end;
end;

procedure Tcambiavalorvta.LimpiarClick(Sender: TObject);
begin
LimpiarVentana(0);
end;

procedure Tcambiavalorvta.accionKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  buscar.SetFocus;
 end
 else begin
  if ( StrScan('0123456789',Key) <> nil ) or  ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;
end;

procedure Tcambiavalorvta.JvBitBtn2Click(Sender: TObject);
begin
close;
end;

procedure Tcambiavalorvta.confirClick(Sender: TObject);
var gf,t:integer;
begin
  gf:=messagedlgpos('Desea Confirmar el CAMBIO DE VALOR de esta Venta Seleccionada?',mtWarning,[
             mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
  if gf = 1 then begin
   PROCESO1.Close;
   PROCESO1.CommandText:='exec SPC_ParcelasVentasModificarValor ' + TRIM(IDVENTA.Text)
   + ',' + TRIM(D1.Text)
   + ',' + TRIM(D7.Text)
   + ',' + TRIM(D9.Text);
   PROCESO1.Open;
   if PROCESO1.Fields[0].AsString = 'OK' then begin
     PROCESO2.Close;
     PROCESO2.CommandText:='exec SPC_ParcelasVentasDeudaModificarValor ' + TRIM(IDVENTA.Text)
     + ',' + TRIM(D1.Text)
     + ',' + TRIM(D9.Text);
     PROCESO2.Open;
     if PROCESO2.Fields[0].AsString = 'OK' then begin
       messagedlg('Se ha MODIFICADO el Valor de la Venta con Exito',mtConfirmation,[mbok],0);
       confir.Enabled :=false;
       LimpiarVentana(0);
       buscar.Click;
       /// limpiamos todo
     END
     ELSE begin
       messagedlg('ERROR al Modificar el Valor del Detalle de esta Venta. Consulte con un Administrador',mtError,[mbok],0);
     end
   END
   ELSE begin
       messagedlg('ERROR al Modificar el Valor de esta Venta. Consulte con un Administrador',mtError,[mbok],0);
   end
  end;
end;

procedure Tcambiavalorvta.D7KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
    Key := #0;
    cambia.SetFocus;
  end
  else begin
    if ( StrScan('0123456789.',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
     else Key := #0;
  end;
end;

procedure Tcambiavalorvta.D7Exit(Sender: TObject);
var new : string;
    vSaldo:real;
begin
 if (trim(D7.Text) = '0')  then begin
  messagedlg('Error!! No hay un Valor Correcot de la Cuota.',mterror,[mbok],0);
  D7.SetFocus;
  end
 else begin
  cambia.SetFocus;
 end;
end;

procedure Tcambiavalorvta.cambiaClick(Sender: TObject);
var new : string;
    vSaldo:real;
begin
 if (trim(D7.Text) = '') OR  (trim(D7.Text) = '0')  THEN BEGIN
  messagedlg('Error!! No hay un Valor Correcot de la Cuota.',mterror,[mbok],0);
  D7.SetFocus;
 END
 ELSE BEGIN
  vSaldo := strtofloat(d7.Text) / strtoint(d2.Text);
  d9.Text := floattostr(vSaldo);
  confir.Enabled :=true;
  confir.SetFocus;
 END;
end;

end.

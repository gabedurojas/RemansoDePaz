unit ABM_Titulares;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, JvExGrids, JvStringGrid, Buttons,
  JvExButtons, JvBitBtn, JvgGroupBox,ClaseFunciones,Unidad,DBClient,
  ComCtrls,ClaseParcelasTitulares, ExtCtrls,ClaseTiposSectores,
  ClaseParcelasTitularesHistorico,ClaseParcelasNovedades, RpDefine, RpBase,
  RpSystem,ClaseParcelasMovimientosDiarrioDetalle;
  
type THackStringGrid = class(TStringGrid);
type
  TAM_Titulares = class(TForm)
    GroupBox2: TGroupBox;
    JvgGroupBox1: TJvgGroupBox;
    GrillaT: TJvStringGrid;
    barra: TStatusBar;
    GroupBox4: TGroupBox;
    c4: TCheckBox;
    C6: TCheckBox;
    Panel1: TPanel;
    Button1: TButton;
    motivos: TComboBox;
    Label2: TLabel;
    pc1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    nroaccion: TEdit;
    Label21: TLabel;
    Edit1: TEdit;
    Button2: TJvBitBtn;
    Label53: TLabel;
    NIVEL: TComboBox;
    LaAccion: TComboBox;
    Label29: TLabel;
    Label14: TLabel;
    ElSector: TComboBox;
    LB1: TLabel;
    ODNI: TEdit;
    Busca: TJvBitBtn;
    bGuardar: TJvBitBtn;
    elimina2: TJvBitBtn;
    Modifica2: TJvBitBtn;
    Agrega2: TJvBitBtn;
    grillaformu: TJvStringGrid;
    ImprimirActa: TJvBitBtn;
    ImprimirCesion: TJvBitBtn;
    ImprimirClausular: TJvBitBtn;
    ImprimeReglamento: TJvBitBtn;
    ImprimirCarta: TJvBitBtn;
    RvS: TRvSystem;
    Image1: TImage;
    GroupBox12: TGroupBox;
    JvBitBtn2: TJvBitBtn;
    JvBitBtn3: TJvBitBtn;
    JvBitBtn4: TJvBitBtn;
    DPrecio: TEdit;
    Label3: TLabel;
    GroupBox1: TGroupBox;
    JvBitBtn5: TJvBitBtn;
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Agrega2Click(Sender: TObject);
    procedure Modifica2Click(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure Limpiar(nro: byte);
    procedure VentasSinTitCellClick(Column: TColumn);
    procedure bGuardarClick(Sender: TObject);
    procedure GrillaTClick(Sender: TObject);
    procedure ElSectorExit(Sender: TObject);
    procedure ElSectorKeyPress(Sender: TObject; var Key: Char);
    procedure LaAccionExit(Sender: TObject);
    procedure LaAccionKeyPress(Sender: TObject; var Key: Char);
    procedure ODNIKeyPress(Sender: TObject; var Key: Char);
    procedure BuscaClick(Sender: TObject);
    procedure elimina2Click(Sender: TObject);
    procedure ActuNivelesTitulares();
    procedure motivosExit(Sender: TObject);
    procedure motivosKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure grillaformuClick(Sender: TObject);
    procedure ImprimirActaClick(Sender: TObject);
    procedure ImprimirCesionClick(Sender: TObject);
    procedure ImprimirClausularClick(Sender: TObject);
    procedure ImprimeReglamentoClick(Sender: TObject);
    procedure ImprimirCartaClick(Sender: TObject);
    procedure RvSPrint(Sender: TObject);
    procedure JvBitBtn3Click(Sender: TObject);
    procedure JvBitBtn2Click(Sender: TObject);
    Procedure SolicitudAdquisicion();
    Procedure Cesion();
    Procedure Clausulas();
    procedure Reglamento();
    procedure Reglamento1();
    Procedure Carta();
    procedure JvBitBtn4Click(Sender: TObject);
    procedure JvBitBtn5Click(Sender: TObject);
  private
      gh:boolean;
      action:integer;
      NroOpc:byte;
    { Private declarations }
  public
    coefi,inter,porcent,name,coninter,nivelusu,elcuif,elnivel,elmotivo,elcolor:string;
    Adress,NroDocu,TProfesion,TNacimiento,TNacion,Resultado,TCuif,laplaza,lacatego,lafec,fechaventa: string;
    TTel,TCel,TTipo,Naci,Nacio,TECivil,TCiudad,TEstado,TCP,TProvincia,TDoc,TDom,TNivel,dato1: string;
    Funciones:TFuncionesVarias;
    DtcomboC,DtCombo,DataSetC,DataSet,DataSet1,DataSetCli:TClientDataSet;
    ParcelasTitulares:TParcelasTitulares;
    ParcelasNovedades:TParcelasNovedades;
    ParcelasTitularesHistorico:TParcelasTitularesHistorico;
    ParcelasMovimientosDiarrioDetalle:TParcelasMovimientosDiarrioDetalle;
    IdCombos:array of array of string;
    { Public declarations }
  end;

var
  AM_Titulares: TAM_Titulares;

implementation

uses Modulo,Busqueda;

{$R *.dfm}

procedure TAM_Titulares.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TAM_Titulares.FormActivate(Sender: TObject);
begin
 if not gh then begin
  gh:=true;
  lafec:=strcut(Fec_System(),10);
  PC1.ActivePage:=PC1.Pages[0];
  PC1.Pages[1].Visible :=FALSE;
  setlength(IdCombos,2);
  GrillaT.Cells[0,0]:='Orden';            GrillaT.Cells[1,0]:='Id';
  GrillaT.Cells[2,0]:='Nombre';           GrillaT.Cells[3,0]:='TipoDNI';
  GrillaT.Cells[4,0]:='DNI';              GrillaT.Cells[5,0]:='Domicilio';
  GrillaT.Cells[6,0]:='NroT';             GrillaT.Cells[7,0]:='MDF';
  GrillaT.Cells[8,0]:='Cuif';             GrillaT.Cells[9,0]:='FecNac';
  GrillaT.Cells[10,0]:='Nacionalidad';    GrillaT.Cells[11,0]:='EstCivil';
  GrillaT.Cells[12,0]:='Localidad';       GrillaT.Cells[13,0]:='Telefono';
  GrillaT.Cells[14,0]:='Profesion';       GrillaT.Cells[15,0]:='Celuar';
  GrillaT.Cells[16,0]:='Provincia';
  dprecio.Clear;
  coloca1(0);
  coloca1(4);
  GroupBox12.Visible:=false;
  grillaformu.Cells[0,0]:='Nro.Formulario';    grillaformu.Cells[1,0]:='Detalle';
  grillaformu.Cells[2,0]:='SeImprime';           grillaformu.Cells[3,0]:='Selecc.';
  elsector.SetFocus;
 end;
end;

procedure TAM_Titulares.Coloca1(nro:byte);
var  txtw,txt:widestring;
     t,y:integer;
     sec:string;
     TiposSectores:TTiposSectores;
     accion:variant;
begin
if nro=0 then begin
 ELSECTOR.Clear;
 DtCombo.Free;
 Dtcombo:=TClientDataSet.Create(nil);
 TiposSectores:=TTiposSectores.Create(nil);
 TiposSectores.ConnectionString:=modulo2.Conexion;
 txtw:='SELECT Sector FROM TiposSectores';
 if TiposSectores.Listar(txtw,DtCombo) then begin
  SetLength(IdCombos[1],DtCombo.RecordCount);
  for t:=1 to DtCombo.RecordCount  do begin
   DtCombo.RecNo:=t;
   ELSECTOR.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
   IdCombos[1,t-1]:=DtCombo.Fields[0].AsString;
  end;
 end
 else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
 TiposSectores.Free;
 ELSECTOR.ItemIndex:=0;
end;
if nro=1 then begin
 DtCombo.Free;
 DtCombo:=TClientdataSet.Create(nil);
 Funciones:=TFuncionesVarias.Create(nil);
 Funciones.ConnectionString:=modulo2.Conexion;
 txtw:='select Id,Cliente,TipoDNI,NroDni,Domicilio,Nivel,MDF,Cuif,FechaNacimiento,'
 +'null as Nacionalidad,EstadoCivil,Localidad,Telefparticular,Profesion,' +
 'Telefcelular,provincia FROM Fn_VistaLosTitularesMinoristas (' + trim(odni.Text) +') order by 6';
 if not Funciones.listar(txtw,DtCombo) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
 Funciones.Free;
 for t:=0 to grillat.ColCount-1 do
  for y:=1 to grillat.RowCount-1 do grillat.Cells[t,y]:='';
   if not DtCombo.IsEmpty then begin
     for t:=1 to DtCombo.RecordCount  do begin
      DtCombo.RecNo:=t;
      grillat.RowCount:=t+1;
      grillat.Cells[0,t]:=completa1(inttostr(t),1,'0');
      grillat.Cells[1,t]:=trim(DtCombo.Fields[0].AsString);
      grillat.Cells[2,t]:=trim(DtCombo.Fields[1].AsString);
      grillat.Cells[3,t]:=trim(DtCombo.Fields[2].AsString);
      grillat.Cells[4,t]:=trim(DtCombo.Fields[3].AsString);
      grillat.Cells[5,t]:=trim(DtCombo.Fields[4].AsString);
      grillat.Cells[6,t]:=trim(DtCombo.Fields[5].AsString);
      grillat.Cells[7,t]:=trim(DtCombo.Fields[6].AsString);
      grillat.Cells[8,t]:=trim(DtCombo.Fields[7].AsString);
      grillat.Cells[9,t]:=trim(DtCombo.Fields[8].AsString);
      grillat.Cells[10,t]:=trim(DtCombo.Fields[9].AsString);
      grillat.Cells[11,t]:=trim(DtCombo.Fields[10].AsString);
      grillat.Cells[12,t]:=trim(DtCombo.Fields[11].AsString);
      grillat.Cells[13,t]:=trim(DtCombo.Fields[12].AsString);
      GrillaT.Cells[14,t]:=trim(DtCombo.Fields[13].AsString);
      GrillaT.Cells[15,t]:=trim(DtCombo.Fields[14].AsString);
      GrillaT.Cells[16,t]:=trim(DtCombo.Fields[15].AsString);
     end;
     barra.Panels[0].Text:='Cant. de Titulares encontrados: ' + inttostr(DtCombo.RecordCount);
   end
   else begin
    messagedlg('ATENCION.. No se encontraron Tiulares para esta Accion seleccionada..',mtWarning,[mbok],0);
    laaccion.SetFocus;
   end;
   //barra.Panels[0].Text:='Cant. de Titulares encontrados: ' + inttostr(DtCombo.RecordCount);
end;
if nro=2 then begin
 lAACCION.Clear;
 DtComboC.Free;
 DtcomboC:=TClientDataSet.Create(nil);
 Funciones:=TFuncionesVarias.Create(nil);
 Funciones.ConnectionString:=modulo2.Conexion;
 sec:=IdCombos[1,ELSECTOR.ItemIndex];
 txtw:='SELECT dbo.Parcelas.Parcela FROM dbo.Parcelas INNER JOIN '
 + ' dbo.TiposPlazas ON dbo.Parcelas.IdPlaza = dbo.TiposPlazas.IdPlaza '
 + ' WHERE (dbo.Parcelas.Sector = ' + chr(39) + sec + chr(39) + ') ORDER BY dbo.Parcelas.Parcela ';
 if Funciones.Listar(txtw,DtcomboC) then begin
  SetLength(IdCombos[0],DtcomboC.RecordCount);
  for t:=1 to DtcomboC.RecordCount  do begin
   DtcomboC.RecNo:=t;
   LAACCION.Items.Insert(t-1,trim(DtcomboC.Fields[0].AsString));
   IdCombos[0,t-1]:=DtcomboC.Fields[0].AsString;
   action:=strtoint(DtcomboC.Fields[0].AsString);
  end;
 end
 else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
 funciones.Free;
 LAACCION.ItemIndex:=0;
end;
if nro=3 then begin
 DataSet.Free;
 DataSet:=TClientdataSet.Create(nil);
 Funciones:=TFuncionesVarias.Create(nil);
 Funciones.ConnectionString:=modulo2.Conexion;
 sec:=IdCombos[1,ELSECTOR.ItemIndex];
 txtw:='SELECT * FROM Fn_VistaParcelas (null,' + chr(39) + sec + chr(39) + ',' +
 'null,null,0)  where (parcela = '+  trim(laaccion.Text)+')';
 if not Funciones.Listar(txtw,DataSet) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
 odni.Text:=DataSet.Fields[0].AsString;
 laplaza:=DataSet.Fields[4].AsString;
 Funciones.Free;
end;
if nro = 4 then begin  //cargo la grilla de los testigos
 DtCombo.Free;
 DtCombo:=TClientdataSet.Create(nil);
 Funciones:=TFuncionesVarias.Create(nil);
 Funciones.ConnectionString:=modulo2.Conexion;
 if not Funciones.Run_Fn_VistaLosFormularios(1,DtCombo,' WHERE SeImprime = 1 ',0) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
 Funciones.Free;
 for t:=0 to grillaformu.ColCount-1 do
   for y:=1 to grillaformu.RowCount-1 do grillaformu.Cells[t,y]:='';
 for t:=1 to DtCombo.RecordCount  do begin
  DtCombo.RecNo:=t;
  grillaformu.RowCount:=t+1;
  grillaformu.Cells[0,t]:=trim(DtCombo.Fields[0].AsString);
  grillaformu.Cells[1,t]:=trim(DtCombo.Fields[2].AsString);
  grillaformu.Cells[2,t]:=trim(DtCombo.Fields[3].AsString);
 end;
end;
if nro=5 then begin
 DataSet.Free;
 DataSet:=TClientdataSet.Create(nil);
 Funciones:=TFuncionesVarias.Create(nil);
 Funciones.ConnectionString:=modulo2.Conexion;
 sec:=IdCombos[1,ELSECTOR.ItemIndex];
 txtw:='SELECT datos.CodigoPlaza,tiposcolores.Detalle FROM Fn_VistaParcelas (null,' + chr(39) + sec + chr(39) + ',null,null,0) datos '
 +' inner join Parcelas on datos.NroAccion = parcelas.NroAccion '
 +' inner join TiposColores on parcelas.TipoColor = TiposColores.TipoColor'
 +' where (datos.parcela = '+  trim(laaccion.Text)+')';
 if not Funciones.Listar(txtw,DataSet) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
 lacatego:=DataSet.Fields[1].AsString;
 Funciones.Free;
end;
if nro=6 then begin   /// Precio de Parcela Segun COLOR
  DataSetC.Free;
  datasetC:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if not Funciones.Run_Fn_VistaParcelasPreciosColores(null,trim(elsector.Text),DataSetC,'',0) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  elcolor:=DataSetC.Fields[2].AsString;
  dprecio.Text:=DataSetC.Fields[5].AsString;
end;
if nro=7 then begin
 DataSet.Free;
 DataSet:=TClientdataSet.Create(nil);
 Funciones:=TFuncionesVarias.Create(nil);
 Funciones.ConnectionString:=modulo2.Conexion;
 txtw:='SELECT fecha FROM ParcelasVentas where (nroaccion = '+  trim(odni.Text)+')';
 if not Funciones.Listar(txtw,DataSet) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
 fechaventa:=DataSet.Fields[0].AsString;
 //laplaza:=DataSet.Fields[4].AsString;
 Funciones.Free;
end;
end;

procedure TAM_Titulares.limpiar(nro:byte);
var p,u:integer;
begin
 if nro=1 then  begin
  c4.Checked:=false;
  c6.Checked:=false;
  for p:=0 to grillat.ColCount-1 do
    for u:=1 to grillat.RowCount-1 do grillat.Cells[p,u]:='';
  grillat.RowCount:=2;
  odni.Text:='00000000';
  nroaccion.Text:='00000';
  edit1.Text:='00000000000';
  bguardar.Enabled:=false;
  agrega2.Enabled:=false;
  elimina2.Enabled:=false;
  Modifica2.Enabled:=false;
  coloca1(0);
  elsector.SetFocus;
 end;
end;

procedure TAM_Titulares.Button2Click(Sender: TObject);
var Busqueda:TLA_BUSQUEDA;
begin
 Busqueda:=TLA_BUSQUEDA.Create(self);
 try
  Busqueda.NroOpcion:=3;
  Busqueda.Caption:='Busqueda y Seleccion de Clientes';
  Busqueda.ShowModal;
  TCuif:=busqueda.DB2.Text;    //CUIf
  edit1.Text:=busqueda.DB1.Text;     //DNI
  name:=busqueda.DB4.Text;   //Nombre
  tdom:='Bº ' + busqueda.DB6.Text + ' ' + busqueda.DB5.Text;   //Domicilio
  TDoc:=busqueda.DB3.Text;   //Tipo Doc
  Nacio:=busqueda.DB8.Text;  //NAcionalidad
  TECivil:=busqueda.DB9.Text;//ecivil
  naci:=busqueda.DB10.Text;  //fecnaci
 finally
  Busqueda.Destroy;
  Agrega2.Enabled:=true;
  Agrega2.SetFocus;
 end;
end;

procedure TAM_Titulares.Agrega2Click(Sender: TObject);
var t:integer;

  function busca():boolean;
    var p:integer;
  begin
    busca:=true;
  if GrillaT.Cells[0,1] <> '' then begin
    for p:=1 to GrillaT.RowCount-1 do
      if (GrillaT.Cells[2,p]=trim(name))
      and (GrillaT.Cells[3,p]=trim(TDoc))
      and (GrillaT.Cells[6,p]=trim(Tnivel))
      and (GrillaT.Cells[8,p]=trim(tcuif))
      then busca:=false;
  end;
  end;

begin
 if busca() then begin
  if (GrillaT.RowCount > 1) and (trim(GrillaT.Cells[0,1])<>'') then begin
   t:=GrillaT.RowCount;
   GrillaT.RowCount:=GrillaT.RowCount+1;
  end
  else t:=1;

  if  GrillaT.RowCount = 8 then begin
   messagedlg('Error No se Puede seguir ingresando Titulares ',mtError,[mbok],0);
   GrillaT.Cells[0,t]:='';              GrillaT.Cells[1,t]:='';
   GrillaT.Cells[2,t]:='';              GrillaT.Cells[3,t]:='';
   GrillaT.Cells[4,t]:='';              GrillaT.Cells[5,t]:='';
   GrillaT.Cells[6,t]:='';              GrillaT.RowCount:=GrillaT.RowCount-1;
  end
  else begin
   GrillaT.Cells[0,t]:=completa1(inttostr(t),2,'0'); //
   GrillaT.Cells[1,t]:='?';                          //
   GrillaT.Cells[2,t]:=trim(name);   //Nombre
   GrillaT.Cells[3,t]:=trim(TDoc);           //TipoDNI
   GrillaT.Cells[4,t]:=trim(edit1.Text);      //DNI
   GrillaT.Cells[5,t]:=trim(tdom);      //dom
   GrillaT.Cells[6,t]:=completa1(inttostr(t),2,'0');//trim(NIVEL.text);      //nrotit
   GrillaT.Cells[7,t]:='X';                   //mdf
   GrillaT.Cells[8,t]:=trim(tcuif);    //cuif
   GrillaT.Cells[9,t]:=trim(naci);      //fecnac
   GrillaT.Cells[10,t]:=trim(nacio);    //nacionalidad
   GrillaT.Cells[11,t]:=trim(TECivil);   //ecivil
   C6.Checked:=false;
   c4.Checked:=true;
  end;
  if modifica2.Enabled = false then Agrega2.Enabled:=true;
   Agrega2.Enabled:=FALSE;
   EDIT1.Text:='00000000000';
   name:='';
   tdoc:='';
   tcuif:='';
   nacio:='';
   tecivil:='';
   TNivel:='';
   bGuardar.Enabled:=true;
 end
 else messagedlg('ERROR!! No Puede Existir dos Titulares del mismo NIVEL!!',mterror,[mbok],0);
 Button2.SetFocus;
end;

procedure TAM_Titulares.Modifica2Click(Sender: TObject);

  function busca(ht:integer):boolean;
    var p:integer;
  begin
    busca:=true;
   if GrillaT.Cells[0,1] <> '' then begin
    for p:=1 to GrillaT.RowCount-1 do
     if (GrillaT.Cells[2,p]=trim(name))
      and (GrillaT.Cells[3,p]=trim(Tdoc))
      and (GrillaT.Cells[6,p]=trim(Tnivel))
      and (GrillaT.Cells[8,p]=trim(tcuif))
      and (ht<>p)
       then busca:=false;
   end;
  end;

begin
 if busca(GrillaT.Row) then begin
  if GrillaT.Cells[1,GrillaT.Row] <> '?' then begin
     GrillaT.Cells[7,GrillaT.Row]:='X';
  end;
  GrillaT.Cells[2,GrillaT.Row]:=trim(name);         //Nombre
  GrillaT.Cells[3,GrillaT.Row]:=trim(tdoc);         //TipoDNI
  GrillaT.Cells[4,GrillaT.Row]:=trim(edit1.Text);   //DNI
  GrillaT.Cells[5,GrillaT.Row]:=trim(tdom);         //dom
  GrillaT.Cells[6,GrillaT.Row]:=trim(TNivel);//  trim(NIVEL.text);   //nrotit
  GrillaT.Cells[8,GrillaT.Row]:=trim(tcuif);        //cuif
  GrillaT.Cells[9,GrillaT.Row]:=trim(naci);         //fecnac
  GrillaT.Cells[10,GrillaT.Row]:=trim(nacio);       //cuif
  GrillaT.Cells[11,GrillaT.Row]:=trim(tecivil);     //fecnac
  C4.Checked:=false;
  C6.Checked:=true;
  Agrega2.Enabled:=false;
  Modifica2.Enabled:=false;
  elimina2.Enabled:=false;
  bguardar.Enabled:=true;
  button2.SetFocus;
 end
 else messagedlg('ERROR!! No Puede Existir dos Clientes con el mismo NIVEL!!',mterror,[mbok],0);
end;

procedure TAM_Titulares.VentasSinTitCellClick(Column: TColumn);
begin
 if not (Dataset1.IsEmpty) then begin
  GroupBox2.Enabled:=true;
  nroaccion.Text:=trim(dataset1.Fields[0].AsString);
  coloca1(1);
  agrega2.Enabled:=true;
  button2.SetFocus;
 end;
end;

procedure TAM_Titulares.bGuardarClick(Sender: TObject);
var gf,p,t,u,a:integer;
    pt,pth,alta,pn:boolean;
    dato,eltipo:string;
    txtw,txt:widestring;
begin
 if c6.Checked = false then begin  /// Se cambia el titular por otro
   gf:=messagedlgpos('Desea Agregar este Cliente como Nuevo Titular?',mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
   if gf = 1 then begin
    if c4.Checked=true then begin
     for p:=1 to GrillaT.RowCount-1 do begin
      if trim(grillaT.Cells[1,p]) = '?' then begin
       ParcelasTitulares:=TParcelasTitulares.Create(nil);
       ParcelasTitulares.ConnectionString:=modulo2.Conexion;
       parcelastitulares.C_Cuif:=strtoint64(GrillaT.Cells[8,p]);
       parcelastitulares.C_Fecha_IX1:=strcut(Fec_System(),10);
       parcelastitulares.C_NroAccion_IX2:=strtoint(odni.Text);
       parcelastitulares.C_NroTipoAcc_IX3:=2;
       parcelastitulares.C_Nivel_IX4:=strtoint(GrillaT.Cells[6,p]);
       parcelastitulares.C_Activo:=true;
       parcelastitulares.C_Observaciones:='Alta de nuevo Titular';
       parcelastitulares.C_Fecha_A:=strcut(Fec_System(),10);
       parcelastitulares.C_Usu_A:=modulo2.nro_usu;
       pt:=parcelastitulares.Agrega;
       if pt then begin
        messagedlg('Se ha Guardado el nuevo Titular con Exito',mtConfirmation,[mbok],0);
        Barra.Panels[1].Text:='Se ha Guardado los Titulares con Exito';
        dato:='Se Agrego el Titular ' +trim(GrillaT.Cells[2,p]) + ' Nivel: ' + trim(GrillaT.Cells[6,p]) + ' Accion: ' + trim(odni.Text);
        eltipo:='NUEVO TITULAR';
        ParcelasNovedades:=TParcelasNovedades.Create(nil);
        ParcelasNovedades.ConnectionString:=modulo2.Conexion;
        txtw:='INSERT INTO ParcelasNovedades (Nroaccion,Novedad,Resuelto,Prioridad) VALUES ('
        + trim(odni.text) + ' , ' + chr(39) + dato + chr(39) + ' , 1 , 0)';
        alta:=ParcelasNovedades.ListarSinResp(txtw);
        ParcelasNovedades.Free;
        /// insertamos la novedad
        ParcelasMovimientosDiarrioDetalle:=TParcelasMovimientosDiarrioDetalle.Create(nil);
        ParcelasMovimientosDiarrioDetalle.ConnectionString:=modulo2.Conexion;
        txt:= ' null , null , null , null , ' + chr(39) + strcut(Fec_System(),10) + chr(39)
        + ' , ' + trim(odni.Text)  + ' , null , null , null , null '
        + ' , ' + chr(39) + dato + chr(39) + ' , null , null , null , null , null  , ' + inttostr(modulo2.nro_usu)
        + ' , ' + chr(39) + eltipo + chr(39);
        txtw:='INSERT INTO ParcelasMovimientosDiarrioDetalle (IdVenta,IdServicio,IdExhumacion,IdTraslado,Fecha,NroAccion,'
        +'Importe,FormaPago,NroCuotas,ValorCouta,Observaciones,Tarjeta,TarjetaTitular,TarjetaNroCuotas,TarjetaComprobante,' +
        'SerieCheque,Usu_A,TipoVenta) VALUES (' +  txt + ')';
        pn:=ParcelasMovimientosDiarrioDetalle.ListarSinResp(txtw);
        ParcelasMovimientosDiarrioDetalle.Free;
       end
       else begin
        messagedlg('Error al Guardar el nuevo Titular. Consulte con un Administrador',mtError,[mbok],0);
        Barra.Panels[1].Text:='Error al Guardar los Titulares';
       end;
       parcelastitulares.Free;
      end;
     end;
     coloca1(0);
     limpiar(1);
     bguardar.Enabled:=false;
    end;
   end;
 end
 else begin
  /// nuevo titular
  if c4.Checked=true then begin
   for p:=1 to GrillaT.RowCount-1 do begin
    if trim(grillaT.Cells[1,p]) = '?' then begin
     ParcelasTitulares:=TParcelasTitulares.Create(nil);
     ParcelasTitulares.ConnectionString:=modulo2.Conexion;
     parcelastitulares.C_Cuif:=strtoint64(GrillaT.Cells[8,p]);
     parcelastitulares.C_Fecha_IX1:=strcut(Fec_System(),10);
     parcelastitulares.C_NroAccion_IX2:=strtoint(odni.Text);
     parcelastitulares.C_NroTipoAcc_IX3:=2;
     parcelastitulares.C_Nivel_IX4:=strtoint(GrillaT.Cells[6,p]);
     parcelastitulares.C_Activo:=true;
     parcelastitulares.C_Observaciones:='' ;
     parcelastitulares.C_Fecha_A:=strcut(Fec_System(),10);
     parcelastitulares.C_Usu_A:=modulo2.nro_usu;
     pt:=parcelastitulares.Agrega;
     if pt then begin
      messagedlg('Se ha Guardado el nuevo Titular con Exito',mtConfirmation,[mbok],0);
      Barra.Panels[1].Text:='Se ha Guardado los Titulares con Exito' ;
      dato:='Se Agrego el Titular ' +trim(GrillaT.Cells[2,p]) + ' Nivel: ' + trim(GrillaT.Cells[6,p]) + ' Accion: ' + trim(odni.Text);
      eltipo:='NUEVO TITULAR';
      ParcelasNovedades:=TParcelasNovedades.Create(nil);
      ParcelasNovedades.ConnectionString:=modulo2.Conexion;
      txtw:='INSERT INTO ParcelasNovedades (Nroaccion,Novedad,Resuelto,Prioridad) VALUES ('
      + trim(odni.text) + ' , ' + chr(39) + dato + chr(39) + ' , 1 , 0)';
      alta:=ParcelasNovedades.ListarSinResp(txtw);
      ParcelasNovedades.Free;
      // insertamos la novedad
        /// insertamos la novedad
        ParcelasMovimientosDiarrioDetalle:=TParcelasMovimientosDiarrioDetalle.Create(nil);
        ParcelasMovimientosDiarrioDetalle.ConnectionString:=modulo2.Conexion;
        txt:= ' null , null , null , null , ' + chr(39) + strcut(Fec_System(),10) + chr(39)
        + ' , ' + trim(odni.Text) + ' , null , null , null , null '
        + ' , ' + chr(39) + dato + chr(39) + ' , null , null , null , null , null  , ' + inttostr(modulo2.nro_usu)
        + ' , ' + chr(39) + eltipo + chr(39);
        txtw:='INSERT INTO ParcelasMovimientosDiarrioDetalle (IdVenta,IdServicio,IdExhumacion,IdTraslado,Fecha,NroAccion,'
        +'Importe,FormaPago,NroCuotas,ValorCouta,Observaciones,Tarjeta,TarjetaTitular,TarjetaNroCuotas,TarjetaComprobante,' +
        'SerieCheque,Usu_A,TipoVenta) VALUES (' +  txt + ')';
        pn:=ParcelasMovimientosDiarrioDetalle.ListarSinResp(txtw);
        ParcelasMovimientosDiarrioDetalle.Free;
     end
     else begin
      messagedlg('Error al Guardar el nuevo Titular. Consulte con un Administrador',mtError,[mbok],0);
      Barra.Panels[1].Text:='Error al Guardar los Titulares';
     end;
     parcelastitulares.Free;
     coloca1(0);
     limpiar(1);
     bguardar.Enabled:=false;
    end;
   end;
  end;

  if c6.Checked=true then begin
   gf:=messagedlgpos('Desea Modificar este Titular?',mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
   if gf = 1 then begin
    for p:=1 to GrillaT.RowCount-1 do begin
     if trim(grillaT.Cells[7,p]) = 'X' then begin
      //inserto en el historico
      ParcelasTitularesHistorico:=TParcelasTitularesHistorico.Create(nil);
      ParcelasTitularesHistorico.ConnectionString:=modulo2.Conexion;
      ParcelasTitularesHistorico.C_NroAccion_IX1:=strtoint(odni.Text);
      ParcelasTitularesHistorico.C_Cuif_IX2:=strtoint64(elcuif);
      ParcelasTitularesHistorico.C_Fecha_IX3:=strcut(Fec_System(),10);
      ParcelasTitularesHistorico.C_NroTipoAcc_IX4:=2;
      ParcelasTitularesHistorico.C_Nivel:=strtoint(elnivel);
      ParcelasTitularesHistorico.C_Fecha_A:=strcut(Fec_System(),10);
      ParcelasTitularesHistorico.C_Usu_A:=modulo2.nro_usu;
      pth:=ParcelasTitularesHistorico.Agrega;
      if pth then begin
       Barra.Panels[1].Text:='Se ha Modificado este Titular con Exito'
      end
      else begin
       Barra.Panels[1].Text:='Error al Modificar los Titulares';
      end;
      ParcelasTitularesHistorico.Free;
      ParcelasTitulares:=TParcelasTitulares.Create(nil);
      ParcelasTitulares.ConnectionString:=modulo2.Conexion;
      ParcelasTitulares.C_Id_PK:=strtoint(GrillaT.Cells[1,p]);
      parcelastitulares.C_Cuif:=strtoint64(GrillaT.Cells[8,p]);
      parcelastitulares.C_Fecha_IX1:=strcut(Fec_System(),10);
      parcelastitulares.C_NroAccion_IX2:=strtoint(odni.Text);
      parcelastitulares.C_NroTipoAcc_IX3:=2;
      parcelastitulares.C_Nivel_IX4:=strtoint(GrillaT.Cells[6,p]);
      parcelastitulares.C_Activo:=true;
      parcelastitulares.C_Observaciones:='' ;
      parcelastitulares.C_Fecha_A:=strcut(Fec_System(),10);
      parcelastitulares.C_Usu_A:=modulo2.nro_usu;
      pt:=parcelastitulares.Modificar;
      if pt then begin
       messagedlg('Se ha Modificado el Titular con Exito',mtConfirmation,[mbok],0);
       Barra.Panels[1].Text:='Se ha Modificado este Titular con Exito';
       dato:=' Se Modifico el Nuevo Titular ' +trim(GrillaT.Cells[2,p]) + ' Nivel: ' + trim(GrillaT.Cells[6,p]) + ' Accion: ' + trim(odni.Text);
       ParcelasNovedades:=TParcelasNovedades.Create(nil);
       ParcelasNovedades.ConnectionString:=modulo2.Conexion;
       txtw:='INSERT INTO ParcelasNovedades (Nroaccion,Novedad,Resuelto,Prioridad) VALUES ('
       + trim(odni.text)  + ' , ' + chr(39) + dato + chr(39) + ' , 1 , 0)';
       alta:=ParcelasNovedades.ListarSinResp(txtw);
       ParcelasNovedades.Free;
      end
      else begin
       messagedlg('Error al Modificar el Titular. Consulte con un Administrador',mtError,[mbok],0);
       Barra.Panels[1].Text:='Error al Modificar los Titulares';
      end;
      parcelastitulares.Free;
      coloca1(0);
      bguardar.Enabled:=false;
     end;
    end;
   end;
  end;
 end;
end;

procedure TAM_Titulares.ActuNivelesTitulares();
var p:integer;
    pt:boolean;
    txtw:widestring;
begin
 coloca1(1);
 for p:=1 to GrillaT.RowCount-1 do begin    //13
  if trim(grillaT.Cells[0,p]) <> '' then begin
   ParcelasTitulares:=TParcelasTitulares.Create(nil);
   ParcelasTitulares.ConnectionString:=modulo2.Conexion;
   txtw:='UPDATE ParcelasTitulares SET Nivel = ' + grillaT.Cells[0,p]
   + ' WHERE (Id =' + grillaT.Cells[1,p] + ') and (cuif = ' + grillaT.Cells[8,p] +')';
   pt:=ParcelasTitulares.ListarSinResp(txtw);
   ParcelasTitulares.Free;
  end;
 end;
end;


procedure TAM_Titulares.GrillaTClick(Sender: TObject);
begin
  c4.Checked:=false;
  c6.Checked:=true;
  Agrega2.Enabled:=false;
  Modifica2.Enabled:=true;
  elimina2.Enabled:=true;
  edit1.Text:=trim(GrillaT.Cells[4,GrillaT.Row]);
  name:=trim(GrillaT.Cells[2,GrillaT.Row]);
  tdoc:=trim(GrillaT.Cells[3,GrillaT.Row]);
  Tnivel:=trim(GrillaT.Cells[6,GrillaT.Row]);
  tcuif:=trim(GrillaT.Cells[8,GrillaT.Row]);
  naci:=trim(GrillaT.Cells[9,GrillaT.Row]);
  nacio:=trim(GrillaT.Cells[10,GrillaT.Row]);
  tecivil:=trim(GrillaT.Cells[11,GrillaT.Row]);
  elcuif:=trim(GrillaT.Cells[8,GrillaT.Row]);
  elnivel:=trim(GrillaT.Cells[6,GrillaT.Row]);
  dato1:= 'Titular Anterior ' + name;
  button2.SetFocus;
end;

procedure TAM_Titulares.ElSectorExit(Sender: TObject);
begin
if ElSector.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Sector Ingresado!!',mterror,[mbok],0);
  ElSector.SetFocus;
end;
end;

procedure TAM_Titulares.ElSectorKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  coloca1(2);
  laaccion.Enabled:=true;
  laaccion.SetFocus;
 end
 else begin
  if ( StrScan('ABCDEFGHIJKLMNÑOPQRSTUVWXYZ',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;
end;

procedure TAM_Titulares.LaAccionExit(Sender: TObject);
begin
 if LaAccion.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el N° de Acción Ingresado!!',mterror,[mbok],0);
  LaAccion.SetFocus;
 end;
end;

procedure TAM_Titulares.LaAccionKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
   Key := #0;
   coloca1(3);
   busca.SetFocus;
  end
  else begin
   if ( StrScan('0123456789',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
    else Key := #0;
  end;
end;

procedure TAM_Titulares.ODNIKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  busca.SetFocus;
 end
 else begin
  if ( StrScan('0123456789',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
  else Key := #0;
 end;
end;

procedure TAM_Titulares.BuscaClick(Sender: TObject);
begin
  dprecio.Clear;
  coloca1(1);
  coloca1(5);
  coloca1(6);
  coloca1(7);
end;

procedure TAM_Titulares.elimina2Click(Sender: TObject);
var t,p,gf:integer;
var bt,pthb:boolean;
begin
 Panel1.Visible:=true;
 motivos.SetFocus;
// if trim(grillat.Cells[0,1])<>'' then begin
//  gf:=1;
//  t:=0;
//  if grillat.Cells[1,grillat.Row] = '?' then t:=1
//  else gf:=messagedlg('Desea Borrar este Titular Seleccionado?' + chr(13)
//       + 'Se eliminará definitivamente de la Base de Datos',mtWarning,[mbok,mbCancel],0);
//  if gf = 1 then begin
//       ///inserto en el historico
//       ParcelasTitularesHistorico:=TParcelasTitularesHistorico.Create(nil);
//       ParcelasTitularesHistorico.ConnectionString:=modulo2.Conexion;
//       ParcelasTitularesHistorico.C_NroAccion_IX1:=strtoint(odni.Text);
//       ParcelasTitularesHistorico.C_Cuif_IX2:=strtoint64(GrillaT.Cells[8,grillat.Row]);
//       ParcelasTitularesHistorico.C_Fecha_IX3:=strcut(Fec_System(),10);
//       ParcelasTitularesHistorico.C_NroTipoAcc_IX4:=2;
//       ParcelasTitularesHistorico.C_Nivel:=strtoint(GrillaT.Cells[6,grillat.Row]);
//       ParcelasTitularesHistorico.C_Fecha_A:=strcut(Fec_System(),10);
//       ParcelasTitularesHistorico.C_Usu_A:=modulo2.nro_usu;
//       pthb:=ParcelasTitularesHistorico.Agrega;
//       if pthb then begin
//         Barra.Panels[1].Text:='Se ha Modificado este Titular con Exito'
//       end
//       else begin
//         Barra.Panels[1].Text:='Error al Modificar los Titulares';
//       end;
//       ParcelasTitularesHistorico.Free;
//    ///
//    if t=0 then begin
//      ParcelasTitulares:=TParcelasTitulares.Create(nil);
//      ParcelasTitulares.ConnectionString:=modulo2.Conexion;
//      bt:=ParcelasTitulares.Borrar(grillat.Cells[1,grillat.Row]);
//      ParcelasTitulares.Free;
//      if bt then  begin
//        Barra.Panels[1].Text:='Se ha Eliminado este Titular con Exito';
//        coloca1(1);
//        ActuNivelesTitulares();
//      end
//      else begin
//       Barra.Panels[1].Text:='Error al Eliminar este Titular con Exito';
//      end;
//    end;
//    t:=grillat.Row;
//    if (t >= 1) and (grillat.RowCount > 2) then begin
//      THackStringGrid(grillat).DeleteRow(t);
//    end
//    else begin
//      for t:=0 to grillat.ColCount-1 do grillat.Cells[t,1]:='';
//    end;
//  end
//  else begin
//   messagedlg('Ud. ha Cancelado la Eleminacion de este Titular',mtInformation,[mbok],0);
//  end;
//  elimina2.Enabled:=false;
//  Modifica2.Enabled:=false;
//  coloca1(1);
// end;
end;

procedure TAM_Titulares.motivosExit(Sender: TObject);
begin
 if motivos.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Motivo Ingresado!!',mterror,[mbok],0);
  motivos.SetFocus;
 end;
end;

procedure TAM_Titulares.motivosKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
  Key := #0;
  //  //coloca1(3);
  button1.SetFocus;
 end;
end;

procedure TAM_Titulares.Button1Click(Sender: TObject);
var t,p,gf:integer;
var bt,pthb,pt:boolean;
    dato,elorigen,eltipo:string;
    txtw,txt:widestring;
begin
 if trim(grillat.Cells[0,1])<>'' then begin
  gf:=1;
  t:=0;
  if grillat.Cells[1,grillat.Row] = '?' then t:=1
  else gf:=messagedlg('Desea Borrar este Titular Seleccionado?' + chr(13)
       + 'Se eliminará definitivamente de la Base de Datos',mtWarning,[mbok,mbCancel],0);
  if gf = 1 then begin
   ///inserto en el historico
   ParcelasTitularesHistorico:=TParcelasTitularesHistorico.Create(nil);
   ParcelasTitularesHistorico.ConnectionString:=modulo2.Conexion;
   ParcelasTitularesHistorico.C_NroAccion_IX1:=strtoint(odni.Text);
   ParcelasTitularesHistorico.C_MotivoBaja:=motivos.Text;
   ParcelasTitularesHistorico.C_Cuif_IX2:=strtoint64(GrillaT.Cells[8,grillat.Row]);
   ParcelasTitularesHistorico.C_Fecha_IX3:=strcut(Fec_System(),10);
   ParcelasTitularesHistorico.C_NroTipoAcc_IX4:=2;
   ParcelasTitularesHistorico.C_Nivel:=strtoint(GrillaT.Cells[6,grillat.Row]);
   ParcelasTitularesHistorico.C_Fecha_A:=strcut(Fec_System(),10);
   ParcelasTitularesHistorico.C_Usu_A:=modulo2.nro_usu;
   pthb:=ParcelasTitularesHistorico.Agrega;
   if pthb then begin
    Barra.Panels[1].Text:='Se ha Eliminado este Titular con Exito'
   end
   else begin
    Barra.Panels[1].Text:='Error al Eliminar los Titulares';
   end;
   ParcelasTitularesHistorico.Free;

   if t=0 then begin
    ParcelasTitulares:=TParcelasTitulares.Create(nil);
    ParcelasTitulares.ConnectionString:=modulo2.Conexion;
    bt:=ParcelasTitulares.Borrar(grillat.Cells[1,grillat.Row]);
    ParcelasTitulares.Free;
    dato:='Se ha Eliminado el Titular:' + trim((grillat.Cells[2,grillat.Row])) +
    ' Nivel: ' + trim((grillat.Cells[6,grillat.Row])) + ' Motivo: ' + trim(motivos.Text)
    + ' Accion: ' + trim(odni.Text);
    eltipo:='ELIMINACION DE TITULAR' ;
    if bt then  begin
     Barra.Panels[1].Text:='Se ha Eliminado este Titular con Exito';
     ParcelasNovedades:=TParcelasNovedades.Create(nil);
     ParcelasNovedades.ConnectionString:=modulo2.Conexion;
     txtw:='INSERT INTO ParcelasNovedades (Nroaccion,Novedad,Resuelto,Prioridad) VALUES ('
     + trim(odni.text) + ' , ' + chr(39) + dato + chr(39) + ' , 1 , 0)';
     bt:=ParcelasNovedades.ListarSinResp(txtw);
     ParcelasNovedades.Free;
     ActuNivelesTitulares();
     // inserto la novedad
     ParcelasMovimientosDiarrioDetalle:=TParcelasMovimientosDiarrioDetalle.Create(nil);
     ParcelasMovimientosDiarrioDetalle.ConnectionString:=modulo2.Conexion;
     txt:= ' null , null , null , null , ' + chr(39) + strcut(Fec_System(),10) + chr(39)
     + ' , ' + trim(odni.Text) + ' , null , null , null , null '
     + ' , ' + chr(39) + dato + chr(39) + ' , null , null , null , null , null  , ' + inttostr(modulo2.nro_usu)
     + ' , ' + chr(39) + eltipo + chr(39);
     //end;
     txtw:='INSERT INTO ParcelasMovimientosDiarrioDetalle (IdVenta,IdServicio,IdExhumacion,IdTraslado,Fecha,NroAccion,'
     +'Importe,FormaPago,NroCuotas,ValorCouta,Observaciones,Tarjeta,TarjetaTitular,TarjetaNroCuotas,TarjetaComprobante,' +
     'SerieCheque,Usu_A,TipoVenta) VALUES (' +  txt + ')';
     pt:=ParcelasMovimientosDiarrioDetalle.ListarSinResp(txtw);
     ParcelasMovimientosDiarrioDetalle.Free;
    end
    else begin
     Barra.Panels[1].Text:='Error al Eliminar este Titular con Exito';
    end;
   end;
   t:=grillat.Row;
   if (t >= 1) and (grillat.RowCount > 2) then begin
    THackStringGrid(grillat).DeleteRow(t);
   end
   else begin
    for t:=0 to grillat.ColCount-1 do grillat.Cells[t,1]:='';
   end;
  end
  else begin
   messagedlg('Ud. ha Cancelado la Eleminacion de este Titular',mtInformation,[mbok],0);
  end;
  elimina2.Enabled:=false;
  Modifica2.Enabled:=false;
  panel1.Visible:=false;
  coloca1(1);
 end;
end;

procedure TAM_Titulares.grillaformuClick(Sender: TObject);
var t,y:integer;
begin
 if trim(grillaformu.Cells[2,grillaformu.Row])= 'True' then begin
  if trim(grillaformu.Cells[3,grillaformu.Row])='' then begin
   grillaformu.Cells[3,grillaformu.Row]:='X';
   for t:=1 to grillaformu.RowCount-1 do begin
    if trim(grillaformu.Cells[3,t]) = 'X' then begin
     if trim(grillaformu.Cells[0,t]) = 'FRM-01-01' then begin
      imprimiracta.Enabled:=true;
      //detalledeimp:=trim(grillaformu.Cells[1,t]);
      //GroupBox8.Caption := detalledeimp;
      //GroupBox8.Visible :=true;
      //GroupBox9.Visible :=false;
      //GroupBox10.Visible :=false;
      //GroupBox11.Visible :=false;
     end;
     if trim(grillaformu.Cells[0,t]) = 'FRM-02-01' then begin
      imprimircesion.Enabled:=true;
      //detalledeimp:=trim(grillaformu.Cells[1,t]);
      //GroupBox9.Caption := detalledeimp;
      //GroupBox9.Visible :=true;
      //GroupBox8.Visible :=false;
      //GroupBox10.Visible :=false;
      //GroupBox11.Visible :=false;
     end;
     if trim(grillaformu.Cells[0,t]) = 'FRM-03-01' then begin
      ImprimirClausular.Enabled:=true;
      //detalledeimp:=trim(grillaformu.Cells[1,t]);
      //GroupBox9.Caption := detalledeimp;
      //GroupBox9.Visible :=true;
      //GroupBox8.Visible :=false;
      //GroupBox10.Visible :=false;
      //GroupBox11.Visible :=false;
     end;
     if trim(grillaformu.Cells[0,t]) = 'FRM-04-02' then begin
      ImprimeReglamento.Enabled:=true;
      //detalledeimp:=trim(grillaformu.Cells[1,t]);
      //GroupBox10.Caption := detalledeimp;
      //GroupBox10.Visible :=true;
      //GroupBox8.Visible :=false;
      //GroupBox9.Visible :=false;
      //GroupBox11.Visible :=false;
     end;
     if trim(grillaformu.Cells[0,t]) = 'FRM-05-01' then begin
      Imprimircarta.Enabled:=true;
      //detalledeimp:=trim(grillaformu.Cells[1,t]);
      //GroupBox11.Caption := detalledeimp;
      //GroupBox11.Visible :=true;
      //GroupBox8.Visible :=false;
      //GroupBox9.Visible :=false;
      //GroupBox10.Visible :=false;
     end;
    end;
   end;
  end
 end;
end;

procedure TAM_Titulares.ImprimirActaClick(Sender: TObject);
var gf:integer;
begin
 gf:=messagedlgpos('Desea Imprimir la SOLICITUD DE ADQUISICION correspondiente?'
    ,mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
 if gf = 1 then begin
  //Rvs.DefaultDest:=rdPreview;
  Rvs.SystemPrinter.Copies :=2;
  NroOpc:=1;
  RvS.Execute;
  {RvS.DefaultDest := rdFile;
  RvS.DoNativeOutput := False;
  RvS.RenderObject := RvRenderPDF1;
  RvS.OutputFileName := modulo2.path_todo + '\PDF\Sol. Adquisicion Accion '+trim(d1.Text)+ '.pdf';
  RvS.SystemSetups := RvS.SystemSetups - [ssAllowSetup];
  RvS.Execute; }
 end;
end;

procedure TAM_Titulares.ImprimirCesionClick(Sender: TObject);
var gf:integer;
begin
 gf:=messagedlgpos('Desea Imprimir la CESION Y TRANSFERENCIA DE ACCIONES?'
    ,mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
 if gf = 1 then begin
  //Rvs.DefaultDest:=rdPreview;
  Rvs.SystemPrinter.Copies :=3;
  NroOpc:=2;
  RvS.Execute;
  {RvS.DefaultDest := rdFile;
  RvS.DoNativeOutput := False;
  RvS.RenderObject := RvRenderPDF1;
  RvS.OutputFileName := modulo2.path_todo + '\PDF\Cesion y Transf Accion '+trim(d1.Text)+ '.pdf';
  RvS.SystemSetups := RvS.SystemSetups - [ssAllowSetup];
  RvS.Execute; }
 end;
end;

procedure TAM_Titulares.ImprimirClausularClick(Sender: TObject);
var gf:integer;
begin
 gf:=messagedlgpos('Desea Imprimir las CLAUSULAS PARTICULARES?'
    ,mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
 if gf = 1 then begin
  //Rvs.DefaultDest:=rdPreview;
  Rvs.SystemPrinter.Copies :=3;
  NroOpc:=3;
  RvS.Execute;
  {RvS.DefaultDest := rdFile;
  RvS.DoNativeOutput := False;
  //Rvs.SystemPrinter.Copies :=1;
  RvS.RenderObject := RvRenderPDF1;
  RvS.OutputFileName := modulo2.path_todo + '\PDF\Clausulas Accion '+trim(d1.Text)+ '.pdf';
  RvS.SystemSetups := RvS.SystemSetups - [ssAllowSetup];
  RvS.Execute;}
 end;
end;

procedure TAM_Titulares.ImprimeReglamentoClick(Sender: TObject);
var gf:integer;
begin
 gf:=messagedlgpos('Desea Imprimir el REGLAMENTO INTERNO?'
    ,mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
 if gf = 1 then begin
  GroupBox12.Visible :=TRUE;
  JvBitBtn2.SetFocus;
 end;
end;

procedure TAM_Titulares.ImprimirCartaClick(Sender: TObject);
var gf:integer;
begin
 gf:=messagedlgpos('Desea Imprimir la CARTA DE CESION?'
 ,mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
 if gf = 1 then begin
  //Rvs.DefaultDest:=rdPreview;
  Rvs.SystemPrinter.Copies :=1;
  NroOpc:=6;
  RvS.Execute;
  {RvS.DefaultDest := rdFile;
  RvS.DoNativeOutput := False;
  RvS.RenderObject := RvRenderPDF1;
  RvS.OutputFileName := modulo2.path_todo + '\PDF\Carta Cesion Accion '+trim(d1.Text)+ '.pdf';
  RvS.SystemSetups := RvS.SystemSetups - [ssAllowSetup];
  RvS.Execute;   }
 end;
end;

procedure TAM_Titulares.RvSPrint(Sender: TObject);
begin
  if NroOpc = 1 then SolicitudAdquisicion;
  if NroOpc = 2 then Cesion;
  if NroOpc = 3 then Clausulas;
  if NroOpc = 5 then Reglamento;
  if NroOpc = 6 then Carta;
  if NroOpc = 7 then Reglamento1;
end;

procedure TAM_Titulares.Carta();
var posx,posy:double;
    hoja:integer;
    ElMes,ElAnio,ElDia: string;
    Imagen1:  TBitmap;
    PathLogo:string;
begin
 {if NroOpcion <> 3 then begin
   posx:=1;
   posy:=2;
   hoja:=1;
   with RvS do begin
    Imagen1 := TBitMap.Create;
    PathLogo:=modulo2.path_todo + '\Formularios\FRM-05-01.jpg';
    if FileExists(PathLogo) then begin
      Image1.Picture.LoadFromFile(PathLogo);
      Imagen1.Assign(Image1.Picture.Graphic);
      BaseReport.PrintBitmapRect(1,1,posx+215,posy+290,Imagen1);
    end;
    Imagen1.Free;

    ElMes:=el_mes(strtoint(strcut_midle(FECHA.Text,4,5)));
    ElAnio:=strcut_midle(FECHA.Text,7,10);
    ElDia:=LeftStr(FECHA.Text,2);

    BaseReport.SetFont('Arial Black',8);
    BaseReport.FontColor:=clRED;
    BaseReport.PrintXY(posx+147,posy+20,ElDia);
    BaseReport.PrintXY(posx+159,posy+20,ElMes);
    BaseReport.PrintXY(posx+192,posy+20,ElAnio);

    BaseReport.PrintXY(posx+106,posy+69,trim(grillaT.Cells[2,1]));//trim(DBEdit7.text));     //Nombre
    BaseReport.PrintXY(posx+50,posy+77,trim(grillat.cells[3,1]));//trim(DBEdit2.text));    //Tipo
    BaseReport.PrintXY(posx+65,posy+77,trim(grillat.cells[4,1]));//trim(DBEdit8.text));    //Nro Doc
    BaseReport.PrintXY(posx+115,posy+77,trim(grillat.cells[5,1]));//trim(DBEdit4.text));    //Domicilio

    BaseReport.PrintXY(posx+123,posy+85,ElDia);
    BaseReport.PrintXY(posx+135,posy+85,ElMes);
    BaseReport.PrintXY(posx+175,posy+85,ElAnio);

    BaseReport.PrintXY(posx+91,posy+115,trim(D2.text));    //Accion
    BaseReport.PrintXY(posx+151,posy+140,trim(D1.text));    //Titulo
    BaseReport.PrintXY(posx+168,posy+148,trim(D4.text));   //Plaza
    BaseReport.PrintXY(posx+43,posy+156,trim(D3.text));   //Sector
    BaseReport.PrintXY(posx+72,posy+156,trim(D5.text));   //Parcela
    BaseReport.PrintXY(posx+110,posy+247,trim(grillaT.Cells[2,1]));//trim(DBEdit7.text));     //Nombre
   end;
 end
 else begin   /// transferencia de titulares  }
   posx:=1;
   posy:=2;
   hoja:=1;
   with RvS do begin
    rvs.SystemPrinter.Copies:=1;
    Imagen1 := TBitMap.Create;
    PathLogo:=modulo2.path_todo + '\Formularios\FRM-05-01.jpg';
    if FileExists(PathLogo) then begin
      Image1.Picture.LoadFromFile(PathLogo);
      Imagen1.Assign(Image1.Picture.Graphic);
      BaseReport.PrintBitmapRect(1,1,posx+215,posy+290,Imagen1);
    end;
    Imagen1.Free;
    ElMes:=el_mes(strtoint(strcut_midle(fechaventa,4,5)));
    ElAnio:=strcut_midle(fechaventa,7,10);
    ElDia:=strcut_midle(fechaventa,1,2);

    BaseReport.SetFont('Arial Black',8);
    BaseReport.FontColor:=clRED;
    BaseReport.PrintXY(posx+147,posy+20,ElDia);
    BaseReport.PrintXY(posx+159,posy+20,ElMes);
    BaseReport.PrintXY(posx+192,posy+20,ElAnio);

    BaseReport.PrintXY(posx+106,posy+69,trim(grillaT.Cells[2,1]));//trim(DBEdit7.text));     //Nombre
    BaseReport.PrintXY(posx+50,posy+77,trim(grillat.cells[3,1]));//trim(DBEdit2.text));    //Tipo
    BaseReport.PrintXY(posx+65,posy+77,trim(grillat.cells[4,1]));//trim(DBEdit8.text));    //Nro Doc
    BaseReport.PrintXY(posx+115,posy+77,trim(grillat.cells[5,1]));//trim(DBEdit4.text));    //Domicilio

    BaseReport.PrintXY(posx+123,posy+85,ElDia);
    BaseReport.PrintXY(posx+135,posy+85,ElMes);
    BaseReport.PrintXY(posx+175,posy+85,ElAnio);

    BaseReport.PrintXY(posx+91,posy+115,trim(odni.text));    //Accion
    BaseReport.PrintXY(posx+168,posy+148,trim(laplaza));   //Plaza
    BaseReport.PrintXY(posx+43,posy+156,trim(elsector.text));   //Sector
    BaseReport.PrintXY(posx+72,posy+156,trim(laaccion.text));   //Parcela
    BaseReport.PrintXY(posx+110,posy+247,trim(grillaT.Cells[2,1]));//trim(DBEdit7.text));     //Nombre

    basereport.NewPage ;
    posx:=1;
    posy:=2;
    hoja:=1;

    Imagen1 := TBitMap.Create;
    PathLogo:=modulo2.path_todo + '\Formularios\FRM-05-01.jpg';
    if FileExists(PathLogo) then begin
     Image1.Picture.LoadFromFile(PathLogo);
     Imagen1.Assign(Image1.Picture.Graphic);
     BaseReport.PrintBitmapRect(1,1,posx+215,posy+290,Imagen1);
    end;
    Imagen1.Free;
    ElMes:=el_mes(strtoint(strcut_midle(lafec,4,5)));
    ElAnio:=strcut_midle(lafec,7,10);
    ElDia:=strcut_midle(lafec,1,2);

    BaseReport.SetFont('Arial Black',8);
    BaseReport.FontColor:=clRED;
    BaseReport.PrintXY(posx+147,posy+20,ElDia);
    BaseReport.PrintXY(posx+159,posy+20,ElMes);
    BaseReport.PrintXY(posx+192,posy+20,ElAnio);

    BaseReport.PrintXY(posx+108,posy+69,trim(grillaT.Cells[2,1]));//trim(DBEdit7.text));     //Nombre
    BaseReport.PrintXY(posx+50,posy+77,trim(grillat.cells[3,1]));//trim(DBEdit2.text));    //Tipo
    BaseReport.PrintXY(posx+65,posy+77,trim(grillat.cells[4,1]));//trim(DBEdit8.text));    //Nro Doc
    BaseReport.PrintXY(posx+112,posy+77,trim(grillat.cells[5,1]));//trim(DBEdit4.text));    //Domicilio

    BaseReport.PrintXY(posx+123,posy+85,ElDia);
    BaseReport.PrintXY(posx+135,posy+85,ElMes);
    BaseReport.PrintXY(posx+175,posy+85,ElAnio);

   // BaseReport.PrintXY(posx+33,posy+92,nomtransf);
   // BaseReport.PrintXY(posx+174,posy+92,dnitransf);
   // BaseReport.PrintXY(posx+115,posy+102,domtransf);

    BaseReport.PrintXY(posx+91,posy+117,trim(odni.text));    //Accion
    BaseReport.PrintXY(posx+168,posy+148,trim(laplaza));   //Plaza
    BaseReport.PrintXY(posx+43,posy+156,trim(elsector.text));   //Sector
    BaseReport.PrintXY(posx+72,posy+156,trim(laaccion.text));   //Parcela
    BaseReport.PrintXY(posx+110,posy+247,trim(grillaT.Cells[2,1]));//trim(
   end;
 //end
end;


procedure TAM_Titulares.Reglamento();
var posx,posy:double;
    t,hoja:integer;
    Imagen1:  TBitmap;
    Fuente,PathLogo:string;
begin
 posx:=1;
 posy:=2;
 hoja:=1;
 with RvS do begin
  rvs.SystemPrinter.Copies:=2;
  Imagen1 := TBitMap.Create;
  PathLogo:=modulo2.path_todo + '\Formularios\FRM-04-01.jpg';
  if FileExists(PathLogo) then begin
   Image1.Picture.LoadFromFile(PathLogo);
   Imagen1.Assign(Image1.Picture.Graphic);
   BaseReport.PrintBitmapRect(1,1,posx+215,posy+290,Imagen1);
  end;
  Imagen1.Free;
  {BaseReport.NewPage;
  hoja:=hoja+1;
  Imagen1 := TBitMap.Create;
  PathLogo:=modulo2.path_todo + '\Formularios\FRM-04-02.jpg';
  if FileExists(PathLogo) then begin
   Image1.Picture.LoadFromFile(PathLogo);
   Imagen1.Assign(Image1.Picture.Graphic);
   BaseReport.PrintBitmapRect(1,1,posx+215,posy+290,Imagen1);
   for t:=1 to GrillaT.RowCount-1 do begin
    if  t=1 then BaseReport.PrintXY(posx+20,posy+262,TRIM(GrillaT.Cells[2,t]));     //Nombre 1º Cesionario
    if  t=2 then BaseReport.PrintXY(posx+85,posy+262,TRIM(GrillaT.Cells[2,t]));     //Nombre 2º Cesionario
    if  t=3 then BaseReport.PrintXY(posx+155,posy+262,TRIM(GrillaT.Cells[2,t]));     //Nombre 3º Cesionario
   end;
  end;
  Imagen1.Free; }
 end;
end;

procedure TAM_Titulares.Reglamento1();
var posx,posy:double;
    t,hoja:integer;
    Imagen1:  TBitmap;
    Fuente,PathLogo:string;
begin
 posx:=1;
 posy:=2;
 hoja:=1;
 with RvS do begin
  rvs.SystemPrinter.Copies:=2;
  Imagen1 := TBitMap.Create;
  PathLogo:=modulo2.path_todo + '\Formularios\FRM-04-02.jpg';
  if FileExists(PathLogo) then begin
   Image1.Picture.LoadFromFile(PathLogo);
   Imagen1.Assign(Image1.Picture.Graphic);
   BaseReport.PrintBitmapRect(1,1,posx+215,posy+290,Imagen1);
   for t:=1 to GrillaT.RowCount-1 do begin
    if  t=1 then BaseReport.PrintXY(posx+20,posy+262,TRIM(GrillaT.Cells[2,t]));     //Nombre 1º Cesionario
    if  t=2 then BaseReport.PrintXY(posx+85,posy+262,TRIM(GrillaT.Cells[2,t]));     //Nombre 2º Cesionario
    if  t=3 then BaseReport.PrintXY(posx+155,posy+262,TRIM(GrillaT.Cells[2,t]));     //Nombre 3º Cesionario
   end;
  end;
  Imagen1.Free;
 end;
end;

procedure TAM_Titulares.Clausulas();
var posx,posy:double;
    t,hoja:integer;
    ElMes,ElAnio,ElDia: string;
    Imagen1:  TBitmap;
    PathLogo:string;
begin
 posx:=1;
 posy:=2;
 hoja:=1;
 with RvS do begin
  //rvs.SystemPrinter.Copies:=3;
  Imagen1 := TBitMap.Create;
  PathLogo:=modulo2.path_todo + '\Formularios\FRM-03-01.jpg';
  if FileExists(PathLogo) then begin
    Image1.Picture.LoadFromFile(PathLogo);
    Imagen1.Assign(Image1.Picture.Graphic);
    BaseReport.PrintBitmapRect(1,1,posx+215,posy+290,Imagen1);
  end;
  Imagen1.Free;
  ElMes:=el_mes(strtoint(strcut_midle(fechaventa,4,5)));
  ElAnio:=strcut_midle(fechaventa,7,10);
  ElDia:=strcut_midle(fechaventa,1,2);

  BaseReport.SetFont('Arial Black',8);
  BaseReport.FontColor:=clRED;
  BaseReport.PrintXY(posx+147,posy+32,ElDia);
  BaseReport.PrintXY(posx+177,posy+32,ElMes);
  BaseReport.PrintXY(posx+15,posy+35,ElAnio);
  //BaseReport.PrintXY(posx+151,posy+33,'Read Gustavo Alberto');
  BaseReport.PrintXY(posx+43,posy+35,trim(grillaT.Cells[2,1]));//trim(DBEdit7.text));     //Nombre
  BaseReport.PrintXY(posx+166,posy+35,trim(grillat.cells[3,1]));//trim(DBEdit2.text));    //Tipo
  BaseReport.PrintXY(posx+184,posy+35,trim(grillat.cells[4,1]));//trim(DBEdit8.text));    //Nro Doc
  BaseReport.PrintXY(posx+40,posy+38,trim(grillat.cells[5,1]));//trim(DBEdit4.text));    //Domicilio
  BaseReport.PrintXY(posx+10,posy+42,trim(grillat.cells[12,1])); //  //Ciudad
  BaseReport.PrintXY(posx+167,posy+42,trim(odni.text));    //Accion
  //BaseReport.PrintXY(posx+50,posy+46,trim(D1.text));    //Titulo
  BaseReport.PrintXY(posx+29,posy+50,trim(laplaza));   //Plaza
  BaseReport.PrintXY(posx+82,posy+50,trim(elsector.text));   //Sector
  BaseReport.PrintXY(posx+108,posy+50,trim(laaccion.text));   //Parcela
  for t:=1 to GrillaT.RowCount-1 do begin
    if  t=1 then BaseReport.PrintXY(posx+20,posy+250,TRIM(GrillaT.Cells[2,t]));     //Nombre 1º Cesionario
    if  t=2 then BaseReport.PrintXY(posx+140,posy+250,TRIM(GrillaT.Cells[2,t]));    //Nombre 2º Cesionario
  end;
 end;
end;

procedure TAM_Titulares.Cesion();
var posx,posy:double;
    ElMes,ElAnio,ElDia: string;
    t,hoja:integer;
    Imagen1:  TBitmap;
    PathLogo:string;
begin
 posx:=1;
 posy:=2;
 hoja:=1;
 with RvS do begin
  Imagen1 := TBitMap.Create;
  PathLogo:=modulo2.path_todo + '\Formularios\FRM-02-02.jpg';
  if FileExists(PathLogo) then begin
   Image1.Picture.LoadFromFile(PathLogo);
   Imagen1.Assign(Image1.Picture.Graphic);
   BaseReport.PrintBitmapRect(1,1,posx+215,posy+290,Imagen1);
  end;
  Imagen1.Free;

  ElMes:=el_mes(strtoint(strcut_midle(fechaventa,4,5)));
  ElAnio:=strcut_midle(fechaventa,7,10);
  ElDia:=strcut_midle(fechaventa,1,2);

  BaseReport.SetFont('Arial Black',8);
  BaseReport.FontColor:=clRED;
  BaseReport.PrintXY(posx+149,posy+29,ElDia);
  BaseReport.PrintXY(posx+178,posy+29,ElMes);
  BaseReport.PrintXY(posx+16,posy+33,ElAnio);
  BaseReport.PrintXY(posx+151,posy+33,'READ GUSTAVO ALBERTO');
  BaseReport.PrintXY(posx+27,posy+44,trim(grillaT.Cells[2,1]));//trim(DBEdit7.text));     //Nombre
  BaseReport.PrintXY(posx+159,posy+44,trim(grillat.cells[3,1]));//trim(DBEdit2.text));    //Tipo
  BaseReport.PrintXY(posx+176,posy+44,trim(grillat.cells[4,1]));//trim(DBEdit8.text));    //Nro Doc
  BaseReport.PrintXY(posx+30,posy+47,trim(grillat.cells[5,1]));//trim(DBEdit4.text));    //Domicilio
  BaseReport.PrintXY(posx+177,posy+47,trim(grillat.cells[12,1]));//trim(DBEdit1.text));   //Ciudad
  BaseReport.PrintXY(posx+30,posy+52,trim(grillat.cells[16,1]));//trim(DBEdit1.text));   //prov
  //Importe Venta
  //if trim(tpopago.text)='Contado' then begin
  // BaseReport.PrintXY(posx+108,posy+83,NumToPesos(trim(saldo.text))); //Precio Letras
  // BaseReport.PrintXY(posx+15,posy+86,trim(saldo.text));            //Precio
  //end
  //else begin
  // BaseReport.PrintXY(posx+108,posy+83,NumToPesos(trim(DPrecio.text))); //Precio Letras
  // BaseReport.PrintXY(posx+15,posy+86,trim(DPrecio.text));              //Precio Numero
  //end;

  //importe anticipo
  //if trim(tpopago.text)='Contado' then begin
  // BaseReport.PrintXY(posx+15,posy+91,''); //Precio Letras
  // BaseReport.PrintXY(posx+115,posy+91,'');            //Precio
  //end
  //else begin
  // BaseReport.PrintXY(posx+12,posy+91,NumToPesos(trim(importee.text))); //Precio Letras
  // BaseReport.PrintXY(posx+125,posy+91,trim(importee.text));            //Precio Numero
    //saldo
  // BaseReport.PrintXY(posx+12,posy+98,NumToPesos(trim(saldo.text))); //Precio Letras
  // BaseReport.PrintXY(posx+125,posy+98,trim(saldo.text));            //
    //Precio Numero
  //end;

  //importe cuotas
  //if trim(tpopago.text)='Contado' then begin
  //  BaseReport.PrintXY(posx+99,posy+94,''); //Precio Letras
  //  BaseReport.PrintXY(posx+12,posy+97,'');            //Precio
  //end
  //else begin
   // BaseReport.PrintXY(posx+99,posy+94,NumToPesos(trim(valcuota.text))); //Precio Letras
  // BaseReport.PrintXY(posx+52,posy+101,trim(valcuota.text));             //Precio Numero
  // BaseReport.PrintXY(posx+12,posy+104,'vto');            //primer vto
  // BaseReport.PrintXY(posx+8,posy+104,NumToPesos(edit2.text));
  // BaseReport.PrintXY(posx+85,posy+104,trim(edit2.text));              //cant cuotas
  //end;

  //if trim(tpopago.text)='Contado' then begin
  //  BaseReport.PrintXY(posx+155,posy+94,trim(odni.text));   //Titulo
    BaseReport.PrintXY(posx+85,posy+112,trim(odni.text));    //Accion
    BaseReport.PrintXY(posx+45,posy+118,trim(laplaza));  //Plaza
    BaseReport.PrintXY(posx+115,posy+118,trim(elsector.text));  //Sector
    BaseReport.PrintXY(posx+143,posy+118,trim(laaccion.text));   //Parcela
  //end
  //else begin
  //  BaseReport.PrintXY(posx+85,posy+111,trim(D1.text));   //Titulo
  //  BaseReport.PrintXY(posx+16,posy+115,trim(D2.text));    //Accion
  //  BaseReport.PrintXY(posx+50,posy+119,trim(D4.text));  //Plaza
  //  BaseReport.PrintXY(posx+115,posy+119,trim(D3.text));  //Sector
  //  BaseReport.PrintXY(posx+150,posy+119,trim(D5.text));   //Parcela
  //end;

  BaseReport.PrintXY(posx+34,posy+201,trim(grillaT.Cells[2,2]));//trim(DBEdit7.text));     //Nombre
  BaseReport.PrintXY(posx+165,posy+201,trim(grillat.cells[3,2]));//trim(DBEdit2.text));    //Tipo
  BaseReport.PrintXY(posx+181,posy+201,trim(grillat.cells[4,2]));//trim(DBEdit8.text));    //Nro Doc
  BaseReport.PrintXY(posx+40,posy+212,trim(grillat.cells[5,2]));//trim(DBEdit4.text));    //Domicilio
  BaseReport.PrintXY(posx+170,posy+212,trim(grillat.cells[12,2]));//trim(DBEdit1.text));   //Ciudad

  for t:=1 to GrillaT.RowCount-1 do begin
    if  t=1 then BaseReport.PrintXY(posx+85,posy+263,TRIM(GrillaT.Cells[2,t]));     //Nombre 1º Cesionario
    if  t=2 then BaseReport.PrintXY(posx+150,posy+263,TRIM(GrillaT.Cells[2,t]));    //Nombre 2º Cesionario
  end;
 end;
end;

Procedure TAM_Titulares.SolicitudAdquisicion();
var posx,posy:double;
    t,hoja:integer;
    Imagen1:TBitmap;
    PathLogo:string;
    ElMes,ElAnio,ElDia,txt:string;
begin
 posx:=0;
 posy:=0;
 hoja:=1;
 with RvS do begin
  Imagen1 := TBitMap.Create;
  PathLogo:=modulo2.path_todo + '\Formularios\FRM-01-01.jpg';
  if FileExists(PathLogo) then begin
   Image1.Picture.LoadFromFile(PathLogo);
   Imagen1.Assign(Image1.Picture.Graphic);
   BaseReport.PrintBitmapRect(1,1,posx+215,posy+290,Imagen1);
  end;
  Imagen1.Free;
  //ElMes:=el_mes(strtoint(strcut_midle(lafec,4,5)));
  //ElAnio:=strcut_midle(lafec,7,10);
  //ElDia:=strcut_midle(lafec,1,2);

  ElMes:=el_mes(strtoint(strcut_midle(fechaventa,4,5)));
  ElAnio:=strcut_midle(fechaventa,7,10);
  ElDia:=strcut_midle(fechaventa,1,2);

  BaseReport.SetFont('Arial Black',8);
  BaseReport.FontColor:=clRED;
  BaseReport.PrintXY(posx+143,posy+32,ElDia);
  BaseReport.PrintXY(posx+154,posy+32,ElMes);
  BaseReport.PrintXY(posx+195,posy+32,ElAnio);
  BaseReport.PrintXY(posx+37,posy+40,trim(grillaT.Cells[2,1]));//trim(DBEdit7.text));     //Nombre
  BaseReport.PrintXY(posx+159,posy+40,trim(grillat.cells[3,1]));//trim(DBEdit2.text));    //Tipo
  BaseReport.PrintXY(posx+178,posy+40,trim(grillat.cells[4,1]));//trim(DBEdit8.text));    //Nro Doc
  BaseReport.PrintXY(posx+38,posy+45,trim(grillat.cells[5,1]));//trim(DBEdit4.text));    //Domicilio
  BaseReport.PrintXY(posx+150,posy+45,trim(grillat.cells[12,1]));//trim(DBEdit1.text));   //Ciudad
  BaseReport.PrintXY(posx+113,posy+67,trim(laplaza));   //Plaza
  BaseReport.PrintXY(posx+174,posy+67,trim(elsector.text));   //Sector
  BaseReport.PrintXY(posx+17,posy+72,trim(laaccion.text));    //Parcela
  BaseReport.PrintXY(posx+23,posy+78,'.');               //Zona
  BaseReport.PrintXY(posx+57,posy+78,trim(elcolor));     //Categoria
  BaseReport.PrintXY(posx+89,posy+78,'.');               //Calificada
  BaseReport.PrintXY(posx+114,posy+76,'.');              //Plan
  for t:=1 to GrillaT.RowCount-1 do begin
   if t=1 then begin
    //Titular Nivel 1
    BaseReport.PrintXY(posx+78,posy+88,TRIM(GrillaT.Cells[2,t]));    //Nombre
    BaseReport.PrintXY(posx+194,posy+88,TRIM(GrillaT.Cells[3,t]));   //Tipo
    BaseReport.PrintXY(posx+19,posy+94,TRIM(GrillaT.Cells[4,t]));    //Nro Doc
    BaseReport.PrintXY(posx+68,posy+94,TRIM(GrillaT.Cells[10,t]));    //Nacionalidad
    BaseReport.PrintXY(posx+132,posy+94,TRIM(GrillaT.Cells[11,t]));  //Estado Civil
    BaseReport.PrintXY(posx+175,posy+94,TRIM(GrillaT.Cells[9,t]));  //Fecha Nacimiento
    BaseReport.PrintXY(posx+28,posy+99,TRIM(GrillaT.Cells[5,t]));    //Domicilio
    BaseReport.PrintXY(posx+117,posy+99,TRIM(GrillaT.Cells[12,t]));  //Ciudad
    BaseReport.PrintXY(posx+167,posy+99,trim(grillat.cells[16,t]));//prov
    BaseReport.PrintXY(posx+30,posy+104,TRIM(GrillaT.Cells[13,t])); //:=ttelef;       //telefo
    BaseReport.PrintXY(posx+73,posy+104,TRIM(GrillaT.Cells[15,t]));  // celulcar
    BaseReport.PrintXY(posx+135,posy+104,TRIM(GrillaT.Cells[14,t]));  ///profesion
   end;
   if t=2 then begin
   //Titular Nivel 2
    BaseReport.PrintXY(posx+95,posy+110,TRIM(GrillaT.Cells[2,t]));    //Nombre
    BaseReport.PrintXY(posx+196,posy+110,TRIM(GrillaT.Cells[3,t]));   //Tipo
    BaseReport.PrintXY(posx+19,posy+115,TRIM(GrillaT.Cells[4,t]));    //Nro Doc
    BaseReport.PrintXY(posx+68,posy+115,TRIM(GrillaT.Cells[10,t]));    //Nacionalidad
    BaseReport.PrintXY(posx+132,posy+115,TRIM(GrillaT.Cells[11,t]));  //Estado Civil
    BaseReport.PrintXY(posx+175,posy+115,TRIM(GrillaT.Cells[9,t]));  //Fecha Nacimiento
    BaseReport.PrintXY(posx+28,posy+120,TRIM(GrillaT.Cells[5,t]));    //Domicilio
    BaseReport.PrintXY(posx+117,posy+120,TRIM(GrillaT.Cells[12,t]));  //Ciudad
    BaseReport.PrintXY(posx+135,posy+120,TRIM(GrillaT.Cells[16,t]));  //prov
    BaseReport.PrintXY(posx+30,posy+125,TRIM(GrillaT.Cells[13,t])); //:=ttelef;       //telefo
    BaseReport.PrintXY(posx+73,posy+125,TRIM(GrillaT.Cells[15,t]));  // celulcar
    BaseReport.PrintXY(posx+135,posy+125,TRIM(GrillaT.Cells[14,t]));  ///
   end;
   if t=3 then begin
   //Titular Nivel 3
    BaseReport.PrintXY(posx+97,posy+131,TRIM(GrillaT.Cells[2,t]));    //Nombre
    BaseReport.PrintXY(posx+196,posy+131,TRIM(GrillaT.Cells[3,t]));   //Tipo
    BaseReport.PrintXY(posx+19,posy+136,TRIM(GrillaT.Cells[4,t]));    //Nro Doc
    BaseReport.PrintXY(posx+68,posy+136,TRIM(GrillaT.Cells[10,t]));    //Nacionalidad
    BaseReport.PrintXY(posx+132,posy+136,TRIM(GrillaT.Cells[11,t]));  //Estado Civil
    BaseReport.PrintXY(posx+175,posy+136,TRIM(GrillaT.Cells[9,t]));  //Fecha Nacimiento
    BaseReport.PrintXY(posx+28,posy+141,TRIM(GrillaT.Cells[5,t]));    //Domicilio
    BaseReport.PrintXY(posx+117,posy+141,TRIM(GrillaT.Cells[12,t]));  //Ciudad
    BaseReport.PrintXY(posx+135,posy+141,TRIM(GrillaT.Cells[16,t]));  //prov
    BaseReport.PrintXY(posx+30,posy+146,TRIM(GrillaT.Cells[13,t])); //:=ttelef;       //telefo
    BaseReport.PrintXY(posx+73,posy+146,TRIM(GrillaT.Cells[15,t]));  // celulcar
    BaseReport.PrintXY(posx+135,posy+146,TRIM(GrillaT.Cells[14,t]));  ///
   end;
  end;
  //Importe Venta
  BaseReport.PrintXY(posx+25,posy+157,NumToPesos(trim(DPrecio.text))); //Precio Letras
  BaseReport.PrintXY(posx+157,posy+157,trim(DPrecio.text));            //Precio Numero

  //if length(trim(observ.Text)) < 80 then BaseReport.PrintXY(posx+50,posy+184,trim(observ.Text))
  //  else BaseReport.PrintXY(posx+14,posy+188,trim(observ.Text));

  BaseReport.SetFont('Arial Black',9);
  BaseReport.FontColor:=clBlack;
  BaseReport.PrintXY(posx+165,posy+251,'CUENTA: ' + trim(odni.text));
 end;
end;

procedure TAM_Titulares.JvBitBtn3Click(Sender: TObject);
begin
  //Rvs.DefaultDest:=rdPreview;
  Rvs.SystemPrinter.Copies :=2;
  NroOpc:=7;
  RvS.Execute;
  {RvS.DefaultDest := rdFile;
  RvS.DoNativeOutput := False;
  Rvs.SystemPrinter.Copies :=1;
  RvS.RenderObject := RvRenderPDF1;
  RvS.OutputFileName := modulo2.path_todo + '\PDF\Reglamento2 Accion '+trim(d1.Text)+ '.pdf';
  RvS.SystemSetups := RvS.SystemSetups - [ssAllowSetup];
  RvS.Execute; }
end;

procedure TAM_Titulares.JvBitBtn2Click(Sender: TObject);
begin
  //Rvs.DefaultDest:=rdPreview;
  Rvs.SystemPrinter.Copies :=2;
  NroOpc:=5;
  RvS.Execute;
  {RvS.DefaultDest := rdFile;
  RvS.DoNativeOutput := False;
  Rvs.SystemPrinter.Copies :=1;
  RvS.RenderObject := RvRenderPDF1;
  RvS.OutputFileName := modulo2.path_todo + '\PDF\Reglamento1 Accion '+trim(d1.Text)+ '.pdf';
  RvS.SystemSetups := RvS.SystemSetups - [ssAllowSetup];
  RvS.Execute;  }
end;

procedure TAM_Titulares.JvBitBtn4Click(Sender: TObject);
begin
  GroupBox12.Visible :=FALSE;
end;

procedure TAM_Titulares.JvBitBtn5Click(Sender: TObject);
begin
close;
end;

end.

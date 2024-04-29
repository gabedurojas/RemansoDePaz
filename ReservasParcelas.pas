unit ReservasParcelas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, JvExDBGrids, JvDBGrid, StdCtrls, Buttons,DateUtils,
  JvExButtons, JvBitBtn,ClaseFunciones,Unidad, DB, ComCtrls, Mask,DBClient,ClaseTiposSectores,
  RpDefine, RpBase, RpSystem,ClaseParcelasReservas, ExtCtrls;

type
  TParce_Reserv = class(TForm)
    DataSource1: TDataSource;
    Barra1: TStatusBar;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    Label14: TLabel;
    Label29: TLabel;
    LB1: TLabel;
    DBGrid1: TJvDBGrid;
    ElSector: TComboBox;
    LaAccion: TComboBox;
    ODNI: TEdit;
    Busca: TJvBitBtn;
    GroupBox2: TGroupBox;
    Label19: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    COBRADOR: TComboBox;
    fecd: TMaskEdit;
    fech: TMaskEdit;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    Sector: TComboBox;
    labusque: TJvBitBtn;
    cb1: TCheckBox;
    print: TJvBitBtn;
    DBGrid2: TDBGrid;
    DataSource2: TDataSource;
    RvS: TRvSystem;
    guarda: TJvBitBtn;
    borra: TJvBitBtn;
    Image1: TImage;
    JvBitBtn1: TJvBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure FormCreate(Sender: TObject);
    procedure ElSectorExit(Sender: TObject);
    procedure ElSectorKeyPress(Sender: TObject; var Key: Char);
    procedure LaAccionExit(Sender: TObject);
    procedure LaAccionKeyPress(Sender: TObject; var Key: Char);
    procedure BuscaClick(Sender: TObject);
    procedure fecdExit(Sender: TObject);
    procedure fechExit(Sender: TObject);
    procedure fecdKeyPress(Sender: TObject; var Key: Char);
    procedure COBRADORKeyPress(Sender: TObject; var Key: Char);
    procedure COBRADORExit(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure fechKeyPress(Sender: TObject; var Key: Char);
    procedure SectorExit(Sender: TObject);
    procedure SectorKeyPress(Sender: TObject; var Key: Char);
    procedure labusqueClick(Sender: TObject);
    procedure guardaClick(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure borraClick(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure RvSPrint(Sender: TObject);
    procedure printClick(Sender: TObject);
    procedure JvBitBtn1Click(Sender: TObject);
  private
      gh:boolean;
     action:integer;
    { Private declarations }
  public
      Funciones:TFuncionesVarias;
      Dtcombo,DataSetC,DataSet,DataSet1,DtComboC,DataSetT:TClientDataSet;
      IdCombos:array of array of string; // para los combobox
      ParcelasReservas:TParcelasReservas;
      idreser:integer;
    { Public declarations }
  end;

var
  Parce_Reserv: TParce_Reserv;

implementation

uses Modulo;
{$R *.dfm}

procedure TParce_Reserv.FormActivate(Sender: TObject);
begin
if not gh then begin
  gh:=true;
  setlength(IdCombos,3);
    try
      image1.Picture.LoadFromFile(modulo2.path_todo + '\Imagenes\LogoCarmeloMonte.jpg');
    except
    end;
  coloca1(1);
  coloca1(4);
  Fecd.Text:=strcut(Fec_System(),10);
  Fech.Text:=strcut(Fec_System(),10);
  PC1.ActivePage:=PC1.Pages[0];
  sector.SetFocus;
end;
end;

procedure TParce_Reserv.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TParce_Reserv.Coloca1(nro:byte);
var sec:string;
    txtw:widestring;
    TiposSectores:TTiposSectores;
    t,NroDni:integer;
    accion:variant;
begin
if nro=0 then begin
  DataSet.Free;
  DataSet:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=DataSet;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  sec:=trim(odni.text);
  if not Funciones.Run_Fn_VistaParcelasParaVenta(sec,DataSet,'',0) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
end;
if nro=1 then begin   //tipos sectores
    ELSECTOR.Clear;
    SECTOR.Clear;
    DtCombo.Free;
    Dtcombo:=TClientDataSet.Create(nil);
    TiposSectores:=TTiposSectores.Create(nil);
    TiposSectores.ConnectionString:=modulo2.Conexion;
    txtw:='SELECT Sector FROM TiposSectores';
    if TiposSectores.Listar(txtw,DtCombo) then begin
      SetLength(IdCombos[0],DtCombo.RecordCount);
      for t:=1 to DtCombo.RecordCount  do begin
        DtCombo.RecNo:=t;
        ELSECTOR.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
        SECTOR.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
        IdCombos[0,t-1]:=DtCombo.Fields[0].AsString;
      end;
    end
    else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    TiposSectores.Free;
    ELSECTOR.ItemIndex:=0;
    SECTOR.ItemIndex:=0;
end;
if nro=2 then begin   /// carga de las acciones
    LAACCION.Clear;
    DtComboC.Free;
    DtcomboC:=TClientDataSet.Create(nil);
    Funciones:=TFuncionesVarias.Create(nil);
    Funciones.ConnectionString:=modulo2.Conexion;
    sec:=IdCombos[0,ELSECTOR.ItemIndex];
    txtw:='SELECT Parcela FROM VParcelasNoReservadas where (sector=' + chr(39) +  trim(elsector.Text) + chr(39) +') order by 1';
    if Funciones.Listar(txtw,DtcomboC) then begin
    //if Funciones.Run_Fn_VistaParcelasParaEspVerdes(null,null,sec,DtComboC,'ORDER BY PARCELA',0) then  begin
      SetLength(IdCombos[1],DtcomboC.RecordCount);
      for t:=1 to DtcomboC.RecordCount  do begin
        DtcomboC.RecNo:=t;
        LAACCION.Items.Insert(t-1,trim(DtcomboC.Fields[0].AsString));
        IdCombos[1,t-1]:=DtcomboC.Fields[0].AsString;
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
  sec:=IdCombos[0,ELSECTOR.ItemIndex];
  txtw:='SELECT * FROM Fn_VistaParcelas (null,' + chr(39) + sec + chr(39) + ',' +
    'null,null,0)  where (parcela = '+  trim(laaccion.Text)+')';
  if not Funciones.Listar(txtw,DataSet) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  odni.Text:=DataSet.Fields[0].AsString;
  Funciones.Free;
end;
if nro=4 then begin //Combo Cobradores
  COBRADOR.Clear;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  NroDni:=2;
  txtw:='SELECT distinct Nombre,cuif FROM VLosCobradores ORDER BY Nombre';
  if not Funciones.Listar(txtw,DtCombo) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
    SetLength(IdCombos[2],DtCombo.RecordCount);
    for t:=1 to DtCombo.RecordCount  do begin
      DtCombo.RecNo:=t;
      COBRADOR.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
      IdCombos[2,t-1]:=DtCombo.Fields[1].AsString;
    end;
  end;
  Funciones.Free;
  COBRADOR.ItemIndex:=0;
end;
if nro=5 then begin
    DtComboC.Free;
    DtcomboC:=TClientDataSet.Create(nil);
    DataSource2.DataSet:=DtcomboC;
    Funciones:=TFuncionesVarias.Create(nil);
    Funciones.ConnectionString:=modulo2.Conexion;
    if cb1.Checked then
      txtw:='SELECT ParcelasReservas.IdReserva, Clientes.RazonSocial as ReservadoPor,'
      + 'ParcelasReservas.sector,ParcelasReservas.NroAccion, ParcelasReservas.Fechadesde,'
      + 'ParcelasReservas.Fechahasta,DATEDIFF(day, Fechadesde, Fechahasta) as  DiasVigencia '
      + ' FROM ParcelasReservas INNER JOIN  Clientes ON Clientes.Cuif = ParcelasReservas.cuif'
      + ' WHERE (ParcelasReservas.Activo=1) order by 1'
    else
      txtw:='SELECT ParcelasReservas.IdReserva, Clientes.RazonSocial as ReservadoPor,'
      + 'ParcelasReservas.sector,ParcelasReservas.NroAccion, ParcelasReservas.Fechadesde,'
      + 'ParcelasReservas.Fechahasta,DATEDIFF(day, Fechadesde, Fechahasta) as  DiasVigencia '
      + ' FROM ParcelasReservas INNER JOIN  Clientes ON Clientes.Cuif = ParcelasReservas.cuif'
      + ' WHERE (ParcelasReservas.sector = ' + chr(39) + trim(sector.Text) + chr(39) +') and (ParcelasReservas.Activo=1) order by 1';
    if not Funciones.Listar(txtw,DtComboC) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    Funciones.Free;
    if dtcomboc.RecordCount > 0 then begin
        print.Enabled:=true;
    end
    else begin
        print.Enabled:=false;
    end;
    dbgrid2.Columns[1].Width:=250;
    dbgrid2.Columns[2].Width:=40;
    dbgrid2.Columns[3].Width:=60;
    dbgrid2.Columns[4].Width:=70;
    dbgrid2.Columns[5].Width:=70;
end;
end;

procedure TParce_Reserv.ElSectorExit(Sender: TObject);
begin
if ElSector.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Sector Ingresado!!',mterror,[mbok],0);
  ElSector.SetFocus;
end;
end;

procedure TParce_Reserv.ElSectorKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  coloca1(2);
  laaccion.Enabled:=true;
  laaccion.SetFocus;
end;
end;

procedure TParce_Reserv.LaAccionExit(Sender: TObject);
begin
if LaAccion.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el N° de Acción Ingresado!!',mterror,[mbok],0);
  LaAccion.SetFocus;
end;
end;

procedure TParce_Reserv.LaAccionKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  coloca1(3);
  busca.SetFocus;
end;
end;

procedure TParce_Reserv.BuscaClick(Sender: TObject);
//var p,u:integer;
begin
Coloca1(0);
if (Datasource1.DataSet.RecordCount = 0) then begin
  Barra1.Panels[0].Text:='Sin Datos en Grilla';
  IF application.MessageBox('PARCELA NO encontrado, !Desea Buscar otra Parcela!?','Advertencia'
    ,mb_OKcancel+mb_IconHAnd) = IdOk then begin
    laaccion.SetFocus;
  end
  else begin
    Barra1.Panels[0].Text:='La opcion Busqueda fue Cancelada';
    BUSCA.SetFocus;
  end;
end
else begin
  Barra1.Panels[1].Text:='Registos encontrados: ' + inttostr(Datasource1.DataSet.RecordCount);
  dbgrid1.SetFocus;
end;
end;

procedure TParce_Reserv.fecdExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(fecd.Text));
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  fecd.SetFocus;
end;
end;

procedure TParce_Reserv.fechExit(Sender: TObject);
var kl:Tdatetime;
    Fecha1, Fecha2: TDate;
begin
try
  kl:=strtodate(trim(fech.Text));
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  fech.SetFocus;
end;
//  Fecha1 := StrToDate(trim(fecd.Text));
//  Fecha2 := StrToDate(trim(fech.Text));
//  label4.Caption:=IntToStr( DaysBetween( Fecha1, Fecha2 ) )  ;

end;

procedure TParce_Reserv.fecdKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  fech.SetFocus;
end;
end;

procedure TParce_Reserv.COBRADORKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  fecd.SetFocus;
end;
end;

procedure TParce_Reserv.COBRADORExit(Sender: TObject);
begin
if COBRADOR.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Cobrador Ingresado!!',mterror,[mbok],0);
  COBRADOR.SetFocus;
end;
end;

procedure TParce_Reserv.DBGrid1CellClick(Column: TColumn);
begin
cobrador.SetFocus;
GUARDA.Enabled:=true;
end;

procedure TParce_Reserv.fechKeyPress(Sender: TObject; var Key: Char);
var    Fecha1, Fecha2: TDate;
begin
if key = #13 then begin
  Key := #0;
  Fecha1 := StrToDate(trim(fecd.Text));
  Fecha2 := StrToDate(trim(fech.Text));
  label4.Caption:=IntToStr( DaysBetween( Fecha1, Fecha2 ) )  ;
end;  
end;

procedure TParce_Reserv.SectorExit(Sender: TObject);
begin
if Sector.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Sector Ingresado!!',mterror,[mbok],0);
  Sector.SetFocus;
end;
end;

procedure TParce_Reserv.SectorKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  labusque.SetFocus;
end;
end;

procedure TParce_Reserv.labusqueClick(Sender: TObject);
begin
Coloca1(5);
if (Datasource2.DataSet.RecordCount = 0) then begin
  Barra1.Panels[0].Text:='Sin Datos en Grilla';
  IF application.MessageBox('RESERVAS NO encontradas, !Desea Buscar Reservas por otro Sector!?','Advertencia'
    ,mb_OKcancel+mb_IconHAnd) = IdOk then begin
    PC1.Enabled:=true;
    sector.SetFocus;
  end
  else begin
    PC1.Enabled:=true;
    Barra1.Panels[0].Text:='La opcion Busqueda fue Cancelada';
    labusque.SetFocus;
  end;
end
else begin
  Barra1.Panels[1].Text:='Registos encontrados: ' + inttostr(Datasource2.DataSet.RecordCount);
  dbgrid2.SetFocus;
end;
borra.Enabled:=false;
end;

procedure TParce_Reserv.guardaClick(Sender: TObject);
var gf:integer;
var ac:boolean;
begin
  ParcelasReservas:=TParcelasReservas.Create(nil);
  ParcelasReservas.ConnectionString:=modulo2.Conexion;
  gf:=messagedlgpos('Desea Insertar esta Reserva de Venta?',mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
  if gf = 1 then begin
   ParcelasReservas.C_cuif:=IdCombos[2,cobrador.ItemIndex];
   ParcelasReservas.C_Sector:=trim(elsector.Text);
   ParcelasReservas.C_NroAccion:=strtoint(Trim(odni.Text));;
   ParcelasReservas.C_Fechadesde:=Trim(fecd.Text);
   ParcelasReservas.C_Fechahasta:=Trim(fech.Text);
   ParcelasReservas.C_Activo:=True;
   ParcelasReservas.C_Usu_a:=(modulo2.nro_usu);
   ParcelasReservas.C_FecAlta:=strcut(Fec_System(),10);
   ac:=ParcelasReservas.Agrega;
   ParcelasReservas.Free;
   if ac then begin
    messagedlg('Se ha Guardado la nueva RESERVA de Venta con Exito',mtConfirmation,[mbok],0);
    AuditAccesos('Modulo 2','PARCELA RESERVADA CON EXITO ' + TRIM(ODNI.Text));
    coloca1(1);
    coloca1(4);
    DataSource1.DataSet.Free;
    Fecd.Text:=strcut(Fec_System(),10);
    Fech.Text:=strcut(Fec_System(),10);
    label4.Caption:='...';
    odni.Text:='00000000';
    laaccion.Clear;
    elsector.ItemIndex:=0;
    guarda.Enabled:=false;
    PC1.ActivePage:=PC1.Pages[0];
    sector.ItemIndex:=0;
    sector.SetFocus;
   end
   else begin
     messagedlg('Error al Guardar esta RESERVA de Venta. Consulte con un Administrador',mtError,[mbok],0);
   end;
  end;
end;

procedure TParce_Reserv.PC1Change(Sender: TObject);
begin
if PC1.ActivePageIndex = 0  then begin
  sector.setfocus;
end;
if PC1.ActivePageIndex = 1  then begin
  elsector.setfocus;
end;
end;

procedure TParce_Reserv.borraClick(Sender: TObject);
var gf:integer;
var m:boolean;
var txtw:widestring;
begin
  gf:=messagedlgpos('Desea Eliminar esta RESERVA de Parcela??',mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
  if gf = 1 then begin
    ParcelasReservas:=TParcelasReservas.Create(nil);
    ParcelasReservas.ConnectionString:=modulo2.Conexion;

    txtw:='UPDATE ParcelasReservas  SET Activo = 0 WHERE (IdReserva=' + inttostr(idreser) + ')';

    m:=ParcelasReservas.ListarSinResp(txtw);
    ParcelasReservas.Free;
    if m then begin
      AuditAccesos('Modulo 2','ELIMINACION DE RESERVA DE PARCELA ' + inttostr(idreser)) ;
      messagedlg('Se ha Eliminado esta RESERVA con Exito',mtConfirmation,[mbok],0);
    end
    else begin
      messagedlg('Error al Eliminar esta RESERVA. Consulte con un Administrador',mtError,[mbok],0);
    end;
    borra.Enabled:=false;
    labusque.Click;
  end;
end;

procedure TParce_Reserv.DBGrid2CellClick(Column: TColumn);
begin
idreser:=strtoint(trim(DtcomboC.Fields[0].AsString));
  borra.Enabled:=true;
end;

procedure TParce_Reserv.RvSPrint(Sender: TObject);
var posfx,posfy,final,salto:double;
var t,k,y,hoja:integer;
var txt,val:string;
var sd,sd1,posn,posw:double;

   Function Logo(posx,posy:double;vaf:integer):double;
   var Imagen1:TBitMap;
       Fuente,PathLogo:string;
       Tamanio:integer;
   begin
   with RvS do begin
     Imagen1 := TBitMap.Create;
     Imagen1.Assign(image1.Picture.Graphic);
     BaseReport.PrintBitmapRect(posy+5,posy+7,posy+57,posy+18,Imagen1);
     Imagen1.Free;
    {Colocamos el título}
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+20);
     BaseReport.SetFont(Fuente,Tamanio);
     BaseReport.FontColor:=clBlack;
     BaseReport.SetFont('Arial',9);
     BaseReport.PrintXY(posfx+150,posfy+18,'Nº Pagina ' + inttostr(hoja) + '  - UsuImp ' + inttostr(modulo2.nro_usu));
     BaseReport.SetFont('Arial Black',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+30);
     BaseReport.PrintXY(posx+5,posy+27,'REGISTRO DE RESERVAS DE PARCELAS');
     if cb1.Checked then BaseReport.PrintXY(posx+90,posy+27,'Sector: Todos ')
       else   BaseReport.PrintXY(posx+90,posy+27,'Sector:  ' + TRIM(sector.Text));
     //BaseReport.PrintXY(posx+160,posy+27,'FECHA DESDE: ' + TRIM(fechad.Text) + '    FECHA HASTA: ' + TRIM(fechah.Text));
     Logo:=posy+27;
   end;
   end;

   Function Mostrar1(posx,posy:double):double;
   var t,y:integer;
   begin
    with Rvs do begin
     //Cabecera
       BaseReport.SetFont('Arial',9);
       BaseReport.Rectangle(posx+4,posy,posx+200,posy+5);
       BaseReport.Rectangle(posx+14,posy,posx+200,posy+5);
       BaseReport.Rectangle(posx+89,posy,posx+200,posy+5);
       BaseReport.Rectangle(posx+109,posy,posx+200,posy+5);
       BaseReport.Rectangle(posx+130,posy,posx+200,posy+5);
       BaseReport.Rectangle(posx+150,posy,posx+200,posy+5);
       BaseReport.Rectangle(posx+173,posy,posx+200,posy+5);

       BaseReport.PrintXY(posx+5,posy+4,'Id');
       BaseReport.PrintXY(posx+15,posy+4,'ReservadoPor');
       BaseReport.PrintXY(posx+90,posy+4,'Sector');
       BaseReport.PrintXY(posx+110,posy+4,'NroAccion');
       BaseReport.PrintXY(posx+131,posy+4,'Fechadesde');
       BaseReport.PrintXY(posx+151,posy+4,'Fechahasta');
       BaseReport.PrintXY(posx+174,posy+4,'DiasVigencia');
    end;
    END;

begin
try
   posfx:=5.5;posfy:=5;
   salto:=4;final:=0;hoja:=1;
   posfy:=Logo(posfx,posfy,hoja)+ salto;   // llamamos al encabezado
   posfy:=Mostrar1(posfx,posfy)+ salto;
   posw:=posfy;
   sd1:=posn;
   posfy:=posfy+9;
      for t:=1 to datasource2.dataset.RecordCount do begin
         datasource2.dataset.RecNo:=t;
         posfy:=posfy-0.5;
         RVS.BaseReport.SetFont('Arial',9);
         RVS.BaseReport.PrintXY(posfx+6,posfy,trim(datasource2.dataset.Fields[0].AsString));
         RVS.BaseReport.MoveTo(posw,posfy);
         RVS.BaseReport.PrintLeft(trim(datasource2.dataset.Fields[1].AsString),posfx+15);
         RVS.BaseReport.MoveTo(posw,posfy);
         RVS.BaseReport.PrintLeft(trim(datasource2.dataset.Fields[2].AsString),posfx+90);
         RVS.BaseReport.MoveTo(posw,posfy);
         RVS.BaseReport.PrintLeft(trim(datasource2.dataset.Fields[3].AsString),posfx+110);
         RVS.BaseReport.MoveTo(posw,posfy);
         RVS.BaseReport.PrintLeft(trim(datasource2.dataset.Fields[4].AsString),posfx+131);
         RVS.BaseReport.MoveTo(posw,posfy);
         RVS.BaseReport.PrintLeft(trim(datasource2.dataset.Fields[5].AsString),posfx+151);
         RVS.BaseReport.MoveTo(posw,posfy);
         RVS.BaseReport.PrintLeft(trim(datasource2.dataset.Fields[6].AsString),posfx+174);
         RVS.BaseReport.MoveTo(posw,posfy);
         posfy:=posfy+0.5;

         // hacemos la lineas internas de las grilla
         RVS.BaseReport.Rectangle(posfx+4,posfy,posfx+200,posfy-4);
         RVS.BaseReport.Rectangle(posfx+14,posfy,posfx+200,posfy-4);
         RVS.BaseReport.Rectangle(posfx+89,posfy,posfx+200,posfy-4);
         RVS.BaseReport.Rectangle(posfx+109,posfy,posfx+200,posfy-4);
         RVS.BaseReport.Rectangle(posfx+130,posfy,posfx+200,posfy-4);
         RVS.BaseReport.Rectangle(posfx+150,posfy,posfx+200,posfy-4);
         RVS.BaseReport.Rectangle(posfx+173,posfy,posfx+200,posfy-4);
         posfy:=posfy + salto;
          if posfy > 270 then begin
           posfx:=5.5;
           posfy:=5;
           hoja:=hoja+1;
           RVS.BaseReport.NewPage;
           posfy:=Logo(posfx,posfy,hoja)+ salto;   // llamamos al encabezado
           posfy:=Mostrar1(posfx,posfy)+ salto;
           posfy:=posfy+9;
          end;
      end;
  except
end;
end;

procedure TParce_Reserv.printClick(Sender: TObject);
begin
rvs.Execute;
end;

procedure TParce_Reserv.JvBitBtn1Click(Sender: TObject);
begin
close;
end;

end.

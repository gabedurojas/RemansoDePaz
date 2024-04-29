unit InhumaSinServicios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Grids, DBGrids, JvExDBGrids, JvDBGrid, Buttons,ADODB,
  DateUtils,JvExButtons, JvBitBtn,ClaseFunciones,Unidad,DBClient, ExtCtrls,ClaseParcelasInhumados,
  RpDefine, RpBase, RpSystem,ComCtrls,StrUtils,WSDLIntf;

type HackTable = class(TADOTable);
type
  TInhuSinServ = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    bGuardar: TJvBitBtn;
    DBGrid1: TJvDBGrid;
    DataSource1: TDataSource;
    Label1: TLabel;
    idinhu: TEdit;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    Timer1: TTimer;
    Imprime: TJvBitBtn;
    RvS: TRvSystem;
    T8: TClientDataSet;
    Image1: TImage;
    RvS1: TRvSystem;
    CB1: TCheckBox;
    procedure Coloca1(nro:byte);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure bGuardarClick(Sender: TObject);
    procedure ImprimeClick(Sender: TObject);
    procedure RvSPrint(Sender: TObject);
    procedure RvS1Print(Sender: TObject);
    procedure CB1Click(Sender: TObject);
  private
  gh:boolean;
  PosH:Array [0..4] of Double;
  Camp:Array [0..4] of Integer;
  TxtCamp:Array [0..4] of String;

  PosHI:Array [0..5] of Double;//Posiciones
  CampI:Array [0..5] of Integer;//Campos a Tomar en cuenta
  TxtCampI:Array [0..5] of String;//Textos de los Campos a Tomar en cuenta
    { Private declarations }
  public
   NroOpcion:integer;
   Funciones:TFuncionesVarias;
   CANTIDADES:TADODataSet;
   ParcelasInhumados:TParcelasInhumados;
   DtCombo,DtComboInhu,DtComboLibre:TClientDataSet;
   nroacc,ElIdServ,niv,posi,obje,elobjeto,mutu:string;
    IdHabitante, NroAccion, Nivel, Posicion, Objeto, DniFallecido,
    NombreFallecido, FechaIngreso,FechaFallecimiento, FechaInhumacion,
    HoraFallecimiento, HoraSalida, HoraLlegada, NroSeccion, NroActa, NroFolio, NroTomo, Medico, Diagnostico,
    PadreFallecido, MadreFallecido, ConError, NroOrdenServicio, CuifFallecido,
    FecActaDefuncion,NroMedico, Abreviatura, Edad, DetalleEstado,  Nacionalidad, FechaNacimiento,
    Detalle, Localidad, Domicilio,NroOrdenServ ,fechaexu: string;
    PROCESO1: TADODataSet;
    { Public declarations }
  end;

var
  InhuSinServ: TInhuSinServ;

implementation

uses Modulo;

{$R *.dfm}

procedure TInhuSinServ.FormActivate(Sender: TObject);
begin
 if not gh then begin
  gh:=true;
  CANTIDADES:=TADODataSet.Create(nil);
  CANTIDADES.ConnectionString:=modulo2.Conexion;
  if NroOpcion = 1 then begin
    coloca1(1);
    label1.Caption:='Id Inhumado Seleccionado:';
    label2.Caption:='ATENCION .. EXISTEN INHUMADOS PARA ESTE SERVICIO...';
    bguardar.Caption:='GUARDAR';
    Imprime.Visible:=false;
    cb1.Visible :=false;
  end;
  if NroOpcion = 2 then begin
    coloca1(2);
    label1.Caption:='Accion Seleccionada:';
    label2.Caption:='Acciones de ' + mutu;
    bguardar.Caption:='SELECCIONAR';
    Imprime.Visible:=false;
    cb1.Visible :=false;
  end;
  if NroOpcion = 3 then begin
    coloca1(3);
    label1.Visible:=false;
    label2.Caption:='Acciones Disponibles a la Venta del Sector: ' + nroacc;
    bguardar.Caption:='CERRAR';
    bguardar.Enabled:=true;
    Imprime.Visible:=true;
    cb1.Visible :=true;
  end;
  if NroOpcion = 4 then begin
    coloca1(0);
    label1.Caption:='Id Ihumado Selecc:';
    label2.Caption:='Lista de Inhumados de la Accion Nro: ' + nroacc;
    bguardar.Caption:='CERRAR';
    bguardar.Enabled:=true;
    Imprime.Visible:=false;
    cb1.Visible :=false;
  end;
  if NroOpcion = 5 then begin
    PROCESO1:=TADODataSet.Create(nil);
    PROCESO1.ConnectionString:=modulo2.Conexion;
    coloca1(4);
    label1.Caption:='Id Ihumado Selecc:';
    label2.Caption:='Lista de Inhumados de la Accion Nro: ' + nroacc;
    bguardar.Caption:='CERRAR';
    bguardar.Enabled:=true;
    Imprime.Visible:=false;
    cb1.Visible :=false;
  end;

  try
    image1.Picture.LoadFromFile(modulo2.path_todo + '\Imagenes\LogoCarmeloMonte.jpg');
  except
  end;
 end;
end;

procedure TInhuSinServ.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TInhuSinServ.Coloca1(nro:byte);
var  txtw:widestring;
begin
 if nro=0 then  begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=DtCombo;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT IdHabitante, DniFallecido, NombreFallecido, CuifFallecido,Abreviatura,'
  + ' Nacionalidad,DetalleEstado,FechaFallecimiento, edad,Detalle,  Localidad, Domicilio,FechaIngreso,'
  + ' HoraSalida, HoraLlegada, FechaInhumacion, HoraFallecimiento, FechaFallecimiento, NroSeccion, NroActa,'
  + ' NroFolio,NroTomo,FecActaDefuncion, Medico, Diagnostico, Objeto,'
  + ' Nivel, Posicion,NroOrdenServicio FROM VParcelasInhumadosxAccion  WHERE  (NroAccion = '+ nroacc +')';
  if not Funciones.listar(txtw,DtCombo) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
    DBGrid1.Columns[0].Width:=60;
    DBGrid1.Columns[1].Width:=60;
    DBGrid1.Columns[2].Width:=60;
    DBGrid1.Columns[3].Width:=60;
    DBGrid1.Columns[4].Width:=60;
    DBGrid1.Columns[5].Width:=50;
    DBGrid1.Columns[6].Width:=150;
    DBGrid1.Columns[7].Width:=150;
    DBGrid1.Columns[8].Width:=50;
 end;
 if nro=1 then  begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=DtCombo;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT idhabitante,nroaccion,razonsocial as Inhumado,fechaingreso,fechafallecimiento,'
  +'horafallecimiento,medico,diagnostico,idservicio from VLosInhumadosSinServicios WHERE (NroAccion = '+ nroacc +')';
  if not Funciones.listar(txtw,DtCombo) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
    DBGrid1.Columns[0].Width:=60;
    DBGrid1.Columns[1].Width:=50;
    DBGrid1.Columns[2].Width:=180;
    DBGrid1.Columns[3].Width:=80;
    DBGrid1.Columns[4].Width:=80;
    DBGrid1.Columns[5].Width:=50;
    DBGrid1.Columns[6].Width:=150;
    DBGrid1.Columns[7].Width:=150;
    DBGrid1.Columns[8].Width:=50;
 end;
 if nro=2 then  begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=DtCombo;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT parcelas.Sector,parcelas.Parcela,ParcelasTitulares.NroAccion '
  + ' FROM ParcelasTitulares inner join Parcelas on Parcelas.NroAccion = ParcelasTitulares.NroAccion '
  + ' where Cuif=' + ElIdServ + ' and NroTipoAcc=3 and activo=1 order by 1,2';
  if not Funciones.listar(txtw,DtCombo) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
    DBGrid1.Columns[0].Width:=100;
    DBGrid1.Columns[1].Width:=100;
    DBGrid1.Columns[2].Width:=100;
 end;
 if nro=3 then  begin
  CANTIDADES.Close;
  DataSource1.DataSet:=CANTIDADES;
  if cb1.Checked  then begin
   CANTIDADES.CommandText:='SELECT NroAccion,Sector,Parcela,LEFT(sectorcolor,1) as Cat,Plaza,razonsocial'
   + ' FROM VistaParcelasLibresxSector WHERE (Sector = ' + chr(39) + nroacc + chr(39) + ') and  '
   + ' ((RazonSocial = ''COSENZA HORACIO JAVIER'') or (RazonSocial = ''read gustavo alberto'')) ORDER BY Parcela';
  end
  else begin
   CANTIDADES.CommandText:='SELECT NroAccion,Sector,Parcela,LEFT(sectorcolor,1) as Cat,Plaza,razonsocial'
   + ' FROM VistaParcelasLibresxSector WHERE (Sector = ' + chr(39) + nroacc + chr(39) + ')  ORDER BY Parcela';
  end;
   CANTIDADES.Open;
  DBGrid1.Columns[0].Width:=100;
  DBGrid1.Columns[1].Width:=100;
  DBGrid1.Columns[2].Width:=100;
  DBGrid1.Columns[3].Width:=100;
  DBGrid1.Columns[4].Width:=150;
 end;
 if nro=4 then begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=DtCombo;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT idhabitante,nroaccion,NombreFallecido as Inhumado,fechaingreso,fechafallecimiento,'
  +'horafallecimiento,medico,diagnostico from VParcelasInhumados WHERE (NroAccion = '+ nroacc +')';
  if not Funciones.listar(txtw,DtCombo) then
   messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
   DBGrid1.Columns[0].Width:=60;
   DBGrid1.Columns[1].Width:=50;
   DBGrid1.Columns[2].Width:=180;
   DBGrid1.Columns[3].Width:=80;
   DBGrid1.Columns[4].Width:=80;
   DBGrid1.Columns[5].Width:=50;
   DBGrid1.Columns[6].Width:=150;
   DBGrid1.Columns[7].Width:=150;
   //DBGrid1.Columns[8].Width:=50;
 end;

end;

procedure TInhuSinServ.Timer1Timer(Sender: TObject);
begin
  Label2.visible := not (Label2.visible);
  Label2.Repaint;
end;

procedure TInhuSinServ.Label2Click(Sender: TObject);
begin
Timer1.Enabled := False;
end;

procedure TInhuSinServ.DBGrid1CellClick(Column: TColumn);
begin
 if not (DtCombo.IsEmpty) then begin
  if NroOpcion = 4 then begin
   idinhu.Text:=trim(DtCombo.Fields[0].AsString);
   IdHabitante:=trim(DtCombo.Fields[0].AsString);
   DniFallecido:=trim(DtCombo.Fields[1].AsString);
   NombreFallecido:=trim(DtCombo.Fields[2].AsString);
   CuifFallecido:=trim(DtCombo.Fields[3].AsString);
   Abreviatura:=trim(DtCombo.Fields[4].AsString);
   Nacionalidad:=trim(DtCombo.Fields[5].AsString);
   DetalleEstado:=trim(DtCombo.Fields[6].AsString);
   FechaNacimiento:=trim(DtCombo.Fields[7].AsString);
   Edad:=trim(DtCombo.Fields[8].AsString);
   Detalle:=trim(DtCombo.Fields[9].AsString);
   Localidad:=trim(DtCombo.Fields[10].AsString);
   Domicilio:=trim(DtCombo.Fields[11].AsString);
   FechaIngreso:=trim(DtCombo.Fields[12].AsString);
   HoraSalida:=trim(DtCombo.Fields[13].AsString);
   HoraLlegada:=trim(DtCombo.Fields[14].AsString);
   FechaInhumacion:=trim(DtCombo.Fields[15].AsString);
   HoraFallecimiento:=trim(DtCombo.Fields[16].AsString);
   FechaFallecimiento:=trim(DtCombo.Fields[17].AsString);
   NroSeccion:=trim(DtCombo.Fields[18].AsString);
   NroActa:=trim(DtCombo.Fields[19].AsString);
   NroFolio:=trim(DtCombo.Fields[20].AsString);
   NroTomo:=trim(DtCombo.Fields[21].AsString);
   FecActaDefuncion:=trim(DtCombo.Fields[22].AsString);
   Medico:=trim(DtCombo.Fields[23].AsString);
   Diagnostico:=trim(DtCombo.Fields[24].AsString);
   Objeto:=trim(DtCombo.Fields[25].AsString);
   Nivel:=trim(DtCombo.Fields[26].AsString);
   Posicion:=trim(DtCombo.Fields[27].AsString);
   NroOrdenServ:=trim(DtCombo.Fields[28].AsString);
  end;
  if NroOpcion = 1 then begin
    idinhu.Text:=trim(DtCombo.Fields[0].AsString);
  end;
  if NroOpcion = 2 then begin
    idinhu.Text:=trim(DtCombo.Fields[2].AsString);
  end;
  if NroOpcion = 3 then begin
    idinhu.Text:=trim(DtCombo.Fields[0].AsString);
  end;
  if NroOpcion = 5 then begin
    idinhu.Text:=trim(DtCombo.Fields[0].AsString);
  end;
  bguardar.Enabled:=true;
 end;
end;

procedure TInhuSinServ.bGuardarClick(Sender: TObject);
var gf:integer;
var txtw:widestring;
    ct:boolean;
begin
 if NroOpcion = 1 then begin
  gf:=messagedlgpos('Desea ANEXAR el Servicio Guardado a este Inhumado ya Existente?',mtWarning,[
     mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
  if gf = 1 then begin
   ParcelasInhumados:=TParcelasInhumados.Create(nil);
   ParcelasInhumados.ConnectionString:=modulo2.Conexion;
   txtw:='UPDATE ParcelasInhumados SET idservicio= ' + ElIdServ
   + ' ,nivel =' + niv
   + ' ,posicion=' + posi
   + ' ,objeto=' + chr(39) + obje + chr(39)
   + ' ,detalleobjeto= ' + chr(39) + elobjeto + chr(39)
   + ' WHERE (IdHabitante=' + trim(idinhu.Text) + ') and (nroaccion='+ nroacc +') and (idservicio is null)';
   ct:=ParcelasInhumados.ListarSinResp(txtw);
   ParcelasInhumados.Free;
   bguardar.Enabled:=false;
   close;
  end;
 end;
 if (NroOpcion = 4) or (NroOpcion = 2) or (NroOpcion = 3) then begin
   close;
 end;
 if NroOpcion = 5 then begin
  gf:=messagedlgpos('Desea Confirmar el Servicio de Exhumacion a este Inhumado?',mtWarning,[
      mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
  if gf = 1 then begin
   PROCESO1.Close;
   PROCESO1.CommandText:='exec SPC_ParcelasExhumadosInsertar ' + trim(idinhu.Text)+ ' , ' + chr(39) + fechaexu + chr(39);
   PROCESO1.Open;
   if PROCESO1.Fields[0].AsString = 'OK' then begin
    bguardar.Enabled:=false;
    close;
   end
   else begin
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',  mtError,[mbok],0);
   end;
  end;
 end;
end;

procedure TInhuSinServ.ImprimeClick(Sender: TObject);
begin
//rvs1.Execute;
rvs.Execute;
end;

procedure TInhuSinServ.RvSPrint(Sender: TObject);
var posfx,posfy,final,salto:double;
var t,k,y,hoja:integer;
var txt,val:string;
var sd,sd1,posn,posw:double;

 Function Logo(posx,posy:double;vaf:integer):double;
   var Imagen1:TBitMap;
       PathLogo:string;
   begin
    with Rvs do begin
    Imagen1 := TBitMap.Create;
    PathLogo:=modulo2.path_todo + '\Imagenes\CarmeloMonte.bmp';
    if FileExists(PathLogo) then begin
     Image1.Picture.LoadFromFile(PathLogo);
     Imagen1.Assign(image1.Picture.Graphic);
     BaseReport.PrintBitmapRect(posx+6,posy+2,posx+47,posy+25,Imagen1);
    end;
    BaseReport.RoundRect(posx+4,posy,posx+200,posy+27,5,5);
    BaseReport.SetFont('Arial Black',12);
    BaseReport.FontColor:=clBlack;
    BaseReport.PrintXY(posx+50,posy+23,'Acciones Disponibles a la Venta del Sector: ' + nroacc);
    BaseReport.SetFont('Arial Black',8);
    BaseReport.PrintXY(posx+150,posy+5,'Nº Pagina ' + inttostr(hoja));
    BaseReport.PrintXY(posx+150,posy+11,'Usuario Impresion: ' + inttostr(modulo2.nro_usu));
    BaseReport.PrintXY(posx+150,posy+17,'Fecha Impresión: ' + LeftStr(Fec_System(),10));
    Logo:=posy+25;
    end;
   end;

   Function Mostrar1(posx,posy:double):double;
   var t,y:integer;
   begin
    with Rvs do begin
     BaseReport.SetFont('Arial Black',9);
     BaseReport.Rectangle(posx+4,posy,posx+200,posy+5);
     BaseReport.Rectangle(posx+30,posy,posx+200,posy+5);
     BaseReport.Rectangle(posx+70,posy,posx+200,posy+5);
     BaseReport.Rectangle(posx+90,posy,posx+200,posy+5);
     BaseReport.Rectangle(posx+110,posy,posx+200,posy+5);
     BaseReport.Rectangle(posx+130,posy,posx+200,posy+5);
     //BaseReport.Rectangle(posx+150,posy,posx+200,posy+5);
     //BaseReport.Rectangle(posx+170,posy,posx+200,posy+5);

     BaseReport.PrintXY(posx+5,posy+4,'NroAccion');
     BaseReport.PrintXY(posx+32,posy+4,'Sector');
     BaseReport.PrintXY(posx+72,posy+4,'Parcela');
     BaseReport.PrintXY(posx+92,posy+4,'CodPlaza');
     BaseReport.PrintXY(posx+112,posy+4,'Plaza');
     BaseReport.PrintXY(posx+132,posy+4,'TitularMayoritario');
     //BaseReport.PrintXY(posx+152,posy+4,'Año');
     //BaseReport.PrintXY(posx+172,posy+4,'Total');
    end;
   END;


begin
 try
   posfx:=5.5;posfy:=5;
   salto:=4;final:=0;
   hoja:=1;

   posfy:=Logo(posfx,posfy,hoja)+ salto;   // llamamos al encabezado
   posfy:=Mostrar1(posfx,posfy)+ salto;

   posw:=posfy;
   sd1:=posn;
   posfy:=posfy+9;
   for t:=1 to CANTIDADES.RecordCount do begin
    CANTIDADES.RecNo:=t;
    posfy:=posfy-0.5;
    RVS.BaseReport.SetFont('Arial',7);
    RVS.BaseReport.PrintXY(posfx+6,posfy,trim(CANTIDADES.Fields[0].AsString));
    RVS.BaseReport.MoveTo(posw,posfy);
    RVS.BaseReport.PrintLeft(trim(CANTIDADES.Fields[1].AsString),posfx+32);
    RVS.BaseReport.MoveTo(posw,posfy);
    RVS.BaseReport.PrintLeft(trim(CANTIDADES.Fields[2].AsString),posfx+72);
    RVS.BaseReport.MoveTo(posw,posfy);
    RVS.BaseReport.PrintLeft(trim(CANTIDADES.Fields[3].AsString),posfx+92);
    RVS.BaseReport.MoveTo(posw,posfy);
    RVS.BaseReport.PrintLeft(trim(CANTIDADES.Fields[3].AsString),posfx+112);
    RVS.BaseReport.MoveTo(posw,posfy);
    RVS.BaseReport.PrintLeft(trim(CANTIDADES.Fields[5].AsString),posfx+132);
    RVS.BaseReport.MoveTo(posw,posfy);
    //RVS.BaseReport.PrintLeft(trim(CANTIDADES.Fields[7].AsString),posfx+152);
    //RVS.BaseReport.SetFont('Arial Black',9);
    //RVS.BaseReport.MoveTo(posw,posfy);
    //RVS.BaseReport.PrintLeft(trim(CANTIDADES.Fields[8].AsString),posfx+172);
    posfy:=posfy+0.5;

     // hacemos la lineas internas de las grilla
    RVS.BaseReport.Rectangle(posfx+4,posfy,posfx+200,posfy-4);
    RVS.BaseReport.Rectangle(posfx+30,posfy,posfx+200,posfy-4);
    RVS.BaseReport.Rectangle(posfx+70,posfy,posfx+200,posfy-4);
    RVS.BaseReport.Rectangle(posfx+90,posfy,posfx+200,posfy-4);
    RVS.BaseReport.Rectangle(posfx+110,posfy,posfx+200,posfy-4);
    RVS.BaseReport.Rectangle(posfx+130,posfy,posfx+200,posfy-4);
    //RVS.BaseReport.Rectangle(posfx+150,posfy,posfx+200,posfy-4);
    //RVS.BaseReport.Rectangle(posfx+170,posfy,posfx+200,posfy-4);
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
{var posfx,posfy,final,salto:double;
var t,k,y,hoja:integer;
var txt,val:string;
var pso:boolean;
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
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+20);
     BaseReport.SetFont(Fuente,Tamanio);
     BaseReport.FontColor:=clBlack;
     BaseReport.SetFont('Arial',9);
     BaseReport.PrintXY(posfx+150,posfy+13,'Fecha Imp.: ' + LeftStr(Fec_System(),10));
     BaseReport.PrintXY(posfx+150,posfy+18,'Nº Pagina ' + inttostr(hoja) + '  -  UsuImp ' + inttostr(modulo2.nro_usu));
     BaseReport.SetFont('Arial Black',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+30);
     BaseReport.PrintXY(posx+5,posy+24,'Acciones Disponibles a la Venta del Sector: ' + nroacc);
     BaseReport.PrintXY(posx+5,posy+28,'Ordenado por Nro. de Parcela');
     Logo:=posy+27;
   end;
   end;

   Function GrillaCabecera(posx,posy:double;texto:string):double;
   var t:integer;
   begin
     with RvS do begin
      BaseReport.Rectangle(posx+4,posy,posx+200,posy+5);
      for t:=1 to length(Camp)-1 do begin
      BaseReport.Rectangle(posx + PosH[t]-2,posy,posx + PosH[t]-2,posy+5);
      end;
     end;
      Rvs.BaseReport.SetFont('Arial Black',7);
      Rvs.BaseReport.FontColor:=clBlack;
      for t:=0 to length(Camp)-1 do begin
        Rvs.BaseReport.PrintXY(posx + PosH[t],posy+4,TxtCamp[t]);
     end;
     Result:=posy+5;
   end;

  Function GrillaDetalle(posx,posy:double;texto:string):double;
  var t:integer;
  begin
  Rvs.BaseReport.SetFont('Arial',8);
  Rvs.BaseReport.FontColor:=clBlack;
    for t:=0 to length(Camp)-1 do
     Rvs.BaseReport.PrintXY(posx + PosH[t],posy+4,HackTable(FindComponent(texto)).Fields[Camp[t]].AsString);
     Result:=posy+4;
  end;

  Function GrillaRecuadro(posx,posy,posy2:double):double;
  var t:integer;
  begin
  with RvS do begin
    BaseReport.Rectangle(posx+4,posy,posx+200,posy2);
    for t:=1 to length(Camp)-1 do begin
      BaseReport.Rectangle(posx + PosH[t]-2,posy,posx + PosH[t]-2,posy2);
    end;
  Result:=posy+4;
  end;
  end;

begin
 try
  posfx:=5.5;
  posfy:=5;
  salto:=4;
  final:=0;
  hoja:=1;
  posfy:=Logo(posfx,posfy,hoja)+ salto;
  Camp[0]:=0; Camp[1]:=1; Camp[2]:=2;  Camp[3]:=3; Camp[4]:=4;
  TxtCamp[0]:='NroAccion';  TxtCamp[1]:='Sector'; TxtCamp[2]:='Parcela';TxtCamp[3]:='CodigoPlaza';TxtCamp[4]:='Plaza';
  PosH[0]:=5; PosH[1]:=40; PosH[2]:=70; PosH[3]:=120; PosH[4]:=150;

  T8.Close;
  T8.CloneCursor(DtCombo,false,true);
  txt:='T8';
  final:=GrillaCabecera(posfx,posfy+5,txt);
  posfy:=final;
  pso:=false;

  for y:=1 to HackTable(findcomponent(txt)).RecordCount do begin
   HackTable(FindComponent(txt)).RecNo:=y;
   if pso then Rvs.BaseReport.Rectangle(posfx+4,posfy+1,posfx+200,posfy+1)
   else pso:=true;
   posfy:=GrillaDetalle(posfx,posfy,txt);
   if posfy > 280 then begin
    posfy:=GrillaRecuadro(posfx,final,posfy+2);
    posfx:=1.5;
    posfy:=2;
    hoja:=hoja+1;
    RvS.BaseReport.NewPage;
    posfy:=Logo(posfx,posfy,hoja);  // llamamos al encabezado
    final:=GrillaCabecera(posfx,posfy+5,txt);
    posfy:=final;
    pso:=false;
   end;
  end;
  except
 end;    
end;    }

procedure TInhuSinServ.RvS1Print(Sender: TObject);
var posfx,posfy,final,salto,cod_bary,cod_barx:double;
var t,k,hoja,y:integer;
var pso:boolean;
var txt,val:string;

   Function Logo(posx,posy:double;vaf:integer):double;
   var Imagen1:TBitMap;
       Fuente,PathLogo:string;
       Tamanio:integer;
   begin
   with RvS1 do begin
    Imagen1 := TBitMap.Create;
    Imagen1.Assign(image1.Picture.Graphic);
    BaseReport.PrintBitmapRect(posy+5,posy+7,posy+57,posy+18,Imagen1);
    Imagen1.Free;
    BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+20);
    BaseReport.SetFont(Fuente,Tamanio);
    BaseReport.FontColor:=clBlack;
    BaseReport.SetFont('Arial',9);
    BaseReport.PrintXY(posfx+150,posfy+13,'Fecha Imp.: ' + LeftStr(Fec_System(),10));
    BaseReport.PrintXY(posfx+150,posfy+18,'Nº Pagina ' + inttostr(hoja) + '  -  UsuImp ' + inttostr(modulo2.nro_usu));
    BaseReport.SetFont('Arial Black',8);
    BaseReport.FontColor:=clBlack;
    BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+30);
    BaseReport.PrintXY(posx+5,posy+24,'Acciones Disponibles a la Venta del Sector: ' + nroacc);
    BaseReport.PrintXY(posx+5,posy+28,'Ordenado por Nro. de Parcela');
    Logo:=posy+27;
   end;
   end;
               /////////  GRILLA de RECAUDACION
  Function GrillaCabecera(posx,posy:double;texto:string):double;
  var t:integer;
  begin
   with Rvs1 do begin
    BaseReport.Rectangle(posx+4,posy,posx+200,posy+5);
    for t:=1 to length(CampI)-1 do begin
     BaseReport.Rectangle(posx + PosHI[t]-2,posy,posx + PosHI[t]-2,posy+5);
    end;
   end;
    Rvs1.BaseReport.SetFont('Arial Black',7);
    Rvs1.BaseReport.FontColor:=clBlack;
    for t:=0 to length(CampI)-1 do begin
      Rvs1.BaseReport.PrintXY(posx + PosHI[t],posy+4,TxtCampI[t]);
   end;
  Result:=posy+5;
  end;

  /// Grilla Detalle
  Function GrillaDetalle(posx,posy:double;texto:string):double;
  var t:integer;
  begin
   Rvs1.BaseReport.SetFont('Arial',5);
   Rvs1.BaseReport.FontColor:=clBlack;
    for t:=0 to length(CampI)-1 do
    Rvs1.BaseReport.PrintXY(posx + PosHI[t],posy+4,DtComboLibre.Fields[CampI[t]].AsString);
    Result:=posy+3.5;
  end;

  //// Grilla Recuadro
  Function GrillaRecuadro(posx,posy,posy2:double):double;
  var t:integer;
  begin
  with Rvs1 do begin
   BaseReport.Rectangle(posx+4,posy,posx+200,posy2);
   for t:=1 to length(CampI)-1 do begin
     BaseReport.Rectangle(posx + PosHI[t]-2,posy,posx + PosHI[t]-2,posy2);
   end;
   Result:=posy+4;
  end;
  end;

begin
   try
    posfx:=5.5;
    posfy:=5;
    salto:=4;
    final:=0;
    hoja:=1;
    posfy:=Logo(posfx,posfy,hoja)+ salto;  // llamamos al encabezado
    CampI[0]:=0;      CampI[1]:=1;
    CampI[2]:=2;      CampI[3]:=3;
    CampI[4]:=4;      CampI[5]:=5;
    TxtCampI[0]:='NroAccion';TxtCampI[1]:='Sector';TxtCampI[2]:='Parcela';TxtCampI[3]:='Cat';
    TxtCampI[4]:='Plaza';TxtCampI[5]:='TitularParcela';
    PosHI[0]:=5;PosHI[1]:=23;PosHI[2]:=35;PosHI[3]:=50;PosHI[4]:=70;PosHI[5]:=105;

    T8.Close;
    T8.CloneCursor(DtComboLibre,false,true);
    txt:='T8';
    final:=GrillaCabecera(posfx,posfy+5,txt);
    posfy:=final;
    pso:=false;
    for y:=1 to DtComboLibre.RecordCount do begin
     DtComboLibre.RecNo:=y;
     pso:=true;
     posfy:=GrillaDetalle(posfx,posfy,txt);
     if posfy > 270 then begin
      posfy:=GrillaRecuadro(posfx,final,posfy+2);
      posfx:=5.5;
      posfy:=5;
      hoja:=hoja+1;
      RvS1.BaseReport.NewPage;
      posfy:=Logo(posfx,posfy,hoja);  // llamamos al encabezado
      final:=GrillaCabecera(posfx,posfy+5,txt);
      posfy:=final;
      pso:=false;
     end;
    end;
    if pso then posfy:=GrillaRecuadro(posfx,final,posfy+2);
  except
  end;
end;

procedure TInhuSinServ.CB1Click(Sender: TObject);
begin
   Coloca1(3);
end;

end.

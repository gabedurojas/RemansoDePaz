unit Imp_ResumenesGeneral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, JvExGrids, JvStringGrid, StdCtrls, ExtCtrls, JvgGroupBox,
  Buttons, JvExButtons, JvBitBtn, ComCtrls, ToolWin, ClaseFunciones, DBClient,
  DB, DBGrids, JvExDBGrids, JvDBGrid, RpDefine, RpBase, RpSystem,ADODB;

type
  TResum_gral = class(TForm)
    Barra1: TStatusBar;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    ToolButton2: TToolButton;
    IMPRIME: TJvBitBtn;
    ToolButton5: TToolButton;
    Limpiar: TJvBitBtn;
    ToolButton3: TToolButton;
    JvBitBtn1: TJvBitBtn;
    JvgGroupBox5: TJvgGroupBox;
    Buscar: TJvBitBtn;
    DBGrid1: TJvDBGrid;
    todos: TRichEdit;
    EXPORTAR: TJvBitBtn;
    Label20: TLabel;
    TPOTALON: TComboBox;
    DataSource1: TDataSource;
    RvC: TRvSystem;
    Image1: TImage;
    T8: TClientDataSet;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure BuscarClick(Sender: TObject);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure LimpiarClick(Sender: TObject);
    procedure EXPORTARClick(Sender: TObject);
    procedure TPOTALONExit(Sender: TObject);
    procedure TPOTALONKeyPress(Sender: TObject; var Key: Char);
    procedure IMPRIMEClick(Sender: TObject);
    procedure RvCPrint(Sender: TObject);
  private
    IdCombos:array of array of string;
    DataSet0,DataSet4,DtCombo:TClientDataSet;
    PROCESO1: TADODataSet;
    canti:string;
    Funciones:TFuncionesVarias;
     PosX,PosY:array of double;
    { Private declarations }
  public
    gh:boolean;{ Public declarations }
  end;

var
  Resum_gral: TResum_gral;

implementation

uses Modulo;

{$R *.dfm}

procedure TResum_gral.FormActivate(Sender: TObject);
begin
if not(gh) then begin
  gh:=true;
  PROCESO1:=TADODataSet.Create(nil);
  PROCESO1.ConnectionString:=modulo2.Conexion;
  PROCESO1.CommandTimeout:=0;
  setlength(IdCombos,1);
  Coloca1(0);
  tpotalon.SetFocus;
end;
end;

procedure TResum_gral.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TResum_gral.Coloca1(nro:byte);
var t,y:integer;
    filtro:widestring;
    NroTalon,NroCompr,CuifCob:variant;
begin
if nro=0 then begin
  TPOTALON.Clear;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  filtro:='SELECT distinct Nombre,cuif,nrogestor FROM VLosCobradoresTodos ORDER BY Nombre ';
  if not Funciones.Listar(filtro,DtCombo) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
    SetLength(IdCombos[0],DtCombo.RecordCount);
    for t:=1 to DtCombo.RecordCount  do begin
      DtCombo.RecNo:=t;
      TPOTALON.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
      IdCombos[0,t-1]:=DtCombo.Fields[1].AsString;
    end;
  end;
  Funciones.Free;
  TPOTALON.ItemIndex:=0;
end;
if nro = 1 then begin
  DataSet4.Free;
  DataSet4:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  filtro:='SELECT count(*) FROM EstadoDeudaGeneral where cobrador =  ' + chr(39) + trim(tpotalon.Text ) + chr(39);
  if not Funciones.Listar(filtro,DataSet4) then begin
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  end
  else begin
   Barra1.Panels[0].Text:='Cant. Clientes.: ' + DataSet4.Fields[0].AsString;
   canti:=DataSet4.Fields[0].AsString;
  end;
  Funciones.Free;
end;
if nro = 2 then begin
  PROCESO1.close;
  DataSource1.DataSet:=PROCESO1;
  PROCESO1.CommandText:='SELECT ltrim(rtrim(primertitular)),ltrim(rtrim(Domicilio)),'
  +'''Titulo:'' + convert(nvarchar(6),NroAccion) + '' - Parc.'' + convert(nvarchar(8),parcela) + '
  + ''' Sector:'' + Sector + '' Fec.Cesion:'' + FechaCesion + '' Cant.Inhum:'' + convert(nvarchar(2),CantInhumados) as DatosParcelario,'
  +'DeudaMantenimiento,PeriodosDeudaMantenimiento,UltimoPagoMantenimiento, '
  +'DeudaServicios,ltrim(rtrim(UltimoPagoServicios)),''$''+ CONVERT(NVARCHAR(25),DeudaVentas) + '' Cuotas: '' + periodosdeudaventas '
  +',ltrim(rtrim(UltimoPagoVentas)),DeudaConsolidados,ltrim(rtrim(UltimoPagoConsolidados)) '
  +' FROM AccionesParaResumenxGestorGral (' + chr(39) + trim(tpotalon.Text) + chr(39) + ')';
  PROCESO1.Open;
    dbgrid1.Columns[0].Width:=280;
    dbgrid1.Columns[1].Width:=280;
    dbgrid1.Columns[2].Width:=180;
    dbgrid1.Columns[3].Width:=80;
    dbgrid1.Columns[4].Width:=80;
    dbgrid1.Columns[5].Width:=70;
    dbgrid1.Columns[6].Width:=90;
    EXPORTAR.Enabled:=true;
    imprime.Enabled:=true;

 { Dataset0.Free;
  Dataset0:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=Dataset0;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  PROCESO2.CommandTimeout:=180;
  filtro:='SELECT primertitular,Domicilio,'
  +'''Titulo '' + convert(nvarchar(6),NroAccion) + '' - Parc. '' + convert(nvarchar(8),parcela) + '' - Sector '' + Sector as DatosParcelario,'
  +'FechaCesion as FecCesion,CantInhumados,DeudaMantenimiento,PeriodosDeudaMantenimiento,UltimoPagoMantenimiento, '
  +'DeudaServicios,ltrim(rtrim(UltimoPagoServicios)),DeudaVentas,periodosdeudaventas,ltrim(rtrim(UltimoPagoVentas)),'
  +'DeudaConsolidados,ltrim(rtrim(UltimoPagoConsolidados)) FROM AccionesParaResumenxGestorGral (' + chr(39) + trim(tpotalon.Text) + chr(39) +')';
  if not Funciones.Listar(filtro,Dataset0) then  begin
     EXPORTAR.Enabled:=false;
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  end
  else begin
    dbgrid1.Columns[0].Width:=280;
    dbgrid1.Columns[1].Width:=280;
    dbgrid1.Columns[2].Width:=180;
    dbgrid1.Columns[3].Width:=80;
    dbgrid1.Columns[4].Width:=80;
    dbgrid1.Columns[5].Width:=70;
    dbgrid1.Columns[6].Width:=90;
    EXPORTAR.Enabled:=true;
    imprime.Enabled:=true;
  }
end;
end;

procedure TResum_gral.BuscarClick(Sender: TObject);
begin
Coloca1(1);
Coloca1(2);
end;

procedure TResum_gral.JvBitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TResum_gral.LimpiarClick(Sender: TObject);
begin
tpotalon.ItemIndex:=0;
DataSet0.Close;
IMPRIME.Enabled:=false;
Exportar.Enabled:=false;
end;

procedure TResum_gral.EXPORTARClick(Sender: TObject);
var texto:widestring;
var txt:string;
var t,y,r:integer;
begin
todos.Clear;
r:=1;
if not DataSet0.IsEmpty then begin
  texto:='Orden' + chr(9);
  for t:=0 to DataSet0.FieldCount-1 do begin
    texto:=texto + DataSet0.Fields[t].FieldName + chr(9);
  end;
  todos.Lines.Add(texto);
  for y:=1 to DataSet0.RecordCount do begin
    DataSet0.RecNo:=y;
    texto:=inttostr(r) + chr(9);
    for t:=0 to DataSet0.FieldCount-1 do begin
      texto:=texto + DataSet0.Fields[t].AsString + chr(9);
    end;
    todos.Lines.Add(texto);
    r:=r+1;
  end;
end;
todos.SelectAll;
todos.CopyToClipboard;
messagedlg('Se Copiaron los Datos, listo para pegarlos a Excel',mtwarning,[mbok],0);
end;

procedure TResum_gral.TPOTALONExit(Sender: TObject);
begin
if TPOTALON.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Cobrador Ingresado!!',mterror,[mbok],0);
  TPOTALON.SetFocus;
end;
end;

procedure TResum_gral.TPOTALONKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  buscar.SetFocus;
end;
end;

procedure TResum_gral.IMPRIMEClick(Sender: TObject);
begin
rvc.Execute;
end;

procedure TResum_gral.RvCPrint(Sender: TObject);
var posfx,posfy,final,salto:double;
var t,k,y,hoja,mn:integer;
var txt,val:string;
var sd,sd1,posn,posw:double;


   Function Logo(posx,posy:double;vaf:integer):double;
   var Imagen1:TBitMap;
   begin
     with RvC do begin
       Imagen1 := TBitMap.Create;
       Imagen1.Assign(image1.Picture.Graphic);
       BaseReport.PrintBitmapRect(posy+5,posy+7,posy+57,posy+18,Imagen1);
       Imagen1.Free;
       BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+37);  //(posx+4,posy+5,posx+195,posy+37);
       BaseReport.SetFont('Arial',9);
       BaseReport.FontColor:=clBlack;
       BaseReport.PrintXY(posx+23,posy+24,'SERVICIOS & MANDATOS');
       BaseReport.PrintXY(posx+23,posy+28,'Ayacucho N° 160 -  Formosa - CP:3600');
       BaseReport.PrintXY(posx+160,posy+28,'Fecha Imp.: ' + DateToStr(Date));
       BaseReport.SetFont('Arial',9);
       BaseReport.FontColor:=clBlack;
       BaseReport.PrintXY(posx+185,posy+9,'Pág.: ' + inttostr(vaf));
       BaseReport.RoundRect(posx+20,posy+29,posx+185,posy+34,5,5);
       BaseReport.PrintXY(posx+23,posy+32.5,'CLIENTES A CARGO DEL GESTOR: ' + TRIM(tpotalon.TEXT));
       BaseReport.SetFont('Arial Black',8);
       BaseReport.PrintXY(posx+145,posy+32.5,'Total de Clientes:' + canti);
       Logo:=posy+33;
     end;
   end;

   Function Mostrar1(posx,posy:double):double;
   var t,y:integer;
   begin
     with RvC do begin
       BaseReport.SetFont('Arial',7);
       BaseReport.PrintXY(posx+170,posy+4,'DeudaMantenim.');
       BaseReport.PrintXY(posx+200,posy+4,'DeudaServicios');
       BaseReport.PrintXY(posx+225,posy+4,'DeudaVentas');
       BaseReport.PrintXY(posx+260,posy+4,'DeudaConsolidado');
     end;
   END;

begin
  try
   posfx:=1.5;
   posfy:=3;
   salto:=4;
   final:=0;
   hoja:=1;
   posfy:=Logo(posfx,posfy,hoja);
   posfy:=Mostrar1(posfx,posfy+4);
   posw:=posfy;
   sd1:=posn;
   posfy:=posfy+12;
   with RvC.BaseReport  do begin
      for t:=1 to datasource1.dataset.RecordCount do begin
         datasource1.dataset.RecNo:=t;
         posfy:=posfy+0.5;
         SetFont('Arial',7);
         PrintXY(posfx+6,posfy,trim(datasource1.dataset.Fields[0].AsString) + '  /  ' + trim(datasource1.dataset.Fields[1].AsString)
         +' '+ trim(datasource1.dataset.Fields[2].AsString));
         MoveTo(posw,posfy);
         PrintLeft(trim(datasource1.dataset.Fields[3].AsString),posfx+178);  //dmante
         MoveTo(posw,posfy);
         PrintLeft(trim(datasource1.dataset.Fields[6].AsString),posfx+200); //dser
         MoveTo(posw,posfy);
         PrintLeft(trim(datasource1.dataset.Fields[8].AsString),posfx+225); //dven
         MoveTo(posw,posfy);
         PrintLeft(trim(datasource1.dataset.Fields[10].AsString),posfx+260); //con
         //MoveTo(posw,posfy);
         posfy:=posfy+0.5;
         posfy:=posfy + salto;
          if posfy > 200 then begin
           posfx:=1.5;
           posfy:=3;
           hoja:=hoja+1;
           NewPage;
           posfy:=Logo(posfx,posfy,hoja)+ salto;
           posfy:=Mostrar1(posfx,posfy)+2;
           //posfy:=Mostrar1(posfx,posfy)+ salto;
           posfy:=posfy+9;
          end;
      end;
   end;
  except
  end;
end;

end.

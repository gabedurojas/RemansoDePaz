unit ResumenesMorososVeraz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, Grids, DBGrids, JvgGroupBox, Buttons,
  JvExButtons, JvBitBtn, ComCtrls, ToolWin, DBClient, WSDLIntf, ClaseFunciones,
  StrUtils, ClaseSistemas, Unidad, RpDefine, RpBase, RpSystem, ADODB, Menus,
  JvExStdCtrls, JvGroupBox, Mask, TeeProcs, TeEngine, Chart, DBChart,
  Series, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, JvGIF, jpeg;

type HackTable = class(TADOTable);
type
  TListaResumenMorososVeraz = class(TForm)
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    Limpiar: TJvBitBtn;
    ToolButton3: TToolButton;
    JvBitBtn1: TJvBitBtn;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Barra1: TStatusBar;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    DataSource6: TDataSource;
    DataSource7: TDataSource;
    PERIODO: TComboBox;
    Label2: TLabel;
    RvS: TRvSystem;
    P1: TProgressBar;
    Image1: TImage;
    RvC: TRvSystem;
    HISTO: TADODataSet;
    DataSource8: TDataSource;
    DataSource9: TDataSource;
    DataResult: TADODataSet;

    T8: TClientDataSet;
    DataSource10: TDataSource;
    PageControl1: TPageControl;
    TabSheet13: TTabSheet;
    TabSheet14: TTabSheet;
    DBGrid9: TDBGrid;
    RE5: TRichEdit;
    DataSource11: TDataSource;
    Image3: TImage;
    BitBtn1: TBitBtn;
    COBRADOR: TComboBox;
    DOMI: TEdit;
    CB1: TCheckBox;
    RvNOTA: TRvSystem;
    Image6: TImage;
    operador: TComboBox;
    TPOOBJ: TComboBox;
    RichEdit1: TRichEdit;
    DBGrid1: TDBGrid;
    Image2: TImage;
    BitBtn4: TBitBtn;
    JvBitBtn2: TJvBitBtn;
    DBGrid2: TDBGrid;
    DataSource12: TDataSource;    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure RvSPrint(Sender: TObject);
    procedure RvCPrint(Sender: TObject);
    procedure COBRADORExit(Sender: TObject);
    procedure COBRADORKeyPress(Sender: TObject; var Key: Char);
    procedure PERIODOKeyPress(Sender: TObject; var Key: Char);
    procedure PERIODOExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure TPOOBJExit(Sender: TObject);
    procedure TPOOBJKeyPress(Sender: TObject; var Key: Char);
    procedure DOMIExit(Sender: TObject);
    procedure DOMIKeyPress(Sender: TObject; var Key: Char);
    procedure RvNOTAPrint(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure operadorKeyPress(Sender: TObject; var Key: Char);
    procedure operadorExit(Sender: TObject);
    procedure JvBitBtn2Click(Sender: TObject);
    procedure LimpiarClick(Sender: TObject);
    procedure DBGrid9DblClick(Sender: TObject);
    procedure DBGrid9CellClick(Column: TColumn);
  private
    IdCombos:array of array of string;
    DataSet0,DataSet1,DataSet2,DataSet3,DataSet4,DataSet5,DataSet6,DtCombo,
    DtComboCob,DtFiltro,DataDeudas,DataSetCuotasVta,DataSetCuotasServ,
    DtComboReg,DtComboCobros,DatosPagosH,DataSetProces:TClientDataSet;
    ACCION,CUOTAS,ULTIMOP,PROCESO1,PROCESO2,PROCESO3: TADODataSet;
    Funciones:TFuncionesVarias;
    Sistemas:TSistemas;
    FechaActual,totclie,elnrogestor,valormante,sumapos,sumainhum,elmes,elid:string;{ Private declarations }
    nextmes,ctasserv,totregm,cantreginhum:integer;
    porcen,totaldeudagral,totalmeses:real;
  public
    gh,Paso,ImpNota:boolean;
    Ini,Fin,IniM,FinM:integer;{ Public declarations }
    txtfecha,elanio,cantreg,laaccion,nro:string;
    PosH:Array [0..10] of Double;//Posiciones
    Camp:Array [0..10] of Integer;//Campos a Tomar en cuenta      nro:string;
    TxtCamp:Array [0..10] of String;//Textos de los Campos a Tomar en cuenta

    PosHa:Array [0..1] of Double;//Posiciones
    Campa:Array [0..1] of Integer;//Campos a Tomar en cuenta
    TxtCampa:Array [0..1] of String;//Textos de los Campos a Tomar en cuenta
  end;

var
  ListaResumenMorososVeraz: TListaResumenMorososVeraz;

implementation

uses Modulo,SplashFormNro;

{$R *.dfm}

procedure TListaResumenMorososVeraz.FormActivate(Sender: TObject);
begin
 if not(gh) then begin
  gh:=true;
  ImpNota:=false;
  ACCION:=TADODataSet.Create(nil);
  ACCION.ConnectionString:=modulo2.Conexion;
  JvBitBtn2.Enabled:=false;
  BitBtn4.Enabled :=false;
  PROCESO1:=TADODataSet.Create(nil);
  PROCESO1.ConnectionString:=modulo2.Conexion;
  PROCESO2:=TADODataSet.Create(nil);
  PROCESO2.ConnectionString:=modulo2.Conexion;
  PROCESO2.CommandTimeout:=180;
  PROCESO3:=TADODataSet.Create(nil);
  PROCESO3.ConnectionString:=modulo2.Conexion;
  setlength(IdCombos,2);
  FechaActual:=LeftStr(Fec_System(),10);
  PC1.ActivePage:=PC1.Pages[0];
  Coloca1(0);
  Coloca1(1);
  Coloca1(10);
  PageControl1.ActivePage:=PageControl1.Pages[0];
  PERIODO.SetFocus;
 end;
end;

procedure TListaResumenMorososVeraz.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TListaResumenMorososVeraz.Coloca1(nro:byte);
var t,y:integer;
    NroDni,ValNull:variant;
    txt,sec:string;
    txtw:widestring;
begin
if nro=0 then begin
  PERIODO.Clear;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if not Funciones.Listar('SELECT * FROM PeriodoImpresion (' + chr(39) + FechaActual + chr(39) + ')',DtCombo) then
  else begin
    for t:=1 to DtCombo.RecordCount  do begin
      DtCombo.RecNo:=t;
      PERIODO.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
    end;
  end;
  Funciones.Free;
  PERIODO.ItemIndex:=0;
end;
if nro=1 then begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  DataSource11.DataSet:=DtCombo;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT [Id],[NroEnvio],[TipoDeida],[Fecha],[Usuario] '
  +' FROM [EstadoDeudaGeneralParaVerazCabecera]  order by 2';
  if not Funciones.Listar(txtw,DtCombo) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con  Administrador',mtError,[mbok],0);
  Funciones.Free;
end;
if nro = 2 then begin
 { DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
    txtw:='select Periodo,importecuota,totalcuota,estadovto,estadopago,origenpago,fechacobro,nrocomprobante,deudaacum '
  + 'from EstadoCuentaPanteonesAcum (' + DataSet0.Fields[1].AsString
  + ',' + chr(39)+  txtfecha +chr(39) +',5,' +trim(edit7.Text) + ','+trim(edit8.Text)+')';
  if not Funciones.Listar(txtw,DataSet8) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if not DtCombo.IsEmpty then begin
    JvDBGrid8.Columns[0].Width:=65;
    JvDBGrid8.Columns[1].Width:=65;
    JvDBGrid8.Columns[2].Width:=65;
    JvDBGrid8.Columns[3].Width:=65;
    JvDBGrid8.Columns[4].Width:=65;
    JvDBGrid8.Columns[5].Width:=65;
    JvDBGrid8.Columns[6].Width:=65;
    JvDBGrid8.Columns[7].Width:=65;
  end;  }
end;
if nro=3 then begin
  DataSet6.Free;
  DataSet6:=TClientdataSet.Create(nil);
  DataSource12.DataSet:=DataSet6;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT [Orden] ,[NroAccion],[NombreTitular],[NivelTitular] ,[NroDni], '
  +'[CantPeriodosMantenimiento] ,[Deuda],[Domicilio]   '
  +'  FROM [Remanso].[dbo].[EstadoDeudaGeneralParaVeraz] where ([NroEnvio]=' + elid + ')';
  if not Funciones.Listar(txtw,DataSet6) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con  Administrador',mtError,[mbok],0);
  Funciones.Free;
   if not DataSet6.IsEmpty then begin
    DBGrid2.Columns[0].Width:=50;
    DBGrid2.Columns[1].Width:=60;
    DBGrid2.Columns[2].Width:=250;
    DBGrid2.Columns[3].Width:=60;
    DBGrid2.Columns[4].Width:=60;
   end;
end;
if nro=4 then begin
{  COBRADOR.Clear;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT distinct Nombre,cuif,nrogestor FROM VLosCobradores ORDER BY Nombre ';
  if not Funciones.Listar(txtw,DtCombo) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
   SetLength(IdCombos[0],DtCombo.RecordCount);
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    COBRADOR.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
    IdCombos[0,t-1]:=DtCombo.Fields[1].AsString;
   end;
  end;
  Funciones.Free;
  COBRADOR.ItemIndex:=0;    }
end;
if nro= 5 then begin
//
end;
if nro=6 then begin
//
end;
if nro=7 then begin   ///traemos el importe del mantenimiento activo
//
end;
if nro=8 then begin
 { DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if not Funciones.Listar('SELECT top 1  * FROM Fn_LosPeriodos (' + chr(39) + FechaActual + chr(39) + ') ORDER BY periodo desc',DtCombo) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
   nextmes:=strtoint(DtCombo.Fields[0].AsString);
  end;
  Funciones.Free;  }
end;
if nro=9 then  begin
//
end;
if nro=10 then begin //Combo TipoObjetos
  TPOOBJ.Clear;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if not Funciones.Listar ('select Nombre from  (select ''.TODOS LOS COBRADORES'' as Nombre '
  + ' union SELECT Nombre  FROM VLosCobradores where Tipo =''cobrador'') a order by 1',DtCombo) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
   SetLength(IdCombos[1],DtCombo.RecordCount);
   for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    TPOOBJ.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
    IdCombos[1,t-1]:=DtCombo.Fields[0].AsString;
   end;
  end;
  Funciones.Free;
  TPOOBJ.ItemIndex:=0;
end;
if nro=11 then  begin
//
end;
if nro=12 then begin
//
end;
end;

procedure TListaResumenMorososVeraz.JvBitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TListaResumenMorososVeraz.DBGrid1CellClick(Column: TColumn);
begin
// if not(DataDeudas.IsEmpty) then begin
//  laaccion:=DataSource1.DataSet.Fields[1].AsString;
//  DESDE.Text:=inttostr(DataDeudas.RecNo);
//  HASTA.Text:=inttostr(DataDeudas.RecNo);
// end;
end;

procedure TListaResumenMorososVeraz.RvSPrint(Sender: TObject);
var posfx,posfy,Pos1,Pos2,Pos3,Pos4,Pos5,Salto:double;
    PosR: array of double;
var r,w,l,h,y,t,j,cont,x:integer;
    tot,tot1:real;
    Fuente,PathLogo,PathLogo1:string;
    Imagen1,MarcaAgua:TBitMap;
    Bandera:boolean;
    txtw:widestring;

begin
try
   SetLength(PosR,5);
   PosR[0]:=35;
   PosR[1]:=57;
   PosR[2]:=80;
   PosR[3]:=103;
   PosR[4]:=125;
   posfx:=5.5;
   posfy:=5;
   Imagen1 := TBitMap.Create;
   Salto:=4;
   r:=Ini;
   DataDeudas.RecNo:=r;
   with RvS do begin
      BaseReport.FontRotation:=0;
      BaseReport.Rectangle(posfx+2,posfy,posfx+195,posfy+15);
      Imagen1 := TBitMap.Create;
      PathLogo:=modulo2.path_todo + '\Imagenes\' + modulo2.INI1.ReadString('Resumen Caja','Imagen1','');
      if FileExists(PathLogo) then begin
        Image1.Picture.LoadFromFile(PathLogo);
        Imagen1.Assign(Image1.Picture.Graphic);
        BaseReport.PrintBitmapRect(posfx+3,posfy+1,posfx+65,posfy+14,Imagen1);
      end;
      Imagen1.Free;

      BaseReport.SetFont('Arial Black',10);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posfx+75,posfy+8,'SERVICIOS & MANDATOS');
      BaseReport.SetFont('Arial' ,9);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posfx+135,posfy+6,'Ayacucho N° 160 - Tel:(370) 4430761');
      BaseReport.PrintXY(posfx+140,posfy+10,'         CP (3600) - Formosa');
      BaseReport.SetFont('Arial' ,8);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posfx+105,posfy+14,'Consesionario exclusivo de Cementerio Parque REMANSO DE PAZ');

      //BaseReport.Rectangle(posfx+2,posfy+20,posfx+Pos3+93.5,posfy+90);
      BaseReport.Rectangle(posfx+Pos3+93.5,posfy+20,posfx+195,posfy+52);
      //BaseReport.Rectangle(posfx+2,posfy+95,posfx+Pos3+93.5,posfy+120);
      //BaseReport.Rectangle(posfx+2,posfy+125,posfx+Pos3+93.5,posfy+140);

      BaseReport.SetFont('Arial Black',10);
      BaseReport.FontColor:=clBlack;
      BaseReport.RoundRect(posfx+20,posfy+15,posfx+80,posfy+20,5,5);
      BaseReport.PrintXY(posfx+40,posfy+19,'Titulares');
      BaseReport.RoundRect(posfx+120,posfy+15,posfx+170,posfy+20,5,5);  //
      BaseReport.PrintXY(posfx+125,posfy+19,'Resumen de Cuenta');

      BaseReport.SetFont('Arial',7);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posfx+175,posfy+19,'Nro Orden:' +  DataDeudas.Fields[0].AsString  ); //DataSet0.Fields[0].AsString  );

      BaseReport.SetFont('Arial',8);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posfx+100,posfy+27,'Fecha Impresion:');
      BaseReport.PrintXY(posfx+162,posfy+27,'Periodo:');

      BaseReport.SetFont('Arial',7);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posfx+3,posfy+24,'1º)  Titular:');
      BaseReport.PrintXY(posfx+3,posfy+28,'           Dni:');
      BaseReport.PrintXY(posfx+3,posfy+32,'Dom. Legal:');
      BaseReport.PrintXY(posfx+3,posfy+38,'Telefonos:');

      BaseReport.PrintXY(posfx+3,posfy+44,'2º)  Titular:');
      BaseReport.PrintXY(posfx+3,posfy+48,'           Dni:');
      BaseReport.PrintXY(posfx+3,posfy+52,'Dom. Legal:');
      BaseReport.PrintXY(posfx+3,posfy+58,'Telefonos:');

      BaseReport.PrintXY(posfx+3,posfy+64,'3º)  Titular:');
      BaseReport.PrintXY(posfx+3,posfy+68,'           Dni:');
      BaseReport.PrintXY(posfx+3,posfy+72,'Dom. Legal:');
      BaseReport.PrintXY(posfx+3,posfy+78,'Telefonos:');

      BaseReport.SetFont('Arial Black',9);
      BaseReport.FontColor:=clBlack;
      BaseReport.RoundRect(posfx+120,posfy+58,posfx+170,posfy+63,5,5);
      BaseReport.PrintXY(posfx+129,posfy+62,'Datos de la Acción');

      BaseReport.SetFont('Arial',8);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posfx+102,posfy+67,'N° TITULO:');
      BaseReport.PrintXY(posfx+102,posfy+72,'Sector:');
      BaseReport.PrintXY(posfx+127,posfy+72,'Parcela:');
      BaseReport.PrintXY(posfx+153,posfy+72,'Plaza:');
      BaseReport.PrintXY(posfx+102,posfy+77,'Fecha Cesión:');
      BaseReport.PrintXY(posfx+154,posfy+77,'Inhumados:');
      BaseReport.PrintXY(posfx+102,posfy+82,'GESTOR:');

      BaseReport.SetFont('Arial Black',8);
      BaseReport.FontColor:=clBlack;
      BaseReport.RoundRect(posfx+3,posfy+80,posfx+97,posfy+84,5,5);
      BaseReport.PrintXY(posfx+4,posfy+83,'Valor del Mantenimiento del mes $' + valormante);

      BaseReport.SetFont('Arial',7);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posfx,posfy+132,'Domicilio Cobro:  ' + DataDeudas.Fields[13].AsString); //DataDeudas.Fields[13].AsString);
      BaseReport.PrintXY(posfx,posfy+135,'Observaciones:  ' + DataDeudas.Fields[14].AsString); //DataDeudas.Fields[14].AsString);

      //Imprimiendo Titulares
      BaseReport.SetFont('Arial Black',7);
      BaseReport.FontColor:=clBlack;
      Pos5:=0;
      for t:=1 to DataSet1.RecordCount do begin
       DataSet1.RecNo:=t;
       //if t > 2 then Break
       //else begin
       BaseReport.PrintXY(posfx+Pos3+17,posfy+Pos4+24 + Pos5,DataSet1.Fields[2].AsString);
       BaseReport.PrintXY(posfx+Pos3+17,posfy+Pos4+28 + Pos5,DataSet1.Fields[4].AsString);
       //BaseReport.PrintXY(posfx+Pos3+20,posfy+Pos4+34,DataSet1.Fields[2].AsString);
       BaseReport.PrintXY(posfx+Pos3+17,posfy+Pos4+32 + Pos5,strcut_midle(trim(DataSet1.Fields[5].AsString) + ' - ' + trim(DataSet1.Fields[6].AsString),1,50));
       BaseReport.PrintXY(posfx+Pos3+17,posfy+Pos4+36 + Pos5,strcut_midle(trim(DataSet1.Fields[5].AsString) + ' - ' + trim(DataSet1.Fields[6].AsString),51,100));
       BaseReport.PrintXY(posfx+Pos3+17,posfy+Pos4+38 + Pos5,DataSet1.Fields[11].AsString);
       //BaseReport.PrintXY(posfx+Pos3+20,posfy+Pos4+40 + Pos5,strcut_midle(trim(DataSet1.Fields[5].AsString) + ' - ' + trim(DataSet1.Fields[6].AsString),1,50));
       //BaseReport.PrintXY(posfx+Pos3+20,posfy+Pos4+44 + Pos5,strcut_midle(trim(DataSet1.Fields[5].AsString) + ' - ' + trim(DataSet1.Fields[6].AsString),51,100));
       //if t = 1 then Pos5:=Pos5 + 24; //24
       Pos5:=Pos5 + 20; //24
      end;

      //Imprimiendo Datos de la Acción
      BaseReport.SetFont('Arial Black',8);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posfx+Pos3+117,posfy+Pos4+67,DataDeudas.Fields[1].AsString + '.-'); //DataSet0.Fields[1].AsString + '.-');
      BaseReport.SetFont('Arial Black',9);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posfx+Pos3+113,posfy+Pos4+72,DataDeudas.Fields[2].AsString); //DataSet0.Fields[2].AsString);
      BaseReport.PrintXY(posfx+Pos3+139,posfy+Pos4+72,DataDeudas.Fields[3].AsString); //DataSet0.Fields[3].AsString);
      BaseReport.PrintXY(posfx+Pos3+161,posfy+Pos4+72,DataDeudas.Fields[4].AsString); //DataSet0.Fields[4].AsString);
      BaseReport.PrintXY(posfx+Pos3+123,posfy+Pos4+77,DataDeudas.Fields[5].AsString); //DataSet0.Fields[5].AsString);
      BaseReport.PrintXY(posfx+Pos3+172,posfy+Pos4+77,DataDeudas.Fields[6].AsString); //DataSet0.Fields[6].AsString);
      BaseReport.SetFont('Arial Black',8);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posfx+Pos3+117,posfy+Pos4+82,DataDeudas.Fields[7].AsString); //DataSet0.Fields[7].AsString);

      //Imprimiendo la Cuenta
      BaseReport.SetFont('Arial Black',9);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posfx+Pos3+126,posfy+Pos4+27,FechaActual);
      BaseReport.PrintXY(posfx+Pos3+175,posfy+Pos4+27,PERIODO.Text);
      tot:=0;
      tot1:=0;
      BaseReport.Rectangle(posfx+Pos3+93.5,posfy+Pos4+30,posfx+Pos3+195,posfy+Pos4+34);
      //BaseReport.Rectangle(posfx+Pos3+101,posfy+Pos4+30,posfx+Pos3+125,posfy+Pos4+34);
      //BaseReport.Rectangle(posfx+Pos3+140,posfy+Pos4+30,posfx+Pos3+165,posfy+Pos4+34);
      //BaseReport.Rectangle(posfx+Pos3+178,posfy+Pos4+30,posfx+Pos3+195,posfy+Pos4+34);
      BaseReport.SetFont('Arial Black',7);
      BaseReport.FontColor:=clBlack;
      //BaseReport.PrintXY(posfx+Pos3+95,posfy+Pos4+33,'Obj.');
      BaseReport.PrintXY(posfx+Pos3+105,posfy+Pos4+33,'Detalle');
      BaseReport.PrintXY(posfx+Pos3+130,posfy+Pos4+33,'CtasDeudas');
      BaseReport.PrintXY(posfx+Pos3+155,posfy+Pos4+33,'Imp.Cuota');
      BaseReport.PrintXY(posfx+Pos3+180,posfy+Pos4+33,'Importe');  //166 x 186
      //BaseReport.PrintXY(posfx+Pos3+179,posfy+Pos4+33,'Acumulado');
      Pos5:=posfy+Pos4+34 + 4;

      //Parcelas
      BaseReport.SetFont('Arial',7);
      BaseReport.PrintXY(posfx+Pos3+95,Pos5,'SALDO PARCELAS');
      Bandera:=false;
      for t:=1 to DataSet2.RecordCount do begin
       DataSet2.RecNo:=t;
       if TRIM(DataSet2.Fields[4].AsString) = 'SALDO FINAL' then begin
        BaseReport.PrintRight(trim(DataSetCuotasVta.Fields[0].AsString),posfx+Pos3+140);
        BaseReport.PrintRight('$' + trim(DataSetCuotasVta.Fields[1].AsString),posfx+Pos3+165);
        BaseReport.MoveTo(posfx+Pos3+177,Pos5);
        BaseReport.PrintRight(redondeo(DataSet2.Fields[3].AsString,2),posfx+Pos3+190);   //177 x 190
        BaseReport.Rectangle(posfx+Pos3+93.5,Pos5+0.5,posfx+Pos3+195,Pos5+0.5);
        tot:=tot + DataSet2.Fields[3].AsFloat;
        Bandera:=true;
        break;
       end;
      end;
      if not Bandera then begin
       BaseReport.MoveTo(posfx+Pos3+175,Pos5);
       BaseReport.PrintRight('0.00',posfx+Pos3+177);
      end;

      //Servicios
      Pos5:=Pos5 + 4;
      BaseReport.SetFont('Arial',7);
      BaseReport.MoveTo(posfx+Pos3+175,Pos5);
      BaseReport.PrintXY(posfx+Pos3+95,Pos5,'SALDO SERVICIOS');
      Bandera:=false;
      for t:=DataSet3.RecordCount downto 1  do begin
       DataSet3.RecNo:=t;
       if TRIM(DataSet3.Fields[4].AsString) = 'SALDO FINAL'  then begin
        if ctasserv=0 then BaseReport.PrintRight('',posfx+Pos3+140)
         else BaseReport.PrintRight(inttostr(ctasserv),posfx+Pos3+140);
        BaseReport.MoveTo(posfx+Pos3+177,Pos5);
        BaseReport.PrintRight(redondeo(DataSet3.Fields[3].AsString,2),posfx+Pos3+190);
        BaseReport.Rectangle(posfx+Pos3+93.5,Pos5+0.5,posfx+Pos3+195,Pos5+0.5);
        tot:=tot + DataSet3.Fields[3].AsFloat;
        Bandera:=true;
        break;
       end;
      end;
      if not Bandera then begin
       BaseReport.MoveTo(posfx+Pos3+175,Pos5);
       BaseReport.Rectangle(posfx+Pos3+93.5,Pos5+0.5,posfx+Pos3+195,Pos5+0.5);
       BaseReport.PrintRight('0.00',posfx+Pos3+177);
      end;

      //Consolidados
      Pos5:=Pos5 + 4;
      BaseReport.SetFont('Arial',7);
       BaseReport.MoveTo(posfx+Pos3+175,Pos5);
      BaseReport.PrintXY(posfx+Pos3+95,Pos5,'SALDO CONSOLID.');
      Bandera:=false;
      for t:=DataSet5.RecordCount downto 1  do begin
       DataSet5.RecNo:=t;
       if TRIM(DataSet5.Fields[4].AsString) = 'SALDO FINAL'  then begin
        BaseReport.MoveTo(posfx+Pos3+177,Pos5);
        BaseReport.PrintRight(redondeo(DataSet5.Fields[3].AsString,2),posfx+Pos3+190);
        BaseReport.Rectangle(posfx+Pos3+93.5,Pos5+0.5,posfx+Pos3+195,Pos5+0.5);
        tot:=tot + DataSet5.Fields[3].AsFloat;
        Bandera:=true;
        break;
       end;
      end;
      if not Bandera then begin
       BaseReport.MoveTo(posfx+Pos3+175,Pos5);
       BaseReport.Rectangle(posfx+Pos3+93.5,Pos5+0.5,posfx+Pos3+195,Pos5+0.5);
       BaseReport.PrintRight('0.00',posfx+Pos3+177);
      end;

      //Mantenimiento
      Pos5:=Pos5 + 4;
      BaseReport.SetFont('Arial',7);
      BaseReport.MoveTo(posfx+Pos3+175,Pos5);
      BaseReport.PrintXY(posfx+Pos3+95,Pos5,'SALDO MANTENIM.');
      Bandera:=false;
      for t:=DataSet4.RecordCount downto 1  do begin
       DataSet4.RecNo:=t;
       if TRIM(DataSet4.Fields[9].AsString) = 'SALDO ACTUAL'  then begin
        BaseReport.MoveTo(posfx+Pos3+177,Pos5);
        BaseReport.PrintRight(redondeo(DataSet4.Fields[6].AsString,2),posfx+Pos3+190);
        tot:=tot + DataSet4.Fields[6].AsFloat;
        Bandera:=true;
        break;
       end;
      end;
      if not Bandera then begin
       BaseReport.MoveTo(posfx+Pos3+175,Pos5);
       BaseReport.Rectangle(posfx+Pos3+93.5,Pos5+0.5,posfx+Pos3+195,Pos5+0.5);
       BaseReport.PrintRight('0.00',posfx+Pos3+177);
      end;

      Pos5:=Pos5 + 5;
      BaseReport.SetFont('Arial Black',7);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posfx+Pos3+95,Pos5,'DEUDA ACUMULADA DEL PERIODO ACTUAL:');
      BaseReport.MoveTo(posfx+Pos3+177,Pos5);
      BaseReport.PrintRight('$ ' + redondeo(FloatToStr(tot),2),posfx+Pos3+190);//177
      BaseReport.Rectangle(posfx+Pos3+94,Pos5+0.5,posfx+Pos3+195,Pos5+0.5);

      Pos5:=Pos5 + 5;
      BaseReport.SetFont('Arial Black',7);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posfx+45,Pos5+27,' ---------- DETALLE DE CUOTAS ADEUDADAS DE MANTENIMIENTO ----------');
      BaseReport.MoveTo(posfx+Pos3+177,Pos5);
   end;
except
end;
end;

procedure TListaResumenMorososVeraz.RvCPrint(Sender: TObject);
var posfx,posfy,final,salto,posw,sd1,posn:double;
var t,y,hoja,nro:integer;
var txt,PathLogo:string;
var pso:boolean;

   Function Logo(posx,posy:double;vaf:integer):double;
   var Imagen1:TBitMap;
   begin
     with RvC do begin
      Imagen1 := TBitMap.Create;
      PathLogo:=modulo2.path_todo + '\Imagenes\' + modulo2.INI1.ReadString('Resumen Caja','Imagen1','');
      if FileExists(PathLogo) then begin
       Image1.Picture.LoadFromFile(PathLogo);
       Imagen1.Assign(Image1.Picture.Graphic);
       BaseReport.PrintBitmapRect(posfx+5,posfy+5,posfx+60,posfy+25,Imagen1);
      end;
      Imagen1.Free;
      BaseReport.Rectangle(posx+4,posy+5,posx+205,posy+37);
      BaseReport.SetFont('Arial Black',9);
      BaseReport.FontColor:=clBlack;
      if PageControl1.ActivePageIndex = 0  then begin
       BaseReport.PrintXY(posx+80,posy+15,'PERIODO DE DEUDA   ' + TRIM(PERIODO.TEXT));
      end;
      if PageControl1.ActivePageIndex = 1 then begin
      // BaseReport.PrintXY(posx+80,posy+15,'MOVIM. DE PAGOS DESDE: ' + TRIM(FECHAD.Text) + ' - HASTA:' + TRIM(FECHAH.Text));
      end;
      if CB1.Checked then BaseReport.PrintXY(posx+80,posy+19,'ACCIONES SOLO CON INHUNMADOS')
       ELSE BaseReport.PrintXY(posx+80,posy+19,'LISTADO GENERAL DE ACCIONES');
      BaseReport.SetFont('Arial',9);
      BaseReport.FontColor:=clBlack;                              
      BaseReport.PrintXY(posx+23,posy+24,'SERVICIOS & MANDATOS');
      BaseReport.PrintXY(posx+23,posy+28,'Ayacucho N° 160 -  Formosa - CP:3600');
      BaseReport.PrintXY(posx+160,posy+28,'Fecha Imp.: '+ DateToStr(Date));
      BaseReport.SetFont('Arial',9);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posx+185,posy+9,'Pág.: ' + inttostr(vaf));
      BaseReport.RoundRect(posx+20,posy+29,posx+205,posy+34,5,5);
      if PageControl1.ActivePageIndex = 0  then begin
       BaseReport.PrintXY(posx+23,posy+32.5,'CLIENTES MOROSOS A CARGO DEL GESTOR: ' + TRIM(COBRADOR.TEXT) + ' - ' + elnrogestor);
      end;
      if PageControl1.ActivePageIndex = 1  then begin
       BaseReport.PrintXY(posx+23,posy+32.5,'HISTORIAL DE PAGOS DE ACCIONES A CARGO DEL GESTOR: ' + TRIM(COBRADOR.TEXT) + ' - ' + elnrogestor);
      end;
      BaseReport.SetFont('Arial Black',8);
      Logo:=posy+33;
     end;
   end;

   Function GrillaCabecera(posx,posy:double;texto:string):double;
   var t:integer;
   begin
    with RvC do begin
     BaseReport.Rectangle(posx+4,posy,posx+205,posy+5);
     for t:=1 to length(Camp)-1 do begin
     BaseReport.Rectangle(posx + PosH[t]-2,posy,posx + PosH[t]-2,posy+5);
     end;
    end;
    RvC.BaseReport.SetFont('Arial Black',6);
    RvC.BaseReport.FontColor:=clBlack;
    for t:=0 to length(Camp)-1 do begin
     RvC.BaseReport.PrintXY(posx + PosH[t],posy+4,TxtCamp[t]);
    end;
    Result:=posy+5;
   end;

  /// Grilla Detalle
  Function GrillaDetalle(posx,posy:double;texto:string):double;
  var t:integer;
  begin
   RvC.BaseReport.SetFont('Arial',6);
   RvC.BaseReport.FontColor:=clBlack;
    for t:=0 to length(Camp)-1 do
     RvC.BaseReport.PrintXY(posx + PosH[t],posy+4,HackTable(FindComponent(texto)).Fields[Camp[t]].AsString);
    Result:=posy+4;
  end;

  //// Grilla Recuadro
  Function GrillaRecuadro(posx,posy,posy2:double):double;
  var t:integer;
  begin
   with RvC do begin
    BaseReport.Rectangle(posx+4,posy,posx+205,posy2);
    for t:=1 to length(Camp)-1 do begin
      BaseReport.Rectangle(posx + PosH[t]-2,posy,posx + PosH[t]-2,posy2);
    end;
   Result:=posy+4;
   end;
  end;

begin
{  AuditAccesos('Mdulo 2','IMP. DE ACCIONES MOROSAS');
  try
   posfx:=1;
   posfy:=2;
   salto:=4;
   final:=0;
   hoja:=1;
   posfy:=Logo(posfx,posfy,hoja);
   if PageControl1.ActivePageIndex = 0  then begin
    Camp[0]:=0; Camp[1]:=21; Camp[2]:=9;  Camp[3]:=11;
    Camp[4]:=6; Camp[5]:=14; Camp[6]:=13;
    Camp[7]:=18; Camp[8]:=19; Camp[9]:=20;   Camp[10]:=17;

    TxtCamp[0]:='Nº';  TxtCamp[1]:='Titulo/Sec/Parc'; TxtCamp[2]:='1º Titular';  TxtCamp[3]:='Domicilio';
    TxtCamp[4]:='Inhum';   TxtCamp[5]:='Meses';    TxtCamp[6]:='DeudaM';
    TxtCamp[7]:='DeudaV';    TxtCamp[8]:='DeudaS';   TxtCamp[9]:='DeudaC';
    TxtCamp[10]:='DeudaTot';

    PosH[0]:=5;   PosH[1]:=11;  PosH[2]:=33;  PosH[3]:=70;
    PosH[4]:=123; PosH[5]:=133; PosH[6]:=143;
    PosH[7]:=155; PosH[8]:=166;   PosH[9]:=181;  PosH[10]:=192;

    T8.Close;
    T8.CloneCursor(DataDeudas,false,true);
    txt:='T8';
    final:=GrillaCabecera(posfx,posfy+5,txt);
    posfy:=final;
    pso:=false;

    for y:=1 to HackTable(findcomponent(txt)).RecordCount do begin
     HackTable(FindComponent(txt)).RecNo:=y;
     if pso then RvC.BaseReport.Rectangle(posfx+4,posfy+1,posfx+205,posfy+1)
     else pso:=true;
     posfy:=GrillaDetalle(posfx,posfy,txt);
     if posfy > 270 then begin
      posfy:=GrillaRecuadro(posfx,final,posfy+2);
      posfx:=1.5;
      posfy:=2;
      hoja:=hoja+1;
      RvC.BaseReport.NewPage;
      posfy:=Logo(posfx,posfy,hoja);  // llamamos al encabezado
      final:=GrillaCabecera(posfx,posfy+5,txt);
      posfy:=final;
      pso:=false;
     end;
    end;

    RvC.BaseReport.SetFont('Arial',11);
    RvC.BaseReport.FontColor:=clBlack;
    RvC.BaseReport.Rectangle(posfx+4,posfy+5,posfx+205,posfy+30);
    RvC.BaseReport.PrintXY(posfx+5,posfy+10,'Cantidad de Acciones del Gestor: ');
    if  IdCombos[1,TPOOBJ.ItemIndex] = '3' then begin   ///mantenimiento
     RvC.BaseReport.PrintXY(posfx+5,posfy+17,'Cantidad de Acciones Morosos: ');
     RvC.BaseReport.PrintXY(posfx+5,posfy+25,'Porcentaje de Morosidad: ');
     RvC.BaseReport.SetFont('Arial Black',9);
     RvC.BaseReport.FontColor:=clBlack;
     RvC.BaseReport.PrintXY(posfx+66,posfy+10, cantreg);
     //RvC.BaseReport.PrintXY(posfx+62,posfy+17,inttostr(totregm));
     RvC.BaseReport.PrintXY(posfx+62,posfy+17,IntToStr(DataDeudas.RecordCount));
     porcen:= totregm *100 / strtoint(cantreg);
     //RvC.BaseReport.PrintXY(posfx+51,posfy+25, floattostr(round(porcen)) + '% aprox.');
     RvC.BaseReport.PrintXY(posfx+51,posfy+25, trim(labelpm.Caption) + ' aprox.');
     Rvc.BaseReport.SetFont('Arial Black',9);
     Rvc.BaseReport.FontColor:=clBlack;
     Rvc.BaseReport.PrintXY(posfx+150,posfy+20,'Meses Adudados: ' + floattostr(totalmeses)) ; //sumainhum);
     Rvc.BaseReport.PrintXY(posfx+150,posfy+27,'Total DEUDA:  $'+ floattostr(totaldeudagral)); //sumapos);
    end
    else begin
     RvC.BaseReport.SetFont('Arial Black',9);
     RvC.BaseReport.FontColor:=clBlack;
     RvC.BaseReport.PrintXY(posfx+66,posfy+10, cantreg);
     Rvc.BaseReport.PrintXY(posfx+150,posfy+28,'Total DEUDA:  $ '+ floattostr(totaldeudagral)); //sumapos);
    end;
    if pso then posfy:=GrillaRecuadro(posfx,final,posfy+2);
   END;

   if PageControl1.ActivePageIndex = 1  then begin
    posfy:=posfy+5;
    posfy:=Mostrar1(posfx,posfy);
    posfy:=posfy+50;
    for t:=1 to datasource11.dataset.RecordCount do begin
     datasource11.dataset.RecNo:=t;
     posfy:=posfy-0.5;
     RvC.BaseReport.SetFont('Arial',7);
     RvC.BaseReport.PrintXY(posfx+6,posfy,trim(datasource11.dataset.Fields[0].AsString));
     RvC.BaseReport.MoveTo(posw,posfy);
     RvC.BaseReport.PrintLeft(trim(datasource11.dataset.Fields[1].AsString),posfx+23);
     RvC.BaseReport.MoveTo(posw,posfy);
     RvC.BaseReport.PrintLeft(trim(datasource11.dataset.Fields[2].AsString),posfx+85);
     RvC.BaseReport.MoveTo(posw,posfy);
     RvC.BaseReport.PrintLeft(trim(datasource11.dataset.Fields[3].AsString),posfx+150);
     RvC.BaseReport.MoveTo(posw,posfy);
     RvC.BaseReport.PrintLeft(trim(datasource11.dataset.Fields[4].AsString),posfx+180);
     RvC.BaseReport.MoveTo(posw,posfy);
     posfy:=posfy+0.5;
     // hacemos la lineas internas de las grilla
     RvC.BaseReport.Rectangle(posfx+4,posfy,posfx+200,posfy-4);
     RvC.BaseReport.Rectangle(posfx+22,posfy,posfx+200,posfy-4);
     RvC.BaseReport.Rectangle(posfx+84,posfy,posfx+200,posfy-4);
     RvC.BaseReport.Rectangle(posfx+149,posfy,posfx+200,posfy-4);
     RvC.BaseReport.Rectangle(posfx+179,posfy,posfx+200,posfy-4);
     posfy:=posfy + salto;
     if posfy > 280 then begin
      posfx:=5.5;
      posfy:=5;
      hoja:=hoja+1;
      RvC.BaseReport.NewPage;
      posfy:=Logo(posfx,posfy,hoja)+ salto;   // llamamos al encabezado
      posfy:=Mostrar1(posfx,posfy)+ salto;
      posfy:=posfy+9;
     end;
    end;
   END;
  except
  end;    }
end;

procedure TListaResumenMorososVeraz.COBRADORExit(Sender: TObject);
begin
  if cobrador.ItemIndex < 0 then begin
   messagedlg('ERROR!! No Existe un Tipo de Deuda Seleccionada!',mterror,[mbok],0);
   cobrador.SetFocus;
  end
  else begin
   OPERADOR.SetFocus;
  end;
end;

procedure TListaResumenMorososVeraz.COBRADORKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  OPERADOR.SetFocus;
 end;
end;

procedure TListaResumenMorososVeraz.PERIODOKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  cobrador.SetFocus;
 END;
end;

procedure TListaResumenMorososVeraz.PERIODOExit(Sender: TObject);
begin
if PERIODO.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Periodo Ingresado!!',mterror,[mbok],0);
  PERIODO.SetFocus;
end;
end;

procedure TListaResumenMorososVeraz.BitBtn1Click(Sender: TObject);
var    txtw:widestring;
var     a:integer;
begin
  DataSet0.Free;
  DataSet0:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=DataSet0;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if trim(tpoobj.Text) = '.TODOS LOS COBRADORES'  then begin
   if cobrador.ItemIndex = 0  then begin  // solo deuda de mantenimiento
    if not cb1.Checked  then begin  // todas las acciones
     txtw:='SELECT row_number() over (order by NroAccion asc) as Orden,[NroAccion],[Titular],[NivelTitulariodad],[NroDni],[Deuda Meses], '
     + '[Deuda Total] as TotalDeuda ,[Domivlio] as Domicilio FROM View_AfectacionVeraz where ([Deuda Meses]' + trim(operador.Text) + ' ' + trim(domi.Text) + ')'
     +' and CantInhumados > 0 order by 1,2 ';
    end
    else begin // CON INHUMADOS
     txtw:='SELECT row_number() over (order by NroAccion asc) as Orden,[NroAccion],[Titular],[NivelTitulariodad],[NroDni],[Deuda Meses],'
     +'[Deuda Total] as TotalDeuda,[Domivlio] as Domicilio FROM View_AfectacionVeraz where ([Deuda Meses]' + trim(operador.Text) + ' ' + trim(domi.Text) + ')'
     +' and CantInhumados > 0 order by 1,2 ';
    end;
   end
   else begin  // por todas las deuda
    if not cb1.Checked  then begin  // todas las acciones
     txtw:='SELECT row_number() over (order by NroAccion asc) as Orden,[NroAccion],[Titular],[NivelTitulariodad],[NroDni],[Deuda Meses], '
     + '[Deuda Total] + [DeudaServicio] + [DeudaVentas]+  [DeudaConsolidado] as TotalDeuda,[Domivlio] as Domicilio FROM View_AfectacionVeraz where ([Deuda Meses]' + trim(operador.Text) + ' ' + trim(domi.Text) + ')'
     +' and CantInhumados > 0 order by 1,2 ';
    end
    else begin // CON INHUMADOS
     txtw:='SELECT row_number() over (order by NroAccion asc) as Orden,[NroAccion],[Titular],[NivelTitulariodad],[NroDni],[Deuda Meses],'
     +'[Deuda Total] + [DeudaServicio] + [DeudaVentas] + [DeudaConsolidado] as TotalDeuda ,[Domivlio] as Domicilio FROM View_AfectacionVeraz where ([Deuda Meses]' + trim(operador.Text) + ' ' + trim(domi.Text) + ')'
     +' and CantInhumados > 0 order by 1,2 ';
    end;
   end;
  end
  else begin
   if cobrador.ItemIndex = 0  then begin  // solo deuda de mantenimiento
    if not cb1.Checked  then begin  // todas las acciones
     txtw:='SELECT row_number() over (order by NroAccion asc) as Orden,[NroAccion],[Titular],[NivelTitulariodad],[NroDni],[Deuda Meses], '
     + '[Deuda Total] as TotalDeuda ,[Domivlio] as Domicilio FROM View_AfectacionVeraz where ([Deuda Meses]' + trim(operador.Text) + ' ' + trim(domi.Text) + ')'
     +' and CantInhumados > 0 and Cpbrador = ' + chr(39) + trim(tpoobj.Text) + chr(39) + ' order by 1,2 ';
    end
    else begin // CON INHUMADOS
     txtw:='SELECT row_number() over (order by NroAccion asc) as Orden,[NroAccion],[Titular],[NivelTitulariodad],[NroDni],[Deuda Meses],'
     +'[Deuda Total] as TotalDeuda,[Domivlio] as Domicilio FROM View_AfectacionVeraz where ([Deuda Meses]' + trim(operador.Text) + ' ' + trim(domi.Text) + ')'
     +' and CantInhumados > 0 and Cpbrador = ' + chr(39) + trim(tpoobj.Text) + chr(39) + ' order by 1,2 ';
    end;
   end
   else begin  // por todas las deuda
    if not cb1.Checked  then begin  // todas las acciones
     txtw:='SELECT row_number() over (order by NroAccion asc) as Orden,[NroAccion],[Titular],[NivelTitulariodad],[NroDni],[Deuda Meses], '
     + '[Deuda Total] + [DeudaServicio] + [DeudaVentas] + [DeudaConsolidado] as TotalDeuda,[Domivlio] as Domicilio FROM View_AfectacionVeraz where ([Deuda Meses]' + trim(operador.Text) + ' ' + trim(domi.Text) + ')'
     +' and CantInhumados > 0 and Cpbrador = ' + chr(39) + trim(tpoobj.Text) + chr(39) + ' order by 1,2 ';
    end
    else begin // CON INHUMADOS
     txtw:='SELECT row_number() over (order by NroAccion asc) as Orden,[NroAccion],[Titular],[NivelTitulariodad],[NroDni],[Deuda Meses],'
     +'[Deuda Total] + [DeudaServicio] + [DeudaVentas] + [DeudaConsolidado] as TotalDeuda ,[Domivlio] as Domicilio FROM View_AfectacionVeraz where ([Deuda Meses]' + trim(operador.Text) + ' ' + trim(domi.Text) + ')'
     +' and CantInhumados > 0 and Cpbrador = ' + chr(39) + trim(tpoobj.Text) + chr(39) + ' order by 1,2 ';
    end;
   end;
  end;
  if not Funciones.Listar(txtw,DataSet0) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con  Administrador',mtError,[mbok],0);
  Funciones.Free;
   if not DataSet0.IsEmpty then begin
    JvBitBtn2.Enabled:=true;
    BitBtn4.Enabled :=true;
    dbgrid1.Columns[0].Width:=50;
    dbgrid1.Columns[1].Width:=60;
    dbgrid1.Columns[2].Width:=250;
    dbgrid1.Columns[3].Width:=60;
    dbgrid1.Columns[4].Width:=60;
    dbgrid1.Columns[5].Width:=80;
    dbgrid1.Columns[6].Width:=80;
    dbgrid1.Columns[7].Width:=300;
    Barra1.Panels[1].Text:='Cant. Reg.: ' + IntToStr(DataSet0.RecordCount);
    PC1.ActivePage:=PC1.Pages[1];
    JvBitBtn2.SetFocus ;
   end
   else begin
    messagedlg('ATENCION.... No se encontraron Acciones con este Estado',mtWarning,[mbok],0);
    JvBitBtn2.Enabled:=false;
     BitBtn4.Enabled :=false;
    domi.SetFocus;
   end;
end;

procedure TListaResumenMorososVeraz.TPOOBJExit(Sender: TObject);
begin
 if TPOOBJ.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Objeto Ingresado!!',mterror,[mbok],0);
  TPOOBJ.SetFocus;
 end
 else begin
   bitbtn1.SetFocus;
 end; 
end;

procedure TListaResumenMorososVeraz.TPOOBJKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  bitbtn1.SetFocus;
 end;
end;

procedure TListaResumenMorososVeraz.DOMIExit(Sender: TObject);
begin
 if trim(DOMI.Text)='' then begin
  //if trim(DOMI.Text) = '0'
  messagedlg('ERROR!!... La Cantidad de Meses de Deuda no puede tener el valor 0 (Cero)' ,mterror,[mbok],0);
  DOMI.SetFocus;
 end;
end;

procedure TListaResumenMorososVeraz.DOMIKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  tpoobj.SetFocus;
 end
 else begin
  if ( StrScan('0123456789',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
   else Key := #0;
 end;
end;

procedure TListaResumenMorososVeraz.RvNOTAPrint(Sender: TObject);
var posfx,posfy,final,salto,posx,posy,posn,posw:double;
    t,k,hoja,r,largo,des,hast:integer;
    txt,val,PathLogo,elnumaletras:string;
    a:boolean;
    Imagen1:TBitMap;

     ///////// IMPRIMIENDO EL ENCABEZADO ///////////////////////
   Function Logo(posx,posy:double;vaf:integer):double;
   var Imagen1,Imagen2,MarcaAgua,MarcaAgua2:TBitMap;
       mes:integer;
   begin
    with RvNOTA do begin
     BaseReport.SetFont('Script MT Bold',12);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+25,posy+19,'Estudio jurídico DiBiase & Asociados ' ); //+ IdCombo[0,CODIGO.ItemIndex]);
     BaseReport.PrintXY(posx+25,posy+21,'______________________________________________________________________________');
     BaseReport.SetFont('Calibri',9);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+40,posy+24,'Mitre N° 243 - tel.: 3704-421282 - CP (3600) - Formosa  EMAIL- estudiojuridicodibiase_asociados@hotmail.com ' ); //+ IdCombo[0,CODIGO.ItemIndex]);
     BaseReport.SetFont('Arial Black',16);
     BaseReport.FontColor:=clRed;
     //BaseReport.PrintXY(posx+45,posy+35,'AVISO DE INICIO DE ACCIONES JUDICIALES ');
     //BaseReport.PrintXY(posx+45,posy+43,'           POR EJECUCION DE DEUDA');
     BaseReport.PrintXY(posx+55,posy+35,'      AVISO  PREVIO  AL  INICIO  DE  ');
     BaseReport.PrintXY(posx+55,posy+43,'           EJECUCION JUDICIAL');
     BaseReport.SetFont('Arial Narrow',12);
     BaseReport.FontColor:=clBlack;
     elmes:=el_mes(strtoint(strcut_midle(FechaActual,4,5)));
     //BaseReport.PrintXY(posx+155,posy+58,'Formosa,' +  elmes + ' de ' + strcut_midle(FechaActual,7,10));// + TRIM(fec_texto(FechaActual)));
     BaseReport.PrintXY(posx+145,posy+58,'Formosa, Septiembre de 2017');// Agosto de 2017 + TRIM(fec_texto(FechaActual)));
     Logo:=posy+25;
    end;
   end;

 Function Mostrar1(posx,posy:double;Cod:boolean):double;
  var t,y:integer;
      sd,sd1,posn,posw:double;
      tot:real;
      la_fecha:string;
      var Imagen1:TBitMap;
  begin
   posn:=posy;
   posw:=posx;
   with RvNOTA do begin
     Imagen1 := TBitMap.Create;
     la_fecha:=trim(FechaActual);
     BaseReport.SetFont('Arial Narrow',12);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posw+35,posn+40,'Sr.: ');
     BaseReport.PrintXY(posw+35,posn+46,'Domicilio: ');
     BaseReport.PrintXY(posw+35,posn+53,'Ciudad: Formosa');

     {BaseReport.PrintXY(posw+35,posn+64,'Héctor D. Di Biase, Abogado MP 981, en mi carácter de Letrado Apoderado de Carmelo Monte S.A.,' ); //
     BaseReport.PrintXY(posw+25,posn+71,'concesionario exclusivo del Cementerio Remanso de Paz, me dirijo a Ud., en  su carácter  de  titular  de la' ); //+  trim(puesto.text));
     BaseReport.PrintXY(posw+25,posn+78,'Acción  Ordinaria  Preferida N°                          , con  derecho a inhumación  perpetua en la Parcela' ); //+ trim(d1.text));
     BaseReport.PrintXY(posw+25,posn+85,'Sector         , del  Necropoliparque  Remanso de  Paz, a  los  efectos de');
     BaseReport.SetFont('Arial Black',10);
     BaseReport.PrintXY(posw+138,posn+85,' NOTIFICARLO ');
     BaseReport.SetFont('Arial Narrow',12);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posw+169,posn+85,'que al día de ' ); //+  trim(d2.text) + '  Nº: ' + trim(dni.text));
     BaseReport.PrintXY(posw+25,posn+92,'la fecha Ud. adeuda, la suma de  pesos'); //' + trim(d6.text));
     BaseReport.PrintXY(posw+25,posn+99,'                                                                      '); //' +  trim(d9.text));
     BaseReport.PrintXY(posw+25,posn+106,'($                              ) e ');
     BaseReport.SetFont('Arial Black',10);
     BaseReport.PrintXY(posw+63,posn+106,'INTIMARLO ');
     BaseReport.SetFont('Arial Narrow',12);
     BaseReport.PrintXY(posw+86,posn+106,'para que en  el plazo perentorio e  improrrogable  de 5 días hábiles'); //' + trim(d11.text));
     BaseReport.PrintXY(posw+25,posn+113,'desde  la  recepción  de  la  presente, concurra  al  Estudio  Jurídico  Di  Biase &  Asociados,  sito  en  calle'); //+  trim(d10.text));
     BaseReport.PrintXY(posw+25,posn+120,'Bartolomé Mitre N° 243, de lunes a viernes de  08:30 a  12:00 horas y  de 17:30  a 20:00  horas y  proceda ');
     BaseReport.PrintXY(posw+25,posn+127,'a regularizar su  situación, haciéndole saber  que de cancelar  la deuda de contado, con  tarjeta  de crédito '); //trim(d4.Text));
     BaseReport.PrintXY(posw+25,posn+134,'o débito  en un solo  pago o mediante  plan de  pagos de  hasta doce (12) cuotas  con  una entrega igual o ');
     BaseReport.PrintXY(posw+25,posn+141,'superior al 50% de la deuda, se le efectuará importantes bonificaciones.-');
      }

     BaseReport.PrintXY(posw+35,posn+67,'Me dirijo a Ud., en  su carácter   de titular de la  Acción  Ordinaria  Preferida N°             , con derecho a ' ); //
     BaseReport.PrintXY(posw+25,posn+75,'inhumación perpetua en la Parcela             , Sector        del  Necropoliparque  Remanso de Paz, a los efectos ' ); //+  trim(puesto.text));
     BaseReport.PrintXY(posw+25,posn+83,'de NOTIFICARLO que adueda la suma pesos' ); //+ trim(d1.text));
     BaseReport.PrintXY(posw+25,posn+90,'');
     BaseReport.PrintXY(posw+25,posn+97,'($                               ) e  INTIMARLO  para  que  al  Estudio  Jurídico  Di  Biase  &  Asociados,  sito  en  calle');
     BaseReport.PrintXY(posw+25,posn+104,'Bartolomé Mitre  N° 243, de lunes a viernes de  08:30 a 12:00  horas  y  de 17:30  a 20:00 horas y proceda a');
     BaseReport.PrintXY(posw+25,posn+111,'regularizar su  situación, antes del día 13 de Octubre de 2017.-'); //trim(d4.Text));

     BaseReport.SetFont('Arial Black',10.5);
     BaseReport.FontColor:=clRed;
     //BaseReport.PrintXY(posx+35,posy+152,'En caso de no regularizar la situación, a  partir  del día 15 de NOVIEMBRE ');
     BaseReport.PrintXY(posx+35,posy+120,'En caso de no regularizar la situación, a partir del día 13 de Octubre, además');
     BaseReport.PrintXY(posx+25,posy+130,'de  las  sanciones  administrativas  previstas  contractualmente, se  lo  AFECTARA');
     BaseReport.PrintXY(posx+25,posy+140,'A INFORMACIONES  COMERCIALES  Y  ORGANIZACIÓN  VERAZ y se  procederá  al  ');
     BaseReport.PrintXY(posx+25,posy+150,'INICIO A  LA  ACCION  JUDICIAL donde se reclamará el monto adeudado, intereses ' );
     BaseReport.PrintXY(posx+25,posy+160,'legales  y  punitorios  contractuales   por  todo  el  periodo no  prescripto (10 años) ');
     BaseReport.PrintXY(posx+25,posy+170,'costas, cargos y gastos administrativos.-');
  
     BaseReport.SetFont('Arial Narrow',12);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+35,posy+184,'Si al recibir la presente Ud. ya se regularizo su situación le hacemos saber  que  no deberá realizar  ');
     BaseReport.PrintXY(posx+25,posy+191,'ninguna gestión relacionada con la presente y le rogamos sepa disculparnos.-');

     BaseReport.SetFont('Arial Narrow',12);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+35,posy+202,'QUEDA UD. DEBIDAMENTE NOTIFICADO E INTIMADO.-' ); //+ trim(TOTAL.text));

     //Imagen1.Assign(Image7.Picture.Graphic);
     BaseReport.PrintBitmapRect(posw+130,posn+200,posw+165,posn+226,Imagen1);
     Imagen1.Free;

     BaseReport.SetFont('Arial ',7);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posw+130,posn+220,'DR. HECTOR DONATO DI BIASE');
     BaseReport.PrintXY(posw+130,posn+223,'                 ABOGADO ');
     BaseReport.PrintXY(posw+130,posn+226,'              MP 981 C.P.A.');
     BaseReport.PrintXY(posw+130,posn+229,'       S.C.J.N. Tº 83 - Fº 665    ');

     BaseReport.PrintXY(posx+25,posy+254,'___________________________________________________________________________________________________________________________');
     BaseReport.SetFont('Script MT Bold',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+130,posy+259,'Estudio jurídico DiBiase & Asociados '  );
   end;
  end;

begin
 {
 try
   posx:=0.2;
   posy:=0.1;
   salto:=0;
   final:=0;
   hoja:=1;
   posn:=posy;
   posw:=posx;
   Imagen1 := TBitMap.Create;
   r:=FinM;
   des:=strtoint(desde.Text);
   hast:=strtoint(hasta.Text);

  with RvNOTA do begin
   for t:=des to hast do begin
     //for t:=1 to DataDeudas.RecordCount do begin
    posfy:=Logo(posfx,posfy,hoja)+ salto;  // llamamos al encabezado
    posfy:=mostrar1(posfx,posfy,a)+salto;
    DataDeudas.RecNo:=t;
    BaseReport.SetFont('Arial Black',10);
    BaseReport.PrintXY(posw+45,posy+65,trim(DataDeudas.Fields[9].AsString));
    BaseReport.PrintXY(posw+55,posy+71,trim(DataDeudas.Fields[11].AsString));
    BaseReport.PrintXY(posw+160,posy+92,trim(DataDeudas.Fields[1].AsString));      // accion
    BaseReport.PrintXY(posw+81,posy+100,trim(DataDeudas.Fields[3].AsString)); // parcela
    BaseReport.PrintXY(posw+106,posy+100,trim(DataDeudas.Fields[2].AsString));        //sector
    BaseReport.PrintXY(posw+31,posy+122,trim(DataDeudas.Fields[13].AsString));
    BaseReport.SetFont('Arial Black',9);
    largo:=Length(numtopesos(redondeo(trim(DataDeudas.Fields[13].AsString),2)));
    elnumaletras:=StrFill(numtopesos(redondeo(trim(DataDeudas.Fields[13].AsString),2)),180,' - ','D');
    if largo > 47 then begin
     BaseReport.PrintXY(posw+100,posy+109,strcut_midle(elnumaletras,1,44));
     BaseReport.PrintXY(posw+25,posy+115,strcut_midle(elnumaletras,45,180));
     //BaseReport.PrintXY(posw+88,posy+117,strcut_midle(numtopesos(redondeo(trim(DataDeudas.Fields[13].AsString),2)),1,45));
     //BaseReport.PrintXY(posw+25,posy+124,strcut_midle(numtopesos(redondeo(trim(DataDeudas.Fields[13].AsString),2)),46,100));
    end
    else begin
     BaseReport.PrintXY(posw+100,posy+109,strcut_midle(elnumaletras,1,50));
     BaseReport.PrintXY(posw+25,posy+86,'- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -'
     +' - - - - - - - - - - - - - - - - - - -');
     //BaseReport.PrintXY(posw+88,posy+117,strcut_midle(numtopesos(redondeo(trim(DataDeudas.Fields[13].AsString),2)),1,45));
     //BaseReport.PrintXY(posw+25,posy+124,'-------------------------------------------------------------------------------------');
    end;
    BaseReport.SetFont('Arial',6);
    BaseReport.FontColor:=clBlack;
    BaseReport.PrintXY(posx+25,posy+282,trim(DataDeudas.Fields[0].AsString));
    BaseReport.NewPage;
    posfx:=0.2;
    posfy:=0.1;
   end;
  end;
 except

 end;    }
end;

procedure TListaResumenMorososVeraz.BitBtn4Click(Sender: TObject);
var t,y:integer;
    txtw,tipo:widestring;
begin
 nro:=DarMaximo('EnvioVeraz');
 Funciones:=TFuncionesVarias.Create(nil);
 Funciones.ConnectionString:=modulo2.Conexion;
 if cb1.Checked then tipo:= trim(cobrador.Text) + ' - Acciones Solo con Inhumados - Deuda ' + trim(operador.Text) + ' ' + trim(domi.Text) + ' - Cobrador: ' + trim(tpoobj.Text)
  else tipo:= trim(cobrador.Text) + ' - Todas las Acciones Con/Son Inhumados - Deuda ' + trim(operador.Text) + ' ' + trim(domi.Text) + ' - Cobrador: ' + trim(tpoobj.Text);
 try
   modulo2.Com1.CommandText:='BEGIN TRANSACTION;';
   modulo2.Com1.Execute;
   modulo2.Com1.CommandText:='INSERT INTO [Remanso].[dbo].EstadoDeudaGeneralParaVerazCabecera (NroEnvio,TipoDeida,Fecha,Usuario) VALUES (' + nro
   + ' , ' + chr(39) + tipo + chr(39)
   + ' , ' + chr(39) + FechaActual + chr(39)
   + ' , ' + inttostr(modulo2.nro_usu) + ')';
   modulo2.Com1.Execute;
   modulo2.Com1.CommandText:='COMMIT TRANSACTION';
   modulo2.Com1.Execute;
   try
      DataSource1.dataset.disablecontrols;
      DataSource1.dataset.first;
      while not DataSource1.dataset.eof do
      begin
       txtw:='INSERT INTO [Remanso].[dbo].EstadoDeudaGeneralParaVeraz (NroEnvio,Fecha,Orden,NroAccion,NombreTitular,NivelTitular '
            +',NroDni,CantPeriodosMantenimiento,Deuda,Domicilio) VALUES (' + nro
       + ' , ' + chr(39) + FechaActual + chr(39)
       + ' , ' + DBGrid1.DataSource.DataSet.FieldByName('Orden').AsString
       + ' , ' + DBGrid1.DataSource.DataSet.FieldByName('NroAccion').AsString
       + ' , ' + chr(39) + DBGrid1.DataSource.DataSet.FieldByName('Titular').AsString + chr(39)
       + ' , ' + DBGrid1.DataSource.DataSet.FieldByName('NivelTitulariodad').AsString
       + ' , ' + DBGrid1.DataSource.DataSet.FieldByName('NroDni').AsString
       + ' , ' + DBGrid1.DataSource.DataSet.FieldByName('Deuda Meses').AsString
       + ' , ' + DBGrid1.DataSource.DataSet.FieldByName('TotalDeuda').AsString
       + ' , ' + chr(39) + DBGrid1.DataSource.DataSet.FieldByName('Domicilio').AsString + chr(39) + ');';
       if not Funciones.ListarSinResp(txtw) then
        messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
       //end
       else DataSource1.dataset.next;
      end;
   finally
      DataSource1.dataset.enablecontrols;
   end;
   messagedlg('Lote guardado correctamente..',mtConfirmation,[mbok],0);
   Coloca1(1);
   PC1.ActivePage:=PC1.Pages[0];
 except
  Barra1.SimpleText:='Error al Intentar Insertar los Datos del Envio al Veraz';
  modulo2.Com1.CommandText:='ROLLBACK TRANSACTION';
  modulo2.Com1.Execute;
 end;
end;

procedure TListaResumenMorososVeraz.operadorKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  domi.SetFocus;
end;
end;

procedure TListaResumenMorososVeraz.operadorExit(Sender: TObject);
begin
 if operador.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Operador Ingresado!!',mterror,[mbok],0);
  operador.SetFocus;
end;
end;

procedure TListaResumenMorososVeraz.JvBitBtn2Click(Sender: TObject);
var gf,t,y:integer;
var texto:widestring;
var txt:string;
begin
gf:=messagedlgpos('Desea Exportar a Excel el Detalle del Resumen de Titulares?'
    ,mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
 if gf = 1 then begin
   AuditAccesos('Mdulo 2','EXPORTA A EXCEL DE ACCIONES MOROSAS');
   SplashConNro := TSplashConNro.Create(Application);
   SplashConNro.Show;
   SplashConNro.ProgressBar1.Max:=DataSource1.DataSeT.RecordCount - 1;
   RE5.Clear;
   texto:='';
   for t:=0 to DataSource1.DataSeT.FieldCount-1 do begin
     texto:=texto + DataSource1.DataSeT.Fields[t].FieldName + chr(9);
   end;
   RE5.Lines.Add(texto);
   for y:=1 to DataSource1.DataSeT.RecordCount do begin
    DataSource1.DataSeT.RecNo:=y;
    texto:='';
    for t:=0 to DataSource1.DataSeT.FieldCount-1 do begin
      texto:=texto + DataSource1.DataSeT.Fields[t].AsString + chr(9);
     end;
   RE5.Lines.Add(texto);
   SplashConNro.ProgressBar1.Position:=y;
   SplashConNro.Label3.Caption:=inttostr(y);
   SplashConNro.Update;
   end;
   RE5.SelectAll;
   RE5.CopyToClipboard;
   SplashConNro.Hide;
   SplashConNro.Free;
   messagedlgpos('Se Copiaron todos los Titulares, listo para pegarlos a Excel',mtwarning,[mbok],0,screen.Width div 3,screen.Height div 3);
 end;
end;


procedure TListaResumenMorososVeraz.LimpiarClick(Sender: TObject);
begin
 PC1.ActivePage:=PC1.Pages[0];
 JvBitBtn2.Enabled :=false;
 BitBtn4.Enabled :=false;
 domi.Text:='3';
 periodo.SetFocus;
end;

procedure TListaResumenMorososVeraz.DBGrid9DblClick(Sender: TObject);
begin
 if not (DtCombo.IsEmpty) then begin
  elid:=trim(DtCombo.Fields[1].AsString);
  BitBtn4.Enabled :=false;
  Coloca1(3);
  PC1.ActivePage:=PC1.Pages[1];
 end;
end;

procedure TListaResumenMorososVeraz.DBGrid9CellClick(Column: TColumn);
begin
 if not (DtCombo.IsEmpty) then begin
  elid:=trim(DtCombo.Fields[1].AsString);
  BitBtn4.Enabled :=false;
  Coloca1(3);
  PC1.ActivePage:=PC1.Pages[1];
 end;
end;

end.

unit CobradoresComision;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, JvExDBGrids, JvDBGrid, StdCtrls, Buttons,DateUtils,
  StrUtils,WSDLIntf,
  JvExButtons, JvBitBtn,ClaseFunciones,Unidad, DB, ComCtrls, Mask,DBClient,ClaseTiposSectores,
  RpDefine, RpBase, RpSystem,ExtCtrls,ClaseSistemas;

type
  TCobradorComi = class(TForm)
    DataSource1: TDataSource;
    Barra1: TStatusBar;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox3: TGroupBox;
    Sector: TComboBox;
    labusque: TJvBitBtn;
    print: TJvBitBtn;
    DataSource2: TDataSource;
    RvS: TRvSystem;
    Image1: TImage;
    JvBitBtn1: TJvBitBtn;
    PC2: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBGrid2: TDBGrid;
    DBGrid1: TDBGrid;
    FECNAC: TMaskEdit;
    Label6: TLabel;
    Label20: TLabel;
    TPOTALON: TComboBox;
    RvS1: TRvSystem;
    Label1: TLabel;
    fecnac1: TMaskEdit;
    CheckBox1: TCheckBox;
    procedure FormActivate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure FormCreate(Sender: TObject);
    procedure SectorExit(Sender: TObject);
    procedure SectorKeyPress(Sender: TObject; var Key: Char);
    procedure labusqueClick(Sender: TObject);
    procedure RvSPrint(Sender: TObject);
    procedure printClick(Sender: TObject);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure FECNACExit(Sender: TObject);
    procedure FECNACKeyPress(Sender: TObject; var Key: Char);
    procedure TPOTALONExit(Sender: TObject);
    procedure TPOTALONKeyPress(Sender: TObject; var Key: Char);
    procedure PVKeyPress(Sender: TObject; var Key: Char);
    procedure RvS1Print(Sender: TObject);
    procedure fecnac1Exit(Sender: TObject);
    procedure fecnac1KeyPress(Sender: TObject; var Key: Char);
    procedure CheckBox1Click(Sender: TObject);
  private
      gh:boolean;
     action:integer;
     Sistemas:TSistemas;
    { Private declarations }
  public
      Funciones:TFuncionesVarias;
      Dtcombo,DataSetC,DataSet,DataSet1,DtComboC,DataSetT:TClientDataSet;
      IdCombos:array of array of string; // para los combobox
      idreser:integer;
    { Public declarations }
  end;

var
  CobradorComi: TCobradorComi;

implementation

uses Modulo;
{$R *.dfm}

procedure TCobradorComi.FormActivate(Sender: TObject);
begin
if not gh then begin
  gh:=true;
  setlength(IdCombos,2);
  fecnac.Text:=LeftStr(Fec_System(),10);
  fecnac1.Text:=LeftStr(Fec_System(),10);
    try
      image1.Picture.LoadFromFile(modulo2.path_todo + '\Imagenes\LogoCarmeloMonte.jpg');
    except
    end;
  coloca1(1);
  coloca1(2);
  PC1.ActivePage:=PC1.Pages[0];
  PC2.ActivePage:=PC2.Pages[0];
       sector.Enabled:=true;
     sector.SetFocus;
  //sector.Enabled:=false;
  //CheckBox1.SetFocus;
  //sector.SetFocus;
  print.Enabled:=false;
end;
end;

procedure TCobradorComi.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TCobradorComi.Coloca1(nro:byte);
var sec:string;
    txtw:widestring;
    TiposSectores:TTiposSectores;
    t,NroDni:integer;
    accion:variant;
    Param:TWideStrings;
begin
if nro=0 then begin
    DataSet.Free;
    DataSet:=TClientDataSet.Create(nil);
    DataSource1.DataSet:=DataSet;
    Funciones:=TFuncionesVarias.Create(nil);
    Funciones.ConnectionString:=modulo2.Conexion;
    if not CheckBox1.Checked then
      txtw:='SELECT CONVERT(CHAR(10),fechaplanilla,103) AS FechaPlanilla,comprobante,sum(Recaudaciontotal) as TotalRecaudacion,sum(importecobrador) as TotalImporteCobrador '
            + ' FROM Fn_LosCobradoresComision ('+ CHR(39) + TRIM(FECNAC.Text)+ CHR(39)+','+ CHR(39) + TRIM(FECNAC1.Text)+ CHR(39)
            + ',' + IdCombos[1,TPOTALON.ItemIndex] + ',0,null) group by fechaplanilla,comprobante '
            + ' union '
            + ' select null,''TOTALES'', '
            + ' (SELECT sum(Recaudaciontotal) FROM Fn_LosCobradoresComision ('+ CHR(39) + TRIM(FECNAC.Text)+ CHR(39)
            + ','+ CHR(39) + TRIM(FECNAC1.Text)+ CHR(39)+',' + IdCombos[1,TPOTALON.ItemIndex] + ',0,null)),'
            + ' (SELECT sum(importecobrador) FROM Fn_LosCobradoresComision ('+ CHR(39) + TRIM(FECNAC.Text)+ CHR(39)
            + ','+ CHR(39) + TRIM(FECNAC1.Text)+ CHR(39)+',' + IdCombos[1,TPOTALON.ItemIndex] + ',0,null))'
            + ' order by 2'
    else
      txtw:='SELECT CONVERT(CHAR(10),fechaplanilla,103) AS FechaPlanilla,comprobante,sum(Recaudaciontotal) as TotalRecaudacion,sum(importecobrador) as TotalImporteCobrador '
            + ' FROM Fn_LosCobradoresComision ('+ CHR(39) + TRIM(FECNAC.Text)+ CHR(39)
            + ','+ CHR(39) + TRIM(FECNAC1.Text)+ CHR(39)+ ',' + IdCombos[1,TPOTALON.ItemIndex] + ',1,'+CHR(39) + TRIM(SECTOR.Text)+ CHR(39)+') group by fechaplanilla,comprobante '
            + ' union '
            + ' select null,''TOTALES'', '
            + ' (SELECT sum(Recaudaciontotal) FROM Fn_LosCobradoresComision ('+ CHR(39) + TRIM(FECNAC.Text)+ CHR(39)
            + ','+ CHR(39) + TRIM(FECNAC1.Text)+ CHR(39)+' ,' + IdCombos[1,TPOTALON.ItemIndex] + ',1,'+CHR(39) + TRIM(SECTOR.Text)+ CHR(39)+')),'
            + ' (SELECT sum(importecobrador) FROM Fn_LosCobradoresComision ('+ CHR(39) + TRIM(FECNAC.Text)+ CHR(39)
            + ','+ CHR(39) + TRIM(FECNAC1.Text)+ CHR(39)+ ',' + IdCombos[1,TPOTALON.ItemIndex] + ',1,'+CHR(39) + TRIM(SECTOR.Text)+ CHR(39)+')) order by 2';
    if not Funciones.Listar(txtw,DataSet) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    Funciones.Free;
    if DataSet.RecordCount > 0 then begin
          print.Enabled:=true;
          dbgrid1.Columns[0].Width:=80;
          dbgrid1.Columns[1].Width:=150;
          dbgrid1.Columns[2].Width:=150;
          dbgrid1.Columns[3].Width:=150;
    end
    else begin
        print.Enabled:=false;
    end;

end;
if nro=1 then begin //Combo Talonarios
    DtCombo.Free;
    DtCombo:=TClientdataSet.Create(nil);
    Funciones:=TFuncionesVarias.Create(nil);
    Funciones.ConnectionString:=modulo2.Conexion;
    if not Funciones.Listar('SELECT IDTipoComprobante,DetalleComprobante FROM TiposComprobantes '
    + 'WHERE (Cobranzas=1)',DtCombo) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
    else begin
      SetLength(IdCombos[1],DtCombo.RecordCount);
      for t:=1 to DtCombo.RecordCount  do begin
        DtCombo.RecNo:=t;
        TPOTALON.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
        IdCombos[1,t-1]:=DtCombo.Fields[0].AsString;
      end;
    end;
    Funciones.Free;
  TPOTALON.ItemIndex:=0;
end;
if nro=2 then begin   //tipos cobradores
    SECTOR.Clear;
    DtCombo.Free;
    Dtcombo:=TClientDataSet.Create(nil);
    TiposSectores:=TTiposSectores.Create(nil);
    TiposSectores.ConnectionString:=modulo2.Conexion;
    txtw:='SELECT distinct Nombre,CUIF FROM VLosCobradores ORDER BY Nombre';
    if TiposSectores.Listar(txtw,DtCombo) then begin
      SetLength(IdCombos[0],DtCombo.RecordCount);
      for t:=1 to DtCombo.RecordCount  do begin
        DtCombo.RecNo:=t;
        SECTOR.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
        IdCombos[0,t-1]:=DtCombo.Fields[1].AsString;
      end;
    end
    else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    TiposSectores.Free;
    SECTOR.ItemIndex:=0;
end;
{if nro=2 then begin   /// carga de las acciones
    DataSet.Free;
    DataSet:=TClientDataSet.Create(nil);
    DataSource1.DataSet:=DataSet;
    Funciones:=TFuncionesVarias.Create(nil);
    Funciones.ConnectionString:=modulo2.Conexion;
    txtw:='SELECT nrotalonario, DetalleComprobante, Cantidad  FROM LosComprobantesFaltantesxGestor WHERE  (Cantidad <> '' '') ORDER BY nrotalonario';
    if not Funciones.Listar(txtw,DataSet) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    Funciones.Free;
end;  }
if nro=5 then begin
    DtComboC.Free;
    DtcomboC:=TClientDataSet.Create(nil);
    DataSource2.DataSet:=DtcomboC;
    Funciones:=TFuncionesVarias.Create(nil);
    Funciones.ConnectionString:=modulo2.Conexion;
    if not CheckBox1.Checked then
      txtw:='SELECT * FROM Fn_LosCobradoresComision ('+ CHR(39) + TRIM(FECNAC.Text)+ CHR(39)+','+ CHR(39) + TRIM(FECNAC1.Text)+ CHR(39)
            + ',' + IdCombos[1,TPOTALON.ItemIndex] + ',0,null)'
    else
      txtw:='SELECT * FROM Fn_LosCobradoresComision ('+ CHR(39) + TRIM(FECNAC.Text)+ CHR(39)+','+ CHR(39) + TRIM(FECNAC1.Text)+ CHR(39)
            + ',' + IdCombos[1,TPOTALON.ItemIndex] + ',1,'+ CHR(39) + TRIM(SECTOR.Text)+ CHR(39) +')';
    if not Funciones.Listar(txtw,DtComboC) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    Funciones.Free;
    if dtcomboc.RecordCount > 0 then begin
        print.Enabled:=true;
        dbgrid2.Columns[0].Width:=100;
        dbgrid2.Columns[1].Width:=100;
        dbgrid2.Columns[2].Width:=100;
        dbgrid2.Columns[3].Width:=100;
        dbgrid2.Columns[4].Width:=200;
        dbgrid2.Columns[5].Width:=100;
    end
    else begin
        print.Enabled:=false;
    end;

end;
end;

procedure TCobradorComi.SectorExit(Sender: TObject);
begin
if Sector.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Gestor Ingresado!!',mterror,[mbok],0);
  Sector.SetFocus;
end;
end;

procedure TCobradorComi.SectorKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  FECNAC.SetFocus;
end;
end;

procedure TCobradorComi.labusqueClick(Sender: TObject);
begin
Coloca1(0);
coloca1(5);
if (Datasource2.DataSet.RecordCount = 0) then begin
  Barra1.Panels[0].Text:='Sin Datos en Grilla';
  IF application.MessageBox('COMPROBANTES DE COMISIONES NO encontrados, !Desea Buscar Reservas por otro Sector!?','Advertencia'
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
  print.Enabled:=true;
end;
end;

procedure TCobradorComi.RvSPrint(Sender: TObject);
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
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+20);
     BaseReport.SetFont(Fuente,Tamanio);
     BaseReport.FontColor:=clBlack;
     BaseReport.SetFont('Arial',9);
     BaseReport.PrintXY(posfx+150,posfy+13,'Fecha Imp.: ' + LeftStr(Fec_System(),10));
     BaseReport.PrintXY(posfx+150,posfy+18,'Nº Pagina ' + inttostr(hoja) + '  -  UsuImp ' + inttostr(modulo2.nro_usu));
     BaseReport.SetFont('Arial Black',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+30);
     BaseReport.PrintXY(posx+5,posy+24,'REGISTRO AGRUPADOS DE COMISIONES POR COBRADOR - TIPO COMPROBANTE: ' + TRIM(TPOTALON.Text));
     if not CheckBox1.Checked then baseReport.PrintXY(posx+5,posy+28,'')
      ELSE BaseReport.PrintXY(posx+5,posy+28,'GESTOR: ' + TRIM(sector.Text));
     BaseReport.SetFont('Arial',9);
     BaseReport.PrintXY(posfx+100,posfy+28,'Desde Fecha: ' + trim(fecnac.Text) + ' - Hasta Fecha: ' + trim(fecnac1.Text));
     Logo:=posy+27;
   end;
   end;

   Function Mostrar1(posx,posy:double):double;
   var t,y:integer;
   begin
     with Rvs do begin
       BaseReport.SetFont('Arial',9);
       BaseReport.Rectangle(posx+4,posy,posx+200,posy+5);
       BaseReport.Rectangle(posx+34,posy,posx+200,posy+5);
       BaseReport.Rectangle(posx+64,posy,posx+200,posy+5);
       BaseReport.Rectangle(posx+130,posy,posx+200,posy+5);
       //BaseReport.Rectangle(posx+170,posy,posx+200,posy+5);

       BaseReport.PrintXY(posx+5,posy+4,'FechaPlanilla');
       BaseReport.PrintXY(posx+35,posy+4,'Comprobante');
       BaseReport.PrintXY(posx+65,posy+4,'Tot.Recaudacion');
       BaseReport.PrintXY(posx+131,posy+4,'ImporteCobrador');
       //BaseReport.PrintXY(posx+171,posy+4,'PuntoVenta');
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
      for t:=1 to datasource1.dataset.RecordCount do begin
         datasource1.dataset.RecNo:=t;
         posfy:=posfy-0.5;
         RVS.BaseReport.SetFont('Arial',9);
         RVS.BaseReport.PrintXY(posfx+6,posfy,trim(datasource1.dataset.Fields[0].AsString));
         RVS.BaseReport.MoveTo(posw,posfy);
         RVS.BaseReport.PrintLeft(trim(datasource1.dataset.Fields[1].AsString),posfx+36);
         RVS.BaseReport.MoveTo(posw,posfy);
         RVS.BaseReport.PrintLeft(trim(datasource1.dataset.Fields[2].AsString),posfx+67);
         RVS.BaseReport.MoveTo(posw,posfy);
         RVS.BaseReport.PrintLeft(trim(datasource1.dataset.Fields[3].AsString),posfx+131);
         RVS.BaseReport.MoveTo(posw,posfy);
         //RVS.BaseReport.PrintLeft(trim(datasource2.dataset.Fields[5].AsString),posfx+171);
         //RVS.BaseReport.MoveTo(posw,posfy);
         posfy:=posfy+0.5;

         // hacemos la lineas internas de las grilla
         RVS.BaseReport.Rectangle(posfx+4,posfy,posfx+200,posfy-4);
         RVS.BaseReport.Rectangle(posfx+34,posfy,posfx+200,posfy-4);
         RVS.BaseReport.Rectangle(posfx+64,posfy,posfx+200,posfy-4);
         RVS.BaseReport.Rectangle(posfx+130,posfy,posfx+200,posfy-4);
         //RVS.BaseReport.Rectangle(posfx+170,posfy,posfx+200,posfy-4);

         posfy:=posfy + salto;
          if posfy > 250 then begin
           posfx:=5.5;
           posfy:=5;
           hoja:=hoja+1;
           RVS.BaseReport.NewPage;
           posfy:=Logo(posfx,posfy,hoja)+ salto;
           posfy:=Mostrar1(posfx,posfy)+ salto;
           posfy:=posfy+9;
          end;
      end;
  except
end;
end;

procedure TCobradorComi.printClick(Sender: TObject);
begin
rvs.Execute;
rvs1.Execute;
end;

procedure TCobradorComi.JvBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TCobradorComi.FECNACExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(FECNAC.Text));
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  FECNAC.SetFocus;
end;
end;

procedure TCobradorComi.FECNACKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
   Key := #0;
   fecnac1.SetFocus;
end;
end;

procedure TCobradorComi.TPOTALONExit(Sender: TObject);
begin
if TPOTALON.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Talonario Ingresado!!',mterror,[mbok],0);
  TPOTALON.SetFocus;
end;
end;

procedure TCobradorComi.TPOTALONKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  labusque.SetFocus;
end;
end;

procedure TCobradorComi.PVKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  labusque.SetFocus;
end;
end;

procedure TCobradorComi.RvS1Print(Sender: TObject);
var posfx,posfy,final,salto:double;
var t,k,y,hoja:integer;
var txt,val:string;
var sd,sd1,posn,posw:double;

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
     BaseReport.PrintXY(posx+5,posy+24,'REGISTRO DETALLDO DE COMISIONES POR COBRADOR - TIPO COMPROBANTE: ' + TRIM(TPOTALON.Text));
     if not CheckBox1.Checked then baseReport.PrintXY(posx+5,posy+28,'')
      ELSE BaseReport.PrintXY(posx+5,posy+28,'GESTOR: ' + TRIM(sector.Text));
     Logo:=posy+27;
   end;
   end;

   Function Mostrar1(posx,posy:double):double;
   var t,y:integer;
   begin
     with Rvs1 do begin
       BaseReport.SetFont('Arial',7);
       BaseReport.Rectangle(posx+4,posy,posx+200,posy+5);
       BaseReport.Rectangle(posx+24,posy,posx+200,posy+5);
       BaseReport.Rectangle(posx+49,posy,posx+200,posy+5);
       BaseReport.Rectangle(posx+99,posy,posx+200,posy+5);
       BaseReport.Rectangle(posx+120,posy,posx+200,posy+5);
       BaseReport.Rectangle(posx+139,posy,posx+200,posy+5);
       BaseReport.Rectangle(posx+170,posy,posx+200,posy+5);

       BaseReport.PrintXY(posx+5,posy+4,'NºPlanilla');
       BaseReport.PrintXY(posx+25,posy+4,'FechaPlanilla');
       BaseReport.PrintXY(posx+50,posy+4,'Cobrador');
       BaseReport.PrintXY(posx+100,posy+4,'Recaudacion');
       BaseReport.PrintXY(posx+121,posy+4,'%Comision');
       BaseReport.PrintXY(posx+140,posy+4,'ImporteComision');
       BaseReport.PrintXY(posx+171,posy+4,'SubTotalxDia');
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
         RVS1.BaseReport.SetFont('Arial',7);
         RVS1.BaseReport.PrintXY(posfx+6,posfy,trim(datasource2.dataset.Fields[1].AsString));
         RVS1.BaseReport.MoveTo(posw,posfy);
         RVS1.BaseReport.PrintLeft(trim(datasource2.dataset.Fields[2].AsString),posfx+25);
         RVS1.BaseReport.MoveTo(posw,posfy);
         RVS1.BaseReport.PrintLeft(trim(datasource2.dataset.Fields[3].AsString),posfx+50);
         RVS1.BaseReport.MoveTo(posw,posfy);
         RVS1.BaseReport.PrintLeft(trim(datasource2.dataset.Fields[5].AsString),posfx+101);
         RVS1.BaseReport.MoveTo(posw,posfy);
         RVS1.BaseReport.PrintLeft(trim(datasource2.dataset.Fields[6].AsString),posfx+121);
         RVS1.BaseReport.MoveTo(posw,posfy);
         RVS1.BaseReport.PrintLeft(trim(datasource2.dataset.Fields[7].AsString),posfx+140);
         RVS1.BaseReport.MoveTo(posw,posfy);
         RVS1.BaseReport.PrintLeft(trim(datasource2.dataset.Fields[10].AsString),posfx+171);
         RVS1.BaseReport.MoveTo(posw,posfy);
         posfy:=posfy+0.5;

         // hacemos la lineas internas de las grilla
         RVS1.BaseReport.Rectangle(posfx+4,posfy,posfx+200,posfy-4);
         RVS1.BaseReport.Rectangle(posfx+24,posfy,posfx+200,posfy-4);
         RVS1.BaseReport.Rectangle(posfx+49,posfy,posfx+200,posfy-4);
         RVS1.BaseReport.Rectangle(posfx+99,posfy,posfx+200,posfy-4);
         RVS1.BaseReport.Rectangle(posfx+120,posfy,posfx+200,posfy-4);
         RVS1.BaseReport.Rectangle(posfx+139,posfy,posfx+200,posfy-4);
         RVS1.BaseReport.Rectangle(posfx+170,posfy,posfx+200,posfy-4);

         posfy:=posfy + salto;
          if posfy > 280 then begin
           posfx:=5.5;
           posfy:=5;
           hoja:=hoja+1;
           RVS1.BaseReport.NewPage;
           posfy:=Logo(posfx,posfy,hoja)+ salto;
           posfy:=Mostrar1(posfx,posfy)+ salto;
           posfy:=posfy+9;
          end;
      end;
  except
end;
end;

procedure TCobradorComi.fecnac1Exit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(FECNAC1.Text));
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  FECNAC1.SetFocus;
end;
end;

procedure TCobradorComi.fecnac1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
   Key := #0;
   TPOTALON.SetFocus;
end;
end;

procedure TCobradorComi.CheckBox1Click(Sender: TObject);
begin
// if checkbox1.Checked=true then begin
//     sector.Enabled:=true;
//     sector.SetFocus;
// end
// else begin
//    sector.Enabled:=false;
//    fecnac.SetFocus;
// end;
end;

end.

unit ParcelasMovimientos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, JvExGrids, JvStringGrid, Buttons,
  JvExButtons, JvBitBtn, JvgGroupBox,ClaseFunciones,Unidad,DBClient,
  ComCtrls,ClaseParcelasMovimientos, RpDefine, RpBase, RpSystem, ADODB,
  ExtCtrls;
type HackTable = Class(TADOTable);
type
  TMovimParcelas = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    VentasSinTit: TDBGrid;
    DataSource1: TDataSource;
    JvgGroupBox1: TJvgGroupBox;
    bGuardar: TJvBitBtn;
    Label1: TLabel;
    nroaccion: TEdit;
    barra: TStatusBar;
    JvBitBtn1: TJvBitBtn;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    DataSource2: TDataSource;
    edit: TRichEdit;
    Label2: TLabel;
    print: TJvBitBtn;
    RvS: TRvSystem;
    todos: TCheckBox;
    elsector: TComboBox;
    Label3: TLabel;
    JvBitBtn2: TJvBitBtn;
    DATOSACUM: TADOTable;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure VentasSinTitCellClick(Column: TColumn);
    procedure bGuardarClick(Sender: TObject);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure printClick(Sender: TObject);
    procedure JvBitBtn2Click(Sender: TObject);
    procedure RvSPrint(Sender: TObject);
  private
      gh:boolean;
      Com1:TADOCommand;
    { Private declarations }
  public
    coefi,inter,porcent,name,coninter,nivelusu:string;
    Adress,NroDocu,TProfesion,TNacimiento,TNacion,Resultado,TCuif: string;
    TTel,TCel,TTipo,Naci,Nacio,TECivil,TCiudad,TEstado,TCP,TProvincia,TDoc,TDom,TNivel: string;
    Funciones:TFuncionesVarias;
    DtCombo,DataSet,DataSet1,Datos:TClientDataSet;
    ParcelasMovimientos:TParcelasMovimientos;
        IdCombos:array of array of string;
    { Public declarations }
  end;

var
  MovimParcelas: TMovimParcelas;

implementation

uses Modulo;

{$R *.dfm}

procedure TMovimParcelas.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TMovimParcelas.FormActivate(Sender: TObject);
begin
if not gh then begin
  gh:=true;
  setlength(IdCombos,1);
  coloca1(2);
  GroupBox2.Enabled:=false;
end;
end;

procedure TMovimParcelas.Coloca1(nro:byte);
var  txtw,txt,txta:widestring;
     t,y:integer;
begin
  if nro=0 then begin
    DataSet1.Free;
    DataSet1:=TClientdataSet.Create(nil);
    DataSource1.DataSet:=DataSet1;
    Funciones:=TFuncionesVarias.Create(nil);
    Funciones.ConnectionString:=modulo2.Conexion;
    if todos.Checked then txt:='SELECT NroAccion FROM Parcelas order by 1'
       else txt:='SELECT NroAccion FROM Parcelas where (sector= ' + chr(39) +  trim(elsector.Text) + chr(39) + ') order by 1';
    if not Funciones.listar(txt,DataSet1) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    Funciones.Free;
    barra.Panels[0].Text:='Cant. de Acciones encontradas: ' + inttostr(datasource1.DataSet.RecordCount);
  end;
  if nro=1 then begin
    DtCombo.Free;
    DtCombo:=TClientdataSet.Create(nil);
    Funciones:=TFuncionesVarias.Create(nil);
    DataSource2.DataSet:=DtCombo;
    Funciones.ConnectionString:=modulo2.Conexion;
    txtw:='SELECT id,Obser ,fecha as FechaMovim FROM ParcelasMovimientos Where (NroAccion = ' + trim(nroaccion.Text) +') order by 1 ';
    if not Funciones.listar(txtw,DtCombo) then
       messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    Funciones.Free;
    groupbox3.Caption:='Cant. de Detalle de Movimientos: ' + inttostr(datasource2.DataSet.RecordCount);
    dbgrid1.Columns[0].Width:=30;
    dbgrid1.Columns[1].Width:=550;
  end;
  if nro=2 then begin
    ELSECTOR.Clear;
    DtCombo.Free;
    Dtcombo:=TClientDataSet.Create(nil);
    Funciones:=TFuncionesVarias.Create(nil);
    Funciones.ConnectionString:=modulo2.Conexion;
    txtw:='SELECT DISTINCT SECTOR FROM Parcelas WHERE SECTOR IS NOT NULL  AND SECTOR <> '''' order by 1';
    if Funciones.Listar(txtw,DtCombo) then begin
      SetLength(IdCombos[0],DtCombo.RecordCount);
      for t:=1 to DtCombo.RecordCount  do begin
        DtCombo.RecNo:=t;
        ELSECTOR.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
        IdCombos[0,t-1]:=DtCombo.Fields[0].AsString;
      end;
    end
    else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    Funciones.Free;
    ELSECTOR.ItemIndex:=0;
  end;
  if nro = 3 then begin
  //
  end; 
end;

procedure TMovimParcelas.VentasSinTitCellClick(Column: TColumn);
begin
if not (Dataset1.IsEmpty) then begin
  GroupBox2.Enabled:=true;
  nroaccion.Text:=trim(dataset1.Fields[0].AsString);
  coloca1(1);
  coloca1(3);
  edit.Clear;
  bguardar.Enabled:=true;
  print.Enabled:=true;
  edit.SetFocus;
    if datasource2.DataSet.RecordCount = 0 then  print.Enabled:=false
    else print.Enabled:=true;
end;
end;

procedure TMovimParcelas.bGuardarClick(Sender: TObject);
var gf,p,t:integer;
    pt:boolean;
    var txtw:widestring;
begin
 gf:=messagedlgpos('Desea Agregar el Movimiento a Accion ' + trim(nroaccion.Text) + ' seleccioanda?',mtWarning,[
         mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
 if gf = 1 then begin
   ParcelasMovimientos:=TParcelasMovimientos.Create(nil);
   ParcelasMovimientos.ConnectionString:=modulo2.Conexion;
   txtw:='INSERT INTO ParcelasMovimientos (NroAccion,usua_a,Obser) VALUES ('
   + trim(NroAccion.Text) + ' , ' + inttostr(modulo2.nro_usu) + ' , '
   + chr(39) + trim(edit.Text) + chr(39) + ')';
   pt:=ParcelasMovimientos.ListarSinResp(txtw);
   if pt then Barra.Panels[1].Text:='Se ha Ingresado este Movimiento con Exito'
     else Barra.Panels[1].Text:='Error al Guardar los Titulares';
   ParcelasMovimientos.Free;
   bguardar.Enabled:=false;
   coloca1(1);
   edit.Clear;
 end;
end;

procedure TMovimParcelas.JvBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TMovimParcelas.printClick(Sender: TObject);
begin
rvs.Execute;
end;

procedure TMovimParcelas.JvBitBtn2Click(Sender: TObject);
begin
  coloca1(0);
end;

procedure TMovimParcelas.RvSPrint(Sender: TObject);
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
      PathLogo:=modulo2.path_todo + '\Imagenes\logo_carmelo.jpg';
     if FileExists(PathLogo) then begin
       Image1.Picture.LoadFromFile(PathLogo);
       Imagen1.Assign(Image1.Picture.Graphic);
       BaseReport.PrintBitmapRect(posx+5,posy+5,posx+50,posy+20,Imagen1);
     end;
     Imagen1.Free;
    {Colocamos el título}
     BaseReport.Rectangle(posx+4,posy+5,posx+280,posy+20);
     Fuente:=modulo2.INI1.ReadString('Titulo3 Facturas','Fuente','Arial Black');
     try
       Tamanio:=strtoint(modulo2.INI1.ReadString('Titulo3 Facturas','Tamaño','10'));
     except
       Tamanio:=10;
     end;
     BaseReport.SetFont(Fuente,Tamanio);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+50,posy+15,'Servicios & Mandatarios S.A.');
     BaseReport.PrintXY(posx+140,posy+15,modulo2.INI1.ReadString('Titulo3 Facturas','Titulo0',''));

     BaseReport.SetFont('Arial Black',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+280,posy+30);
     BaseReport.PrintXY(posx+5,posy+27,'REGISTRO DE MOVIMIENTOS');
     BaseReport.PrintXY(posx+130,posy+27,'ACCION Nº: ' + NROACCION.Text);
     Logo:=posy+27;
   end;
   end;

   Function Mostrar1(posx,posy:double):double;
   var t,y:integer;
   begin
    with Rvs do begin
     //Cabecera
       BaseReport.SetFont('Arial Black',9);
       BaseReport.Rectangle(posx+4,posy,posx+280,posy+5);
       BaseReport.Rectangle(posx+25,posy,posx+280,posy+5);
       BaseReport.Rectangle(posx+245,posy,posx+280,posy+5);

       BaseReport.PrintXY(posx+5,posy+4,'Id');
       BaseReport.PrintXY(posx+28,posy+4,'Detalle de Movimiento');
       BaseReport.PrintXY(posx+248,posy+4,'Fecha Mov.');
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
         RVS.BaseReport.PrintLeft(trim(datasource2.dataset.Fields[1].AsString),posfx+28);
         RVS.BaseReport.MoveTo(posw,posfy);
         RVS.BaseReport.PrintLeft(trim(datasource2.dataset.Fields[2].AsString),posfx+248);
         RVS.BaseReport.MoveTo(posw,posfy);
         posfy:=posfy+0.5;

         // hacemos la lineas internas de las grilla
         RVS.BaseReport.Rectangle(posfx+4,posfy,posfx+280,posfy-4);
         RVS.BaseReport.Rectangle(posfx+25,posfy,posfx+280,posfy-4);
         RVS.BaseReport.Rectangle(posfx+245,posfy,posfx+280,posfy-4);
         posfy:=posfy + salto;
          if posfy > 190 then begin
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

end.

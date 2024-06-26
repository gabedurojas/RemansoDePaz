unit ActualizarValorMante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,DBClient, StdCtrls, DBCtrls, Grids, DBGrids, ComCtrls, StrUtils,
  DB, Mask, ADODB, Buttons, ExtCtrls,ClaseParcelas, ToolWin,
  JvDBGrid, JvExButtons, JvBitBtn, JvExMask, JvToolEdit,DateUtils,
  JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, JvgGroupBox, JvExDBGrids,
  WSDLIntf,Unidad, JvExGrids, JvStringGrid, ClaseParcelasMantenimientoPrecios,
  ClaseParcelasMantenimientoPreciosBis, ClaseParcelasPrecios,
  RpDefine, RpBase, RpSystem, jpeg, Menus;


type THackStringGrid = class(TStringGrid);
type
  TActuValorManteMes = class(TForm)
    Barra1: TStatusBar;
    DataSource1: TDataSource;
    PC1: TPageControl;
    TabSheet3: TTabSheet;
    grupo1: TGroupBox;
    DBGrid1: TJvDBGrid;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    ToolButton2: TToolButton;
    GUARDA: TJvBitBtn;
    ToolButton3: TToolButton;
    JvBitBtn3: TJvBitBtn;
    Label2: TLabel;
    grupovalor: TJvgGroupBox;
    Label27: TLabel;
    Label30: TLabel;
    imp: TEdit;
    jubi: TEdit;
    Label35: TLabel;
    FECHA: TJvDatePickerEdit;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    C6: TCheckBox;
    id: TEdit;
    ToolButton1: TToolButton;
    JvBitBtn1: TJvBitBtn;
    RvS1: TRvSystem;
    image1: TImage;
    RE5: TRichEdit;
    PopupMenu1: TPopupMenu;
    ExportarDatos1: TMenuItem;
    Image2: TImage;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure Coloca1(nro:byte);
    procedure FormActivate(Sender: TObject);
    procedure SALEClick(Sender: TObject);
    procedure GUARDAClick(Sender: TObject);
    procedure JvBitBtn3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FECHAExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FECHAKeyPress(Sender: TObject; var Key: Char);
    procedure impKeyPress(Sender: TObject; var Key: Char);
    procedure jubiKeyPress(Sender: TObject; var Key: Char);
    procedure impExit(Sender: TObject);
    procedure jubiExit(Sender: TObject);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure RvS1Print(Sender: TObject);
    procedure RvS1BeforePrint(Sender: TObject);
    procedure RvS1AfterPrint(Sender: TObject);
    procedure ExportarDatos1Click(Sender: TObject);
  private
    gh:boolean;
    control:boolean;{Controla que no hubiere errores en la carga de datos}
    { Private declarations }
  public
    // aca instancio la clase si la clase esta definida en el uses de la ventana
    //ParcelasCuentas:TParcelasCuentas;
    Resultado,elcuif,fechaant,elid,lafecha,elimp,lajubi,laporcen,laadm,laiva,eldesc,
    color,sector,lavig,preciol,preciocdo,tipoc,idsector,fechaact:string;
    pos,TipoCliente:integer;
    PROCESO1: TADODataSet;
    DataSet,DtCombo:TClientDataSet; //declaro el DAtaset de los Combobox
    DSGral:TClientDataSet;//declaro el DAtaset de la grilla
    IdCombos:array of array of string;
    ParcelasMantenimientoPreciosUpdate:TParcelasMantenimientoPrecios;
    ParcelasMantenimientoPrecios:TParcelasMantenimientoPrecios;
    ParcelasMantenimientoPreciosBis:TParcelasMantenimientoPreciosBis;
    ParcelasPrecios:TParcelasPrecios ;

  end;

var
  ActuValorManteMes: TActuValorManteMes;

implementation

uses Modulo,ClaseSistemas,ClaseFunciones;

{$R *.dfm}


procedure TActuValorManteMes.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TActuValorManteMes.FormActivate(Sender: TObject);
begin
 if not gh then begin
  fechaact:=strcut(Fec_System(),10);
  gh:=true;
  PC1.ActivePage:=PC1.Pages[0];
  Coloca1(1);
  GUARDA.Enabled:=false;
  grupovalor.Enabled:=false;
 end;
end;

procedure TActuValorManteMes.Coloca1(nro:byte);
var t,y:integer;
    txt,sec:string;
    txtw:widestring;
    Funciones:TFuncionesVarias;
    Sistema:TSistemas;
    Param:TWideStrings;
    NroDni,NroCuif,nroid:variant;
begin
 if nro = 0 then begin
 //SELECT convert(char(10),DATEADD(DAY,-1,'01/09/2021'),103)
  PROCESO1:=TADODataSet.Create(nil);
  PROCESO1.ConnectionString:=modulo2.Conexion;
  PROCESO1.Close;
  PROCESO1.CommandText:='SELECT convert(char(10),DATEADD(DAY,-1,'+ chr(39) +  trim(fecha.Text) +chr(39)+'),103) as ger';
  PROCESO1.Open;
  FechaAnt:=PROCESO1.Fields[0].AsString ;
  PROCESO1.Free;
 end;
 if nro=1 then begin
  DataSet.Free;
  DataSet:=TClientDataSet.Create(nil);
  ParcelasMantenimientoPrecios:=TParcelasMantenimientoPrecios.Create(nil);
  DataSource1.DataSet:=Dataset;
  ParcelasMantenimientoPrecios.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT [Id],[Detalle] as Color ,[Sector],[Vigencia],[PrecioContado],[PrecioLista] '
      +',[TipoColor] ,[IdSector] FROM [RemansoAlla].[dbo].[LosPreciosParcelas] order by [TipoColor],[IdSector]';
  if not ParcelasMantenimientoPrecios.Listar(txtw,DataSet) then
   messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  dbgrid1.Columns[0].Width:=50;
  dbgrid1.Columns[1].Width:=120;
  dbgrid1.Columns[2].Width:=120;
  dbgrid1.Columns[3].Width:=120;
  dbgrid1.Columns[4].Width:=120;
  dbgrid1.Columns[5].Width:=120;
  dbgrid1.Columns[6].Width:=15;
  dbgrid1.Columns[7].Width:=15;
 end;
 if nro=2 then begin
 { DataSet.Free;
  DataSet:=TClientDataSet.Create(nil);
  ParcelasMantenimientoPrecios:=TParcelasMantenimientoPrecios.Create(nil);
  DataSource1.DataSet:=Dataset;
  ParcelasMantenimientoPrecios.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT Id,FechaInicio,FechaFin,ImporteNormal,ImporteJubilado,Porcentaje,GastoAdmin,Iva,'
  + 'DescuentoAnual FROM ParcelasMantenimientoPrecios  where FechaFin is null ORDER BY Id asc';
  if not ParcelasMantenimientoPrecios.Listar(txtw,DataSet) then
   messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  dbgrid1.Columns[0].Width:=30;
  dbgrid1.Columns[1].Width:=80;
  dbgrid1.Columns[2].Width:=80;
  dbgrid1.Columns[3].Width:=90;
  dbgrid1.Columns[4].Width:=90;
  dbgrid1.Columns[5].Width:=70;
  dbgrid1.Columns[6].Width:=70;
  dbgrid1.Columns[7].Width:=60;
  dbgrid1.Columns[8].Width:=90;    }
 end;
end;

procedure TActuValorManteMes.SALEClick(Sender: TObject);
begin
Close;
end;

procedure TActuValorManteMes.GUARDAClick(Sender: TObject);
var gf,t:integer;
var m,a:boolean;
var txtw,txtw1:widestring;
begin
  if C6.Checked = true then begin
   gf:=messagedlgpos('Desea Realmente Modificar los Valores de la Parcela Seleccionada?...',mtWarning,[
           mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
   if gf = 1 then begin
    /// primero inserto para el historico
    ParcelasPrecios:=TParcelasPrecios.Create(nil);
    ParcelasPrecios.ConnectionString:=modulo2.Conexion;
    txtw:='UPDATE [RemansoAlla].[dbo].[ParcelasPrecios] SET [Activo] = 0 '
    +' WHERE (id=' + trim(id.Text) + ')';
    m:= ParcelasPrecios.ListarSinResp(txtw);
    ParcelasPrecios.Free;
    if m then begin
      ParcelasPrecios:=TParcelasPrecios.Create(nil);
      ParcelasPrecios.ConnectionString:=modulo2.Conexion;
      ParcelasPrecios.C_TipoColor:= tipoc ;
      ParcelasPrecios.C_IdSector:=idsector;
      ParcelasPrecios.C_Vigencia := trim(fecha.Text );
      ParcelasPrecios.C_PrecioContado := trim(imp.Text);
      ParcelasPrecios.C_PrecioLista := trim(jubi.Text);
      ParcelasPrecios.C_Activo:= True;
      ParcelasPrecios.C_Observaciones:='Nuevo Valor por Sistema';
      ParcelasPrecios.C_Fecha_A:= trim(fechaact);
      a:=ParcelasPrecios.Agrega ;
      ParcelasPrecios.free;
      if a then begin
       messagedlg('Se ha Agregado el NUEVO valor de la PARCELA con Exito...',mtConfirmation,[mbok],0);
       coloca1(1);
       guarda.Enabled :=false;
      end
      else begin
       messagedlg('Error al Modificar el Nuevo del Mantenimiento seleccionado. Consulte con un Administrador',mtError,[mbok],0);
      end;
    end;
   { ParcelasMantenimientoPreciosBis.C_FechaInicio:= TRIM(lafecha);
    ParcelasMantenimientoPreciosBis.C_ImporteNormal:=elimp;
    ParcelasMantenimientoPreciosBis.C_ImporteJubilado:=lajubi;
    ParcelasMantenimientoPreciosBis.C_Porcentaje:=strtoint(laporcen);
    ParcelasMantenimientoPreciosBis.C_GastoAdmin:=laadm;
    ParcelasMantenimientoPreciosBis.C_Iva:=laiva;
    ParcelasMantenimientoPreciosBis.C_DescuentoAnual:=eldesc;
    ParcelasMantenimientoPreciosBis.C_activo :=false;
    ParcelasMantenimientoPreciosBis.C_Usu_A:=modulo2.nro_usu;
    m:=ParcelasMantenimientoPreciosBis.Agrega;
    ParcelasMantenimientoPreciosBis.Free;
    if m then begin
      /// despues actualizo el valor del mes
      ParcelasMantenimientoPrecios:=TParcelasMantenimientoPrecios.Create(nil);
      ParcelasMantenimientoPrecios.ConnectionString:=modulo2.Conexion;
      txtw:='UPDATE ParcelasMantenimientoPrecios SET fechainicio = '+ chr(39) + trim(fecha.Text ) + chr(39)
      +', ImporteNormal = ' +  trim(imp.Text)
      +', ImporteJubilado = ' + trim(jubi.Text)
      +', Porcentaje = ' +  trim(porcen.Text)
      +', GastoAdmin = ' + trim(adm.Text)
      +', Iva = ' + trim(iva.Text)
      +', DescuentoAnual = ' + trim(desc.Text)
      +'  WHERE (id=' + trim(id.Text) + ') and (fechafin is null)';
      a:=ParcelasMantenimientoPrecios.ListarSinResp(txtw) ;
      ParcelasMantenimientoPrecios.Free;
      if a then begin
       messagedlg('Se ha Modificado los valores con Exito...',mtConfirmation,[mbok],0);
       coloca1(1);
       guarda.Enabled :=false;
      end
      else begin
       messagedlg('Error al Modificar el Nuevo del Mantenimiento seleccionado. Consulte con un Administrador',mtError,[mbok],0);
      end;
    end;   }
   end
   else begin
      messagedlg('Ud. acaba de Cancelar esta Acci�n. No se produjeron ning�n cambio en la Base de Datos',mtWarning,[mbok],0);
   end;
  end;    
end;

procedure TActuValorManteMes.JvBitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TActuValorManteMes.DBGrid1CellClick(Column: TColumn);
var gf:integer;
begin
 if not (Dataset.IsEmpty) then begin
  //if (trim(DBGrid1.Fields[2].Text) <> '')  then begin
   gf:=messagedlgpos('ATENCION!! Ud. esta por ACTUALIZAR el VALOR de la PARCELA Seleccionada?...',mtWarning,[
           mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
   if gf = 1 then begin
    id.Text:=trim(DBGrid1.Fields[0].Text);
    imp.Text:=trim(DBGrid1.Fields[4].Text);
    jubi.Text:=trim(DBGrid1.Fields[5].Text);
    edit1.Text:=trim(DBGrid1.Fields[1].Text);
    edit2.Text:=trim(DBGrid1.Fields[2].Text);
    //iva.Text:=trim(DBGrid1.Fields[7].Text);
    //desc.Text:=trim(DBGrid1.Fields[8].Text);

    elid:=trim(DBGrid1.Fields[0].Text);
    color:=trim(DBGrid1.Fields[1].Text);
    sector:=trim(DBGrid1.Fields[2].Text);
    lavig:=trim(DBGrid1.Fields[3].Text);
    preciocdo:=trim(DBGrid1.Fields[4].Text);
    preciol:=trim(DBGrid1.Fields[5].Text);
    tipoc:=trim(DBGrid1.Fields[6].Text);
    idsector:=trim(DBGrid1.Fields[7].Text);

    c6.Checked:=true;
    guarda.Enabled:=true;
    grupovalor.Enabled:=true;
    fecha.SetFocus;
   end
   else begin
    grupovalor.Enabled:=false;
    guarda.Enabled:=false;
   end;
  //end
  //else begin
  // id.Text:=trim(DBGrid1.Fields[0].Text);
  // C6.Checked:=false;
  // guarda.Enabled:=true;
  // grupovalor.Enabled:=true;
  // fecha.SetFocus;
  //end;
 end;
end;

procedure TActuValorManteMes.FECHAExit(Sender: TObject);
var fec:Tdatetime;
begin
  try
   fec:=strtodate(trim(FECHA.Text));
   //edit1.Text:=(fec, now - 1);
   //edit1.Text:=FormatDateTime(strcut(Fec_System(),10), now - 1);//diaincremento(strcut(Fec_System(),10),-1);
  except
    messagedlgpos('La fecha es Erronea!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
    FECHA.SetFocus;
  end;
end;

procedure TActuValorManteMes.FECHAKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  imp.SetFocus;
end;
end;

procedure TActuValorManteMes.impKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
    Key := #0;
    //adm.Text := floattostr((strtofloat(imp.Text) * strtofloat(porcen.Text))/100);
    jubi.SetFocus;
  end
  else begin
    if ( StrScan('0123456789.',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
     else Key := #0;
  end;
end;

procedure TActuValorManteMes.jubiKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
    Key := #0;
    //adm.Text := strtofloat(imp.Text) * strtofloat(porcen.Text) ;
    guarda.SetFocus;
  end
  else begin
    if ( StrScan('0123456789.',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
     else Key := #0;
  end;
end;

procedure TActuValorManteMes.impExit(Sender: TObject);
begin
 if (trim(imp.Text)='') or (trim(imp.Text)='0') then imp.Text:='00.00';
 if trim(imp.Text)='00.00' then begin
  messagedlg('ERROR!! EL Importe del Mantenimiento NO puede ser Cero(0)!!',mterror,[mbok],0);
  imp.SetFocus;
 end;
end;

procedure TActuValorManteMes.jubiExit(Sender: TObject);
begin
 if (trim(jubi.Text)='') or (trim(jubi.Text)='0') then jubi.Text:='00.00';
 if trim(jubi.Text)='00.00' then begin
  messagedlg('ERROR!! EL Importe del Jubilado NO puede ser Cero(0)!!',mterror,[mbok],0);
  jubi.SetFocus;
 end;
end;

procedure TActuValorManteMes.JvBitBtn1Click(Sender: TObject);
begin
//RVS1.Execute;
end;

procedure TActuValorManteMes.RvS1Print(Sender: TObject);
var posfx,posfy,final,salto:double;
var t,k,y,hoja:integer;
var txt,val:string;
var pso:boolean;
var sd,sd1,posn,posw:double;

   Function Logo(posx,posy:double;vaf:integer):double;
   var Imagen2:TBitMap;
       Fuente,PathLogo:string;
       Tamanio:integer;
   begin
    with RvS1 do begin
     Imagen2 := TBitMap.Create;
     Imagen2.Assign(image1.Picture.Graphic);
     BaseReport.PrintBitmapRect(posy+5,posy+7,posy+57,posy+18,Imagen2);
     Imagen2.Free;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+34);
     BaseReport.SetFont(Fuente,Tamanio);
     BaseReport.FontColor:=clBlack;
     BaseReport.SetFont('Arial',8);
     BaseReport.PrintXY(posfx+150,posfy+13,'Fecha Imp.: ' + LeftStr(Fec_System(),10));
     BaseReport.PrintXY(posfx+150,posfy+18,'N� Pagina ' + inttostr(hoja) + '  -  UsuImp ' + inttostr(modulo2.nro_usu));
     BaseReport.SetFont('Arial Black',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+34);
     BaseReport.PrintXY(posx+5,posy+24,'LISTADO DE HISTORICO DE VALORES POR SERICIO DE MANTENIMIENTO'); // + '  -----> TOTAL ACCIONES: ' + TRIM(LABEL3.Caption));
     Logo:=posy+27;
    end;
   end;

   Function Mostrar1(posx,posy:double):double;
   var t,y:integer;
   begin
    with Rvs1 do begin
     BaseReport.SetFont('Arial',8);
     posy:=posy + 5;
     BaseReport.Rectangle(posx+4,posy,posx+200,posy+5);
     BaseReport.Rectangle(posx+60,posy,posx+200,posy+5);
     BaseReport.Rectangle(posx+90,posy,posx+200,posy+5);
     BaseReport.Rectangle(posx+120,posy,posx+200,posy+5);
     //BaseReport.Rectangle(posx+112,posy,posx+200,posy+5);     //
     //BaseReport.Rectangle(posx+143,posy,posx+200,posy+5);
     //BaseReport.Rectangle(posx+102,posy,posx+200,posy+5);
     //BaseReport.Rectangle(posx+120,posy,posx+200,posy+5);
     //BaseReport.Rectangle(posx+143,posy,posx+200,posy+5);
     BaseReport.PrintXY(posx+5,posy+4,'FechaInicio');
     BaseReport.PrintXY(posx+61,posy+4,'FechaFin');
     BaseReport.PrintXY(posx+91,posy+4,'ImporteNormal');
     BaseReport.PrintXY(posx+121,posy+4,'ImporteJubilado');
    // BaseReport.PrintXY(posx+113,posy+4,'Vigencia');    //
    // BaseReport.PrintXY(posx+144,posy+4,'Activo');
    // BaseReport.PrintXY(posx+103,posy+4,'Transferida');
    // BaseReport.PrintXY(posx+121,posy+4,'Cant.Inhumados');
    // BaseReport.PrintXY(posx+144,posy+4,'Observaciones');
    end;
   END;

begin
 try
  posfx:=5.5;
  posfy:=5;
  salto:=4;
  final:=0;
  hoja:=1;
  posfy:=Logo(posfx,posfy,hoja)+ salto;   // llamamos al encabezado
  posfy:=Mostrar1(posfx,posfy)+ salto;
  posw:=posfy;
  sd1:=posn;
  posfy:=posfy+14;
  for t:=1 to DataSource1.dataset.RecordCount do begin
   DataSource1.dataset.RecNo:=t;
   posfy:=posfy-0.5;
   RVS1.BaseReport.SetFont('Arial',8);
   RVS1.BaseReport.PrintXY(posfx+6,posfy,trim(DataSource1.dataset.Fields[1].AsString));
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(DataSource1.dataset.Fields[2].AsString),posfx+61);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(DataSource1.dataset.Fields[3].AsString),posfx+91);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft('$ ' + trim(DataSource1.dataset.Fields[4].AsString),posfx+121);
   //RVS1.BaseReport.MoveTo(posw,posfy);
   //RVS1.BaseReport.PrintLeft(trim(DataSource1.dataset.Fields[5].AsString),posfx+113);
   //RVS1.BaseReport.MoveTo(posw,posfy);
   //RVS1.BaseReport.PrintLeft(trim(DataSource1.dataset.Fields[6].AsString),posfx+144);
   //RVS1.BaseReport.MoveTo(posw,posfy);
   //RVS1.BaseReport.PrintLeft(trim(DataSource1.dataset.Fields[6].AsString),posfx+103);
   //RVS1.BaseReport.MoveTo(posw,posfy);
   //RVS1.BaseReport.PrintLeft(trim(DataSource1.dataset.Fields[7].AsString),posfx+121);
   //RVS1.BaseReport.MoveTo(posw,posfy);
   //RVS1.BaseReport.PrintLeft(trim(DataSource1.dataset.Fields[8].AsString),posfx+144);
   posfy:=posfy+0.5;
   // hacemos la lineas internas de las grilla
   RVS1.BaseReport.Rectangle(posfx+4,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+60,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+90,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+120,posfy,posfx+200,posfy-4);
   //RVS1.BaseReport.Rectangle(posfx+112,posfy,posfx+200,posfy-4);
   //RVS1.BaseReport.Rectangle(posfx+143,posfy,posfx+200,posfy-4);
   //RVS1.BaseReport.Rectangle(posfx+102,posfy,posfx+200,posfy-4);
   //RVS1.BaseReport.Rectangle(posfx+120,posfy,posfx+200,posfy-4);
   //RVS1.BaseReport.Rectangle(posfx+143,posfy,posfx+200,posfy-4);
   posfy:=posfy + salto;
   if posfy > 260 then begin
    posfx:=5.5;
    posfy:=5;
    hoja:=hoja+1;
    RvS1.BaseReport.NewPage;
    posfy:=Logo(posfx,posfy,hoja)+ salto;   // llamamos al encabezado
    posfy:=Mostrar1(posfx,posfy)+ salto;
    final:=Mostrar1(posfx,posfy)+ salto + 14;
    posfy:=final;
    pso:=false;
   end;
  end;
 except
 end;
end;


procedure TActuValorManteMes.RvS1BeforePrint(Sender: TObject);
begin
Coloca1(2);
end;

procedure TActuValorManteMes.RvS1AfterPrint(Sender: TObject);
begin
Coloca1(1);
end;

procedure TActuValorManteMes.ExportarDatos1Click(Sender: TObject);
var texto:widestring;
var txt:string;
var t,y:integer;
begin
  Coloca1(2);
  RE5.Clear;
  texto:='';
  for t:=1 to DataSource1.DataSet.FieldCount-1 do begin
  texto:=texto + DataSource1.DataSet.Fields[t].FieldName + chr(9);
  end;
  RE5.Lines.Add(texto);
  for y:=1 to DataSource1.DataSet.RecordCount do begin
   DataSource1.DataSet.RecNo:=y;
   texto:='';
  for t:=1 to DataSource1.DataSet.FieldCount-1 do begin
    texto:=texto + DataSource1.DataSet.Fields[t].AsString + chr(9);
  end;
  RE5.Lines.Add(texto);
  end;
  RE5.SelectAll;
  RE5.CopyToClipboard;
  messagedlgpos('Se Copiaron los Datos son Exito',mtwarning,[mbok],0,screen.Width div 3,screen.Height div 3);
  Coloca1(1);
end;


end.

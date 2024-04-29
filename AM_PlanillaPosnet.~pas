unit AM_PlanillaPosnet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid, ExtCtrls,
  ComCtrls, JvgPage, Buttons, JvExButtons, JvBitBtn, ToolWin, DB,
  JvgGroupBox, Mask, JvExGrids, JvStringGrid, Unidad, DBClient,
  WSDLIntf, ClaseFunciones, StrUtils, LMDControl, LMDBaseControl,
  LMDBaseGraphicControl, LMDGraphicControl, LMDScrollText, ClasePlanillaCobranzas,
  ClaseSistemas, RpDefine, RpBase, RpSystem, ImgList,ClaseComprobantesCobrados;

type
  TAM_PlanillaPosne = class(TForm)
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    Limpiar: TJvBitBtn;
    ToolButton2: TToolButton;
    GUARDA: TJvBitBtn;
    ToolButton3: TToolButton;
    JvBitBtn1: TJvBitBtn;
    Barra1: TStatusBar;
    IMPRIME: TJvBitBtn;
    ToolButton1: TToolButton;
    ToolButton5: TToolButton;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DataSource1: TDataSource;
    Buscar: TJvBitBtn;
    C1: TRadioButton;
    Bevel1: TBevel;
    Label15: TLabel;
    FEC: TMaskEdit;
    JvgGroupBox3: TJvgGroupBox;
    DBGrid1: TDBGrid;
    JvgGroupBox5: TJvgGroupBox;
    Label11: TLabel;
    Label19: TLabel;
    Label6: TLabel;
    D1: TEdit;
    OBSERV: TEdit;
    JvgGroupBox1: TJvgGroupBox;
    JvgGroupBox2: TJvgGroupBox;
    DBGrid2: TDBGrid;
    Label8: TLabel;
    grilla2: TJvStringGrid;
    DataSource2: TDataSource;
    ToolButton7: TToolButton;
    D4: TEdit;
    D5: TEdit;
    D2: TEdit;
    Label2: TLabel;
    D3: TEdit;
    Label3: TLabel;
    todos: TRichEdit;
    RvS: TRvSystem;
    Image1: TImage;
    Label5: TLabel;
    D6: TEdit;
    DBGrid3: TDBGrid;
    GroupBox2: TGroupBox;
    Shape3: TShape;
    Label16: TLabel;
    Shape4: TShape;
    Label17: TLabel;
    Label1: TLabel;
    D7: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure C0Click(Sender: TObject);
    procedure BuscarClick(Sender: TObject);
    procedure OBSERVKeyPress(Sender: TObject; var Key: Char);
    procedure grilla2DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure LimpiarVentana(nro:byte);
    procedure LimpiarClick(Sender: TObject);
    procedure GUARDAClick(Sender: TObject);
    procedure FECExit(Sender: TObject);
    procedure IMPRIMEClick(Sender: TObject);
    procedure RvSPrint(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure OBSERVExit(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
  private
    IdCombos:array of array of string;
    DataSet0,DataSet1,DtCombo,DtComboDet,DataSet:TClientDataSet;

    Funciones:TFuncionesVarias;
    PlanillaCobranzas:TPlanillaCobranzas;
    Sistemas:TSistemas;
    ComprobantesCobrados:TComprobantesCobrados;
    deadmin:integer;
    FechaActual:string;
    CorreccionImpr:double;
    TiposFormularios:Unidad.TablaXML;{ Private declarations }
  public
    gh:boolean;{ Public declarations }
  end;

var
  AM_PlanillaPosne: TAM_PlanillaPosne;

implementation

uses Modulo, Busqueda, Anula_Generica;
{$R *.dfm}

procedure TAM_PlanillaPosne.FormActivate(Sender: TObject);
begin
if not(gh) then begin
  gh:=true;
  setlength(IdCombos,5);
  FechaActual:=LeftStr(Fec_System(),10);
  PC1.ActivePage:=PC1.Pages[0];
  FEC.Text:=FechaActual;
  CorreccionImpr:=0;

  grilla2.Cells[0,0]:='Orden';
  grilla2.Cells[1,0]:='Objeto';
  grilla2.Cells[2,0]:='Cantidad';
  grilla2.Cells[3,0]:='Importe';
  grilla2.Cells[4,0]:='Comisión';
  grilla2.Cells[5,0]:='% Com.';
  grilla2.Cells[6,0]:='Total';

  grilla2.Cells[0,1]:='1';
  grilla2.Cells[0,2]:='2';
  grilla2.Cells[0,3]:='3';
  grilla2.Cells[0,4]:='4';
  grilla2.Cells[0,5]:='5';
  grilla2.Cells[0,6]:='6';
  grilla2.Cells[0,7]:='7';
  grilla2.Cells[0,8]:='8';
  grilla2.Cells[0,9]:='->';

  grilla2.Cells[1,1]:='Ventas';
  grilla2.Cells[1,2]:='Servicios';
  grilla2.Cells[1,3]:='Mantenimiento';
  grilla2.Cells[1,4]:='Consolidados';
  grilla2.Cells[1,5]:='Tramites Varios';
  grilla2.Cells[1,6]:='Plan Previsión (PSP)';
  grilla2.Cells[1,7]:='Alquiler Nichos';
  grilla2.Cells[1,8]:='Anulados';

  grilla2.Cells[1,9]:='----------------------';
  grilla2.Cells[2,9]:='-------------';
  grilla2.Cells[3,9]:='--------------------';
  grilla2.Cells[4,9]:='--------------------';
  grilla2.Cells[5,9]:='------------';
  grilla2.Cells[6,9]:='--------------------';

  grilla2.Cells[1,10]:='T O T A L';
  fec.SetFocus;
end;
end;

procedure TAM_PlanillaPosne.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TAM_PlanillaPosne.Coloca1(nro:byte);
var t,y,r,s:integer;
    NroCobrador,NroForm,ValNull:variant;
    txt,nrop:string;
    txtw:widestring;
    tot1,tot2,tot3,tot4,totcom:real;
begin
if nro=0 then begin //Cargamos los Pagos Registrados
  DataSource1.DataSet:=nil;
  DataSet0.Free;
  DataSet0:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=DataSet0;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if C1.Checked then begin
    NroCobrador:=null;
    NroForm:=null;
    txt:=trim(FEC.Text);
  end;
  if not Funciones.Run_Fn_VistaComprobantesConPlanillas(NroForm,txt,NroCobrador,DataSet0,'where anulado=0 order by nroplanilla',0) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  if not DataSet0.IsEmpty then begin
    Barra1.Panels[1].Text:='Cant. Registros: ' + inttostr(DataSet0.RecordCount);
    for t:=0 to DataSet0.FieldCount-1 do DBGrid1.Columns[t].Width:=70;
  end;
end;
if nro=1 then begin //Combo Cobradores
  ///
end;
if nro=2 then begin //Cargamos los Pagos Registrados
  DataSource2.DataSet:=nil;
  DataSet1.Free;
  DataSet1:=TClientdataSet.Create(nil);
  DataSource2.DataSet:=DataSet1;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  NroCobrador:=DataSet0.Fields[2].AsVariant;
  ValNull:=DataSet0.Fields[4].AsVariant;
  NroForm:=DataSet0.Fields[5].AsVariant;
  txtw:='SELECT Id,NroComprobante,DetalleComprobante,IdTipoComprobante,NroFormulario,Formulario,'
  + ' NroPlanilla,FechaPlanilla,CuifCobrador,Cobrador,NroDni,Identificador,NroTipoObjeto,Objeto,'
  + ' FechaCobro,Importe,GastoAdmin,Porcentaje,Anulado,FechaAnula,MotivoAnula,Cargado,EsMinoritario,Observ,DeAdmin '
  + ' FROM VLosComprobantesCobrados where (CuifCobrador= '+ DataSet0.Fields[5].AsString+') and (NroPlanilla= '+ DataSet0.Fields[2].AsString + ') and (NroFormulario='+ chr(39) + DataSet0.Fields[4].AsString + chr(39)+')';
  if not  Funciones.Listar(txtw,DataSet1) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
//  for t:=1 to 10 do begin
//    if t <> 9 then begin
//      grilla2.Cells[2,t]:='0';
//      grilla2.Cells[3,t]:='0.00';
//      grilla2.Cells[4,t]:='0.00';
//      grilla2.Cells[5,t]:='0.00';
//      grilla2.Cells[6,t]:='0.00';
//      grilla2.Cells[7,t]:='0.00';
//    end;
//  end;

//  if not DataSet1.IsEmpty then begin
//    for t:=0 to DataSet1.FieldCount-1 do DBGrid2.Columns[t].Width:=70;
//    DtCombo.Free;
//    DtCombo:=TClientdataSet.Create(nil);
//    Funciones:=TFuncionesVarias.Create(nil);
//    Funciones.ConnectionString:=modulo2.Conexion;
//    if not Funciones.Run_Fn_VistaComprobantesAgrupados(NroForm,NroCobrador,ValNull,DtCombo,'',0) then
//      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
//    else begin
//      tot1:=0;tot2:=0;tot3:=0;tot4:=0;totcom:=0;
//      for t:=1 to 8 do begin
//        if DtCombo.Locate('NroTipoObjeto',t,[loCaseInsensitive]) then begin
//          grilla2.Cells[2,t]:=DtCombo.Fields[1].AsString;
//          grilla2.Cells[3,t]:=Redondeo(DtCombo.Fields[2].AsString,2);
//          grilla2.Cells[4,t]:=Redondeo(DtCombo.Fields[3].AsString,2);
//          grilla2.Cells[5,t]:=Redondeo(DtCombo.Fields[4].AsString,2);
//          grilla2.Cells[6,t]:=Redondeo(DtCombo.Fields[5].AsString,2);
//            // grilla2.Cells[7,t]:=Redondeo(DtCombo.Fields[6].AsString,2);
//          tot1:=tot1 + DtCombo.Fields[1].AsInteger;
//          tot2:=tot2 + DtCombo.Fields[2].AsFloat;
//          tot3:=tot3 + DtCombo.Fields[3].AsFloat;
//          tot4:=tot4 + DtCombo.Fields[5].AsFloat;
//          //totcom:=totcom + DtCombo.Fields[4].AsInteger;
//        end;
//      end;
//      grilla2.Cells[2,10]:=FloatToStr(Tot1);
//      grilla2.Cells[3,10]:=Redondeo(FloatToStr(tot2),2);
//      grilla2.Cells[4,10]:=Redondeo(FloatToStr(tot3),2);
//      //grilla2.Cells[5,10]:=Redondeo(FloatToStr(totcom),2);
//      grilla2.Cells[6,10]:=Redondeo(FloatToStr(tot4),2);
//    end;
//    Funciones.Free;
//  end
//  else messagedlg('ERROR!! No existen comprobantes para la Planilla Buscada.',mtError,[mbok],0);
end;
if nro=3 then begin
  DataSource3.DataSet:=nil;
  DataSet.Free;
  DataSet:=TClientdataSet.Create(nil);
  DataSource3.DataSet:=DataSet;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  NroCobrador:=DataSet0.Fields[2].asString;
  txtw:='SELECT detallecomprobante as Comprobante,COUNT(DetalleComprobante) as Cantidad FROM VLosComprobantesCobrados '
  + 'where (NroPlanilla= '+ DataSet0.Fields[2].AsString + ') group by DetalleComprobante';
  //txtw:='SELECT detallecomprobante as Comprobante,COUNT(DetalleComprobante) as Cantidad FROM Fn_VistaComprobantesCobrados '
  //+ '(   null  , ' + NroCobrador +' ,null  ,null  ,null  ,0) group by DetalleComprobante';
  if not Funciones.Listar(txtw,DataSet) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',
       mtError,[mbok],0);
  Funciones.Free;
  dbgrid3.Columns[0].Width:=70;
  dbgrid3.Columns[1].Width:=50;
end;
if nro=4 then begin
  DtComboDet.Free;
  DtComboDet:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  NroCobrador:=DataSet0.Fields[2].asString;              //
  txtw:='SELECT isnull(COUNT(id),0) as Cantidad FROM VLosComprobantesCobrados '
  + 'where (NroPlanilla= '+ DataSet0.Fields[2].AsString + ') and DeAdmin=1';
  //txtw:='SELECT isnull(COUNT(id),0) as Cantidad FROM Fn_VistaComprobantesCobrados '
  //+ '(   null  , ' + NroCobrador +' ,null  ,null  ,null  ,0) where DeAdmin=1';
  if not Funciones.Listar(txtw,DtComboDet) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',
       mtError,[mbok],0);
  Funciones.Free;
  deadmin:=strtoint(DtComboDet.Fields[0].AsString);
end;
if nro = 5 then begin
  if not DataSet0.IsEmpty then begin
  nrop:=trim(DataSet0.Fields[2].AsString);
  if trim(DataSet0.Fields[9].AsString)='True' then begin
    messagedlg('ATENCION!! Imposible Confirmar la Planilla Nº: '+ nrop +' por estar ANULADA.',mtError,[mbok],0);
  end
  else begin
    D2.Text:=DataSet0.Fields[2].AsString;
    D3.Text:=DataSet0.Fields[3].AsString;
    D4.Text:=DataSet0.Fields[0].AsString;
    D5.Text:=DataSet0.Fields[1].AsString;
    IMPRIME.Enabled:=true;
    if DataSet0.Fields[6].AsString = '' then begin
      D1.Text:='00000';
      OBSERV.Clear;
      OBSERV.Color:=clWindow;
      OBSERV.ReadOnly:=false;
      GUARDA.Enabled:=true;
    end
    else begin
      D1.Text:=DataSet0.Fields[6].AsString;
      OBSERV.Text:=DataSet0.Fields[7].AsString;
      OBSERV.Color:=$00D9DBEC;
      OBSERV.ReadOnly:=true;
      GUARDA.Enabled:=false;
    end;
    Coloca1(2);
    Coloca1(3);
    Coloca1(4);
    PC1.ActivePage:=PC1.Pages[1];
    if not OBSERV.ReadOnly then OBSERV.SetFocus;
  end;
  end;
end;
end;

procedure TAM_PlanillaPosne.JvBitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TAM_PlanillaPosne.C1Click(Sender: TObject);
begin
Label15.Visible:=true;
PC1.ActivePage:=PC1.Pages[0];
if C1.Checked then begin
  Label15.Caption:='Ingrese Fecha:';
  FEC.Visible:=true;
  FEC.SetFocus;
end;
end;

procedure TAM_PlanillaPosne.C0Click(Sender: TObject);
begin
Label15.Visible:=false;
ODNI.Visible:=false;
FEC.Visible:=false;
Buscar.SetFocus;
end;

procedure TAM_PlanillaPosne.BuscarClick(Sender: TObject);
begin
Coloca1(0);
end;

procedure TAM_PlanillaPosne.OBSERVKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  if GUARDA.Enabled then GUARDA.SetFocus;
end;
end;

procedure TAM_PlanillaPosne.grilla2DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
if ARow = 8 then begin
  grilla2.Canvas.Brush.Color := $0079F1F4;
  grilla2.Canvas.FillRect(Rect);
  grilla2.Canvas.Font.Style:=[fsBold];
  grilla2.Canvas.Font.Size:=9;
  grilla2.Canvas.Font.Color:= clRed;
  grilla2.Canvas.TextOut(Rect.Left + 2, Rect.Top + 2, grilla2.cells[Acol,Arow]);
end;
end;

procedure TAM_PlanillaPosne.DBGrid1CellClick(Column: TColumn);
var nrop:string;
begin
  if not DataSet0.IsEmpty then begin
  nrop:=trim(DataSet0.Fields[2].AsString);
  if trim(DataSet0.Fields[9].AsString)='True' then begin
    messagedlg('ATENCION!! Imposible Confirmar la Planilla Nº: '+ nrop +' por estar ANULADA.',mtError,[mbok],0);
  end
  else begin
    D2.Text:=DataSet0.Fields[2].AsString;
    D3.Text:=DataSet0.Fields[3].AsString;
    D4.Text:=DataSet0.Fields[0].AsString;
    D5.Text:=DataSet0.Fields[1].AsString;
    if DataSet0.Fields[6].AsString = '' then begin
      D1.Text:='00000';
      OBSERV.Clear;
      OBSERV.Color:=clWindow;
      OBSERV.ReadOnly:=false;
      GUARDA.Enabled:=true;
      IMPRIME.Enabled:=false;
    end
    else begin
      D1.Text:=DataSet0.Fields[6].AsString;
      OBSERV.Text:=DataSet0.Fields[7].AsString;
      OBSERV.Color:=$00D9DBEC;
      OBSERV.ReadOnly:=true;
      GUARDA.Enabled:=false;
      IMPRIME.Enabled:=true;
    end;
    Coloca1(2);
    Coloca1(3);
    Coloca1(4);
    PC1.ActivePage:=PC1.Pages[1];
    if not OBSERV.ReadOnly then OBSERV.SetFocus;
  end;
  end;
end;

procedure TAM_PlanillaPosne.DBGrid1TitleClick(Column: TColumn);
begin
DataSet0.IndexFieldNames:=Column.FieldName;
end;

procedure TAM_PlanillaPosne.LimpiarVentana(nro:byte);
var t,r:integer;
begin
if nro = 0 then begin
  DataSource1.DataSet:=nil;
  DataSource2.DataSet:=nil;
  DataSource3.DataSet:=nil;
  C1.Checked:=true;
  PC1.ActivePage:=PC1.Pages[0];
  if c1.Checked= true then fec.SetFocus;
end;
if nro <= 1 then begin
  D1.Text:='00000';
  D2.Clear;
  D3.Clear;
  D4.Clear;
  D5.Clear;
  OBSERV.Clear;
  for t:=1 to 8 do begin
    if t <> 7 then begin
      grilla2.Cells[2,t]:='0';
      grilla2.Cells[3,t]:='0.00';
      grilla2.Cells[4,t]:='0.00';
      grilla2.Cells[5,t]:='0.00';
      grilla2.Cells[6,t]:='0.00';
    end;
  end;
  IMPRIME.Enabled:=false;
end;
GUARDA.Enabled:=false;
end;

procedure TAM_PlanillaPosne.LimpiarClick(Sender: TObject);
begin
LimpiarVentana(0);
end;

procedure TAM_PlanillaPosne.GUARDAClick(Sender: TObject);
var gf,t:integer;
    ElId1:string;
    TodoOk1:boolean;
    Param:TWideStrings;
begin
gf:=messagedlg('Desea Confirmar la Planilla de Pagos Nro: ' + trim(d2.Text) + chr(13)
    + 'ATENCION!! El proceso hará que impacten los Pagos',mtWarning,[mbok,mbCancel],0);
if gf = 1 then begin
  PlanillaCobranzas:=TPlanillaCobranzas.Create(nil);
  PlanillaCobranzas.ConnectionString:=modulo2.Conexion;
  PlanillaCobranzas.C_NroFormulario_IX1:=DataSet0.Fields[4].AsString;
  PlanillaCobranzas.C_NroPlanilla_IX2:=D2.Text;
  PlanillaCobranzas.C_Cuif_IX3:=DataSet0.Fields[5].asVariant;
  PlanillaCobranzas.C_Fecha_IX4:=DataSet0.Fields[3].AsString;
  PlanillaCobranzas.C_Cantidad:=grilla2.Cells[2,grilla2.RowCount-1];
  PlanillaCobranzas.C_MontoCobrado:=grilla2.Cells[3,grilla2.RowCount-1];
  PlanillaCobranzas.C_Comision:=grilla2.Cells[4,grilla2.RowCount-1];
  PlanillaCobranzas.C_Porcentaje:=grilla2.Cells[5,grilla2.RowCount-1];
  PlanillaCobranzas.C_Total:=grilla2.Cells[6,grilla2.RowCount-1];
  PlanillaCobranzas.C_Observaciones:=AnsiReplaceStr(OBSERV.Text,chr(39),chr(33));
  PlanillaCobranzas.C_Usu_A:=modulo2.nro_usu;
  TodoOk1:=PlanillaCobranzas.Agrega;
  ElId1:=PlanillaCobranzas.Identidad;
  PlanillaCobranzas.Free;
  if TodoOK1 then begin
    Barra1.Panels[0].Text:='Iniciando Proceso de Impacto de PAGOS. Por Favor espere!!';
    DtCombo.Free;
    DtCombo:=TClientdataSet.Create(nil);
    Sistemas:=TSistemas.Create(nil);
    Sistemas.ConnectionString:=modulo2.Conexion;
    Param:=TWideStrings.Create;
    Param.Add(DataSet0.Fields[5].asString);
    Param.Add(D2.Text);
    Param.Add(DataSet0.Fields[4].AsString);
    Param.Add(inttostr(modulo2.nro_usu));
    if not Sistemas.ListarSP(Param,'AgregaPagosConfirmados',DtCombo) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
    else begin
      if DtCombo.Fields[0].AsString <> 'OK' then begin
       //Falta elminar el Id guardado
        Barra1.Panels[0].Text:='ERROR!! No impactaron los Pagos!!.';
        messagedlg('ERROR!! Al Guardar los Datos de la Planilla.',mtError,[mbok],0);
      end
      else begin
        Barra1.Panels[0].Text:='Los Datos se han guardado Satisfactoriamente!!';
        messagedlg('ATENCION! Datos GUARDADOS Correctamente!!',mtWarning,[mbok],0);
        Limpiar.Click;
      end;
    end;
    Sistemas.free;
  end
  else messagedlg('ERROR!! Al Guardar los Datos de la Planilla.',mtError,[mbok],0);
end;
end;

procedure TAM_PlanillaPosne.FECExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(FEC.Text));
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  FEC.SetFocus;
end;
end;

procedure TAM_PlanillaPosne.IMPRIMEClick(Sender: TObject);
begin
RvS.Execute;
end;

procedure TAM_PlanillaPosne.RvSPrint(Sender: TObject);
var Posfy,Posfx,PosUlt:double;
    y:integer;
    Total:real;

    Function Logo(posx,posy:double):double;
    var Imagen1:TBitMap;
        Fuente,PathLogo:string;
        Tamanio,CantImg,t:integer;
        P1,P2,P3,P4:double;
    begin
    with RvS do begin
      CantImg:=StrToInt(modulo2.INI1.ReadString('Resumen Planillas','CantImg','1'));
      for t:=1 to CantImg do begin
        Imagen1 := TBitMap.Create;
        PathLogo:=modulo2.path_todo + '\Imagenes\' + modulo2.INI1.ReadString('Resumen Planillas','Imagen' + IntToStr(t),'');
        if FileExists(PathLogo) then begin
          Image1.Picture.LoadFromFile(PathLogo);
          Imagen1.Assign(Image1.Picture.Graphic);
          Fuente:=modulo2.INI1.ReadString('Resumen Planillas','Tamaño' + IntToStr(t),'');
          PathLogo:=modulo2.INI1.ReadString('Resumen Planillas','Pos' + IntToStr(t),'');
          if (Fuente <> '') and (PathLogo <> '') then begin
            P1:=StrToFloat(Extrae(Fuente,',',1));
            P2:=StrToFloat(Extrae(Fuente,',',2));
            P3:=StrToFloat(Extrae(PathLogo,',',1));
            P4:=StrToFloat(Extrae(PathLogo,',',2));
            BaseReport.PrintBitmapRect(posx+P3,posy+P4,posx+P3+P1,posy+P4+P2,Imagen1);
          end;
        end;
        Imagen1.Free;
      end;
      {Colocamos el título}
      BaseReport.Rectangle(posx+4,posy+5,posx+140,posy+23);
      BaseReport.SetFont('Arial',6);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posx+5,posy+22,'Usu Imp.: ' + inttostr(modulo2.nro_usu) + ' - Fec. Imp.:' + FechaActual);
      if D1.Text = '00000' then begin
        BaseReport.SetFont('Arial Black',8);
        BaseReport.FontColor:=clBlack;
        BaseReport.PrintXY(posx+55,posy+8,'PLANILLA DE COBRANZA');
        BaseReport.PrintXY(posx+55,posy+11,'Nº ' + D1.Text);
        BaseReport.PrintXY(posx+55,posy+14,'FECHA: ' + FechaActual);
        BaseReport.PrintXY(posx+55,posy+19,'NO GUARDADO - NO VALIDO');
        BaseReport.PrintXY(posx+55,posy+22,'   COMO DOCUMENTACION');
      end
      else begin
        BaseReport.SetFont('Arial Black',8);
        BaseReport.FontColor:=clBlack;
        BaseReport.PrintXY(posx+55,posy+8,'PLANILLA DE COBRANZA');
        BaseReport.PrintXY(posx+55,posy+11,'Nº ' + D1.Text);
        BaseReport.PrintXY(posx+55,posy+14,'FECHA: ' + D3.Text);
        BaseReport.PrintXY(posx+55,posy+19,'GUARDADO - VALIDO');
        BaseReport.PrintXY(posx+55,posy+22,'COMO DOCUMENTACION');
      end;
      BaseReport.SetFont('Arial',8);
      BaseReport.FontColor:=clBlack;
      BaseReport.Rectangle(posx+4,posy+24,posx+140,posy+28);
      BaseReport.PrintXY(posx+5,posy+27,'N° Planilla: ' + D2.Text );
      BaseReport.PrintXY(posx+40,posy+27,'Tipo Formulario: ' + D4.Text );
      BaseReport.Rectangle(posx+4,posy+28,posx+140,posy+32);
      BaseReport.PrintXY(posx+5,posy+31,'Cobrador: ' + D5.Text );
      BaseReport.PrintXY(posx+65,posy+31,'SubCobrador: ' + D6.Text );
    end;
    Result:=posy+32;
    end;

    Function LosTotales(posx,posy:double):double;
    var t:integer;
        P4:double;
    begin
    with RvS do begin
      BaseReport.SetFont('Arial Black',8);
      BaseReport.FontColor:=clBlack;
      BaseReport.RoundRect(posx+50,posy,posx+90,posy+4,5,5);
      BaseReport.PrintXY(posx+58,posy+3,'T O T A L  E S');
      BaseReport.Rectangle(posx+4,posy+4,posx+140,posy+49);
      BaseReport.Rectangle(posx+18,posy+4,posx+44,posy+49);
      BaseReport.Rectangle(posx+65,posy+4,posx+85,posy+49);
      BaseReport.Rectangle(posx+106,posy+4,posx+120,posy+49);
      BaseReport.Rectangle(posx+4,posy+4,posx+140,posy+9);
      BaseReport.PrintXY(posx+5,posy+8,'Orden');
      BaseReport.PrintXY(posx+24,posy+8,'Objeto');
      BaseReport.PrintXY(posx+47,posy+8,'Cantidad');
      BaseReport.PrintXY(posx+66,posy+8,'$ Importe');
      BaseReport.PrintXY(posx+86,posy+8,'$ Comisión');
      BaseReport.PrintXY(posx+107,posy+8,'% Com.');
      BaseReport.PrintXY(posx+123,posy+8,'Sub Total');
      P4:=posy+13;
      BaseReport.SetFont('Arial',8);
      BaseReport.FontColor:=clBlack;
      for t:=1 to 10 do begin
        if t <> 9  then begin
          if t = 10 then begin
            BaseReport.SetFont('Arial Black',8);
            BaseReport.FontColor:=clBlack;
          end;
          BaseReport.PrintXY(posx+5,P4,grilla2.Cells[0,t]);
          BaseReport.PrintXY(posx+19,P4,grilla2.Cells[1,t]);
          BaseReport.PrintXY(posx+54,P4,grilla2.Cells[2,t]);
          BaseReport.MoveTo(posx+83,P4);
          BaseReport.PrintRight('$ '+grilla2.Cells[3,t],posx+83);
          BaseReport.MoveTo(posx+104,P4);
          BaseReport.PrintRight('$ '+grilla2.Cells[4,t],posx+104);
          BaseReport.MoveTo(posx+118,P4);
          BaseReport.PrintRight('$ '+grilla2.Cells[5,t],posx+118);
          BaseReport.MoveTo(posx+139,P4);
          BaseReport.PrintRight('$ '+grilla2.Cells[6,t],posx+139);
          BaseReport.Rectangle(posx+4,P4+1,posx+140,P4+1);
          P4:=P4 + 5;
        end;
      end;
      P4:=P4 - 5;
      BaseReport.Rectangle(posx+4,P4+2,posx+140,P4+7);
      BaseReport.SetFont('Arial',8);
      BaseReport.FontColor:=clBlack;
      BaseReport.PrintXY(posx+5,P4+6,'Son Pesos: ' + numtopesos(grilla2.Cells[6,10]) + '  //--');
    end;
    Result:=P4+7;
    end;

    Function LosComprobantesCab(posx,posy:double):double;
    begin
    with RvS do begin
      BaseReport.SetFont('Arial Black',8);
      BaseReport.FontColor:=clBlack;
      BaseReport.RoundRect(posx+45,posy,posx+95,posy+4,5,5);
      BaseReport.PrintXY(posx+48,posy+3,'DETALLE COMPROBANTES');
      BaseReport.Rectangle(posx+4,posy+4,posx+140,posy+9);
      BaseReport.Rectangle(posx+12,posy+4,posx+34,posy+9); // 1 cuadrado
      BaseReport.Rectangle(posx+51,posy+4,posx+63,posy+9);
      BaseReport.Rectangle(posx+63,posy+4,posx+80,posy+9); // 2 cuadrado
      BaseReport.Rectangle(posx+94,posy+4,posx+108,posy+9); // 3 cuadrado
      BaseReport.Rectangle(posx+116,posy+4,posx+126,posy+9);  // 4 cuadrado
      BaseReport.PrintXY(posx+5,posy+8,'Id.');
      BaseReport.PrintXY(posx+13,posy+8,'Movim.');
      BaseReport.PrintXY(posx+35,posy+8,'N° Compr.');
      BaseReport.PrintXY(posx+52,posy+8,'DeAdm');
      BaseReport.PrintXY(posx+64,posy+8,'Tipo');
      BaseReport.PrintXY(posx+81,posy+8,'Fecha');
      BaseReport.PrintXY(posx+95,posy+8,'Identif.');
      BaseReport.PrintXY(posx+109,posy+8,'An?');
      BaseReport.PrintXY(posx+117,posy+8,'Imp.');
      BaseReport.PrintXY(posx+127,posy+8,'Acumul.');
    end;
    Result:=posy+9;
    end;

    Function LosComprobantesLn(posx,posy,Posy1:double):double;
    begin
    with RvS do begin
      BaseReport.Rectangle(posx+4,posy,posx+140,Posy1);
      BaseReport.Rectangle(posx+12,posy,posx+34,Posy1);
      BaseReport.Rectangle(posx+51,posy,posx+63,posy1);
      BaseReport.Rectangle(posx+63,posy,posx+80,Posy1);
      BaseReport.Rectangle(posx+94,posy,posx+108,Posy1);
      BaseReport.Rectangle(posx+116,posy,posx+126,Posy1);
    end;
    Result:=Posy1;
    end;

begin
Posfx:=2 + CorreccionImpr;
Posfy:=Logo(Posfx,5);
Posfy:=LosTotales(Posfx,Posfy);
PosUlt:=LosComprobantesCab(Posfx,Posfy);
Posfy:=PosUlt;
for y:=1 to DataSet1.RecordCount do begin
  Posfy:=Posfy + 3;
  DataSet1.RecNo:=y;
  with RvS do begin
    BaseReport.SetFont('Arial',7);
    BaseReport.FontColor:=clBlack;
    BaseReport.PrintXY(Posfx+4.5,Posfy,DataSet1.Fields[0].AsString);
    BaseReport.PrintXY(Posfx+13,Posfy,LeftStr(DataSet1.Fields[13].AsString,15));
    BaseReport.PrintXY(Posfx+35,Posfy,DataSet1.Fields[1].AsString);
    if DataSet1.Fields[24].AsString = 'True' then BaseReport.PrintXY(Posfx+52,Posfy,'SI')
       else BaseReport.PrintXY(Posfx+52,Posfy,'NO');
    BaseReport.PrintXY(Posfx+64,Posfy,DataSet1.Fields[2].AsString);
    BaseReport.PrintXY(Posfx+81,Posfy,DataSet1.Fields[14].AsString);
    BaseReport.PrintXY(Posfx+95,Posfy,DataSet1.Fields[11].AsString);
    if DataSet1.Fields[18].AsString = 'True' then BaseReport.PrintXY(Posfx+109,Posfy,'SI')
       else BaseReport.PrintXY(Posfx+109,Posfy,'NO');
    BaseReport.MoveTo(Posfx+122,Posfy);
    BaseReport.PrintRight(DataSet1.Fields[15].AsString,Posfx+126);
    Total:=Total + DataSet1.Fields[15].AsFloat;
    BaseReport.MoveTo(Posfx+139,Posfy);
    BaseReport.PrintRight(Redondeo(FloatToStr(Total),2),Posfx+139);
    BaseReport.Rectangle(Posfx+4,Posfy+0.5,Posfx+140,Posfy+0.5);
    if Posfy > 185 then begin
      LosComprobantesLn(Posfx,PosUlt,Posfy+0.5);
      BaseReport.NewPage;
      Posfy:=Logo(Posfx,5);
      PosUlt:=LosComprobantesCab(Posfx,Posfy);
      Posfy:=PosUlt;
    end;
  end;
end;
LosComprobantesLn(Posfx,PosUlt,Posfy+0.5);
if deadmin > 0 then RvS.BaseReport.PrintXY(posfx+5,posfy+4,'Cantidad de ' +
  'COMPROBANTES de Admin. Central para este Gestor: ' + inttostr(deadmin))
  else RvS.BaseReport.PrintXY(posfx+5,posfy+4,'')
end;

procedure TAM_PlanillaPosne.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var h:byte;
begin
if trim(DataSet1.Fields[18].Text) = 'True' then h:=1
else h:=0;
case h of
  0:begin
    DBGrid2.Canvas.Brush.Color:=clWindow;
    DBGrid2.Canvas.FillRect(Rect);
    DBGrid2.Canvas.Font.Color:= clBlack;
    end;
  1:begin
    DBGrid2.Canvas.Brush.Color:=clyellow;
    DBGrid2.Canvas.FillRect(Rect);
    DBGrid2.Canvas.Font.Color:= clBlack;
    end;
end;
DBGrid2.DefaultDrawColumnCell(Rect,Datacol,Column,State);
end;

procedure TAM_PlanillaPosne.OBSERVExit(Sender: TObject);
begin
if trim(OBSERV.Text)='' then dni.Text:='00.00';
if trim(OBSERV.Text)='0' then dni.Text:='00.00';
if trim(OBSERV.Text) = '000.00' then begin
  messagedlg('ERROR!!... El Importe ingresado no puede tener el valor 0 (Cero)',mterror,[mbok],0);
  OBSERV.SetFocus;
end;
end;

procedure TAM_PlanillaPosne.DBGrid2CellClick(Column: TColumn);
begin
  d7.Text:=trim(DataSet1.Fields[6].AsString);
end;

end.

unit ReasignarCobrador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid, ExtCtrls,
  ComCtrls, JvgPage, Buttons, JvExButtons, JvBitBtn, ToolWin, DB,
  JvgGroupBox, Mask, JvExGrids, JvStringGrid, Unidad, DBClient,
  WSDLIntf, ClaseFunciones, StrUtils, LMDControl, LMDBaseControl,
  LMDBaseGraphicControl, LMDGraphicControl, LMDScrollText,
  ClaseComprobantesEntrega,ClaseSistemas, RpDefine, RpBase, RpSystem, ImgList;

type
  TCambiaCobrador = class(TForm)
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    Limpiar: TJvBitBtn;
    GUARDA: TJvBitBtn;
    ToolButton3: TToolButton;
    JvBitBtn1: TJvBitBtn;
    Barra1: TStatusBar;
    ToolButton1: TToolButton;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DataSource1: TDataSource;
    Buscar: TJvBitBtn;
    C2: TRadioButton;
    Bevel1: TBevel;
    ODNI: TEdit;
    JvgGroupBox3: TJvgGroupBox;
    DBGrid1: TDBGrid;
    JvgGroupBox5: TJvgGroupBox;
    Label11: TLabel;
    Label19: TLabel;
    Label6: TLabel;
    D1: TEdit;
    JvgGroupBox1: TJvgGroupBox;
    JvgGroupBox2: TJvgGroupBox;
    DBGrid2: TDBGrid;
    Label8: TLabel;
    grilla2: TJvStringGrid;
    DataSource2: TDataSource;
    D4: TEdit;
    D5: TEdit;
    D2: TEdit;
    Label2: TLabel;
    D3: TEdit;
    todos: TRichEdit;
    Image1: TImage;
    Label1: TLabel;
    D6: TEdit;
    Label3: TLabel;
    D7: TEdit;
    Label4: TLabel;
    D8: TEdit;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Edit1: TEdit;
    Label7: TLabel;
    Edit2: TEdit;
    Label9: TLabel;
    Edit3: TEdit;
    Label10: TLabel;
    D9: TEdit;
    GroupBox2: TGroupBox;
    Label12: TLabel;
    GroupBox3: TGroupBox;
    DBGrid3: TDBGrid;
    DataSource3: TDataSource;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure BuscarClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure LimpiarVentana(nro:byte);
    procedure LimpiarClick(Sender: TObject);
    procedure GUARDAClick(Sender: TObject);
    procedure ODNIKeyPress(Sender: TObject; var Key: Char);
    procedure grilla2Click(Sender: TObject);
    procedure grilla2DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure DBGrid3CellClick(Column: TColumn);
    procedure DBGrid3DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
  private
    gh:boolean;
    IdCombos:array of array of string;
    DataSet0,DataSet1,DtCombo,DataSet2:TClientDataSet;
  public
    Funciones:TFuncionesVarias;
    ComprobantesEntrega:TComprobantesEntrega;
    ComprobantesEntregaUpdate:TComprobantesEntrega;
    Sistemas:TSistemas;
    cuif:integer;
    FechaActual:string;
    CorreccionImpr:double;
    TiposFormularios:Unidad.TablaXML;{ Private declarations }
  end;

var
  CambiaCobrador: TCambiaCobrador;

implementation

uses Modulo, Busqueda;
{$R *.dfm}

procedure TCambiaCobrador.FormActivate(Sender: TObject);
begin
 if not(gh) then begin
  gh:=true;
  setlength(IdCombos,5);
  grilla2.Cells[0,0]:='ID';
  grilla2.Cells[1,0]:='NroGestor';
  grilla2.Cells[2,0]:='CUIF';
  grilla2.Cells[3,0]:='Cobrador';
  grilla2.Cells[4,0]:='FechaIngreso';
  grilla2.Cells[5,0]:='FechaEgreso';
  grilla2.Cells[6,0]:='Selec';
  FechaActual:=LeftStr(Fec_System(),10);
  PC1.ActivePage:=PC1.Pages[0];
  Coloca1(2);
  ODNI.SetFocus;
 end;
end;

procedure TCambiaCobrador.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TCambiaCobrador.Coloca1(nro:byte);
var t,y,r,s:integer;
    NroCobrador,NroForm,ValNull:variant;
    txt:string;
    txtw:widestring;
    tot1,tot2,tot3,tot4:real;
begin
if nro=0 then begin //Cargamos los Pagos Registrados
  DataSet0.Free;
  DataSet0:=TClientdataSet.Create(nil);
  DataSource3.DataSet:=DataSet0;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if C2.Checked then begin
   txtw:='SELECT DISTINCT dbo.ComprobantesEntregaDetalle.IdConfig, dbo.ComprobantesEntregaConfig.NroTalonario,'
   +' dbo.TiposComprobantes.DetalleComprobante,'
   +' convert(char(10),dbo.ComprobantesEntrega.fecha,103) as FechaEntrega,'
   //+' dbo.ComprobantesEntregaDetalle.NroComprobante,
   +' dbo.Clientes.RazonSocial as Cobrador'    //dbo.ComprobantesEntrega.CuifCobrador,
   +' FROM dbo.ComprobantesEntregaDetalle INNER JOIN  '
   +' dbo.TiposComprobantes ON dbo.ComprobantesEntregaDetalle.IdTipoComprobante = dbo.TiposComprobantes.IDTipoComprobante INNER JOIN '
   +' dbo.ComprobantesEntregaConfig ON dbo.ComprobantesEntregaDetalle.IdConfig = dbo.ComprobantesEntregaConfig.IdConfig INNER JOIN '
   +' dbo.ComprobantesEntrega ON dbo.ComprobantesEntregaConfig.IdComprobante = dbo.ComprobantesEntrega.IdComprobante INNER JOIN  '
   +' dbo.Clientes ON dbo.ComprobantesEntrega.CuifCobrador = dbo.Clientes.Cuif '
   +' WHERE (dbo.ComprobantesEntregaConfig.NroTalonario= ' +  trim(odni.Text) +')';
  //  +' where (nrocomprobante like ''%' +  trim(odni.Text) +'%'')';
  //    txtw:='SELECT * FROM vloscomprobantesentregados WHERE (NroTalonario= ' + trim(odni.Text) +') ORDER BY NroTalonario';
  end;
  if not Funciones.Listar(txtw,DataSet0) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0) ;
  Funciones.Free;
end;
if nro=1 then begin //cargamos los comprobantes
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  DataSource2.DataSet:=DtCombo;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT Id, IdConfig, TiposComprobantes.DetalleComprobante,NroComprobante,'
  + ' ComprobantesEntregaDetalle.IdTipoComprobante FROM  ComprobantesEntregaDetalle inner join'
  + ' TiposComprobantes on TiposComprobantes.IDTipoComprobante=ComprobantesEntregaDetalle.IdTipoComprobante '
  + ' WHERE (IdConfig = ' + trim(d3.Text) + ')';
  if not Funciones.Listar(txtw,DtCombo) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
end;
if nro=2 then begin //Cargamos los Cobradores
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT *  FROM  velpersonal order by 1';
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
  end;
end;
if nro=5 then  begin
  DataSet2.Free;
  DataSet2:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=DataSet2;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if C2.Checked then begin
  //    txtw:='select * from ComprobantesEntregaDetalle where (nrocomprobante like ''%' +  trim(odni.Text) +'%'')';
  txtw:='SELECT * FROM vloscomprobantesentregados WHERE (NroTalonario= ' + DataSet0.Fields[1].AsString  +')'
  +' and (IdConfig = ' + DataSet0.Fields[0].AsString  +') ORDER BY NroTalonario';
  end;
  if not Funciones.Listar(txtw,DataSet2) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0) ;
  Funciones.Free;
  if not DataSet2.IsEmpty then begin
   Barra1.Panels[1].Text:='Cant. Registros: ' + inttostr(DataSet2.RecordCount);
   for t:=0 to DataSet0.FieldCount-1 do DBGrid1.Columns[t].Width:=70;
  end;
  dbgrid1.Columns[2].Width:=150;
  dbgrid1.Columns[3].Width:=250;
end;
end;

procedure TCambiaCobrador.JvBitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TCambiaCobrador.C1Click(Sender: TObject);
begin
if C2.Checked then begin
  ODNI.Visible:=true;
  ODNI.SetFocus;
end;
end;

procedure TCambiaCobrador.BuscarClick(Sender: TObject);
begin
Coloca1(0);
end;

procedure TCambiaCobrador.DBGrid1CellClick(Column: TColumn);
begin
 if not DataSet0.IsEmpty then begin
  D1.Text:=DataSet2.Fields[1].AsString;
  D2.Text:=DataSet2.Fields[0].AsString;
  D4.Text:=DataSet2.Fields[2].AsString;
  D5.Text:=DataSet2.Fields[3].AsString;
  D3.Text:=DataSet2.Fields[4].AsString;
  D6.Text:=DataSet2.Fields[6].AsString;
  D7.Text:=DataSet2.Fields[7].AsString;
  D8.Text:=DataSet2.Fields[8].AsString;
  D9.Text:=DataSet2.Fields[10].AsString;
  Coloca1(1);
  PC1.ActivePage:=PC1.Pages[1];
 end;
end;

procedure TCambiaCobrador.DBGrid1TitleClick(Column: TColumn);
begin
DataSet0.IndexFieldNames:=Column.FieldName;
end;

procedure TCambiaCobrador.LimpiarVentana(nro:byte);
var t,r:integer;
begin
 if nro =0 then begin
  DataSource1.DataSet:=nil;
  DataSource2.DataSet:=nil;
  C2.Checked:=true;
  PC1.ActivePage:=PC1.Pages[0];
  if c2.Checked= true then  begin
    odni.Text:=d2.Text;
    odni.SetFocus;
    buscar.Click;
  end;
  D1.Text:='00000';
  D2.Clear;
  D3.Clear;
  D4.Clear;
  D5.Clear;
  D6.Clear;
  D7.Clear;
  D8.Clear;
 end;
 GUARDA.Enabled:=false;
end;

procedure TCambiaCobrador.LimpiarClick(Sender: TObject);
begin
LimpiarVentana(0);
end;

procedure TCambiaCobrador.GUARDAClick(Sender: TObject);
var gf,t:integer;
    m:boolean;
    txtw:widestring;
begin
 if trim(edit1.Text) = trim(d4.Text) then begin
  messagedlg('Error... Imposible Asignar este Talonario a un mismo Cobrador',mtError,[mbok],0);
  edit1.Clear;
  edit2.Clear;
  edit3.Clear;
  guarda.Enabled:=false;
 end
 else begin
  gf:=messagedlg('Desea Modificar el Cobrador del Talonario  Nro: ' + trim(d2.Text) ,mtWarning,[mbok,mbCancel],0);
  if gf = 1 then begin
   if trim(d4.Text) = trim(edit1.Text) then begin
    messagedlg('Error... Imposible asignar este Talonario al mismo Cobrador',mtError,[mbok],0);
    grilla2.SetFocus;
   end
   else begin
    ComprobantesEntrega:=TComprobantesEntrega.Create(nil);
    ComprobantesEntrega.ConnectionString:=modulo2.Conexion;
    txtw:='UPDATE ComprobantesEntrega SET CuifCobrador = ' + trim(edit1.Text)
     + ' WHERE (IdComprobante=' + trim(d1.Text) + ') and (confirmado=1)';
    m:=ComprobantesEntrega.ListarSinResp(txtw);
    ComprobantesEntrega.Free;
    if m then begin
     messagedlg('La Nueva Asigancion del Cobrador se ha realizado con Exito...',mtConfirmation,[mbok],0);
     edit1.Clear;
     edit2.Clear;
     edit3.Clear;
     guarda.Enabled:=false;
     PC1.ActivePage:=PC1.Pages[0];
     buscar.Click;
    end
    else begin
     messagedlg('Error al asignar el cobrador a este Talonario... Consulte con un Administrador',mtError,[mbok],0);
    end;
   end;
  end
  else begin
    messagedlg('Ud. acaba de Cancelar esta Acci�n. No se produjeron ning�n cambio en la Base de Datos',mtError,[mbok],0);
  end;
 end;
end;

procedure TCambiaCobrador.ODNIKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  Buscar.SetFocus;
end;
end;

procedure TCambiaCobrador.grilla2Click(Sender: TObject);
var gf:integer;
begin
 if d2.Text='' then begin
  messagedlg('Error al Imposible Asignar un Talonario Inexistente',mtError,[mbok],0);
  PC1.ActivePage:=PC1.Pages[0];
  ODNI.SetFocus;
 end
 else begin
  gf:=messagedlg('Desea Realmente asignar al Talonario N�: ' + trim(d2.Text) + ', este Cobrador Seleccionado...',mtWarning,[mbok,mbCancel],0);
  if gf= 1 then begin
   edit3.Text:=trim(grilla2.Cells[1,grilla2.Row]);
   edit1.Text:=trim(grilla2.Cells[2,grilla2.Row]);
   edit2.Text:=trim(grilla2.Cells[3,grilla2.Row]);
   //grilla2.Cells[6,grilla2.Row]:='X';
   guarda.Enabled:=true;
   guarda.SetFocus;
  end
  else begin
   edit3.Clear;
   edit1.Clear;
   edit2.Clear;
   grilla2.Cells[6,grilla2.Row]:='';
   guarda.Enabled:=false;
  end;
 end;
end;

procedure TCambiaCobrador.grilla2DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
 //�������������������������������������������������������������������������������
   procedure WriteText(StringGrid: TStringGrid; ACanvas: TCanvas; const ARect: TRect;
     const Text: string; Format: Word);
   const
     DX = 2;
     DY = 2;
   var
     S: array[0..255] of Char;
     B, R: TRect;
   begin
     with Stringgrid, ACanvas, ARect do
     begin
       case Format of
         DT_LEFT: ExtTextOut(Handle, Left + DX, Top + DY,
             ETO_OPAQUE or ETO_CLIPPED, @ARect, StrPCopy(S, Text), Length(Text), nil);

         DT_RIGHT: ExtTextOut(Handle, Right - TextWidth(Text) - 3, Top + DY,
             ETO_OPAQUE or ETO_CLIPPED, @ARect, StrPCopy(S, Text),
             Length(Text), nil);

         DT_CENTER: ExtTextOut(Handle, Left + (Right - Left - TextWidth(Text)) div 2,
             Top + DY, ETO_OPAQUE or ETO_CLIPPED, @ARect,
             StrPCopy(S, Text), Length(Text), nil);
       end;
     end;
   end;
   
   //�������������������������������������������������������������������������������
   procedure Display(StringGrid: TStringGrid; const S: string; Alignment: TAlignment;
                     BackColor:TColor=-1; OnlyColor:Boolean=False);
   const
     Formats: array[TAlignment] of Word = (DT_LEFT, DT_RIGHT, DT_CENTER);
   var
     _Align:TAlignment;
   begin
      // Fila fija?  ==> Salimos
      if (ARow < StringGrid.FixedRows) then begin
        Exit;
      end;

      // Color diferente de -1?
      if (BackColor <> -1) and (not (gdSelected in State)) then begin
        StringGrid.Canvas.Brush.Style := bsSolid;
        StringGrid.Canvas.Brush.Color := BackColor;
        StringGrid.Canvas.FillRect(Rect);
      end;

      // asignado
      _Align := Alignment;

      // S�lo color?
      if not (OnlyColor) then begin
        _Align := taLeftJustify;
      end;

      // Texto
      WriteText(StringGrid, StringGrid.Canvas, Rect, S, Formats[_Align]);
   end;
   //�������������������������������������������������������������������������������

var  s: String;
begin
        with Sender as TStringGrid do
        begin
        s := Cells[6, ARow];   // el 19 es la columna de donde comparo la 'palabra' para pintar la fila
          if trim(s)= 'X' then begin
               Display(grilla2, grilla2.Cells[ACol, ARow], taLeftJustify, clLime, True);
          end;
  end;
end;

procedure TCambiaCobrador.DBGrid3CellClick(Column: TColumn);
begin
  Coloca1(5);
end;

procedure TCambiaCobrador.DBGrid3DrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
   if Field.FieldName = 'NroTalonario' then
    (Sender as TDBGrid).Canvas.Font.Color := clRed;  { En rojo / in red }
    (Sender as TDBGrid).Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 2,
      Field.AsString);
end;

end.

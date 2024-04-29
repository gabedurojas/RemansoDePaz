unit LasMutualesInstituicones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, JvExButtons, JvBitBtn, ComCtrls, ToolWin,ClaseFunciones,
  DB, Mask,ADODB,Unidad,DBClient, Grids, DBGrids, JvExDBGrids, JvDBGrid,StrUtils,
  RpDefine, RpBase, RpSystem, ExtCtrls, jpeg, JvSimLogic, Menus;

  type HackTable = class(TADOTable);
type
  TLasMutales = class(TForm)
    Barra1: TStatusBar;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    ToolButton1: TToolButton;
    BORRA: TJvBitBtn;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    Sale: TJvBitBtn;
    GroupBox1: TGroupBox;
    Busca: TJvBitBtn;
    LasMutuales: TComboBox;
    Edit2: TEdit;
    Label5: TLabel;
    pc1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TJvDBGrid;
    DataSource1: TDataSource;
    TabSheet3: TTabSheet;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    StringAgrupD: TStringGrid;
    GroupBox3: TGroupBox;
    StringAgrupP: TStringGrid;
    Label2: TLabel;
    JvDBGrid1: TJvDBGrid;
    DataSource2: TDataSource;
    GroupBox4: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    JvBitBtn1: TJvBitBtn;
    RvS1: TRvSystem;
    T8: TClientDataSet;
    Image1: TImage;
    Label10: TLabel;
    Label11: TLabel;
    CB1: TCheckBox;
    GroupBox5: TGroupBox;
    Label12: TLabel;
    Edit1: TEdit;
    DataSource3: TDataSource;
    Label13: TLabel;
    Label14: TLabel;
    TabSheet4: TTabSheet;
    JvDBGrid2: TJvDBGrid;
    DataSource4: TDataSource;
    Label15: TLabel;
    Label16: TLabel;
    JvSIMConnector1: TJvSIMConnector;
    JvSIMConnector2: TJvSIMConnector;
    JvSIMConnector3: TJvSIMConnector;
    JvSIMConnector4: TJvSIMConnector;
    JvSIMConnector5: TJvSIMConnector;
    Bevel1: TBevel;
    Bevel2: TBevel;
    TabSheet5: TTabSheet;
    DataSource5: TDataSource;
    JvDBGrid3: TJvDBGrid;
    TabSheet6: TTabSheet;
    JvDBGrid4: TJvDBGrid;
    DataSource6: TDataSource;
    TabSheet7: TTabSheet;
    DataSource7: TDataSource;
    JvDBGrid5: TJvDBGrid;
    TabSheet8: TTabSheet;
    DataSource8: TDataSource;
    JvDBGrid6: TJvDBGrid;
    Label17: TLabel;
    JvSIMConnector6: TJvSIMConnector;
    Label18: TLabel;
    PopupMenu1: TPopupMenu;
    ExportarDatos1: TMenuItem;
    RE5: TRichEdit;
    PopupMenu2: TPopupMenu;
    ExportarInhumados1: TMenuItem;
    PopupMenu3: TPopupMenu;
    ExportarAccionesTransferidas1: TMenuItem;
    PopupMenu4: TPopupMenu;
    ExportarAccionesLibres1: TMenuItem;
    PopupMenu5: TPopupMenu;
    ExportarAccionesOcupadasNOTransf1: TMenuItem;
    PopupMenu6: TPopupMenu;
    ExportarAccionesTransferidasNOOcupadas1: TMenuItem;
    PopupMenu7: TPopupMenu;
    ExportarAccionesTransferidasyOcupadas1: TMenuItem;
    procedure SaleClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure LasMutualesExit(Sender: TObject);
    procedure LasMutualesKeyPress(Sender: TObject; var Key: Char);
    procedure Coloca1(nro:byte);
    procedure BuscaClick(Sender: TObject);
    procedure BORRAClick(Sender: TObject);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure RvS1Print(Sender: TObject);
    procedure CB1Click(Sender: TObject);
    procedure ExportarDatos1Click(Sender: TObject);
    procedure ExportarInhumados1Click(Sender: TObject);
    procedure ExportarAccionesTransferidas1Click(Sender: TObject);
    procedure ExportarAccionesLibres1Click(Sender: TObject);
    procedure ExportarAccionesOcupadasNOTransf1Click(Sender: TObject);
    procedure ExportarAccionesTransferidasNOOcupadas1Click(
      Sender: TObject);
    procedure ExportarAccionesTransferidasyOcupadas1Click(Sender: TObject);
  private
      gh:boolean;
      cuif,FechaActual,Mes,Anio,txtfecha,elperiodo,Dato,opcion,valormante,tottransf,toto,lib,ont,tno,tev:string;
      PosH:Array [0..4] of Double;
      Camp:Array [0..4] of Integer;
      TxtCamp:Array [0..4] of String;

      PosHIn:Array [0..7] of Double;
      CampIn:Array [0..7] of Integer;
      TxtCampIn:Array [0..7] of String;
    { Private declarations }
  public
      Funciones:TFuncionesVarias;
      DtCombo,DtCombo0,DtCombo1,DtCombo2,DataSet11,DataSet3,DtCombo6,DtCombo5,
      DataSett,DataSetl,DataSetONT,DataSetTNO,DataSetTO,DataSetEV:TClientDataSet;
      MANTEPAGOS: TADODataSet;
      ctal,ctao,opcionpestana,ctat,ctatyo:integer;
      IdCombos:array of array of string;
      sumad,suma:double;

    { Public declarations }
  end;

var
  LasMutales: TLasMutales;

implementation

uses Modulo,ClaseSistemas;

{$R *.dfm}

procedure TLasMutales.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TLasMutales.FormActivate(Sender: TObject);
begin
if not gh then begin
  gh:=true;
  FechaActual:=LeftStr(Fec_System(),10);
  setlength(IdCombos,1);
  PC1.ActivePage:=PC1.Pages[0];
  coloca1(0);
  coloca1(5);
  cb1.Checked:=false;
  PopupMenu1.Items[0].Enabled:=false;
  MANTEPAGOS:=TADODataSet.Create(nil);
  MANTEPAGOS.ConnectionString:=modulo2.Conexion;
  lasmutuales.SetFocus;
  StringAgrupD.Cells[0,0]:='Periodo';                  //StringAgrupD.Cells[1,0]:='Imp.Cuota';
  StringAgrupD.Cells[1,0]:='EstadoPago';
  StringAgrupD.Cells[2,0]:='Imp.Cuota';               StringAgrupD.Cells[3,0]:='Interes';
  StringAgrupD.Cells[4,0]:='TotalCuota';
  Edit1.Clear;
  StringAgrupP.Cells[0,0]:='Periodo';                  //StringAgrupP.Cells[1,0]:='Imp.Cuota';
  StringAgrupP.Cells[1,0]:='EstadoPago';               StringAgrupP.Cells[2,0]:='FechaCobro';
  StringAgrupP.Cells[3,0]:='NroComprob.';              StringAgrupP.Cells[4,0]:='ImpoCobrado';
end;
end;

procedure TLasMutales.Coloca1(nro:byte);
var   txtw:widestring;
      Sistema:TSistemas;
      t,p,u:integer;
      ValNull:variant;
begin
ctao:=0;
ctal:=0;
ctat:=0;
ctatyo:=0;
sumad:=0;
ValNull:=null;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
if nro=0 then begin
  lasmutuales.Clear;
  DtCombo0.Free;
  Dtcombo0:=TClientDataSet.Create(nil);
  txtw:='SELECT distinct clientes.RazonSocial,Clientes.alias,clientes.cuif '
  +' FROM ParcelasTitulares tit inner join Clientes on Clientes.Cuif = tit.Cuif WHERE (NroTipoAcc = 3)';
  if Funciones.Listar(txtw,DtCombo0)then begin
   SetLength(IdCombos[0],DtCombo0.RecordCount);
   for t:=1 to DtCombo0.RecordCount  do begin
    DtCombo0.RecNo:=t;
    lasmutuales.Items.Insert(t-1,trim(DtCombo0.Fields[0].AsString));
    IdCombos[0,t-1]:=DtCombo0.Fields[1].AsString;
   end;
  end
  else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  lasmutuales.ItemIndex:=0;
end;
if nro = 1 then begin
  DtCombo1.Free;
  DtCombo1:=TClientdataSet.Create(nil);
  txtw:='SELECT cuif from clientes where razonsocial = ' + chr(39)+ trim (lasmutuales.Text ) + chr(39)+ ' and alias = '+ trim(edit2.Text);
  if not Funciones.listar(txtw,DtCombo1) then messagedlg('ERROR al realizar ' +
    'Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
    else cuif:=trim(Dtcombo1.Fields[0].AsString);
end;
if nro=2 then begin
  ctao:=0;
  ctal:=0;
  ctat:=0;
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  DataSource1.DataSet:=DtCombo;
  if cuif = '96800004591' then  /// upcn
   txtw:='select Orden,NroAccion,Parcela,Sector,Categoria,Ocupado,Transferida,CantInhumados,null as observacion  ' +
   'from ListadoAccionesMutualesUPCN (' + cuif + ')'
  else
   txtw:='select Orden,NroAccion,Parcela,Sector,Categoria,Ocupado,Transferida,CantInhumados,observacion ' +
   'from ListadoAccionesMutuales (' + cuif + ')';
  if not Funciones.listar(txtw,DtCombo) then messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
   PopupMenu1.Items[0].Enabled:=true;
   label3.Caption:=inttostr(DtCombo.RecordCount);
    ///contamos acciones acupadas NO TRANSFERIDAS
   try
    DBGrid1.datasource.dataset.disablecontrols;
    DBGrid1.datasource.dataset.first;
    while not DBGrid1.datasource.dataset.eof do begin
     if (trim(DBGrid1.Fields[5].Value)='SI') AND (trim(DBGrid1.Fields[6].Value)='NO') then begin
      ctao:=ctao + 1;
     end;
     DBGrid1.datasource.dataset.next;
    end;
    if ctao > 0 then label4.Caption:=inttostr(ctao)
     else  label4.Caption:='0';
   finally
    DBGrid1.datasource.dataset.enablecontrols;
   end;

    //contamos acciones TRANSFERIDA NO OCUPADAS
   try
    DBGrid1.datasource.dataset.disablecontrols;
    DBGrid1.datasource.dataset.first;
    while not DBGrid1.datasource.dataset.eof do begin
     if (trim(DBGrid1.Fields[6].Value)='SI') AND (trim(DBGrid1.Fields[5].Value)='NO')  then begin
      ctat:=ctat + 1;
     end;
     DBGrid1.datasource.dataset.next;
    end;
    if ctat > 0 then label14.Caption:=inttostr(ctat)
     else  label14.Caption:='0';
   finally
    DBGrid1.datasource.dataset.enablecontrols;
   end;

    //contamos acciones TRANSFERIDA y tambien OCUPADAS
   try
    DBGrid1.datasource.dataset.disablecontrols;
    DBGrid1.datasource.dataset.first;
    while not DBGrid1.datasource.dataset.eof do begin
     if (trim(DBGrid1.Fields[5].Value)='SI') AND (trim(DBGrid1.Fields[6].Value)='SI')  then begin
      ctatyo:=ctatyo + 1;
     end;
     DBGrid1.datasource.dataset.next;
    end;
    if ctatyo > 0 then label16.Caption:=inttostr(ctatyo)
     else  label16.Caption:='0';
   finally
    DBGrid1.datasource.dataset.enablecontrols;
   end;

   //contamos acciones libres
   {try
    DBGrid1.datasource.dataset.disablecontrols;
    DBGrid1.datasource.dataset.first;
    while not DBGrid1.datasource.dataset.eof do begin
     if strtoint(label3.Caption) - (strtoint(label4.Caption) + strtoint(label14.Caption) + strtoint(label16.Caption)) < 0 then label6.Caption :='0'
      else label6.Caption:=inttostr(strtoint(label3.Caption) - (strtoint(label4.Caption) + strtoint(label14.Caption) + strtoint(label16.Caption)));
     DBGrid1.datasource.dataset.next;
    end;
   finally
    DBGrid1.datasource.dataset.enablecontrols;
   end;    }
  end;  

  DBGrid1.Columns[0].Width:=60;
  DBGrid1.Columns[1].Width:=60;
  DBGrid1.Columns[2].Width:=60;
  DBGrid1.Columns[3].Width:=60;
  DBGrid1.Columns[4].Width:=60;
  DBGrid1.Columns[5].Width:=60;
end;
if nro=3 then begin   /// creamos el periodo actual
  DtCombo1.Free;
  DtCombo1:=TClientdataSet.Create(nil);
  if not Funciones.Listar('SELECT * FROM PeriodoImpresion (' + chr(39) + FechaActual + chr(39) + ')',DtCombo1) then
  else begin
   for t:=1 to DtCombo1.RecordCount  do begin
    DtCombo1.RecNo:=t;
    elperiodo:=trim(DtCombo1.Fields[0].AsString)
   end;
  end;

  for p:=0 to StringAgrupP.ColCount-1 do
   for u:=1 to StringAgrupP.RowCount-1 do StringAgrupP.Cells[p,u]:='';
  StringAgrupP.RowCount:=2;

  for p:=0 to StringAgrupD.ColCount-1 do
   for u:=1 to StringAgrupD.RowCount-1 do StringAgrupD.Cells[p,u]:='';
  StringAgrupD.RowCount:=2;

  Mes:=RightStr(trim(elperiodo),2);
  Anio:=LeftStr(trim(elperiodo),4);
  txtfecha:='01/' + Mes + '/' + Anio;
  DataSet11.Free;
  DataSet11:=TClientdataSet.Create(nil);
  if not cb1.Checked then begin
   txtw:='SELECT Periodo,ImporteCuota,InteresAcumulado as Interes,TotalCuota, '
   + 'EstadoVto,EstadoPago,FechaCobro,NroComprobante,ImporteCobrado as ImpCobrado FROM EstadoCuentaMantenimiento'
   + ' ( ' + trim(edit2.Text) + ',' + chr(39)+  txtfecha +chr(39) +',0) where Periodo <> 999999 order by 1';
  end
  else begin
   txtw:='SELECT Periodo,ImporteCuota,0 as Interes,ImporteCuota as TotalCuota, '
   + 'EstadoVto,EstadoPago,FechaCobro,NroComprobante,ImporteCobrado as ImpCobrado FROM EstadoCuentaMantenimiento'
   + ' ( ' + trim(edit2.Text) + ',' + chr(39)+  txtfecha +chr(39) +',0) where Periodo <> 999999 order by 1';
  end;
  if not Funciones.Listar(txtw,DataSet11) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);

  if not DataSet11.IsEmpty then begin
   MANTEPAGOS.Close;
   MANTEPAGOS.CommandText:='SELECT Periodo,ImporteCuota,InteresAcumulado as Interes,TotalCuota, '
   + 'EstadoVto,EstadoPago,FechaCobro,NroComprobante,ImporteCobrado as ImpCobrado FROM EstadoCuentaMantenimiento'
   + ' ( ' + trim(edit2.Text)+ ',' + chr(39)+  txtfecha +chr(39) +',0) where Periodo <> 999999 and EstadoPago=''PAGADO'' order by 1 desc';
   MANTEPAGOS.Open;
   for t:=1 to MANTEPAGOS.RecordCount do begin
    MANTEPAGOS.RecNo:=t;
    StringAgrupP.RowCount:=t+1;
    StringAgrupP.Cells[0,t]:=trim(MANTEPAGOS.Fields[0].AsString);
    StringAgrupP.Cells[1,t]:=trim(MANTEPAGOS.Fields[5].AsString);
    StringAgrupP.Cells[2,t]:=trim(MANTEPAGOS.Fields[6].AsString);
    StringAgrupP.Cells[3,t]:=trim(MANTEPAGOS.Fields[7].AsString);
    StringAgrupP.Cells[4,t]:=trim(MANTEPAGOS.Fields[8].AsString);
   end;
   DataSet11.Filtered:=false;
   DataSet11.FilterOptions:=[foCaseInsensitive, foNoPartialCompare];
   Dato:='EstadoPago=''DEUDA'' and estadovto<> ''SIN VENCER''';
   DataSet11.Filter:=Dato;
   DataSet11.Filtered:=true;
   for t:=1 to Dataset11.RecordCount do begin
    Dataset11.RecNo:=t;
    StringAgrupD.RowCount:=t+1;
    StringAgrupD.Cells[0,t]:=trim(Dataset11.Fields[0].AsString);
    StringAgrupD.Cells[1,t]:=trim(Dataset11.Fields[5].AsString);
    StringAgrupD.Cells[2,t]:=trim(Dataset11.Fields[1].AsString);
    StringAgrupD.Cells[3,t]:=trim(Dataset11.Fields[2].AsString);
    StringAgrupD.Cells[4,t]:=trim(Dataset11.Fields[3].AsString);
   end;
  end;
  IF NOT dATASET11.IsEmpty THEN BEGIN
  //sumamos las columna de la deuda
   for t:=1 to StringAgrupD.RowCount-1 do begin
    sumad := sumad + strtofloat(StringAgrupD.Cells[4,t]);
   end;
   edit1.Text := floattostr(sumad);
  END;
end;
if nro=4 then begin   /// Inhumados
  DataSet3.Free;
  DataSet3:=TClientdataSet.Create(nil);
  DataSource2.DataSet:=DataSet3;
  if cuif = '96800004591' then // upcn  Fn_VistaParcelasLosInhumadosUPCN
   txtw:='SELECT FechaFallecimiento,NroAccion,NombreFallecido,DniFallecido,NombreSolicitante,Sector,Parcela,'
   + 'FechaInhumacion,nivel FROM Fn_VistaParcelasLosInhumadosUPCN '
   + '(null,null,null,null,null,null,null,null,null,0) order by 2,3 '
  else
  txtw:='SELECT FechaFallecimiento,NroAccion,NombreFallecido,DniFallecido,NombreSolicitante,Sector,Parcela,'
   + 'FechaInhumacion,nivel FROM Fn_VistaParcelasLosInhumados '
   + '(null,null,null,'+chr(39) + trim(lasmutuales.Text) + chr(39) + ',null,null,null,null,null,0) order by 2,3 ';
  if not Funciones.listar(txtw,DataSet3) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  JvDBGrid1.Columns[0].Width:=90;
  JvDBGrid1.Columns[1].Width:=60;
  JvDBGrid1.Columns[2].Width:=250;
  JvDBGrid1.Columns[3].Width:=80;
  JvDBGrid1.Columns[4].Width:=250;
  JvDBGrid1.Columns[5].Width:=80;
  JvDBGrid1.Columns[6].Width:=80;
  JvDBGrid1.Columns[7].Width:=120;
  JvDBGrid1.Columns[8].Width:=80;
end;
if nro=5 then begin
  DtCombo5.Free;
  DtCombo5:=TClientdataSet.Create(nil);
  txtw:='SELECT ImporteNormal FROM ParcelasMantenimientoPrecios WHERE (FechaFin IS NULL)';
  if not Funciones.Listar(txtw,DtCombo5) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador', mtError,[mbok],0);
  if not DtCombo5.IsEmpty then begin
    valormante:=DtCombo5.Fields[0].AsString;
    label11.Caption := valormante;
  end;
end;
if nro=6 then begin
  DtCombo6.Free;
  DtCombo6:=TClientdataSet.Create(nil);
  DataSource3.DataSet:=DtCombo6;
  if not cb1.Checked then begin
   txtw:='SELECT Periodo,ImporteCuota,InteresAcumulado as Interes,TotalCuota * ' + label3.Caption + ' as TotalCuota, '
   + 'EstadoVto,EstadoPago,FechaCobro,NroComprobante,ImporteCobrado as ImpCobrado FROM EstadoCuentaMantenimiento'
   + ' ( ' + trim(edit2.Text) + ',' + chr(39)+  txtfecha +chr(39) +',0) where Periodo <> 999999 order by 1';
  end
  else begin
   txtw:='SELECT Periodo,ImporteCuota,0 as Interes,ImporteCuota * ' + label3.Caption + ' as TotalCuota, '
   + 'EstadoVto,EstadoPago,FechaCobro,NroComprobante,ImporteCobrado as ImpCobrado FROM EstadoCuentaMantenimiento'
   + ' ( ' + trim(edit2.Text) + ',' + chr(39)+  txtfecha +chr(39) +',0) where Periodo <> 999999 order by 1';
  end;
  if not Funciones.Listar(txtw,DtCombo6) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador', mtError,[mbok],0);
end;
if nro=7 then begin   /// TOTAL DE TRANSFERIDAS
  DataSett.Free;
  DataSett:=TClientdataSet.Create(nil);
  DataSource4.DataSet:=DataSett;
  txtw:='SELECT nroaccion,parcela,sector,categoria,fechacesion,primertitular,segundotitular,tercertitular '
  + ' FROM ListadoAccionesMutualesTransferidas (' + cuif + ')';
  if not Funciones.listar(txtw,DataSett) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  tottransf:=inttostr(DataSett.RecordCount);
  JvDBGrid2.Columns[0].Width:=90;
  JvDBGrid2.Columns[1].Width:=60;
  JvDBGrid2.Columns[2].Width:=60;
  JvDBGrid2.Columns[3].Width:=60;
  JvDBGrid2.Columns[4].Width:=90;
  JvDBGrid2.Columns[5].Width:=150;
  JvDBGrid2.Columns[6].Width:=150;
  JvDBGrid2.Columns[7].Width:=150;
end;
if nro=8 then begin   /// TOTAL DE LIBRES
  DataSetl.Free;
  DataSetl:=TClientdataSet.Create(nil);
  DataSource5.DataSet:=DataSetl;
  if cuif = '96800004591' then  /// upcn
   txtw:='select row_number() over (order by NroAccion asc) as Orden,NroAccion,Parcela,Sector,Categoria,Ocupado,Transferida,CantInhumados,null as observacion  ' +
   'from ListadoAccionesMutualesUPCN (' + cuif + ') where Ocupado <> ''Espacio Verde'' and Transferida = ''NO'' and Ocupado = ''NO'' '
  else
   txtw:='select row_number() over (order by NroAccion asc) as Orden,NroAccion,Parcela,Sector,Categoria,Ocupado,Transferida,CantInhumados,observacion ' +
   'from ListadoAccionesMutuales (' + cuif + ') where Ocupado <> ''Espacio Verde'' and Transferida = ''NO'' and Ocupado = ''NO''';
  // txtw:='SELECT nroaccion,parcela,sector,categoria,fechacesion,primertitular,segundotitular,tercertitular '
  // + ' FROM ListadoAccionesMutualesTransferidas (' + cuif + ')';
  if not Funciones.listar(txtw,DataSetl) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  lib:=inttostr(DataSetl.RecordCount);
  label6.Caption:= inttostr(DataSetl.RecordCount);
  JvDBGrid3.Columns[0].Width:=60;
  JvDBGrid3.Columns[1].Width:=60;
  JvDBGrid3.Columns[2].Width:=60;
  JvDBGrid3.Columns[3].Width:=60;
  JvDBGrid3.Columns[4].Width:=60;
  JvDBGrid3.Columns[5].Width:=60;
  JvDBGrid3.Columns[6].Width:=60;
  JvDBGrid3.Columns[7].Width:=60;
end;
if nro=9 then begin   /// TOTAL DE ocupados  no transf
  DataSetONT.Free;
  DataSetONT:=TClientdataSet.Create(nil);
  DataSource6.DataSet:=DataSetONT;
  if cuif = '96800004591' then  /// upcn
   txtw:='select row_number() over (order by NroAccion asc) as Orden,NroAccion,Parcela,Sector,Categoria,Ocupado,Transferida,CantInhumados,null as observacion  ' +
   'from ListadoAccionesMutualesUPCN (' + cuif + ') where Transferida = ''NO'' and Ocupado = ''SI'''
  else
   txtw:='select row_number() over (order by NroAccion asc) as Orden,NroAccion,Parcela,Sector,Categoria,Ocupado,Transferida,CantInhumados,observacion ' +
   'from ListadoAccionesMutuales (' + cuif + ') where Transferida = ''NO'' and Ocupado = ''SI''';
  if not Funciones.listar(txtw,DataSetONT) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  ont:=inttostr(DataSetONT.RecordCount);
  JvDBGrid4.Columns[0].Width:=60;
  JvDBGrid4.Columns[1].Width:=60;
  JvDBGrid4.Columns[2].Width:=60;
  JvDBGrid4.Columns[3].Width:=60;
  JvDBGrid4.Columns[4].Width:=60;
  JvDBGrid4.Columns[5].Width:=60;
  JvDBGrid4.Columns[6].Width:=60;
  JvDBGrid4.Columns[7].Width:=60;
end;
if nro=10 then begin   /// TOTAL DE transferidas no ocupadasd
  DataSetTNO.Free;
  DataSetTNO:=TClientdataSet.Create(nil);
  DataSource7.DataSet:=DataSetTNO;
  if cuif = '96800004591' then  /// upcn
   txtw:='select row_number() over (order by NroAccion asc) as Orden,NroAccion,Parcela,Sector,Categoria,Ocupado,Transferida,CantInhumados,null as observacion  ' +
   'from ListadoAccionesMutualesUPCN (' + cuif + ') where Transferida = ''SI'' and Ocupado = ''NO'''
  else
   txtw:='select row_number() over (order by NroAccion asc) as Orden,NroAccion,Parcela,Sector,Categoria,Ocupado,Transferida,CantInhumados,observacion ' +
   'from ListadoAccionesMutuales (' + cuif + ') where Transferida = ''SI'' and Ocupado = ''NO''';
  if not Funciones.listar(txtw,DataSetTNO) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  tno:=inttostr(DataSetTNO.RecordCount);
  JvDBGrid5.Columns[0].Width:=60;
  JvDBGrid5.Columns[1].Width:=60;
  JvDBGrid5.Columns[2].Width:=60;
  JvDBGrid5.Columns[3].Width:=60;
  JvDBGrid5.Columns[4].Width:=60;
  JvDBGrid5.Columns[5].Width:=60;
  JvDBGrid5.Columns[6].Width:=60;
  JvDBGrid5.Columns[7].Width:=60;
end;
if nro=11 then begin   /// TOTAL DE transf y ocupadas
  DataSetTO.Free;
  DataSetTO:=TClientdataSet.Create(nil);
  DataSource8.DataSet:=DataSetTO;
  if cuif = '96800004591' then  /// upcn
   txtw:='select row_number() over (order by NroAccion asc) as Orden,NroAccion,Parcela,Sector,Categoria,Ocupado,Transferida,CantInhumados,null as observacion  ' +
   'from ListadoAccionesMutualesUPCN (' + cuif + ') where Transferida = ''SI'' and Ocupado = ''SI'''
  else
   txtw:='select row_number() over (order by NroAccion asc) as Orden,NroAccion,Parcela,Sector,Categoria,Ocupado,Transferida,CantInhumados,observacion ' +
   'from ListadoAccionesMutuales (' + cuif + ') where Transferida = ''SI'' and Ocupado = ''SI''';
  if not Funciones.listar(txtw,DataSetTO) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  toto:=inttostr(DataSetTO.RecordCount);
  JvDBGrid6.Columns[0].Width:=60;
  JvDBGrid6.Columns[1].Width:=60;
  JvDBGrid6.Columns[2].Width:=60;
  JvDBGrid6.Columns[3].Width:=60;
  JvDBGrid6.Columns[4].Width:=60;
  JvDBGrid6.Columns[5].Width:=60;
  JvDBGrid6.Columns[6].Width:=60;
  JvDBGrid6.Columns[7].Width:=60;
end;
if nro=12 then begin   /// TOTAL DE ESPACIOS VERDES
  DataSetEV.Free;
  DataSetEV:=TClientdataSet.Create(nil);
 // DataSource8.DataSet:=DataSetTO;
  if cuif = '96800004591' then  /// upcn
   txtw:='select row_number() over (order by NroAccion asc) as Orden,NroAccion,Parcela,Sector,Categoria,Ocupado,Transferida,CantInhumados,null as observacion  ' +
   'from ListadoAccionesMutualesUPCN (' + cuif + ') where Ocupado = ''Espacio Verde'' '
  else
   txtw:='select row_number() over (order by NroAccion asc) as Orden,NroAccion,Parcela,Sector,Categoria,Ocupado,Transferida,CantInhumados,observacion ' +
   'from ListadoAccionesMutuales (' + cuif + ') where Ocupado = ''Espacio Verde'' ';
  if not Funciones.listar(txtw,DataSetEV) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  tev:=inttostr(DataSetEV.RecordCount);
  label18.Caption :=inttostr(DataSetEV.RecordCount);
  {  JvDBGrid6.Columns[0].Width:=60;
  JvDBGrid6.Columns[1].Width:=60;
  JvDBGrid6.Columns[2].Width:=60;
  JvDBGrid6.Columns[3].Width:=60;
  JvDBGrid6.Columns[4].Width:=60;
  JvDBGrid6.Columns[5].Width:=60;
  JvDBGrid6.Columns[6].Width:=60;
  JvDBGrid6.Columns[7].Width:=60;}
end;
  Funciones.Free;
end;

procedure TLasMutales.SaleClick(Sender: TObject);
begin
close;
end;

procedure TLasMutales.LasMutualesExit(Sender: TObject);
begin
 if LasMutuales.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe la Mutual/Sindicato Ingresado!!',mterror,[mbok],0);
  LasMutuales.SetFocus;
 end
 else begin
  label3.Caption:='0';
  label4.Caption:='0';
  label6.Caption:='0';
  label14.Caption:='0';
  edit2.Text := IdCombos[0,lasmutuales.ItemIndex] ;
  coloca1(1);
  busca.SetFocus;
 end;
end;

procedure TLasMutales.LasMutualesKeyPress(Sender: TObject; var Key: Char);
begin
  busca.SetFocus;
end;

procedure TLasMutales.BuscaClick(Sender: TObject);
begin
coloca1(2);  // listaacciones
coloca1(3);  // stado cuenta
coloca1(4);  // inhumados
coloca1(6);
coloca1(7);   // transferidas
coloca1(8);   // libres
coloca1(9);   // ocupadas NO Transferidas
coloca1(10);  // transf no ocupadas
coloca1(11);  // transf y ocupadas
coloca1(12);  // espacios verdes
end;

procedure TLasMutales.BORRAClick(Sender: TObject);
var p,u:integer;
begin
  for p:=0 to StringAgrupP.ColCount-1 do
     for u:=1 to StringAgrupP.RowCount-1 do StringAgrupP.Cells[p,u]:='';
  StringAgrupP.RowCount:=2;

  for p:=0 to StringAgrupD.ColCount-1 do
    for u:=1 to StringAgrupD.RowCount-1 do StringAgrupD.Cells[p,u]:='';
  StringAgrupD.RowCount:=2;
 label3.Caption:='0';
 label4.Caption:='0';
 label6.Caption:='0';
 label14.Caption:='0';
 lasmutuales.SetFocus;
end;

procedure TLasMutales.JvBitBtn1Click(Sender: TObject);
begin
 if PC1.ActivePageIndex = 0 then begin
  RvS1.SystemPrinter.Orientation :=poPortrait;
  rvs1.Execute;
 end;
 if PC1.ActivePageIndex = 1 then begin
  RvS1.SystemPrinter.Orientation :=poPortrait;
  rvs1.Execute;
 end;
 if PC1.ActivePageIndex = 2 then begin
  RvS1.SystemPrinter.Orientation :=poLandScape;
  rvs1.Execute;
 end;
 if PC1.ActivePageIndex = 3 then begin
  RvS1.SystemPrinter.Orientation :=poLandScape;
  rvs1.Execute;
 end;
 if PC1.ActivePageIndex = 4 then begin
  RvS1.SystemPrinter.Orientation :=poPortrait;
  rvs1.Execute;
 end;
 if PC1.ActivePageIndex = 5 then begin
  RvS1.SystemPrinter.Orientation :=poPortrait;
  rvs1.Execute;
 end;
 if PC1.ActivePageIndex = 6 then begin
  RvS1.SystemPrinter.Orientation :=poPortrait;
  rvs1.Execute;
 end;
 if PC1.ActivePageIndex = 7 then begin
  RvS1.SystemPrinter.Orientation :=poPortrait;
  rvs1.Execute;
 end;
end;

procedure TLasMutales.RvS1Print(Sender: TObject);
var posfx,posfy,final,salto:double;
var t,k,y,hoja:integer;
var txt,val:string;
var pso:boolean;
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
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+34);
     BaseReport.SetFont(Fuente,Tamanio);
     BaseReport.FontColor:=clBlack;
     BaseReport.SetFont('Arial',8);
     BaseReport.PrintXY(posfx+150,posfy+13,'Fecha Imp.: ' + LeftStr(Fec_System(),10));
     BaseReport.PrintXY(posfx+150,posfy+18,'Nº Pagina ' + inttostr(hoja) + '  -  UsuImp ' + inttostr(modulo2.nro_usu));
     BaseReport.SetFont('Arial Black',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.Rectangle(posx+4,posy+5,posx+200,posy+34);
     if PC1.ActivePageIndex = 0 then begin
      //AuditAccesos('Mdulo 2','IMP DATOS MUTUALES- Usu ' + inttostr(modulo2.nro_usu));
      BaseReport.PrintXY(posx+5,posy+24,'LISTA DE ACCIONES DE: ' + TRIM(lasmutuales.Text )); // + '  -----> TOTAL ACCIONES: ' + TRIM(LABEL3.Caption));
      //BaseReport.PrintXY(posx+5,posy+30,'TOTAL ACCIONES: ' + TRIM(LABEL3.Caption));
      BaseReport.PrintXY(posx+5,posy+30,'OCUPADAS NO TRANSF.: ' + TRIM(LABEL4.Caption));
      BaseReport.PrintXY(posx+60,posy+30,'TRANSF. NO OCUPADAS: ' + TRIM(LABEL14.Caption));
      BaseReport.PrintXY(posx+110,posy+30,'TRANSF. Y OCUPADAS: ' + TRIM(LABEL16.Caption));

      BaseReport.Rectangle(posx+159,posy+20,posx+199,posy+25);
      BaseReport.PrintXY(posx+160,posy+24, 'TOT. ACCIONES: ' + TRIM(LABEL3.Caption));

      BaseReport.Rectangle(posx+159,posy+26,posx+199,posy+31);
      BaseReport.PrintXY(posx+160,posy+30, 'LIBRES: ' + TRIM(LABEL6.Caption));
     end;
     if PC1.ActivePageIndex = 1 then begin
      AuditAccesos('Mdulo 2','IMP ESTADO CTA. MUTUALES- Usu ' + inttostr(modulo2.nro_usu));
      BaseReport.PrintXY(posx+5,posy+24,'Estado de Cuenta de:'+  TRIM(lasmutuales.Text ));
      BaseReport.PrintXY(posx+5,posy+30,'DEUDA ACUMULADA $ ' + TRIM(edit1.Text));
     end;
     if PC1.ActivePageIndex = 2 then begin
      AuditAccesos('Mdulo 2','IMP LISTADO DE INHUMADOS MUTUALES- Usu ' + inttostr(modulo2.nro_usu));
      BaseReport.PrintXY(posx+5,posy+24,'LISTADO DE INHUMADOS PERTENECIENTES A: '+  TRIM(lasmutuales.Text ));
     end;
     if PC1.ActivePageIndex = 3 then begin
      AuditAccesos('Mdulo 2','IMP ACCIONES TRANSF. MUTUALES- Usu ' + inttostr(modulo2.nro_usu));
      BaseReport.PrintXY(posx+5,posy+24,'LISTADO DE ACCIONES TRANSFERIDAS DE: '+  TRIM(lasmutuales.Text ) + ' A TERCEROS' );
      BaseReport.Rectangle(posx+159,posy+26,posx+199,posy+31);
      BaseReport.PrintXY(posx+160,posy+30, 'TOTAL: ' + tottransf);
     end;
     if PC1.ActivePageIndex = 4 then begin
      AuditAccesos('Mdulo 2','IMP ACCIONES LIBRES MUTUALES- Usu ' + inttostr(modulo2.nro_usu));
      BaseReport.PrintXY(posx+5,posy+24,'LISTADO DE ACCIONES LIBRES DE: '+  TRIM(lasmutuales.Text ));
      BaseReport.Rectangle(posx+159,posy+26,posx+199,posy+31);
      BaseReport.PrintXY(posx+160,posy+30, 'TOTAL: ' + lib);
     end;
     if PC1.ActivePageIndex = 5 then begin
      AuditAccesos('Mdulo 2','IMP ACCIONES OCUPADAS NO TRANSF. MUTUALES- Usu ' + inttostr(modulo2.nro_usu));
      BaseReport.PrintXY(posx+5,posy+24,'LISTADO DE ACCIONES OCUPADAS NO TRANSFERIDAS DE: '+  TRIM(lasmutuales.Text ));
      BaseReport.Rectangle(posx+159,posy+26,posx+199,posy+31);
      BaseReport.PrintXY(posx+160,posy+30, 'TOTAL: ' + ont);
     end;
     if PC1.ActivePageIndex = 6 then begin
      AuditAccesos('Mdulo 2','IMP ACCIONES TRANSF. NO OCUPADAS MUTUALES- Usu ' + inttostr(modulo2.nro_usu));
      BaseReport.PrintXY(posx+5,posy+24,'LISTADO DE ACCIONES TRANSFERIDAS NO OCUPADAS DE: '+  TRIM(lasmutuales.Text ));
      BaseReport.Rectangle(posx+159,posy+26,posx+199,posy+31);
      BaseReport.PrintXY(posx+160,posy+30, 'TOTAL: ' + tno);
     end;
     if PC1.ActivePageIndex = 7 then begin
      AuditAccesos('Mdulo 2','IMP ACCIONES TRANSF. Y OCUPADAS MUTUALES- Usu ' + inttostr(modulo2.nro_usu));
      BaseReport.PrintXY(posx+5,posy+24,'LISTADO DE ACCIONES TRANSFERIDAS Y OCUPADAS DE: '+  TRIM(lasmutuales.Text ));
      BaseReport.Rectangle(posx+159,posy+26,posx+199,posy+31);
      BaseReport.PrintXY(posx+160,posy+30, 'TOTAL: ' + toto);
     end;
     Logo:=posy+27;
    end;
   end;

   Function Mostrar1(posx,posy:double):double;
   var t,y:integer;
   begin
    with Rvs1 do begin
     BaseReport.SetFont('Arial',8);
     posy:=posy + 5;
     if PC1.ActivePageIndex = 0 then begin
      BaseReport.Rectangle(posx+4,posy,posx+200,posy+5);
      BaseReport.Rectangle(posx+20,posy,posx+200,posy+5);
      BaseReport.Rectangle(posx+39,posy,posx+200,posy+5);
      BaseReport.Rectangle(posx+55,posy,posx+200,posy+5);
      BaseReport.Rectangle(posx+67,posy,posx+200,posy+5);     //
      BaseReport.Rectangle(posx+81,posy,posx+200,posy+5);
      BaseReport.Rectangle(posx+102,posy,posx+200,posy+5);
      BaseReport.Rectangle(posx+120,posy,posx+200,posy+5);
      BaseReport.Rectangle(posx+143,posy,posx+200,posy+5);
       BaseReport.PrintXY(posx+5,posy+4,'Orden');
      BaseReport.PrintXY(posx+21,posy+4,'NroAccion');
      BaseReport.PrintXY(posx+40,posy+4,'Parcela');
      BaseReport.PrintXY(posx+56,posy+4,'Sector');
      BaseReport.PrintXY(posx+68,posy+4,'Categoria');    //
      BaseReport.PrintXY(posx+82,posy+4,'Ocupado');
      BaseReport.PrintXY(posx+103,posy+4,'Transferida');
      BaseReport.PrintXY(posx+121,posy+4,'Cant.Inhumados');
      BaseReport.PrintXY(posx+144,posy+4,'Observaciones');
     end;

     if PC1.ActivePageIndex = 1 then begin
      BaseReport.Rectangle(posx+4,posy,posx+200,posy+5);
      BaseReport.Rectangle(posx+24,posy,posx+200,posy+5);
      BaseReport.Rectangle(posx+45,posy,posx+200,posy+5);
      BaseReport.Rectangle(posx+75,posy,posx+200,posy+5);
      BaseReport.Rectangle(posx+100,posy,posx+200,posy+5);
      BaseReport.Rectangle(posx+120,posy,posx+200,posy+5);
      BaseReport.Rectangle(posx+150,posy,posx+200,posy+5);
      BaseReport.Rectangle(posx+174,posy,posx+200,posy+5);
      BaseReport.PrintXY(posx+5,posy+4,'Periodo');
      BaseReport.PrintXY(posx+25,posy+4,'EstadoPago');
      BaseReport.PrintXY(posx+46,posy+4,'EstadoVto');
      BaseReport.PrintXY(posx+76,posy+4,'Imp.Cuota');
      BaseReport.PrintXY(posx+101,posy+4,'Interes');
      BaseReport.PrintXY(posx+121,posy+4,'TotalCuota');
      BaseReport.PrintXY(posx+151,posy+4,'FechaCobro');
      BaseReport.PrintXY(posx+175,posy+4,'NroComprobante');
     end;

     if PC1.ActivePageIndex = 2 then begin
      BaseReport.Rectangle(posx+4,posy,posx+280,posy+5);
      BaseReport.Rectangle(posx+27,posy,posx+280,posy+5);
      BaseReport.Rectangle(posx+40,posy,posx+280,posy+5);
      BaseReport.Rectangle(posx+99,posy,posx+280,posy+5);
      BaseReport.Rectangle(posx+119,posy,posx+280,posy+5);
      BaseReport.Rectangle(posx+195,posy,posx+280,posy+5);
      BaseReport.Rectangle(posx+219,posy,posx+280,posy+5);
      BaseReport.Rectangle(posx+229,posy,posx+280,posy+5);
      BaseReport.PrintXY(posx+5,posy+4,'Fec.Fallecimiento');
      BaseReport.PrintXY(posx+28,posy+4,'Accion');
      BaseReport.PrintXY(posx+41,posy+4,'Fallecido');
      BaseReport.PrintXY(posx+100,posy+4,'DniFallecido');
      BaseReport.PrintXY(posx+120,posy+4,'Solicitante');
      BaseReport.PrintXY(posx+196,posy+4,'Sector/Parcela');
      BaseReport.PrintXY(posx+220,posy+4,'Nivel');
      BaseReport.PrintXY(posx+230,posy+4,'Fec.Inhumacion');
     end;

     if PC1.ActivePageIndex = 3 then begin
      BaseReport.Rectangle(posx+4,posy,posx+280,posy+5);
      BaseReport.Rectangle(posx+19,posy,posx+280,posy+5);
      BaseReport.Rectangle(posx+29,posy,posx+280,posy+5);
      BaseReport.Rectangle(posx+40,posy,posx+280,posy+5);
      BaseReport.Rectangle(posx+59,posy,posx+280,posy+5);
      BaseReport.Rectangle(posx+139,posy,posx+280,posy+5);
      BaseReport.Rectangle(posx+209,posy,posx+280,posy+5);
      BaseReport.PrintXY(posx+5,posy+4,'Accion');
      BaseReport.PrintXY(posx+20,posy+4,'Sector');
      BaseReport.PrintXY(posx+30,posy+4,'Parcela');
      BaseReport.PrintXY(posx+41,posy+4,'FechaCesion');
      BaseReport.PrintXY(posx+60,posy+4,'PrimerTitular');
      BaseReport.PrintXY(posx+140,posy+4,'SegundoTitular');
      BaseReport.PrintXY(posx+210,posy+4,'TercerTitular');
     end;

     if (PC1.ActivePageIndex = 4) or (PC1.ActivePageIndex = 5)
      or (PC1.ActivePageIndex = 6) or (PC1.ActivePageIndex = 7) then begin
      BaseReport.Rectangle(posx+4,posy,posx+200,posy+5);
      BaseReport.Rectangle(posx+20,posy,posx+200,posy+5);
      BaseReport.Rectangle(posx+39,posy,posx+200,posy+5);
      BaseReport.Rectangle(posx+55,posy,posx+200,posy+5);
      BaseReport.Rectangle(posx+67,posy,posx+200,posy+5);     //
      BaseReport.Rectangle(posx+81,posy,posx+200,posy+5);
      BaseReport.Rectangle(posx+102,posy,posx+200,posy+5);
      BaseReport.Rectangle(posx+120,posy,posx+200,posy+5);
      BaseReport.Rectangle(posx+143,posy,posx+200,posy+5);
      BaseReport.PrintXY(posx+5,posy+4,'Orden');
      BaseReport.PrintXY(posx+21,posy+4,'NroAccion');
      BaseReport.PrintXY(posx+40,posy+4,'Parcela');
      BaseReport.PrintXY(posx+56,posy+4,'Sector');
      BaseReport.PrintXY(posx+68,posy+4,'Categoria');    //
      BaseReport.PrintXY(posx+82,posy+4,'Ocupado');
      BaseReport.PrintXY(posx+103,posy+4,'Transferida');
      BaseReport.PrintXY(posx+121,posy+4,'Cant.Inhumados');
      BaseReport.PrintXY(posx+144,posy+4,'Observaciones');
     end;

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
 if PC1.ActivePageIndex = 0 then begin
  //RvS1.SystemPrinter.Orientation :=poPortrait;
  for t:=1 to datasource1.dataset.RecordCount do begin
   datasource1.dataset.RecNo:=t;
   posfy:=posfy-0.5;
   RVS1.BaseReport.SetFont('Arial',8);
   RVS1.BaseReport.PrintXY(posfx+6,posfy,trim(datasource1.dataset.Fields[0].AsString));
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource1.dataset.Fields[1].AsString),posfx+21);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource1.dataset.Fields[2].AsString),posfx+40);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource1.dataset.Fields[3].AsString),posfx+56);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource1.dataset.Fields[4].AsString),posfx+68);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource1.dataset.Fields[5].AsString),posfx+82);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource1.dataset.Fields[6].AsString),posfx+103);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource1.dataset.Fields[7].AsString),posfx+121);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource1.dataset.Fields[8].AsString),posfx+144);
   posfy:=posfy+0.5;
   // hacemos la lineas internas de las grilla
   RVS1.BaseReport.Rectangle(posfx+4,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+20,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+39,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+55,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+67,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+81,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+102,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+120,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+143,posfy,posfx+200,posfy-4);
   posfy:=posfy + salto;
   if posfy > 260 then begin
    posfx:=5.5;
    posfy:=5;
    hoja:=hoja+1;
    RvS1.BaseReport.NewPage;
    posfy:=Logo(posfx,posfy,hoja)+ salto;   // llamamos al encabezado
    posfy:=Mostrar1(posfx,posfy)+ salto;
    final:=Mostrar1(posfx,posfy)+ salto + 14;
    posfy:=final;pso:=false;
   end;
  end;
 end;

 if PC1.ActivePageIndex = 1 then begin
  for t:=1 to DataSource3.DataSet.RecordCount do begin
   DataSource3.DataSet.RecNo:=t;
   posfy:=posfy-0.5;
   RVS1.BaseReport.SetFont('Arial',7);
   RVS1.BaseReport.PrintXY(posfx+6,posfy,trim(DataSource3.DataSet.Fields[0].AsString));
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(DataSource3.DataSet.Fields[5].AsString),posfx+25);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(DataSource3.DataSet.Fields[4].AsString),posfx+46);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(DataSource3.DataSet.Fields[1].AsString),posfx+76);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(DataSource3.DataSet.Fields[2].AsString),posfx+101);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(DataSource3.DataSet.Fields[3].AsString),posfx+121);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(DataSource3.DataSet.Fields[6].AsString),posfx+151);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(DataSource3.DataSet.Fields[7].AsString),posfx+175);
   RVS1.BaseReport.MoveTo(posw,posfy);
   posfy:=posfy+0.5;
   // hacemos la lineas internas de las grilla
   RVS1.BaseReport.Rectangle(posfx+4,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+24,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+45,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+75,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+100,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+120,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+150,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+174,posfy,posfx+200,posfy-4);
   posfy:=posfy + salto;
   if posfy > 260 then begin
    posfx:=5.5;
    posfy:=5;
    hoja:=hoja+1;
    RvS1.BaseReport.NewPage;
    posfy:=Logo(posfx,posfy,hoja)+ salto;   // llamamos al encabezado
    posfy:=Mostrar1(posfx,posfy)+ salto;
    final:=Mostrar1(posfx,posfy)+ salto + 14;
    posfy:=final;pso:=false;
   end;
  end;
 end;

 if PC1.ActivePageIndex = 2 then begin
  for t:=1 to datasource2.dataset.RecordCount do begin
   datasource2.dataset.RecNo:=t;
   posfy:=posfy-0.5;
   RVS1.BaseReport.SetFont('Arial',7);
   RVS1.BaseReport.PrintXY(posfx+6,posfy,trim(datasource2.dataset.Fields[0].AsString));
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource2.dataset.Fields[1].AsString),posfx+28);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource2.dataset.Fields[2].AsString),posfx+41);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource2.dataset.Fields[3].AsString),posfx+100);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource2.dataset.Fields[4].AsString),posfx+120);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource2.dataset.Fields[5].AsString)
   + '/' + trim(datasource2.dataset.Fields[6].AsString),posfx+196);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource2.dataset.Fields[8].AsString),posfx+221);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource2.dataset.Fields[7].AsString),posfx+230);
   RVS1.BaseReport.MoveTo(posw,posfy);
   posfy:=posfy+0.5;
     // hacemos la lineas internas de las grilla
   RVS1.BaseReport.Rectangle(posfx+4,posfy,posfx+280,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+27,posfy,posfx+280,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+40,posfy,posfx+280,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+99,posfy,posfx+280,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+119,posfy,posfx+280,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+195,posfy,posfx+280,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+220,posfy,posfx+280,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+229,posfy,posfx+280,posfy-4);
   posfy:=posfy + salto;
   if posfy > 200 then begin
    posfx:=5.5;
    posfy:=5;
    hoja:=hoja+1;
    RvS1.BaseReport.NewPage;
    RvS1.SystemPrinter.Orientation :=poLandScape;
    posfy:=Logo(posfx,posfy,hoja)+ salto;   // llamamos al encabezado
    posfy:=Mostrar1(posfx,posfy)+ salto;
    final:=Mostrar1(posfx,posfy)+ salto + 14;
    posfy:=final;pso:=false;
   end;
  end;
 end;

 if PC1.ActivePageIndex = 3 then begin
  for t:=1 to datasource4.dataset.RecordCount do begin
   datasource4.dataset.RecNo:=t;
   posfy:=posfy-0.5;
   RVS1.BaseReport.SetFont('Arial',7);
   RVS1.BaseReport.PrintXY(posfx+6,posfy,trim(datasource4.dataset.Fields[0].AsString));
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource4.dataset.Fields[2].AsString),posfx+20);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource4.dataset.Fields[1].AsString),posfx+30);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource4.dataset.Fields[4].AsString),posfx+41);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource4.dataset.Fields[5].AsString),posfx+60);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource4.dataset.Fields[6].AsString),posfx+140);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource4.dataset.Fields[7].AsString),posfx+210);
   RVS1.BaseReport.MoveTo(posw,posfy);
   posfy:=posfy+0.5;
   // hacemos la lineas internas de las grilla
   RVS1.BaseReport.Rectangle(posfx+4,posfy,posfx+280,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+19,posfy,posfx+280,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+29,posfy,posfx+280,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+40,posfy,posfx+280,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+59,posfy,posfx+280,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+139,posfy,posfx+280,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+209,posfy,posfx+280,posfy-4);
   posfy:=posfy + salto;
   if posfy > 200 then begin
    posfx:=5.5;
    posfy:=5;
    hoja:=hoja+1;
    RvS1.BaseReport.NewPage;
    RvS1.SystemPrinter.Orientation :=poLandScape;
    posfy:=Logo(posfx,posfy,hoja)+ salto;   // llamamos al encabezado
    posfy:=Mostrar1(posfx,posfy)+ salto;
    final:=Mostrar1(posfx,posfy)+ salto + 14;
    posfy:=final;pso:=false;
   end;
  end;
 end;

 if PC1.ActivePageIndex = 4 then begin
  for t:=1 to datasource5.dataset.RecordCount do begin
   datasource5.dataset.RecNo:=t;
   posfy:=posfy-0.5;
   RVS1.BaseReport.SetFont('Arial',8);
   RVS1.BaseReport.PrintXY(posfx+6,posfy,trim(datasource5.dataset.Fields[0].AsString));
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource5.dataset.Fields[1].AsString),posfx+21);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource5.dataset.Fields[2].AsString),posfx+40);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource5.dataset.Fields[3].AsString),posfx+56);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource5.dataset.Fields[4].AsString),posfx+68);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource5.dataset.Fields[5].AsString),posfx+82);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource5.dataset.Fields[6].AsString),posfx+103);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource5.dataset.Fields[7].AsString),posfx+121);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource5.dataset.Fields[8].AsString),posfx+144);
   posfy:=posfy+0.5;
   // hacemos la lineas internas de las grilla
   RVS1.BaseReport.Rectangle(posfx+4,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+20,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+39,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+55,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+67,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+81,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+102,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+120,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+143,posfy,posfx+200,posfy-4);
   posfy:=posfy + salto;
   if posfy > 260 then begin
    posfx:=5.5;
    posfy:=5;
    hoja:=hoja+1;
    RvS1.BaseReport.NewPage;
    posfy:=Logo(posfx,posfy,hoja)+ salto;   // llamamos al encabezado
    posfy:=Mostrar1(posfx,posfy)+ salto;
    final:=Mostrar1(posfx,posfy)+ salto + 14;
    posfy:=final;pso:=false;
   end;
  end;
 end;

 if PC1.ActivePageIndex = 5 then begin
  for t:=1 to datasource6.dataset.RecordCount do begin
   datasource6.dataset.RecNo:=t;
   posfy:=posfy-0.5;
   RVS1.BaseReport.SetFont('Arial',8);
   RVS1.BaseReport.PrintXY(posfx+6,posfy,trim(datasource6.dataset.Fields[0].AsString));
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource6.dataset.Fields[1].AsString),posfx+21);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource6.dataset.Fields[2].AsString),posfx+40);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource6.dataset.Fields[3].AsString),posfx+56);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource6.dataset.Fields[4].AsString),posfx+68);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource6.dataset.Fields[5].AsString),posfx+82);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource6.dataset.Fields[6].AsString),posfx+103);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource6.dataset.Fields[7].AsString),posfx+121);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource6.dataset.Fields[8].AsString),posfx+144);
   posfy:=posfy+0.5;
   // hacemos la lineas internas de las grilla
   RVS1.BaseReport.Rectangle(posfx+4,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+20,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+39,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+55,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+67,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+81,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+102,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+120,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+143,posfy,posfx+200,posfy-4);
   posfy:=posfy + salto;
   if posfy > 260 then begin
    posfx:=5.5;
    posfy:=5;
    hoja:=hoja+1;
    RvS1.BaseReport.NewPage;
    posfy:=Logo(posfx,posfy,hoja)+ salto;   // llamamos al encabezado
    posfy:=Mostrar1(posfx,posfy)+ salto;
    final:=Mostrar1(posfx,posfy)+ salto + 14;
    posfy:=final;pso:=false;
   end;
  end;
 end;

 if PC1.ActivePageIndex = 6 then begin
  for t:=1 to datasource7.dataset.RecordCount do begin
   datasource7.dataset.RecNo:=t;
   posfy:=posfy-0.5;
   RVS1.BaseReport.SetFont('Arial',8);
   RVS1.BaseReport.PrintXY(posfx+6,posfy,trim(datasource7.dataset.Fields[0].AsString));
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource7.dataset.Fields[1].AsString),posfx+21);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource7.dataset.Fields[2].AsString),posfx+40);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource7.dataset.Fields[3].AsString),posfx+56);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource7.dataset.Fields[4].AsString),posfx+68);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource7.dataset.Fields[5].AsString),posfx+82);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource7.dataset.Fields[6].AsString),posfx+103);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource7.dataset.Fields[7].AsString),posfx+121);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource7.dataset.Fields[8].AsString),posfx+144);
   posfy:=posfy+0.5;
   // hacemos la lineas internas de las grilla
   RVS1.BaseReport.Rectangle(posfx+4,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+20,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+39,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+55,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+67,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+81,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+102,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+120,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+143,posfy,posfx+200,posfy-4);
   posfy:=posfy + salto;
   if posfy > 260 then begin
    posfx:=5.5;
    posfy:=5;
    hoja:=hoja+1;
    RvS1.BaseReport.NewPage;
    posfy:=Logo(posfx,posfy,hoja)+ salto;   // llamamos al encabezado
    posfy:=Mostrar1(posfx,posfy)+ salto;
    final:=Mostrar1(posfx,posfy)+ salto + 14;
    posfy:=final;pso:=false;
   end;
  end;
 end;

 if PC1.ActivePageIndex = 7 then begin
  for t:=1 to datasource8.dataset.RecordCount do begin
   datasource8.dataset.RecNo:=t;
   posfy:=posfy-0.5;
   RVS1.BaseReport.SetFont('Arial',8);
   RVS1.BaseReport.PrintXY(posfx+6,posfy,trim(datasource8.dataset.Fields[0].AsString));
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource8.dataset.Fields[1].AsString),posfx+21);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource8.dataset.Fields[2].AsString),posfx+40);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource8.dataset.Fields[3].AsString),posfx+56);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource8.dataset.Fields[4].AsString),posfx+68);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource8.dataset.Fields[5].AsString),posfx+82);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource8.dataset.Fields[6].AsString),posfx+103);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource8.dataset.Fields[7].AsString),posfx+121);
   RVS1.BaseReport.MoveTo(posw,posfy);
   RVS1.BaseReport.PrintLeft(trim(datasource8.dataset.Fields[8].AsString),posfx+144);
   posfy:=posfy+0.5;
   // hacemos la lineas internas de las grilla
   RVS1.BaseReport.Rectangle(posfx+4,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+20,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+39,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+55,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+67,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+81,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+102,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+120,posfy,posfx+200,posfy-4);
   RVS1.BaseReport.Rectangle(posfx+143,posfy,posfx+200,posfy-4);
   posfy:=posfy + salto;
   if posfy > 260 then begin
    posfx:=5.5;
    posfy:=5;
    hoja:=hoja+1;
    RvS1.BaseReport.NewPage;
    posfy:=Logo(posfx,posfy,hoja)+ salto;   // llamamos al encabezado
    posfy:=Mostrar1(posfx,posfy)+ salto;
    final:=Mostrar1(posfx,posfy)+ salto + 14;
    posfy:=final;pso:=false;
   end;
  end;
 end;

except
end;
end;

procedure TLasMutales.CB1Click(Sender: TObject);
begin
 if not cb1.Checked  then begin
   coloca1(3);
   coloca1(6);
 end
 else begin
   coloca1(3);
   coloca1(6);
 end;
end;

procedure TLasMutales.ExportarDatos1Click(Sender: TObject);
var texto:widestring;
var txt:string;
var t,y:integer;
begin
  RE5.Clear;
  texto:='';
  for t:=0 to DataSource1.DataSet.FieldCount-1 do begin
  texto:=texto + DataSource1.DataSet.Fields[t].FieldName + chr(9);
  end;
  RE5.Lines.Add(texto);
  for y:=1 to DataSource1.DataSet.RecordCount do begin
   DataSource1.DataSet.RecNo:=y;
   texto:='';
  for t:=0 to DataSource1.DataSet.FieldCount-1 do begin
    texto:=texto + DataSource1.DataSet.Fields[t].AsString + chr(9);
  end;
  RE5.Lines.Add(texto);
  end;
  RE5.SelectAll;
  RE5.CopyToClipboard;
  messagedlgpos('Se Copiaron los Datos de las Acciones son Exito',mtwarning,[mbok],0,screen.Width div 3,screen.Height div 3);
end;

procedure TLasMutales.ExportarInhumados1Click(Sender: TObject);
var texto:widestring;
var txt:string;
var t,y:integer;
begin
  RE5.Clear;
  texto:='';
  for t:=0 to DataSource2.DataSet.FieldCount-1 do begin
  texto:=texto + DataSource2.DataSet.Fields[t].FieldName + chr(9);
  end;
  RE5.Lines.Add(texto);
  for y:=1 to DataSource2.DataSet.RecordCount do begin
   DataSource2.DataSet.RecNo:=y;
   texto:='';
  for t:=0 to DataSource2.DataSet.FieldCount-1 do begin
    texto:=texto + DataSource2.DataSet.Fields[t].AsString + chr(9);
  end;
  RE5.Lines.Add(texto);
  end;
  RE5.SelectAll;
  RE5.CopyToClipboard;
  messagedlgpos('Se Copiaron los Inhumados son Exito',mtwarning,[mbok],0,screen.Width div 3,screen.Height div 3);
end;

procedure TLasMutales.ExportarAccionesTransferidas1Click(Sender: TObject);
var texto:widestring;
var txt:string;
var t,y:integer;
begin
  RE5.Clear;
  texto:='';
  for t:=0 to DataSource4.DataSet.FieldCount-1 do begin
  texto:=texto + DataSource4.DataSet.Fields[t].FieldName + chr(9);
  end;
  RE5.Lines.Add(texto);
  for y:=1 to DataSource4.DataSet.RecordCount do begin
   DataSource4.DataSet.RecNo:=y;
   texto:='';
  for t:=0 to DataSource4.DataSet.FieldCount-1 do begin
    texto:=texto + DataSource4.DataSet.Fields[t].AsString + chr(9);
  end;
  RE5.Lines.Add(texto);
  end;
  RE5.SelectAll;
  RE5.CopyToClipboard;
  messagedlgpos('Se Copiaron las Acciones Transferidas son Exito',mtwarning,[mbok],0,screen.Width div 3,screen.Height div 3);
end;

procedure TLasMutales.ExportarAccionesLibres1Click(Sender: TObject);
var texto:widestring;
var txt:string;
var t,y:integer;
begin
  RE5.Clear;
  texto:='';
  for t:=0 to DataSource5.DataSet.FieldCount-1 do begin
  texto:=texto + DataSource5.DataSet.Fields[t].FieldName + chr(9);
  end;
  RE5.Lines.Add(texto);
  for y:=1 to DataSource5.DataSet.RecordCount do begin
   DataSource5.DataSet.RecNo:=y;
   texto:='';
  for t:=0 to DataSource5.DataSet.FieldCount-1 do begin
    texto:=texto + DataSource5.DataSet.Fields[t].AsString + chr(9);
  end;
  RE5.Lines.Add(texto);
  end;
  RE5.SelectAll;
  RE5.CopyToClipboard;
  messagedlgpos('Se Copiaron las Acciones Libres son Exito',mtwarning,[mbok],0,screen.Width div 3,screen.Height div 3);
end;

procedure TLasMutales.ExportarAccionesOcupadasNOTransf1Click(
  Sender: TObject);
var texto:widestring;
var txt:string;
var t,y:integer;
begin
  RE5.Clear;
  texto:='';
  for t:=0 to DataSource6.DataSet.FieldCount-1 do begin
  texto:=texto + DataSource6.DataSet.Fields[t].FieldName + chr(9);
  end;
  RE5.Lines.Add(texto);
  for y:=1 to DataSource6.DataSet.RecordCount do begin
   DataSource6.DataSet.RecNo:=y;
   texto:='';
  for t:=0 to DataSource6.DataSet.FieldCount-1 do begin
    texto:=texto + DataSource6.DataSet.Fields[t].AsString + chr(9);
  end;
  RE5.Lines.Add(texto);
  end;
  RE5.SelectAll;
  RE5.CopyToClipboard;
  messagedlgpos('Se Copiaron las Acciones Ocupadas NO Transferidas son Exito',mtwarning,[mbok],0,screen.Width div 3,screen.Height div 3);
end;

procedure TLasMutales.ExportarAccionesTransferidasNOOcupadas1Click(
  Sender: TObject);
var texto:widestring;
var txt:string;
var t,y:integer;
begin
  RE5.Clear;
  texto:='';
  for t:=0 to DataSource7.DataSet.FieldCount-1 do begin
  texto:=texto + DataSource7.DataSet.Fields[t].FieldName + chr(9);
  end;
  RE5.Lines.Add(texto);
  for y:=1 to DataSource7.DataSet.RecordCount do begin
   DataSource7.DataSet.RecNo:=y;
   texto:='';
  for t:=0 to DataSource7.DataSet.FieldCount-1 do begin
    texto:=texto + DataSource7.DataSet.Fields[t].AsString + chr(9);
  end;
  RE5.Lines.Add(texto);
  end;
  RE5.SelectAll;
  RE5.CopyToClipboard;
  messagedlgpos('Se Copiaron las Acciones Transferidas NO Ocupadas con Exito',mtwarning,[mbok],0,screen.Width div 3,screen.Height div 3);
end;

procedure TLasMutales.ExportarAccionesTransferidasyOcupadas1Click(
  Sender: TObject);
var texto:widestring;
var txt:string;
var t,y:integer;
begin
  RE5.Clear;
  texto:='';
  for t:=0 to DataSource8.DataSet.FieldCount-1 do begin
  texto:=texto + DataSource8.DataSet.Fields[t].FieldName + chr(9);
  end;
  RE5.Lines.Add(texto);
  for y:=1 to DataSource8.DataSet.RecordCount do begin
   DataSource8.DataSet.RecNo:=y;
   texto:='';
  for t:=0 to DataSource8.DataSet.FieldCount-1 do begin
    texto:=texto + DataSource8.DataSet.Fields[t].AsString + chr(9);
  end;
  RE5.Lines.Add(texto);
  end;
  RE5.SelectAll;
  RE5.CopyToClipboard;
  messagedlgpos('Se Copiaron las Acciones Transferidas Y Ocupadas con Exito',mtwarning,[mbok],0,screen.Width div 3,screen.Height div 3);
end;

end.

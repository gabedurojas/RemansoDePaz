unit ParcelasConsilidados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid, ADODB,
  Mask, DBCtrls, DB, Buttons, JvExButtons, JvBitBtn ,DBClient,StrUtils,
  ClaseSistemas,Unidad, ClaseFunciones,ClaseTiposSectores, JvExGrids,
  JvStringGrid,ClaseParcelasConsolidados,ClaseParcelasConsolidadosDeudas,ClaseParcelasConsolidadosPagos,
  JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  ToolWin,WSDLIntf,ClaseParcelasConsolidadosPeriodos, RpDefine, RpRave,
  RpBase, RpSystem, ExtCtrls;

type
  TLosConsolidados = class(TForm)
    GroupBox1: TGroupBox;
    Label14: TLabel;
    ElSector: TComboBox;
    Label29: TLabel;
    LaAccion: TComboBox;
    ODNI: TEdit;
    LB1: TLabel;
    Busca: TJvBitBtn;
    DBGrid1: TJvDBGrid;
    Barra1: TStatusBar;
    DataSource1: TDataSource;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label15: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    Label13: TLabel;
    Label4: TLabel;
    D1: TDBEdit;
    D2: TDBEdit;
    D8: TDBEdit;
    D4: TDBEdit;
    D6: TDBEdit;
    D3: TDBEdit;
    D5: TDBEdit;
    GroupBox4: TGroupBox;
    GrillaT: TJvStringGrid;
    Label1: TLabel;
    preciop: TEdit;
    Label2: TLabel;
    DPrecio: TEdit;
    Label5: TLabel;
    IMPORTEE: TEdit;
    FECHA: TJvDatePickerEdit;
    Label35: TLabel;
    Label54: TLabel;
    recibonro: TEdit;
    Label52: TLabel;
    OBSERV: TEdit;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    bGuardar: TJvBitBtn;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
    bSalir: TJvBitBtn;
    DataSource11: TDataSource;
    Label8: TLabel;
    TPOOBJ: TComboBox;
    GroupBox5: TGroupBox;
    GR2: TStringGrid;
    periodos: TJvBitBtn;
    RvS: TRvSystem;
    Image1: TImage;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure limpiar(nro:byte);
    procedure ElSectorExit(Sender: TObject);
    procedure ElSectorKeyPress(Sender: TObject; var Key: Char);
    procedure LaAccionExit(Sender: TObject);
    procedure LaAccionKeyPress(Sender: TObject; var Key: Char);
    procedure BuscaClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FECHAExit(Sender: TObject);
    procedure preciopExit(Sender: TObject);
    procedure FECHAKeyPress(Sender: TObject; var Key: Char);
    procedure preciopKeyPress(Sender: TObject; var Key: Char);
    procedure IMPORTEEKeyPress(Sender: TObject; var Key: Char);
    procedure IMPORTEEExit(Sender: TObject);
    procedure recibonroKeyPress(Sender: TObject; var Key: Char);
    procedure bSalirClick(Sender: TObject);
    procedure preciopChange(Sender: TObject);
    procedure bGuardarClick(Sender: TObject);
    procedure recibonroExit(Sender: TObject);
    procedure OBSERVKeyPress(Sender: TObject; var Key: Char);
    procedure TPOOBJExit(Sender: TObject);
    procedure TPOOBJKeyPress(Sender: TObject; var Key: Char);
    procedure periodosClick(Sender: TObject);
    procedure GR2Click(Sender: TObject);
    procedure GR2DblClick(Sender: TObject);
    procedure RvSPrint(Sender: TObject);
  private
      gh:boolean;{Controla que no hubiere errores en la carga de datos}
    { Private declarations }
  public
    ParcelasConsolidados:TParcelasConsolidados;
    ParcelasConsolidadosDeudas:TParcelasConsolidadosDeudas;
    ParcelasConsolidadosPagos:TParcelasConsolidadosPagos;
    ParcelasConsolidadosPeriodos:TParcelasConsolidadosPeriodos;
    //ParcelasTitulares:TParcelasTitulares;
      Sistemas:TSistemas;
      IdCombos:array of array of string; // para los combobox
      Funciones:TFuncionesVarias;      //DataMante:TClientDataSet;
      Dtcombo,DataSetC,DataSet,DataSet1,DataSetCli,DataSetT,DataGer,DataConsol,DataResul,DtCombPeri:TClientDataSet; //declaro los DataSet
    { Public declarations }
  end;

var
  LosConsolidados: TLosConsolidados;

implementation

uses Modulo;

{$R *.dfm}

procedure TLosConsolidados.FormActivate(Sender: TObject);
begin
if not gh then begin
  gh:=true;
  setlength(IdCombos,3);
  GrillaT.Cells[0,0]:='Orden';
  GrillaT.Cells[1,0]:='Id';
  GrillaT.Cells[2,0]:='Nombre';
  GrillaT.Cells[3,0]:='TipoDNI';
  GrillaT.Cells[4,0]:='DNI';
  GrillaT.Cells[5,0]:='Domicilio';
  GrillaT.Cells[6,0]:='NroT';
  GrillaT.Cells[7,0]:='MDF';
  GrillaT.Cells[8,0]:='Cuif';
  GrillaT.Cells[9,0]:='FecNac';
  GrillaT.Cells[10,0]:='Nacionalidad';
  GrillaT.Cells[11,0]:='EstCivil';
  GrillaT.Cells[12,0]:='Ciudad';
  GrillaT.Cells[13,0]:='Telefonos';
  coloca1(6);
  coloca1(7);
  fecha.Text:=strcut(Fec_System(),10);
  elsector.SetFocus;
end;
end;

procedure TLosConsolidados.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TLosConsolidados.limpiar(nro:byte);
var p,u:integer;
begin
  if nro=1 then  begin
    odni.Text:='00000000';

    DataSource1.DataSet.Free;
    d1.Clear; d2.Clear;    d3.Clear;
    d4.Clear;d5.Clear;   d6.Clear;

   fecha.Text:=strcut(fec_system(),10);

   for p:=0 to grillat.ColCount-1 do
    for u:=1 to grillat.RowCount-1 do grillat.Cells[p,u]:='';
    grillat.RowCount:=2;

   preciop.Text:='0000.00';
   importee.Text:='0000.00';
   dprecio.Text:='0000.00';
   recibonro.Clear;
   observ.Clear;

     laaccion.Clear;
    elsector.ItemIndex:=0;
    elsector.SetFocus;
  end;

end;


procedure TLosConsolidados.Coloca1(nro:byte);
var txtw:widestring;
    txt,sex,VColor,sec,ElMes,ElAnio,elperiodo:string;
    t,y,action:integer;
    m:boolean;
    Funciones:TFuncionesVarias;
    TiposSectores:TTiposSectores;
    cons:widestring;
    Param:TWideStrings;
begin
IF NRO=0 then begin
  try
    ElMes:=strcut_midle(trim(FECHA.Text),4,5);
    ElAnio:=RightStr(trim(FECHA.Text),4);
    elperiodo:=elanio+''+elmes;
        DataResul.Free;
        DataResul:=TClientdataSet.Create(nil);
        Sistemas:=TSistemas.Create(nil);
        Sistemas.ConnectionString:=modulo2.Conexion;
        Param:=TWideStrings.Create;
        Param.Add('4');
        Param.Add(elperiodo);
        Param.Add(trim(odni.Text));
        Param.Add('1');
        if not Sistemas.ListarSP(Param,'RecreaMovimientos',DataResul) then
           Barra1.Panels[2].Text:=TRIM(DataResul.Fields[0].AsString)
        else begin
           Barra1.Panels[2].Text:=TRIM(DataResul.Fields[0].AsString);
        end;
        Param.Free;
        Sistemas.Free;
  except
    Barra1.Panels[2].Text:='Error al Intentar Recrear los Datos';
  end;

end;
if nro=1 then begin
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
if nro=2 then begin
  DataSet.Free;
  DataSet:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  sec:=IdCombos[1,ELSECTOR.ItemIndex];
  txtw:='SELECT * FROM Fn_VistaParcelas (null,' + chr(39) + sec + chr(39) + ',' +
    'null,null,0)  where (parcela = '+  trim(laaccion.Text)+')';
  if not Funciones.Listar(txtw,DataSet) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  odni.Text:=DataSet.Fields[0].AsString;
  Funciones.Free;
end;
if nro =3 then  begin
  DtCombPeri:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  if (IdCombos[2,TPOOBJ.ItemIndex] = '3') then begin    /// estado de cueta mantenimiento
     Gr2.Cells[0,0]:='Periodo';
     Gr2.Cells[1,0]:='ImpCuota';
     Gr2.Cells[2,0]:='TotalCuota';
    if not Funciones.Listar('select Periodo,ImporteCuota,TotalCuota from EstadoCuentaMantenimiento  ' +
    '(' + trim(d1.Text) + ',getdate(),0) where EstadoPago=''DEUDA'' order by periodo',DtCombPeri) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
    else begin
        for t:=1 to DtCombPeri.RecordCount do begin
        DtCombPeri.RecNo:=t;
        GR2.RowCount:=t+1;
        GR2.Cells[0,t]:=DtCombPeri.Fields[0].AsString;
        GR2.Cells[1,t]:=DtCombPeri.Fields[1].AsString;
        GR2.Cells[2,t]:=DtCombPeri.Fields[2].AsString;
        GR2.Cells[3,t]:='';
      end;
    end;
  end;

  if (IdCombos[2,TPOOBJ.ItemIndex] = '1') then begin  /// estado de cueta ventas
     Gr2.Cells[0,0]:='NroCuota';
     Gr2.Cells[1,0]:='ImpCuota';
     Gr2.Cells[2,0]:='TotalCuota';
    if not Funciones.Listar('select NroCuota,ImporteCuota,TotalCuota from EstadoCuentaVentas ' +
    '(' + trim(d1.Text) + ',getdate(),0) where Periodo <> 999999 and EstadoPago=''deuda'' order by 1',DtCombPeri) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
    else begin
        for t:=1 to DtCombPeri.RecordCount do begin
        DtCombPeri.RecNo:=t;
        GR2.RowCount:=t+1;
        GR2.Cells[0,t]:=DtCombPeri.Fields[0].AsString;
        GR2.Cells[1,t]:=DtCombPeri.Fields[1].AsString;
        GR2.Cells[2,t]:=DtCombPeri.Fields[2].AsString;
        GR2.Cells[3,t]:='';
      end;
    end;
  end;
  DtCombPeri.Free;
end;
if nro=4 then begin   /// carga de las acciones
    LAACCION.Clear;
    DtCombo.Free;
    Dtcombo:=TClientDataSet.Create(nil);
    Funciones:=TFuncionesVarias.Create(nil);
    Funciones.ConnectionString:=modulo2.Conexion;
    sec:=IdCombos[1,ELSECTOR.ItemIndex];
      txtw:='SELECT dbo.Parcelas.Parcela FROM dbo.Parcelas INNER JOIN '
      + ' dbo.TiposPlazas ON dbo.Parcelas.IdPlaza = dbo.TiposPlazas.IdPlaza '
      + ' WHERE (dbo.Parcelas.Sector = ' + chr(39) + sec + chr(39) + ') ORDER BY dbo.Parcelas.Parcela ';
      if Funciones.Listar(txtw,Dtcombo) then begin
        SetLength(IdCombos[0],Dtcombo.RecordCount);
        for t:=1 to Dtcombo.RecordCount  do begin
          Dtcombo.RecNo:=t;
          LAACCION.Items.Insert(t-1,trim(Dtcombo.Fields[0].AsString));
          IdCombos[0,t-1]:=Dtcombo.Fields[0].AsString;
          action:=strtoint(Dtcombo.Fields[0].AsString);
        end;
      end
      else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',
        mtError,[mbok],0);
    funciones.Free;
    LAACCION.ItemIndex:=0;
end;
if nro=6 then begin   //tipos sectores
    ELSECTOR.Clear;
    DtCombo.Free;
    Dtcombo:=TClientDataSet.Create(nil);
    TiposSectores:=TTiposSectores.Create(nil);
    TiposSectores.ConnectionString:=modulo2.Conexion;
    txtw:='SELECT Sector FROM TiposSectores';
    if TiposSectores.Listar(txtw,DtCombo) then begin
      SetLength(IdCombos[1],DtCombo.RecordCount);
      for t:=1 to DtCombo.RecordCount  do begin
        DtCombo.RecNo:=t;
        ELSECTOR.Items.Insert(t-1,trim(DtCombo.Fields[0].AsString));
        IdCombos[1,t-1]:=DtCombo.Fields[0].AsString;
      end;
    end
    else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    TiposSectores.Free;
    ELSECTOR.ItemIndex:=0;
end;
if nro = 7 then begin
    DtCombo.Free;
    DtCombo:=TClientdataSet.Create(nil);
    Funciones:=TFuncionesVarias.Create(nil);
    Funciones.ConnectionString:=modulo2.Conexion;
    if not Funciones.Listar('SELECT NroTipo,Detalle,InicioDeuda FROM TiposObjetos Order by Detalle',DtCombo) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
    else begin
      SetLength(IdCombos[2],DtCombo.RecordCount);
      for t:=1 to DtCombo.RecordCount  do begin
        DtCombo.RecNo:=t;
        TPOOBJ.Items.Insert(t-1,trim(DtCombo.Fields[1].AsString));
        IdCombos[2,t-1]:=DtCombo.Fields[0].AsString;
      end;
    end;
    Funciones.Free;
  TPOOBJ.ItemIndex:=0;
end;
if nro=12 then begin
  DtCombo.Free;
  DtCombo:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='Select *,(SELECT * FROM LosTelefonosClientes (Cuif)) as telef  FROM vistalostitularesminoristas Where (NroAccion = ' + trim(odni.Text) +') and (nivel > 0) ';
  if not Funciones.listar(txtw,DtCombo) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Funciones.Free;
  for t:=0 to grillat.ColCount-1 do
    for y:=1 to grillat.RowCount-1 do grillat.Cells[t,y]:='';
     for t:=1 to DtCombo.RecordCount  do begin
    DtCombo.RecNo:=t;
    grillat.RowCount:=t+1;
    grillat.Cells[0,t]:=completa1(inttostr(t),2,'0');
    grillat.Cells[1,t]:=trim(DtCombo.Fields[0].AsString);
    grillat.Cells[2,t]:=trim(DtCombo.Fields[1].AsString);
    grillat.Cells[3,t]:=trim(DtCombo.Fields[2].AsString);
    grillat.Cells[4,t]:=trim(DtCombo.Fields[3].AsString);
    grillat.Cells[5,t]:=trim(DtCombo.Fields[4].AsString);
    grillat.Cells[6,t]:=trim(DtCombo.Fields[5].AsString);
    grillat.Cells[7,t]:=trim(DtCombo.Fields[6].AsString);
    grillat.Cells[8,t]:=trim(DtCombo.Fields[7].AsString);
    grillat.Cells[9,t]:=trim(DtCombo.Fields[9].AsString);
    grillat.Cells[10,t]:=trim(DtCombo.Fields[8].AsString);
    grillat.Cells[11,t]:=trim(DtCombo.Fields[10].AsString);
    grillat.Cells[12,t]:=trim(DtCombo.Fields[11].AsString);
    grillat.Cells[13,t]:=trim(DtCombo.Fields[13].AsString);
  end;
end;
end;


procedure TLosConsolidados.ElSectorExit(Sender: TObject);
begin
if ElSector.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Sector Ingresado!!',mterror,[mbok],0);
  ElSector.SetFocus;
end;
end;

procedure TLosConsolidados.ElSectorKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  coloca1(4);
  laaccion.Enabled:=true;
  laaccion.SetFocus;
end;
end;

procedure TLosConsolidados.LaAccionExit(Sender: TObject);
begin
if LaAccion.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el N° de Acción Ingresado!!',mterror,[mbok],0);
  LaAccion.SetFocus;
end;
end;

procedure TLosConsolidados.LaAccionKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  coloca1(2);
  busca.SetFocus;
end;
end;

procedure TLosConsolidados.BuscaClick(Sender: TObject);
begin
Coloca1(1);
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

procedure TLosConsolidados.DBGrid1CellClick(Column: TColumn);
begin
if not (DataSet.IsEmpty) then begin
     D1.DataField:='NroAccion';
     D2.DataField:='NroTitulo';
     D3.DataField:='Sector';
     D4.DataField:='Detalle';
     D5.DataField:='Parcela';
     D6.DataField:='Activo';
     D8.DataField:='TipoColor';
     coloca1(12);
     fecha.SetFocus;
end;
end;

procedure TLosConsolidados.FECHAExit(Sender: TObject);
var fec:Tdatetime;
begin
try
 fec:=strtodate(trim(FECHA.Text));
except
  messagedlgpos('La fecha es Erronea!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  FECHA.SetFocus;
end;
end;

procedure TLosConsolidados.preciopExit(Sender: TObject);
begin
if (trim(preciop.text)='') or (trim(preciop.text)='0')  or (trim(preciop.text)='0000.00') then begin
  messagedlg('EL Valor Ingresado de la Entrega No es Válido',mterror,[mbok],0);
  preciop.text:='0000.00';
  preciop.SetFocus;
end
end;

procedure TLosConsolidados.FECHAKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then preciop.SetFocus;
end;

procedure TLosConsolidados.preciopKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
   importee.Text:='0000.00';
   //DPRECIO.Text:=preciop.text;
   //observ.Text:='Deuda Total consolidada por ' + trim(tpoobj.Text) + ' $ '+ trim(preciop.Text) + ' al dia: '+ trim(fecha.Text);
   tpoobj.SetFocus
end
else begin
  if ( StrScan('0123456789.',Key) <> nil ) or
     ( Key = Char(VK_BACK) ) then
  else Key := #0;
end;
end;

procedure TLosConsolidados.IMPORTEEKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
   recibonro.SetFocus
end
else begin
  if ( StrScan('0123456789.',Key) <> nil ) or
     ( Key = Char(VK_BACK) ) then
  else Key := #0;
end;
end;

procedure TLosConsolidados.IMPORTEEExit(Sender: TObject);
begin
if (trim(IMPORTEE.text)='') or (trim(IMPORTEE.text)='0')  or (trim(IMPORTEE.text)='0000.00') then begin
  messagedlg('EL Valor Ingresado de la Entrega No es Válido',mterror,[mbok],0);
  IMPORTEE.text:='0000.00';
  IMPORTEE.SetFocus;
end
else begin
  dprecio.Text:= redondeo(floattostr((strtofloat(preciop.Text) - strtofloat(importee.Text))),2);
end;
end;

procedure TLosConsolidados.recibonroKeyPress(Sender: TObject;
  var Key: Char);
  var obs:string;
begin
obs:='Deuda Total consolidada $ '+ trim(preciop.Text) +' anticipo  $ '+ trim(importee.Text)
     +' segun recibo '+ trim(recibonro.Text) +'  - saldo de $ ' + trim(
       dprecio.Text) ;
if key = #13 then begin
  observ.Text:=obs;
  observ.SetFocus;
end;
end;

procedure TLosConsolidados.bSalirClick(Sender: TObject);
begin
close;
end;

procedure TLosConsolidados.preciopChange(Sender: TObject);
begin
bguardar.Enabled:=true;
end;

procedure TLosConsolidados.bGuardarClick(Sender: TObject);
var el_dni,ElId,valor:string;
var ac,ad,ap,Ok:boolean;
var gf,t,p,estat,estac,ger:integer;
var txtw:widestring;
begin
      DataConsol.Free;
      DataConsol:=TClientdataSet.Create(nil);
      Funciones:=TFuncionesVarias.Create(nil);
      Funciones.ConnectionString:=modulo2.Conexion;
      txtw:='SELECT COUNT(*) AS Expr1 FROM  ParcelasConsolidados where (NroAccion = '+ trim(odni.Text) +')';
      if not Funciones.Listar(txtw,DataConsol) then
        messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
      Funciones.Free;
      ger:=strtoint(DataConsol.Fields[0].AsString);
      if ger <> 0  then  begin
            ParcelasConsolidados:=TParcelasConsolidados.Create(nil);
            ParcelasConsolidados.ConnectionString:=modulo2.Conexion;
            txtw:='UPDATE ParcelasConsolidados SET activo= 0 WHERE (nroaccion=' + trim(odni.Text) + ')';
            ac:=ParcelasConsolidados.ListarSinResp(txtw);
            ParcelasConsolidados.Free;

            ParcelasConsolidados:=TParcelasConsolidados.Create(nil);
            ParcelasConsolidados.ConnectionString:=modulo2.Conexion;
            gf:=messagedlgpos('Desea Agregar los Datos de esta Deuda Consolidada?',mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
            if gf = 1 then begin
             ParcelasConsolidados.C_NroAccion_IX1:=StrToInt(d1.Text);
             ParcelasConsolidados.C_FechaVigencia_IX3:=trim(fecha.Text);
             ParcelasConsolidados.C_Activo:=true;
             ParcelasConsolidados.C_Observaciones:=trim(OBSERV.text);
             ParcelasConsolidados.C_Usu_A:=modulo2.nro_usu;
             ac:=ParcelasConsolidados.Agrega;
             valor:=ParcelasConsolidados.Identidad;
             ParcelasConsolidados.Free;
               if ac then begin
                   ParcelasConsolidadosDeudas:=TParcelasConsolidadosDeudas.Create(nil);
                   ParcelasConsolidadosDeudas.ConnectionString:=modulo2.Conexion;
                   ParcelasConsolidadosDeudas.C_NroAccion_IX1:=StrToInt(d1.Text);
                   ParcelasConsolidadosDeudas.C_Codigo_IX3:=0;
                   ParcelasConsolidadosDeudas.C_CantCuotas:=0;
                   ParcelasConsolidadosDeudas.C_Capital:=StrtoFloat(trim(preciop.Text));
                   ParcelasConsolidadosDeudas.C_Interes:=0;
                   ParcelasConsolidadosDeudas.C_TotalDeuda:=StrtoFloat(trim(preciop.Text));
                   ParcelasConsolidadosDeudas.C_Usu_A:=modulo2.nro_usu;
                   ParcelasConsolidadosDeudas.C_Confirmado:=true;
                   ParcelasConsolidadosDeudas.C_Usu_Confirma:=modulo2.nro_usu;
                   ParcelasConsolidadosDeudas.C_FechaConfirma_IX4:=trim(fecha.Text);
                   ParcelasConsolidadosDeudas.C_Anulado:=false;
                   ParcelasConsolidadosDeudas.C_EnMovimientos:=true;
                   ad:=ParcelasConsolidadosDeudas.Agrega;
                   ParcelasConsolidadosDeudas.free;
                    if ad then begin
                       /// guadamos los periodos involucrados
                          for t:=1 to GR2.RowCount-1 do begin
                            if trim(GR2.Cells[3,t]) = 'X' then begin
                              ParcelasConsolidadosPeriodos:=TParcelasConsolidadosPeriodos.Create(nil);
                              ParcelasConsolidadosPeriodos.ConnectionString:=modulo2.Conexion;
                              ParcelasConsolidadosPeriodos.C_NroAccion:=StrToInt(d1.Text);
                              ParcelasConsolidadosPeriodos.C_NroTipoObjeto:=IdCombos[2,TPOOBJ.ItemIndex];
                              ParcelasConsolidadosPeriodos.C_IdConsolidado:=strtoint(valor);
                              ParcelasConsolidadosPeriodos.C_Periodo:=trim(GR2.Cells[0,t]);
                              ParcelasConsolidadosPeriodos.C_ImporteCuota:=trim(GR2.Cells[1,t]);
                              ParcelasConsolidadosPeriodos.C_TotalCuota:=trim(GR2.Cells[2,t]);
                              Ok:=ParcelasConsolidadosPeriodos.Agrega;
                              ParcelasConsolidadosPeriodos.Free;
                              if Ok then Barra1.Panels[1].Text:='Periodos guardados Correctamente'
                                         else Barra1.Panels[1].Text:='Periodos guardados con ERROR';
                            end;
                          end;
                       messagedlg('Se ha Guardado la nueva DEUDA CONSOLIDADA con Exito',
                       mtConfirmation,[mbok],0);
                       rvs.Execute;
                       coloca1(0);
                       limpiar(1);
                    end
                    else begin
                       messagedlg('Error al Guardar esta DEUDA CONSOLIDADA. Consulte con un Administrador',mtError,[mbok],0);
                         limpiar(1);
                    end;
               end;
            end;
      end
      else begin
        ParcelasConsolidados:=TParcelasConsolidados.Create(nil);
        ParcelasConsolidados.ConnectionString:=modulo2.Conexion;
        gf:=messagedlgpos('Desea Agregar los Datos de esta Deuda Consolidada?',mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
        if gf = 1 then begin
         ParcelasConsolidados.C_NroAccion_IX1:=StrToInt(d1.Text);
         ParcelasConsolidados.C_FechaVigencia_IX3:=trim(fecha.Text);
         ParcelasConsolidados.C_Activo:=true;
         ParcelasConsolidados.C_Observaciones:=trim(OBSERV.text);
         ParcelasConsolidados.C_Usu_A:=modulo2.nro_usu;
         ac:=ParcelasConsolidados.Agrega;
         valor:=ParcelasConsolidados.Identidad;
         ParcelasConsolidados.Free;
           if ac then begin
               ParcelasConsolidadosDeudas:=TParcelasConsolidadosDeudas.Create(nil);
               ParcelasConsolidadosDeudas.ConnectionString:=modulo2.Conexion;
               ParcelasConsolidadosDeudas.C_NroAccion_IX1:=StrToInt(d1.Text);
               ParcelasConsolidadosDeudas.C_Codigo_IX3:=0;
               ParcelasConsolidadosDeudas.C_CantCuotas:=0;
               ParcelasConsolidadosDeudas.C_Capital:=StrtoFloat(trim(preciop.Text));
               ParcelasConsolidadosDeudas.C_Interes:=0;
               ParcelasConsolidadosDeudas.C_TotalDeuda:=StrtoFloat(trim(preciop.Text));
               ParcelasConsolidadosDeudas.C_Usu_A:=modulo2.nro_usu;
               ParcelasConsolidadosDeudas.C_Confirmado:=true;
               ParcelasConsolidadosDeudas.C_Usu_Confirma:=modulo2.nro_usu;
               ParcelasConsolidadosDeudas.C_FechaConfirma_IX4:=trim(fecha.Text);
               ParcelasConsolidadosDeudas.C_Anulado:=false;
               ParcelasConsolidadosDeudas.C_EnMovimientos:=true;
               ad:=ParcelasConsolidadosDeudas.Agrega;
               ParcelasConsolidadosDeudas.free;
                if ad then begin
                        /// guadamos los periodos involucrados
                          for t:=1 to GR2.RowCount-1 do begin
                            if trim(GR2.Cells[3,t]) = 'X' then begin
                              ParcelasConsolidadosPeriodos:=TParcelasConsolidadosPeriodos.Create(nil);
                              ParcelasConsolidadosPeriodos.ConnectionString:=modulo2.Conexion;
                              ParcelasConsolidadosPeriodos.C_NroAccion:=StrToInt(d1.Text);
                              ParcelasConsolidadosPeriodos.C_NroTipoObjeto:=IdCombos[2,TPOOBJ.ItemIndex];
                              ParcelasConsolidadosPeriodos.C_IdConsolidado:=strtoint(valor);
                              ParcelasConsolidadosPeriodos.C_Periodo:=trim(GR2.Cells[0,t]);
                              ParcelasConsolidadosPeriodos.C_ImporteCuota:=trim(GR2.Cells[1,t]);
                              ParcelasConsolidadosPeriodos.C_TotalCuota:=trim(GR2.Cells[2,t]);
                              Ok:=ParcelasConsolidadosPeriodos.Agrega;
                              ParcelasConsolidadosPeriodos.Free;
                              if Ok then Barra1.Panels[1].Text:='Periodos guardados Correctamente'
                                         else Barra1.Panels[1].Text:='Periodos guardados con ERROR';
                            end;
                          end;
                   messagedlg('Se ha Guardado la nueva DEUDA CONSOLIDADA con Exito',
                   mtConfirmation,[mbok],0);
                   coloca1(0);
                   limpiar(1);
                end
                else begin
                   messagedlg('Error al Guardar esta DEUDA CONSOLIDADA. Consulte ' +
                     'con un Administrador',mtError,[mbok],0);
                     limpiar(1);
                end;
           end;
        end;
      end;
end;

procedure TLosConsolidados.recibonroExit(Sender: TObject);
var obs:string;
begin
obs:='Deuda Total consolidada por ' + trim(tpoobj.Text) + ' $ '+ trim(preciop.Text) +' anticipo  $ '+ trim(importee.Text)
     +' segun recibo '+ trim(recibonro.Text) +'  - saldo de $ ' + trim(
       dprecio.Text) ;
  observ.Text:=obs;
end;

procedure TLosConsolidados.OBSERVKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then bguardar.SetFocus;
end;

procedure TLosConsolidados.TPOOBJExit(Sender: TObject);
begin
if TPOOBJ.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Tipo de Objeto Ingresado!!',mterror,[mbok],0);
  TPOOBJ.SetFocus;
end
else begin
  coloca1(3);
   if (IdCombos[2,TPOOBJ.ItemIndex] = '3')  or (IdCombos[2,TPOOBJ.ItemIndex] ='1') then
       GroupBox5.Visible:=true
   else GroupBox5.Visible:=false;
end;
end;

procedure TLosConsolidados.TPOOBJKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  observ.SetFocus;
end;
end;

procedure TLosConsolidados.periodosClick(Sender: TObject);
begin
GRoupbox5.Visible:=false;
 observ.Text:='Deuda Total consolidada por ' + trim(tpoobj.Text) + ' $ '+ trim(
   preciop.Text) + ' al dia: '+ trim(fecha.Text);
observ.SetFocus;
end;

procedure TLosConsolidados.GR2Click(Sender: TObject);
begin
  if GR2.Cells[3,GR2.Row] = '' then GR2.Cells[3,GR2.Row]:='X'
  else GR2.Cells[3,GR2.Row]:='';
  periodos.Enabled:=true;
end;

procedure TLosConsolidados.GR2DblClick(Sender: TObject);
begin
  if GR2.Cells[3,GR2.Row] = '' then GR2.Cells[3,GR2.Row]:='X'
  else GR2.Cells[3,GR2.Row]:='';
  periodos.Enabled:=true;
end;

procedure TLosConsolidados.RvSPrint(Sender: TObject);
var posx,posy:double;
    t,hoja:integer;
    Imagen1:TBitmap;
    PathLogo:string;
    ElMes,ElAnio,ElDia,txt:string;
begin
posx:=1;
posy:=2;
hoja:=1;
with RvS do begin
  Imagen1 := TBitMap.Create;
  PathLogo:=modulo2.path_todo + '\Formularios\FRM-11.01.jpg';
  if FileExists(PathLogo) then begin
    Image1.Picture.LoadFromFile(PathLogo);
    Imagen1.Assign(Image1.Picture.Graphic);
    BaseReport.PrintBitmapRect(1,1,posx+215,posy+290,Imagen1);
  end;
  Imagen1.Free;
  ElMes:=el_mes(strtoint(strcut_midle(FECHA.Text,4,5)));
  ElAnio:=strcut_midle(FECHA.Text,7,10);
  ElDia:=LeftStr(FECHA.Text,2);
  BaseReport.SetFont('Arial Black',8);
  BaseReport.FontColor:=clRED;
  BaseReport.PrintXY(posx+143,posy+31,ElDia);
  BaseReport.PrintXY(posx+154,posy+31,ElMes);
  BaseReport.PrintXY(posx+195,posy+31,ElAnio);
//  BaseReport.PrintXY(posx+37,posy+39,trim(grillaT.Cells[2,1]));//trim(DBEdit7.text));     //Nombre
//  BaseReport.PrintXY(posx+159,posy+39,trim(grillat.cells[3,1]));//trim(DBEdit2.text));    //Tipo
//  BaseReport.PrintXY(posx+178,posy+39,trim(grillat.cells[4,1]));//trim(DBEdit8.text));    //Nro Doc
//  BaseReport.PrintXY(posx+38,posy+44,trim(grillat.cells[5,1]));//trim(DBEdit4.text));    //Domicilio
//  BaseReport.PrintXY(posx+150,posy+44,trim(grillat.cells[12,1]));//trim(DBEdit1.text));   //Ciudad
//  BaseReport.PrintXY(posx+113,posy+66,trim(D4.text));   //Plaza
//  BaseReport.PrintXY(posx+174,posy+66,trim(D3.text));   //Sector
//  BaseReport.PrintXY(posx+14,posy+71,trim(D5.text));    //Parcela
//  BaseReport.PrintXY(posx+23,posy+76,'.');               //Zona
//  BaseReport.PrintXY(posx+57,posy+76,trim(DC.text));     //Categoria
//  BaseReport.PrintXY(posx+89,posy+76,'.');               //Calificada
//  BaseReport.PrintXY(posx+114,posy+76,'.');              //Plan
//
//  //Importe Venta
//  BaseReport.PrintXY(posx+25,posy+157,NumToPesos(trim(DPrecio.text))); //Precio Letras
//  BaseReport.PrintXY(posx+157,posy+157,trim(DPrecio.text));            //Precio Numero


//  if length(trim(observ.Text)) < 80 then BaseReport.PrintXY(posx+50,posy+184,trim(observ.Text))
//    else BaseReport.PrintXY(posx+14,posy+188,trim(observ.Text));


end;
end;

end.

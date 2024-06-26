unit ConfirmaVtaServ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, JvExButtons, JvBitBtn, ComCtrls, ToolWin,ADODB,
  WSDLIntf,ClaseFunciones,Unidad, ClaseParcelasMantenimiento,StrUtils,DBClient,
  ClaseParcelasServicios,ClaseParcelasServiciosEstados,ClaseParcelasVentas,ClaseParcelasVentasPagos,
  ClaseParcelasInhumados,ClaseParcelasServiciosPagos, RpDefine, RpBase,
  RpSystem, DB, ExtCtrls, JvgGroupBox, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, Mask, DBCtrls, JvExExtCtrls, JvExtComponent, JvPanel;

type LasFilas = array[1..2] of integer;
type HackTable = class(TClientDataSet);//
type
  TNewConfVtaServ = class(TForm)
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    Imp: TJvBitBtn;
    ToolButton3: TToolButton;
    anula: TJvBitBtn;
    ToolButton2: TToolButton;
    Confirma: TJvBitBtn;
    ToolButton5: TToolButton;
    JvBitBtn2: TJvBitBtn;
    Barra1: TStatusBar;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    RvD: TRvSystem;
    DataSource1: TDataSource;
    grupoventa: TJvgGroupBox;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label43: TLabel;
    Label45: TLabel;
    Label47: TLabel;
    Label80: TLabel;
    Panel: TJvPanel;
    dv1: TEdit;
    dv2: TEdit;
    dv3: TEdit;
    dv4: TEdit;
    dv5: TEdit;
    dv6: TEdit;
    dv7: TEdit;
    JvgGroupBox1: TJvgGroupBox;
    Label42: TLabel;
    Label44: TLabel;
    Label46: TLabel;
    dva1: TDBEdit;
    dva2: TDBEdit;
    dva3: TDBEdit;
    dvid: TEdit;
    pagodet: TGroupBox;
    Label48: TLabel;
    Label50: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Mp: TEdit;
    Dp: TEdit;
    ModP: TEdit;
    CC: TEdit;
    VC: TEdit;
    banco: TEdit;
    titular: TEdit;
    comprobante: TEdit;
    cheque: TEdit;
    fecpago: TEdit;
    Feccobro: TEdit;
    observ: TEdit;
    grupotestigos: TJvgGroupBox;
    Image1: TImage;
    JvDBGrid1: TJvDBGrid;
    detpago: TGroupBox;
    grilla5: TStringGrid;
    acci: TRadioButton;
    LB1: TLabel;
    ODNI: TEdit;
    Busca: TJvBitBtn;
    DBGrid1: TJvDBGrid;
    JvgGroupBox6: TJvgGroupBox;
    Shape3: TShape;
    Shape2: TShape;
    Label24: TLabel;
    Label27: TLabel;
    Shape1: TShape;
    Label25: TLabel;
    vigventas: TGroupBox;
    Label74: TLabel;
    diav: TEdit;
    DataSource2: TDataSource;
    procedure JvBitBtn2Click(Sender: TObject);
    procedure anulaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ImpClick(Sender: TObject);
    procedure ODNIKeyPress(Sender: TObject; var Key: Char);
    procedure Coloca1(nro:byte);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BuscaClick(Sender: TObject);
  private
    gh,control:boolean;{Controla que no hubiere errores en la carga de datos}
    titulo:string;
    { Private declarations }
  public
    { Public declarations }
    Resultado,motivo,nrocod,nomcod,fec: string;
    nroacc:integer;
    // aca instancio la clase si la clase esta definida en el uses de la ventana
    Funciones:TFuncionesVarias;
    ParcelasInhumados:TParcelasInhumados;
    ParcelasVentas:TParcelasVentas;
    ParcelasMantenimiento:TParcelasMantenimiento;
    ParcelasServicios:TParcelasServicios;
    ParcelasServiciosEstados:TParcelasServiciosEstados;
    ParcelasVentasPagos:TParcelasVentasPagos;
    ParcelasServiciosPagos:TParcelasServiciosPagos;
    NroOpcion:integer;

    DataSetCli,DataSetTelf,DtCombo:TClientDataSet; //declaro los DataSet
    IdCombos:array of array of string; // para los combobox

    ///// para la impresion de datos segun parametros
    PosH1:Array [0..9] of Double;//Posiciones
    Camp1:Array [0..9] of Integer;//Campos a Tomar en cuenta
    TxtCamp1:Array [0..9] of String;//Textos de los Campos a Tomar en cuenta

    TColores:Unidad.TablaXML;
  end;

var
  NewConfVtaServ: TNewConfVtaServ;

implementation

{$R *.dfm}

uses Modulo,Busqueda,Anula_Generica,ClaseParcelas,SplashFormNro;

procedure TNewConfVtaServ.FormActivate(Sender: TObject);
begin
if not gh then begin
  gh:=true;
  PC1.ActivePage:=PC1.Pages[0];
  diav.Text:=modulo2.INI1.ReadString('DIASVENTAS','Vigencia','');
  label74.Visible:=true;
  diav.Visible:=true;
  odni.SetFocus;

  grilla5.Cells[0,0]:='IdCuota';
  grilla5.Cells[1,0]:='N� Cuota';
  grilla5.Cells[2,0]:='Periodo';
  grilla5.Cells[3,0]:='FechaVto';
  grilla5.Cells[4,0]:='Monto';
  grilla5.Cells[5,0]:='Interes';
  grilla5.Cells[6,0]:='Capital';

end;
end;

procedure TNewConfVtaServ.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TNewConfVtaServ.Coloca1(nro:byte);
var t,y,gf:integer;
    txt,sex,Vcolor,fecha1:string;
    txtw:widestring;
    m,anu,conf:boolean;
    Parcelas:TParcelas;
    NroDni,IdHabitante,NroAccion,DniTitular,DniFallecido,idcliente,idinhu,idhabi,
    NroId,NroMovi,accion:variant;
    razonsocial,NombreTitular,NombreFallecido,fechafallecimiento:string;
begin
if nro=0 then begin //Identificar COLOR
  TColores:=LeeXML('TiposColores','(TipoColor=' +  dv3.Text  + ')');
  if length(TColores) <> 0 then begin
    VColor:=TColores[2,0];
    Panel.Color:=stringtocolor(VColor);
  end;
end;
if nro=2 then begin   /// para cargar grilla testigos
  DataSetTelf.Free;
  DataSetTelf:=TClientdataSet.Create(nil);
  DataSource2.DataSet:=DataSetTelf;
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
//  if Nroopcion=1  then begin
//     NroId:=D1.Text;
//     if not funciones.Run_Fn_VistaParcelasInhumadosTestigos(NroId,DataSetTelf,'',0) then
//     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',
//       mtError,[mbok],0);
//  end;
//  if  Nroopcion=2  then begin
    accion:=strtoint(dv1.Text);
    if not Funciones.Run_Fn_VistaParcelasResponsables(accion,DataSetTelf,'where TipoAccionista =2',0) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',
      mtError,[mbok],0);
//  end;
  Funciones.Free;
  JvDBGrid1.Columns[2].Width:=120;
  JvDBGrid1.Columns[3].Width:=80;
  JvDBGrid1.Columns[4].Width:=80;
end;
if nro = 3 then  begin
    gf:=messagedlgpos('Desea ANULAR esta VENTA de PARCELA Seleccionada??',mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
    if gf = 1 then begin
      ParcelasVentas:=TParcelasVentas.Create(nil);
      ParcelasVentas.ConnectionString:=modulo2.Conexion;
      txtw:='UPDATE ParcelasVentas SET anulado = 1,  Usuanula=' + inttostr(modulo2.nro_usu)
           + ', fechaanula= ' + chr(39) + strcut(Fec_System(),10) + chr(39)
           + ' , MotivoAnula= ' + chr(39) + motivo + chr(39) + ' WHERE (Idventa=' + trim(dvid.Text) + ')';
      m:=ParcelasVentas.ListarSinResp(txtw);
      ParcelasVentas.Free;
      if m then begin
        messagedlg('Se ha ANULADO esta VENTA de PARCELA con Exito',mtConfirmation,[mbok],0);
      end
      else begin
        messagedlg('Error al ANULAR esta VENTA de PARCELA. Consulte con un Administrador',mtError,[mbok],0);
      end;
      anula.Enabled:=false;
    end;
end;
if nro = 4  then begin   //cargamos la grilla con datos de las ventas
   DataSetCli.Free;
   DataSetCli:=TClientDataSet.Create(nil);
   DAtasource1.DataSet:=DataSetCli;
   Funciones:=TFuncionesVarias.Create(nil);
   Funciones.ConnectionString:=modulo2.Conexion;
       Nroaccion:=trim(odni.Text);
       NroMovi:='1';
       if not funciones.Run_Fn_VistaParcelasLasVentas(Nroaccion,NroMovi,DataSetCli,'',0) then
          messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
   Funciones.Free;
end;
if nro = 5  then begin
    DtCombo.Free;
    DtCombo:=TClientDataSet.Create(nil);
    Parcelas:=TParcelas.Create(nil);
    Parcelas.ConnectionString:=modulo2.Conexion;
    txtw:='SELECT dbo.Parcelas.NroAccion, dbo.Parcelas.TipoColor, dbo.Parcelas.Sector,'
          + 'dbo.Parcelas.Parcela,dbo.TiposPlazas.Detalle'
          + ' FROM dbo.Parcelas INNER JOIN dbo.TiposPlazas ON dbo.Parcelas.IdPlaza = dbo.TiposPlazas.IdPlaza'
          + ' WHERE (dbo.Parcelas.NroAccion=' + trim(dv1.Text)  + ') ORDER BY dbo.Parcelas.NroAccion';
    if Parcelas.Listar(txtw,DtCombo)  then begin
       dv1.Text:=DtCombo.Fields[0].AsString;
       dv2.Text:=DtCombo.Fields[0].AsString;
       dv3.Text:=DtCombo.Fields[1].AsString;
       dv4.Text:=DtCombo.Fields[2].AsString;
       dv6.Text:=DtCombo.Fields[3].AsString;
       dv5.Text:=DtCombo.Fields[4].AsString;
    end
    else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    Parcelas.Free;
end;
if nro=8  then begin
   DtCombo.Free;
   DtCombo:=TClientDataSet.Create(nil);
   Funciones:=TFuncionesVarias.Create(nil);
   Funciones.ConnectionString:=modulo2.Conexion;
       if nroopcion=2 then txtw:='select * from Fn_VistaParcelasVentasDeudas ('+ dv1.Text +',0)';
       if not Funciones.Listar(txtw,DtCombo)  then
       messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
         for t:=0 to grilla5.ColCount-1 do
          for y:=1 to grilla5.RowCount-1 do grilla5.Cells[t,y]:='';
              for t:=1 to DtCombo.RecordCount  do begin
                DtCombo.RecNo:=t;
                grilla5.RowCount:=t+1;
                grilla5.Cells[0,t]:=trim(DtCombo.Fields[0].AsString);
                grilla5.Cells[1,t]:=trim(DtCombo.Fields[1].AsString);
                grilla5.Cells[2,t]:=trim(DtCombo.Fields[2].AsString);
                grilla5.Cells[3,t]:=trim(DtCombo.Fields[3].AsString);
                grilla5.Cells[4,t]:=trim(DtCombo.Fields[4].AsString);
                grilla5.Cells[5,t]:=trim(DtCombo.Fields[5].AsString);
                grilla5.Cells[6,t]:=trim(DtCombo.Fields[6].AsString);
              end;
   Funciones.Free;
end;
if nro = 9  then begin
    DtCombo.Free;
    DtCombo:=TClientDataSet.Create(nil);
    Funciones:=TFuncionesVarias.Create(nil);
    Funciones.ConnectionString:=modulo2.Conexion;
    txtw:='select top 1 FechaVencimiento from Fn_VistaParcelasVentasDeudas (' + trim(dv1.Text)  + ',0)'
        + ' order by NroCuota desc';
    if not Funciones.Listar(txtw,DtCombo)  then
       messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
       fec:=DtCombo.Fields[0].AsString;   //10/12/2012
    Funciones.Free;
end;
end;

procedure TNewConfVtaServ.anulaClick(Sender: TObject);
var Anula_General: TAnula_General;
begin
  Anula_General:= TAnula_General.create(self);
  try
    if  Nroopcion=1 then begin
       Anula_General.Caption:='Anulacion de Inhumados Cargados';
    end;
    if  Nroopcion=2 then begin
      Anula_General.Caption:='Anulacion de Venta de Parcelas';
    end;
    if  Nroopcion=2 then begin
      Anula_General.Caption:='Anulacion de Servicios';
    end;
    Anula_General.ShowModal;
  finally
    motivo:=Anula_General.MOTIVO.Text;
    Anula_General.destroy;
  end;
  coloca1(3);
end;

procedure TNewConfVtaServ.JvBitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TNewConfVtaServ.ImpClick(Sender: TObject);
var gf:integer;
begin
    gf:=messagedlgpos('Desea Imprimir los Datos de la CONFIRMACION?',mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
    if gf = 1 then begin
     // titulo:='REGISTRO DE INHUMACION';
       rvd.Execute;
    end;
end;

procedure TNewConfVtaServ.ODNIKeyPress(Sender: TObject; var Key: Char);
begin
//if key = #13 then busca.SetFocus;
if key = #13 then begin
  Key := #0;
  busca.SetFocus;
end
else begin
  if ( StrScan('0123456789',Key) <> nil ) or
      ( Key = Char(VK_BACK) ) then
   else Key := #0;
end;
end;

procedure TNewConfVtaServ.DBGrid1CellClick(Column: TColumn);
begin
/// ventas
 imp.Enabled:=true;
 if strtoint(DBGrid1.Fields[18].Text)> strtoint(diav.Text) then begin
  messagedlg('Error Imposible de CONFIRMAR esta Venta por haber caducado los dias de Vigencia, pasaron ' + trim(DBGrid1.Fields[18].Text) + ' dias.',mtError,[mbok],0);
  PC1.Pages[1].TabVisible:=false;
  PC1.Pages[2].TabVisible:=false;
  PC1.Pages[3].TabVisible:=false;
 end
 else begin
  PC1.Pages[1].TabVisible:=false;
  PC1.Pages[2].TabVisible:=false;
  PC1.Pages[3].TabVisible:=true;
  PC1.ActivePage:=PC1.Pages[3];
  dvid.Text:=trim(DBGrid1.Fields[0].Text);
  dv1.Text:=trim(DBGrid1.Fields[1].Text);
  dv7.Text:=trim(DBGrid1.Fields[3].Text);
  if trim(DBGrid1.Fields[12].Text) = 'False' then begin
    confirma.Enabled:=true;
    if trim(DBGrid1.Fields[13].Text) = 'False' then anula.Enabled:=true
     else anula.Enabled:=false;
   end
  else begin
   confirma.Enabled:=false;
   anula.Enabled:=false;
  end;
  observ.Text:=trim(DBGrid1.Fields[11].Text);
  dva1.Text:=trim(DBGrid1.Fields[14].Text);
  dva2.Text:=trim(DBGrid1.Fields[16].Text);
  dva3.Text:=trim(DBGrid1.Fields[15].Text);
   {if trim(DBGrid1.Fields[8].Text)='True' then modp.Text:='Financiado'
      else modp.Text:='CONTADO'; }
  if trim(DBGrid1.Fields[19].Text)='CONTADO' then begin
      modp.Text:=trim(DBGrid1.Fields[19].Text);
      mp.Text:=trim(DBGrid1.Fields[6].Text);
      dp.Text:=trim(DBGrid1.Fields[6].Text);
      cc.Text:=trim(DBGrid1.Fields[9].Text);
      vc.Text:=trim(DBGrid1.Fields[10].Text);
      comprobante.Clear;
      cheque.Clear;
      fecpago.Clear;
      feccobro.Clear;
      banco.Clear;
      titular.Clear;
  end;
  if trim(DBGrid1.Fields[19].Text)='CHEQUE' then begin
      modp.Text:=trim(DBGrid1.Fields[19].Text);
      mp.Text:=trim(DBGrid1.Fields[6].Text);
      dp.Text:=trim(DBGrid1.Fields[6].Text);
      cc.Text:=trim(DBGrid1.Fields[9].Text);
      vc.Text:=trim(DBGrid1.Fields[26].Text);
      comprobante.Clear;
      cheque.Text:=trim(DBGrid1.Fields[23].Text) + '-'+ trim(DBGrid1.Fields[22].Text);
      fecpago.Text:=trim(DBGrid1.Fields[28].Text);
      feccobro.Text:=trim(DBGrid1.Fields[29].Text);
      banco.Text:=trim(DBGrid1.Fields[30].Text);
      titular.Text:=trim(DBGrid1.Fields[24].Text);
  end;
  if trim(DBGrid1.Fields[19].Text)='TARJETA DE CREDITO' then begin
      modp.Text:=trim(DBGrid1.Fields[19].Text);
      mp.Text:=trim(DBGrid1.Fields[6].Text);
      dp.Text:=trim(DBGrid1.Fields[6].Text);
      cc.Text:=trim(DBGrid1.Fields[27].Text);
      vc.Text:=trim(DBGrid1.Fields[26].Text);
      comprobante.Text:=trim(DBGrid1.Fields[25].Text);
      cheque.Clear;
      fecpago.Text:=trim(DBGrid1.Fields[28].Text);
      feccobro.clear;
      banco.Text:=trim(DBGrid1.Fields[31].Text);
      titular.Text:=trim(DBGrid1.Fields[24].Text);
  end;
  Coloca1(5);
  Coloca1(0);
  Coloca1(2);
  Coloca1(8);
  //Coloca1(9);
 end;
///
end;

procedure TNewConfVtaServ.BuscaClick(Sender: TObject);
begin
// ventas
    Coloca1(4);
    if (DataSetCli.RecordCount = 0) then begin
      Barra1.Panels[0].Text:='Sin Datos en Grilla';
      IF application.MessageBox('Dato del Movimiento NO encontrado, !Desea Buscar otro Dato!?','Advertencia'
        ,mb_OKcancel+mb_IconHAnd) = IdOk then begin
        PC1.Enabled:=true;
        if acci.Checked=true then ODNI.SetFocus
      end
      else begin
        PC1.Enabled:=false;
        Barra1.Panels[0].Text:='La opcion Busqueda fue Cancelada';
        if acci.Checked=true then ODNI.SetFocus;
        //BUSCA.SetFocus;
      end;
    end
    else begin
      Barra1.Panels[1].Text:='Registos encontrados: ' + inttostr(Datasource1.DataSet.RecordCount);
      //exporta.Enabled:=true;
    end;
end;

end.

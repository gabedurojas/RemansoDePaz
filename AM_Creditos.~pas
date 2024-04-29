unit AM_Creditos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, ExtCtrls, Mask, ComCtrls,
  Buttons, LMDCustomButton, LMDButton, DBCtrls, ToolWin,
  LMDControl, LMDBaseControl, LMDBaseGraphicControl, LMDGraphicControl,
  LMDScrollText, StrUtils, RpDefine, RpBase, RpSystem;

type
  TAM_Credito = class(TForm)
    Barra1: TStatusBar;
    DAFILIADO: TDataSource;
    GroupBox2: TGroupBox;
    AFILIADOS: TADOTable;
    Busca4: TLMDButton;
    Label14: TLabel;
    CODIGO: TComboBox;
    OFICINA: TComboBox;
    Label30: TLabel;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GRILLA1: TDBGrid;
    Label31: TLabel;
    Label32: TLabel;
    PUESTO: TComboBox;
    RECIBO: TEdit;
    DNI: TEdit;
    Label33: TLabel;
    GroupBox3: TGroupBox;
    Agrega: TLMDButton;
    Borrar: TLMDButton;
    Imprime: TLMDButton;
    GroupBox7: TGroupBox;
    D5: TDBEdit;
    Label26: TLabel;
    D4: TDBEdit;
    Label28: TLabel;
    Label29: TLabel;
    D1: TDBEdit;
    Label24: TLabel;
    D2: TDBEdit;
    Label25: TLabel;
    D3: TDBEdit;
    GroupBox8: TGroupBox;
    Label18: TLabel;
    D6: TDBEdit;
    Label19: TLabel;
    D7: TDBEdit;
    D9: TDBEdit;
    Label22: TLabel;
    Label23: TLabel;
    D11: TDBEdit;
    D10: TDBEdit;
    Label15: TLabel;
    D8: TDBEdit;
    Label21: TLabel;
    CREDITOS: TADOTable;
    DataSource1: TDataSource;
    SALIR: TLMDButton;
    PC2: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    grilla5: TStringGrid;
    grupo6: TGroupBox;
    Label10: TLabel;
    COEF: TEdit;
    Label5: TLabel;
    INTERES: TEdit;
    grupo7: TGroupBox;
    CAPITAL: TEdit;
    Label6: TLabel;
    INTERESES: TEdit;
    Label7: TLabel;
    grupo1: TGroupBox;
    SC1: TLMDScrollText;
    BUSCAR: TLMDButton;
    FECHA: TMaskEdit;
    Label12: TLabel;
    Label3: TLabel;
    IMPORTE: TEdit;
    Label9: TLabel;
    CUOTAS: TComboBox;
    Label11: TLabel;
    VALCUOTA: TEdit;
    OBSERV: TEdit;
    Label52: TLabel;
    GroupBox9: TGroupBox;
    Label2: TLabel;
    Label4: TLabel;
    VENC1: TMaskEdit;
    VENC2: TMaskEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    NROCREDITO: TEdit;
    GroupBox4: TGroupBox;
    Label13: TLabel;
    Label16: TLabel;
    VENC3: TMaskEdit;
    VENC4: TMaskEdit;
    RvS: TRvSystem;
    Image1: TImage;
    CB1: TCheckBox;
    TOTAL: TEdit;
    Label8: TLabel;
    Label17: TLabel;
    AGREGAR: TLMDButton;
    Label20: TLabel;
    INTERTOT: TEdit;
    EP: TCheckBox;
    RvS1: TRvSystem;
    LMDButton7: TLMDButton;
    LMDButton1: TLMDButton;
    DIG: TLMDButton;
    TabSheet5: TTabSheet;
    DBGrid1: TDBGrid;
    DIGITAL: TADOTable;
    DataSource2: TDataSource;
    procedure FormActivate(Sender: TObject);
    procedure Coloca1(nro:byte;valor:string);
    Function el_codigo(nro:byte):string;
    Procedure Limpiar(nro:byte);
    procedure DNIKeyPress(Sender: TObject; var Key: Char);
    procedure DNIExit(Sender: TObject);
    procedure CODIGOKeyPress(Sender: TObject; var Key: Char);
    procedure CODIGOExit(Sender: TObject);
    procedure OFICINAKeyPress(Sender: TObject; var Key: Char);
    procedure OFICINAExit(Sender: TObject);
    procedure PUESTOKeyPress(Sender: TObject; var Key: Char);
    procedure PUESTOExit(Sender: TObject);
    procedure RECIBOKeyPress(Sender: TObject; var Key: Char);
    procedure SALIRClick(Sender: TObject);
    procedure BUSCARClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure IMPORTEKeyPress(Sender: TObject; var Key: Char);
    procedure CUOTASKeyPress(Sender: TObject; var Key: Char);
    procedure CUOTASExit(Sender: TObject);
    procedure FECHAKeyPress(Sender: TObject; var Key: Char);
    procedure Busca4Click(Sender: TObject);
    procedure OBSERVKeyPress(Sender: TObject; var Key: Char);
    procedure VENC1KeyPress(Sender: TObject; var Key: Char);
    procedure VENC2KeyPress(Sender: TObject; var Key: Char);
    procedure AgregaClick(Sender: TObject);
    procedure ImprimeClick(Sender: TObject);
    procedure RvSPrint(Sender: TObject);
    procedure FECHAExit(Sender: TObject);
    procedure CB1Click(Sender: TObject);
    procedure AGREGARClick(Sender: TObject);
    procedure BorrarClick(Sender: TObject);
    procedure RvS1Print(Sender: TObject);
    procedure EPKeyPress(Sender: TObject; var Key: Char);
    procedure LMDButton7Click(Sender: TObject);
    procedure LMDButton1Click(Sender: TObject);
    procedure DIGClick(Sender: TObject);
    Function ExistenImagenes():boolean;
  private
    { Private declarations }
  public
    NroPuesto,NroOficina,NroCodigo,totgral:string;
    gh,ref:boolean;
   { Public declarations }
  end;

var
  AM_Credito: TAM_Credito;

implementation

uses Unidad, Menu, Busqueda, AltasAfili,AM_Tipooficina,AltasOficinas,
  AM_CapTwain;

{$R *.dfm}

procedure TAM_Credito.Coloca1(nro:byte;valor:string);
var t,y:integer;
begin
if nro=0 then begin
  AFILIADOS.Close;
  modulo2.Com1.CommandText:='SELECT CUIF,TipoDocumento,FechaNacimiento,Nombre,'
  + 'Edad,Domicilio,Provincia,Departamento,Localidad,CodigoPostal,Colonia FROM '
  + 'VistaLosAfiliados WHERE (DNI=' + trim(DNI.Text) + ');';
  AFILIADOS.Recordset:=modulo2.Com1.Execute;
  AFILIADOS.Open;
  if AFILIADOS.RecordCount > 0 then begin
    D1.DataField:='CUIF';
    D2.DataField:='TipoDocumento';
    D3.DataField:='FechaNacimiento';
    D4.DataField:='Nombre';
    D5.DataField:='Edad';
    D6.DataField:='Domicilio';
    D7.DataField:='Provincia';
    D8.DataField:='Departamento';
    D9.DataField:='Localidad';
    D10.DataField:='CodigoPostal';
    D11.DataField:='Colonia';

    //Cargamos los Creditos vigentes
    CREDITOS.Close;
    modulo2.Com1.CommandText:='SELECT NroPrestamo,Codigo,Importe,CantCuotas,CantPagos,'
    + 'NroOficina,NroPuesto,Oficina,PuntoV,Detalleestado,valorcuota,FechaCarga '
    + 'FROM LosCreditosExistentes WHERE (CUIF=' + trim(D1.Text) + ');';
    CREDITOS.Recordset:=modulo2.Com1.Execute;
    CREDITOS.Open;

    Coloca1(3,'');
    
  end;
end;
if nro=1 then begin
  //Cargamos los Datos de Imagenes Digitalizadas
  DIGITAL.Close;
  modulo2.Com1.CommandText:='SELECT Id,Periodo,NroPuesto,NombreArchivo,Detalle,Motivo,'
  + 'Observaciones,NroTipo FROM VAfiliadosImagenes WHERE (Cuif = ' + D1.Text
  + ') AND (NroPuesto=' + PUESTO.Text +  ' OR NroPuesto=0) ORDER BY Fecha DESC';
  DIGITAL.Recordset:=modulo2.Com1.Execute;
  DIGITAL.Open;
end;
if nro=2 then begin
  {Incorporando datos de la Localidad}
  CODIGO.Clear;
  modulo2.Com1.CommandText:='SELECT DetalleCodigo FROM TiposCodigos WHERE (ParaAyuda=1) ORDER BY DetalleCodigo;';
  modulo2.BarData.Recordset:=modulo2.Com1.Execute;
  modulo2.BarData.Open;
  for t:=1 to modulo2.BarData.RecordCount  do begin
    modulo2.BarData.RecNo:=t;
    CODIGO.Items.Insert(t-1,trim(modulo2.BarData.Fields[0].AsString));
  end;
  modulo2.BarData.Close;
  CODIGO.ItemIndex:=0;
end;
if nro=3 then begin
  {Incorporando datos de la Localidad}
  OFICINA.Clear;
  modulo2.Com1.CommandText:='SELECT DISTINCT Nombre FROM LosAfiliadosOficinasPuestos WHERE '
  + '(Activo=1) AND (CUIF=' + trim(D1.Text) + ') ORDER BY Nombre;';
  modulo2.BarData.Recordset:=modulo2.Com1.Execute;
  modulo2.BarData.Open;
  for t:=1 to modulo2.BarData.RecordCount  do begin
    modulo2.BarData.RecNo:=t;
    OFICINA.Items.Insert(t-1,trim(modulo2.BarData.Fields[0].AsString));
  end;
  modulo2.BarData.Close;
  OFICINA.ItemIndex:=0;
end;
if nro=4 then begin
  {Incorporando datos de la Localidad}
  PUESTO.Clear;
  if valor = '' then valor:=el_codigo(2);
  modulo2.Com1.CommandText:='SELECT NroPuesto FROM LosAfiliadosOficinasPuestos '
  + 'WHERE (NroOficina=' + valor + ') AND (CUIF=' + trim(D1.Text) + ') AND (Activo=1)'
  + ' ORDER BY NroPuesto;';
  modulo2.BarData.Recordset:=modulo2.Com1.Execute;
  modulo2.BarData.Open;
  for t:=1 to modulo2.BarData.RecordCount  do begin
    modulo2.BarData.RecNo:=t;
    PUESTO.Items.Insert(t-1,trim(modulo2.BarData.Fields[0].AsString));
  end;
  modulo2.BarData.Close;
  PUESTO.ItemIndex:=0;
end;
if nro=5 then begin
  modulo2.Com1.CommandText:='select sum(valorcuota)'
  + ' FROM LosCreditosExistentes WHERE (CUIF=' + trim(D1.Text) + ');';
  modulo2.BarData1.Recordset:=modulo2.Com1.Execute;
  modulo2.BarData1.Open;
  totgral:=trim(modulo2.BarData1.Fields[0].AsString);
  modulo2.BarData1.Close;
  {Incorporando datos de la Localidad
  TIPOBENEF.Clear;
  modulo2.Com1.CommandText:='SELECT detalle FROM TiposBeneficiarios'
  + ' order by detalle';
  modulo2.BarData.Recordset:=modulo2.Com1.Execute;
  modulo2.BarData.Open;
  for t:=1 to modulo2.BarData.RecordCount  do begin
    modulo2.BarData.RecNo:=t;
    TIPOBENEF.Items.Insert(t-1,trim(modulo2.BarData.Fields[0].AsString));
  end;
  modulo2.BarData.Close;
  TIPOBENEF.ItemIndex:=0;           }
end;
if nro=6 then begin
  {Incorporando datos de la Localidad}
  CUOTAS.Clear;
  if valor = '' then valor:=el_codigo(1);
  modulo2.Com1.CommandText:='SELECT NroCuota FROM PrestamosCoeficiente WHERE (Codigo='
  + valor + ') ORDER BY NroCuota;';
  modulo2.BarData.Recordset:=modulo2.Com1.Execute;
  modulo2.BarData.Open;
  for t:=1 to modulo2.BarData.RecordCount  do begin
    modulo2.BarData.RecNo:=t;
    CUOTAS.Items.Insert(t-1,trim(modulo2.BarData.Fields[0].AsString));
  end;
  modulo2.BarData.Close;
  CUOTAS.ItemIndex:=0;
end;
if nro=7 then begin
  modulo2.Com1.CommandText:='SELECT * FROM Prestamos WHERE (Codigo='
  + el_codigo(1) + ') AND (FechaCarga =' + chr(39) + trim(fecha.Text) + chr(39)
  + ') AND (CUIF=' + trim(d1.Text) +')';
  modulo2.BarData.Recordset:=modulo2.Com1.Execute;
  modulo2.BarData.Open;
  if modulo2.BarData.RecordCount <> 0 then begin
     IF application.MessageBox('Este Afiliado ya posee un Credito Otorgado en el dia de la Fecha, !Desea darlo Cargarlo!?','Advertencia'
      ,mb_OKcancel+mb_IconHAnd) = IdOk
        then begin
            importe.SetFocus;
        end
        else begin
           borrar.Click;
    end;
  end
  else begin
    importe.SetFocus
  end;
end;
end;

Function TAM_Credito.el_codigo(nro:byte):string;
var txt:string;
begin
if nro = 1 then begin
  txt:=CODIGO.Text;
  modulo2.Com1.CommandText:='SELECT Codigo FROM TiposCodigos WHERE '
  + '(DetalleCodigo=' + chr(39) + txt + chr(39) + ');';
end;
if nro = 2 then begin
  txt:=trim(OFICINA.Text);
  modulo2.Com1.CommandText:='SELECT NroOficina FROM LasOficinasAfiliados WHERE '
  + '(Nombre=' + chr(39) + txt + chr(39) + ') AND (CUIF=' + trim(D1.Text)
  + ') AND (activo=1);';
end;
if nro = 3 then begin
  txt:=PUESTO.Text;
  modulo2.Com1.CommandText:='SELECT NroPuesto FROM LasOficinasAfiliados WHERE '
  + '(NroPuesto=' + chr(39) + txt + chr(39) + ') AND (CUIF=' + trim(D1.Text)
  + ') AND (activo=1);';
end;
if nro = 4 then begin
  txt:=CODIGO.Text;
  modulo2.Com1.CommandText:='SELECT Codigo FROM TiposCodigos WHERE '
  + '(DetalleCodigo=' + chr(39) + txt + chr(39) + ') AND (ClausulaEspecial=1);';
end;
modulo2.BarData.Recordset:=modulo2.Com1.Execute;
modulo2.BarData.Open;
el_codigo:=modulo2.BarData.Fields[0].AsString;{el codigo}
modulo2.BarData.Close;
end;

Procedure TAM_Credito.Limpiar(nro:byte);
begin
if nro = 1 then begin
{
  C3.Checked:=true;
  CARNET.Text:='00000000000';nroadhe.ItemIndex:=0;tpodoc.ItemIndex:=0;
  DNI.Text:='00000000';cuil.Text:='00-00000000-0';NOMRAZ.Clear;
  tipobenef.ItemIndex:=0;DOMI.Clear;SEXO.ItemIndex:=0;
  FECNAC.Clear;ESTADO.ItemIndex:=0;LOCALIDAD.Clear;telf.Text:='00000000000000000000';
  CATEGO.Text:='00000';HABILITA.Checked:=false;
  OBSERVA.Clear;PLAN.Checked:=false;
//FEC_INI.Clear;FEC_FIN.Clear;
  C4.Checked:=false;
  C5.Checked:=false;
  C7.Checked:=false;
  }
end;
end;

procedure TAM_Credito.FormActivate(Sender: TObject);
begin
if not(gh) then begin
  gh:=true;
  AFILIADOS.Connection:=modulo2.Coneccion;
  PC1.ActivePage:=PC1.Pages[0];
  PC2.ActivePage:=PC2.Pages[0];
  FECHA.Text:=fechalarga(strcut(Fec_System(),10));

  if modulo2.num_level > 2 then CB1.Visible:=false
  else CB1.Visible:=true;

  grilla5.Cells[0,0]:='N° Cuota';
  grilla5.Cells[1,0]:='Periodo Envio';
  grilla5.Cells[2,0]:='Periodo Cobro';
  grilla5.Cells[3,0]:='Capital';
  grilla5.Cells[4,0]:='Interes';
  grilla5.Cells[5,0]:='Importe Cuota';

  Coloca1(2,'');
  DNI.SetFocus;
end;
end;



procedure TAM_Credito.DNIKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  if (trim(DNI.Text) <> '') then begin
    if strtoint(trim(DNI.Text)) <> 0 then CODIGO.SetFocus
    else Busca4.SetFocus;
  end
  else begin
    messagedlgpos('ERROR!! No Existe el DNI Ingresado!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
    DNI.Text:='00000000';
  end;
end;
end;

procedure TAM_Credito.DNIExit(Sender: TObject);
begin
if Busca4.Focused or AGREGAR.Focused then
else begin
  Coloca1(0,'');
  if AFILIADOS.RecordCount = 0 then begin
    IF application.MessageBox('Afiliado NO encontrado, !Desea darlo de Alta!.. para ello verificar el DNI...','Advertencia'
      ,mb_OKcancel+mb_IconHAnd) = IdOk
      then begin
        agregar.Click;
    end
    else begin
      DNI.Text:='00000000';
      dni.SetFocus;
    end;
  end;//Busca4.SetFocus;
end;
end;
//Coloca1(1,'');
//if AFILIADOS.RecordCount = 0 then Busca4.SetFocus;
//end;

procedure TAM_Credito.CODIGOKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then OFICINA.SetFocus;
end;

procedure TAM_Credito.CODIGOExit(Sender: TObject);
begin
NroCodigo:=el_codigo(1);
if NroCodigo = '' then begin
  messagedlgpos('ERROR!! No Existe el Codigo Ingresado!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  CODIGO.Clear;
end
else begin
  if el_codigo(4) <> '' then EP.Enabled:=true
  else begin
    EP.Checked:=false;
    EP.Enabled:=false;
  end;
  Coloca1(6,NroCodigo);
end;
end;

procedure TAM_Credito.OFICINAKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then PUESTO.SetFocus;
end;

procedure TAM_Credito.OFICINAExit(Sender: TObject);
begin
NroOficina:=el_codigo(2);
if NroOficina = '' then begin
  messagedlgpos('ERROR!! No Existe la Oficina Ingresada!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  OFICINA.Clear;
end
else Coloca1(4,NroOficina);
end;

procedure TAM_Credito.PUESTOKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then RECIBO.SetFocus
else begin
  if ( StrScan('0123456789',Key) <> nil ) or
     ( Key = Char(VK_BACK) ) then
  else Key := #0;
end;
end;

procedure TAM_Credito.PUESTOExit(Sender: TObject);
begin
NroPuesto:=el_codigo(3);
if NroPuesto = '' then begin
  messagedlgpos('ERROR!! No Existe el Codigo Ingresado!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  CODIGO.Clear;
end
else Coloca1(1,'');
if ExistenImagenes() then begin
  messagedlg('Ya existe Digitalizado el Recibo de Sueldo en este PERIODO!!',mtWarning,[mbok],0);
  BUSCAR.Enabled:=true;
end;
end;

procedure TAM_Credito.RECIBOKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  if BUSCAR.Enabled = true then BUSCAR.SetFocus
  else DIG.SetFocus;
end
else begin
  if ( StrScan('0123456789',Key) <> nil ) or
     ( Key = Char(VK_BACK) ) then
  else Key := #0;
end;
end;

procedure TAM_Credito.SALIRClick(Sender: TObject);
begin
Close;
end;

procedure TAM_Credito.BUSCARClick(Sender: TObject);
var t:integer;
    b,r:boolean;
begin
//Proceso de Busqueda de Creditos
b:=false;
r:=false;
{NroPrestamo,Codigo,Importe,CantCuotas,CantPagos,'
    + 'NroOficina,NroPuesto,Oficina,PuntoV,Detalleestado,valorcuota,FechaCarga }
for t:=1 to CREDITOS.RecordCount do begin
  CREDITOS.RecNo:=t;
  if (NroCodigo = trim(CREDITOS.Fields[1].AsString)) and (NroPuesto = trim(CREDITOS.Fields[6].AsString)) then b:=true;
  if (trim(FECHA.Text) = trim(CREDITOS.Fields[11].AsString)) then r:=true;
end;
PC2.Enabled:=true;
ref:=false;
if b then begin
  SC1.Lines.Clear;
  SC1.Font.Color:=clRed;
  SC1.Lines.Append('YA EXISTE UN CREDITO CON MISMO PUESTO');
  SC1.Lines.Append('');
  SC1.Lines.Append('EL PRESTAMO REALIZADO ES EL Nº ' + Trim(CREDITOS.Fields[0].AsString) );
  SC1.Lines.Append('');
  SC1.Lines.Append('DE FORMA DE PAGO: ' + trim(CREDITOS.Fields[3].AsString) + ' / ' + trim(CREDITOS.Fields[2].AsString));
  SC1.Lines.Append('');
  SC1.Lines.Append('FECHA DE REALIZACION: ' + trim(CREDITOS.Fields[11].AsString));
  SC1.Scroll:=true;
  {if r then begin
    messagedlgpos('ERROR!! Hoy se ha Ingresado un Crédito con mismos Datos!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
    DNI.SetFocus;
    ref:=true;
  end;  }
end
else begin
  SC1.Lines.Clear;
  SC1.Font.Color:=clWindowText;
  SC1.Lines.Append('NO EXISTEN CREDITOS COINCIDENTES');
  SC1.Lines.Append('');
  SC1.Lines.Append('C R E D I T O   A P R O B A D O');
  SC1.Scroll:=true;
end;
if not(ref) then begin
  grupo1.Enabled:=true;
  FECHA.SetFocus;
end;
end;

procedure TAM_Credito.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TAM_Credito.IMPORTEKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then CUOTAS.SetFocus
else begin
  if ( StrScan('0123456789.',Key) <> nil ) or
     ( Key = Char(VK_BACK) ) then
  else Key := #0;
end;
end;

procedure TAM_Credito.CUOTASKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then OBSERV.SetFocus
else begin
  if ( StrScan('0123456789',Key) <> nil ) or
     ( Key = Char(VK_BACK) ) then
  else Key := #0;
end;
end;

procedure TAM_Credito.CUOTASExit(Sender: TObject);
var tot,imp,val1,val,dif,Monto:real;
    ElMes,ElAnio,ElDia,txt,elmesa,a:string;
    t,y,m:integer;
begin

//Borramos la grilla de Cuotas
for t:=1 to grilla5.RowCount do
  for y:=0 to grilla5.ColCount-1 do grilla5.Cells[y,t]:='';
grilla5.RowCount:=2;


modulo2.Com1.CommandText:='SELECT Coeficiente,InteresAplicado FROM PrestamosCoeficiente '
+ 'WHERE (NroCuota=' + trim(CUOTAS.Text) + ') AND (Codigo=' + el_codigo(1) + ');';
modulo2.Datos3.Recordset:=modulo2.Com1.Execute;
modulo2.Datos3.Open;
if modulo2.Datos3.RecordCount = 0 then begin
  messagedlgpos('ERROR!! No Existe el Coeficiente para la Cuota Ingresada!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  CUOTAS.SetFocus;
end
else begin
  COEF.Text:=transforma(modulo2.Datos3.Fields[0].AsString,chr(44),chr(46));
  INTERES.Text:=transforma(modulo2.Datos3.Fields[1].AsString,chr(44),chr(46));
  
  try
    imp:=strtofloat(transforma(trim(IMPORTE.Text),chr(44),chr(46)));
  except
    imp:=strtofloat(transforma(trim(IMPORTE.Text),chr(46),chr(44)));
  end;

  tot:=imp * modulo2.Datos3.Fields[0].AsFloat;
  Monto:=strtofloat(redondeo(floattostr(imp * modulo2.Datos3.Fields[0].AsFloat),5));

  //24/01/2011
  Monto:=Monto - (imp * strtofloat(INTERES.Text)/100);


  if monto > trunc(monto) then
    monto:=trunc(monto)+1;

  CAPITAL.Text:=IMPORTE.Text;
  val:=imp * modulo2.Datos3.Fields[1].AsFloat * strtoint(CUOTAS.Text) / 100;
  INTERESES.Text:=redondeo(floattostr(val),2);
  INTERTOT.Text:=floattostr(val + ((monto * strtoint(CUOTAS.Text)) - (tot * strtoint(CUOTAS.Text))));

  if (val + imp) > trunc(val + imp) then TOTAL.Text:=redondeo(floattostr(trunc(val + imp)+1),2)
  else TOTAL.Text:=redondeo(floattostr(val + imp),2);

  val1:=imp * modulo2.Datos3.Fields[1].AsFloat / 100;
  if val1 > trunc(val1) then val1:=trunc(val1)+1;

  VALCUOTA.Text:=redondeo(floattostr(monto + val1),2);

  //Reglas de las Fechas
  ElMes:=strcut_midle(trim(FECHA.Text),4,5);
  ElAnio:=RightStr(trim(FECHA.Text),4);
  ElDia:=LeftStr(trim(FECHA.Text),2);
{  m:=strtoint(ElMes);
  a:=inttostr(m+1);
  elmesa:=completa(a,2,'0'); }

  {Falta agregar control por fecha cuando sea 05 o 30 y ya se haya enviado el listado
   ya que la fecha de baja cambiaria
   }
  {if (ElMes = '05') or (ElMes = '11') then begin
    if (ElDia <= '30') and (ElDia > '05') then begin
      VENC1.Text:='30/' + ElMes + '/' + ElAnio;
      VENC2.Text:=FechaIncremento('10/' + ElMes + '/' + ElAnio,2);
      VENC3.Text:=FechaIncremento('10/' + ElMes + '/' + ElAnio,strtoint(CUOTAS.Text));
      VENC4.Text:=FechaIncremento('10/' + ElMes + '/' + ElAnio,strtoint(CUOTAS.Text)+1);
    end
    else begin
      VENC1.Text:='05/' + ElMes + '/' + ElAnio;
      VENC2.Text:=FechaIncremento('10/' + ElMes + '/' + ElAnio,1);
      VENC3.Text:=FechaIncremento('10/' + ElMes + '/' + ElAnio,strtoint(CUOTAS.Text)-1);
      VENC4.Text:=FechaIncremento('10/' + ElMes + '/' + ElAnio,strtoint(CUOTAS.Text));
    end;
  end
  else begin
    if (ElDia <= '05') and ((ElMes <> '06') or (ElMes <> '12')) then begin
      VENC1.Text:=FechaIncremento('05/' + ElMes + '/' + ElAnio,1);
      // VENC1.Text:='05/' + ElMes + '/' + ElAnio;
      VENC2.Text:=FechaIncremento('10/' + ElMes + '/' + ElAnio,2);
      VENC3.Text:=FechaIncremento('10/' + ElMes + '/' + ElAnio,strtoint(CUOTAS.Text)-1);
      VENC4.Text:=FechaIncremento('10/' + ElMes + '/' + ElAnio,strtoint(CUOTAS.Text));
    end
    else begin
      VENC1.Text:=FechaIncremento('05/' + ElMes + '/' + ElAnio,1);
      VENC2.Text:=FechaIncremento('10/' + ElMes + '/' + ElAnio,2);
      VENC3.Text:=FechaIncremento('10/' + ElMes + '/' + ElAnio,strtoint(CUOTAS.Text));
      VENC4.Text:=FechaIncremento('10/' + ElMes + '/' + ElAnio,strtoint(CUOTAS.Text)+1);
    end;
    ElMes:=strcut_midle(trim(VENC1.Text),4,5);
    ElAnio:=RightStr(trim(VENC1.Text),4);
  end;                      }

  VENC1.Text:=FechaIncremento('05/' + ElMes + '/' + ElAnio,1);
  VENC2.Text:=FechaIncremento('01/' + ElMes + '/' + ElAnio,2);
  VENC3.Text:=FechaIncremento('05/' + ElMes + '/' + ElAnio,strtoint(CUOTAS.Text)+1);
  VENC4.Text:=FechaIncremento('01/' + ElMes + '/' + ElAnio,strtoint(CUOTAS.Text)+1);

  //Calculamos las Cuotas y llenamos la grillas
  {grilla5.Cells[0,0]:='N° Cuota';
  grilla5.Cells[1,0]:='Periodo Envio';
  grilla5.Cells[2,0]:='Periodo Cobro';
  grilla5.Cells[3,0]:='Capital';
  grilla5.Cells[4,0]:='Interes';
  grilla5.Cells[5,0]:='Importe Cuota';}
  dif:=0;val:=0;
  for t:=1 to strtoint(CUOTAS.Text) do begin
    grilla5.RowCount:=t+1;
    grilla5.Cells[0,t]:=completa1(inttostr(t),2,'0');
    txt:=FechaIncremento('10/' + ElMes + '/' + ElAnio,t);
    grilla5.Cells[1,t]:=RightStr(txt,4) + strcut_midle(txt,4,5);
    txt:=FechaIncremento('10/' + ElMes + '/' + ElAnio,t+1);
    grilla5.Cells[2,t]:=RightStr(txt,4) + strcut_midle(txt,4,5);
    grilla5.Cells[4,t]:=redondeo(floattostr(imp * modulo2.Datos3.Fields[1].AsFloat /100),2);

    grilla5.Cells[3,t]:=redondeo(floattostr(monto),2); //Capital

    grilla5.Cells[5,t]:=redondeo(floattostr(monto + val1),2);
  end;
  Agrega.Enabled:=true;
end;
end;

procedure TAM_Credito.FECHAKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then IMPORTE.SetFocus;
end;

procedure TAM_Credito.Busca4Click(Sender: TObject);
var LA_BUSQUEDA: TLA_BUSQUEDA;
begin
LA_BUSQUEDA:= TLA_BUSQUEDA.create(self);
LA_BUSQUEDA.NroOpcion:=1;
try
  LA_BUSQUEDA.Caption:='Buscando el Afiliado';
  LA_BUSQUEDA.ShowModal;
  DNI.Text:=LA_BUSQUEDA.DB2.Text;
  Barra1.Panels[0].Text:='Nombre del Afiliado: ' + LA_BUSQUEDA.DB5.Text;
finally
  LA_BUSQUEDA.destroy;
end;
  if trim(DNI.Text) = '' then begin
     messagedlgpos('Debe Seleccionar un Nº de Carnet CORRECTO!!!',mtError,[mbok],0,screen.Width div 3,screen.Height div 3);
     DNI.SetFocus;
  end
  else begin
    DNI.SetFocus;
  end;
end;

procedure TAM_Credito.OBSERVKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then EP.SetFocus;
end;

procedure TAM_Credito.VENC1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then VENC2.SetFocus;
end;

procedure TAM_Credito.VENC2KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  if Agrega.Enabled = true then Agrega.SetFocus;
end
end;

procedure TAM_Credito.AgregaClick(Sender: TObject);
var el_dni:string;

    Function guarda_todo(tpo:byte):boolean;
    var t:integer;
    var el_id,ElCuif:string;
    var txt1:widestring;
    begin

    Barra1.SimpleText:='Intentando Guardar los Datos Ingresados';
    {Cargando datos en Base de Datos}
    try
      modulo2.Com1.CommandText:='BEGIN TRANSACTION;';
      modulo2.Com1.Execute;

      modulo2.BarData.CommandText:='darmaximonro ' + chr(39) + 'Creditos' + chr(39);
      modulo2.BarData.Open;
      el_id:=trim(modulo2.BarData.Fields[0].AsString);
      NROCREDITO.Text:=el_id;
      modulo2.BarData.Close;

      txt1:=txt1 +  el_id + ' , ' + NroCodigo + ' , ' + chr(39)
      + trim(FECHA.Text) + chr(39) + ' , ' + trim(CUOTAS.Text) + ' , ' + trim(CAPITAL.Text)
      + ' , ' + trim(INTERESES.Text) + ' , ' + trim(INTERTOT.Text) + ' , '
      + trim(VALCUOTA.Text) + ' , ' + trim(D1.Text) + ' , ' + NroOficina + ' , '
      + NroPuesto + ' , ' + chr(39) + trim(VENC1.Text) + chr(39) + ' , ' + chr(39)
      + trim(VENC2.Text) + chr(39) + ' , ' + chr(39) + trim(VENC3.Text) + chr(39)
      + ' , ' + chr(39) + trim(VENC4.Text) + chr(39) + ' , ' ;
      txt1:= txt1 + chr(39) + transforma(trim(OBSERV.Text),chr(39),chr(33)) + chr(39) + ' , '
      + inttostr(modulo2.ElPuntoV) + ' , ' ;
      if ref then txt1:= txt1 + '1, ' else txt1:= txt1 + '0 ,';
      txt1:= txt1 + inttostr(modulo2.num_usuario);

      modulo2.Com1.CommandText:='INSERT INTO Prestamos(NroPrestamo,Codigo,FechaCarga,'
      + 'CantCuotas,Capital,InteresImpreso,InteresAplicado,ValorCuota,CUIF,NroOficina,'
      + 'TipoPuesto,PrimerEnvio,PrimerCobro,EnvioBaja,UltimoCobro,Observaciones,'
      + 'PuntoV,Modificacion,Usu_A) VALUES (' + txt1 + ');';
      modulo2.Com1.Execute;

      {grilla5.Cells[0,0]:='N° Cuota';
      grilla5.Cells[1,0]:='Periodo Envio';
      grilla5.Cells[2,0]:='Periodo Cobro';
      grilla5.Cells[3,0]:='Capital';
      grilla5.Cells[4,0]:='Interes';
      grilla5.Cells[5,0]:='Importe Cuota';}
      for t:=1 to grilla5.RowCount-1 do begin
        modulo2.Com1.CommandText:='INSERT INTO PrestamosCuotas (NroPrestamo,NroCuota,'
        + 'PeriodoEnvio,PeriodoPago,ImporteTotal,Interes,Capital,TipoPuesto) VALUES (' + el_id
        + ' , ' + trim(grilla5.Cells[0,t]) + ' , ' + trim(grilla5.Cells[1,t])
        + ' , ' + trim(grilla5.Cells[2,t]) + ' , ' + trim(grilla5.Cells[5,t])
        + ' , ' + trim(grilla5.Cells[4,t]) + ' , ' + trim(grilla5.Cells[3,t])
        + ' , ' + NroPuesto + ');';
        modulo2.Com1.Execute;
      end;

      modulo2.Com1.CommandText:='INSERT INTO PrestamosEstados(NroPrestamo,NroEstado,'
      + 'Activo,Usu_A) VALUES (' + el_id + ' , 0 , 1 , ' + inttostr(modulo2.num_usuario) + ');';
      modulo2.Com1.Execute;

      modulo2.Com1.CommandText:='INSERT INTO PrestamosPuestos(NroPrestamo,TipoPuesto,'
      + 'Activo,Usu_A) VALUES (' + el_id + ' , ' + NroPuesto + ', 1 , ' + inttostr(modulo2.num_usuario) + ');';
      modulo2.Com1.Execute;

      modulo2.Com1.CommandText:='UPDATE Prestamos SET MODIFICACION =1 WHERE (cuif='
      + d1.Text + ') and (TIPOPUESTO=' + Nropuesto + ') AND (codigo=' + NroCodigo
      + ') AND NroPrestamo IN (SELECT NroPrestamo FROM VPrestamosModif);';
      modulo2.Com1.Execute;

      Barra1.SimpleText:='Datos Guardados Correctamente';
      modulo2.Com1.CommandText:='COMMIT TRANSACTION';
      modulo2.Com1.Execute;
      AuditAccesos('ALTA CRED: ' + el_id ,'A');
      Imprime.Enabled:=true;
      Result:=true;
    except
      Barra1.SimpleText:='Error al Intentar Guardar los Datos';
      modulo2.Com1.CommandText:='ROLLBACK TRANSACTION';
      modulo2.Com1.Execute;
      Result:=false;
    end;
    end;

begin
{Comienza el Quilombo }
if guarda_todo(1) then begin
  messagedlgpos('Los Datos se han Guardado Satisfactoriamente!!',mtWarning,[mbok],0,screen.Width div 3,screen.Height div 3);;
  coloca1(0,'');
  agrega.Enabled:=false;
end
else begin
 messagedlgpos('Error!! Ocurrió un Error al Guardar los Datos.',mtError,[mbok],0,screen.Width div 3,screen.Height div 3);
 agrega.Enabled:=false;
end;
end;


procedure TAM_Credito.ImprimeClick(Sender: TObject);
var gf:integer;
begin
coloca1(5,'');
RvS.SystemPrinter.Orientation:=poPortrait;
gf:=messagedlgpos('Desea Imprimir las Planillas?'
    ,mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
  if gf = 1 then RvS.Execute;
end;

procedure TAM_Credito.RvSPrint(Sender: TObject);
var posfx,posfy,final,salto:double;
    t,k,hoja:integer;
    txt,val:string;
    r:boolean;

   ///////// IMPRIMIENDO EL ENCABEZADO ///////////////////////
   Function Logo(posx,posy:double;vaf:integer;Codigo:string):double;
   var Imagen1,Imagen2,MarcaAgua,MarcaAgua2:TBitMap;
   begin
   {El Logo}
     with Rvs do begin
     {Pegamos el Logo para el reporte}
     if Codigo <> '418' then begin
       Imagen1:= TBitMap.Create;  // creo la variable Imagen1
       Imagen1.LoadFromFile(modulo2.path_todo + '\Imagenes\logoadf.bmp');
       BaseReport.PrintBitmapRect(posx+16,posy+4,posx+51,posy+34,Imagen1);
       MarcaAgua:= TBitMap.Create;
       MarcaAgua.LoadFromFile(modulo2.path_todo + '\Imagenes\logoadfgris.bmp');
       BaseReport.PrintBitmapRect(30,80,190,205,MarcaAgua);
     end;

     if Codigo = '418' then begin
       Imagen2:= TBitMap.Create;  // creo la variable Imagen1
       Imagen2.LoadFromFile(modulo2.path_todo + '\Imagenes\logoFSF.bmp');
       BAseReport.PrintBitmapRect(posx+16,posy+5,posx+51,posy+33,Imagen2);
       MarcaAgua2:= TBitMap.Create;
       MarcaAgua2.LoadFromFile(modulo2.path_todo + '\Imagenes\logoFSFagua.bmp');
       BaseReport.PrintBitmapRect(30,80,190,205,MarcaAgua2);
     end;


     {Colocamos el título}
     BaseReport.Rectangle(posx+16,posy+5,posx+198,posy+33);
     BaseReport.SetFont('Arial Black',13);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+60,posy+13,'SOLICITUD DE AYUDA FINANCIERA CODIGO ' + NroCodigo);
     BaseReport.Rectangle(posx+55,posy+14,posx+183,posy+14);

     BaseReport.RoundRect(posx+95,posy+18,posx+140,posy+32,5,5);
     BaseReport.SetFont('Arial Black',14);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+100,posy+23,'N° Credito');
     BaseReport.PrintXY(posx+100,posy+23.5,'____________');
     BaseReport.SetFont('Arial Black',14);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+101,posy+30,completa1(trim(nrocredito.text),6,'0'));
     Logo:=posy+25;
     end;
   end;
   {fin del logo}

     /////////  GRILLA de RECAUDACION
  Function Mostrar1(posx,posy:double;Cod:boolean):double;
  var t,y:integer;
      sd,sd1,posn,posw:double;
      tot:real;
      la_fecha:string;
  begin
  posn:=posy;
  posw:=posx;
  with RvS do begin
    la_fecha:=trim(fecha.text);
    tot:=strtofloat(total.Text);
    //Cabecera
    BaseReport.Rectangle(posw+16,posy+5,posw+198,posy+79);

     BaseReport.SetFont('Arial',11);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posw+125,posn+10,'Formosa: ' + TRIM(fec_texto(la_fecha)));

     BaseReport.SetFont('Arial Black',12);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posw+18,posn+20,'SEÑORES:');
     BaseReport.PrintXY(posw+18,posn+20.5,'___________');

     BaseReport.SetFont('Arial',11);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posw+36,posn+27,'Cumplo en dirigirme a Uds. con el Objeto de solicitarles una ayuda financiera,');
     BaseReport.PrintXY(posw+18,posn+32,'a devolver por descuentos directo de mis haberes.-');
     BaseReport.PrintXY(posw+36,posn+37,'Sin más, saludoles Atte.-');

     BaseReport.SetFont('Arial Black',11);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posw+18,posn+45,'Escuela: ' +  trim(oficina.text));
     BaseReport.PrintXY(posw+135,posn+45,'Nº Puesto: ' +  trim(puesto.text));

     BaseReport.PrintXY(posw+18,posn+50,'Nº CUIF: ' + trim(d1.text));
     BaseReport.PrintXY(posw+115,posn+50,'Tipo Doc.:' +  trim(d2.text) + '  Nº: ' + trim(dni.text));

     BaseReport.PrintXY(posw+18,posn+55,'Domicilio: ' + trim(d6.text));
     BaseReport.PrintXY(posw+115,posn+55,'Loc.: ' +  trim(d9.text));

     BaseReport.PrintXY(posw+18,posn+60,'Colonia: ' + trim(d11.text));
     BaseReport.PrintXY(posw+115,posn+60,'C.P.: ' +  trim(d10.text));


     BaseReport.SetFont('Arial ',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posw+18,posn+74,'.......................................');
     BaseReport.SetFont('Arial Black',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posw+115,posn+74,trim(d4.Text));
     BaseReport.SetFont('Arial ',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posw+28,posn+78,'FIRMA');
     BaseReport.PrintXY(posw+115,posn+75,'.......................................................');
     BaseReport.PrintXY(posw+135,posn+78,'ACLARACION');

     BaseReport.RoundRect(posx+16,posy+80,posx+198,posy+86,5,5);
     BaseReport.SetFont('Arial Black',13);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+80,posy+85,'AUTORIZACION');

     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+23,posy+91,'AUTORIZO');
     BaseReport.SetFont('Arial ',12);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+50,posy+91,'expresamente, en forma irrevocable, a la');
     BaseReport.SetFont('Arial Black',11);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+128,posy+91,'AGREMIACION DEL DOCENTE');
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+16,posy+96,'FORMOSEÑO (A.D.F)');
     BaseReport.SetFont('Arial ',12);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+65,posy+96,'a descontar de mis haberes, la suma de PESOS:');
     BaseReport.SetFont('Arial Black',12);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+160,posy+96,'$ ' + trim(TOTAL.text));
     BaseReport.SetFont('Arial ',12);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+16,posy+101,'en ' + trim(cuotas.text) + ' cuotas de Pesos:');
     BaseReport.SetFont('Arial Black',12);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+63,posy+101,'$ ' + trim(valcuota.Text));
     BaseReport.SetFont('Arial ',12);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+90,posy+101,'cada una mediante el CODIGO ' + NroCodigo + '...; por la utilización');
     BaseReport.PrintXY(posx+16,posy+106,'de los Servicios Sociales, como así mismo la cuota Sindical correspondiente el Código 259,');
     BaseReport.PrintXY(posx+16,posy+111,'hasta cancelar la presente Dueda.-');

     BaseReport.SetFont('Arial Black',9);
     BaseReport.PrintXY(posx+16,posy+118,'1)');
     BaseReport.SetFont('Arial',9);
     BaseReport.PrintXY(posx+16,posy+118,'    PARA EL SUPUESTO QUE POR CUALQUIER CIRCUNSTANCIA FUERA IMPOSIBLE DEBITAR LAS CUOTAS PACTADAS');
     BaseReport.PrintXY(posx+16,posy+122,'    DE LOS HABERES CORRESPONDIENTES AL CARGO DOCENTE DECLARADO MAS ARRIBA, TAMBIEN AUTORIZO ');
     BaseReport.PrintXY(posx+16,posy+126,'    SUFICIENTEMENTE A LA "AGREMIACION DEL DOCENTE FORMOSEÑO" (ADF) A DEBITAR DE CUALQUIER OTRO ');
     BaseReport.PrintXY(posx+16,posy+130,'    CODIGO DE PUESTO DEL QUE RESULTARE TITULAR LAS CUOTAS PACTADAS HASTA SU CANCELACION.-');

     if not(Cod) then begin
     BaseReport.SetFont('Arial Black',9);
     BaseReport.PrintXY(posx+16,posy+138,'2)');
     BaseReport.SetFont('Arial',9);
     BaseReport.PrintXY(posx+16,posy+138,'    SI POR CUALQUIER CIRCUNSTANCIA, LAS CUOTAS NO FUERAN DESCONTADAS DE MIS HABERES, ME COMPROMETO ');
     BaseReport.PrintXY(posx+16,posy+142,'    POR LA PRESENTE, "A ABONAR EN FORMA PERSONAL O POR GIRO" A ESTA AGREMIACION DICHAS CUOTAS, DE LO');
     BaseReport.PrintXY(posx+16,posy+146,'    CONTRARIO AUTORIZO SUFICIENTEMENTE A QUE LA MISMA GENERE CUOTA/S ADICIONAL/ES AL FINALIZAR LAS');
     BaseReport.PrintXY(posx+16,posy+150,'    CONVENIDAS, MAS LOS PUNITORIOS CORRESPONDIENTES.-');
     end;

     if Cod then begin
     BaseReport.SetFont('Arial Black',9);
     BaseReport.PrintXY(posx+16,posy+138,'2)');
     BaseReport.SetFont('Arial',9);
     BaseReport.PrintXY(posx+16,posy+138,'    SI POR CUALQUIER CIRCUNSTANCIA, LAS CUOTAS NO FUERAN DESCONTADAS DE MIS HABERES, ME COMPROMETO ');
     BaseReport.PrintXY(posx+16,posy+142,'    POR LA PRESENTE, "A ABONAR EN FORMA PERSONAL O POR GIRO" A ESTA AGREMIACION DICHAS CUOTAS, DE LO');
     BaseReport.PrintXY(posx+16,posy+146,'    CONTRARIO AUTORIZO SUFICIENTEMENTE A QUE LA MISMA GENERE CUOTA/S ADICIONAL/ES AL FINALIZAR LAS');
     BaseReport.PrintXY(posx+16,posy+150,'    CONVENIDAS.-');
     end;

     BaseReport.SetFont('Arial Black',9);
     BaseReport.PrintXY(posx+16,posy+156,'3)');
     BaseReport.SetFont('Arial',9);
     BaseReport.PrintXY(posx+16,posy+156,'    PARA EL SUPUESTO QUE LA ADMINISTRACION PUBLICA DISPUSIERA PRORRATEAR CUALQUIERA DE LAS CUOTAS ');
     BaseReport.PrintXY(posx+16,posy+160,'    PACTADAS Y POR ELLO SE VIERA REDUCIDO EL VALOR PACTADO ORIGINARIAMENTE, O SE EXTENDIERA EL PLAZO ');
     basereport.printXY(posx+16,posy+164,'    DE PAGO ACORDADO, AUTORIZO A LA AGREMIACION A APLICAR  INTERESES COMPENSATORIOS SOBRE LOS SALDOS ');
     basereport.printXY(posx+16,posy+168,'    Y POR LA EXTENSION DE TIEMPO QUE RESULTE HASTA LAS CANCELACION DEL CAPITAL, Y A DEBITAR LOS MISMOS');
     basereport.printXY(posx+16,posy+172,'    DE LOS CODIGOS QUE CORRESPONDAN.- ');


    if EP.Checked = true then begin
      BaseReport.SetFont('Arial Black',9);
      BaseReport.PrintXY(posx+16,posy+178,'4)');
      BaseReport.SetFont('Arial',9);
      BaseReport.PrintXY(posx+16,posy+178,'    POR LA PRESENTE ME COMPROMETO A NO SOLICITAR NUEVA AYUDA ECONOMICA HASTA TANTO NO SE HAYA ');
      BaseReport.PrintXY(posx+16,posy+182,'    CANCELADO LA MISMA, ACATANDO LA DISPOCISION DE QUE ESTA AYUDA DE EMERGENCIA ES POR UNICA VEZ.-');
      //basereport.printXY(posx+16,posy+186,'    HABERES AFECTADOS AL CUMPLIMIENTO DE OBLIGACIONES CONTRAIDAS CON ANTERIORIDAD.-');
      {BaseReport.PrintXY(posx+16,posy+178,'    QUEDA  ACLARADO Y ENTENDIDO QUE LA PRESENTE AYUDA  ECONOMICA SE  OTORGA POR UNICA VEZ, Y QUE EL ');
      BaseReport.PrintXY(posx+16,posy+182,'    AFILIADO  CARECE  DE  DERECHO  A  RECLAMAR  NUEVA  AYUDA  HASTA  TANTO NO  SE HAYA LIBERADO EL O LOS');
      basereport.printXY(posx+16,posy+186,'    HABERES AFECTADOS AL CUMPLIMIENTO DE OBLIGACIONES CONTRAIDAS CON ANTERIORIDAD.-');}

    end;

    BaseReport.SetFont('Arial ',8);
    BaseReport.FontColor:=clBlack;
    BaseReport.PrintXY(posw+18,posn+198,'............................................');
    BaseReport.SetFont('Arial Black',9);
    BaseReport.FontColor:=clBlack;
    BaseReport.PrintXY(posw+115,posn+197,trim(d4.Text));
    BaseReport.SetFont('Arial ',8);
    BaseReport.FontColor:=clBlack;
    BaseReport.PrintXY(posw+115,posn+198,'............................................');
    BaseReport.PrintXY(posw+28,posn+201,'FIRMA');
    BaseReport.PrintXY(posw+125,posn+201,'ACLARACION');

    BaseReport.Rectangle(posw+16,posy+202,posw+198,posy+294);//  posy+158
    BaseReport.SetFont('Arial ',11);
    BaseReport.FontColor:=clBlack;
    BaseReport.PrintXY(posx+18,posy+208,'Formosa,...... de ...................... de 200__');
    BaseReport.PrintXY(posx+18,posy+214,'El día,...... de ....................... de año _________');
    BaseReport.RoundRect(posx+105,posy+204,posx+135,posy+214,5,5);
    BaseReport.SetFont('Arial Black',9);
    BaseReport.FontColor:=clBlack;
    BaseReport.PrintXY(posx+108,posy+208,'Nº CREDITO');
    BaseReport.PrintXY(posx+108,posy+212,completa1(trim(nrocredito.text),6,'0'));

    BaseReport.RoundRect(posx+138,posy+204,posx+185,posy+214,5,5);
    BaseReport.SetFont('Arial Black',11);
    BaseReport.FontColor:=clBlack;
    BaseReport.PrintXY(posx+141,posy+210,'$:');
    BaseReport.PrintXY(posx+147,posy+210,trim(total.Text));

    BaseReport.SetFont('Arial ',11);
    BaseReport.FontColor:=clBlack;
    BaseReport.PrintXY(posx+55,posy+221,'A la vista pagare(mos) a su orden, la suma de $:');
    BaseReport.SetFont('Arial Black',10.5);
    BaseReport.FontColor:=clBlack;
    BaseReport.PrintXY(posx+143,posy+221,trim(total.text));
    BaseReport.PrintXY(posx+18,posy+227, '(PESOS ' + numtopesos(redondeo(floattostr(tot),2)) + ').-');
    BaseReport.SetFont('Arial ',11);
    BaseReport.FontColor:=clBlack;
    BaseReport.PrintXY(posx+18,posy+232,'por igual valor recibido en efectivo a mi entera satisfacción pagadero sin protesto (Art. 44 y 50 Decreto');
    BaseReport.PrintXY(posx+18,posy+237,'Ley 5965/63).- En caso de mora, nos obligamos a Pagadero en el Domicilio:' );
    //BaseReport.PrintXY(posx+18,posy+198, trim(d6.text) + '.-');

    BaseReport.PrintXY(posw+23,posn+254,'.....................................................');
    BaseReport.PrintXY(posw+115,posn+254,'.....................................................');
    BaseReport.PrintXY(posw+29,posn+258,'FIRMA del CO-DEUDOR');
    BaseReport.PrintXY(posw+125,posn+258,'FIRMA DEL DEUDOR');

    BaseReport.PrintXY(posx+18,posy+264,'Aclaración:............................................');
    BaseReport.PrintXY(posx+100,posy+264,'Aclaración:............................................');
    BaseReport.PrintXY(posx+18,posy+270,'DNI/LC/LE:............................................');
    BaseReport.PrintXY(posx+100,posy+270,'DNI/LC/LE:............................................');
    BaseReport.PrintXY(posx+18,posy+276,'Domicilio:............................................');
    BaseReport.PrintXY(posx+100,posy+276,'Domicilio:............................................');
    BaseReport.PrintXY(posx+18,posy+284,'Localidad:............................................');
    BaseReport.PrintXY(posx+100,posy+284,'Localidad:............................................');
    BaseReport.PrintXY(posx+100,posy+290,'Telefono:............................................');
  end;
  end;
 
begin
  try
  posfx:=5.5;posfy:=5;
  salto:=4;final:=0;hoja:=1;
  val:=el_codigo(1);

  if (val = '260') then r:=true;
  if (val = '2602') then r:=true;
  if (val = '261') then r:=true;
  if (val = '262') then r:=true;
  if (val = '418') then r:=false;
  if (val = '419') then r:=true;
  if (val = '453') then r:=true;
  if (val = '454') then r:=false;
  if (val = '4540') then r:=false;
  if (val = '4541') then r:=false;
  if (val = '4542') then r:=false;

  posfy:=Logo(posfx,posfy,hoja,val)+ salto;  // llamamos al encabezado
  posfy:=mostrar1(posfx,posfy,r)+salto;    // llamamos a la recaudacion

  except

  end;
end;

procedure TAM_Credito.FECHAExit(Sender: TObject);
var fec:Tdatetime;
begin
try
 fec:=strtodate(trim(FECHA.Text));
except
  messagedlgpos('La fecha es Erronea!!',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  FECHA.SetFocus;
end;
coloca1(7,'');
end;

procedure TAM_Credito.CB1Click(Sender: TObject);
begin
grupo6.Visible:=CB1.Checked;
grupo7.Visible:=CB1.Checked;
grupo7.Controls[1].SendToBack;
end;

procedure TAM_Credito.AGREGARClick(Sender: TObject);
var AltasAfiliados: TAltasAfiliados;
begin
AltasAfiliados:= TAltasAfiliados.create(self);
try
  AltasAfiliados.ODNI.Text:=DNI.Text;
  AltasAfiliados.ShowModal;
finally
  AltasAfiliados.destroy;
  DNI.SetFocus;
end;
end;

procedure TAM_Credito.BorrarClick(Sender: TObject);
var t,y:integer;
begin
for t:=0 to grilla5.ColCount-1 do
  for y:=1 to grilla5.RowCount-1 do grilla5.Cells[t,y]:='';
grilla5.RowCount:=2;
DNI.Text:='00000000';CODIGO.ItemIndex:=0;
OFICINA.Clear;PUESTO.Clear;RECIBO.Text:='0000000000000000000';
CREDITOS.Close;AFILIADOS.Close;
SC1.Scroll:=false;PC1.ActivePage:=PC1.Pages[0];
PC2.ActivePage:=PC2.Pages[0];
IMPORTE.Text:='00000.00';CUOTAS.ItemIndex:=0;
VALCUOTA.Text:='0';OBSERV.Clear;
VENC1.Clear;VENC2.Clear;VENC3.Clear;VENC4.Clear;
NROCREDITO.Text:='00000000';CB1.Checked:=false;
COEF.Clear;INTERES.Clear;CAPITAL.Clear;INTERESES.Clear;TOTAL.Clear;
AGREGA.Enabled:=false;IMPRIME.Enabled:=false;
DNI.SetFocus;
cuotas.Clear;
end;

procedure TAM_Credito.RvS1Print(Sender: TObject);  // EL DETALLE DE CREDITOS EMITIDOS
var posfx,posfy,final,salto:double;
var t,k,hoja:integer;
var tot,total:real;
var txt,txt1,txt2,txt3,txt4,txt5,txt6,txt7,txt8,txt9,txt10,val:string;

   Function Logo1(posx,posy:double;vaf:integer):double;
   var Imagen1:TBitMap;
   begin
   {El Logo}
     with Rvs1 do begin
     {Pegamos el Logo de Osfatun para el reporte}
     Imagen1:= TBitMap.Create;  // creo la variable Imagen1
     Imagen1.LoadFromFile(modulo2.path_todo + '\Imagenes\logoadf.bmp');
     BaseReport.PrintBitmapRect(posx+6,posy+6,posx+51,posy+31,Imagen1);

     BaseReport.Rectangle(posx+4,posy+5,posx+270,posy+33);
     BaseReport.SetFont('Arial Black',13);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+60,posy+13,'DETALLE DE CREDITOS YA EMITIDOS');
     BaseReport.Rectangle(posx+55,posy+14,posx+183,posy+14);
     BaseReport.SetFont('Arial ',8);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+248,posy+13,'Usu Imp.: ' + inttostr(modulo2.num_usuario) + ' - Fec. Imp.:' + strcut(Fec_System(),10));
     //BaseReport.PrintXY(posx+248,posy+13,'(Usu. Imp: ' + inttostr(modulo2.num_usuario) + ')');

     BaseReport.RoundRect(posx+55,posy+18,posx+200,posy+32,5,5);
     BaseReport.SetFont('Arial Black',9);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+60,posy+23,'Correspondiente al Afiliado');
     BaseReport.PrintXY(posx+60,posy+23,'_____________________________');
     BaseReport.SetFont('Arial Black',10);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+61,posy+30,trim(d4.text) + '  -  Cuif: '+ trim(d1.text));
      BaseReport.SetFont('Arial',9);
     BaseReport.FontColor:=clBlack;
     BaseReport.PrintXY(posx+215,posy+30,'Fecha Impresion:  '+ fechalarga(strcut(fec_system(),10)));
     Logo1:=posy+25;
     end;
   end;

  Function Mostrar5(posx,posy:double):double;
  var t,y:integer;
  var sd,sd1,posn,posw:double;
  var tot,total:real;
  var txt,txt1,txt2,txt3,txt4,txt5,txt6,txt7,txt8,txt9,txt10,val:string;

  begin
  posn:=posy;
  posw:=posx;
  posfy:=posy;
  tot:=0;total:=0;
  salto:=4;k:=1;
    with RvS1 do begin
     BaseReport.SetFont('Arial',9);
     BaseReport.Rectangle(posx+4,posy+15,posx+270,posy+10);
     BaseReport.Rectangle(posx+26,posy+15,posx+270,posy+10);
     BaseReport.Rectangle(posx+38,posy+15,posx+270,posy+10);
     BaseReport.Rectangle(posx+54,posy+15,posx+270,posy+10);
     BaseReport.Rectangle(posx+74,posy+15,posx+270,posy+10);
     BaseReport.Rectangle(posx+104,posy+15,posx+270,posy+10);
     //BaseReport.Rectangle(posx+114,posy+15,posx+270,posy+6);
     BaseReport.Rectangle(posx+124,posy+15,posx+270,posy+10);
     BaseReport.Rectangle(posx+195,posy+15,posx+270,posy+10);
     BaseReport.Rectangle(posx+209,posy+15,posx+270,posy+10);
     BaseReport.Rectangle(posx+226,posy+15,posx+270,posy+10);

     BaseReport.PrintXY(posx+5,posy+15,'Nro.Prestamo');
     BaseReport.PrintXY(posx+27,posy+15,'Codigo');
     BaseReport.PrintXY(posx+39,posy+15,'Imp. Total');
     BaseReport.PrintXY(posx+55,posy+15,'Cant.Cuotas');
     BaseReport.PrintXY(posx+75,posy+15,'Pagos Efectuados');
     BaseReport.PrintXY(posx+105,posy+15,'Imp. Cuota');
     BaseReport.PrintXY(posx+125,posy+15,'Oficina');
     BaseReport.PrintXY(posx+196,posy+15,'Puesto');
     BaseReport.PrintXY(posx+210,posy+15,'Nro.Oficina');
     BaseReport.PrintXY(posx+227,posy+15,'Estado');
     BaseReport.PrintXY(posx+248,posy+15,'Total Acum.');
    end;
    Result:=posy+15.5;
  end;

  Function MostrarRaya(posx,posy,posfin:double):double;
  begin
  with RvS1 do begin
    BaseReport.Rectangle(posx+4,posfin,posfx+270,posy+2);
    BaseReport.Rectangle(posx+26,posfin,posfx+270,posy+2);
    BaseReport.Rectangle(posx+38,posfin,posfx+270,posy+2);
    BaseReport.Rectangle(posx+54,posfin,posfx+270,posy+2);
    BaseReport.Rectangle(posx+74,posfin,posfx+270,posy+2);
    BaseReport.Rectangle(posx+104,posfin,posx+270,posy+2);
    BaseReport.Rectangle(posx+124,posfin,posx+270,posy+2);
    BaseReport.Rectangle(posx+195,posfin,posx+270,posy+2);
    BaseReport.Rectangle(posx+209,posfin,posx+270,posy+2);
    BaseReport.Rectangle(posx+226,posfin,posx+270,posy+2);
  end;
  Result:=posy+2;
  end;

begin
posfx:=5.5;posfy:=5;tot:=0;total:=0;
salto:=4;final:=0;hoja:=1;k:=1;
posfy:=Logo1(posfx,posfy,hoja);
posfy:=mostrar5(posfx,posfy);
final:=posfy;
  try
    for t:=1 to CREDITOS.RecordCount  do begin
          CREDITOS.RecNo:=t;
          if val = CREDITOS.Fields[1].AsString then
             tot:=tot + CREDITOS.Fields[11].AsFloat
          else begin
            if (t > 1) or (t = CREDITOS.RecordCount) then begin
            val:=CREDITOS.Fields[1].AsString;                 // nroprestamo
            RvS1.BaseReport.PrintLeft('$ ' + redondeo(floattostr(tot),2),posfx+250); // el acumulado
            end;
          val:=trim(CREDITOS.Fields[1].AsString);
          tot:=CREDITOS.Fields[11].AsFloat;
          end;

          txt3:=trim(CREDITOS.Fields[2].AsString); //importe
          txt4:=trim(CREDITOS.Fields[0].AsString); //nroprestamo
          if  (txt3 <> txt1) or (txt9 <> txt4) then begin
            RvS1.BaseReport.PrintXY(posfx+10,posfy+5,trim(CREDITOS.Fields[0].AsString));
            RvS1.BaseReport.PrintXY(posfx+28,posfy+5,trim(CREDITOS.Fields[1].AsString));
            RvS1.BaseReport.PrintXY(posfx+40,posfy+5,'$ ' + trim(CREDITOS.Fields[2].AsString));
            RvS1.BaseReport.PrintXY(posfx+60,posfy+5,trim(CREDITOS.Fields[3].AsString));
            RvS1.BaseReport.PrintXY(posfx+80,posfy+5,trim(CREDITOS.Fields[4].AsString));
            RvS1.BaseReport.PrintXY(posfx+106,posfy+5,'$ ' + trim(CREDITOS.Fields[11].AsString));
            RvS1.BaseReport.PrintXY(posfx+125,posfy+5,trim(CREDITOS.Fields[7].AsString));
            RvS1.BaseReport.PrintXY(posfx+196,posfy+5,trim(CREDITOS.Fields[8].AsString));
            RvS1.BaseReport.PrintXY(posfx+213,posfy+5,trim(CREDITOS.Fields[5].AsString));
            RvS1.BaseReport.PrintXY(posfx+227,posfy+5,trim(CREDITOS.Fields[10].AsString));
            txt1:=trim(CREDITOS.Fields[2].AsString); //importe
            txt9:=trim(CREDITOS.Fields[0].AsString); //nroprestamo
            k:=k+1;
            posfy:=posfy + 1;
          end;

          if (t = CREDITOS.RecordCount) then begin
           RvS1.BaseReport.MoveTo(posfx+154,posfy+3);
           RvS1.BaseReport.PrintLeft('$ ' + redondeo(floattostr(tot),2),posfx+250);
          end;
            posfy:=posfy + salto;
       end;
       RVS1.BaseReport.SetFont('Arial Black',9);
       RvS1.BaseReport.PrintXY(posfx+220,posfy+7,'TOTAL GRAL:   ' + '$ ' + totgral);

   posfy:=MostrarRaya(posfx,posfy,final) + salto;
  except
  end;
end;

procedure TAM_Credito.EPKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  if Agrega.Enabled = true then Agrega.SetFocus;
end
end;

procedure TAM_Credito.LMDButton7Click(Sender: TObject);
var AM_SubTipo: TAM_TipoPuesto;
begin
  AM_SubTipo:=TAM_TipoPuesto.Create(self);
try
  AM_SubTipo.ShowModal;
finally
  AM_SubTipo.Destroy;
end;
    Coloca1(4,'');
    puesto.SetFocus;
end;

procedure TAM_Credito.LMDButton1Click(Sender: TObject);
var AM_Oficinas: TCONSUL;
begin
  AM_Oficinas:= TCONSUL.create(self);
    try
      AM_Oficinas.ShowModal;
    finally
      AM_Oficinas.destroy;
    end;
  coloca1(3,'');
  oficina.SetFocus;
end;

procedure TAM_Credito.DIGClick(Sender: TObject);
var AM_CpTwain: TAM_CpTwain;
begin
AM_CpTwain:= TAM_CpTwain.create(self);
try
  AM_CpTwain.D1.Text:=D1.Text;
  AM_CpTwain.D2.Text:=PUESTO.Text;
  AM_CpTwain.D4.Text:=D2.Text;
  AM_CpTwain.D5.Text:=DNI.Text;
  AM_CpTwain.D6.Text:=D4.Text;
  AM_CpTwain.ShowModal;
  Coloca1(1,'');
  //buscar.Enabled:=true;
  BUSCAR.Enabled:=false;

  if (inttostr(modulo2.num_usuario) = '4')  or (inttostr(modulo2.num_usuario) = '1') then begin
    BUSCAR.Enabled:=true;
    BUSCAR.SetFocus;
  end
  else begin
    if ExistenImagenes() then begin
      BUSCAR.Enabled:=true;
      BUSCAR.SetFocus;
    end
    else messagedlg('No existe digitalizado el Recibo de Sueldo!!',mtWarning,[mbok],0);
  end
finally
  AM_CpTwain.destroy;
end;
end;

Function TAM_Credito.ExistenImagenes():boolean;
var t:integer;
    Peri:string;
begin
Result:=false;
if not(DIGITAL.IsEmpty) then begin
  Peri:=RightStr(FECHA.Text,4) + MidStr(FECHA.Text,4,2);
  for t:=1 to DIGITAL.RecordCount do begin
    DIGITAL.RecNo:=t;
    if (Peri = DIGITAL.Fields[1].AsString) and (LeftStr(DIGITAL.Fields[3].AsString,2) = 'RS')
      and (PUESTO.Text = trim(DIGITAL.Fields[2].AsString)) then begin
        Result:=true;
        Exit;
    end;
  end;
end;
end;

end.

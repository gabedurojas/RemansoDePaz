unit SelecPagos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, JvExButtons, JvBitBtn, CheckLst,
  JvExCheckLst, JvCheckListBox, JvgGroupBox,ADODB, ExtCtrls, ComCtrls;

type
  TSelec_Pagos = class(TForm)
    JvgGroupBox5: TJvgGroupBox;
    ListaCheck: TJvCheckListBox;
    GUARDA: TJvBitBtn;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    CB1: TCheckBox;
    Label1: TLabel;
    barra: TStatusBar;
    procedure FormActivate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure ListaCheckClickCheck(Sender: TObject);
    procedure Calcular();
    procedure GUARDAClick(Sender: TObject);
  private
    DataSet:TADODataset; { Private declarations }
  public
    NroAccion,NroOpcion,NroObjeto,NroCta,anio:string;
    Importe:real;
    CntRecords,a:integer;
    IdCombos:array of array of string;{ Public declarations }
  end;

var
  Selec_Pagos: TSelec_Pagos;

implementation

uses unidad,Modulo;
{$R *.dfm}
procedure TSelec_Pagos.FormActivate(Sender: TObject);
begin
SetLength(IdCombos,7);
Coloca1(1);
end;


procedure TSelec_Pagos.Coloca1(nro:byte);
var t:integer;
begin
 if nro=1 then begin //Combo Formularios
  ListaCheck.Clear;
  DataSet:=TADODataset.Create(nil);
  DAtaSet.ConnectionString:=modulo2.Conexion;
  label1.Visible:=false;
  if nroobjeto='1' then  begin   ///parcelas
   DataSet.CommandText:='select NroCuota,TotalCuota as importe,InteresAcumulado as Punitorio,null '
   +' from EstadoCuentaVentas (' + NroAccion + ',GETDATE(),0) where EstadoPago = ''deuda'' or EstadoPago = ''parcial'''  ;
  end;
  if nroobjeto='2' then  begin  ///servicios
   DataSet.CommandText:='SELECT Nrocuota,Importe,punitorio,idservicio FROM Fn_PeriodosDeudaServ (' + NroAccion + ') order by 1';
  end;
  if nroobjeto='3' then begin   ////mante
     //DataSet.CommandText:='SELECT Periodo,Importe,Punitorio,null FROM Fn_PeriodosDeudaMant (' + NroAccion + ') order by periodo desc';
   DataSet.CommandText:='select periodo,TotalCuota as importe,InteresAcumulado as Punitorio,null  '
   +' from EstadoCuentaMantenimiento (' + NroAccion + ',GETDATE(),0)  where EstadoPago = ''deuda'''
   +' union '
   +' SELECT Periodo,Importe,Punitorio,null FROM Fn_PeriodosDeudaMant (' + NroAccion + ') where left(periodo,4)=YEAR(GETDATE())+1 '
   +' order by periodo asc ' ;
  end;
  //if nroobjeto='4' then begin   ////mante especial
  // DataSet.CommandText:='SELECT Periodo, TotalCuota as importe,InteresAcumulado as Punitorio,null FROM [EstadoCuentaMantenimiento] (0 ,GETDATE(),0)'
  //   +' where Periodo >= year(DATEADD(year, -5, GETDATE())) * 100 + 01 and Periodo <> 999999 ' ;
  //end;
  if nroobjeto='6' then begin   ////psp
   DataSet.CommandText:='select periodo,TotalCuota as importe,InteresAcumulado as Punitorio,null  '
   +' from estadocuentapsp (' + NroAccion + ',GETDATE(),0) where EstadoPago = ''deuda'' order by periodo desc ' ;
  end;
  if nroobjeto='8' then begin   ////mantenim de panteones
   DataSet.CommandText:='select periodo,TotalCuota as importe,InteresAcumulado as Punitorio,null  '
   +' from EstadoCuentaPanteones (' + NroAccion + ',GETDATE(),0) where EstadoPago = ''deuda'' order by periodo desc ' ;
  end;
  //
  if nroobjeto='13' then  begin  ///servicios sepelios
   DataSet.CommandText:='SELECT Idservicio,nrocuota,Importe,titular FROM Fn_PeriodosDeudaServicioSepelios (null) order by 1';
  end;
  DataSet.Open;
  SetLength(IdCombos[0],DataSet.RecordCount);//Periodo
  SetLength(IdCombos[1],DataSet.RecordCount);//Importe
  SetLength(IdCombos[2],DataSet.RecordCount);//Punitorio
  SetLength(IdCombos[3],DataSet.RecordCount);//Accion (0 (Sin accion) - 1 (Pago Total) - 2 (Pago Parcial)
  SetLength(IdCombos[4],DataSet.RecordCount);//Importe Parcial
  SetLength(IdCombos[5],DataSet.RecordCount);//Punitorio Parcial
  SetLength(IdCombos[6],DataSet.RecordCount);//Punitorio Parcial
  CntRecords:=DataSet.RecordCount;
  for t:=1 to DataSet.RecordCount do begin
   DataSet.RecNo:=t;
   ListaCheck.Items.Append(DataSet.Fields[0].AsString + ' - $ '
   + StrFill(redondeo(DataSet.Fields[1].AsString,2),6,' ','') + ' - $ '
   + StrFill(redondeo(DataSet.Fields[2].AsString,2),6,' ','') + ' - $ '
   + StrFill(redondeo('0',2),8,' ',''));
   IdCombos[0,t-1]:=DataSet.Fields[0].AsString;
   IdCombos[1,t-1]:=DataSet.Fields[1].AsString;
   IdCombos[2,t-1]:=DataSet.Fields[2].AsString;
   IdCombos[3,t-1]:='0';
   IdCombos[4,t-1]:='0';
   IdCombos[5,t-1]:='0';
   IdCombos[6,t-1]:=DataSet.Fields[3].AsString;
  end;
  DataSet.Close;
  DataSet.Free;
  DataSet:=nil;
 end;
end;

procedure TSelec_Pagos.Calcular();
var t:integer;
    valor,Parcial:real;
    paso:boolean;
    datoselec:string;
begin
 datoselec:='';
 valor:=Importe;
 a:=0;
 for t:=0 to ListaCheck.Count-1 do begin
  label1.Caption:=IdCombos[6,t];
  if ListaCheck.Checked[t] then begin
   a:=a+1;
   if CB1.Checked then begin
    if valor > 0 then begin
     datoselec:=datoselec + IdCombos[0,t] + ' - ';
     barra.Panels[1].Text:=datoselec;
     if (valor - StrToFloat(IdCombos[2,t])) > 0 then begin
      Parcial:=valor - StrToFloat(IdCombos[2,t]);
      paso:=true;
     end
     else begin
      paso:=false;
      Parcial:=valor;
      IdCombos[3,t]:='2';
      IdCombos[5,t]:=FloatToStr(valor);//Punitorio Parcial
     end;
     valor:=valor - StrToFloat(IdCombos[2,t]);
     if paso and ((valor - StrToFloat(IdCombos[1,t])) >= 0) then begin
      Parcial:=valor - StrToFloat(IdCombos[1,t]);
      paso:=true;
      IdCombos[3,t]:='1';
     end
     else begin
      Parcial:=valor;
      paso:=false;
      IdCombos[3,t]:='2';
      IdCombos[4,t]:=FloatToStr(valor);//Importe Parcial
     end;
     valor:=valor - StrToFloat(IdCombos[1,t]);
     ListaCheck.Items.Strings[t]:=IdCombos[0,t] + ' - $ '
     + StrFill(redondeo(IdCombos[1,t],2),6,' ','') + ' - $ '
     + StrFill(redondeo(IdCombos[2,t],2),6,' ','') + ' - $ '
     + StrFill(redondeo(FloatToStr(Parcial),2),8,' ','') + ' - ' + IdCombos[6,t];
    end
    else ListaCheck.Checked[t]:=false;
   end
   else begin
    IdCombos[3,t]:='1';
    if valor > 0 then begin
     datoselec:=datoselec + IdCombos[0,t] + ' - ';
     barra.Panels[1].Text:=datoselec;
    end;
   end;
  end
  else
   ListaCheck.Items.Strings[t]:=IdCombos[0,t] + ' - $ '
   + StrFill(redondeo(IdCombos[1,t],2),6,' ','') + ' - $ '
   + StrFill(redondeo(IdCombos[2,t],2),6,' ','') + ' - $ '
   + StrFill(redondeo('0',2),8,' ','') + ' - ' + IdCombos[6,t];
 end;
 datoselec:='';
end;

procedure TSelec_Pagos.ListaCheckClickCheck(Sender: TObject);
begin
Calcular();
GUARDA.Enabled:=true;
end;

procedure TSelec_Pagos.GUARDAClick(Sender: TObject);
begin
// if a=0 then begin
//   messagedlg('ATENCION no ningun periodos Seleccionado...',mtError,[mbok],0);
// end
// else begin
//   close;
// end;
   close;
end;

end.

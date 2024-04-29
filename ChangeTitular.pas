unit ChangeTitular;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, JvExButtons, JvBitBtn,Unidad, DB,
  Grids, DBGrids, JvgGroupBox,ClaseFunciones,DBClient, ExtCtrls;

type
  TCambioTit = class(TForm)
    SBarra1: TStatusBar;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label21: TLabel;
    Edit1: TEdit;
    Button2: TJvBitBtn;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    JvgGroupBox5: TJvgGroupBox;
    JvgGroupBox1: TJvgGroupBox;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    cant: TEdit;
    DataSource1: TDataSource;
    DBGrid2: TDBGrid;
    GroupBox4: TGroupBox;
    DataSource2: TDataSource;
    bSalir: TJvBitBtn;
    Shape2: TShape;
    Label55: TLabel;
    Shape3: TShape;
    Label56: TLabel;
    JvBitBtn1: TJvBitBtn;
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure bSalirClick(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure JvBitBtn1Click(Sender: TObject);
  private
      gh:boolean;
    { Private declarations }
  public
    Funciones:TFuncionesVarias;
    DtcomboC,DataSetC,DataSet,DataSet1,DataSetCli,DataSetT:TClientDataSet; //
    //declaro los DataSet
    { Public declarations }
  end;

var
  CambioTit: TCambioTit;

implementation

uses Modulo,Busqueda;

{$R *.dfm}

procedure TCambioTit.FormActivate(Sender: TObject);
begin
  if not gh then begin
  gh:=true;
  button2.SetFocus;
  end;
end;

procedure TCambioTit.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TCambioTit.Button2Click(Sender: TObject);
var Busqueda:TLA_BUSQUEDA;
begin
  Busqueda:=TLA_BUSQUEDA.Create(self);
  try
    Busqueda.NroOpcion:=3;
    Busqueda.ShowModal;
    edit1.Text:=busqueda.DB2.Text;    //CUIf
    edit3.Text:=busqueda.DB1.Text;     //DNI
    edit2.Text:=busqueda.DB4.Text;   //Nombre
  finally
    Busqueda.Destroy;
  end;
  cant.Clear;
  coloca1(0);
end;

procedure TCambioTit.Coloca1(nro:byte);
 var txtw:widestring;
begin
  if nro=0 then begin
    DataSet.Free;
    DataSet:=TClientdataSet.Create(nil);
    DataSource1.DataSet:=DataSet;
    Funciones:=TFuncionesVarias.Create(nil);
    Funciones.ConnectionString:=modulo2.Conexion;
    txtw:='SELECT COUNT(Cuif) FROM ParcelasTitulares where Nivel=1 and NroTipoAcc=2 '
    + ' and (Cuif= '+ trim(edit1.Text) +') GROUP BY Cuif ';  //HAVING (COUNT(Cuif) > 1)
    if not Funciones.Listar(txtw,DataSet) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    Funciones.Free;
    cant.Text:=DataSource1.DataSet.Fields[0].AsString;
    if trim(cant.Text) <> '' then begin
        coloca1(1);
        coloca1(2);
    end;
  end;
  if nro=1 then begin
    DtcomboC.Free;
    DtcomboC:=TClientdataSet.Create(nil);
    DataSource1.DataSet:=DtcomboC;
    Funciones:=TFuncionesVarias.Create(nil);
    Funciones.ConnectionString:=modulo2.Conexion;
    txtw:='SELECT  ParcelasTitulares.nroaccion, parcelas.sector,parcelas.parcela FROM  ParcelasTitulares'
          + ' inner join parcelas on parcelas.nroaccion = ParcelasTitulares.nroaccion '
          + ' WHERE (ParcelasTitulares.Cuif='+  trim(edit1.Text) +') order by 1';
    if not Funciones.Listar(txtw,DtcomboC) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    Funciones.Free;
  end;
  if nro=2 then begin
    DataSetC.Free;
    DataSetC:=TClientdataSet.Create(nil);
    DataSource2.DataSet:=DataSetC;
    Funciones:=TFuncionesVarias.Create(nil);
    Funciones.ConnectionString:=modulo2.Conexion;
    txtw:='SELECT * FROM AccionesTitularxCUIF ('+  trim(edit1.Text) +')';
    if not Funciones.Listar(txtw,DataSetC) then
      messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    Funciones.Free;
    dbgrid2.Columns[0].Width:=40;
    dbgrid2.Columns[1].Width:=80;
    dbgrid2.Columns[2].Width:=150;
    dbgrid2.Columns[3].Width:=50;
    dbgrid2.Columns[4].Width:=150;
  end;
end;

procedure TCambioTit.bSalirClick(Sender: TObject);
begin
close;
end;

procedure TCambioTit.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if (trim(DBGrid2.Fields[5].Text) = '1')  then begin
    DBGrid2.Canvas.Brush.Color:=clLime;
    DBGrid2.Canvas.FillRect(Rect);
    DBGrid2.Canvas.Font.Color:= clBlack;
end;
if (trim(DBGrid2.Fields[5].Text) <> '1') then begin
    DBGrid2.Canvas.Brush.Color:=clwindow;
    DBGrid2.Canvas.FillRect(Rect);
    DBGrid2.Canvas.Font.Color:= clBlack;
end;
DBGrid2.DefaultDrawColumnCell(Rect,Datacol,Column,State);   
end;

procedure TCambioTit.JvBitBtn1Click(Sender: TObject);
var gf:integer;
    Cons:widestring;
begin
  gf:=messagedlgpos('Desea dar de BAJA este Cliente, Titular en '+  trim(cant.Text) +' Parcelas ?',mtWarning,[
             mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
  if gf = 1 then begin
    try
    Funciones:=TFuncionesVarias.Create(nil);
    Funciones.ConnectionString:=modulo2.Conexion;
    Cons:='CambiaTitularAcciones ' + trim(edit1.Text) + ' , ' + chr(39) + inttostr(modulo2.nro_usu) + chr(39);
    if not Funciones.ListarSinResp(Cons) then messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
      else begin
      Funciones.Free;
      messagedlg('Se ha dado de BAJA a este Titular con Exito',mtConfirmation,[mbok], 0);
    end;
    except
     //  Barra1.SimpleText:='Error al Intentar dar de BAJA este Titular';
    end;
  end
  else begin
     messagedlg('ATENCION.. Ud. ha cancelado la esta operacion...',mtWarning,[mbok],0);
  end;
end;

end.

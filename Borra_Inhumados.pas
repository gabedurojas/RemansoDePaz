unit Borra_Inhumados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,DBClient, StdCtrls, DBCtrls, Grids, DBGrids, ComCtrls, StrUtils,
  ClaseClientes, DB, Mask, ADODB, Buttons, ExtCtrls,ClaseFunciones,
  WSDLIntf, Unidad, JvExGrids, JvStringGrid, JvExDBGrids, JvDBGrid,
  JvExButtons, JvBitBtn, ToolWin,ClaseParcelasInhumados;

type THackStringGrid = class(TStringGrid);
type
  TElimina_Inhum = class(TForm)
    Barra1: TStatusBar;
    DataSource1: TDataSource;
    BusDir: TOpenDialog;
    PC1: TPageControl;
    TabSheet4: TTabSheet;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    SALIR: TJvBitBtn;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    GUARDA: TJvBitBtn;
    Label4: TLabel;
    D6: TEdit;
    Label19: TLabel;
    d1: TEdit;
    Label1: TLabel;
    d2: TEdit;
    Label2: TLabel;
    d3: TEdit;
    Label3: TLabel;
    d4: TEdit;
    Label5: TLabel;
    d5: TEdit;
    Label6: TLabel;
    D7: TEdit;
    Label7: TLabel;
    D8: TEdit;
    Label8: TLabel;
    D9: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    d10: TEdit;
    procedure Coloca1(nro:byte);
    procedure FormActivate(Sender: TObject);
    procedure SALEClick(Sender: TObject);
    procedure GUARDAClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure FormKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure SALIRClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    control:boolean;{Controla que no hubiere errores en la carga de datos}
    { Private declarations }
  public
    // aca instancio la clase si la clase esta definida en el uses de la ventana
    Cliente:TClientes;
    Funciones:TFuncionesVarias;
    ParcelasInhumados:TParcelasInhumados;
    Resultado,elcuif,ArchivoImg:string;
    pos,ultimoordservicio:integer;
    DataSet,DtCombo:TClientDataSet; //declaro el DAtaset de los Combobox
    //DSGral:TClientDataSet;//declaro el DAtaset de la grilla
    //IdCombos:array of array of string;
    //TiposDni,TipSexos:Unidad.TablaXML;
  end;

var
  Elimina_Inhum: TElimina_Inhum;

implementation

uses Modulo,Busqueda,AM_VenGenerica,ClaseTiposSexos,
     ClaseSistemas,ClaseTipoDni;

{$R *.dfm}

procedure TElimina_Inhum.FormActivate(Sender: TObject);
begin
PC1.ActivePage:=PC1.Pages[0];
Coloca1(0);
GUARDA.Enabled:=false;
end;

procedure TElimina_Inhum.Coloca1(nro:byte);
var t,y:integer;
    txt,sex:string;
    txtw:widestring;
    TipoDni:TTipoDni;
    TiposSexos:TTiposSexos;
    Funciones:TFuncionesVarias;
    Sistema:TSistemas;
    Param:TWideStrings;
    NroDni,NroCuif:variant;
begin
if nro=0 then begin //combotipodni
    DtCombo.Free;
    Dtcombo:=TClientDataSet.Create(nil);
    DataSource1.DataSet:=Dtcombo;
    Funciones:=TFuncionesVarias.Create(nil);
    Funciones.ConnectionString:=modulo2.Conexion;
    txtw:='SELECT top 1 Sector,Parcela,NroAccion,Nivel,Posicion,RazonSocial,'
    + 'case when Objeto = ''A'' then ''ATAUD MAYOR'' ELSE '
    + 'case when Objeto = ''U'' then ''URNA'' ELSE  ''CENICERO'' END END AS TipoObeto '
    + ',convert(char(10),FechaIngreso,103) as FechaIngreso ,NroOrdenServicio,IdHabitante'
    + ' FROM VISTALOSINHUMADOSXSECTOR where NroOrdenServicio is not null order by NroOrdenServicio desc';
    if Funciones.Listar(txtw,DtCombo) then begin
      Coloca1(1);
     // cantiser:=DtCombo.Fields[0].AsString;
    end
    else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    funciones.Free;
end;
if nro=1 then begin
    DataSet.Free;
    DataSet:=TClientDataSet.Create(nil);
    //DataSource1.DataSet:=Dtcombo;
    Funciones:=TFuncionesVarias.Create(nil);
    Funciones.ConnectionString:=modulo2.Conexion;
    txtw:='SELECT maximonro FROM Maximos where tabla = ''ordenservicio''';
    if Funciones.Listar(txtw,DataSet) then begin
       ultimoordservicio:=strtoint(trim(DataSet.Fields[0].AsString));
    end
    else messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
    funciones.Free;
end;
if nro = 2 then begin
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='UPDATE Maximos  SET maximonro = ' + inttostr(ultimoordservicio - 1 ) + ' WHERE tabla = ''OrdenServicio''';
  if not Funciones.ListarSinResp(txtw) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0)
  else begin
    messagedlg('Inhumado Eliminado Correctamente', mtConfirmation,[mbok],0);
    guarda.Enabled:=false;
    DtCombo.Close;
    d1.Clear;    d2.Clear;
    d3.Clear;    d4.Clear;
    d5.Clear;    d6.Clear;
    d7.Clear;    d8.Clear;
    d9.Clear;    d10.Clear;
  end;
end;
end;

procedure TElimina_Inhum.SALEClick(Sender: TObject);
begin
Close;
end;

procedure TElimina_Inhum.GUARDAClick(Sender: TObject);
var el_dni,ElId,txtw:string;
var ac,lafecha,ci:boolean;
var gf,t:integer;
begin
Cliente:=TClientes.Create(nil);
Cliente.ConnectionString:=modulo2.Conexion;
  gf:=messagedlgpos('Desea realmente Elinimar este Inhumado seleccionado?..' + chr(13) +
   'Esta Eliminacion MODIFICARA el valor de la Orden de Serviico.. ',mtWarning,[mbok,mbCancel],0,screen.Width div 3,screen.Height div 3);
  if gf = 1 then begin
    ParcelasInhumados:=TParcelasInhumados.Create(nil);
    ParcelasInhumados.ConnectionString:=modulo2.Conexion;
    txtw:='DELETE FROM ParcelasInhumados WHERE IdHabitante= ' + trim(d10.text) +
       ' and  NroOrdenServicio= ' + trim(d9.text);
    ci:=ParcelasInhumados.ListarSinResp(txtw);
    if ci then begin
      // re enumeramos al tabla maximos
      Coloca1(2);
    end;
    ParcelasInhumados.Free;
  end
  else begin
   messagedlg('Ud. ha cancelado la Operacion de Carga de Clientes',mtWarning,[mbok],0);
  end;
end;

procedure TElimina_Inhum.DBGrid1TitleClick(Column: TColumn);
begin
dataset.IndexFieldNames:=column.FieldName;
end;

procedure TElimina_Inhum.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_F4 then GUARDA.Click;
if key = VK_F7 then SALIR.Click;
end;

procedure TElimina_Inhum.SALIRClick(Sender: TObject);
begin
close;
end;

procedure TElimina_Inhum.DBGrid1CellClick(Column: TColumn);
begin
  if not Dtcombo.IsEmpty then begin
    D1.Text:=trim(Dtcombo.Fields[0].AsString);
    D2.Text:=trim(Dtcombo.Fields[1].Text);
    D3.text:=trim(Dtcombo.Fields[2].Text);
    D4.Text:=trim(Dtcombo.Fields[3].AsString);
    D5.Text:=trim(Dtcombo.Fields[4].Text);
    D6.text:=AnsiReplaceStr(trim(Dtcombo.Fields[5].Text),chr(33),chr(39));
    d7.Text:=trim(Dtcombo.Fields[6].AsString);
    d8.Text:=trim(Dtcombo.Fields[7].Text);
    d9.text:=trim(Dtcombo.Fields[8].Text);
    d10.text:=trim(Dtcombo.Fields[9].Text);
    guarda.Enabled:=true;
  end;
end;

end.

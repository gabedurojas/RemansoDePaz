unit ObjetosPrecios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, JvExButtons, JvBitBtn, ComCtrls, ToolWin,DBClient,
  ClaseSistemas,ClaseFunciones, Grids, DBGrids, JvExDBGrids, JvDBGrid, Mask,
  ClaseTiposServiciosObjetosValores,StrUtils,ExtCtrls,ClaseTiposServiciosNivel,Unidad;

  {,  DBCtrls,   StrUtils,
  ClaseClientes,ClaseClientesTelefonos, DB, ADODB,  WSDLIntf, Unidad, JvExGrids, JvStringGrid, JvExDBGrids, JvDBGrid,
    }

type
  TPreciosObjetos = class(TForm)
    Barra1: TStatusBar;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    ToolButton2: TToolButton;
    GUARDA: TJvBitBtn;
    ToolButton3: TToolButton;
    JvBitBtn1: TJvBitBtn;
    GroupBox1: TGroupBox;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Lista: TEdit;
    Contado: TEdit;
    cheque: TEdit;
    Label4: TLabel;
    FEC: TMaskEdit;
    GroupBox4: TGroupBox;
    Label14: TLabel;
    Elnivel: TComboBox;
    Busca: TJvBitBtn;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    grilla2: TStringGrid;
    id: TEdit;
    objet: TEdit;
    valor: TEdit;
    cambiaval: TJvBitBtn;
    procedure JvBitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ElnivelKeyPress(Sender: TObject; var Key: Char);
    procedure ElnivelExit(Sender: TObject);
    procedure Coloca1(nro:byte);
    procedure BuscaClick(Sender: TObject);
    procedure ListaKeyPress(Sender: TObject; var Key: Char);
    procedure ContadoKeyPress(Sender: TObject; var Key: Char);
    procedure chequeKeyPress(Sender: TObject; var Key: Char);
    procedure FECExit(Sender: TObject);
    procedure ListaExit(Sender: TObject);
    procedure ContadoExit(Sender: TObject);
    procedure chequeExit(Sender: TObject);
    procedure grilla2Click(Sender: TObject);
    procedure valorChange(Sender: TObject);
    procedure cambiavalClick(Sender: TObject);
    procedure valorExit(Sender: TObject);
    procedure GUARDAClick(Sender: TObject);
    procedure valorKeyPress(Sender: TObject; var Key: Char);
    procedure FECKeyPress(Sender: TObject; var Key: Char);
  private
    //IdCombos:array of array of string;
    DataSet0,DtCombo:TClientDataSet;
    Funciones:TFuncionesVarias;
    Sistemas:TSistemas;
    { Private declarations }
  public
     gh:boolean;
     TiposServiciosObjetosValores:TTiposServiciosObjetosValores;
     TiposServiciosObjetosValoresUpdate:TTiposServiciosObjetosValores;

     TiposServiciosNivel:TTiposServiciosNivel;
     TiposServiciosNivelUpdate:TTiposServiciosNivel;
     //TTiposServiciosObjetosValores
    { Public declarations }
  end;

var
  PreciosObjetos: TPreciosObjetos;

implementation

{$R *.dfm}

uses Modulo;

procedure TPreciosObjetos.FormActivate(Sender: TObject);
begin
  if not(gh) then begin
  gh:=true;
  elnivel.ItemIndex:=0;
  elnivel.SetFocus;
  grilla2.Cells[0,0]:='ID';
  grilla2.Cells[1,0]:='OBJETO';
  grilla2.Cells[2,0]:='VALOR';
  grilla2.Cells[3,0]:='Selec.';
  cambiaval.Enabled:=false;
  fec.Text:=strcut(fec_system(),10);
  end;
end;

procedure TPreciosObjetos.FormCreate(Sender: TObject);
begin
gh:=false;
end;

procedure TPreciosObjetos.BuscaClick(Sender: TObject);
begin
coloca1(1);
coloca1(2);
fec.Text:=strcut(fec_system(),10);
end;

procedure TPreciosObjetos.Coloca1(nro:byte);
var t,y:integer;
    txt:string;
    io,ia:boolean;
    txtw:widestring;
    //TiposServiciosObjetosValores:TTiposServiciosObjetosValores;
begin
if nro=1 then begin
  DataSet0.Free;
  DataSet0:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT IDServicioObjeto,Objeto,Valor FROM vServiciosObjetosValores'
      + ' WHERE (Activo = 1) AND (Nivel = ' + trim(elnivel.text)  +') order by objeto';
  if not Funciones.Listar(txtw,DataSet0) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0) ;
  Funciones.Free;
  for t:=0 to grilla2.ColCount-1 do
    for y:=1 to grilla2.RowCount-1 do grilla2.Cells[t,y]:='';
      for t:=1 to DataSet0.RecordCount  do begin
        DataSet0.RecNo:=t;
        grilla2.RowCount:=t+1;
        grilla2.Cells[0,t]:=trim(DataSet0.Fields[0].AsString);
        grilla2.Cells[1,t]:=trim(DataSet0.Fields[1].AsString);
        grilla2.Cells[2,t]:=trim(DataSet0.Fields[2].AsString);
      end;
end;
if nro=2 then begin
  DataSet0.Free;
  DataSet0:=TClientdataSet.Create(nil);
  Funciones:=TFuncionesVarias.Create(nil);
  Funciones.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT PrecioLista,PrecioContado,PrecioCheque, Vigencia FROM TiposServiciosNivel'
      + ' WHERE (Activo = 1) AND (NroTipoServicio = 1) AND (Nivel = ' + trim(elnivel.text)  +')';
  if not Funciones.Listar(txtw,DataSet0) then
  messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0) ;
  Funciones.Free;
  if not DataSet0.IsEmpty then begin
   lista.Text:=DataSet0.Fields[0].AsString;
   contado.Text:=DataSet0.Fields[1].AsString;
   cheque.Text:=DataSet0.Fields[2].AsString;
   fec.Text:=DataSet0.Fields[3].AsString;
  end;
end;
if nro=3 then begin
{   TiposServiciosObjetosValores:=TTiposServiciosObjetosValores.Create(nil);
   TiposServiciosObjetosValores.ConnectionString:=modulo2.Conexion;
          for t:=1 to grilla2.RowCount-1 do begin
            if trim(grilla2.Cells[3,t]) = 'X' then begin
               TiposServiciosObjetosValores:=TTiposServiciosObjetosValores.Create(nil);
               TiposServiciosObjetosValores.ConnectionString:=modulo2.Conexion;
               TiposServiciosObjetosValores.C_IDServicioObjeto:=strtoint(trim(grilla2.Cells[0,t]));
               TiposServiciosObjetosValores.C_Fecha:=strcut(Fec_System(),10);
               TiposServiciosObjetosValores.C_Valor:=strtoint(trim(grilla2.Cells[2,t]));
               TiposServiciosObjetosValores.C_Porcentaje:=false;
               TiposServiciosObjetosValores.C_Activo:=true;
               TiposServiciosObjetosValores.C_Fecha_A:=strcut(Fec_System(),10);
               TiposServiciosObjetosValores.C_Usu_A:=modulo2.nro_usu;;
               ct:=TiposServiciosObjetosValores.Agrega;
               TiposServiciosObjetosValores.Free;
               if ct then coloca1(4)
                // messagedlg('Se ha Guardado el nuevo Valor con Exito',mtConfirmation,[mbok],0);
               else Barra1.Panels[1].Text:='Error al Guardar el telefono del  Cliente';
            end;
          end;   }
end;
if nro=4 then begin
          TiposServiciosNivel:=TTiposServiciosNivel.Create(nil);
          TiposServiciosNivel.ConnectionString:=modulo2.Conexion;
          txtw:='UPDATE TiposServiciosNivel SET activo =0 '
          + ' WHERE (NroTipoServicio=1) and (Nivel=' + trim(elnivel.Text) +')';
          io:=TiposServiciosNivel.ListarSinResp(txtw);
          TiposServiciosNivel.Free;
          if io then begin// insertamos los nuevos valores activos
                  TiposServiciosNivel:=TTiposServiciosNivel.Create(nil);
                  TiposServiciosNivel.ConnectionString:=modulo2.Conexion;
                  TiposServiciosNivel.C_NroTipoServicio:=1;
                  TiposServiciosNivel.C_Nivel:=strtoint(elnivel.Text);
                  TiposServiciosNivel.C_PrecioLista:=lista.Text;
                  TiposServiciosNivel.C_PrecioContado:=contado.Text;
                  TiposServiciosNivel.C_PrecioCheque:=cheque.Text;
                  TiposServiciosNivel.C_Vigencia:=trim(fec.Text);
                  TiposServiciosNivel.C_Activo:=true;
                  ia:=TiposServiciosNivel.Agrega;
                  TiposServiciosNivel.Free;
                  if ia then messagedlg('Los Valores de los Objetos se Guardo con Exito',mtConfirmation,[mbok],0)
                   else Barra1.Panels[1].Text:='Error al Guardar el telefono del  Cliente';
          end
          else begin
             Barra1.Panels[0].Text:='Error al Guardar el telefono del  Cliente';
          end;
end;
end;

procedure TPreciosObjetos.JvBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TPreciosObjetos.ElnivelKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  busca.SetFocus;
end;
end;

procedure TPreciosObjetos.ElnivelExit(Sender: TObject);
begin
if elnivel.ItemIndex < 0 then begin
  messagedlg('ERROR!! No Existe el Nivel Ingresado!!',mterror,[mbok],0);
  elnivel.SetFocus;
end;
end;

procedure TPreciosObjetos.ListaKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  contado.SetFocus;
end;
end;

procedure TPreciosObjetos.ContadoKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  cheque.SetFocus;
end;
end;

procedure TPreciosObjetos.chequeKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  fec.SetFocus;
end;
end;

procedure TPreciosObjetos.FECExit(Sender: TObject);
var kl:Tdatetime;
begin
try
  kl:=strtodate(trim(FEC.Text));
except
  messagedlg('La Fecha Ingresada No es Válida',mterror,[mbok],0);
  FEC.SetFocus;
end;
end;

procedure TPreciosObjetos.ListaExit(Sender: TObject);
begin
if (trim(lista.Text)='') or (trim(lista.Text)='0')  then lista.Text:='0000.00';
if trim(lista.Text) = '0000.00' then begin
  messagedlg('Error!! No hay un Valor Ingresado.',mterror,[mbok],0);
  lista.SetFocus
end;
end;

procedure TPreciosObjetos.ContadoExit(Sender: TObject);
begin
if (trim(Contado.Text)='') or (trim(Contado.Text)='0')  then Contado.Text:='0000.00';
if trim(contado.Text) = '0000.00' then begin
  messagedlg('Error!! No hay un Valor Ingresado.',mterror,[mbok],0);
  contado.SetFocus
end;
end;

procedure TPreciosObjetos.chequeExit(Sender: TObject);
begin
if (trim(cheque.Text)='') or (trim(cheque.Text)='0')  then cheque.Text:='0000.00';
if trim(cheque.Text) = '0000.00' then begin
  messagedlg('Error!! No hay un Valor Ingresado.',mterror,[mbok],0);
  cheque.SetFocus
end;
end;

procedure TPreciosObjetos.grilla2Click(Sender: TObject);
begin
id.Text:=trim(grilla2.Cells[0,grilla2.Row]);
objet.Text:=trim(grilla2.Cells[1,grilla2.Row]);
valor.Text:=trim(grilla2.Cells[2,grilla2.Row]);
valor.SetFocus;
end;

procedure TPreciosObjetos.valorChange(Sender: TObject);
begin
cambiaval.Enabled:=true;
end;

procedure TPreciosObjetos.cambiavalClick(Sender: TObject);
var gf,k:integer;
var suma:real;
begin
  gf:=messagedlg('Desea Relamente Cambiar este Valor ??..' + chr(13)
       + 'Se modificara definitivamente de la Base de Datos',mtWarning,[mbok,mbCancel],0);
  if gf = 1 then begin
    grilla2.Cells[2,grilla2.Row]:=trim(valor.Text);
    grilla2.Cells[3,grilla2.Row]:='X';
    fec.SetFocus;
    /// aca sumamos los importes de los valores de los objetos
     for k := 0 to grilla2.RowCount - 1 do
        if k <= grilla2.RowCount - 2 then
             suma := suma + strtofloat(grilla2.Cells[2, k + 1]);
             lista.Text := floattostr(suma);
             cheque.Text:= floattostr(strtofloat(lista.Text) - (strtofloat(lista.Text)*5)/100) ;
             contado.Text:= floattostr(strtofloat(lista.Text) - (strtofloat(lista.Text)*15)/100) ;
    ////
  end;
end;

procedure TPreciosObjetos.valorExit(Sender: TObject);
begin
if trim(valor.Text)='' then valor.Text:='0000.00';
if trim(valor.Text)='0' then valor.Text:='0000.00';

if trim(valor.Text) = '0000.00' then begin
  messagedlg('ERROR!!... El importe no puede ser 0 (Cero)'
  ,mterror,[mbok],0);
  valor.SetFocus;
end;
end;

procedure TPreciosObjetos.GUARDAClick(Sender: TObject);
var t,x:integer;
    txtw:widestring;
    m,ct:boolean;
begin
    for t:=1 to grilla2.RowCount-1 do begin
      if trim(grilla2.Cells[3,t]) = 'X' then begin
          ///primero desactivamos los valores
          TiposServiciosObjetosValores:=TTiposServiciosObjetosValores.Create(nil);
          TiposServiciosObjetosValores.ConnectionString:=modulo2.Conexion;
           txtw:='UPDATE TiposServiciosObjetosValores SET activo =0 '
            + ',Fecha_M=' + chr(39) + strcut(Fec_System(),10) + chr(39) + ' , usu_m=' + inttostr(modulo2.nro_usu)
            + ' WHERE (IDServicioObjeto=' + grilla2.Cells[0,t] +')';
            m:=TiposServiciosObjetosValores.ListarSinResp(txtw);
            TiposServiciosObjetosValores.Free;
            if m then begin// insertamos los nuevos valores activos
               TiposServiciosObjetosValores:=TTiposServiciosObjetosValores.Create(nil);
               TiposServiciosObjetosValores.ConnectionString:=modulo2.Conexion;
                  //    for x:=1 to grilla2.RowCount-1 do begin
                  //      if trim(grilla2.Cells[3,x]) = 'X' then begin
                           TiposServiciosObjetosValores:=TTiposServiciosObjetosValores.Create(nil);
                           TiposServiciosObjetosValores.ConnectionString:=modulo2.Conexion;
                           TiposServiciosObjetosValores.C_IDServicioObjeto:=strtoint(trim(grilla2.Cells[0,t]));
                           TiposServiciosObjetosValores.C_Fecha:=strcut(Fec_System(),10);
                           TiposServiciosObjetosValores.C_Valor:=trim(grilla2.Cells[2,t]);
                           TiposServiciosObjetosValores.C_Porcentaje:=false;
                           TiposServiciosObjetosValores.C_Activo:=true;
                           TiposServiciosObjetosValores.C_Fecha_A:=strcut(Fec_System(),10);
                           TiposServiciosObjetosValores.C_Usu_A:=modulo2.nro_usu;;
                           ct:=TiposServiciosObjetosValores.Agrega;
                           TiposServiciosObjetosValores.Free;
                           if ct then  Barra1.Panels[0].Text:='Los valores de los Objetos se Guardo con Exito'
                           else Barra1.Panels[1].Text:='Error al Guardar los Valores';
                  //      end;
                 //     end;
            end
            else begin
              Barra1.Panels[1].Text:='Error al Guardar los Valores';
            end;
      end;
   end;
   if ct then coloca1(4)
     else Barra1.Panels[1].Text:='Error al Guardar los Valores';
   guarda.Enabled:=false;
end;

procedure TPreciosObjetos.valorKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  cambiaval.SetFocus;
end;
end;

procedure TPreciosObjetos.FECKeyPress(Sender: TObject; var Key: Char);
begin
   guarda.Enabled:=true;
   guarda.SetFocus;
end;

end.

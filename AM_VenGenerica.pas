unit AM_VenGenerica;

interface

uses
  WSDLIntf,DBClient,Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB, ComCtrls,
  ClaseTiposReligion,ClaseProvinciasLocalidades, StrUtils,ClaseBarrios,
  ClaseLocalidades,ClaseTiposCocherias,ClaseTiposEstados,ClasePaises,
  ClaseTiposProfesiones, Buttons, JvExButtons, JvBitBtn,ClaseTiposDiagnosticos,
  ClaseTiposTarjetasCredito, ClasePosnet_Terminales,
  ClaseTiposObservaciones,ClaseTiposMedicos;

{
Nroopion=1  AB Barrios
Nroopion=2  AB Localidades
Nroopion=3  AB TiposCocherias
Nroopion=4  AB TiposEstados
Nroopion=5  AB TiposReligion
Nroopion=6  AB Medico
Nroopion=7  AB TiposDiagnosticos
Nroopion=8  AB TiposObservaciones
Nroopion=9  AB TiposMEdicos
Nroopion=10 AB TerminalesPosnet
Nroopion=11 AB TiposTarjetasCreditos
}
type THackStringGrid = class(TStringGrid);
type
  TAM_Generico = class(TForm)
    DataSource1: TDataSource;
    grupo2: TGroupBox;
    DBGrid1: TDBGrid;
    Barra1: TStatusBar;
    grupo1: TGroupBox;
    L1: TLabel;
    DETALLE: TEdit;
    Carga: TJvBitBtn;
    Modifica: TJvBitBtn;
    Quitar: TJvBitBtn;
    ID: TEdit;
    Label2: TLabel;
    DETALLE1: TEdit;
    L2: TLabel;
    Label1: TLabel;
    procedure Coloca1;
    procedure Limpiar();
    procedure FormActivate(Sender: TObject);
    procedure DETALLEKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure CargaClick(Sender: TObject);
    procedure ModificaClick(Sender: TObject);
    procedure QuitarClick(Sender: TObject);
    procedure DETALLE1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    NroOpcion:integer;
    CampoDuo:boolean;
    nroloc:string;
    Titulo1,Tipo11,Titulo2,Tipo21:string;{ Public declarations }
    Barrios:TBarrios;
    Localidades:TLocalidades;
    TiposCocherias:TTiposCocherias;
    TiposEstados:TTiposEstados;
    Paises:TPaises;
    TiposReligion:TTiposReligion;
    ProvinciasLocalidades:TProvinciasLocalidades;
    TiposProfesiones:TTiposProfesiones;
    TiposDiagnosticos:TTiposDiagnosticos;
    TiposObservaciones:TTiposObservaciones;
    TiposMedicos:TTiposMedicos;
    TiposTarjetasCredito:TTiposTarjetasCredito;
    Posnet_Terminales:TPosnet_Terminales;
    DataSet,DtCombo:TClientDataSet; //declaro el DAtaset de los Combobox
    DSGral:TClientDataSet;//declaro el DAtaset de la grilla
  end;

var
  AM_Generico: TAM_Generico;

implementation

uses Modulo, Unidad;

{$R *.dfm}

procedure TAM_Generico.Coloca1;
var txtw:widestring;
      Param:TWideStrings;
begin
 DataSet.Free;
 dataset:=TClientdataSet.Create(nil);
 DataSource1.DataSet:=Dataset;

 if NroOpcion = 1 then begin
  Barrios:=TBarrios.Create(nil);
  Barrios.ConnectionString:=modulo2.Conexion;
  Param:=TWideStrings.Create;
  Param.Add('');
  Param.Add(nroloc);
  Param.Add('');
  if not Barrios.ListarSP(Param,dataset,0) then
     barrios.Free;
   param.Free;
 end;
 if NroOpcion = 2 then begin
  Localidades:=TLocalidades.Create(nil);
  Localidades.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT dbo.Localidades.Localidad,dbo.Localidades.IdLocalidad FROM '
  + 'dbo.ProvinciasLocalidades INNER JOIN dbo.Localidades ON '
  + 'dbo.ProvinciasLocalidades.IdLocalidad = dbo.Localidades.IdLocalidad '
  + 'WHERE (dbo.ProvinciasLocalidades.IdProvincia=' + nroloc + ') ORDER BY dbo.Localidades.Localidad';
  if not Localidades.Listar(txtw,DataSet) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Localidades.Free;
 end;
 if NroOpcion = 3 then begin
  TiposCocherias:=TTiposCocherias.Create(nil);
  TiposCocherias.ConnectionString:=modulo2.Conexion;
  Param:=TWideStrings.Create;
  Param.Add('');
  Param.Add('');
  if not TiposCocherias.ListarSP(Param,DataSet,0) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
   TiposCocherias.Free;
   Param.Free;
 end;
 if NroOpcion = 4 then begin
  Paises:=TPaises.Create(nil);
  Paises.ConnectionString:=modulo2.Conexion;
  Param:=TWideStrings.Create;
  Param.Add('');
  Param.Add('');
  Param.Add('');
  if not Paises.ListarSP(Param,DataSet,0) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
   Paises.Free;
  Param.Free;
 end;
 if NroOpcion = 5 then begin
  TiposReligion:=TTiposReligion.Create(nil);
  TiposReligion.ConnectionString:=modulo2.Conexion;
  Param:=TWideStrings.Create;
  Param.Add('');
  Param.Add('');
  if not TiposReligion.ListarSP(Param,DataSet,0) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
   TiposReligion.Free;
  Param.Free;
 end;
 if NroOpcion = 6 then begin
  TiposProfesiones:=TTiposProfesiones.Create(nil);
  TiposProfesiones.ConnectionString:=modulo2.Conexion;
  Param:=TWideStrings.Create;
  Param.Add('');
  Param.Add('');
  if not TiposProfesiones.ListarSP(Param,DataSet,0) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
   TiposProfesiones.Free;
  Param.Free;
 end;
 if NroOpcion = 7 then begin
  TiposDiagnosticos:=TTiposDiagnosticos.Create(nil);
  TiposDiagnosticos.ConnectionString:=modulo2.Conexion;
  Param:=TWideStrings.Create;
  Param.Add('');
  Param.Add('');
  if not TiposDiagnosticos.ListarSP(Param,DataSet,0) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
   TiposDiagnosticos.Free;
   Param.Free;
 end;
 if NroOpcion = 8 then begin
  TiposObservaciones:=TTiposObservaciones.Create(nil);
  TiposObservaciones.ConnectionString:=modulo2.Conexion;
  Param:=TWideStrings.Create;
  Param.Add('');
  Param.Add('');
  if not TiposObservaciones.ListarSP(Param,DataSet,0) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
   TiposObservaciones.Free;
   Param.Free;
 end;
 if NroOpcion = 9 then begin
  TiposMedicos:=TTiposMedicos.Create(nil);
  TiposMedicos.ConnectionString:=modulo2.Conexion;
  Param:=TWideStrings.Create;
  Param.Add('');
  Param.Add('');
  if not TiposMedicos.ListarSP(Param,DataSet,0) then
     messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
   TiposObservaciones.Free;
   Param.Free;
 end;
 if NroOpcion = 10 then begin
  Posnet_Terminales:=TPosnet_Terminales.Create(nil);
  Posnet_Terminales.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT IdTerminal FROM Posnet_Terminales WHERE (Deshabilitado = 0) order by 1';
  if not Posnet_Terminales.Listar(txtw,DataSet) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  Posnet_Terminales.Free;
 end;
 if NroOpcion = 11 then begin
  TiposTarjetasCredito:=TTiposTarjetasCredito.Create(nil);
  TiposTarjetasCredito.ConnectionString:=modulo2.Conexion;
  txtw:='SELECT DetalleTarjeta,NroTarjeta FROM  TiposTarjetasCredito ORDER BY 1';
  if not TiposTarjetasCredito.Listar(txtw,DataSet) then
    messagedlg('ERROR al realizar Transac-SQL. Consulte con Administrador',mtError,[mbok],0);
  TiposTarjetasCredito.Free;
 end;
end;

procedure TAM_Generico.Limpiar();
begin
DETALLE.Clear;
DETALLE1.Clear;
Carga.Enabled:=false;
Modifica.Enabled:=false;
Quitar.Enabled:=false;
end;

procedure TAM_Generico.FormActivate(Sender: TObject);
begin
  Self.Caption:='Altas y Modificaciones ' + Titulo1;
  Grupo1.Caption:='Datos ' + Titulo1;
  Grupo2.Caption:='Seleccione para modificación ' + Titulo1;
  L1.Caption:='Detalle ' + Titulo1;
  L2.Caption:=Titulo2;
  if (nroopcion=10)  or (nroopcion=11)  then begin
   modifica.Visible:=false;
   quitar.Visible :=false;
  //end
  //else begin
  // modifica.Visible:=false;
  // quitar.Visible :=false;
  end;
  DETALLE1.Visible:=CampoDuo;
  L2.Visible:=CampoDuo;
  if CampoDuo then Self.Width:=532
  else Self.Width:=392;
  Coloca1;
  DETALLE.SetFocus;
end;

procedure TAM_Generico.DETALLEKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then begin
  Key := #0;
  if CampoDuo then DETALLE1.SetFocus
  else begin
    if Modifica.Enabled = true then Modifica.SetFocus
    else begin
      Carga.Enabled:=true;
      Carga.SetFocus;
    end;
  end;
 end
 else begin
  if Tipo11 = 'N' then begin
    if ( StrScan('0123456789',Key) <> nil ) or ( Key = Char(VK_BACK) ) then
    else Key := #0;
  end;
 end;
end;

procedure TAM_Generico.DBGrid1CellClick(Column: TColumn);
begin
 if not (Dataset.IsEmpty) then begin
  if (nroopcion=1)  or (nroopcion=4)  then begin
   ID.Text:=trim(DataSource1.DataSet.Fields[0].Text);
   DETALLE.Text:=AnsiReplaceStr(trim(DataSource1.DataSet.Fields[2].Text),chr(33),chr(39));
   DETALLE1.Text:=AnsiReplaceStr(trim(DataSource1.DataSet.Fields[1].Text),chr(33),chr(39));
  end;
  if (nroopcion = 2) or (nroopcion = 3) then begin //or (nroopcion = 11)
   ID.Text:=trim(DataSource1.DataSet.Fields[1].Text);
   DETALLE.Text:=AnsiReplaceStr(trim(DataSource1.DataSet.Fields[0].Text),chr(33),chr(39));
  end;
  //if (nroopcion = 10) then begin
   //ID.Text:=trim(DataSource1.DataSet.Fields[1].Text);
  // DETALLE.Text:=AnsiReplaceStr(trim(DataSource1.DataSet.Fields[0].Text),chr(33),chr(39));
  //end;
  if (nroopcion = 5) or (nroopcion = 6) or (nroopcion = 7) or (nroopcion = 8) or (nroopcion = 9) then begin
   ID.Text:=trim(DataSource1.DataSet.Fields[0].Text);
   DETALLE.Text:=AnsiReplaceStr(trim(DataSource1.DataSet.Fields[1].Text),chr(33),chr(39));
  end;
  if (nroopcion < 10)  then begin
   Modifica.Enabled:=true;
   Quitar.Enabled:=true;
  end;
  DETALLE.SetFocus;
 end;
end;

procedure TAM_Generico.CargaClick(Sender: TObject);
var gf:integer;
    txtw:widestring;
    a,b:boolean;
    valor:string;
begin
if (trim(DETALLE.Text) = '') then begin
  messagedlg('Debe Escribir los Datos ' + Titulo1 + '!!' ,mterror,[mbok],0);
  DETALLE.SetFocus;
end
else begin
  gf:=messagedlg('Desea Agregar los Datos ' + Titulo1 + '?',mtWarning,[mbok,mbCancel],0);
  if gf = 1 then begin
   if NroOpcion = 1 then begin
    Barrios:=TBarrios.Create(nil);
    Barrios.ConnectionString:=modulo2.Conexion;
    barrios.C_IdLocalidad_IX1:=strtoint(nroloc);
    barrios.C_DetalleBarrio_IX2:=trim(detalle.Text);
    a:=barrios.Agrega;
    barrios.Free;
    if a then  begin
     messagedlg('Se ha Guardado el Barrio con Exito',mtconfirmation,[mbok],0);
     Barra1.Panels[0].Text:='Se ha Guardado el Barrio con Exito';
    end
    else begin
     messagedlg('Error al Guardar el Barrio',mterror,[mbok],0);
      Barra1.Panels[0].Text:='Error al Guardar el Barrio';
    end;
   end;
   if NroOpcion = 2 then begin
    Localidades:=TLocalidades.Create(nil);
    Localidades.ConnectionString:=modulo2.Conexion;
    localidades.C_Localidad_IX1:=trim(detalle.Text);
    a:=Localidades.Agrega;
    valor:=localidades.Identidad;
    Localidades.Free;
    if a then  begin
       /// aca inserto en provinciaslocalidades
     ProvinciasLocalidades:=TProvinciasLocalidades.Create(nil);
     ProvinciasLocalidades.ConnectionString:=modulo2.Conexion;
     ProvinciasLocalidades.C_IdProvincia:=strtoint(nroloc);
     ProvinciasLocalidades.C_IdLocalidad:=strtoint(valor);
     b:=ProvinciasLocalidades.Agrega;
     ProvinciasLocalidades.Free;
     if b then  begin
      messagedlg('Se ha Guardado la ProvLocalidad con Exito',mtconfirmation,[mbok],0);
      Barra1.Panels[0].Text:='Se ha Guardado en ProvLocalidad con Exito';
     end
     else begin
       messagedlg('Error al Guardar la ProvLocalidad',mterror,[mbok],0);
       Barra1.Panels[0].Text:='Error al Guardar la ProvLocalidad';
     end;
      messagedlg('Se ha Guardado la Localidad  con Exito',mtconfirmation,[mbok],0);
      Barra1.Panels[0].Text:='Se ha Guardado la Localidad con Exito';
      //Modulo2.ActualizarTablaXML('Localidades');
    end
    else begin
     messagedlg('Error al Guardar la Localidad',mterror,[mbok],0);
     Barra1.Panels[0].Text:='Error al Guardar la Localidad';
    end;
   end;
   if NroOpcion = 3 then begin
    TiposCocherias:=TTiposCocherias.Create(nil);
    TiposCocherias.ConnectionString:=modulo2.Conexion;
    TiposCocherias.C_Detalle_IX1:=trim(detalle.Text);
    a:=TiposCocherias.Agrega;
    TiposCocherias.Free;
    if a then  begin
     messagedlg('Se ha Guardado la Cocheria con Exito',mtconfirmation,[mbok],0);
     Barra1.Panels[0].Text:='Se ha Guardado la Cocheria con Exito';
    end
    else begin
     messagedlg('Error al Guardar la Cocheria',mterror,[mbok],0);
     Barra1.Panels[0].Text:='Error al Guardar la Cocheria';
    end;
   end;
   if NroOpcion = 4 then begin
    Paises:=TPaises.Create(nil);
    Paises.ConnectionString:=modulo2.Conexion;
    Paises.C_Pais_IX1:=trim(detalle.Text);
    Paises.C_Nacionalidad_IX2:=trim(detalle.Text);
    a:=Paises.Agrega;
    Paises.Free;
    if a then  begin
     messagedlg('Se ha Guardado la Nacionalidad con Exito',mtconfirmation,[mbok],0);
     Barra1.Panels[0].Text:='Se ha Guardado la Nacionalidad con Exito';
    end
    else begin
     messagedlg('Error al Guardar la Nacionalidad',mterror,[mbok],0);
     Barra1.Panels[0].Text:='Error al Guardar la Nacionalidad';
    end;
   end;
   if NroOpcion = 5 then begin
    TiposReligion:=TTiposReligion.Create(nil);
    TiposReligion.ConnectionString:=modulo2.Conexion;
    TiposReligion.C_Detalle_IX1:=trim(detalle.Text);
    a:=TiposReligion.Agrega;
    TiposReligion.Free;
    if a then  begin
     messagedlg('Se ha Guardado la Religion con Exito',mtconfirmation,[mbok],0);
     Barra1.Panels[0].Text:='Se ha Guardado la Religion con Exito';
    end
    else begin
     messagedlg('Error al Guardar la Religion',mterror,[mbok],0);
     Barra1.Panels[0].Text:='Error al Guardar la Religion';
    end;
   end;
   if NroOpcion = 6 then begin
    TiposProfesiones:=TTiposProfesiones.Create(nil);
    TiposProfesiones.ConnectionString:=modulo2.Conexion;
    TiposProfesiones.C_Detalle_IX1:=trim(detalle.Text);
    a:=TiposProfesiones.Agrega;
    TiposProfesiones.Free;
    if a then  begin
      messagedlg('Se ha Guardado la Profesión con Exito',mtconfirmation,[mbok],0);
      Barra1.Panels[0].Text:='Se ha Guardado la Profesión con Exito';
    end
    else begin
     messagedlg('Error al Guardar la Profesión',mterror,[mbok],0);
     Barra1.Panels[0].Text:='Error al Guardar la Profesión';
    end;
   end;
   if NroOpcion = 7 then begin
    TiposDiagnosticos:=TTiposDiagnosticos.Create(nil);
    TiposDiagnosticos.ConnectionString:=modulo2.Conexion;
    TiposDiagnosticos.C_Diagnostico_IX1:=trim(detalle.Text);
    a:=TiposDiagnosticos.Agrega;
    TiposDiagnosticos.Free;
    if a then  begin
      messagedlg('Se ha Guardado el Diagnostico con Exito',mtconfirmation,[mbok],0);
      Barra1.Panels[0].Text:='Se ha Guardado el Diagnostico con Exito';
    end
    else begin
     messagedlg('Error al Guardar el Diagnostico',mterror,[mbok],0);
     Barra1.Panels[0].Text:='Error al Guardar el Diagnostico';
    end;
   end;
   if NroOpcion = 8 then begin
    TiposObservaciones:=TTiposObservaciones.Create(nil);
    TiposObservaciones.ConnectionString:=modulo2.Conexion;
    TiposObservaciones.C_DetalleObserv:=trim(detalle.Text);
    a:=TiposObservaciones.Agrega;
    TiposObservaciones.Free;
    if a then  begin
      messagedlg('Se ha Guardado la Observacion con Exito',mtconfirmation,[mbok],0);
      Barra1.Panels[0].Text:='Se ha Guardado la Observacion con Exito';
    end
    else begin
     messagedlg('Error al Guardar la Observacion',mterror,[mbok],0);
     Barra1.Panels[0].Text:='Error al Guardar la Observacion';
    end;
   end;
   if NroOpcion = 9 then begin
    TiposMedicos:=TTiposMedicos.Create(nil);
    TiposMedicos.ConnectionString:=modulo2.Conexion;
    TiposMedicos.C_Detalle_IX1:=trim(detalle.Text);
    a:=TiposMedicos.Agrega;
    TiposMedicos.Free;
    if a then  begin
     messagedlg('Se ha Guardado el Medico con Exito',mtconfirmation,[mbok],0);
     Barra1.Panels[0].Text:='Se ha Guardado el Medico con Exito';
    end
    else begin
     messagedlg('Error al Guardar el Medico',mterror,[mbok],0);
     Barra1.Panels[0].Text:='Error al Guardar la Observacion';
    end;
   end;
   if NroOpcion = 10 then begin
    Posnet_Terminales:=TPosnet_Terminales.Create(nil);
    Posnet_Terminales.ConnectionString:=modulo2.Conexion;
    Posnet_Terminales.C_IdTerminal_PK:=trim(detalle.Text);
    Posnet_Terminales.C_Nombre := 'ADMIN';
    Posnet_Terminales.C_Deshabilitado := false;
    Posnet_Terminales.C_CuifCobrador :='20000700038';
    a:=Posnet_Terminales.Agrega;
    Posnet_Terminales.Free;
    if a then  begin
     messagedlg('Se ha Guardado la Terminal Posnet  con Exito',mtconfirmation,[mbok],0);
     Barra1.Panels[0].Text:='Se ha Guardado la Terminal Posnet con Exito';
    end
    else begin
     messagedlg('Error al Guardar la Terminal Posnet',mterror,[mbok],0);
     Barra1.Panels[0].Text:='Error al Guardar la Terminal Posnet';
    end;
   end;
   if NroOpcion = 11 then begin
    TiposTarjetasCredito:=TTiposTarjetasCredito.Create(nil);
    TiposTarjetasCredito.ConnectionString:=modulo2.Conexion;
    TiposTarjetasCredito.C_DetalleTarjeta_IX1 :=trim(detalle.Text);
    TiposTarjetasCredito.C_Descuento := 0;
    TiposTarjetasCredito.C_MaxCuotas := 6;
    a:=TiposTarjetasCredito.Agrega;
    TiposTarjetasCredito.Free;
    if a then  begin
     messagedlg('Se ha Guardado la Tarjeta de Credito con Exito',mtconfirmation,[mbok],0);
     Barra1.Panels[0].Text:='Se ha Guardado la Tarjeta de Credito con Exito';
    end
    else begin
     messagedlg('Error al Guardar la Tarjeta de Credito',mterror,[mbok],0);
     Barra1.Panels[0].Text:='Error al Guardar la Tarjeta de Credito';
    end;
   end;
  Coloca1();
  end;
end;
end;

procedure TAM_Generico.ModificaClick(Sender: TObject);
var gf:integer;
    txtw:widestring;
    a:boolean;
begin
if (trim(DETALLE.Text) = '') then begin
  messagedlg('Debe Escribir los Datos ' + Titulo1 + '!!',mterror,[mbok],0);
  DETALLE.SetFocus;
end
else begin
  gf:=messagedlg('Desea Modificar los Datos ' + Titulo1 + '??',mtWarning,[mbok,mbCancel],0);
  if gf = 1 then begin
   if NroOpcion = 1 then begin
    Barrios:=TBarrios.Create(nil);
    Barrios.ConnectionString:=modulo2.Conexion;
    barrios.C_IdBarrio_PK:=strtoint(ID.Text);
    barrios.C_IdLocalidad_IX1:=strtoint(detalle1.Text);
    barrios.C_DetalleBarrio_IX2:=trim(detalle.Text);
    a:=barrios.Modificar;
    barrios.Free;
    if a then  begin
       Barra1.Panels[0].Text:='Se ha Modificado el Nombre del Barrio';
      // Modulo2.ActualizarTablaXML('Barrios');
    end
    else begin
       Barra1.Panels[0].Text:='Error al Modificar el Nombre del Barri';
    end;
   end;
   if NroOpcion = 2 then begin
    Localidades:=TLocalidades.Create(nil);
    Localidades.ConnectionString:=modulo2.Conexion;
    Localidades.C_IdLocalidad_PK:=strtoint(ID.Text);
    localidades.C_Localidad_IX1:=trim(detalle.Text);
    a:=Localidades.Modificar;
    Localidades.Free;
    if a then  begin
       Barra1.Panels[0].Text:='Se ha Modificado el Nombre del Barrio';
      // Modulo2.ActualizarTablaXML('Localidades');
    end
    else begin
       Barra1.Panels[0].Text:='Error al Modificar el Barrio';
    end;
   end;
   if NroOpcion = 3 then begin
    TiposCocherias:=TTiposCocherias.Create(nil);
    TiposCocherias.ConnectionString:=modulo2.Conexion;
    TiposCocherias.C_NroCocheria_PK:=strtoint(ID.Text);
    TiposCocherias.C_Detalle_IX1:=trim(detalle.Text);
    a:=TiposCocherias.Modificar;
    TiposCocherias.Free;
    if a then  begin
      Barra1.Panels[0].Text:='Se ha Modificado la Cocheria con Exito';
    end
    else begin
      Barra1.Panels[0].Text:='Error al Modificar la Cocheria';
    end;
   end;
   if NroOpcion = 4 then begin
    Paises:=TPaises.Create(nil);
    Paises.ConnectionString:=modulo2.Conexion;
    Paises.C_IdPais_PK:=strtoint(ID.Text);
    Paises.C_Pais_IX1:=trim(detalle1.Text);
    Paises.C_Nacionalidad_IX2:=trim(detalle.Text);
    a:=Paises.Modificar;
    Paises.Free;
    if a then  begin
       Barra1.Panels[0].Text:='Se ha Guardado el Estado con Exito';
    end
    else begin
       Barra1.Panels[0].Text:='Error al Guardar el Estado';
    end;
   end;
   if NroOpcion = 5 then begin
    TiposReligion:=TTiposReligion.Create(nil);
    TiposReligion.ConnectionString:=modulo2.Conexion;
    TiposReligion.C_NroReligion_PK:=strtoint(ID.Text);
    TiposReligion.C_Detalle_IX1:=trim(detalle.Text);
    a:=TiposReligion.Modificar;
    TiposReligion.Free;
    if a then  begin
        Barra1.Panels[0].Text:='Se ha Guardado la Religión con Exito';
       // Modulo2.ActualizarTablaXML('TiposReligion');
    end
    else begin
        Barra1.Panels[0].Text:='Error al Guardar el Estado';
    end;
   end;
   if NroOpcion = 6 then begin
    TiposProfesiones:=TTiposProfesiones.Create(nil);
    TiposProfesiones.ConnectionString:=modulo2.Conexion;
    TiposProfesiones.C_NroProfesion_PK:=strtoint(ID.Text);
    TiposProfesiones.C_Detalle_IX1:=trim(detalle.Text);
    a:=TiposProfesiones.Modificar;
    TiposProfesiones.Free;
    if a then  begin
       Barra1.Panels[0].Text:='Se ha Guardado la Profesión con Exito';
     //  Modulo2.ActualizarTablaXML('TiposProfesiones');
    end
    else begin
       Barra1.Panels[0].Text:='Error al Guardar el Estado';
    end;
   end;
   if NroOpcion = 7 then begin
    TiposDiagnosticos:=TTiposDiagnosticos.Create(nil);
    TiposDiagnosticos.ConnectionString:=modulo2.Conexion;
    TiposDiagnosticos.C_NroDiagnostico_PK:=strtoint(ID.Text);
    TiposDiagnosticos.C_Diagnostico_IX1:=trim(detalle.Text);
    a:=TiposDiagnosticos.Modificar;
    TiposDiagnosticos.Free;
    if a then  begin
       Barra1.Panels[0].Text:='Se ha Modificado el Diagnostico con Exito';
    end
    else begin
       Barra1.Panels[0].Text:='Error al Modificar el Diagnostico';
    end;
   end;
   if NroOpcion = 8 then begin
    TiposObservaciones:=TTiposObservaciones.Create(nil);
    TiposObservaciones.ConnectionString:=modulo2.Conexion;
    TiposObservaciones.C_IdObserv_PK:=strtoint(ID.Text);
    TiposObservaciones.C_DetalleObserv:=trim(detalle.Text);
    a:=TiposObservaciones.Modificar;
    TiposObservaciones.Free;
    if a then  begin
       Barra1.Panels[0].Text:='Se ha Modificado la Observacion con Exito';
      // Modulo2.ActualizarTablaXML('TiposObservaciones');
    end
    else begin
       Barra1.Panels[0].Text:='Error al Modificar la Observacion';
    end;
   end;
   if NroOpcion = 9 then begin
    TiposMedicos:=TTiposMedicos.Create(nil);
    TiposMedicos.ConnectionString:=modulo2.Conexion;
    TiposMedicos.C_NroMedico_PK:=strtoint(ID.Text);
    TiposMedicos.C_Detalle_IX1:=trim(detalle.Text);
    a:=TiposMedicos.Modificar;
    TiposMedicos.Free;
    if a then  begin
         Barra1.Panels[0].Text:='Se ha Modificado la Observacion con Exito';
     //   Modulo2.ActualizarTablaXML('TiposMedicos');
    end
    else begin
        Barra1.Panels[0].Text:='Error al Modificar la Observacion';
    end;
   end;
   Coloca1();
  end;
end;
end;

procedure TAM_Generico.QuitarClick(Sender: TObject);
begin
Limpiar;
Carga.Enabled:=true;
Modifica.Enabled:=false;
Quitar.Enabled:=false;
end;

procedure TAM_Generico.DETALLE1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then begin
  Key := #0;
  if Modifica.Enabled = true then Modifica.SetFocus
  else begin
    Carga.Enabled:=true;
    Carga.SetFocus;
  end;
end
else begin
  if Tipo21 = 'N' then begin
    if ( StrScan('0123456789',Key) <> nil ) or  ( Key = Char(VK_BACK) ) then
    else Key := #0;
  end;
end;
end;

end.

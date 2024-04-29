unit ClaseCajaPeriodoSaldos;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TCajaPeriodoSaldos= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FIdCorte:integer;
    FNroAccion:integer;
    FPeriodo:integer;
    FDebe:real;
    FHaber:real;
    FSaldo:real;
    FAdministrador:boolean;
    FFecha:string;
    FUsu_a:integer;
    FActivo:boolean;
    FObs:string;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetIdCorte(Value:integer);
    procedure SetNroAccion(Value:integer);
    procedure SetPeriodo(Value:integer);
    procedure SetDebe(Value:real);
    procedure SetHaber(Value:real);
    procedure SetSaldo(Value:real);
    procedure SetAdministrador(Value:boolean);
    procedure SetFecha(Value:string);
    procedure SetUsu_a(Value:integer);
    procedure SetActivo(Value:boolean);
    procedure SetObs(Value:string);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_IdCorte_PK:integer read FIdCorte write SetIdCorte;
    property C_NroAccion_IX1:integer read FNroAccion write SetNroAccion;
    property C_Periodo_IX2:integer read FPeriodo write SetPeriodo;
    property C_Debe:real read FDebe write SetDebe;
    property C_Haber:real read FHaber write SetHaber;
    property C_Saldo:real read FSaldo write SetSaldo;
    property C_Administrador:boolean read FAdministrador write SetAdministrador;
    property C_Fecha_IX3:string read FFecha write SetFecha;
    property C_Usu_a:integer read FUsu_a write SetUsu_a;
    property C_Activo:boolean read FActivo write SetActivo;
    property C_Obs:string read FObs write SetObs;

  {Declaracion de Metodos}
    Function BuscarPK(ValorBuscado:String):boolean;
    Function ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; MaxRecord:integer):boolean;
    Function Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
    Function Agrega():boolean;
    Function Borrar(ValorBuscado:string):boolean;
    Function Modificar():boolean;

  Published
    { Published declarations }
  end;

  var FCapaDatos:TCapaDatos;

implementation

constructor TCajaPeriodoSaldos.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=11;
end;

procedure TCajaPeriodoSaldos.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TCajaPeriodoSaldos.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TCajaPeriodoSaldos.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TCajaPeriodoSaldos.SetIdCorte(Value:integer);
begin
  FIdCorte:=Value;
end;

procedure TCajaPeriodoSaldos.SetNroAccion(Value:integer);
begin
  FNroAccion:=Value;
end;

procedure TCajaPeriodoSaldos.SetPeriodo(Value:integer);
begin
  FPeriodo:=Value;
end;

procedure TCajaPeriodoSaldos.SetDebe(Value:real);
begin
  FDebe:=Value;
end;

procedure TCajaPeriodoSaldos.SetHaber(Value:real);
begin
  FHaber:=Value;
end;

procedure TCajaPeriodoSaldos.SetSaldo(Value:real);
begin
  FSaldo:=Value;
end;

procedure TCajaPeriodoSaldos.SetAdministrador(Value:boolean);
begin
  FAdministrador:=Value;
end;

procedure TCajaPeriodoSaldos.SetFecha(Value:string);
begin
  FFecha:=Value;
end;

procedure TCajaPeriodoSaldos.SetUsu_a(Value:integer);
begin
  FUsu_a:=Value;
end;

procedure TCajaPeriodoSaldos.SetActivo(Value:boolean);
begin
  FActivo:=Value;
end;

procedure TCajaPeriodoSaldos.SetObs(Value:string);
begin
  FObs:=Value;
end;

Function TCajaPeriodoSaldos.BuscarPK(ValorBuscado:String):boolean;
var DataSet:TClientDataSet;
    Parametros:TWideStrings;
begin
//Instancio el DataSet
DataSet:=TClientDataSet.Create(nil);

//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(ValorBuscado);

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_CajaPeriodoSaldosConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_IdCorte_PK:=DataSet.FieldByName('IdCorte').AsInteger;
  C_NroAccion_IX1:=DataSet.FieldByName('NroAccion').AsInteger;
  C_Periodo_IX2:=DataSet.FieldByName('Periodo').AsInteger;
  C_Debe:=DataSet.FieldByName('Debe').AsFloat;
  C_Haber:=DataSet.FieldByName('Haber').AsFloat;
  C_Saldo:=DataSet.FieldByName('Saldo').AsFloat;
  C_Administrador:=DataSet.FieldByName('Administrador').AsBoolean;
  C_Fecha_IX3:=DataSet.FieldByName('Fecha').AsString;
  C_Usu_a:=DataSet.FieldByName('Usu_a').AsInteger;
  C_Activo:=DataSet.FieldByName('Activo').AsBoolean;
  C_Obs:=DataSet.FieldByName('Obs').AsString;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TCajaPeriodoSaldos.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_CajaPeriodoSaldosConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TCajaPeriodoSaldos.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TCajaPeriodoSaldos.Agrega():boolean;
var DataSet:TClientDataSet;
    Parametros:TWideStrings;
begin
//Instancio el DataSet
DataSet:=TClientDataSet.Create(nil);

//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_NroAccion_IX1));
Parametros.Add(IntToStr(C_Periodo_IX2));
Parametros.Add(FloatToStr(C_Debe));
Parametros.Add(FloatToStr(C_Haber));
Parametros.Add(FloatToStr(C_Saldo));
if C_Administrador then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_Fecha_IX3);
Parametros.Add(IntToStr(C_Usu_a));
if C_Activo then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_Obs);

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_CajaPeriodoSaldosInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TCajaPeriodoSaldos.Borrar(ValorBuscado:string):boolean;
var DataSet:TClientDataSet;
    Parametros:TWideStrings;
begin
//Instancio el DataSet
DataSet:=TClientDataSet.Create(nil);

//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(ValorBuscado);

//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_CajaPeriodoSaldosEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TCajaPeriodoSaldos.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
//Cargo los Parmetros
Parametros.Add(IntToStr(C_IdCorte_PK));
Parametros.Add(IntToStr(C_NroAccion_IX1));
Parametros.Add(IntToStr(C_Periodo_IX2));
Parametros.Add(FloatToStr(C_Debe));
Parametros.Add(FloatToStr(C_Haber));
Parametros.Add(FloatToStr(C_Saldo));
if C_Administrador then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_Fecha_IX3);
Parametros.Add(IntToStr(C_Usu_a));
if C_Activo then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_Obs);


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_CajaPeriodoSaldosModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

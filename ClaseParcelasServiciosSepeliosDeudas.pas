unit ClaseParcelasServiciosSepeliosDeudas;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TParcelasServiciosSepeliosDeudas= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FIdDeuda:variant;
    FIdServicio:variant;
    FNroCuota:variant;
    FPeriodo:variant;
    FFechaVencimiento:string;
    FMonto:variant;
    FInteres:variant;
    FCapital:variant;
    FEnMovimientos:boolean;
    FDetalleCuota:string;
    FBloqueoMonto:boolean;
    FUsu_A:variant;
    FFecha_A:string;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetIdDeuda(Value:variant);
    procedure SetIdServicio(Value:variant);
    procedure SetNroCuota(Value:variant);
    procedure SetPeriodo(Value:variant);
    procedure SetFechaVencimiento(Value:string);
    procedure SetMonto(Value:variant);
    procedure SetInteres(Value:variant);
    procedure SetCapital(Value:variant);
    procedure SetEnMovimientos(Value:boolean);
    procedure SetDetalleCuota(Value:string);
    procedure SetBloqueoMonto(Value:boolean);
    procedure SetUsu_A(Value:variant);
    procedure SetFecha_A(Value:string);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_IdDeuda_PK:variant read FIdDeuda write SetIdDeuda;
    property C_IdServicio:variant read FIdServicio write SetIdServicio;
    property C_NroCuota:variant read FNroCuota write SetNroCuota;
    property C_Periodo:variant read FPeriodo write SetPeriodo;
    property C_FechaVencimiento:string read FFechaVencimiento write SetFechaVencimiento;
    property C_Monto:variant read FMonto write SetMonto;
    property C_Interes:variant read FInteres write SetInteres;
    property C_Capital:variant read FCapital write SetCapital;
    property C_EnMovimientos:boolean read FEnMovimientos write SetEnMovimientos;
    property C_DetalleCuota:string read FDetalleCuota write SetDetalleCuota;
    property C_BloqueoMonto:boolean read FBloqueoMonto write SetBloqueoMonto;
    property C_Usu_A:variant read FUsu_A write SetUsu_A;
    property C_Fecha_A:string read FFecha_A write SetFecha_A;

  {Declaracion de Metodos}
    Function BuscarPK(ValorBuscado:String):boolean;
    Function ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; MaxRecord:integer):boolean;
    Function Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
    Function ListarSinResp(Consulta:widestring):boolean;
    Function Agrega():boolean;
    Function Borrar(ValorBuscado:string):boolean;
    Function Modificar():boolean;

  Published
    { Published declarations }
  end;

  var FCapaDatos:TCapaDatos;

implementation

constructor TParcelasServiciosSepeliosDeudas.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=13;
end;

procedure TParcelasServiciosSepeliosDeudas.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TParcelasServiciosSepeliosDeudas.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TParcelasServiciosSepeliosDeudas.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TParcelasServiciosSepeliosDeudas.SetIdDeuda(Value:variant);
begin
  FIdDeuda:=Value;
end;

procedure TParcelasServiciosSepeliosDeudas.SetIdServicio(Value:variant);
begin
  FIdServicio:=Value;
end;

procedure TParcelasServiciosSepeliosDeudas.SetNroCuota(Value:variant);
begin
  FNroCuota:=Value;
end;

procedure TParcelasServiciosSepeliosDeudas.SetPeriodo(Value:variant);
begin
  FPeriodo:=Value;
end;

procedure TParcelasServiciosSepeliosDeudas.SetFechaVencimiento(Value:string);
begin
  FFechaVencimiento:=Value;
end;

procedure TParcelasServiciosSepeliosDeudas.SetMonto(Value:variant);
begin
  FMonto:=Value;
end;

procedure TParcelasServiciosSepeliosDeudas.SetInteres(Value:variant);
begin
  FInteres:=Value;
end;

procedure TParcelasServiciosSepeliosDeudas.SetCapital(Value:variant);
begin
  FCapital:=Value;
end;

procedure TParcelasServiciosSepeliosDeudas.SetEnMovimientos(Value:boolean);
begin
  FEnMovimientos:=Value;
end;

procedure TParcelasServiciosSepeliosDeudas.SetDetalleCuota(Value:string);
begin
  FDetalleCuota:=Value;
end;

procedure TParcelasServiciosSepeliosDeudas.SetBloqueoMonto(Value:boolean);
begin
  FBloqueoMonto:=Value;
end;

procedure TParcelasServiciosSepeliosDeudas.SetUsu_A(Value:variant);
begin
  FUsu_A:=Value;
end;

procedure TParcelasServiciosSepeliosDeudas.SetFecha_A(Value:string);
begin
  FFecha_A:=Value;
end;

Function TParcelasServiciosSepeliosDeudas.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_ParcelasServiciosSepeliosDeudasConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_IdDeuda_PK:=DataSet.FieldByName('IdDeuda').AsVariant;
  C_IdServicio:=DataSet.FieldByName('IdServicio').AsVariant;
  C_NroCuota:=DataSet.FieldByName('NroCuota').AsVariant;
  C_Periodo:=DataSet.FieldByName('Periodo').AsVariant;
  C_FechaVencimiento:=DataSet.FieldByName('FechaVencimiento').AsString;
  C_Monto:=DataSet.FieldByName('Monto').AsVariant;
  C_Interes:=DataSet.FieldByName('Interes').AsVariant;
  C_Capital:=DataSet.FieldByName('Capital').AsVariant;
  C_EnMovimientos:=DataSet.FieldByName('EnMovimientos').AsBoolean;
  C_DetalleCuota:=DataSet.FieldByName('DetalleCuota').AsString;
  C_BloqueoMonto:=DataSet.FieldByName('BloqueoMonto').AsBoolean;
  C_Usu_A:=DataSet.FieldByName('Usu_A').AsVariant;
  C_Fecha_A:=DataSet.FieldByName('Fecha_A').AsString;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TParcelasServiciosSepeliosDeudas.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasServiciosSepeliosDeudasConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasServiciosSepeliosDeudas.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasServiciosSepeliosDeudas.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasServiciosSepeliosDeudas.Agrega():boolean;
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
if (C_IdServicio = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdServicio));
if (C_NroCuota = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroCuota));
if (C_Periodo = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Periodo));
Parametros.Add(C_FechaVencimiento);
if (C_Monto = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Monto));
if (C_Interes = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Interes));
if (C_Capital = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Capital));
if C_EnMovimientos then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_DetalleCuota);
if C_BloqueoMonto then Parametros.Add('1')
else Parametros.Add('0');
if (C_Usu_A = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_A));

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasServiciosSepeliosDeudasInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TParcelasServiciosSepeliosDeudas.Borrar(ValorBuscado:string):boolean;
var Parametros:TWideStrings;
begin

//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(ValorBuscado);

//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasServiciosSepeliosDeudasEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TParcelasServiciosSepeliosDeudas.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_IdDeuda_PK));
if (C_IdServicio = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdServicio));
if (C_NroCuota = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroCuota));
if (C_Periodo = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Periodo));
Parametros.Add(C_FechaVencimiento);
if (C_Monto = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Monto));
if (C_Interes = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Interes));
if (C_Capital = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Capital));
if C_EnMovimientos then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_DetalleCuota);
if C_BloqueoMonto then Parametros.Add('1')
else Parametros.Add('0');


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasServiciosSepeliosDeudasModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

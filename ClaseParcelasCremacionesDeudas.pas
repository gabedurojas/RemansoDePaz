unit ClaseParcelasCremacionesDeudas;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TParcelasCremacionesDeudas= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FIdDeuda:variant;
    FIdCremacion:variant;
    FNroCuota:variant;
    FPeriodo:variant;
    FFechaVencimiento:string;
    FMonto:variant;
    FInteres:variant;
    FCapital:variant;
    FEnMovimientos:boolean;
    FDetalleCuota:string;
    FUsu_A:variant;
    FFecha_A:string;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetIdDeuda(Value:variant);
    procedure SetIdCremacion(Value:variant);
    procedure SetNroCuota(Value:variant);
    procedure SetPeriodo(Value:variant);
    procedure SetFechaVencimiento(Value:string);
    procedure SetMonto(Value:variant);
    procedure SetInteres(Value:variant);
    procedure SetCapital(Value:variant);
    procedure SetEnMovimientos(Value:boolean);
    procedure SetDetalleCuota(Value:string);
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
    property C_IdCremacion:variant read FIdCremacion write SetIdCremacion;
    property C_NroCuota:variant read FNroCuota write SetNroCuota;
    property C_Periodo:variant read FPeriodo write SetPeriodo;
    property C_FechaVencimiento:string read FFechaVencimiento write SetFechaVencimiento;
    property C_Monto:variant read FMonto write SetMonto;
    property C_Interes:variant read FInteres write SetInteres;
    property C_Capital:variant read FCapital write SetCapital;
    property C_EnMovimientos:boolean read FEnMovimientos write SetEnMovimientos;
    property C_DetalleCuota:string read FDetalleCuota write SetDetalleCuota;
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

constructor TParcelasCremacionesDeudas.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=12;
end;

procedure TParcelasCremacionesDeudas.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TParcelasCremacionesDeudas.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TParcelasCremacionesDeudas.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TParcelasCremacionesDeudas.SetIdDeuda(Value:variant);
begin
  FIdDeuda:=Value;
end;

procedure TParcelasCremacionesDeudas.SetIdCremacion(Value:variant);
begin
  FIdCremacion:=Value;
end;

procedure TParcelasCremacionesDeudas.SetNroCuota(Value:variant);
begin
  FNroCuota:=Value;
end;

procedure TParcelasCremacionesDeudas.SetPeriodo(Value:variant);
begin
  FPeriodo:=Value;
end;

procedure TParcelasCremacionesDeudas.SetFechaVencimiento(Value:string);
begin
  FFechaVencimiento:=Value;
end;

procedure TParcelasCremacionesDeudas.SetMonto(Value:variant);
begin
  FMonto:=Value;
end;

procedure TParcelasCremacionesDeudas.SetInteres(Value:variant);
begin
  FInteres:=Value;
end;

procedure TParcelasCremacionesDeudas.SetCapital(Value:variant);
begin
  FCapital:=Value;
end;

procedure TParcelasCremacionesDeudas.SetEnMovimientos(Value:boolean);
begin
  FEnMovimientos:=Value;
end;

procedure TParcelasCremacionesDeudas.SetDetalleCuota(Value:string);
begin
  FDetalleCuota:=Value;
end;

procedure TParcelasCremacionesDeudas.SetUsu_A(Value:variant);
begin
  FUsu_A:=Value;
end;

procedure TParcelasCremacionesDeudas.SetFecha_A(Value:string);
begin
  FFecha_A:=Value;
end;

Function TParcelasCremacionesDeudas.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_ParcelasCremacionesDeudasConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_IdDeuda_PK:=DataSet.FieldByName('IdDeuda').AsVariant;
  C_IdCremacion:=DataSet.FieldByName('IdCremacion').AsVariant;
  C_NroCuota:=DataSet.FieldByName('NroCuota').AsVariant;
  C_Periodo:=DataSet.FieldByName('Periodo').AsVariant;
  C_FechaVencimiento:=DataSet.FieldByName('FechaVencimiento').AsString;
  C_Monto:=DataSet.FieldByName('Monto').AsVariant;
  C_Interes:=DataSet.FieldByName('Interes').AsVariant;
  C_Capital:=DataSet.FieldByName('Capital').AsVariant;
  C_EnMovimientos:=DataSet.FieldByName('EnMovimientos').AsBoolean;
  C_DetalleCuota:=DataSet.FieldByName('DetalleCuota').AsString;
  C_Usu_A:=DataSet.FieldByName('Usu_A').AsVariant;
  C_Fecha_A:=DataSet.FieldByName('Fecha_A').AsString;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TParcelasCremacionesDeudas.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasCremacionesDeudasConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasCremacionesDeudas.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasCremacionesDeudas.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasCremacionesDeudas.Agrega():boolean;
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
if (C_IdCremacion = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdCremacion));
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
if (C_Usu_A = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_A));

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasCremacionesDeudasInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TParcelasCremacionesDeudas.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasCremacionesDeudasEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TParcelasCremacionesDeudas.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_IdDeuda_PK));
if (C_IdCremacion = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdCremacion));
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


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasCremacionesDeudasModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

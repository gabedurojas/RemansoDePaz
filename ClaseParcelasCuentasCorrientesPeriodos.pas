unit ClaseParcelasCuentasCorrientesPeriodos;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TParcelasCuentasCorrientesPeriodos= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FID:variant;
    FIdCuentaCorriente:variant;
    FNroAccion:variant;
    FNroTipoObjeto:variant;
    FPeriodo:variant;
    FImporteCuota:variant;
    FInteresAcumulado:variant;
    FPorcentajeAplicado:variant;
    FTotalCuota:variant;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetID(Value:variant);
    procedure SetIdCuentaCorriente(Value:variant);
    procedure SetNroAccion(Value:variant);
    procedure SetNroTipoObjeto(Value:variant);
    procedure SetPeriodo(Value:variant);
    procedure SetImporteCuota(Value:variant);
    procedure SetInteresAcumulado(Value:variant);
    procedure SetPorcentajeAplicado(Value:variant);
    procedure SetTotalCuota(Value:variant);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_ID_PK:variant read FID write SetID;
    property C_IdCuentaCorriente:variant read FIdCuentaCorriente write SetIdCuentaCorriente;
    property C_NroAccion:variant read FNroAccion write SetNroAccion;
    property C_NroTipoObjeto:variant read FNroTipoObjeto write SetNroTipoObjeto;
    property C_Periodo:variant read FPeriodo write SetPeriodo;
    property C_ImporteCuota:variant read FImporteCuota write SetImporteCuota;
    property C_InteresAcumulado:variant read FInteresAcumulado write SetInteresAcumulado;
    property C_PorcentajeAplicado:variant read FPorcentajeAplicado write SetPorcentajeAplicado;
    property C_TotalCuota:variant read FTotalCuota write SetTotalCuota;

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

constructor TParcelasCuentasCorrientesPeriodos.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=9;
end;

procedure TParcelasCuentasCorrientesPeriodos.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TParcelasCuentasCorrientesPeriodos.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TParcelasCuentasCorrientesPeriodos.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TParcelasCuentasCorrientesPeriodos.SetID(Value:variant);
begin
  FID:=Value;
end;

procedure TParcelasCuentasCorrientesPeriodos.SetIdCuentaCorriente(Value:variant);
begin
  FIdCuentaCorriente:=Value;
end;

procedure TParcelasCuentasCorrientesPeriodos.SetNroAccion(Value:variant);
begin
  FNroAccion:=Value;
end;

procedure TParcelasCuentasCorrientesPeriodos.SetNroTipoObjeto(Value:variant);
begin
  FNroTipoObjeto:=Value;
end;

procedure TParcelasCuentasCorrientesPeriodos.SetPeriodo(Value:variant);
begin
  FPeriodo:=Value;
end;

procedure TParcelasCuentasCorrientesPeriodos.SetImporteCuota(Value:variant);
begin
  FImporteCuota:=Value;
end;

procedure TParcelasCuentasCorrientesPeriodos.SetInteresAcumulado(Value:variant);
begin
  FInteresAcumulado:=Value;
end;

procedure TParcelasCuentasCorrientesPeriodos.SetPorcentajeAplicado(Value:variant);
begin
  FPorcentajeAplicado:=Value;
end;

procedure TParcelasCuentasCorrientesPeriodos.SetTotalCuota(Value:variant);
begin
  FTotalCuota:=Value;
end;

Function TParcelasCuentasCorrientesPeriodos.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_ParcelasCuentasCorrientesPeriodosConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_ID_PK:=DataSet.FieldByName('ID').AsVariant;
  C_IdCuentaCorriente:=DataSet.FieldByName('IdCuentaCorriente').AsVariant;
  C_NroAccion:=DataSet.FieldByName('NroAccion').AsVariant;
  C_NroTipoObjeto:=DataSet.FieldByName('NroTipoObjeto').AsVariant;
  C_Periodo:=DataSet.FieldByName('Periodo').AsVariant;
  C_ImporteCuota:=DataSet.FieldByName('ImporteCuota').AsVariant;
  C_InteresAcumulado:=DataSet.FieldByName('InteresAcumulado').AsVariant;
  C_PorcentajeAplicado:=DataSet.FieldByName('PorcentajeAplicado').AsVariant;
  C_TotalCuota:=DataSet.FieldByName('TotalCuota').AsVariant;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TParcelasCuentasCorrientesPeriodos.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasCuentasCorrientesPeriodosConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasCuentasCorrientesPeriodos.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasCuentasCorrientesPeriodos.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasCuentasCorrientesPeriodos.Agrega():boolean;
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
if (C_IdCuentaCorriente = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdCuentaCorriente));
if (C_NroAccion = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroAccion));
if (C_NroTipoObjeto = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroTipoObjeto));
if (C_Periodo = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Periodo));
if (C_ImporteCuota = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_ImporteCuota));
if (C_InteresAcumulado = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_InteresAcumulado));
if (C_PorcentajeAplicado = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_PorcentajeAplicado));
if (C_TotalCuota = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_TotalCuota));

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasCuentasCorrientesPeriodosInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TParcelasCuentasCorrientesPeriodos.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasCuentasCorrientesPeriodosEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TParcelasCuentasCorrientesPeriodos.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_ID_PK));
if (C_IdCuentaCorriente = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdCuentaCorriente));
if (C_NroAccion = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroAccion));
if (C_NroTipoObjeto = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroTipoObjeto));
if (C_Periodo = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Periodo));
if (C_ImporteCuota = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_ImporteCuota));
if (C_InteresAcumulado = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_InteresAcumulado));
if (C_PorcentajeAplicado = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_PorcentajeAplicado));
if (C_TotalCuota = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_TotalCuota));


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasCuentasCorrientesPeriodosModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

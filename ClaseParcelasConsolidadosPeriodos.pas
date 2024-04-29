unit ClaseParcelasConsolidadosPeriodos;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TParcelasConsolidadosPeriodos= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FID:variant;
    FNroAccion:variant;
    FNroTipoObjeto:variant;
    FIdConsolidado:variant;
    FPeriodo:variant;
    FImporteCuota:variant;
    FInteresAcumulado:variant;
    FPorcentajeAplicado:variant;
    FTotalCuota:variant;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetID(Value:variant);
    procedure SetNroAccion(Value:variant);
    procedure SetNroTipoObjeto(Value:variant);
    procedure SetIdConsolidado(Value:variant);
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
    property C_NroAccion:variant read FNroAccion write SetNroAccion;
    property C_NroTipoObjeto:variant read FNroTipoObjeto write SetNroTipoObjeto;
    property C_IdConsolidado:variant read FIdConsolidado write SetIdConsolidado;
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

constructor TParcelasConsolidadosPeriodos.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=9;
end;

procedure TParcelasConsolidadosPeriodos.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TParcelasConsolidadosPeriodos.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TParcelasConsolidadosPeriodos.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TParcelasConsolidadosPeriodos.SetID(Value:variant);
begin
  FID:=Value;
end;

procedure TParcelasConsolidadosPeriodos.SetNroAccion(Value:variant);
begin
  FNroAccion:=Value;
end;

procedure TParcelasConsolidadosPeriodos.SetNroTipoObjeto(Value:variant);
begin
  FNroTipoObjeto:=Value;
end;

procedure TParcelasConsolidadosPeriodos.SetIdConsolidado(Value:variant);
begin
  FIdConsolidado:=Value;
end;

procedure TParcelasConsolidadosPeriodos.SetPeriodo(Value:variant);
begin
  FPeriodo:=Value;
end;

procedure TParcelasConsolidadosPeriodos.SetImporteCuota(Value:variant);
begin
  FImporteCuota:=Value;
end;

procedure TParcelasConsolidadosPeriodos.SetInteresAcumulado(Value:variant);
begin
  FInteresAcumulado:=Value;
end;

procedure TParcelasConsolidadosPeriodos.SetPorcentajeAplicado(Value:variant);
begin
  FPorcentajeAplicado:=Value;
end;

procedure TParcelasConsolidadosPeriodos.SetTotalCuota(Value:variant);
begin
  FTotalCuota:=Value;
end;

Function TParcelasConsolidadosPeriodos.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_ParcelasConsolidadosPeriodosConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_ID_PK:=DataSet.FieldByName('ID').AsVariant;
  C_NroAccion:=DataSet.FieldByName('NroAccion').AsVariant;
  C_NroTipoObjeto:=DataSet.FieldByName('NroTipoObjeto').AsVariant;
  C_IdConsolidado:=DataSet.FieldByName('IdConsolidado').AsVariant;
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

Function TParcelasConsolidadosPeriodos.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasConsolidadosPeriodosConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasConsolidadosPeriodos.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasConsolidadosPeriodos.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasConsolidadosPeriodos.Agrega():boolean;
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
if (C_NroAccion = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroAccion));
if (C_NroTipoObjeto = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroTipoObjeto));
if (C_IdConsolidado = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdConsolidado));
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
Result:=FCapaDatos.BuscarSP('SPC_ParcelasConsolidadosPeriodosInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TParcelasConsolidadosPeriodos.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasConsolidadosPeriodosEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TParcelasConsolidadosPeriodos.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_ID_PK));
if (C_NroAccion = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroAccion));
if (C_NroTipoObjeto = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroTipoObjeto));
if (C_IdConsolidado = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdConsolidado));
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
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasConsolidadosPeriodosModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

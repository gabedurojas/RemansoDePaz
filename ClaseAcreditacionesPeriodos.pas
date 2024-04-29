unit ClaseAcreditacionesPeriodos;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TAcreditacionesPeriodos= Class(TObject)
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
    FIdAcreditacion:variant;
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
    procedure SetIdAcreditacion(Value:variant);
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
    property C_IdAcreditacion:variant read FIdAcreditacion write SetIdAcreditacion;
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

constructor TAcreditacionesPeriodos.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=9;
end;

procedure TAcreditacionesPeriodos.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TAcreditacionesPeriodos.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TAcreditacionesPeriodos.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TAcreditacionesPeriodos.SetID(Value:variant);
begin
  FID:=Value;
end;

procedure TAcreditacionesPeriodos.SetNroAccion(Value:variant);
begin
  FNroAccion:=Value;
end;

procedure TAcreditacionesPeriodos.SetNroTipoObjeto(Value:variant);
begin
  FNroTipoObjeto:=Value;
end;

procedure TAcreditacionesPeriodos.SetIdAcreditacion(Value:variant);
begin
  FIdAcreditacion:=Value;
end;

procedure TAcreditacionesPeriodos.SetPeriodo(Value:variant);
begin
  FPeriodo:=Value;
end;

procedure TAcreditacionesPeriodos.SetImporteCuota(Value:variant);
begin
  FImporteCuota:=Value;
end;

procedure TAcreditacionesPeriodos.SetInteresAcumulado(Value:variant);
begin
  FInteresAcumulado:=Value;
end;

procedure TAcreditacionesPeriodos.SetPorcentajeAplicado(Value:variant);
begin
  FPorcentajeAplicado:=Value;
end;

procedure TAcreditacionesPeriodos.SetTotalCuota(Value:variant);
begin
  FTotalCuota:=Value;
end;

Function TAcreditacionesPeriodos.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_AcreditacionesPeriodosConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_ID_PK:=DataSet.FieldByName('ID').AsVariant;
  C_NroAccion:=DataSet.FieldByName('NroAccion').AsVariant;
  C_NroTipoObjeto:=DataSet.FieldByName('NroTipoObjeto').AsVariant;
  C_IdAcreditacion:=DataSet.FieldByName('IdAcreditacion').AsVariant;
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

Function TAcreditacionesPeriodos.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_AcreditacionesPeriodosConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TAcreditacionesPeriodos.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TAcreditacionesPeriodos.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TAcreditacionesPeriodos.Agrega():boolean;
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
if (C_IdAcreditacion = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdAcreditacion));
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
Result:=FCapaDatos.BuscarSP('SPC_AcreditacionesPeriodosInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TAcreditacionesPeriodos.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_AcreditacionesPeriodosEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TAcreditacionesPeriodos.Modificar():boolean;
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
if (C_IdAcreditacion = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdAcreditacion));
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
Result:=FCapaDatos.EjecutarSinResp('SPC_AcreditacionesPeriodosModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

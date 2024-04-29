unit ClasePersonalSubCobradores;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TPersonalSubCobradores= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FId:variant;
    FCuifCobrador:variant;
    FCuifSubcobrador:variant;
    FFechaInicio:string;
    FFechaFin:string;
    FObservaciones:string;
    FFecha_A:string;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetId(Value:variant);
    procedure SetCuifCobrador(Value:variant);
    procedure SetCuifSubcobrador(Value:variant);
    procedure SetFechaInicio(Value:string);
    procedure SetFechaFin(Value:string);
    procedure SetObservaciones(Value:string);
    procedure SetFecha_A(Value:string);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_Id_PK:variant read FId write SetId;
    property C_CuifCobrador:variant read FCuifCobrador write SetCuifCobrador;
    property C_CuifSubcobrador:variant read FCuifSubcobrador write SetCuifSubcobrador;
    property C_FechaInicio:string read FFechaInicio write SetFechaInicio;
    property C_FechaFin:string read FFechaFin write SetFechaFin;
    property C_Observaciones:string read FObservaciones write SetObservaciones;
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

constructor TPersonalSubCobradores.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=7;
end;

procedure TPersonalSubCobradores.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TPersonalSubCobradores.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TPersonalSubCobradores.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TPersonalSubCobradores.SetId(Value:variant);
begin
  FId:=Value;
end;

procedure TPersonalSubCobradores.SetCuifCobrador(Value:variant);
begin
  FCuifCobrador:=Value;
end;

procedure TPersonalSubCobradores.SetCuifSubcobrador(Value:variant);
begin
  FCuifSubcobrador:=Value;
end;

procedure TPersonalSubCobradores.SetFechaInicio(Value:string);
begin
  FFechaInicio:=Value;
end;

procedure TPersonalSubCobradores.SetFechaFin(Value:string);
begin
  FFechaFin:=Value;
end;

procedure TPersonalSubCobradores.SetObservaciones(Value:string);
begin
  FObservaciones:=Value;
end;

procedure TPersonalSubCobradores.SetFecha_A(Value:string);
begin
  FFecha_A:=Value;
end;

Function TPersonalSubCobradores.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_PersonalSubCobradoresConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_Id_PK:=DataSet.FieldByName('Id').AsVariant;
  C_CuifCobrador:=StrToInt64(DataSet.FieldByName('CuifCobrador').AsString);
  C_CuifSubcobrador:=StrToInt64(DataSet.FieldByName('CuifSubcobrador').AsString);
  C_FechaInicio:=DataSet.FieldByName('FechaInicio').AsString;
  C_FechaFin:=DataSet.FieldByName('FechaFin').AsString;
  C_Observaciones:=DataSet.FieldByName('Observaciones').AsString;
  C_Fecha_A:=DataSet.FieldByName('Fecha_A').AsString;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TPersonalSubCobradores.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_PersonalSubCobradoresConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TPersonalSubCobradores.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TPersonalSubCobradores.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TPersonalSubCobradores.Agrega():boolean;
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
if (C_CuifCobrador = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuifCobrador));
if (C_CuifSubcobrador = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuifSubcobrador));
Parametros.Add(C_FechaInicio);
Parametros.Add(C_FechaFin);
Parametros.Add(C_Observaciones);

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_PersonalSubCobradoresInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TPersonalSubCobradores.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_PersonalSubCobradoresEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TPersonalSubCobradores.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_Id_PK));
if (C_CuifCobrador = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuifCobrador));
if (C_CuifSubcobrador = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuifSubcobrador));
Parametros.Add(C_FechaInicio);
Parametros.Add(C_FechaFin);
Parametros.Add(C_Observaciones);


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_PersonalSubCobradoresModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

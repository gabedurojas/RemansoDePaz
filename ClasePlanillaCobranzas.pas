unit ClasePlanillaCobranzas;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TPlanillaCobranzas= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FId:variant;
    FNroFormulario:string;
    FNroPlanilla:variant;
    FCuif:variant;
    FFecha:string;
    FCantidad:variant;
    FMontoCobrado:variant;
    FComision:variant;
    FPorcentaje:variant;
    FTotal:variant;
    FObservaciones:string;
    FUsu_A:variant;
    FFecha_A:string;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetId(Value:variant);
    procedure SetNroFormulario(Value:string);
    procedure SetNroPlanilla(Value:variant);
    procedure SetCuif(Value:variant);
    procedure SetFecha(Value:string);
    procedure SetCantidad(Value:variant);
    procedure SetMontoCobrado(Value:variant);
    procedure SetComision(Value:variant);
    procedure SetPorcentaje(Value:variant);
    procedure SetTotal(Value:variant);
    procedure SetObservaciones(Value:string);
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

    property C_Id_PK:variant read FId write SetId;
    property C_NroFormulario_IX1:string read FNroFormulario write SetNroFormulario;
    property C_NroPlanilla_IX2:variant read FNroPlanilla write SetNroPlanilla;
    property C_Cuif_IX3:variant read FCuif write SetCuif;
    property C_Fecha_IX4:string read FFecha write SetFecha;
    property C_Cantidad:variant read FCantidad write SetCantidad;
    property C_MontoCobrado:variant read FMontoCobrado write SetMontoCobrado;
    property C_Comision:variant read FComision write SetComision;
    property C_Porcentaje:variant read FPorcentaje write SetPorcentaje;
    property C_Total:variant read FTotal write SetTotal;
    property C_Observaciones:string read FObservaciones write SetObservaciones;
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

constructor TPlanillaCobranzas.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=13;
end;

procedure TPlanillaCobranzas.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TPlanillaCobranzas.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TPlanillaCobranzas.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TPlanillaCobranzas.SetId(Value:variant);
begin
  FId:=Value;
end;

procedure TPlanillaCobranzas.SetNroFormulario(Value:string);
begin
  FNroFormulario:=Value;
end;

procedure TPlanillaCobranzas.SetNroPlanilla(Value:variant);
begin
  FNroPlanilla:=Value;
end;

procedure TPlanillaCobranzas.SetCuif(Value:variant);
begin
  FCuif:=Value;
end;

procedure TPlanillaCobranzas.SetFecha(Value:string);
begin
  FFecha:=Value;
end;

procedure TPlanillaCobranzas.SetCantidad(Value:variant);
begin
  FCantidad:=Value;
end;

procedure TPlanillaCobranzas.SetMontoCobrado(Value:variant);
begin
  FMontoCobrado:=Value;
end;

procedure TPlanillaCobranzas.SetComision(Value:variant);
begin
  FComision:=Value;
end;

procedure TPlanillaCobranzas.SetPorcentaje(Value:variant);
begin
  FPorcentaje:=Value;
end;

procedure TPlanillaCobranzas.SetTotal(Value:variant);
begin
  FTotal:=Value;
end;

procedure TPlanillaCobranzas.SetObservaciones(Value:string);
begin
  FObservaciones:=Value;
end;

procedure TPlanillaCobranzas.SetUsu_A(Value:variant);
begin
  FUsu_A:=Value;
end;

procedure TPlanillaCobranzas.SetFecha_A(Value:string);
begin
  FFecha_A:=Value;
end;

Function TPlanillaCobranzas.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_PlanillaCobranzasConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_Id_PK:=DataSet.FieldByName('Id').AsVariant;
  C_NroFormulario_IX1:=DataSet.FieldByName('NroFormulario').AsString;
  C_NroPlanilla_IX2:=DataSet.FieldByName('NroPlanilla').AsVariant;
  C_Cuif_IX3:=StrToInt64(DataSet.FieldByName('Cuif').AsString);
  C_Fecha_IX4:=DataSet.FieldByName('Fecha').AsString;
  C_Cantidad:=DataSet.FieldByName('Cantidad').AsVariant;
  C_MontoCobrado:=DataSet.FieldByName('MontoCobrado').AsVariant;
  C_Comision:=DataSet.FieldByName('Comision').AsVariant;
  C_Porcentaje:=DataSet.FieldByName('Porcentaje').AsVariant;
  C_Total:=DataSet.FieldByName('Total').AsVariant;
  C_Observaciones:=DataSet.FieldByName('Observaciones').AsString;
  C_Usu_A:=DataSet.FieldByName('Usu_A').AsVariant;
  C_Fecha_A:=DataSet.FieldByName('Fecha_A').AsString;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TPlanillaCobranzas.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_PlanillaCobranzasConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TPlanillaCobranzas.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TPlanillaCobranzas.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TPlanillaCobranzas.Agrega():boolean;
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
Parametros.Add(C_NroFormulario_IX1);
if (C_NroPlanilla_IX2 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroPlanilla_IX2));
if (C_Cuif_IX3 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Cuif_IX3));
Parametros.Add(C_Fecha_IX4);
if (C_Cantidad = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Cantidad));
if (C_MontoCobrado = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_MontoCobrado));
if (C_Comision = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Comision));
if (C_Porcentaje = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Porcentaje));
if (C_Total = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Total));
Parametros.Add(C_Observaciones);
if (C_Usu_A = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_A));

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_PlanillaCobranzasInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TPlanillaCobranzas.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_PlanillaCobranzasEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TPlanillaCobranzas.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_Id_PK));
Parametros.Add(C_NroFormulario_IX1);
if (C_NroPlanilla_IX2 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroPlanilla_IX2));
if (C_Cuif_IX3 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Cuif_IX3));
Parametros.Add(C_Fecha_IX4);
if (C_Cantidad = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Cantidad));
if (C_MontoCobrado = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_MontoCobrado));
if (C_Comision = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Comision));
if (C_Porcentaje = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Porcentaje));
if (C_Total = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Total));
Parametros.Add(C_Observaciones);


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_PlanillaCobranzasModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

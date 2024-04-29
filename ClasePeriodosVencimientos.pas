unit ClasePeriodosVencimientos;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TPeriodosVencimientos= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FId:integer;
    FPeriodo:integer;
    FVencimiento:string;
    FAportes:boolean;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetId(Value:integer);
    procedure SetPeriodo(Value:integer);
    procedure SetVencimiento(Value:string);
    procedure SetAportes(Value:boolean);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_Id_PK:integer read FId write SetId;
    property C_Periodo_IX1:integer read FPeriodo write SetPeriodo;
    property C_Vencimiento_IX2:string read FVencimiento write SetVencimiento;
    property C_Aportes:boolean read FAportes write SetAportes;

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

constructor TPeriodosVencimientos.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=4;
end;

procedure TPeriodosVencimientos.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TPeriodosVencimientos.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TPeriodosVencimientos.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TPeriodosVencimientos.SetId(Value:integer);
begin
  FId:=Value;
end;

procedure TPeriodosVencimientos.SetPeriodo(Value:integer);
begin
  FPeriodo:=Value;
end;

procedure TPeriodosVencimientos.SetVencimiento(Value:string);
begin
  FVencimiento:=Value;
end;

procedure TPeriodosVencimientos.SetAportes(Value:boolean);
begin
  FAportes:=Value;
end;

Function TPeriodosVencimientos.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_PeriodosVencimientosConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_Id_PK:=DataSet.FieldByName('Id').AsInteger;
  C_Periodo_IX1:=DataSet.FieldByName('Periodo').AsInteger;
  C_Vencimiento_IX2:=DataSet.FieldByName('Vencimiento').AsString;
  C_Aportes:=DataSet.FieldByName('Aportes').AsBoolean;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TPeriodosVencimientos.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_PeriodosVencimientosConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TPeriodosVencimientos.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TPeriodosVencimientos.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TPeriodosVencimientos.Agrega():boolean;
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
Parametros.Add(IntToStr(C_Periodo_IX1));
Parametros.Add(C_Vencimiento_IX2);
if C_Aportes then Parametros.Add('1')
else Parametros.Add('0');

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_PeriodosVencimientosInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TPeriodosVencimientos.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_PeriodosVencimientosEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TPeriodosVencimientos.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_Id_PK));
Parametros.Add(IntToStr(C_Periodo_IX1));
Parametros.Add(C_Vencimiento_IX2);
if C_Aportes then Parametros.Add('1')
else Parametros.Add('0');


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_PeriodosVencimientosModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

unit ClaseParcelasMantenimientoPagosPeriodos;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TParcelasMantenimientoPagosPeriodos= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FId:variant;
    FIdMantenimientoPagos:variant;
    FPeriodo:variant;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetId(Value:variant);
    procedure SetIdMantenimientoPagos(Value:variant);
    procedure SetPeriodo(Value:variant);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_Id_PK:variant read FId write SetId;
    property C_IdMantenimientoPagos:variant read FIdMantenimientoPagos write SetIdMantenimientoPagos;
    property C_Periodo:variant read FPeriodo write SetPeriodo;

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

constructor TParcelasMantenimientoPagosPeriodos.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=3;
end;

procedure TParcelasMantenimientoPagosPeriodos.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TParcelasMantenimientoPagosPeriodos.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TParcelasMantenimientoPagosPeriodos.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TParcelasMantenimientoPagosPeriodos.SetId(Value:variant);
begin
  FId:=Value;
end;

procedure TParcelasMantenimientoPagosPeriodos.SetIdMantenimientoPagos(Value:variant);
begin
  FIdMantenimientoPagos:=Value;
end;

procedure TParcelasMantenimientoPagosPeriodos.SetPeriodo(Value:variant);
begin
  FPeriodo:=Value;
end;

Function TParcelasMantenimientoPagosPeriodos.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_ParcelasMantenimientoPagosPeriodosConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_Id_PK:=DataSet.FieldByName('Id').AsVariant;
  C_IdMantenimientoPagos:=DataSet.FieldByName('IdMantenimientoPagos').AsVariant;
  C_Periodo:=DataSet.FieldByName('Periodo').AsVariant;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TParcelasMantenimientoPagosPeriodos.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasMantenimientoPagosPeriodosConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasMantenimientoPagosPeriodos.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasMantenimientoPagosPeriodos.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasMantenimientoPagosPeriodos.Agrega():boolean;
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
if (C_IdMantenimientoPagos = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdMantenimientoPagos));
if (C_Periodo = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Periodo));

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasMantenimientoPagosPeriodosInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TParcelasMantenimientoPagosPeriodos.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasMantenimientoPagosPeriodosEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TParcelasMantenimientoPagosPeriodos.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_Id_PK));
if (C_IdMantenimientoPagos = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdMantenimientoPagos));
if (C_Periodo = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Periodo));


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasMantenimientoPagosPeriodosModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

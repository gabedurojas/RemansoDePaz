unit ClaseComprobantesCobradosParciales;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TComprobantesCobradosParciales= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FId:variant;
    FIdComprobanteCobrado:variant;
    FImporte:variant;
    FPeriodo:variant;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetId(Value:variant);
    procedure SetIdComprobanteCobrado(Value:variant);
    procedure SetImporte(Value:variant);
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
    property C_IdComprobanteCobrado:variant read FIdComprobanteCobrado write SetIdComprobanteCobrado;
    property C_Importe:variant read FImporte write SetImporte;
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

constructor TComprobantesCobradosParciales.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=4;
end;

procedure TComprobantesCobradosParciales.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TComprobantesCobradosParciales.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TComprobantesCobradosParciales.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TComprobantesCobradosParciales.SetId(Value:variant);
begin
  FId:=Value;
end;

procedure TComprobantesCobradosParciales.SetIdComprobanteCobrado(Value:variant);
begin
  FIdComprobanteCobrado:=Value;
end;

procedure TComprobantesCobradosParciales.SetImporte(Value:variant);
begin
  FImporte:=Value;
end;

procedure TComprobantesCobradosParciales.SetPeriodo(Value:variant);
begin
  FPeriodo:=Value;
end;

Function TComprobantesCobradosParciales.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_ComprobantesCobradosParcialesConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_Id_PK:=DataSet.FieldByName('Id').AsVariant;
  C_IdComprobanteCobrado:=DataSet.FieldByName('IdComprobanteCobrado').AsVariant;
  C_Importe:=DataSet.FieldByName('Importe').AsVariant;
  C_Periodo:=DataSet.FieldByName('Periodo').AsVariant;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TComprobantesCobradosParciales.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ComprobantesCobradosParcialesConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TComprobantesCobradosParciales.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TComprobantesCobradosParciales.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TComprobantesCobradosParciales.Agrega():boolean;
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
if (C_IdComprobanteCobrado = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdComprobanteCobrado));
if (C_Importe = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Importe));
if (C_Periodo = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Periodo));

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ComprobantesCobradosParcialesInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TComprobantesCobradosParciales.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_ComprobantesCobradosParcialesEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TComprobantesCobradosParciales.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_Id_PK));
if (C_IdComprobanteCobrado = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdComprobanteCobrado));
if (C_Importe = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Importe));
if (C_Periodo = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Periodo));


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_ComprobantesCobradosParcialesModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

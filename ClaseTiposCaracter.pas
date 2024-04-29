unit ClaseTiposCaracter;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TTiposCaracter= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FNroCaracter:variant;
    FDetalle:string;
    FValor:variant;
    FObservaciones:string;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetNroCaracter(Value:variant);
    procedure SetDetalle(Value:string);
    procedure SetValor(Value:variant);
    procedure SetObservaciones(Value:string);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_NroCaracter_PK:variant read FNroCaracter write SetNroCaracter;
    property C_Detalle_IX1:string read FDetalle write SetDetalle;
    property C_Valor:variant read FValor write SetValor;
    property C_Observaciones:string read FObservaciones write SetObservaciones;

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

constructor TTiposCaracter.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=4;
end;

procedure TTiposCaracter.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TTiposCaracter.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TTiposCaracter.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TTiposCaracter.SetNroCaracter(Value:variant);
begin
  FNroCaracter:=Value;
end;

procedure TTiposCaracter.SetDetalle(Value:string);
begin
  FDetalle:=Value;
end;

procedure TTiposCaracter.SetValor(Value:variant);
begin
  FValor:=Value;
end;

procedure TTiposCaracter.SetObservaciones(Value:string);
begin
  FObservaciones:=Value;
end;

Function TTiposCaracter.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_TiposCaracterConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_NroCaracter_PK:=DataSet.FieldByName('NroCaracter').AsVariant;
  C_Detalle_IX1:=DataSet.FieldByName('Detalle').AsString;
  C_Valor:=DataSet.FieldByName('Valor').AsVariant;
  C_Observaciones:=DataSet.FieldByName('Observaciones').AsString;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TTiposCaracter.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_TiposCaracterConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TTiposCaracter.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TTiposCaracter.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TTiposCaracter.Agrega():boolean;
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
Parametros.Add(C_Detalle_IX1);
if (C_Valor = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Valor));
Parametros.Add(C_Observaciones);

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_TiposCaracterInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TTiposCaracter.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_TiposCaracterEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TTiposCaracter.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_NroCaracter_PK));
Parametros.Add(C_Detalle_IX1);
if (C_Valor = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Valor));
Parametros.Add(C_Observaciones);


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_TiposCaracterModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

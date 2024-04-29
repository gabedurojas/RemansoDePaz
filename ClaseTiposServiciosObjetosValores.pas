unit ClaseTiposServiciosObjetosValores;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TTiposServiciosObjetosValores= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FIDServicioObjetoValor:variant;
    FIDServicioObjeto:variant;
    FFecha:string;
    FValor:variant;
    FPorcentaje:boolean;
    FActivo:boolean;
    FFecha_A:string;
    FUsu_A:variant;
    FFecha_M:string;
    FUsu_M:variant;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetIDServicioObjetoValor(Value:variant);
    procedure SetIDServicioObjeto(Value:variant);
    procedure SetFecha(Value:string);
    procedure SetValor(Value:variant);
    procedure SetPorcentaje(Value:boolean);
    procedure SetActivo(Value:boolean);
    procedure SetFecha_A(Value:string);
    procedure SetUsu_A(Value:variant);
    procedure SetFecha_M(Value:string);
    procedure SetUsu_M(Value:variant);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_IDServicioObjetoValor_PK:variant read FIDServicioObjetoValor write SetIDServicioObjetoValor;
    property C_IDServicioObjeto:variant read FIDServicioObjeto write SetIDServicioObjeto;
    property C_Fecha:string read FFecha write SetFecha;
    property C_Valor:variant read FValor write SetValor;
    property C_Porcentaje:boolean read FPorcentaje write SetPorcentaje;
    property C_Activo:boolean read FActivo write SetActivo;
    property C_Fecha_A:string read FFecha_A write SetFecha_A;
    property C_Usu_A:variant read FUsu_A write SetUsu_A;
    property C_Fecha_M:string read FFecha_M write SetFecha_M;
    property C_Usu_M:variant read FUsu_M write SetUsu_M;

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

constructor TTiposServiciosObjetosValores.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=10;
end;

procedure TTiposServiciosObjetosValores.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TTiposServiciosObjetosValores.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TTiposServiciosObjetosValores.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TTiposServiciosObjetosValores.SetIDServicioObjetoValor(Value:variant);
begin
  FIDServicioObjetoValor:=Value;
end;

procedure TTiposServiciosObjetosValores.SetIDServicioObjeto(Value:variant);
begin
  FIDServicioObjeto:=Value;
end;

procedure TTiposServiciosObjetosValores.SetFecha(Value:string);
begin
  FFecha:=Value;
end;

procedure TTiposServiciosObjetosValores.SetValor(Value:variant);
begin
  FValor:=Value;
end;

procedure TTiposServiciosObjetosValores.SetPorcentaje(Value:boolean);
begin
  FPorcentaje:=Value;
end;

procedure TTiposServiciosObjetosValores.SetActivo(Value:boolean);
begin
  FActivo:=Value;
end;

procedure TTiposServiciosObjetosValores.SetFecha_A(Value:string);
begin
  FFecha_A:=Value;
end;

procedure TTiposServiciosObjetosValores.SetUsu_A(Value:variant);
begin
  FUsu_A:=Value;
end;

procedure TTiposServiciosObjetosValores.SetFecha_M(Value:string);
begin
  FFecha_M:=Value;
end;

procedure TTiposServiciosObjetosValores.SetUsu_M(Value:variant);
begin
  FUsu_M:=Value;
end;

Function TTiposServiciosObjetosValores.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_TiposServiciosObjetosValoresConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_IDServicioObjetoValor_PK:=DataSet.FieldByName('IDServicioObjetoValor').AsVariant;
  C_IDServicioObjeto:=DataSet.FieldByName('IDServicioObjeto').AsVariant;
  C_Fecha:=DataSet.FieldByName('Fecha').AsString;
  C_Valor:=DataSet.FieldByName('Valor').AsVariant;
  C_Porcentaje:=DataSet.FieldByName('Porcentaje').AsBoolean;
  C_Activo:=DataSet.FieldByName('Activo').AsBoolean;
  C_Fecha_A:=DataSet.FieldByName('Fecha_A').AsString;
  C_Usu_A:=DataSet.FieldByName('Usu_A').AsVariant;
  C_Fecha_M:=DataSet.FieldByName('Fecha_M').AsString;
  C_Usu_M:=DataSet.FieldByName('Usu_M').AsVariant;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TTiposServiciosObjetosValores.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_TiposServiciosObjetosValoresConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TTiposServiciosObjetosValores.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TTiposServiciosObjetosValores.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TTiposServiciosObjetosValores.Agrega():boolean;
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
if (C_IDServicioObjeto = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IDServicioObjeto));
Parametros.Add(C_Fecha);
if (C_Valor = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Valor));
if C_Porcentaje then Parametros.Add('1')
else Parametros.Add('0');
if C_Activo then Parametros.Add('1')
else Parametros.Add('0');
if (C_Usu_A = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_A));
Parametros.Add(C_Fecha_M);
if (C_Usu_M = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_M));

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_TiposServiciosObjetosValoresInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TTiposServiciosObjetosValores.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_TiposServiciosObjetosValoresEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TTiposServiciosObjetosValores.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_IDServicioObjetoValor_PK));
if (C_IDServicioObjeto = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IDServicioObjeto));
Parametros.Add(C_Fecha);
if (C_Valor = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Valor));
if C_Porcentaje then Parametros.Add('1')
else Parametros.Add('0');
if C_Activo then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_Fecha_M);
if (C_Usu_M = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_M));


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_TiposServiciosObjetosValoresModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

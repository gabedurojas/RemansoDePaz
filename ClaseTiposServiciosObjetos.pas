unit ClaseTiposServiciosObjetos;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TTiposServiciosObjetos= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FIDServicioObjeto:variant;
    FNroTipoServicio:variant;
    FObjeto:string;
    FObservaciones:string;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetIDServicioObjeto(Value:variant);
    procedure SetNroTipoServicio(Value:variant);
    procedure SetObjeto(Value:string);
    procedure SetObservaciones(Value:string);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_IDServicioObjeto_PK:variant read FIDServicioObjeto write SetIDServicioObjeto;
    property C_NroTipoServicio:variant read FNroTipoServicio write SetNroTipoServicio;
    property C_Objeto:string read FObjeto write SetObjeto;
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

constructor TTiposServiciosObjetos.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=4;
end;

procedure TTiposServiciosObjetos.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TTiposServiciosObjetos.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TTiposServiciosObjetos.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TTiposServiciosObjetos.SetIDServicioObjeto(Value:variant);
begin
  FIDServicioObjeto:=Value;
end;

procedure TTiposServiciosObjetos.SetNroTipoServicio(Value:variant);
begin
  FNroTipoServicio:=Value;
end;

procedure TTiposServiciosObjetos.SetObjeto(Value:string);
begin
  FObjeto:=Value;
end;

procedure TTiposServiciosObjetos.SetObservaciones(Value:string);
begin
  FObservaciones:=Value;
end;

Function TTiposServiciosObjetos.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_TiposServiciosObjetosConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_IDServicioObjeto_PK:=DataSet.FieldByName('IDServicioObjeto').AsVariant;
  C_NroTipoServicio:=DataSet.FieldByName('NroTipoServicio').AsVariant;
  C_Objeto:=DataSet.FieldByName('Objeto').AsString;
  C_Observaciones:=DataSet.FieldByName('Observaciones').AsString;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TTiposServiciosObjetos.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_TiposServiciosObjetosConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TTiposServiciosObjetos.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TTiposServiciosObjetos.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TTiposServiciosObjetos.Agrega():boolean;
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
if (C_NroTipoServicio = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroTipoServicio));
Parametros.Add(C_Objeto);
Parametros.Add(C_Observaciones);

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_TiposServiciosObjetosInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TTiposServiciosObjetos.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_TiposServiciosObjetosEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TTiposServiciosObjetos.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_IDServicioObjeto_PK));
if (C_NroTipoServicio = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroTipoServicio));
Parametros.Add(C_Objeto);
Parametros.Add(C_Observaciones);


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_TiposServiciosObjetosModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

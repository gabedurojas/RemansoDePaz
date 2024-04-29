unit ClaseTiposServiciosNivel;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TTiposServiciosNivel= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FIdTipoServicioNivel:variant;
    FNroTipoServicio:variant;
    FNivel:variant;
    FPrecioLista:variant;
    FPrecioContado:variant;
    FPrecioCheque:variant;
    FVigencia:string;
    FActivo:boolean;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetIdTipoServicioNivel(Value:variant);
    procedure SetNroTipoServicio(Value:variant);
    procedure SetNivel(Value:variant);
    procedure SetPrecioLista(Value:variant);
    procedure SetPrecioContado(Value:variant);
    procedure SetPrecioCheque(Value:variant);
    procedure SetVigencia(Value:string);
    procedure SetActivo(Value:boolean);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_IdTipoServicioNivel_PK:variant read FIdTipoServicioNivel write SetIdTipoServicioNivel;
    property C_NroTipoServicio:variant read FNroTipoServicio write SetNroTipoServicio;
    property C_Nivel:variant read FNivel write SetNivel;
    property C_PrecioLista:variant read FPrecioLista write SetPrecioLista;
    property C_PrecioContado:variant read FPrecioContado write SetPrecioContado;
    property C_PrecioCheque:variant read FPrecioCheque write SetPrecioCheque;
    property C_Vigencia:string read FVigencia write SetVigencia;
    property C_Activo:boolean read FActivo write SetActivo;

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

constructor TTiposServiciosNivel.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=8;
end;

procedure TTiposServiciosNivel.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TTiposServiciosNivel.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TTiposServiciosNivel.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TTiposServiciosNivel.SetIdTipoServicioNivel(Value:variant);
begin
  FIdTipoServicioNivel:=Value;
end;

procedure TTiposServiciosNivel.SetNroTipoServicio(Value:variant);
begin
  FNroTipoServicio:=Value;
end;

procedure TTiposServiciosNivel.SetNivel(Value:variant);
begin
  FNivel:=Value;
end;

procedure TTiposServiciosNivel.SetPrecioLista(Value:variant);
begin
  FPrecioLista:=Value;
end;

procedure TTiposServiciosNivel.SetPrecioContado(Value:variant);
begin
  FPrecioContado:=Value;
end;

procedure TTiposServiciosNivel.SetPrecioCheque(Value:variant);
begin
  FPrecioCheque:=Value;
end;

procedure TTiposServiciosNivel.SetVigencia(Value:string);
begin
  FVigencia:=Value;
end;

procedure TTiposServiciosNivel.SetActivo(Value:boolean);
begin
  FActivo:=Value;
end;

Function TTiposServiciosNivel.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_TiposServiciosNivelConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_IdTipoServicioNivel_PK:=DataSet.FieldByName('IdTipoServicioNivel').AsVariant;
  C_NroTipoServicio:=DataSet.FieldByName('NroTipoServicio').AsVariant;
  C_Nivel:=DataSet.FieldByName('Nivel').AsVariant;
  C_PrecioLista:=DataSet.FieldByName('PrecioLista').AsVariant;
  C_PrecioContado:=DataSet.FieldByName('PrecioContado').AsVariant;
  C_PrecioCheque:=DataSet.FieldByName('PrecioCheque').AsVariant;
  C_Vigencia:=DataSet.FieldByName('Vigencia').AsString;
  C_Activo:=DataSet.FieldByName('Activo').AsBoolean;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TTiposServiciosNivel.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_TiposServiciosNivelConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TTiposServiciosNivel.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TTiposServiciosNivel.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TTiposServiciosNivel.Agrega():boolean;
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
if (C_Nivel = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Nivel));
if (C_PrecioLista = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_PrecioLista));
if (C_PrecioContado = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_PrecioContado));
if (C_PrecioCheque = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_PrecioCheque));
Parametros.Add(C_Vigencia);
if C_Activo then Parametros.Add('1')
else Parametros.Add('0');

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_TiposServiciosNivelInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TTiposServiciosNivel.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_TiposServiciosNivelEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TTiposServiciosNivel.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_IdTipoServicioNivel_PK));
if (C_NroTipoServicio = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroTipoServicio));
if (C_Nivel = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Nivel));
if (C_PrecioLista = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_PrecioLista));
if (C_PrecioContado = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_PrecioContado));
if (C_PrecioCheque = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_PrecioCheque));
Parametros.Add(C_Vigencia);
if C_Activo then Parametros.Add('1')
else Parametros.Add('0');


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_TiposServiciosNivelModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

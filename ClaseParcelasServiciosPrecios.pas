unit ClaseParcelasServiciosPrecios;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TParcelasServiciosPrecios= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FIdServicioPrecio:variant;
    FIdTipoServicioNivel:variant;
    FNroCaracter:variant;
    FFechaVigencia:string;
    FImporte:variant;
    FUsu_A:variant;
    FFecha_A:string;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetIdServicioPrecio(Value:variant);
    procedure SetIdTipoServicioNivel(Value:variant);
    procedure SetNroCaracter(Value:variant);
    procedure SetFechaVigencia(Value:string);
    procedure SetImporte(Value:variant);
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

    property C_IdServicioPrecio_PK:variant read FIdServicioPrecio write SetIdServicioPrecio;
    property C_IdTipoServicioNivel:variant read FIdTipoServicioNivel write SetIdTipoServicioNivel;
    property C_NroCaracter:variant read FNroCaracter write SetNroCaracter;
    property C_FechaVigencia:string read FFechaVigencia write SetFechaVigencia;
    property C_Importe:variant read FImporte write SetImporte;
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

constructor TParcelasServiciosPrecios.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=7;
end;

procedure TParcelasServiciosPrecios.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TParcelasServiciosPrecios.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TParcelasServiciosPrecios.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TParcelasServiciosPrecios.SetIdServicioPrecio(Value:variant);
begin
  FIdServicioPrecio:=Value;
end;

procedure TParcelasServiciosPrecios.SetIdTipoServicioNivel(Value:variant);
begin
  FIdTipoServicioNivel:=Value;
end;

procedure TParcelasServiciosPrecios.SetNroCaracter(Value:variant);
begin
  FNroCaracter:=Value;
end;

procedure TParcelasServiciosPrecios.SetFechaVigencia(Value:string);
begin
  FFechaVigencia:=Value;
end;

procedure TParcelasServiciosPrecios.SetImporte(Value:variant);
begin
  FImporte:=Value;
end;

procedure TParcelasServiciosPrecios.SetUsu_A(Value:variant);
begin
  FUsu_A:=Value;
end;

procedure TParcelasServiciosPrecios.SetFecha_A(Value:string);
begin
  FFecha_A:=Value;
end;

Function TParcelasServiciosPrecios.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_ParcelasServiciosPreciosConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_IdServicioPrecio_PK:=DataSet.FieldByName('IdServicioPrecio').AsVariant;
  C_IdTipoServicioNivel:=DataSet.FieldByName('IdTipoServicioNivel').AsVariant;
  C_NroCaracter:=DataSet.FieldByName('NroCaracter').AsVariant;
  C_FechaVigencia:=DataSet.FieldByName('FechaVigencia').AsString;
  C_Importe:=DataSet.FieldByName('Importe').AsVariant;
  C_Usu_A:=DataSet.FieldByName('Usu_A').AsVariant;
  C_Fecha_A:=DataSet.FieldByName('Fecha_A').AsString;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TParcelasServiciosPrecios.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasServiciosPreciosConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasServiciosPrecios.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasServiciosPrecios.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasServiciosPrecios.Agrega():boolean;
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
if (C_IdTipoServicioNivel = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdTipoServicioNivel));
if (C_NroCaracter = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroCaracter));
Parametros.Add(C_FechaVigencia);
if (C_Importe = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Importe));
if (C_Usu_A = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_A));

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasServiciosPreciosInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TParcelasServiciosPrecios.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasServiciosPreciosEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TParcelasServiciosPrecios.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_IdServicioPrecio_PK));
if (C_IdTipoServicioNivel = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdTipoServicioNivel));
if (C_NroCaracter = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroCaracter));
Parametros.Add(C_FechaVigencia);
if (C_Importe = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Importe));


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasServiciosPreciosModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

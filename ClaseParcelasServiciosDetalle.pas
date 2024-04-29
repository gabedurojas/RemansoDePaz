unit ClaseParcelasServiciosDetalle;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TParcelasServiciosDetalle= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FIdServicioDetalle:variant;
    FIdServicio:variant;
    FIDServicioObjeto:variant;
    FImporte:variant;
    FFecha_A:string;
    FUsu_A:variant;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetIdServicioDetalle(Value:variant);
    procedure SetIdServicio(Value:variant);
    procedure SetIDServicioObjeto(Value:variant);
    procedure SetImporte(Value:variant);
    procedure SetFecha_A(Value:string);
    procedure SetUsu_A(Value:variant);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_IdServicioDetalle_PK:variant read FIdServicioDetalle write SetIdServicioDetalle;
    property C_IdServicio:variant read FIdServicio write SetIdServicio;
    property C_IDServicioObjeto:variant read FIDServicioObjeto write SetIDServicioObjeto;
    property C_Importe:variant read FImporte write SetImporte;
    property C_Fecha_A:string read FFecha_A write SetFecha_A;
    property C_Usu_A:variant read FUsu_A write SetUsu_A;

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

constructor TParcelasServiciosDetalle.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=6;
end;

procedure TParcelasServiciosDetalle.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TParcelasServiciosDetalle.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TParcelasServiciosDetalle.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TParcelasServiciosDetalle.SetIdServicioDetalle(Value:variant);
begin
  FIdServicioDetalle:=Value;
end;

procedure TParcelasServiciosDetalle.SetIdServicio(Value:variant);
begin
  FIdServicio:=Value;
end;

procedure TParcelasServiciosDetalle.SetIDServicioObjeto(Value:variant);
begin
  FIDServicioObjeto:=Value;
end;

procedure TParcelasServiciosDetalle.SetImporte(Value:variant);
begin
  FImporte:=Value;
end;

procedure TParcelasServiciosDetalle.SetFecha_A(Value:string);
begin
  FFecha_A:=Value;
end;

procedure TParcelasServiciosDetalle.SetUsu_A(Value:variant);
begin
  FUsu_A:=Value;
end;

Function TParcelasServiciosDetalle.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_ParcelasServiciosDetalleConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_IdServicioDetalle_PK:=DataSet.FieldByName('IdServicioDetalle').AsVariant;
  C_IdServicio:=DataSet.FieldByName('IdServicio').AsVariant;
  C_IDServicioObjeto:=DataSet.FieldByName('IDServicioObjeto').AsVariant;
  C_Importe:=DataSet.FieldByName('Importe').AsVariant;
  C_Fecha_A:=DataSet.FieldByName('Fecha_A').AsString;
  C_Usu_A:=DataSet.FieldByName('Usu_A').AsVariant;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TParcelasServiciosDetalle.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasServiciosDetalleConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasServiciosDetalle.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasServiciosDetalle.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasServiciosDetalle.Agrega():boolean;
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
if (C_IdServicio = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdServicio));
if (C_IDServicioObjeto = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IDServicioObjeto));
if (C_Importe = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Importe));
if (C_Usu_A = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_A));

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasServiciosDetalleInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TParcelasServiciosDetalle.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasServiciosDetalleEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TParcelasServiciosDetalle.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_IdServicioDetalle_PK));
if (C_IdServicio = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdServicio));
if (C_IDServicioObjeto = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IDServicioObjeto));
if (C_Importe = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Importe));


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasServiciosDetalleModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

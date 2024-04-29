unit ClaseParcelasMantenimiento;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TParcelasMantenimiento= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FId:variant;
    FNroAccion:variant;
    FCuentaCliente:variant;
    FFechaVigencia:string;
    FDiaVencimiento:variant;
    FActivo:boolean;
    FObservaciones:string;
    FFecha_A:string;
    FUsu_A:variant;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetId(Value:variant);
    procedure SetNroAccion(Value:variant);
    procedure SetCuentaCliente(Value:variant);
    procedure SetFechaVigencia(Value:string);
    procedure SetDiaVencimiento(Value:variant);
    procedure SetActivo(Value:boolean);
    procedure SetObservaciones(Value:string);
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

    property C_Id_PK:variant read FId write SetId;
    property C_NroAccion_IX1:variant read FNroAccion write SetNroAccion;
    property C_CuentaCliente_IX2:variant read FCuentaCliente write SetCuentaCliente;
    property C_FechaVigencia_IX3:string read FFechaVigencia write SetFechaVigencia;
    property C_DiaVencimiento:variant read FDiaVencimiento write SetDiaVencimiento;
    property C_Activo:boolean read FActivo write SetActivo;
    property C_Observaciones:string read FObservaciones write SetObservaciones;
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

constructor TParcelasMantenimiento.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=9;
end;

procedure TParcelasMantenimiento.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TParcelasMantenimiento.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TParcelasMantenimiento.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TParcelasMantenimiento.SetId(Value:variant);
begin
  FId:=Value;
end;

procedure TParcelasMantenimiento.SetNroAccion(Value:variant);
begin
  FNroAccion:=Value;
end;

procedure TParcelasMantenimiento.SetCuentaCliente(Value:variant);
begin
  FCuentaCliente:=Value;
end;

procedure TParcelasMantenimiento.SetFechaVigencia(Value:string);
begin
  FFechaVigencia:=Value;
end;

procedure TParcelasMantenimiento.SetDiaVencimiento(Value:variant);
begin
  FDiaVencimiento:=Value;
end;

procedure TParcelasMantenimiento.SetActivo(Value:boolean);
begin
  FActivo:=Value;
end;

procedure TParcelasMantenimiento.SetObservaciones(Value:string);
begin
  FObservaciones:=Value;
end;

procedure TParcelasMantenimiento.SetFecha_A(Value:string);
begin
  FFecha_A:=Value;
end;

procedure TParcelasMantenimiento.SetUsu_A(Value:variant);
begin
  FUsu_A:=Value;
end;

Function TParcelasMantenimiento.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_ParcelasMantenimientoConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_Id_PK:=DataSet.FieldByName('Id').AsVariant;
  C_NroAccion_IX1:=DataSet.FieldByName('NroAccion').AsVariant;
  C_CuentaCliente_IX2:=DataSet.FieldByName('CuentaCliente').AsVariant;
  C_FechaVigencia_IX3:=DataSet.FieldByName('FechaVigencia').AsString;
  C_DiaVencimiento:=DataSet.FieldByName('DiaVencimiento').AsVariant;
  C_Activo:=DataSet.FieldByName('Activo').AsBoolean;
  C_Observaciones:=DataSet.FieldByName('Observaciones').AsString;
  C_Fecha_A:=DataSet.FieldByName('Fecha_A').AsString;
  C_Usu_A:=DataSet.FieldByName('Usu_A').AsVariant;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TParcelasMantenimiento.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasMantenimientoConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasMantenimiento.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasMantenimiento.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasMantenimiento.Agrega():boolean;
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
if (C_NroAccion_IX1 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroAccion_IX1));
if (C_CuentaCliente_IX2 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuentaCliente_IX2));
Parametros.Add(C_FechaVigencia_IX3);
if (C_DiaVencimiento = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_DiaVencimiento));
if C_Activo then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_Observaciones);
if (C_Usu_A = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_A));

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasMantenimientoInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TParcelasMantenimiento.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasMantenimientoEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TParcelasMantenimiento.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_Id_PK));
if (C_NroAccion_IX1 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroAccion_IX1));
if (C_CuentaCliente_IX2 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuentaCliente_IX2));
Parametros.Add(C_FechaVigencia_IX3);
if (C_DiaVencimiento = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_DiaVencimiento));
if C_Activo then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_Observaciones);


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasMantenimientoModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

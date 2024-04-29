unit ClaseComprobantesEntrega;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TComprobantesEntrega= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FIdComprobante:variant;
    FCuifCobrador:variant;
    FFecha:string;
    FObservaciones:string;
    FPorComprobante:boolean;
    FUsu_A:variant;
    FFecha_A:string;
    FUsu_M:variant;
    FFecha_M:string;
    FConfirmado:boolean;
    FUsuConfirma:variant;
    FFechaConfirma:string;
    FResponsable:string;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetIdComprobante(Value:variant);
    procedure SetCuifCobrador(Value:variant);
    procedure SetFecha(Value:string);
    procedure SetObservaciones(Value:string);
    procedure SetPorComprobante(Value:boolean);
    procedure SetUsu_A(Value:variant);
    procedure SetFecha_A(Value:string);
    procedure SetUsu_M(Value:variant);
    procedure SetFecha_M(Value:string);
    procedure SetConfirmado(Value:boolean);
    procedure SetUsuConfirma(Value:variant);
    procedure SetFechaConfirma(Value:string);
    procedure SetResponsable(Value:string);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_IdComprobante_PK:variant read FIdComprobante write SetIdComprobante;
    property C_CuifCobrador_IX1:variant read FCuifCobrador write SetCuifCobrador;
    property C_Fecha_IX2:string read FFecha write SetFecha;
    property C_Observaciones:string read FObservaciones write SetObservaciones;
    property C_PorComprobante:boolean read FPorComprobante write SetPorComprobante;
    property C_Usu_A:variant read FUsu_A write SetUsu_A;
    property C_Fecha_A:string read FFecha_A write SetFecha_A;
    property C_Usu_M:variant read FUsu_M write SetUsu_M;
    property C_Fecha_M:string read FFecha_M write SetFecha_M;
    property C_Confirmado:boolean read FConfirmado write SetConfirmado;
    property C_UsuConfirma:variant read FUsuConfirma write SetUsuConfirma;
    property C_FechaConfirma:string read FFechaConfirma write SetFechaConfirma;
    property C_Responsable:string read FResponsable write SetResponsable;

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

constructor TComprobantesEntrega.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=13;
end;

procedure TComprobantesEntrega.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TComprobantesEntrega.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TComprobantesEntrega.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TComprobantesEntrega.SetIdComprobante(Value:variant);
begin
  FIdComprobante:=Value;
end;

procedure TComprobantesEntrega.SetCuifCobrador(Value:variant);
begin
  FCuifCobrador:=Value;
end;

procedure TComprobantesEntrega.SetFecha(Value:string);
begin
  FFecha:=Value;
end;

procedure TComprobantesEntrega.SetObservaciones(Value:string);
begin
  FObservaciones:=Value;
end;

procedure TComprobantesEntrega.SetPorComprobante(Value:boolean);
begin
  FPorComprobante:=Value;
end;

procedure TComprobantesEntrega.SetUsu_A(Value:variant);
begin
  FUsu_A:=Value;
end;

procedure TComprobantesEntrega.SetFecha_A(Value:string);
begin
  FFecha_A:=Value;
end;

procedure TComprobantesEntrega.SetUsu_M(Value:variant);
begin
  FUsu_M:=Value;
end;

procedure TComprobantesEntrega.SetFecha_M(Value:string);
begin
  FFecha_M:=Value;
end;

procedure TComprobantesEntrega.SetConfirmado(Value:boolean);
begin
  FConfirmado:=Value;
end;

procedure TComprobantesEntrega.SetUsuConfirma(Value:variant);
begin
  FUsuConfirma:=Value;
end;

procedure TComprobantesEntrega.SetFechaConfirma(Value:string);
begin
  FFechaConfirma:=Value;
end;

procedure TComprobantesEntrega.SetResponsable(Value:string);
begin
  FResponsable:=Value;
end;

Function TComprobantesEntrega.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_ComprobantesEntregaConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_IdComprobante_PK:=DataSet.FieldByName('IdComprobante').AsVariant;
  C_CuifCobrador_IX1:=StrToInt64(DataSet.FieldByName('CuifCobrador').AsString);
  C_Fecha_IX2:=DataSet.FieldByName('Fecha').AsString;
  C_Observaciones:=DataSet.FieldByName('Observaciones').AsString;
  C_PorComprobante:=DataSet.FieldByName('PorComprobante').AsBoolean;
  C_Usu_A:=DataSet.FieldByName('Usu_A').AsVariant;
  C_Fecha_A:=DataSet.FieldByName('Fecha_A').AsString;
  C_Usu_M:=DataSet.FieldByName('Usu_M').AsVariant;
  C_Fecha_M:=DataSet.FieldByName('Fecha_M').AsString;
  C_Confirmado:=DataSet.FieldByName('Confirmado').AsBoolean;
  C_UsuConfirma:=DataSet.FieldByName('UsuConfirma').AsVariant;
  C_FechaConfirma:=DataSet.FieldByName('FechaConfirma').AsString;
  C_Responsable:=DataSet.FieldByName('Responsable').AsString;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TComprobantesEntrega.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ComprobantesEntregaConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TComprobantesEntrega.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TComprobantesEntrega.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TComprobantesEntrega.Agrega():boolean;
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
if (C_CuifCobrador_IX1 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuifCobrador_IX1));
Parametros.Add(C_Fecha_IX2);
Parametros.Add(C_Observaciones);
if C_PorComprobante then Parametros.Add('1')
else Parametros.Add('0');
if (C_Usu_A = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_A));
if (C_Usu_M = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_M));
Parametros.Add(C_Fecha_M);
if C_Confirmado then Parametros.Add('1')
else Parametros.Add('0');
if (C_UsuConfirma = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_UsuConfirma));
Parametros.Add(C_FechaConfirma);
Parametros.Add(C_Responsable);

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ComprobantesEntregaInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TComprobantesEntrega.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_ComprobantesEntregaEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TComprobantesEntrega.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_IdComprobante_PK));
if (C_CuifCobrador_IX1 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuifCobrador_IX1));
Parametros.Add(C_Fecha_IX2);
Parametros.Add(C_Observaciones);
if C_PorComprobante then Parametros.Add('1')
else Parametros.Add('0');
if (C_Usu_M = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_M));
Parametros.Add(C_Fecha_M);
if C_Confirmado then Parametros.Add('1')
else Parametros.Add('0');
if (C_UsuConfirma = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_UsuConfirma));
Parametros.Add(C_FechaConfirma);
Parametros.Add(C_Responsable);


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_ComprobantesEntregaModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

unit ClaseParcelasCuentasCorrientes;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TParcelasCuentasCorrientes= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FIdRegistro:variant;
    FIdObjeto:variant;
    FIdentificador:variant;
    FIdServicio:variant;
    FFechaCarga:string;
    FIdTipoComprobante:variant;
    FNroComprobante:string;
    FMonto:variant;
    FMotivo:string;
    FCobrado:boolean;
    FFechaCobro:string;
    FMotivoCobro:string;
    FUsuAnula:variant;
    FConfirmado:boolean;
    FUsuConfirma:variant;
    FFechaConfirma:string;
    FUsu_A:variant;
    FFecha_A:string;
    FUsu_M:variant;
    FFecha_M:string;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetIdRegistro(Value:variant);
    procedure SetIdObjeto(Value:variant);
    procedure SetIdentificador(Value:variant);
    procedure SetIdServicio(Value:variant);
    procedure SetFechaCarga(Value:string);
    procedure SetIdTipoComprobante(Value:variant);
    procedure SetNroComprobante(Value:string);
    procedure SetMonto(Value:variant);
    procedure SetMotivo(Value:string);
    procedure SetCobrado(Value:boolean);
    procedure SetFechaCobro(Value:string);
    procedure SetMotivoCobro(Value:string);
    procedure SetUsuAnula(Value:variant);
    procedure SetConfirmado(Value:boolean);
    procedure SetUsuConfirma(Value:variant);
    procedure SetFechaConfirma(Value:string);
    procedure SetUsu_A(Value:variant);
    procedure SetFecha_A(Value:string);
    procedure SetUsu_M(Value:variant);
    procedure SetFecha_M(Value:string);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_IdRegistro_PK:variant read FIdRegistro write SetIdRegistro;
    property C_IdObjeto:variant read FIdObjeto write SetIdObjeto;
    property C_Identificador:variant read FIdentificador write SetIdentificador;
    property C_IdServicio:variant read FIdServicio write SetIdServicio;
    property C_FechaCarga:string read FFechaCarga write SetFechaCarga;
    property C_IdTipoComprobante:variant read FIdTipoComprobante write SetIdTipoComprobante;
    property C_NroComprobante:string read FNroComprobante write SetNroComprobante;
    property C_Monto:variant read FMonto write SetMonto;
    property C_Motivo:string read FMotivo write SetMotivo;
    property C_Cobrado:boolean read FCobrado write SetCobrado;
    property C_FechaCobro:string read FFechaCobro write SetFechaCobro;
    property C_MotivoCobro:string read FMotivoCobro write SetMotivoCobro;
    property C_UsuAnula:variant read FUsuAnula write SetUsuAnula;
    property C_Confirmado:boolean read FConfirmado write SetConfirmado;
    property C_UsuConfirma:variant read FUsuConfirma write SetUsuConfirma;
    property C_FechaConfirma:string read FFechaConfirma write SetFechaConfirma;
    property C_Usu_A:variant read FUsu_A write SetUsu_A;
    property C_Fecha_A:string read FFecha_A write SetFecha_A;
    property C_Usu_M:variant read FUsu_M write SetUsu_M;
    property C_Fecha_M:string read FFecha_M write SetFecha_M;

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

constructor TParcelasCuentasCorrientes.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=20;
end;

procedure TParcelasCuentasCorrientes.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TParcelasCuentasCorrientes.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TParcelasCuentasCorrientes.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TParcelasCuentasCorrientes.SetIdRegistro(Value:variant);
begin
  FIdRegistro:=Value;
end;

procedure TParcelasCuentasCorrientes.SetIdObjeto(Value:variant);
begin
  FIdObjeto:=Value;
end;

procedure TParcelasCuentasCorrientes.SetIdentificador(Value:variant);
begin
  FIdentificador:=Value;
end;

procedure TParcelasCuentasCorrientes.SetIdServicio(Value:variant);
begin
  FIdServicio:=Value;
end;

procedure TParcelasCuentasCorrientes.SetFechaCarga(Value:string);
begin
  FFechaCarga:=Value;
end;

procedure TParcelasCuentasCorrientes.SetIdTipoComprobante(Value:variant);
begin
  FIdTipoComprobante:=Value;
end;

procedure TParcelasCuentasCorrientes.SetNroComprobante(Value:string);
begin
  FNroComprobante:=Value;
end;

procedure TParcelasCuentasCorrientes.SetMonto(Value:variant);
begin
  FMonto:=Value;
end;

procedure TParcelasCuentasCorrientes.SetMotivo(Value:string);
begin
  FMotivo:=Value;
end;

procedure TParcelasCuentasCorrientes.SetCobrado(Value:boolean);
begin
  FCobrado:=Value;
end;

procedure TParcelasCuentasCorrientes.SetFechaCobro(Value:string);
begin
  FFechaCobro:=Value;
end;

procedure TParcelasCuentasCorrientes.SetMotivoCobro(Value:string);
begin
  FMotivoCobro:=Value;
end;

procedure TParcelasCuentasCorrientes.SetUsuAnula(Value:variant);
begin
  FUsuAnula:=Value;
end;

procedure TParcelasCuentasCorrientes.SetConfirmado(Value:boolean);
begin
  FConfirmado:=Value;
end;

procedure TParcelasCuentasCorrientes.SetUsuConfirma(Value:variant);
begin
  FUsuConfirma:=Value;
end;

procedure TParcelasCuentasCorrientes.SetFechaConfirma(Value:string);
begin
  FFechaConfirma:=Value;
end;

procedure TParcelasCuentasCorrientes.SetUsu_A(Value:variant);
begin
  FUsu_A:=Value;
end;

procedure TParcelasCuentasCorrientes.SetFecha_A(Value:string);
begin
  FFecha_A:=Value;
end;

procedure TParcelasCuentasCorrientes.SetUsu_M(Value:variant);
begin
  FUsu_M:=Value;
end;

procedure TParcelasCuentasCorrientes.SetFecha_M(Value:string);
begin
  FFecha_M:=Value;
end;

Function TParcelasCuentasCorrientes.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_ParcelasCuentasCorrientesConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_IdRegistro_PK:=DataSet.FieldByName('IdRegistro').AsVariant;
  C_IdObjeto:=DataSet.FieldByName('IdObjeto').AsVariant;
  C_Identificador:=DataSet.FieldByName('Identificador').AsVariant;
  C_IdServicio:=DataSet.FieldByName('IdServicio').AsVariant;
  C_FechaCarga:=DataSet.FieldByName('FechaCarga').AsString;
  C_IdTipoComprobante:=DataSet.FieldByName('IdTipoComprobante').AsVariant;
  C_NroComprobante:=DataSet.FieldByName('NroComprobante').AsString;
  C_Monto:=DataSet.FieldByName('Monto').AsVariant;
  C_Motivo:=DataSet.FieldByName('Motivo').AsString;
  C_Cobrado:=DataSet.FieldByName('Cobrado').AsBoolean;
  C_FechaCobro:=DataSet.FieldByName('FechaCobro').AsString;
  C_MotivoCobro:=DataSet.FieldByName('MotivoCobro').AsString;
  C_UsuAnula:=DataSet.FieldByName('UsuAnula').AsVariant;
  C_Confirmado:=DataSet.FieldByName('Confirmado').AsBoolean;
  C_UsuConfirma:=DataSet.FieldByName('UsuConfirma').AsVariant;
  C_FechaConfirma:=DataSet.FieldByName('FechaConfirma').AsString;
  C_Usu_A:=DataSet.FieldByName('Usu_A').AsVariant;
  C_Fecha_A:=DataSet.FieldByName('Fecha_A').AsString;
  C_Usu_M:=DataSet.FieldByName('Usu_M').AsVariant;
  C_Fecha_M:=DataSet.FieldByName('Fecha_M').AsString;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TParcelasCuentasCorrientes.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasCuentasCorrientesConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasCuentasCorrientes.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasCuentasCorrientes.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasCuentasCorrientes.Agrega():boolean;
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
if (C_IdObjeto = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdObjeto));
if (C_Identificador = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Identificador));
if (C_IdServicio = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdServicio));
Parametros.Add(C_FechaCarga);
if (C_IdTipoComprobante = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdTipoComprobante));
Parametros.Add(C_NroComprobante);
if (C_Monto = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Monto));
Parametros.Add(C_Motivo);
if C_Cobrado then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_FechaCobro);
Parametros.Add(C_MotivoCobro);
if (C_UsuAnula = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_UsuAnula));
if C_Confirmado then Parametros.Add('1')
else Parametros.Add('0');
if (C_UsuConfirma = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_UsuConfirma));
Parametros.Add(C_FechaConfirma);
if (C_Usu_A = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_A));
if (C_Usu_M = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_M));
Parametros.Add(C_Fecha_M);

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasCuentasCorrientesInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TParcelasCuentasCorrientes.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasCuentasCorrientesEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TParcelasCuentasCorrientes.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_IdRegistro_PK));
if (C_IdObjeto = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdObjeto));
if (C_Identificador = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Identificador));
if (C_IdServicio = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdServicio));
Parametros.Add(C_FechaCarga);
if (C_IdTipoComprobante = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdTipoComprobante));
Parametros.Add(C_NroComprobante);
if (C_Monto = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Monto));
Parametros.Add(C_Motivo);
if C_Cobrado then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_FechaCobro);
Parametros.Add(C_MotivoCobro);
if (C_UsuAnula = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_UsuAnula));
if C_Confirmado then Parametros.Add('1')
else Parametros.Add('0');
if (C_UsuConfirma = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_UsuConfirma));
Parametros.Add(C_FechaConfirma);
if (C_Usu_M = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_M));
Parametros.Add(C_Fecha_M);


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasCuentasCorrientesModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

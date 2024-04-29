unit ClaseAcreditaciones;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TAcreditaciones= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FIdRegistro:variant;
    FIdObjeto:variant;
    FCuentaCliente:variant;
    FNroObjeto:variant;
    FFechaCarga:string;
    FDesde:variant;
    FHasta:variant;
    FNroRecibo:variant;
    FMontoAcreditado:variant;
    FMotivo:string;
    FAnulado:boolean;
    FFechaAnula:string;
    FMotivoAnula:string;
    FUsuAnula:variant;
    FConfirmado:boolean;
    FUsuConfirma:variant;
    FFechaConfirma:string;
    FUsu_A:variant;
    FFecha_A:string;
    FUsu_M:variant;
    FFecha_M:string;
    FNoProcesar:boolean;
    FEnMovimientos:boolean;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetIdRegistro(Value:variant);
    procedure SetIdObjeto(Value:variant);
    procedure SetCuentaCliente(Value:variant);
    procedure SetNroObjeto(Value:variant);
    procedure SetFechaCarga(Value:string);
    procedure SetDesde(Value:variant);
    procedure SetHasta(Value:variant);
    procedure SetNroRecibo(Value:variant);
    procedure SetMontoAcreditado(Value:variant);
    procedure SetMotivo(Value:string);
    procedure SetAnulado(Value:boolean);
    procedure SetFechaAnula(Value:string);
    procedure SetMotivoAnula(Value:string);
    procedure SetUsuAnula(Value:variant);
    procedure SetConfirmado(Value:boolean);
    procedure SetUsuConfirma(Value:variant);
    procedure SetFechaConfirma(Value:string);
    procedure SetUsu_A(Value:variant);
    procedure SetFecha_A(Value:string);
    procedure SetUsu_M(Value:variant);
    procedure SetFecha_M(Value:string);
    procedure SetNoProcesar(Value:boolean);
    procedure SetEnMovimientos(Value:boolean);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_IdRegistro_PK:variant read FIdRegistro write SetIdRegistro;
    property C_IdObjeto_IX1:variant read FIdObjeto write SetIdObjeto;
    property C_CuentaCliente:variant read FCuentaCliente write SetCuentaCliente;
    property C_NroObjeto_IX2:variant read FNroObjeto write SetNroObjeto;
    property C_FechaCarga_IX3:string read FFechaCarga write SetFechaCarga;
    property C_Desde:variant read FDesde write SetDesde;
    property C_Hasta:variant read FHasta write SetHasta;
    property C_NroRecibo:variant read FNroRecibo write SetNroRecibo;
    property C_MontoAcreditado:variant read FMontoAcreditado write SetMontoAcreditado;
    property C_Motivo:string read FMotivo write SetMotivo;
    property C_Anulado:boolean read FAnulado write SetAnulado;
    property C_FechaAnula:string read FFechaAnula write SetFechaAnula;
    property C_MotivoAnula:string read FMotivoAnula write SetMotivoAnula;
    property C_UsuAnula:variant read FUsuAnula write SetUsuAnula;
    property C_Confirmado:boolean read FConfirmado write SetConfirmado;
    property C_UsuConfirma:variant read FUsuConfirma write SetUsuConfirma;
    property C_FechaConfirma:string read FFechaConfirma write SetFechaConfirma;
    property C_Usu_A:variant read FUsu_A write SetUsu_A;
    property C_Fecha_A:string read FFecha_A write SetFecha_A;
    property C_Usu_M:variant read FUsu_M write SetUsu_M;
    property C_Fecha_M:string read FFecha_M write SetFecha_M;
    property C_NoProcesar:boolean read FNoProcesar write SetNoProcesar;
    property C_EnMovimientos:boolean read FEnMovimientos write SetEnMovimientos;

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

constructor TAcreditaciones.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=23;
end;

procedure TAcreditaciones.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TAcreditaciones.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TAcreditaciones.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TAcreditaciones.SetIdRegistro(Value:variant);
begin
  FIdRegistro:=Value;
end;

procedure TAcreditaciones.SetIdObjeto(Value:variant);
begin
  FIdObjeto:=Value;
end;

procedure TAcreditaciones.SetCuentaCliente(Value:variant);
begin
  FCuentaCliente:=Value;
end;

procedure TAcreditaciones.SetNroObjeto(Value:variant);
begin
  FNroObjeto:=Value;
end;

procedure TAcreditaciones.SetFechaCarga(Value:string);
begin
  FFechaCarga:=Value;
end;

procedure TAcreditaciones.SetDesde(Value:variant);
begin
  FDesde:=Value;
end;

procedure TAcreditaciones.SetHasta(Value:variant);
begin
  FHasta:=Value;
end;

procedure TAcreditaciones.SetNroRecibo(Value:variant);
begin
  FNroRecibo:=Value;
end;

procedure TAcreditaciones.SetMontoAcreditado(Value:variant);
begin
  FMontoAcreditado:=Value;
end;

procedure TAcreditaciones.SetMotivo(Value:string);
begin
  FMotivo:=Value;
end;

procedure TAcreditaciones.SetAnulado(Value:boolean);
begin
  FAnulado:=Value;
end;

procedure TAcreditaciones.SetFechaAnula(Value:string);
begin
  FFechaAnula:=Value;
end;

procedure TAcreditaciones.SetMotivoAnula(Value:string);
begin
  FMotivoAnula:=Value;
end;

procedure TAcreditaciones.SetUsuAnula(Value:variant);
begin
  FUsuAnula:=Value;
end;

procedure TAcreditaciones.SetConfirmado(Value:boolean);
begin
  FConfirmado:=Value;
end;

procedure TAcreditaciones.SetUsuConfirma(Value:variant);
begin
  FUsuConfirma:=Value;
end;

procedure TAcreditaciones.SetFechaConfirma(Value:string);
begin
  FFechaConfirma:=Value;
end;

procedure TAcreditaciones.SetUsu_A(Value:variant);
begin
  FUsu_A:=Value;
end;

procedure TAcreditaciones.SetFecha_A(Value:string);
begin
  FFecha_A:=Value;
end;

procedure TAcreditaciones.SetUsu_M(Value:variant);
begin
  FUsu_M:=Value;
end;

procedure TAcreditaciones.SetFecha_M(Value:string);
begin
  FFecha_M:=Value;
end;

procedure TAcreditaciones.SetNoProcesar(Value:boolean);
begin
  FNoProcesar:=Value;
end;

procedure TAcreditaciones.SetEnMovimientos(Value:boolean);
begin
  FEnMovimientos:=Value;
end;

Function TAcreditaciones.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_AcreditacionesConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_IdRegistro_PK:=DataSet.FieldByName('IdRegistro').AsVariant;
  C_IdObjeto_IX1:=DataSet.FieldByName('IdObjeto').AsVariant;
  C_CuentaCliente:=DataSet.FieldByName('CuentaCliente').AsVariant;
  C_NroObjeto_IX2:=DataSet.FieldByName('NroObjeto').AsVariant;
  C_FechaCarga_IX3:=DataSet.FieldByName('FechaCarga').AsString;
  C_Desde:=DataSet.FieldByName('Desde').AsVariant;
  C_Hasta:=DataSet.FieldByName('Hasta').AsVariant;
  C_NroRecibo:=DataSet.FieldByName('NroRecibo').AsVariant;
  C_MontoAcreditado:=DataSet.FieldByName('MontoAcreditado').AsVariant;
  C_Motivo:=DataSet.FieldByName('Motivo').AsString;
  C_Anulado:=DataSet.FieldByName('Anulado').AsBoolean;
  C_FechaAnula:=DataSet.FieldByName('FechaAnula').AsString;
  C_MotivoAnula:=DataSet.FieldByName('MotivoAnula').AsString;
  C_UsuAnula:=DataSet.FieldByName('UsuAnula').AsVariant;
  C_Confirmado:=DataSet.FieldByName('Confirmado').AsBoolean;
  C_UsuConfirma:=DataSet.FieldByName('UsuConfirma').AsVariant;
  C_FechaConfirma:=DataSet.FieldByName('FechaConfirma').AsString;
  C_Usu_A:=DataSet.FieldByName('Usu_A').AsVariant;
  C_Fecha_A:=DataSet.FieldByName('Fecha_A').AsString;
  C_Usu_M:=DataSet.FieldByName('Usu_M').AsVariant;
  C_Fecha_M:=DataSet.FieldByName('Fecha_M').AsString;
  C_NoProcesar:=DataSet.FieldByName('NoProcesar').AsBoolean;
  C_EnMovimientos:=DataSet.FieldByName('EnMovimientos').AsBoolean;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TAcreditaciones.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_AcreditacionesConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TAcreditaciones.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TAcreditaciones.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TAcreditaciones.Agrega():boolean;
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
if (C_IdObjeto_IX1 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdObjeto_IX1));
if (C_CuentaCliente = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuentaCliente));
if (C_NroObjeto_IX2 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroObjeto_IX2));
Parametros.Add(C_FechaCarga_IX3);
if (C_Desde = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Desde));
if (C_Hasta = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Hasta));
if (C_NroRecibo = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroRecibo));
if (C_MontoAcreditado = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_MontoAcreditado));
Parametros.Add(C_Motivo);
if C_Anulado then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_FechaAnula);
Parametros.Add(C_MotivoAnula);
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
if C_NoProcesar then Parametros.Add('1')
else Parametros.Add('0');
if C_EnMovimientos then Parametros.Add('1')
else Parametros.Add('0');

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_AcreditacionesInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TAcreditaciones.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_AcreditacionesEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TAcreditaciones.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_IdRegistro_PK));
if (C_IdObjeto_IX1 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdObjeto_IX1));
if (C_CuentaCliente = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuentaCliente));
if (C_NroObjeto_IX2 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroObjeto_IX2));
Parametros.Add(C_FechaCarga_IX3);
if (C_Desde = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Desde));
if (C_Hasta = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Hasta));
if (C_NroRecibo = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroRecibo));
if (C_MontoAcreditado = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_MontoAcreditado));
Parametros.Add(C_Motivo);
if C_Anulado then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_FechaAnula);
Parametros.Add(C_MotivoAnula);
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
if C_NoProcesar then Parametros.Add('1')
else Parametros.Add('0');
if C_EnMovimientos then Parametros.Add('1')
else Parametros.Add('0');


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_AcreditacionesModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

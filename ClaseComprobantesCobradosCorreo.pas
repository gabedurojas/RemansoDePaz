unit ClaseComprobantesCobradosCorreo;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TComprobantesCobradosCorreo= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FNroComprobante:string;
    FIdTipoComprobante:variant;
    FFechaPlanilla:string;
    FCuifCobrador:variant;
    FNroTipoObjeto:variant;
    FFechaCobro:string;
    FImporte:variant;
    FGastoAdmin:variant;
    FPorcentaje:variant;
    FUsu_A:variant;
    FFecha_A:string;
    FUsu_M:variant;
    FFecha_M:string;
    FAnulado:boolean;
    FFechaAnula:string;
    FUsuAnula:variant;
    FMotivoAnula:string;
    FObserv:string;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetNroComprobante(Value:string);
    procedure SetIdTipoComprobante(Value:variant);
    procedure SetFechaPlanilla(Value:string);
    procedure SetCuifCobrador(Value:variant);
    procedure SetNroTipoObjeto(Value:variant);
    procedure SetFechaCobro(Value:string);
    procedure SetImporte(Value:variant);
    procedure SetGastoAdmin(Value:variant);
    procedure SetPorcentaje(Value:variant);
    procedure SetUsu_A(Value:variant);
    procedure SetFecha_A(Value:string);
    procedure SetUsu_M(Value:variant);
    procedure SetFecha_M(Value:string);
    procedure SetAnulado(Value:boolean);
    procedure SetFechaAnula(Value:string);
    procedure SetUsuAnula(Value:variant);
    procedure SetMotivoAnula(Value:string);
    procedure SetObserv(Value:string);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_NroComprobante:string read FNroComprobante write SetNroComprobante;
    property C_IdTipoComprobante:variant read FIdTipoComprobante write SetIdTipoComprobante;
    property C_FechaPlanilla:string read FFechaPlanilla write SetFechaPlanilla;
    property C_CuifCobrador:variant read FCuifCobrador write SetCuifCobrador;
    property C_NroTipoObjeto:variant read FNroTipoObjeto write SetNroTipoObjeto;
    property C_FechaCobro:string read FFechaCobro write SetFechaCobro;
    property C_Importe:variant read FImporte write SetImporte;
    property C_GastoAdmin:variant read FGastoAdmin write SetGastoAdmin;
    property C_Porcentaje:variant read FPorcentaje write SetPorcentaje;
    property C_Usu_A:variant read FUsu_A write SetUsu_A;
    property C_Fecha_A:string read FFecha_A write SetFecha_A;
    property C_Usu_M:variant read FUsu_M write SetUsu_M;
    property C_Fecha_M:string read FFecha_M write SetFecha_M;
    property C_Anulado:boolean read FAnulado write SetAnulado;
    property C_FechaAnula:string read FFechaAnula write SetFechaAnula;
    property C_UsuAnula:variant read FUsuAnula write SetUsuAnula;
    property C_MotivoAnula:string read FMotivoAnula write SetMotivoAnula;
    property C_Observ:string read FObserv write SetObserv;

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

constructor TComprobantesCobradosCorreo.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=18;
end;

procedure TComprobantesCobradosCorreo.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TComprobantesCobradosCorreo.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TComprobantesCobradosCorreo.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TComprobantesCobradosCorreo.SetNroComprobante(Value:string);
begin
  FNroComprobante:=Value;
end;

procedure TComprobantesCobradosCorreo.SetIdTipoComprobante(Value:variant);
begin
  FIdTipoComprobante:=Value;
end;

procedure TComprobantesCobradosCorreo.SetFechaPlanilla(Value:string);
begin
  FFechaPlanilla:=Value;
end;

procedure TComprobantesCobradosCorreo.SetCuifCobrador(Value:variant);
begin
  FCuifCobrador:=Value;
end;

procedure TComprobantesCobradosCorreo.SetNroTipoObjeto(Value:variant);
begin
  FNroTipoObjeto:=Value;
end;

procedure TComprobantesCobradosCorreo.SetFechaCobro(Value:string);
begin
  FFechaCobro:=Value;
end;

procedure TComprobantesCobradosCorreo.SetImporte(Value:variant);
begin
  FImporte:=Value;
end;

procedure TComprobantesCobradosCorreo.SetGastoAdmin(Value:variant);
begin
  FGastoAdmin:=Value;
end;

procedure TComprobantesCobradosCorreo.SetPorcentaje(Value:variant);
begin
  FPorcentaje:=Value;
end;

procedure TComprobantesCobradosCorreo.SetUsu_A(Value:variant);
begin
  FUsu_A:=Value;
end;

procedure TComprobantesCobradosCorreo.SetFecha_A(Value:string);
begin
  FFecha_A:=Value;
end;

procedure TComprobantesCobradosCorreo.SetUsu_M(Value:variant);
begin
  FUsu_M:=Value;
end;

procedure TComprobantesCobradosCorreo.SetFecha_M(Value:string);
begin
  FFecha_M:=Value;
end;

procedure TComprobantesCobradosCorreo.SetAnulado(Value:boolean);
begin
  FAnulado:=Value;
end;

procedure TComprobantesCobradosCorreo.SetFechaAnula(Value:string);
begin
  FFechaAnula:=Value;
end;

procedure TComprobantesCobradosCorreo.SetUsuAnula(Value:variant);
begin
  FUsuAnula:=Value;
end;

procedure TComprobantesCobradosCorreo.SetMotivoAnula(Value:string);
begin
  FMotivoAnula:=Value;
end;

procedure TComprobantesCobradosCorreo.SetObserv(Value:string);
begin
  FObserv:=Value;
end;

Function TComprobantesCobradosCorreo.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_ComprobantesCobradosCorreoConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_NroComprobante:=DataSet.FieldByName('NroComprobante').AsString;
  C_IdTipoComprobante:=DataSet.FieldByName('IdTipoComprobante').AsVariant;
  C_FechaPlanilla:=DataSet.FieldByName('FechaPlanilla').AsString;
  C_CuifCobrador:=StrToInt64(DataSet.FieldByName('CuifCobrador').AsString);
  C_NroTipoObjeto:=DataSet.FieldByName('NroTipoObjeto').AsVariant;
  C_FechaCobro:=DataSet.FieldByName('FechaCobro').AsString;
  C_Importe:=DataSet.FieldByName('Importe').AsVariant;
  C_GastoAdmin:=DataSet.FieldByName('GastoAdmin').AsVariant;
  C_Porcentaje:=DataSet.FieldByName('Porcentaje').AsVariant;
  C_Usu_A:=DataSet.FieldByName('Usu_A').AsVariant;
  C_Fecha_A:=DataSet.FieldByName('Fecha_A').AsString;
  C_Usu_M:=DataSet.FieldByName('Usu_M').AsVariant;
  C_Fecha_M:=DataSet.FieldByName('Fecha_M').AsString;
  C_Anulado:=DataSet.FieldByName('Anulado').AsBoolean;
  C_FechaAnula:=DataSet.FieldByName('FechaAnula').AsString;
  C_UsuAnula:=DataSet.FieldByName('UsuAnula').AsVariant;
  C_MotivoAnula:=DataSet.FieldByName('MotivoAnula').AsString;
  C_Observ:=DataSet.FieldByName('Observ').AsString;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TComprobantesCobradosCorreo.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ComprobantesCobradosCorreoConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TComprobantesCobradosCorreo.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TComprobantesCobradosCorreo.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TComprobantesCobradosCorreo.Agrega():boolean;
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
Parametros.Add(C_NroComprobante);
if (C_IdTipoComprobante = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdTipoComprobante));
Parametros.Add(C_FechaPlanilla);
if (C_CuifCobrador = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuifCobrador));
if (C_NroTipoObjeto = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroTipoObjeto));
Parametros.Add(C_FechaCobro);
if (C_Importe = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Importe));
if (C_GastoAdmin = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_GastoAdmin));
if (C_Porcentaje = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Porcentaje));
if (C_Usu_A = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_A));
Parametros.Add(C_Fecha_A);
if (C_Usu_M = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_M));
Parametros.Add(C_Fecha_M);
if C_Anulado then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_FechaAnula);
if (C_UsuAnula = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_UsuAnula));
Parametros.Add(C_MotivoAnula);
Parametros.Add(C_Observ);

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ComprobantesCobradosCorreoInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TComprobantesCobradosCorreo.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_ComprobantesCobradosCorreoEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TComprobantesCobradosCorreo.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(C_NroComprobante);
if (C_IdTipoComprobante = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdTipoComprobante));
Parametros.Add(C_FechaPlanilla);
if (C_CuifCobrador = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuifCobrador));
if (C_NroTipoObjeto = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroTipoObjeto));
Parametros.Add(C_FechaCobro);
if (C_Importe = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Importe));
if (C_GastoAdmin = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_GastoAdmin));
if (C_Porcentaje = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Porcentaje));
Parametros.Add(C_Fecha_A);
if (C_Usu_M = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_M));
Parametros.Add(C_Fecha_M);
if C_Anulado then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_FechaAnula);
if (C_UsuAnula = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_UsuAnula));
Parametros.Add(C_MotivoAnula);
Parametros.Add(C_Observ);


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_ComprobantesCobradosCorreoModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

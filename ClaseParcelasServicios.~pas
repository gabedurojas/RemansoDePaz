unit ClaseParcelasServicios;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TParcelasServicios= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FIdServicio:variant;
    FNroAccion:variant;
    FCuentaCliente:variant;
    FFecha:string;
    FNroCocheria:variant;
    FNroTipoServicio:variant;
    FSolicita:variant;
    FResponsable:variant;
    FInhumado:variant;
    FIDTipoServicioNivel:variant;
    FNivel:variant;
    FPosicion:variant;
    FObjeto:string;
    FTotal:variant;
    FCantCuotas:variant;
    FValorCuota:variant;
    FPrepago:boolean;
    FObservaciones:string;
    FConfirmado:boolean;
    FFechaConfirma:string;
    FUsuConfirma:variant;
    FAnulado:boolean;
    FFechaAnula:string;
    FUsuAnula:variant;
    FMotivoAnula:string;
    FFecha_A:string;
    FUsu_A:variant;
    FIdformapago:variant;
    FTipoformapago:string;
    FNroEntidad:variant;
    FNroTarjeta:variant;
    FNroCheque:variant;
    FSerie:string;
    FTitular:string;
    FNroComprobante:variant;
    FImporte:variant;
    FNroCuotas:variant;
    FFecha1:string;
    FFechaCobro:string;
    FNroRecibo:string;
    FPrecioContado:string;
    FPrecioFinanciado:string;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetIdServicio(Value:variant);
    procedure SetNroAccion(Value:variant);
    procedure SetCuentaCliente(Value:variant);
    procedure SetFecha(Value:string);
    procedure SetNroCocheria(Value:variant);
    procedure SetNroTipoServicio(Value:variant);
    procedure SetSolicita(Value:variant);
    procedure SetResponsable(Value:variant);
    procedure SetInhumado(Value:variant);
    procedure SetIDTipoServicioNivel(Value:variant);
    procedure SetNivel(Value:variant);
    procedure SetPosicion(Value:variant);
    procedure SetObjeto(Value:string);
    procedure SetTotal(Value:variant);
    procedure SetCantCuotas(Value:variant);
    procedure SetValorCuota(Value:variant);
    procedure SetPrepago(Value:boolean);
    procedure SetObservaciones(Value:string);
    procedure SetConfirmado(Value:boolean);
    procedure SetFechaConfirma(Value:string);
    procedure SetUsuConfirma(Value:variant);
    procedure SetAnulado(Value:boolean);
    procedure SetFechaAnula(Value:string);
    procedure SetUsuAnula(Value:variant);
    procedure SetMotivoAnula(Value:string);
    procedure SetFecha_A(Value:string);
    procedure SetUsu_A(Value:variant);
    procedure SetIdformapago(Value:variant);
    procedure SetTipoformapago(Value:string);
    procedure SetNroEntidad(Value:variant);
    procedure SetNroTarjeta(Value:variant);
    procedure SetNroCheque(Value:variant);
    procedure SetSerie(Value:string);
    procedure SetTitular(Value:string);
    procedure SetNroComprobante(Value:variant);
    procedure SetImporte(Value:variant);
    procedure SetNroCuotas(Value:variant);
    procedure SetFecha1(Value:string);
    procedure SetFechaCobro(Value:string);
    procedure SetNroRecibo(Value:string);
    procedure SetPrecioContado(Value:string);
    procedure SetPrecioFinanciado(Value:string);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_IdServicio_PK:variant read FIdServicio write SetIdServicio;
    property C_NroAccion_IX1:variant read FNroAccion write SetNroAccion;
    property C_CuentaCliente_IX2:variant read FCuentaCliente write SetCuentaCliente;
    property C_Fecha_IX3:string read FFecha write SetFecha;
    property C_NroCocheria_IX4:variant read FNroCocheria write SetNroCocheria;
    property C_NroTipoServicio_IX5:variant read FNroTipoServicio write SetNroTipoServicio;
    property C_Solicita:variant read FSolicita write SetSolicita;
    property C_Responsable:variant read FResponsable write SetResponsable;
    property C_Inhumado:variant read FInhumado write SetInhumado;
    property C_IDTipoServicioNivel:variant read FIDTipoServicioNivel write SetIDTipoServicioNivel;
    property C_Nivel:variant read FNivel write SetNivel;
    property C_Posicion:variant read FPosicion write SetPosicion;
    property C_Objeto:string read FObjeto write SetObjeto;
    property C_Total:variant read FTotal write SetTotal;
    property C_CantCuotas:variant read FCantCuotas write SetCantCuotas;
    property C_ValorCuota:variant read FValorCuota write SetValorCuota;
    property C_Prepago:boolean read FPrepago write SetPrepago;
    property C_Observaciones:string read FObservaciones write SetObservaciones;
    property C_Confirmado:boolean read FConfirmado write SetConfirmado;
    property C_FechaConfirma:string read FFechaConfirma write SetFechaConfirma;
    property C_UsuConfirma:variant read FUsuConfirma write SetUsuConfirma;
    property C_Anulado:boolean read FAnulado write SetAnulado;
    property C_FechaAnula:string read FFechaAnula write SetFechaAnula;
    property C_UsuAnula:variant read FUsuAnula write SetUsuAnula;
    property C_MotivoAnula:string read FMotivoAnula write SetMotivoAnula;
    property C_Fecha_A:string read FFecha_A write SetFecha_A;
    property C_Usu_A:variant read FUsu_A write SetUsu_A;
    property C_Idformapago:variant read FIdformapago write SetIdformapago;
    property C_Tipoformapago:string read FTipoformapago write SetTipoformapago;
    property C_NroEntidad:variant read FNroEntidad write SetNroEntidad;
    property C_NroTarjeta:variant read FNroTarjeta write SetNroTarjeta;
    property C_NroCheque:variant read FNroCheque write SetNroCheque;
    property C_Serie:string read FSerie write SetSerie;
    property C_Titular:string read FTitular write SetTitular;
    property C_NroComprobante:variant read FNroComprobante write SetNroComprobante;
    property C_Importe:variant read FImporte write SetImporte;
    property C_NroCuotas:variant read FNroCuotas write SetNroCuotas;
    property C_Fecha1:string read FFecha1 write SetFecha1;
    property C_FechaCobro:string read FFechaCobro write SetFechaCobro;
    property C_NroRecibo:string read FNroRecibo write SetNroRecibo;
    property C_PrecioContado:string read FPrecioContado write SetPrecioContado;
    property C_PrecioFinanciado:string read FPrecioFinanciado write SetPrecioFinanciado;

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

constructor TParcelasServicios.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=42;
end;

procedure TParcelasServicios.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TParcelasServicios.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TParcelasServicios.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TParcelasServicios.SetIdServicio(Value:variant);
begin
  FIdServicio:=Value;
end;

procedure TParcelasServicios.SetNroAccion(Value:variant);
begin
  FNroAccion:=Value;
end;

procedure TParcelasServicios.SetCuentaCliente(Value:variant);
begin
  FCuentaCliente:=Value;
end;

procedure TParcelasServicios.SetFecha(Value:string);
begin
  FFecha:=Value;
end;

procedure TParcelasServicios.SetNroCocheria(Value:variant);
begin
  FNroCocheria:=Value;
end;

procedure TParcelasServicios.SetNroTipoServicio(Value:variant);
begin
  FNroTipoServicio:=Value;
end;

procedure TParcelasServicios.SetSolicita(Value:variant);
begin
  FSolicita:=Value;
end;

procedure TParcelasServicios.SetResponsable(Value:variant);
begin
  FResponsable:=Value;
end;

procedure TParcelasServicios.SetInhumado(Value:variant);
begin
  FInhumado:=Value;
end;

procedure TParcelasServicios.SetIDTipoServicioNivel(Value:variant);
begin
  FIDTipoServicioNivel:=Value;
end;

procedure TParcelasServicios.SetNivel(Value:variant);
begin
  FNivel:=Value;
end;

procedure TParcelasServicios.SetPosicion(Value:variant);
begin
  FPosicion:=Value;
end;

procedure TParcelasServicios.SetObjeto(Value:string);
begin
  FObjeto:=Value;
end;

procedure TParcelasServicios.SetTotal(Value:variant);
begin
  FTotal:=Value;
end;

procedure TParcelasServicios.SetCantCuotas(Value:variant);
begin
  FCantCuotas:=Value;
end;

procedure TParcelasServicios.SetValorCuota(Value:variant);
begin
  FValorCuota:=Value;
end;

procedure TParcelasServicios.SetPrepago(Value:boolean);
begin
  FPrepago:=Value;
end;

procedure TParcelasServicios.SetObservaciones(Value:string);
begin
  FObservaciones:=Value;
end;

procedure TParcelasServicios.SetConfirmado(Value:boolean);
begin
  FConfirmado:=Value;
end;

procedure TParcelasServicios.SetFechaConfirma(Value:string);
begin
  FFechaConfirma:=Value;
end;

procedure TParcelasServicios.SetUsuConfirma(Value:variant);
begin
  FUsuConfirma:=Value;
end;

procedure TParcelasServicios.SetAnulado(Value:boolean);
begin
  FAnulado:=Value;
end;

procedure TParcelasServicios.SetFechaAnula(Value:string);
begin
  FFechaAnula:=Value;
end;

procedure TParcelasServicios.SetUsuAnula(Value:variant);
begin
  FUsuAnula:=Value;
end;

procedure TParcelasServicios.SetMotivoAnula(Value:string);
begin
  FMotivoAnula:=Value;
end;

procedure TParcelasServicios.SetFecha_A(Value:string);
begin
  FFecha_A:=Value;
end;

procedure TParcelasServicios.SetUsu_A(Value:variant);
begin
  FUsu_A:=Value;
end;

procedure TParcelasServicios.SetIdformapago(Value:variant);
begin
  FIdformapago:=Value;
end;

procedure TParcelasServicios.SetTipoformapago(Value:string);
begin
  FTipoformapago:=Value;
end;

procedure TParcelasServicios.SetNroEntidad(Value:variant);
begin
  FNroEntidad:=Value;
end;

procedure TParcelasServicios.SetNroTarjeta(Value:variant);
begin
  FNroTarjeta:=Value;
end;

procedure TParcelasServicios.SetNroCheque(Value:variant);
begin
  FNroCheque:=Value;
end;

procedure TParcelasServicios.SetSerie(Value:string);
begin
  FSerie:=Value;
end;

procedure TParcelasServicios.SetTitular(Value:string);
begin
  FTitular:=Value;
end;

procedure TParcelasServicios.SetNroComprobante(Value:variant);
begin
  FNroComprobante:=Value;
end;

procedure TParcelasServicios.SetImporte(Value:variant);
begin
  FImporte:=Value;
end;

procedure TParcelasServicios.SetNroCuotas(Value:variant);
begin
  FNroCuotas:=Value;
end;

procedure TParcelasServicios.SetFecha1(Value:string);
begin
  FFecha1:=Value;
end;

procedure TParcelasServicios.SetFechaCobro(Value:string);
begin
  FFechaCobro:=Value;
end;

procedure TParcelasServicios.SetNroRecibo(Value:string);
begin
  FNroRecibo:=Value;
end;

procedure TParcelasServicios.SetPrecioContado(Value:string);
begin
  FPrecioContado:=Value;
end;

procedure TParcelasServicios.SetPrecioFinanciado(Value:string);
begin
  FPrecioFinanciado:=Value;
end;

Function TParcelasServicios.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_ParcelasServiciosConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_IdServicio_PK:=DataSet.FieldByName('IdServicio').AsVariant;
  C_NroAccion_IX1:=DataSet.FieldByName('NroAccion').AsVariant;
  C_CuentaCliente_IX2:=DataSet.FieldByName('CuentaCliente').AsVariant;
  C_Fecha_IX3:=DataSet.FieldByName('Fecha').AsString;
  C_NroCocheria_IX4:=DataSet.FieldByName('NroCocheria').AsVariant;
  C_NroTipoServicio_IX5:=DataSet.FieldByName('NroTipoServicio').AsVariant;
  C_Solicita:=StrToInt64(DataSet.FieldByName('Solicita').AsString);
  C_Responsable:=StrToInt64(DataSet.FieldByName('Responsable').AsString);
  C_Inhumado:=StrToInt64(DataSet.FieldByName('Inhumado').AsString);
  C_IDTipoServicioNivel:=DataSet.FieldByName('IDTipoServicioNivel').AsVariant;
  C_Nivel:=DataSet.FieldByName('Nivel').AsVariant;
  C_Posicion:=DataSet.FieldByName('Posicion').AsVariant;
  C_Objeto:=DataSet.FieldByName('Objeto').AsString;
  C_Total:=DataSet.FieldByName('Total').AsVariant;
  C_CantCuotas:=DataSet.FieldByName('CantCuotas').AsVariant;
  C_ValorCuota:=DataSet.FieldByName('ValorCuota').AsVariant;
  C_Prepago:=DataSet.FieldByName('Prepago').AsBoolean;
  C_Observaciones:=DataSet.FieldByName('Observaciones').AsString;
  C_Confirmado:=DataSet.FieldByName('Confirmado').AsBoolean;
  C_FechaConfirma:=DataSet.FieldByName('FechaConfirma').AsString;
  C_UsuConfirma:=DataSet.FieldByName('UsuConfirma').AsVariant;
  C_Anulado:=DataSet.FieldByName('Anulado').AsBoolean;
  C_FechaAnula:=DataSet.FieldByName('FechaAnula').AsString;
  C_UsuAnula:=DataSet.FieldByName('UsuAnula').AsVariant;
  C_MotivoAnula:=DataSet.FieldByName('MotivoAnula').AsString;
  C_Fecha_A:=DataSet.FieldByName('Fecha_A').AsString;
  C_Usu_A:=DataSet.FieldByName('Usu_A').AsVariant;
  C_Idformapago:=DataSet.FieldByName('Idformapago').AsVariant;
  C_Tipoformapago:=DataSet.FieldByName('Tipoformapago').AsString;
  C_NroEntidad:=DataSet.FieldByName('NroEntidad').AsVariant;
  C_NroTarjeta:=DataSet.FieldByName('NroTarjeta').AsVariant;
  C_NroCheque:=DataSet.FieldByName('NroCheque').AsVariant;
  C_Serie:=DataSet.FieldByName('Serie').AsString;
  C_Titular:=DataSet.FieldByName('Titular').AsString;
  C_NroComprobante:=DataSet.FieldByName('NroComprobante').AsVariant;
  C_Importe:=DataSet.FieldByName('Importe').AsVariant;
  C_NroCuotas:=DataSet.FieldByName('NroCuotas').AsVariant;
  C_Fecha1:=DataSet.FieldByName('Fecha1').AsString;
  C_FechaCobro:=DataSet.FieldByName('FechaCobro').AsString;
  C_NroRecibo:=DataSet.FieldByName('NroRecibo').AsString;
  C_PrecioContado:=DataSet.FieldByName('PrecioContado').AsString;
  C_PrecioFinanciado:=DataSet.FieldByName('PrecioFinanciado').AsString;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TParcelasServicios.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasServiciosConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasServicios.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasServicios.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasServicios.Agrega():boolean;
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
Parametros.Add(C_Fecha_IX3);
if (C_NroCocheria_IX4 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroCocheria_IX4));
if (C_NroTipoServicio_IX5 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroTipoServicio_IX5));
if (C_Solicita = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Solicita));
if (C_Responsable = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Responsable));
if (C_Inhumado = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Inhumado));
if (C_IDTipoServicioNivel = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IDTipoServicioNivel));
if (C_Nivel = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Nivel));
if (C_Posicion = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Posicion));
Parametros.Add(C_Objeto);
if (C_Total = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Total));
if (C_CantCuotas = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CantCuotas));
if (C_ValorCuota = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_ValorCuota));
if C_Prepago then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_Observaciones);
if C_Confirmado then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_FechaConfirma);
if (C_UsuConfirma = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_UsuConfirma));
if C_Anulado then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_FechaAnula);
if (C_UsuAnula = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_UsuAnula));
Parametros.Add(C_MotivoAnula);
if (C_Usu_A = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_A));
if (C_Idformapago = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Idformapago));
Parametros.Add(C_Tipoformapago);
if (C_NroEntidad = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroEntidad));
if (C_NroTarjeta = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroTarjeta));
if (C_NroCheque = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroCheque));
Parametros.Add(C_Serie);
Parametros.Add(C_Titular);
if (C_NroComprobante = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroComprobante));
if (C_Importe = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Importe));
if (C_NroCuotas = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroCuotas));
Parametros.Add(C_Fecha1);
Parametros.Add(C_FechaCobro);
Parametros.Add(C_NroRecibo);
Parametros.Add(C_PrecioContado);
Parametros.Add(C_PrecioFinanciado);

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasServiciosInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TParcelasServicios.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasServiciosEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TParcelasServicios.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_IdServicio_PK));
if (C_NroAccion_IX1 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroAccion_IX1));
if (C_CuentaCliente_IX2 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuentaCliente_IX2));
Parametros.Add(C_Fecha_IX3);
if (C_NroCocheria_IX4 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroCocheria_IX4));
if (C_NroTipoServicio_IX5 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroTipoServicio_IX5));
if (C_Solicita = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Solicita));
if (C_Responsable = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Responsable));
if (C_Inhumado = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Inhumado));
if (C_IDTipoServicioNivel = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IDTipoServicioNivel));
if (C_Nivel = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Nivel));
if (C_Posicion = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Posicion));
Parametros.Add(C_Objeto);
if (C_Total = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Total));
if (C_CantCuotas = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CantCuotas));
if (C_ValorCuota = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_ValorCuota));
if C_Prepago then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_Observaciones);
if C_Confirmado then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_FechaConfirma);
if (C_UsuConfirma = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_UsuConfirma));
if C_Anulado then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_FechaAnula);
if (C_UsuAnula = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_UsuAnula));
Parametros.Add(C_MotivoAnula);
if (C_Idformapago = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Idformapago));
Parametros.Add(C_Tipoformapago);
if (C_NroEntidad = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroEntidad));
if (C_NroTarjeta = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroTarjeta));
if (C_NroCheque = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroCheque));
Parametros.Add(C_Serie);
Parametros.Add(C_Titular);
if (C_NroComprobante = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroComprobante));
if (C_Importe = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Importe));
if (C_NroCuotas = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroCuotas));
Parametros.Add(C_Fecha1);
Parametros.Add(C_FechaCobro);
Parametros.Add(C_NroRecibo);
Parametros.Add(C_PrecioContado);
Parametros.Add(C_PrecioFinanciado);


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasServiciosModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

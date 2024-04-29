unit ClaseParcelasPagos;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TParcelasPagos= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FIdRecibo:integer;
    FNroAccion:integer;
    FNroRecibo:integer;
    FPuntov:integer;
    FNroFormaPago:byte;
    FFecha:string;
    FImporte:real;
    FCodBar:string;
    FNroCredito:integer;
    FCtaCte:boolean;
    FCuotaCredito:boolean;
    FReintegro:boolean;
    FObservaciones:string;
    FConfirmado:boolean;
    FAnulado:boolean;
    FFechaAnula:string;
    FMotivoAnula:string;
    FUsuAnula:integer;
    FUsu_A:integer;
    FFecha_A:string;
    FUsu_Confirma:integer;
    FFechaConfirma:string;
    FNroComprobante:string;
    FNroTarjeta:byte;
    FCantCuotas:byte;
    FCuifCobrador:int64;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetIdRecibo(Value:integer);
    procedure SetNroAccion(Value:integer);
    procedure SetNroRecibo(Value:integer);
    procedure SetPuntov(Value:integer);
    procedure SetNroFormaPago(Value:byte);
    procedure SetFecha(Value:string);
    procedure SetImporte(Value:real);
    procedure SetCodBar(Value:string);
    procedure SetNroCredito(Value:integer);
    procedure SetCtaCte(Value:boolean);
    procedure SetCuotaCredito(Value:boolean);
    procedure SetReintegro(Value:boolean);
    procedure SetObservaciones(Value:string);
    procedure SetConfirmado(Value:boolean);
    procedure SetAnulado(Value:boolean);
    procedure SetFechaAnula(Value:string);
    procedure SetMotivoAnula(Value:string);
    procedure SetUsuAnula(Value:integer);
    procedure SetUsu_A(Value:integer);
    procedure SetFecha_A(Value:string);
    procedure SetUsu_Confirma(Value:integer);
    procedure SetFechaConfirma(Value:string);
    procedure SetNroComprobante(Value:string);
    procedure SetNroTarjeta(Value:byte);
    procedure SetCantCuotas(Value:byte);
    procedure SetCuifCobrador(Value:int64);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_IdRecibo_PK:integer read FIdRecibo write SetIdRecibo;
    property C_NroAccion_IX1:integer read FNroAccion write SetNroAccion;
    property C_NroRecibo_IX2:integer read FNroRecibo write SetNroRecibo;
    property C_Puntov:integer read FPuntov write SetPuntov;
    property C_NroFormaPago_IX3:byte read FNroFormaPago write SetNroFormaPago;
    property C_Fecha_IX4:string read FFecha write SetFecha;
    property C_Importe:real read FImporte write SetImporte;
    property C_CodBar:string read FCodBar write SetCodBar;
    property C_NroCredito_IX5:integer read FNroCredito write SetNroCredito;
    property C_CtaCte:boolean read FCtaCte write SetCtaCte;
    property C_CuotaCredito:boolean read FCuotaCredito write SetCuotaCredito;
    property C_Reintegro:boolean read FReintegro write SetReintegro;
    property C_Observaciones:string read FObservaciones write SetObservaciones;
    property C_Confirmado:boolean read FConfirmado write SetConfirmado;
    property C_Anulado:boolean read FAnulado write SetAnulado;
    property C_FechaAnula:string read FFechaAnula write SetFechaAnula;
    property C_MotivoAnula:string read FMotivoAnula write SetMotivoAnula;
    property C_UsuAnula:integer read FUsuAnula write SetUsuAnula;
    property C_Usu_A:integer read FUsu_A write SetUsu_A;
    property C_Fecha_A:string read FFecha_A write SetFecha_A;
    property C_Usu_Confirma:integer read FUsu_Confirma write SetUsu_Confirma;
    property C_FechaConfirma:string read FFechaConfirma write SetFechaConfirma;
    property C_NroComprobante_IX6:string read FNroComprobante write SetNroComprobante;
    property C_NroTarjeta_IX7:byte read FNroTarjeta write SetNroTarjeta;
    property C_CantCuotas:byte read FCantCuotas write SetCantCuotas;
    property C_CuifCobrador_IX8:int64 read FCuifCobrador write SetCuifCobrador;

  {Declaracion de Metodos}
    Function BuscarPK(ValorBuscado:String):boolean;
    Function ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; MaxRecord:integer):boolean;
    Function Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
    Function Agrega():boolean;
    Function Borrar(ValorBuscado:string):boolean;
    Function Modificar():boolean;

  Published
    { Published declarations }
  end;

  var FCapaDatos:TCapaDatos;

implementation

constructor TParcelasPagos.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=26;
end;

procedure TParcelasPagos.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TParcelasPagos.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TParcelasPagos.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TParcelasPagos.SetIdRecibo(Value:integer);
begin
  FIdRecibo:=Value;
end;

procedure TParcelasPagos.SetNroAccion(Value:integer);
begin
  FNroAccion:=Value;
end;

procedure TParcelasPagos.SetNroRecibo(Value:integer);
begin
  FNroRecibo:=Value;
end;

procedure TParcelasPagos.SetPuntov(Value:integer);
begin
  FPuntov:=Value;
end;

procedure TParcelasPagos.SetNroFormaPago(Value:byte);
begin
  FNroFormaPago:=Value;
end;

procedure TParcelasPagos.SetFecha(Value:string);
begin
  FFecha:=Value;
end;

procedure TParcelasPagos.SetImporte(Value:real);
begin
  FImporte:=Value;
end;

procedure TParcelasPagos.SetCodBar(Value:string);
begin
  FCodBar:=Value;
end;

procedure TParcelasPagos.SetNroCredito(Value:integer);
begin
  FNroCredito:=Value;
end;

procedure TParcelasPagos.SetCtaCte(Value:boolean);
begin
  FCtaCte:=Value;
end;

procedure TParcelasPagos.SetCuotaCredito(Value:boolean);
begin
  FCuotaCredito:=Value;
end;

procedure TParcelasPagos.SetReintegro(Value:boolean);
begin
  FReintegro:=Value;
end;

procedure TParcelasPagos.SetObservaciones(Value:string);
begin
  FObservaciones:=Value;
end;

procedure TParcelasPagos.SetConfirmado(Value:boolean);
begin
  FConfirmado:=Value;
end;

procedure TParcelasPagos.SetAnulado(Value:boolean);
begin
  FAnulado:=Value;
end;

procedure TParcelasPagos.SetFechaAnula(Value:string);
begin
  FFechaAnula:=Value;
end;

procedure TParcelasPagos.SetMotivoAnula(Value:string);
begin
  FMotivoAnula:=Value;
end;

procedure TParcelasPagos.SetUsuAnula(Value:integer);
begin
  FUsuAnula:=Value;
end;

procedure TParcelasPagos.SetUsu_A(Value:integer);
begin
  FUsu_A:=Value;
end;

procedure TParcelasPagos.SetFecha_A(Value:string);
begin
  FFecha_A:=Value;
end;

procedure TParcelasPagos.SetUsu_Confirma(Value:integer);
begin
  FUsu_Confirma:=Value;
end;

procedure TParcelasPagos.SetFechaConfirma(Value:string);
begin
  FFechaConfirma:=Value;
end;

procedure TParcelasPagos.SetNroComprobante(Value:string);
begin
  FNroComprobante:=Value;
end;

procedure TParcelasPagos.SetNroTarjeta(Value:byte);
begin
  FNroTarjeta:=Value;
end;

procedure TParcelasPagos.SetCantCuotas(Value:byte);
begin
  FCantCuotas:=Value;
end;

procedure TParcelasPagos.SetCuifCobrador(Value:int64);
begin
  FCuifCobrador:=Value;
end;

Function TParcelasPagos.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_ParcelasPagosConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_IdRecibo_PK:=DataSet.FieldByName('IdRecibo').AsInteger;
  C_NroAccion_IX1:=DataSet.FieldByName('NroAccion').AsInteger;
  C_NroRecibo_IX2:=DataSet.FieldByName('NroRecibo').AsInteger;
  C_Puntov:=DataSet.FieldByName('Puntov').AsInteger;
  C_NroFormaPago_IX3:=DataSet.FieldByName('NroFormaPago').AsInteger;
  C_Fecha_IX4:=DataSet.FieldByName('Fecha').AsString;
  C_Importe:=DataSet.FieldByName('Importe').AsFloat;
  C_CodBar:=DataSet.FieldByName('CodBar').AsString;
  C_NroCredito_IX5:=DataSet.FieldByName('NroCredito').AsInteger;
  C_CtaCte:=DataSet.FieldByName('CtaCte').AsBoolean;
  C_CuotaCredito:=DataSet.FieldByName('CuotaCredito').AsBoolean;
  C_Reintegro:=DataSet.FieldByName('Reintegro').AsBoolean;
  C_Observaciones:=DataSet.FieldByName('Observaciones').AsString;
  C_Confirmado:=DataSet.FieldByName('Confirmado').AsBoolean;
  C_Anulado:=DataSet.FieldByName('Anulado').AsBoolean;
  C_FechaAnula:=DataSet.FieldByName('FechaAnula').AsString;
  C_MotivoAnula:=DataSet.FieldByName('MotivoAnula').AsString;
  C_UsuAnula:=DataSet.FieldByName('UsuAnula').AsInteger;
  C_Usu_A:=DataSet.FieldByName('Usu_A').AsInteger;
  C_Fecha_A:=DataSet.FieldByName('Fecha_A').AsString;
  C_Usu_Confirma:=DataSet.FieldByName('Usu_Confirma').AsInteger;
  C_FechaConfirma:=DataSet.FieldByName('FechaConfirma').AsString;
  C_NroComprobante_IX6:=DataSet.FieldByName('NroComprobante').AsString;
  C_NroTarjeta_IX7:=DataSet.FieldByName('NroTarjeta').AsInteger;
  C_CantCuotas:=DataSet.FieldByName('CantCuotas').AsInteger;
  C_CuifCobrador_IX8:=StrToInt64(DataSet.FieldByName('CuifCobrador').AsString);
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TParcelasPagos.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasPagosConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasPagos.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasPagos.Agrega():boolean;
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
Parametros.Add(IntToStr(C_IdRecibo_PK));
Parametros.Add(IntToStr(C_NroAccion_IX1));
Parametros.Add(IntToStr(C_NroRecibo_IX2));
Parametros.Add(IntToStr(C_Puntov));
Parametros.Add(IntToStr(C_NroFormaPago_IX3));
Parametros.Add(C_Fecha_IX4);
Parametros.Add(FloatToStr(C_Importe));
Parametros.Add(C_CodBar);
Parametros.Add(IntToStr(C_NroCredito_IX5));
if C_CtaCte then Parametros.Add('1')
else Parametros.Add('0');
if C_CuotaCredito then Parametros.Add('1')
else Parametros.Add('0');
if C_Reintegro then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_Observaciones);
if C_Confirmado then Parametros.Add('1')
else Parametros.Add('0');
if C_Anulado then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_FechaAnula);
Parametros.Add(C_MotivoAnula);
Parametros.Add(IntToStr(C_UsuAnula));
Parametros.Add(IntToStr(C_Usu_A));
Parametros.Add(C_Fecha_A);
Parametros.Add(IntToStr(C_Usu_Confirma));
Parametros.Add(C_FechaConfirma);
Parametros.Add(C_NroComprobante_IX6);
Parametros.Add(IntToStr(C_NroTarjeta_IX7));
Parametros.Add(IntToStr(C_CantCuotas));
Parametros.Add(IntToStr(C_CuifCobrador_IX8));

//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasPagosInsertar',Parametros);

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TParcelasPagos.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasPagosEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TParcelasPagos.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
//Cargo los Parmetros
Parametros.Add(IntToStr(C_IdRecibo_PK));
Parametros.Add(IntToStr(C_NroAccion_IX1));
Parametros.Add(IntToStr(C_NroRecibo_IX2));
Parametros.Add(IntToStr(C_Puntov));
Parametros.Add(IntToStr(C_NroFormaPago_IX3));
Parametros.Add(C_Fecha_IX4);
Parametros.Add(FloatToStr(C_Importe));
Parametros.Add(C_CodBar);
Parametros.Add(IntToStr(C_NroCredito_IX5));
if C_CtaCte then Parametros.Add('1')
else Parametros.Add('0');
if C_CuotaCredito then Parametros.Add('1')
else Parametros.Add('0');
if C_Reintegro then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_Observaciones);
if C_Confirmado then Parametros.Add('1')
else Parametros.Add('0');
if C_Anulado then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_FechaAnula);
Parametros.Add(C_MotivoAnula);
Parametros.Add(IntToStr(C_UsuAnula));
Parametros.Add(IntToStr(C_Usu_A));
Parametros.Add(C_Fecha_A);
Parametros.Add(IntToStr(C_Usu_Confirma));
Parametros.Add(C_FechaConfirma);
Parametros.Add(C_NroComprobante_IX6);
Parametros.Add(IntToStr(C_NroTarjeta_IX7));
Parametros.Add(IntToStr(C_CantCuotas));
Parametros.Add(IntToStr(C_CuifCobrador_IX8));


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasPagosModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

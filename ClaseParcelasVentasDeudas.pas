unit ClaseParcelasVentasDeudas;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TParcelasVentasDeudas= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FIdDeuda:variant;
    FNroAccion:variant;
    FCuentaCliente:variant;
    FIdVenta:variant;
    FNroCuota:variant;
    FPeriodo:variant;
    FFechaVencimiento:string;
    FMonto:variant;
    FInteres:variant;
    FCapital:variant;
    FEnMovimientos:boolean;
    FDetalleCuota:string;
    FBloqueoMonto:boolean;
    FNroEntidad:variant;
    FNroTarjeta:variant;
    FNroCheque:variant;
    FSerie:string;
    FTitular:string;
    FNroCrompobante:variant;
    FImporte:variant;
    FNroCuotas:variant;
    FFecha:string;
    FFechaCobro:string;
    FUsu_A:variant;
    FFecha_A:string;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetIdDeuda(Value:variant);
    procedure SetNroAccion(Value:variant);
    procedure SetCuentaCliente(Value:variant);
    procedure SetIdVenta(Value:variant);
    procedure SetNroCuota(Value:variant);
    procedure SetPeriodo(Value:variant);
    procedure SetFechaVencimiento(Value:string);
    procedure SetMonto(Value:variant);
    procedure SetInteres(Value:variant);
    procedure SetCapital(Value:variant);
    procedure SetEnMovimientos(Value:boolean);
    procedure SetDetalleCuota(Value:string);
    procedure SetBloqueoMonto(Value:boolean);
    procedure SetNroEntidad(Value:variant);
    procedure SetNroTarjeta(Value:variant);
    procedure SetNroCheque(Value:variant);
    procedure SetSerie(Value:string);
    procedure SetTitular(Value:string);
    procedure SetNroCrompobante(Value:variant);
    procedure SetImporte(Value:variant);
    procedure SetNroCuotas(Value:variant);
    procedure SetFecha(Value:string);
    procedure SetFechaCobro(Value:string);
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

    property C_IdDeuda_PK:variant read FIdDeuda write SetIdDeuda;
    property C_NroAccion:variant read FNroAccion write SetNroAccion;
    property C_CuentaCliente_IX1:variant read FCuentaCliente write SetCuentaCliente;
    property C_IdVenta_IX2:variant read FIdVenta write SetIdVenta;
    property C_NroCuota:variant read FNroCuota write SetNroCuota;
    property C_Periodo_IX3:variant read FPeriodo write SetPeriodo;
    property C_FechaVencimiento_IX4:string read FFechaVencimiento write SetFechaVencimiento;
    property C_Monto:variant read FMonto write SetMonto;
    property C_Interes:variant read FInteres write SetInteres;
    property C_Capital:variant read FCapital write SetCapital;
    property C_EnMovimientos:boolean read FEnMovimientos write SetEnMovimientos;
    property C_DetalleCuota:string read FDetalleCuota write SetDetalleCuota;
    property C_BloqueoMonto:boolean read FBloqueoMonto write SetBloqueoMonto;
    property C_NroEntidad:variant read FNroEntidad write SetNroEntidad;
    property C_NroTarjeta:variant read FNroTarjeta write SetNroTarjeta;
    property C_NroCheque:variant read FNroCheque write SetNroCheque;
    property C_Serie:string read FSerie write SetSerie;
    property C_Titular:string read FTitular write SetTitular;
    property C_NroCrompobante:variant read FNroCrompobante write SetNroCrompobante;
    property C_Importe:variant read FImporte write SetImporte;
    property C_NroCuotas:variant read FNroCuotas write SetNroCuotas;
    property C_Fecha:string read FFecha write SetFecha;
    property C_FechaCobro:string read FFechaCobro write SetFechaCobro;
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

constructor TParcelasVentasDeudas.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=25;
end;

procedure TParcelasVentasDeudas.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TParcelasVentasDeudas.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TParcelasVentasDeudas.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TParcelasVentasDeudas.SetIdDeuda(Value:variant);
begin
  FIdDeuda:=Value;
end;

procedure TParcelasVentasDeudas.SetNroAccion(Value:variant);
begin
  FNroAccion:=Value;
end;

procedure TParcelasVentasDeudas.SetCuentaCliente(Value:variant);
begin
  FCuentaCliente:=Value;
end;

procedure TParcelasVentasDeudas.SetIdVenta(Value:variant);
begin
  FIdVenta:=Value;
end;

procedure TParcelasVentasDeudas.SetNroCuota(Value:variant);
begin
  FNroCuota:=Value;
end;

procedure TParcelasVentasDeudas.SetPeriodo(Value:variant);
begin
  FPeriodo:=Value;
end;

procedure TParcelasVentasDeudas.SetFechaVencimiento(Value:string);
begin
  FFechaVencimiento:=Value;
end;

procedure TParcelasVentasDeudas.SetMonto(Value:variant);
begin
  FMonto:=Value;
end;

procedure TParcelasVentasDeudas.SetInteres(Value:variant);
begin
  FInteres:=Value;
end;

procedure TParcelasVentasDeudas.SetCapital(Value:variant);
begin
  FCapital:=Value;
end;

procedure TParcelasVentasDeudas.SetEnMovimientos(Value:boolean);
begin
  FEnMovimientos:=Value;
end;

procedure TParcelasVentasDeudas.SetDetalleCuota(Value:string);
begin
  FDetalleCuota:=Value;
end;

procedure TParcelasVentasDeudas.SetBloqueoMonto(Value:boolean);
begin
  FBloqueoMonto:=Value;
end;

procedure TParcelasVentasDeudas.SetNroEntidad(Value:variant);
begin
  FNroEntidad:=Value;
end;

procedure TParcelasVentasDeudas.SetNroTarjeta(Value:variant);
begin
  FNroTarjeta:=Value;
end;

procedure TParcelasVentasDeudas.SetNroCheque(Value:variant);
begin
  FNroCheque:=Value;
end;

procedure TParcelasVentasDeudas.SetSerie(Value:string);
begin
  FSerie:=Value;
end;

procedure TParcelasVentasDeudas.SetTitular(Value:string);
begin
  FTitular:=Value;
end;

procedure TParcelasVentasDeudas.SetNroCrompobante(Value:variant);
begin
  FNroCrompobante:=Value;
end;

procedure TParcelasVentasDeudas.SetImporte(Value:variant);
begin
  FImporte:=Value;
end;

procedure TParcelasVentasDeudas.SetNroCuotas(Value:variant);
begin
  FNroCuotas:=Value;
end;

procedure TParcelasVentasDeudas.SetFecha(Value:string);
begin
  FFecha:=Value;
end;

procedure TParcelasVentasDeudas.SetFechaCobro(Value:string);
begin
  FFechaCobro:=Value;
end;

procedure TParcelasVentasDeudas.SetUsu_A(Value:variant);
begin
  FUsu_A:=Value;
end;

procedure TParcelasVentasDeudas.SetFecha_A(Value:string);
begin
  FFecha_A:=Value;
end;

Function TParcelasVentasDeudas.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_ParcelasVentasDeudasConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_IdDeuda_PK:=DataSet.FieldByName('IdDeuda').AsVariant;
  C_NroAccion:=DataSet.FieldByName('NroAccion').AsVariant;
  C_CuentaCliente_IX1:=DataSet.FieldByName('CuentaCliente').AsVariant;
  C_IdVenta_IX2:=DataSet.FieldByName('IdVenta').AsVariant;
  C_NroCuota:=DataSet.FieldByName('NroCuota').AsVariant;
  C_Periodo_IX3:=DataSet.FieldByName('Periodo').AsVariant;
  C_FechaVencimiento_IX4:=DataSet.FieldByName('FechaVencimiento').AsString;
  C_Monto:=DataSet.FieldByName('Monto').AsVariant;
  C_Interes:=DataSet.FieldByName('Interes').AsVariant;
  C_Capital:=DataSet.FieldByName('Capital').AsVariant;
  C_EnMovimientos:=DataSet.FieldByName('EnMovimientos').AsBoolean;
  C_DetalleCuota:=DataSet.FieldByName('DetalleCuota').AsString;
  C_BloqueoMonto:=DataSet.FieldByName('BloqueoMonto').AsBoolean;
  C_NroEntidad:=DataSet.FieldByName('NroEntidad').AsVariant;
  C_NroTarjeta:=DataSet.FieldByName('NroTarjeta').AsVariant;
  C_NroCheque:=DataSet.FieldByName('NroCheque').AsVariant;
  C_Serie:=DataSet.FieldByName('Serie').AsString;
  C_Titular:=DataSet.FieldByName('Titular').AsString;
  C_NroCrompobante:=DataSet.FieldByName('NroCrompobante').AsVariant;
  C_Importe:=DataSet.FieldByName('Importe').AsVariant;
  C_NroCuotas:=DataSet.FieldByName('NroCuotas').AsVariant;
  C_Fecha:=DataSet.FieldByName('Fecha').AsString;
  C_FechaCobro:=DataSet.FieldByName('FechaCobro').AsString;
  C_Usu_A:=DataSet.FieldByName('Usu_A').AsVariant;
  C_Fecha_A:=DataSet.FieldByName('Fecha_A').AsString;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TParcelasVentasDeudas.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasVentasDeudasConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasVentasDeudas.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasVentasDeudas.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasVentasDeudas.Agrega():boolean;
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
if (C_NroAccion = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroAccion));
if (C_CuentaCliente_IX1 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuentaCliente_IX1));
if (C_IdVenta_IX2 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdVenta_IX2));
if (C_NroCuota = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroCuota));
if (C_Periodo_IX3 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Periodo_IX3));
Parametros.Add(C_FechaVencimiento_IX4);
if (C_Monto = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Monto));
if (C_Interes = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Interes));
if (C_Capital = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Capital));
if C_EnMovimientos then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_DetalleCuota);
if C_BloqueoMonto then Parametros.Add('1')
else Parametros.Add('0');
if (C_NroEntidad = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroEntidad));
if (C_NroTarjeta = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroTarjeta));
if (C_NroCheque = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroCheque));
Parametros.Add(C_Serie);
Parametros.Add(C_Titular);
if (C_NroCrompobante = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroCrompobante));
if (C_Importe = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Importe));
if (C_NroCuotas = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroCuotas));
Parametros.Add(C_Fecha);
Parametros.Add(C_FechaCobro);
if (C_Usu_A = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_A));

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasVentasDeudasInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TParcelasVentasDeudas.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasVentasDeudasEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TParcelasVentasDeudas.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_IdDeuda_PK));
if (C_NroAccion = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroAccion));
if (C_CuentaCliente_IX1 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuentaCliente_IX1));
if (C_IdVenta_IX2 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdVenta_IX2));
if (C_NroCuota = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroCuota));
if (C_Periodo_IX3 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Periodo_IX3));
Parametros.Add(C_FechaVencimiento_IX4);
if (C_Monto = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Monto));
if (C_Interes = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Interes));
if (C_Capital = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Capital));
if C_EnMovimientos then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_DetalleCuota);
if C_BloqueoMonto then Parametros.Add('1')
else Parametros.Add('0');
if (C_NroEntidad = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroEntidad));
if (C_NroTarjeta = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroTarjeta));
if (C_NroCheque = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroCheque));
Parametros.Add(C_Serie);
Parametros.Add(C_Titular);
if (C_NroCrompobante = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroCrompobante));
if (C_Importe = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Importe));
if (C_NroCuotas = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroCuotas));
Parametros.Add(C_Fecha);
Parametros.Add(C_FechaCobro);


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasVentasDeudasModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

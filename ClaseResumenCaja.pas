unit ClaseResumenCaja;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TResumenCaja= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FId:variant;
    FNroResumen:variant;
    FFecha:string;
    FSaldoAnterior:variant;
    FVentas:variant;
    FServicios:variant;
    FMantenimiento:variant;
    FConsolidados:variant;
    FGastos:variant;
    FGastosAnulados:variant;
    FAcreditaciones:variant;
    FUsu_A:variant;
    FFecha_A:string;
    FUsu_M:variant;
    FFecha_M:string;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetId(Value:variant);
    procedure SetNroResumen(Value:variant);
    procedure SetFecha(Value:string);
    procedure SetSaldoAnterior(Value:variant);
    procedure SetVentas(Value:variant);
    procedure SetServicios(Value:variant);
    procedure SetMantenimiento(Value:variant);
    procedure SetConsolidados(Value:variant);
    procedure SetGastos(Value:variant);
    procedure SetGastosAnulados(Value:variant);
    procedure SetAcreditaciones(Value:variant);
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

    property C_Id_IX1:variant read FId write SetId;
    property C_NroResumen_PK:variant read FNroResumen write SetNroResumen;
    property C_Fecha_IX2:string read FFecha write SetFecha;
    property C_SaldoAnterior:variant read FSaldoAnterior write SetSaldoAnterior;
    property C_Ventas:variant read FVentas write SetVentas;
    property C_Servicios:variant read FServicios write SetServicios;
    property C_Mantenimiento:variant read FMantenimiento write SetMantenimiento;
    property C_Consolidados:variant read FConsolidados write SetConsolidados;
    property C_Gastos:variant read FGastos write SetGastos;
    property C_GastosAnulados:variant read FGastosAnulados write SetGastosAnulados;
    property C_Acreditaciones:variant read FAcreditaciones write SetAcreditaciones;
    property C_Usu_A_IX3:variant read FUsu_A write SetUsu_A;
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

constructor TResumenCaja.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=15;
end;

procedure TResumenCaja.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TResumenCaja.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TResumenCaja.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TResumenCaja.SetId(Value:variant);
begin
  FId:=Value;
end;

procedure TResumenCaja.SetNroResumen(Value:variant);
begin
  FNroResumen:=Value;
end;

procedure TResumenCaja.SetFecha(Value:string);
begin
  FFecha:=Value;
end;

procedure TResumenCaja.SetSaldoAnterior(Value:variant);
begin
  FSaldoAnterior:=Value;
end;

procedure TResumenCaja.SetVentas(Value:variant);
begin
  FVentas:=Value;
end;

procedure TResumenCaja.SetServicios(Value:variant);
begin
  FServicios:=Value;
end;

procedure TResumenCaja.SetMantenimiento(Value:variant);
begin
  FMantenimiento:=Value;
end;

procedure TResumenCaja.SetConsolidados(Value:variant);
begin
  FConsolidados:=Value;
end;

procedure TResumenCaja.SetGastos(Value:variant);
begin
  FGastos:=Value;
end;

procedure TResumenCaja.SetGastosAnulados(Value:variant);
begin
  FGastosAnulados:=Value;
end;

procedure TResumenCaja.SetAcreditaciones(Value:variant);
begin
  FAcreditaciones:=Value;
end;

procedure TResumenCaja.SetUsu_A(Value:variant);
begin
  FUsu_A:=Value;
end;

procedure TResumenCaja.SetFecha_A(Value:string);
begin
  FFecha_A:=Value;
end;

procedure TResumenCaja.SetUsu_M(Value:variant);
begin
  FUsu_M:=Value;
end;

procedure TResumenCaja.SetFecha_M(Value:string);
begin
  FFecha_M:=Value;
end;

Function TResumenCaja.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_ResumenCajaConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_Id_IX1:=DataSet.FieldByName('Id').AsVariant;
  C_NroResumen_PK:=DataSet.FieldByName('NroResumen').AsVariant;
  C_Fecha_IX2:=DataSet.FieldByName('Fecha').AsString;
  C_SaldoAnterior:=DataSet.FieldByName('SaldoAnterior').AsVariant;
  C_Ventas:=DataSet.FieldByName('Ventas').AsVariant;
  C_Servicios:=DataSet.FieldByName('Servicios').AsVariant;
  C_Mantenimiento:=DataSet.FieldByName('Mantenimiento').AsVariant;
  C_Consolidados:=DataSet.FieldByName('Consolidados').AsVariant;
  C_Gastos:=DataSet.FieldByName('Gastos').AsVariant;
  C_GastosAnulados:=DataSet.FieldByName('GastosAnulados').AsVariant;
  C_Acreditaciones:=DataSet.FieldByName('Acreditaciones').AsVariant;
  C_Usu_A_IX3:=DataSet.FieldByName('Usu_A').AsVariant;
  C_Fecha_A:=DataSet.FieldByName('Fecha_A').AsString;
  C_Usu_M:=DataSet.FieldByName('Usu_M').AsVariant;
  C_Fecha_M:=DataSet.FieldByName('Fecha_M').AsString;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TResumenCaja.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ResumenCajaConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TResumenCaja.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TResumenCaja.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TResumenCaja.Agrega():boolean;
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
if (C_NroResumen_PK = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroResumen_PK));
Parametros.Add(C_Fecha_IX2);
if (C_SaldoAnterior = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_SaldoAnterior));
if (C_Ventas = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Ventas));
if (C_Servicios = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Servicios));
if (C_Mantenimiento = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Mantenimiento));
if (C_Consolidados = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Consolidados));
if (C_Gastos = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Gastos));
if (C_GastosAnulados = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_GastosAnulados));
if (C_Acreditaciones = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Acreditaciones));
if (C_Usu_A_IX3 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_A_IX3));
if (C_Usu_M = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_M));
Parametros.Add(C_Fecha_M);

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ResumenCajaInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TResumenCaja.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_ResumenCajaEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TResumenCaja.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
if (C_NroResumen_PK = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroResumen_PK));
Parametros.Add(C_Fecha_IX2);
if (C_SaldoAnterior = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_SaldoAnterior));
if (C_Ventas = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Ventas));
if (C_Servicios = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Servicios));
if (C_Mantenimiento = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Mantenimiento));
if (C_Consolidados = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Consolidados));
if (C_Gastos = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Gastos));
if (C_GastosAnulados = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_GastosAnulados));
if (C_Acreditaciones = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Acreditaciones));
if (C_Usu_M = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_M));
Parametros.Add(C_Fecha_M);


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_ResumenCajaModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

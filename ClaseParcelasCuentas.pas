unit ClaseParcelasCuentas;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TParcelasCuentas= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FId:variant;
    FCuentaCliente:variant;
    FCuifCliente:variant;
    FNroTipoAcc:variant;
    FPorcentajeMant:variant;
    FPorcentajeServ:variant;
    FPorcentajeVentas:variant;
    FUsu_A:variant;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetId(Value:variant);
    procedure SetCuentaCliente(Value:variant);
    procedure SetCuifCliente(Value:variant);
    procedure SetNroTipoAcc(Value:variant);
    procedure SetPorcentajeMant(Value:variant);
    procedure SetPorcentajeServ(Value:variant);
    procedure SetPorcentajeVentas(Value:variant);
    procedure SetUsu_A(Value:variant);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_Id:variant read FId write SetId;
    property C_CuentaCliente_IX1:variant read FCuentaCliente write SetCuentaCliente;
    property C_CuifCliente_IX2:variant read FCuifCliente write SetCuifCliente;
    property C_NroTipoAcc:variant read FNroTipoAcc write SetNroTipoAcc;
    property C_PorcentajeMant:variant read FPorcentajeMant write SetPorcentajeMant;
    property C_PorcentajeServ:variant read FPorcentajeServ write SetPorcentajeServ;
    property C_PorcentajeVentas:variant read FPorcentajeVentas write SetPorcentajeVentas;
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

constructor TParcelasCuentas.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=8;
end;

procedure TParcelasCuentas.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TParcelasCuentas.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TParcelasCuentas.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TParcelasCuentas.SetId(Value:variant);
begin
  FId:=Value;
end;

procedure TParcelasCuentas.SetCuentaCliente(Value:variant);
begin
  FCuentaCliente:=Value;
end;

procedure TParcelasCuentas.SetCuifCliente(Value:variant);
begin
  FCuifCliente:=Value;
end;

procedure TParcelasCuentas.SetNroTipoAcc(Value:variant);
begin
  FNroTipoAcc:=Value;
end;

procedure TParcelasCuentas.SetPorcentajeMant(Value:variant);
begin
  FPorcentajeMant:=Value;
end;

procedure TParcelasCuentas.SetPorcentajeServ(Value:variant);
begin
  FPorcentajeServ:=Value;
end;

procedure TParcelasCuentas.SetPorcentajeVentas(Value:variant);
begin
  FPorcentajeVentas:=Value;
end;

procedure TParcelasCuentas.SetUsu_A(Value:variant);
begin
  FUsu_A:=Value;
end;

Function TParcelasCuentas.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_ParcelasCuentasConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_Id:=DataSet.FieldByName('Id').AsVariant;
  C_CuentaCliente_IX1:=DataSet.FieldByName('CuentaCliente').AsVariant;
  C_CuifCliente_IX2:=StrToInt64(DataSet.FieldByName('CuifCliente').AsString);
  C_NroTipoAcc:=DataSet.FieldByName('NroTipoAcc').AsVariant;
  C_PorcentajeMant:=DataSet.FieldByName('PorcentajeMant').AsVariant;
  C_PorcentajeServ:=DataSet.FieldByName('PorcentajeServ').AsVariant;
  C_PorcentajeVentas:=DataSet.FieldByName('PorcentajeVentas').AsVariant;
  C_Usu_A:=DataSet.FieldByName('Usu_A').AsVariant;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TParcelasCuentas.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasCuentasConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasCuentas.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasCuentas.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasCuentas.Agrega():boolean;
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
if (C_CuentaCliente_IX1 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuentaCliente_IX1));
if (C_CuifCliente_IX2 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuifCliente_IX2));
if (C_NroTipoAcc = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroTipoAcc));
if (C_PorcentajeMant = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_PorcentajeMant));
if (C_PorcentajeServ = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_PorcentajeServ));
if (C_PorcentajeVentas = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_PorcentajeVentas));
if (C_Usu_A = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_A));

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasCuentasInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TParcelasCuentas.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasCuentasEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TParcelasCuentas.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_Id));
if (C_CuentaCliente_IX1 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuentaCliente_IX1));
if (C_CuifCliente_IX2 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuifCliente_IX2));
if (C_NroTipoAcc = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroTipoAcc));
if (C_PorcentajeMant = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_PorcentajeMant));
if (C_PorcentajeServ = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_PorcentajeServ));
if (C_PorcentajeVentas = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_PorcentajeVentas));


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasCuentasModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

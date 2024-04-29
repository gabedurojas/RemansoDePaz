unit ClaseComprobantesTalonarios;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TComprobantesTalonarios= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FIdTalonario:variant;
    FNroTalonario:variant;
    FIdTipoComprobante:variant;
    FPuntoVenta:variant;
    FDesde:variant;
    FCantidad:variant;
    FUsu_A:variant;
    FFecha_A:string;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetIdTalonario(Value:variant);
    procedure SetNroTalonario(Value:variant);
    procedure SetIdTipoComprobante(Value:variant);
    procedure SetPuntoVenta(Value:variant);
    procedure SetDesde(Value:variant);
    procedure SetCantidad(Value:variant);
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

    property C_IdTalonario_PK:variant read FIdTalonario write SetIdTalonario;
    property C_NroTalonario_IX1:variant read FNroTalonario write SetNroTalonario;
    property C_IdTipoComprobante_IX2:variant read FIdTipoComprobante write SetIdTipoComprobante;
    property C_PuntoVenta_IX3:variant read FPuntoVenta write SetPuntoVenta;
    property C_Desde:variant read FDesde write SetDesde;
    property C_Cantidad:variant read FCantidad write SetCantidad;
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

constructor TComprobantesTalonarios.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=8;
end;

procedure TComprobantesTalonarios.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TComprobantesTalonarios.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TComprobantesTalonarios.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TComprobantesTalonarios.SetIdTalonario(Value:variant);
begin
  FIdTalonario:=Value;
end;

procedure TComprobantesTalonarios.SetNroTalonario(Value:variant);
begin
  FNroTalonario:=Value;
end;

procedure TComprobantesTalonarios.SetIdTipoComprobante(Value:variant);
begin
  FIdTipoComprobante:=Value;
end;

procedure TComprobantesTalonarios.SetPuntoVenta(Value:variant);
begin
  FPuntoVenta:=Value;
end;

procedure TComprobantesTalonarios.SetDesde(Value:variant);
begin
  FDesde:=Value;
end;

procedure TComprobantesTalonarios.SetCantidad(Value:variant);
begin
  FCantidad:=Value;
end;

procedure TComprobantesTalonarios.SetUsu_A(Value:variant);
begin
  FUsu_A:=Value;
end;

procedure TComprobantesTalonarios.SetFecha_A(Value:string);
begin
  FFecha_A:=Value;
end;

Function TComprobantesTalonarios.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_ComprobantesTalonariosConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_IdTalonario_PK:=DataSet.FieldByName('IdTalonario').AsVariant;
  C_NroTalonario_IX1:=DataSet.FieldByName('NroTalonario').AsVariant;
  C_IdTipoComprobante_IX2:=DataSet.FieldByName('IdTipoComprobante').AsVariant;
  C_PuntoVenta_IX3:=DataSet.FieldByName('PuntoVenta').AsVariant;
  C_Desde:=DataSet.FieldByName('Desde').AsVariant;
  C_Cantidad:=DataSet.FieldByName('Cantidad').AsVariant;
  C_Usu_A:=DataSet.FieldByName('Usu_A').AsVariant;
  C_Fecha_A:=DataSet.FieldByName('Fecha_A').AsString;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TComprobantesTalonarios.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ComprobantesTalonariosConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TComprobantesTalonarios.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TComprobantesTalonarios.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TComprobantesTalonarios.Agrega():boolean;
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
if (C_NroTalonario_IX1 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroTalonario_IX1));
if (C_IdTipoComprobante_IX2 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdTipoComprobante_IX2));
if (C_PuntoVenta_IX3 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_PuntoVenta_IX3));
if (C_Desde = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Desde));
if (C_Cantidad = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Cantidad));
if (C_Usu_A = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_A));

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ComprobantesTalonariosInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TComprobantesTalonarios.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_ComprobantesTalonariosEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TComprobantesTalonarios.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_IdTalonario_PK));
if (C_NroTalonario_IX1 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroTalonario_IX1));
if (C_IdTipoComprobante_IX2 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdTipoComprobante_IX2));
if (C_PuntoVenta_IX3 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_PuntoVenta_IX3));
if (C_Desde = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Desde));
if (C_Cantidad = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Cantidad));


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_ComprobantesTalonariosModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

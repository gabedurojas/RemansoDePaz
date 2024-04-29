unit ClaseComprobantesEntregaConfig;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TComprobantesEntregaConfig= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FIdConfig:variant;
    FNroTalonario:variant;
    FIdComprobante:variant;
    FPuntoVenta:variant;
    FDesde:variant;
    FCantidad:variant;
    FIdTipoComprobante:variant;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetIdConfig(Value:variant);
    procedure SetNroTalonario(Value:variant);
    procedure SetIdComprobante(Value:variant);
    procedure SetPuntoVenta(Value:variant);
    procedure SetDesde(Value:variant);
    procedure SetCantidad(Value:variant);
    procedure SetIdTipoComprobante(Value:variant);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_IdConfig_PK:variant read FIdConfig write SetIdConfig;
    property C_NroTalonario_IX1:variant read FNroTalonario write SetNroTalonario;
    property C_IdComprobante_IX2:variant read FIdComprobante write SetIdComprobante;
    property C_PuntoVenta:variant read FPuntoVenta write SetPuntoVenta;
    property C_Desde:variant read FDesde write SetDesde;
    property C_Cantidad:variant read FCantidad write SetCantidad;
    property C_IdTipoComprobante_IX3:variant read FIdTipoComprobante write SetIdTipoComprobante;

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

constructor TComprobantesEntregaConfig.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=7;
end;

procedure TComprobantesEntregaConfig.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TComprobantesEntregaConfig.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TComprobantesEntregaConfig.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TComprobantesEntregaConfig.SetIdConfig(Value:variant);
begin
  FIdConfig:=Value;
end;

procedure TComprobantesEntregaConfig.SetNroTalonario(Value:variant);
begin
  FNroTalonario:=Value;
end;

procedure TComprobantesEntregaConfig.SetIdComprobante(Value:variant);
begin
  FIdComprobante:=Value;
end;

procedure TComprobantesEntregaConfig.SetPuntoVenta(Value:variant);
begin
  FPuntoVenta:=Value;
end;

procedure TComprobantesEntregaConfig.SetDesde(Value:variant);
begin
  FDesde:=Value;
end;

procedure TComprobantesEntregaConfig.SetCantidad(Value:variant);
begin
  FCantidad:=Value;
end;

procedure TComprobantesEntregaConfig.SetIdTipoComprobante(Value:variant);
begin
  FIdTipoComprobante:=Value;
end;

Function TComprobantesEntregaConfig.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_ComprobantesEntregaConfigConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_IdConfig_PK:=DataSet.FieldByName('IdConfig').AsVariant;
  C_NroTalonario_IX1:=DataSet.FieldByName('NroTalonario').AsVariant;
  C_IdComprobante_IX2:=DataSet.FieldByName('IdComprobante').AsVariant;
  C_PuntoVenta:=DataSet.FieldByName('PuntoVenta').AsVariant;
  C_Desde:=DataSet.FieldByName('Desde').AsVariant;
  C_Cantidad:=DataSet.FieldByName('Cantidad').AsVariant;
  C_IdTipoComprobante_IX3:=DataSet.FieldByName('IdTipoComprobante').AsVariant;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TComprobantesEntregaConfig.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ComprobantesEntregaConfigConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TComprobantesEntregaConfig.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TComprobantesEntregaConfig.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TComprobantesEntregaConfig.Agrega():boolean;
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
if (C_IdComprobante_IX2 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdComprobante_IX2));
if (C_PuntoVenta = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_PuntoVenta));
if (C_Desde = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Desde));
if (C_Cantidad = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Cantidad));
if (C_IdTipoComprobante_IX3 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdTipoComprobante_IX3));

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ComprobantesEntregaConfigInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TComprobantesEntregaConfig.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_ComprobantesEntregaConfigEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TComprobantesEntregaConfig.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_IdConfig_PK));
if (C_NroTalonario_IX1 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroTalonario_IX1));
if (C_IdComprobante_IX2 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdComprobante_IX2));
if (C_PuntoVenta = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_PuntoVenta));
if (C_Desde = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Desde));
if (C_Cantidad = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Cantidad));
if (C_IdTipoComprobante_IX3 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdTipoComprobante_IX3));


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_ComprobantesEntregaConfigModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

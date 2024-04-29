unit ClaseComprobantesEntregaDetalle;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TComprobantesEntregaDetalle= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FId:variant;
    FIdConfig:variant;
    FNroComprobante:string;
    FIdTipoComprobante:variant;
    FCuifCobrador:variant;
    FFecha:string;
    FUsu:variant;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetId(Value:variant);
    procedure SetIdConfig(Value:variant);
    procedure SetNroComprobante(Value:string);
    procedure SetIdTipoComprobante(Value:variant);
    procedure SetCuifCobrador(Value:variant);
    procedure SetFecha(Value:string);
    procedure SetUsu(Value:variant);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_Id_IX1:variant read FId write SetId;
    property C_IdConfig:variant read FIdConfig write SetIdConfig;
    property C_NroComprobante:string read FNroComprobante write SetNroComprobante;
    property C_IdTipoComprobante:variant read FIdTipoComprobante write SetIdTipoComprobante;
    property C_CuifCobrador_IX2:variant read FCuifCobrador write SetCuifCobrador;
    property C_Fecha:string read FFecha write SetFecha;
    property C_Usu:variant read FUsu write SetUsu;

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

constructor TComprobantesEntregaDetalle.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=7;
end;

procedure TComprobantesEntregaDetalle.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TComprobantesEntregaDetalle.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TComprobantesEntregaDetalle.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TComprobantesEntregaDetalle.SetId(Value:variant);
begin
  FId:=Value;
end;

procedure TComprobantesEntregaDetalle.SetIdConfig(Value:variant);
begin
  FIdConfig:=Value;
end;

procedure TComprobantesEntregaDetalle.SetNroComprobante(Value:string);
begin
  FNroComprobante:=Value;
end;

procedure TComprobantesEntregaDetalle.SetIdTipoComprobante(Value:variant);
begin
  FIdTipoComprobante:=Value;
end;

procedure TComprobantesEntregaDetalle.SetCuifCobrador(Value:variant);
begin
  FCuifCobrador:=Value;
end;

procedure TComprobantesEntregaDetalle.SetFecha(Value:string);
begin
  FFecha:=Value;
end;

procedure TComprobantesEntregaDetalle.SetUsu(Value:variant);
begin
  FUsu:=Value;
end;

Function TComprobantesEntregaDetalle.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_ComprobantesEntregaDetalleConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_Id_IX1:=DataSet.FieldByName('Id').AsVariant;
  C_IdConfig:=DataSet.FieldByName('IdConfig').AsVariant;
  C_NroComprobante:=DataSet.FieldByName('NroComprobante').AsString;
  C_IdTipoComprobante:=DataSet.FieldByName('IdTipoComprobante').AsVariant;
  C_CuifCobrador_IX2:=StrToInt64(DataSet.FieldByName('CuifCobrador').AsString);
  C_Fecha:=DataSet.FieldByName('Fecha').AsString;
  C_Usu:=DataSet.FieldByName('Usu').AsVariant;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TComprobantesEntregaDetalle.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ComprobantesEntregaDetalleConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TComprobantesEntregaDetalle.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TComprobantesEntregaDetalle.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TComprobantesEntregaDetalle.Agrega():boolean;
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
if (C_IdConfig = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdConfig));
Parametros.Add(C_NroComprobante);
if (C_IdTipoComprobante = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdTipoComprobante));
if (C_CuifCobrador_IX2 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuifCobrador_IX2));
Parametros.Add(C_Fecha);
if (C_Usu = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu));

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ComprobantesEntregaDetalleInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TComprobantesEntregaDetalle.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_ComprobantesEntregaDetalleEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TComprobantesEntregaDetalle.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_Id_IX1));
if (C_IdConfig = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdConfig));
Parametros.Add(C_NroComprobante);
if (C_IdTipoComprobante = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdTipoComprobante));
if (C_CuifCobrador_IX2 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuifCobrador_IX2));
Parametros.Add(C_Fecha);
if (C_Usu = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu));


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_ComprobantesEntregaDetalleModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

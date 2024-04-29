unit ClaseParcelasMantenimientoPreciosBis;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TParcelasMantenimientoPreciosBis= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FId:variant;
    FFechaInicio:string;
    FFechaFin:string;
    FImporteNormal:variant;
    FImporteJubilado:variant;
    FPorcentaje:variant;
    FGastoAdmin:variant;
    FIva:variant;
    FDescuentoAnual:variant;
    FFecha_A:string;
    FUsu_A:variant;
    Factivo:boolean;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetId(Value:variant);
    procedure SetFechaInicio(Value:string);
    procedure SetFechaFin(Value:string);
    procedure SetImporteNormal(Value:variant);
    procedure SetImporteJubilado(Value:variant);
    procedure SetPorcentaje(Value:variant);
    procedure SetGastoAdmin(Value:variant);
    procedure SetIva(Value:variant);
    procedure SetDescuentoAnual(Value:variant);
    procedure SetFecha_A(Value:string);
    procedure SetUsu_A(Value:variant);
    procedure Setactivo(Value:boolean);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_Id_PK:variant read FId write SetId;
    property C_FechaInicio:string read FFechaInicio write SetFechaInicio;
    property C_FechaFin:string read FFechaFin write SetFechaFin;
    property C_ImporteNormal:variant read FImporteNormal write SetImporteNormal;
    property C_ImporteJubilado:variant read FImporteJubilado write SetImporteJubilado;
    property C_Porcentaje:variant read FPorcentaje write SetPorcentaje;
    property C_GastoAdmin:variant read FGastoAdmin write SetGastoAdmin;
    property C_Iva:variant read FIva write SetIva;
    property C_DescuentoAnual:variant read FDescuentoAnual write SetDescuentoAnual;
    property C_Fecha_A:string read FFecha_A write SetFecha_A;
    property C_Usu_A:variant read FUsu_A write SetUsu_A;
    property C_activo:boolean read Factivo write Setactivo;

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

constructor TParcelasMantenimientoPreciosBis.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=12;
end;

procedure TParcelasMantenimientoPreciosBis.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TParcelasMantenimientoPreciosBis.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TParcelasMantenimientoPreciosBis.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TParcelasMantenimientoPreciosBis.SetId(Value:variant);
begin
  FId:=Value;
end;

procedure TParcelasMantenimientoPreciosBis.SetFechaInicio(Value:string);
begin
  FFechaInicio:=Value;
end;

procedure TParcelasMantenimientoPreciosBis.SetFechaFin(Value:string);
begin
  FFechaFin:=Value;
end;

procedure TParcelasMantenimientoPreciosBis.SetImporteNormal(Value:variant);
begin
  FImporteNormal:=Value;
end;

procedure TParcelasMantenimientoPreciosBis.SetImporteJubilado(Value:variant);
begin
  FImporteJubilado:=Value;
end;

procedure TParcelasMantenimientoPreciosBis.SetPorcentaje(Value:variant);
begin
  FPorcentaje:=Value;
end;

procedure TParcelasMantenimientoPreciosBis.SetGastoAdmin(Value:variant);
begin
  FGastoAdmin:=Value;
end;

procedure TParcelasMantenimientoPreciosBis.SetIva(Value:variant);
begin
  FIva:=Value;
end;

procedure TParcelasMantenimientoPreciosBis.SetDescuentoAnual(Value:variant);
begin
  FDescuentoAnual:=Value;
end;

procedure TParcelasMantenimientoPreciosBis.SetFecha_A(Value:string);
begin
  FFecha_A:=Value;
end;

procedure TParcelasMantenimientoPreciosBis.SetUsu_A(Value:variant);
begin
  FUsu_A:=Value;
end;

procedure TParcelasMantenimientoPreciosBis.Setactivo(Value:boolean);
begin
  Factivo:=Value;
end;

Function TParcelasMantenimientoPreciosBis.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_ParcelasMantenimientoPreciosBisConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_Id_PK:=DataSet.FieldByName('Id').AsVariant;
  C_FechaInicio:=DataSet.FieldByName('FechaInicio').AsString;
  C_FechaFin:=DataSet.FieldByName('FechaFin').AsString;
  C_ImporteNormal:=DataSet.FieldByName('ImporteNormal').AsVariant;
  C_ImporteJubilado:=DataSet.FieldByName('ImporteJubilado').AsVariant;
  C_Porcentaje:=DataSet.FieldByName('Porcentaje').AsVariant;
  C_GastoAdmin:=DataSet.FieldByName('GastoAdmin').AsVariant;
  C_Iva:=DataSet.FieldByName('Iva').AsVariant;
  C_DescuentoAnual:=DataSet.FieldByName('DescuentoAnual').AsVariant;
  C_Fecha_A:=DataSet.FieldByName('Fecha_A').AsString;
  C_Usu_A:=DataSet.FieldByName('Usu_A').AsVariant;
  C_activo:=DataSet.FieldByName('activo').AsBoolean;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TParcelasMantenimientoPreciosBis.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasMantenimientoPreciosBisConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasMantenimientoPreciosBis.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasMantenimientoPreciosBis.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasMantenimientoPreciosBis.Agrega():boolean;
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
Parametros.Add(C_FechaInicio);
Parametros.Add(C_FechaFin);
if (C_ImporteNormal = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_ImporteNormal));
if (C_ImporteJubilado = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_ImporteJubilado));
if (C_Porcentaje = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Porcentaje));
if (C_GastoAdmin = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_GastoAdmin));
if (C_Iva = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Iva));
if (C_DescuentoAnual = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_DescuentoAnual));
if (C_Usu_A = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_A));
if C_activo then Parametros.Add('1')
else Parametros.Add('0');

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasMantenimientoPreciosBisInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TParcelasMantenimientoPreciosBis.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasMantenimientoPreciosBisEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TParcelasMantenimientoPreciosBis.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_Id_PK));
Parametros.Add(C_FechaInicio);
Parametros.Add(C_FechaFin);
if (C_ImporteNormal = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_ImporteNormal));
if (C_ImporteJubilado = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_ImporteJubilado));
if (C_Porcentaje = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Porcentaje));
if (C_GastoAdmin = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_GastoAdmin));
if (C_Iva = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Iva));
if (C_DescuentoAnual = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_DescuentoAnual));
if C_activo then Parametros.Add('1')
else Parametros.Add('0');


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasMantenimientoPreciosBisModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

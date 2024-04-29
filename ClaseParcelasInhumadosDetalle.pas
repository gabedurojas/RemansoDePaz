unit ClaseParcelasInhumadosDetalle;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TParcelasInhumadosDetalle= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FId:variant;
    FIdHabitante:variant;
    FFecha:string;
    FNroAccion:variant;
    FImporteServicio:variant;
    FFormaPago:string;
    FNroCuotas:variant;
    FValorCouta:variant;
    FObservaciones:string;
    FTarjeta:string;
    FTarjetaTitular:string;
    FTarjetaNroCuotas:variant;
    FTarjetaComprobante:string;
    FSerieCheque:string;
    FUsu_A:variant;
    FFecha_A:string;
    FVisado:boolean;
    FVisado_Usu:variant;
    FVisado_Fecha:string;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetId(Value:variant);
    procedure SetIdHabitante(Value:variant);
    procedure SetFecha(Value:string);
    procedure SetNroAccion(Value:variant);
    procedure SetImporteServicio(Value:variant);
    procedure SetFormaPago(Value:string);
    procedure SetNroCuotas(Value:variant);
    procedure SetValorCouta(Value:variant);
    procedure SetObservaciones(Value:string);
    procedure SetTarjeta(Value:string);
    procedure SetTarjetaTitular(Value:string);
    procedure SetTarjetaNroCuotas(Value:variant);
    procedure SetTarjetaComprobante(Value:string);
    procedure SetSerieCheque(Value:string);
    procedure SetUsu_A(Value:variant);
    procedure SetFecha_A(Value:string);
    procedure SetVisado(Value:boolean);
    procedure SetVisado_Usu(Value:variant);
    procedure SetVisado_Fecha(Value:string);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_Id_PK:variant read FId write SetId;
    property C_IdHabitante:variant read FIdHabitante write SetIdHabitante;
    property C_Fecha:string read FFecha write SetFecha;
    property C_NroAccion:variant read FNroAccion write SetNroAccion;
    property C_ImporteServicio:variant read FImporteServicio write SetImporteServicio;
    property C_FormaPago:string read FFormaPago write SetFormaPago;
    property C_NroCuotas:variant read FNroCuotas write SetNroCuotas;
    property C_ValorCouta:variant read FValorCouta write SetValorCouta;
    property C_Observaciones:string read FObservaciones write SetObservaciones;
    property C_Tarjeta:string read FTarjeta write SetTarjeta;
    property C_TarjetaTitular:string read FTarjetaTitular write SetTarjetaTitular;
    property C_TarjetaNroCuotas:variant read FTarjetaNroCuotas write SetTarjetaNroCuotas;
    property C_TarjetaComprobante:string read FTarjetaComprobante write SetTarjetaComprobante;
    property C_SerieCheque:string read FSerieCheque write SetSerieCheque;
    property C_Usu_A:variant read FUsu_A write SetUsu_A;
    property C_Fecha_A:string read FFecha_A write SetFecha_A;
    property C_Visado:boolean read FVisado write SetVisado;
    property C_Visado_Usu:variant read FVisado_Usu write SetVisado_Usu;
    property C_Visado_Fecha:string read FVisado_Fecha write SetVisado_Fecha;

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

constructor TParcelasInhumadosDetalle.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=19;
end;

procedure TParcelasInhumadosDetalle.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TParcelasInhumadosDetalle.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TParcelasInhumadosDetalle.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TParcelasInhumadosDetalle.SetId(Value:variant);
begin
  FId:=Value;
end;

procedure TParcelasInhumadosDetalle.SetIdHabitante(Value:variant);
begin
  FIdHabitante:=Value;
end;

procedure TParcelasInhumadosDetalle.SetFecha(Value:string);
begin
  FFecha:=Value;
end;

procedure TParcelasInhumadosDetalle.SetNroAccion(Value:variant);
begin
  FNroAccion:=Value;
end;

procedure TParcelasInhumadosDetalle.SetImporteServicio(Value:variant);
begin
  FImporteServicio:=Value;
end;

procedure TParcelasInhumadosDetalle.SetFormaPago(Value:string);
begin
  FFormaPago:=Value;
end;

procedure TParcelasInhumadosDetalle.SetNroCuotas(Value:variant);
begin
  FNroCuotas:=Value;
end;

procedure TParcelasInhumadosDetalle.SetValorCouta(Value:variant);
begin
  FValorCouta:=Value;
end;

procedure TParcelasInhumadosDetalle.SetObservaciones(Value:string);
begin
  FObservaciones:=Value;
end;

procedure TParcelasInhumadosDetalle.SetTarjeta(Value:string);
begin
  FTarjeta:=Value;
end;

procedure TParcelasInhumadosDetalle.SetTarjetaTitular(Value:string);
begin
  FTarjetaTitular:=Value;
end;

procedure TParcelasInhumadosDetalle.SetTarjetaNroCuotas(Value:variant);
begin
  FTarjetaNroCuotas:=Value;
end;

procedure TParcelasInhumadosDetalle.SetTarjetaComprobante(Value:string);
begin
  FTarjetaComprobante:=Value;
end;

procedure TParcelasInhumadosDetalle.SetSerieCheque(Value:string);
begin
  FSerieCheque:=Value;
end;

procedure TParcelasInhumadosDetalle.SetUsu_A(Value:variant);
begin
  FUsu_A:=Value;
end;

procedure TParcelasInhumadosDetalle.SetFecha_A(Value:string);
begin
  FFecha_A:=Value;
end;

procedure TParcelasInhumadosDetalle.SetVisado(Value:boolean);
begin
  FVisado:=Value;
end;

procedure TParcelasInhumadosDetalle.SetVisado_Usu(Value:variant);
begin
  FVisado_Usu:=Value;
end;

procedure TParcelasInhumadosDetalle.SetVisado_Fecha(Value:string);
begin
  FVisado_Fecha:=Value;
end;

Function TParcelasInhumadosDetalle.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_ParcelasInhumadosDetalleConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_Id_PK:=DataSet.FieldByName('Id').AsVariant;
  C_IdHabitante:=DataSet.FieldByName('IdHabitante').AsVariant;
  C_Fecha:=DataSet.FieldByName('Fecha').AsString;
  C_NroAccion:=DataSet.FieldByName('NroAccion').AsVariant;
  C_ImporteServicio:=DataSet.FieldByName('ImporteServicio').AsVariant;
  C_FormaPago:=DataSet.FieldByName('FormaPago').AsString;
  C_NroCuotas:=DataSet.FieldByName('NroCuotas').AsVariant;
  C_ValorCouta:=DataSet.FieldByName('ValorCouta').AsVariant;
  C_Observaciones:=DataSet.FieldByName('Observaciones').AsString;
  C_Tarjeta:=DataSet.FieldByName('Tarjeta').AsString;
  C_TarjetaTitular:=DataSet.FieldByName('TarjetaTitular').AsString;
  C_TarjetaNroCuotas:=DataSet.FieldByName('TarjetaNroCuotas').AsVariant;
  C_TarjetaComprobante:=DataSet.FieldByName('TarjetaComprobante').AsString;
  C_SerieCheque:=DataSet.FieldByName('SerieCheque').AsString;
  C_Usu_A:=DataSet.FieldByName('Usu_A').AsVariant;
  C_Fecha_A:=DataSet.FieldByName('Fecha_A').AsString;
  C_Visado:=DataSet.FieldByName('Visado').AsBoolean;
  C_Visado_Usu:=DataSet.FieldByName('Visado_Usu').AsVariant;
  C_Visado_Fecha:=DataSet.FieldByName('Visado_Fecha').AsString;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TParcelasInhumadosDetalle.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasInhumadosDetalleConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasInhumadosDetalle.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasInhumadosDetalle.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasInhumadosDetalle.Agrega():boolean;
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
if (C_IdHabitante = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdHabitante));
Parametros.Add(C_Fecha);
if (C_NroAccion = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroAccion));
if (C_ImporteServicio = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_ImporteServicio));
Parametros.Add(C_FormaPago);
if (C_NroCuotas = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroCuotas));
if (C_ValorCouta = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_ValorCouta));
Parametros.Add(C_Observaciones);
Parametros.Add(C_Tarjeta);
Parametros.Add(C_TarjetaTitular);
if (C_TarjetaNroCuotas = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_TarjetaNroCuotas));
Parametros.Add(C_TarjetaComprobante);
Parametros.Add(C_SerieCheque);
if (C_Usu_A = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_A));
if C_Visado then Parametros.Add('1')
else Parametros.Add('0');
if (C_Visado_Usu = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Visado_Usu));
Parametros.Add(C_Visado_Fecha);

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasInhumadosDetalleInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TParcelasInhumadosDetalle.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasInhumadosDetalleEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TParcelasInhumadosDetalle.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_Id_PK));
if (C_IdHabitante = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdHabitante));
Parametros.Add(C_Fecha);
if (C_NroAccion = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroAccion));
if (C_ImporteServicio = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_ImporteServicio));
Parametros.Add(C_FormaPago);
if (C_NroCuotas = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroCuotas));
if (C_ValorCouta = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_ValorCouta));
Parametros.Add(C_Observaciones);
Parametros.Add(C_Tarjeta);
Parametros.Add(C_TarjetaTitular);
if (C_TarjetaNroCuotas = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_TarjetaNroCuotas));
Parametros.Add(C_TarjetaComprobante);
Parametros.Add(C_SerieCheque);
if C_Visado then Parametros.Add('1')
else Parametros.Add('0');
if (C_Visado_Usu = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Visado_Usu));
Parametros.Add(C_Visado_Fecha);


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasInhumadosDetalleModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

unit ClaseParcelasServiciosSepelios;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TParcelasServiciosSepelios= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FIdServicio:variant;
    FCuif:variant;
    FTitularServicio:string;
    FCuifInhumado:variant;
    FNroAccion:variant;
    FSector:string;
    FParcela:variant;
    FFecha:string;
    FNroTipoServicio:variant;
    FTotal:variant;
    FCantCuotas:variant;
    FValorCuota:variant;
    FObservaciones:string;
    FConfirmado:boolean;
    FFechaConfirma:string;
    FFechaFallecimiento:string;
    FNroActaDefuncion:variant;
    FTomo:string;
    FFolio:string;
    FMedico:string;
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
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetIdServicio(Value:variant);
    procedure SetCuif(Value:variant);
    procedure SetTitularServicio(Value:string);
    procedure SetCuifInhumado(Value:variant);
    procedure SetNroAccion(Value:variant);
    procedure SetSector(Value:string);
    procedure SetParcela(Value:variant);
    procedure SetFecha(Value:string);
    procedure SetNroTipoServicio(Value:variant);
    procedure SetTotal(Value:variant);
    procedure SetCantCuotas(Value:variant);
    procedure SetValorCuota(Value:variant);
    procedure SetObservaciones(Value:string);
    procedure SetConfirmado(Value:boolean);
    procedure SetFechaConfirma(Value:string);
    procedure SetFechaFallecimiento(Value:string);
    procedure SetNroActaDefuncion(Value:variant);
    procedure SetTomo(Value:string);
    procedure SetFolio(Value:string);
    procedure SetMedico(Value:string);
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
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_IdServicio_PK:variant read FIdServicio write SetIdServicio;
    property C_Cuif:variant read FCuif write SetCuif;
    property C_TitularServicio:string read FTitularServicio write SetTitularServicio;
    property C_CuifInhumado:variant read FCuifInhumado write SetCuifInhumado;
    property C_NroAccion:variant read FNroAccion write SetNroAccion;
    property C_Sector:string read FSector write SetSector;
    property C_Parcela:variant read FParcela write SetParcela;
    property C_Fecha:string read FFecha write SetFecha;
    property C_NroTipoServicio:variant read FNroTipoServicio write SetNroTipoServicio;
    property C_Total:variant read FTotal write SetTotal;
    property C_CantCuotas:variant read FCantCuotas write SetCantCuotas;
    property C_ValorCuota:variant read FValorCuota write SetValorCuota;
    property C_Observaciones:string read FObservaciones write SetObservaciones;
    property C_Confirmado:boolean read FConfirmado write SetConfirmado;
    property C_FechaConfirma:string read FFechaConfirma write SetFechaConfirma;
    property C_FechaFallecimiento:string read FFechaFallecimiento write SetFechaFallecimiento;
    property C_NroActaDefuncion:variant read FNroActaDefuncion write SetNroActaDefuncion;
    property C_Tomo:string read FTomo write SetTomo;
    property C_Folio:string read FFolio write SetFolio;
    property C_Medico:string read FMedico write SetMedico;
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

constructor TParcelasServiciosSepelios.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=31;
end;

procedure TParcelasServiciosSepelios.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TParcelasServiciosSepelios.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TParcelasServiciosSepelios.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TParcelasServiciosSepelios.SetIdServicio(Value:variant);
begin
  FIdServicio:=Value;
end;

procedure TParcelasServiciosSepelios.SetCuif(Value:variant);
begin
  FCuif:=Value;
end;

procedure TParcelasServiciosSepelios.SetTitularServicio(Value:string);
begin
  FTitularServicio:=Value;
end;

procedure TParcelasServiciosSepelios.SetCuifInhumado(Value:variant);
begin
  FCuifInhumado:=Value;
end;

procedure TParcelasServiciosSepelios.SetNroAccion(Value:variant);
begin
  FNroAccion:=Value;
end;

procedure TParcelasServiciosSepelios.SetSector(Value:string);
begin
  FSector:=Value;
end;

procedure TParcelasServiciosSepelios.SetParcela(Value:variant);
begin
  FParcela:=Value;
end;

procedure TParcelasServiciosSepelios.SetFecha(Value:string);
begin
  FFecha:=Value;
end;

procedure TParcelasServiciosSepelios.SetNroTipoServicio(Value:variant);
begin
  FNroTipoServicio:=Value;
end;

procedure TParcelasServiciosSepelios.SetTotal(Value:variant);
begin
  FTotal:=Value;
end;

procedure TParcelasServiciosSepelios.SetCantCuotas(Value:variant);
begin
  FCantCuotas:=Value;
end;

procedure TParcelasServiciosSepelios.SetValorCuota(Value:variant);
begin
  FValorCuota:=Value;
end;

procedure TParcelasServiciosSepelios.SetObservaciones(Value:string);
begin
  FObservaciones:=Value;
end;

procedure TParcelasServiciosSepelios.SetConfirmado(Value:boolean);
begin
  FConfirmado:=Value;
end;

procedure TParcelasServiciosSepelios.SetFechaConfirma(Value:string);
begin
  FFechaConfirma:=Value;
end;

procedure TParcelasServiciosSepelios.SetFechaFallecimiento(Value:string);
begin
  FFechaFallecimiento:=Value;
end;

procedure TParcelasServiciosSepelios.SetNroActaDefuncion(Value:variant);
begin
  FNroActaDefuncion:=Value;
end;

procedure TParcelasServiciosSepelios.SetTomo(Value:string);
begin
  FTomo:=Value;
end;

procedure TParcelasServiciosSepelios.SetFolio(Value:string);
begin
  FFolio:=Value;
end;

procedure TParcelasServiciosSepelios.SetMedico(Value:string);
begin
  FMedico:=Value;
end;

procedure TParcelasServiciosSepelios.SetFecha_A(Value:string);
begin
  FFecha_A:=Value;
end;

procedure TParcelasServiciosSepelios.SetUsu_A(Value:variant);
begin
  FUsu_A:=Value;
end;

procedure TParcelasServiciosSepelios.SetIdformapago(Value:variant);
begin
  FIdformapago:=Value;
end;

procedure TParcelasServiciosSepelios.SetTipoformapago(Value:string);
begin
  FTipoformapago:=Value;
end;

procedure TParcelasServiciosSepelios.SetNroEntidad(Value:variant);
begin
  FNroEntidad:=Value;
end;

procedure TParcelasServiciosSepelios.SetNroTarjeta(Value:variant);
begin
  FNroTarjeta:=Value;
end;

procedure TParcelasServiciosSepelios.SetNroCheque(Value:variant);
begin
  FNroCheque:=Value;
end;

procedure TParcelasServiciosSepelios.SetSerie(Value:string);
begin
  FSerie:=Value;
end;

procedure TParcelasServiciosSepelios.SetTitular(Value:string);
begin
  FTitular:=Value;
end;

procedure TParcelasServiciosSepelios.SetNroComprobante(Value:variant);
begin
  FNroComprobante:=Value;
end;

procedure TParcelasServiciosSepelios.SetImporte(Value:variant);
begin
  FImporte:=Value;
end;

Function TParcelasServiciosSepelios.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_ParcelasServiciosSepeliosConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_IdServicio_PK:=DataSet.FieldByName('IdServicio').AsVariant;
  C_Cuif:=StrToInt64(DataSet.FieldByName('Cuif').AsString);
  C_TitularServicio:=DataSet.FieldByName('TitularServicio').AsString;
  C_CuifInhumado:=StrToInt64(DataSet.FieldByName('CuifInhumado').AsString);
  C_NroAccion:=DataSet.FieldByName('NroAccion').AsVariant;
  C_Sector:=DataSet.FieldByName('Sector').AsString;
  C_Parcela:=DataSet.FieldByName('Parcela').AsVariant;
  C_Fecha:=DataSet.FieldByName('Fecha').AsString;
  C_NroTipoServicio:=DataSet.FieldByName('NroTipoServicio').AsVariant;
  C_Total:=DataSet.FieldByName('Total').AsVariant;
  C_CantCuotas:=DataSet.FieldByName('CantCuotas').AsVariant;
  C_ValorCuota:=DataSet.FieldByName('ValorCuota').AsVariant;
  C_Observaciones:=DataSet.FieldByName('Observaciones').AsString;
  C_Confirmado:=DataSet.FieldByName('Confirmado').AsBoolean;
  C_FechaConfirma:=DataSet.FieldByName('FechaConfirma').AsString;
  C_FechaFallecimiento:=DataSet.FieldByName('FechaFallecimiento').AsString;
  C_NroActaDefuncion:=DataSet.FieldByName('NroActaDefuncion').AsVariant;
  C_Tomo:=DataSet.FieldByName('Tomo').AsString;
  C_Folio:=DataSet.FieldByName('Folio').AsString;
  C_Medico:=DataSet.FieldByName('Medico').AsString;
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
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TParcelasServiciosSepelios.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasServiciosSepeliosConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasServiciosSepelios.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasServiciosSepelios.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasServiciosSepelios.Agrega():boolean;
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
if (C_Cuif = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Cuif));
Parametros.Add(C_TitularServicio);
if (C_CuifInhumado = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuifInhumado));
if (C_NroAccion = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroAccion));
Parametros.Add(C_Sector);
if (C_Parcela = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Parcela));
Parametros.Add(C_Fecha);
if (C_NroTipoServicio = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroTipoServicio));
if (C_Total = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Total));
if (C_CantCuotas = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CantCuotas));
if (C_ValorCuota = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_ValorCuota));
Parametros.Add(C_Observaciones);
if C_Confirmado then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_FechaConfirma);
Parametros.Add(C_FechaFallecimiento);
if (C_NroActaDefuncion = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroActaDefuncion));
Parametros.Add(C_Tomo);
Parametros.Add(C_Folio);
Parametros.Add(C_Medico);
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

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasServiciosSepeliosInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TParcelasServiciosSepelios.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasServiciosSepeliosEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TParcelasServiciosSepelios.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_IdServicio_PK));
if (C_Cuif = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Cuif));
Parametros.Add(C_TitularServicio);
if (C_CuifInhumado = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuifInhumado));
if (C_NroAccion = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroAccion));
Parametros.Add(C_Sector);
if (C_Parcela = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Parcela));
Parametros.Add(C_Fecha);
if (C_NroTipoServicio = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroTipoServicio));
if (C_Total = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Total));
if (C_CantCuotas = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CantCuotas));
if (C_ValorCuota = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_ValorCuota));
Parametros.Add(C_Observaciones);
if C_Confirmado then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_FechaConfirma);
Parametros.Add(C_FechaFallecimiento);
if (C_NroActaDefuncion = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroActaDefuncion));
Parametros.Add(C_Tomo);
Parametros.Add(C_Folio);
Parametros.Add(C_Medico);
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


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasServiciosSepeliosModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

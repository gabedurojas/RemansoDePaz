unit ClaseParcelasCremaciones;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TParcelasCremaciones= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FIdCremacion:variant;
    FFechaCremacion:string;
    FNroSolicitud:string;
    FCuifSuscribe:variant;
    FCuifFallecido:variant;
    FEdadFallecido:variant;
    FFechaFallecimiento:string;
    FNroMedico:variant;
    FActadeDefuncion:variant;
    FNroTomo:variant;
    FNroFolio:variant;
    FRegCivil:string;
    FProvinciaRegCivil:string;
    FParentezco:string;
    FCuifTestigo:variant;
    FCuifTestigo2:variant;
    FObserv:string;
    FIdOrigen:variant;
    FNroOrden:string;
    FHoraCremacion:string;
    FFechaServicio:string;
    FHoraServicio:string;
    FIdformapago:variant;
    FTipoformapago:string;
    FNroEntidad:variant;
    FNroTarjeta:variant;
    FNroCheque:variant;
    FSerie:string;
    FTitular:string;
    FNroComprobante:variant;
    FImporte:variant;
    FNroDiagnostico:variant;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetIdCremacion(Value:variant);
    procedure SetFechaCremacion(Value:string);
    procedure SetNroSolicitud(Value:string);
    procedure SetCuifSuscribe(Value:variant);
    procedure SetCuifFallecido(Value:variant);
    procedure SetEdadFallecido(Value:variant);
    procedure SetFechaFallecimiento(Value:string);
    procedure SetNroMedico(Value:variant);
    procedure SetActadeDefuncion(Value:variant);
    procedure SetNroTomo(Value:variant);
    procedure SetNroFolio(Value:variant);
    procedure SetRegCivil(Value:string);
    procedure SetProvinciaRegCivil(Value:string);
    procedure SetParentezco(Value:string);
    procedure SetCuifTestigo(Value:variant);
    procedure SetCuifTestigo2(Value:variant);
    procedure SetObserv(Value:string);
    procedure SetIdOrigen(Value:variant);
    procedure SetNroOrden(Value:string);
    procedure SetHoraCremacion(Value:string);
    procedure SetFechaServicio(Value:string);
    procedure SetHoraServicio(Value:string);
    procedure SetIdformapago(Value:variant);
    procedure SetTipoformapago(Value:string);
    procedure SetNroEntidad(Value:variant);
    procedure SetNroTarjeta(Value:variant);
    procedure SetNroCheque(Value:variant);
    procedure SetSerie(Value:string);
    procedure SetTitular(Value:string);
    procedure SetNroComprobante(Value:variant);
    procedure SetImporte(Value:variant);
    procedure SetNroDiagnostico(Value:variant);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_IdCremacion_PK:variant read FIdCremacion write SetIdCremacion;
    property C_FechaCremacion:string read FFechaCremacion write SetFechaCremacion;
    property C_NroSolicitud:string read FNroSolicitud write SetNroSolicitud;
    property C_CuifSuscribe:variant read FCuifSuscribe write SetCuifSuscribe;
    property C_CuifFallecido:variant read FCuifFallecido write SetCuifFallecido;
    property C_EdadFallecido:variant read FEdadFallecido write SetEdadFallecido;
    property C_FechaFallecimiento:string read FFechaFallecimiento write SetFechaFallecimiento;
    property C_NroMedico:variant read FNroMedico write SetNroMedico;
    property C_ActadeDefuncion:variant read FActadeDefuncion write SetActadeDefuncion;
    property C_NroTomo:variant read FNroTomo write SetNroTomo;
    property C_NroFolio:variant read FNroFolio write SetNroFolio;
    property C_RegCivil:string read FRegCivil write SetRegCivil;
    property C_ProvinciaRegCivil:string read FProvinciaRegCivil write SetProvinciaRegCivil;
    property C_Parentezco:string read FParentezco write SetParentezco;
    property C_CuifTestigo:variant read FCuifTestigo write SetCuifTestigo;
    property C_CuifTestigo2:variant read FCuifTestigo2 write SetCuifTestigo2;
    property C_Observ:string read FObserv write SetObserv;
    property C_IdOrigen:variant read FIdOrigen write SetIdOrigen;
    property C_NroOrden:string read FNroOrden write SetNroOrden;
    property C_HoraCremacion:string read FHoraCremacion write SetHoraCremacion;
    property C_FechaServicio:string read FFechaServicio write SetFechaServicio;
    property C_HoraServicio:string read FHoraServicio write SetHoraServicio;
    property C_Idformapago:variant read FIdformapago write SetIdformapago;
    property C_Tipoformapago:string read FTipoformapago write SetTipoformapago;
    property C_NroEntidad:variant read FNroEntidad write SetNroEntidad;
    property C_NroTarjeta:variant read FNroTarjeta write SetNroTarjeta;
    property C_NroCheque:variant read FNroCheque write SetNroCheque;
    property C_Serie:string read FSerie write SetSerie;
    property C_Titular:string read FTitular write SetTitular;
    property C_NroComprobante:variant read FNroComprobante write SetNroComprobante;
    property C_Importe:variant read FImporte write SetImporte;
    property C_NroDiagnostico:variant read FNroDiagnostico write SetNroDiagnostico;

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

constructor TParcelasCremaciones.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=32;
end;

procedure TParcelasCremaciones.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TParcelasCremaciones.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TParcelasCremaciones.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TParcelasCremaciones.SetIdCremacion(Value:variant);
begin
  FIdCremacion:=Value;
end;

procedure TParcelasCremaciones.SetFechaCremacion(Value:string);
begin
  FFechaCremacion:=Value;
end;

procedure TParcelasCremaciones.SetNroSolicitud(Value:string);
begin
  FNroSolicitud:=Value;
end;

procedure TParcelasCremaciones.SetCuifSuscribe(Value:variant);
begin
  FCuifSuscribe:=Value;
end;

procedure TParcelasCremaciones.SetCuifFallecido(Value:variant);
begin
  FCuifFallecido:=Value;
end;

procedure TParcelasCremaciones.SetEdadFallecido(Value:variant);
begin
  FEdadFallecido:=Value;
end;

procedure TParcelasCremaciones.SetFechaFallecimiento(Value:string);
begin
  FFechaFallecimiento:=Value;
end;

procedure TParcelasCremaciones.SetNroMedico(Value:variant);
begin
  FNroMedico:=Value;
end;

procedure TParcelasCremaciones.SetActadeDefuncion(Value:variant);
begin
  FActadeDefuncion:=Value;
end;

procedure TParcelasCremaciones.SetNroTomo(Value:variant);
begin
  FNroTomo:=Value;
end;

procedure TParcelasCremaciones.SetNroFolio(Value:variant);
begin
  FNroFolio:=Value;
end;

procedure TParcelasCremaciones.SetRegCivil(Value:string);
begin
  FRegCivil:=Value;
end;

procedure TParcelasCremaciones.SetProvinciaRegCivil(Value:string);
begin
  FProvinciaRegCivil:=Value;
end;

procedure TParcelasCremaciones.SetParentezco(Value:string);
begin
  FParentezco:=Value;
end;

procedure TParcelasCremaciones.SetCuifTestigo(Value:variant);
begin
  FCuifTestigo:=Value;
end;

procedure TParcelasCremaciones.SetCuifTestigo2(Value:variant);
begin
  FCuifTestigo2:=Value;
end;

procedure TParcelasCremaciones.SetObserv(Value:string);
begin
  FObserv:=Value;
end;

procedure TParcelasCremaciones.SetIdOrigen(Value:variant);
begin
  FIdOrigen:=Value;
end;

procedure TParcelasCremaciones.SetNroOrden(Value:string);
begin
  FNroOrden:=Value;
end;

procedure TParcelasCremaciones.SetHoraCremacion(Value:string);
begin
  FHoraCremacion:=Value;
end;

procedure TParcelasCremaciones.SetFechaServicio(Value:string);
begin
  FFechaServicio:=Value;
end;

procedure TParcelasCremaciones.SetHoraServicio(Value:string);
begin
  FHoraServicio:=Value;
end;

procedure TParcelasCremaciones.SetIdformapago(Value:variant);
begin
  FIdformapago:=Value;
end;

procedure TParcelasCremaciones.SetTipoformapago(Value:string);
begin
  FTipoformapago:=Value;
end;

procedure TParcelasCremaciones.SetNroEntidad(Value:variant);
begin
  FNroEntidad:=Value;
end;

procedure TParcelasCremaciones.SetNroTarjeta(Value:variant);
begin
  FNroTarjeta:=Value;
end;

procedure TParcelasCremaciones.SetNroCheque(Value:variant);
begin
  FNroCheque:=Value;
end;

procedure TParcelasCremaciones.SetSerie(Value:string);
begin
  FSerie:=Value;
end;

procedure TParcelasCremaciones.SetTitular(Value:string);
begin
  FTitular:=Value;
end;

procedure TParcelasCremaciones.SetNroComprobante(Value:variant);
begin
  FNroComprobante:=Value;
end;

procedure TParcelasCremaciones.SetImporte(Value:variant);
begin
  FImporte:=Value;
end;

procedure TParcelasCremaciones.SetNroDiagnostico(Value:variant);
begin
  FNroDiagnostico:=Value;
end;

Function TParcelasCremaciones.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_ParcelasCremacionesConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_IdCremacion_PK:=DataSet.FieldByName('IdCremacion').AsVariant;
  C_FechaCremacion:=DataSet.FieldByName('FechaCremacion').AsString;
  C_NroSolicitud:=DataSet.FieldByName('NroSolicitud').AsString;
  C_CuifSuscribe:=StrToInt64(DataSet.FieldByName('CuifSuscribe').AsString);
  C_CuifFallecido:=StrToInt64(DataSet.FieldByName('CuifFallecido').AsString);
  C_EdadFallecido:=DataSet.FieldByName('EdadFallecido').AsVariant;
  C_FechaFallecimiento:=DataSet.FieldByName('FechaFallecimiento').AsString;
  C_NroMedico:=DataSet.FieldByName('NroMedico').AsVariant;
  C_ActadeDefuncion:=DataSet.FieldByName('ActadeDefuncion').AsVariant;
  C_NroTomo:=DataSet.FieldByName('NroTomo').AsVariant;
  C_NroFolio:=DataSet.FieldByName('NroFolio').AsVariant;
  C_RegCivil:=DataSet.FieldByName('RegCivil').AsString;
  C_ProvinciaRegCivil:=DataSet.FieldByName('ProvinciaRegCivil').AsString;
  C_Parentezco:=DataSet.FieldByName('Parentezco').AsString;
  C_CuifTestigo:=StrToInt64(DataSet.FieldByName('CuifTestigo').AsString);
  C_CuifTestigo2:=StrToInt64(DataSet.FieldByName('CuifTestigo2').AsString);
  C_Observ:=DataSet.FieldByName('Observ').AsString;
  C_IdOrigen:=DataSet.FieldByName('IdOrigen').AsVariant;
  C_NroOrden:=DataSet.FieldByName('NroOrden').AsString;
  C_HoraCremacion:=DataSet.FieldByName('HoraCremacion').AsString;
  C_FechaServicio:=DataSet.FieldByName('FechaServicio').AsString;
  C_HoraServicio:=DataSet.FieldByName('HoraServicio').AsString;
  C_Idformapago:=DataSet.FieldByName('Idformapago').AsVariant;
  C_Tipoformapago:=DataSet.FieldByName('Tipoformapago').AsString;
  C_NroEntidad:=DataSet.FieldByName('NroEntidad').AsVariant;
  C_NroTarjeta:=DataSet.FieldByName('NroTarjeta').AsVariant;
  C_NroCheque:=DataSet.FieldByName('NroCheque').AsVariant;
  C_Serie:=DataSet.FieldByName('Serie').AsString;
  C_Titular:=DataSet.FieldByName('Titular').AsString;
  C_NroComprobante:=DataSet.FieldByName('NroComprobante').AsVariant;
  C_Importe:=DataSet.FieldByName('Importe').AsVariant;
  C_NroDiagnostico:=DataSet.FieldByName('NroDiagnostico').AsVariant;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TParcelasCremaciones.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasCremacionesConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasCremaciones.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasCremaciones.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasCremaciones.Agrega():boolean;
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
Parametros.Add(C_FechaCremacion);
Parametros.Add(C_NroSolicitud);
if (C_CuifSuscribe = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuifSuscribe));
if (C_CuifFallecido = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuifFallecido));
if (C_EdadFallecido = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_EdadFallecido));
Parametros.Add(C_FechaFallecimiento);
if (C_NroMedico = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroMedico));
if (C_ActadeDefuncion = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_ActadeDefuncion));
if (C_NroTomo = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroTomo));
if (C_NroFolio = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroFolio));
Parametros.Add(C_RegCivil);
Parametros.Add(C_ProvinciaRegCivil);
Parametros.Add(C_Parentezco);
if (C_CuifTestigo = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuifTestigo));
if (C_CuifTestigo2 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuifTestigo2));
Parametros.Add(C_Observ);
if (C_IdOrigen = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdOrigen));
Parametros.Add(C_NroOrden);
Parametros.Add(C_HoraCremacion);
Parametros.Add(C_FechaServicio);
Parametros.Add(C_HoraServicio);
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
if (C_NroDiagnostico = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroDiagnostico));

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasCremacionesInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TParcelasCremaciones.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasCremacionesEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TParcelasCremaciones.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_IdCremacion_PK));
Parametros.Add(C_FechaCremacion);
Parametros.Add(C_NroSolicitud);
if (C_CuifSuscribe = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuifSuscribe));
if (C_CuifFallecido = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuifFallecido));
if (C_EdadFallecido = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_EdadFallecido));
Parametros.Add(C_FechaFallecimiento);
if (C_NroMedico = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroMedico));
if (C_ActadeDefuncion = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_ActadeDefuncion));
if (C_NroTomo = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroTomo));
if (C_NroFolio = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroFolio));
Parametros.Add(C_RegCivil);
Parametros.Add(C_ProvinciaRegCivil);
Parametros.Add(C_Parentezco);
if (C_CuifTestigo = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuifTestigo));
if (C_CuifTestigo2 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuifTestigo2));
Parametros.Add(C_Observ);
if (C_IdOrigen = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdOrigen));
Parametros.Add(C_NroOrden);
Parametros.Add(C_HoraCremacion);
Parametros.Add(C_FechaServicio);
Parametros.Add(C_HoraServicio);
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
if (C_NroDiagnostico = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroDiagnostico));


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasCremacionesModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

unit ClaseParcelasInhumados;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TParcelasInhumados= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FIdHabitante:variant;
    FNroAccion:variant;
    FNivel:variant;
    FPosicion:variant;
    FObjeto:string;
    FCuifTitular:variant;
    FCuifFallecido:variant;
    FCuifSolicitante:variant;
    FCuifResponsable:variant;
    FFechaIngreso:string;
    FFechaFallecimiento:string;
    FHoraFallecimiento:string;
    FNroDiagnostico:variant;
    FHoraSalida:string;
    FHoraLlegada:string;
    FActaInhumado:variant;
    FIdServicio:variant;
    FNroSeccion:variant;
    FNroActa:variant;
    FNroFolio:variant;
    FNroTomo:string;
    FNroMedico:variant;
    FPadreFallecido:string;
    FMadreFallecido:string;
    FFecActaDefuncion:string;
    FUsu_A:variant;
    FFecha_A:string;
    FUsu_M:variant;
    FFecha_M:string;
    FConError:boolean;
    FNroActaInhumado:variant;
    FFechaInhumacion:string;
    FConfirmado:boolean;
    FUsu_Conf:variant;
    FFecha_Conf:string;
    FAnulado:boolean;
    FUsu_Anula:variant;
    FFecha_Anula:string;
    FMotivoAnula:string;
    FDetalleObjeto:string;
    FIdObserv:variant;
    FPlaca:boolean;
    FObservPlaca:string;
    FTipoServicio:variant;
    FNroOrdenServicio:variant;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetIdHabitante(Value:variant);
    procedure SetNroAccion(Value:variant);
    procedure SetNivel(Value:variant);
    procedure SetPosicion(Value:variant);
    procedure SetObjeto(Value:string);
    procedure SetCuifTitular(Value:variant);
    procedure SetCuifFallecido(Value:variant);
    procedure SetCuifSolicitante(Value:variant);
    procedure SetCuifResponsable(Value:variant);
    procedure SetFechaIngreso(Value:string);
    procedure SetFechaFallecimiento(Value:string);
    procedure SetHoraFallecimiento(Value:string);
    procedure SetNroDiagnostico(Value:variant);
    procedure SetHoraSalida(Value:string);
    procedure SetHoraLlegada(Value:string);
    procedure SetActaInhumado(Value:variant);
    procedure SetIdServicio(Value:variant);
    procedure SetNroSeccion(Value:variant);
    procedure SetNroActa(Value:variant);
    procedure SetNroFolio(Value:variant);
    procedure SetNroTomo(Value:string);
    procedure SetNroMedico(Value:variant);
    procedure SetPadreFallecido(Value:string);
    procedure SetMadreFallecido(Value:string);
    procedure SetFecActaDefuncion(Value:string);
    procedure SetUsu_A(Value:variant);
    procedure SetFecha_A(Value:string);
    procedure SetUsu_M(Value:variant);
    procedure SetFecha_M(Value:string);
    procedure SetConError(Value:boolean);
    procedure SetNroActaInhumado(Value:variant);
    procedure SetFechaInhumacion(Value:string);
    procedure SetConfirmado(Value:boolean);
    procedure SetUsu_Conf(Value:variant);
    procedure SetFecha_Conf(Value:string);
    procedure SetAnulado(Value:boolean);
    procedure SetUsu_Anula(Value:variant);
    procedure SetFecha_Anula(Value:string);
    procedure SetMotivoAnula(Value:string);
    procedure SetDetalleObjeto(Value:string);
    procedure SetIdObserv(Value:variant);
    procedure SetPlaca(Value:boolean);
    procedure SetObservPlaca(Value:string);
    procedure SetTipoServicio(Value:variant);
    procedure SetNroOrdenServicio(Value:variant);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_IdHabitante_PK:variant read FIdHabitante write SetIdHabitante;
    property C_NroAccion_IX1:variant read FNroAccion write SetNroAccion;
    property C_Nivel_IX2:variant read FNivel write SetNivel;
    property C_Posicion_IX3:variant read FPosicion write SetPosicion;
    property C_Objeto_IX4:string read FObjeto write SetObjeto;
    property C_CuifTitular_IX5:variant read FCuifTitular write SetCuifTitular;
    property C_CuifFallecido_IX6:variant read FCuifFallecido write SetCuifFallecido;
    property C_CuifSolicitante:variant read FCuifSolicitante write SetCuifSolicitante;
    property C_CuifResponsable:variant read FCuifResponsable write SetCuifResponsable;
    property C_FechaIngreso:string read FFechaIngreso write SetFechaIngreso;
    property C_FechaFallecimiento:string read FFechaFallecimiento write SetFechaFallecimiento;
    property C_HoraFallecimiento:string read FHoraFallecimiento write SetHoraFallecimiento;
    property C_NroDiagnostico_IX7:variant read FNroDiagnostico write SetNroDiagnostico;
    property C_HoraSalida:string read FHoraSalida write SetHoraSalida;
    property C_HoraLlegada:string read FHoraLlegada write SetHoraLlegada;
    property C_ActaInhumado_IX8:variant read FActaInhumado write SetActaInhumado;
    property C_IdServicio_IX9:variant read FIdServicio write SetIdServicio;
    property C_NroSeccion:variant read FNroSeccion write SetNroSeccion;
    property C_NroActa_IX10:variant read FNroActa write SetNroActa;
    property C_NroFolio:variant read FNroFolio write SetNroFolio;
    property C_NroTomo:string read FNroTomo write SetNroTomo;
    property C_NroMedico_IX11:variant read FNroMedico write SetNroMedico;
    property C_PadreFallecido:string read FPadreFallecido write SetPadreFallecido;
    property C_MadreFallecido:string read FMadreFallecido write SetMadreFallecido;
    property C_FecActaDefuncion:string read FFecActaDefuncion write SetFecActaDefuncion;
    property C_Usu_A:variant read FUsu_A write SetUsu_A;
    property C_Fecha_A:string read FFecha_A write SetFecha_A;
    property C_Usu_M:variant read FUsu_M write SetUsu_M;
    property C_Fecha_M:string read FFecha_M write SetFecha_M;
    property C_ConError:boolean read FConError write SetConError;
    property C_NroActaInhumado:variant read FNroActaInhumado write SetNroActaInhumado;
    property C_FechaInhumacion:string read FFechaInhumacion write SetFechaInhumacion;
    property C_Confirmado:boolean read FConfirmado write SetConfirmado;
    property C_Usu_Conf:variant read FUsu_Conf write SetUsu_Conf;
    property C_Fecha_Conf:string read FFecha_Conf write SetFecha_Conf;
    property C_Anulado:boolean read FAnulado write SetAnulado;
    property C_Usu_Anula:variant read FUsu_Anula write SetUsu_Anula;
    property C_Fecha_Anula:string read FFecha_Anula write SetFecha_Anula;
    property C_MotivoAnula:string read FMotivoAnula write SetMotivoAnula;
    property C_DetalleObjeto:string read FDetalleObjeto write SetDetalleObjeto;
    property C_IdObserv:variant read FIdObserv write SetIdObserv;
    property C_Placa:boolean read FPlaca write SetPlaca;
    property C_ObservPlaca:string read FObservPlaca write SetObservPlaca;
    property C_TipoServicio:variant read FTipoServicio write SetTipoServicio;
    property C_NroOrdenServicio:variant read FNroOrdenServicio write SetNroOrdenServicio;

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

constructor TParcelasInhumados.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=45;
end;

procedure TParcelasInhumados.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TParcelasInhumados.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TParcelasInhumados.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TParcelasInhumados.SetIdHabitante(Value:variant);
begin
  FIdHabitante:=Value;
end;

procedure TParcelasInhumados.SetNroAccion(Value:variant);
begin
  FNroAccion:=Value;
end;

procedure TParcelasInhumados.SetNivel(Value:variant);
begin
  FNivel:=Value;
end;

procedure TParcelasInhumados.SetPosicion(Value:variant);
begin
  FPosicion:=Value;
end;

procedure TParcelasInhumados.SetObjeto(Value:string);
begin
  FObjeto:=Value;
end;

procedure TParcelasInhumados.SetCuifTitular(Value:variant);
begin
  FCuifTitular:=Value;
end;

procedure TParcelasInhumados.SetCuifFallecido(Value:variant);
begin
  FCuifFallecido:=Value;
end;

procedure TParcelasInhumados.SetCuifSolicitante(Value:variant);
begin
  FCuifSolicitante:=Value;
end;

procedure TParcelasInhumados.SetCuifResponsable(Value:variant);
begin
  FCuifResponsable:=Value;
end;

procedure TParcelasInhumados.SetFechaIngreso(Value:string);
begin
  FFechaIngreso:=Value;
end;

procedure TParcelasInhumados.SetFechaFallecimiento(Value:string);
begin
  FFechaFallecimiento:=Value;
end;

procedure TParcelasInhumados.SetHoraFallecimiento(Value:string);
begin
  FHoraFallecimiento:=Value;
end;

procedure TParcelasInhumados.SetNroDiagnostico(Value:variant);
begin
  FNroDiagnostico:=Value;
end;

procedure TParcelasInhumados.SetHoraSalida(Value:string);
begin
  FHoraSalida:=Value;
end;

procedure TParcelasInhumados.SetHoraLlegada(Value:string);
begin
  FHoraLlegada:=Value;
end;

procedure TParcelasInhumados.SetActaInhumado(Value:variant);
begin
  FActaInhumado:=Value;
end;

procedure TParcelasInhumados.SetIdServicio(Value:variant);
begin
  FIdServicio:=Value;
end;

procedure TParcelasInhumados.SetNroSeccion(Value:variant);
begin
  FNroSeccion:=Value;
end;

procedure TParcelasInhumados.SetNroActa(Value:variant);
begin
  FNroActa:=Value;
end;

procedure TParcelasInhumados.SetNroFolio(Value:variant);
begin
  FNroFolio:=Value;
end;

procedure TParcelasInhumados.SetNroTomo(Value:string);
begin
  FNroTomo:=Value;
end;

procedure TParcelasInhumados.SetNroMedico(Value:variant);
begin
  FNroMedico:=Value;
end;

procedure TParcelasInhumados.SetPadreFallecido(Value:string);
begin
  FPadreFallecido:=Value;
end;

procedure TParcelasInhumados.SetMadreFallecido(Value:string);
begin
  FMadreFallecido:=Value;
end;

procedure TParcelasInhumados.SetFecActaDefuncion(Value:string);
begin
  FFecActaDefuncion:=Value;
end;

procedure TParcelasInhumados.SetUsu_A(Value:variant);
begin
  FUsu_A:=Value;
end;

procedure TParcelasInhumados.SetFecha_A(Value:string);
begin
  FFecha_A:=Value;
end;

procedure TParcelasInhumados.SetUsu_M(Value:variant);
begin
  FUsu_M:=Value;
end;

procedure TParcelasInhumados.SetFecha_M(Value:string);
begin
  FFecha_M:=Value;
end;

procedure TParcelasInhumados.SetConError(Value:boolean);
begin
  FConError:=Value;
end;

procedure TParcelasInhumados.SetNroActaInhumado(Value:variant);
begin
  FNroActaInhumado:=Value;
end;

procedure TParcelasInhumados.SetFechaInhumacion(Value:string);
begin
  FFechaInhumacion:=Value;
end;

procedure TParcelasInhumados.SetConfirmado(Value:boolean);
begin
  FConfirmado:=Value;
end;

procedure TParcelasInhumados.SetUsu_Conf(Value:variant);
begin
  FUsu_Conf:=Value;
end;

procedure TParcelasInhumados.SetFecha_Conf(Value:string);
begin
  FFecha_Conf:=Value;
end;

procedure TParcelasInhumados.SetAnulado(Value:boolean);
begin
  FAnulado:=Value;
end;

procedure TParcelasInhumados.SetUsu_Anula(Value:variant);
begin
  FUsu_Anula:=Value;
end;

procedure TParcelasInhumados.SetFecha_Anula(Value:string);
begin
  FFecha_Anula:=Value;
end;

procedure TParcelasInhumados.SetMotivoAnula(Value:string);
begin
  FMotivoAnula:=Value;
end;

procedure TParcelasInhumados.SetDetalleObjeto(Value:string);
begin
  FDetalleObjeto:=Value;
end;

procedure TParcelasInhumados.SetIdObserv(Value:variant);
begin
  FIdObserv:=Value;
end;

procedure TParcelasInhumados.SetPlaca(Value:boolean);
begin
  FPlaca:=Value;
end;

procedure TParcelasInhumados.SetObservPlaca(Value:string);
begin
  FObservPlaca:=Value;
end;

procedure TParcelasInhumados.SetTipoServicio(Value:variant);
begin
  FTipoServicio:=Value;
end;

procedure TParcelasInhumados.SetNroOrdenServicio(Value:variant);
begin
  FNroOrdenServicio:=Value;
end;

Function TParcelasInhumados.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_ParcelasInhumadosConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_IdHabitante_PK:=DataSet.FieldByName('IdHabitante').AsVariant;
  C_NroAccion_IX1:=DataSet.FieldByName('NroAccion').AsVariant;
  C_Nivel_IX2:=DataSet.FieldByName('Nivel').AsVariant;
  C_Posicion_IX3:=DataSet.FieldByName('Posicion').AsVariant;
  C_Objeto_IX4:=DataSet.FieldByName('Objeto').AsString;
  C_CuifTitular_IX5:=StrToInt64(DataSet.FieldByName('CuifTitular').AsString);
  C_CuifFallecido_IX6:=StrToInt64(DataSet.FieldByName('CuifFallecido').AsString);
  C_CuifSolicitante:=StrToInt64(DataSet.FieldByName('CuifSolicitante').AsString);
  C_CuifResponsable:=StrToInt64(DataSet.FieldByName('CuifResponsable').AsString);
  C_FechaIngreso:=DataSet.FieldByName('FechaIngreso').AsString;
  C_FechaFallecimiento:=DataSet.FieldByName('FechaFallecimiento').AsString;
  C_HoraFallecimiento:=DataSet.FieldByName('HoraFallecimiento').AsString;
  C_NroDiagnostico_IX7:=DataSet.FieldByName('NroDiagnostico').AsVariant;
  C_HoraSalida:=DataSet.FieldByName('HoraSalida').AsString;
  C_HoraLlegada:=DataSet.FieldByName('HoraLlegada').AsString;
  C_ActaInhumado_IX8:=DataSet.FieldByName('ActaInhumado').AsVariant;
  C_IdServicio_IX9:=DataSet.FieldByName('IdServicio').AsVariant;
  C_NroSeccion:=DataSet.FieldByName('NroSeccion').AsVariant;
  C_NroActa_IX10:=DataSet.FieldByName('NroActa').AsVariant;
  C_NroFolio:=DataSet.FieldByName('NroFolio').AsVariant;
  C_NroTomo:=DataSet.FieldByName('NroTomo').AsString;
  C_NroMedico_IX11:=DataSet.FieldByName('NroMedico').AsVariant;
  C_PadreFallecido:=DataSet.FieldByName('PadreFallecido').AsString;
  C_MadreFallecido:=DataSet.FieldByName('MadreFallecido').AsString;
  C_FecActaDefuncion:=DataSet.FieldByName('FecActaDefuncion').AsString;
  C_Usu_A:=DataSet.FieldByName('Usu_A').AsVariant;
  C_Fecha_A:=DataSet.FieldByName('Fecha_A').AsString;
  C_Usu_M:=DataSet.FieldByName('Usu_M').AsVariant;
  C_Fecha_M:=DataSet.FieldByName('Fecha_M').AsString;
  C_ConError:=DataSet.FieldByName('ConError').AsBoolean;
  C_NroActaInhumado:=DataSet.FieldByName('NroActaInhumado').AsVariant;
  C_FechaInhumacion:=DataSet.FieldByName('FechaInhumacion').AsString;
  C_Confirmado:=DataSet.FieldByName('Confirmado').AsBoolean;
  C_Usu_Conf:=DataSet.FieldByName('Usu_Conf').AsVariant;
  C_Fecha_Conf:=DataSet.FieldByName('Fecha_Conf').AsString;
  C_Anulado:=DataSet.FieldByName('Anulado').AsBoolean;
  C_Usu_Anula:=DataSet.FieldByName('Usu_Anula').AsVariant;
  C_Fecha_Anula:=DataSet.FieldByName('Fecha_Anula').AsString;
  C_MotivoAnula:=DataSet.FieldByName('MotivoAnula').AsString;
  C_DetalleObjeto:=DataSet.FieldByName('DetalleObjeto').AsString;
  C_IdObserv:=DataSet.FieldByName('IdObserv').AsVariant;
  C_Placa:=DataSet.FieldByName('Placa').AsBoolean;
  C_ObservPlaca:=DataSet.FieldByName('ObservPlaca').AsString;
  C_TipoServicio:=DataSet.FieldByName('TipoServicio').AsVariant;
  C_NroOrdenServicio:=DataSet.FieldByName('NroOrdenServicio').AsVariant;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TParcelasInhumados.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasInhumadosConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasInhumados.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasInhumados.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasInhumados.Agrega():boolean;
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
if (C_NroAccion_IX1 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroAccion_IX1));
if (C_Nivel_IX2 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Nivel_IX2));
if (C_Posicion_IX3 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Posicion_IX3));
Parametros.Add(C_Objeto_IX4);
if (C_CuifTitular_IX5 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuifTitular_IX5));
if (C_CuifFallecido_IX6 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuifFallecido_IX6));
if (C_CuifSolicitante = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuifSolicitante));
if (C_CuifResponsable = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuifResponsable));
Parametros.Add(C_FechaIngreso);
Parametros.Add(C_FechaFallecimiento);
Parametros.Add(C_HoraFallecimiento);
if (C_NroDiagnostico_IX7 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroDiagnostico_IX7));
Parametros.Add(C_HoraSalida);
Parametros.Add(C_HoraLlegada);
if (C_ActaInhumado_IX8 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_ActaInhumado_IX8));
if (C_IdServicio_IX9 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdServicio_IX9));
if (C_NroSeccion = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroSeccion));
if (C_NroActa_IX10 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroActa_IX10));
if (C_NroFolio = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroFolio));
Parametros.Add(C_NroTomo);
if (C_NroMedico_IX11 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroMedico_IX11));
Parametros.Add(C_PadreFallecido);
Parametros.Add(C_MadreFallecido);
Parametros.Add(C_FecActaDefuncion);
if (C_Usu_A = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_A));
if (C_Usu_M = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_M));
Parametros.Add(C_Fecha_M);
if C_ConError then Parametros.Add('1')
else Parametros.Add('0');
if (C_NroActaInhumado = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroActaInhumado));
Parametros.Add(C_FechaInhumacion);
if C_Confirmado then Parametros.Add('1')
else Parametros.Add('0');
if (C_Usu_Conf = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_Conf));
Parametros.Add(C_Fecha_Conf);
if C_Anulado then Parametros.Add('1')
else Parametros.Add('0');
if (C_Usu_Anula = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_Anula));
Parametros.Add(C_Fecha_Anula);
Parametros.Add(C_MotivoAnula);
Parametros.Add(C_DetalleObjeto);
if (C_IdObserv = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdObserv));
if C_Placa then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_ObservPlaca);
if (C_TipoServicio = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_TipoServicio));
if (C_NroOrdenServicio = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroOrdenServicio));

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasInhumadosInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TParcelasInhumados.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasInhumadosEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TParcelasInhumados.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_IdHabitante_PK));
if (C_NroAccion_IX1 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroAccion_IX1));
if (C_Nivel_IX2 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Nivel_IX2));
if (C_Posicion_IX3 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Posicion_IX3));
Parametros.Add(C_Objeto_IX4);
if (C_CuifTitular_IX5 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuifTitular_IX5));
if (C_CuifFallecido_IX6 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuifFallecido_IX6));
if (C_CuifSolicitante = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuifSolicitante));
if (C_CuifResponsable = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuifResponsable));
Parametros.Add(C_FechaIngreso);
Parametros.Add(C_FechaFallecimiento);
Parametros.Add(C_HoraFallecimiento);
if (C_NroDiagnostico_IX7 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroDiagnostico_IX7));
Parametros.Add(C_HoraSalida);
Parametros.Add(C_HoraLlegada);
if (C_ActaInhumado_IX8 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_ActaInhumado_IX8));
if (C_IdServicio_IX9 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdServicio_IX9));
if (C_NroSeccion = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroSeccion));
if (C_NroActa_IX10 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroActa_IX10));
if (C_NroFolio = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroFolio));
Parametros.Add(C_NroTomo);
if (C_NroMedico_IX11 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroMedico_IX11));
Parametros.Add(C_PadreFallecido);
Parametros.Add(C_MadreFallecido);
Parametros.Add(C_FecActaDefuncion);
if (C_Usu_M = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_M));
Parametros.Add(C_Fecha_M);
if C_ConError then Parametros.Add('1')
else Parametros.Add('0');
if (C_NroActaInhumado = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroActaInhumado));
Parametros.Add(C_FechaInhumacion);
if C_Confirmado then Parametros.Add('1')
else Parametros.Add('0');
if (C_Usu_Conf = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_Conf));
Parametros.Add(C_Fecha_Conf);
if C_Anulado then Parametros.Add('1')
else Parametros.Add('0');
if (C_Usu_Anula = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_Anula));
Parametros.Add(C_Fecha_Anula);
Parametros.Add(C_MotivoAnula);
Parametros.Add(C_DetalleObjeto);
if (C_IdObserv = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdObserv));
if C_Placa then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_ObservPlaca);
if (C_TipoServicio = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_TipoServicio));
if (C_NroOrdenServicio = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroOrdenServicio));


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasInhumadosModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

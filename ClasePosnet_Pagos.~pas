unit ClasePosnet_Pagos;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TPosnet_Pagos= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FIdPagoPosnet:variant;
    FIdComprobanteCobrado:variant;
    FNroTarjeta:variant;
    FIdTerminal:variant;
    FLote:variant;
    FTicket:variant;
    FImporte:variant;
    FFechaHora:string;
    FAnulado:boolean;
    FUsuAnula:variant;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetIdPagoPosnet(Value:variant);
    procedure SetIdComprobanteCobrado(Value:variant);
    procedure SetNroTarjeta(Value:variant);
    procedure SetIdTerminal(Value:variant);
    procedure SetLote(Value:variant);
    procedure SetTicket(Value:variant);
    procedure SetImporte(Value:variant);
    procedure SetFechaHora(Value:string);
    procedure SetAnulado(Value:boolean);
    procedure SetUsuAnula(Value:variant);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_IdPagoPosnet_PK:variant read FIdPagoPosnet write SetIdPagoPosnet;
    property C_IdComprobanteCobrado:variant read FIdComprobanteCobrado write SetIdComprobanteCobrado;
    property C_NroTarjeta:variant read FNroTarjeta write SetNroTarjeta;
    property C_IdTerminal:variant read FIdTerminal write SetIdTerminal;
    property C_Lote:variant read FLote write SetLote;
    property C_Ticket:variant read FTicket write SetTicket;
    property C_Importe:variant read FImporte write SetImporte;
    property C_FechaHora:string read FFechaHora write SetFechaHora;
    property C_Anulado:boolean read FAnulado write SetAnulado;
    property C_UsuAnula:variant read FUsuAnula write SetUsuAnula;

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

constructor TPosnet_Pagos.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=10;
end;

procedure TPosnet_Pagos.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TPosnet_Pagos.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TPosnet_Pagos.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TPosnet_Pagos.SetIdPagoPosnet(Value:variant);
begin
  FIdPagoPosnet:=Value;
end;

procedure TPosnet_Pagos.SetIdComprobanteCobrado(Value:variant);
begin
  FIdComprobanteCobrado:=Value;
end;

procedure TPosnet_Pagos.SetNroTarjeta(Value:variant);
begin
  FNroTarjeta:=Value;
end;

procedure TPosnet_Pagos.SetIdTerminal(Value:variant);
begin
  FIdTerminal:=Value;
end;

procedure TPosnet_Pagos.SetLote(Value:variant);
begin
  FLote:=Value;
end;

procedure TPosnet_Pagos.SetTicket(Value:variant);
begin
  FTicket:=Value;
end;

procedure TPosnet_Pagos.SetImporte(Value:variant);
begin
  FImporte:=Value;
end;

procedure TPosnet_Pagos.SetFechaHora(Value:string);
begin
  FFechaHora:=Value;
end;

procedure TPosnet_Pagos.SetAnulado(Value:boolean);
begin
  FAnulado:=Value;
end;

procedure TPosnet_Pagos.SetUsuAnula(Value:variant);
begin
  FUsuAnula:=Value;
end;

Function TPosnet_Pagos.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_Posnet_PagosConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_IdPagoPosnet_PK:=DataSet.FieldByName('IdPagoPosnet').AsVariant;
  C_IdComprobanteCobrado:=DataSet.FieldByName('IdComprobanteCobrado').AsVariant;
  C_NroTarjeta:=DataSet.FieldByName('NroTarjeta').AsVariant;
  C_IdTerminal:=DataSet.FieldByName('IdTerminal').AsVariant;
  C_Lote:=DataSet.FieldByName('Lote').AsVariant;
  C_Ticket:=DataSet.FieldByName('Ticket').AsVariant;
  C_Importe:=DataSet.FieldByName('Importe').AsVariant;
  C_FechaHora:=DataSet.FieldByName('FechaHora').AsString;
  C_Anulado:=DataSet.FieldByName('Anulado').AsBoolean;
  C_UsuAnula:=DataSet.FieldByName('UsuAnula').AsVariant;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TPosnet_Pagos.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_Posnet_PagosConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TPosnet_Pagos.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TPosnet_Pagos.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TPosnet_Pagos.Agrega():boolean;
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
if (C_IdComprobanteCobrado = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdComprobanteCobrado));
if (C_NroTarjeta = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroTarjeta));
if (C_IdTerminal = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdTerminal));
if (C_Lote = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Lote));
if (C_Ticket = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Ticket));
if (C_Importe = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Importe));
Parametros.Add(C_FechaHora);
if C_Anulado then Parametros.Add('1')
else Parametros.Add('0');
if (C_UsuAnula = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_UsuAnula));

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_Posnet_PagosInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TPosnet_Pagos.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_Posnet_PagosEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TPosnet_Pagos.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_IdPagoPosnet_PK));
if (C_IdComprobanteCobrado = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdComprobanteCobrado));
if (C_NroTarjeta = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroTarjeta));
if (C_IdTerminal = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdTerminal));
if (C_Lote = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Lote));
if (C_Ticket = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Ticket));
if (C_Importe = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Importe));
Parametros.Add(C_FechaHora);
if C_Anulado then Parametros.Add('1')
else Parametros.Add('0');
if (C_UsuAnula = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_UsuAnula));


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_Posnet_PagosModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

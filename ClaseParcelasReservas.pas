unit ClaseParcelasReservas;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TParcelasReservas= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FIdReserva:variant;
    Fcuif:variant;
    FSector:string;
    FNroAccion:variant;
    FFechadesde:string;
    FFechahasta:string;
    FActivo:boolean;
    FUsu_a:variant;
    FFecAlta:string;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetIdReserva(Value:variant);
    procedure Setcuif(Value:variant);
    procedure SetSector(Value:string);
    procedure SetNroAccion(Value:variant);
    procedure SetFechadesde(Value:string);
    procedure SetFechahasta(Value:string);
    procedure SetActivo(Value:boolean);
    procedure SetUsu_a(Value:variant);
    procedure SetFecAlta(Value:string);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_IdReserva_PK:variant read FIdReserva write SetIdReserva;
    property C_cuif:variant read Fcuif write Setcuif;
    property C_Sector:string read FSector write SetSector;
    property C_NroAccion:variant read FNroAccion write SetNroAccion;
    property C_Fechadesde:string read FFechadesde write SetFechadesde;
    property C_Fechahasta:string read FFechahasta write SetFechahasta;
    property C_Activo:boolean read FActivo write SetActivo;
    property C_Usu_a:variant read FUsu_a write SetUsu_a;
    property C_FecAlta:string read FFecAlta write SetFecAlta;

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

constructor TParcelasReservas.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=9;
end;

procedure TParcelasReservas.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TParcelasReservas.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TParcelasReservas.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TParcelasReservas.SetIdReserva(Value:variant);
begin
  FIdReserva:=Value;
end;

procedure TParcelasReservas.Setcuif(Value:variant);
begin
  Fcuif:=Value;
end;

procedure TParcelasReservas.SetSector(Value:string);
begin
  FSector:=Value;
end;

procedure TParcelasReservas.SetNroAccion(Value:variant);
begin
  FNroAccion:=Value;
end;

procedure TParcelasReservas.SetFechadesde(Value:string);
begin
  FFechadesde:=Value;
end;

procedure TParcelasReservas.SetFechahasta(Value:string);
begin
  FFechahasta:=Value;
end;

procedure TParcelasReservas.SetActivo(Value:boolean);
begin
  FActivo:=Value;
end;

procedure TParcelasReservas.SetUsu_a(Value:variant);
begin
  FUsu_a:=Value;
end;

procedure TParcelasReservas.SetFecAlta(Value:string);
begin
  FFecAlta:=Value;
end;

Function TParcelasReservas.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_ParcelasReservasConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_IdReserva_PK:=DataSet.FieldByName('IdReserva').AsVariant;
  C_cuif:=StrToInt64(DataSet.FieldByName('cuif').AsString);
  C_Sector:=DataSet.FieldByName('Sector').AsString;
  C_NroAccion:=DataSet.FieldByName('NroAccion').AsVariant;
  C_Fechadesde:=DataSet.FieldByName('Fechadesde').AsString;
  C_Fechahasta:=DataSet.FieldByName('Fechahasta').AsString;
  C_Activo:=DataSet.FieldByName('Activo').AsBoolean;
  C_Usu_a:=DataSet.FieldByName('Usu_a').AsVariant;
  C_FecAlta:=DataSet.FieldByName('FecAlta').AsString;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TParcelasReservas.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasReservasConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasReservas.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasReservas.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasReservas.Agrega():boolean;
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
if (C_cuif = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_cuif));
Parametros.Add(C_Sector);
if (C_NroAccion = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroAccion));
Parametros.Add(C_Fechadesde);
Parametros.Add(C_Fechahasta);
if C_Activo then Parametros.Add('1')
else Parametros.Add('0');
if (C_Usu_a = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_a));
Parametros.Add(C_FecAlta);

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasReservasInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TParcelasReservas.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasReservasEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TParcelasReservas.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_IdReserva_PK));
if (C_cuif = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_cuif));
Parametros.Add(C_Sector);
if (C_NroAccion = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroAccion));
Parametros.Add(C_Fechadesde);
Parametros.Add(C_Fechahasta);
if C_Activo then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_FecAlta);


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasReservasModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

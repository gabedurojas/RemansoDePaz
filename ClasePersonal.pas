unit ClasePersonal;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TPersonal= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FId:variant;
    FCuif:variant;
    FFechaIngreso:string;
    FFechaEgreso:string;
    FObservaciones:string;
    FUsu_A:variant;
    FFecha_A:string;
    FUsu_M:variant;
    FFecha_M:string;
    FNroGestor:variant;
    FMostrar:boolean;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetId(Value:variant);
    procedure SetCuif(Value:variant);
    procedure SetFechaIngreso(Value:string);
    procedure SetFechaEgreso(Value:string);
    procedure SetObservaciones(Value:string);
    procedure SetUsu_A(Value:variant);
    procedure SetFecha_A(Value:string);
    procedure SetUsu_M(Value:variant);
    procedure SetFecha_M(Value:string);
    procedure SetNroGestor(Value:variant);
    procedure SetMostrar(Value:boolean);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_Id:variant read FId write SetId;
    property C_Cuif_PK:variant read FCuif write SetCuif;
    property C_FechaIngreso_IX1:string read FFechaIngreso write SetFechaIngreso;
    property C_FechaEgreso_IX2:string read FFechaEgreso write SetFechaEgreso;
    property C_Observaciones:string read FObservaciones write SetObservaciones;
    property C_Usu_A:variant read FUsu_A write SetUsu_A;
    property C_Fecha_A:string read FFecha_A write SetFecha_A;
    property C_Usu_M:variant read FUsu_M write SetUsu_M;
    property C_Fecha_M:string read FFecha_M write SetFecha_M;
    property C_NroGestor:variant read FNroGestor write SetNroGestor;
    property C_Mostrar:boolean read FMostrar write SetMostrar;

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

constructor TPersonal.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=11;
end;

procedure TPersonal.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TPersonal.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TPersonal.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TPersonal.SetId(Value:variant);
begin
  FId:=Value;
end;

procedure TPersonal.SetCuif(Value:variant);
begin
  FCuif:=Value;
end;

procedure TPersonal.SetFechaIngreso(Value:string);
begin
  FFechaIngreso:=Value;
end;

procedure TPersonal.SetFechaEgreso(Value:string);
begin
  FFechaEgreso:=Value;
end;

procedure TPersonal.SetObservaciones(Value:string);
begin
  FObservaciones:=Value;
end;

procedure TPersonal.SetUsu_A(Value:variant);
begin
  FUsu_A:=Value;
end;

procedure TPersonal.SetFecha_A(Value:string);
begin
  FFecha_A:=Value;
end;

procedure TPersonal.SetUsu_M(Value:variant);
begin
  FUsu_M:=Value;
end;

procedure TPersonal.SetFecha_M(Value:string);
begin
  FFecha_M:=Value;
end;

procedure TPersonal.SetNroGestor(Value:variant);
begin
  FNroGestor:=Value;
end;

procedure TPersonal.SetMostrar(Value:boolean);
begin
  FMostrar:=Value;
end;

Function TPersonal.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_PersonalConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_Id:=DataSet.FieldByName('Id').AsVariant;
  C_Cuif_PK:=StrToInt64(DataSet.FieldByName('Cuif').AsString);
  C_FechaIngreso_IX1:=DataSet.FieldByName('FechaIngreso').AsString;
  C_FechaEgreso_IX2:=DataSet.FieldByName('FechaEgreso').AsString;
  C_Observaciones:=DataSet.FieldByName('Observaciones').AsString;
  C_Usu_A:=DataSet.FieldByName('Usu_A').AsVariant;
  C_Fecha_A:=DataSet.FieldByName('Fecha_A').AsString;
  C_Usu_M:=DataSet.FieldByName('Usu_M').AsVariant;
  C_Fecha_M:=DataSet.FieldByName('Fecha_M').AsString;
  C_NroGestor:=DataSet.FieldByName('NroGestor').AsVariant;
  C_Mostrar:=DataSet.FieldByName('Mostrar').AsBoolean;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TPersonal.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_PersonalConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TPersonal.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TPersonal.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TPersonal.Agrega():boolean;
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
if (C_Cuif_PK = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Cuif_PK));
Parametros.Add(C_FechaIngreso_IX1);
Parametros.Add(C_FechaEgreso_IX2);
Parametros.Add(C_Observaciones);
if (C_Usu_A = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_A));
if (C_Usu_M = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_M));
Parametros.Add(C_Fecha_M);
if (C_NroGestor = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroGestor));
if C_Mostrar then Parametros.Add('1')
else Parametros.Add('0');

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_PersonalInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TPersonal.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_PersonalEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TPersonal.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_Id));
if (C_Cuif_PK = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Cuif_PK));
Parametros.Add(C_FechaIngreso_IX1);
Parametros.Add(C_FechaEgreso_IX2);
Parametros.Add(C_Observaciones);
if (C_Usu_M = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_M));
Parametros.Add(C_Fecha_M);
if (C_NroGestor = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroGestor));
if C_Mostrar then Parametros.Add('1')
else Parametros.Add('0');


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_PersonalModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

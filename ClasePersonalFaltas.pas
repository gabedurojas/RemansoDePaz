unit ClasePersonalFaltas;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TPersonalFaltas= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FId:integer;
    FCuif:int64;
    FFecha:string;
    FTurno:string;
    FNroMotivo:byte;
    FObservaciones:string;
    FUsu_a:integer;
    FFecha_a:string;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetId(Value:integer);
    procedure SetCuif(Value:int64);
    procedure SetFecha(Value:string);
    procedure SetTurno(Value:string);
    procedure SetNroMotivo(Value:byte);
    procedure SetObservaciones(Value:string);
    procedure SetUsu_a(Value:integer);
    procedure SetFecha_a(Value:string);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_Id_PK:integer read FId write SetId;
    property C_Cuif_IX1:int64 read FCuif write SetCuif;
    property C_Fecha_IX2:string read FFecha write SetFecha;
    property C_Turno:string read FTurno write SetTurno;
    property C_NroMotivo_IX3:byte read FNroMotivo write SetNroMotivo;
    property C_Observaciones:string read FObservaciones write SetObservaciones;
    property C_Usu_a:integer read FUsu_a write SetUsu_a;
    property C_Fecha_a:string read FFecha_a write SetFecha_a;

  {Declaracion de Metodos}
    Function BuscarPK(ValorBuscado:String):boolean;
    Function ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; MaxRecord:integer):boolean;
    Function Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
    Function Agrega():boolean;
    Function Borrar(ValorBuscado:string):boolean;
    Function Modificar():boolean;

  Published
    { Published declarations }
  end;

  var FCapaDatos:TCapaDatos;

implementation

constructor TPersonalFaltas.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=8;
end;

procedure TPersonalFaltas.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TPersonalFaltas.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TPersonalFaltas.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TPersonalFaltas.SetId(Value:integer);
begin
  FId:=Value;
end;

procedure TPersonalFaltas.SetCuif(Value:int64);
begin
  FCuif:=Value;
end;

procedure TPersonalFaltas.SetFecha(Value:string);
begin
  FFecha:=Value;
end;

procedure TPersonalFaltas.SetTurno(Value:string);
begin
  FTurno:=Value;
end;

procedure TPersonalFaltas.SetNroMotivo(Value:byte);
begin
  FNroMotivo:=Value;
end;

procedure TPersonalFaltas.SetObservaciones(Value:string);
begin
  FObservaciones:=Value;
end;

procedure TPersonalFaltas.SetUsu_a(Value:integer);
begin
  FUsu_a:=Value;
end;

procedure TPersonalFaltas.SetFecha_a(Value:string);
begin
  FFecha_a:=Value;
end;

Function TPersonalFaltas.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_PersonalFaltasConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_Id_PK:=DataSet.FieldByName('Id').AsInteger;
  C_Cuif_IX1:=StrToInt64(DataSet.FieldByName('Cuif').AsString);
  C_Fecha_IX2:=DataSet.FieldByName('Fecha').AsString;
  C_Turno:=DataSet.FieldByName('Turno').AsString;
  C_NroMotivo_IX3:=DataSet.FieldByName('NroMotivo').AsInteger;
  C_Observaciones:=DataSet.FieldByName('Observaciones').AsString;
  C_Usu_a:=DataSet.FieldByName('Usu_a').AsInteger;
  C_Fecha_a:=DataSet.FieldByName('Fecha_a').AsString;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TPersonalFaltas.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_PersonalFaltasConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TPersonalFaltas.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TPersonalFaltas.Agrega():boolean;
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
Parametros.Add(IntToStr(C_Cuif_IX1));
Parametros.Add(C_Fecha_IX2);
Parametros.Add(C_Turno);
Parametros.Add(IntToStr(C_NroMotivo_IX3));
Parametros.Add(C_Observaciones);
Parametros.Add(IntToStr(C_Usu_a));
Parametros.Add(C_Fecha_a);

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_PersonalFaltasInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TPersonalFaltas.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_PersonalFaltasEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TPersonalFaltas.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
//Cargo los Parmetros
Parametros.Add(IntToStr(C_Id_PK));
Parametros.Add(IntToStr(C_Cuif_IX1));
Parametros.Add(C_Fecha_IX2);
Parametros.Add(C_Turno);
Parametros.Add(IntToStr(C_NroMotivo_IX3));
Parametros.Add(C_Observaciones);
Parametros.Add(IntToStr(C_Usu_a));
Parametros.Add(C_Fecha_a);


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_PersonalFaltasModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

unit ClasePersonalRegistroHorarios;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TPersonalRegistroHorarios= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FId:integer;
    FCuif:int64;
    FCodBar:string;
    FFecha:string;
    FTurno:string;
    FHora:string;
    FIngreso:boolean;
    FManual:boolean;
    FArchivoImagen:string;
    FAutomatico:boolean;
    FObservaciones:string;
    FUsu_A:integer;
    FFecha_A:string;
    FUsu_M:integer;
    FFecha_M:string;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetId(Value:integer);
    procedure SetCuif(Value:int64);
    procedure SetCodBar(Value:string);
    procedure SetFecha(Value:string);
    procedure SetTurno(Value:string);
    procedure SetHora(Value:string);
    procedure SetIngreso(Value:boolean);
    procedure SetManual(Value:boolean);
    procedure SetArchivoImagen(Value:string);
    procedure SetAutomatico(Value:boolean);
    procedure SetObservaciones(Value:string);
    procedure SetUsu_A(Value:integer);
    procedure SetFecha_A(Value:string);
    procedure SetUsu_M(Value:integer);
    procedure SetFecha_M(Value:string);
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
    property C_CodBar:string read FCodBar write SetCodBar;
    property C_Fecha_IX2:string read FFecha write SetFecha;
    property C_Turno:string read FTurno write SetTurno;
    property C_Hora:string read FHora write SetHora;
    property C_Ingreso:boolean read FIngreso write SetIngreso;
    property C_Manual:boolean read FManual write SetManual;
    property C_ArchivoImagen:string read FArchivoImagen write SetArchivoImagen;
    property C_Automatico:boolean read FAutomatico write SetAutomatico;
    property C_Observaciones:string read FObservaciones write SetObservaciones;
    property C_Usu_A:integer read FUsu_A write SetUsu_A;
    property C_Fecha_A:string read FFecha_A write SetFecha_A;
    property C_Usu_M:integer read FUsu_M write SetUsu_M;
    property C_Fecha_M:string read FFecha_M write SetFecha_M;

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

constructor TPersonalRegistroHorarios.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=15;
end;

procedure TPersonalRegistroHorarios.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TPersonalRegistroHorarios.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TPersonalRegistroHorarios.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TPersonalRegistroHorarios.SetId(Value:integer);
begin
  FId:=Value;
end;

procedure TPersonalRegistroHorarios.SetCuif(Value:int64);
begin
  FCuif:=Value;
end;

procedure TPersonalRegistroHorarios.SetCodBar(Value:string);
begin
  FCodBar:=Value;
end;

procedure TPersonalRegistroHorarios.SetFecha(Value:string);
begin
  FFecha:=Value;
end;

procedure TPersonalRegistroHorarios.SetTurno(Value:string);
begin
  FTurno:=Value;
end;

procedure TPersonalRegistroHorarios.SetHora(Value:string);
begin
  FHora:=Value;
end;

procedure TPersonalRegistroHorarios.SetIngreso(Value:boolean);
begin
  FIngreso:=Value;
end;

procedure TPersonalRegistroHorarios.SetManual(Value:boolean);
begin
  FManual:=Value;
end;

procedure TPersonalRegistroHorarios.SetArchivoImagen(Value:string);
begin
  FArchivoImagen:=Value;
end;

procedure TPersonalRegistroHorarios.SetAutomatico(Value:boolean);
begin
  FAutomatico:=Value;
end;

procedure TPersonalRegistroHorarios.SetObservaciones(Value:string);
begin
  FObservaciones:=Value;
end;

procedure TPersonalRegistroHorarios.SetUsu_A(Value:integer);
begin
  FUsu_A:=Value;
end;

procedure TPersonalRegistroHorarios.SetFecha_A(Value:string);
begin
  FFecha_A:=Value;
end;

procedure TPersonalRegistroHorarios.SetUsu_M(Value:integer);
begin
  FUsu_M:=Value;
end;

procedure TPersonalRegistroHorarios.SetFecha_M(Value:string);
begin
  FFecha_M:=Value;
end;

Function TPersonalRegistroHorarios.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_PersonalRegistroHorariosConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_Id_PK:=DataSet.FieldByName('Id').AsInteger;
  C_Cuif_IX1:=StrToInt64(DataSet.FieldByName('Cuif').AsString);
  C_CodBar:=DataSet.FieldByName('CodBar').AsString;
  C_Fecha_IX2:=DataSet.FieldByName('Fecha').AsString;
  C_Turno:=DataSet.FieldByName('Turno').AsString;
  C_Hora:=DataSet.FieldByName('Hora').AsString;
  C_Ingreso:=DataSet.FieldByName('Ingreso').AsBoolean;
  C_Manual:=DataSet.FieldByName('Manual').AsBoolean;
  C_ArchivoImagen:=DataSet.FieldByName('ArchivoImagen').AsString;
  C_Automatico:=DataSet.FieldByName('Automatico').AsBoolean;
  C_Observaciones:=DataSet.FieldByName('Observaciones').AsString;
  C_Usu_A:=DataSet.FieldByName('Usu_A').AsInteger;
  C_Fecha_A:=DataSet.FieldByName('Fecha_A').AsString;
  C_Usu_M:=DataSet.FieldByName('Usu_M').AsInteger;
  C_Fecha_M:=DataSet.FieldByName('Fecha_M').AsString;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TPersonalRegistroHorarios.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_PersonalRegistroHorariosConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TPersonalRegistroHorarios.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TPersonalRegistroHorarios.Agrega():boolean;
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
Parametros.Add(C_CodBar);
Parametros.Add(C_Fecha_IX2);
Parametros.Add(C_Turno);
Parametros.Add(C_Hora);
if C_Ingreso then Parametros.Add('1')
else Parametros.Add('0');
if C_Manual then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_ArchivoImagen);
if C_Automatico then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_Observaciones);
Parametros.Add(IntToStr(C_Usu_A));
Parametros.Add(C_Fecha_A);
Parametros.Add(IntToStr(C_Usu_M));
Parametros.Add(C_Fecha_M);

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_PersonalRegistroHorariosInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TPersonalRegistroHorarios.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_PersonalRegistroHorariosEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TPersonalRegistroHorarios.Modificar():boolean;
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
Parametros.Add(C_CodBar);
Parametros.Add(C_Fecha_IX2);
Parametros.Add(C_Turno);
Parametros.Add(C_Hora);
if C_Ingreso then Parametros.Add('1')
else Parametros.Add('0');
if C_Manual then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_ArchivoImagen);
if C_Automatico then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_Observaciones);
Parametros.Add(IntToStr(C_Usu_A));
Parametros.Add(C_Fecha_A);
Parametros.Add(IntToStr(C_Usu_M));
Parametros.Add(C_Fecha_M);


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_PersonalRegistroHorariosModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

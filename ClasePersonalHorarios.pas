unit ClasePersonalHorarios;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TPersonalHorarios= Class(TObject)
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
    FNroDia:byte;
    FEntrada:string;
    FSalida:string;
    FActivo:boolean;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetId(Value:integer);
    procedure SetCuif(Value:int64);
    procedure SetFecha(Value:string);
    procedure SetTurno(Value:string);
    procedure SetNroDia(Value:byte);
    procedure SetEntrada(Value:string);
    procedure SetSalida(Value:string);
    procedure SetActivo(Value:boolean);
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
    property C_NroDia_IX3:byte read FNroDia write SetNroDia;
    property C_Entrada:string read FEntrada write SetEntrada;
    property C_Salida:string read FSalida write SetSalida;
    property C_Activo:boolean read FActivo write SetActivo;

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

constructor TPersonalHorarios.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=8;
end;

procedure TPersonalHorarios.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TPersonalHorarios.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TPersonalHorarios.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TPersonalHorarios.SetId(Value:integer);
begin
  FId:=Value;
end;

procedure TPersonalHorarios.SetCuif(Value:int64);
begin
  FCuif:=Value;
end;

procedure TPersonalHorarios.SetFecha(Value:string);
begin
  FFecha:=Value;
end;

procedure TPersonalHorarios.SetTurno(Value:string);
begin
  FTurno:=Value;
end;

procedure TPersonalHorarios.SetNroDia(Value:byte);
begin
  FNroDia:=Value;
end;

procedure TPersonalHorarios.SetEntrada(Value:string);
begin
  FEntrada:=Value;
end;

procedure TPersonalHorarios.SetSalida(Value:string);
begin
  FSalida:=Value;
end;

procedure TPersonalHorarios.SetActivo(Value:boolean);
begin
  FActivo:=Value;
end;

Function TPersonalHorarios.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_PersonalHorariosConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_Id_PK:=DataSet.FieldByName('Id').AsInteger;
  C_Cuif_IX1:=StrToInt64(DataSet.FieldByName('Cuif').AsString);
  C_Fecha_IX2:=DataSet.FieldByName('Fecha').AsString;
  C_Turno:=DataSet.FieldByName('Turno').AsString;
  C_NroDia_IX3:=DataSet.FieldByName('NroDia').AsInteger;
  C_Entrada:=DataSet.FieldByName('Entrada').AsString;
  C_Salida:=DataSet.FieldByName('Salida').AsString;
  C_Activo:=DataSet.FieldByName('Activo').AsBoolean;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TPersonalHorarios.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_PersonalHorariosConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TPersonalHorarios.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TPersonalHorarios.Agrega():boolean;
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
Parametros.Add(IntToStr(C_NroDia_IX3));
Parametros.Add(C_Entrada);
Parametros.Add(C_Salida);
if C_Activo then Parametros.Add('1')
else Parametros.Add('0');

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_PersonalHorariosInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TPersonalHorarios.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_PersonalHorariosEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TPersonalHorarios.Modificar():boolean;
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
Parametros.Add(IntToStr(C_NroDia_IX3));
Parametros.Add(C_Entrada);
Parametros.Add(C_Salida);
if C_Activo then Parametros.Add('1')
else Parametros.Add('0');


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_PersonalHorariosModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

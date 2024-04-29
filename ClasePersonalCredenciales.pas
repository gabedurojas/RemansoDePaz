unit ClasePersonalCredenciales;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TPersonalCredenciales= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FNroCredencial:integer;
    FCuif:int64;
    FCodBar:string;
    FNroArea:byte;
    FNroCargo:byte;
    FFechaEmision:string;
    FFechaVencimiento:string;
    FObservaciones:string;
    FImpreso:boolean;
    FUsu_A:integer;
    FFecha_A:string;
    FActivo:boolean;
    FAnulado:boolean;
    FFechaAnula:string;
    FUsu_Anula:integer;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetNroCredencial(Value:integer);
    procedure SetCuif(Value:int64);
    procedure SetCodBar(Value:string);
    procedure SetNroArea(Value:byte);
    procedure SetNroCargo(Value:byte);
    procedure SetFechaEmision(Value:string);
    procedure SetFechaVencimiento(Value:string);
    procedure SetObservaciones(Value:string);
    procedure SetImpreso(Value:boolean);
    procedure SetUsu_A(Value:integer);
    procedure SetFecha_A(Value:string);
    procedure SetActivo(Value:boolean);
    procedure SetAnulado(Value:boolean);
    procedure SetFechaAnula(Value:string);
    procedure SetUsu_Anula(Value:integer);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_NroCredencial_PK:integer read FNroCredencial write SetNroCredencial;
    property C_Cuif_IX1:int64 read FCuif write SetCuif;
    property C_CodBar_IX2:string read FCodBar write SetCodBar;
    property C_NroArea_IX3:byte read FNroArea write SetNroArea;
    property C_NroCargo_IX4:byte read FNroCargo write SetNroCargo;
    property C_FechaEmision_IX5:string read FFechaEmision write SetFechaEmision;
    property C_FechaVencimiento_IX6:string read FFechaVencimiento write SetFechaVencimiento;
    property C_Observaciones:string read FObservaciones write SetObservaciones;
    property C_Impreso:boolean read FImpreso write SetImpreso;
    property C_Usu_A:integer read FUsu_A write SetUsu_A;
    property C_Fecha_A:string read FFecha_A write SetFecha_A;
    property C_Activo:boolean read FActivo write SetActivo;
    property C_Anulado:boolean read FAnulado write SetAnulado;
    property C_FechaAnula:string read FFechaAnula write SetFechaAnula;
    property C_Usu_Anula:integer read FUsu_Anula write SetUsu_Anula;

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

constructor TPersonalCredenciales.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=15;
end;

procedure TPersonalCredenciales.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TPersonalCredenciales.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TPersonalCredenciales.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TPersonalCredenciales.SetNroCredencial(Value:integer);
begin
  FNroCredencial:=Value;
end;

procedure TPersonalCredenciales.SetCuif(Value:int64);
begin
  FCuif:=Value;
end;

procedure TPersonalCredenciales.SetCodBar(Value:string);
begin
  FCodBar:=Value;
end;

procedure TPersonalCredenciales.SetNroArea(Value:byte);
begin
  FNroArea:=Value;
end;

procedure TPersonalCredenciales.SetNroCargo(Value:byte);
begin
  FNroCargo:=Value;
end;

procedure TPersonalCredenciales.SetFechaEmision(Value:string);
begin
  FFechaEmision:=Value;
end;

procedure TPersonalCredenciales.SetFechaVencimiento(Value:string);
begin
  FFechaVencimiento:=Value;
end;

procedure TPersonalCredenciales.SetObservaciones(Value:string);
begin
  FObservaciones:=Value;
end;

procedure TPersonalCredenciales.SetImpreso(Value:boolean);
begin
  FImpreso:=Value;
end;

procedure TPersonalCredenciales.SetUsu_A(Value:integer);
begin
  FUsu_A:=Value;
end;

procedure TPersonalCredenciales.SetFecha_A(Value:string);
begin
  FFecha_A:=Value;
end;

procedure TPersonalCredenciales.SetActivo(Value:boolean);
begin
  FActivo:=Value;
end;

procedure TPersonalCredenciales.SetAnulado(Value:boolean);
begin
  FAnulado:=Value;
end;

procedure TPersonalCredenciales.SetFechaAnula(Value:string);
begin
  FFechaAnula:=Value;
end;

procedure TPersonalCredenciales.SetUsu_Anula(Value:integer);
begin
  FUsu_Anula:=Value;
end;

Function TPersonalCredenciales.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_PersonalCredencialesConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_NroCredencial_PK:=DataSet.FieldByName('NroCredencial').AsInteger;
  C_Cuif_IX1:=StrToInt64(DataSet.FieldByName('Cuif').AsString);
  C_CodBar_IX2:=DataSet.FieldByName('CodBar').AsString;
  C_NroArea_IX3:=DataSet.FieldByName('NroArea').AsInteger;
  C_NroCargo_IX4:=DataSet.FieldByName('NroCargo').AsInteger;
  C_FechaEmision_IX5:=DataSet.FieldByName('FechaEmision').AsString;
  C_FechaVencimiento_IX6:=DataSet.FieldByName('FechaVencimiento').AsString;
  C_Observaciones:=DataSet.FieldByName('Observaciones').AsString;
  C_Impreso:=DataSet.FieldByName('Impreso').AsBoolean;
  C_Usu_A:=DataSet.FieldByName('Usu_A').AsInteger;
  C_Fecha_A:=DataSet.FieldByName('Fecha_A').AsString;
  C_Activo:=DataSet.FieldByName('Activo').AsBoolean;
  C_Anulado:=DataSet.FieldByName('Anulado').AsBoolean;
  C_FechaAnula:=DataSet.FieldByName('FechaAnula').AsString;
  C_Usu_Anula:=DataSet.FieldByName('Usu_Anula').AsInteger;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TPersonalCredenciales.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_PersonalCredencialesConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TPersonalCredenciales.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TPersonalCredenciales.Agrega():boolean;
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
Parametros.Add(C_CodBar_IX2);
Parametros.Add(IntToStr(C_NroArea_IX3));
Parametros.Add(IntToStr(C_NroCargo_IX4));
Parametros.Add(C_FechaEmision_IX5);
Parametros.Add(C_FechaVencimiento_IX6);
Parametros.Add(C_Observaciones);
if C_Impreso then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(IntToStr(C_Usu_A));
Parametros.Add(C_Fecha_A);
if C_Activo then Parametros.Add('1')
else Parametros.Add('0');
if C_Anulado then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_FechaAnula);
Parametros.Add(IntToStr(C_Usu_Anula));

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_PersonalCredencialesInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TPersonalCredenciales.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_PersonalCredencialesEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TPersonalCredenciales.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
//Cargo los Parmetros
Parametros.Add(IntToStr(C_NroCredencial_PK));
Parametros.Add(IntToStr(C_Cuif_IX1));
Parametros.Add(C_CodBar_IX2);
Parametros.Add(IntToStr(C_NroArea_IX3));
Parametros.Add(IntToStr(C_NroCargo_IX4));
Parametros.Add(C_FechaEmision_IX5);
Parametros.Add(C_FechaVencimiento_IX6);
Parametros.Add(C_Observaciones);
if C_Impreso then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(IntToStr(C_Usu_A));
Parametros.Add(C_Fecha_A);
if C_Activo then Parametros.Add('1')
else Parametros.Add('0');
if C_Anulado then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_FechaAnula);
Parametros.Add(IntToStr(C_Usu_Anula));


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_PersonalCredencialesModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

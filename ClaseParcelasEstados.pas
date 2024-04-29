unit ClaseParcelasEstados;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TParcelasEstados= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FId:integer;
    FNroAccion:integer;
    FNroEstado:byte;
    FActivo:boolean;
    FFecha_A:string;
    FUsu_A:integer;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetId(Value:integer);
    procedure SetNroAccion(Value:integer);
    procedure SetNroEstado(Value:byte);
    procedure SetActivo(Value:boolean);
    procedure SetFecha_A(Value:string);
    procedure SetUsu_A(Value:integer);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_Id_PK:integer read FId write SetId;
    property C_NroAccion_IX1:integer read FNroAccion write SetNroAccion;
    property C_NroEstado_IX2:byte read FNroEstado write SetNroEstado;
    property C_Activo:boolean read FActivo write SetActivo;
    property C_Fecha_A:string read FFecha_A write SetFecha_A;
    property C_Usu_A:integer read FUsu_A write SetUsu_A;

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

constructor TParcelasEstados.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=6;
end;

procedure TParcelasEstados.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TParcelasEstados.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TParcelasEstados.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TParcelasEstados.SetId(Value:integer);
begin
  FId:=Value;
end;

procedure TParcelasEstados.SetNroAccion(Value:integer);
begin
  FNroAccion:=Value;
end;

procedure TParcelasEstados.SetNroEstado(Value:byte);
begin
  FNroEstado:=Value;
end;

procedure TParcelasEstados.SetActivo(Value:boolean);
begin
  FActivo:=Value;
end;

procedure TParcelasEstados.SetFecha_A(Value:string);
begin
  FFecha_A:=Value;
end;

procedure TParcelasEstados.SetUsu_A(Value:integer);
begin
  FUsu_A:=Value;
end;

Function TParcelasEstados.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_ParcelasEstadosConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_Id_PK:=DataSet.FieldByName('Id').AsInteger;
  C_NroAccion_IX1:=DataSet.FieldByName('NroAccion').AsInteger;
  C_NroEstado_IX2:=DataSet.FieldByName('NroEstado').AsInteger;
  C_Activo:=DataSet.FieldByName('Activo').AsBoolean;
  C_Fecha_A:=DataSet.FieldByName('Fecha_A').AsString;
  C_Usu_A:=DataSet.FieldByName('Usu_A').AsInteger;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TParcelasEstados.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasEstadosConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasEstados.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasEstados.Agrega():boolean;
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
Parametros.Add(IntToStr(C_NroAccion_IX1));
Parametros.Add(IntToStr(C_NroEstado_IX2));
if C_Activo then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_Fecha_A);
Parametros.Add(IntToStr(C_Usu_A));

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasEstadosInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TParcelasEstados.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasEstadosEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TParcelasEstados.Modificar():boolean;
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
Parametros.Add(IntToStr(C_NroAccion_IX1));
Parametros.Add(IntToStr(C_NroEstado_IX2));
if C_Activo then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_Fecha_A);
Parametros.Add(IntToStr(C_Usu_A));


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasEstadosModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

unit ClaseClientesImagenes;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TClientesImagenes= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FId:integer;
    FCuif:int64;
    FNombreArchivo:string;
    FNroTipo:integer;
    FMotivo:string;
    FObservaciones:string;
    FFecha_A:string;
    FUsu_A:integer;
    FHashFile:string;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetId(Value:integer);
    procedure SetCuif(Value:int64);
    procedure SetNombreArchivo(Value:string);
    procedure SetNroTipo(Value:integer);
    procedure SetMotivo(Value:string);
    procedure SetObservaciones(Value:string);
    procedure SetFecha_A(Value:string);
    procedure SetUsu_A(Value:integer);
    procedure SetHashFile(Value:string);
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
    property C_NombreArchivo_IX2:string read FNombreArchivo write SetNombreArchivo;
    property C_NroTipo_IX3:integer read FNroTipo write SetNroTipo;
    property C_Motivo:string read FMotivo write SetMotivo;
    property C_Observaciones:string read FObservaciones write SetObservaciones;
    property C_Fecha_A:string read FFecha_A write SetFecha_A;
    property C_Usu_A:integer read FUsu_A write SetUsu_A;
    property C_HashFile_IX4:string read FHashFile write SetHashFile;

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

constructor TClientesImagenes.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=9;
end;

procedure TClientesImagenes.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TClientesImagenes.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TClientesImagenes.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TClientesImagenes.SetId(Value:integer);
begin
  FId:=Value;
end;

procedure TClientesImagenes.SetCuif(Value:int64);
begin
  FCuif:=Value;
end;

procedure TClientesImagenes.SetNombreArchivo(Value:string);
begin
  FNombreArchivo:=Value;
end;

procedure TClientesImagenes.SetNroTipo(Value:integer);
begin
  FNroTipo:=Value;
end;

procedure TClientesImagenes.SetMotivo(Value:string);
begin
  FMotivo:=Value;
end;

procedure TClientesImagenes.SetObservaciones(Value:string);
begin
  FObservaciones:=Value;
end;

procedure TClientesImagenes.SetFecha_A(Value:string);
begin
  FFecha_A:=Value;
end;

procedure TClientesImagenes.SetUsu_A(Value:integer);
begin
  FUsu_A:=Value;
end;

procedure TClientesImagenes.SetHashFile(Value:string);
begin
  FHashFile:=Value;
end;

Function TClientesImagenes.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_ClientesImagenesConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_Id_PK:=DataSet.FieldByName('Id').AsInteger;
  C_Cuif_IX1:=StrToInt64(DataSet.FieldByName('Cuif').AsString);
  C_NombreArchivo_IX2:=DataSet.FieldByName('NombreArchivo').AsString;
  C_NroTipo_IX3:=DataSet.FieldByName('NroTipo').AsInteger;
  C_Motivo:=DataSet.FieldByName('Motivo').AsString;
  C_Observaciones:=DataSet.FieldByName('Observaciones').AsString;
  C_Fecha_A:=DataSet.FieldByName('Fecha_A').AsString;
  C_Usu_A:=DataSet.FieldByName('Usu_A').AsInteger;
  C_HashFile_IX4:=DataSet.FieldByName('HashFile').AsString;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TClientesImagenes.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ClientesImagenesConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TClientesImagenes.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TClientesImagenes.Agrega():boolean;
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
Parametros.Add(C_NombreArchivo_IX2);
Parametros.Add(IntToStr(C_NroTipo_IX3));
Parametros.Add(C_Motivo);
Parametros.Add(C_Observaciones);
Parametros.Add(C_Fecha_A);
Parametros.Add(IntToStr(C_Usu_A));
Parametros.Add(C_HashFile_IX4);

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ClientesImagenesInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TClientesImagenes.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_ClientesImagenesEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TClientesImagenes.Modificar():boolean;
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
Parametros.Add(C_NombreArchivo_IX2);
Parametros.Add(IntToStr(C_NroTipo_IX3));
Parametros.Add(C_Motivo);
Parametros.Add(C_Observaciones);
Parametros.Add(C_Fecha_A);
Parametros.Add(IntToStr(C_Usu_A));
Parametros.Add(C_HashFile_IX4);


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_ClientesImagenesModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

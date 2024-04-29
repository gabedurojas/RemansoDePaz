unit ClaseVersionSoft;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TVersionSoft= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FId:integer;
    FVersion:string;
    FFecha:string;
    FObservaciones:string;
    FActivo:boolean;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetId(Value:integer);
    procedure SetVersion(Value:string);
    procedure SetFecha(Value:string);
    procedure SetObservaciones(Value:string);
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
    property C_Version_IX1:string read FVersion write SetVersion;
    property C_Fecha:string read FFecha write SetFecha;
    property C_Observaciones:string read FObservaciones write SetObservaciones;
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

constructor TVersionSoft.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=5;
end;

procedure TVersionSoft.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TVersionSoft.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TVersionSoft.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TVersionSoft.SetId(Value:integer);
begin
  FId:=Value;
end;

procedure TVersionSoft.SetVersion(Value:string);
begin
  FVersion:=Value;
end;

procedure TVersionSoft.SetFecha(Value:string);
begin
  FFecha:=Value;
end;

procedure TVersionSoft.SetObservaciones(Value:string);
begin
  FObservaciones:=Value;
end;

procedure TVersionSoft.SetActivo(Value:boolean);
begin
  FActivo:=Value;
end;

Function TVersionSoft.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_VersionSoftConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_Id_PK:=DataSet.FieldByName('Id').AsInteger;
  C_Version_IX1:=DataSet.FieldByName('Version').AsString;
  C_Fecha:=DataSet.FieldByName('Fecha').AsString;
  C_Observaciones:=DataSet.FieldByName('Observaciones').AsString;
  C_Activo:=DataSet.FieldByName('Activo').AsBoolean;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TVersionSoft.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_VersionSoftConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TVersionSoft.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TVersionSoft.Agrega():boolean;
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
Parametros.Add(C_Version_IX1);
Parametros.Add(C_Fecha);
Parametros.Add(C_Observaciones);
if C_Activo then Parametros.Add('1')
else Parametros.Add('0');

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_VersionSoftInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TVersionSoft.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_VersionSoftEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TVersionSoft.Modificar():boolean;
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
Parametros.Add(C_Version_IX1);
Parametros.Add(C_Fecha);
Parametros.Add(C_Observaciones);
if C_Activo then Parametros.Add('1')
else Parametros.Add('0');


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_VersionSoftModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

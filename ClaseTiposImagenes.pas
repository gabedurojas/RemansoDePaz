unit ClaseTiposImagenes;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TTiposImagenes= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FNroTipo:integer;
    FDetalle:string;
    FSigla:string;
    FConPuesto:boolean;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetNroTipo(Value:integer);
    procedure SetDetalle(Value:string);
    procedure SetSigla(Value:string);
    procedure SetConPuesto(Value:boolean);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_NroTipo_PK:integer read FNroTipo write SetNroTipo;
    property C_Detalle_IX1:string read FDetalle write SetDetalle;
    property C_Sigla_IX2:string read FSigla write SetSigla;
    property C_ConPuesto:boolean read FConPuesto write SetConPuesto;

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

constructor TTiposImagenes.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=4;
end;

procedure TTiposImagenes.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TTiposImagenes.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TTiposImagenes.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TTiposImagenes.SetNroTipo(Value:integer);
begin
  FNroTipo:=Value;
end;

procedure TTiposImagenes.SetDetalle(Value:string);
begin
  FDetalle:=Value;
end;

procedure TTiposImagenes.SetSigla(Value:string);
begin
  FSigla:=Value;
end;

procedure TTiposImagenes.SetConPuesto(Value:boolean);
begin
  FConPuesto:=Value;
end;

Function TTiposImagenes.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_TiposImagenesConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_NroTipo_PK:=DataSet.FieldByName('NroTipo').AsInteger;
  C_Detalle_IX1:=DataSet.FieldByName('Detalle').AsString;
  C_Sigla_IX2:=DataSet.FieldByName('Sigla').AsString;
  C_ConPuesto:=DataSet.FieldByName('ConPuesto').AsBoolean;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TTiposImagenes.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_TiposImagenesConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TTiposImagenes.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TTiposImagenes.Agrega():boolean;
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
Parametros.Add(C_Detalle_IX1);
Parametros.Add(C_Sigla_IX2);
if C_ConPuesto then Parametros.Add('1')
else Parametros.Add('0');

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_TiposImagenesInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TTiposImagenes.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_TiposImagenesEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TTiposImagenes.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
//Cargo los Parmetros
Parametros.Add(IntToStr(C_NroTipo_PK));
Parametros.Add(C_Detalle_IX1);
Parametros.Add(C_Sigla_IX2);
if C_ConPuesto then Parametros.Add('1')
else Parametros.Add('0');


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_TiposImagenesModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

unit ClaseClientesCategoria;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TClientesCategoria= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FIdCategoria:integer;
    FCategoria:string;
    FIVA:real;
    FLetra:string;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetIdCategoria(Value:integer);
    procedure SetCategoria(Value:string);
    procedure SetIVA(Value:real);
    procedure SetLetra(Value:string);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_IdCategoria_PK:integer read FIdCategoria write SetIdCategoria;
    property C_Categoria_IX1:string read FCategoria write SetCategoria;
    property C_IVA:real read FIVA write SetIVA;
    property C_Letra:string read FLetra write SetLetra;

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

constructor TClientesCategoria.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=4;
end;

procedure TClientesCategoria.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TClientesCategoria.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TClientesCategoria.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TClientesCategoria.SetIdCategoria(Value:integer);
begin
  FIdCategoria:=Value;
end;

procedure TClientesCategoria.SetCategoria(Value:string);
begin
  FCategoria:=Value;
end;

procedure TClientesCategoria.SetIVA(Value:real);
begin
  FIVA:=Value;
end;

procedure TClientesCategoria.SetLetra(Value:string);
begin
  FLetra:=Value;
end;

Function TClientesCategoria.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_ClientesCategoriaConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_IdCategoria_PK:=DataSet.FieldByName('IdCategoria').AsInteger;
  C_Categoria_IX1:=DataSet.FieldByName('Categoria').AsString;
  C_IVA:=DataSet.FieldByName('IVA').AsFloat;
  C_Letra:=DataSet.FieldByName('Letra').AsString;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TClientesCategoria.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ClientesCategoriaConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TClientesCategoria.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TClientesCategoria.Agrega():boolean;
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
Parametros.Add(C_Categoria_IX1);
Parametros.Add(FloatToStr(C_IVA));
Parametros.Add(C_Letra);

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ClientesCategoriaInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TClientesCategoria.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_ClientesCategoriaEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TClientesCategoria.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
//Cargo los Parmetros
Parametros.Add(IntToStr(C_IdCategoria_PK));
Parametros.Add(C_Categoria_IX1);
Parametros.Add(FloatToStr(C_IVA));
Parametros.Add(C_Letra);


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_ClientesCategoriaModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

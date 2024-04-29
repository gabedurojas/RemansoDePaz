unit ClaseTiposCodigos;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TTiposCodigos= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FCodigo:variant;
    FDetalleCodigo:string;
    FPorcentajePunitorios:variant;
    FDescrip:string;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetCodigo(Value:variant);
    procedure SetDetalleCodigo(Value:string);
    procedure SetPorcentajePunitorios(Value:variant);
    procedure SetDescrip(Value:string);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_Codigo_PK:variant read FCodigo write SetCodigo;
    property C_DetalleCodigo_IX1:string read FDetalleCodigo write SetDetalleCodigo;
    property C_PorcentajePunitorios:variant read FPorcentajePunitorios write SetPorcentajePunitorios;
    property C_Descrip:string read FDescrip write SetDescrip;

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

constructor TTiposCodigos.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=4;
end;

procedure TTiposCodigos.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TTiposCodigos.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TTiposCodigos.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TTiposCodigos.SetCodigo(Value:variant);
begin
  FCodigo:=Value;
end;

procedure TTiposCodigos.SetDetalleCodigo(Value:string);
begin
  FDetalleCodigo:=Value;
end;

procedure TTiposCodigos.SetPorcentajePunitorios(Value:variant);
begin
  FPorcentajePunitorios:=Value;
end;

procedure TTiposCodigos.SetDescrip(Value:string);
begin
  FDescrip:=Value;
end;

Function TTiposCodigos.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_TiposCodigosConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_Codigo_PK:=DataSet.FieldByName('Codigo').AsVariant;
  C_DetalleCodigo_IX1:=DataSet.FieldByName('DetalleCodigo').AsString;
  C_PorcentajePunitorios:=DataSet.FieldByName('PorcentajePunitorios').AsVariant;
  C_Descrip:=DataSet.FieldByName('Descrip').AsString;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TTiposCodigos.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_TiposCodigosConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TTiposCodigos.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TTiposCodigos.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TTiposCodigos.Agrega():boolean;
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
Parametros.Add(C_DetalleCodigo_IX1);
if (C_PorcentajePunitorios = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_PorcentajePunitorios));
Parametros.Add(C_Descrip);

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_TiposCodigosInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TTiposCodigos.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_TiposCodigosEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TTiposCodigos.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_Codigo_PK));
Parametros.Add(C_DetalleCodigo_IX1);
if (C_PorcentajePunitorios = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_PorcentajePunitorios));
Parametros.Add(C_Descrip);


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_TiposCodigosModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

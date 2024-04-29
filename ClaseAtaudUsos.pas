unit ClaseAtaudUsos;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TAtaudUsos= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    Fid:variant;
    FIdAtaud:variant;
    FFechaUso:string;
    FIdSepelio:variant;
    FIdTraslado:variant;
    FIdCremacion:variant;
    FFechaDevolucion:string;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure Setid(Value:variant);
    procedure SetIdAtaud(Value:variant);
    procedure SetFechaUso(Value:string);
    procedure SetIdSepelio(Value:variant);
    procedure SetIdTraslado(Value:variant);
    procedure SetIdCremacion(Value:variant);
    procedure SetFechaDevolucion(Value:string);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_id_PK:variant read Fid write Setid;
    property C_IdAtaud:variant read FIdAtaud write SetIdAtaud;
    property C_FechaUso:string read FFechaUso write SetFechaUso;
    property C_IdSepelio:variant read FIdSepelio write SetIdSepelio;
    property C_IdTraslado:variant read FIdTraslado write SetIdTraslado;
    property C_IdCremacion:variant read FIdCremacion write SetIdCremacion;
    property C_FechaDevolucion:string read FFechaDevolucion write SetFechaDevolucion;

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

constructor TAtaudUsos.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=7;
end;

procedure TAtaudUsos.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TAtaudUsos.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TAtaudUsos.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TAtaudUsos.Setid(Value:variant);
begin
  Fid:=Value;
end;

procedure TAtaudUsos.SetIdAtaud(Value:variant);
begin
  FIdAtaud:=Value;
end;

procedure TAtaudUsos.SetFechaUso(Value:string);
begin
  FFechaUso:=Value;
end;

procedure TAtaudUsos.SetIdSepelio(Value:variant);
begin
  FIdSepelio:=Value;
end;

procedure TAtaudUsos.SetIdTraslado(Value:variant);
begin
  FIdTraslado:=Value;
end;

procedure TAtaudUsos.SetIdCremacion(Value:variant);
begin
  FIdCremacion:=Value;
end;

procedure TAtaudUsos.SetFechaDevolucion(Value:string);
begin
  FFechaDevolucion:=Value;
end;

Function TAtaudUsos.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_AtaudUsosConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_id_PK:=DataSet.FieldByName('id').AsVariant;
  C_IdAtaud:=DataSet.FieldByName('IdAtaud').AsVariant;
  C_FechaUso:=DataSet.FieldByName('FechaUso').AsString;
  C_IdSepelio:=DataSet.FieldByName('IdSepelio').AsVariant;
  C_IdTraslado:=DataSet.FieldByName('IdTraslado').AsVariant;
  C_IdCremacion:=DataSet.FieldByName('IdCremacion').AsVariant;
  C_FechaDevolucion:=DataSet.FieldByName('FechaDevolucion').AsString;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TAtaudUsos.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_AtaudUsosConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TAtaudUsos.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TAtaudUsos.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TAtaudUsos.Agrega():boolean;
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
if (C_IdAtaud = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdAtaud));
Parametros.Add(C_FechaUso);
if (C_IdSepelio = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdSepelio));
if (C_IdTraslado = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdTraslado));
if (C_IdCremacion = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdCremacion));
Parametros.Add(C_FechaDevolucion);

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_AtaudUsosInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TAtaudUsos.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_AtaudUsosEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TAtaudUsos.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_id_PK));
if (C_IdAtaud = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdAtaud));
Parametros.Add(C_FechaUso);
if (C_IdSepelio = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdSepelio));
if (C_IdTraslado = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdTraslado));
if (C_IdCremacion = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdCremacion));
Parametros.Add(C_FechaDevolucion);


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_AtaudUsosModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

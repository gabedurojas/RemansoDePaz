unit ClaseParcelasNovedades;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TParcelasNovedades= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    Fid:variant;
    FNroaccion:variant;
    FNovedad:string;
    FResuelto:boolean;
    Ffechaalta:string;
    Ffecharesuelto:string;
    FPrioridad:variant;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure Setid(Value:variant);
    procedure SetNroaccion(Value:variant);
    procedure SetNovedad(Value:string);
    procedure SetResuelto(Value:boolean);
    procedure Setfechaalta(Value:string);
    procedure Setfecharesuelto(Value:string);
    procedure SetPrioridad(Value:variant);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_id_PK:variant read Fid write Setid;
    property C_Nroaccion:variant read FNroaccion write SetNroaccion;
    property C_Novedad:string read FNovedad write SetNovedad;
    property C_Resuelto:boolean read FResuelto write SetResuelto;
    property C_fechaalta:string read Ffechaalta write Setfechaalta;
    property C_fecharesuelto:string read Ffecharesuelto write Setfecharesuelto;
    property C_Prioridad:variant read FPrioridad write SetPrioridad;

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

constructor TParcelasNovedades.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=7;
end;

procedure TParcelasNovedades.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TParcelasNovedades.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TParcelasNovedades.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TParcelasNovedades.Setid(Value:variant);
begin
  Fid:=Value;
end;

procedure TParcelasNovedades.SetNroaccion(Value:variant);
begin
  FNroaccion:=Value;
end;

procedure TParcelasNovedades.SetNovedad(Value:string);
begin
  FNovedad:=Value;
end;

procedure TParcelasNovedades.SetResuelto(Value:boolean);
begin
  FResuelto:=Value;
end;

procedure TParcelasNovedades.Setfechaalta(Value:string);
begin
  Ffechaalta:=Value;
end;

procedure TParcelasNovedades.Setfecharesuelto(Value:string);
begin
  Ffecharesuelto:=Value;
end;

procedure TParcelasNovedades.SetPrioridad(Value:variant);
begin
  FPrioridad:=Value;
end;

Function TParcelasNovedades.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_ParcelasNovedadesConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_id_PK:=DataSet.FieldByName('id').AsVariant;
  C_Nroaccion:=DataSet.FieldByName('Nroaccion').AsVariant;
  C_Novedad:=DataSet.FieldByName('Novedad').AsString;
  C_Resuelto:=DataSet.FieldByName('Resuelto').AsBoolean;
  C_fechaalta:=DataSet.FieldByName('fechaalta').AsString;
  C_fecharesuelto:=DataSet.FieldByName('fecharesuelto').AsString;
  C_Prioridad:=DataSet.FieldByName('Prioridad').AsVariant;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TParcelasNovedades.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasNovedadesConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasNovedades.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasNovedades.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasNovedades.Agrega():boolean;
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
if (C_Nroaccion = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Nroaccion));
Parametros.Add(C_Novedad);
if C_Resuelto then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_fechaalta);
Parametros.Add(C_fecharesuelto);
if (C_Prioridad = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Prioridad));

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasNovedadesInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TParcelasNovedades.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasNovedadesEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TParcelasNovedades.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_id_PK));
if (C_Nroaccion = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Nroaccion));
Parametros.Add(C_Novedad);
if C_Resuelto then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_fechaalta);
Parametros.Add(C_fecharesuelto);
if (C_Prioridad = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Prioridad));


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasNovedadesModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

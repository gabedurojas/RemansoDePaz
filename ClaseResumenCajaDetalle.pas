unit ClaseResumenCajaDetalle;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TResumenCajaDetalle= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FIdDetalle:variant;
    FNroResumen:variant;
    FIdentificador:variant;
    FTabla:string;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetIdDetalle(Value:variant);
    procedure SetNroResumen(Value:variant);
    procedure SetIdentificador(Value:variant);
    procedure SetTabla(Value:string);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_IdDetalle_PK:variant read FIdDetalle write SetIdDetalle;
    property C_NroResumen:variant read FNroResumen write SetNroResumen;
    property C_Identificador:variant read FIdentificador write SetIdentificador;
    property C_Tabla:string read FTabla write SetTabla;

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

constructor TResumenCajaDetalle.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=4;
end;

procedure TResumenCajaDetalle.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TResumenCajaDetalle.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TResumenCajaDetalle.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TResumenCajaDetalle.SetIdDetalle(Value:variant);
begin
  FIdDetalle:=Value;
end;

procedure TResumenCajaDetalle.SetNroResumen(Value:variant);
begin
  FNroResumen:=Value;
end;

procedure TResumenCajaDetalle.SetIdentificador(Value:variant);
begin
  FIdentificador:=Value;
end;

procedure TResumenCajaDetalle.SetTabla(Value:string);
begin
  FTabla:=Value;
end;

Function TResumenCajaDetalle.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_ResumenCajaDetalleConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_IdDetalle_PK:=DataSet.FieldByName('IdDetalle').AsVariant;
  C_NroResumen:=DataSet.FieldByName('NroResumen').AsVariant;
  C_Identificador:=DataSet.FieldByName('Identificador').AsVariant;
  C_Tabla:=DataSet.FieldByName('Tabla').AsString;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TResumenCajaDetalle.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ResumenCajaDetalleConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TResumenCajaDetalle.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TResumenCajaDetalle.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TResumenCajaDetalle.Agrega():boolean;
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
if (C_NroResumen = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroResumen));
if (C_Identificador = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Identificador));
Parametros.Add(C_Tabla);

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ResumenCajaDetalleInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TResumenCajaDetalle.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_ResumenCajaDetalleEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TResumenCajaDetalle.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_IdDetalle_PK));
if (C_NroResumen = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroResumen));
if (C_Identificador = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Identificador));
Parametros.Add(C_Tabla);


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_ResumenCajaDetalleModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

unit ClasePlanillasCobranzasNumeros;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TPlanillasCobranzasNumeros= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FId:variant;
    FNroTalonario:variant;
    FNroFormulario:string;
    FNroPlanilla:variant;
    FFecha_A:string;
    FUsu_A:variant;
    FAnulado:boolean;
    FUsuAnula:variant;
    FFechaAnula:string;
    FMotivoAnula:string;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetId(Value:variant);
    procedure SetNroTalonario(Value:variant);
    procedure SetNroFormulario(Value:string);
    procedure SetNroPlanilla(Value:variant);
    procedure SetFecha_A(Value:string);
    procedure SetUsu_A(Value:variant);
    procedure SetAnulado(Value:boolean);
    procedure SetUsuAnula(Value:variant);
    procedure SetFechaAnula(Value:string);
    procedure SetMotivoAnula(Value:string);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_Id_IX1:variant read FId write SetId;
    property C_NroTalonario_IX2:variant read FNroTalonario write SetNroTalonario;
    property C_NroFormulario:string read FNroFormulario write SetNroFormulario;
    property C_NroPlanilla_IX3:variant read FNroPlanilla write SetNroPlanilla;
    property C_Fecha_A:string read FFecha_A write SetFecha_A;
    property C_Usu_A:variant read FUsu_A write SetUsu_A;
    property C_Anulado_IX4:boolean read FAnulado write SetAnulado;
    property C_UsuAnula:variant read FUsuAnula write SetUsuAnula;
    property C_FechaAnula:string read FFechaAnula write SetFechaAnula;
    property C_MotivoAnula:string read FMotivoAnula write SetMotivoAnula;

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

constructor TPlanillasCobranzasNumeros.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=10;
end;

procedure TPlanillasCobranzasNumeros.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TPlanillasCobranzasNumeros.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TPlanillasCobranzasNumeros.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TPlanillasCobranzasNumeros.SetId(Value:variant);
begin
  FId:=Value;
end;

procedure TPlanillasCobranzasNumeros.SetNroTalonario(Value:variant);
begin
  FNroTalonario:=Value;
end;

procedure TPlanillasCobranzasNumeros.SetNroFormulario(Value:string);
begin
  FNroFormulario:=Value;
end;

procedure TPlanillasCobranzasNumeros.SetNroPlanilla(Value:variant);
begin
  FNroPlanilla:=Value;
end;

procedure TPlanillasCobranzasNumeros.SetFecha_A(Value:string);
begin
  FFecha_A:=Value;
end;

procedure TPlanillasCobranzasNumeros.SetUsu_A(Value:variant);
begin
  FUsu_A:=Value;
end;

procedure TPlanillasCobranzasNumeros.SetAnulado(Value:boolean);
begin
  FAnulado:=Value;
end;

procedure TPlanillasCobranzasNumeros.SetUsuAnula(Value:variant);
begin
  FUsuAnula:=Value;
end;

procedure TPlanillasCobranzasNumeros.SetFechaAnula(Value:string);
begin
  FFechaAnula:=Value;
end;

procedure TPlanillasCobranzasNumeros.SetMotivoAnula(Value:string);
begin
  FMotivoAnula:=Value;
end;

Function TPlanillasCobranzasNumeros.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_PlanillasCobranzasNumerosConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_Id_IX1:=DataSet.FieldByName('Id').AsVariant;
  C_NroTalonario_IX2:=DataSet.FieldByName('NroTalonario').AsVariant;
  C_NroFormulario:=DataSet.FieldByName('NroFormulario').AsString;
  C_NroPlanilla_IX3:=DataSet.FieldByName('NroPlanilla').AsVariant;
  C_Fecha_A:=DataSet.FieldByName('Fecha_A').AsString;
  C_Usu_A:=DataSet.FieldByName('Usu_A').AsVariant;
  C_Anulado_IX4:=DataSet.FieldByName('Anulado').AsBoolean;
  C_UsuAnula:=DataSet.FieldByName('UsuAnula').AsVariant;
  C_FechaAnula:=DataSet.FieldByName('FechaAnula').AsString;
  C_MotivoAnula:=DataSet.FieldByName('MotivoAnula').AsString;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TPlanillasCobranzasNumeros.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_PlanillasCobranzasNumerosConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TPlanillasCobranzasNumeros.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TPlanillasCobranzasNumeros.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TPlanillasCobranzasNumeros.Agrega():boolean;
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
if (C_NroTalonario_IX2 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroTalonario_IX2));
Parametros.Add(C_NroFormulario);
if (C_NroPlanilla_IX3 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroPlanilla_IX3));
if (C_Usu_A = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_A));
if C_Anulado_IX4 then Parametros.Add('1')
else Parametros.Add('0');
if (C_UsuAnula = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_UsuAnula));
Parametros.Add(C_FechaAnula);
Parametros.Add(C_MotivoAnula);

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_PlanillasCobranzasNumerosInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TPlanillasCobranzasNumeros.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_PlanillasCobranzasNumerosEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TPlanillasCobranzasNumeros.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
if (C_NroTalonario_IX2 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroTalonario_IX2));
Parametros.Add(C_NroFormulario);
if (C_NroPlanilla_IX3 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroPlanilla_IX3));
if C_Anulado_IX4 then Parametros.Add('1')
else Parametros.Add('0');
if (C_UsuAnula = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_UsuAnula));
Parametros.Add(C_FechaAnula);
Parametros.Add(C_MotivoAnula);


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_PlanillasCobranzasNumerosModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

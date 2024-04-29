unit ClaseParcelasCoeficientes;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TParcelasCoeficientes= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FId:variant;
    FCodigo:variant;
    FNroCuota:variant;
    FCoeficiente:variant;
    FInteresAplicado:variant;
    FActivo:boolean;
    FFechaActivo:string;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetId(Value:variant);
    procedure SetCodigo(Value:variant);
    procedure SetNroCuota(Value:variant);
    procedure SetCoeficiente(Value:variant);
    procedure SetInteresAplicado(Value:variant);
    procedure SetActivo(Value:boolean);
    procedure SetFechaActivo(Value:string);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_Id_PK:variant read FId write SetId;
    property C_Codigo_IX1:variant read FCodigo write SetCodigo;
    property C_NroCuota_IX2:variant read FNroCuota write SetNroCuota;
    property C_Coeficiente:variant read FCoeficiente write SetCoeficiente;
    property C_InteresAplicado:variant read FInteresAplicado write SetInteresAplicado;
    property C_Activo:boolean read FActivo write SetActivo;
    property C_FechaActivo:string read FFechaActivo write SetFechaActivo;

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

constructor TParcelasCoeficientes.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=7;
end;

procedure TParcelasCoeficientes.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TParcelasCoeficientes.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TParcelasCoeficientes.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TParcelasCoeficientes.SetId(Value:variant);
begin
  FId:=Value;
end;

procedure TParcelasCoeficientes.SetCodigo(Value:variant);
begin
  FCodigo:=Value;
end;

procedure TParcelasCoeficientes.SetNroCuota(Value:variant);
begin
  FNroCuota:=Value;
end;

procedure TParcelasCoeficientes.SetCoeficiente(Value:variant);
begin
  FCoeficiente:=Value;
end;

procedure TParcelasCoeficientes.SetInteresAplicado(Value:variant);
begin
  FInteresAplicado:=Value;
end;

procedure TParcelasCoeficientes.SetActivo(Value:boolean);
begin
  FActivo:=Value;
end;

procedure TParcelasCoeficientes.SetFechaActivo(Value:string);
begin
  FFechaActivo:=Value;
end;

Function TParcelasCoeficientes.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_ParcelasCoeficientesConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_Id_PK:=DataSet.FieldByName('Id').AsVariant;
  C_Codigo_IX1:=DataSet.FieldByName('Codigo').AsVariant;
  C_NroCuota_IX2:=DataSet.FieldByName('NroCuota').AsVariant;
  C_Coeficiente:=DataSet.FieldByName('Coeficiente').AsVariant;
  C_InteresAplicado:=DataSet.FieldByName('InteresAplicado').AsVariant;
  C_Activo:=DataSet.FieldByName('Activo').AsBoolean;
  C_FechaActivo:=DataSet.FieldByName('FechaActivo').AsString;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TParcelasCoeficientes.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasCoeficientesConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasCoeficientes.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasCoeficientes.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasCoeficientes.Agrega():boolean;
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
if (C_Codigo_IX1 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Codigo_IX1));
if (C_NroCuota_IX2 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroCuota_IX2));
if (C_Coeficiente = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Coeficiente));
if (C_InteresAplicado = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_InteresAplicado));
if C_Activo then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_FechaActivo);

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasCoeficientesInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TParcelasCoeficientes.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasCoeficientesEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TParcelasCoeficientes.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_Id_PK));
if (C_Codigo_IX1 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Codigo_IX1));
if (C_NroCuota_IX2 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroCuota_IX2));
if (C_Coeficiente = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Coeficiente));
if (C_InteresAplicado = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_InteresAplicado));
if C_Activo then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_FechaActivo);


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasCoeficientesModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

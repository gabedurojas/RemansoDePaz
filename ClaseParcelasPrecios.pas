unit ClaseParcelasPrecios;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TParcelasPrecios= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FId:variant;
    FTipoColor:variant;
    FIdSector:variant;
    FVigencia:string;
    FPrecioLista:variant;
    FPrecioContado:variant;
    FAnticipo:variant;
    FObservaciones:string;
    FActivo:boolean;
    FFecha_A:string;
    FUsu_A:variant;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetId(Value:variant);
    procedure SetTipoColor(Value:variant);
    procedure SetIdSector(Value:variant);
    procedure SetVigencia(Value:string);
    procedure SetPrecioLista(Value:variant);
    procedure SetPrecioContado(Value:variant);
    procedure SetAnticipo(Value:variant);
    procedure SetObservaciones(Value:string);
    procedure SetActivo(Value:boolean);
    procedure SetFecha_A(Value:string);
    procedure SetUsu_A(Value:variant);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_Id_PK:variant read FId write SetId;
    property C_TipoColor:variant read FTipoColor write SetTipoColor;
    property C_IdSector:variant read FIdSector write SetIdSector;
    property C_Vigencia:string read FVigencia write SetVigencia;
    property C_PrecioLista:variant read FPrecioLista write SetPrecioLista;
    property C_PrecioContado:variant read FPrecioContado write SetPrecioContado;
    property C_Anticipo:variant read FAnticipo write SetAnticipo;
    property C_Observaciones:string read FObservaciones write SetObservaciones;
    property C_Activo:boolean read FActivo write SetActivo;
    property C_Fecha_A:string read FFecha_A write SetFecha_A;
    property C_Usu_A:variant read FUsu_A write SetUsu_A;

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

constructor TParcelasPrecios.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=11;
end;

procedure TParcelasPrecios.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TParcelasPrecios.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TParcelasPrecios.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TParcelasPrecios.SetId(Value:variant);
begin
  FId:=Value;
end;

procedure TParcelasPrecios.SetTipoColor(Value:variant);
begin
  FTipoColor:=Value;
end;

procedure TParcelasPrecios.SetIdSector(Value:variant);
begin
  FIdSector:=Value;
end;

procedure TParcelasPrecios.SetVigencia(Value:string);
begin
  FVigencia:=Value;
end;

procedure TParcelasPrecios.SetPrecioLista(Value:variant);
begin
  FPrecioLista:=Value;
end;

procedure TParcelasPrecios.SetPrecioContado(Value:variant);
begin
  FPrecioContado:=Value;
end;

procedure TParcelasPrecios.SetAnticipo(Value:variant);
begin
  FAnticipo:=Value;
end;

procedure TParcelasPrecios.SetObservaciones(Value:string);
begin
  FObservaciones:=Value;
end;

procedure TParcelasPrecios.SetActivo(Value:boolean);
begin
  FActivo:=Value;
end;

procedure TParcelasPrecios.SetFecha_A(Value:string);
begin
  FFecha_A:=Value;
end;

procedure TParcelasPrecios.SetUsu_A(Value:variant);
begin
  FUsu_A:=Value;
end;

Function TParcelasPrecios.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_ParcelasPreciosConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_Id_PK:=DataSet.FieldByName('Id').AsVariant;
  C_TipoColor:=DataSet.FieldByName('TipoColor').AsVariant;
  C_IdSector:=DataSet.FieldByName('IdSector').AsVariant;
  C_Vigencia:=DataSet.FieldByName('Vigencia').AsString;
  C_PrecioLista:=DataSet.FieldByName('PrecioLista').AsVariant;
  C_PrecioContado:=DataSet.FieldByName('PrecioContado').AsVariant;
  C_Anticipo:=DataSet.FieldByName('Anticipo').AsVariant;
  C_Observaciones:=DataSet.FieldByName('Observaciones').AsString;
  C_Activo:=DataSet.FieldByName('Activo').AsBoolean;
  C_Fecha_A:=DataSet.FieldByName('Fecha_A').AsString;
  C_Usu_A:=DataSet.FieldByName('Usu_A').AsVariant;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TParcelasPrecios.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasPreciosConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasPrecios.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasPrecios.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasPrecios.Agrega():boolean;
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
if (C_TipoColor = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_TipoColor));
if (C_IdSector = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdSector));
Parametros.Add(C_Vigencia);
if (C_PrecioLista = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_PrecioLista));
if (C_PrecioContado = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_PrecioContado));
if (C_Anticipo = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Anticipo));
Parametros.Add(C_Observaciones);
if C_Activo then Parametros.Add('1')
else Parametros.Add('0');
if (C_Usu_A = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_A));

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasPreciosInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TParcelasPrecios.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasPreciosEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TParcelasPrecios.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_Id_PK));
if (C_TipoColor = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_TipoColor));
if (C_IdSector = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdSector));
Parametros.Add(C_Vigencia);
if (C_PrecioLista = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_PrecioLista));
if (C_PrecioContado = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_PrecioContado));
if (C_Anticipo = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Anticipo));
Parametros.Add(C_Observaciones);
if C_Activo then Parametros.Add('1')
else Parametros.Add('0');


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasPreciosModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

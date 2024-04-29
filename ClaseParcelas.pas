unit ClaseParcelas;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TParcelas= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FNroAccion:variant;
    FNroTitulo:variant;
    FSector:string;
    FCodigoPlaza:string;
    FParcela:variant;
    FNroActa:variant;
    FNomenclatura:string;
    FIdPlaza:variant;
    FTipoColor:variant;
    FPosX1:variant;
    FPosY1:variant;
    FPosX2:variant;
    FPosY2:variant;
    FFecha_M:string;
    FUsu_M:variant;
    FCuifCobrador:variant;
    FEspacioVerde:boolean;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetNroAccion(Value:variant);
    procedure SetNroTitulo(Value:variant);
    procedure SetSector(Value:string);
    procedure SetCodigoPlaza(Value:string);
    procedure SetParcela(Value:variant);
    procedure SetNroActa(Value:variant);
    procedure SetNomenclatura(Value:string);
    procedure SetIdPlaza(Value:variant);
    procedure SetTipoColor(Value:variant);
    procedure SetPosX1(Value:variant);
    procedure SetPosY1(Value:variant);
    procedure SetPosX2(Value:variant);
    procedure SetPosY2(Value:variant);
    procedure SetFecha_M(Value:string);
    procedure SetUsu_M(Value:variant);
    procedure SetCuifCobrador(Value:variant);
    procedure SetEspacioVerde(Value:boolean);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_NroAccion_PK:variant read FNroAccion write SetNroAccion;
    property C_NroTitulo_IX1:variant read FNroTitulo write SetNroTitulo;
    property C_Sector_IX2:string read FSector write SetSector;
    property C_CodigoPlaza_IX3:string read FCodigoPlaza write SetCodigoPlaza;
    property C_Parcela:variant read FParcela write SetParcela;
    property C_NroActa:variant read FNroActa write SetNroActa;
    property C_Nomenclatura_IX4:string read FNomenclatura write SetNomenclatura;
    property C_IdPlaza:variant read FIdPlaza write SetIdPlaza;
    property C_TipoColor:variant read FTipoColor write SetTipoColor;
    property C_PosX1_IX5:variant read FPosX1 write SetPosX1;
    property C_PosY1_IX6:variant read FPosY1 write SetPosY1;
    property C_PosX2_IX7:variant read FPosX2 write SetPosX2;
    property C_PosY2_IX8:variant read FPosY2 write SetPosY2;
    property C_Fecha_M:string read FFecha_M write SetFecha_M;
    property C_Usu_M:variant read FUsu_M write SetUsu_M;
    property C_CuifCobrador:variant read FCuifCobrador write SetCuifCobrador;
    property C_EspacioVerde:boolean read FEspacioVerde write SetEspacioVerde;

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

constructor TParcelas.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=17;
end;

procedure TParcelas.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TParcelas.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TParcelas.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TParcelas.SetNroAccion(Value:variant);
begin
  FNroAccion:=Value;
end;

procedure TParcelas.SetNroTitulo(Value:variant);
begin
  FNroTitulo:=Value;
end;

procedure TParcelas.SetSector(Value:string);
begin
  FSector:=Value;
end;

procedure TParcelas.SetCodigoPlaza(Value:string);
begin
  FCodigoPlaza:=Value;
end;

procedure TParcelas.SetParcela(Value:variant);
begin
  FParcela:=Value;
end;

procedure TParcelas.SetNroActa(Value:variant);
begin
  FNroActa:=Value;
end;

procedure TParcelas.SetNomenclatura(Value:string);
begin
  FNomenclatura:=Value;
end;

procedure TParcelas.SetIdPlaza(Value:variant);
begin
  FIdPlaza:=Value;
end;

procedure TParcelas.SetTipoColor(Value:variant);
begin
  FTipoColor:=Value;
end;

procedure TParcelas.SetPosX1(Value:variant);
begin
  FPosX1:=Value;
end;

procedure TParcelas.SetPosY1(Value:variant);
begin
  FPosY1:=Value;
end;

procedure TParcelas.SetPosX2(Value:variant);
begin
  FPosX2:=Value;
end;

procedure TParcelas.SetPosY2(Value:variant);
begin
  FPosY2:=Value;
end;

procedure TParcelas.SetFecha_M(Value:string);
begin
  FFecha_M:=Value;
end;

procedure TParcelas.SetUsu_M(Value:variant);
begin
  FUsu_M:=Value;
end;

procedure TParcelas.SetCuifCobrador(Value:variant);
begin
  FCuifCobrador:=Value;
end;

procedure TParcelas.SetEspacioVerde(Value:boolean);
begin
  FEspacioVerde:=Value;
end;

Function TParcelas.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_ParcelasConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_NroAccion_PK:=DataSet.FieldByName('NroAccion').AsVariant;
  C_NroTitulo_IX1:=DataSet.FieldByName('NroTitulo').AsVariant;
  C_Sector_IX2:=DataSet.FieldByName('Sector').AsString;
  C_CodigoPlaza_IX3:=DataSet.FieldByName('CodigoPlaza').AsString;
  C_Parcela:=DataSet.FieldByName('Parcela').AsVariant;
  C_NroActa:=DataSet.FieldByName('NroActa').AsVariant;
  C_Nomenclatura_IX4:=DataSet.FieldByName('Nomenclatura').AsString;
  C_IdPlaza:=DataSet.FieldByName('IdPlaza').AsVariant;
  C_TipoColor:=DataSet.FieldByName('TipoColor').AsVariant;
  C_PosX1_IX5:=DataSet.FieldByName('PosX1').AsVariant;
  C_PosY1_IX6:=DataSet.FieldByName('PosY1').AsVariant;
  C_PosX2_IX7:=DataSet.FieldByName('PosX2').AsVariant;
  C_PosY2_IX8:=DataSet.FieldByName('PosY2').AsVariant;
  C_Fecha_M:=DataSet.FieldByName('Fecha_M').AsString;
  C_Usu_M:=DataSet.FieldByName('Usu_M').AsVariant;
  C_CuifCobrador:=StrToInt64(DataSet.FieldByName('CuifCobrador').AsString);
  C_EspacioVerde:=DataSet.FieldByName('EspacioVerde').AsBoolean;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TParcelas.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelas.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelas.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelas.Agrega():boolean;
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
if (C_NroAccion_PK = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroAccion_PK));
if (C_NroTitulo_IX1 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroTitulo_IX1));
Parametros.Add(C_Sector_IX2);
Parametros.Add(C_CodigoPlaza_IX3);
if (C_Parcela = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Parcela));
if (C_NroActa = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroActa));
Parametros.Add(C_Nomenclatura_IX4);
if (C_IdPlaza = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdPlaza));
if (C_TipoColor = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_TipoColor));
if (C_PosX1_IX5 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_PosX1_IX5));
if (C_PosY1_IX6 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_PosY1_IX6));
if (C_PosX2_IX7 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_PosX2_IX7));
if (C_PosY2_IX8 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_PosY2_IX8));
Parametros.Add(C_Fecha_M);
if (C_Usu_M = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_M));
if (C_CuifCobrador = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuifCobrador));
if C_EspacioVerde then Parametros.Add('1')
else Parametros.Add('0');

//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasInsertar',Parametros);

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TParcelas.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TParcelas.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
if (C_NroAccion_PK = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroAccion_PK));
if (C_NroTitulo_IX1 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroTitulo_IX1));
Parametros.Add(C_Sector_IX2);
Parametros.Add(C_CodigoPlaza_IX3);
if (C_Parcela = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Parcela));
if (C_NroActa = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroActa));
Parametros.Add(C_Nomenclatura_IX4);
if (C_IdPlaza = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdPlaza));
if (C_TipoColor = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_TipoColor));
if (C_PosX1_IX5 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_PosX1_IX5));
if (C_PosY1_IX6 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_PosY1_IX6));
if (C_PosX2_IX7 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_PosX2_IX7));
if (C_PosY2_IX8 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_PosY2_IX8));
Parametros.Add(C_Fecha_M);
if (C_Usu_M = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_M));
if (C_CuifCobrador = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuifCobrador));
if C_EspacioVerde then Parametros.Add('1')
else Parametros.Add('0');


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

unit ClaseParcelasTitulares;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TParcelasTitulares= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FId:variant;
    FCuif:variant;
    FFecha:string;
    FNroAccion:variant;
    FNroTipoAcc:variant;
    FNivel:variant;
    FActivo:boolean;
    FObservaciones:string;
    FFecha_A:string;
    FUsu_A:variant;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetId(Value:variant);
    procedure SetCuif(Value:variant);
    procedure SetFecha(Value:string);
    procedure SetNroAccion(Value:variant);
    procedure SetNroTipoAcc(Value:variant);
    procedure SetNivel(Value:variant);
    procedure SetActivo(Value:boolean);
    procedure SetObservaciones(Value:string);
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
    property C_Cuif:variant read FCuif write SetCuif;
    property C_Fecha_IX1:string read FFecha write SetFecha;
    property C_NroAccion_IX2:variant read FNroAccion write SetNroAccion;
    property C_NroTipoAcc_IX3:variant read FNroTipoAcc write SetNroTipoAcc;
    property C_Nivel_IX4:variant read FNivel write SetNivel;
    property C_Activo:boolean read FActivo write SetActivo;
    property C_Observaciones:string read FObservaciones write SetObservaciones;
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

constructor TParcelasTitulares.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=10;
end;

procedure TParcelasTitulares.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TParcelasTitulares.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TParcelasTitulares.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TParcelasTitulares.SetId(Value:variant);
begin
  FId:=Value;
end;

procedure TParcelasTitulares.SetCuif(Value:variant);
begin
  FCuif:=Value;
end;

procedure TParcelasTitulares.SetFecha(Value:string);
begin
  FFecha:=Value;
end;

procedure TParcelasTitulares.SetNroAccion(Value:variant);
begin
  FNroAccion:=Value;
end;

procedure TParcelasTitulares.SetNroTipoAcc(Value:variant);
begin
  FNroTipoAcc:=Value;
end;

procedure TParcelasTitulares.SetNivel(Value:variant);
begin
  FNivel:=Value;
end;

procedure TParcelasTitulares.SetActivo(Value:boolean);
begin
  FActivo:=Value;
end;

procedure TParcelasTitulares.SetObservaciones(Value:string);
begin
  FObservaciones:=Value;
end;

procedure TParcelasTitulares.SetFecha_A(Value:string);
begin
  FFecha_A:=Value;
end;

procedure TParcelasTitulares.SetUsu_A(Value:variant);
begin
  FUsu_A:=Value;
end;

Function TParcelasTitulares.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_ParcelasTitularesConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_Id_PK:=DataSet.FieldByName('Id').AsVariant;
  C_Cuif:=StrToInt64(DataSet.FieldByName('Cuif').AsString);
  C_Fecha_IX1:=DataSet.FieldByName('Fecha').AsString;
  C_NroAccion_IX2:=DataSet.FieldByName('NroAccion').AsVariant;
  C_NroTipoAcc_IX3:=DataSet.FieldByName('NroTipoAcc').AsVariant;
  C_Nivel_IX4:=DataSet.FieldByName('Nivel').AsVariant;
  C_Activo:=DataSet.FieldByName('Activo').AsBoolean;
  C_Observaciones:=DataSet.FieldByName('Observaciones').AsString;
  C_Fecha_A:=DataSet.FieldByName('Fecha_A').AsString;
  C_Usu_A:=DataSet.FieldByName('Usu_A').AsVariant;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TParcelasTitulares.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasTitularesConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasTitulares.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasTitulares.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasTitulares.Agrega():boolean;
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
if (C_Cuif = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Cuif));
Parametros.Add(C_Fecha_IX1);
if (C_NroAccion_IX2 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroAccion_IX2));
if (C_NroTipoAcc_IX3 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroTipoAcc_IX3));
if (C_Nivel_IX4 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Nivel_IX4));
if C_Activo then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_Observaciones);
if (C_Usu_A = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_A));

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasTitularesInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TParcelasTitulares.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasTitularesEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TParcelasTitulares.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_Id_PK));
if (C_Cuif = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Cuif));
Parametros.Add(C_Fecha_IX1);
if (C_NroAccion_IX2 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroAccion_IX2));
if (C_NroTipoAcc_IX3 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroTipoAcc_IX3));
if (C_Nivel_IX4 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Nivel_IX4));
if C_Activo then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_Observaciones);


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasTitularesModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

unit ClasePersonalAreasComision;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TPersonalAreasComision= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FId:variant;
    FIdPersonalArea:variant;
    FNroTipo:variant;
    FComision:variant;
    FPorcentual:boolean;
    FActivo:boolean;
    FUsu_A:variant;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetId(Value:variant);
    procedure SetIdPersonalArea(Value:variant);
    procedure SetNroTipo(Value:variant);
    procedure SetComision(Value:variant);
    procedure SetPorcentual(Value:boolean);
    procedure SetActivo(Value:boolean);
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
    property C_IdPersonalArea_IX1:variant read FIdPersonalArea write SetIdPersonalArea;
    property C_NroTipo_IX2:variant read FNroTipo write SetNroTipo;
    property C_Comision:variant read FComision write SetComision;
    property C_Porcentual:boolean read FPorcentual write SetPorcentual;
    property C_Activo:boolean read FActivo write SetActivo;
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

constructor TPersonalAreasComision.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=7;
end;

procedure TPersonalAreasComision.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TPersonalAreasComision.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TPersonalAreasComision.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TPersonalAreasComision.SetId(Value:variant);
begin
  FId:=Value;
end;

procedure TPersonalAreasComision.SetIdPersonalArea(Value:variant);
begin
  FIdPersonalArea:=Value;
end;

procedure TPersonalAreasComision.SetNroTipo(Value:variant);
begin
  FNroTipo:=Value;
end;

procedure TPersonalAreasComision.SetComision(Value:variant);
begin
  FComision:=Value;
end;

procedure TPersonalAreasComision.SetPorcentual(Value:boolean);
begin
  FPorcentual:=Value;
end;

procedure TPersonalAreasComision.SetActivo(Value:boolean);
begin
  FActivo:=Value;
end;

procedure TPersonalAreasComision.SetUsu_A(Value:variant);
begin
  FUsu_A:=Value;
end;

Function TPersonalAreasComision.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_PersonalAreasComisionConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_Id_PK:=DataSet.FieldByName('Id').AsVariant;
  C_IdPersonalArea_IX1:=DataSet.FieldByName('IdPersonalArea').AsVariant;
  C_NroTipo_IX2:=DataSet.FieldByName('NroTipo').AsVariant;
  C_Comision:=DataSet.FieldByName('Comision').AsVariant;
  C_Porcentual:=DataSet.FieldByName('Porcentual').AsBoolean;
  C_Activo:=DataSet.FieldByName('Activo').AsBoolean;
  C_Usu_A:=DataSet.FieldByName('Usu_A').AsVariant;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TPersonalAreasComision.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_PersonalAreasComisionConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TPersonalAreasComision.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TPersonalAreasComision.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TPersonalAreasComision.Agrega():boolean;
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
if (C_IdPersonalArea_IX1 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdPersonalArea_IX1));
if (C_NroTipo_IX2 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroTipo_IX2));
if (C_Comision = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Comision));
if C_Porcentual then Parametros.Add('1')
else Parametros.Add('0');
if C_Activo then Parametros.Add('1')
else Parametros.Add('0');
if (C_Usu_A = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_A));

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_PersonalAreasComisionInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TPersonalAreasComision.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_PersonalAreasComisionEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TPersonalAreasComision.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_Id_PK));
if (C_IdPersonalArea_IX1 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdPersonalArea_IX1));
if (C_NroTipo_IX2 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroTipo_IX2));
if (C_Comision = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Comision));
if C_Porcentual then Parametros.Add('1')
else Parametros.Add('0');
if C_Activo then Parametros.Add('1')
else Parametros.Add('0');


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_PersonalAreasComisionModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

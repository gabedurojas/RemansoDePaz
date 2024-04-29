unit ClaseClientes;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TClientes= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FIdCliente:variant;
    FCuif:variant;
    FRazonSocial:string;
    FAlias:string;
    FTipoDoc:variant;
    FNroDni:variant;
    FSexo:string;
    FCuit:string;
    FNroReligion:variant;
    FNroNacionalidad:variant;
    FNroProfesion:variant;
    FIdEstado:variant;
    FFechaNacimiento:string;
    FIdProvincia:variant;
    FIdLocalidad:variant;
    FIdBarrio:variant;
    FDomicilio:string;
    FCodigoPostal:variant;
    Fmail:string;
    FObservaciones:string;
    FIdCategoria:variant;
    FDirFoto:string;
    FEsJubilado:boolean;
    FUsu_A:variant;
    FUsu_M:variant;
    FFecha_M:string;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetIdCliente(Value:variant);
    procedure SetCuif(Value:variant);
    procedure SetRazonSocial(Value:string);
    procedure SetAlias(Value:string);
    procedure SetTipoDoc(Value:variant);
    procedure SetNroDni(Value:variant);
    procedure SetSexo(Value:string);
    procedure SetCuit(Value:string);
    procedure SetNroReligion(Value:variant);
    procedure SetNroNacionalidad(Value:variant);
    procedure SetNroProfesion(Value:variant);
    procedure SetIdEstado(Value:variant);
    procedure SetFechaNacimiento(Value:string);
    procedure SetIdProvincia(Value:variant);
    procedure SetIdLocalidad(Value:variant);
    procedure SetIdBarrio(Value:variant);
    procedure SetDomicilio(Value:string);
    procedure SetCodigoPostal(Value:variant);
    procedure Setmail(Value:string);
    procedure SetObservaciones(Value:string);
    procedure SetIdCategoria(Value:variant);
    procedure SetDirFoto(Value:string);
    procedure SetEsJubilado(Value:boolean);
    procedure SetUsu_A(Value:variant);
    procedure SetUsu_M(Value:variant);
    procedure SetFecha_M(Value:string);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_IdCliente_IX1:variant read FIdCliente write SetIdCliente;
    property C_Cuif_PK:variant read FCuif write SetCuif;
    property C_RazonSocial_IX2:string read FRazonSocial write SetRazonSocial;
    property C_Alias:string read FAlias write SetAlias;
    property C_TipoDoc:variant read FTipoDoc write SetTipoDoc;
    property C_NroDni_IX3:variant read FNroDni write SetNroDni;
    property C_Sexo:string read FSexo write SetSexo;
    property C_Cuit:string read FCuit write SetCuit;
    property C_NroReligion:variant read FNroReligion write SetNroReligion;
    property C_NroNacionalidad_IX4:variant read FNroNacionalidad write SetNroNacionalidad;
    property C_NroProfesion_IX5:variant read FNroProfesion write SetNroProfesion;
    property C_IdEstado_IX6:variant read FIdEstado write SetIdEstado;
    property C_FechaNacimiento:string read FFechaNacimiento write SetFechaNacimiento;
    property C_IdProvincia_IX7:variant read FIdProvincia write SetIdProvincia;
    property C_IdLocalidad_IX8:variant read FIdLocalidad write SetIdLocalidad;
    property C_IdBarrio_IX9:variant read FIdBarrio write SetIdBarrio;
    property C_Domicilio:string read FDomicilio write SetDomicilio;
    property C_CodigoPostal_IX10:variant read FCodigoPostal write SetCodigoPostal;
    property C_mail:string read Fmail write Setmail;
    property C_Observaciones:string read FObservaciones write SetObservaciones;
    property C_IdCategoria_IX11:variant read FIdCategoria write SetIdCategoria;
    property C_DirFoto:string read FDirFoto write SetDirFoto;
    property C_EsJubilado:boolean read FEsJubilado write SetEsJubilado;
    property C_Usu_A:variant read FUsu_A write SetUsu_A;
    property C_Usu_M:variant read FUsu_M write SetUsu_M;
    property C_Fecha_M:string read FFecha_M write SetFecha_M;

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

constructor TClientes.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=26;
end;

procedure TClientes.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TClientes.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TClientes.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TClientes.SetIdCliente(Value:variant);
begin
  FIdCliente:=Value;
end;

procedure TClientes.SetCuif(Value:variant);
begin
  FCuif:=Value;
end;

procedure TClientes.SetRazonSocial(Value:string);
begin
  FRazonSocial:=Value;
end;

procedure TClientes.SetAlias(Value:string);
begin
  FAlias:=Value;
end;

procedure TClientes.SetTipoDoc(Value:variant);
begin
  FTipoDoc:=Value;
end;

procedure TClientes.SetNroDni(Value:variant);
begin
  FNroDni:=Value;
end;

procedure TClientes.SetSexo(Value:string);
begin
  FSexo:=Value;
end;

procedure TClientes.SetCuit(Value:string);
begin
  FCuit:=Value;
end;

procedure TClientes.SetNroReligion(Value:variant);
begin
  FNroReligion:=Value;
end;

procedure TClientes.SetNroNacionalidad(Value:variant);
begin
  FNroNacionalidad:=Value;
end;

procedure TClientes.SetNroProfesion(Value:variant);
begin
  FNroProfesion:=Value;
end;

procedure TClientes.SetIdEstado(Value:variant);
begin
  FIdEstado:=Value;
end;

procedure TClientes.SetFechaNacimiento(Value:string);
begin
  FFechaNacimiento:=Value;
end;

procedure TClientes.SetIdProvincia(Value:variant);
begin
  FIdProvincia:=Value;
end;

procedure TClientes.SetIdLocalidad(Value:variant);
begin
  FIdLocalidad:=Value;
end;

procedure TClientes.SetIdBarrio(Value:variant);
begin
  FIdBarrio:=Value;
end;

procedure TClientes.SetDomicilio(Value:string);
begin
  FDomicilio:=Value;
end;

procedure TClientes.SetCodigoPostal(Value:variant);
begin
  FCodigoPostal:=Value;
end;

procedure TClientes.Setmail(Value:string);
begin
  Fmail:=Value;
end;

procedure TClientes.SetObservaciones(Value:string);
begin
  FObservaciones:=Value;
end;

procedure TClientes.SetIdCategoria(Value:variant);
begin
  FIdCategoria:=Value;
end;

procedure TClientes.SetDirFoto(Value:string);
begin
  FDirFoto:=Value;
end;

procedure TClientes.SetEsJubilado(Value:boolean);
begin
  FEsJubilado:=Value;
end;

procedure TClientes.SetUsu_A(Value:variant);
begin
  FUsu_A:=Value;
end;

procedure TClientes.SetUsu_M(Value:variant);
begin
  FUsu_M:=Value;
end;

procedure TClientes.SetFecha_M(Value:string);
begin
  FFecha_M:=Value;
end;

Function TClientes.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_ClientesConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_IdCliente_IX1:=DataSet.FieldByName('IdCliente').AsVariant;
  C_Cuif_PK:=StrToInt64(DataSet.FieldByName('Cuif').AsString);
  C_RazonSocial_IX2:=DataSet.FieldByName('RazonSocial').AsString;
  C_Alias:=DataSet.FieldByName('Alias').AsString;
  C_TipoDoc:=DataSet.FieldByName('TipoDoc').AsVariant;
  C_NroDni_IX3:=DataSet.FieldByName('NroDni').AsVariant;
  C_Sexo:=DataSet.FieldByName('Sexo').AsString;
  C_Cuit:=DataSet.FieldByName('Cuit').AsString;
  C_NroReligion:=DataSet.FieldByName('NroReligion').AsVariant;
  C_NroNacionalidad_IX4:=DataSet.FieldByName('NroNacionalidad').AsVariant;
  C_NroProfesion_IX5:=DataSet.FieldByName('NroProfesion').AsVariant;
  C_IdEstado_IX6:=DataSet.FieldByName('IdEstado').AsVariant;
  C_FechaNacimiento:=DataSet.FieldByName('FechaNacimiento').AsString;
  C_IdProvincia_IX7:=DataSet.FieldByName('IdProvincia').AsVariant;
  C_IdLocalidad_IX8:=DataSet.FieldByName('IdLocalidad').AsVariant;
  C_IdBarrio_IX9:=DataSet.FieldByName('IdBarrio').AsVariant;
  C_Domicilio:=DataSet.FieldByName('Domicilio').AsString;
  C_CodigoPostal_IX10:=DataSet.FieldByName('CodigoPostal').AsVariant;
  C_mail:=DataSet.FieldByName('mail').AsString;
  C_Observaciones:=DataSet.FieldByName('Observaciones').AsString;
  C_IdCategoria_IX11:=DataSet.FieldByName('IdCategoria').AsVariant;
  C_DirFoto:=DataSet.FieldByName('DirFoto').AsString;
  C_EsJubilado:=DataSet.FieldByName('EsJubilado').AsBoolean;
  C_Usu_A:=DataSet.FieldByName('Usu_A').AsVariant;
  C_Usu_M:=DataSet.FieldByName('Usu_M').AsVariant;
  C_Fecha_M:=DataSet.FieldByName('Fecha_M').AsString;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TClientes.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ClientesConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TClientes.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TClientes.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TClientes.Agrega():boolean;
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
if (C_Cuif_PK = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Cuif_PK));
Parametros.Add(C_RazonSocial_IX2);
Parametros.Add(C_Alias);
if (C_TipoDoc = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_TipoDoc));
if (C_NroDni_IX3 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroDni_IX3));
Parametros.Add(C_Sexo);
Parametros.Add(C_Cuit);
if (C_NroReligion = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroReligion));
if (C_NroNacionalidad_IX4 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroNacionalidad_IX4));
if (C_NroProfesion_IX5 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroProfesion_IX5));
if (C_IdEstado_IX6 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdEstado_IX6));
Parametros.Add(C_FechaNacimiento);
if (C_IdProvincia_IX7 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdProvincia_IX7));
if (C_IdLocalidad_IX8 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdLocalidad_IX8));
if (C_IdBarrio_IX9 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdBarrio_IX9));
Parametros.Add(C_Domicilio);
if (C_CodigoPostal_IX10 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CodigoPostal_IX10));
Parametros.Add(C_mail);
Parametros.Add(C_Observaciones);
if (C_IdCategoria_IX11 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdCategoria_IX11));
Parametros.Add(C_DirFoto);
if C_EsJubilado then Parametros.Add('1')
else Parametros.Add('0');
if (C_Usu_A = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_A));
if (C_Usu_M = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_M));
Parametros.Add(C_Fecha_M);

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ClientesInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TClientes.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_ClientesEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TClientes.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
if (C_Cuif_PK = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Cuif_PK));
Parametros.Add(C_RazonSocial_IX2);
Parametros.Add(C_Alias);
if (C_TipoDoc = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_TipoDoc));
if (C_NroDni_IX3 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroDni_IX3));
Parametros.Add(C_Sexo);
Parametros.Add(C_Cuit);
if (C_NroReligion = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroReligion));
if (C_NroNacionalidad_IX4 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroNacionalidad_IX4));
if (C_NroProfesion_IX5 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroProfesion_IX5));
if (C_IdEstado_IX6 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdEstado_IX6));
Parametros.Add(C_FechaNacimiento);
if (C_IdProvincia_IX7 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdProvincia_IX7));
if (C_IdLocalidad_IX8 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdLocalidad_IX8));
if (C_IdBarrio_IX9 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdBarrio_IX9));
Parametros.Add(C_Domicilio);
if (C_CodigoPostal_IX10 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CodigoPostal_IX10));
Parametros.Add(C_mail);
Parametros.Add(C_Observaciones);
if (C_IdCategoria_IX11 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdCategoria_IX11));
Parametros.Add(C_DirFoto);
if C_EsJubilado then Parametros.Add('1')
else Parametros.Add('0');
if (C_Usu_M = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_M));
Parametros.Add(C_Fecha_M);


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_ClientesModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

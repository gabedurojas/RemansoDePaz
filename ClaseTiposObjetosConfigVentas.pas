unit ClaseTiposObjetosConfigVentas;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TTiposObjetosConfigVentas= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    Fid:variant;
    Fnrotipo:variant;
    Fidformapago:variant;
    FCuotasDesde:variant;
    FCuotashasta:variant;
    FInteresAplicado:variant;
    FActivo:boolean;
    Fusu_a:variant;
    FFecha:string;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure Setid(Value:variant);
    procedure Setnrotipo(Value:variant);
    procedure Setidformapago(Value:variant);
    procedure SetCuotasDesde(Value:variant);
    procedure SetCuotashasta(Value:variant);
    procedure SetInteresAplicado(Value:variant);
    procedure SetActivo(Value:boolean);
    procedure Setusu_a(Value:variant);
    procedure SetFecha(Value:string);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_id_PK:variant read Fid write Setid;
    property C_nrotipo:variant read Fnrotipo write Setnrotipo;
    property C_idformapago:variant read Fidformapago write Setidformapago;
    property C_CuotasDesde:variant read FCuotasDesde write SetCuotasDesde;
    property C_Cuotashasta:variant read FCuotashasta write SetCuotashasta;
    property C_InteresAplicado:variant read FInteresAplicado write SetInteresAplicado;
    property C_Activo:boolean read FActivo write SetActivo;
    property C_usu_a:variant read Fusu_a write Setusu_a;
    property C_Fecha:string read FFecha write SetFecha;

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

constructor TTiposObjetosConfigVentas.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=9;
end;

procedure TTiposObjetosConfigVentas.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TTiposObjetosConfigVentas.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TTiposObjetosConfigVentas.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TTiposObjetosConfigVentas.Setid(Value:variant);
begin
  Fid:=Value;
end;

procedure TTiposObjetosConfigVentas.Setnrotipo(Value:variant);
begin
  Fnrotipo:=Value;
end;

procedure TTiposObjetosConfigVentas.Setidformapago(Value:variant);
begin
  Fidformapago:=Value;
end;

procedure TTiposObjetosConfigVentas.SetCuotasDesde(Value:variant);
begin
  FCuotasDesde:=Value;
end;

procedure TTiposObjetosConfigVentas.SetCuotashasta(Value:variant);
begin
  FCuotashasta:=Value;
end;

procedure TTiposObjetosConfigVentas.SetInteresAplicado(Value:variant);
begin
  FInteresAplicado:=Value;
end;

procedure TTiposObjetosConfigVentas.SetActivo(Value:boolean);
begin
  FActivo:=Value;
end;

procedure TTiposObjetosConfigVentas.Setusu_a(Value:variant);
begin
  Fusu_a:=Value;
end;

procedure TTiposObjetosConfigVentas.SetFecha(Value:string);
begin
  FFecha:=Value;
end;

Function TTiposObjetosConfigVentas.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_TiposObjetosConfigVentasConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_id_PK:=DataSet.FieldByName('id').AsVariant;
  C_nrotipo:=DataSet.FieldByName('nrotipo').AsVariant;
  C_idformapago:=DataSet.FieldByName('idformapago').AsVariant;
  C_CuotasDesde:=DataSet.FieldByName('CuotasDesde').AsVariant;
  C_Cuotashasta:=DataSet.FieldByName('Cuotashasta').AsVariant;
  C_InteresAplicado:=DataSet.FieldByName('InteresAplicado').AsVariant;
  C_Activo:=DataSet.FieldByName('Activo').AsBoolean;
  C_usu_a:=DataSet.FieldByName('usu_a').AsVariant;
  C_Fecha:=DataSet.FieldByName('Fecha').AsString;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TTiposObjetosConfigVentas.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_TiposObjetosConfigVentasConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TTiposObjetosConfigVentas.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TTiposObjetosConfigVentas.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TTiposObjetosConfigVentas.Agrega():boolean;
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
if (C_nrotipo = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_nrotipo));
if (C_idformapago = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_idformapago));
if (C_CuotasDesde = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuotasDesde));
if (C_Cuotashasta = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Cuotashasta));
if (C_InteresAplicado = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_InteresAplicado));
if C_Activo then Parametros.Add('1')
else Parametros.Add('0');
if (C_usu_a = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_usu_a));
Parametros.Add(C_Fecha);

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_TiposObjetosConfigVentasInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TTiposObjetosConfigVentas.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_TiposObjetosConfigVentasEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TTiposObjetosConfigVentas.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_id_PK));
if (C_nrotipo = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_nrotipo));
if (C_idformapago = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_idformapago));
if (C_CuotasDesde = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuotasDesde));
if (C_Cuotashasta = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Cuotashasta));
if (C_InteresAplicado = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_InteresAplicado));
if C_Activo then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_Fecha);


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_TiposObjetosConfigVentasModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

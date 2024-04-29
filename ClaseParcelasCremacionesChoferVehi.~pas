unit ClaseParcelasCremacionesChoferVehi;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TParcelasCremacionesChoferVehi= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FId:variant;
    FIdCremacion:variant;
    FCuifChofer:variant;
    FDominio:string;
    FObservaciones:string;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetId(Value:variant);
    procedure SetIdCremacion(Value:variant);
    procedure SetCuifChofer(Value:variant);
    procedure SetDominio(Value:string);
    procedure SetObservaciones(Value:string);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_Id_PK:variant read FId write SetId;
    property C_IdCremacion:variant read FIdCremacion write SetIdCremacion;
    property C_CuifChofer:variant read FCuifChofer write SetCuifChofer;
    property C_Dominio:string read FDominio write SetDominio;
    property C_Observaciones:string read FObservaciones write SetObservaciones;

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

constructor TParcelasCremacionesChoferVehi.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=5;
end;

procedure TParcelasCremacionesChoferVehi.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TParcelasCremacionesChoferVehi.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TParcelasCremacionesChoferVehi.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TParcelasCremacionesChoferVehi.SetId(Value:variant);
begin
  FId:=Value;
end;

procedure TParcelasCremacionesChoferVehi.SetIdCremacion(Value:variant);
begin
  FIdCremacion:=Value;
end;

procedure TParcelasCremacionesChoferVehi.SetCuifChofer(Value:variant);
begin
  FCuifChofer:=Value;
end;

procedure TParcelasCremacionesChoferVehi.SetDominio(Value:string);
begin
  FDominio:=Value;
end;

procedure TParcelasCremacionesChoferVehi.SetObservaciones(Value:string);
begin
  FObservaciones:=Value;
end;

Function TParcelasCremacionesChoferVehi.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_ParcelasCremacionesChoferVehiConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_Id_PK:=DataSet.FieldByName('Id').AsVariant;
  C_IdCremacion:=DataSet.FieldByName('IdCremacion').AsVariant;
  C_CuifChofer:=StrToInt64(DataSet.FieldByName('CuifChofer').AsString);
  C_Dominio:=DataSet.FieldByName('Dominio').AsString;
  C_Observaciones:=DataSet.FieldByName('Observaciones').AsString;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TParcelasCremacionesChoferVehi.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasCremacionesChoferVehiConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasCremacionesChoferVehi.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasCremacionesChoferVehi.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasCremacionesChoferVehi.Agrega():boolean;
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
if (C_IdCremacion = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdCremacion));
if (C_CuifChofer = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuifChofer));
Parametros.Add(C_Dominio);
Parametros.Add(C_Observaciones);

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasCremacionesChoferVehiInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TParcelasCremacionesChoferVehi.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasCremacionesChoferVehiEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TParcelasCremacionesChoferVehi.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_Id_PK));
if (C_IdCremacion = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdCremacion));
if (C_CuifChofer = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuifChofer));
Parametros.Add(C_Dominio);
Parametros.Add(C_Observaciones);


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasCremacionesChoferVehiModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

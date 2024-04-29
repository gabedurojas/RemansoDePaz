unit ClaseTiposFormasPago;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TTiposFormasPago= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FIdFormaPago:variant;
    FFormaPago:string;
    FHabilitaOpc:variant;
    FHabilitaGastos:boolean;
    FHabilitaRec:boolean;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetIdFormaPago(Value:variant);
    procedure SetFormaPago(Value:string);
    procedure SetHabilitaOpc(Value:variant);
    procedure SetHabilitaGastos(Value:boolean);
    procedure SetHabilitaRec(Value:boolean);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_IdFormaPago_PK:variant read FIdFormaPago write SetIdFormaPago;
    property C_FormaPago_IX1:string read FFormaPago write SetFormaPago;
    property C_HabilitaOpc:variant read FHabilitaOpc write SetHabilitaOpc;
    property C_HabilitaGastos:boolean read FHabilitaGastos write SetHabilitaGastos;
    property C_HabilitaRec:boolean read FHabilitaRec write SetHabilitaRec;

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

constructor TTiposFormasPago.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=5;
end;

procedure TTiposFormasPago.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TTiposFormasPago.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TTiposFormasPago.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TTiposFormasPago.SetIdFormaPago(Value:variant);
begin
  FIdFormaPago:=Value;
end;

procedure TTiposFormasPago.SetFormaPago(Value:string);
begin
  FFormaPago:=Value;
end;

procedure TTiposFormasPago.SetHabilitaOpc(Value:variant);
begin
  FHabilitaOpc:=Value;
end;

procedure TTiposFormasPago.SetHabilitaGastos(Value:boolean);
begin
  FHabilitaGastos:=Value;
end;

procedure TTiposFormasPago.SetHabilitaRec(Value:boolean);
begin
  FHabilitaRec:=Value;
end;

Function TTiposFormasPago.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_TiposFormasPagoConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_IdFormaPago_PK:=DataSet.FieldByName('IdFormaPago').AsVariant;
  C_FormaPago_IX1:=DataSet.FieldByName('FormaPago').AsString;
  C_HabilitaOpc:=DataSet.FieldByName('HabilitaOpc').AsVariant;
  C_HabilitaGastos:=DataSet.FieldByName('HabilitaGastos').AsBoolean;
  C_HabilitaRec:=DataSet.FieldByName('HabilitaRec').AsBoolean;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TTiposFormasPago.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_TiposFormasPagoConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TTiposFormasPago.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TTiposFormasPago.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TTiposFormasPago.Agrega():boolean;
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
Parametros.Add(C_FormaPago_IX1);
if (C_HabilitaOpc = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_HabilitaOpc));
if C_HabilitaGastos then Parametros.Add('1')
else Parametros.Add('0');
if C_HabilitaRec then Parametros.Add('1')
else Parametros.Add('0');

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_TiposFormasPagoInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TTiposFormasPago.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_TiposFormasPagoEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TTiposFormasPago.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_IdFormaPago_PK));
Parametros.Add(C_FormaPago_IX1);
if (C_HabilitaOpc = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_HabilitaOpc));
if C_HabilitaGastos then Parametros.Add('1')
else Parametros.Add('0');
if C_HabilitaRec then Parametros.Add('1')
else Parametros.Add('0');


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_TiposFormasPagoModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

unit ClasePlanillaCobranzasDetalle;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TPlanillaCobranzasDetalle= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    Fid:variant;
    FIdPlanillaCobranza:variant;
    FNroPlanilla:variant;
    FObjeto:string;
    FCantidad:variant;
    FImporte:variant;
    FComision:variant;
    FPorcentajeCobrador:variant;
    FSubTotal:variant;
    FPosnet:variant;
    FTotalEfectivo:variant;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure Setid(Value:variant);
    procedure SetIdPlanillaCobranza(Value:variant);
    procedure SetNroPlanilla(Value:variant);
    procedure SetObjeto(Value:string);
    procedure SetCantidad(Value:variant);
    procedure SetImporte(Value:variant);
    procedure SetComision(Value:variant);
    procedure SetPorcentajeCobrador(Value:variant);
    procedure SetSubTotal(Value:variant);
    procedure SetPosnet(Value:variant);
    procedure SetTotalEfectivo(Value:variant);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_id_PK:variant read Fid write Setid;
    property C_IdPlanillaCobranza:variant read FIdPlanillaCobranza write SetIdPlanillaCobranza;
    property C_NroPlanilla:variant read FNroPlanilla write SetNroPlanilla;
    property C_Objeto:string read FObjeto write SetObjeto;
    property C_Cantidad:variant read FCantidad write SetCantidad;
    property C_Importe:variant read FImporte write SetImporte;
    property C_Comision:variant read FComision write SetComision;
    property C_PorcentajeCobrador:variant read FPorcentajeCobrador write SetPorcentajeCobrador;
    property C_SubTotal:variant read FSubTotal write SetSubTotal;
    property C_Posnet:variant read FPosnet write SetPosnet;
    property C_TotalEfectivo:variant read FTotalEfectivo write SetTotalEfectivo;

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

constructor TPlanillaCobranzasDetalle.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=11;
end;

procedure TPlanillaCobranzasDetalle.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TPlanillaCobranzasDetalle.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TPlanillaCobranzasDetalle.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TPlanillaCobranzasDetalle.Setid(Value:variant);
begin
  Fid:=Value;
end;

procedure TPlanillaCobranzasDetalle.SetIdPlanillaCobranza(Value:variant);
begin
  FIdPlanillaCobranza:=Value;
end;

procedure TPlanillaCobranzasDetalle.SetNroPlanilla(Value:variant);
begin
  FNroPlanilla:=Value;
end;

procedure TPlanillaCobranzasDetalle.SetObjeto(Value:string);
begin
  FObjeto:=Value;
end;

procedure TPlanillaCobranzasDetalle.SetCantidad(Value:variant);
begin
  FCantidad:=Value;
end;

procedure TPlanillaCobranzasDetalle.SetImporte(Value:variant);
begin
  FImporte:=Value;
end;

procedure TPlanillaCobranzasDetalle.SetComision(Value:variant);
begin
  FComision:=Value;
end;

procedure TPlanillaCobranzasDetalle.SetPorcentajeCobrador(Value:variant);
begin
  FPorcentajeCobrador:=Value;
end;

procedure TPlanillaCobranzasDetalle.SetSubTotal(Value:variant);
begin
  FSubTotal:=Value;
end;

procedure TPlanillaCobranzasDetalle.SetPosnet(Value:variant);
begin
  FPosnet:=Value;
end;

procedure TPlanillaCobranzasDetalle.SetTotalEfectivo(Value:variant);
begin
  FTotalEfectivo:=Value;
end;

Function TPlanillaCobranzasDetalle.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_PlanillaCobranzasDetalleConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_id_PK:=DataSet.FieldByName('id').AsVariant;
  C_IdPlanillaCobranza:=DataSet.FieldByName('IdPlanillaCobranza').AsVariant;
  C_NroPlanilla:=DataSet.FieldByName('NroPlanilla').AsVariant;
  C_Objeto:=DataSet.FieldByName('Objeto').AsString;
  C_Cantidad:=DataSet.FieldByName('Cantidad').AsVariant;
  C_Importe:=DataSet.FieldByName('Importe').AsVariant;
  C_Comision:=DataSet.FieldByName('Comision').AsVariant;
  C_PorcentajeCobrador:=DataSet.FieldByName('PorcentajeCobrador').AsVariant;
  C_SubTotal:=DataSet.FieldByName('SubTotal').AsVariant;
  C_Posnet:=DataSet.FieldByName('Posnet').AsVariant;
  C_TotalEfectivo:=DataSet.FieldByName('TotalEfectivo').AsVariant;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TPlanillaCobranzasDetalle.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_PlanillaCobranzasDetalleConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TPlanillaCobranzasDetalle.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TPlanillaCobranzasDetalle.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TPlanillaCobranzasDetalle.Agrega():boolean;
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
if (C_IdPlanillaCobranza = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdPlanillaCobranza));
if (C_NroPlanilla = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroPlanilla));
Parametros.Add(C_Objeto);
if (C_Cantidad = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Cantidad));
if (C_Importe = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Importe));
if (C_Comision = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Comision));
if (C_PorcentajeCobrador = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_PorcentajeCobrador));
if (C_SubTotal = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_SubTotal));
if (C_Posnet = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Posnet));
if (C_TotalEfectivo = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_TotalEfectivo));

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_PlanillaCobranzasDetalleInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TPlanillaCobranzasDetalle.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_PlanillaCobranzasDetalleEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TPlanillaCobranzasDetalle.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_id_PK));
if (C_IdPlanillaCobranza = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdPlanillaCobranza));
if (C_NroPlanilla = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroPlanilla));
Parametros.Add(C_Objeto);
if (C_Cantidad = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Cantidad));
if (C_Importe = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Importe));
if (C_Comision = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Comision));
if (C_PorcentajeCobrador = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_PorcentajeCobrador));
if (C_SubTotal = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_SubTotal));
if (C_Posnet = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Posnet));
if (C_TotalEfectivo = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_TotalEfectivo));


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_PlanillaCobranzasDetalleModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

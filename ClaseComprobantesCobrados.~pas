unit ClaseComprobantesCobrados;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TComprobantesCobrados= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FId:variant;
    FEsMinoritario:boolean;
    FNroComprobante:string;
    FIdTipoComprobante:variant;
    FNroFormulario:string;
    FNroPlanilla:variant;
    FFechaPlanilla:string;
    FCuifCobrador:variant;
    FIdentificador:variant;
    FNroTipoObjeto:variant;
    FFechaCobro:string;
    FImporte:variant;
    FGastoAdmin:variant;
    FPorcentaje:variant;
    FUsu_A:variant;
    FFecha_A:string;
    FUsu_M:variant;
    FFecha_M:string;
    FAnulado:boolean;
    FFechaAnula:string;
    FUsuAnula:variant;
    FMotivoAnula:string;
    FConProblemas:boolean;
    FObserv:string;
    FDeAdmin:boolean;
    FPagoAnual:boolean;
    FAnioAnual:variant;
    FIdFormaPago:variant;
    FNroCheque:string;
    FBanco:string;
    FIdServicio:variant;
    FNroFactura:string;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetId(Value:variant);
    procedure SetEsMinoritario(Value:boolean);
    procedure SetNroComprobante(Value:string);
    procedure SetIdTipoComprobante(Value:variant);
    procedure SetNroFormulario(Value:string);
    procedure SetNroPlanilla(Value:variant);
    procedure SetFechaPlanilla(Value:string);
    procedure SetCuifCobrador(Value:variant);
    procedure SetIdentificador(Value:variant);
    procedure SetNroTipoObjeto(Value:variant);
    procedure SetFechaCobro(Value:string);
    procedure SetImporte(Value:variant);
    procedure SetGastoAdmin(Value:variant);
    procedure SetPorcentaje(Value:variant);
    procedure SetUsu_A(Value:variant);
    procedure SetFecha_A(Value:string);
    procedure SetUsu_M(Value:variant);
    procedure SetFecha_M(Value:string);
    procedure SetAnulado(Value:boolean);
    procedure SetFechaAnula(Value:string);
    procedure SetUsuAnula(Value:variant);
    procedure SetMotivoAnula(Value:string);
    procedure SetConProblemas(Value:boolean);
    procedure SetObserv(Value:string);
    procedure SetDeAdmin(Value:boolean);
    procedure SetPagoAnual(Value:boolean);
    procedure SetAnioAnual(Value:variant);
    procedure SetIdFormaPago(Value:variant);
    procedure SetNroCheque(Value:string);
    procedure SetBanco(Value:string);
    procedure SetIdServicio(Value:variant);
    procedure SetNroFactura(Value:string);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_Id_PK:variant read FId write SetId;
    property C_EsMinoritario:boolean read FEsMinoritario write SetEsMinoritario;
    property C_NroComprobante_IX1:string read FNroComprobante write SetNroComprobante;
    property C_IdTipoComprobante_IX2:variant read FIdTipoComprobante write SetIdTipoComprobante;
    property C_NroFormulario_IX3:string read FNroFormulario write SetNroFormulario;
    property C_NroPlanilla_IX4:variant read FNroPlanilla write SetNroPlanilla;
    property C_FechaPlanilla_IX5:string read FFechaPlanilla write SetFechaPlanilla;
    property C_CuifCobrador_IX6:variant read FCuifCobrador write SetCuifCobrador;
    property C_Identificador:variant read FIdentificador write SetIdentificador;
    property C_NroTipoObjeto_IX7:variant read FNroTipoObjeto write SetNroTipoObjeto;
    property C_FechaCobro_IX8:string read FFechaCobro write SetFechaCobro;
    property C_Importe:variant read FImporte write SetImporte;
    property C_GastoAdmin:variant read FGastoAdmin write SetGastoAdmin;
    property C_Porcentaje:variant read FPorcentaje write SetPorcentaje;
    property C_Usu_A:variant read FUsu_A write SetUsu_A;
    property C_Fecha_A:string read FFecha_A write SetFecha_A;
    property C_Usu_M:variant read FUsu_M write SetUsu_M;
    property C_Fecha_M:string read FFecha_M write SetFecha_M;
    property C_Anulado:boolean read FAnulado write SetAnulado;
    property C_FechaAnula:string read FFechaAnula write SetFechaAnula;
    property C_UsuAnula:variant read FUsuAnula write SetUsuAnula;
    property C_MotivoAnula:string read FMotivoAnula write SetMotivoAnula;
    property C_ConProblemas:boolean read FConProblemas write SetConProblemas;
    property C_Observ:string read FObserv write SetObserv;
    property C_DeAdmin:boolean read FDeAdmin write SetDeAdmin;
    property C_PagoAnual:boolean read FPagoAnual write SetPagoAnual;
    property C_AnioAnual:variant read FAnioAnual write SetAnioAnual;
    property C_IdFormaPago:variant read FIdFormaPago write SetIdFormaPago;
    property C_NroCheque:string read FNroCheque write SetNroCheque;
    property C_Banco:string read FBanco write SetBanco;
    property C_IdServicio:variant read FIdServicio write SetIdServicio;
    property C_NroFactura_IX9:string read FNroFactura write SetNroFactura;

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

constructor TComprobantesCobrados.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=32;
end;

procedure TComprobantesCobrados.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TComprobantesCobrados.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TComprobantesCobrados.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TComprobantesCobrados.SetId(Value:variant);
begin
  FId:=Value;
end;

procedure TComprobantesCobrados.SetEsMinoritario(Value:boolean);
begin
  FEsMinoritario:=Value;
end;

procedure TComprobantesCobrados.SetNroComprobante(Value:string);
begin
  FNroComprobante:=Value;
end;

procedure TComprobantesCobrados.SetIdTipoComprobante(Value:variant);
begin
  FIdTipoComprobante:=Value;
end;

procedure TComprobantesCobrados.SetNroFormulario(Value:string);
begin
  FNroFormulario:=Value;
end;

procedure TComprobantesCobrados.SetNroPlanilla(Value:variant);
begin
  FNroPlanilla:=Value;
end;

procedure TComprobantesCobrados.SetFechaPlanilla(Value:string);
begin
  FFechaPlanilla:=Value;
end;

procedure TComprobantesCobrados.SetCuifCobrador(Value:variant);
begin
  FCuifCobrador:=Value;
end;

procedure TComprobantesCobrados.SetIdentificador(Value:variant);
begin
  FIdentificador:=Value;
end;

procedure TComprobantesCobrados.SetNroTipoObjeto(Value:variant);
begin
  FNroTipoObjeto:=Value;
end;

procedure TComprobantesCobrados.SetFechaCobro(Value:string);
begin
  FFechaCobro:=Value;
end;

procedure TComprobantesCobrados.SetImporte(Value:variant);
begin
  FImporte:=Value;
end;

procedure TComprobantesCobrados.SetGastoAdmin(Value:variant);
begin
  FGastoAdmin:=Value;
end;

procedure TComprobantesCobrados.SetPorcentaje(Value:variant);
begin
  FPorcentaje:=Value;
end;

procedure TComprobantesCobrados.SetUsu_A(Value:variant);
begin
  FUsu_A:=Value;
end;

procedure TComprobantesCobrados.SetFecha_A(Value:string);
begin
  FFecha_A:=Value;
end;

procedure TComprobantesCobrados.SetUsu_M(Value:variant);
begin
  FUsu_M:=Value;
end;

procedure TComprobantesCobrados.SetFecha_M(Value:string);
begin
  FFecha_M:=Value;
end;

procedure TComprobantesCobrados.SetAnulado(Value:boolean);
begin
  FAnulado:=Value;
end;

procedure TComprobantesCobrados.SetFechaAnula(Value:string);
begin
  FFechaAnula:=Value;
end;

procedure TComprobantesCobrados.SetUsuAnula(Value:variant);
begin
  FUsuAnula:=Value;
end;

procedure TComprobantesCobrados.SetMotivoAnula(Value:string);
begin
  FMotivoAnula:=Value;
end;

procedure TComprobantesCobrados.SetConProblemas(Value:boolean);
begin
  FConProblemas:=Value;
end;

procedure TComprobantesCobrados.SetObserv(Value:string);
begin
  FObserv:=Value;
end;

procedure TComprobantesCobrados.SetDeAdmin(Value:boolean);
begin
  FDeAdmin:=Value;
end;

procedure TComprobantesCobrados.SetPagoAnual(Value:boolean);
begin
  FPagoAnual:=Value;
end;

procedure TComprobantesCobrados.SetAnioAnual(Value:variant);
begin
  FAnioAnual:=Value;
end;

procedure TComprobantesCobrados.SetIdFormaPago(Value:variant);
begin
  FIdFormaPago:=Value;
end;

procedure TComprobantesCobrados.SetNroCheque(Value:string);
begin
  FNroCheque:=Value;
end;

procedure TComprobantesCobrados.SetBanco(Value:string);
begin
  FBanco:=Value;
end;

procedure TComprobantesCobrados.SetIdServicio(Value:variant);
begin
  FIdServicio:=Value;
end;

procedure TComprobantesCobrados.SetNroFactura(Value:string);
begin
  FNroFactura:=Value;
end;

Function TComprobantesCobrados.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_ComprobantesCobradosConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_Id_PK:=DataSet.FieldByName('Id').AsVariant;
  C_EsMinoritario:=DataSet.FieldByName('EsMinoritario').AsBoolean;
  C_NroComprobante_IX1:=DataSet.FieldByName('NroComprobante').AsString;
  C_IdTipoComprobante_IX2:=DataSet.FieldByName('IdTipoComprobante').AsVariant;
  C_NroFormulario_IX3:=DataSet.FieldByName('NroFormulario').AsString;
  C_NroPlanilla_IX4:=DataSet.FieldByName('NroPlanilla').AsVariant;
  C_FechaPlanilla_IX5:=DataSet.FieldByName('FechaPlanilla').AsString;
  C_CuifCobrador_IX6:=StrToInt64(DataSet.FieldByName('CuifCobrador').AsString);
  C_Identificador:=DataSet.FieldByName('Identificador').AsVariant;
  C_NroTipoObjeto_IX7:=DataSet.FieldByName('NroTipoObjeto').AsVariant;
  C_FechaCobro_IX8:=DataSet.FieldByName('FechaCobro').AsString;
  C_Importe:=DataSet.FieldByName('Importe').AsVariant;
  C_GastoAdmin:=DataSet.FieldByName('GastoAdmin').AsVariant;
  C_Porcentaje:=DataSet.FieldByName('Porcentaje').AsVariant;
  C_Usu_A:=DataSet.FieldByName('Usu_A').AsVariant;
  C_Fecha_A:=DataSet.FieldByName('Fecha_A').AsString;
  C_Usu_M:=DataSet.FieldByName('Usu_M').AsVariant;
  C_Fecha_M:=DataSet.FieldByName('Fecha_M').AsString;
  C_Anulado:=DataSet.FieldByName('Anulado').AsBoolean;
  C_FechaAnula:=DataSet.FieldByName('FechaAnula').AsString;
  C_UsuAnula:=DataSet.FieldByName('UsuAnula').AsVariant;
  C_MotivoAnula:=DataSet.FieldByName('MotivoAnula').AsString;
  C_ConProblemas:=DataSet.FieldByName('ConProblemas').AsBoolean;
  C_Observ:=DataSet.FieldByName('Observ').AsString;
  C_DeAdmin:=DataSet.FieldByName('DeAdmin').AsBoolean;
  C_PagoAnual:=DataSet.FieldByName('PagoAnual').AsBoolean;
  C_AnioAnual:=DataSet.FieldByName('AnioAnual').AsVariant;
  C_IdFormaPago:=DataSet.FieldByName('IdFormaPago').AsVariant;
  C_NroCheque:=DataSet.FieldByName('NroCheque').AsString;
  C_Banco:=DataSet.FieldByName('Banco').AsString;
  C_IdServicio:=DataSet.FieldByName('IdServicio').AsVariant;
  C_NroFactura_IX9:=DataSet.FieldByName('NroFactura').AsString;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TComprobantesCobrados.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ComprobantesCobradosConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TComprobantesCobrados.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TComprobantesCobrados.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TComprobantesCobrados.Agrega():boolean;
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
if C_EsMinoritario then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_NroComprobante_IX1);
if (C_IdTipoComprobante_IX2 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdTipoComprobante_IX2));
Parametros.Add(C_NroFormulario_IX3);
if (C_NroPlanilla_IX4 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroPlanilla_IX4));
Parametros.Add(C_FechaPlanilla_IX5);
if (C_CuifCobrador_IX6 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuifCobrador_IX6));
if (C_Identificador = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Identificador));
if (C_NroTipoObjeto_IX7 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroTipoObjeto_IX7));
Parametros.Add(C_FechaCobro_IX8);
if (C_Importe = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Importe));
if (C_GastoAdmin = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_GastoAdmin));
if (C_Porcentaje = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Porcentaje));
if (C_Usu_A = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_A));
if (C_Usu_M = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_M));
Parametros.Add(C_Fecha_M);
if C_Anulado then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_FechaAnula);
if (C_UsuAnula = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_UsuAnula));
Parametros.Add(C_MotivoAnula);
if C_ConProblemas then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_Observ);
if C_DeAdmin then Parametros.Add('1')
else Parametros.Add('0');
if C_PagoAnual then Parametros.Add('1')
else Parametros.Add('0');
if (C_AnioAnual = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_AnioAnual));
if (C_IdFormaPago = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdFormaPago));
Parametros.Add(C_NroCheque);
Parametros.Add(C_Banco);
if (C_IdServicio = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdServicio));
Parametros.Add(C_NroFactura_IX9);

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ComprobantesCobradosInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TComprobantesCobrados.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_ComprobantesCobradosEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TComprobantesCobrados.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_Id_PK));
if C_EsMinoritario then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_NroComprobante_IX1);
if (C_IdTipoComprobante_IX2 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdTipoComprobante_IX2));
Parametros.Add(C_NroFormulario_IX3);
if (C_NroPlanilla_IX4 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroPlanilla_IX4));
Parametros.Add(C_FechaPlanilla_IX5);
if (C_CuifCobrador_IX6 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_CuifCobrador_IX6));
if (C_Identificador = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Identificador));
if (C_NroTipoObjeto_IX7 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroTipoObjeto_IX7));
Parametros.Add(C_FechaCobro_IX8);
if (C_Importe = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Importe));
if (C_GastoAdmin = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_GastoAdmin));
if (C_Porcentaje = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Porcentaje));
if (C_Usu_M = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_M));
Parametros.Add(C_Fecha_M);
if C_Anulado then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_FechaAnula);
if (C_UsuAnula = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_UsuAnula));
Parametros.Add(C_MotivoAnula);
if C_ConProblemas then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_Observ);
if C_DeAdmin then Parametros.Add('1')
else Parametros.Add('0');
if C_PagoAnual then Parametros.Add('1')
else Parametros.Add('0');
if (C_AnioAnual = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_AnioAnual));
if (C_IdFormaPago = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdFormaPago));
Parametros.Add(C_NroCheque);
Parametros.Add(C_Banco);
if (C_IdServicio = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdServicio));
Parametros.Add(C_NroFactura_IX9);


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_ComprobantesCobradosModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

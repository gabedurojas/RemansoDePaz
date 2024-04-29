unit ClaseParcelasTitularesHistorico;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TParcelasTitularesHistorico= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FId:variant;
    FNroAccion:variant;
    FCuif:variant;
    FFecha:string;
    FNroTipoAcc:variant;
    FNivel:variant;
    FMotivoBaja:string;
    FFecha_A:string;
    FUsu_A:variant;
    FNroActa:variant;
    FIdVenta:variant;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetId(Value:variant);
    procedure SetNroAccion(Value:variant);
    procedure SetCuif(Value:variant);
    procedure SetFecha(Value:string);
    procedure SetNroTipoAcc(Value:variant);
    procedure SetNivel(Value:variant);
    procedure SetMotivoBaja(Value:string);
    procedure SetFecha_A(Value:string);
    procedure SetUsu_A(Value:variant);
    procedure SetNroActa(Value:variant);
    procedure SetIdVenta(Value:variant);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_Id_PK:variant read FId write SetId;
    property C_NroAccion_IX1:variant read FNroAccion write SetNroAccion;
    property C_Cuif_IX2:variant read FCuif write SetCuif;
    property C_Fecha_IX3:string read FFecha write SetFecha;
    property C_NroTipoAcc_IX4:variant read FNroTipoAcc write SetNroTipoAcc;
    property C_Nivel:variant read FNivel write SetNivel;
    property C_MotivoBaja:string read FMotivoBaja write SetMotivoBaja;
    property C_Fecha_A:string read FFecha_A write SetFecha_A;
    property C_Usu_A:variant read FUsu_A write SetUsu_A;
    property C_NroActa:variant read FNroActa write SetNroActa;
    property C_IdVenta:variant read FIdVenta write SetIdVenta;

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

constructor TParcelasTitularesHistorico.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=11;
end;

procedure TParcelasTitularesHistorico.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TParcelasTitularesHistorico.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TParcelasTitularesHistorico.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TParcelasTitularesHistorico.SetId(Value:variant);
begin
  FId:=Value;
end;

procedure TParcelasTitularesHistorico.SetNroAccion(Value:variant);
begin
  FNroAccion:=Value;
end;

procedure TParcelasTitularesHistorico.SetCuif(Value:variant);
begin
  FCuif:=Value;
end;

procedure TParcelasTitularesHistorico.SetFecha(Value:string);
begin
  FFecha:=Value;
end;

procedure TParcelasTitularesHistorico.SetNroTipoAcc(Value:variant);
begin
  FNroTipoAcc:=Value;
end;

procedure TParcelasTitularesHistorico.SetNivel(Value:variant);
begin
  FNivel:=Value;
end;

procedure TParcelasTitularesHistorico.SetMotivoBaja(Value:string);
begin
  FMotivoBaja:=Value;
end;

procedure TParcelasTitularesHistorico.SetFecha_A(Value:string);
begin
  FFecha_A:=Value;
end;

procedure TParcelasTitularesHistorico.SetUsu_A(Value:variant);
begin
  FUsu_A:=Value;
end;

procedure TParcelasTitularesHistorico.SetNroActa(Value:variant);
begin
  FNroActa:=Value;
end;

procedure TParcelasTitularesHistorico.SetIdVenta(Value:variant);
begin
  FIdVenta:=Value;
end;

Function TParcelasTitularesHistorico.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_ParcelasTitularesHistoricoConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_Id_PK:=DataSet.FieldByName('Id').AsVariant;
  C_NroAccion_IX1:=DataSet.FieldByName('NroAccion').AsVariant;
  C_Cuif_IX2:=StrToInt64(DataSet.FieldByName('Cuif').AsString);
  C_Fecha_IX3:=DataSet.FieldByName('Fecha').AsString;
  C_NroTipoAcc_IX4:=DataSet.FieldByName('NroTipoAcc').AsVariant;
  C_Nivel:=DataSet.FieldByName('Nivel').AsVariant;
  C_MotivoBaja:=DataSet.FieldByName('MotivoBaja').AsString;
  C_Fecha_A:=DataSet.FieldByName('Fecha_A').AsString;
  C_Usu_A:=DataSet.FieldByName('Usu_A').AsVariant;
  C_NroActa:=DataSet.FieldByName('NroActa').AsVariant;
  C_IdVenta:=DataSet.FieldByName('IdVenta').AsVariant;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TParcelasTitularesHistorico.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasTitularesHistoricoConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasTitularesHistorico.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasTitularesHistorico.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasTitularesHistorico.Agrega():boolean;
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
if (C_NroAccion_IX1 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroAccion_IX1));
if (C_Cuif_IX2 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Cuif_IX2));
Parametros.Add(C_Fecha_IX3);
if (C_NroTipoAcc_IX4 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroTipoAcc_IX4));
if (C_Nivel = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Nivel));
if (C_Usu_A = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_A));
if (C_NroActa = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroActa));
if (C_IdVenta = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdVenta));
Parametros.Add(C_MotivoBaja);

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasTitularesHistoricoInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TParcelasTitularesHistorico.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasTitularesHistoricoEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TParcelasTitularesHistorico.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_Id_PK));
if (C_NroAccion_IX1 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroAccion_IX1));
if (C_Cuif_IX2 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Cuif_IX2));
Parametros.Add(C_Fecha_IX3);
if (C_NroTipoAcc_IX4 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroTipoAcc_IX4));
if (C_Nivel = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Nivel));
Parametros.Add(C_MotivoBaja);
if (C_NroActa = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroActa));
if (C_IdVenta = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdVenta));


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasTitularesHistoricoModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

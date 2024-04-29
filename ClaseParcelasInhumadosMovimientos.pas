unit ClaseParcelasInhumadosMovimientos;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TParcelasInhumadosMovimientos= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    FId:variant;
    FIdHabitante:variant;
    FNroMovimiento:variant;
    FFecha:string;
    FActivo:boolean;
    FObservaciones:string;
    FUsu_A:variant;
    FFecha_A:string;
    FNroActaInhumacion:string;
    FHoraInhumacion:string;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure SetId(Value:variant);
    procedure SetIdHabitante(Value:variant);
    procedure SetNroMovimiento(Value:variant);
    procedure SetFecha(Value:string);
    procedure SetActivo(Value:boolean);
    procedure SetObservaciones(Value:string);
    procedure SetUsu_A(Value:variant);
    procedure SetFecha_A(Value:string);
    procedure SetNroActaInhumacion(Value:string);
    procedure SetHoraInhumacion(Value:string);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent);
    property ConnectionString:widestring read FConnectionString write SetConnectionString;
    property Identidad:string read FIdentidad write SetIdentidad;
    property CountFields:integer read FCountFields;
    property IsEmpty:boolean read FIsEmpty write SetIsEmpty;

    property C_Id_PK:variant read FId write SetId;
    property C_IdHabitante_IX1:variant read FIdHabitante write SetIdHabitante;
    property C_NroMovimiento_IX2:variant read FNroMovimiento write SetNroMovimiento;
    property C_Fecha_IX3:string read FFecha write SetFecha;
    property C_Activo:boolean read FActivo write SetActivo;
    property C_Observaciones:string read FObservaciones write SetObservaciones;
    property C_Usu_A:variant read FUsu_A write SetUsu_A;
    property C_Fecha_A:string read FFecha_A write SetFecha_A;
    property C_NroActaInhumacion:string read FNroActaInhumacion write SetNroActaInhumacion;
    property C_HoraInhumacion:string read FHoraInhumacion write SetHoraInhumacion;

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

constructor TParcelasInhumadosMovimientos.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=10;
end;

procedure TParcelasInhumadosMovimientos.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TParcelasInhumadosMovimientos.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TParcelasInhumadosMovimientos.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TParcelasInhumadosMovimientos.SetId(Value:variant);
begin
  FId:=Value;
end;

procedure TParcelasInhumadosMovimientos.SetIdHabitante(Value:variant);
begin
  FIdHabitante:=Value;
end;

procedure TParcelasInhumadosMovimientos.SetNroMovimiento(Value:variant);
begin
  FNroMovimiento:=Value;
end;

procedure TParcelasInhumadosMovimientos.SetFecha(Value:string);
begin
  FFecha:=Value;
end;

procedure TParcelasInhumadosMovimientos.SetActivo(Value:boolean);
begin
  FActivo:=Value;
end;

procedure TParcelasInhumadosMovimientos.SetObservaciones(Value:string);
begin
  FObservaciones:=Value;
end;

procedure TParcelasInhumadosMovimientos.SetUsu_A(Value:variant);
begin
  FUsu_A:=Value;
end;

procedure TParcelasInhumadosMovimientos.SetFecha_A(Value:string);
begin
  FFecha_A:=Value;
end;

procedure TParcelasInhumadosMovimientos.SetNroActaInhumacion(Value:string);
begin
  FNroActaInhumacion:=Value;
end;

procedure TParcelasInhumadosMovimientos.SetHoraInhumacion(Value:string);
begin
  FHoraInhumacion:=Value;
end;

Function TParcelasInhumadosMovimientos.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_ParcelasInhumadosMovimientosConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_Id_PK:=DataSet.FieldByName('Id').AsVariant;
  C_IdHabitante_IX1:=DataSet.FieldByName('IdHabitante').AsVariant;
  C_NroMovimiento_IX2:=DataSet.FieldByName('NroMovimiento').AsVariant;
  C_Fecha_IX3:=DataSet.FieldByName('Fecha').AsString;
  C_Activo:=DataSet.FieldByName('Activo').AsBoolean;
  C_Observaciones:=DataSet.FieldByName('Observaciones').AsString;
  C_Usu_A:=DataSet.FieldByName('Usu_A').AsVariant;
  C_Fecha_A:=DataSet.FieldByName('Fecha_A').AsString;
  C_NroActaInhumacion:=DataSet.FieldByName('NroActaInhumacion').AsString;
  C_HoraInhumacion:=DataSet.FieldByName('HoraInhumacion').AsString;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TParcelasInhumadosMovimientos.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasInhumadosMovimientosConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasInhumadosMovimientos.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasInhumadosMovimientos.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasInhumadosMovimientos.Agrega():boolean;
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
if (C_IdHabitante_IX1 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdHabitante_IX1));
if (C_NroMovimiento_IX2 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroMovimiento_IX2));
Parametros.Add(C_Fecha_IX3);
if C_Activo then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_Observaciones);
if (C_Usu_A = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_A));
Parametros.Add(C_NroActaInhumacion);
Parametros.Add(C_HoraInhumacion);

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasInhumadosMovimientosInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TParcelasInhumadosMovimientos.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasInhumadosMovimientosEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TParcelasInhumadosMovimientos.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_Id_PK));
if (C_IdHabitante_IX1 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdHabitante_IX1));
if (C_NroMovimiento_IX2 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroMovimiento_IX2));
Parametros.Add(C_Fecha_IX3);
if C_Activo then Parametros.Add('1')
else Parametros.Add('0');
Parametros.Add(C_Observaciones);
Parametros.Add(C_NroActaInhumacion);
Parametros.Add(C_HoraInhumacion);


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasInhumadosMovimientosModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

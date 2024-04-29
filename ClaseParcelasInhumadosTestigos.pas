unit ClaseParcelasInhumadosTestigos;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, StrUtils, DB, DBClient, CapaDatos, 
  Variants, WSDLIntf;

type
  TParcelasInhumadosTestigos= Class(TObject)
  private
  { Private declarations }
    FCapaDatos: TCapaDatos;
    FConnectionString: widestring;
    FIdentidad: string;
    FCountFields: integer;
    FIsEmpty: boolean;
    Fid:variant;
    FIdHabitante:variant;
    FCuif:variant;
    FNroParentesco:variant;
    FTipoTestigo:variant;
    FUsu_A:variant;
    FFecha_a:string;
    FUsu_M:variant;
    FFecha_M:string;
    procedure SetConnectionString(Value:widestring);
    procedure SetIdentidad(Value:string);
    procedure SetIsEmpty(Value:boolean);
    procedure Setid(Value:variant);
    procedure SetIdHabitante(Value:variant);
    procedure SetCuif(Value:variant);
    procedure SetNroParentesco(Value:variant);
    procedure SetTipoTestigo(Value:variant);
    procedure SetUsu_A(Value:variant);
    procedure SetFecha_a(Value:string);
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

    property C_id_PK:variant read Fid write Setid;
    property C_IdHabitante_IX1:variant read FIdHabitante write SetIdHabitante;
    property C_Cuif_IX2:variant read FCuif write SetCuif;
    property C_NroParentesco_IX3:variant read FNroParentesco write SetNroParentesco;
    property C_TipoTestigo_IX4:variant read FTipoTestigo write SetTipoTestigo;
    property C_Usu_A:variant read FUsu_A write SetUsu_A;
    property C_Fecha_a:string read FFecha_a write SetFecha_a;
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

constructor TParcelasInhumadosTestigos.Create(AOwner:TComponent);
begin
  inherited Create();
  FCountFields:=9;
end;

procedure TParcelasInhumadosTestigos.SetConnectionString(Value:widestring);
begin
  FConnectionString:=Value;
end;

procedure TParcelasInhumadosTestigos.SetIdentidad(Value:string);
begin
  FIdentidad:=Value;
end;

procedure TParcelasInhumadosTestigos.SetIsEmpty(Value:boolean);
begin
  FIsEmpty:=Value;
end;


procedure TParcelasInhumadosTestigos.Setid(Value:variant);
begin
  Fid:=Value;
end;

procedure TParcelasInhumadosTestigos.SetIdHabitante(Value:variant);
begin
  FIdHabitante:=Value;
end;

procedure TParcelasInhumadosTestigos.SetCuif(Value:variant);
begin
  FCuif:=Value;
end;

procedure TParcelasInhumadosTestigos.SetNroParentesco(Value:variant);
begin
  FNroParentesco:=Value;
end;

procedure TParcelasInhumadosTestigos.SetTipoTestigo(Value:variant);
begin
  FTipoTestigo:=Value;
end;

procedure TParcelasInhumadosTestigos.SetUsu_A(Value:variant);
begin
  FUsu_A:=Value;
end;

procedure TParcelasInhumadosTestigos.SetFecha_a(Value:string);
begin
  FFecha_a:=Value;
end;

procedure TParcelasInhumadosTestigos.SetUsu_M(Value:variant);
begin
  FUsu_M:=Value;
end;

procedure TParcelasInhumadosTestigos.SetFecha_M(Value:string);
begin
  FFecha_M:=Value;
end;

Function TParcelasInhumadosTestigos.BuscarPK(ValorBuscado:String):boolean;
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
Result:=FCapaDatos.BuscarSP('SPC_ParcelasInhumadosTestigosConsultar',Parametros,DataSet,1);
if Result then begin
  //Realizo la Asignación a las Propiedades de la Clase
  IsEmpty:=DataSet.IsEmpty;
  C_id_PK:=DataSet.FieldByName('id').AsVariant;
  C_IdHabitante_IX1:=DataSet.FieldByName('IdHabitante').AsVariant;
  C_Cuif_IX2:=StrToInt64(DataSet.FieldByName('Cuif').AsString);
  C_NroParentesco_IX3:=DataSet.FieldByName('NroParentesco').AsVariant;
  C_TipoTestigo_IX4:=DataSet.FieldByName('TipoTestigo').AsVariant;
  C_Usu_A:=DataSet.FieldByName('Usu_A').AsVariant;
  C_Fecha_a:=DataSet.FieldByName('Fecha_a').AsString;
  C_Usu_M:=DataSet.FieldByName('Usu_M').AsVariant;
  C_Fecha_M:=DataSet.FieldByName('Fecha_M').AsString;
end;

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
DataSet.Free;
end;

Function TParcelasInhumadosTestigos.ListarSP(var Parametros:TWideStrings; var DataSet:TClientDataSet; 
MaxRecord:integer):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasInhumadosTestigosConsultar',Parametros,DataSet,MaxRecord);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasInhumadosTestigos.Listar(Consulta:widestring; var DataSet:TClientDataSet):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibre(Consulta,DataSet);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasInhumadosTestigos.ListarSinResp(Consulta:widestring):boolean;
begin
//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Realizo la Consulta
Result:=FCapaDatos.QueryLibreSinResp(Consulta);

//Libero Memoria
FCapaDatos.Free;
end;

Function TParcelasInhumadosTestigos.Agrega():boolean;
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
if (C_Cuif_IX2 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Cuif_IX2));
if (C_NroParentesco_IX3 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroParentesco_IX3));
if (C_TipoTestigo_IX4 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_TipoTestigo_IX4));
if (C_Usu_A = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_A));
if (C_Usu_M = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_M));
Parametros.Add(C_Fecha_M);

//Realizo la Consulta
Result:=FCapaDatos.BuscarSP('SPC_ParcelasInhumadosTestigosInsertar',Parametros,DataSet,1);

if Result then begin
  if not(DataSet.IsEmpty) then Identidad:=DataSet.Fields[0].AsString
end;

//Libero Memoria
FCapaDatos.Free;
DataSet.Free;
Parametros.Free;
end;

Function TParcelasInhumadosTestigos.Borrar(ValorBuscado:string):boolean;
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
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasInhumadosTestigosEliminar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

Function TParcelasInhumadosTestigos.Modificar():boolean;
var Parametros:TWideStrings;
begin
//Instancio el Contenedor de Parametros
Parametros:=TWideStrings.Create;

//Instancio la Capa de Datos
FCapaDatos:=TCapaDatos.Create(nil);
FCapaDatos.ConnectionString:=FConnectionString;

//Cargo los Parmetros
Parametros.Add(IntToStr(C_id_PK));
if (C_IdHabitante_IX1 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_IdHabitante_IX1));
if (C_Cuif_IX2 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Cuif_IX2));
if (C_NroParentesco_IX3 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_NroParentesco_IX3));
if (C_TipoTestigo_IX4 = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_TipoTestigo_IX4));
if (C_Usu_M = NULL) then Parametros.Add('')
else Parametros.Add(VarToStr(C_Usu_M));
Parametros.Add(C_Fecha_M);


//Realizo la Consulta
Result:=FCapaDatos.EjecutarSinResp('SPC_ParcelasInhumadosTestigosModificar',Parametros);

//Libero Memoria
FCapaDatos.Free;
Parametros.Free;
end;

end.

unit Modulo;

interface

uses
  SysUtils, Classes, Messages, Windows, Dialogs, StdCtrls, ComCtrls,
  Forms, LMDCustomComponent, LMDIniCtrl, Encryp, XPMan, IdFTP,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, ImgList,
  Controls, RpDefine, RpRender, RpRenderPDF, Graphics, JvBaseDlg,
  JvDesktopAlert, ADODB, DB;
type
  TModulo2 = class(TDataModule)
    INI1: TLMDIniCtrl;
    Encryp1: TTomEncryption;
    FTP: TIdFTP;
    Printer: TPrinterSetupDialog;
    XPMan: TXPManifest;
    ImageList1: TImageList;
    RvRenderPDF1: TRvRenderPDF;
    Alert1: TJvDesktopAlert;
    Com1: TADOCommand;
    OtroData: TADODataSet;
    Function Desencript(Valor,ValDefecto:string):string;
    procedure DataModuleCreate(Sender: TObject);
    Function ExisteDir(valor:string;EsDir:boolean):boolean;
    function EnviarArchivoFTP(NombreArchivo,PathDestino,DirectoriosInternos:string;BorrarAlCopiar:boolean):boolean;
    function ExtraerArchivoFTP(NombreArchivo,PathDestino,DirectoriosInternos:string):boolean;
    function SetearFTP(LecturaEscritura:boolean):boolean;
    Function TamanioArchivoFTP(NombreArchivo,DirectoriosInternos:string):integer;
    Function BorrarArchivoFTP(NombreArchivo,DirectoriosInternos:string):boolean;
    procedure FTPWork(Sender: TObject; AWorkMode: TWorkMode;
      const AWorkCount: Integer);
    procedure MensajeTxt(Cabecera,Mensaje,Imagen:string);
    procedure VerificarXML(UltimoPeriodo:string);
    procedure RecrearXML(UltimoPeriodo:string);
    procedure ActualizarTablaXML(NombreTabla:string);
    function GetAppVersion: string;
  private
    { Private declarations }
  public
    path_todo,nom_usu,num_modulo,ElIp,ElHost,ElPuntoV,server,BaseDatos,BaseDatos1,
    PeriodoXML,Version,Actualizacion,nivel:string;
    nro_usu,nvl_usu,num_opcion,num_level,PositionFTP,usu_level:integer;
    modif,NoPermitido:boolean;
    Conexion,Conexion1:widestring;
    LstArchivos:TStringList;{ Public declarations }
    DataSetGral: TADODataSet;
  end;

var
  Modulo2: TModulo2;

implementation

uses Unidad;

{$R *.dfm}
Function TModulo2.Desencript(Valor,ValDefecto:string):string;
var val,key:string;
begin
Encryp1.Action:=atDecryption;
val:=INI1.ReadString(extrae(Valor,',',1),extrae(Valor,',',2),extrae(Valor,',',3));
key:=INI1.ReadString(extrae(ValDefecto,',',1),extrae(ValDefecto,',',2),extrae(ValDefecto,',',3));
Encryp1.Input:=val;
Encryp1.Key:=key;
Encryp1.Execute;
Result:=Encryp1.Output;
end;

function Tmodulo2.GetAppVersion: string;
var
    Size, Size2: DWord;
    Pt, Pt2: Pointer;
begin
  Size := GetFileVersionInfoSize(PChar(ParamStr(0)), Size2);
 if Size > 0 then begin
  GetMem(Pt, Size);
  try
    GetFileVersionInfo(PChar(ParamStr(0)), 0, Size, Pt);
    VerQueryValue(Pt, '\', Pt2, Size2);
    with TVSFixedFileInfo(Pt2^) do
    begin
        Result := ' v' +
        IntToStr(HiWord(dwFileVersionMS)) + '.' +
        IntToStr(LoWord(dwFileVersionMS)) + '.' +
        IntToStr(HiWord(dwFileVersionLS));
        //+ ' Build ' + IntToStr(LoWord(dwFileVersionLS));
    end;
  finally
    FreeMem(Pt);
  end;
 end;
end;


procedure TModulo2.DataModuleCreate(Sender: TObject);
begin
path_todo:=getcurrentdir();

if FileExists(path_todo + '\config.ini') then begin
  try
    Version:='2011.02.25';
    server:=modulo2.INI1.ReadString('Servidor','NombreSQL','Server'); //
    //192.168.0.100
    ElPuntoV:=modulo2.INI1.ReadString('Default','Puntov','');

    {Tratamiento de Coneccion1}
    BaseDatos:=INI1.ReadString('SQL','Base1','Remanso');
//    Conexion:='Data Source=GABY;Integrated Security=SSPI;Initial Catalog=RemansoAlla';
    Conexion:='Provider=SQLOLEDB.1;Password=' + Desencript('SQL,Cl1,','SQL,Default1,')
    + ';Persist Security Info=True;User ID=' + Desencript('SQL,Ini1,','SQL,Default1,')
    + ';Initial Catalog=' + BaseDatos + ';Data Source=' + server + ';Use Procedure for Prepare=1'
    + ';Auto Translate=True;Packet Size=4096;Use Encryption for Data=False;'
    + 'Tag with column collation when possible=False;';

    {Tratamiento de Coneccion2}
    BaseDatos1:=INI1.ReadString('SQL','Base2','Usuarios');
//    Conexion1:='Data Source=GABY;Integrated Security=SSPI;Initial Catalog=UsuariosRem';
    Conexion1:='Provider=SQLOLEDB.1;Password=' + Desencript('SQL,Cl2,','SQL,Default2,')
    + ';Persist Security Info=True;User ID=' + Desencript('SQL,Ini2,','SQL,Default2,')
    + ';Initial Catalog=' + BaseDatos1 + ';Data Source=' + server + ';Use Procedure for Prepare=1'
    + ';Auto Translate=True;Packet Size=4096;Use Encryption for Data=False;'
    + 'Tag with column collation when possible=False;';

    {Tratamiento de Coneccion2}
 {   BaseDatos1:=INI1.ReadString('SQL','Base2','Usuarios');
//    Conexion1:='Data Source=GABY;Integrated Security=SSPI;Initial Catalog=UsuariosRem';
    Conexion2:='Provider=SQLOLEDB.1;Password=' + Desencript('SQL,Cl2,','SQL,Default2,')
    + ';Persist Security Info=True;User ID=' + Desencript('SQL,Ini2,','SQL,Default2,')
    + ';Initial Catalog=Facturacion;Data Source=' + server + ';Use Procedure for Prepare=1'
    + ';Auto Translate=True;Packet Size=4096;Use Encryption for Data=False;'
    + 'Tag with column collation when possible=False;';       }

    PeriodoXML:=INI1.ReadString('Default','UltimaActualizacion','');
    if PeriodoXML = '' then PeriodoXML:='0';
    VerificarXML(PeriodoXML);
    try
      //Verficar la versión Activa
     DataSetGral:= TADODataSet.Create(nil);
     DataSetGral.ConnectionString:=Conexion;
     DataSetGral.CommandText:='SELECT Version FROM VersionSoft WHERE (Activo=1)';
     DataSetGral.Open;
     if Version = DataSetGral.Fields[0].AsString then NoPermitido:=false;
    except
    end; 
    DataSetGral.Close;
    DataSetGral.Free;
  except
     on Exception do
        messagedlgpos('Error al Intento de Conección a la Base de Datos de SQL Server'
        ,mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
  end;
end
else messagedlgpos('No exite la Conección a Base de Datos de SQL Server',mterror,[mbok],0,screen.Width div 3,screen.Height div 3);
end;


Function TModulo2.ExisteDir(valor:string;EsDir:boolean):boolean;
var t,iPesoArchivo:integer;
    sDir:String;
begin
 LstArchivos := TStringList.Create;
 LstArchivos.Clear;
 Result:=false;
 FTP.List(LstArchivos,'',False);
 for t := 0 to LstArchivos.Count -1 do begin
  sDir:= LstArchivos[t];
  iPesoArchivo:= FTP.Size(sDir);
  if EsDir then begin
    if (iPesoArchivo = -1) and (uppercase(sDir)=uppercase(valor)) then begin
      Result:=true;
      Exit;
    end;
  end
  else begin
     if (iPesoArchivo <> -1) and (uppercase(sDir)=uppercase(valor)) then begin
      Result:=true;
      Exit;
    end;
  end;
 end;
 LstArchivos.Free;
end;

function TModulo2.EnviarArchivoFTP(NombreArchivo,PathDestino,DirectoriosInternos:string;BorrarAlCopiar:boolean):boolean;
var t:integer;
    PathArchivo,DirInt:string;
begin
 try
  FTP.Connect;
  for t:=1 to cuenta(DirectoriosInternos,'/') + 1 do begin
    DirInt:=extrae(DirectoriosInternos,'/',t);
    if DirInt <> '' then begin
      if not ExisteDir(DirInt,true) then FTP.MakeDir(DirInt);
      FTP.ChangeDir(DirInt);
    end;
  end;

  if BorrarAlCopiar then begin
    if ExisteDir(NombreArchivo,false) then FTP.Delete(PathDestino);
  end;
  FTP.Put( NombreArchivo , PathDestino, true);
  Result:=true;
 except
  Result:=false;
  raise Exception.Create( 'No se ha podido conectar con el servidor ' + FTP.Host );
 end;
 FTP.Disconnect;
end;

function TModulo2.ExtraerArchivoFTP(NombreArchivo,PathDestino,DirectoriosInternos:string):boolean;
var t:integer;
    DirInt:string;
begin
 try
  FTP.Connect;
  for t:=1 to cuenta(DirectoriosInternos,'/') + 1 do begin
    DirInt:=extrae(DirectoriosInternos,'/',t);
    FTP.ChangeDir(DirInt);
  end;
  FTP.Get(NombreArchivo,PathDestino, true);
  Result:=true;
 except
  Result:=false;
  raise Exception.Create( 'No se ha podido conectar con el servidor ' + FTP.Host );
 end;
 FTP.Disconnect;
end;

function TModulo2.SetearFTP(LecturaEscritura:boolean):boolean;
begin
 try
  FTP.Host:=INI1.ReadString('FTP','FTPHost','192.168.1.150');
  if LecturaEscritura then begin
    FTP.Username:=Desencript('FTP,FTPUsuario2,','FTP,FTPK2,');
    FTP.Password:=Desencript('FTP,FTPP2,','FTP,FTPK2,');
  end
  else begin
    FTP.Username:=Desencript('FTP,FTPUsuario1,','FTP,FTPK1,');
    FTP.Password:=Desencript('FTP,FTPP1,','FTP,FTPK1,');
  end;
  Result:=true;
 except
  Result:=false;
 end;
end;


Function TModulo2.TamanioArchivoFTP(NombreArchivo,DirectoriosInternos:string):integer;
var t:integer;
    DirInt:string;
begin
 try
  FTP.Connect;
  for t:=1 to cuenta(DirectoriosInternos,'/') + 1 do begin
    DirInt:=extrae(DirectoriosInternos,'/',t);
    FTP.ChangeDir(DirInt);
  end;
  Result:=FTP.Size(NombreArchivo);
 except
  Result:=0;
  raise Exception.Create( 'No se ha podido conectar con el servidor ' + FTP.Host );
 end;
 FTP.Disconnect;
end;

Function TModulo2.BorrarArchivoFTP(NombreArchivo,DirectoriosInternos:string):boolean;
var t:integer;
    DirInt:string;
begin
 try
  FTP.Connect;
  for t:=1 to cuenta(DirectoriosInternos,'/') + 1 do begin
    DirInt:=extrae(DirectoriosInternos,'/',t);
    FTP.ChangeDir(DirInt);
  end;
  if ExisteDir(NombreArchivo,false) then FTP.Delete(NombreArchivo);
  Result:=true;
 except
  Result:=false;
  raise Exception.Create( 'No se ha podido conectar con el servidor ' + FTP.Host );
 end;
 FTP.Disconnect;
end;

procedure TModulo2.FTPWork(Sender: TObject; AWorkMode: TWorkMode;
  const AWorkCount: Integer);
begin
PositionFTP:=AWorkCount;
end;

procedure TModulo2.MensajeTxt(Cabecera,Mensaje,Imagen:string);
begin
Alert1.Image.LoadFromFile(Imagen);
Alert1.HeaderText:=Cabecera;
Alert1.MessageText:=Mensaje;
Alert1.Execute;
end;

procedure TModulo2.VerificarXML(UltimoPeriodo:string);
var z,q,totrec,m:integer;
    ConsultaSQL:widestring;
    ListaTabla:ListTable;
    Ultima,Control:string;
    Bandera,Bandera1:boolean;
begin
if not(ExisteXML(path_todo + '\XML\')) then UltimoPeriodo:='0';

//Controlan la cantidad de consultas SQL que se ejecutan a la vez
z:=1;q:=5;

DataSetGral:=TADODataSet.Create(nil); //Creamos un DataSet

//Esto es para saber cuantas tablas XML hay que crear.
DataSetGral.ConnectionString:=conexion;
DataSetGral.CommandText:='SELECT count(*) FROM TablasXML WHERE (CrearXML=1);';
DataSetGral.Open;
if DataSetGral.IsEmpty then totrec:=0
else totrec:=DataSetGral.Fields[0].AsInteger;
DataSetGral.Close;

Bandera:=true;
Bandera1:=false;
Actualizacion:='0';Control:='0';
//if trim(UltimoPeriodo) = '' then Ultima:=''
//else
Ultima:=' AND (PeriodoLargo>' + chr(39) + UltimoPeriodo + chr(39) + ')';
while Bandera do begin
  DataSetGral.CommandText:='SELECT ArchivoXML,Consulta,PeriodoLargo FROM ConsultaXML() '
  + 'WHERE (Id>=' + inttostr(z) + ') AND (id<=' + inttostr(q) + ')'
  + Ultima;
  DataSetGral.Open;
  Control:=CreaXML(DataSetGral);

  DataSetGral.Close;
  if strtofloat(Control)> strtofloat(Actualizacion) then  Actualizacion:=Control;
  Bandera1:=true;
  z:=q;q:=q+5;
  if q > totrec then q:=totrec;
  if z = totrec then Bandera:=false;
end;
DataSetGral.Close;
DataSetGral.Free;
if Actualizacion <> '0' then INI1.WriteString('Default','UltimaActualizacion',Actualizacion);
end;


procedure TModulo2.RecrearXML(UltimoPeriodo:string);
var z,q,totrec,m:integer;
    ConsultaSQL:widestring;
    ListaTabla:ListTable;
    Ultima,Actualizacion:string;
begin
q:=5;z:=1;
DataSetGral:=TADODataSet.Create(nil); //Creamos un DataSet

//Esto es para saber cuantas tablas XML hay que crear.
DataSetGral.ConnectionString:=conexion;
DataSetGral.CommandText:='SELECT count(*) FROM TablasXML WHERE (CrearXML=1);';
DataSetGral.Open;
if DataSetGral.IsEmpty then totrec:=0
else totrec:=DataSetGral.Fields[0].AsInteger;
DataSetGral.Close;

Actualizacion:='0';
if trim(UltimoPeriodo) = '' then Ultima:=''
else Ultima:='WHERE (PeriodoLargo>' + chr(39) + UltimoPeriodo + chr(39) + ')';
DataSetGral.CommandText:='SELECT ArchivoXML,Consulta,PeriodoLargo FROM ConsultaXML() '
+ Ultima;
DataSetGral.Open;
Actualizacion:=CreaXML(DataSetGral);
DataSetGral.Close;
DataSetGral.Free;
INI1.WriteString('Default','UltimaActualizacion',Actualizacion);
end;

procedure TModulo2.ActualizarTablaXML(NombreTabla:string);
var ElPeriodo,FechaActual:string;
    Com1: TADOCommand;
begin
 FechaActual:=Fec_System();
 ElPeriodo:=strcut_midle(FechaActual,7,10) + strcut_midle(FechaActual,4,5)
            + strcut_midle(FechaActual,1,2) + strcut_midle(FechaActual,12,13)
            + strcut_midle(FechaActual,15,16);
 try
  Com1:=TADOCommand.Create(nil);
  Com1.ConnectionString:=conexion;
  Com1.CommandText:='UPDATE TablasXML SET FechaModificacion=' + chr(39)
  + strcut(FechaActual,10) + chr(39) + ' ,PeriodoLargo=' + chr(39) + ElPeriodo
  +  chr(39) + ' WHERE (Tabla=' + chr(39) + NombreTabla + chr(39) + ')';
  Com1.Execute;
 finally
  Com1.Free;
 end;
 RecrearXML(PeriodoXML);
end;


end.

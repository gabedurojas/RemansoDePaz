unit Unidad;

interface
uses  SysUtils, DB, ADODB,DateUtils,Dialogs,DBWeb, ClaseSistemas, WSDLIntf,
      DBClient, Windows, Graphics, StrUtils,
      //IdSMTP,IdMessage,IdSSLOpenSSL; //,IdAttachmentFile   ;

  IdSMTP, IdMessage,     IdComponent, IdTCPConnection, IdTCPClient,
  IdMessageClient,  IdBaseComponent, IdIOHandler,
  IdSSLOpenSSL, IdGlobal,     IdHTTP,
  IdIOHandlerSocket,   IdHTTPServer,IdSSLOpenSSLHeaders ;


type lineas = array[1..2] of string;
type StrArray = array [1..9] of string;
type cuim_partes = array[1..2] of string;
type ListTable = array of string;
type TablaXML = array of array of string;

Procedure AuditAccesos(AreaIngreso:string;OperacionRealizada:string);
Function AuditaImpresos(OperacionRealizada,ElCuim:string):string;
function modificar(text:string):string;
Function edad(fact:string;fnac:string):string;
Function tmpbaja(fecini:string;meses:string):string;
Function fechalarga(fecha:string):string;
function separar(cadena:string;separador:string;posi:integer):string;
Function completa(cadena:string;tamano:integer;caracter:char):string;
Function completa1(cadena:string;tamano:integer;caracter:char):string;
Function cortastr(cadena:string;tamano:integer):lineas;
Function strcut(cadena:string;tamano:integer):string;
Function cuenta(cadena:widestring;separador:string):integer;
Function tomadato(cadena:string;lugar:integer):integer;
function extrae(cadena:widestring;separador:string;pos:integer):string;
function separar1(cadena:string;separador:string):string;
function incorpora(cadena:string;tamano,decimal:integer;coma:char):string;
function sep_mas(elstring:string):integer;
function transforma(cadena:string;carac1,carac2:char):string;
function transforma1(cadena:widestring;carac1,carac2:char):string;
function codigo_ver(cadena:string):string;
function codigo_bar(cadena:string):string;
function fectoint(cadena:string):string;
Function completa2(cadena:string;tamano1,tamano2:integer;caracter:char):string;
function cambia(cadena:string):string;
function encripta(cadena:string;tpo:boolean):string;
Function Corta_fec(cadena:string):string;
Function Fec_Texto(cadena:string):string;
function el_mes(mes:integer):string;
function el_mesAnumero(mes:string):string;
Function tmpbaja1(fecini,fecnac:string;meses:string):string;
Function Fec_System():string;
function usu_level(usu,area:integer):integer;
function mda(fecha:string;tipo:byte):integer;
function crea_cuim(nro_dni,prefijo:integer):string;
Function llenastr(cadena:string;tamano:integer;caracter:char):string;
function inttocuim(nro_cuim:Int64):string;
function cuimtoint(nro_cuim:string):string;
function inttodni(nro_cuim:string):string;
function redondeo(cadena:string;decimales:integer):string;
Function strcut_midle(cadena:string;comienzo,fin:integer):string;
function numtopesos(num:string):string;
function findchr(cadena:string;caracter:char):integer;
function importetobanco(cadena:string;tamano,decimales:integer;caracter:char):string;
Function strcutbanco(cadena:string;tamano:integer;char_find,caracter:char):string;
Function strcutbanco1(cadena:string;tamano:integer;char_find,caracter:char):string;
Function cambiafecha(fecha,formato:string):string;
Function deletechar(cadena:string;caracter:char):string;
Function llenastr_derecha(cadena:string;tamano:integer;caracter:char):string;
Function Separa_cuim(nro_cuim:string):cuim_partes;
function el_detalle(num,tipo:integer):string;
function Separar_txt(cadena:string;caracter:char):lineas;
function fecha_dif(f_desde,f_hasta:string):string;
Function fechaCuotas(cadena:string;cuotas:integer):string;
Function MesIncremento(Fecha:string;Meses:integer):string;
Function DiaIncremento(Fecha:string;Dias:integer):string;
Function AnioIncremento(Fecha:string;Anios:integer):string;
Function CrearCuim(NroDni:integer;Sexo:string):string;
Function CreaXML(Datos:TADODataSet):string;
Function LeeXML(ArchivoXML,Filtro:string):TablaXML;
Function ExisteXML(Directorio:string):boolean;
Function StrFill(cadena:string;longitud:Integer;relleno,posicion:string): string;
function HexToColor(hexString: String): TColor;
Function FechaToPeriodo(Fecha,Formato:string):string;
Function FechaIncremento(Fecha:string;Meses:integer):string;
function DarMaximo(tabla:string):string;
function GradosToRadianes(angulo:double):double;
procedure LiberarMemoria;
procedure EnviarMensaje(sUsuario, sClave, sHost, sAdjunto, sAsunto, sRemitente,
sMailRemitente, sDestinatarios, sMailDestinatarios:String; sMensaje: String);

implementation

uses Modulo;


Procedure AuditAccesos(AreaIngreso:string;OperacionRealizada:string);
var mbn:string;
begin
 if modulo2.nro_usu <> 0 then begin
   if trim(modulo2.num_modulo) = '' then mbn:='NULL'
    else mbn:=modulo2.num_modulo;
  modulo2.Com1.ConnectionString:=modulo2.Conexion1;
  modulo2.Com1.CommandText:='INSERT INTO Accesos (codusu,tipo,operacion,codmodulo,'
  + 'pv,Host,IP) VALUES (' + inttostr(modulo2.nro_usu)
  + ' , ' + chr(39)  + strcut(AreaIngreso,15) + chr(39)
  + ' , ' + chr(39) + OperacionRealizada + chr(39)
  + ' , ' + mbn + ' , 0 , '
  + chr(39) + modulo2.ElHost + chr(39)
  + ' , ' + chr(39) + modulo2.ElIp + chr(39) + ');';
  modulo2.Com1.Execute;
 end;
end;

Function AuditaImpresos(OperacionRealizada,ElCuim:string):string;
begin
{modulo2.Com1.CommandText:='INSERT INTO Impresos (codusu,Listado,idmodulo,pv,CUIM) VALUES ('
+ inttostr(modulo2.nro_usu) + ' , ' + chr(39) + strcut(OperacionRealizada,40) + chr(39)
+ ' , ' + modulo2.num_modulo + ' , 0 , ' + chr(39) + trim(ElCuim) + chr(39) + ');';
modulo2.Com1.Execute;
modulo2.Com1.CommandText:='SELECT @@IDENTITY AS Id';
modulo2.OtroData.Recordset:=modulo2.Com1.Execute;
modulo2.OtroData.Open;
Result:=modulo2.OtroData.Fields[0].AsString;
modulo2.OtroData.Close;  }
end;

function modificar(text:string):string;
    var o,u:integer;dato:string[5];
    begin
      o:=1;
      for u:=1 to 5 do begin
        if not((text[u]='_') or (text[u]=' ')) then begin
           dato[o]:=text[u];o:=o+1;
        end;
      end;
      dato[0]:=chr(o-1);
      modificar:=dato;
end;
{Funcion para tratamiento de fechas, devuelve la edad}
Function edad(fact:string;fnac:string):string;
var dac,mac,aac:integer;
    dnc,mnc,anc:integer;
    ano,mes,dia:integer;
begin
if fnac = '' then edad:='S/D'
else begin
 dac:=strtoint(fact[1]+fact[2]);
 mac:=strtoint(fact[4]+fact[5]);
 if length(fact)>8 then aac:=strtoint(fact[7]+fact[8]+fact[9]+fact[10])
 else aac:=strtoint('20'+fact[7]+fact[8]);
 dnc:=strtoint(fnac[1]+fnac[2]);
 mnc:=strtoint(fnac[4]+fnac[5]);
 if length(fnac)>8 then anc:=strtoint(fnac[7]+fnac[8]+fnac[9]+fnac[10])
 else anc:=strtoint('19'+fnac[7]+fnac[8]);
 ano:=aac-anc;mes:=mac-mnc;dia:=dac-dnc;
 if mes > 0 then edad:=inttostr(ano)
 else begin
   if mes < 0 then edad:=inttostr(ano-1)
   else begin
      if dia < 0 then edad:=inttostr(ano-1)
      else edad:=inttostr(ano);
   end;
 end;
end;
end;

Function tmpbaja(fecini:string;meses:string):string;
var dnc,mnc,ano:integer;
    aux,mes:integer;
    df,mf,af:string;
begin
 dnc:=strtoint(fecini[1]+fecini[2]);
 mnc:=strtoint(fecini[4]+fecini[5]);
 if length(fecini)>8 then ano:=strtoint(fecini[7]+fecini[8]+fecini[9]+fecini[10])
 else ano:=strtoint('20'+fecini[7]+fecini[8]);
 if strtoint(trim(meses)) > 11 then begin
   aux:=strtoint(trim(meses)) mod 12;
   mes:=trunc(strtoint(trim(meses))/12);
   ano:=ano + mes;
   mes:=aux + mnc;
   if mes > 12 then begin
     mes:=mes - 12;
     ano:=ano + 1;
   end;
 end
 else begin
   mes:=mnc + strtoint(trim(meses));
   if mes > 12 then begin
     aux:=mes mod 12;
     mes:=trunc(mes/12);
     ano:=ano + mes;
     mes:=aux;
   end;
 end;
 df:=inttostr(dnc);
 if length(df) = 1 then df:='0' + df;
 mf:=inttostr(mes);
 if length(mf) = 1 then mf:='0' + mf;
 af:=inttostr(ano);
 tmpbaja:= df + '/' + mf + '/' + af;
end;

Function fechalarga(fecha:string):string;
var dia,mes,ano:string;
begin
if length(fecha)<10 then begin
 if length(fecha) = 7 then begin
   dia:=('0' + fecha[1]);
   mes:=(fecha[3] + fecha[4]);
   ano:=('20' + fecha[6] + fecha[7]);
   fechalarga:=dia + '/' + mes + '/' + ano;
 end
 else begin
   dia:=(fecha[1] + fecha[2]);
   mes:=(fecha[4] + fecha[5]);
   ano:=('20' + fecha[7] + fecha[8]);
   fechalarga:=dia + '/' + mes + '/' + ano;
 end;
end
else begin
 fechalarga:=fecha;
end;
end;

function separar(cadena:string;separador:string;posi:integer):string;
var cad1:string;
    x,y,tot,kl1,kl2:integer;
    fd:boolean;
begin
 fd:=true;x:=1;y:=0;
 while fd do begin
    if cadena[x]=separador then begin
       y:=y+1;
       if y = 1 then kl1:=x;
       if y = 2 then begin
         kl2:=x;fd:=false;
       end;
    end;
    x:=x+1;
 end;
 cad1:='';
 case posi of
   1: for y:=1 to kl1-1 do
     cad1:=cad1 + cadena[y];
   2: for y:=kl1+1 to kl2-1 do
     cad1:=cad1 + cadena[y];
   3: for y:=kl2+1 to length(cadena) do
     cad1:=cad1 + cadena[y];
 end;
 separar:=cad1;
end;

{Funcion que completa los numeros con un determinado caracter para formar
00.023.456}
Function completa(cadena:string;tamano:integer;caracter:char):string;
var x,y,fd:integer;
    cad1:string;
begin
 if length(cadena)=tamano then completa:=cadena
 else begin
   setlength(cad1,tamano);{Definimos el tamaño del string}
   y:=0;fd:=length(cadena);
   for x:=tamano downto 1 do begin
    if y = 3 then begin
       cad1[x]:='.';
       y:=-1;
    end
    else begin
      if fd < 1 then cad1[x]:=caracter
      else cad1[x]:=cadena[fd];
      fd:=fd-1;
    end;
    y:=y+1;
   end;
   completa:=cad1;
 end;
end;

Function completa1(cadena:string;tamano:integer;caracter:char):string;
var x,y,fd:integer;
    cad1:string;
begin
 if length(cadena)=tamano then completa1:=cadena
 else begin
   setlength(cad1,tamano);{Definimos el tamaño del string}
   y:=0;fd:=length(cadena);
   for x:=tamano downto 1 do begin
      if fd < 1 then cad1[x]:=caracter
      else cad1[x]:=cadena[fd];
      fd:=fd-1;
   end;
   completa1:=cad1;
 end;
end;

Function cortastr(cadena:string;tamano:integer):lineas;
var y,x:integer;
    cad1,cad2:string;
    bandera:boolean;
begin
 if length(cadena) < (tamano+1) then begin
   cortastr[1]:=cadena;cortastr[2]:='';
 end
 else begin
   bandera:=false;
   for y:=1 to length(cadena) do begin
     if (y > (tamano - 10)) and (cadena[y] = ' ') then bandera:=true;
     if bandera then cad2:=cad2+cadena[y]
     else cad1:=cad1+cadena[y];
   end;
   cortastr[1]:=cad1;cortastr[2]:=cad2;
 end;
end;

Function strcut(cadena:string;tamano:integer):string;
var x:integer;
    hj:string;
begin
hj:='';
if length(cadena)< tamano then
  for x:=1 to length(cadena) do hj:=hj+cadena[x]
else for x:=1 to tamano do hj:=hj+cadena[x];
strcut:=hj;
end;

Function cuenta(cadena:widestring;separador:string):integer;
var xl,jk:integer;
begin
jk:=0;
for xl:=1 to length(cadena) do
   if cadena[xl]=separador then jk:=jk+1;
cuenta:=jk;
end;

function tomadato(cadena:string;lugar:integer):integer;
var cad1:string;
    x,pod,y,ant,tot:integer;
    fd:boolean;
begin
 y:=0;fd:=true;x:=1;ant:=1;pod:=1;
 while fd do begin
  if cadena[x]=',' then begin
      y:=y+1;
      if lugar=y then begin
        pod:=x-1;fd:=false;
      end
      else begin
        if lugar=1 then ant:=1
        else ant:=x+1;
      end;
  end
  else begin
      if (lugar = 7) and (y = 6) then begin
         ant:=x;pod:=length(cadena);fd:=false;
      end;
  end;
    x:=x+1;
    if x > length(cadena) then fd:=false;
 end;
 tot:=pod-ant+1;
 for x:=1 to tot do begin
   if x=1 then cad1:=cadena[ant]
   else cad1:=cad1 + cadena[(ant + x - 1)];
 end;
 tomadato:=strtoint(trim(cad1));
end;


function extrae(cadena:widestring;separador:string;pos:integer):string;
var cad1:string;
    x,pod,y,ant,tot:integer;
    fd:boolean;
 begin
 y:=0;fd:=true;x:=1;ant:=1;pod:=1;
 while fd do begin
    if cadena[x]=separador then begin
      y:=y+1;
      if pos=y then begin
        pod:=x-1;fd:=false;
      end
      else begin
        if pos=1 then ant:=1
        else ant:=x+1;
      end;
    end
    else begin
      if (pos = 6) and (y = 5) then begin
         ant:=x;pod:=length(cadena);fd:=false;
      end;
    end;
    x:=x+1;
    if x > length(cadena) then fd:=false;
 end;
 tot:=pod-ant+1;
 for x:=1 to tot do begin
   if x=1 then cad1:=cadena[ant]
   else cad1:=cad1 + cadena[(ant + x - 1)];
 end;
 extrae:=cad1;
end;

function separar1(cadena:string;separador:string):string;
var cad1:string;
    x,y,tot:integer;
    fd:boolean;
begin
 fd:=true;x:=1;
 while fd do begin
    if cadena[x]=separador then fd:=false;
    x:=x+1;
 end;
 tot:=length(cadena)-x+1;
 for y:=1 to tot do begin
   if y=1 then cad1:= cadena[x]
   else cad1:=cad1 + cadena[(x + y - 1)];
 end;
 separar1:=cad1;
end;

{El tamaño debe incluir la coma}
function incorpora(cadena:string;tamano,decimal:integer;coma:char):string;
var x,y,pos:integer;
    cad1,parte1,parte2:string;
begin
setlength(cad1,tamano);{Definimos el tamaño del string}
for x:=1 to tamano do cad1[x]:='0';{Llenamos el string de '0'}
if (strtofloat(trim(transforma(trim(cadena),chr(46),chr(44))))-trunc(strtofloat(transforma(trim(cadena),chr(46),chr(44)))))> 0 then begin
{El numero es decimal}
  for x:=1 to length(trim(cadena)) do 
     if (cadena[x] = coma) then pos:=x;
  for x:=1 to pos-1 do parte1:=parte1+cadena[x];{Parte entera}
  for x:=pos+1 to length(trim(cadena)) do parte2:=parte2+cadena[x];{Parte decima}
  cad1[tamano-decimal]:=coma;{Colocamos la coma}
  y:=length(parte1);
  for x:=(tamano-decimal-1) downto 1 do begin
    {de la coma para la izquierda}
    if y > 0 then cad1[x]:=parte1[y];
    y:=y-1;
  end;
  y:=1;
  for x:=(tamano-decimal+1) to tamano do begin
    {de la coma para la derecha}
    if y < (length(parte2)+1) then cad1[x]:=parte2[y];
    y:=y+1;
  end;
  incorpora:=cad1;
end
else begin
{El numero es entero}
  parte1:=cadena;{Parte entera}
  cad1[tamano-decimal]:=coma;{Colocamos la coma}
  y:=length(parte1);
  for x:=(tamano-decimal-1) downto 1 do begin
    {de la coma para la izquierda}
    if y > 0 then cad1[x]:=parte1[y];
    y:=y-1;
  end;
  incorpora:=cad1;
end;
end;


function sep_mas(elstring:string):integer;
var hd,hd1:string;
    lw:integer;
begin
hd:=extrae(elstring,';',1);hd1:='';
if hd[1]='!' then
  for lw:=2 to length(hd) do hd1:=hd1+hd[lw]
else
  for lw:=1 to length(hd) do hd1:=hd1+hd[lw];
hd:=extrae(hd1,',',1);
sep_mas:=length(hd);
end;

{Cambia el caracter 'carac1' por el caracter 'carac2'}
function transforma(cadena:string;carac1,carac2:char):string;
var lw:integer;
    ou:string;
    ft:real;
begin
try
  ft:=strtofloat(cadena);
  ou:=floattostr(ft);
except
  ou:=cadena;
end;
for lw:=1 to length(ou) do
   if ou[lw]= carac1 then ou[lw]:=carac2;
transforma:=ou;
end;

{Cambia el caracter 'carac1' por el caracter 'carac2'}
function transforma1(cadena:widestring;carac1,carac2:char):string;
var lw:Longint;
    ou:string;
    ft:real;
begin
try
  ft:=strtofloat(cadena);
  ou:=floattostr(ft);
except
  ou:=cadena;
end;
lw:=1;
while lw < length(ou) do begin
   if ou[lw]= carac1 then ou[lw]:=carac2;
   lw:=lw+1;
end;
transforma1:=ou;
end;

{Funcion que genera el codigo verificador, recibe un string
de 25 caracteres y devuelve otro string de 26}
function codigo_ver(cadena:string):string;
var ro,total:integer;
    el_codigo:string;
begin
total:=0;
el_codigo:='1357935793579357935793579357935793579357';
for ro:=1 to 40 do begin
   total:=total + (strtoint(cadena[ro])*strtoint(el_codigo[ro]));
end;
total:=trunc(total/2);
total:=(total mod 10);
codigo_ver:=cadena + inttostr(total);
end;

{Funcion que genera la codificacion del codigo de barra. Recibe
un string de 18 caracteres y devuelve otro de 18 caracteres pero
codificado para un tipo de letra especial.}
function codigo_bar(cadena:string):string;
var v_star,v_stop,lcheck:char;
    v_check,v_asc,v_largo,ro,v_num:integer;
    la_cadena,la_ret:string;
begin
v_star := chr(105 + 32);
v_stop := chr(106 + 32);
v_check := ord(v_star)-32;
la_cadena := trim(cadena);
v_largo := length(la_cadena);
{La longitud debe ser par}
if (v_largo mod 2) <> 0 then begin
   la_cadena:= '0' + la_cadena;
   v_largo:= length(la_cadena);
end;
{Convierto los pares a caracteres}
la_ret:='';ro:=2;
while ro < (v_largo + 2) do begin
  v_num:=strtoint(la_cadena[ro-1] + la_cadena[ro]) + 32;
  la_ret:=la_ret + chr(v_num);
  ro:=ro+2;
end;
v_largo:=length(la_ret);
for ro:=1 to v_largo do begin
  v_num:=ord(la_ret[ro])-32;
  v_asc:=(v_num * ro);
  v_check:=v_check + v_asc;
end;
ro:=(v_check mod 103) + 32;
lcheck:= chr(ro);
la_ret:=v_star + la_ret + lcheck + v_stop;
{Esta parte cambia los espacios y caracteres invalidos}
la_ret:=transforma(la_ret,chr(32),chr(232));
la_ret:=transforma(la_ret,chr(127),chr(192));
la_ret:=transforma(la_ret,chr(128),chr(193));
codigo_bar:=la_ret;
end;

{Funcion que toma una fecha y elimina los '/' para dejarla como numero}
function fectoint(cadena:string):string;
var lw:integer;
    cad1:string;
begin
cad1:='';
for lw:=1 to length(cadena) do begin
  if lw <> 3 then begin
    if (lw <> 6) then cad1:=cad1 + cadena[lw];
  end;
end;
fectoint:=cad1;
end;


{Funcion que completa los numeros con un determinado caracter para formar
00023456.90}
Function completa2(cadena:string;tamano1,tamano2:integer;caracter:char):string;
var x,y,fd:integer;
    cad1,cad2:string;
    cad3:char;
begin
setlength(cad1,tamano1);{Definimos el tamaño del string}
setlength(cad2,tamano2+1);{Definimos el tamaño del string}
y:=0;
for x:=1 to length(cadena) do begin
  if (cadena[x]='.') or (cadena[x]=',') then y:=x;
  if (cadena[x]='.') then cad3:='.';
  if (cadena[x]=',') then cad3:=',';
end;
if y<>0 then begin
  fd:=y-1;
  for x:=tamano1 downto 1 do begin
    if fd < 1 then cad1[x]:=caracter
    else cad1[x]:=cadena[fd];
    fd:=fd-1;
  end;
  cad2[1]:=cad3;fd:=2;
  for x:=y+1 to (y+tamano2) do begin
    if x > length(cadena) then cad2[fd]:=caracter
    else cad2[fd]:=cadena[x];
    fd:=fd+1
  end;
end
else begin
  fd:=length(cadena);
  for x:=tamano1 downto 1 do begin
    if fd < 1 then cad1[x]:=caracter
    else cad1[x]:=cadena[fd];
    fd:=fd-1;
  end;
  for x:=1 to tamano2+1 do begin
    if x=1 then cad2[x]:='.'
    else cad2[x]:=caracter;
  end;
end;
completa2:=cad1+cad2;
end;

{Cambia valores booleanos a bits}
function cambia(cadena:string):string;
begin
if cadena = 'True' then cambia:='1'
else cambia:='0';
end;


{Funcion que de acuerdo al valor de tpo, encripta o desencripta la cadena
recibida.
El proceso de encriptacion cuenta con la mezcla de caracteres, suma de un valor
especifico y la integracion de cuatro caracteres numericos al azar en
determinada posicion. Las posiciones de integracion son 4,8,16,24.
La mezcla es la intercalacion del primero con el segundo, el tercero con el
cuarto... El valor a sumar es 1}
function encripta(cadena:string;tpo:boolean):string;
 var lw,kw:integer;
 var resul1,resul2,c1,c2:string;
begin
if tpo then begin
  {Valor TRUE es encriptacion de la cadena}
  {Empezamos con la suma del valor 1 a todos los caracteres}
  resul1:='';{esta variable tiene el resultado}
  for lw:=1 to length(cadena) do begin
    if cadena[lw]='9' then begin
      resul1:= resul1 + '0'; {caso que la suma da 10}
    end
    else begin
      kw:=strtoint(cadena[lw])+1;{le sumamos 1}
      resul1:=resul1 + inttostr(kw);
    end;
  end;
  {Empezamos con la mezcla de datos}
  lw:=2;resul2:='';
  while not(lw > length(cadena)) do begin
     c1:=resul1[lw-1];{mezclamos el caracter 1 con el 2}
     c2:=resul1[lw];
     resul2:=resul2 + c2 + c1;
     lw:=lw+2;
  end;
{Empezamos con generar numeros al azar y agregarlos en las posiciones indicadas}
  resul1:='';kw:=0;
  setlength(resul1,30);{Definimos el tamaño final del string}
  c1:=inttostr(random(9)) + inttostr(random(9)) + inttostr(random(9)) + inttostr(random(9));
  for lw:=1 to length(resul2) do begin
     if (lw = 4) or (lw = 8) or (lw = 16) or (lw = 24) then begin
        resul1[lw+kw]:=c1[kw+1];
        resul1[lw+kw+1]:=resul2[lw];
        kw:=kw+1;
     end
     else resul1[lw+kw]:=resul2[lw];
  end;
  encripta:=resul1;
end
else begin
{Empezamos a desencriptar la cadena ingresada}
{Empezamos con la eliminacion de los valores al azar incorporados}
  resul1:='';kw:=1;
  setlength(resul1,26);{Definimos el tamaño original del string}
  for lw:=1 to length(cadena) do begin
     if (lw = 4) or (lw = 9) or (lw = 18) or (lw = 27) then
     else begin
       resul1[kw]:=cadena[lw];
       kw:=kw+1;
     end;
  end;
  {Empezamos a desmezclar los numeros}
  lw:=2;resul2:='';
  while not(lw > length(resul1)) do begin
     c1:=resul1[lw-1];{mezclamos el caracter 1 con el 2}
     c2:=resul1[lw];
     resul2:=resul2 + c2 + c1;
     lw:=lw+2;
  end;
  {Empezamos a restar el valor sumado}
  resul1:='';{esta variable tiene el resultado}
  for lw:=1 to length(resul2) do begin
    if resul2[lw]='0' then begin
      resul1:= resul1 + '9'; {caso que la resta de -1}
    end
    else begin
      kw:=strtoint(resul2[lw])-1;{le restamos 1}
      resul1:=resul1 + inttostr(kw);
    end;
  end;
  encripta:=resul1;
end;
end;


Function Corta_fec(cadena:string):string;
var sd:integer;
    cad1:string;
begin
if length(cadena) < 16 then Corta_fec:=cadena
else begin
for sd:=1 to 16 do cad1:= cad1 + cadena[sd];
Corta_fec:=cad1;
end;
end;

Function Fec_Texto(cadena:string):string;
var la_fecha,dnc,mnc,ano:string;
begin
  la_fecha:=(cadena);
  if length(la_fecha) <> 10 then la_fecha:=fechalarga(cadena);
  dnc:=la_fecha[1]+la_fecha[2];
  mnc:=la_fecha[4]+la_fecha[5];
  ano:=la_fecha[7]+la_fecha[8]+la_fecha[9]+la_fecha[10];
  mnc:=el_mes(strtoint(mnc));
  Fec_texto:=dnc + ' de ' + mnc + ' del ' + ano;
end;

function el_mes(mes:integer):string;
begin
  if (mes > 12) or (mes < 1) then el_mes:='Desconocido'
  else begin
    if mes = 1 then el_mes:='Enero';
    if mes = 2 then el_mes:='Febrero';
    if mes = 3 then el_mes:='Marzo';
    if mes = 4 then el_mes:='Abril';
    if mes = 5 then el_mes:='Mayo';
    if mes = 6 then el_mes:='Junio';
    if mes = 7 then el_mes:='Julio';
    if mes = 8 then el_mes:='Agosto';
    if mes = 9 then el_mes:='Setiembre';
    if mes = 10 then el_mes:='Octubre';
    if mes = 11 then el_mes:='Noviembre';
    if mes = 12 then el_mes:='Diciembre';
  end;
end;

function el_mesAnumero(mes:string):string;
begin
  //if (mes > 12) or (mes < 1) then el_mes:='Desconocido'
  //else begin
    if mes = 'Enero' then el_mesAnumero:='01';
    if mes = 'Febrero' then el_mesAnumero:='02';
    if mes = 'Marzo' then el_mesAnumero:='03';
    if mes = 'Abril' then el_mesAnumero:='04';
    if mes = 'Mayo' then el_mesAnumero:='05';
    if mes = 'Junio' then el_mesAnumero:='06';
    if mes = 'Julio' then el_mesAnumero:='07';
    if mes = 'Agosto' then el_mesAnumero:='08';
    if mes = 'Setiembre' then el_mesAnumero:='09';
    if mes = 'Octubre' then el_mesAnumero:='10';
    if mes = 'Noviembre' then el_mesAnumero:='11';
    if mes = 'Diciembre' then el_mesAnumero:='12';
  //end;
end;

{Redefine fecini al intercambiar el mes y el día de fecnac}
Function tmpbaja1(fecini,fecnac:string;meses:string):string;
var dms,msm,ams:string;
begin
 dms:=fecnac[1] + fecnac[2];
 msm:=fecnac[4] + fecnac[5];
 if length(fecini)>8 then ams:=fecini[7]+fecini[8]+fecini[9]+fecini[10]
 else ams:='20' + fecini[7] + fecini[8];
 tmpbaja1:=tmpbaja((dms + '/' + msm + '/' + ams),meses);
end;

Function Fec_System():string;
var Sistemas:TSistemas;
begin
Sistemas:=TSistemas.Create(nil);
Sistemas.ConnectionString:=modulo2.Conexion1;
if Sistemas.Run_FechaServidor then
  Result:=Sistemas.Resultado;
Sistemas.Free;
end;

function usu_level(usu,area:integer):integer;
begin
 try
  modulo2.Com1.ConnectionString:=modulo2.Conexion1;
  //modulo2.Com1.CommandText:='SELECT UsuModulos.Nivel,NivelAcceso.Descripcion ' +
  //'FROM UsuModulos inner join NivelAcceso on NivelAcceso.Nivel=' +
  //'UsuModulos.Nivel WHERE (UsuModulos.CodUsu='+inttostr(usu)+') AND (UsuModulos.Modulo='+inttostr(area)+ ');';
  modulo2.Com1.CommandText:='SELECT Nivel FROM UsuModulos WHERE (CodUsu='
        + inttostr(usu) + ') AND (Modulo=' + inttostr(area) + ');';
  modulo2.OtroData.Recordset:=modulo2.Com1.Execute;
  modulo2.OtroData.Open;
  if modulo2.OtroData.RecordCount = 0 then modulo2.usu_level:=4
  else begin
    //usu_level:=modulo2.OtroData.Fields[0].AsInteger;
    //modulo2.nvl_usu:=modulo2.OtroData.Fields[0].AsInteger;    //nvl_usu
    modulo2.nvl_usu:=modulo2.OtroData.Fields[0].AsInteger;
    //modulo2.nivel:=modulo2.OtroData.Fields[1].AsString;
    modulo2.nro_usu:=usu ;
    modulo2.num_modulo:= inttostr(area);
  end;
  modulo2.OtroData.Close;
 except
  modulo2.usu_level:=-1;
 end;
result:=0;
end;


function mda(fecha:string;tipo:byte):integer;
var la_fecha:string;
begin
la_fecha:=fechalarga(fecha);
if tipo=1 then {año}
  mda:=strtoint(la_fecha[7]+la_fecha[8]+la_fecha[9]+la_fecha[10]);
if tipo=2 then {mes}
  mda:=strtoint(la_fecha[4]+la_fecha[5]);
if tipo=3 then {dia}
  mda:=strtoint(la_fecha[1]+la_fecha[2]);
end;


function crea_cuim(nro_dni,prefijo:integer):string;
var cuim,eldni,constante,postfijo:string;
    m1,m2:string;
    tc,prueba,nSuma:integer;
begin
 eldni:=llenastr(inttostr(nro_dni),8,'0');
 nSuma:=0;
 constante:='5432765432';
 cuim:=llenastr(inttostr(prefijo),2,'0') + '-' + eldni;
 for tc := 10 downto 1 do begin
   if tc < 3 then begin
     m1:=cuim[tc];m2:=constante[tc];
     nSuma:=nSuma + (strtoint(m1)*strtoint(m2))
   end
   else begin
     m1:=cuim[tc+1];m2:=constante[tc];
     nSuma:=nSuma + (strtoint(m1)*strtoint(m2))
   end;
 end;
 if (nSuma mod 11) = 0 then postfijo:='0'
 else begin
   if (nSuma mod 11) > 1 then
        postfijo:=inttostr(11 - (nSuma mod 11))
   else postfijo:='1';
 end;
 crea_cuim:=cuim + '-' + postfijo;
end;

{Funcion que completa los numeros con un determinado caracter para formar
00023456}
Function llenastr(cadena:string;tamano:integer;caracter:char):string;
var x,y,fd:integer;
    cad1:string;
begin
if length(cadena)=tamano then llenastr:=cadena
else begin
   setlength(cad1,tamano);{Definimos el tamaño del string}
   y:=0;fd:=length(cadena);
   for x:=tamano downto 1 do begin
      {if y = 3 then begin
         cad1[x]:='.';
         y:=-1;
      end
      else begin}
        if fd < 1 then cad1[x]:=caracter
        else cad1[x]:=cadena[fd];
        fd:=fd-1;
      {end;}
      y:=y+1;
   end;
   llenastr:=cad1;
end;
end;

function inttocuim(nro_cuim:Int64):string;
var cadena,cad1:string;
    sd,sf:integer;
begin
if length(inttostr(nro_cuim)) <> 11 then inttocuim:='00-00000000-0'
else begin
  setlength(cadena,13);
  cad1:=inttostr(nro_cuim);
  sf:=1;
  for sd:=1 to 13 do begin
     if (sd = 3) or (sd = 12) then cadena[sd]:='-'
     else begin
       cadena[sd]:=cad1[sf];
       sf:=sf+1;
     end;
  end;
  inttocuim:=cadena;
end;
end;

function cuimtoint(nro_cuim:string):string;
var cadena:string;
    sd,sf:integer;
begin
if length(nro_cuim) <> 13 then cuimtoint:='0'
else begin
  setlength(cadena,11);
  sf:=1;
  for sd:=1 to 13 do begin
     if nro_cuim[sd]<> '-' then begin
        cadena[sf]:=nro_cuim[sd];
        sf:=sf+1;
     end;
  end;
  cuimtoint:=cadena;
end;
end;


function inttodni(nro_cuim:string):string;
var cadena:string;
    sd,sf:integer;
begin
if length(nro_cuim)<> 13 then inttodni:='00-00000000-0'
else begin
   setlength(cadena,8);
   sf:=1;
   for sd:=4 to 11 do begin
      cadena[sf]:=nro_cuim[sd];
      sf:=sf+1;
   end;
   inttodni:=cadena;
end;
end;

function redondeo(cadena:string;decimales:integer):string;
var el_numero:real;
begin
try
  el_numero:=strtofloat(AnsiReplaceStr(cadena,chr(44),chr(46)));
except
  el_numero:=strtofloat(AnsiReplaceStr(cadena,chr(46),chr(44)));
end;
redondeo:=FloatToStrF(el_numero, ffFixed, 20, decimales);
end;

Function strcut_midle(cadena:string;comienzo,fin:integer):string;
var x:integer;
    hj:string;
begin
hj:='';
if fin > length(cadena) then fin := length(cadena);
if fin = 0 then fin := length(cadena);
for x:=comienzo to fin do hj:=hj+cadena[x];
strcut_midle:=hj;
end;

{el formato del numero ya tiene que tener 2 decimales}
function numtopesos(num:string):string;
  var centena_,decena_,unidad_,diez_,veinte_: StrArray;
  var grupo,entero,decimales,letra:string;
  var cen_,dec_,uni_,contador,incremento:integer;
begin
  {Declaramos los valores de los arrays}
  centena_[1]:='CIENTO';centena_[2]:='DOSCIENTOS';centena_[3]:='TRESCIENTOS';
  centena_[4]:='CUATROCIENTOS';centena_[5]:='QUINIENTOS';centena_[6]:='SEISCIENTOS';
  centena_[7]:='SETECIENTOS';centena_[8]:='OCHOCIENTOS';centena_[9]:='NOVECIENTOS';

  decena_[1]:='DIEZ';decena_[2]:='VEINTE';decena_[3]:='TREINTA';
  decena_[4]:='CUARENTA';decena_[5]:='CINCUENTA';decena_[6]:='SESENTA';
  decena_[7]:='SETENTA';decena_[8]:='OCHENTA';decena_[9]:='NOVENTA';

  unidad_[1]:='UNO';unidad_[2]:='DOS';unidad_[3]:='TRES';
  unidad_[4]:='CUATRO';unidad_[5]:='CINCO';unidad_[6]:='SEIS';
  unidad_[7]:='SIETE';unidad_[8]:='OCHO';unidad_[9]:='NUEVE';

  diez_[1]:='ONCE';diez_[2]:='DOCE';diez_[3]:='TRECE';
  diez_[4]:='CATORCE';diez_[5]:='QUINCE';diez_[6]:='DIECISEIS';
  diez_[7]:='DIECISIETE';diez_[8]:='DIECIOCHO';diez_[9]:='DIECINUEVE';

  veinte_[1]:='VEINTIUNO';veinte_[2]:='VEINTIDOS';veinte_[3]:='VEINTITRES';
  veinte_[4]:='VEINTICUATRO';veinte_[5]:='VEINTICINCO';veinte_[6]:='VEINTISEIS';
  veinte_[7]:='VEINTISIETE';veinte_[8]:='VEINTIOCHO';veinte_[9]:='VEINTINUEVE';

  {Preparo el numero}
  {El número debe tener decimales por lo tanto si no los tiene,
  se los agrego}
  if (findchr(num,chr(46)) = 0) then
    if (findchr(num,chr(44)) = 0) then num:=num + ',00';
  entero:=completa1(num,15,'0');
  entero:=completa2(num,12,2,'0');
  decimales:=strcut_midle(entero,14,15);
  entero:=strcut_midle(entero,1,12);
  letra:='';
  if strtoint(entero)=0 then begin
    numtopesos:='CERO.---';
    exit;
  end;

  {Tenemos que tomar de cifras de a tres la parte entera}
  contador:=1;incremento:=3;
  while (contador < length(entero)) do begin
    grupo:=strcut_midle(entero,contador,contador+incremento-1);
    cen_:=strtoint(strcut_midle(grupo,1,1));
    dec_:=strtoint(strcut_midle(grupo,2,2));
    uni_:=strtoint(strcut_midle(grupo,3,3));
    {Centena}
    if cen_ <> 0 then begin
      {Exepcion de cien con ciento}
      if strtoint(grupo) = 100 then letra:=letra + ' CIEN'
      else letra:=letra + ' ' + centena_[cen_];
    end;
    {Las decenas y las exepciones}
    case dec_ of
      1: begin   {Decenas de Diez}
           if uni_ = 0 then letra:=letra + ' ' + decena_[dec_]
           else letra:=letra + ' ' + diez_[uni_];
         end;
      2: begin  {Decenas de Veinte}
           if uni_ = 0 then letra:=letra + ' ' + decena_[dec_]
           else letra:=letra + ' ' + veinte_[uni_];
         end;
    else begin {Otras decenas}
      if dec_ <> 0 then letra:=letra + ' ' + decena_[dec_];
      {Unidad}
      if uni_ <> 0 then begin
        if dec_ <> 0 then letra:=letra + ' Y ' + unidad_[uni_]
        else letra:=letra + ' ' + unidad_[uni_];
      end;
     end;
    end;{end del Case}
    {Caso del Mil, Millon con el uno}
    if (uni_ = 1) and ((contador = 1) or (contador = 4) or (contador = 7)) and (dec_ <> 1) then
      letra:=strcut_midle(letra,1,length(letra)-1);
    {Puntos del mil y millon}
    if (contador = 4) and (strtoint(grupo) > 0) then begin
      if (strtoint(grupo)=1) and (strtoint(strcut_midle(entero,1,3)) = 0) then letra:=letra + ' MILLON'
      else letra:=letra + ' MILLONES';
    end;
    if ((contador = 1) or (contador = 7)) and (strtoint(grupo) > 0) then begin
      letra:=letra + ' MIL';
      {Exepciones del mil de millon si millon es cero}
      if (contador = 1) and (strtoint(strcut_midle(entero,4,6)) = 0) then letra:=letra + ' MILLONES';
    end;
    contador:=contador+incremento;
  end;
  {Parte de los decimales}
  if strtoint(decimales)>0 then begin
    dec_:=strtoint(strcut_midle(decimales,1,1));
    uni_:=strtoint(strcut_midle(decimales,2,2));
    case dec_ of
      1: begin
           if uni_ = 0 then letra:=letra + ' CON ' + decena_[dec_]
           else letra:=letra + ' CON ' + diez_[uni_];
         end;
      2: begin
           if uni_ = 0 then letra:=letra + ' CON ' + decena_[dec_]
           else letra:=letra + ' CON ' + veinte_[uni_];
         end;
    else begin {Otras decenas}
      if dec_ <> 0 then letra:=letra + ' CON ' + decena_[dec_];
      {letra:=letra + ' CON';}
      if uni_ <> 0 then begin
        if dec_ = 0 then letra:=letra + ' CON ' + unidad_[uni_]
        else letra:=letra + ' Y ' + unidad_[uni_];
      end;
      end;
    end;{End del case}
    if (uni_ = 1) and (dec_ <> 1) then letra:=strcut_midle(letra,1,length(letra)-1);
    letra:=letra + ' Cvos.';
  end;
  numtopesos:=letra;
end;

{Busca el caracter en la cadena y devuelve la cantidad de veces que lo encuentra}
function findchr(cadena:string;caracter:char):integer;
var xf,vec:integer;
begin
vec:=0;
for xf:=1 to length(cadena) do
  if cadena[xf] = caracter then vec:=vec+1;
findchr:=vec;
end;

{Funcion que completa un string con caracteres de acuerdo al formato del banco,
tambien elimina la coma. Decimales debe ser mayor a 0(cero)}
function importetobanco(cadena:string;tamano,decimales:integer;caracter:char):string;
var x,y,fd:integer;
    cad1,cad2:string;
begin
setlength(cad1,tamano-decimales);{Definimos el tamaño del string}
setlength(cad2,decimales);{Definimos el tamaño del string}
y:=0;
for x:=1 to length(cadena) do begin
  if (cadena[x]='.') or (cadena[x]=',') then y:=x;
end;
fd:=y-1;
for x:=(tamano-decimales) downto 1 do begin
  if fd < 1 then cad1[x]:=caracter
  else cad1[x]:=cadena[fd];
  fd:=fd-1;
end;
fd:=1;
for x:=y+1 to (y+decimales) do begin
  if x > length(cadena) then cad2[fd]:=caracter
  else cad2[fd]:=cadena[x];
  fd:=fd+1
end;
importetobanco:=cad1+cad2;
end;

{Funcion que busca un caracter especifico y a partir de alli corta el string
y luego lo llena a la derecha del caracter de llenado}
Function strcutbanco(cadena:string;tamano:integer;char_find,caracter:char):string;
var x:integer;
    hj:string;
    bf:boolean;
begin
hj:='';bf:=true;
for x:=1 to tamano do begin
  if cadena[x] = char_find then bf:=false;
  if bf then begin
    if x > length(cadena) then hj:=hj+caracter
    else hj:=hj+cadena[x];
  end
  else hj:=hj+caracter;
end;
strcutbanco:=hj;
end;


{Funcion que busca un caracter especifico y a partir de alli corta la parte
anterior del string y luego lo llena a la derecha del caracter de llenado}
Function strcutbanco1(cadena:string;tamano:integer;char_find,caracter:char):string;
var x,w:integer;
    hj:string;
    bf:boolean;
begin
hj:='';bf:=true;w:=1;
for x:=1 to length(cadena) do begin
  if cadena[x] = char_find then bf:=false;
  if bf then w:=x+1;
end;
bf:=true;
if w >= length(cadena) then w:=0;
for x:=w+1 to (w+tamano) do begin
  if x > length(cadena) then bf:=false;
  if bf then hj:=hj+cadena[x]
  else hj:=hj+caracter;
end;
strcutbanco1:=hj;
end;

{Funcion que cambia el formato de la fecha de acuerdo al string que se le pasa
y que debe tener el formato MM AAAA DD, mezclado de la forma que sea}
Function cambiafecha(fecha,formato:string):string;
var di,ms,an:string;

begin
an:=inttostr(mda(fecha,1));
ms:=inttostr(mda(fecha,2));
di:=inttostr(mda(fecha,3));
if formato = 'MMAAAADD' then cambiafecha:=ms+an+di;
if formato = 'AAAAMMDD' then cambiafecha:=an+ms+di;
if formato = 'AAAADDMM' then cambiafecha:=an+di+ms;
if formato = 'DDAAAAMM' then cambiafecha:=di+an+ms;
if formato = 'DDMMAAAA' then cambiafecha:=di+ms+an;
if formato = 'MMDDAAAA' then cambiafecha:=ms+di+an;

if formato = 'MM/AAAA/DD' then cambiafecha:=ms+'/'+an+'/'+di;
if formato = 'AAAA/MM/DD' then cambiafecha:=an+'/'+ms+'/'+di;
if formato = 'AAAA/DD/MM' then cambiafecha:=an+'/'+di+'/'+ms;
if formato = 'DD/AAAA/MM' then cambiafecha:=di+'/'+an+'/'+ms;
if formato = 'DD/MM/AAAA' then cambiafecha:=di+'/'+ms+'/'+an;
if formato = 'MM/DD/AAAA' then cambiafecha:=ms+'/'+di+'/'+an;
end;

{Funcion que elimina de un string los caracteres que coincidan con el
caracter pasado}
Function deletechar(cadena:string;caracter:char):string;
var cad:string;
    rt:integer;
begin
cad:='';
for rt:=1 to length(cadena) do begin
  if cadena[rt] <> caracter then begin
    cad:=cad+cadena[rt];
  end;
end;
deletechar:=cad;
end;

{Funcion que llena un string con caracteres al temaño definido. Funciona igual
que llenastr pero esta llena hacia la derecha}
Function llenastr_derecha(cadena:string;tamano:integer;caracter:char):string;
var x:integer;
    cad1:string;
begin
if length(cadena)>=tamano then llenastr_derecha:=cadena
else begin
  setlength(cad1,tamano);{Definimos el tamaño del string}
  for x:=1 to tamano do begin
    if x > length(cadena) then cad1[x]:=caracter
    else cad1[x]:=cadena[x];
  end;
  llenastr_derecha:=cad1;
end;
end;

{Funcion que separa el prefijo y el dni del cuit/cuit/cuip
y guarda la informacion en 2 vectores}
Function Separa_cuim(nro_cuim:string):cuim_partes;
var sd:integer;
    parte1,parte2:string;
begin
setlength(parte1,2);setlength(parte2,8);
parte1:='';parte2:='';
if length(nro_cuim)<>13 then begin
   Separa_cuim[1]:='0';Separa_cuim[2]:='0';
end
else begin
   for sd:=1 to 2 do parte1:=parte1+nro_cuim[sd];
   for sd:=4 to 11 do parte2:=parte2+nro_cuim[sd];
   Separa_cuim[1]:=parte1;
   Separa_cuim[2]:=parte2;
end;
end;

function el_detalle(num,tipo:integer):string;
  var practicas_:Array[1..32] of string;
  var internaciones_: Array[1..39] of string;
begin
 {Declaramos los valores del Array}
 if tipo = 1 then begin
   practicas_[1]:='ORDEN';practicas_[2]:='PRESTADOR';practicas_[3]:='CATEGORIA';
   practicas_[4]:='FECHA PRESTACION';practicas_[5]:='NRO_OS';practicas_[6]:='OBRA SOCIAL';
   practicas_[7]:='CATEGORIZA?';practicas_[8]:='TIPO PRESTACION';practicas_[9]:='CODIGO';
   practicas_[10]:='MODULO';practicas_[11]:='CANTIDAD DE SERVICIOS';practicas_[12]:='HONORARIOS';
   practicas_[13]:='GASTOS';practicas_[14]:='CATEGORIZACION';practicas_[15]:='TOTAL';
   practicas_[16]:='TIPO BONO';practicas_[17]:='DETALLE BONO';practicas_[18]:='NRO BONO';
   practicas_[19]:='CANTIDAD SESIONES';practicas_[20]:='NRO DIAGNOSTICO';practicas_[21]:='DIAGNOSTICO';
   practicas_[22]:='NRO CARNET';practicas_[23]:='DNI PACIENTE';practicas_[24]:='SEXO';
   practicas_[25]:='NOMBRE PACIENTE';practicas_[26]:='DOMICILIO';practicas_[27]:='NRO LOCALIDAD';
   practicas_[28]:='LOCALIDAD';practicas_[29]:='ESTADO CIVIL';practicas_[30]:='DETALLE EST. CIVIL';
   practicas_[31]:='TELEFONO';practicas_[32]:='EDAD';
   el_detalle:=practicas_[num+1];
 end
 else begin
   internaciones_[1]:='ORDEN';internaciones_[2]:='PRESTADOR';internaciones_[3]:='CATEGORIA';
   internaciones_[4]:='FECHA INGRESO';internaciones_[5]:='NRO OS';internaciones_[6]:='OBRA SOCIAL';
   internaciones_[7]:='CATEGORIZA?';internaciones_[8]:='TIPO PRESTACION';internaciones_[9]:='CODIGO';
   internaciones_[10]:='MODULO';internaciones_[11]:='CANTIDAD SERVICIOS';internaciones_[12]:='HONORARIOS';
   internaciones_[13]:='GASTOS';internaciones_[14]:='CATEGORIZACION';internaciones_[15]:='TOTAL';
   internaciones_[16]:='TIPO BONO';internaciones_[17]:='DETALLE BONO';internaciones_[18]:='NRO BONO';
   internaciones_[19]:='NRO DIAGNOSTICO';internaciones_[20]:='DIAGNOSTICO';internaciones_[21]:='NRO CARNET';
   internaciones_[22]:='DNI PACIENTE';internaciones_[23]:='SEXO';internaciones_[24]:='NOMBRE PACIENTE';
   internaciones_[25]:='DOMICILIO';internaciones_[26]:='NRO LOCALIDAD';internaciones_[27]:='LOCALIDAD';
   internaciones_[28]:='ESTADO CIVIL';internaciones_[29]:='DETALLE EST. CIVIL';internaciones_[30]:='TELEFONO';
   internaciones_[31]:='EDAD';internaciones_[32]:='URGENCIA?';internaciones_[33]:='FECHA EGRESO';
   internaciones_[34]:='TIPO EGRESO';internaciones_[35]:='DETALLE TIPO EGRESO';internaciones_[36]:='DIAS SALA';
   internaciones_[37]:='DIAS UTI';internaciones_[38]:='DIAS REHABILITACION';internaciones_[39]:='CANTIDAD SESIONES';
   el_detalle:=internaciones_[num+1];
 end;
end;

{Fucnion que devuelve un array de string donde se encuentra el string 'cadena'
separado de acuerdo a la ubicacion de caracter de busqueda.
ej: 05/23423 devuelve 05 en [1] y 23423 en [2]}
function Separar_txt(cadena:string;caracter:char):lineas;
var px,kj:integer;
    po:string;
begin
kj:=0;po:='';
for px:=1 to length(cadena) do begin
  if cadena[px] = caracter then kj:=px;
end;
if kj = 0 then begin
  Separar_txt[1]:='00';
  Separar_txt[2]:=cadena;
end
else begin
  for px:=1 to kj do po:=po + cadena[px];
  Separar_txt[1]:=po;
  po:='';
  for px:=kj + 1 to length(cadena) do po:=po + cadena[px];
  Separar_txt[2]:=po;
end;
end;

function fecha_dif(f_desde,f_hasta:string):string;
var an,an1,ms,ms1,ds,ds1:integer;
var fromdate,todate:TDateTime;
begin
an:=mda(f_desde,1);
ms:=mda(f_desde,2);
ds:=mda(f_desde,3);
an1:=mda(f_hasta,1);
ms1:=mda(f_hasta,2);
ds1:=mda(f_hasta,3);
fromdate:=EncodeDateTime(an,ms,ds,0,0,0,0);
todate:=EncodeDateTime(an1,ms1,ds1,0,0,0,0);
fecha_dif:=floattostr(DaySpan(todate,fromdate));
end;

{Fncion que determina el vencimiento de la ultima cuota}
Function fechaCuotas(cadena:string;cuotas:integer):string;
var valfecha:string;
begin
valfecha:=DateTimetoStr(IncMonth(strtodatetime(cadena),cuotas));
fechaCuotas:='01' + strcut_midle(valfecha,3,10);
end;


{Fncion que Incremeta la Fecha en Meses}
Function MesIncremento(Fecha:string;Meses:integer):string;
begin
Result:=DateTimetoStr(IncMonth(strtodatetime(Fecha),Meses));
end;

{Fncion que Incremeta la Fecha en Dias}
Function DiaIncremento(Fecha:string;Dias:integer):string;
begin
Result:=DateTimetoStr(IncDay(strtodatetime(Fecha),Dias));
end;

{Fncion que Incremeta la Fecha en Dias}
Function AnioIncremento(Fecha:string;Anios:integer):string;
begin
Result:=DateTimetoStr(IncYear(strtodatetime(Fecha),Anios));
end;

Function CrearCuim(NroDni:integer;Sexo:string):string;
var Param:TWideStrings;
    Sistema:TSistemas;
begin
Sistema:=TSistemas.Create(nil);
Sistema.ConnectionString:=modulo2.Conexion;

Param:=TWideStrings.Create;
Param.Add(inttostr(NroDni));
Param.Add(Sexo);

Sistema.Run_CreaCUIM(Param);
Result:=Sistema.Resultado;
Param.Free;
Sistema.Free;
end;


Function CreaXML(Datos:TADODataSet):string;
var Archivo:string;
    i,r,l,Rec,mrec: Integer;
    MaxPeriodo:string;
    TD1:TADODataSet;
    TA1: TADOTable;
    CL:TClientDataSet;
    ListaTabla:ListTable;
    ConsultaSQL:widestring;
begin
if not (Datos.IsEmpty) then begin
  ConsultaSQL:='';MaxPeriodo:='0';
  SetLength(ListaTabla,Datos.RecordCount);
  mrec:=Datos.RecordCount;
  for Rec:=1 to Datos.RecordCount do begin
    Datos.RecNo:=Rec;
    if Datos.Fields[2].AsFloat > strtofloat(MaxPeriodo) then MaxPeriodo:=Datos.Fields[2].AsString;
    ConsultaSQL:=ConsultaSQL + trim(Datos.Fields[1].AsString) + ';';
    ListaTabla[Rec-1]:=trim(Datos.Fields[0].AsString);
    if SysUtils.FileExists(modulo2.path_todo + '\XML\' + trim(Datos.Fields[0].AsString) + '.xml') then
      SysUtils.DeleteFile(modulo2.path_todo + '\XML\' + trim(Datos.Fields[0].AsString) + '.xml');
  end;

  Datos.Close;
  TD1:= TADODataSet.Create(nil);
  TD1.ConnectionString:=modulo2.Conexion;
  TD1.CommandText:=ConsultaSQL;
  TD1.Open;

  r:=0;
  CL:=TClientDataSet.Create(nil);
  TA1:=TADOTable.Create(nil);
  try
    while not(TD1.EOF) and (r < mrec) do begin
      TA1.Close;
      Archivo:=modulo2.path_todo + '\XML\' + ListaTabla[r] + '.xml';
      if r=0 then TA1.Recordset:=TD1.Recordset
      else TA1.Recordset:=TD1.NextRecordset(Rec);
      TA1.Open;
      CL.FieldDefs.Clear;
      CL.Active:=False;
      for i:=0 to TA1.FieldCount -1 do begin
        with CL.FieldDefs.AddFieldDef do begin
          Name:=TA1.FieldDefList.Strings[i];
          if length(TA1.Fields[i].AsString) > 11 then begin
            DataType:=ftString;
            Size:=50;
          end
          else begin
            if TA1.Fields[i].FieldName <> 'Detalle' then begin
              try
                strtoint(TA1.Fields[i].AsString);
                DataType:=ftInteger;
              except
                DataType:=ftString;
                Size:=50;
              end;
            end
            else begin
              DataType:=ftString;
              Size:=50;
            end;
         end;
        end;
      end;
      try
        CL.CreateDataSet;
        CL.Active:=True;
        for i:=1 to TA1.RecordCount do begin
          TA1.RecNo:=i;
          CL.Append;
          for l:=0 to TA1.FieldCount-1 do begin
            CL.FieldValues[TA1.FieldDefList.Strings[l]]:=TA1.Fields[l].AsString;
          end;
          CL.Post;
          //CL.InsertRecord([TA1.Fields[0].AsString,TA1.Fields[1].AsString]);
        end;
        CL.LogChanges:=false;
        CL.SaveToFile(Archivo,dfXMLUTF8);
      except

      end;
      r:=r+1;
    end;

  finally;
    TA1.Free;
    TD1.Free;
    CL.Free;
  end;
  Result:=MaxPeriodo;
end;
end;


Function LeeXML(ArchivoXML,Filtro:string):TablaXML;
var CL:TClientDataSet;
    i,r:integer;
    TablaResultado:TablaXML;
    TB:TVarRec;
begin

if FileExists(modulo2.path_todo + '\XML\' + ArchivoXML + '.xml') then begin
  CL:=TClientDataSet.Create(nil);
  CL.Active:=false;
  CL.FileName:=modulo2.path_todo + '\XML\' + ArchivoXML + '.xml';
  CL.Active:=true;
  if not(CL.IsEmpty) then begin
    if Filtro <> '' then begin
      CL.Filtered:=false;
      CL.Filter:=Filtro;
      CL.Filtered:=true;
    end;
    setlength(TablaResultado,CL.FieldCount,CL.RecordCount);
    for i:=1 to CL.RecordCount do begin
      CL.RecNo:=i;
      for r:=0 to CL.FieldCount-1 do begin
        TablaResultado[r,i-1]:=CL.Fields[r].AsString;
      end;
      //TablaResultado[1,i-1]:=CL.Fields[1].AsString;
    end;
    Result:=TablaResultado;
  end
  else Result:=nil;
end
else Result:=nil;
end;

Function ExisteXML(Directorio:string):boolean;
var FileToFind:string;
    TablasXML:TADODataSet;
    mn:integer;
begin
Result:=true;
try
  TablasXML:=TADODataSet.Create(nil);
  TablasXML.ConnectionString:=modulo2.Conexion;
  TablasXML.CommandText:='SELECT ArchivoXML FROM TablasXML WHERE (CrearXML=1)';
  TablasXML.Open;
  for mn:=1 to TablasXML.RecordCount do begin
    TablasXML.RecNo:=mn;
    FileToFind := FileSearch(trim(TablasXML.Fields[0].AsString) + '.xml', Directorio);
    if FileToFind = '' then begin
      Result:=false;
      exit;
    end;
  end;
  TablasXML.Close;
finally
  TablasXML.Free;
end;  
end;


Function StrFill(cadena:string;longitud:Integer;relleno,posicion:string): string;
var cTemp:string;
    n, nVeces:Integer;
begin
cTemp := cadena;
nVeces := longitud - length(cTemp);
for n := 1 to nVeces do begin
  if ((posicion = 'D') or (posicion = 'd')) then
    cTemp := cTemp+relleno
  else
    cTemp := relleno+cTemp;
end;
Result := cTemp;
end;

function HexToColor(hexString: String): TColor;
var
r,g,b: Integer;
begin
if (hexString[1] = '#') AND (Length(hexString)= 8) then
begin
r:= StrToInt(Copy(hexString,2,2));
g:= StrToInt(Copy(hexString,4,2));
b:= StrToInt(Copy(hexString,6,2));
result:= RGB(r,g,b);
end;
end;

Function FechaToPeriodo(Fecha,Formato:string):string;
var ms,an,di:string;
begin
Fecha:=FechaLarga(Fecha);
an:=RightStr(Fecha,4);
ms:=MidStr(Fecha,4,2);
di:=LeftStr(Fecha,2);
if Formato = 'MMAAAADD' then Result:=ms+an+di;
if Formato = 'AAAAMMDD' then Result:=an+ms+di;
if Formato = 'AAAADDMM' then Result:=an+di+ms;
if Formato = 'DDAAAAMM' then Result:=di+an+ms;
if Formato = 'DDMMAAAA' then Result:=di+ms+an;
if Formato = 'MMDDAAAA' then Result:=ms+di+an;

if (Formato = 'AAAAMM') or (Formato = '') then Result:=an+ms;
if Formato = 'MMAAAA' then Result:=ms+an;
end;

{Fncion que determina el vencimiento de la ultima cuota}
Function FechaIncremento(Fecha:string;Meses:integer):string;
begin
Result:=DateTimetoStr(IncMonth(strtodatetime(Fecha),Meses));
end;


Function DarMaximo(tabla:string):string;
var Param:TWideStrings;
    Sistema:TSistemas;
begin
Sistema:=TSistemas.Create(nil);
Sistema.ConnectionString:=modulo2.Conexion;

Param:=TWideStrings.Create;
Param.Add(tabla);

Sistema.Run_DarMaximoNro(Param);
Result:=Sistema.Resultado;
Param.Free;
Sistema.Free;
end;

function GradosToRadianes(angulo:double):double;
begin
Result:=angulo * Pi / 180;
end;

procedure LiberarMemoria;
begin
  if Win32Platform = VER_PLATFORM_WIN32_NT then
    SetProcessWorkingSetSize(GetCurrentProcess, $FFFFFFFF, $FFFFFFFF);
end;

procedure EnviarMensaje(sUsuario, sClave, sHost, sAdjunto, sAsunto, sRemitente,
sMailRemitente, sDestinatarios, sMailDestinatarios:String; sMensaje: String);
 var SMTP: TIdSMTP;
    Mensaje: TIdMessage;


begin
   
//

end;

end.

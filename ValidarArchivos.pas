unit ValidarArchivos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StrUtils, ClaseSistemas, Buttons, JvExButtons, JvBitBtn,
  JvExDBGrids, JvDBGrid, JvExControls, JvSpecialProgress, StdCtrls,
  DCPcrypt2, DCPsha1, DCPblockciphers, DCPtwofish;

type
  TValidaArchivos = class(TForm)
    GroupBox1: TGroupBox;
    Progress: TJvSpecialProgress;
    DCP_twofish1: TDCP_twofish;
    DCP_sha11: TDCP_sha1;
    Archivo: TEdit;
    Function CompararHash(Origen,ValorHash:string):boolean;
    Function Desencriptar(Origen,Destino,Password:string):boolean;
    procedure FormActivate(Sender: TObject);

  private
    { Private declarations }

  public
    NroOpcion:byte;

  end;

var
  ValidaArchivos: TValidaArchivos;

implementation

uses Unidad, Modulo;//, AM_Afili, AM_TpoGen;

{$R *.dfm}

Function TValidaArchivos.Desencriptar(Origen,Destino,Password:string):boolean;
var
  Cipher: TDCP_cipher;         // the cipher to use
  CipherIV: array of byte;     // the initialisation vector (for chaining modes)
  Hash: TDCP_hash;             // the hash to use
  HashDigest: array of byte;   // the result of hashing the passphrase with the salt
  Salt: array[0..7] of byte;   // a random salt to help prevent precomputated attacks
  strmInput, strmOutput: TFileStream;

  function Min(a, b: integer): integer;
  begin
  if (a < b) then Result := a
  else Result := b;
  end;

begin
;

  strmInput := nil;
  strmOutput := nil;
  try
    strmInput := TFileStream.Create(Origen,fmOpenRead);
    strmOutput := TFileStream.Create(Destino,fmCreate);
//    Hash := TDCP_hash(SHA1);  TDCP_hash(Components[i].Name)
    Hash := TDCP_hash(FindComponent('DCP_sha11'));
    SetLength(HashDigest,Hash.HashSize div 8);
    strmInput.ReadBuffer(Salt[0],Sizeof(Salt));  // read the salt in from the file
    Hash.Init;
    Hash.Update(Salt[0],Sizeof(Salt));   // hash the salt
    Hash.UpdateStr(Password);  // and the passphrase
    Hash.Final(HashDigest[0]);           // store the hash in HashDigest

//    Cipher := TDCP_cipher(Twofish); TDCP_cipher(Components[i]).Algorithm,Components[i]
    Cipher := TDCP_cipher(FindComponent('DCP_twofish1'));
    if (Cipher is TDCP_blockcipher) then            // if it is a block cipher we need the IV
    begin
      SetLength(CipherIV,TDCP_blockcipher(Cipher).BlockSize div 8);
      strmInput.ReadBuffer(CipherIV[0],Length(CipherIV));       // read the initialisation vector from the file
      Cipher.Init(HashDigest[0],Min(Cipher.MaxKeySize,Hash.HashSize),CipherIV);  // initialise the cipher
      TDCP_blockcipher(Cipher).CipherMode := cmCBC;
    end
    else
    Cipher.Init(HashDigest[0],Min(Cipher.MaxKeySize,Hash.HashSize),nil);  // initialise the cipher
    Cipher.DecryptStream(strmInput,strmOutput,strmInput.Size - strmInput.Position); // decrypt!
    Cipher.Burn;
    strmInput.Free;
    strmOutput.Free;
    Result:=true;
  except
    strmInput.Free;
    strmOutput.Free;
    Result:=false;
  end;
end;

Function TValidaArchivos.CompararHash(Origen,ValorHash:string):boolean;
var t:integer;
var
  Hashes: TDCP_hash;
  HashDigest: array of byte;
  i, j, read: integer;
  s: string;
  buffer: array[0..16383] of byte;
  strmInput: TFileStream;
begin
  Hashes := nil;
  // make a list of all the hash algorithms to use
  Hashes := TDCP_hash(FindComponent('DCP_sha11'));
  TDCP_hash(FindComponent('DCP_sha11')).Init;


  strmInput := nil;
  try
    strmInput := TFileStream.Create(Origen,fmOpenRead);
    repeat
      // read into the buffer
      read := strmInput.Read(buffer,Sizeof(buffer));
      // hash the buffer with each of the selected hashes
      Hashes.Update(buffer,read);
    until read <> Sizeof(buffer);
    strmInput.Free;
    // iterate through the selected hashes
    SetLength(HashDigest,Hashes.HashSize div 8);
    Hashes.Final(HashDigest[0]);  // get the output
    s := '';
    for j := 0 to Length(HashDigest) - 1 do  // convert it into a hex string
      s := s + IntToHex(HashDigest[j],2);
    if ValorHash <> s then begin
        Result:=false;
        //Enviarlog('Error de HashFile: ', ValorHash + '/' + s);
    end
    else Result:=true;
  except
    strmInput.Free;
    Result:=false;
  end;
end;


procedure TValidaArchivos.FormActivate(Sender: TObject);
Var
    Path,Psw:string;
begin
{  Progress.Position:=1;
  Psw:=Modulo2.Desencript('Formularios,Cl1,','Formularios,Default1,'); //Password del Archivo
  Path:=trim(Archivo.text);
  Progress.Position:=50;
  if Desencriptar(Modulo2.path_todo + '\Formularios\' + Path + '.fit',Modulo2.path_todo + '\Formularios\' + Path + '.jpg',Psw) then begin
    //Comparamos el Hash File
    Psw:=Modulo2.INI1.ReadString('Formularios','HashFile1','');
    if CompararHash(Modulo2.path_todo + '\Formularios\' + Path + '.jpg',Psw) then
    Modulo2.modif:= true
    else Modulo2.modif:= False;
  end
  else Modulo2.modif:= False;
  Progress.Position:=100;   }
  ModalResult := mrCancel;
end;

end.

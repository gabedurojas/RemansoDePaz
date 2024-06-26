//  ===============================================================================
// |    THIS CODE AND INFORMATION IS PROVIDED "AS IS" WITHOUT WARRANTY OF      |
// |    ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO    |
// |    THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A         |
// |    PARTICULAR PURPOSE.                                                    |
// |    Copyright (c)2010 ADMINSYSTEM SOFTWARE LIMITED                        |
// |
// |    Project: It demonstrates how to use EASendMailObj to send email with synchronous mode
// |
// |    Author: Ivan Lui ( ivan@emailarchitect.net )
//  ===============================================================================
unit EnvioMail;

interface

uses

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EASendMailObjLib_TLB, StdCtrls, ExtCtrls, ComCtrls, jpeg,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdMessageClient, IdSMTP, see32
  ,WinTypes,WinProcs, IdMessage, IdIOHandler,
  IdIOHandlerSocket, IdSSLOpenSSL;

type
  TEmailEnvio = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    textFrom: TEdit;
    textTo: TEdit;
    textCc: TEdit;
    textSubject: TEdit;
    Label5: TLabel;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    textServer: TEdit;
    chkAuth: TCheckBox;
    Label7: TLabel;
    Label8: TLabel;
    textUser: TEdit;
    textPassword: TEdit;
    chkSSL: TCheckBox;
    textBody: TMemo;
    lstProtocol: TComboBox;
    StatusBar1: TStatusBar;
    mailMensaje: TIdMessage;
    indySMTP: TIdSMTP;
    IdSSLIOHandlerSocket1: TIdSSLIOHandlerSocket;
    GroupBox2: TGroupBox;
    sale: TButton;
    btnSend: TButton;
    procedure FormCreate(Sender: TObject);
    procedure InitCharset();
    procedure btnSendClick(Sender: TObject);
    procedure chkAuthClick(Sender: TObject);
    function ChAnsiToWide(const StrA: AnsiString): WideString;
    procedure DirectSend(oSmtp: TMail);
    procedure saleClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  CRYPT_MACHINE_KEYSET = 32;
  CRYPT_USER_KEYSET = 4096;
  CERT_SYSTEM_STORE_CURRENT_USER = 65536;
  CERT_SYSTEM_STORE_LOCAL_MACHINE = 131072;
    
var
  EmailEnvio: TEmailEnvio;
  m_arAttachments : TStringList;
  m_arCharset: array[0..27,0..1] of WideString;

implementation
uses modulo, Unidad;


{$R *.dfm}

procedure TEmailEnvio.InitCharset();
var
  i, index: integer;
begin
  index := 0;

  m_arCharset[index, 0] := 'Arabic(Windows)';
  m_arCharset[index, 1] := 'windows-1256';
  index := index + 1;

  m_arCharset[index, 0] := 'Baltic(ISO)';
  m_arCharset[index, 1] := 'iso-8859-4';
  index := index + 1;

  m_arCharset[index, 0] := 'Baltic(Windows)';
  m_arCharset[index, 1] := 'windows-1257';
  index := index + 1;

  m_arCharset[index, 0] := 'Central Euporean(ISO)';
  m_arCharset[index, 1] := 'iso-8859-2';
  index := index + 1;

  m_arCharset[index, 0] := 'Central Euporean(Windows)';
  m_arCharset[index, 1] := 'windows-1250';
  index := index + 1;

  m_arCharset[index, 0] := 'Chinese Simplified(GB18030)';
  m_arCharset[index, 1] := 'GB18030';
  index := index + 1;

  m_arCharset[index, 0] := 'Chinese Simplified(GB2312)';
  m_arCharset[index, 1] := 'gb2312';
  index := index + 1;

  m_arCharset[index, 0] := 'Chinese Simplified(HZ)';
  m_arCharset[index, 1] := 'hz-gb-2312';
  index := index + 1;

  m_arCharset[index, 0] := 'Chinese Traditional(Big5)';
  m_arCharset[index, 1] := 'big5';
  index := index + 1;

  m_arCharset[index, 0] := 'Cyrillic(ISO)';
  m_arCharset[index, 1] := 'iso-8859-5';
  index := index + 1;

  m_arCharset[index, 0] := 'Cyrillic(KOI8-R)';
  m_arCharset[index, 1] := 'koi8-r';
  index := index + 1;

  m_arCharset[index, 0] := 'Cyrillic(KOI8-U)';
  m_arCharset[index, 1] := 'koi8-u';
  index := index + 1;

  m_arCharset[index, 0] := 'Cyrillic(Windows)';
  m_arCharset[index, 1] := 'windows-1251';
  index := index + 1;

  m_arCharset[index, 0] := 'Greek(ISO)';
  m_arCharset[index, 1] := 'iso-8859-7';
  index := index + 1;

  m_arCharset[index, 0] := 'Greek(Windows)';
  m_arCharset[index, 1] := 'windows-1253';
  index := index + 1;

  m_arCharset[index, 0] := 'Hebrew(Windows)';
  m_arCharset[index, 1] := 'windows-1255';
  index := index + 1;

  m_arCharset[index, 0] := 'Japanese(JIS)';
  m_arCharset[index, 1] := 'iso-2022-jp';
  index := index + 1;

  m_arCharset[index, 0] := 'Korean';
  m_arCharset[index, 1] := 'ks_c_5601-1987';
  index := index + 1;

  m_arCharset[index, 0] := 'Korean(EUC)';
  m_arCharset[index, 1] := 'euc-kr';
  index := index + 1;

  m_arCharset[index, 0] := 'Latin 9(ISO)';
  m_arCharset[index, 1] := 'iso-8859-15';
  index := index + 1;

  m_arCharset[index, 0] := 'Thai(Windows)';
  m_arCharset[index, 1] := 'windows-874';
  index := index + 1;

  m_arCharset[index, 0] := 'Turkish(ISO)';
  m_arCharset[index, 1] := 'iso-8859-9';
  index := index + 1;

  m_arCharset[index, 0] := 'Turkish(Windows)';
  m_arCharset[index, 1] := 'windows-1254';
  index := index + 1;

  m_arCharset[index, 0] := 'Unicode(UTF-7)';
  m_arCharset[index, 1] := 'utf-7';
  index := index + 1;

  m_arCharset[index, 0] := 'Unicode(UTF-8)';
  m_arCharset[index, 1] := 'utf-8';
  index := index + 1;

  m_arCharset[index, 0] := 'Vietnames(Windows)';
  m_arCharset[index, 1] := 'windows-1258';
  index := index + 1;

  m_arCharset[index, 0] := 'Western European(ISO)';
  m_arCharset[index, 1] := 'iso-8859-1';
  index := index + 1;

  m_arCharset[index, 0] := 'Western European(Windows)';
  m_arCharset[index, 1] := 'windows-1252';


  for i:= 0 to 27 do
  begin
  //  lstCharset.AddItem(m_arCharset[i,0], nil);
  end;
  // Set default encoding to utf-8, it supports all languages.
 // lstCharset.ItemIndex := 24;

  lstProtocol.AddItem('SMTP Protocol - Recommended', nil);
  lstProtocol.AddItem('Exchange Web Service - 2007/2010', nil);
  lstProtocol.AddItem('Exchange WebDav - 2000/2003', nil);
  lstProtocol.ItemIndex := 0;

end;

procedure TEmailEnvio.FormCreate(Sender: TObject);
begin
  m_arAttachments := TStringList.Create();
  InitCharset();
end;

procedure TEmailEnvio.btnSendClick(Sender: TObject);
begin
 if trim(textto.Text)='' then begin
   showmessage('ERROR.. Imposible enviar le Mail por falta de Destinatario');
   textto.SetFocus;
 end
 else begin

// Servidor SMTP: smtp.gmail.com
//Usuario SMTP: Tu usuario de Gmail completo (email), por ejemplo tuemail@gmail.com
//Contrase�a SMTP: Tu contrase�a de Gmail.
//Puerto SMTP: 587
//TLS/SSL: Requerido.

   mailMensaje.Clear;
   mailMensaje.From.Address := 'gabedurojasg@gmail.com';
   mailMensaje.Subject := trim(textsubject.text); //'Asunto';
   mailMensaje.Body.SetText(textbody.Lines.GetText);
   mailMensaje.From.Name := 'Municipalidad de Formosa';
   mailMensaje.Recipients.EMailAddresses := trim(textto.Text);//'gabedurojas@hotmail.com';
   indySMTP.Host := 'smtp.gmail.com';
   indySMTP.Username := 'gabedurojasg@gmail.com';
   ///textfrom.Text: =mailMensaje.From.Address ;
   indySMTP.Password := 'santiago1136';
   indySMTP.Port := 587;
   indySMTP.AuthenticationType := atLogin;
   indySMTP.IOHandler := IdSSLIOHandlerSocket1;
   IdSSLIOHandlerSocket1.SSLOptions.Method := sslvSSLv23;
   IdSSLIOHandlerSocket1.SSLOptions.Mode := sslmUnassigned;
   btnsend.Enabled:=false;
   try
       indySMTP.Connect;
     //  try
       indySMTP.Send(mailMensaje);
     //finally
       showmessage('El mensaje se envi� correctamente');
       btnsend.Enabled:=false;
     //end;
   except
       showmessage('Se produjo un fallo durante el env�o del mensaje');
       btnsend.Enabled:=true;
   end;
   if  indySMTP.Connected then
       indySMTP.Disconnect;
 end;
end;

procedure TEmailEnvio.DirectSend(oSmtp: TMail);
var
  Rcpts: OleVariant;
  i, RcptBound: integer;
  RcptAddr: WideString;
begin
  Rcpts := oSmtp.Recipients;
  RcptBound := VarArrayHighBound( Rcpts, 1 );
  for i := 0 to RcptBound do
  begin
    RcptAddr := VarArrayGet( Rcpts, i );
    oSmtp.ClearRecipient();
    oSmtp.AddRecipientEx( RcptAddr, 0 );
    ShowMessage( 'Start to send email to ' + RcptAddr );
    if oSmtp.SendMail() = 0 then
      ShowMessage( 'Message delivered to ' +  RcptAddr + ' successfully!')
    else
      ShowMessage( 'Failed to deliver to ' + RcptAddr + ': ' + oSmtp.GetLastErrDescription());
  end;
end;

procedure TEmailEnvio.chkAuthClick(Sender: TObject);
begin
  textUser.Enabled := chkAuth.Checked;
  textPassword.Enabled := chkAuth.Checked;

  if( chkAuth.Checked ) then
  begin
    textUser.Color := clWindow;
    textPassword.Color := clWindow;
  end
  else
  begin
    textUser.Color := cl3DLight;
    textPassword.Color := cl3DLight;
  end;
end;

// before delphi doesn't support unicode very well in VCL, so
// we have to convert the ansistring to unicode by current default codepage.
function TEmailEnvio.ChAnsiToWide(const StrA: AnsiString): WideString;
var
  nLen: integer;
begin
  Result := StrA;
  if Result <> '' then
  begin
    // convert ansi string to widestring (unicode) by current system codepage
    nLen := MultiByteToWideChar(GetACP(), 1, PAnsiChar(@StrA[1]), -1, nil, 0);
    SetLength(Result, nLen - 1);
    if nLen > 1 then
      MultiByteToWideChar(GetACP(), 1, PAnsiChar(@StrA[1]), -1, PWideChar(@Result[1]), nLen - 1);
  end;
end;

procedure TEmailEnvio.saleClick(Sender: TObject);
begin
 close;
end;

end.

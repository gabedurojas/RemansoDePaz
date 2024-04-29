object EmailEnvio: TEmailEnvio
  Left = 315
  Top = 152
  Width = 661
  Height = 413
  Caption = 'Formulario de Envio de Email'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 46
    Top = 14
    Width = 18
    Height = 13
    Caption = 'DE:'
  end
  object Label2: TLabel
    Left = 34
    Top = 58
    Width = 32
    Height = 13
    Caption = 'PARA:'
  end
  object Label3: TLabel
    Left = 50
    Top = 81
    Width = 13
    Height = 13
    Caption = 'Cc'
    Visible = False
  end
  object Label4: TLabel
    Left = 18
    Top = 107
    Width = 45
    Height = 13
    Caption = 'ASUNTO'
  end
  object Label5: TLabel
    Left = 74
    Top = 33
    Width = 241
    Height = 13
    Caption = 'Si tiene varios Email por favor separar con comas(,)'
  end
  object textFrom: TEdit
    Left = 71
    Top = 8
    Width = 281
    Height = 21
    Enabled = False
    TabOrder = 0
    Text = 'gabedurojasg@gmail.com'
  end
  object textTo: TEdit
    Left = 71
    Top = 50
    Width = 281
    Height = 21
    TabOrder = 1
  end
  object textCc: TEdit
    Left = 71
    Top = 74
    Width = 281
    Height = 21
    TabOrder = 2
    Visible = False
  end
  object textSubject: TEdit
    Left = 71
    Top = 100
    Width = 281
    Height = 21
    TabOrder = 3
  end
  object GroupBox1: TGroupBox
    Left = 368
    Top = 0
    Width = 273
    Height = 177
    Enabled = False
    TabOrder = 4
    Visible = False
    object Label6: TLabel
      Left = 9
      Top = 17
      Width = 31
      Height = 13
      Caption = 'Server'
    end
    object Label7: TLabel
      Left = 9
      Top = 64
      Width = 22
      Height = 13
      Caption = 'User'
    end
    object Label8: TLabel
      Left = 9
      Top = 89
      Width = 46
      Height = 13
      Caption = 'Password'
    end
    object textServer: TEdit
      Left = 72
      Top = 14
      Width = 193
      Height = 21
      TabOrder = 0
    end
    object chkAuth: TCheckBox
      Left = 9
      Top = 40
      Width = 249
      Height = 17
      Caption = 'My server requires user authentication'
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = chkAuthClick
    end
    object textUser: TEdit
      Left = 72
      Top = 59
      Width = 193
      Height = 21
      Color = cl3DLight
      Enabled = False
      TabOrder = 2
    end
    object textPassword: TEdit
      Left = 72
      Top = 86
      Width = 193
      Height = 21
      Color = cl3DLight
      Enabled = False
      PasswordChar = '*'
      TabOrder = 3
    end
    object chkSSL: TCheckBox
      Left = 9
      Top = 112
      Width = 248
      Height = 25
      Caption = 'My server requires secure connection (SSL)'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object lstProtocol: TComboBox
      Left = 8
      Top = 144
      Width = 257
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 5
    end
  end
  object textBody: TMemo
    Left = 0
    Top = 130
    Width = 645
    Height = 178
    Align = alBottom
    Lines.Strings = (
      'textBody')
    ScrollBars = ssVertical
    TabOrder = 5
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 355
    Width = 645
    Height = 19
    Panels = <
      item
        Width = 300
      end
      item
        Width = 50
      end>
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 308
    Width = 645
    Height = 47
    Align = alBottom
    TabOrder = 7
    object sale: TButton
      Left = 391
      Top = 13
      Width = 83
      Height = 29
      Caption = 'SALIR'
      TabOrder = 0
      OnClick = saleClick
    end
    object btnSend: TButton
      Left = 487
      Top = 13
      Width = 114
      Height = 29
      Caption = 'Enviar Mail'
      TabOrder = 1
      OnClick = btnSendClick
    end
  end
  object mailMensaje: TIdMessage
    AttachmentEncoding = 'MIME'
    BccList = <>
    CCList = <>
    Encoding = meMIME
    Recipients = <>
    ReplyTo = <>
    Left = 492
    Top = 136
  end
  object indySMTP: TIdSMTP
    IOHandler = IdSSLIOHandlerSocket1
    MaxLineAction = maException
    ReadTimeout = 0
    Port = 25
    AuthenticationType = atNone
    Left = 426
    Top = 136
  end
  object IdSSLIOHandlerSocket1: TIdSSLIOHandlerSocket
    SSLOptions.Method = sslvSSLv2
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 460
    Top = 136
  end
end

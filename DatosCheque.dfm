object ChequeDato: TChequeDato
  Left = 339
  Top = 247
  Width = 502
  Height = 129
  BorderIcons = [biSystemMenu]
  Caption = 'Datos Cheques'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox9: TGroupBox
    Left = 0
    Top = 0
    Width = 486
    Height = 90
    Align = alClient
    Caption = 'Datos del Cheque'
    TabOrder = 0
    object LB1: TLabel
      Left = 17
      Top = 24
      Width = 55
      Height = 13
      Caption = 'N'#176' Cheque:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LB3: TLabel
      Left = 107
      Top = 16
      Width = 9
      Height = 25
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LB9: TLabel
      Left = 32
      Top = 50
      Width = 39
      Height = 13
      Caption = 'Entidad:'
    end
    object E2: TEdit
      Left = 120
      Top = 17
      Width = 86
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 12
      ParentFont = False
      TabOrder = 0
      Text = '000000000000'
      OnKeyPress = E2KeyPress
    end
    object banco: TComboBox
      Left = 76
      Top = 45
      Width = 269
      Height = 21
      CharCase = ecUpperCase
      ItemHeight = 13
      TabOrder = 1
      OnExit = bancoExit
      OnKeyPress = bancoKeyPress
    end
    object Button1: TButton
      Left = 368
      Top = 38
      Width = 83
      Height = 29
      Caption = 'ACEPTAR'
      TabOrder = 2
      OnClick = Button1Click
    end
    object E1: TEdit
      Left = 78
      Top = 17
      Width = 25
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 1
      TabOrder = 3
      Text = 'A'
      OnKeyPress = E1KeyPress
    end
  end
end

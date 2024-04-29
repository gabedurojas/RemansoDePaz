object Bus_Aniv: TBus_Aniv
  Left = 478
  Top = 433
  AutoScroll = False
  BorderIcons = []
  Caption = 'Selecci'#243'n de Tipos de Aniversarios'
  ClientHeight = 76
  ClientWidth = 312
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 78
    Top = 6
    Width = 107
    Height = 13
    Caption = 'Lista de Opciones:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 98
    Top = 44
    Width = 75
    Height = 25
    Caption = 'Confirma'
    TabOrder = 0
    OnClick = Button1Click
  end
  object OS: TComboBox
    Left = 25
    Top = 20
    Width = 250
    Height = 21
    CharCase = ecUpperCase
    ItemHeight = 13
    TabOrder = 1
    Text = 'FECHA DE FALLECIMIENTO'
    OnExit = OSExit
    OnKeyPress = OSKeyPress
    Items.Strings = (
      'FECHA DE FALLECIMIENTO'
      'FECHA DE NACIMIENTO')
  end
end

object BUSCA_COD: TBUSCA_COD
  Left = 573
  Top = 403
  AutoScroll = False
  BorderIcons = []
  Caption = 'Selecci'#243'n del Movimientos'
  ClientHeight = 76
  ClientWidth = 283
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 46
    Top = 4
    Width = 191
    Height = 13
    Caption = 'Lista de Movimientos Habilitados:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 104
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Confirma'
    TabOrder = 0
    OnClick = Button1Click
  end
  object OS: TComboBox
    Left = 3
    Top = 20
    Width = 276
    Height = 21
    CharCase = ecUpperCase
    ItemHeight = 13
    TabOrder = 1
    OnExit = OSExit
    OnKeyPress = OSKeyPress
  end
end

object SelGestor: TSelGestor
  Left = 413
  Top = 333
  Width = 534
  Height = 113
  Caption = 'Seleccion de Gestor'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  DesignSize = (
    518
    74)
  PixelsPerInch = 96
  TextHeight = 13
  object Label19: TLabel
    Left = 13
    Top = 9
    Width = 46
    Height = 13
    Caption = 'Cobrador:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 368
    Top = 34
    Width = 9
    Height = 13
    Caption = '...'
  end
  object COBRADOR: TComboBox
    Left = 15
    Top = 29
    Width = 347
    Height = 21
    CharCase = ecUpperCase
    ItemHeight = 13
    TabOrder = 0
    OnExit = COBRADORExit
    OnKeyPress = COBRADORKeyPress
  end
  object sale: TJvBitBtn
    Left = 388
    Top = 18
    Width = 122
    Height = 35
    Anchors = [akTop, akRight]
    Caption = 'Seleccionar'#13#10'Cobrador'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = saleClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333FF3333333333333003333333333333F77F33333333333009033
      333333333F7737F333333333009990333333333F773337FFFFFF330099999000
      00003F773333377777770099999999999990773FF33333FFFFF7330099999000
      000033773FF33777777733330099903333333333773FF7F33333333333009033
      33333333337737F3333333333333003333333333333377333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -12
    HotTrackFont.Name = 'Arial'
    HotTrackFont.Style = []
  end
end

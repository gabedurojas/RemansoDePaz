object SplashConNro: TSplashConNro
  Left = 456
  Top = 336
  Width = 471
  Height = 119
  BorderIcons = []
  Caption = 'Proceso Automatico'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 8
    Top = 13
    Width = 85
    Height = 16
    Caption = 'Procesando'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 96
    Top = 9
    Width = 6
    Height = 20
    Caption = '.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 154
    Top = 13
    Width = 197
    Height = 16
    Caption = ' registros por favor espere...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 42
    Width = 455
    Height = 39
    Align = alBottom
    BorderWidth = 1
    TabOrder = 0
  end
end

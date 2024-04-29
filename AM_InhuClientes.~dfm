object AM_InhumadoCli: TAM_InhumadoCli
  Left = 277
  Top = 263
  AutoScroll = False
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Altas de Inhumados como Clientes'
  ClientHeight = 247
  ClientWidth = 785
  Color = 14801370
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Barra1: TStatusBar
    Left = 0
    Top = 228
    Width = 785
    Height = 19
    Panels = <
      item
        Width = 300
      end
      item
        Width = 50
      end>
  end
  object PC1: TPageControl
    Left = 0
    Top = 33
    Width = 785
    Height = 195
    ActivePage = TabSheet4
    Align = alClient
    TabOrder = 1
    object TabSheet4: TTabSheet
      Caption = 'Datos Personales'
      ImageIndex = 1
      object Label15: TLabel
        Left = 36
        Top = 3
        Width = 45
        Height = 13
        Caption = 'N'#186'  CUIF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 41
        Top = 30
        Width = 40
        Height = 13
        Caption = 'Nombre:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 29
        Top = 55
        Width = 51
        Height = 13
        Caption = 'Tpo. Doc.:'
      end
      object Label11: TLabel
        Left = 54
        Top = 84
        Width = 27
        Height = 13
        Caption = 'Sexo:'
      end
      object Label13: TLabel
        Left = 171
        Top = 55
        Width = 37
        Height = 13
        Caption = 'N'#176' DNI:'
      end
      object Label6: TLabel
        Left = 338
        Top = 84
        Width = 59
        Height = 13
        Caption = 'Fecha Nac.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object CUIF: TEdit
        Left = 84
        Top = 0
        Width = 77
        Height = 21
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Text = '00000000000'
      end
      object APEYNOM: TEdit
        Left = 84
        Top = 26
        Width = 380
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 1
        OnChange = TPODOCChange
        OnExit = APEYNOMExit
        OnKeyPress = APEYNOMKeyPress
      end
      object TPODOC: TComboBox
        Left = 84
        Top = 52
        Width = 60
        Height = 21
        CharCase = ecUpperCase
        ItemHeight = 13
        TabOrder = 2
        OnChange = TPODOCChange
        OnExit = TPODOCExit
        OnKeyPress = TPODOCKeyPress
      end
      object SEXO: TComboBox
        Left = 84
        Top = 80
        Width = 241
        Height = 21
        CharCase = ecUpperCase
        ItemHeight = 13
        TabOrder = 4
        OnChange = TPODOCChange
        OnExit = SEXOExit
        OnKeyPress = SEXOKeyPress
      end
      object DNI: TEdit
        Left = 212
        Top = 52
        Width = 80
        Height = 21
        MaxLength = 9
        TabOrder = 3
        Text = '00000000 '
        OnChange = TPODOCChange
        OnExit = DNIExit
        OnKeyPress = DNIKeyPress
      end
      object FECNAC: TMaskEdit
        Left = 400
        Top = 80
        Width = 65
        Height = 21
        EditMask = '!99/99/9999;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 5
        Text = '  /  /    '
        OnChange = TPODOCChange
        OnExit = FECNACExit
        OnKeyPress = FECNACKeyPress
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 127
        Width = 777
        Height = 40
        Align = alBottom
        Enabled = False
        TabOrder = 6
        object C3: TCheckBox
          Left = 2
          Top = 11
          Width = 113
          Height = 17
          Caption = 'Datos Personales'
          TabOrder = 0
        end
        object C6: TCheckBox
          Left = 120
          Top = 11
          Width = 129
          Height = 17
          Caption = 'Modificaci'#243'n de Datos'
          TabOrder = 1
        end
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 785
    Height = 33
    ButtonHeight = 26
    Caption = 'ToolBar1'
    Color = clGradientInactiveCaption
    EdgeBorders = [ebLeft, ebTop, ebBottom]
    EdgeInner = esLowered
    ParentColor = False
    TabOrder = 2
    DesignSize = (
      783
      29)
    object ToolButton4: TToolButton
      Left = 0
      Top = 2
      Width = 563
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object BORRA: TJvBitBtn
      Left = 563
      Top = 2
      Width = 62
      Height = 26
      Anchors = [akTop, akRight]
      Caption = 'BORRA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BORRAClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555557777F777555F55500000000555055557777777755F75555005500055055
        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
        5555577FF77577FF555555005050110555555577F757777FF555555505099910
        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
        3055577F75F77777575F55005055090B030555775755777575755555555550B0
        B03055555F555757575755550555550B0B335555755555757555555555555550
        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
        50BB555555555555575F555555555555550B5555555555555575}
      NumGlyphs = 2
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -8
      HotTrackFont.Name = 'Arial'
      HotTrackFont.Style = []
    end
    object ToolButton2: TToolButton
      Left = 625
      Top = 2
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object GUARDA: TJvBitBtn
      Left = 633
      Top = 2
      Width = 76
      Height = 26
      Anchors = [akTop, akRight]
      Caption = 'GUARDAR'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = GUARDAClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
        00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
        00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
        00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
        0003737FFFFFFFFF7F7330099999999900333777777777777733}
      NumGlyphs = 2
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -8
      HotTrackFont.Name = 'Arial'
      HotTrackFont.Style = []
    end
    object ToolButton3: TToolButton
      Left = 709
      Top = 2
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object SALIR: TJvBitBtn
      Left = 717
      Top = 2
      Width = 62
      Height = 26
      Anchors = [akTop, akRight]
      Caption = 'Salir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = SALIRClick
      Glyph.Data = {
        42010000424D4201000000000000760000002800000013000000110000000100
        040000000000CC0000000000000000000000100000001000000000000000A584
        0000FFDE5200007B7B0000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00111111111111
        1111111000001111111111111111111000001111105111111111111000001111
        1005111111111110000011111040511111111110000011111104051111111110
        0000111111034051111111100000111111103405111111100000111555503440
        5111111000001110000003440511111000001111034444333051111000001111
        1034440000011110000011111103444051111110000011111110344405111110
        0000111111110333305111100000111111111000000511100000111111111111
        111111100000}
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -8
      HotTrackFont.Name = 'Arial'
      HotTrackFont.Style = []
    end
  end
  object DataSource1: TDataSource
    Left = 378
    Top = 2
  end
  object BusDir: TOpenDialog
    Filter = '*.JPG|*.jpg|Todos los Archivos|*.*'
    Left = 410
    Top = 2
  end
end

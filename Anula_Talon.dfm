object Anula_Talonario: TAnula_Talonario
  Left = 318
  Top = 79
  AutoScroll = False
  Caption = 'Anulacion de Talonarios'
  ClientHeight = 528
  ClientWidth = 785
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
  DesignSize = (
    785
    528)
  PixelsPerInch = 96
  TextHeight = 13
  object todos: TRichEdit
    Left = 29
    Top = 214
    Width = 640
    Height = 49
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -4
    Font.Name = 'Arial'
    Font.Style = []
    Lines.Strings = (
      'R5')
    ParentFont = False
    TabOrder = 3
  end
  object Barra1: TStatusBar
    Left = 0
    Top = 509
    Width = 785
    Height = 19
    Panels = <
      item
        Width = 500
      end>
  end
  object PC1: TPageControl
    Left = 0
    Top = 37
    Width = 785
    Height = 472
    ActivePage = TabSheet4
    Align = alClient
    TabOrder = 0
    OnChange = PC1Change
    object TabSheet4: TTabSheet
      Caption = 'Datos de la Entrega'
      ImageIndex = 1
      object Grupo2: TGroupBox
        Left = 0
        Top = 0
        Width = 777
        Height = 444
        Align = alClient
        Caption = 'Registro de Talonarios'
        TabOrder = 0
        object Label2: TLabel
          Left = 370
          Top = 15
          Width = 80
          Height = 13
          Caption = 'Cant. Talonarios:'
        end
        object Label22: TLabel
          Left = 478
          Top = 16
          Width = 99
          Height = 13
          Caption = 'Cant. Comprobantes:'
        end
        object Label3: TLabel
          Left = 640
          Top = 30
          Width = 33
          Height = 13
          Caption = 'Fecha:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Agrega2: TJvBitBtn
          Left = 13
          Top = 24
          Width = 63
          Height = 21
          Hint = 'Agrega Nueva Fila'
          Caption = 'Agregar'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object Borra2: TJvBitBtn
          Left = 120
          Top = 16
          Width = 103
          Height = 33
          Hint = 'Borra la Fila Seleccionada'
          Caption = '      Borrar'#13#10'Seleccionado'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = Borra2Click
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object TOT1: TEdit
          Left = 395
          Top = 30
          Width = 35
          Height = 21
          CharCase = ecUpperCase
          Color = clGradientActiveCaption
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 4
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
          Text = '0000'
        end
        object TOT2: TEdit
          Left = 505
          Top = 30
          Width = 45
          Height = 21
          CharCase = ecUpperCase
          Color = clGradientActiveCaption
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 6
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
          Text = '000000'
        end
        object PC2: TPageControl
          Left = 2
          Top = 56
          Width = 773
          Height = 386
          ActivePage = TabSheet2
          Align = alBottom
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 3
          object TabSheet2: TTabSheet
            Caption = 'Talonarios'
            object grilla2: TJvStringGrid
              Left = 0
              Top = 0
              Width = 765
              Height = 358
              Align = alClient
              ColCount = 9
              DefaultRowHeight = 17
              RowCount = 2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
              ParentFont = False
              TabOrder = 0
              OnClick = grilla2Click
              Alignment = taLeftJustify
              FixedFont.Charset = DEFAULT_CHARSET
              FixedFont.Color = clWindowText
              FixedFont.Height = -11
              FixedFont.Name = 'MS Sans Serif'
              FixedFont.Style = []
              ColWidths = (
                54
                83
                98
                118
                95
                113
                94
                73
                75)
            end
          end
          object TabSheet5: TTabSheet
            Caption = 'Comprobantes / Hojas'
            ImageIndex = 1
            object grilla3: TJvStringGrid
              Left = 0
              Top = 0
              Width = 765
              Height = 358
              Align = alClient
              ColCount = 7
              DefaultRowHeight = 17
              RowCount = 2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
              ParentFont = False
              TabOrder = 0
              Alignment = taLeftJustify
              FixedFont.Charset = DEFAULT_CHARSET
              FixedFont.Color = clWindowText
              FixedFont.Height = -11
              FixedFont.Name = 'MS Sans Serif'
              FixedFont.Style = []
              ColWidths = (
                54
                64
                83
                84
                302
                2
                2)
            end
          end
        end
        object BuscarTalon: TJvBitBtn
          Left = 6
          Top = 16
          Width = 103
          Height = 33
          Caption = 'Agregar Talonarios '#13#10'    Existentes'
          TabOrder = 0
          OnClick = BuscarTalonClick
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object FECHA: TMaskEdit
          Left = 675
          Top = 23
          Width = 65
          Height = 21
          Enabled = False
          EditMask = '!99/99/9999;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 6
          Text = '  /  /    '
        end
      end
    end
  end
  object Proceso: TJvProgressBar
    Left = 588
    Top = 511
    Width = 196
    Height = 17
    Anchors = [akRight, akBottom]
    TabOrder = 1
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 785
    Height = 37
    ButtonHeight = 29
    Caption = 'ToolBar1'
    Color = clGradientInactiveCaption
    EdgeBorders = [ebLeft, ebTop, ebBottom]
    EdgeInner = esLowered
    ParentColor = False
    TabOrder = 4
    DesignSize = (
      783
      33)
    object ToolButton4: TToolButton
      Left = 0
      Top = 2
      Width = 497
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object ToolButton2: TToolButton
      Left = 497
      Top = 2
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object ToolButton5: TToolButton
      Left = 505
      Top = 2
      Width = 8
      Caption = 'ToolButton5'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object GUARDA: TJvBitBtn
      Left = 513
      Top = 2
      Width = 74
      Height = 29
      Anchors = [akTop, akRight]
      Caption = 'ANULAR '
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
    object ToolButton1: TToolButton
      Left = 587
      Top = 2
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object Limpiar: TJvBitBtn
      Left = 595
      Top = 2
      Width = 62
      Height = 29
      Anchors = [akTop, akRight]
      Caption = 'Limpiar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = LimpiarClick
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
    object ToolButton3: TToolButton
      Left = 657
      Top = 2
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object JvBitBtn1: TJvBitBtn
      Left = 665
      Top = 2
      Width = 62
      Height = 29
      Anchors = [akTop, akRight]
      Caption = 'Salir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = JvBitBtn1Click
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
    Left = 4
    Top = 2
  end
  object DataSource2: TDataSource
    Left = 38
    Top = 2
  end
  object DataSource3: TDataSource
    Left = 72
    Top = 2
  end
  object RvS: TRvSystem
    TitleSetup = 'Conf. Impres.'
    TitleStatus = 'Estado del Reporte'
    TitlePreview = 'Imagen Previa'
    SystemSetups = [ssAllowSetup, ssAllowCopies, ssAllowCollate, ssAllowDuplex, ssAllowDestPreview, ssAllowDestPrinter, ssAllowDestFile, ssAllowPreviewSetup]
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.MarginPercent = 10.000000000000000000
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPreview.ZoomInc = 50
    SystemPrinter.Orientation = poDefault
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.Units = unMM
    SystemPrinter.UnitsFactor = 25.400000000000000000
    Left = 116
    Top = 4
  end
end

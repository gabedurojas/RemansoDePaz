object ImpTitxAcciones: TImpTitxAcciones
  Left = 196
  Top = 127
  AutoScroll = False
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Impresion de Resumenes por Gestores'
  ClientHeight = 558
  ClientWidth = 848
  Color = 14801370
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 48
    Top = 222
    Width = 37
    Height = 13
    Caption = 'Caract.:'
  end
  object Barra1: TStatusBar
    Left = 0
    Top = 539
    Width = 848
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
    Width = 848
    Height = 506
    ActivePage = TabSheet3
    Align = alClient
    TabOrder = 1
    object TabSheet3: TTabSheet
      Caption = 'Datos de Busqueda'
      object JvgGroupBox5: TJvgGroupBox
        Left = 0
        Top = 0
        Width = 840
        Height = 478
        Align = alClient
        Caption = 'Listado de Titulares por Acciones'
        TabOrder = 0
        Border.Inner = bvSpace
        Border.Outer = bvNone
        Border.Bold = False
        CaptionAlignment = fcaLeft
        CaptionBorder.Inner = bvSpace
        CaptionBorder.Outer = bvNone
        CaptionBorder.Bold = False
        CaptionGradient.Active = False
        CaptionGradient.Orientation = fgdHorizontal
        CaptionShift.X = 8
        CaptionShift.Y = 0
        Colors.Text = clHighlightText
        Colors.TextActive = clHighlightText
        Colors.Caption = clBtnShadow
        Colors.CaptionActive = clPurple
        Colors.Client = clBtnFace
        Colors.ClientActive = clBtnFace
        Gradient.FromColor = clBlack
        Gradient.ToColor = clGray
        Gradient.Active = False
        Gradient.Orientation = fgdHorizontal
        Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
        DesignSize = (
          840
          478)
        FullHeight = 0
        object Image1: TImage
          Left = 570
          Top = 92
          Width = 105
          Height = 105
        end
        object Image2: TImage
          Left = 570
          Top = 210
          Width = 105
          Height = 105
        end
        object Label1: TLabel
          Left = 8
          Top = 26
          Width = 13
          Height = 16
          Caption = '...'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 10
          Top = 47
          Width = 80
          Height = 13
          Caption = 'Cobrador a Filtrar'
        end
        object RE5: TRichEdit
          Left = 698
          Top = 107
          Width = 129
          Height = 39
          Lines.Strings = (
            'RE5')
          TabOrder = 4
          Visible = False
        end
        object DBGrid2: TDBGrid
          Left = 4
          Top = 92
          Width = 832
          Height = 377
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataSource = DataSource2
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
        object imprime: TJvBitBtn
          Left = 690
          Top = 12
          Width = 109
          Height = 42
          Caption = 'EXPORTAR'#13#10'a EXCEL'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = ImprimeClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333330B7FFF
            FFB0333333777F3333773333330B7FFFFFB0333333777F3333773333330B7FFF
            FFB0333333777F3333773333330B7FFFFFB03FFFFF777FFFFF77000000000077
            007077777777777777770FFFFFFFF00077B07F33333337FFFF770FFFFFFFF000
            7BB07F3FF3FFF77FF7770F00F000F00090077F77377737777F770FFFFFFFF039
            99337F3FFFF3F7F777FF0F0000F0F09999937F7777373777777F0FFFFFFFF999
            99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
            99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
            93337FFFF7737777733300000033333333337777773333333333}
          NumGlyphs = 2
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Arial'
          HotTrackFont.Style = []
        end
        object busca: TJvBitBtn
          Left = 588
          Top = 12
          Width = 97
          Height = 42
          Caption = 'IMPRIMIR'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = buscaClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
            0003377777777777777308888888888888807F33333333333337088888888888
            88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
            8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
            8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
            03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
            03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
            33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
            33333337FFFF7733333333300000033333333337777773333333}
          NumGlyphs = 2
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Arial'
          HotTrackFont.Style = []
        end
        object JvBitBtn1: TJvBitBtn
          Left = 456
          Top = 12
          Width = 123
          Height = 42
          Caption = 'PROCESAR'#13#10'TITULARES'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          Visible = False
          OnClick = JvBitBtn1Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
            0000377777777777777703030303030303037F7F7F7F7F7F7F7F000000000000
            00007777777777777777933393303933337073F37F37F73F3377393393303393
            379037FF7F37F37FF777379793303379793037777337F3777737339933303339
            93303377F3F7F3F77F3733993930393993303377F737F7377FF7399993303399
            999037777337F377777793993330333393307377FF37F3337FF7333993303333
            993033377F37F33377F7333993303333993033377337F3337737333333303333
            33303FFFFFF7FFFFFFF700000000000000007777777777777777030303030303
            03037F7F7F7F7F7F7F7F00000000000000007777777777777777}
          NumGlyphs = 2
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Arial'
          HotTrackFont.Style = []
        end
        object COBRADOR: TComboBox
          Left = 9
          Top = 64
          Width = 302
          Height = 21
          CharCase = ecUpperCase
          ItemHeight = 13
          TabOrder = 5
          Text = 'COBRADOR'
          OnExit = COBRADORExit
          OnKeyPress = COBRADORKeyPress
        end
        object BitBtn1: TBitBtn
          Left = 316
          Top = 60
          Width = 89
          Height = 25
          Caption = 'FILTRAR'
          TabOrder = 6
          OnClick = BitBtn1Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            555555555555555555555555555555555555555555FF55555555555559055555
            55555555577FF5555555555599905555555555557777F5555555555599905555
            555555557777FF5555555559999905555555555777777F555555559999990555
            5555557777777FF5555557990599905555555777757777F55555790555599055
            55557775555777FF5555555555599905555555555557777F5555555555559905
            555555555555777FF5555555555559905555555555555777FF55555555555579
            05555555555555777FF5555555555557905555555555555777FF555555555555
            5990555555555555577755555555555555555555555555555555}
          NumGlyphs = 2
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Cantidad de Acciones Agrupadas'
      ImageIndex = 1
      object JvBitBtn2: TJvBitBtn
        Left = 456
        Top = 12
        Width = 123
        Height = 42
        Caption = 'PROCESAR'#13#10'TITULARES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Visible = False
        OnClick = JvBitBtn2Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          0000377777777777777703030303030303037F7F7F7F7F7F7F7F000000000000
          00007777777777777777933393303933337073F37F37F73F3377393393303393
          379037FF7F37F37FF777379793303379793037777337F3777737339933303339
          93303377F3F7F3F77F3733993930393993303377F737F7377FF7399993303399
          999037777337F377777793993330333393307377FF37F3337FF7333993303333
          993033377F37F33377F7333993303333993033377337F3337737333333303333
          33303FFFFFF7FFFFFFF700000000000000007777777777777777030303030303
          03037F7F7F7F7F7F7F7F00000000000000007777777777777777}
        NumGlyphs = 2
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Arial'
        HotTrackFont.Style = []
      end
      object ImprimeAgrup: TJvBitBtn
        Left = 588
        Top = 12
        Width = 97
        Height = 42
        Caption = 'IMPRIMIR'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = ImprimeAgrupClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          0003377777777777777308888888888888807F33333333333337088888888888
          88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
          8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
          8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
          03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
          03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
          33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
          33333337FFFF7733333333300000033333333337777773333333}
        NumGlyphs = 2
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Arial'
        HotTrackFont.Style = []
      end
      object ExportaAgrup: TJvBitBtn
        Left = 690
        Top = 12
        Width = 109
        Height = 42
        Caption = 'EXPORTAR'#13#10'a EXCEL'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Visible = False
        OnClick = ExportaAgrupClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333330B7FFF
          FFB0333333777F3333773333330B7FFFFFB0333333777F3333773333330B7FFF
          FFB0333333777F3333773333330B7FFFFFB03FFFFF777FFFFF77000000000077
          007077777777777777770FFFFFFFF00077B07F33333337FFFF770FFFFFFFF000
          7BB07F3FF3FFF77FF7770F00F000F00090077F77377737777F770FFFFFFFF039
          99337F3FFFF3F7F777FF0F0000F0F09999937F7777373777777F0FFFFFFFF999
          99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
          99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
          93337FFFF7737777733300000033333333337777773333333333}
        NumGlyphs = 2
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Arial'
        HotTrackFont.Style = []
      end
      object PC2: TPageControl
        Left = 0
        Top = 56
        Width = 840
        Height = 422
        ActivePage = TabSheet2
        Align = alBottom
        TabOrder = 3
        object TabSheet2: TTabSheet
          Caption = 'Datos Agrupados'
          object DBGrid1: TDBGrid
            Left = 0
            Top = 0
            Width = 832
            Height = 394
            Align = alClient
            DataSource = DataSource1
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Grafico'
          ImageIndex = 1
          object Grafico2: TChart
            Left = 0
            Top = 0
            Width = 832
            Height = 394
            AllowPanning = pmNone
            BackWall.Gradient.EndColor = 11118482
            BackWall.Gradient.Visible = True
            BackWall.Transparent = False
            Border.Color = 14645801
            Border.Width = 7
            BottomWall.Gradient.EndColor = 16580349
            BottomWall.Gradient.StartColor = 3114493
            BottomWall.Gradient.Visible = True
            Gradient.Direction = gdDiagonalDown
            Gradient.EndColor = 11645361
            LeftWall.Gradient.EndColor = 2413052
            LeftWall.Gradient.StartColor = 900220
            LeftWall.Gradient.Visible = True
            Legend.Alignment = laBottom
            Legend.CheckBoxes = True
            Legend.DividingLines.Visible = True
            Legend.Gradient.Direction = gdTopBottom
            Legend.Gradient.EndColor = clYellow
            Legend.Gradient.StartColor = clWhite
            Legend.Gradient.Visible = True
            Legend.LegendStyle = lsSeries
            Legend.Shadow.Transparency = 50
            Legend.Symbol.Continuous = True
            Legend.Symbol.Pen.Visible = False
            Legend.Symbol.Squared = True
            Legend.TextStyle = ltsXValue
            Legend.Title.Gradient.Balance = 74
            Legend.Title.Gradient.Direction = gdBottomTop
            Legend.Title.Gradient.EndColor = clBlack
            Legend.Title.Gradient.MidColor = 16744576
            Legend.Title.Gradient.StartColor = clBlack
            Legend.TopPos = 2
            Legend.Transparent = True
            Legend.Visible = False
            MarginBottom = 1
            MarginLeft = 1
            MarginRight = 1
            MarginTop = 0
            Title.Font.Height = -13
            Title.Font.Style = [fsBold]
            Title.Text.Strings = (
              'TChart')
            BottomAxis.Title.Font.Style = [fsBold]
            Chart3DPercent = 25
            LeftAxis.LabelsAngle = 90
            RightAxis.Title.Font.Style = [fsBold]
            Shadow.Color = clBlack
            Shadow.VertSize = 3
            View3DOptions.Perspective = 9
            Align = alClient
            BevelOuter = bvNone
            BevelWidth = 0
            TabOrder = 0
            PrintMargins = (
              15
              37
              15
              37)
            ColorPaletteIndex = 9
            object grilla1: TStringGrid
              Left = 16
              Top = 7
              Width = 143
              Height = 172
              ColCount = 3
              DefaultRowHeight = 18
              FixedCols = 0
              RowCount = 2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
              ParentFont = False
              TabOrder = 0
              Visible = False
              ColWidths = (
                83
                91
                64)
            end
            object BarSeries1: TErrorBarSeries
              ColorEachPoint = True
              Depth = 10
              Marks.Arrow.Color = clBlack
              Marks.Arrow.Width = 2
              Marks.Arrow.EndStyle = esSquare
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Draw3D = True
              Marks.Callout.HorizSize = 2
              Marks.Callout.VertSize = 2
              Marks.Callout.Visible = True
              Marks.Callout.Arrow.Color = clBlack
              Marks.Callout.Arrow.Width = 2
              Marks.Callout.Arrow.EndStyle = esSquare
              Marks.Callout.ArrowHeadSize = 0
              Marks.Callout.Length = 10
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -21
              Marks.Font.Style = [fsBold]
              Marks.Font.InterCharSize = 1
              Marks.Frame.EndStyle = esSquare
              Marks.Gradient.Balance = 41
              Marks.Gradient.Direction = gdTopBottom
              Marks.Gradient.EndColor = clGray
              Marks.Gradient.MidColor = clWhite
              Marks.Gradient.Visible = True
              Marks.Shadow.Color = clBlack
              Marks.Shadow.HorizSize = 0
              Marks.Shadow.Smooth = False
              Marks.Shadow.VertSize = 0
              Marks.Style = smsValue
              Marks.Visible = True
              SeriesColor = clRed
              AutoMarkPosition = False
              BarWidthPercent = 75
              DepthPercent = 95
              Gradient.Direction = gdTopBottom
              MultiBar = mbNone
              XValues.Name = 'X'
              XValues.Order = loNone
              YValues.Name = 'Bar'
              YValues.Order = loAscending
              ErrorValues.Name = 'StdError'
              ErrorValues.Order = loNone
              Data = {
                00060000000000000000788C4000000000000000000000000000708D40000000
                00000000000000000000A88D4000000000000000000000000000008F40000000
                00000000000000000000E88F4000000000000000000000000000249140000000
                0000000000}
            end
            object ChartTool1: TLegendScrollBar
              Brush.Color = clWhite
              DrawStyle = dsAlways
              Pen.Color = clWindowFrame
              ThumbBrush.Color = clSilver
            end
            object ChartTool2: TDragMarksTool
            end
          end
        end
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 848
    Height = 33
    ButtonHeight = 26
    Caption = 'ToolBar1'
    Color = clGradientInactiveCaption
    EdgeBorders = [ebLeft, ebTop, ebBottom]
    EdgeInner = esLowered
    ParentColor = False
    TabOrder = 2
    DesignSize = (
      846
      29)
    object ToolButton4: TToolButton
      Left = 0
      Top = 2
      Width = 727
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object JvBitBtn3: TJvBitBtn
      Left = 727
      Top = 2
      Width = 82
      Height = 26
      Anchors = [akTop, akRight]
      Caption = 'Salir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = JvBitBtn3Click
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
  object RvS: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.Orientation = poLandScape
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.Units = unMM
    SystemPrinter.UnitsFactor = 25.400000000000000000
    OnPrint = RvSPrint
    Left = 406
    Top = 6
  end
  object DataSource2: TDataSource
    Left = 340
    Top = 7
  end
  object T8: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 308
    Top = 7
  end
  object DataSource1: TDataSource
    Left = 372
    Top = 7
  end
  object RvSA: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.Units = unMM
    SystemPrinter.UnitsFactor = 25.400000000000000000
    OnPrint = RvSAPrint
    Left = 460
    Top = 8
  end
end

object ParcelasNov: TParcelasNov
  Left = 245
  Top = 124
  Width = 894
  Height = 539
  Caption = 'ParcelasNov'
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
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox9: TGroupBox
    Left = 0
    Top = 33
    Width = 878
    Height = 467
    Align = alClient
    Caption = 'Novedades Existentes'
    TabOrder = 0
    object Image1: TImage
      Left = 248
      Top = 142
      Width = 105
      Height = 105
    end
    object GroupBox13: TGroupBox
      Left = 2
      Top = 399
      Width = 874
      Height = 66
      Align = alBottom
      TabOrder = 0
      DesignSize = (
        874
        66)
      object Label1: TLabel
        Left = 14
        Top = 44
        Width = 44
        Height = 13
        Caption = 'Novedad'
      end
      object Label2: TLabel
        Left = 8
        Top = 20
        Width = 50
        Height = 13
        Caption = 'NroAccion'
      end
      object Label3: TLabel
        Left = 140
        Top = 20
        Width = 80
        Height = 13
        Caption = 'Fecha Novedad:'
      end
      object rnovedad: TButton
        Left = 740
        Top = 22
        Width = 123
        Height = 33
        Anchors = [akTop, akRight]
        Caption = 'Resolver Novedad'
        Enabled = False
        TabOrder = 0
        OnClick = rnovedadClick
      end
      object Edit1: TEdit
        Left = 64
        Top = 14
        Width = 59
        Height = 21
        Color = clInfoBk
        ReadOnly = True
        TabOrder = 1
      end
      object Edit2: TEdit
        Left = 64
        Top = 38
        Width = 667
        Height = 21
        Color = clInfoBk
        ReadOnly = True
        TabOrder = 2
      end
      object Edit3: TEdit
        Left = 224
        Top = 12
        Width = 97
        Height = 21
        Color = clInfoBk
        ReadOnly = True
        TabOrder = 3
      end
    end
    object PageControl1: TPageControl
      Left = 234
      Top = 15
      Width = 642
      Height = 384
      ActivePage = TabSheet1
      Align = alRight
      TabOrder = 1
      object TabSheet1: TTabSheet
        Caption = 'Novedades '
        object DBGrid2: TDBGrid
          Left = 0
          Top = 0
          Width = 634
          Height = 321
          Align = alClient
          DataSource = DataSource1
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnCellClick = DBGrid2CellClick
          OnDrawColumnCell = DBGrid2DrawColumnCell
        end
        object GroupBox1: TGroupBox
          Left = 0
          Top = 321
          Width = 634
          Height = 35
          Align = alBottom
          Caption = 'GroupBox1'
          TabOrder = 1
          object Shape3: TShape
            Left = 10
            Top = 14
            Width = 13
            Height = 15
            Shape = stCircle
          end
          object Label43: TLabel
            Left = 28
            Top = 16
            Width = 107
            Height = 13
            Caption = 'Novedad Sin Resolver'
          end
          object Shape2: TShape
            Left = 156
            Top = 12
            Width = 13
            Height = 15
            Brush.Color = clLime
            Shape = stCircle
          end
          object Label47: TLabel
            Left = 174
            Top = 14
            Width = 89
            Height = 13
            Caption = 'Novedad Resuelta'
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Datos Agrupados'
        ImageIndex = 1
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 634
          Height = 356
          Align = alClient
          DataSource = DataSource2
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Grafico'
        ImageIndex = 2
        object Grilla1: TStringGrid
          Left = 4
          Top = 5
          Width = 187
          Height = 322
          ColCount = 2
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
          ColWidths = (
            83
            91)
        end
        object Grafico2: TChart
          Left = 196
          Top = 4
          Width = 453
          Height = 325
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
          BevelOuter = bvNone
          BevelWidth = 0
          TabOrder = 1
          PrintMargins = (
            15
            28
            15
            28)
          ColorPaletteIndex = 9
          object BarSeries1: THorizBarSeries
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
            XValues.Name = 'Bar'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
            Data = {
              00060000000000000000788C400000000000708D400000000000A88D40000000
              0000008F400000000000E88F400000000000249140}
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
    object GroupBox2: TGroupBox
      Left = 2
      Top = 15
      Width = 227
      Height = 384
      Align = alLeft
      TabOrder = 2
      object Label4: TLabel
        Left = 5
        Top = 237
        Width = 56
        Height = 13
        Caption = 'Nro Accion:'
      end
      object Label6: TLabel
        Left = 28
        Top = 264
        Width = 73
        Height = 13
        Caption = 'Desde Fecha .:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 28
        Top = 292
        Width = 70
        Height = 13
        Caption = 'Hasta Fecha .:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object R1: TRadioButton
        Left = 10
        Top = 12
        Width = 125
        Height = 17
        Caption = 'Por Fecha'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        TabStop = True
        OnClick = R1Click
      end
      object R2: TRadioButton
        Left = 10
        Top = 31
        Width = 131
        Height = 17
        Caption = 'Por Nro Accion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = R2Click
      end
      object R3: TRadioButton
        Left = 10
        Top = 50
        Width = 205
        Height = 17
        Caption = 'Por Rango de Fechas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = R3Click
      end
      object calendario: TMonthCalendar
        Left = 4
        Top = 73
        Width = 217
        Height = 153
        Date = 0.383990717593405900
        TabOrder = 3
        OnClick = calendarioClick
      end
      object FECEMI: TEdit
        Left = 65
        Top = 231
        Width = 119
        Height = 21
        Enabled = False
        TabOrder = 4
        Text = 'FECEMI'
        OnExit = FECEMIExit
        OnKeyPress = FECEMIKeyPress
      end
      object FECNAC: TMaskEdit
        Left = 98
        Top = 258
        Width = 86
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
        OnExit = FECNACExit
        OnKeyPress = FECNACKeyPress
      end
      object fecnac1: TMaskEdit
        Left = 98
        Top = 286
        Width = 87
        Height = 21
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
        OnExit = fecnac1Exit
        OnKeyPress = fecnac1KeyPress
      end
      object vernovedad: TButton
        Left = 32
        Top = 311
        Width = 146
        Height = 30
        Caption = 'VER Novedades'
        TabOrder = 7
        Visible = False
        OnClick = vernovedadClick
      end
      object impnovedades: TJvBitBtn
        Left = 32
        Top = 346
        Width = 146
        Height = 32
        Caption = 'Imprimir Novedades'
        TabOrder = 8
        OnClick = impnovedadesClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
          8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
          8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
          8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
          03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
          03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
          33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
          33333337FFFF7733333333300000033333333337777773333333}
        NumGlyphs = 2
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'MS Sans Serif'
        HotTrackFont.Style = []
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 878
    Height = 33
    ButtonHeight = 27
    Caption = 'ToolBar1'
    Color = clGradientInactiveCaption
    EdgeBorders = [ebLeft, ebTop, ebBottom]
    EdgeInner = esLowered
    ParentColor = False
    TabOrder = 1
    DesignSize = (
      876
      29)
    object ToolButton3: TToolButton
      Left = 0
      Top = 2
      Width = 723
      Caption = 'ToolButton3'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object sale: TJvBitBtn
      Left = 723
      Top = 2
      Width = 80
      Height = 27
      Anchors = [akTop, akRight]
      Caption = 'Salir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = saleClick
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
    Left = 264
    Top = 76
  end
  object RvNov: TRvSystem
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
    OnPrint = RvNovPrint
    Left = 60
    Top = 402
  end
  object T8: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 28
    Top = 403
  end
  object DataSource2: TDataSource
    Left = 590
    Top = 106
  end
end

object Mov_Diariospla: TMov_Diariospla
  Left = 235
  Top = 46
  Width = 815
  Height = 592
  BorderIcons = [biSystemMenu]
  Caption = 'Movimientos de Ingresos Diarios'
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
  object Barra1: TStatusBar
    Left = 0
    Top = 534
    Width = 799
    Height = 19
    Panels = <
      item
        Width = 400
      end
      item
        Width = 300
      end>
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 799
    Height = 33
    ButtonHeight = 26
    Caption = 'ToolBar1'
    Color = clGradientInactiveCaption
    EdgeBorders = [ebLeft, ebTop, ebBottom]
    EdgeInner = esLowered
    ParentColor = False
    TabOrder = 1
    DesignSize = (
      797
      29)
    object ToolButton4: TToolButton
      Left = 0
      Top = 2
      Width = 697
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object ToolButton2: TToolButton
      Left = 697
      Top = 2
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object ToolButton3: TToolButton
      Left = 705
      Top = 2
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object JvBitBtn1: TJvBitBtn
      Left = 713
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
      TabOrder = 0
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
  object PC1: TPageControl
    Left = 0
    Top = 33
    Width = 799
    Height = 501
    ActivePage = TabSheet1
    Align = alClient
    Images = ImageList1
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'B'#250'squeda de Planillas Cargadas'
      object Label7: TLabel
        Left = 7
        Top = -1
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
      object Buscar: TJvBitBtn
        Left = 456
        Top = 5
        Width = 107
        Height = 42
        Caption = 'Buscar'
        TabOrder = 0
        OnClick = BuscarClick
        Glyph.Data = {
          36080000424D3608000000000000360400002800000020000000200000000100
          08000000000000040000CE0E0000D80E00000001000000000000000000004000
          000080000000FF000000002000004020000080200000FF200000004000004040
          000080400000FF400000006000004060000080600000FF600000008000004080
          000080800000FF80000000A0000040A0000080A00000FFA0000000C0000040C0
          000080C00000FFC0000000FF000040FF000080FF0000FFFF0000000020004000
          200080002000FF002000002020004020200080202000FF202000004020004040
          200080402000FF402000006020004060200080602000FF602000008020004080
          200080802000FF80200000A0200040A0200080A02000FFA0200000C0200040C0
          200080C02000FFC0200000FF200040FF200080FF2000FFFF2000000040004000
          400080004000FF004000002040004020400080204000FF204000004040004040
          400080404000FF404000006040004060400080604000FF604000008040004080
          400080804000FF80400000A0400040A0400080A04000FFA0400000C0400040C0
          400080C04000FFC0400000FF400040FF400080FF4000FFFF4000000060004000
          600080006000FF006000002060004020600080206000FF206000004060004040
          600080406000FF406000006060004060600080606000FF606000008060004080
          600080806000FF80600000A0600040A0600080A06000FFA0600000C0600040C0
          600080C06000FFC0600000FF600040FF600080FF6000FFFF6000000080004000
          800080008000FF008000002080004020800080208000FF208000004080004040
          800080408000FF408000006080004060800080608000FF608000008080004080
          800080808000FF80800000A0800040A0800080A08000FFA0800000C0800040C0
          800080C08000FFC0800000FF800040FF800080FF8000FFFF80000000A0004000
          A0008000A000FF00A0000020A0004020A0008020A000FF20A0000040A0004040
          A0008040A000FF40A0000060A0004060A0008060A000FF60A0000080A0004080
          A0008080A000FF80A00000A0A00040A0A00080A0A000FFA0A00000C0A00040C0
          A00080C0A000FFC0A00000FFA00040FFA00080FFA000FFFFA0000000C0004000
          C0008000C000FF00C0000020C0004020C0008020C000FF20C0000040C0004040
          C0008040C000FF40C0000060C0004060C0008060C000FF60C0000080C0004080
          C0008080C000FF80C00000A0C00040A0C00080A0C000FFA0C00000C0C00040C0
          C00080C0C000FFC0C00000FFC00040FFC00080FFC000FFFFC0000000FF004000
          FF008000FF00FF00FF000020FF004020FF008020FF00FF20FF000040FF004040
          FF008040FF00FF40FF000060FF004060FF008060FF00FF60FF000080FF004080
          FF008080FF00FF80FF0000A0FF0040A0FF0080A0FF00FFA0FF0000C0FF0040C0
          FF0080C0FF00FFC0FF0000FFFF0040FFFF0080FFFF00FFFFFF00FFFFFFFFFFFF
          FFFFFF0000000000000000006D6D6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          000000DBDBDBDBFF93FF93930000006D6D6DFFFFFFFFFFFFFFFFFFFFFFFF0000
          DBDBDBDBDBDBDBFF93FF939393939300006D6D6DFFFFFFFFFFFFFFFFFF009393
          DBDBDBDBDBDBDBFF93FF93939393939393006D6D6DFFFFFFFFFFFFFF00939393
          DBDBDBDBDBDBDBFF93FF9393939393939393006D6D6DFFFFFFFFFF0093939393
          DBDBDB00000000000000000093939393939393006D6D6DFFFFFF009393939393
          000000FFFFFFFFFFFFFFFFFF0000009393939393006D6DFFFFFF009393930000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000939393006D6D6DFFFF00939300FFFF
          FFFF00000000000000000000FFFFFFFFFF009393006D6D6DFFFF009300FFFFFF
          000093939393939393939393000000FFFFFF0093006D6D6D6DFF0000FFFFFF00
          93939393939393939393939393939300FFFFFF00006D6D6D6DFF00FFFFFF006E
          939393939393939393FFFFFF9393939300FFFFFF006D6D6D6DFF00FFFF009393
          6E9393939393939393939393FF93936E9300FFFF006D6D6DFFFF00FFFF009393
          936E6EDB9393939393939393FF6E6E939300FFFF006D6D6DFFFF00FFFF009393
          9393DBFFDB6E6E6E6E6E6E6E6E9393939300FFFF006D6DFFFFFF00FFFFFF0093
          939393DB93939393939393939393B69300FFFFFF006DFFFFFFFFFF00FFFFFF00
          93939393939393939393939393939300FFFFFF00FFFFFFFFFFFFFFFF00FFFFFF
          000000939393939393939393930000FFFFFF00FFFFFFFFFFFFFFFFFFFF00FFFF
          FFFFFF00000000000000000000FFFFFFFF006D6DFFFFFFFFFFFFFFFFFFFF0000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000092006D6DFFFFFFFFFFFFFFFFFFFFFF
          000000FFFFFFFFFFFFFFFFFFFF0000DBDBDB92006D6DFFFFFFFFFFFFFFFFFFFF
          FFFFFF00000000000000000000DBFFFFDBDBDB00006D6DFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF00DBFFFFDB000000006D6DFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000006D6DFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00246D2400000000006D6DFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00246D2400000000006DFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00246D240000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00246D2400000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00246D24000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00246D240000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'MS Sans Serif'
        HotTrackFont.Style = []
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 64
        Width = 791
        Height = 408
        Align = alBottom
        Caption = 'Lista de Planillas Cargadas'
        TabOrder = 1
        object Image1: TImage
          Left = 512
          Top = 46
          Width = 105
          Height = 105
        end
        object RE5: TRichEdit
          Left = 372
          Top = 218
          Width = 185
          Height = 89
          Lines.Strings = (
            'RE5')
          TabOrder = 0
        end
        object PageControl1: TPageControl
          Left = 2
          Top = 15
          Width = 787
          Height = 391
          ActivePage = TabSheet2
          Align = alClient
          TabOrder = 1
          object TabSheet2: TTabSheet
            Caption = 'Lista de Planillas Cargadas'
            object Label1: TLabel
              Left = 7
              Top = 346
              Width = 141
              Height = 13
              Alignment = taRightJustify
              Caption = 'TOTAL PLANILLAS (+) $'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 273
              Top = 317
              Width = 122
              Height = 13
              Alignment = taRightJustify
              Caption = 'TOTAL POSNET (-) $'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 536
              Top = 346
              Width = 120
              Height = 13
              Alignment = taRightJustify
              Caption = 'TOTAL EFECTIVO: $'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label4: TLabel
              Left = 266
              Top = 344
              Width = 129
              Height = 13
              Alignment = taRightJustify
              Caption = 'TOTAL COMISION(-) $'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBGrid1: TDBGrid
              Left = 0
              Top = 0
              Width = 779
              Height = 303
              Align = alTop
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
            object Edit1: TEdit
              Left = 153
              Top = 336
              Width = 102
              Height = 24
              Color = clYellow
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              Text = '00.00'
            end
            object Edit2: TEdit
              Left = 398
              Top = 310
              Width = 113
              Height = 24
              Color = clYellow
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
              Text = '00.00'
            end
            object Edit3: TEdit
              Left = 660
              Top = 332
              Width = 113
              Height = 28
              Color = clYellow
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
              Text = '00.00'
            end
            object Edit4: TEdit
              Left = 398
              Top = 336
              Width = 113
              Height = 24
              Color = clYellow
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 4
              Text = '00.00'
            end
          end
          object TabSheet3: TTabSheet
            Caption = 'Lista de Pagos Tipo Posnet'
            ImageIndex = 1
            object Image3: TImage
              Left = 644
              Top = 160
              Width = 105
              Height = 105
            end
            object DBGrid2: TDBGrid
              Left = 0
              Top = 0
              Width = 779
              Height = 363
              Align = alClient
              DataSource = DataSource1
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
            ImageIndex = 2
            object Grafico2: TChart
              Left = 198
              Top = 6
              Width = 577
              Height = 273
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
              TabOrder = 0
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
            object Grilla1: TStringGrid
              Left = 4
              Top = 5
              Width = 187
              Height = 276
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
              TabOrder = 1
              ColWidths = (
                83
                91)
            end
          end
        end
      end
      object print: TButton
        Left = 568
        Top = 4
        Width = 83
        Height = 43
        Caption = 'Imprimir'
        TabOrder = 2
        OnClick = printClick
      end
      object exporta: TButton
        Left = 658
        Top = 4
        Width = 125
        Height = 43
        Caption = 'EXPORGAR A EXCEL'
        TabOrder = 3
        OnClick = exportaClick
      end
      object TPOFORM: TComboBox
        Left = 8
        Top = 14
        Width = 409
        Height = 21
        CharCase = ecUpperCase
        ItemHeight = 13
        TabOrder = 4
        OnExit = TPOFORMExit
        OnKeyPress = TPOFORMKeyPress
      end
      object R1: TRadioButton
        Left = 8
        Top = 46
        Width = 75
        Height = 17
        Caption = 'Por Fecha:'
        Checked = True
        TabOrder = 5
        TabStop = True
        OnClick = R1Click
      end
      object R2: TRadioButton
        Left = 202
        Top = 46
        Width = 78
        Height = 17
        Caption = 'Por Periodo'
        TabOrder = 6
        OnClick = R2Click
      end
      object anio: TComboBox
        Left = 280
        Top = 42
        Width = 73
        Height = 21
        ItemHeight = 13
        TabOrder = 7
        OnExit = anioExit
        OnKeyPress = anioKeyPress
      end
      object mes: TComboBox
        Left = 358
        Top = 42
        Width = 59
        Height = 21
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 8
        Text = '01'
        OnExit = mesExit
        OnKeyPress = mesKeyPress
        Items.Strings = (
          '01'
          '02'
          '03'
          '04'
          '05'
          '06'
          '07'
          '08'
          '09'
          '10'
          '11'
          '12')
      end
      object CB1: TCheckBox
        Left = 568
        Top = 50
        Width = 147
        Height = 17
        Caption = 'Imp. Detalle de Posnet?'
        TabOrder = 9
      end
      object FECNAC: TJvDatePickerEdit
        Left = 84
        Top = 39
        Width = 91
        Height = 23
        AllowNoDate = True
        Checked = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        OnExit = FECNACExit
        OnKeyPress = FECNACKeyPress
      end
    end
  end
  object ImageList1: TImageList
    Left = 440
    Top = 8
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BFBFBF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BFBFBF00BFBFBF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BFBFBF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000BFBFBF00BFBFBF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000BFBFBF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F000000000000000000000000007F7F7F000000000000FFFF007F7F7F000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF000000000000000000BFBFBF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F00000000000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000BFBFBF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F00FFFF
      FF00BFBFBF00FFFFFF00BFBFBF00FFFFFF007F7F7F0000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000BFBFBF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F007F7F7F00FFFFFF00BFBF
      BF00FFFFFF000000FF00FFFFFF00BFBFBF00FFFFFF007F7F7F007F7F7F000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F00BFBFBF00FFFF
      FF00BFBFBF000000FF00BFBFBF00FFFFFF00BFBFBF007F7F7F00000000000000
      000000000000000000000000000000000000000000000000FF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F00FFFFFF000000
      FF000000FF000000FF000000FF000000FF00FFFFFF007F7F7F00000000000000
      000000000000000000000000000000000000000000000000FF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F00BFBFBF00FFFF
      FF00BFBFBF000000FF00BFBFBF00FFFFFF00BFBFBF007F7F7F00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F007F7F7F00FFFFFF00BFBF
      BF00FFFFFF000000FF00FFFFFF00BFBFBF00FFFFFF007F7F7F007F7F7F000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000FFFFFF000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F00FFFF
      FF00BFBFBF00FFFFFF00BFBFBF00FFFFFF007F7F7F0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F000000000000000000000000007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFD800700000000FFF8000300000000
      FFF1000100000000FFE3801000000000FFC7000000000000E08F000000000000
      C01F800000000000803F800000000000001F000000000000001F000000000000
      001F000000000000001F000000000000001FC00100000000803FC00100000000
      C07FC00700000000E0FFE3FF0000000000000000000000000000000000000000
      000000000000}
  end
  object RvS: TRvSystem
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
    OnPrint = RvSPrint
    Left = 590
    Top = 26
  end
  object T8: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 628
    Top = 27
  end
  object DataSource2: TDataSource
    Left = 104
    Top = 12
  end
  object DataSource1: TDataSource
    Left = 166
    Top = 24
  end
  object RvS1: TRvSystem
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
    OnPrint = RvS1Print
    Left = 684
    Top = 38
  end
  object T2: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 656
    Top = 26
  end
end

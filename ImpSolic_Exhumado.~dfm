object ImpSol_Exhum: TImpSol_Exhum
  Left = 369
  Top = 17
  AutoScroll = False
  Caption = 'Carga de Exhumaciones '
  ClientHeight = 634
  ClientWidth = 1020
  Color = 14801370
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 511
    Top = 51
    Width = 153
    Height = 89
    Proportional = True
  end
  object todos: TRichEdit
    Left = 10
    Top = 172
    Width = 751
    Height = 49
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -4
    Font.Name = 'Arial'
    Font.Style = []
    Lines.Strings = (
      'R5')
    ParentFont = False
    TabOrder = 2
  end
  object Barra1: TStatusBar
    Left = 0
    Top = 615
    Width = 1020
    Height = 19
    Panels = <
      item
        Width = 300
      end
      item
        Width = 50
      end>
  end
  object PC1: TJvgPageControl
    Left = 0
    Top = 45
    Width = 1020
    Height = 570
    ActivePage = TabSheet1
    Align = alClient
    DockSite = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Images = ImageList1
    TabOrder = 0
    TabStop = False
    OnChange = PC1Change
    TabStyle.Borders = [fsdLeft, fsdTop, fsdRight, fsdBottom]
    TabStyle.BevelInner = bvRaised
    TabStyle.BevelOuter = bvRaised
    TabStyle.Bold = True
    TabStyle.BackgrColor = 14801370
    TabStyle.Font.Charset = DEFAULT_CHARSET
    TabStyle.Font.Color = clWindowText
    TabStyle.Font.Height = -11
    TabStyle.Font.Name = 'Arial'
    TabStyle.Font.Style = []
    TabStyle.CaptionHAlign = fhaCenter
    TabStyle.Gradient.Active = False
    TabStyle.Gradient.Orientation = fgdHorizontal
    TabSelectedStyle.Borders = [fsdLeft, fsdTop, fsdRight, fsdBottom]
    TabSelectedStyle.BevelInner = bvNone
    TabSelectedStyle.BevelOuter = bvNone
    TabSelectedStyle.Bold = True
    TabSelectedStyle.BackgrColor = clBtnHighlight
    TabSelectedStyle.Font.Charset = DEFAULT_CHARSET
    TabSelectedStyle.Font.Color = clBtnText
    TabSelectedStyle.Font.Height = -11
    TabSelectedStyle.Font.Name = 'Arial'
    TabSelectedStyle.Font.Style = []
    TabSelectedStyle.CaptionHAlign = fhaCenter
    TabSelectedStyle.Gradient.Active = False
    TabSelectedStyle.Gradient.Orientation = fgdHorizontal
    Wallpaper.FillCaptionBakgr = True
    Wallpaper.FillClient = True
    Options = [ftoAutoFontDirection, ftoExcludeGlyphs]
    object TabSheet1: TTabSheet
      Caption = 'B'#250'squedas'
      ImageIndex = 1
      DesignSize = (
        1012
        541)
      object Bevel2: TBevel
        Left = 6
        Top = 2
        Width = 667
        Height = 92
      end
      object LB1: TLabel
        Left = 188
        Top = 12
        Width = 89
        Height = 13
        Caption = 'Ingrese N'#176' Acci'#243'n:'
      end
      object Label24: TLabel
        Left = 158
        Top = 72
        Width = 37
        Height = 13
        Caption = 'N'#176' DNI:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label25: TLabel
        Left = 110
        Top = 74
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
      object DBGrid1: TJvDBGrid
        Left = 2
        Top = 95
        Width = 1007
        Height = 37
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = DataSource0
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -11
        TitleFont.Name = 'Arial Narrow'
        TitleFont.Style = [fsBold]
        OnCellClick = DBGrid1CellClick
        AlternateRowColor = clGradientInactiveCaption
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 18
        TitleRowHeight = 19
      end
      object RB5: TRadioButton
        Left = 10
        Top = 49
        Width = 75
        Height = 17
        Caption = 'Por DNI'
        TabOrder = 1
        OnClick = RB2Click
      end
      object ODNI: TEdit
        Left = 186
        Top = 28
        Width = 125
        Height = 28
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 11
        ParentFont = False
        TabOrder = 2
        Text = '00000000'
        OnChange = ODNIChange
        OnKeyPress = ODNIKeyPress
      end
      object ONOMB: TEdit
        Left = 422
        Top = 32
        Width = 67
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 25
        TabOrder = 3
        Visible = False
      end
      object Busca: TJvBitBtn
        Left = 748
        Top = 36
        Width = 113
        Height = 45
        Caption = 'BUSCAR'
        TabOrder = 4
        OnClick = BuscaClick
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
      object RB3: TRadioButton
        Left = 11
        Top = 6
        Width = 75
        Height = 21
        Caption = 'Por Acci'#243'n'
        Checked = True
        TabOrder = 5
        TabStop = True
        OnClick = RB2Click
      end
      object RB7: TRadioButton
        Left = 10
        Top = 29
        Width = 156
        Height = 17
        Caption = 'Por Sector y Parcela'
        TabOrder = 6
        OnClick = RB2Click
      end
      object RB4: TRadioButton
        Left = 94
        Top = 7
        Width = 78
        Height = 17
        Caption = 'Por Sector'
        TabOrder = 7
        Visible = False
        OnClick = RB2Click
      end
      object GroupBox8: TGroupBox
        Left = 0
        Top = 357
        Width = 1012
        Height = 184
        Align = alBottom
        Caption = 'Detalle de Inhumados de la Accion Seleccionada'
        Enabled = False
        TabOrder = 8
        object Label30: TLabel
          Left = 50
          Top = 45
          Width = 38
          Height = 13
          Caption = 'Label30'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object JvDBGrid3: TJvDBGrid
          Left = 2
          Top = 44
          Width = 1008
          Height = 138
          Align = alClient
          DataSource = DataSource3
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clNavy
          TitleFont.Height = -11
          TitleFont.Name = 'Arial Narrow'
          TitleFont.Style = [fsBold]
          OnCellClick = JvDBGrid3CellClick
          AlternateRowColor = clWindow
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 18
          TitleRowHeight = 19
        end
        object GroupBox2: TGroupBox
          Left = 2
          Top = 15
          Width = 1008
          Height = 29
          Align = alTop
          TabOrder = 1
          object Label53: TLabel
            Left = 7
            Top = 7
            Width = 282
            Height = 20
            Caption = '3'#186' Paso  - Seleccionar el Inhumado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
      object RB1: TRadioButton
        Left = 10
        Top = 71
        Width = 78
        Height = 17
        Caption = 'Por Titular'
        TabOrder = 9
        OnClick = RB2Click
      end
      object Edit1: TEdit
        Left = 152
        Top = 64
        Width = 85
        Height = 24
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 10
        Text = '00000000000'
      end
      object Button2: TJvBitBtn
        Left = 202
        Top = 68
        Width = 23
        Height = 23
        TabOrder = 11
        OnClick = Button2Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555500000000
          0555555F7777777775F55500FFFFFFFFF0555577F5FFFFFFF7F550F0FEEEEEEE
          F05557F7F777777757F550F0FFFFFFFFF05557F7F5FFFFFFF7F550F0FEEEEEEE
          F05557F7F777777757F550F0FF777FFFF05557F7F5FFFFFFF7F550F0FEEEEEEE
          F05557F7F777777757F550F0FF7F777FF05557F7F5FFFFFFF7F550F0FEEEEEEE
          F05557F7F777777757F550F0FF77F7FFF05557F7F5FFFFFFF7F550F0FEEEEEEE
          F05557F7F777777757F550F0FFFFFFFFF05557F7FF5F5F5F57F550F00F0F0F0F
          005557F77F7F7F7F77555055070707070555575F7F7F7F7F7F55550507070707
          0555557575757575755555505050505055555557575757575555}
        NumGlyphs = 2
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'MS Sans Serif'
        HotTrackFont.Style = []
      end
      object name: TEdit
        Left = 152
        Top = 64
        Width = 515
        Height = 24
        CharCase = ecUpperCase
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 150
        ParentFont = False
        TabOrder = 12
        OnChange = nameChange
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 205
        Width = 1012
        Height = 152
        Align = alBottom
        Caption = 'Titulares de la Parcela'
        TabOrder = 13
        object JvDBGrid2: TJvDBGrid
          Left = 2
          Top = 44
          Width = 1008
          Height = 106
          Align = alClient
          DataSource = DataSource2
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clNavy
          TitleFont.Height = -11
          TitleFont.Name = 'Arial Narrow'
          TitleFont.Style = [fsBold]
          OnCellClick = JvDBGrid2CellClick
          AlternateRowColor = clWindow
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 18
          TitleRowHeight = 19
        end
        object GroupBox1: TGroupBox
          Left = 2
          Top = 15
          Width = 1008
          Height = 29
          Align = alTop
          TabOrder = 1
          object Label51: TLabel
            Left = 6
            Top = 7
            Width = 252
            Height = 20
            Caption = '2'#186' Paso  - Seleccionar el Titular'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
      object Edit66: TEdit
        Left = 338
        Top = 28
        Width = 81
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
        Visible = False
      end
      object ElSector: TComboBox
        Left = 188
        Top = 30
        Width = 75
        Height = 28
        CharCase = ecUpperCase
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemHeight = 20
        MaxLength = 1
        ParentFont = False
        TabOrder = 15
        Visible = False
        OnExit = ElSectorExit
        OnKeyPress = ElSectorKeyPress
      end
      object Edit6: TComboBox
        Left = 310
        Top = 28
        Width = 111
        Height = 28
        Color = clYellow
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemHeight = 20
        ParentFont = False
        TabOrder = 16
        Visible = False
        OnExit = Edit6Exit
        OnKeyPress = Edit6KeyPress
      end
      object GroupBox10: TGroupBox
        Left = 869
        Top = 28
        Width = 137
        Height = 57
        Caption = 'INHUMADOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 17
        object Label39: TLabel
          Left = 12
          Top = 28
          Width = 16
          Height = 20
          Caption = '...'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Button3: TButton
          Left = 82
          Top = 28
          Width = 39
          Height = 23
          Caption = 'Ver'
          TabOrder = 0
          Visible = False
          OnClick = Button3Click
        end
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 135
        Width = 1012
        Height = 70
        Align = alBottom
        Caption = 'Datos del que Suscribe'
        TabOrder = 18
        object Label20: TLabel
          Left = 8
          Top = 17
          Width = 307
          Height = 20
          Caption = '1'#186' Paso  - Seleccionar el que Suscribe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object JvBitBtn1: TJvBitBtn
          Left = 5
          Top = 41
          Width = 20
          Height = 23
          TabOrder = 0
          OnClick = JvBitBtn1Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555500000000
            0555555F7777777775F55500FFFFFFFFF0555577F5FFFFFFF7F550F0FEEEEEEE
            F05557F7F777777757F550F0FFFFFFFFF05557F7F5FFFFFFF7F550F0FEEEEEEE
            F05557F7F777777757F550F0FF777FFFF05557F7F5FFFFFFF7F550F0FEEEEEEE
            F05557F7F777777757F550F0FF7F777FF05557F7F5FFFFFFF7F550F0FEEEEEEE
            F05557F7F777777757F550F0FF77F7FFF05557F7F5FFFFFFF7F550F0FEEEEEEE
            F05557F7F777777757F550F0FFFFFFFFF05557F7FF5F5F5F57F550F00F0F0F0F
            005557F77F7F7F7F77555055070707070555575F7F7F7F7F7F55550507070707
            0555557575757575755555505050505055555557575757575555}
          NumGlyphs = 2
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object DNI: TDBEdit
          Left = 468
          Top = 43
          Width = 99
          Height = 21
          Color = clCream
          ReadOnly = True
          TabOrder = 1
        end
        object apeynom1: TDBEdit
          Left = 29
          Top = 43
          Width = 434
          Height = 21
          Color = clCream
          ReadOnly = True
          TabOrder = 2
        end
        object DOMICILIO: TDBEdit
          Left = 574
          Top = 43
          Width = 421
          Height = 21
          Color = clCream
          ReadOnly = True
          TabOrder = 3
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Parcelas e Inhumados'
      ImageIndex = 2
      object PC2: TJvgPageControl
        Left = 0
        Top = 0
        Width = 1012
        Height = 541
        ActivePage = TabSheet9
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        TabOrder = 0
        TabStop = False
        TabStyle.Borders = [fsdLeft, fsdTop, fsdRight, fsdBottom]
        TabStyle.BevelInner = bvNone
        TabStyle.BevelOuter = bvNone
        TabStyle.Bold = False
        TabStyle.BackgrColor = clBtnFace
        TabStyle.Font.Charset = DEFAULT_CHARSET
        TabStyle.Font.Color = clWindowText
        TabStyle.Font.Height = -11
        TabStyle.Font.Name = 'Arial'
        TabStyle.Font.Style = []
        TabStyle.CaptionHAlign = fhaCenter
        TabStyle.Gradient.Active = False
        TabStyle.Gradient.Orientation = fgdHorizontal
        TabSelectedStyle.Borders = [fsdLeft, fsdTop, fsdRight, fsdBottom]
        TabSelectedStyle.BevelInner = bvNone
        TabSelectedStyle.BevelOuter = bvNone
        TabSelectedStyle.Bold = False
        TabSelectedStyle.BackgrColor = 16776176
        TabSelectedStyle.Font.Charset = DEFAULT_CHARSET
        TabSelectedStyle.Font.Color = clBtnText
        TabSelectedStyle.Font.Height = -11
        TabSelectedStyle.Font.Name = 'Arial'
        TabSelectedStyle.Font.Style = []
        TabSelectedStyle.CaptionHAlign = fhaCenter
        TabSelectedStyle.Gradient.Active = False
        TabSelectedStyle.Gradient.Orientation = fgdHorizontal
        Options = [ftoAutoFontDirection, ftoExcludeGlyphs]
        object TabSheet9: TTabSheet
          Caption = 'Titulares Activos'
          ImageIndex = 5
          object PageControl1: TPageControl
            Left = 0
            Top = 0
            Width = 1004
            Height = 513
            ActivePage = TabSheet5
            Align = alClient
            TabOrder = 0
            object TabSheet5: TTabSheet
              Caption = 'TabSheet5'
              ImageIndex = 2
              object grillaobjetos: TStringGrid
                Left = 4
                Top = 4
                Width = 351
                Height = 165
                ColCount = 4
                FixedCols = 0
                RowCount = 2
                Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
                TabOrder = 0
                ColWidths = (
                  41
                  208
                  82
                  11)
              end
              object grilla5: TStringGrid
                Left = 4
                Top = 178
                Width = 845
                Height = 257
                ColCount = 7
                DefaultColWidth = 100
                DefaultRowHeight = 17
                FixedCols = 0
                RowCount = 2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
                ParentFont = False
                TabOrder = 1
                ColWidths = (
                  120
                  120
                  120
                  120
                  120
                  120
                  100)
              end
            end
          end
        end
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1020
    Height = 45
    ButtonHeight = 37
    Caption = 'ToolBar1'
    TabOrder = 3
    DesignSize = (
      1020
      43)
    object ToolButton1: TToolButton
      Left = 0
      Top = 2
      Width = 747
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object Imprime: TBitBtn
      Left = 747
      Top = 2
      Width = 115
      Height = 37
      Hint = 'Guarda los Datos'
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeft
      Caption = 'IMPRESIONES'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = ImprimeClick
      Layout = blGlyphBottom
      Margin = 2
      NumGlyphs = 2
    end
    object ToolButton2: TToolButton
      Left = 862
      Top = 2
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object sale: TJvBitBtn
      Left = 870
      Top = 2
      Width = 76
      Height = 37
      Anchors = [akTop, akRight]
      Caption = 'Salir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = saleClick
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFEFEFFFDFDFEFCFCFEFCFDFEFCFDFEFCFDFEFCFDFEFCFD
        FEFCFDFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFC
        FCFEFCFCFEFDFDFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFE8E8E1B9B89F9B99799693759694769694769594769594769594759694
        759694759695759695759796759796759897759898759999759A9A759B9B759B
        9B759B9A759A9976AAAA87D3D3C3FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        DEDDC35F62953D45E6636BFF6A73FF6C73FF6C75FF6C76FF6C77FF6C76FF6D75
        FF6C73FF6A72FF686FFF656CFF636AFF6066FF5E62FF5A5EFF5659FF5455FF54
        56FF5557FF5759FF4446F41A18A6B0AF90F6F6F5FFFFFFFFFFFFFFFFFFF1F1DB
        4146B06D6FF84A48C90707C20605C60605C90605CC0605CF0605D20605D70605
        D80605DC0605E00606E30706E60B0CE71316E9191FE72027E9252FEA2C37EC31
        3EEC3543ED3848ED5161F29FACFF1A1AD4B8B8A1FFFFFFFFFFFFFFFFFF9C9CB3
        4848F80000B50000C00000C40000C70000CC0000CD0000D10000D40000D90000
        DA0000DD0000E00000E20000E70407E81014EA141BE91A22EA2129EB2530EC2A
        37EE2F3EEF3644EE384AEF2E40EF8293FF2523B1F7F7E1FFFFFFFFFFF44A4AE1
        1B1BB50000BE0000C10000C50000C80000CA0000CD0000D20000D40000D70000
        D60000D81515E23333E92727E90000E60000E6030BE81921EA222CEC2833ED2D
        39EE3240EF3745EE3C4BF04153F13B51F33841E2CFCEC5FFFFFFFFFFF22828D9
        0000B30000BE0000C00000C40000C70000CB0000CE0000D00000CB5B5BE2D3D3
        F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A9BF51019EA0B15EA2934ED2D
        38EE3240EF3847EE3B4BF04153F1465AF3384BEE9D9AC1FFFFFFFFFFF41818CD
        0000B50000BD0000C10000C40000C70000CA0000CA1818D1FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A9EF60009E92D
        39EE3140EF3746EE3C4BF04153F1475AF3293DEAA4A2C0FFFFFFFFFFF51A1AC5
        0000B60000BC0000C00000C20000C70000C52424D3FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFDBDBF2F4F4F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E7FC00
        0DEA3340EF3645EE3B4BF04050F1465AF32B3EE6A4A2BEFFFFFFFFFFF61A1AC1
        0000B40000BB0000BF0000C10000C41F1FCBFFFFFFFFFFFFFFFFFFFFFFFFB1B1
        E30E0ECD0000CE0000D90000DC0000D55757DDFFFFFCFFFFFFFFFFFFFFFFFFE0
        E1FC0515EC3543EE384AF03F50F14558F4273BE2A5A2BCFFFFFFFFFFF71919BB
        0101B30808BC0909BF0808C10000BBFFFFFFFFFFFFFFFFFFFFFFFF2727C50000
        D40000DB0000DF0000E20000E50000E90000ED0000D8E0E0F3FFFFFFFFFFFFFF
        FFFF7078F32838EE3948EF3C4EF04356F42538DFA6A3BBFFFFFFFFFFF71818B6
        0A0AB31B1BBE1B1BC11313C17171DCFFFFFFFFFFFFFFFFFF5353CA0404D60707
        D70000D80000DD0000DF0000E30000E60606E80D12EB0000DDFAFAF7FFFFFFFF
        FFFFFFFFFF0617EB3745EE3A4BEF4254F52134DAA6A3BAFFFFFFFFFFF81717B1
        0F0FB12424C02626C20606BEEAEAF9FFFFFFFFFFFFE4E4EF0303CC3434DA3838
        DB3C3CDF2626DE0F0FE00000E10000E30100E80A0CE90A0FEC393DE0FFFFFFFF
        FFFFFFFFFF5A63F12C3AEE3848EF3D4FF31F30D7A7A4B9FFFFFFFFFFFA1717AA
        1212B02E2EC12F2FC30B0BBBFFFFFFFFFFFFFFFFFF7474DC2F2FD33838D93B3B
        DA3C3CDF4040E04747E44747E62424E50000E40000E70E12E90000E4FFFFFBFF
        FFFFFFFFFF8F96F52130EE3543EF3B4BF11C2CD5A7A4BBFFFFFFFFFFFA1616A4
        1D1DAF3838C33232C23D3DC7FFFFFFFFFFFFFFFFFF4949D23C3CD44141D74343
        D94545DD4545E04848E34949E45050E95B5BEB2C2BEA0000E80000E8BEC0F5FF
        FFFFFFFFFFB9BCF91521EB303EEF3544EE1726D4A8A5BBFFFFFFFFFFFB15159F
        2222AF3F3FC23D3DC34949C9FFFFFFFFFFFFFFFFFF4F4FD44545D44A4AD84B4B
        D94D4DDE4C4CDE4444E04B4BE35252E75353E95A5AED6464F00404E7B0B2F8FF
        FFFFFFFFFFBEC0F70E19EB2B37EE303EEE1320D2A8A7BBFFFFFFFFFFFD151598
        2727AD4949C34646C43232BDFFFFFFFFFFFFFFFFFF7878DD4A4AD35151D85252
        DA5252DB5858DFB4B4F27D7DEA4E4EE45D5DE85E5EEA5F5FED4E4EEDFBFAFEFF
        FFFFFFFFFF9497F20E19EB2430ED2A36ED0D18CFAAA7BCFFFFFFFFFFFD141492
        2C2CAD5050C54F4FC53232C0FFFFF9FFFFFFFFFFFFC5C5F04141CD5959D75D5D
        DA3E3ED6FFFFFFFFFFFFFFFFFF6E6EE76060E66565EA6565EA6060EDFFFFFFFF
        FFFFFFFFFF6165E90F15EA1D26EB242DEB0610CDABA9BBFFFFFFFFFFFD13138F
        3131AD5A5AC55757C64E4EC6AAAADAFFFFFFFFFFFFFFFFFF5E5ED45E5ED56262
        D94444D4FFFFFFFFFFFFFFFFFF9090EA6565E56E6EE95050E6E1E1FBFFFFFFFF
        FFFFFFFFFF0405DE050AEA151BEA1A21E90005CAACABBBFFFFFFFFFFFD13138F
        3737AC6161C65F5FC76060C94848B9FFFFFFFFFFFFFFFFFFFFFFFF5454D16767
        D94D4DD4FFFFFFFFFFFFFFFFFF9494E96D6DE35959E2BABAF4FFFFFFFFFFFFFF
        FFFFC1C1E68A89F61616E90002E90E13E90000C9AEADBCFFFFFFFFFFFE12128D
        3C3CAC6A6AC76565C66767C86262CC9393C8FFFFFFFFFFFFFFFFFFFFFFFF7373
        D95555D2FFFFFFFFFFFFFFFFFF9898EA6363E0E0E0F8FFFFFFFFFFFFFFFFFFFF
        FFF96464DF8282F0A0A0F10E0DE70000E80000C6AFAFBDFFFFFFFFFFFE11118B
        4141AD7171C86E6EC66F6FC87070CE5656C4CFCFDDFFFFFFFFFFFFFFFFFFBEBE
        EE5757D0FFFFFFFFFFFFFFFFFF9797E6B8B8F0FFFFFFFFFFFFFFFFFFFFFFFF75
        75CE8787F08989EC8A8AEEA5A5F10000E20000BDAFAFBEFFFFFFFFFFFE101089
        4D4DB07878C87575C87676CA7777CC7A7ACF5C5CC2B3B3CEFFFFFFFFFFFF7979
        CA6666D3FFFFFFFFFFFFFFFFFF9E9EE7A3A3E0FFFFFFFFFFFFFDFDF77676C98C
        8CEF8E8EE98F8FEA9090EC9797ED8A8AF10000B3AFAFBEFFFFFFFFFFFE0F0F87
        5A5AB57E7EC87C7CC87D7DC97D7DCD8080CD8282D17676D26666B26060B88989
        DD6F6FD1FFFFFFFFFFFFFFFFFFA8A8E77A7ADC9A9ACAAFAFD07272CD9494EB95
        95E69595E79797E99797E99898EAB4B4F20808B6AAAAC0FFFFFFFFFFFE0C0C82
        7575BF8282C88181C88282CA8585CE8585CE8888D08989D38B8BD68E8ED88D8D
        D87676D2FFFFFFFFFFFFFFFFFFACACE59191DF9595E49595E79999E69999E49A
        9AE59D9DE69D9DE79F9FE8A0A0E7B0B0EF2A2AB7A6A6BFFFFFFFFFFFFF06067C
        9898CE8787C78989C98A8ACC8C8CCE8D8DCF8D8DD08E8ED39191D39191D69595
        D87F7FD1FFFFFFFFFFFFFFFFFFB6B6E89797DE9C9CE19E9EE19E9EE2A1A1E4A2
        A2E5A2A2E4A4A4E5A4A4E5A6A6E5B3B3EA3F3FBCB1B1C2FFFFFFFFFFFF1F1F90
        9B9BCE8D8DC79090CB9090CD9292CD9494D09595D19797D49898D39999D69A9A
        D88F8FD7EDEDEDFFFFFFFFFFFE9191D2A1A1DFA3A3DFA3A3E1A5A5E2A7A7E2A7
        A7E2AAAAE4AAAAE4ACACE5ADADE5B2B2E68A8AD29999C2FFFFFFFFFFFF6666B4
        A5A5CD9494C99797CC9898CD9999CF9A9AD09C9CD39D9DD39F9FD59F9FD7A0A0
        D7A4A4DB8A8AC89E9EC38B8BC3AAAAE2A9A9DEA9A9DFABABE0ACACE0ADADE1AF
        AFE3AFAFE2B2B2E3B3B3E2B4B4E3AFAFE0A6A6DCDEDEE3FFFFFFFFFFFFC9C9E2
        8B8BC9A1A1CB9999CA9D9DCC9F9FCF9F9FD1A0A0D3A3A3D2A3A3D5A4A4D5A6A6
        D9A7A7D9AAAADAA9A9DDACACDFACACDDADADDEB0B0DDAFAFDFB1B1E0B2B2E1B3
        B3E0B5B5E1B6B6E0B6B6E0ADADDBF7F7FB7777BDFFFFFFFFFFFFFFFFFFFFFFFF
        7F7FC4B9B9DCCDCDE0B7B7D7B6B6D8B9B9DABABADBBCBCDDBDBDDEBDBDDFBFBF
        E1C1C1E1C2C2E3C5C5E3C5C5E5C6C6E6C7C7E6C9C9E7CBCBE7CBCBE8CCCCE8CE
        CEEACFCFE9D0D0EADEDEEFFFFFFF7C7CC7ECECF4FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFAAAAD98686C98E8ECDA0A0D4A1A1D4A3A3D5A5A5D7A8A8D7AAAAD9ACAC
        D9AEAEDAB0B0DBB2B2DCB4B4DDB5B5DFB8B8DFBABAE0BABAE0BABAE1BBBBE0BA
        BAE0BABAE0B8B8E09E9ED68585C9FCFCFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Arial'
      HotTrackFont.Style = []
    end
  end
  object Panel1: TPanel
    Left = 290
    Top = 78
    Width = 661
    Height = 431
    TabOrder = 4
    DesignSize = (
      661
      431)
    object Label37: TLabel
      Left = 30
      Top = 39
      Width = 199
      Height = 16
      Caption = 'Fecha Solicitud Exhumacion:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LB7: TLabel
      Left = 112
      Top = 101
      Width = 113
      Height = 20
      Caption = 'Importe Total:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 576
      Top = 6
      Width = 75
      Height = 22
      Caption = 'Cerrar'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
        993337777F777F3377F3393999707333993337F77737333337FF993399933333
        399377F3777FF333377F993339903333399377F33737FF33377F993333707333
        399377F333377FF3377F993333101933399377F333777FFF377F993333000993
        399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
        99333773FF777F777733339993707339933333773FF7FFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      NumGlyphs = 2
      OnClick = SpeedButton1Click
    end
    object Label31: TLabel
      Left = 146
      Top = 66
      Width = 78
      Height = 16
      Caption = 'Tipo Pago:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label82: TLabel
      Left = 15
      Top = 324
      Width = 59
      Height = 16
      Caption = 'Observ.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label78: TLabel
      Left = 154
      Top = 175
      Width = 73
      Height = 16
      Caption = 'N'#176' Cuotas:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label80: TLabel
      Left = 290
      Top = 177
      Width = 86
      Height = 16
      Caption = 'Valor Cuota:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 154
      Top = 137
      Width = 70
      Height = 20
      Caption = 'Entrega:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Exporta: TJvBitBtn
      Left = 516
      Top = 92
      Width = 137
      Height = 47
      Anchors = [akTop, akRight]
      Caption = 'Imprimir NOTA'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = ExportaClick
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF8F8F8F4F4F4F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3
        F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3
        F3F3F3F3F3F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFEFEFEB6B6B6A7A7A7A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8
        A8A8A8A8A7A7A7A4A4A4A8A8A8AAAAAAA8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8
        A8A8A7A7A7AFAFAFF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFCCCCCCCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCB
        CBCACACAD2D2D2E3E3E3BCBCBCC6C6C6CFCFCFCECECECECECECECECECECECECE
        CECECECECEC7C7C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF
        E3E3E3E3E3E3E8E8E8C2C2C2FAFAFAF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
        F0F0F0F0F0F0F0EEEEEEF4F4F4F1F1F1F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
        F0F0F8F8F8C5C5C5E9E9E9E3E3E3E4E4E4E2E2E2F3F3F3FFFFFFDFDFDF9F9F9F
        9F9F9FA0A0A09F9F9FA2A2A2B8B8B8D1D1D1CECECECECECECECECECECECECECE
        CECECECECECECECECECECDCDCDCECECECECECECECECECECECECECECECECECECE
        CECED7D7D7878787A2A2A2A0A0A0A0A0A0A0A0A09F9F9FEAEAEAD9D9D9C8C8C8
        C9C9C9C9C9C9C8C8C8E2E2E27B7B7BFAFAFAE9E9E9E9E9E9E9E9E9E9E9E9E9E9
        E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9F2
        F2F29E9E9EB9B9B9CCCCCCC9C9C9C9C9C9C8C8C8CACACADCDCDCD4D4D4CFCFCF
        CECECECECECECCCCCCFAFAFA0000005959595858585757575656565656565656
        5657575757575757575757575757575757575757575757575757575756565667
        67670000009C9C9CD5D5D5D2D2D2CCCCCCD3D3D3CBCBCBDFDFDFD5D5D5D6D6D6
        D4D4D4D5D5D5D3D3D3FDFDFD0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000C2C2C2D8D8D8DDDDDDDFDFDFD8D8D8D5D5D5DDDDDDD2D2D2DCDCDC
        DADADADADADADADADADFDFDFC3C3C37676767D7D7D7D7D7D7D7D7D7D7D7D7D7D
        7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7A
        7A7A979797EFEFEFD9D9D9E1E1E1E3E3E3DDDDDDDBDBDBDADADAD2D2D2E5E5E5
        E2E2E2E2E2E2E2E2E2E2E2E2E7E7E7EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
        EEEEEBEBEBE2E2E2E4E4E4D2D2D2CCCCCCDEDEDEE5E5E5D8D8D8D1D1D1ECECEC
        E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E9EAE7EBF0E8EBF0E8EBF0E8EB
        EFE8EBEFE8EBEFE8EBEFE8EBF0E8EBF0E8ECF1E8EDF3E8EEF3E8EFF4E8EDEFE7
        E7E7E7E7E7E7E7E7E7E7E7E9E9E9E9E9E9E8E8E8ECECECD6D6D6D0D0D0F5F5F5
        EFEFEFF1F1F1F1F1F1F1F1F1F1F1F0F0F5FAFAF5E9F7DFBCF2DEBFF3E1C5F3E2
        CBF3E4CBF3E3CBF3E2C7F3E0C4F3DDBDF3D9B8F3D3B1F3CBABF3C4A2F7DAC6ED
        F5FAF1F1F1F1F1F1F1F1F1F1F1F1F2F2F2EEEEEEF5F5F5D6D6D6CFCFCFFDFDFD
        FFFFFFFEFEFEFEFEFEFEFEFEFEFFFFFFFCF5D28340AD5F1AB26C2AB26F31B273
        35B27438B27337B27235B26E2EB26B28B26420B25C18B2510EB14502BC3F00FA
        D1BCFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFBFBFBD4D4D4CECECEFFFFFF
        FCFCFCFCFCFCFCFCFCFCFCFCFCFFFFFFF4E9C97030C98247CA8A4FCA9054CA91
        58CA9159CA9159C99055CA8E52CA884DCA8046CA783ECA7037CA662EC1490BF0
        BAA0FFFFFFFCFCFCFCFCFCFCFCFCFCFCFCFDFDFDFFFFFFD2D2D2D0D0D0FFFFFF
        FEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFAE5D8EDA16EF2B485ECB17DECB983EBBD
        88EBBE8AEABC87F6CC9DEDBA88EBB17FEBAB7AEBA374EA9B6AF19C70F08B5DE9
        AE92FFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFFFFFFD1D1D1D2D2D2FFFFFF
        FDFDFDFEFEFEFEFEFEFEFEFEFEFFFFFCE2D5CB723AB86F3CB7733DBB753BBF73
        33BE7535BD7332C78248BC6D2CBE6C2DBE6527BE5F21BD5519BD4B0ECA5723E8
        AB8FFFFFFFFDFDFDFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFD8D8D8E4E4E4F6F6F6
        FFFFFFFEFEFEFEFEFEFEFEFEFFFFFFF7D6C5E29066C09C85C3A086CEA384E5AA
        7DE2AB7FE2AA7FE1A77CE2A67BE1A277E09D72DF976CE59972EFA585F19E7CE1
        9E7BFFFFFFFDFDFDFEFEFEFDFDFDFDFDFDFFFFFFDDDDDDF8F8F8FFFFFFCACACA
        FFFFFFFFFFFFFFFFFFFDFDFDFFFFFFEFC6B3ECB097EDAF99ECAF99EFBAA4ECBD
        A4E9B89DE7B799E7B497E7B395E7B296EAB396EDB39BEBAF94E9AA8FEBAF94DE
        A183FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECECEFFFFFFFFFFFFFEFEFE
        D9D9D9DEDEDEE4E4E4FFFFFFFFFFFFEFB79EF3C7B4F6CDBAF6CCB8F2C7B1F1C5
        AFF1C6B0F2C4AFF2C3ADF1C2ABF0BFA9F0BCA4F0BCA5F0BCA5F0BEA5F5C5B0DB
        9D7DFFFFFFF0F0F0E1E1E1CECECEDFDFDFDADADAFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFB4B4B4D4DADCCD9B86E49572F7CEBCFADCD0FFEBE1FFF5
        F0FFEFE7FFEEE3FFEEE4FFEDE3FFECE3FFF4EDFFE7DBFDDAC9F9CAB5EFA98BC6
        7D5AE5ECF0B8B8B8ECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFCACACAF9F9F9A8B0B4FFFFFFEBD7CEE4BBAADEA58BDFA3
        89E0B29DE0B8A4DDB5A3DBB4A3DAB2A0D29C85D2AB99D3B3A5D4C2BAD8E2E6D1
        DDE3F2F1F1C8C8C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFC7C7C7FFFFFFB9B8B8FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFCFFFFF9FEFFF5F9FBF2F6F8EFF3F5ECF1F4E9EDEFE5E9EBE2E4E5E0E0E0D0
        D0CFF0F0F0C7C7C7FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFC9C9C9FFFFFFC0C0C0FFFFFFFDFDFDFEFEFEFEFEFEFEFE
        FEFDFDFDF8F8F8F6F6F6F2F2F2EFEFEFEBEBEBE8E8E8E5E5E5E3E3E3E1E1E1D0
        D0D0EFEFEFC6C6C6FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFCBCBCBFFFFFFC6C6C6FFFFFFFDFDFDFEFEFEFEFEFEFEFE
        FEFDFDFDFBFBFBF8F8F8F4F4F4F0F0F0EEEEEEEBEBEBE8E8E8E4E4E4E4E4E4D1
        D1D1EFEFEFC6C6C6FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFC7C7C7FFFFFFCBCBCBFFFFFFFDFDFDFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEF9F9F9F6F6F6F3F3F3EFEFEFEDEDEDE9E9E9E7E7E7E4E4E4D2
        D2D2EFEFEFC5C5C5FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFBDBDBDFFFFFFCFCFCFFFFFFFFDFDFDFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFCFCFCF8F8F8F5F5F5F1F1F1EEEEEEEBEBEBE8E8E8E6E6E6D2
        D2D2EFEFEFC5C5C5FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFBDBDBDFFFFFFD7D7D7FFFFFFFDFDFDFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFAFAFAF7F7F7F3F3F3F0F0F0EDEDEDEAEAEAE9E9E9D4
        D4D4EEEEEEC4C4C4FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF6F6F6D0D0D0BDBDBDFFFFFFFDFDFDFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFCFCFCF8F8F8F6F6F6F2F2F2EEEEEEECECECEAEAEAD4
        D4D4EEEEEEC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9C9C9FFFFFFFDFDFDFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFDFDFDFBFBFBF7F7F7F4F4F4F1F1F1EEEEEEECECECD4
        D4D4EEEEEEC4C4C4FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFAFAFACFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF7F7F7F3F3F3F0F0F0EFEFEFD6
        D6D6EEEEEEC3C3C3FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E2E2EBEBEBEAEAEAEAEAEAEAEAEAEAEA
        EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEBEBEBEBEBEBEBEBEBECECECEEEEEED3
        D3D3F0F0F0CDCDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFEFEFEFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Arial'
      HotTrackFont.Style = []
    end
    object JvBitBtn2: TJvBitBtn
      Left = 514
      Top = 34
      Width = 137
      Height = 51
      Anchors = [akTop, akRight]
      Caption = 'Imprimir Solicitud'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = JvBitBtn2Click
      Glyph.Data = {
        36080000424D3608000000000000360400002800000020000000200000000100
        08000000000000040000CE0E0000D80E00000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFF3C005B00
        2600B67FEC005D00300000000A000000010000000000000024005B0092000000
        6300F7BF300000000A0000000100000000000000A7006C843F00000050005B00
        2300F7BF0000000067000200E500F9BF7900F7BF8C000000F4005B002E00F7BF
        A7006C84000000006C0067470000000046000000CA0000002E000000EF000000
        3F002701000067473F002701D000FA3B0F000400000000000000F91AB6000000
        0000010000000A000000FA3B1000000000000000BC00D379FF006747D000413C
        0F00FFFF67000000000067473F000000F40000000300F91AB6000E0FD7000000
        0000000001000A0030003F01000000000000EF163C008519CF00010000000000
        000001000A00CB0CD700A71ACF0008003F005B0010000000F200F6BF00005B00
        6000FBBFFF00FFFF2800300800005B000000000001000000000000006800DE17
        0000000000000000000001000A00747F0200000000000000000000000000FFFF
        FF0000000100EF168C004F55CF0000000000FFFF5900B67F14005B0094005B00
        0700B77FFF00FFFFA0005B00E200B67F14005B00AC005B00C200B77FFF00FFFF
        B8005B00B000B67F14005B00C4005B003500B77FFF00FFFFD0005B0061004100
        14005B00DC005B006E004100FF00FFFFE8005B00C100410014005B00F4005B00
        DC004100FF00FFFF00005B001800410014005B00F4005B0025004100FF00FFFF
        00005B009C0041001100000001000000000000009800B97F0100000000000000
        0000000000000000F700D13F010000000000000000000000F000248000000000
        0000000005000000000000000000000000000000000000004C00000030000000
        00000000A4005D0000000000050000000300000040005D0004000000B4005B00
        400000000000000064005D002600080013001B00A4005D0000000000F200B77F
        0000000000000000C800BA7F00000000000000007000696E7400722E62007000
        74000200DA003103D700000017001600950012017400020036000887D3000F17
        00001700160095F01200300830001201950000000000160000000000020069C3
        0000060018000F17D600F7BF3700A83900002833000024875000170153002833
        01002F016600E14A170064132F00A83900002833000066875B004E875B000000
        00000100A400010000002833000057022F00F7000000C09D6600648700000C00
        00002C33F700504E8700400000005702BF000000C000C0B0000090A67000A62B
        200002002E0051317F0020002E009F059E00304FC8005D00A8000000AA00507F
        1700537FA800297976006E9F6E009F05EC00AC114F00420C9600000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000808080808
        0808080808080808080808080808080808080808000000000000000008080808
        0808080808080808080808080808080808080808080000000000000000080808
        0808080808080808080808080808080808080808080800000000000000000000
        0000000000000000000000000000000000000000080808000000000F08070707
        0707070707070707070707070707070707070700000808080000000F08070707
        0707070707070707070707070707070707070700080008080800000F08000000
        0707000000070707070707070700070700070700080800080808000F08000000
        0707070707070707070707070700000000070700080808000808000F08000000
        0707000000070707070707070700070700070700080808080000000F08000000
        0808080808080808080808080808080808080800080008080800000F0F0F0F0F
        0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F00080000080800000000000000
        000000000000000000000000000000000000000008080000080000000F070707
        07070707070707070707070707070707070707000008000008000000000F0700
        0000000000000000000000000000000000000707000008000800000000000F07
        000800000F0F0F0F0F0F0F0F0F0F0F0F0F00000707000008080000000000000F
        070008000F000000000000000F000F000F000800070700000800000000000000
        0F0700000F0F0F0F0F0F0F0F0F0F0F0F0F000000000707000000000000000000
        000F07000F0000000F00000F000000000F000707070707070000000000000000
        000000000F0F0F0F0F0F0F0F0F0F0F0F0F000000000000000000000000000000
        000000000F00000F00000000000F00000F000000000000000000000000000000
        000000000F0F0F0F0F0F0F0F0F0F0F0F0F000000000000000000000000000000
        000000000F0000000000000F00000F000F000000000000000000000000000000
        000000000F0F0F0F0F0F0F0F0F0F0F0F0F000000000000000000000000000000
        000000000F0F0F0F0F0F0F0F0F0F0F0F0F000000000000000000000000000000
        000000000F0F0F000000000000000F0F0F000000000000000000000000000000
        000000000F0F0F0F0F0F0F0F0F0F0F0F0F000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Arial'
      HotTrackFont.Style = []
    end
    object FECNAC: TMaskEdit
      Left = 233
      Top = 28
      Width = 101
      Height = 24
      EditMask = '!99/99/9999;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 2
      Text = '  /  /    '
      OnExit = FECNACExit
      OnKeyPress = FECNACKeyPress
    end
    object E5: TEdit
      Left = 234
      Top = 94
      Width = 100
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 8
      ParentFont = False
      TabOrder = 3
      Text = '0000.00'
      OnExit = E5Exit
      OnKeyPress = E5KeyPress
    end
    object Grupotarje: TGroupBox
      Left = 80
      Top = 199
      Width = 411
      Height = 113
      Caption = 'Tarjetas de Cr'#233'ditos '
      TabOrder = 4
      object Label47: TLabel
        Left = 5
        Top = 18
        Width = 56
        Height = 13
        Caption = 'Seleccione:'
      end
      object Label48: TLabel
        Left = 126
        Top = 66
        Width = 63
        Height = 13
        Caption = 'N'#176' Comprob.:'
      end
      object Label49: TLabel
        Left = 8
        Top = 68
        Width = 51
        Height = 13
        Caption = 'N'#176' Cuotas:'
      end
      object Label50: TLabel
        Left = 25
        Top = 91
        Width = 33
        Height = 13
        Caption = 'Fecha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label52: TLabel
        Left = 28
        Top = 44
        Width = 32
        Height = 13
        Caption = 'Titular:'
      end
      object CUOTA: TComboBox
        Left = 200
        Top = 61
        Width = 61
        Height = 21
        CharCase = ecUpperCase
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 2
        Text = '1'
        Visible = False
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6')
      end
      object TARJETA: TComboBox
        Left = 64
        Top = 14
        Width = 217
        Height = 21
        CharCase = ecUpperCase
        ItemHeight = 13
        TabOrder = 0
        Text = 'NARANJA ZETA'
        OnExit = TARJETAExit
        OnKeyPress = TARJETAKeyPress
      end
      object NROCB: TJvValidateEdit
        Left = 192
        Top = 60
        Width = 85
        Height = 21
        CriticalPoints.MaxValueIncluded = False
        CriticalPoints.MinValueIncluded = False
        EditText = '0000'
        TabOrder = 1
        OnExit = NROCBExit
        OnKeyPress = NROCBKeyPress
      end
      object NroCuota: TEdit
        Left = 64
        Top = 60
        Width = 49
        Height = 21
        TabOrder = 3
        Text = '00'
        OnExit = NroCuotaExit
        OnKeyPress = NroCuotaKeyPress
      end
      object ftarje: TMaskEdit
        Left = 64
        Top = 83
        Width = 67
        Height = 21
        EditMask = '!99/99/9999;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 4
        Text = '  /  /    '
        OnExit = ftarjeExit
        OnKeyPress = ftarjeKeyPress
      end
      object tittarje: TEdit
        Left = 64
        Top = 37
        Width = 235
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 5
        OnExit = tittarjeExit
        OnKeyPress = tittarjeKeyPress
      end
    end
    object tpopago: TComboBox
      Left = 234
      Top = 60
      Width = 236
      Height = 26
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemHeight = 18
      ParentFont = False
      TabOrder = 5
      OnExit = tpopagoExit
      OnKeyPress = tpopagoKeyPress
      Items.Strings = (
        '')
    end
    object GrupoCheq: TGroupBox
      Left = 80
      Top = 201
      Width = 412
      Height = 113
      Caption = 'Pagos con Cheques'
      TabOrder = 6
      object Label41: TLabel
        Left = 13
        Top = 21
        Width = 34
        Height = 13
        Caption = 'Banco:'
      end
      object LB12: TLabel
        Left = 18
        Top = 69
        Width = 55
        Height = 13
        Caption = 'N'#186' Cheque:'
      end
      object LB3: TLabel
        Left = 107
        Top = 63
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
      object LB5: TLabel
        Left = 249
        Top = 67
        Width = 73
        Height = 13
        Caption = 'Fecha Cheque:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label45: TLabel
        Left = 12
        Top = 93
        Width = 64
        Height = 13
        Caption = 'Fecha Cobro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label46: TLabel
        Left = 16
        Top = 46
        Width = 32
        Height = 13
        Caption = 'Titular:'
      end
      object elbanco: TComboBox
        Left = 52
        Top = 15
        Width = 243
        Height = 21
        CharCase = ecUpperCase
        ItemHeight = 13
        TabOrder = 0
        Text = 'NARANJA ZETA'
        OnExit = elbancoExit
        OnKeyPress = elbancoKeyPress
      end
      object E1: TEdit
        Left = 77
        Top = 62
        Width = 24
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 2
        ParentFont = False
        TabOrder = 1
        Text = 'A'
        OnExit = E1Exit
        OnKeyPress = E1KeyPress
      end
      object E2: TEdit
        Left = 122
        Top = 62
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
        TabOrder = 2
        Text = '000000000000'
        OnExit = E2Exit
        OnKeyPress = E2KeyPress
      end
      object Fcheque: TMaskEdit
        Left = 324
        Top = 60
        Width = 67
        Height = 21
        EditMask = '!99/99/9999;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 3
        Text = '  /  /    '
        Visible = False
        OnExit = FchequeExit
        OnKeyPress = FchequeKeyPress
      end
      object fpagocheque: TMaskEdit
        Left = 77
        Top = 86
        Width = 67
        Height = 21
        EditMask = '!99/99/9999;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 4
        Text = '  /  /    '
        OnExit = fpagochequeExit
        OnKeyPress = fpagochequeKeyPress
      end
      object titcheq: TEdit
        Left = 52
        Top = 38
        Width = 265
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 5
        OnExit = titcheqExit
        OnKeyPress = titcheqKeyPress
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 350
      Width = 659
      Height = 80
      Align = alBottom
      BiDiMode = bdLeftToRight
      Color = clYellow
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 7
      object Label21: TLabel
        Left = 10
        Top = 19
        Width = 134
        Height = 16
        Caption = 'Tipo Comprobante:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label22: TLabel
        Left = 218
        Top = 49
        Width = 82
        Height = 16
        Caption = 'Nro Factura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label23: TLabel
        Left = 56
        Top = 49
        Width = 88
        Height = 16
        Caption = 'Punto Venta:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object TPOTALON: TComboBox
        Left = 148
        Top = 10
        Width = 175
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemHeight = 16
        ParentFont = False
        TabOrder = 0
        OnExit = TPOTALONExit
        OnKeyPress = TPOTALONKeyPress
      end
      object actu: TBitBtn
        Left = 472
        Top = 24
        Width = 165
        Height = 43
        Caption = 'Actualizar Comprobante'
        TabOrder = 1
        OnClick = actuClick
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
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000494949FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF0000DBDB0049494949FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF0000DBDBFFDB00494949494949FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF0000DBDBFFFFFFDB0049494949494949FFFFFFFFFFFFFF
          FFFFFFFFFFFFFF0000DBDBFFFFB6B6FFDB0049494949494949FFFFFFFFFFFFFF
          FFFFFFFFFF0000DBDBFFFFB6B6FFFFFFDB00494949494949FFFFFFFFFFFFFFFF
          FFFFFF0000DBDBFFFFB6B6FFFFFFFFFFDB0049494949FFFFFFFFFFFFFFFFFFFF
          FF0000DBDBFFFFFFFFFFFFFFFFFFFFFFDB004949FFFFFFFFFFFFFFFFFFFFFF00
          00DBDBFFFFFFFFFFFFFFFFFFFFFFFFFFDB00FFFFFFFFFFFFFFFFFFFFFF0000DB
          DBFFFFFFFFFFFFFFFFFFFFFFFFDBDBDBDB00FFFFFFFFFFFFFFFFFF0000DBDBB6
          628EFFFFFFFFFFFFFFFFFFDBDBDBDBDBDB00FFFFFFFFFFFFFFFF00DBDBDB6662
          66DBFFFFFFFFFFFFDBDBDBDBDBDBDBDBDB00FFFFFFFFFFFFFFFF00DB668222DB
          DBFFFFFFFFFFFFFFDBDBDBDB8F8EDBDBDB00FFFFFFFFFFFFFFFF00DB22DB8266
          62DBFFFFFFFFFFFFDBDB8E8EFFFFFFFFDB00FFFFFFFFFFFFFFFF00DB66DB2266
          6E8EFFFFFFFFDBDB8E8EDBDBFFFFFFFFDB00FFFFFFFFFFFFFFFF00DB66DB2266
          668EFFFFDBDB8E8FDBDBDBDBFFFFFFFFDB00FFFFFFFFFFFFFFFF00DBFFFF8E82
          2266FFFF8E8EFFFFFFDBDBFFFFFFFFFFDB00FFFFFFFFFFFFFFFF00DBFFFF22DB
          DB66FFFFFFFFFFFFFFFFFFFFFFFFFFFFDB00FFFFFFFFFFFFFFFF00DBFFDB62DB
          DB62FFFFFFFFFFFFFFFFFFFFFFFFFFFFDB00FFFFFFFFFFFFFFFF00DBFFFF6621
          666DFF8FFFFFFFFFFFFFFFFFFFFFFFDBDB00FFFFFFFFFFFFFFFF00DBDB626685
          CCECDBDBFFFFFFFFFFFFFFFFFFDBDBDBB600FFFFFFFFFFFFFFFF00D366CCECEC
          ECECDB8EFFFFFFFFFFFFFFDBDBDBB60000FFFFFFFFFFFFFFFFFF00DBECECECEC
          DBECDBDBFFFFFFFFFFDBDBDBB60000FFFFFFFFFFFFFFFFFFFFFF00DBECDBF0F1
          FBF1DB8FFFFFFFDBDBDBB60000FFFFFFFFFFFFFFFFFFFFFFFFFF00DBECFBF1F1
          F1ECDBDBFFDBDBDBB60000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00DBFBFFFAEC
          ECFADBDBDBDBB60000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00DBFFFFF1F0
          F0F1DBDBB60000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00DBFFFFF1DB
          DBDBB60000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00DBFFDBDBDB
          B60000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00DBDBDBB600
          00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00DBB60000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      object PV: TComboBox
        Left = 148
        Top = 44
        Width = 51
        Height = 21
        CharCase = ecUpperCase
        ItemHeight = 13
        TabOrder = 2
        Text = 
          '                                                                ' +
          '                                                                ' +
          '                         '
        OnExit = PVExit
        OnKeyPress = PVKeyPress
      end
      object elcomprob: TEdit
        Left = 304
        Top = 44
        Width = 97
        Height = 21
        MaxLength = 8
        TabOrder = 3
        OnChange = elcomprobChange
        OnExit = elcomprobExit
        OnKeyPress = elcomprobKeyPress
      end
    end
    object laobserva: TEdit
      Left = 78
      Top = 321
      Width = 571
      Height = 21
      TabOrder = 8
      OnKeyPress = laobservaKeyPress
    end
    object Edit2: TEdit
      Left = 235
      Top = 169
      Width = 37
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      Text = '0'
      OnExit = Edit6Exit
      OnKeyPress = Edit6KeyPress
    end
    object VALCUOTA: TEdit
      Left = 382
      Top = 170
      Width = 94
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
      Text = '0'
    end
    object entrega: TEdit
      Left = 234
      Top = 130
      Width = 100
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 8
      ParentFont = False
      TabOrder = 11
      Text = '0000.00'
    end
  end
  object DataSource0: TDataSource
    Left = 8
    Top = 26
  end
  object DataSource2: TDataSource
    Left = 68
    Top = 6
  end
  object DataSource3: TDataSource
    Left = 104
    Top = 4
  end
  object DataSource6: TDataSource
    Left = 204
    Top = 2
  end
  object DataSource10: TDataSource
    Left = 238
    Top = 4
  end
  object ImageList1: TImageList
    Left = 568
    Top = 135
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008000000080000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8000000080008080800000000000000000000000000000000000000000000000
      0000000080000000800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000800000008000000080000000800000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8000000080000000800080808000000000000000000000000000000000000000
      8000000080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080000000800000008000000080000000800000008000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000080000000800000008000808080000000000000000000000080000000
      8000000080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008000000080000000800000000000000000000000800000008000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000800000008000000080008080800000008000000080000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      0000008000000080000000000000000000000000000000800000008000000080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000008000000080000000800000008000000080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      0000008000000000000000000000000000000000000000000000008000000080
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000080000000800000008000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008000000080
      0000008000000000000000000000000000000000000000000000000000000000
      0000000000000000000000008000000080000000800000008000000080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      0000008000008080800000000000000000000000000000000000000000000000
      0000000000000000800000008000000080000000000000008000000080000000
      8000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      0000008000000080000000000000000000000000000000000000000000000000
      0000000080000000800000008000000000000000000000000000000080000000
      8000000080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008000000080000000000000000000000000000000000000000000000000
      8000000080000000800000000000000000000000000000000000000000000000
      8000000080000000800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008000000080000000000000000000000000000000000000000000000000
      8000000080000000000000000000000000000000000000000000000000000000
      0000000080000000800000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFFFFF00000000
      FFFFFFFF00000000FE3FE3F300000000FC3FE1E300000000F81FF0C700000000
      F18FF80F00000000E38FFC1F00000000E7C7FE1F00000000FFC7FC0F00000000
      FFE3F88700000000FFE3F1C300000000FFF3E3E300000000FFF3E7F300000000
      FFFFFFFF00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object DataSource13: TDataSource
    Left = 236
    Top = 38
  end
  object DataSource14: TDataSource
    Left = 274
    Top = 38
  end
  object T8: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 628
    Top = 27
  end
  object TP: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 660
    Top = 26
  end
  object RvORDEN: TRvSystem
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
    OnPrint = RvORDENPrint
    Left = 832
    Top = 30
  end
  object gerimp: TRvSystem
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
    OnPrint = gerimpPrint
    OnAfterPrint = gerimpAfterPrint
    Left = 672
    Top = 228
  end
  object RvSoli: TRvSystem
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
    OnPrint = RvSoliPrint
    Left = 672
    Top = 141
  end
end

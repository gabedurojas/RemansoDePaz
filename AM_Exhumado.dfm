object Inserta_Exhum: TInserta_Exhum
  Left = 203
  Top = 5
  AutoScroll = False
  Caption = 'Carga de Exhumaciones '
  ClientHeight = 639
  ClientWidth = 925
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
    TabOrder = 3
  end
  object Barra1: TStatusBar
    Left = 0
    Top = 620
    Width = 925
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
    Top = 33
    Width = 925
    Height = 587
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
        917
        558)
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
        Width = 912
        Height = 59
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
        Left = 686
        Top = 46
        Width = 113
        Height = 39
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
        Top = 321
        Width = 917
        Height = 237
        Align = alBottom
        Caption = 'Detalle de Inhumados de la Accion Seleccionada'
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
          Top = 15
          Width = 913
          Height = 220
          Align = alClient
          DataSource = DataSource3
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          PopupMenu = PopupMenu1
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
        Top = 169
        Width = 917
        Height = 152
        Align = alBottom
        Caption = 'Titulares de la Parcela'
        TabOrder = 13
        object JvDBGrid2: TJvDBGrid
          Left = 2
          Top = 15
          Width = 913
          Height = 135
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
        Left = 855
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
    end
    object TabSheet3: TTabSheet
      Caption = 'Parcelas e Inhumados'
      ImageIndex = 2
      object PC2: TJvgPageControl
        Left = 0
        Top = 0
        Width = 917
        Height = 558
        ActivePage = TabSheet4
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
        object TabSheet4: TTabSheet
          Caption = 'Titulares Historicos'
          ImageIndex = 4
          object JvDBGrid9: TJvDBGrid
            Left = 0
            Top = 0
            Width = 890
            Height = 491
            Align = alClient
            DataSource = DataSource10
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
            AlternateRowColor = clWindow
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            EditControls = <>
            RowsHeight = 18
            TitleRowHeight = 19
          end
        end
        object TabSheet9: TTabSheet
          Caption = 'Titulares Activos'
          ImageIndex = 5
          object Splitter1: TSplitter
            Left = 0
            Top = 0
            Width = 909
            Height = 8
            Cursor = crVSplit
            Align = alTop
          end
          object PageControl1: TPageControl
            Left = 0
            Top = 8
            Width = 909
            Height = 522
            ActivePage = TabSheet5
            Align = alClient
            TabOrder = 0
            object TabSheet10: TTabSheet
              Caption = 'Datos Personales'
              object Label15: TLabel
                Left = 23
                Top = 7
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
              object Label7: TLabel
                Left = 214
                Top = 7
                Width = 49
                Height = 13
                Caption = 'Tipo DNI.:'
              end
              object Label13: TLabel
                Left = 393
                Top = 7
                Width = 37
                Height = 13
                Caption = 'N'#176' DNI:'
              end
              object Label6: TLabel
                Left = 574
                Top = 7
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
              object Label4: TLabel
                Left = 33
                Top = 30
                Width = 35
                Height = 13
                Caption = 'Cliente:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label11: TLabel
                Left = 468
                Top = 30
                Width = 25
                Height = 13
                Caption = 'Alias:'
              end
              object Label2: TLabel
                Left = 11
                Top = 54
                Width = 57
                Height = 13
                Caption = 'CUIT/CUIL:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label9: TLabel
                Left = 262
                Top = 54
                Width = 27
                Height = 13
                Caption = 'Sexo:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label10: TLabel
                Left = 507
                Top = 54
                Width = 41
                Height = 13
                Caption = 'Religi'#243'n:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label26: TLabel
                Left = 322
                Top = 79
                Width = 58
                Height = 13
                Caption = 'Estado Civil:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label12: TLabel
                Left = 3
                Top = 79
                Width = 65
                Height = 13
                Caption = 'Nacionalidad:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label1: TLabel
                Left = 21
                Top = 104
                Width = 47
                Height = 13
                Caption = 'Provincia:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label14: TLabel
                Left = 196
                Top = 104
                Width = 49
                Height = 13
                Caption = 'Localidad:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label16: TLabel
                Left = 498
                Top = 104
                Width = 30
                Height = 13
                Caption = 'Barrio:'
              end
              object Label3: TLabel
                Left = 23
                Top = 129
                Width = 45
                Height = 13
                Caption = 'Domicilio:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label5: TLabel
                Left = 11
                Top = 154
                Width = 57
                Height = 13
                Caption = 'C'#243'd. Postal:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label8: TLabel
                Left = 26
                Top = 180
                Width = 42
                Height = 13
                Caption = 'Cat. IVA:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label18: TLabel
                Left = 36
                Top = 204
                Width = 32
                Height = 13
                Caption = 'E-Mail:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label17: TLabel
                Left = 28
                Top = 228
                Width = 40
                Height = 13
                Caption = 'Observ.:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label19: TLabel
                Left = 25
                Top = 254
                Width = 43
                Height = 13
                Caption = 'Dir. Foto:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Image2: TImage
                Left = 599
                Top = 156
                Width = 135
                Height = 107
                Proportional = True
              end
              object D1: TDBEdit
                Left = 70
                Top = 3
                Width = 121
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 0
              end
              object D2: TDBEdit
                Left = 272
                Top = 3
                Width = 57
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 1
              end
              object D3: TDBEdit
                Left = 434
                Top = 3
                Width = 125
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 2
              end
              object D4: TDBEdit
                Left = 638
                Top = 3
                Width = 109
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 3
              end
              object D5: TDBEdit
                Left = 70
                Top = 26
                Width = 359
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 4
              end
              object D6: TDBEdit
                Left = 498
                Top = 26
                Width = 111
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 5
              end
              object D7: TDBEdit
                Left = 70
                Top = 50
                Width = 151
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 6
              end
              object D8: TDBEdit
                Left = 292
                Top = 51
                Width = 195
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 7
              end
              object D9: TDBEdit
                Left = 552
                Top = 49
                Width = 191
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 8
              end
              object D11: TDBEdit
                Left = 386
                Top = 75
                Width = 253
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 9
              end
              object D10: TDBEdit
                Left = 70
                Top = 75
                Width = 207
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 10
              end
              object D12: TDBEdit
                Left = 72
                Top = 100
                Width = 117
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 11
              end
              object D13: TDBEdit
                Left = 247
                Top = 100
                Width = 237
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 12
              end
              object D14: TDBEdit
                Left = 530
                Top = 100
                Width = 239
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 13
              end
              object D15: TDBEdit
                Left = 70
                Top = 125
                Width = 699
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 14
              end
              object D16: TDBEdit
                Left = 70
                Top = 150
                Width = 61
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 15
              end
              object D17: TDBEdit
                Left = 133
                Top = 150
                Width = 381
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 16
              end
              object D18: TDBEdit
                Left = 70
                Top = 176
                Width = 381
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 17
              end
              object D19: TDBEdit
                Left = 70
                Top = 200
                Width = 381
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 18
              end
              object D20: TDBEdit
                Left = 70
                Top = 224
                Width = 479
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 19
              end
              object D21: TDBEdit
                Left = 70
                Top = 250
                Width = 479
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 20
              end
            end
            object TabSheet2: TTabSheet
              Caption = 'TabSheet2'
              ImageIndex = 1
              object grilla5: TStringGrid
                Left = 0
                Top = 0
                Width = 882
                Height = 455
                Align = alClient
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
                TabOrder = 0
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
            end
          end
        end
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 925
    Height = 33
    ButtonHeight = 27
    Caption = 'ToolBar1'
    Color = clGradientInactiveCaption
    EdgeBorders = [ebLeft, ebTop, ebBottom]
    EdgeInner = esLowered
    ParentColor = False
    TabOrder = 1
    DesignSize = (
      923
      29)
    object ToolButton4: TToolButton
      Left = 0
      Top = 2
      Width = 721
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object ToolButton1: TToolButton
      Left = 721
      Top = 2
      Width = 8
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object Imprime: TJvBitBtn
      Left = 729
      Top = 2
      Width = 74
      Height = 27
      Anchors = [akTop, akRight]
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Visible = False
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
      HotTrackFont.Name = 'Arial'
      HotTrackFont.Style = []
    end
    object ToolButton2: TToolButton
      Left = 803
      Top = 2
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object ToolButton3: TToolButton
      Left = 811
      Top = 2
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object sale: TJvBitBtn
      Left = 819
      Top = 2
      Width = 75
      Height = 27
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
  object Panel2: TPanel
    Left = 270
    Top = 60
    Width = 651
    Height = 559
    TabOrder = 4
    Visible = False
    object Label37: TLabel
      Left = 16
      Top = 73
      Width = 94
      Height = 13
      Caption = 'Fecha Exhumacion:'
    end
    object Label20: TLabel
      Left = 18
      Top = 249
      Width = 60
      Height = 13
      Caption = 'Observacion'
    end
    object Label21: TLabel
      Left = 14
      Top = 281
      Width = 80
      Height = 13
      Caption = 'Destino Servicio:'
    end
    object Label22: TLabel
      Left = 16
      Top = 16
      Width = 63
      Height = 13
      Caption = 'Nro ACCION:'
    end
    object Label23: TLabel
      Left = 210
      Top = 16
      Width = 47
      Height = 13
      Caption = 'SECTOR:'
    end
    object Label27: TLabel
      Left = 365
      Top = 16
      Width = 52
      Height = 13
      Caption = 'PARCELA:'
    end
    object Label28: TLabel
      Left = 16
      Top = 43
      Width = 90
      Height = 13
      Caption = 'Nombre EXTINTO:'
    end
    object Label29: TLabel
      Left = 85
      Top = 13
      Width = 56
      Height = 16
      Caption = 'Label29'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Label32: TLabel
      Left = 260
      Top = 13
      Width = 56
      Height = 16
      Caption = 'Label29'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Label33: TLabel
      Left = 422
      Top = 13
      Width = 56
      Height = 16
      Caption = 'Label29'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Label34: TLabel
      Left = 114
      Top = 39
      Width = 56
      Height = 16
      Caption = 'Label29'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label35: TLabel
      Left = 18
      Top = 104
      Width = 63
      Height = 13
      Caption = 'Rep. LEGAL:'
    end
    object Label36: TLabel
      Left = 16
      Top = 163
      Width = 59
      Height = 13
      Caption = 'TESTIGO 1:'
    end
    object Label38: TLabel
      Left = 16
      Top = 195
      Width = 59
      Height = 13
      Caption = 'TESTIGO 2:'
    end
    object Label40: TLabel
      Left = 18
      Top = 133
      Width = 111
      Height = 13
      Caption = 'Encargado Cementerio:'
    end
    object Label42: TLabel
      Left = 241
      Top = 72
      Width = 87
      Height = 13
      Caption = 'Hora Exhumacion:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label43: TLabel
      Left = 525
      Top = 16
      Width = 34
      Height = 13
      Caption = 'NIVEL:'
    end
    object Label44: TLabel
      Left = 568
      Top = 13
      Width = 56
      Height = 16
      Caption = 'Label29'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Label31: TLabel
      Left = 42
      Top = 311
      Width = 52
      Height = 13
      Caption = 'Tipo Pago:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object LB7: TLabel
      Left = 26
      Top = 350
      Width = 68
      Height = 20
      Caption = 'Importe:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label51: TLabel
      Left = 18
      Top = 223
      Width = 112
      Height = 13
      Caption = 'ACTA Exhumacion Nro:'
    end
    object Label78: TLabel
      Left = 20
      Top = 385
      Width = 73
      Height = 16
      Caption = 'N'#176' Cuotas:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label80: TLabel
      Left = 152
      Top = 389
      Width = 86
      Height = 16
      Caption = 'Valor Cuota:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object BitBtn1: TBitBtn
      Left = 388
      Top = 309
      Width = 119
      Height = 38
      Caption = 'CONFIRMAR'
      TabOrder = 10
      OnClick = BitBtn1Click
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7
        FDFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1F33BA5
        7073A38AFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6EB15AA6300C6
        5300C74B57A17CFFEDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2C9DF00AC5400BF50F3FF
        FAEEFBF500BD3E33A16AFFE3F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDBED000AC4608BE5AD7FEED75F2
        AE9CF9CCFFFFFF00BA4210A259FFD8EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8B3C000AB3B15BB61B5FCD957EA9483F1
        B69AF6C8A9FDD8FFFFFF02B74A00A248F2CBE2FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFADA9AC00A73123BD6B89F8BC32E37861EB9C78EF
        AD8DF3BE9DF7CB9CFACEF6FFFF15B65400A138DDBFD2FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF92A09800A3282FC0764FF09507DB5C3BE37F52E89069EC
        A079F0AE87F2B88EF3BF7FF2B6D0FFEB21B761009E2AC7B4C1FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFCFF7C9983009E2131C3792BE67B00D54C07DB5E29E07241E58354E8
        9164EA9E6EEEA674EEAA73EEAA60EB9BA4FFCE31B96E00991EAEAAADFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFF4FF59926B00961A27C77B15DB6200D04B00D65500DA590DDC622AE0723DE4
        814AE68A54E8925AE99458E99553E8903DE48069F6A746BE7A00931492A097FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAFF
        368D5200901813CC7808D14F00CA4700CF4F00D35300D55700DA5803DB5D1BDF
        6A2BE07334E37B38E37D3AE37E35E27B2CE17412DD6326EB794BC481008C0B7C
        9781FFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECFC178537
        00891700CD7000C64000C54300C94900CC4900CD4600D1480CD65C1DDB662BE0
        7132E17837E17935E2782AE07211DD6400D95300D85300D65112E16242C98200
        8505598F66FFF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF86C297007E0A
        00CA6800BB3300BF3D00BF3800C33C34D16659DB8373E1946BE2927DE69F2FDB
        6D53E3876DE69764E59267E5936DE5976DE69549E08021D66200CD4000D44D30
        CF7F008004368649FFECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FBA9700BE4B
        00B22A00B62F00B83156D27988DD9D78DD9574DE9370DE938BE4A619D45F0DD0
        4D00CD3B53E18581E7A371E49871E59872E39875E3977DE39E80E29E34D26800
        C63416D277007A05167E2DFEE2F9FFFFFFFFFFFFFFFFFFFFFFFF81D39D00A40D
        00AE2345C5619CDFAA85DA9A81DB9981DD9A81DF9D9FE6B105CB4C06C73DFFFF
        FFFFFEFF00C62C45DA7999E9B180E4A081E5A181E3A081E39F81E19E91E2A86A
        D88800BB2300D06B007605057613F0D5EDFFFFFFFFFFFFFFFFFFFFFFFF22B441
        0DAF2DBDE7C58EDAA090DDA390DEA391DFA6ABE7BC00BF3216C750FFFFFFFFFF
        FFFFFFFFFFFFFF03C5382FD265B0EBC18EE3A890E5AA90E3A990E2A78FE1A79A
        E2AC88DC9E00B31E00CA5B007305006E00DEC8DDFFFFFFFFFFFFFFFFFFFFFFFF
        3CBC5500A611BDE8C79FDFAEA2E2B2B2E7C000B21930CA62FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF12C74B10C84AC3EECF9DE5B19EE4B19EE5B19EE4B09E
        E3AFA4E3B3AAE3B600AE2100C24A007205006700C6B9C5FFFFFFFFFFFFFFFFFF
        FFFFFF73CC81009B00C8EBD1B5E6C100A50060D07EFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF34CB6200BB2DD1F1DAAEE7BDADE7BCADE5BBAD
        E5BAADE4B9B0E4BBC7EACE07A91F00B836007207005C00D1D3D1FFFFFFFFFFFF
        FFFFFFFFFFFFABDBAE009B00009D009BDBA6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF68D48600AD0DD9F2E0BFEAC9BBE8C5BC
        E9C6BCE8C4BCE6C4BDE6C5DAEFDD11A72200AC22006D0088B585FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFBEE7C7BAE4BDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1DFAD009F00DCF2E1D2F0D8CA
        ECD1CAEBD1CAEAD0CAEBD0CAE9CEF4F7F429AC39009F098ABC92FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCEBD2009300D3EFDAE7
        F5EAD7EFDBD7F0DBD7EFDCD6EED9E9F5EBE0F0E2007700BEE4BFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2F6E9008A00C2
        E6C6FFFEFFE5F3E7E5F4E7FFFFFFB3DDB4007000CFE5CDFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4FBF800
        84009ED8A1FFFFFFFFFFFF8BCC8E007100DEF2E2FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF00850083CB886AC070007700F0F9F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF048F04008100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object BitBtn2: TBitBtn
      Left = 518
      Top = 309
      Width = 119
      Height = 38
      Caption = 'CANCELAR'
      TabOrder = 11
      OnClick = BitBtn2Click
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFEFFFFFAFFFFFAFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7EDD2D2BCAAAA
        8C8F8F9483839B7C7CA27878A179799D8C8C94B5B58DDADABAFCFCEDFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6CC9B9B8B5D5DAC5656DD6868
        FF7D7DFF8080FF6D6DFF5B5BFF4848FF3535FF1B1BFF1919DF3939AC9C9C8BEA
        EAC9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF7F7DE94948B2E2ECA2A2AFF4545FF5151FF6060
        FF8585FF9595FF9898FF8E8EFF7676FF5252FF1212FF0000FF0000FF0000FF10
        10CC8E8E8DF7F7DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFDDDDAB2B2BB40000FF1818FF3434FF8A8AFFBCBCFFD3D3
        FFCDCDFFCFCFFFD4D4FFDADAFFE1E1FFEAEAFFF9F9FFCBCBFF7575FF0000F900
        00F70000FF2727B2DADAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC7C7A00000E40000FF0909FF8B8BFFB5B5FF9292FF8C8CFF9898
        FFA1A1FFAAAAFFB0B0FFB4B4FFB5B5FFB5B5FFAFAFFFAAAAFFB4B4FFDEDEFF99
        99FC0000ED0000EF0000D7BEBE9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFCBCBA60000E80000F94343FEA4A4FF6969FF6E6EFF7979FF8181FF9191
        FF9E9EFFA6A6FFADADFFB1B1FFAFAFFFABABFF9F9FFF9898FF9595FF8989FF89
        89FFC7C7FF5656F20000E00000D9C4C4A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        F2F2C30000D70000F06969FE6C6CFF4A4AFF6060FF6363FF8989FFAFAFFF9E9E
        C9EEEEEFFEFEFEFFFFF9FFFFF9FAFAF9EDEDFADADAF9AEAEFC8E8EFF7979FF79
        79FF6868FF8989FF8888FB0000D80000C8EDEDC1FFFFFFFFFFFFFFFFFFFFFFF6
        4444B30000EC5D5DFD4848FF3D3DFF4D4DFF5353FF7575FF9A9AFF0000FF0B0B
        FF808094FFFFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE7E7F79C9CFC6D
        6DFF6363FF5A5AFF6161FF7E7EFB0000D13838ABFFFFF4FFFFFFFFFFFFCDCDB9
        0000E23737F53A3AFF2C2CFF3939FF4343FF4C4CFF5050FF6666FF9B9BFF0000
        FF0000FF5353A1F7F7CEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9B2
        B2F56060FF4D4DFF4747FF5656FF5454F00000CBC2C2B7FFFFFFFFFFFD4444B8
        0000E53F3FFF1919FF2727FF3838FF3232FF4141FF4949FF4D4DFF5757FFA3A3
        FF0606FC0000FF2424BEEAEAB5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFDAFAFF04B4BFF3D3DFF3131FF6161FF0707D43A3AADFFFFFDFFFFE20000C8
        2626FC0C0CFF1616FF1F1FFF5151FF5353FF2D2DFF3E3EFF4545FF4949FF4848
        FF9C9CFF1616F70000FF0505D9D3D39FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFC8282F33131FF2F2FFF1F1FFF4E4EFD0000B2FFFFE1D6D6D30000D8
        0F0FFF0808FF0B0BFF3838FF4141F02323FB5353FF2B2BFF3838FF3D3DFF4343
        FF3B3BFF8888FF3636F60000F30000E8B3B393FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFE93939FF1E1EFF1A1AFF3535FF0000C9CBCBD1ABABCD0000E9
        0000FF0101FF0707FF0909FFE1E1E6FFFFFA2929F94646FF2929FF3131FF3636
        FF3939FF3232FF6666FF5252F70000E80000EF90908EFFFFF4FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFF95757E11717FF1313FF1212FF0707DF9B9BCB9393CB0000F3
        0000FF0000FF0505FF1616F8FFFFEEFFFFFFFFFFFA5A5AF63232FF2727FF2626
        FF2828FF2B2BFF2626FF4242FF5959FA0000DD0000F06C6C91FCFCE2FFFFFFFF
        FFFFFFFFFFFFFFFE4747CC1C1CFF0A0AFF0202FF0000F49494C79999C90000FC
        0000FF0000FF0000FF4848DFFFFFF5FFFFFFFFFFFFFFFFFD9797F21F1FFF2C2C
        FF4444FF3B3BFF3E3EFF3131FF2F2FFF4848FD0000D70000E942429DF5F5CBFF
        FFFFFFFFFFFFFFFD3232B61717FF0000FF0000FF0000FE9696C59696C80000FF
        0000FF0000FF0000FF1F1FE0FFFFDFFFFFFFFFFFFFFFFFFFFFFFFFD4D4F11111
        FF6969FFABABFF9696FF9A9AFF9D9DFF9898FF3737FF0101D20000DB1616ABE2
        E2B6FFFFFFFFFFEB0000B30606FF0000FF0000FF0000FF9595C5B3B3D10000F5
        0000FF2727FF3232FF1212FAADADAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7
        F31B1BFD3434FFADADFF8F8FFF9090FF9191FFA4A4FF2D2DFF0000D50000CB01
        01B5D2D2AAC3C3B60000CA0000FF0000FF0000FF0000FAA4A4CEE5E5E10000E4
        9E9EFFAFAFFF6D6DFF3535FF1212A1FFFFE6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF64444FB0505FFB4B4FF9595FF9595FF9494FFB1B1FF2B2BFF0000DD00
        00BA0000BC22229C0000DA1F1FFF0000FF0000FF0000E8D9D9DDFFFFF90000CE
        7272FFA1A1FFB7B7FF0000FF2525DB727293FFFFFBFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF87272F80000FFB2B2FF9F9FFF9C9CFF9B9BFFBABAFF5050FF00
        00EC0000B70000BA0000FAC9C9FF9898FF1414FF0000CEFFFFF8FFFFFF5757BE
        1B1BFFBBBBFFAEAEFF4242FF6464FF0000BC85858EFFFFEFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFCA0A0F50000FFABABFFAAAAFFA3A3FFA2A2FFB9B9FF7C
        7CFF0000F50000CB4444FFB1B1FFBCBCFF3434FF5050BEFFFFFFFFFFFFFFFFEE
        0000DBB0B0FFACACFFC9C9FF0000FF8C8CF30000BD4E4E90DEDEB4FFFFFCFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFD3D3F60000FF9494FFB9B9FFAAAAFFAAAAFFB9
        B9FF9A9AFF0000FFC8C8FFACACFFB6B6FF0000DEF7F7E9FFFFFFFFFFFFFFFFFF
        6060C20000FFD9D9FFB3B3FFB2B2FF0000FFA4A4F20000BC0000B55D5D8EC4C4
        9BE6E6CDF7F7E9FEFEF4FFFFF5FFFFEADCDCBF1717FF7F7FFFC9C9FFB0B0FFB1
        B1FFB6B6FFCACAFFB0B0FFD9D9FF0505FF5151C1FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF0000BE4E4EFFD7D7FFBFBFFFB6B6FF0000FF9C9CFE4545CA0000BE0000
        C30A0AA53535974141924141913636970E0EA40808BB2E2EFC6161FFD7D7FFB8
        B8FFB9B9FFB7B7FFD4D4FF5B5BFF0000BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFA0000C16E6EFFE2E2FFC3C3FFDADAFF1E1EFF2828FF9090F98888
        D81B1BC60000BA0000BD0000BD0000BA1010C54646D73737F10000FF6464FFCB
        CBFFBEBEFFDFDFFF7C7CFF0000C3FFFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFA0000C23535FFF5F5FFCCCCFFE0E0FFB7B7FF3C3CFF0000
        FF3939FF7171FF6262FF5757FF5252FF1D1DFF0000FF3F3FFFB6B6FFDCDCFFCA
        CAFFF3F3FF4646FF0000C2FFFFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF4A4AC80000E4B0B0FFF3F3FFD9D9FFDEDEFFF4F4
        FFB9B9FF8787FF7070FF7272FF8989FFB8B8FFF5F5FFDFDFFFD8D8FFF1F1FFB5
        B5FF0000E63F3FC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7ED1A1ACB0000E28787FFF6F6FFF2F2
        FFE8E8FFE7E7FFE8E8FFE8E8FFE7E7FFE9E9FFF2F2FFF7F7FF8E8EFF0000E313
        13CAE0E0EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F36565D10000D40000
        D85050ED6D6DF97D7DFF7E7EFF6D6DF95050ED0000D80000D55F5FD0F3F3F2FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFD3D3EBA5A5E18383D98181D9A4A4E0CECEEAFFFFFEFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object Edit2: TEdit
      Left = 100
      Top = 245
      Width = 539
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 150
      ParentFont = False
      TabOrder = 7
      OnExit = Edit2Exit
      OnKeyPress = Edit2KeyPress
    end
    object FECNAC: TMaskEdit
      Left = 116
      Top = 63
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
      TabOrder = 0
      Text = '  /  /    '
      OnExit = FECNACExit
      OnKeyPress = FECNACKeyPress
    end
    object Edit3: TEdit
      Left = 100
      Top = 273
      Width = 535
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 150
      ParentFont = False
      TabOrder = 8
      OnExit = Edit3Exit
      OnKeyPress = Edit3KeyPress
    end
    object JvBitBtn0: TJvBitBtn
      Left = 85
      Top = 95
      Width = 19
      Height = 23
      TabOrder = 2
      OnClick = JvBitBtn0Click
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
    object JvBitBtn1: TJvBitBtn
      Left = 76
      Top = 152
      Width = 31
      Height = 26
      TabOrder = 4
      OnClick = JvBitBtn1Click
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
        FF0080C0FF00FFC0FF0000FFFF0040FFFF0080FFFF00FFFFFF00FFFF00000000
        00008CD1FAFAFAFAFAFAFAFAD1FAFAFAFAD10424242424040000FFFF00000000
        0000008CD1FAFAFAFAFAFAFAD1FAFAFAFAD18C042424040000FFFFFF00002400
        000000248CD1FAD1FAFAFAD1D1D1FAD1D18C0404000000FFFFFFFFFFFF002400
        00000000648CD18CFAFAFAD1D1D1D18C64040000000000FFFFFFFFFFFF002400
        00000000408C64D1FAFAFAD18CD18C64000000000000FFFFFFFFFFFFFF002400
        0000000040648CD1FAFAD1D1648C6400000000000000FFFFFFFFFFFFFF000024
        000000000064D1FAFAD1D18C64644000000000000000FFFFFFFFFFFFFF000024
        000000000064D1FAD1D18C6440404000000000000000FFFFFFFFFFFFFF000024
        00000000008CD1D18C8C640000000000000000000000FFFFFFFFFFFFFFFF0000
        00240000008CD18C8C64408CD1D1D18C000000000000FFFFFFFFFFFFFFFF0000
        00240000008C8C6464D1FAFAFAFAFAD18C0000000000FFFFFFFFFFFFFFFF0000
        00240000008C64D1FAFAFAFAFAFAFAFAD100000000FFFFFFFFFFFFFFFFFF0000
        002400000064D1D1FAFAD1D18C8C8CFAD164000000FFFFFFFFFFFFFFFFFF0000
        00000000008CD1FAD1FAD16464646464FA8C000000FFFFFFFFFFFFFFFFFF0000
        00000000008CFAD1FAFAFAD1404040D1FAD1000000FFFFFFFFFFFFFFFFFF0000
        00240000008CD1FAD1FAFAFAFAD1D1FAFAD1000000FFFFFFFFFFFFFFFFFF0000
        00240000008CFAD1FAFAFAFAD164D1FAFAD1000000FFFFFFFFFFFFFFFFFF0000
        00240000008CD1FAFAFAFAFAFAFA8CFAFAD1000000FFFFFFFFFFFFFFFFFFFF00
        242400000064D1FAD18C8CD1FAFA8C8C8CD1000000FFFFFFFFFFFFFFFFFFFF00
        242400000000D1D18C640064FAD16400648C000000FFFFFFFFFFFFFFFFFFFF00
        2424240000008CD164242400FA8C2424008C000000FFFFFFFFFFFFFFFFFFFF00
        242424000000648C8C640064D18C64006464000000FFFFFFFFFFFFFFFFFFFF00
        242424000000006464008CD1008C8C646424000000FFFFFFFFFFFFFFFFFFFFFF
        00242400000000000000648C00008C006400000000FFFFFFFFFFFFFFFFFFFFFF
        0024240000002400000024640000240024000000FFFFFFFFFFFFFFFFFFFFFFFF
        0024242400002400000000640000000000240000FFFFFFFFFFFFFFFFFFFFFFFF
        FF00242400000024000000240000000000242400FFFFFFFFFFFFFFFFFFFFFFFF
        FF002424240000240000000024000000242400FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF0024242400242400240024002400240000FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000024000024002424242424000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF000000002424242424000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFFFFFFFF}
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object JvBitBtn2: TJvBitBtn
      Left = 76
      Top = 186
      Width = 33
      Height = 24
      TabOrder = 5
      OnClick = JvBitBtn2Click
      Glyph.Data = {
        36080000424D3608000000000000360400002800000020000000200000000100
        0800000000000004000000000000000000000001000000000000000000004000
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
        FF0080C0FF00FFC0FF0000FFFF0040FFFF0080FFFF00FFFFFF00920092000000
        00000000FFFF9292E0E0E092FFFF000000000000009200000000000092000000
        000000FFFFFF92E0E0E0E092FFFFFF0000000000000092009292FF0092929292
        0000FFFFFFFF929292929292FFFFFFFF00000092929292000000FFFF00000000
        00FFFFFFFF0000DBFF92FF0000FFFFFFFF00000000000000FFFFFFFFFFFFFFFF
        00FFFFFF0000FFFFDBDBDBDB0000FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFF
        00FFFF0000FF920000000000DB0000FFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        00FF0000FF0092DB9292929200FF0000FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        000000FF00DBDBFFFFDBDB929200DB000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000DBDBDB92929292DB9292000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF0000DBFFFF0000000000FFDB92920000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00DBFFFF0000FFFFFF0000FFDB929200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFF000000000000000000DB929200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        00FFFF00FFFFFFDBDBDBDBDBDBDBDB929200FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        00FFFFFFFFDB920000009292DBDB92DB920000FFFFFFFFFFFFFFFFFFFFFFFF00
        00FFFFFFDBFF9200FFDBDB92DBDBDB92920000FFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000DB9200FFDBDB920000000000000000FFFFFFFFFFFFFFFFFFFFDB00
        DB12DB12DB000000DBFF920000DB12DB12DB0000FFFFFFFFFFFFFFFFFFFFFF00
        DBFFFFFFFFDB0000DBFF0000DBFFFFFFFFDB0000DBFFFFFFFFFFFFFFFFFFDB00
        DBFFFFFFFFFFDB00DBFF00DBFFFFFFFFFFDB00DBFFFFFFFFFFFFFFFFFFFFFF00
        DBFFFFFFFFFFFF00009200FFFFFFFFFFFFDB00DBDBFFFFFFFFFFFFFFFFFFDB00
        DBDB12DB12DB1200000000DB12DB12DB12DB00DBFFFFFFFFFFFFFFFFFFFFDB00
        00000000000000000000000000000000000000DBDBFFFFFFFFFFFFFFFFFFFFDB
        DB92DB929292DBDBFFFFDB929292DB92DBDBDBDBDBFFFFFFFFFFFFFFFFFFDBDB
        FF9292DB92DBDBFFDBFFDBDBDB92DB92DBFFDBDBFFFFFFFFFFFFFFFFFFFFFFDB
        DBDBFFFFFFFFDBDBFFFFFFDBDBFFDBFFFFDBDBFFFFFFFFFFFFFFFFFFFFFFFFFF
        DBFFDBFFFFFFDBFFFFFFFFFFFFDBFFFFFFDBDBFFFFFFFFFFFFFFFFFFFFFFDBFF
        FFDBFFDBFFFFDBDBFFFFFFFFFFDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDB
        FFDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFDBFFDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object cuif: TDBEdit
      Left = 110
      Top = 96
      Width = 121
      Height = 21
      Color = clCream
      ReadOnly = True
      TabOrder = 12
      Visible = False
    end
    object apeynom: TDBEdit
      Left = 113
      Top = 96
      Width = 503
      Height = 21
      Color = clCream
      ReadOnly = True
      TabOrder = 13
    end
    object CUIF1: TDBEdit
      Left = 109
      Top = 156
      Width = 121
      Height = 21
      Color = clCream
      ReadOnly = True
      TabOrder = 14
      Visible = False
    end
    object apeynom1: TDBEdit
      Left = 112
      Top = 155
      Width = 503
      Height = 21
      Color = clCream
      ReadOnly = True
      TabOrder = 15
    end
    object Edit4: TEdit
      Left = 134
      Top = 122
      Width = 481
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 150
      ParentFont = False
      TabOrder = 3
      OnExit = Edit4Exit
      OnKeyPress = Edit4KeyPress
    end
    object CUIF2: TDBEdit
      Left = 109
      Top = 188
      Width = 121
      Height = 21
      Color = clCream
      ReadOnly = True
      TabOrder = 17
      Visible = False
    end
    object apeynom2: TDBEdit
      Left = 112
      Top = 188
      Width = 503
      Height = 21
      Color = clCream
      ReadOnly = True
      TabOrder = 16
    end
    object horafalle: TMaskEdit
      Left = 337
      Top = 64
      Width = 42
      Height = 21
      EditMask = '00:00;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 5
      ParentFont = False
      TabOrder = 1
      Text = '00:00'
      OnExit = horafalleExit
      OnKeyPress = horafalleKeyPress
    end
    object tpopago: TComboBox
      Left = 101
      Top = 304
      Width = 270
      Height = 26
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemHeight = 18
      ItemIndex = 0
      ParentFont = False
      TabOrder = 9
      Text = 'CONTADO'
      Visible = False
      OnExit = tpopagoExit
      OnKeyPress = tpopagoKeyPress
      Items.Strings = (
        'CONTADO'
        'CHEQUE'
        'TARJETA CREDITO'
        'CUENTA CORRIENTE')
    end
    object GrupoCheq: TGroupBox
      Left = 13
      Top = 415
      Width = 341
      Height = 113
      Caption = 'Pagos con Cheques'
      TabOrder = 18
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
        Left = 223
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
      object banco: TComboBox
        Left = 54
        Top = 15
        Width = 243
        Height = 21
        CharCase = ecUpperCase
        ItemHeight = 13
        TabOrder = 0
        Text = 'NARANJA ZETA'
        OnExit = bancoExit
        OnKeyPress = bancoKeyPress
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
        Left = 210
        Top = 84
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
    object E5: TEdit
      Left = 101
      Top = 340
      Width = 110
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 8
      ParentFont = False
      TabOrder = 19
      Text = '0000.00'
      Visible = False
      OnExit = E5Exit
      OnKeyPress = E5KeyPress
    end
    object Grupotarje: TGroupBox
      Left = 12
      Top = 416
      Width = 343
      Height = 111
      Caption = 'Tarjetas de Cr'#233'ditos '
      TabOrder = 20
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
    object actanro: TEdit
      Left = 140
      Top = 216
      Width = 75
      Height = 21
      TabOrder = 6
      OnExit = actanroExit
      OnKeyPress = actanroKeyPress
    end
    object Edit5: TEdit
      Left = 101
      Top = 379
      Width = 37
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 21
      Text = '0'
      Visible = False
      OnExit = Edit6Exit
      OnKeyPress = Edit6KeyPress
    end
    object VALCUOTA: TEdit
      Left = 248
      Top = 380
      Width = 94
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 22
      Text = '0'
      Visible = False
    end
  end
  object DataSource0: TDataSource
    Left = 2
    Top = 6
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
    Left = 636
    Top = 167
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
    Left = 554
    Top = 436
  end
  object TP: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 660
    Top = 26
  end
  object RvEC: TRvSystem
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
    Left = 712
    Top = 166
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
    Left = 564
    Top = 28
  end
  object RvOrden: TRvSystem
    TitleSetup = 'Conf. Impres.'
    TitleStatus = 'Estado del Reporte'
    TitlePreview = 'Imagen Previa'
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.MarginPercent = 10.000000000000000000
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPreview.ZoomInc = 50
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.Units = unMM
    SystemPrinter.UnitsFactor = 25.400000000000000000
    OnPrint = RvOrdenPrint
    Left = 692
    Top = 474
  end
  object PopupMenu1: TPopupMenu
    Left = 160
    Top = 350
    object ConfirmarExhumacion1: TMenuItem
      Caption = 'Confirmar Exhumacion'
      OnClick = ConfirmarExhumacion1Click
    end
  end
end

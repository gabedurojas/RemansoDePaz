object Confirma_InhuVen: TConfirma_InhuVen
  Left = 309
  Top = 82
  AutoScroll = False
  BorderIcons = [biSystemMenu, biMinimize]
  ClientHeight = 588
  ClientWidth = 810
  Color = 14801370
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
    Top = 569
    Width = 810
    Height = 19
    Panels = <
      item
        Width = 300
      end
      item
        Width = 250
      end
      item
        Width = 50
      end>
  end
  object PC1: TJvgPageControl
    Left = 0
    Top = 33
    Width = 810
    Height = 536
    ActivePage = TabSheet4
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Images = ImageList1
    ParentFont = False
    TabOrder = 1
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
    TabSelectedStyle.TextStyle = fstShadow
    TabSelectedStyle.CaptionHAlign = fhaCenter
    TabSelectedStyle.Gradient.Active = False
    TabSelectedStyle.Gradient.Orientation = fgdHorizontal
    Options = [ftoAutoFontDirection, ftoExcludeGlyphs]
    object TabSheet1: TTabSheet
      BorderWidth = 1
      Caption = 'Las B'#250'squedas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Highlighted = True
      ImageIndex = 1
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      DesignSize = (
        800
        505)
      object Bevel2: TBevel
        Left = 4
        Top = 2
        Width = 199
        Height = 195
      end
      object LB1: TLabel
        Left = 36
        Top = 62
        Width = 105
        Height = 13
        Caption = 'Ingrese el N'#176' DNI:'
      end
      object todos: TRichEdit
        Left = 369
        Top = 90
        Width = 269
        Height = 49
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -4
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'R5')
        ParentFont = False
        TabOrder = 0
      end
      object dnit: TRadioButton
        Left = 18
        Top = 243
        Width = 119
        Height = 17
        Caption = 'Por DNI Titular'
        TabOrder = 1
        Visible = False
        OnClick = dnitClick
      end
      object Inhu: TRadioButton
        Left = 18
        Top = 227
        Width = 125
        Height = 17
        Caption = 'Por IdInhumado'
        TabOrder = 2
        Visible = False
        OnClick = InhuClick
      end
      object acci: TRadioButton
        Left = 15
        Top = 9
        Width = 108
        Height = 17
        Caption = 'Por NroAccion'
        Checked = True
        TabOrder = 3
        TabStop = True
        OnClick = acciClick
      end
      object nomt: TRadioButton
        Left = 18
        Top = 260
        Width = 157
        Height = 17
        Caption = 'Por Ape y Nom Titular'
        TabOrder = 4
        Visible = False
        OnClick = nomtClick
      end
      object ODNI: TEdit
        Left = 49
        Top = 77
        Width = 89
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 8
        ParentFont = False
        TabOrder = 5
        Text = '00000'
        OnExit = ODNIExit
        OnKeyPress = ODNIKeyPress
      end
      object ONOMB: TEdit
        Left = 10
        Top = 90
        Width = 187
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 25
        TabOrder = 6
        Visible = False
        OnKeyPress = ONOMBKeyPress
      end
      object Busca: TJvBitBtn
        Left = 38
        Top = 139
        Width = 127
        Height = 41
        Caption = 'BUSCAR'
        TabOrder = 7
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
      object nomf: TRadioButton
        Left = 18
        Top = 296
        Width = 165
        Height = 17
        Caption = 'Por Ape y Nom Fellecido'
        TabOrder = 8
        Visible = False
        OnClick = nomtClick
      end
      object dnif: TRadioButton
        Left = 18
        Top = 279
        Width = 113
        Height = 17
        Caption = 'Por DNI Fallecido'
        TabOrder = 9
        Visible = False
        OnClick = dnitClick
      end
      object fecfalle: TRadioButton
        Left = 15
        Top = 29
        Width = 125
        Height = 17
        Caption = 'Por Fecha '
        TabOrder = 10
        OnClick = fecfalleClick
      end
      object FECH: TMaskEdit
        Left = 46
        Top = 88
        Width = 101
        Height = 28
        EditMask = '!99/99/0000;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentFont = False
        TabOrder = 11
        Text = '  /  /    '
        Visible = False
        OnExit = FECHExit
        OnKeyPress = FECHKeyPress
      end
      object Exporta: TJvBitBtn
        Left = 46
        Top = 392
        Width = 105
        Height = 42
        Caption = 'EXPORTAR '#13#10'A EXCEL'
        Enabled = False
        TabOrder = 12
        Visible = False
        OnClick = ExportaClick
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
          FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
          FFFF00000000FFFAD10000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00D1D1
          0000FAFAD1D100FFFAD1D100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FAFAD1
          D100FFFAFAD1D100FFFAD1D100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFAFA
          D1D100FFFAFAD1D100FFFAD1D1000000FFFFFFFFFFFFFFFFFFFFFF000000FFFA
          FAD1D100FFFAFAD1D100FFFA0000DB00FFFFFFFFFFFFFFFFFFFF00FAD1D100FF
          FAFAD1D100FFFAFAD1D10000DBDBDB00FF0000FFFFFFFFFFFFFF00FFFAD1D100
          FFFAFAD1D100FFFA0000DBDBDBDBDB0000DB00FFFFFFFFFFFFFFFF00FFFAD1D1
          00FFFAFAD1D10000DBDBDBDBFFDBDB00DBDB00FFFFFFFFFFFFFFFFFF00FFFAD1
          D100FFFA0000DBDBDBDBFFFFFFDBDB00DBDB00FFFFFFFFFFFFFFFFFFFF00FFFA
          D1D10000DBDBDBDBFFFFFFFFFFDBDB00DBDB0000FFFFFFFFFFFFFFFFFFFF00FF
          0000DBDBDBDBFFFFFFFFFFFFFFDBDB00DBDB00D100FFFFFFFFFFFFFFFFFFFF00
          DBDBDBDBFFFFFFFFFFFFFFFFFFDBDB00DBDB00D1D100FFFFFFFFFFFFFFFFFF00
          DBDBFFFFFFFFFFFFFFFFFFFFFFDBDB00DBDB00FAD1D100FFFFFFFFFFFFFFFF00
          DB6DFFFFFFFFFFFFFFFFFFFFFFDBDB00DBDB00FAFAD1D100FFFFFFFFFFFFFF00
          DB6DFFFFFFFFFFFFFFFFFFFFFFDBDB00DBDB00FAFAFAD1D100FFFFFFFFFFFF00
          DB6DFFFFFFFFFFFFFFFFFFFFFFDBDB00DBDB00FAFAFAFAD100FFFFFFFFFFFF00
          DB6DFFFFFFFFFFFFFFFFFFFFFFDBDB00DBDB00FAFAFAFAD100FFFFFFFFFFFF00
          DB6DFFFFFFFFFFFFFFFFFFFF6DDBDB00DBDB00FAFAFAD10000FFFFFFFF000000
          DB6DFFFFFFFFFFFFFFFF6D6DDBDB0000DBDB00FAFFFF0000FFFFFFFF00D1D100
          DB6DFFFFFFFFFFFF6D6DDBDB0000FF6DDBDB00FF0000FFFFFFFFFFFF00FAFA00
          DB6DFFFFFFFF6D6DDBDB0000FF6D6DDBDB000000FFFFFFFFFFFFFFFF00FAFA00
          DB6DFFFF6D6DF8F80000FF6D6DDBDB000000FFFFFFFFFFFFFFFFFFFFFF000000
          DB6D6D6DF8F8F8F8006D6DDBDB000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          DBF8F8F8F8F8F8F800F8F8000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          FCF8F8F8F8F8FCFC00F8F800FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          FCF8F8F8FCFC0000F8F8F800FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          FCF8FCFC0000F8F8F8FCFC00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          FCFC0000F8F8F8FCFC0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          000000FCF8FCFC0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF00FCFC0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'MS Sans Serif'
        HotTrackFont.Style = []
      end
      object JvgGroupBox6: TJvgGroupBox
        Left = 11
        Top = 383
        Width = 176
        Height = 64
        Anchors = [akTop, akRight]
        TabOrder = 13
        Border.Inner = bvSpace
        Border.Outer = bvNone
        Border.Bold = False
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
        Colors.CaptionActive = clBtnShadow
        Colors.Client = clBtnFace
        Colors.ClientActive = clBtnFace
        Gradient.FromColor = clBlack
        Gradient.ToColor = clGray
        Gradient.Active = False
        Gradient.Orientation = fgdHorizontal
        Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
        FullHeight = 0
        object Shape3: TShape
          Left = 20
          Top = 29
          Width = 15
          Height = 13
          Shape = stCircle
        end
        object Shape2: TShape
          Left = 20
          Top = 12
          Width = 15
          Height = 13
          Brush.Color = clLime
          Shape = stCircle
        end
        object Label24: TLabel
          Left = 40
          Top = 12
          Width = 76
          Height = 13
          Caption = 'Sin Confirmar'
        end
        object Label27: TLabel
          Left = 40
          Top = 29
          Width = 53
          Height = 13
          Caption = 'Normales'
        end
        object Shape1: TShape
          Left = 20
          Top = 45
          Width = 15
          Height = 13
          Brush.Color = 13553407
          Shape = stCircle
        end
        object Label25: TLabel
          Left = 40
          Top = 45
          Width = 53
          Height = 13
          Caption = 'Anuladas'
        end
      end
      object Sinc: TRadioButton
        Left = 28
        Top = 117
        Width = 141
        Height = 17
        Caption = 'Sin Confirmar!!..'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
        Visible = False
        OnClick = SincClick
      end
      object IdServ: TRadioButton
        Left = 19
        Top = 210
        Width = 107
        Height = 17
        Caption = 'Por Id Servicio'
        TabOrder = 15
        Visible = False
        OnClick = IdServClick
      end
      object vigventas: TGroupBox
        Left = 10
        Top = 452
        Width = 177
        Height = 49
        Caption = 'Dias de Vigencias'
        TabOrder = 16
        object Label74: TLabel
          Left = 14
          Top = 24
          Width = 54
          Height = 13
          Caption = 'VENTAS:'
          Visible = False
        end
        object diav: TEdit
          Left = 74
          Top = 16
          Width = 37
          Height = 21
          Color = clYellow
          Enabled = False
          ReadOnly = True
          TabOrder = 0
          Text = 'diav'
          Visible = False
        end
      end
      object JvgGroupBox2: TJvgGroupBox
        Left = 214
        Top = 0
        Width = 586
        Height = 157
        Caption = 'V EN T A S - C E S  I O N - T R A N S F E R EN C I A S'
        TabOrder = 17
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
        FullHeight = 0
        object DBGrid1: TJvDBGrid
          Left = 2
          Top = 16
          Width = 582
          Height = 139
          Align = alClient
          DataSource = DataSource1
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
          OnDrawColumnCell = DBGrid1DrawColumnCell
          AlternateRowColor = clGradientInactiveCaption
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 18
          TitleRowHeight = 19
        end
      end
      object JvgGroupBox4: TJvgGroupBox
        Left = 214
        Top = 160
        Width = 585
        Height = 163
        Caption = 'S E R V I CI O S'
        TabOrder = 18
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
        FullHeight = 0
        object DBGrids: TJvDBGrid
          Left = 2
          Top = 16
          Width = 581
          Height = 145
          Align = alClient
          DataSource = DataSource5
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
          OnCellClick = DBGridsCellClick
          OnDrawColumnCell = DBGridsDrawColumnCell
          AlternateRowColor = clGradientInactiveCaption
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 18
          TitleRowHeight = 19
        end
      end
      object JvgGroupBox5: TJvgGroupBox
        Left = 214
        Top = 326
        Width = 586
        Height = 181
        Caption = 'I N H U M A D O S'
        TabOrder = 19
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
        FullHeight = 0
        object DBGridI: TJvDBGrid
          Left = 2
          Top = 16
          Width = 582
          Height = 163
          Align = alClient
          DataSource = DataSource6
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
          OnCellClick = DBGridICellClick
          OnDrawColumnCell = DBGridIDrawColumnCell
          AlternateRowColor = clGradientInactiveCaption
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 18
          TitleRowHeight = 19
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Datos de la Venta de Parcela'
      ImageIndex = 4
      object detpago: TGroupBox
        Left = 0
        Top = 149
        Width = 802
        Height = 206
        Align = alClient
        Caption = 'Detalle de Pago de la Venta de la Parcela'
        TabOrder = 0
        object Imagen2: TImage
          Left = 410
          Top = 64
          Width = 105
          Height = 105
        end
        object Imagen3: TImage
          Left = 568
          Top = 66
          Width = 105
          Height = 105
        end
        object grilla5: TStringGrid
          Left = 2
          Top = 90
          Width = 798
          Height = 114
          Align = alClient
          ColCount = 9
          DefaultColWidth = 100
          DefaultRowHeight = 17
          FixedCols = 0
          RowCount = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
          ParentFont = False
          TabOrder = 0
          ColWidths = (
            69
            73
            71
            96
            90
            87
            85
            106
            100)
        end
        object pagodet: TGroupBox
          Left = 2
          Top = 15
          Width = 798
          Height = 75
          Align = alTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object Label48: TLabel
            Left = 326
            Top = 14
            Width = 67
            Height = 13
            Caption = 'MontoPagado'
          end
          object TLabel
            Left = 7
            Top = 16
            Width = 55
            Height = 13
            Caption = 'Modo Pago'
          end
          object Label50: TLabel
            Left = 640
            Top = 14
            Width = 61
            Height = 13
            Caption = 'Cant. Cuotas'
          end
          object Label53: TLabel
            Left = 6
            Top = 38
            Width = 55
            Height = 13
            Caption = 'Valor Cuota'
          end
          object Label54: TLabel
            Left = 474
            Top = 14
            Width = 83
            Height = 13
            Caption = 'Deuda Pendiente'
          end
          object TLabel
            Left = 9
            Top = 58
            Width = 69
            Height = 13
            Caption = 'Banco/Tarjeta'
          end
          object TLabel
            Left = 362
            Top = 60
            Width = 29
            Height = 13
            Caption = 'Titular'
          end
          object Label81: TLabel
            Left = 140
            Top = 38
            Width = 80
            Height = 13
            Caption = 'NroComprobante'
          end
          object Label82: TLabel
            Left = 337
            Top = 36
            Width = 54
            Height = 13
            Caption = 'NroCheque'
          end
          object Label83: TLabel
            Left = 507
            Top = 38
            Width = 49
            Height = 13
            Caption = 'Fec. Pago'
          end
          object Label84: TLabel
            Left = 651
            Top = 38
            Width = 49
            Height = 13
            Caption = 'Fec Cobro'
          end
          object Mp: TEdit
            Left = 397
            Top = 9
            Width = 72
            Height = 21
            Color = clYellow
            ReadOnly = True
            TabOrder = 0
          end
          object Dp: TEdit
            Left = 561
            Top = 9
            Width = 72
            Height = 21
            Color = clYellow
            ReadOnly = True
            TabOrder = 1
          end
          object ModP: TEdit
            Left = 66
            Top = 9
            Width = 246
            Height = 21
            Color = clYellow
            ReadOnly = True
            TabOrder = 2
          end
          object CC: TEdit
            Left = 705
            Top = 9
            Width = 72
            Height = 21
            Color = clYellow
            ReadOnly = True
            TabOrder = 3
          end
          object VC: TEdit
            Left = 66
            Top = 31
            Width = 68
            Height = 21
            Color = clYellow
            ReadOnly = True
            TabOrder = 4
          end
          object banco: TEdit
            Left = 86
            Top = 53
            Width = 237
            Height = 21
            Color = clYellow
            ReadOnly = True
            TabOrder = 5
          end
          object titular: TEdit
            Left = 397
            Top = 53
            Width = 388
            Height = 21
            Color = clYellow
            ReadOnly = True
            TabOrder = 6
          end
          object comprobante: TEdit
            Left = 226
            Top = 31
            Width = 98
            Height = 21
            Color = clYellow
            ReadOnly = True
            TabOrder = 7
          end
          object cheque: TEdit
            Left = 397
            Top = 31
            Width = 103
            Height = 21
            Color = clYellow
            ReadOnly = True
            TabOrder = 8
          end
          object fecpago: TEdit
            Left = 562
            Top = 31
            Width = 72
            Height = 21
            Color = clYellow
            ReadOnly = True
            TabOrder = 9
          end
          object Feccobro: TEdit
            Left = 706
            Top = 31
            Width = 72
            Height = 21
            Color = clYellow
            ReadOnly = True
            TabOrder = 10
          end
        end
      end
      object grupoventa: TJvgGroupBox
        Left = 0
        Top = 0
        Width = 802
        Height = 149
        Align = alTop
        Caption = 'Datos de la Venta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
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
        FullHeight = 0
        object Label37: TLabel
          Left = 119
          Top = 22
          Width = 54
          Height = 13
          Caption = 'N'#186'  Acci'#243'n:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label38: TLabel
          Left = 279
          Top = 22
          Width = 46
          Height = 13
          Caption = 'N'#186' T'#237'tulo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label39: TLabel
          Left = 508
          Top = 20
          Width = 42
          Height = 13
          Caption = 'N'#186' Color:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label40: TLabel
          Left = 384
          Top = 21
          Width = 34
          Height = 13
          Caption = 'Sector:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label41: TLabel
          Left = 142
          Top = 45
          Width = 29
          Height = 13
          Caption = 'Plaza:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label43: TLabel
          Left = 3
          Top = 47
          Width = 39
          Height = 13
          Caption = 'Parcela:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label45: TLabel
          Left = 387
          Top = 49
          Width = 33
          Height = 13
          Caption = 'Precio:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label47: TLabel
          Left = 23
          Top = 22
          Width = 17
          Height = 13
          Caption = 'ID :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label80: TLabel
          Left = 3
          Top = 69
          Width = 37
          Height = 13
          Caption = 'Observ.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label94: TLabel
          Left = 573
          Top = 44
          Width = 61
          Height = 13
          Caption = 'Fecha Venta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Panel: TJvPanel
          Left = 631
          Top = 12
          Width = 121
          Height = 25
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
          FlatBorderColor = clBlack
          BevelInner = bvRaised
          BevelOuter = bvSpace
          BorderStyle = bsSingle
          Color = clHotLight
          TabOrder = 0
        end
        object dv1: TEdit
          Left = 177
          Top = 15
          Width = 90
          Height = 21
          Color = 14277612
          ReadOnly = True
          TabOrder = 1
          Text = 'dv'
        end
        object dv2: TEdit
          Left = 329
          Top = 15
          Width = 43
          Height = 21
          Color = 14277612
          ReadOnly = True
          TabOrder = 2
          Text = 'Edit1'
        end
        object dv3: TEdit
          Left = 553
          Top = 13
          Width = 73
          Height = 21
          Color = 14277612
          ReadOnly = True
          TabOrder = 3
          Text = 'Edit1'
        end
        object dv4: TEdit
          Left = 422
          Top = 14
          Width = 71
          Height = 21
          Color = 14277612
          ReadOnly = True
          TabOrder = 4
          Text = 'Edit1'
        end
        object dv5: TEdit
          Left = 177
          Top = 39
          Width = 199
          Height = 21
          Color = 14277612
          ReadOnly = True
          TabOrder = 5
          Text = 'Edit1'
        end
        object dv6: TEdit
          Left = 46
          Top = 40
          Width = 71
          Height = 21
          Color = 14277612
          ReadOnly = True
          TabOrder = 6
          Text = 'Edit1'
        end
        object dv7: TEdit
          Left = 422
          Top = 38
          Width = 133
          Height = 28
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
          Text = 'Edit1'
        end
        object JvgGroupBox1: TJvgGroupBox
          Left = 7
          Top = 91
          Width = 785
          Height = 43
          Caption = 'Datos de la ANULACION'
          TabOrder = 8
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
          FullHeight = 0
          object Label42: TLabel
            Left = 6
            Top = 28
            Width = 63
            Height = 13
            Caption = 'Fecha Anula:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label44: TLabel
            Left = 170
            Top = 28
            Width = 55
            Height = 13
            Caption = 'Usu. Anula:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label46: TLabel
            Left = 295
            Top = 28
            Width = 62
            Height = 13
            Caption = 'Motivo Anula'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object dva1: TDBEdit
            Left = 73
            Top = 20
            Width = 88
            Height = 21
            Color = 14277612
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object dva2: TDBEdit
            Left = 234
            Top = 20
            Width = 43
            Height = 21
            Color = 14277612
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
          object dva3: TDBEdit
            Left = 364
            Top = 20
            Width = 405
            Height = 21
            Color = 14277612
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
          end
          object DPc: TDBEdit
            Left = 644
            Top = 20
            Width = 43
            Height = 21
            Color = 14277612
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
            Visible = False
          end
          object DPF: TDBEdit
            Left = 690
            Top = 20
            Width = 43
            Height = 21
            Color = 14277612
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
            Visible = False
          end
          object DREc: TDBEdit
            Left = 734
            Top = 20
            Width = 43
            Height = 21
            Color = 14277612
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 5
            Visible = False
          end
        end
        object dvid: TEdit
          Left = 46
          Top = 18
          Width = 71
          Height = 21
          Color = 14277612
          ReadOnly = True
          TabOrder = 9
          Text = 'dvid'
        end
        object observ: TEdit
          Left = 46
          Top = 63
          Width = 703
          Height = 21
          Color = 14277612
          MaxLength = 250
          ReadOnly = True
          TabOrder = 10
        end
        object fecvta: TEdit
          Left = 659
          Top = 37
          Width = 90
          Height = 21
          Color = 14277612
          ReadOnly = True
          TabOrder = 11
          Text = 'dv'
        end
        object ci: TCheckBox
          Left = 762
          Top = 66
          Width = 31
          Height = 17
          Enabled = False
          TabOrder = 12
        end
      end
      object grupotestigos: TJvgGroupBox
        Left = 0
        Top = 355
        Width = 802
        Height = 107
        Align = alBottom
        Caption = 'Datos de Titulares'
        TabOrder = 2
        Border.Inner = bvSpace
        Border.Outer = bvNone
        Border.Bold = False
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
        Colors.CaptionActive = clBtnShadow
        Colors.Client = clBtnFace
        Colors.ClientActive = clBtnFace
        Gradient.FromColor = clBlack
        Gradient.ToColor = clGray
        Gradient.Active = False
        Gradient.Orientation = fgdHorizontal
        Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
        FullHeight = 0
        object Image1: TImage
          Left = 420
          Top = 48
          Width = 105
          Height = 105
        end
        object JvDBGrid1: TJvDBGrid
          Left = 2
          Top = 16
          Width = 798
          Height = 89
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
          AlternateRowColor = clGradientInactiveCaption
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 18
          TitleRowHeight = 19
        end
      end
      object GroupBox5: TGroupBox
        Left = 0
        Top = 462
        Width = 802
        Height = 45
        Align = alBottom
        Caption = 'ACCIONES DE LA VENTA'
        TabOrder = 3
        object Label85: TLabel
          Left = 6
          Top = 20
          Width = 447
          Height = 20
          Caption = 'ATENCION!! ACCION CON TITULARES INCOMPLETOS'
          Color = 14801370
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentColor = False
          ParentFont = False
          Visible = False
          OnClick = Label85Click
        end
        object ConfirmaVta: TJvBitBtn
          Left = 466
          Top = 11
          Width = 175
          Height = 31
          Caption = 'COFIRMAR VENTA'
          Enabled = False
          TabOrder = 0
          OnClick = GUARDAClick
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
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object anulavta: TJvBitBtn
          Left = 646
          Top = 11
          Width = 151
          Height = 30
          Caption = 'ANULAR VENTA'
          Enabled = False
          TabOrder = 1
          OnClick = anulavtaClick
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
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Datos Del Servicio'
      ImageIndex = 3
      object GrupoServicio: TJvgGroupBox
        Left = 0
        Top = 0
        Width = 802
        Height = 175
        Align = alTop
        Caption = 'Datos del Servicio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
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
        FullHeight = 0
        object Label49: TLabel
          Left = 168
          Top = 29
          Width = 54
          Height = 13
          Caption = 'N'#186'  Acci'#243'n:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label52: TLabel
          Left = 9
          Top = 51
          Width = 65
          Height = 13
          Caption = 'Tipo Servicio:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label55: TLabel
          Left = 238
          Top = 54
          Width = 74
          Height = 13
          Caption = 'Fecha Servicio:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label58: TLabel
          Left = 9
          Top = 77
          Width = 37
          Height = 13
          Caption = 'Observ:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label59: TLabel
          Left = 55
          Top = 28
          Width = 17
          Height = 13
          Caption = 'ID :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label67: TLabel
          Left = 15
          Top = 98
          Width = 30
          Height = 13
          Caption = 'Nivel :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label68: TLabel
          Left = 106
          Top = 99
          Width = 40
          Height = 13
          Caption = 'Posicion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label69: TLabel
          Left = 214
          Top = 100
          Width = 58
          Height = 13
          Caption = 'Tipo Objeto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object serv2: TEdit
          Left = 228
          Top = 22
          Width = 57
          Height = 21
          Color = clInfoBk
          ReadOnly = True
          TabOrder = 0
          Text = 'dv'
        end
        object serv4: TEdit
          Left = 82
          Top = 48
          Width = 139
          Height = 21
          Color = clInfoBk
          ReadOnly = True
          TabOrder = 1
          Text = 'Edit1'
        end
        object serv3: TEdit
          Left = 320
          Top = 47
          Width = 90
          Height = 21
          Color = clInfoBk
          ReadOnly = True
          TabOrder = 2
          Text = 'Edit1'
        end
        object serv5: TEdit
          Left = 53
          Top = 71
          Width = 318
          Height = 21
          Color = clInfoBk
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          Text = 'Edit1'
        end
        object JvgGroupBox3: TJvgGroupBox
          Left = 4
          Top = 124
          Width = 783
          Height = 44
          Caption = 'Datos de la ANULACION'
          TabOrder = 4
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
          FullHeight = 0
          object Label60: TLabel
            Left = 6
            Top = 28
            Width = 63
            Height = 13
            Caption = 'Fecha Anula:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label61: TLabel
            Left = 170
            Top = 28
            Width = 55
            Height = 13
            Caption = 'Usu. Anula:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label62: TLabel
            Left = 295
            Top = 28
            Width = 62
            Height = 13
            Caption = 'Motivo Anula'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit2: TDBEdit
            Left = 73
            Top = 20
            Width = 88
            Height = 21
            Color = clInfoBk
            DataSource = DataSource5
            ReadOnly = True
            TabOrder = 0
          end
          object DBEdit3: TDBEdit
            Left = 234
            Top = 20
            Width = 51
            Height = 21
            Color = clInfoBk
            DataSource = DataSource5
            ReadOnly = True
            TabOrder = 1
          end
          object DBEdit4: TDBEdit
            Left = 364
            Top = 20
            Width = 415
            Height = 21
            Color = clInfoBk
            DataSource = DataSource5
            ReadOnly = True
            TabOrder = 2
          end
          object Dpcs: TDBEdit
            Left = 644
            Top = 20
            Width = 43
            Height = 21
            Color = 14277612
            DataSource = DataSource5
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
            Visible = False
          end
          object Dpfs: TDBEdit
            Left = 690
            Top = 20
            Width = 43
            Height = 21
            Color = 14277612
            DataSource = DataSource5
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
            Visible = False
          end
          object Drecs: TDBEdit
            Left = 734
            Top = 20
            Width = 43
            Height = 21
            Color = 14277612
            DataSource = DataSource5
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 5
            Visible = False
          end
        end
        object serv1: TEdit
          Left = 82
          Top = 24
          Width = 69
          Height = 21
          Color = clInfoBk
          ReadOnly = True
          TabOrder = 5
          Text = 'dvid'
        end
        object GroupBox1: TGroupBox
          Left = 428
          Top = 14
          Width = 355
          Height = 107
          Caption = 'Detalle De Objetos'
          TabOrder = 6
          object grillaobjetos: TStringGrid
            Left = 2
            Top = 15
            Width = 351
            Height = 90
            Align = alClient
            ColCount = 4
            DefaultRowHeight = 14
            FixedCols = 0
            RowCount = 2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
            ParentFont = False
            TabOrder = 0
            ColWidths = (
              59
              225
              56
              11)
          end
        end
        object nivel: TEdit
          Left = 52
          Top = 94
          Width = 41
          Height = 21
          Color = clInfoBk
          ReadOnly = True
          TabOrder = 7
          Text = 'dvid'
        end
        object posi: TEdit
          Left = 152
          Top = 92
          Width = 47
          Height = 21
          Color = clInfoBk
          ReadOnly = True
          TabOrder = 8
          Text = 'dv'
        end
        object objeto: TEdit
          Left = 274
          Top = 93
          Width = 138
          Height = 21
          Color = clInfoBk
          ReadOnly = True
          TabOrder = 9
          Text = 'Edit1'
        end
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 379
        Width = 802
        Height = 83
        Align = alBottom
        Caption = 'Datos Parcelarios'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label70: TLabel
          Left = 6
          Top = 18
          Width = 54
          Height = 13
          Caption = 'N'#186'  Acci'#243'n:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label71: TLabel
          Left = 150
          Top = 22
          Width = 46
          Height = 13
          Caption = 'N'#186' T'#237'tulo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label72: TLabel
          Left = 283
          Top = 22
          Width = 42
          Height = 13
          Caption = 'N'#186' Color:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label73: TLabel
          Left = 160
          Top = 46
          Width = 29
          Height = 13
          Caption = 'Plaza:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label75: TLabel
          Left = 19
          Top = 64
          Width = 39
          Height = 13
          Caption = 'Parcela:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label76: TLabel
          Left = 25
          Top = 42
          Width = 34
          Height = 13
          Caption = 'Sector:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object dpser1: TDBEdit
          Left = 61
          Top = 14
          Width = 77
          Height = 21
          Color = clInfoBk
          DataSource = DataSource5
          ReadOnly = True
          TabOrder = 0
        end
        object dpser2: TDBEdit
          Left = 198
          Top = 16
          Width = 77
          Height = 21
          Color = clInfoBk
          DataSource = DataSource5
          ReadOnly = True
          TabOrder = 1
        end
        object dpser3: TDBEdit
          Left = 328
          Top = 14
          Width = 57
          Height = 21
          Color = clInfoBk
          DataSource = DataSource5
          ReadOnly = True
          TabOrder = 2
        end
        object dpser5: TDBEdit
          Left = 197
          Top = 38
          Width = 191
          Height = 21
          Color = clInfoBk
          DataSource = DataSource5
          ReadOnly = True
          TabOrder = 3
        end
        object dpser6: TDBEdit
          Left = 62
          Top = 58
          Width = 77
          Height = 21
          Color = clInfoBk
          DataSource = DataSource5
          ReadOnly = True
          TabOrder = 4
        end
        object dpser4: TDBEdit
          Left = 61
          Top = 36
          Width = 77
          Height = 21
          Color = clInfoBk
          DataSource = DataSource5
          ReadOnly = True
          TabOrder = 5
        end
        object GroupBox2: TGroupBox
          Left = 401
          Top = 10
          Width = 393
          Height = 65
          Caption = 'Valores del Servicio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          object Label77: TLabel
            Left = 126
            Top = 23
            Width = 61
            Height = 13
            Caption = 'Cant. Cuotas'
          end
          object Label78: TLabel
            Left = 252
            Top = 19
            Width = 55
            Height = 13
            Caption = 'Valor Cuota'
          end
          object Label79: TLabel
            Left = 8
            Top = 23
            Width = 32
            Height = 13
            Caption = 'Deuda'
          end
          object deudaser: TEdit
            Left = 49
            Top = 16
            Width = 72
            Height = 21
            Color = clYellow
            ReadOnly = True
            TabOrder = 0
          end
          object cantcuotasser: TEdit
            Left = 193
            Top = 16
            Width = 54
            Height = 21
            Color = clYellow
            ReadOnly = True
            TabOrder = 1
          end
          object valorcuotaser: TEdit
            Left = 311
            Top = 14
            Width = 76
            Height = 21
            Color = clYellow
            ReadOnly = True
            TabOrder = 2
          end
        end
      end
      object PageControl2: TPageControl
        Left = 0
        Top = 175
        Width = 802
        Height = 204
        ActivePage = TabSheet6
        Align = alClient
        TabOrder = 2
        object TabSheet6: TTabSheet
          Caption = 'Detalle del Pago del Servcio'
          object grillaser: TStringGrid
            Left = 0
            Top = 77
            Width = 794
            Height = 99
            Align = alClient
            ColCount = 9
            DefaultColWidth = 100
            DefaultRowHeight = 17
            FixedCols = 0
            RowCount = 2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
            ParentFont = False
            TabOrder = 0
            ColWidths = (
              65
              76
              93
              88
              97
              90
              89
              90
              100)
          end
          object GroupBox6: TGroupBox
            Left = 0
            Top = 0
            Width = 794
            Height = 77
            Align = alTop
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object Label86: TLabel
              Left = 326
              Top = 14
              Width = 67
              Height = 13
              Caption = 'MontoPagado'
            end
            object TLabel
              Left = 7
              Top = 16
              Width = 55
              Height = 13
              Caption = 'Modo Pago'
            end
            object Label87: TLabel
              Left = 640
              Top = 14
              Width = 61
              Height = 13
              Caption = 'Cant. Cuotas'
            end
            object Label88: TLabel
              Left = 6
              Top = 38
              Width = 55
              Height = 13
              Caption = 'Valor Cuota'
            end
            object Label89: TLabel
              Left = 474
              Top = 14
              Width = 83
              Height = 13
              Caption = 'Deuda Pendiente'
            end
            object TLabel
              Left = 9
              Top = 58
              Width = 69
              Height = 13
              Caption = 'Banco/Tarjeta'
            end
            object TLabel
              Left = 350
              Top = 60
              Width = 29
              Height = 13
              Caption = 'Titular'
            end
            object Label90: TLabel
              Left = 140
              Top = 38
              Width = 80
              Height = 13
              Caption = 'NroComprobante'
            end
            object Label91: TLabel
              Left = 337
              Top = 36
              Width = 54
              Height = 13
              Caption = 'NroCheque'
            end
            object Label92: TLabel
              Left = 507
              Top = 38
              Width = 49
              Height = 13
              Caption = 'Fec. Pago'
            end
            object Label93: TLabel
              Left = 651
              Top = 38
              Width = 49
              Height = 13
              Caption = 'Fec Cobro'
            end
            object montops: TEdit
              Left = 397
              Top = 9
              Width = 72
              Height = 21
              Color = clYellow
              ReadOnly = True
              TabOrder = 0
            end
            object deudas: TEdit
              Left = 561
              Top = 9
              Width = 72
              Height = 21
              Color = clYellow
              ReadOnly = True
              TabOrder = 1
            end
            object Mps: TEdit
              Left = 66
              Top = 9
              Width = 246
              Height = 21
              Color = clYellow
              ReadOnly = True
              TabOrder = 2
            end
            object ccs: TEdit
              Left = 705
              Top = 9
              Width = 72
              Height = 21
              Color = clYellow
              ReadOnly = True
              TabOrder = 3
            end
            object vcs: TEdit
              Left = 66
              Top = 31
              Width = 68
              Height = 21
              Color = clYellow
              ReadOnly = True
              TabOrder = 4
            end
            object bancos: TEdit
              Left = 86
              Top = 53
              Width = 237
              Height = 21
              Color = clYellow
              ReadOnly = True
              TabOrder = 5
            end
            object tits: TEdit
              Left = 387
              Top = 53
              Width = 388
              Height = 21
              Color = clYellow
              ReadOnly = True
              TabOrder = 6
            end
            object ncs: TEdit
              Left = 226
              Top = 31
              Width = 98
              Height = 21
              Color = clYellow
              ReadOnly = True
              TabOrder = 7
            end
            object nrocs: TEdit
              Left = 397
              Top = 31
              Width = 103
              Height = 21
              Color = clYellow
              ReadOnly = True
              TabOrder = 8
            end
            object fps: TEdit
              Left = 562
              Top = 31
              Width = 72
              Height = 21
              Color = clYellow
              ReadOnly = True
              TabOrder = 9
            end
            object fcs: TEdit
              Left = 706
              Top = 31
              Width = 72
              Height = 21
              Color = clYellow
              ReadOnly = True
              TabOrder = 10
            end
          end
        end
        object TabSheet7: TTabSheet
          Caption = 'Titulares Activos'
          ImageIndex = 1
          object GrillaT: TJvStringGrid
            Left = 0
            Top = 0
            Width = 794
            Height = 176
            Align = alClient
            ColCount = 13
            DefaultColWidth = 55
            DefaultRowHeight = 17
            FixedCols = 0
            RowCount = 2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
            ParentFont = False
            ScrollBars = ssHorizontal
            TabOrder = 0
            Alignment = taLeftJustify
            FixedFont.Charset = DEFAULT_CHARSET
            FixedFont.Color = clRed
            FixedFont.Height = -11
            FixedFont.Name = 'MS Sans Serif'
            FixedFont.Style = [fsBold]
            ColWidths = (
              23
              71
              206
              77
              140
              204
              90
              55
              55
              55
              55
              55
              55)
          end
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 462
        Width = 802
        Height = 45
        Align = alBottom
        Caption = 'ACCIONES DEL SERVICIO'
        TabOrder = 3
        object confirmaserv: TJvBitBtn
          Left = 456
          Top = 10
          Width = 153
          Height = 31
          Caption = 'COFIRMAR SERVICIO'
          Enabled = False
          TabOrder = 0
          OnClick = confirmaservClick
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
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object anulaserv: TJvBitBtn
          Left = 618
          Top = 10
          Width = 169
          Height = 29
          Caption = 'ANULAR SERVICIO'
          Enabled = False
          TabOrder = 1
          OnClick = anulaservClick
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
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Datos de la Inhumacion'
      object grupo1: TJvgGroupBox
        Left = 0
        Top = 0
        Width = 802
        Height = 155
        Align = alTop
        Caption = 'DATOS DEL FALLECIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
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
        FullHeight = 0
        object Label26: TLabel
          Left = 6
          Top = 47
          Width = 71
          Height = 13
          Caption = 'Fecha Ingreso:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 172
          Top = 49
          Width = 90
          Height = 13
          Caption = 'Hora Fallecimiento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label31: TLabel
          Left = 15
          Top = 73
          Width = 72
          Height = 13
          Caption = 'Tipo Doc Falle:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 175
          Top = 73
          Width = 84
          Height = 13
          Caption = 'Nro Dni Fallecido:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 334
          Top = 51
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
        object Label32: TLabel
          Left = 370
          Top = 73
          Width = 43
          Height = 13
          Caption = 'Est. Civil:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label33: TLabel
          Left = 539
          Top = 73
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
        object Label34: TLabel
          Left = 23
          Top = 98
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
        object Label35: TLabel
          Left = 208
          Top = 95
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
        object Label1: TLabel
          Left = 13
          Top = 121
          Width = 74
          Height = 13
          Caption = 'Fecha Defunc.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 178
          Top = 124
          Width = 62
          Height = 13
          Caption = 'Nro Seccion:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 310
          Top = 124
          Width = 45
          Height = 13
          Caption = 'Nro Acta:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 414
          Top = 124
          Width = 45
          Height = 13
          Caption = 'Nro Folio:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 520
          Top = 124
          Width = 50
          Height = 13
          Caption = 'Nro Tomo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label64: TLabel
          Left = 626
          Top = 124
          Width = 41
          Height = 13
          Caption = 'Religion:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 19
          Top = 21
          Width = 17
          Height = 13
          Caption = 'ID :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object D11: TDBEdit
          Left = 79
          Top = 41
          Width = 86
          Height = 21
          Color = 14277612
          DataSource = DataSource6
          ReadOnly = True
          TabOrder = 0
        end
        object D14: TDBEdit
          Left = 264
          Top = 41
          Width = 61
          Height = 21
          Color = 14277612
          DataSource = DataSource6
          ReadOnly = True
          TabOrder = 1
        end
        object D9: TDBEdit
          Left = 378
          Top = 42
          Width = 391
          Height = 21
          Color = 14277612
          DataSource = DataSource6
          ReadOnly = True
          TabOrder = 2
        end
        object D28: TDBEdit
          Left = 91
          Top = 66
          Width = 62
          Height = 21
          Color = 14277612
          DataSource = DataSource6
          ReadOnly = True
          TabOrder = 3
        end
        object D8: TDBEdit
          Left = 264
          Top = 66
          Width = 82
          Height = 21
          Color = 14277612
          DataSource = DataSource6
          ReadOnly = True
          TabOrder = 4
        end
        object D29: TDBEdit
          Left = 420
          Top = 66
          Width = 107
          Height = 21
          Color = 14277612
          DataSource = DataSource6
          ReadOnly = True
          TabOrder = 5
        end
        object D30: TDBEdit
          Left = 610
          Top = 66
          Width = 139
          Height = 21
          Color = 14277612
          DataSource = DataSource6
          ReadOnly = True
          TabOrder = 6
        end
        object D31: TDBEdit
          Left = 90
          Top = 91
          Width = 83
          Height = 21
          Color = 14277612
          DataSource = DataSource6
          ReadOnly = True
          TabOrder = 7
        end
        object D32: TDBEdit
          Left = 263
          Top = 91
          Width = 490
          Height = 21
          Color = 14277612
          DataSource = DataSource6
          ReadOnly = True
          TabOrder = 8
        end
        object D12: TDBEdit
          Left = 90
          Top = 116
          Width = 83
          Height = 21
          Color = 14277612
          DataSource = DataSource6
          ReadOnly = True
          TabOrder = 9
        end
        object D17: TDBEdit
          Left = 243
          Top = 116
          Width = 62
          Height = 21
          Color = 14277612
          DataSource = DataSource6
          ReadOnly = True
          TabOrder = 10
        end
        object D18: TDBEdit
          Left = 360
          Top = 116
          Width = 46
          Height = 21
          Color = 14277612
          DataSource = DataSource6
          ReadOnly = True
          TabOrder = 11
        end
        object D19: TDBEdit
          Left = 464
          Top = 116
          Width = 47
          Height = 21
          Color = 14277612
          DataSource = DataSource6
          ReadOnly = True
          TabOrder = 12
        end
        object D20: TDBEdit
          Left = 572
          Top = 117
          Width = 46
          Height = 21
          Color = 14277612
          DataSource = DataSource6
          ReadOnly = True
          TabOrder = 13
        end
        object DRe: TDBEdit
          Left = 676
          Top = 117
          Width = 115
          Height = 21
          Color = 14277612
          DataSource = DataSource6
          ReadOnly = True
          TabOrder = 14
        end
        object D1: TDBEdit
          Left = 40
          Top = 17
          Width = 55
          Height = 21
          Color = clInactiveCaption
          DataSource = DataSource6
          ReadOnly = True
          TabOrder = 15
        end
      end
      object grupo4: TJvgGroupBox
        Left = 0
        Top = 414
        Width = 802
        Height = 48
        Align = alBottom
        Caption = 'Datos de la ANULACION'
        TabOrder = 1
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
        FullHeight = 0
        object Label28: TLabel
          Left = 6
          Top = 28
          Width = 63
          Height = 13
          Caption = 'Fecha Anula:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label29: TLabel
          Left = 170
          Top = 28
          Width = 55
          Height = 13
          Caption = 'Usu. Anula:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label30: TLabel
          Left = 295
          Top = 28
          Width = 62
          Height = 13
          Caption = 'Motivo Anula'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object D25: TDBEdit
          Left = 73
          Top = 20
          Width = 88
          Height = 21
          Color = 14277612
          DataSource = DataSource6
          ReadOnly = True
          TabOrder = 0
        end
        object D26: TDBEdit
          Left = 234
          Top = 20
          Width = 43
          Height = 21
          Color = 14277612
          DataSource = DataSource6
          ReadOnly = True
          TabOrder = 1
        end
        object D27: TDBEdit
          Left = 364
          Top = 20
          Width = 424
          Height = 21
          Color = 14277612
          DataSource = DataSource6
          ReadOnly = True
          TabOrder = 2
        end
      end
      object testigosinhu: TJvgGroupBox
        Left = 0
        Top = 320
        Width = 802
        Height = 94
        Align = alBottom
        Caption = 'DATOS TESTIGOS'
        TabOrder = 2
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
        FullHeight = 0
        object DBGrid2: TDBGrid
          Left = 2
          Top = 16
          Width = 798
          Height = 76
          Align = alClient
          DataSource = DataSource3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
        end
      end
      object PageControl1: TPageControl
        Left = 0
        Top = 155
        Width = 802
        Height = 165
        ActivePage = TabSheet8
        Align = alClient
        TabOrder = 3
        object TabSheet5: TTabSheet
          Caption = 'Datos del Titular,Solicitante y Responsable'
          DesignSize = (
            794
            137)
          object grupo3: TJvgGroupBox
            Left = 0
            Top = 0
            Width = 787
            Height = 127
            Anchors = [akLeft, akTop, akRight]
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
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
            FullHeight = 0
            object Label2: TLabel
              Left = 20
              Top = 11
              Width = 72
              Height = 13
              Caption = 'Nombre Titular:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label21: TLabel
              Left = 44
              Top = 34
              Width = 45
              Height = 13
              Caption = 'Domicilio:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label23: TLabel
              Left = 451
              Top = 39
              Width = 30
              Height = 13
              Caption = 'Barrio:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label11: TLabel
              Left = 440
              Top = 11
              Width = 39
              Height = 13
              Caption = 'Nro Dni:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label19: TLabel
              Left = 586
              Top = 11
              Width = 47
              Height = 13
              Caption = 'Tipo Doc.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label22: TLabel
              Left = 610
              Top = 37
              Width = 21
              Height = 13
              Caption = 'Loc.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label12: TLabel
              Left = 17
              Top = 71
              Width = 92
              Height = 13
              Caption = 'Nombre Solicitante:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label36: TLabel
              Left = 7
              Top = 95
              Width = 105
              Height = 13
              Caption = 'Nombre Responsable:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label65: TLabel
              Left = 476
              Top = 97
              Width = 47
              Height = 13
              Caption = 'Tipo Doc.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label66: TLabel
              Left = 594
              Top = 98
              Width = 39
              Height = 13
              Caption = 'Nro Dni:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object D7: TDBEdit
              Left = 97
              Top = 5
              Width = 334
              Height = 21
              Color = 14277612
              DataSource = DataSource6
              ReadOnly = True
              TabOrder = 0
            end
            object D22: TDBEdit
              Left = 98
              Top = 30
              Width = 333
              Height = 21
              Color = 14277612
              DataSource = DataSource6
              ReadOnly = True
              TabOrder = 1
            end
            object D24: TDBEdit
              Left = 485
              Top = 30
              Width = 107
              Height = 21
              Color = 14277612
              DataSource = DataSource6
              ReadOnly = True
              TabOrder = 2
            end
            object D21: TDBEdit
              Left = 636
              Top = 3
              Width = 55
              Height = 21
              Color = 14277612
              DataSource = DataSource6
              ReadOnly = True
              TabOrder = 3
            end
            object D23: TDBEdit
              Left = 636
              Top = 29
              Width = 135
              Height = 21
              Color = 14277612
              DataSource = DataSource6
              ReadOnly = True
              TabOrder = 4
            end
            object D6: TDBEdit
              Left = 485
              Top = 3
              Width = 83
              Height = 21
              Color = 14277612
              DataSource = DataSource6
              ReadOnly = True
              TabOrder = 5
            end
            object D10: TDBEdit
              Left = 116
              Top = 66
              Width = 357
              Height = 21
              Color = clWhite
              DataSource = DataSource6
              ReadOnly = True
              TabOrder = 6
            end
            object DBEdit1: TDBEdit
              Left = 116
              Top = 91
              Width = 349
              Height = 21
              Color = clWhite
              DataSource = DataSource6
              ReadOnly = True
              TabOrder = 7
            end
            object DBEdit5: TDBEdit
              Left = 528
              Top = 92
              Width = 55
              Height = 21
              Color = clWhite
              DataSource = DataSource6
              ReadOnly = True
              TabOrder = 8
            end
            object DBEdit6: TDBEdit
              Left = 637
              Top = 91
              Width = 118
              Height = 21
              Color = clWhite
              DataSource = DataSource6
              ReadOnly = True
              TabOrder = 9
            end
            object DBEdit7: TDBEdit
              Left = 637
              Top = 65
              Width = 118
              Height = 21
              Color = 14277612
              DataSource = DataSource6
              ReadOnly = True
              TabOrder = 10
              Visible = False
            end
          end
        end
        object TabSheet8: TTabSheet
          Caption = 'Referencia del Servicio del Parque'
          ImageIndex = 1
          object grupo2: TJvgGroupBox
            Left = 0
            Top = 0
            Width = 794
            Height = 137
            Align = alClient
            Caption = 'Referencia del Serivicio del Parque'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
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
            FullHeight = 0
            object Label14: TLabel
              Left = 6
              Top = 28
              Width = 91
              Height = 13
              Caption = 'Fecha Inhumacion:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label5: TLabel
              Left = 194
              Top = 28
              Width = 67
              Height = 13
              Caption = 'Hora Llegada:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label7: TLabel
              Left = 321
              Top = 28
              Width = 49
              Height = 13
              Caption = 'Nro Titulo:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label13: TLabel
              Left = 431
              Top = 25
              Width = 42
              Height = 13
              Caption = 'N'#176' Nivel:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label6: TLabel
              Left = 528
              Top = 25
              Width = 43
              Height = 13
              Caption = 'Posicion:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label3: TLabel
              Left = 625
              Top = 23
              Width = 58
              Height = 13
              Caption = 'Hora Salida:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label4: TLabel
              Left = 61
              Top = 49
              Width = 31
              Height = 13
              Caption = 'Objeto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label51: TLabel
              Left = 226
              Top = 52
              Width = 62
              Height = 13
              Caption = 'TipoServicio:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label56: TLabel
              Left = 430
              Top = 52
              Width = 45
              Height = 13
              Caption = 'Cocheria:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label57: TLabel
              Left = 599
              Top = 51
              Width = 39
              Height = 13
              Caption = 'Parcela:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label63: TLabel
              Left = 694
              Top = 51
              Width = 34
              Height = 13
              Caption = 'Sector:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object D13: TDBEdit
              Left = 101
              Top = 20
              Width = 88
              Height = 21
              Color = 14277612
              DataSource = DataSource6
              ReadOnly = True
              TabOrder = 0
            end
            object D16: TDBEdit
              Left = 266
              Top = 20
              Width = 43
              Height = 21
              Color = 14277612
              DataSource = DataSource6
              ReadOnly = True
              TabOrder = 1
            end
            object D2: TDBEdit
              Left = 372
              Top = 20
              Width = 41
              Height = 21
              Color = 14277612
              DataSource = DataSource6
              ReadOnly = True
              TabOrder = 2
            end
            object D3: TDBEdit
              Left = 482
              Top = 17
              Width = 35
              Height = 21
              Color = 14277612
              DataSource = DataSource6
              ReadOnly = True
              TabOrder = 3
            end
            object D4: TDBEdit
              Left = 578
              Top = 17
              Width = 39
              Height = 21
              Color = 14277612
              DataSource = DataSource6
              ReadOnly = True
              TabOrder = 4
            end
            object D15: TDBEdit
              Left = 686
              Top = 15
              Width = 35
              Height = 21
              Color = 14277612
              DataSource = DataSource6
              ReadOnly = True
              TabOrder = 5
            end
            object D5: TDBEdit
              Left = 101
              Top = 45
              Width = 119
              Height = 21
              Color = 14277612
              DataSource = DataSource6
              ReadOnly = True
              TabOrder = 6
            end
            object DT: TDBEdit
              Left = 292
              Top = 46
              Width = 123
              Height = 21
              Color = 14277612
              DataSource = DataSource6
              ReadOnly = True
              TabOrder = 7
            end
            object DC: TDBEdit
              Left = 482
              Top = 44
              Width = 107
              Height = 21
              Color = 14277612
              DataSource = DataSource6
              ReadOnly = True
              TabOrder = 8
            end
            object Dpa: TDBEdit
              Left = 638
              Top = 45
              Width = 35
              Height = 21
              Color = 14277612
              DataSource = DataSource6
              ReadOnly = True
              TabOrder = 9
            end
            object DS: TDBEdit
              Left = 734
              Top = 45
              Width = 39
              Height = 21
              Color = 14277612
              DataSource = DataSource6
              ReadOnly = True
              TabOrder = 10
            end
          end
        end
      end
      object GroupBox7: TGroupBox
        Left = 0
        Top = 462
        Width = 802
        Height = 45
        Align = alBottom
        Caption = 'ACCIONES DE LA INHUMACION'
        TabOrder = 4
        object Confirmainhu: TJvBitBtn
          Left = 412
          Top = 10
          Width = 183
          Height = 31
          Caption = 'COFIRMAR INHUMACION'
          Enabled = False
          TabOrder = 0
          OnClick = ConfirmainhuClick
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
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object Anulainhu: TJvBitBtn
          Left = 618
          Top = 12
          Width = 169
          Height = 29
          Caption = 'ANULAR INHUMACION'
          Enabled = False
          TabOrder = 1
          OnClick = AnulainhuClick
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
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 810
    Height = 33
    ButtonHeight = 25
    Caption = 'ToolBar1'
    Color = clGradientInactiveCaption
    EdgeBorders = [ebLeft, ebTop, ebBottom]
    EdgeInner = esLowered
    ParentColor = False
    TabOrder = 2
    DesignSize = (
      808
      29)
    object ToolButton4: TToolButton
      Left = 0
      Top = 2
      Width = 327
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object Imp: TJvBitBtn
      Left = 327
      Top = 2
      Width = 113
      Height = 25
      Caption = 'Imprimir Datos'
      TabOrder = 2
      OnClick = ImpClick
      Glyph.Data = {
        56020000424D5602000000000000760000002800000021000000180000000100
        040000000000E0010000C40E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00F00000000000
        00000000000000000000F0000000F0333333333333333333333333333330F000
        0000F0303030303030303030303330303030F0000000F0333333333333333333
        333333333330F0000000F0303030303030303030303330303030F0000000F000
        0000000000000000000000000000F0000000FFFFFFFFFF000000000000FFFFFF
        FFFFF0000000FFFFFFF000000000000000000FFFFFFFF0000000FFFFFFF07777
        7777777777770FFFFFFFF0000000FFFFFFF070000000000000070FFFFFFFF000
        0000FFFFFFF070999999999999070FFFFFFFF0000000FFFFFFF0709999999999
        99070FFFFFFFF0000000FFFFFFF070999999999999070FFFFFFFF0000000FFF0
        FFF070999999999999070FFFF0FFF0000000FFF0FFF070999999999909070FFF
        F0FFF0000000FFF0FFF070999999999909070FFFF0FFF0000000FFF0FFF07099
        9999999999070FFFF0FFF0000000FFF00FF070000000000000070FFFFF0FF000
        0000FFFF0FF077777777777777770FFFFF0FF0000000FFF00FF0000000000000
        00000FFFF00FF0000000FF00FFFFFFFFFFFFFFFFFFFFFFFF00FFF0000000FF0F
        FFFFFFFFFFFFFFFFFFFFFFFF0FFFF0000000FF00FFFFFFFFFFFFFFFFFFFFFFFF
        00FFF0000000FFFF00FFFFFFFFFFFFFFFFFFFFFFFF00F0000000}
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object ToolButton3: TToolButton
      Left = 440
      Top = 2
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object anula: TJvBitBtn
      Left = 448
      Top = 2
      Width = 117
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'ANULAR TODOS'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Visible = False
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
      Left = 565
      Top = 2
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object Confirma: TJvBitBtn
      Left = 573
      Top = 2
      Width = 118
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'CONFIRMAR TODOS'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Visible = False
      OnClick = ConfirmaClick
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
      Left = 691
      Top = 2
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object JvBitBtn2: TJvBitBtn
      Left = 699
      Top = 2
      Width = 70
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Salir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = JvBitBtn2Click
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
    Left = 766
    Top = 80
  end
  object DataSource2: TDataSource
    Left = 500
    Top = 36
  end
  object RvOrden: TRvSystem
    TitleSetup = 'Conf. Impres.'
    TitleStatus = 'Estado del Reporte'
    TitlePreview = 'Imagen Previa'
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
    OnPrint = RvOrdenPrint
    Left = 472
    Top = 70
  end
  object DataSource3: TDataSource
    Left = 532
    Top = 37
  end
  object DataSource4: TDataSource
    Left = 576
    Top = 36
  end
  object ImageList1: TImageList
    Left = 280
    Top = 55
    Bitmap = {
      494C010104000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
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
      0000000000000000000000000000FF00000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF00000000000000FFFFFF0000000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00000000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      00000000FF00000000000000000000000000000000000000FF00000000000000
      000000000000000000007F7F7F00000000000000000000000000000000000000
      0000FF0000000000000000000000FFFFFF0000000000FFFFFF0000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF00000000000000FFFFFF0000000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF0000000000000000000000000000000000000000000000FF00000000000000
      00000000FF0000000000000000000000000000000000000000000000FF000000
      0000000000007F7F7F000000FF0000000000000000000000000000000000FF00
      00000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FF000000000000000000000000000000000000000000000000000000FF00
      000000000000FFFFFF00FFFFFF00FFFFFF0000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F0000000000000000000000000000000000000000007F7F7F000000FF007F7F
      7F000000FF0000000000000000000000000000000000000000007F7F7F000000
      FF007F7F7F000000FF00000000000000000000000000FF000000FF0000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FF00000000000000000000000000000000000000FF000000FF00
      0000FF00000000000000FFFFFF00FFFFFF00FFFFFF0000000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      FF000000FF00000000000000000000000000FF0000000000000000000000FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FF0000000000000000000000FF000000FF000000FF00
      0000FF000000FF00000000000000FFFFFF00FFFFFF00FFFFFF0000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000FF00FFFFFF00000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF00000000000000FF000000000000000000000000000000FF00000000000000
      FF000000FF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000FF00000080000000FF000000FF000000FF00
      0000FF000000FF000000FF00000000000000FFFFFF00FFFFFF00FFFFFF000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF0000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF0000000000FF00000080000000FF000000FF00
      0000FF000000FF000000FF000000FF00000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FF00000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000FF00000000000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000FF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FF00000080000000FF00
      0000FF00000000000000FF000000FF000000FF00000000000000FFFFFF00FFFF
      FF00FFFFFF0000000000FF000000000000000000000000000000000000000000
      000000000000FFFFFF008000000000000000000000000000000080000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FF0000008000
      0000FF000000FF000000FF00000000000000FF000000FF00000000000000FFFF
      FF0000000000FF00000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      00000000FF000000FF0000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      000080000000FF0000000000000000000000FF000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF00000080000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF008000000000000000000000000000000080000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00000080000000FF000000FF000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF00000080000000FF00000000000000000000000000
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
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000008000FFFFFFFFFFFF5555FE3FFDFFFFFF
      0000F81FF8FFF00776BCF40FF07FF007B6D8E007E03FF00786C28003C01FF007
      CEE64001800FF007CAA600000007F00786C000000003F0074EF680018001F007
      E6F2C003C003F007E6F2E00FE00FF007FEFEF07FF00FF0070000F8FFF81FF007
      5555FFFFFC7FF0070000FFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object RvD: TRvSystem
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
    OnPrint = RvDPrint
    Left = 660
    Top = 82
  end
  object Timer1: TTimer
    Interval = 500
    OnTimer = Timer1Timer
    Left = 694
    Top = 84
  end
  object DataSource5: TDataSource
    Left = 762
    Top = 242
  end
  object DataSource6: TDataSource
    Left = 768
    Top = 406
  end
end

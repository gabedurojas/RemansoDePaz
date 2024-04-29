object Con_Cliente: TCon_Cliente
  Left = 311
  Top = 99
  AutoScroll = False
  Caption = 'Consulta de Clientes'
  ClientHeight = 562
  ClientWidth = 793
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
    Top = 543
    Width = 793
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
    Width = 793
    Height = 510
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    TabOrder = 0
    TabStop = False
    OnChange = PC1Change
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
    object TabSheet1: TTabSheet
      Caption = 'B'#250'squedas'
      ImageIndex = 1
      object Bevel2: TBevel
        Left = 6
        Top = 8
        Width = 187
        Height = 91
      end
      object LB1: TLabel
        Left = 52
        Top = 108
        Width = 86
        Height = 13
        Caption = 'Ingrese el N'#176' DNI:'
      end
      object DBGrid1: TJvDBGrid
        Left = 206
        Top = 0
        Width = 579
        Height = 482
        Align = alRight
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
        Left = 9
        Top = 53
        Width = 75
        Height = 17
        Caption = 'Por DNI'
        Checked = True
        TabOrder = 1
        TabStop = True
        OnClick = RB2Click
      end
      object RB1: TRadioButton
        Left = 10
        Top = 11
        Width = 75
        Height = 17
        Caption = 'Todos'
        TabOrder = 2
        OnClick = RB1Click
      end
      object RB2: TRadioButton
        Left = 94
        Top = 73
        Width = 75
        Height = 17
        Caption = 'Por CUIF'
        TabOrder = 3
        Visible = False
        OnClick = RB2Click
      end
      object RB6: TRadioButton
        Left = 9
        Top = 33
        Width = 86
        Height = 17
        Caption = 'Por Apellido'
        TabOrder = 4
        OnClick = RB2Click
      end
      object ODNI: TEdit
        Left = 36
        Top = 124
        Width = 125
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 11
        ParentFont = False
        TabOrder = 5
        Text = '00000000'
        OnKeyPress = ODNIKeyPress
      end
      object ONOMB: TEdit
        Left = 8
        Top = 126
        Width = 187
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 25
        TabOrder = 6
        Visible = False
        OnKeyPress = ONOMBKeyPress
      end
      object Busca: TJvBitBtn
        Left = 46
        Top = 166
        Width = 109
        Height = 47
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
      object RB3: TRadioButton
        Left = 94
        Top = 34
        Width = 75
        Height = 17
        Caption = 'Por Acci'#243'n'
        TabOrder = 8
        Visible = False
        OnClick = RB2Click
      end
      object RB7: TRadioButton
        Left = 93
        Top = 54
        Width = 78
        Height = 17
        Caption = 'Por Parcela'
        TabOrder = 9
        Visible = False
        OnClick = RB2Click
      end
      object RB4: TRadioButton
        Left = 92
        Top = 15
        Width = 78
        Height = 17
        Caption = 'Por Sector'
        TabOrder = 10
        Visible = False
        OnClick = RB2Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Datos Personales'
      DesignSize = (
        785
        482)
      object Label15: TLabel
        Left = 21
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
        Left = 31
        Top = 34
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
        Top = 34
        Width = 25
        Height = 13
        Caption = 'Alias:'
      end
      object Label2: TLabel
        Left = 9
        Top = 61
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
        Top = 61
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
        Top = 61
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
      object Label12: TLabel
        Left = 1
        Top = 89
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
      object Label26: TLabel
        Left = 322
        Top = 89
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
      object Label14: TLabel
        Left = 209
        Top = 116
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
      object Label1: TLabel
        Left = 19
        Top = 116
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
      object Label16: TLabel
        Left = 512
        Top = 116
        Width = 30
        Height = 13
        Caption = 'Barrio:'
      end
      object Label3: TLabel
        Left = 21
        Top = 143
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
        Left = 9
        Top = 171
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
        Left = 24
        Top = 198
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
        Left = 34
        Top = 225
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
        Left = 26
        Top = 253
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
        Left = 23
        Top = 281
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
        Left = 605
        Top = 174
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
        DataSource = DataSource0
        ReadOnly = True
        TabOrder = 0
      end
      object D2: TDBEdit
        Left = 268
        Top = 3
        Width = 57
        Height = 21
        Color = 14277612
        DataSource = DataSource0
        ReadOnly = True
        TabOrder = 1
      end
      object D3: TDBEdit
        Left = 434
        Top = 3
        Width = 125
        Height = 21
        Color = 14277612
        DataSource = DataSource0
        ReadOnly = True
        TabOrder = 2
      end
      object D4: TDBEdit
        Left = 638
        Top = 3
        Width = 109
        Height = 21
        Color = 14277612
        DataSource = DataSource0
        ReadOnly = True
        TabOrder = 3
      end
      object D5: TDBEdit
        Left = 70
        Top = 30
        Width = 359
        Height = 21
        Color = 14277612
        DataSource = DataSource0
        ReadOnly = True
        TabOrder = 4
      end
      object D6: TDBEdit
        Left = 498
        Top = 30
        Width = 111
        Height = 21
        Color = 14277612
        DataSource = DataSource0
        ReadOnly = True
        TabOrder = 5
      end
      object D7: TDBEdit
        Left = 70
        Top = 58
        Width = 151
        Height = 21
        Color = 14277612
        DataSource = DataSource0
        ReadOnly = True
        TabOrder = 6
      end
      object D8: TDBEdit
        Left = 292
        Top = 58
        Width = 195
        Height = 21
        Color = 14277612
        DataSource = DataSource0
        ReadOnly = True
        TabOrder = 7
      end
      object D9: TDBEdit
        Left = 552
        Top = 58
        Width = 191
        Height = 21
        Color = 14277612
        DataSource = DataSource0
        ReadOnly = True
        TabOrder = 8
      end
      object D10: TDBEdit
        Left = 70
        Top = 85
        Width = 207
        Height = 21
        Color = 14277612
        DataSource = DataSource0
        ReadOnly = True
        TabOrder = 9
      end
      object D11: TDBEdit
        Left = 386
        Top = 85
        Width = 253
        Height = 21
        Color = 14277612
        DataSource = DataSource0
        ReadOnly = True
        TabOrder = 10
      end
      object D13: TDBEdit
        Left = 260
        Top = 113
        Width = 237
        Height = 21
        Color = 14277612
        DataSource = DataSource0
        ReadOnly = True
        TabOrder = 11
      end
      object D12: TDBEdit
        Left = 70
        Top = 113
        Width = 117
        Height = 21
        Color = 14277612
        DataSource = DataSource0
        ReadOnly = True
        TabOrder = 12
      end
      object D14: TDBEdit
        Left = 544
        Top = 113
        Width = 239
        Height = 21
        Color = 14277612
        DataSource = DataSource0
        ReadOnly = True
        TabOrder = 13
      end
      object D15: TDBEdit
        Left = 70
        Top = 140
        Width = 381
        Height = 21
        Color = 14277612
        DataSource = DataSource0
        ReadOnly = True
        TabOrder = 14
      end
      object GroupBox1: TGroupBox
        Left = 70
        Top = 306
        Width = 715
        Height = 175
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Datos Telefon'#243'nicos'
        TabOrder = 15
        object JvDBGrid1: TJvDBGrid
          Left = 2
          Top = 15
          Width = 711
          Height = 158
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
          AlternateRowColor = clGradientInactiveCaption
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 18
          TitleRowHeight = 19
        end
      end
      object D16: TDBEdit
        Left = 70
        Top = 168
        Width = 61
        Height = 21
        Color = 14277612
        DataSource = DataSource0
        ReadOnly = True
        TabOrder = 16
      end
      object D17: TDBEdit
        Left = 133
        Top = 168
        Width = 381
        Height = 21
        Color = 14277612
        DataSource = DataSource0
        ReadOnly = True
        TabOrder = 17
      end
      object D18: TDBEdit
        Left = 70
        Top = 195
        Width = 381
        Height = 21
        Color = 14277612
        DataSource = DataSource0
        ReadOnly = True
        TabOrder = 18
      end
      object D19: TDBEdit
        Left = 70
        Top = 223
        Width = 381
        Height = 21
        Color = 14277612
        DataSource = DataSource0
        ReadOnly = True
        TabOrder = 19
      end
      object D20: TDBEdit
        Left = 70
        Top = 251
        Width = 479
        Height = 21
        Color = 14277612
        DataSource = DataSource0
        ReadOnly = True
        TabOrder = 20
      end
      object D21: TDBEdit
        Left = 70
        Top = 279
        Width = 479
        Height = 21
        Color = 14277612
        DataSource = DataSource0
        ReadOnly = True
        TabOrder = 21
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Parcelas e Inhumados'
      ImageIndex = 2
      object Splitter1: TSplitter
        Left = 0
        Top = 137
        Width = 785
        Height = 6
        Cursor = crVSplit
        Align = alTop
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 0
        Width = 785
        Height = 137
        Align = alTop
        Caption = 'Parcelas en las Cuales es Titular'
        TabOrder = 0
        object JvDBGrid2: TJvDBGrid
          Left = 2
          Top = 15
          Width = 781
          Height = 120
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
          AlternateRowColor = clGradientInactiveCaption
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 18
          TitleRowHeight = 19
        end
      end
      object PC2: TJvgPageControl
        Left = 0
        Top = 143
        Width = 785
        Height = 339
        ActivePage = TabSheet8
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
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
        TabSelectedStyle.CaptionHAlign = fhaCenter
        TabSelectedStyle.Gradient.Active = False
        TabSelectedStyle.Gradient.Orientation = fgdHorizontal
        Options = [ftoAutoFontDirection, ftoExcludeGlyphs]
        object TabSheet5: TTabSheet
          Caption = 'Inhumados'
          object GroupBox4: TGroupBox
            Left = 0
            Top = 0
            Width = 777
            Height = 311
            Align = alClient
            Caption = 'Inhumados de los Cuales es Responsable y/o Testigo'
            TabOrder = 0
            DesignSize = (
              777
              311)
            object JvDBGrid3: TJvDBGrid
              Left = 4
              Top = 42
              Width = 773
              Height = 265
              Anchors = [akLeft, akTop, akRight, akBottom]
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
              AlternateRowColor = clGradientInactiveCaption
              SelectColumnsDialogStrings.Caption = 'Select columns'
              SelectColumnsDialogStrings.OK = '&OK'
              SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
              EditControls = <>
              RowsHeight = 18
              TitleRowHeight = 19
            end
            object Panel1: TPanel
              Left = 4
              Top = 14
              Width = 345
              Height = 25
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Enabled = False
              TabOrder = 1
              object R2: TRadioButton
                Left = 175
                Top = 5
                Width = 157
                Height = 17
                Caption = 'Por Selecci'#243'n de N'#176' Acci'#243'n'
                Checked = True
                TabOrder = 0
                TabStop = True
              end
              object R1: TRadioButton
                Left = 10
                Top = 5
                Width = 155
                Height = 17
                Caption = 'En donde es Responsable'
                TabOrder = 1
              end
            end
          end
        end
        object TabSheet7: TTabSheet
          Caption = 'Estado Cuenta Ventas'
          ImageIndex = 2
          object Splitter3: TSplitter
            Left = 353
            Top = 0
            Height = 311
          end
          object GroupBox6: TGroupBox
            Left = 0
            Top = 0
            Width = 353
            Height = 311
            Align = alLeft
            Caption = 'Ventas Existentes en el N'#176' Acci'#243'n Seleccionado'
            TabOrder = 0
            object JvDBGrid4: TJvDBGrid
              Left = 2
              Top = 15
              Width = 349
              Height = 294
              Align = alClient
              DataSource = DataSource4
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
              OnCellClick = JvDBGrid4CellClick
              AlternateRowColor = clGradientInactiveCaption
              SelectColumnsDialogStrings.Caption = 'Select columns'
              SelectColumnsDialogStrings.OK = '&OK'
              SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
              EditControls = <>
              RowsHeight = 18
              TitleRowHeight = 19
            end
          end
          object GroupBox7: TGroupBox
            Left = 356
            Top = 0
            Width = 421
            Height = 311
            Align = alClient
            Caption = 'Estado de Cuenta'
            TabOrder = 1
            object JvDBGrid5: TJvDBGrid
              Left = 2
              Top = 15
              Width = 417
              Height = 294
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
        object TabSheet6: TTabSheet
          Caption = 'Estado Cuenta Servicios'
          ImageIndex = 1
          object Splitter2: TSplitter
            Left = 353
            Top = 0
            Height = 311
          end
          object GroupBox2: TGroupBox
            Left = 0
            Top = 0
            Width = 353
            Height = 311
            Align = alLeft
            Caption = 'Servicios Existentes en el N'#176' Acci'#243'n Seleccionado'
            TabOrder = 0
            object JvDBGrid6: TJvDBGrid
              Left = 2
              Top = 15
              Width = 349
              Height = 294
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
              OnCellClick = JvDBGrid6CellClick
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
            Left = 356
            Top = 0
            Width = 421
            Height = 311
            Align = alClient
            Caption = 'Estado de Cuenta'
            TabOrder = 1
            object JvDBGrid7: TJvDBGrid
              Left = 2
              Top = 15
              Width = 417
              Height = 294
              Align = alClient
              DataSource = DataSource7
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
        end
        object TabSheet8: TTabSheet
          Caption = 'Estado Cuenta Mantenimiento'
          ImageIndex = 3
          object JvDBGrid8: TJvDBGrid
            Left = 0
            Top = 0
            Width = 777
            Height = 311
            Align = alClient
            DataSource = DataSource8
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
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 793
    Height = 33
    ButtonHeight = 27
    Caption = 'ToolBar1'
    Color = clGradientInactiveCaption
    EdgeBorders = [ebLeft, ebTop, ebBottom]
    EdgeInner = esLowered
    ParentColor = False
    TabOrder = 1
    DesignSize = (
      791
      29)
    object ToolButton4: TToolButton
      Left = 0
      Top = 2
      Width = 511
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object ImpPDF: TBitBtn
      Left = 511
      Top = 2
      Width = 62
      Height = 27
      Hint = 'Guarda los Datos'
      Anchors = [akTop, akRight]
      Caption = 'Imprimir '#13#10'como PDF'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Visible = False
      OnClick = ImpPDFClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
        FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
        00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
        F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
        00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
        F033777777777337F73309999990FFF0033377777777FFF77333099999000000
        3333777777777777333333399033333333333337773333333333333903333333
        3333333773333333333333303333333333333337333333333333}
      Margin = 2
      NumGlyphs = 2
    end
    object ToolButton1: TToolButton
      Left = 573
      Top = 2
      Width = 8
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object Imprime: TJvBitBtn
      Left = 581
      Top = 2
      Width = 62
      Height = 27
      Anchors = [akTop, akRight]
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = ImprimeClick
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
      HotTrackFont.Height = -8
      HotTrackFont.Name = 'Arial'
      HotTrackFont.Style = []
    end
    object ToolButton2: TToolButton
      Left = 643
      Top = 2
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object Exporta: TJvBitBtn
      Left = 651
      Top = 2
      Width = 62
      Height = 27
      Anchors = [akTop, akRight]
      Caption = 'Exportar '#13#10'a Excel'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = ExportaClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300030003
        0003333377737773777333333333333333333FFFFFFFFFFFFFFF770000000000
        0000777777777777777733039993BBB3CCC3337F737F737F737F37039993BBB3
        CCC3377F737F737F737F33039993BBB3CCC33F7F737F737F737F77079997BBB7
        CCC77777737773777377330399930003CCC3337F737F7773737F370399933333
        CCC3377F737F3333737F330399933333CCC33F7F737FFFFF737F770700077777
        CCC77777777777777377330333333333CCC3337F33333333737F370333333333
        0003377F33333333777333033333333333333F7FFFFFFFFFFFFF770777777777
        7777777777777777777733333333333333333333333333333333}
      NumGlyphs = 2
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -8
      HotTrackFont.Name = 'Arial'
      HotTrackFont.Style = []
    end
    object ToolButton3: TToolButton
      Left = 713
      Top = 2
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object sale: TJvBitBtn
      Left = 721
      Top = 2
      Width = 62
      Height = 27
      Anchors = [akTop, akRight]
      Caption = 'Salir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
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
  object DataSource0: TDataSource
    Left = 2
    Top = 6
  end
  object Rv: TRvSystem
    TitleSetup = 'Conf. Impres.'
    TitleStatus = 'Estado del Reporte'
    TitlePreview = 'Imagen Previa'
    SystemSetups = [ssAllowSetup, ssAllowCopies, ssAllowCollate, ssAllowDuplex, ssAllowDestPreview, ssAllowDestPrinter, ssAllowDestFile, ssAllowPreviewSetup]
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.MarginPercent = 10.000000000000000000
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPreview.ZoomInc = 50
    SystemPrinter.Orientation = poLandScape
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.Units = unMM
    SystemPrinter.UnitsFactor = 25.400000000000000000
    OnPrint = RvPrint
    Left = 312
    Top = 4
  end
  object DataSource1: TDataSource
    Left = 34
    Top = 6
  end
  object DataSource2: TDataSource
    Left = 68
    Top = 6
  end
  object DataSource3: TDataSource
    Left = 102
    Top = 6
  end
  object DataSource4: TDataSource
    Left = 134
    Top = 6
  end
  object DataSource5: TDataSource
    Left = 170
    Top = 4
  end
  object DataSource6: TDataSource
    Left = 206
    Top = 4
  end
  object DataSource7: TDataSource
    Left = 240
    Top = 4
  end
  object DataSource8: TDataSource
    Left = 274
    Top = 4
  end
end

object CON_VPAR: TCON_VPAR
  Left = 197
  Top = 118
  AutoScroll = False
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Ventas de Parcelas - CONSULTAS'
  ClientHeight = 532
  ClientWidth = 822
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
  object Barra1: TStatusBar
    Left = 0
    Top = 513
    Width = 822
    Height = 19
    Panels = <
      item
        Width = 300
      end
      item
        Width = 50
      end>
  end
  object grupo1: TGroupBox
    Left = 0
    Top = 0
    Width = 822
    Height = 225
    Align = alTop
    Caption = 'B'#250'squeda de Parcelas Vendidas'
    Color = 14801370
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    object LB1: TLabel
      Left = 54
      Top = 77
      Width = 107
      Height = 13
      Caption = 'Ingrese el N'#176' ACCION:'
    end
    object Bevel2: TBevel
      Left = 4
      Top = 16
      Width = 187
      Height = 51
    end
    object DBGrid1: TDBGrid
      Left = 241
      Top = 15
      Width = 579
      Height = 208
      Align = alRight
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnCellClick = DBGrid1CellClick
    end
    object RD: TRadioButton
      Left = 10
      Top = 42
      Width = 123
      Height = 17
      Caption = 'Por N'#186' Accion'
      TabOrder = 1
      OnClick = RDClick
    end
    object RT: TRadioButton
      Left = 10
      Top = 23
      Width = 75
      Height = 17
      Caption = 'Todas'
      Checked = True
      TabOrder = 2
      TabStop = True
      OnClick = RTClick
    end
    object Busca: TLMDButton
      Left = 20
      Top = 122
      Width = 169
      Height = 38
      Hint = 'Buscar y Asignar el Cliente'
      Caption = 'Buscar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
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
    end
    object ODNI: TEdit
      Left = 56
      Top = 90
      Width = 89
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 8
      ParentFont = False
      TabOrder = 4
      Text = '00000000'
    end
    object IDVenta: TEdit
      Left = 56
      Top = 182
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
      Text = '00'
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 454
    Width = 822
    Height = 59
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object SALE: TBitBtn
    Left = 665
    Top = 466
    Width = 148
    Height = 39
    Hint = 'Sale y Cierra Ventana'
    Caption = 'Salir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    Glyph.Data = {
      36080000424D3608000000000000360400002800000020000000200000000100
      080000000000000400000000000000000000000100000000000000000000C0C0
      C0000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0000000000C116
      820063F4140063F44C0044AFA00063F4980000000100C1B3A9000001F8000000
      010063F414000000020063F3AC000000000063F43400C4F32200C11698000000
      000000000000F6447800023D4400DC08B400F644D200C115A60000021C0063F4
      4C0000C4BC0063F498002C001C00000003000000000063F7A00044AFA0000000
      01003C03200063F404000000000063F48000C4F32200C115F000FFFFFF0063F4
      6400F736630000021C000000140000196E000000000096391F0000013F0063F4
      7800F719230000000100023D4400F9289900F71A790000C4B60063F6C800F719
      2E0096391F00000000006FC496000000020046000000F40000002E0002008F00
      00003F0000000001270000000000FA012700AF3BFA000000040000000000C114
      FE000000000000196E0000001400103BFA0001000000E6000000FF7A3400FA38
      6F00AF3C41006FFFFF00000001006E386F003A98B400AC04CC00000000000000
      0000000000006E0000001C00140000196E00FFFFFF0070168F008F5927000000
      0000000000000000800000000000000000000000000000000000AC04CC000000
      00000000000000000000000005000000000070175F00FFFFFF000000000020C5
      D000000000000000000000008000000000000000000000000000000000000000
      000000000000000000000000000000000500000000005F0C0000000000000000
      0000F70069000000010000000100FFFFFF00FFFFC700FFFFC70044A65C00FFFF
      FE00FFFFFF00FFFFFF00435FEF0043602B0000021C000000800042B8AC006600
      660000008000000069000000000063F67C00F7920100435FF400FFFFFE00435F
      B800FFFFFE0044AD3800435FF4000000000078021C001000000030000000177F
      B200107FB5002F000100E1C672006401170063F65800F7126A0000040A000000
      0000435FB800FFFFFF0044A65C00FFFFFF0000000000F7729900435FB80044A6
      5C0063F82400F798CF00604F8C007EC9980077EF820063F69C0063F6FC004100
      0000000001000245D000F792880000000100F7928F00410000000000010063F6
      FC004360780000FFFF000245D00043570400F7986A0041000000F7987F006012
      D4004360780000FFFF000245D00041004C00410000000000000044ACD80063F6
      C8007740AB0063F82400FB8CF800FB8FC000FFFFFF0063F71400F74AAC000000
      000043607800435708000000000077414F007744B200436D0C00F798CF00604F
      8C000000000077EF82007E61680042B4CC000000000044ACD8007746B7000000
      06007744A6007744A90000000000741C0B0042B4CC0063F79800010101010101
      0101010100010101010101010101010101010101010101010101010101010101
      0101010000010101010101010101010101010101010101010101010101010101
      0101000900010101010101010101010101010101010101010101010101010101
      0100090900010101010101010101010101010101010101010101010101010101
      0009090900010101010101010101010101010101010101010101010101010100
      0909090900010101010101010101010101010101010101010101010101010009
      0909090900010101010101010101010101010101010101010101000000000909
      0909090900000000000000000000000000000101010101010101010101000909
      0909090900080808080808000101010101010101010101010101010101000909
      0909090900080808080808000101010101010101010101010101010101000909
      0909090900080808080808000101010101010101010101010101010101000909
      0909090000080808080808000101010101010101010101010101010101000909
      0909090000080808080808000101010101010101010101010101010101000909
      0909090900080808080808000101010101010401010101010101010101000909
      0909090900080808080808000101010101040401010101010101010101000909
      0909090900080808080808000101010104040404040404010101010101000909
      0909090900080808080808000101010404040404040404010101010101000909
      0909090900080808080808000101040404040404040404010101010101000909
      0909090900080808080808000101010404040404040404010101010101000909
      0909090900080808080808000101010104040404040404010101010101000909
      0909090900080808080808000101010101040401010101010101010101000909
      0909090900080808080808000101010101010401010101010101010101000909
      0909090008080808080808000101010101010101010101010101010101000909
      0909000808080808080808000101010101010101010101010101010101000909
      0900080808080808080808000101010101010101010101010101010101000909
      0008080808080808080808000101010101010101010101010101010101000900
      0808080808080808080808000101010101010101010101010101010101000008
      0808080808080808080808000101010101010101010101010101010101000000
      0000000000000000000000000101010101010101010101010101010101010101
      0101010101010101010101010101010101010101010101010101010101010101
      0101010101010101010101010101010101010101010101010101010101010101
      0101010101010101010101010101010101010101010101010101}
    Margin = 4
  end
  object PC1: TPageControl
    Left = 0
    Top = 225
    Width = 822
    Height = 229
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 4
    object TabSheet2: TTabSheet
      Caption = 'Detalle de Cuotas'
      ImageIndex = 1
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 814
        Height = 197
        Align = alTop
        TabOrder = 0
        object grilla2: TStringGrid
          Left = 2
          Top = 15
          Width = 810
          Height = 180
          Align = alClient
          ColCount = 8
          DefaultRowHeight = 15
          FixedCols = 0
          RowCount = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
          ParentFont = False
          TabOrder = 0
          ColWidths = (
            48
            47
            67
            80
            91
            62
            67
            318)
        end
      end
    end
  end
  object DataSource1: TDataSource
    Left = 262
    Top = 36
  end
  object Dialogo: TLMDMessageBoxDlg
    MessageAlignment.Alignment = agTopLeft
    MessageFont.Charset = DEFAULT_CHARSET
    MessageFont.Color = clWindowText
    MessageFont.Height = -11
    MessageFont.Name = 'MS Sans Serif'
    MessageFont.Style = []
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -11
    CaptionFont.Name = 'MS Sans Serif'
    CaptionFont.Style = []
    ButtonFont.Charset = DEFAULT_CHARSET
    ButtonFont.Color = clWindowText
    ButtonFont.Height = -11
    ButtonFont.Name = 'MS Sans Serif'
    ButtonFont.Style = []
    CustomGlyphListIndex = 0
    CustomGlyphImageIndex = 0
    Left = 730
    Top = 32
  end
end

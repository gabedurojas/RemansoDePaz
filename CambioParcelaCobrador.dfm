object AM_Titulares: TAM_Titulares
  Left = 265
  Top = 139
  Width = 869
  Height = 484
  Caption = 'Modificacion de Titulares '
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
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 853
    Height = 445
    Align = alClient
    TabOrder = 0
    object JvgGroupBox1: TJvgGroupBox
      Left = 2
      Top = 15
      Width = 849
      Height = 407
      Align = alClient
      Caption = 'Selecci'#243'n y B'#250'squedas de los Titulares'
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
        849
        407)
      FullHeight = 0
      object Label21: TLabel
        Left = 130
        Top = 106
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
      object Label53: TLabel
        Left = 285
        Top = 106
        Width = 27
        Height = 13
        Caption = 'Nivel:'
        Visible = False
      end
      object Label1: TLabel
        Left = 10
        Top = 106
        Width = 51
        Height = 13
        Caption = 'N'#176' Accion:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 22
        Top = 24
        Width = 116
        Height = 13
        Caption = 'Selecciones el SECTOR'
      end
      object Label29: TLabel
        Left = 198
        Top = 26
        Width = 138
        Height = 13
        Caption = 'Selecciones el N'#176' de Parcela'
      end
      object LB1: TLabel
        Left = 379
        Top = 27
        Width = 110
        Height = 13
        Alignment = taCenter
        Caption = 'N'#176' de Acci'#243'n Asociada'
      end
      object Edit1: TEdit
        Left = 172
        Top = 98
        Width = 77
        Height = 24
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 0
        Text = '00000000000'
      end
      object Button2: TJvBitBtn
        Left = 252
        Top = 98
        Width = 31
        Height = 23
        TabOrder = 1
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
      object NIVEL: TComboBox
        Left = 314
        Top = 96
        Width = 41
        Height = 26
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ItemHeight = 18
        ItemIndex = 0
        ParentFont = False
        TabOrder = 2
        Text = '1'
        Visible = False
        Items.Strings = (
          '1'
          '2'
          '3')
      end
      object GrillaT: TJvStringGrid
        Left = 2
        Top = 129
        Width = 845
        Height = 240
        Align = alBottom
        ColCount = 13
        DefaultColWidth = 55
        DefaultRowHeight = 20
        FixedCols = 0
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
        ScrollBars = ssHorizontal
        TabOrder = 5
        OnClick = GrillaTClick
        Alignment = taLeftJustify
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clRed
        FixedFont.Height = -11
        FixedFont.Name = 'MS Sans Serif'
        FixedFont.Style = [fsBold]
        ColWidths = (
          23
          24
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
      object Agrega2: TJvBitBtn
        Left = 441
        Top = 81
        Width = 85
        Height = 44
        Hint = 'Agrega Nueva Fila'
        Caption = 'Agregar'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = Agrega2Click
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
          FFFFFFFFFFFF6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF6C006C6CDBDBDB6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF6C00FD00006C6C6C6C6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF6C00FDFDFDFD00006C006C6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF6C00FDFDDADA91910000FC006C6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF6C00FDDADA91910000FCFCFCFC006C6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          6C00DADA91910000FCFCFCFCFCFCFC00006C6CFFFFFFFFFFFFFFFFFFFFFFFF6C
          00DA91910000FCFCFCFCFCFCFCFCFCFC0000006C6CFFFFFFFFFFFFFFFFFF6C00
          91910000FDFDFDFDFDFDFDFDFDFDFDFDFD00DA00006C6CFFFFFFFFFFFF6C0091
          0000FEFEFEFEFEFEFEFEFE6CFEFEFEFEFEFE00DADA00006C6CFFFFFF6C000000
          FEFEFEFEFEFE00006C006C6C006C6C6C6C6C6C006C6C6C00006CFF6C0000FFFF
          FFFFFFFFFFFF4900006C006C6C006C6C6C6C6C6C006C6C006C6C0000FFFFFFFF
          FFFFFFFFFF6CFF494900006CDADA6C91919191919100006C6C6CFF00FFFFFFFF
          FFFFFF6CFFFF6C4949F1F10000FFFF6CFFFFFFFFFFFF006C6CFFFFFF00FFFFFF
          FFFFFFFF6CFFFF49FFF2F1F1F100FFFFDAFFFFFFFFFFFF00FFFFFFFFFF00FFFF
          FFFFFFFFFF91FFFF49FF4900000000FFFFFFFFFFFFFFFFFF00FFFFFFFFFF00FF
          FFFFFFFFFFFF6CFF49FF49FC49F0F000FFFFFFFFFFFF0000FFFFFFFFFFFFFF00
          FFFFFFFFFFFFFF6C494949FFFC49F0F000FFFFFF0000FFFFFFFFFFFFFFFFFFFF
          00FFFFFFFFFFFFFFDA49FE92FFFC49F0F0000000FFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFF49F0FE92FFFC49F0F000FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF00FFFFFFFFFFFFFF49F0FE92FFFC49F0F000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF00FFFFFFFFFFFFFF49F0FE92FFFC49F0F000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF00FFFFFFFFFF000049F0FE92FFFC49F0F000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFF0000FFFFFF49F0FE92FFFC49F0F000FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0000FFFFFFFFFFFF49F0FE92FFFC49494900FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF49F0FE92FF49CDCD8400FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF49F0FE49FFCDCD494900FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF49F049F2FF49F2F200FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4949F249FFF2F200FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF49F249FFF2F200FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4949FFF249FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF494949FFFF}
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'MS Sans Serif'
        HotTrackFont.Style = []
      end
      object Modifica2: TJvBitBtn
        Left = 532
        Top = 81
        Width = 92
        Height = 44
        Hint = 'Modifica los Datos de la Fila'
        Caption = 'Modificar'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = Modifica2Click
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
          FF0080C0FF00FFC0FF0000FFFF0040FFFF0080FFFF00FFFFFF00000000000000
          0000000000000000000000000000000000000000000000000000929212000000
          000000000000000000000000000000000000000000000000000092921000FF1F
          FF1F001F00DBDBDBDBDBDBDBDBDBDB00DBDBDBDBDBDBDB100000929210001FFF
          00FF00FF00DB000000000000000000000000000000000010000092921000FF1F
          001F001F00DB001FFF030303FF00FF1F001FFF1FFF1F00100000929210001FFF
          00FF00FF00DB00FF1F03FCFF1FFF1FFF1FFF1FFF1FFF0010000092921000FF1F
          001FFF1F00DB001F0303FF1FFF1FFF1FFF1FFF1F001F00100000929210001FFF
          00FF00FF00DB00FF03FF1FFF1FFF1FFF1FFF1FFF00FF0010000092921000FF1F
          001FFF1F00DB001F031FFF1FFF1FFF1FFF1F001F001F00100000929210001FFF
          00FF00FF000000FF03FF1FFF1FFF1FFF1FFF1FFF1FFF0010000092921000FF1F
          001F001F0000FC00001FFF1FFF1FFF1FFF1F001F001F00100000929210001FFF
          00FF00FF0000FCFCFC0000FF1FFF1FFF1FFF1FFF00FF0010000092921000FF1F
          FF1F001F0000FCFCFCFCFC00001FFF1FFF1FFF1F001F00100000929210001FFF
          1FFF1FFF0000FCFCFCFCFCFCFC0000FF1FFF1FFF00FF0010000092921000FF1F
          000000000000FCFCFCFCFCFCFCFCFC000000FF1F001F00100000929210001FFF
          00FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC00FF00FF0010000092921000FF1F
          000000000000FCFCFCFCFCFCFCFCFC000000FF1FFF1F00100000929210001FFF
          1FFF00FF0000FCFCFCFCFCFCFC0000FF1FFF1FFF00FF0010000092921000FF1F
          001FFF1F0000FCFCFCFCFC00001FFF1FFF1F001F001F00100000929210001FFF
          00FF00FF0000FCFCFC0000FF1FFF1FFF1FFF00FF00FF0010000092921000FF1F
          001FFF1F0000FC0000E0E0E0FF1FFF1FFF1FFF1FFF1F00100000929210001FFF
          1FFF1FFF0000000303FF1FFF1FFF1FFF1F00000000FF0010000092921000FF1F
          FF1F001F00DB001FFF1FFF1FFF1FFF1FFF1FFF1FFF1F00100000929210001FFF
          00FF1FFF00DB00FF1FFF1FFF1FFF1FFF1F82828282FF0010000092921000FF1F
          001F001F00DB00E0E0E0E0E0FF1FFF1FFF1C1C1FFF1F00100000929210001FFF
          00FF00FF00DB000303FF1FFF1FFF1FFF1F0303031FFF00100000929210000000
          000000000000001FFF1FFF1FFF1FFF1FFF000000001F00100000929210101010
          10101010101000FF1FFF1FFF1FFF1FFF1FFF1FFF1FFF00100000929210101010
          1010101010100000000000000000000000000000000000100000929210101010
          1010101010101010101010101010101010101010101010100000929292929292
          9292929292929292929292929292929292929292929292920000929292929292
          9292929292929292929292929292929292929292929292929200}
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'MS Sans Serif'
        HotTrackFont.Style = []
      end
      object bGuardar: TJvBitBtn
        Left = 729
        Top = 81
        Width = 100
        Height = 43
        Anchors = [akTop, akRight]
        Caption = 'GUARDAR'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = bGuardarClick
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
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF006D6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF000024006D6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0000B6B62424006D6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF0000B600FFFF492424006D6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF0000B6B6FF00DB4949492424006D6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000B6B6FFFFDBDB00DB4949492424006D6DFFFFFFFFFFFFFFFFFFFFFFFF0000
          B6B6FFFFDBDBDBDBDB00DB4949492424006D6DFFFFFFFFFFFFFFFFFF0000B600
          FFFF0024DBDBDBDBDBDB00494949492424006D6DFFFFFFFFFFFFFF00B6B6FF00
          DBDB240024DBDBDB00004949494949492424006D6DFFFFFFFFFFFF00FFFF49B6
          00DBDB2449DB00004949494949DB4949492424006D6DFFFFFFFFFF0049494949
          B600DBDB00004949494949DBDB00DB4949492424006D6DFFFFFFFFFF00494949
          49B600004949494949DBDB0000FF00DB4949492424006D6DFFFFFFFFFF004949
          49494949494949DBDB0000FFFFFFFF00DB4949492424006D6DFFFFFFFFFF0049
          4949494949DBDB0000FFFFFFFFFFFFFF00DB49494924006D6D6DFFFFFFFFFF00
          49494949DB0000FFFFFFFFFFFFFFFFFFFF00DB494949006D6D6DFFFFFFFFFFFF
          0049492400FFFFFFFFFFFFFFFFFFFFFF272700DB00006D6D6D6DFFFFFFFFFFFF
          FF0049492400FFFFFFFFFFFFFFFF2727272700006D6D6D6DFFFFFFFFFFFFFFFF
          FFFF0049492400FFFFFFFFFF2727272700006D6D6D6DFFFFFFFFFFFFFFFFFFFF
          FFFFFF0049492400FFFFA080A02700006D6D6D6DFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF0049492400A080A000006D6D6D6DFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF004949240000006D6D6D6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF004900006D6D6D6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF00FFFF6D6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -8
        HotTrackFont.Name = 'Arial'
        HotTrackFont.Style = []
      end
      object nroaccion: TEdit
        Left = 68
        Top = 98
        Width = 55
        Height = 24
        Color = clYellow
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
        Text = '00000'
      end
      object JvBitBtn1: TJvBitBtn
        Left = 640
        Top = 26
        Width = 105
        Height = 45
        Caption = 'SALIR'
        TabOrder = 8
        OnClick = JvBitBtn1Click
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
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'MS Sans Serif'
        HotTrackFont.Style = []
      end
      object ElSector: TComboBox
        Left = 40
        Top = 40
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
        ParentFont = False
        TabOrder = 9
        OnExit = ElSectorExit
        OnKeyPress = ElSectorKeyPress
      end
      object LaAccion: TComboBox
        Left = 204
        Top = 42
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
        TabOrder = 10
        OnExit = LaAccionExit
        OnKeyPress = LaAccionKeyPress
      end
      object ODNI: TEdit
        Left = 392
        Top = 42
        Width = 89
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 8
        ParentFont = False
        ReadOnly = True
        TabOrder = 11
        Text = '00000000'
        OnKeyPress = ODNIKeyPress
      end
      object Busca: TJvBitBtn
        Left = 512
        Top = 27
        Width = 121
        Height = 44
        Caption = 'BUSCAR'
        TabOrder = 12
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
      object GroupBox4: TGroupBox
        Left = 2
        Top = 369
        Width = 845
        Height = 36
        Align = alBottom
        Enabled = False
        TabOrder = 13
        object c4: TCheckBox
          Left = 8
          Top = 14
          Width = 65
          Height = 17
          Caption = 'Titulares'
          TabOrder = 0
        end
        object C6: TCheckBox
          Left = 80
          Top = 15
          Width = 81
          Height = 17
          Caption = 'Modificaci'#243'n'
          TabOrder = 1
        end
      end
      object elimina2: TJvBitBtn
        Left = 632
        Top = 81
        Width = 92
        Height = 44
        Hint = 'Modifica los Datos de la Fila'
        Caption = 'Eliminar'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
        OnClick = elimina2Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
          305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
          005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
          B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
          B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
          B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
          B0557777FF577777F7F500000E055550805577777F7555575755500000555555
          05555777775555557F5555000555555505555577755555557555}
        NumGlyphs = 2
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'MS Sans Serif'
        HotTrackFont.Style = []
      end
    end
    object barra: TStatusBar
      Left = 2
      Top = 422
      Width = 849
      Height = 21
      Panels = <
        item
          Width = 350
        end
        item
          Width = 50
        end>
    end
  end
end

object ReImp_ResumxAccion: TReImp_ResumxAccion
  Left = 291
  Top = 123
  AutoScroll = False
  Caption = 'Impresi'#243'n de Res'#250'menes de Cuenta'
  ClientHeight = 522
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
    522)
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 398
    Width = 785
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object Image1: TImage
    Left = 556
    Top = 106
    Width = 153
    Height = 89
    Proportional = True
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 785
    Height = 33
    ButtonHeight = 26
    Caption = 'ToolBar1'
    Color = clGradientInactiveCaption
    EdgeBorders = [ebLeft, ebTop, ebBottom]
    EdgeInner = esLowered
    ParentColor = False
    TabOrder = 0
    DesignSize = (
      783
      29)
    object ToolButton4: TToolButton
      Left = 0
      Top = 2
      Width = 641
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object Limpiar: TJvBitBtn
      Left = 641
      Top = 2
      Width = 62
      Height = 26
      Anchors = [akTop, akRight]
      Caption = 'Limpiar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Visible = False
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
      Left = 703
      Top = 2
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object JvBitBtn1: TJvBitBtn
      Left = 711
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
      TabOrder = 1
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
  object JvgGroupBox5: TJvgGroupBox
    Left = 0
    Top = 100
    Width = 785
    Height = 298
    Align = alClient
    Caption = 'Datos Parcelarios (Minoristas y Mayoristas)'
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
    object Image2: TImage
      Left = 610
      Top = 72
      Width = 105
      Height = 105
    end
    object DBGrid1: TDBGrid
      Left = 2
      Top = 16
      Width = 781
      Height = 280
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
      OnCellClick = DBGrid1CellClick
      OnDrawDataCell = DBGrid1DrawDataCell
    end
  end
  object Barra1: TStatusBar
    Left = 0
    Top = 503
    Width = 785
    Height = 19
    Panels = <
      item
        Width = 250
      end
      item
        Width = 150
      end
      item
        Width = 300
      end>
  end
  object PC1: TPageControl
    Left = 0
    Top = 33
    Width = 785
    Height = 67
    ActivePage = TabSheet3
    Align = alTop
    Images = Modulo2.ImageList1
    TabOrder = 3
    object TabSheet3: TTabSheet
      Caption = 'Avanzadas'
      ImageIndex = 2
      object Label1: TLabel
        Left = 272
        Top = 17
        Width = 98
        Height = 13
        Caption = 'NroAccion a Buscar:'
      end
      object Label2: TLabel
        Left = 13
        Top = 17
        Width = 146
        Height = 13
        Caption = 'Per'#237'odo del Estado de Cuenta:'
      end
      object Label5: TLabel
        Left = 578
        Top = 18
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
      object Edit1: TEdit
        Left = 379
        Top = 10
        Width = 92
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
        Text = '0000'
        OnExit = Edit1Exit
        OnKeyPress = Edit1KeyPress
      end
      object FILTRAR: TJvBitBtn
        Left = 476
        Top = 2
        Width = 93
        Height = 31
        Caption = 'Filtrar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = FILTRARClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          555555FFFFFFFFFF55555000000000055555577777777775FFFF00B8B8B8B8B0
          0000775F5555555777770B0B8B8B8B8B0FF07F75F555555575F70FB0B8B8B8B8
          B0F07F575FFFFFFFF7F70BFB0000000000F07F557777777777570FBFBF0FFFFF
          FFF07F55557F5FFFFFF70BFBFB0F000000F07F55557F777777570FBFBF0FFFFF
          FFF075F5557F5FFFFFF750FBFB0F000000F0575FFF7F777777575700000FFFFF
          FFF05577777F5FF55FF75555550F00FF00005555557F775577775555550FFFFF
          0F055555557F55557F755555550FFFFF00555555557FFFFF7755555555000000
          0555555555777777755555555555555555555555555555555555}
        NumGlyphs = 2
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Arial'
        HotTrackFont.Style = []
      end
      object PERIODO: TComboBox
        Left = 168
        Top = 4
        Width = 79
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 20
        ParentFont = False
        TabOrder = 2
        OnExit = PERIODOExit
        OnKeyPress = PERIODOKeyPress
        Items.Strings = (
          '1994'
          '1995'
          '1996'
          '1997'
          '1998'
          '1999'
          '2000'
          '2001'
          '2002'
          '2003'
          '2004'
          '2005'
          '2006'
          '2007'
          '2008'
          '2009'
          '2010'
          '2011'
          '2012')
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Impresi'#243'n'
      ImageIndex = 1
      object Label3: TLabel
        Left = 17
        Top = 18
        Width = 34
        Height = 13
        Caption = 'Desde:'
      end
      object Label4: TLabel
        Left = 107
        Top = 18
        Width = 31
        Height = 13
        Caption = 'Hasta:'
      end
      object Bevel2: TBevel
        Left = 582
        Top = 1
        Width = 193
        Height = 38
      end
      object HASTA: TEdit
        Left = 140
        Top = 10
        Width = 53
        Height = 21
        TabOrder = 1
        Text = '1'
        OnExit = HASTAExit
        OnKeyPress = HASTAKeyPress
      end
      object DESDE: TEdit
        Left = 55
        Top = 10
        Width = 36
        Height = 21
        TabOrder = 0
        Text = '1'
        OnKeyPress = DESDEKeyPress
      end
      object C3: TCheckBox
        Left = 586
        Top = 21
        Width = 107
        Height = 13
        Caption = 'Habilitar Preview?'
        TabOrder = 4
      end
      object IMPRIME: TJvBitBtn
        Left = 228
        Top = 0
        Width = 147
        Height = 37
        Caption = 'Imprimir Novedades'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = IMPRIMEClick
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
          FFFFFFFF6D6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF6D6D6D6D6D6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          6D6D6D490000496D6D6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6D6D
          6D490000DBDB0000496D6D6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6D6D6D49
          0000DBDBDBDB6D6D0000496D6D6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
          DBDBDBDBDBDB6D6D6D6D0000496D6D6DFFFFFFFFFFFFFFFFFFFFFFFF0000DBDB
          DBDBDBDBDBDB6D6D6D6D6D6D0000496D6D6DFFFFFFFFFFFFFFFFFFFF00FFDBDB
          DBDBDBDBDBDB6D6D6D6D6D6D6D6D0000496D6D6DFFFFFFFFFFFFFFFF00FFDBDB
          DBDBDBDBDBDB6D6D6D6D6D6D6D6D6D490000496D6D6DFFFFFFFFFFFF00FFDBDB
          DBDBB6B6DBDB6D6D6D6D6D6D6D6D6D496D6D0000496D6D6DFFFFFFFF00FF4949
          B6B6B6B6DBDB6D6D6D6D6D6D6D6D6D496D6D6D6D0000FFFFFFFFFFFF0049B6B6
          4949B6B6DBDB6D6D6D6D6D6D6D6D6D496D6D6D6D6D6D0000FFFF0000B6B66D6D
          B6B64949DB926D6D6D6D6D6D6D6D6D496D6D6D6D6D6D4900FFFFB6B66D6DDBDB
          6D6DB6B6DBDB49496D6D6D6D6D6D6D496D246D6D6D6D4900FFFF6D6DDBDBDBDB
          DBDB6D6DDBDB929249496D6D6D6D6D496D246D6D6D6D4900FFFFDBDBDBDBDBDB
          DBDBDBDBDBDB9292929249496D6D6D496D246D6D6D6D4900FFFF0000DBDBDBDB
          DB6D49DBDBDB92929292929249496D496D6D6D6D6D6D490000FFFFFF00FFDB6D
          49DBDBDBFF6D929292929292929249496D6D6D6D6D6D49006D00FFFF00FFDBDB
          DBDBFFFFDBDB4949929292929292929249496D6D6D6D49006D49FFFF00FFDBDB
          FFFFDBDBFC1818DB4949929292929292929249496D6D4900DB49FFFF00FFFFFF
          DBDBDBDBFC0C1018DBDB4949929292929292929249492400DB6DFFFF0000DBDB
          DBDBDBDBDBDBDB0C6D6DFFB6494992929262929292924900DB6DFFFFFFFF0000
          DBDBDBDBDBDB6D6DFFFFDBDBB6B649499292646292926D00B66DFFFFFFFFFFFF
          0000DBDB6D6DFFFFDBDBDBDBDBDBB6B64949929264926D009292FFFFFFFFFFFF
          FFFF006DFFFFDBDBDBDB6D6DDBDBDBDBB6B6494992926D00FFFFFFFFFFFFFFFF
          FFFFFF00DBDBDBDB6D6DB6B6B6B6DBDBDBDB929249496D00FFFFFFFFFFFFFFFF
          FFFFFFFF0000DBDBDBDB6D6DB6B6B6DBDBDBB6B6DBDB0000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0000DBDBDBDB6DDBDBDBB6B6DBDB0000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000DBDBDBDBB6B6DBDB0000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF00000000DBDB0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Arial'
        HotTrackFont.Style = []
      end
      object CheckBox1: TCheckBox
        Left = 586
        Top = 5
        Width = 167
        Height = 13
        Caption = 'Imprimir Resumenes Sin Deuda?'
        Checked = True
        State = cbChecked
        TabOrder = 3
      end
      object resumcob: TJvBitBtn
        Left = 380
        Top = 0
        Width = 181
        Height = 37
        Caption = 'Resumen para Cobradores'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        Visible = False
        OnClick = resumcobClick
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
          FFFFFFFF6D6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF6D6D6D6D6D6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          6D6D6D490000496D6D6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6D6D
          6D490000DBDB0000496D6D6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6D6D6D49
          0000DBDBDBDB6D6D0000496D6D6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
          DBDBDBDBDBDB6D6D6D6D0000496D6D6DFFFFFFFFFFFFFFFFFFFFFFFF0000DBDB
          DBDBDBDBDBDB6D6D6D6D6D6D0000496D6D6DFFFFFFFFFFFFFFFFFFFF00FFDBDB
          DBDBDBDBDBDB6D6D6D6D6D6D6D6D0000496D6D6DFFFFFFFFFFFFFFFF00FFDBDB
          DBDBDBDBDBDB6D6D6D6D6D6D6D6D6D490000496D6D6DFFFFFFFFFFFF00FFDBDB
          DBDBB6B6DBDB6D6D6D6D6D6D6D6D6D496D6D0000496D6D6DFFFFFFFF00FF4949
          B6B6B6B6DBDB6D6D6D6D6D6D6D6D6D496D6D6D6D0000FFFFFFFFFFFF0049B6B6
          4949B6B6DBDB6D6D6D6D6D6D6D6D6D496D6D6D6D6D6D0000FFFF0000B6B66D6D
          B6B64949DB926D6D6D6D6D6D6D6D6D496D6D6D6D6D6D4900FFFFB6B66D6DDBDB
          6D6DB6B6DBDB49496D6D6D6D6D6D6D496D246D6D6D6D4900FFFF6D6DDBDBDBDB
          DBDB6D6DDBDB929249496D6D6D6D6D496D246D6D6D6D4900FFFFDBDBDBDBDBDB
          DBDBDBDBDBDB9292929249496D6D6D496D246D6D6D6D4900FFFF0000DBDBDBDB
          DB6D49DBDBDB92929292929249496D496D6D6D6D6D6D490000FFFFFF00FFDB6D
          49DBDBDBFF6D929292929292929249496D6D6D6D6D6D49006D00FFFF00FFDBDB
          DBDBFFFFDBDB4949929292929292929249496D6D6D6D49006D49FFFF00FFDBDB
          FFFFDBDBFC1818DB4949929292929292929249496D6D4900DB49FFFF00FFFFFF
          DBDBDBDBFC0C1018DBDB4949929292929292929249492400DB6DFFFF0000DBDB
          DBDBDBDBDBDBDB0C6D6DFFB6494992929262929292924900DB6DFFFFFFFF0000
          DBDBDBDBDBDB6D6DFFFFDBDBB6B649499292646292926D00B66DFFFFFFFFFFFF
          0000DBDB6D6DFFFFDBDBDBDBDBDBB6B64949929264926D009292FFFFFFFFFFFF
          FFFF006DFFFFDBDBDBDB6D6DDBDBDBDBB6B6494992926D00FFFFFFFFFFFFFFFF
          FFFFFF00DBDBDBDB6D6DB6B6B6B6DBDBDBDB929249496D00FFFFFFFFFFFFFFFF
          FFFFFFFF0000DBDBDBDB6D6DB6B6B6DBDBDBB6B6DBDB0000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0000DBDBDBDB6DDBDBDBB6B6DBDB0000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000DBDBDBDBB6B6DBDB0000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF00000000DBDB0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Arial'
        HotTrackFont.Style = []
      end
    end
  end
  object PC2: TPageControl
    Left = 0
    Top = 401
    Width = 785
    Height = 102
    ActivePage = TabSheet6
    Align = alBottom
    TabOrder = 4
    object TabSheet9: TTabSheet
      Caption = 'Titulares'
      ImageIndex = 5
      object DBGrid7: TDBGrid
        Left = 0
        Top = 0
        Width = 777
        Height = 79
        Align = alClient
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
    end
    object TabSheet4: TTabSheet
      Caption = 'Ventas'
      object DBGrid5: TDBGrid
        Left = 0
        Top = 0
        Width = 777
        Height = 79
        Align = alClient
        DataSource = DataSource3
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
    object TabSheet5: TTabSheet
      Caption = 'Servicios'
      ImageIndex = 1
      object DBGrid6: TDBGrid
        Left = 0
        Top = 0
        Width = 777
        Height = 79
        Align = alClient
        DataSource = DataSource4
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
    object TabSheet6: TTabSheet
      Caption = 'Mantenimiento'
      ImageIndex = 2
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 777
        Height = 74
        Align = alClient
        DataSource = DataSource5
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
    object TabSheet7: TTabSheet
      Caption = 'Consolidados'
      ImageIndex = 3
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 777
        Height = 79
        Align = alClient
        DataSource = DataSource6
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
    object TabSheet8: TTabSheet
      Caption = 'Plan de Previsi'#243'n '
      ImageIndex = 4
      object DBGrid4: TDBGrid
        Left = 0
        Top = 0
        Width = 777
        Height = 79
        Align = alClient
        DataSource = DataSource7
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
    object TabSheet10: TTabSheet
      Caption = 'DetallePeriodosAdeudados'
      ImageIndex = 6
      object DBGrid8: TDBGrid
        Left = 0
        Top = 0
        Width = 777
        Height = 79
        Align = alClient
        DataSource = DataSource8
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object LasDeudas: TStringGrid
        Left = 0
        Top = 0
        Width = 777
        Height = 79
        Align = alClient
        ColCount = 15
        FixedCols = 0
        TabOrder = 1
        ColWidths = (
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64
          64)
      end
    end
    object TabSheet11: TTabSheet
      Caption = 'UltimosPagos'
      ImageIndex = 7
      object StringGridUP: TStringGrid
        Left = 0
        Top = 0
        Width = 777
        Height = 79
        Align = alClient
        ColCount = 6
        FixedCols = 0
        RowCount = 2
        TabOrder = 0
        ColWidths = (
          96
          94
          109
          118
          101
          64)
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      ImageIndex = 8
      object GRILLADETSERV: TStringGrid
        Left = 0
        Top = 0
        Width = 777
        Height = 74
        Align = alClient
        ColCount = 6
        FixedCols = 0
        RowCount = 2
        TabOrder = 0
        ColWidths = (
          96
          94
          109
          118
          101
          64)
      end
    end
  end
  object P1: TProgressBar
    Left = 594
    Top = 504
    Width = 191
    Height = 18
    Anchors = [akRight, akBottom]
    TabOrder = 5
  end
  object DataSource1: TDataSource
    OnDataChange = DataSource1DataChange
    Left = 6
    Top = 3
  end
  object DataSource2: TDataSource
    Left = 38
    Top = 3
  end
  object DataSource3: TDataSource
    Left = 71
    Top = 3
  end
  object DataSource4: TDataSource
    Left = 104
    Top = 3
  end
  object DataSource5: TDataSource
    Left = 137
    Top = 3
  end
  object DataSource6: TDataSource
    Left = 172
    Top = 3
  end
  object DataSource7: TDataSource
    Left = 202
    Top = 3
  end
  object RvS: TRvSystem
    TitleSetup = 'Conf. Impres.'
    TitleStatus = 'Estado del Reporte'
    TitlePreview = 'Imagen Previa'
    SystemSetups = []
    SystemOptions = []
    DefaultDest = rdPrinter
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
    OnPrint = RvSPrint
    Left = 332
  end
  object RvC: TRvSystem
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
    OnPrint = RvCPrint
    Left = 406
    Top = 4
  end
  object HISTO: TADODataSet
    Parameters = <>
    Left = 583
    Top = 4
  end
  object DataSource8: TDataSource
    Left = 472
    Top = 14
  end
  object DataSource9: TDataSource
    Left = 508
    Top = 14
  end
end

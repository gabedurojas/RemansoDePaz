object CambioTit: TCambioTit
  Left = 280
  Top = 182
  Width = 831
  Height = 480
  Caption = 'Cambio de Titularidad por Nro de Accion'
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
  object SBarra1: TStatusBar
    Left = 0
    Top = 422
    Width = 815
    Height = 19
    Panels = <
      item
        Width = 450
      end
      item
        Width = 250
      end>
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 815
    Height = 61
    Align = alTop
    Caption = 'Busqueda y Seleccion del Titular'
    TabOrder = 1
    object Label21: TLabel
      Left = 60
      Top = 30
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
    object Label1: TLabel
      Left = 191
      Top = 30
      Width = 27
      Height = 13
      Caption = 'CUIF:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 336
      Top = 30
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
    object Edit1: TEdit
      Left = 223
      Top = 22
      Width = 95
      Height = 24
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 13
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      Text = '00000000000'
    end
    object Button2: TJvBitBtn
      Left = 18
      Top = 22
      Width = 23
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
    object Edit2: TEdit
      Left = 378
      Top = 22
      Width = 395
      Height = 24
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 13
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object Edit3: TEdit
      Left = 102
      Top = 22
      Width = 77
      Height = 24
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 13
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      Text = '00000000000'
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 352
    Width = 815
    Height = 70
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      815
      70)
    object bSalir: TJvBitBtn
      Left = 660
      Top = 16
      Width = 131
      Height = 41
      Anchors = [akTop, akRight]
      Caption = 'SALIR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = bSalirClick
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
      HotTrackFont.Height = -13
      HotTrackFont.Name = 'Arial'
      HotTrackFont.Style = []
    end
    object JvBitBtn1: TJvBitBtn
      Left = 488
      Top = 16
      Width = 159
      Height = 41
      Anchors = [akTop, akRight]
      Caption = 'Dar BAJA'#13#10'TITULAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
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
        FF0080C0FF00FFC0FF0000FFFF0040FFFF0080FFFF00FFFFFF00FF0000000000
        00000000000000000000000000000000000000000000000000FF0000A0A0A0A0
        80A0A0A0A080A0A080002000000000200000000004000020000000A0A0A080A0
        A0A080C080C0A0A0C0000C240C2410082C0824102C082408000000A080A0A080
        80604060A080C080C0002000000018040000000C0C000000200000A0A0808040
        406040204040A0C0C000082C082C1800240C24140C240824080000A0A0A06060
        A0A080800020C0A000000000200010082000001400200000000000A080A04080
        A060C0A06020C00000240C2C0C2C100C042C0824040C2408240000A0A0806080
        C06000C08020C0C00000000000000810042000140000000000000080A0A08060
        80C04080C00080C0C0002C0C2C0C2C10040C241404240824080000A080A0A060
        20602080C08080C0C0000000000000180000081004000000000000A0A0A0C0A0
        C060A0C0C0C0C0C0C0002C0C2C0C2C18102C1414240C240C240000C0A080C0A0
        C0C0C0C000000020000000000000000C102014080000080000000080A0C0A0C0
        C00000000024240824242C102C2C0C2C1C10182C082C1824080000A080C0C0C0
        A0C0C0C000000000000020001C0800141000040800000000000000A0C080A0A0
        C0C0C0C0C0C0C0C0C000102C18142C14142C0C300C241810240000C0A0C0C0A0
        C0C0C0C0C0C0C0C0C00000040C2000000C0C00000004140000000080A0800040
        A00040C02020A0C0C0200C3018102C0C30142C0C2C0C1424080000A0C080C0C0
        C0C0C0C0C0C0C0C0C0000000140400041010082000081000000000A080800060
        802040C0200080C0C000102C18142C141818180C2C102C0C240000A0A0A0C0A0
        C0A0C0C0C0C0C0C0C0000000081800000808200808080000000000A080C0A0A0
        A0C0C0A0C0C0C0C0C0002C0C2C102C1818181814182C0C24080000A0A080C0A0
        C0A0C0C0C0C0C0C0C000000000001418100C10141000000000000080A0800060
        802040A0202080A0C0200C2C0C2C0C2C10142C0C240C2408240000A080A0A080
        C0C0C0A0C0C0C0C0A000000020000000040C200000002000000000A0A0800060
        802040A0200080A0C0000C2C0C2C082C10180C2C0C240C24080000A0A080A0A0
        80C080C0C0C0A0000000200000002000141808002000000020000080A0800060
        802040A0202000002424082C082C082C1818102408240824080000A080A0A080
        A0A0C080C0A0A0000000000000000000040C000000000000200000A0A0800040
        802040A020208080C000082C0C240C240C24082408240824080000A080A080A0
        80A080A080A080A0A000000000000000000000000000000000000000A0A0A0A0
        A0A0A0A0A0A0A0A0A00024082408240824082408240824080000FF0000000000
        00000000000000000000000000000000000000000000000000FF}
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -13
      HotTrackFont.Name = 'Arial'
      HotTrackFont.Style = []
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 61
    Width = 815
    Height = 291
    Align = alClient
    TabOrder = 3
    object JvgGroupBox5: TJvgGroupBox
      Left = 2
      Top = 15
      Width = 215
      Height = 274
      Align = alLeft
      Caption = 'Acciones Adjuntas'
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
      object Label4: TLabel
        Left = 4
        Top = 21
        Width = 130
        Height = 36
        Caption = 'Cant. de Acciones '#13#10'como Titular'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGrid1: TDBGrid
        Left = 2
        Top = 60
        Width = 211
        Height = 212
        Align = alBottom
        DataSource = DataSource1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object cant: TEdit
        Left = 144
        Top = 24
        Width = 65
        Height = 28
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
    object JvgGroupBox1: TJvgGroupBox
      Left = 217
      Top = 15
      Width = 596
      Height = 274
      Align = alClient
      Caption = 'Detalle de Titulares'
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
      object DBGrid2: TDBGrid
        Left = 2
        Top = 16
        Width = 592
        Height = 223
        Align = alClient
        DataSource = DataSource2
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid2DrawColumnCell
      end
      object GroupBox4: TGroupBox
        Left = 2
        Top = 239
        Width = 592
        Height = 33
        Align = alBottom
        TabOrder = 1
        object Shape2: TShape
          Left = 8
          Top = 12
          Width = 15
          Height = 13
          Brush.Color = clLime
          Shape = stCircle
        end
        object Label55: TLabel
          Left = 28
          Top = 12
          Width = 94
          Height = 13
          Caption = 'Titular de la Parcela'
        end
        object Shape3: TShape
          Left = 148
          Top = 12
          Width = 15
          Height = 13
          Shape = stCircle
        end
        object Label56: TLabel
          Left = 168
          Top = 12
          Width = 44
          Height = 13
          Caption = 'Normales'
        end
      end
    end
  end
  object DataSource1: TDataSource
    Left = 162
    Top = 136
  end
  object DataSource2: TDataSource
    Left = 737
    Top = 92
  end
end
object ImpPlaca: TImpPlaca
  Left = 242
  Top = 118
  Width = 808
  Height = 571
  Caption = 'Impresion de Placa'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 792
    Height = 37
    ButtonHeight = 29
    Caption = 'ToolBar1'
    Color = clGradientInactiveCaption
    EdgeBorders = [ebLeft, ebTop, ebBottom]
    EdgeInner = esLowered
    ParentColor = False
    TabOrder = 0
    DesignSize = (
      790
      33)
    object ToolButton4: TToolButton
      Left = 0
      Top = 2
      Width = 589
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object Imprime: TJvBitBtn
      Left = 589
      Top = 2
      Width = 117
      Height = 29
      Anchors = [akTop, akRight]
      Caption = 'Imprime Placa'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = ImprimeClick
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
    object ToolButton2: TToolButton
      Left = 706
      Top = 2
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object ToolButton3: TToolButton
      Left = 714
      Top = 2
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object Sale: TJvBitBtn
      Left = 722
      Top = 2
      Width = 62
      Height = 29
      Anchors = [akTop, akRight]
      Caption = 'Salir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = SaleClick
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
  object PC1: TJvPageControl
    Left = 0
    Top = 37
    Width = 792
    Height = 476
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'B'#250'squeda de Datos'
      DesignSize = (
        784
        448)
      object Bevel2: TBevel
        Left = 2
        Top = 3
        Width = 777
        Height = 63
        Anchors = [akLeft, akTop, akRight]
      end
      object LB1: TLabel
        Left = 204
        Top = 10
        Width = 65
        Height = 13
        Caption = 'Ingrese Valor:'
      end
      object RAccion: TRadioButton
        Left = 9
        Top = 8
        Width = 133
        Height = 17
        Caption = 'Por Nro Accion'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        TabStop = True
      end
      object RServicio: TRadioButton
        Left = 9
        Top = 28
        Width = 141
        Height = 17
        Caption = 'Por Id Servicio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Visible = False
      end
      object ODNI: TEdit
        Left = 186
        Top = 26
        Width = 111
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 8
        ParentFont = False
        TabOrder = 2
        Text = '00000000'
        OnKeyPress = ODNIKeyPress
      end
      object Busca: TJvBitBtn
        Left = 308
        Top = 12
        Width = 129
        Height = 45
        Caption = 'BUSCAR'
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
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'MS Sans Serif'
        HotTrackFont.Style = []
      end
      object DBGrid1: TJvDBGrid
        Left = 1
        Top = 76
        Width = 776
        Height = 365
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 4
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -11
        TitleFont.Name = 'Arial Narrow'
        TitleFont.Style = [fsBold]
        OnCellClick = DBGrid1CellClick
        AlternateRowColor = clWindow
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 18
        TitleRowHeight = 19
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Datos de la Placa'
      ImageIndex = 1
      DesignSize = (
        784
        448)
      object Image1: TImage
        Left = 40
        Top = 290
        Width = 105
        Height = 105
      end
      object JvgGroupBox1: TJvgGroupBox
        Left = 3
        Top = 187
        Width = 775
        Height = 41
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Datos Parcelas'
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
        object Label47: TLabel
          Left = 5
          Top = 24
          Width = 56
          Height = 13
          Caption = 'Nro Accion:'
        end
        object Label11: TLabel
          Left = 116
          Top = 24
          Width = 40
          Height = 13
          Caption = 'N'#176' Acta:'
        end
        object Label44: TLabel
          Left = 222
          Top = 24
          Width = 34
          Height = 13
          Caption = 'Sector:'
        end
        object Label45: TLabel
          Left = 319
          Top = 24
          Width = 54
          Height = 13
          Caption = 'N'#176' Parcela:'
        end
        object Label46: TLabel
          Left = 446
          Top = 22
          Width = 51
          Height = 13
          Caption = 'Cod Plaza:'
        end
        object nroacc: TEdit
          Left = 64
          Top = 17
          Width = 47
          Height = 21
          Color = clInfoBk
          ReadOnly = True
          TabOrder = 0
        end
        object nroacta: TEdit
          Left = 159
          Top = 17
          Width = 51
          Height = 21
          Color = clInfoBk
          MaxLength = 9
          ReadOnly = True
          TabOrder = 1
          Text = '00'
        end
        object sector: TEdit
          Left = 259
          Top = 17
          Width = 51
          Height = 21
          Color = clInfoBk
          MaxLength = 9
          ReadOnly = True
          TabOrder = 2
        end
        object parcela: TEdit
          Left = 376
          Top = 17
          Width = 51
          Height = 21
          Color = clInfoBk
          MaxLength = 9
          ReadOnly = True
          TabOrder = 3
          Text = '00'
        end
        object codplaza: TEdit
          Left = 499
          Top = 16
          Width = 26
          Height = 21
          Color = clInfoBk
          MaxLength = 9
          ReadOnly = True
          TabOrder = 4
        end
        object plaza: TEdit
          Left = 526
          Top = 16
          Width = 237
          Height = 21
          Color = clInfoBk
          MaxLength = 9
          ReadOnly = True
          TabOrder = 5
        end
      end
      object JvgGroupBox2: TJvgGroupBox
        Left = 3
        Top = 52
        Width = 775
        Height = 67
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Datos Titular Parcela'
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
        object Label1: TLabel
          Left = 5
          Top = 26
          Width = 72
          Height = 13
          Caption = 'Nombre Titular:'
        end
        object Label2: TLabel
          Left = 32
          Top = 46
          Width = 45
          Height = 13
          Caption = 'Domicilio:'
        end
        object Label3: TLabel
          Left = 470
          Top = 26
          Width = 37
          Height = 13
          Caption = 'Cuenta:'
        end
        object Label32: TLabel
          Left = 471
          Top = 45
          Width = 37
          Height = 13
          Caption = 'N'#176' DNI:'
        end
        object nomtit: TEdit
          Left = 84
          Top = 19
          Width = 357
          Height = 21
          Color = clInfoBk
          ReadOnly = True
          TabOrder = 0
        end
        object domtit: TEdit
          Left = 84
          Top = 43
          Width = 358
          Height = 21
          Color = clInfoBk
          MaxLength = 9
          ReadOnly = True
          TabOrder = 1
        end
        object cuenta: TEdit
          Left = 511
          Top = 19
          Width = 51
          Height = 21
          Color = clInfoBk
          MaxLength = 9
          ReadOnly = True
          TabOrder = 2
        end
        object dnitit: TEdit
          Left = 510
          Top = 42
          Width = 80
          Height = 21
          Color = clInfoBk
          MaxLength = 9
          ReadOnly = True
          TabOrder = 3
          Text = '00000000 '
        end
      end
      object JvgGroupBox3: TJvgGroupBox
        Left = 3
        Top = 121
        Width = 774
        Height = 64
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Datos Fallecido'
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
        object Label4: TLabel
          Left = 5
          Top = 20
          Width = 85
          Height = 13
          Caption = 'Nombre Fallecido:'
        end
        object Label6: TLabel
          Left = 462
          Top = 20
          Width = 25
          Height = 13
          Caption = 'Alias:'
        end
        object Label25: TLabel
          Left = 32
          Top = 43
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
        object Label5: TLabel
          Left = 200
          Top = 43
          Width = 97
          Height = 13
          Caption = 'Fecha Fallecimiento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label58: TLabel
          Left = 448
          Top = 43
          Width = 38
          Height = 13
          Caption = 'Religion'
        end
        object nomfalle: TEdit
          Left = 92
          Top = 13
          Width = 357
          Height = 21
          Color = clInfoBk
          ReadOnly = True
          TabOrder = 0
        end
        object alias: TEdit
          Left = 491
          Top = 13
          Width = 222
          Height = 21
          Color = clInfoBk
          MaxLength = 9
          ReadOnly = True
          TabOrder = 1
        end
        object fecnac: TMaskEdit
          Left = 93
          Top = 38
          Width = 79
          Height = 21
          Color = clInfoBk
          EditMask = '!99/99/9999;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          Text = '  /  /    '
        end
        object fecfalle: TMaskEdit
          Left = 302
          Top = 38
          Width = 79
          Height = 21
          Color = clInfoBk
          EditMask = '!99/99/9999;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          Text = '  /  /    '
        end
        object religionfalle: TEdit
          Left = 491
          Top = 38
          Width = 174
          Height = 21
          Color = clInfoBk
          ReadOnly = True
          TabOrder = 4
        end
      end
      object JvgGroupBox4: TJvgGroupBox
        Left = 3
        Top = 2
        Width = 776
        Height = 48
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Datos del Servicio Seleccionado'
        TabOrder = 3
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
        object Label13: TLabel
          Left = 9
          Top = 25
          Width = 56
          Height = 13
          Caption = 'N'#176' Servicio:'
        end
        object Label50: TLabel
          Left = 159
          Top = 25
          Width = 62
          Height = 13
          Caption = 'Id Inhumado:'
        end
        object Label57: TLabel
          Left = 297
          Top = 25
          Width = 56
          Height = 13
          Caption = 'Nro Accion:'
        end
        object Label61: TLabel
          Left = 448
          Top = 25
          Width = 74
          Height = 13
          Caption = 'Fecha Servicio:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Accion: TEdit
          Left = 66
          Top = 18
          Width = 50
          Height = 21
          Color = clInfoBk
          MaxLength = 9
          ReadOnly = True
          TabOrder = 0
          Text = '00000'
        end
        object IdHab: TEdit
          Left = 224
          Top = 18
          Width = 44
          Height = 21
          Color = clInfoBk
          ReadOnly = True
          TabOrder = 1
          Text = '000'
        end
        object accselec: TEdit
          Left = 356
          Top = 18
          Width = 44
          Height = 21
          Color = clInfoBk
          ReadOnly = True
          TabOrder = 2
          Text = '000'
        end
        object fecservicio: TMaskEdit
          Left = 525
          Top = 18
          Width = 81
          Height = 21
          Color = clInfoBk
          EditMask = '!99/99/9999;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          Text = '  /  /    '
        end
      end
      object GroupBox1: TGroupBox
        Left = 2
        Top = 271
        Width = 773
        Height = 176
        Anchors = [akLeft, akTop, akRight, akBottom]
        Color = clWhite
        ParentColor = False
        TabOrder = 4
        object LN: TLabel
          Left = 70
          Top = 15
          Width = 208
          Height = 24
          Caption = 'NOMBRE FALLECIDO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LA: TLabel
          Left = 496
          Top = 15
          Width = 58
          Height = 24
          Caption = 'ALIAS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 424
          Top = 135
          Width = 73
          Height = 20
          Caption = 'SECTOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 608
          Top = 135
          Width = 83
          Height = 20
          Caption = 'PARCELA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LFF: TLabel
          Left = 471
          Top = 81
          Width = 191
          Height = 24
          Caption = 'Fecha Fallecimiento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LFN: TLabel
          Left = 225
          Top = 81
          Width = 171
          Height = 24
          Caption = 'Fecha Nacimiento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LS: TLabel
          Left = 499
          Top = 131
          Width = 35
          Height = 24
          Caption = 'Nro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LP: TLabel
          Left = 693
          Top = 131
          Width = 35
          Height = 24
          Caption = 'Nro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Image2: TImage
          Left = 32
          Top = 52
          Width = 125
          Height = 105
          Center = True
          Proportional = True
          Stretch = True
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 234
        Width = 773
        Height = 31
        Caption = 'Simbolo de Religion'
        TabOrder = 5
        object ImagenCa: TRadioButton
          Left = 120
          Top = 8
          Width = 113
          Height = 17
          Caption = 'Catolico'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = ImagenCaClick
        end
        object ImagenJu: TRadioButton
          Left = 260
          Top = 8
          Width = 101
          Height = 17
          Caption = 'Judio'
          TabOrder = 1
          OnClick = ImagenJuClick
        end
        object ImagenMo: TRadioButton
          Left = 401
          Top = 9
          Width = 113
          Height = 17
          Caption = 'Mormon'
          TabOrder = 2
          OnClick = ImagenMoClick
        end
      end
    end
  end
  object Barra1: TStatusBar
    Left = 0
    Top = 513
    Width = 792
    Height = 19
    Panels = <
      item
        Width = 300
      end
      item
        Width = 50
      end>
  end
  object DataSource1: TDataSource
    Left = 552
    Top = 5
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
    Left = 608
    Top = 69
  end
end

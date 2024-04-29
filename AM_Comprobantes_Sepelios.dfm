object AM_ComprobSepelios: TAM_ComprobSepelios
  Left = 333
  Top = 36
  Width = 752
  Height = 622
  BorderIcons = [biSystemMenu]
  Caption = 'Altas y Modificaciones de Pagos'
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
    Top = 564
    Width = 736
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
    Width = 736
    Height = 33
    ButtonHeight = 27
    Caption = 'ToolBar1'
    Color = clGradientInactiveCaption
    EdgeBorders = [ebLeft, ebTop, ebBottom]
    EdgeInner = esLowered
    ParentColor = False
    TabOrder = 1
    DesignSize = (
      734
      29)
    object ToolButton4: TToolButton
      Left = 0
      Top = 2
      Width = 491
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object Limpiar: TJvBitBtn
      Left = 491
      Top = 2
      Width = 62
      Height = 27
      Anchors = [akTop, akRight]
      Caption = 'Limpiar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = LimpiarClick
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
      Left = 553
      Top = 2
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object GUARDA: TJvBitBtn
      Left = 561
      Top = 2
      Width = 76
      Height = 27
      Anchors = [akTop, akRight]
      Caption = 'F4 - Guardar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = GUARDAClick
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
    object ToolButton3: TToolButton
      Left = 637
      Top = 2
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object JvBitBtn1: TJvBitBtn
      Left = 645
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
      TabOrder = 2
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
    Width = 736
    Height = 531
    ActivePage = TabSheet4
    Align = alClient
    Images = ImageList1
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'B'#250'squeda de Pagos'
      DesignSize = (
        728
        502)
      object Label15: TLabel
        Left = 247
        Top = 7
        Width = 89
        Height = 13
        Caption = 'Ingrese N'#176' Planilla:'
      end
      object Bevel1: TBevel
        Left = 0
        Top = 0
        Width = 131
        Height = 91
      end
      object Label4: TLabel
        Left = 314
        Top = 55
        Width = 381
        Height = 32
        Alignment = taCenter
        Caption = 
          'IMPORTANTE!!... Solo es Posible modificar Pagos que no estuviere' +
          'n CONFIRMADOS en alguna Planilla'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
      end
      object C1: TRadioButton
        Left = 9
        Top = 3
        Width = 92
        Height = 17
        Caption = 'Fecha Planilla'
        TabOrder = 0
        OnClick = C1Click
      end
      object C2: TRadioButton
        Left = 9
        Top = 20
        Width = 94
        Height = 17
        Caption = 'Por N'#176' Planilla'
        Checked = True
        TabOrder = 1
        TabStop = True
        OnClick = C1Click
      end
      object C0: TRadioButton
        Left = 9
        Top = 71
        Width = 69
        Height = 17
        Caption = 'Todos'
        TabOrder = 2
        OnClick = C0Click
      end
      object ODNI: TEdit
        Left = 262
        Top = 22
        Width = 58
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 8
        TabOrder = 3
        Text = '00000000'
        OnKeyPress = ODNIKeyPress
      end
      object Buscar: TJvBitBtn
        Left = 466
        Top = 7
        Width = 107
        Height = 42
        Caption = 'Buscar'
        TabOrder = 4
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
      object CB1: TCheckBox
        Left = 148
        Top = 74
        Width = 111
        Height = 17
        Caption = 'Solo sin Confirmar?'
        TabOrder = 5
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 94
        Width = 728
        Height = 274
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Lista de Comprobantes Cargados'
        TabOrder = 6
        object DBGrid1: TDBGrid
          Left = 2
          Top = 15
          Width = 724
          Height = 268
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
          OnDrawColumnCell = DBGrid1DrawColumnCell
        end
      end
      object FEC: TMaskEdit
        Left = 261
        Top = 22
        Width = 65
        Height = 21
        EditMask = '!99/99/9999;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 7
        Text = '  /  /    '
        Visible = False
        OnExit = FECExit
        OnKeyPress = ODNIKeyPress
      end
      object GroupBox6: TGroupBox
        Left = 580
        Top = 0
        Width = 121
        Height = 51
        Caption = 'Estados de los Pagos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        object Shape3: TShape
          Left = 10
          Top = 32
          Width = 15
          Height = 13
          Shape = stCircle
        end
        object Shape2: TShape
          Left = 10
          Top = 14
          Width = 15
          Height = 13
          Brush.Color = 13097159
          Shape = stCircle
        end
        object Label12: TLabel
          Left = 36
          Top = 32
          Width = 44
          Height = 13
          Caption = 'Normales'
        end
        object Label14: TLabel
          Left = 36
          Top = 14
          Width = 58
          Height = 13
          Caption = 'Confirmadas'
        end
      end
      object COBRA: TComboBox
        Left = 157
        Top = 22
        Width = 280
        Height = 21
        CharCase = ecUpperCase
        ItemHeight = 0
        TabOrder = 9
        Visible = False
        OnExit = COBRAExit
        OnKeyPress = ODNIKeyPress
      end
      object C3: TRadioButton
        Left = 9
        Top = 37
        Width = 94
        Height = 17
        Caption = 'Por Cobrador'
        TabOrder = 10
        OnClick = C1Click
      end
      object C4: TRadioButton
        Left = 9
        Top = 54
        Width = 118
        Height = 17
        Caption = 'Por N'#176' Comprobante'
        TabOrder = 11
        OnClick = C1Click
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Datos del Pago'
      ImageIndex = 1
      object grupo2: TJvgGroupBox
        Left = 8
        Top = 98
        Width = 723
        Height = 405
        Caption = 'Datos Espec'#237'ficos'
        TabOrder = 1
        Enabled = False
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
        object Label8: TLabel
          Left = 37
          Top = 242
          Width = 52
          Height = 13
          Caption = 'N'#176' Cuenta:'
          Enabled = False
        end
        object Label9: TLabel
          Left = 31
          Top = 72
          Width = 58
          Height = 13
          Caption = 'Tipo Objeto:'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 174
          Top = 118
          Width = 64
          Height = 13
          Caption = 'Fecha Cobro:'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label21: TLabel
          Left = 3
          Top = 265
          Width = 84
          Height = 13
          Caption = 'Importe Abonado:'
          Enabled = False
        end
        object Label30: TLabel
          Left = 27
          Top = 96
          Width = 62
          Height = 13
          Caption = 'Punto Venta:'
          Enabled = False
        end
        object Label31: TLabel
          Left = 9
          Top = 128
          Width = 81
          Height = 13
          Caption = 'N'#176' Comprobante:'
          Enabled = False
        end
        object Label20: TLabel
          Left = 18
          Top = 19
          Width = 71
          Height = 13
          Caption = 'Tipo Talonario:'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 29
          Top = 45
          Width = 60
          Height = 13
          Caption = 'Tipo Acci'#243'n:'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label84: TLabel
          Left = 9
          Top = 281
          Width = 37
          Height = 13
          Caption = 'Observ.'
          Enabled = False
        end
        object JvSIMConnector1: TJvSIMConnector
          Left = 148
          Top = 117
          Width = 39
          Height = 27
          FromGate = 0
          FromPoint.X = 0
          FromPoint.Y = 0
          ToGate = 0
          ToPoint.X = 0
          ToPoint.Y = 0
        end
        object Label100: TLabel
          Left = 30
          Top = 219
          Width = 57
          Height = 13
          Caption = 'Forma Pago'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 292
          Top = 16
          Width = 381
          Height = 32
          Alignment = taCenter
          Caption = 
            'Recuerde que el N'#176' de Cuenta puede hacer referencia a un T'#237'tulo ' +
            'Accionario, N'#176' de Servicio o N'#176' de Venta'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
        object Label102: TLabel
          Left = 325
          Top = 15
          Width = 381
          Height = 32
          Alignment = taCenter
          Caption = 
            'Recuerde que el N'#176' de Cuenta puede hacer referencia a un T'#237'tulo ' +
            'Accionario, N'#176' de Servicio o N'#176' de Venta'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object NROCUENTA: TEdit
          Left = 92
          Top = 235
          Width = 47
          Height = 21
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 8
          ParentFont = False
          TabOrder = 7
          Text = '000000'
          OnChange = TPOFORMChange
          OnExit = NROCUENTAExit
          OnKeyPress = NROCUENTAKeyPress
        end
        object TPOOBJ: TComboBox
          Left = 92
          Top = 68
          Width = 255
          Height = 21
          CharCase = ecUpperCase
          Enabled = False
          ItemHeight = 13
          TabOrder = 2
          OnChange = TPOFORMChange
          OnExit = TPOOBJExit
          OnKeyPress = TPOOBJKeyPress
        end
        object BusCodPos: TJvBitBtn
          Left = 143
          Top = 239
          Width = 14
          Height = 19
          Enabled = False
          TabOrder = 9
          OnClick = BusCodPosClick
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
        object FECPAGO: TMaskEdit
          Left = 156
          Top = 135
          Width = 65
          Height = 21
          Enabled = False
          EditMask = '!99/99/9999;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 5
          Text = '  /  /    '
          Visible = False
          OnChange = TPOFORMChange
          OnExit = FECPAGOExit
          OnKeyPress = FECPAGOKeyPress
        end
        object IMPORTE: TEdit
          Left = 91
          Top = 263
          Width = 65
          Height = 21
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 18
          ParentFont = False
          TabOrder = 10
          Text = '0000.00'
          OnChange = IMPORTEChange
          OnExit = IMPORTEExit
          OnKeyPress = IMPORTEKeyPress
        end
        object PV: TComboBox
          Left = 92
          Top = 96
          Width = 51
          Height = 21
          CharCase = ecUpperCase
          Enabled = False
          ItemHeight = 13
          TabOrder = 3
          Text = 
            '                                                                ' +
            '                                                                ' +
            '                         '
          OnChange = TPOFORMChange
          OnExit = PVExit
          OnKeyPress = PVKeyPress
        end
        object COMPROB: TEdit
          Left = 92
          Top = 123
          Width = 55
          Height = 24
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 7
          ParentFont = False
          TabOrder = 4
          Text = '0000000'
          OnChange = TPOFORMChange
          OnExit = COMPROBExit
          OnKeyPress = COMPROBKeyPress
        end
        object TPOTALON: TComboBox
          Left = 92
          Top = 15
          Width = 201
          Height = 21
          CharCase = ecUpperCase
          Enabled = False
          ItemHeight = 13
          TabOrder = 0
          OnChange = TPOFORMChange
          OnExit = TPOTALONExit
          OnKeyPress = TPOTALONKeyPress
        end
        object ACCION: TComboBox
          Left = 92
          Top = 41
          Width = 199
          Height = 21
          CharCase = ecUpperCase
          Enabled = False
          ItemHeight = 13
          TabOrder = 1
          OnChange = TPOFORMChange
          OnExit = ACCIONExit
          OnKeyPress = ACCIONKeyPress
          Items.Strings = (
            'NORMAL'
            'ANULACION'
            'SEMESTRAL')
        end
        object PC3: TPageControl
          Left = 356
          Top = 62
          Width = 359
          Height = 337
          ActivePage = TabSheet15
          TabOrder = 8
          object TabSheet7: TTabSheet
            Caption = 'Minoritarios'
            object PC2: TPageControl
              Left = 0
              Top = 0
              Width = 351
              Height = 309
              ActivePage = TabSheet2
              Align = alClient
              Enabled = False
              TabOrder = 0
              object TabSheet2: TTabSheet
                Caption = 'Consolidados'
                Enabled = False
                object JvgGroupBox7: TJvgGroupBox
                  Left = 0
                  Top = 0
                  Width = 343
                  Height = 281
                  Align = alClient
                  Caption = 'Datos de la Cuenta'
                  TabOrder = 0
                  Border.Inner = bvSpace
                  Border.Outer = bvNone
                  Border.Bold = False
                  CaptionAlignment = fcaCenter
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
                  Colors.CaptionActive = clBackground
                  Colors.Client = clBtnFace
                  Colors.ClientActive = clBtnFace
                  Gradient.FromColor = clBlack
                  Gradient.ToColor = clGray
                  Gradient.Active = False
                  Gradient.Orientation = fgdHorizontal
                  Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
                  FullHeight = 0
                  object Label50: TLabel
                    Left = 50
                    Top = 23
                    Width = 30
                    Height = 13
                    Caption = 'N'#176' Id.:'
                  end
                  object Label51: TLabel
                    Left = 148
                    Top = 23
                    Width = 51
                    Height = 13
                    Caption = 'N'#176' Acci'#243'n:'
                  end
                  object Label52: TLabel
                    Left = 21
                    Top = 164
                    Width = 35
                    Height = 13
                    Caption = 'Cliente:'
                  end
                  object Label53: TLabel
                    Left = 20
                    Top = 138
                    Width = 36
                    Height = 13
                    Caption = 'N'#176' Cuif:'
                  end
                  object Label54: TLabel
                    Left = 165
                    Top = 138
                    Width = 37
                    Height = 13
                    Caption = 'N'#176' DNI:'
                  end
                  object Label55: TLabel
                    Left = 26
                    Top = 51
                    Width = 54
                    Height = 13
                    Caption = 'N'#176' Parcela:'
                  end
                  object Label56: TLabel
                    Left = 163
                    Top = 50
                    Width = 34
                    Height = 13
                    Caption = 'Sector:'
                  end
                  object Label57: TLabel
                    Left = 47
                    Top = 79
                    Width = 33
                    Height = 13
                    Caption = 'Fecha:'
                  end
                  object Label58: TLabel
                    Left = 16
                    Top = 106
                    Width = 63
                    Height = 13
                    Caption = 'Saldo Actual:'
                  end
                  object Label59: TLabel
                    Left = 169
                    Top = 78
                    Width = 29
                    Height = 13
                    Caption = 'Plaza:'
                  end
                  object D29: TEdit
                    Left = 82
                    Top = 20
                    Width = 51
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 0
                  end
                  object D30: TEdit
                    Left = 200
                    Top = 20
                    Width = 51
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 1
                  end
                  object D31: TEdit
                    Left = 82
                    Top = 47
                    Width = 51
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 2
                  end
                  object D32: TEdit
                    Left = 200
                    Top = 47
                    Width = 51
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 3
                  end
                  object D33: TEdit
                    Left = 82
                    Top = 75
                    Width = 82
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 4
                  end
                  object D34: TEdit
                    Left = 82
                    Top = 103
                    Width = 57
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 5
                  end
                  object D36: TEdit
                    Left = 58
                    Top = 135
                    Width = 98
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 6
                  end
                  object D37: TEdit
                    Left = 204
                    Top = 135
                    Width = 84
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 7
                  end
                  object D38: TEdit
                    Left = 58
                    Top = 161
                    Width = 230
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 8
                  end
                  object D35: TEdit
                    Left = 200
                    Top = 75
                    Width = 187
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 9
                  end
                end
              end
              object TabSheet3: TTabSheet
                Caption = 'Mantenimiento'
                Enabled = False
                ImageIndex = 1
                object JvgGroupBox2: TJvgGroupBox
                  Left = 0
                  Top = 0
                  Width = 343
                  Height = 281
                  Align = alClient
                  Caption = 'Datos de la Cuenta'
                  TabOrder = 0
                  Border.Inner = bvSpace
                  Border.Outer = bvNone
                  Border.Bold = False
                  CaptionAlignment = fcaCenter
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
                  Colors.CaptionActive = clBackground
                  Colors.Client = clBtnFace
                  Colors.ClientActive = clBtnFace
                  Gradient.FromColor = clBlack
                  Gradient.ToColor = clGray
                  Gradient.Active = False
                  Gradient.Orientation = fgdHorizontal
                  Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
                  FullHeight = 0
                  object Label17: TLabel
                    Left = 29
                    Top = 23
                    Width = 51
                    Height = 13
                    Caption = 'N'#176' Acci'#243'n:'
                  end
                  object Label18: TLabel
                    Left = 19
                    Top = 165
                    Width = 35
                    Height = 13
                    Caption = 'Cliente:'
                  end
                  object Label22: TLabel
                    Left = 18
                    Top = 139
                    Width = 36
                    Height = 13
                    Caption = 'N'#176' Cuif:'
                  end
                  object Label25: TLabel
                    Left = 164
                    Top = 138
                    Width = 37
                    Height = 13
                    Caption = 'N'#176' DNI:'
                  end
                  object Label26: TLabel
                    Left = 26
                    Top = 50
                    Width = 54
                    Height = 13
                    Caption = 'N'#176' Parcela:'
                  end
                  object Label27: TLabel
                    Left = 163
                    Top = 50
                    Width = 34
                    Height = 13
                    Caption = 'Sector:'
                  end
                  object Label28: TLabel
                    Left = 36
                    Top = 78
                    Width = 44
                    Height = 13
                    Caption = 'Vigencia:'
                  end
                  object Label29: TLabel
                    Left = 2
                    Top = 106
                    Width = 78
                    Height = 13
                    Caption = 'Deuda Mensual:'
                  end
                  object D1: TEdit
                    Left = 82
                    Top = 20
                    Width = 51
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 0
                  end
                  object D2: TEdit
                    Left = 82
                    Top = 47
                    Width = 51
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 1
                  end
                  object D3: TEdit
                    Left = 200
                    Top = 47
                    Width = 51
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 2
                  end
                  object D4: TEdit
                    Left = 82
                    Top = 75
                    Width = 82
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 3
                  end
                  object D5: TEdit
                    Left = 82
                    Top = 103
                    Width = 51
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 4
                  end
                  object D6: TEdit
                    Left = 57
                    Top = 135
                    Width = 98
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 5
                  end
                  object D7: TEdit
                    Left = 203
                    Top = 135
                    Width = 84
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 6
                  end
                  object D8: TEdit
                    Left = 57
                    Top = 161
                    Width = 230
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 7
                  end
                  object D9: TCheckBox
                    Left = 57
                    Top = 186
                    Width = 81
                    Height = 18
                    Caption = 'Es Jubilado?'
                    TabOrder = 8
                  end
                end
              end
              object TabSheet5: TTabSheet
                Caption = 'Servicios'
                Enabled = False
                ImageIndex = 2
                object JvgGroupBox4: TJvgGroupBox
                  Left = 0
                  Top = 0
                  Width = 343
                  Height = 281
                  Align = alClient
                  Caption = 'Datos de la Cuenta'
                  TabOrder = 0
                  Border.Inner = bvSpace
                  Border.Outer = bvNone
                  Border.Bold = False
                  CaptionAlignment = fcaCenter
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
                  Colors.CaptionActive = clBackground
                  Colors.Client = clBtnFace
                  Colors.ClientActive = clBtnFace
                  Gradient.FromColor = clBlack
                  Gradient.ToColor = clGray
                  Gradient.Active = False
                  Gradient.Orientation = fgdHorizontal
                  Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
                  FullHeight = 0
                  object Label32: TLabel
                    Left = 50
                    Top = 23
                    Width = 30
                    Height = 13
                    Caption = 'N'#176' Id.:'
                  end
                  object Label33: TLabel
                    Left = 146
                    Top = 23
                    Width = 51
                    Height = 13
                    Caption = 'N'#176' Acci'#243'n:'
                  end
                  object Label34: TLabel
                    Left = 20
                    Top = 164
                    Width = 35
                    Height = 13
                    Caption = 'Cliente:'
                  end
                  object Label35: TLabel
                    Left = 19
                    Top = 139
                    Width = 36
                    Height = 13
                    Caption = 'N'#176' Cuif:'
                  end
                  object Label36: TLabel
                    Left = 164
                    Top = 138
                    Width = 37
                    Height = 13
                    Caption = 'N'#176' DNI:'
                  end
                  object Label37: TLabel
                    Left = 26
                    Top = 51
                    Width = 54
                    Height = 13
                    Caption = 'N'#176' Parcela:'
                  end
                  object Label38: TLabel
                    Left = 163
                    Top = 51
                    Width = 34
                    Height = 13
                    Caption = 'Sector:'
                  end
                  object Label39: TLabel
                    Left = 47
                    Top = 79
                    Width = 33
                    Height = 13
                    Caption = 'Fecha:'
                  end
                  object Label40: TLabel
                    Left = 2
                    Top = 106
                    Width = 78
                    Height = 13
                    Caption = 'Deuda Mensual:'
                  end
                  object Label16: TLabel
                    Left = 5
                    Top = 194
                    Width = 50
                    Height = 13
                    Caption = 'Inhumado:'
                  end
                  object Label103: TLabel
                    Left = 169
                    Top = 83
                    Width = 27
                    Height = 13
                    Caption = 'Nivel:'
                  end
                  object D10: TEdit
                    Left = 82
                    Top = 20
                    Width = 51
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 0
                  end
                  object D11: TEdit
                    Left = 200
                    Top = 20
                    Width = 51
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 1
                  end
                  object D12: TEdit
                    Left = 82
                    Top = 47
                    Width = 51
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 2
                  end
                  object D13: TEdit
                    Left = 200
                    Top = 47
                    Width = 51
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 3
                  end
                  object D14: TEdit
                    Left = 82
                    Top = 75
                    Width = 82
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 4
                  end
                  object D15: TEdit
                    Left = 82
                    Top = 103
                    Width = 51
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 5
                  end
                  object D16: TEdit
                    Left = 58
                    Top = 135
                    Width = 98
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 6
                  end
                  object D17: TEdit
                    Left = 204
                    Top = 135
                    Width = 84
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 7
                  end
                  object D18: TEdit
                    Left = 58
                    Top = 161
                    Width = 230
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 8
                  end
                  object D19: TEdit
                    Left = 58
                    Top = 191
                    Width = 230
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 9
                  end
                  object D39: TEdit
                    Left = 200
                    Top = 75
                    Width = 51
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 10
                  end
                end
              end
              object TabSheet6: TTabSheet
                Caption = 'Ventas'
                Enabled = False
                ImageIndex = 3
                object JvgGroupBox6: TJvgGroupBox
                  Left = 0
                  Top = 0
                  Width = 343
                  Height = 281
                  Align = alClient
                  Caption = 'Datos de la Cuenta'
                  TabOrder = 0
                  Border.Inner = bvSpace
                  Border.Outer = bvNone
                  Border.Bold = False
                  CaptionAlignment = fcaCenter
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
                  Colors.CaptionActive = clBackground
                  Colors.Client = clBtnFace
                  Colors.ClientActive = clBtnFace
                  Gradient.FromColor = clBlack
                  Gradient.ToColor = clGray
                  Gradient.Active = False
                  Gradient.Orientation = fgdHorizontal
                  Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
                  FullHeight = 0
                  object Label41: TLabel
                    Left = 50
                    Top = 23
                    Width = 30
                    Height = 13
                    Caption = 'N'#176' Id.:'
                  end
                  object Label42: TLabel
                    Left = 146
                    Top = 23
                    Width = 51
                    Height = 13
                    Caption = 'N'#176' Acci'#243'n:'
                  end
                  object Label43: TLabel
                    Left = 20
                    Top = 164
                    Width = 35
                    Height = 13
                    Caption = 'Cliente:'
                  end
                  object Label44: TLabel
                    Left = 19
                    Top = 138
                    Width = 36
                    Height = 13
                    Caption = 'N'#176' Cuif:'
                  end
                  object Label45: TLabel
                    Left = 164
                    Top = 138
                    Width = 37
                    Height = 13
                    Caption = 'N'#176' DNI:'
                  end
                  object Label46: TLabel
                    Left = 26
                    Top = 51
                    Width = 54
                    Height = 13
                    Caption = 'N'#176' Parcela:'
                  end
                  object Label47: TLabel
                    Left = 163
                    Top = 50
                    Width = 34
                    Height = 13
                    Caption = 'Sector:'
                  end
                  object Label48: TLabel
                    Left = 47
                    Top = 79
                    Width = 33
                    Height = 13
                    Caption = 'Fecha:'
                  end
                  object Label49: TLabel
                    Left = 2
                    Top = 106
                    Width = 78
                    Height = 13
                    Caption = 'Deuda Mensual:'
                  end
                  object D20: TEdit
                    Left = 82
                    Top = 20
                    Width = 51
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 0
                  end
                  object D21: TEdit
                    Left = 200
                    Top = 20
                    Width = 51
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 1
                  end
                  object D22: TEdit
                    Left = 82
                    Top = 47
                    Width = 51
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 2
                  end
                  object D23: TEdit
                    Left = 200
                    Top = 47
                    Width = 51
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 3
                  end
                  object D24: TEdit
                    Left = 82
                    Top = 75
                    Width = 82
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 4
                  end
                  object D25: TEdit
                    Left = 82
                    Top = 103
                    Width = 51
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 5
                  end
                  object D26: TEdit
                    Left = 58
                    Top = 135
                    Width = 98
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 6
                  end
                  object D27: TEdit
                    Left = 204
                    Top = 135
                    Width = 84
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 7
                  end
                  object D28: TEdit
                    Left = 58
                    Top = 161
                    Width = 230
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 8
                  end
                end
              end
            end
          end
          object TabSheet8: TTabSheet
            Caption = 'Mayoritarios'
            ImageIndex = 1
            object PC4: TPageControl
              Left = 0
              Top = -2
              Width = 316
              Height = 243
              ActivePage = TabSheet9
              Enabled = False
              TabOrder = 0
              object TabSheet9: TTabSheet
                Caption = 'Consolidados'
                Enabled = False
                object JvgGroupBox1: TJvgGroupBox
                  Left = 0
                  Top = 0
                  Width = 308
                  Height = 215
                  Align = alClient
                  Caption = 'Datos de la Cuenta'
                  TabOrder = 0
                  Border.Inner = bvSpace
                  Border.Outer = bvNone
                  Border.Bold = False
                  CaptionAlignment = fcaCenter
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
                  Colors.CaptionActive = clBackground
                  Colors.Client = clBtnFace
                  Colors.ClientActive = clBtnFace
                  Gradient.FromColor = clBlack
                  Gradient.ToColor = clGray
                  Gradient.Active = False
                  Gradient.Orientation = fgdHorizontal
                  Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
                  FullHeight = 0
                  object Label60: TLabel
                    Left = 50
                    Top = 23
                    Width = 30
                    Height = 13
                    Caption = 'N'#176' Id.:'
                  end
                  object Label61: TLabel
                    Left = 146
                    Top = 23
                    Width = 52
                    Height = 13
                    Caption = 'N'#176' Cuenta:'
                  end
                  object Label62: TLabel
                    Left = 21
                    Top = 164
                    Width = 35
                    Height = 13
                    Caption = 'Cliente:'
                  end
                  object Label63: TLabel
                    Left = 20
                    Top = 138
                    Width = 36
                    Height = 13
                    Caption = 'N'#176' Cuif:'
                  end
                  object Label64: TLabel
                    Left = 165
                    Top = 138
                    Width = 37
                    Height = 13
                    Caption = 'N'#176' DNI:'
                  end
                  object Label65: TLabel
                    Left = 24
                    Top = 51
                    Width = 56
                    Height = 13
                    Caption = 'Cant. Parc.:'
                  end
                  object Label67: TLabel
                    Left = 47
                    Top = 79
                    Width = 33
                    Height = 13
                    Caption = 'Fecha:'
                  end
                  object Label68: TLabel
                    Left = 16
                    Top = 106
                    Width = 63
                    Height = 13
                    Caption = 'Saldo Actual:'
                  end
                  object Label74: TLabel
                    Left = 31
                    Top = 190
                    Width = 24
                    Height = 13
                    Caption = 'Tipo:'
                  end
                  object M1: TEdit
                    Left = 82
                    Top = 20
                    Width = 51
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 0
                  end
                  object M2: TEdit
                    Left = 200
                    Top = 20
                    Width = 51
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 1
                  end
                  object M3: TEdit
                    Left = 82
                    Top = 47
                    Width = 51
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 2
                  end
                  object M4: TEdit
                    Left = 82
                    Top = 75
                    Width = 82
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 3
                  end
                  object M5: TEdit
                    Left = 82
                    Top = 103
                    Width = 57
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 4
                  end
                  object M6: TEdit
                    Left = 58
                    Top = 135
                    Width = 98
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 5
                  end
                  object M7: TEdit
                    Left = 204
                    Top = 135
                    Width = 84
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 6
                  end
                  object M8: TEdit
                    Left = 58
                    Top = 161
                    Width = 230
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 7
                  end
                  object M9: TEdit
                    Left = 58
                    Top = 187
                    Width = 230
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 8
                  end
                end
              end
              object TabSheet10: TTabSheet
                Caption = 'Mantenimiento'
                Enabled = False
                ImageIndex = 1
                object JvgGroupBox3: TJvgGroupBox
                  Left = 0
                  Top = 0
                  Width = 308
                  Height = 215
                  Align = alClient
                  Caption = 'Datos de la Cuenta'
                  TabOrder = 0
                  Border.Inner = bvSpace
                  Border.Outer = bvNone
                  Border.Bold = False
                  CaptionAlignment = fcaCenter
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
                  Colors.CaptionActive = clBackground
                  Colors.Client = clBtnFace
                  Colors.ClientActive = clBtnFace
                  Gradient.FromColor = clBlack
                  Gradient.ToColor = clGray
                  Gradient.Active = False
                  Gradient.Orientation = fgdHorizontal
                  Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
                  FullHeight = 0
                  object Label70: TLabel
                    Left = 50
                    Top = 23
                    Width = 30
                    Height = 13
                    Caption = 'N'#176' Id.:'
                  end
                  object Label71: TLabel
                    Left = 20
                    Top = 165
                    Width = 35
                    Height = 13
                    Caption = 'Cliente:'
                  end
                  object Label72: TLabel
                    Left = 19
                    Top = 139
                    Width = 36
                    Height = 13
                    Caption = 'N'#176' Cuif:'
                  end
                  object Label73: TLabel
                    Left = 164
                    Top = 138
                    Width = 37
                    Height = 13
                    Caption = 'N'#176' DNI:'
                  end
                  object Label76: TLabel
                    Left = 36
                    Top = 78
                    Width = 44
                    Height = 13
                    Caption = 'Vigencia:'
                  end
                  object Label77: TLabel
                    Left = 2
                    Top = 106
                    Width = 78
                    Height = 13
                    Caption = 'Deuda Mensual:'
                  end
                  object Label66: TLabel
                    Left = 146
                    Top = 23
                    Width = 52
                    Height = 13
                    Caption = 'N'#176' Cuenta:'
                  end
                  object Label69: TLabel
                    Left = 24
                    Top = 51
                    Width = 56
                    Height = 13
                    Caption = 'Cant. Parc.:'
                  end
                  object Label75: TLabel
                    Left = 31
                    Top = 190
                    Width = 24
                    Height = 13
                    Caption = 'Tipo:'
                  end
                  object M10: TEdit
                    Left = 82
                    Top = 20
                    Width = 51
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 0
                  end
                  object M13: TEdit
                    Left = 82
                    Top = 75
                    Width = 82
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 1
                  end
                  object M14: TEdit
                    Left = 82
                    Top = 103
                    Width = 51
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 2
                  end
                  object M15: TEdit
                    Left = 58
                    Top = 135
                    Width = 98
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 3
                  end
                  object M16: TEdit
                    Left = 203
                    Top = 135
                    Width = 84
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 4
                  end
                  object M17: TEdit
                    Left = 58
                    Top = 161
                    Width = 230
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 5
                  end
                  object M11: TEdit
                    Left = 200
                    Top = 20
                    Width = 51
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 6
                  end
                  object M12: TEdit
                    Left = 82
                    Top = 47
                    Width = 51
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 7
                  end
                  object M18: TEdit
                    Left = 58
                    Top = 187
                    Width = 230
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 8
                  end
                end
              end
              object TabSheet11: TTabSheet
                Caption = 'Servicios'
                Enabled = False
                ImageIndex = 2
                object JvgGroupBox8: TJvgGroupBox
                  Left = 0
                  Top = 0
                  Width = 308
                  Height = 215
                  Align = alClient
                  Caption = 'Datos de la Cuenta'
                  TabOrder = 0
                  Border.Inner = bvSpace
                  Border.Outer = bvNone
                  Border.Bold = False
                  CaptionAlignment = fcaCenter
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
                  Colors.CaptionActive = clBackground
                  Colors.Client = clBtnFace
                  Colors.ClientActive = clBtnFace
                  Gradient.FromColor = clBlack
                  Gradient.ToColor = clGray
                  Gradient.Active = False
                  Gradient.Orientation = fgdHorizontal
                  Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
                  FullHeight = 0
                  object Label78: TLabel
                    Left = 50
                    Top = 23
                    Width = 30
                    Height = 13
                    Caption = 'N'#176' Id.:'
                  end
                  object Label80: TLabel
                    Left = 20
                    Top = 164
                    Width = 35
                    Height = 13
                    Caption = 'Cliente:'
                  end
                  object Label81: TLabel
                    Left = 19
                    Top = 139
                    Width = 36
                    Height = 13
                    Caption = 'N'#176' Cuif:'
                  end
                  object Label82: TLabel
                    Left = 164
                    Top = 138
                    Width = 37
                    Height = 13
                    Caption = 'N'#176' DNI:'
                  end
                  object Label85: TLabel
                    Left = 47
                    Top = 79
                    Width = 33
                    Height = 13
                    Caption = 'Fecha:'
                  end
                  object Label86: TLabel
                    Left = 2
                    Top = 106
                    Width = 78
                    Height = 13
                    Caption = 'Deuda Mensual:'
                  end
                  object Label87: TLabel
                    Left = 31
                    Top = 190
                    Width = 24
                    Height = 13
                    Caption = 'Tipo:'
                  end
                  object Label79: TLabel
                    Left = 28
                    Top = 49
                    Width = 52
                    Height = 13
                    Caption = 'N'#176' Cuenta:'
                  end
                  object M19: TEdit
                    Left = 82
                    Top = 20
                    Width = 51
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 0
                  end
                  object M21: TEdit
                    Left = 82
                    Top = 75
                    Width = 82
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 1
                  end
                  object M22: TEdit
                    Left = 82
                    Top = 103
                    Width = 51
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 2
                  end
                  object M23: TEdit
                    Left = 58
                    Top = 135
                    Width = 98
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 3
                  end
                  object M24: TEdit
                    Left = 204
                    Top = 135
                    Width = 84
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 4
                  end
                  object M25: TEdit
                    Left = 58
                    Top = 161
                    Width = 230
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 5
                  end
                  object M26: TEdit
                    Left = 58
                    Top = 187
                    Width = 230
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 6
                  end
                  object M20: TEdit
                    Left = 82
                    Top = 46
                    Width = 51
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 7
                  end
                end
              end
              object TabSheet12: TTabSheet
                Caption = 'Ventas'
                Enabled = False
                ImageIndex = 3
                object JvgGroupBox9: TJvgGroupBox
                  Left = 0
                  Top = 0
                  Width = 308
                  Height = 215
                  Align = alClient
                  Caption = 'Datos de la Cuenta'
                  TabOrder = 0
                  Border.Inner = bvSpace
                  Border.Outer = bvNone
                  Border.Bold = False
                  CaptionAlignment = fcaCenter
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
                  Colors.CaptionActive = clBackground
                  Colors.Client = clBtnFace
                  Colors.ClientActive = clBtnFace
                  Gradient.FromColor = clBlack
                  Gradient.ToColor = clGray
                  Gradient.Active = False
                  Gradient.Orientation = fgdHorizontal
                  Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
                  FullHeight = 0
                  object Label88: TLabel
                    Left = 50
                    Top = 23
                    Width = 30
                    Height = 13
                    Caption = 'N'#176' Id.:'
                  end
                  object Label90: TLabel
                    Left = 20
                    Top = 164
                    Width = 35
                    Height = 13
                    Caption = 'Cliente:'
                  end
                  object Label91: TLabel
                    Left = 19
                    Top = 138
                    Width = 36
                    Height = 13
                    Caption = 'N'#176' Cuif:'
                  end
                  object Label92: TLabel
                    Left = 164
                    Top = 138
                    Width = 37
                    Height = 13
                    Caption = 'N'#176' DNI:'
                  end
                  object Label95: TLabel
                    Left = 47
                    Top = 79
                    Width = 33
                    Height = 13
                    Caption = 'Fecha:'
                  end
                  object Label96: TLabel
                    Left = 2
                    Top = 106
                    Width = 78
                    Height = 13
                    Caption = 'Deuda Mensual:'
                  end
                  object Label97: TLabel
                    Left = 31
                    Top = 190
                    Width = 24
                    Height = 13
                    Caption = 'Tipo:'
                  end
                  object Label83: TLabel
                    Left = 28
                    Top = 49
                    Width = 52
                    Height = 13
                    Caption = 'N'#176' Cuenta:'
                  end
                  object M27: TEdit
                    Left = 82
                    Top = 20
                    Width = 51
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 0
                  end
                  object M29: TEdit
                    Left = 82
                    Top = 75
                    Width = 82
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 1
                  end
                  object M30: TEdit
                    Left = 82
                    Top = 103
                    Width = 51
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 2
                  end
                  object M31: TEdit
                    Left = 58
                    Top = 135
                    Width = 98
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 3
                  end
                  object M32: TEdit
                    Left = 204
                    Top = 135
                    Width = 84
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 4
                  end
                  object M33: TEdit
                    Left = 58
                    Top = 161
                    Width = 230
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 5
                  end
                  object M34: TEdit
                    Left = 58
                    Top = 187
                    Width = 230
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 6
                  end
                  object M28: TEdit
                    Left = 82
                    Top = 46
                    Width = 51
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 7
                  end
                end
              end
            end
          end
          object TabSheet13: TTabSheet
            Caption = 'Datos Posnet'
            ImageIndex = 2
            object Label104: TLabel
              Left = 26
              Top = 19
              Width = 69
              Height = 13
              Caption = 'Fecha Posnet:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label105: TLabel
              Left = 56
              Top = 47
              Width = 36
              Height = 13
              Caption = 'Tarjeta:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label106: TLabel
              Left = 30
              Top = 74
              Width = 60
              Height = 13
              Caption = 'Nro Terminal'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label107: TLabel
              Left = 50
              Top = 100
              Width = 41
              Height = 13
              Caption = 'Nro Lote'
            end
            object Label108: TLabel
              Left = 8
              Top = 126
              Width = 86
              Height = 13
              Caption = 'Nro Cupon/Ticket'
            end
            object Label109: TLabel
              Left = 22
              Top = 154
              Width = 71
              Height = 13
              Caption = 'Importe Posnet'
            end
            object FECNAC: TMaskEdit
              Left = 100
              Top = 13
              Width = 65
              Height = 21
              EditMask = '!99/99/9999;1;_'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 10
              ParentFont = False
              TabOrder = 0
              Text = '  /  /    '
              OnExit = FECNACExit
              OnKeyPress = FECNACKeyPress
            end
            object tarjeta: TComboBox
              Left = 99
              Top = 41
              Width = 185
              Height = 21
              CharCase = ecUpperCase
              ItemHeight = 0
              TabOrder = 1
              OnExit = tarjetaExit
              OnKeyPress = tarjetaKeyPress
            end
            object Terminal: TComboBox
              Left = 99
              Top = 68
              Width = 185
              Height = 21
              CharCase = ecUpperCase
              ItemHeight = 0
              TabOrder = 2
              OnExit = TerminalExit
              OnKeyPress = TerminalKeyPress
            end
            object Edit1: TEdit
              Left = 99
              Top = 94
              Width = 89
              Height = 21
              TabOrder = 3
              OnExit = Edit1Exit
              OnKeyPress = Edit1KeyPress
            end
            object Edit7: TEdit
              Left = 99
              Top = 120
              Width = 89
              Height = 21
              TabOrder = 4
              OnExit = Edit7Exit
              OnKeyPress = Edit7KeyPress
            end
            object Edit2: TEdit
              Left = 100
              Top = 148
              Width = 87
              Height = 21
              TabOrder = 5
              OnExit = Edit2Exit
              OnKeyPress = Edit2KeyPress
            end
          end
          object TabSheet14: TTabSheet
            Caption = 'Datos Cheques'
            ImageIndex = 3
            object Label110: TLabel
              Left = 13
              Top = 21
              Width = 34
              Height = 13
              Caption = 'Banco:'
            end
            object LB12: TLabel
              Left = 2
              Top = 55
              Width = 55
              Height = 13
              Caption = 'N'#186' Cheque:'
            end
            object LB3: TLabel
              Left = 91
              Top = 49
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
            object LB7: TLabel
              Left = 19
              Top = 86
              Width = 38
              Height = 13
              Caption = 'Importe:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object banco: TComboBox
              Left = 54
              Top = 15
              Width = 243
              Height = 21
              CharCase = ecUpperCase
              ItemHeight = 0
              TabOrder = 0
              Text = 'NARANJA ZETA'
              OnExit = bancoExit
              OnKeyPress = bancoKeyPress
            end
            object seriecheque: TEdit
              Left = 61
              Top = 48
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
              OnKeyPress = seriechequeKeyPress
            end
            object nrocheque: TEdit
              Left = 106
              Top = 48
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
              OnExit = nrochequeExit
              OnKeyPress = nrochequeKeyPress
            end
            object impcheque: TEdit
              Left = 60
              Top = 82
              Width = 63
              Height = 21
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              MaxLength = 8
              ParentFont = False
              TabOrder = 3
              Text = '0000.00'
              OnExit = impchequeExit
              OnKeyPress = impchequeKeyPress
            end
          end
          object TabSheet15: TTabSheet
            Caption = 'Servicios Existentes'
            ImageIndex = 4
            object GR2: TStringGrid
              Left = 0
              Top = 33
              Width = 351
              Height = 276
              Align = alClient
              FixedCols = 0
              RowCount = 2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
              ParentFont = False
              TabOrder = 0
              OnClick = GR2Click
              OnDblClick = GR2DblClick
              ColWidths = (
                71
                4
                51
                212
                64)
            end
            object Panel1: TPanel
              Left = 0
              Top = 0
              Width = 351
              Height = 33
              Align = alTop
              Alignment = taLeftJustify
              Caption = 'Panel1'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
            end
          end
        end
        object Observ: TEdit
          Left = 6
          Top = 296
          Width = 331
          Height = 21
          MaxLength = 150
          TabOrder = 11
          OnKeyPress = ObservKeyPress
        end
        object GroupBox2: TGroupBox
          Left = 188
          Top = 92
          Width = 163
          Height = 107
          Caption = 'Comprobante Especial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
          object Label89: TLabel
            Left = 6
            Top = 14
            Width = 165
            Height = 52
            Caption = 
              'Este Comprobante pertenece'#13#10'a Administracion Central y'#13#10'fue entr' +
              'egado a este Gestor'#13#10'el dia:'
          end
          object Label93: TLabel
            Left = 44
            Top = 56
            Width = 65
            Height = 20
            Caption = 'Label93'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label94: TLabel
            Left = -1
            Top = 82
            Width = 76
            Height = 13
            Caption = 'Talonario N'#186':'
          end
          object Label98: TLabel
            Left = 78
            Top = 80
            Width = 65
            Height = 20
            Caption = 'Label93'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object FPAGO: TComboBox
          Left = 92
          Top = 208
          Width = 156
          Height = 21
          CharCase = ecUpperCase
          Enabled = False
          ItemHeight = 13
          TabOrder = 6
          OnChange = TPOFORMChange
          OnExit = FPAGOExit
          OnKeyPress = FPAGOKeyPress
        end
        object Edit3: TEdit
          Left = 120
          Top = 184
          Width = 61
          Height = 21
          Enabled = False
          MaxLength = 6
          TabOrder = 13
          OnKeyPress = Edit3KeyPress
        end
        object PeriActual: TCheckBox
          Left = 20
          Top = 188
          Width = 90
          Height = 17
          Caption = 'Periodo Actual'
          Checked = True
          State = cbChecked
          TabOrder = 14
          OnKeyPress = PeriActualKeyPress
        end
      end
      object JvgGroupBox5: TJvgGroupBox
        Left = 3
        Top = 4
        Width = 563
        Height = 91
        Caption = 'Datos Generales'
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
        object Label11: TLabel
          Left = 33
          Top = 20
          Width = 27
          Height = 13
          Caption = 'N'#176' Id:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Layout = tlBottom
        end
        object Label7: TLabel
          Left = 123
          Top = 25
          Width = 75
          Height = 13
          Caption = 'Tipo Formulario:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 14
          Top = 44
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
        object Label6: TLabel
          Left = 9
          Top = 69
          Width = 51
          Height = 13
          Caption = 'N'#176' Planilla:'
        end
        object Label3: TLabel
          Left = 159
          Top = 71
          Width = 69
          Height = 13
          Caption = 'Fecha Planilla:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object IDENTIF: TEdit
          Left = 62
          Top = 17
          Width = 57
          Height = 21
          CharCase = ecUpperCase
          Color = clGradientActiveCaption
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 5
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
          Text = '00000'
        end
        object TPOFORM: TComboBox
          Left = 206
          Top = 16
          Width = 345
          Height = 21
          CharCase = ecUpperCase
          ItemHeight = 13
          TabOrder = 0
          OnChange = TPOFORMChange
          OnExit = TPOFORMExit
          OnKeyPress = TPOFORMKeyPress
        end
        object COBRADOR: TComboBox
          Left = 62
          Top = 40
          Width = 347
          Height = 21
          CharCase = ecUpperCase
          ItemHeight = 13
          TabOrder = 1
          OnChange = TPOFORMChange
          OnExit = COBRADORExit
          OnKeyPress = COBRADORKeyPress
        end
        object NROPLAN: TEdit
          Left = 62
          Top = 64
          Width = 51
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 7
          ParentFont = False
          TabOrder = 2
          Text = '0000000'
          OnChange = TPOFORMChange
          OnExit = NROPLANExit
          OnKeyPress = NROPLANKeyPress
        end
        object FECPLAN: TMaskEdit
          Left = 230
          Top = 64
          Width = 65
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
          OnChange = TPOFORMChange
          OnExit = FECPLANExit
          OnKeyPress = FECPLANKeyPress
        end
        object Buscar1: TLMDButton
          Left = 116
          Top = 64
          Width = 25
          Height = 19
          Hint = 'Borra la Fecha Ingresada'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnClick = Buscar1Click
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
        end
      end
      object grupo1: TJvgGroupBox
        Left = 6
        Top = 416
        Width = 353
        Height = 82
        Caption = 'Composici'#243'n del Importe'
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
        object Label23: TLabel
          Left = 6
          Top = 23
          Width = 66
          Height = 13
          Caption = 'Gasto Admin.:'
        end
        object Label24: TLabel
          Left = 240
          Top = 23
          Width = 63
          Height = 13
          Caption = 'Importe Real:'
        end
        object Label2: TLabel
          Left = 134
          Top = 22
          Width = 55
          Height = 13
          Caption = '% Aplicado:'
        end
        object Shape1: TShape
          Left = 60
          Top = 43
          Width = 89
          Height = 3
          Brush.Color = clBlue
        end
        object Label5: TLabel
          Left = 65
          Top = 49
          Width = 72
          Height = 24
          Caption = '0000.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label101: TLabel
          Left = 246
          Top = 58
          Width = 47
          Height = 13
          Caption = 'IdServicio'
          Visible = False
        end
        object IMP: TEdit
          Left = 307
          Top = 18
          Width = 42
          Height = 21
          Color = clGradientActiveCaption
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 3
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          Text = '000.00'
        end
        object GST: TEdit
          Left = 76
          Top = 19
          Width = 53
          Height = 21
          Color = clGradientActiveCaption
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 3
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          Text = '000.00'
        end
        object PORCEN: TEdit
          Left = 194
          Top = 16
          Width = 43
          Height = 21
          Color = clGradientActiveCaption
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 3
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          Text = '000.00'
        end
        object idser: TEdit
          Left = 304
          Top = 52
          Width = 45
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 3
          Visible = False
        end
      end
      object GroupBox3: TGroupBox
        Left = 568
        Top = 1
        Width = 134
        Height = 51
        Caption = 'Opciones Modificadas'
        Enabled = False
        TabOrder = 3
        object C5: TCheckBox
          Left = 4
          Top = 14
          Width = 127
          Height = 17
          Caption = 'Datos de la Cabecera'
          TabOrder = 0
        end
        object C7: TCheckBox
          Left = 4
          Top = 30
          Width = 127
          Height = 17
          Caption = 'Modificaci'#243'n de Datos'
          TabOrder = 1
        end
      end
      object CR1: TCheckBox
        Left = 310
        Top = 72
        Width = 177
        Height = 17
        Caption = 'Auto Incrementar Comprobante?'
        Checked = True
        State = cbChecked
        TabOrder = 4
        OnKeyPress = CR1KeyPress
      end
      object CR2: TCheckBox
        Left = 27
        Top = 266
        Width = 127
        Height = 16
        Caption = 'Es Cliente Minoritario?'
        Checked = True
        State = cbChecked
        TabOrder = 5
        OnExit = CR2Exit
        OnKeyPress = CR2KeyPress
      end
    end
  end
  object DataSource1: TDataSource
    Left = 136
    Top = 3
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
  object DataSource2: TDataSource
    Left = 180
    Top = 10
  end
end

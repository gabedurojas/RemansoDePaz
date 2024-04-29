object AM_InhumadosEsp: TAM_InhumadosEsp
  Left = 308
  Top = 81
  AutoScroll = False
  BorderIcons = [biSystemMenu]
  Caption = 'Carga de Inhumados  Faltantes'
  ClientHeight = 570
  ClientWidth = 814
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
    Top = 551
    Width = 814
    Height = 19
    Panels = <
      item
        Width = 300
      end
      item
        Width = 300
      end
      item
        Width = 50
      end>
  end
  object PC1: TJvgPageControl
    Left = 0
    Top = 47
    Width = 814
    Height = 504
    ActivePage = TabSheet1
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
    object TabSheet1: TTabSheet
      Caption = 'B'#250'squedas'
      ImageIndex = 1
      object todos: TRichEdit
        Left = 499
        Top = 366
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
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 806
        Height = 83
        Align = alTop
        TabOrder = 1
        object LB1: TLabel
          Left = 199
          Top = 32
          Width = 86
          Height = 13
          Caption = 'Ingrese el N'#176' DNI:'
        end
        object Label76: TLabel
          Left = 189
          Top = 10
          Width = 116
          Height = 13
          Caption = 'Selecciones el SECTOR'
          Visible = False
        end
        object Label77: TLabel
          Left = 329
          Top = 10
          Width = 138
          Height = 13
          Caption = 'Selecciones el N'#176' de Parcela'
          Visible = False
        end
        object Label5: TLabel
          Left = 670
          Top = 18
          Width = 36
          Height = 13
          Caption = 'Accion:'
        end
        object RDniTit: TRadioButton
          Left = 5
          Top = 35
          Width = 141
          Height = 17
          Caption = 'Por Sector y Parcela'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = RTituloClick
        end
        object RAccion: TRadioButton
          Left = 5
          Top = 13
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
          TabOrder = 1
          TabStop = True
          OnClick = RAccionClick
        end
        object ElSector: TComboBox
          Left = 201
          Top = 23
          Width = 75
          Height = 24
          CharCase = ecUpperCase
          Color = clInfoBk
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemHeight = 16
          ParentFont = False
          TabOrder = 2
          Visible = False
          OnExit = ElSectorExit
          OnKeyPress = ElSectorKeyPress
        end
        object LaAccion: TComboBox
          Left = 351
          Top = 24
          Width = 71
          Height = 24
          Color = clYellow
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemHeight = 16
          ParentFont = False
          TabOrder = 3
          Visible = False
          OnExit = LaAccionExit
          OnKeyPress = LaAccionKeyPress
        end
        object ODNI: TEdit
          Left = 335
          Top = 24
          Width = 111
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 8
          ParentFont = False
          TabOrder = 4
          Text = '00000000'
          OnKeyPress = ODNIKeyPress
        end
        object Edit2: TEdit
          Left = 710
          Top = 9
          Width = 76
          Height = 24
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 8
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
          Text = '00000000'
        end
        object Busca: TJvBitBtn
          Left = 660
          Top = 38
          Width = 129
          Height = 39
          Caption = 'BUSCAR'
          TabOrder = 6
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
        object RadioButton1: TRadioButton
          Left = 5
          Top = 57
          Width = 180
          Height = 17
          Caption = 'Por Mutuales / Sindicatos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          OnClick = RadioButton1Click
        end
        object LasMutuales: TComboBox
          Left = 200
          Top = 53
          Width = 445
          Height = 21
          ItemHeight = 13
          TabOrder = 8
          Text = 'LasMutuales'
          OnExit = LasMutualesExit
          OnKeyPress = LasMutualesKeyPress
        end
      end
      object PC3: TJvgPageControl
        Left = 0
        Top = 83
        Width = 806
        Height = 161
        ActivePage = TabSheet5
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        TabOrder = 2
        TabStop = False
        TabStyle.Borders = [fsdLeft, fsdTop, fsdRight, fsdBottom]
        TabStyle.BevelInner = bvNone
        TabStyle.BevelOuter = bvNone
        TabStyle.Bold = False
        TabStyle.BackgrColor = clBtnShadow
        TabStyle.Font.Charset = DEFAULT_CHARSET
        TabStyle.Font.Color = clBtnHighlight
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
        TabSelectedStyle.BackgrColor = clBtnFace
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
          Caption = 'Datos del Titular'
          ImageIndex = 1
          object Label32: TLabel
            Left = 43
            Top = 5
            Width = 37
            Height = 13
            Caption = 'N'#176' DNI:'
          end
          object Label33: TLabel
            Left = 214
            Top = 7
            Width = 59
            Height = 13
            Caption = 'CUIF Titular:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label34: TLabel
            Left = 372
            Top = 6
            Width = 46
            Height = 13
            Caption = 'Tipo DNI:'
          end
          object Label35: TLabel
            Left = 8
            Top = 27
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
          object Label36: TLabel
            Left = 35
            Top = 49
            Width = 45
            Height = 13
            Caption = 'Domicilio:'
          end
          object Label37: TLabel
            Left = 50
            Top = 72
            Width = 30
            Height = 13
            Caption = 'Barrio:'
          end
          object Label38: TLabel
            Left = 346
            Top = 72
            Width = 47
            Height = 13
            Caption = 'Provincia:'
          end
          object Label43: TLabel
            Left = 562
            Top = 72
            Width = 41
            Height = 13
            Caption = 'Religion:'
          end
          object Label59: TLabel
            Left = 538
            Top = 28
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
          object Label60: TLabel
            Left = 560
            Top = 50
            Width = 43
            Height = 13
            Caption = 'Est. Civil:'
          end
          object Label73: TLabel
            Left = 554
            Top = 4
            Width = 47
            Height = 13
            Caption = 'Id Cliente:'
          end
          object dnitit: TEdit
            Left = 82
            Top = 2
            Width = 80
            Height = 21
            Color = clInfoBk
            MaxLength = 9
            ReadOnly = True
            TabOrder = 0
            Text = '00000000 '
          end
          object buscliente: TJvBitBtn
            Left = 164
            Top = 1
            Width = 19
            Height = 21
            TabOrder = 1
            Visible = False
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
          object cuift: TEdit
            Left = 276
            Top = 2
            Width = 77
            Height = 21
            Color = clInfoBk
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 13
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
            Text = '00000000000'
          end
          object tipodoct: TEdit
            Left = 422
            Top = 2
            Width = 47
            Height = 21
            Color = clInfoBk
            ReadOnly = True
            TabOrder = 3
          end
          object nomt: TEdit
            Left = 82
            Top = 24
            Width = 428
            Height = 21
            CharCase = ecUpperCase
            Color = clInfoBk
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 50
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
          end
          object domt: TEdit
            Left = 82
            Top = 46
            Width = 428
            Height = 21
            Color = clInfoBk
            ReadOnly = True
            TabOrder = 5
          end
          object barriot: TEdit
            Left = 82
            Top = 68
            Width = 253
            Height = 21
            Color = clInfoBk
            ReadOnly = True
            TabOrder = 6
          end
          object provt: TEdit
            Left = 396
            Top = 68
            Width = 147
            Height = 21
            Color = clInfoBk
            ReadOnly = True
            TabOrder = 7
          end
          object religiont: TEdit
            Left = 606
            Top = 68
            Width = 172
            Height = 21
            Color = clInfoBk
            ReadOnly = True
            TabOrder = 8
          end
          object naciot: TEdit
            Left = 606
            Top = 24
            Width = 172
            Height = 21
            CharCase = ecUpperCase
            Color = clInfoBk
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 50
            ParentFont = False
            ReadOnly = True
            TabOrder = 9
          end
          object estcivilt: TEdit
            Left = 606
            Top = 46
            Width = 172
            Height = 21
            Color = clInfoBk
            ReadOnly = True
            TabOrder = 10
          end
          object JvgGroupBox1: TJvgGroupBox
            Left = 0
            Top = 90
            Width = 783
            Height = 43
            Caption = 'Datos Parcelas'
            TabOrder = 11
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
              Top = 20
              Width = 56
              Height = 13
              Caption = 'Nro Accion:'
            end
            object Label11: TLabel
              Left = 116
              Top = 20
              Width = 40
              Height = 13
              Caption = 'N'#176' Acta:'
            end
            object Label44: TLabel
              Left = 222
              Top = 20
              Width = 34
              Height = 13
              Caption = 'Sector:'
            end
            object Label45: TLabel
              Left = 319
              Top = 20
              Width = 54
              Height = 13
              Caption = 'N'#176' Parcela:'
            end
            object Label46: TLabel
              Left = 446
              Top = 20
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
              Left = 500
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
          object Idclien: TEdit
            Left = 606
            Top = 0
            Width = 47
            Height = 21
            Color = clInfoBk
            ReadOnly = True
            TabOrder = 12
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'Datos Solicitante'
          ImageIndex = 2
          object Label21: TLabel
            Left = 61
            Top = 7
            Width = 37
            Height = 13
            Caption = 'N'#176' DNI:'
          end
          object Label6: TLabel
            Left = 216
            Top = 7
            Width = 79
            Height = 13
            Caption = 'CUIF Solicitante:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label28: TLabel
            Left = 393
            Top = 7
            Width = 46
            Height = 13
            Caption = 'Tipo DNI:'
          end
          object Label7: TLabel
            Left = 6
            Top = 32
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
          object Label29: TLabel
            Left = 53
            Top = 59
            Width = 45
            Height = 13
            Caption = 'Domicilio:'
          end
          object Label30: TLabel
            Left = 68
            Top = 108
            Width = 30
            Height = 13
            Caption = 'Barrio:'
          end
          object Label31: TLabel
            Left = 372
            Top = 108
            Width = 47
            Height = 13
            Caption = 'Provincia:'
          end
          object Label74: TLabel
            Left = 47
            Top = 86
            Width = 50
            Height = 13
            Caption = 'Telefonos:'
          end
          object dnis: TEdit
            Left = 102
            Top = 2
            Width = 80
            Height = 21
            Color = clInfoBk
            MaxLength = 9
            ReadOnly = True
            TabOrder = 0
            Text = '00000000 '
          end
          object JvBitBtn3: TJvBitBtn
            Left = 184
            Top = 5
            Width = 19
            Height = 19
            TabOrder = 1
            OnClick = JvBitBtn3Click
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
          object cuifs: TEdit
            Left = 296
            Top = 4
            Width = 77
            Height = 21
            Color = clSkyBlue
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 13
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
            Text = '00000000000'
          end
          object tipodocs: TEdit
            Left = 442
            Top = 4
            Width = 47
            Height = 21
            Color = clInfoBk
            ReadOnly = True
            TabOrder = 3
          end
          object noms: TEdit
            Left = 102
            Top = 29
            Width = 537
            Height = 21
            CharCase = ecUpperCase
            Color = clInfoBk
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 50
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
          end
          object doms: TEdit
            Left = 102
            Top = 54
            Width = 533
            Height = 21
            Color = clInfoBk
            ReadOnly = True
            TabOrder = 5
          end
          object barrios: TEdit
            Left = 102
            Top = 105
            Width = 253
            Height = 21
            Color = clInfoBk
            ReadOnly = True
            TabOrder = 6
          end
          object provs: TEdit
            Left = 422
            Top = 105
            Width = 211
            Height = 21
            Color = clInfoBk
            ReadOnly = True
            TabOrder = 7
          end
          object tels: TEdit
            Left = 102
            Top = 81
            Width = 533
            Height = 21
            Color = clInfoBk
            ReadOnly = True
            TabOrder = 8
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Datos del Segundo Titular (1'#176' Responsable)'
          ImageIndex = 2
          object Label64: TLabel
            Left = 61
            Top = 7
            Width = 37
            Height = 13
            Caption = 'N'#176' DNI:'
          end
          object Label65: TLabel
            Left = 216
            Top = 7
            Width = 92
            Height = 13
            Caption = 'CUIF Responsable:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label66: TLabel
            Left = 393
            Top = 7
            Width = 46
            Height = 13
            Caption = 'Tipo DNI:'
          end
          object Label67: TLabel
            Left = 2
            Top = 36
            Width = 99
            Height = 13
            Caption = 'Nomb. Responsable:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label68: TLabel
            Left = 55
            Top = 60
            Width = 45
            Height = 13
            Caption = 'Domicilio:'
          end
          object Label69: TLabel
            Left = 66
            Top = 108
            Width = 30
            Height = 13
            Caption = 'Barrio:'
          end
          object Label70: TLabel
            Left = 370
            Top = 108
            Width = 47
            Height = 13
            Caption = 'Provincia:'
          end
          object Label75: TLabel
            Left = 47
            Top = 86
            Width = 50
            Height = 13
            Caption = 'Telefonos:'
          end
          object dnir: TEdit
            Left = 102
            Top = 5
            Width = 80
            Height = 21
            Color = clInfoBk
            MaxLength = 9
            ReadOnly = True
            TabOrder = 0
            Text = '00000000 '
          end
          object Button5: TJvBitBtn
            Left = 184
            Top = 5
            Width = 19
            Height = 19
            TabOrder = 1
            OnClick = Button5Click
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
          object cuifr: TEdit
            Left = 312
            Top = 4
            Width = 77
            Height = 21
            Color = clSkyBlue
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 13
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
            Text = '00000000000'
          end
          object tipodocr: TEdit
            Left = 442
            Top = 4
            Width = 47
            Height = 21
            Color = clInfoBk
            ReadOnly = True
            TabOrder = 3
          end
          object nomr: TEdit
            Left = 102
            Top = 33
            Width = 537
            Height = 21
            CharCase = ecUpperCase
            Color = clInfoBk
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 50
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
          end
          object domr: TEdit
            Left = 102
            Top = 57
            Width = 533
            Height = 21
            Color = clInfoBk
            ReadOnly = True
            TabOrder = 5
          end
          object barrior: TEdit
            Left = 102
            Top = 105
            Width = 253
            Height = 21
            Color = clInfoBk
            ReadOnly = True
            TabOrder = 6
          end
          object provr: TEdit
            Left = 420
            Top = 105
            Width = 211
            Height = 21
            Color = clInfoBk
            ReadOnly = True
            TabOrder = 7
          end
          object telr: TEdit
            Left = 102
            Top = 81
            Width = 533
            Height = 21
            Color = clInfoBk
            ReadOnly = True
            TabOrder = 8
          end
        end
        object TabSheet9: TTabSheet
          Caption = 'Titulares Activos'
          ImageIndex = 3
          object JvgGroupBox6: TJvgGroupBox
            Left = 0
            Top = 0
            Width = 798
            Height = 133
            Align = alClient
            Caption = 'Titulares Activos'
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
            object GrillaT: TJvStringGrid
              Left = 2
              Top = 16
              Width = 794
              Height = 115
              Align = alClient
              ColCount = 12
              DefaultColWidth = 55
              DefaultRowHeight = 17
              FixedCols = 0
              RowCount = 2
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
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
                91
                206
                77
                140
                204
                90
                55
                55
                55
                55
                55)
            end
          end
        end
      end
      object PC2: TJvgPageControl
        Left = 0
        Top = 248
        Width = 806
        Height = 228
        ActivePage = TabSheet7
        Align = alBottom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        TabOrder = 3
        TabStop = False
        TabStyle.Borders = [fsdLeft, fsdTop, fsdRight, fsdBottom]
        TabStyle.BevelInner = bvNone
        TabStyle.BevelOuter = bvNone
        TabStyle.Bold = False
        TabStyle.BackgrColor = clBtnShadow
        TabStyle.Font.Charset = DEFAULT_CHARSET
        TabStyle.Font.Color = clBtnHighlight
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
        TabSelectedStyle.BackgrColor = clBtnFace
        TabSelectedStyle.Font.Charset = DEFAULT_CHARSET
        TabSelectedStyle.Font.Color = clBtnText
        TabSelectedStyle.Font.Height = -11
        TabSelectedStyle.Font.Name = 'Arial'
        TabSelectedStyle.Font.Style = []
        TabSelectedStyle.CaptionHAlign = fhaCenter
        TabSelectedStyle.Gradient.Active = False
        TabSelectedStyle.Gradient.Orientation = fgdHorizontal
        Options = [ftoAutoFontDirection, ftoExcludeGlyphs]
        object TabSheet6: TTabSheet
          Caption = 'Datos del Fallecido'
          object Label20: TLabel
            Left = 46
            Top = 41
            Width = 37
            Height = 13
            Caption = 'N'#176' DNI:'
          end
          object Label4: TLabel
            Left = 204
            Top = 40
            Width = 90
            Height = 13
            Caption = 'Nombre Inhumado:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label15: TLabel
            Left = 6
            Top = 63
            Width = 77
            Height = 13
            Caption = 'CUIF Inhumado:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label22: TLabel
            Left = 168
            Top = 63
            Width = 46
            Height = 13
            Caption = 'Tipo DNI:'
          end
          object Label23: TLabel
            Left = 271
            Top = 63
            Width = 65
            Height = 13
            Caption = 'Nacionalidad:'
          end
          object Label24: TLabel
            Left = 532
            Top = 63
            Width = 43
            Height = 13
            Caption = 'Est. Civil:'
          end
          object Label25: TLabel
            Left = 24
            Top = 88
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
          object Label26: TLabel
            Left = 186
            Top = 87
            Width = 28
            Height = 13
            Caption = 'Edad:'
          end
          object Label27: TLabel
            Left = 38
            Top = 112
            Width = 45
            Height = 13
            Caption = 'Domicilio:'
          end
          object Label48: TLabel
            Left = 21
            Top = 137
            Width = 62
            Height = 13
            Caption = 'Datos Padre:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object Label49: TLabel
            Left = 19
            Top = 162
            Width = 64
            Height = 13
            Caption = 'Datos Madre:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object Label58: TLabel
            Left = 296
            Top = 87
            Width = 38
            Height = 13
            Caption = 'Religion'
          end
          object Label62: TLabel
            Left = 524
            Top = 87
            Width = 49
            Height = 13
            Caption = 'Localidad:'
          end
          object Label55: TLabel
            Left = 34
            Top = 12
            Width = 45
            Height = 13
            Caption = 'Cocheria:'
            Visible = False
          end
          object Label42: TLabel
            Left = 293
            Top = 11
            Width = 59
            Height = 13
            Caption = 'Id Inhumado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label50: TLabel
            Left = 469
            Top = 11
            Width = 90
            Height = 13
            Caption = 'Nro Orden Servicio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DNIfalle: TEdit
            Left = 85
            Top = 34
            Width = 79
            Height = 21
            Color = clInfoBk
            MaxLength = 9
            ReadOnly = True
            TabOrder = 0
            Text = '00000000 '
          end
          object Button4: TJvBitBtn
            Left = 166
            Top = 34
            Width = 20
            Height = 19
            TabOrder = 1
            OnClick = Button4Click
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
          object APEYNOM: TEdit
            Left = 298
            Top = 34
            Width = 460
            Height = 21
            CharCase = ecUpperCase
            Color = clInfoBk
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 50
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
          end
          object CUIF: TEdit
            Left = 85
            Top = 59
            Width = 79
            Height = 21
            Color = clInfoBk
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 13
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
            Text = '00000000000'
          end
          object tipodoc: TEdit
            Left = 216
            Top = 59
            Width = 46
            Height = 21
            Color = clInfoBk
            ReadOnly = True
            TabOrder = 4
          end
          object nacio: TEdit
            Left = 339
            Top = 59
            Width = 174
            Height = 21
            Color = clInfoBk
            ReadOnly = True
            TabOrder = 5
          end
          object estcivil: TEdit
            Left = 578
            Top = 59
            Width = 180
            Height = 21
            Color = clInfoBk
            ReadOnly = True
            TabOrder = 6
          end
          object fecnac: TMaskEdit
            Left = 86
            Top = 83
            Width = 77
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
            TabOrder = 7
            Text = '  /  /    '
            OnChange = fecnacChange
            OnExit = fecnacExit
            OnKeyPress = fecnacKeyPress
          end
          object edad: TEdit
            Left = 216
            Top = 84
            Width = 35
            Height = 21
            Color = clInfoBk
            ReadOnly = True
            TabOrder = 8
          end
          object domi: TEdit
            Left = 85
            Top = 109
            Width = 428
            Height = 21
            Color = clInfoBk
            ReadOnly = True
            TabOrder = 9
          end
          object datopadre: TEdit
            Left = 85
            Top = 134
            Width = 361
            Height = 21
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 50
            ParentFont = False
            TabOrder = 10
            Text = '...'
            Visible = False
          end
          object datomadre: TEdit
            Left = 85
            Top = 159
            Width = 361
            Height = 21
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 50
            ParentFont = False
            TabOrder = 11
            Text = '...'
            Visible = False
          end
          object religionfalle: TEdit
            Left = 339
            Top = 84
            Width = 174
            Height = 21
            Color = clInfoBk
            ReadOnly = True
            TabOrder = 12
          end
          object loca: TEdit
            Left = 578
            Top = 83
            Width = 180
            Height = 21
            Color = clInfoBk
            ReadOnly = True
            TabOrder = 13
          end
          object lacocheria: TComboBox
            Left = 84
            Top = 4
            Width = 175
            Height = 21
            ItemHeight = 13
            TabOrder = 14
            Text = 'lacocheria'
            Visible = False
          end
          object NroInhumado: TEdit
            Left = 359
            Top = 4
            Width = 90
            Height = 21
            CharCase = ecUpperCase
            Color = clInfoBk
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 50
            ParentFont = False
            ReadOnly = True
            TabOrder = 15
          end
          object NroOrdServicio: TEdit
            Left = 573
            Top = 4
            Width = 90
            Height = 21
            CharCase = ecUpperCase
            Color = clInfoBk
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 50
            ParentFont = False
            ReadOnly = True
            TabOrder = 16
          end
        end
        object TabSheet7: TTabSheet
          Caption = 'Datos de Defuncion'
          ImageIndex = 1
          object Label8: TLabel
            Left = 2
            Top = 5
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
          object Label14: TLabel
            Left = 170
            Top = 6
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
          object Label10: TLabel
            Left = 297
            Top = 5
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
          object Label40: TLabel
            Left = 442
            Top = 5
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
          object Label41: TLabel
            Left = 633
            Top = 6
            Width = 90
            Height = 13
            Caption = 'Hora Fallecimiento:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Fecing: TMaskEdit
            Left = 76
            Top = 0
            Width = 74
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
            OnExit = FecingExit
            OnKeyPress = FecingKeyPress
          end
          object horasale: TMaskEdit
            Left = 229
            Top = 0
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
            OnKeyPress = horasaleKeyPress
          end
          object horallega: TMaskEdit
            Left = 367
            Top = 0
            Width = 46
            Height = 21
            EditMask = '99:99;1;_'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 5
            ParentFont = False
            TabOrder = 2
            Text = '00:00'
            OnKeyPress = horallegaKeyPress
          end
          object fecinhu: TMaskEdit
            Left = 536
            Top = 0
            Width = 81
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
            OnExit = fecinhuExit
            OnKeyPress = fecinhuKeyPress
          end
          object horafalle: TMaskEdit
            Left = 726
            Top = 0
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
            TabOrder = 4
            Text = '00:00'
            OnKeyPress = horafalleKeyPress
          end
          object JvgGroupBox4: TJvgGroupBox
            Left = 1
            Top = 24
            Width = 780
            Height = 92
            Caption = 'Datos Certificado de Defuncion'
            TabOrder = 5
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
            object Label9: TLabel
              Left = 4
              Top = 24
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
            object Label12: TLabel
              Left = 180
              Top = 24
              Width = 42
              Height = 13
              Caption = 'Seccion:'
            end
            object Label16: TLabel
              Left = 293
              Top = 24
              Width = 25
              Height = 13
              Caption = 'Acta:'
            end
            object Label17: TLabel
              Left = 375
              Top = 24
              Width = 25
              Height = 13
              Caption = 'Folio:'
            end
            object Label18: TLabel
              Left = 466
              Top = 24
              Width = 30
              Height = 13
              Caption = 'Tomo:'
            end
            object Label19: TLabel
              Left = 61
              Top = 46
              Width = 38
              Height = 13
              Caption = 'Medico:'
            end
            object Label39: TLabel
              Left = 41
              Top = 71
              Width = 59
              Height = 13
              Caption = 'Diagnostico:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label54: TLabel
              Left = 559
              Top = 23
              Width = 115
              Height = 13
              Caption = 'Fecha Certif. Defuncion:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object fecfalle: TMaskEdit
              Left = 103
              Top = 18
              Width = 68
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
              OnExit = fecfalleExit
              OnKeyPress = fecfalleKeyPress
            end
            object nrosec: TEdit
              Left = 227
              Top = 18
              Width = 45
              Height = 21
              TabOrder = 1
              Text = '0'
              OnKeyPress = nrosecKeyPress
            end
            object acta: TEdit
              Left = 320
              Top = 18
              Width = 45
              Height = 21
              TabOrder = 2
              Text = '0'
              OnExit = actaExit
              OnKeyPress = actaKeyPress
            end
            object nrofolio: TEdit
              Left = 402
              Top = 18
              Width = 45
              Height = 21
              TabOrder = 3
              Text = '0'
              OnExit = nrofolioExit
              OnKeyPress = nrofolioKeyPress
            end
            object nrotomo: TEdit
              Left = 499
              Top = 18
              Width = 45
              Height = 21
              TabOrder = 4
              Text = '0'
              OnExit = nrotomoExit
              OnKeyPress = nrotomoKeyPress
            end
            object NroReligion: TJvBitBtn
              Left = 742
              Top = 45
              Width = 22
              Height = 19
              TabOrder = 7
              OnClick = NroReligionClick
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
            object losMedicos: TComboBox
              Left = 103
              Top = 43
              Width = 630
              Height = 21
              CharCase = ecUpperCase
              ItemHeight = 13
              TabOrder = 6
              OnExit = losMedicosExit
              OnKeyPress = losMedicosKeyPress
            end
            object diag: TComboBox
              Left = 103
              Top = 67
              Width = 628
              Height = 21
              CharCase = ecUpperCase
              ItemHeight = 13
              TabOrder = 8
              OnExit = diagExit
              OnKeyPress = diagKeyPress
            end
            object JvBitBtn2: TJvBitBtn
              Left = 741
              Top = 68
              Width = 22
              Height = 19
              TabOrder = 9
              OnClick = JvBitBtn2Click
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
            object fecdefun: TMaskEdit
              Left = 678
              Top = 19
              Width = 81
              Height = 21
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
              OnExit = fecdefunExit
              OnKeyPress = fecdefunKeyPress
            end
          end
          object JvgGroupBox5: TJvgGroupBox
            Left = 0
            Top = 120
            Width = 798
            Height = 80
            Align = alBottom
            Caption = 'Objeto y Ubicaci'#243'n'
            TabOrder = 6
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
            object Label3: TLabel
              Left = 12
              Top = 25
              Width = 55
              Height = 13
              Caption = 'Tipo Objeto'
            end
            object Label1: TLabel
              Left = 247
              Top = 25
              Width = 34
              Height = 13
              Caption = 'NIVEL:'
            end
            object Label2: TLabel
              Left = 340
              Top = 21
              Width = 54
              Height = 13
              Caption = 'POSICION:'
            end
            object Label13: TLabel
              Left = 238
              Top = 53
              Width = 45
              Height = 13
              Caption = 'Cocheria:'
            end
            object Label72: TLabel
              Left = 4
              Top = 50
              Width = 61
              Height = 13
              Caption = 'Nro Servicio:'
            end
            object vernivel: TSpeedButton
              Left = 456
              Top = 16
              Width = 153
              Height = 22
              Caption = 'Verificar Nivel/Posicion'
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
                3333333777333777FF33339993707399933333773337F3777FF3399933000339
                9933377333777F3377F3399333707333993337733337333337FF993333333333
                399377F33333F333377F993333303333399377F33337FF333373993333707333
                333377F333777F333333993333101333333377F333777F3FFFFF993333000399
                999377FF33777F77777F3993330003399993373FF3777F37777F399933000333
                99933773FF777F3F777F339993707399999333773F373F77777F333999999999
                3393333777333777337333333999993333333333377777333333}
              NumGlyphs = 2
              Visible = False
              OnClick = vernivelClick
            end
            object tipoobjeto: TComboBox
              Left = 73
              Top = 18
              Width = 159
              Height = 21
              CharCase = ecUpperCase
              ItemHeight = 13
              ItemIndex = 0
              TabOrder = 0
              Text = 'ATAUD MAYOR'
              OnExit = tipoobjetoExit
              OnKeyPress = tipoobjetoKeyPress
              Items.Strings = (
                'ATAUD MAYOR'
                'URNA'
                'CENICERO')
            end
            object nivel1: TEdit
              Left = 288
              Top = 16
              Width = 43
              Height = 21
              MaxLength = 1
              TabOrder = 1
              Text = '1'
              OnExit = nivel1Exit
              OnKeyPress = nivel1KeyPress
            end
            object cocheria: TComboBox
              Left = 288
              Top = 46
              Width = 175
              Height = 21
              CharCase = ecUpperCase
              ItemHeight = 13
              TabOrder = 3
              Text = 'LACOCHERIA'
              OnExit = cocheriaExit
              OnKeyPress = cocheriaKeyPress
            end
            object posicion1: TEdit
              Left = 402
              Top = 16
              Width = 45
              Height = 21
              MaxLength = 1
              TabOrder = 2
              Text = '1'
              OnExit = posicion1Exit
              OnKeyPress = posicion1KeyPress
            end
            object ElNroServ: TEdit
              Left = 73
              Top = 46
              Width = 87
              Height = 21
              TabOrder = 4
              OnKeyPress = ElNroServKeyPress
            end
          end
        end
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 814
    Height = 47
    ButtonHeight = 37
    Caption = 'ToolBar1'
    Color = clGradientInactiveCaption
    EdgeBorders = [ebLeft, ebTop, ebBottom]
    EdgeInner = esLowered
    ParentColor = False
    TabOrder = 2
    DesignSize = (
      812
      43)
    object ToolButton4: TToolButton
      Left = 0
      Top = 2
      Width = 531
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object ToolButton1: TToolButton
      Left = 531
      Top = 2
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object BORRA: TJvBitBtn
      Left = 539
      Top = 2
      Width = 62
      Height = 37
      Anchors = [akTop, akRight]
      Caption = 'BORRA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
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
      Left = 601
      Top = 2
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object GUARDA: TJvBitBtn
      Left = 609
      Top = 2
      Width = 118
      Height = 37
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
    object ToolButton3: TToolButton
      Left = 727
      Top = 2
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object Sale: TJvBitBtn
      Left = 735
      Top = 2
      Width = 62
      Height = 37
      Anchors = [akTop, akRight]
      Caption = 'Salir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = SaleClick
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
      HotTrackFont.Height = -8
      HotTrackFont.Name = 'Arial'
      HotTrackFont.Style = []
    end
  end
  object DataSource1: TDataSource
    Left = 592
  end
  object Timer1: TTimer
    Interval = 500
    Left = 596
    Top = 255
  end
end

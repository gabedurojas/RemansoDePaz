object CremacionConsulta: TCremacionConsulta
  Left = 215
  Top = 88
  AutoScroll = False
  Caption = 'Conuslta de CREMACIONES'
  ClientHeight = 563
  ClientWidth = 1124
  Color = clBtnFace
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
    Left = 556
    Top = 112
    Width = 153
    Height = 89
    Proportional = True
  end
  object todos: TRichEdit
    Left = 29
    Top = 214
    Width = 694
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
  object PC1: TPageControl
    Left = 0
    Top = 33
    Width = 1124
    Height = 511
    ActivePage = TabSheet1
    Align = alClient
    MultiLine = True
    TabOrder = 1
    TabStop = False
    object TabSheet1: TTabSheet
      Caption = 'B'#250'squedas'
      object JvgGroupBox3: TJvgGroupBox
        Left = 0
        Top = 0
        Width = 1116
        Height = 368
        Align = alClient
        Caption = 'Datos de la Accion'
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
        object DBGrid1: TDBGrid
          Left = 2
          Top = 111
          Width = 1112
          Height = 178
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
          OnTitleClick = DBGrid1TitleClick
        end
        object GroupBox1: TGroupBox
          Left = 2
          Top = 16
          Width = 1112
          Height = 95
          Align = alTop
          TabOrder = 1
          object Label4: TLabel
            Left = 356
            Top = 14
            Width = 98
            Height = 13
            Caption = 'Ingrese Nro Solicitud'
          end
          object Label5: TLabel
            Left = 512
            Top = 16
            Width = 94
            Height = 13
            Caption = 'Ingrese Nro Parcela'
            Visible = False
          end
          object Label12: TLabel
            Left = 312
            Top = 71
            Width = 34
            Height = 13
            Caption = 'Desde:'
          end
          object Label13: TLabel
            Left = 470
            Top = 73
            Width = 31
            Height = 13
            Caption = 'Hasta:'
          end
          object C2: TRadioButton
            Left = 2
            Top = 14
            Width = 210
            Height = 17
            Caption = 'Por Nro'#176' de Solicitud'
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            TabStop = True
            OnClick = C1Click
          end
          object c1: TRadioButton
            Left = 2
            Top = 44
            Width = 210
            Height = 17
            Caption = 'Por Nombre De Inhumado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnClick = C1Click
          end
          object sector: TEdit
            Left = 354
            Top = 32
            Width = 81
            Height = 24
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object nombre: TEdit
            Left = 355
            Top = 34
            Width = 307
            Height = 24
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnKeyPress = nombreKeyPress
          end
          object Buscar: TJvBitBtn
            Left = 707
            Top = 39
            Width = 132
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
          object accion: TEdit
            Left = 355
            Top = 33
            Width = 85
            Height = 24
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 8
            ParentFont = False
            TabOrder = 5
            Text = '00000000'
            OnKeyPress = accionKeyPress
          end
          object parcela: TEdit
            Left = 510
            Top = 34
            Width = 79
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            OnKeyPress = parcelaKeyPress
          end
          object C7: TRadioButton
            Left = 4
            Top = 70
            Width = 105
            Height = 17
            Caption = 'Por fechas'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 7
            OnClick = C1Click
          end
          object FECNAC: TMaskEdit
            Left = 356
            Top = 65
            Width = 77
            Height = 21
            EditMask = '!99/99/9999;1;_'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 10
            ParentFont = False
            TabOrder = 8
            Text = '  /  /    '
            OnExit = FECNACExit
            OnKeyPress = FECNACKeyPress
          end
          object FECNACD: TMaskEdit
            Left = 508
            Top = 63
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
            TabOrder = 9
            Text = '  /  /    '
            OnExit = FECNACDExit
            OnKeyPress = FECNACDKeyPress
          end
        end
        object DBNavigator1: TDBNavigator
          Left = 2
          Top = 289
          Width = 1112
          Height = 25
          DataSource = DataSource1
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alBottom
          TabOrder = 2
          OnClick = DBNavigator1Click
        end
        object grillaTestigos: TJvStringGrid
          Left = 2
          Top = 314
          Width = 1112
          Height = 52
          Align = alBottom
          ColCount = 11
          DefaultColWidth = 55
          DefaultRowHeight = 20
          FixedCols = 0
          RowCount = 2
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
          ScrollBars = ssHorizontal
          TabOrder = 3
          Visible = False
          Alignment = taLeftJustify
          FixedFont.Charset = DEFAULT_CHARSET
          FixedFont.Color = clRed
          FixedFont.Height = -11
          FixedFont.Name = 'MS Sans Serif'
          FixedFont.Style = [fsBold]
          ColWidths = (
            37
            45
            206
            90
            140
            204
            90
            55
            55
            55
            55)
        end
      end
      object JvgGroupBox5: TJvgGroupBox
        Left = 0
        Top = 368
        Width = 1116
        Height = 115
        Align = alBottom
        Caption = 'Datos del Servicio de Cremacion Seleccionado'
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
        DesignSize = (
          1116
          115)
        FullHeight = 0
        object Label11: TLabel
          Left = 794
          Top = 98
          Width = 12
          Height = 13
          Caption = 'Id:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Layout = tlBottom
        end
        object Label19: TLabel
          Left = 16
          Top = 43
          Width = 74
          Height = 13
          Caption = 'El que Suscribe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 186
          Top = 23
          Width = 61
          Height = 13
          Caption = 'Nro. solicitud'
        end
        object Label8: TLabel
          Left = 694
          Top = 69
          Width = 82
          Height = 13
          Caption = 'Fec Fallecimiento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 343
          Top = 23
          Width = 31
          Height = 13
          Caption = 'Origen'
        end
        object Label1: TLabel
          Left = 39
          Top = 94
          Width = 53
          Height = 13
          Caption = '1er Testigo'
        end
        object Label3: TLabel
          Left = 312
          Top = 97
          Width = 56
          Height = 13
          Caption = '2do Testigo'
        end
        object Label10: TLabel
          Left = 561
          Top = 69
          Width = 24
          Height = 13
          Caption = 'edad'
        end
        object Label7: TLabel
          Left = 10
          Top = 69
          Width = 82
          Height = 13
          Caption = 'Nombre Fallecido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 12
          Top = 22
          Width = 74
          Height = 13
          Caption = 'Fec Cremacion:'
        end
        object D1: TEdit
          Left = 812
          Top = 89
          Width = 57
          Height = 24
          CharCase = ecUpperCase
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          Text = '00000'
        end
        object D4: TEdit
          Left = 780
          Top = 64
          Width = 89
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object D5: TEdit
          Left = 378
          Top = 91
          Width = 176
          Height = 21
          ReadOnly = True
          TabOrder = 2
        end
        object D2: TEdit
          Left = 380
          Top = 12
          Width = 289
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object D3: TEdit
          Left = 254
          Top = 12
          Width = 72
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object D6: TEdit
          Left = 98
          Top = 41
          Width = 457
          Height = 21
          ReadOnly = True
          TabOrder = 5
        end
        object D7: TEdit
          Left = 98
          Top = 89
          Width = 201
          Height = 21
          ReadOnly = True
          TabOrder = 6
        end
        object D9: TEdit
          Left = 596
          Top = 64
          Width = 73
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
        end
        object D8: TEdit
          Left = 98
          Top = 64
          Width = 457
          Height = 21
          ReadOnly = True
          TabOrder = 8
        end
        object D10: TEdit
          Left = 99
          Top = 16
          Width = 78
          Height = 21
          ReadOnly = True
          TabOrder = 9
        end
        object ImpActaInhu: TJvBitBtn
          Left = 944
          Top = 12
          Width = 161
          Height = 37
          Anchors = [akTop, akRight]
          Caption = 'REIMPRIMIR'#13#10'ORDEN CREMACION'
          TabOrder = 10
          OnClick = ImpActaInhuClick
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
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object cambiaorigen: TJvBitBtn
          Left = 806
          Top = 12
          Width = 131
          Height = 39
          Anchors = [akTop, akRight]
          Caption = 'Cambiar ORIGEN '#13#10'Cremacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          OnClick = cambiaorigenClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
            000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
            00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
            F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
            0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
            FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
            FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
            0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
            00333377737FFFFF773333303300000003333337337777777333}
          NumGlyphs = 2
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -12
          HotTrackFont.Name = 'Arial'
          HotTrackFont.Style = []
        end
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1124
    Height = 33
    ButtonHeight = 27
    Caption = 'ToolBar1'
    Color = clGradientInactiveCaption
    EdgeBorders = [ebLeft, ebTop, ebBottom]
    EdgeInner = esLowered
    ParentColor = False
    TabOrder = 0
    DesignSize = (
      1122
      29)
    object ToolButton4: TToolButton
      Left = 0
      Top = 2
      Width = 849
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object GUARDA: TJvBitBtn
      Left = 849
      Top = 2
      Width = 114
      Height = 27
      Anchors = [akTop, akRight]
      Caption = 'IMPRIMIR INFORME'
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
    object ToolButton1: TToolButton
      Left = 963
      Top = 2
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object Limpiar: TJvBitBtn
      Left = 971
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
    object ToolButton3: TToolButton
      Left = 1033
      Top = 2
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object JvBitBtn1: TJvBitBtn
      Left = 1041
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
  object Barra1: TStatusBar
    Left = 0
    Top = 544
    Width = 1124
    Height = 19
    Panels = <
      item
        Width = 400
      end
      item
        Width = 300
      end>
  end
  object GroupBox2: TGroupBox
    Left = 314
    Top = 338
    Width = 571
    Height = 125
    BiDiMode = bdLeftToRight
    Color = clSkyBlue
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentBackground = False
    ParentBiDiMode = False
    ParentColor = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 4
    object Panel2: TPanel
      Left = 2
      Top = 15
      Width = 567
      Height = 108
      Align = alClient
      BorderStyle = bsSingle
      Color = clSkyBlue
      TabOrder = 0
      DesignSize = (
        563
        104)
      object Label14: TLabel
        Left = 20
        Top = 10
        Width = 495
        Height = 20
        Caption = 'UD. esta Modificar el Origen de esta Cremacion Seleccionada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 5
        Top = 120
        Width = 64
        Height = 13
        Caption = 'Path Archivo:'
      end
      object Label16: TLabel
        Left = 73
        Top = 114
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
      object Label17: TLabel
        Left = 26
        Top = 41
        Width = 156
        Height = 20
        Caption = 'Origen del Servicio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object modifica: TJvBitBtn
        Left = 332
        Top = 50
        Width = 125
        Height = 41
        Anchors = [akTop, akRight]
        Caption = 'Confirmar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = modificaClick
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
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -13
        HotTrackFont.Name = 'Arial'
        HotTrackFont.Style = []
      end
      object cierra: TJvBitBtn
        Left = 464
        Top = 49
        Width = 87
        Height = 41
        Anchors = [akTop, akRight]
        Caption = 'Cancelar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = cierraClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
          03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
          0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
          0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
          0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
          0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
          0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
          0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
          0333337F777FFFFF7F3333000000000003333377777777777333}
        NumGlyphs = 2
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -13
        HotTrackFont.Name = 'Arial'
        HotTrackFont.Style = []
      end
      object origen: TComboBox
        Left = 26
        Top = 66
        Width = 295
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemHeight = 16
        ParentFont = False
        TabOrder = 2
        Text = 'ORIGEN'
        OnExit = origenExit
        OnKeyPress = origenKeyPress
      end
      object idser: TEdit
        Left = 276
        Top = 68
        Width = 41
        Height = 21
        TabOrder = 3
        Visible = False
      end
    end
  end
  object DataSource1: TDataSource
    Left = 6
    Top = 4
  end
  object DataSource2: TDataSource
    Left = 38
    Top = 4
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
    Left = 566
    Top = 18
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
    Left = 814
    Top = 474
  end
end

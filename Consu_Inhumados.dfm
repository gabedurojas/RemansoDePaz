object InhumaConsulta: TInhumaConsulta
  Left = 220
  Top = 26
  AutoScroll = False
  Caption = 'Conuslta de INHUMADOS'
  ClientHeight = 571
  ClientWidth = 884
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
    Top = 45
    Width = 884
    Height = 507
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
        Width = 876
        Height = 306
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
          Top = 125
          Width = 872
          Height = 102
          Align = alClient
          DataSource = DataSource1
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          PopupMenu = PopupMenu1
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
          Width = 872
          Height = 109
          Align = alTop
          TabOrder = 1
          object Label4: TLabel
            Left = 356
            Top = 14
            Width = 94
            Height = 13
            Caption = 'Ingrese Nro Accion:'
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
            Left = 286
            Top = 85
            Width = 34
            Height = 13
            Caption = 'Desde:'
          end
          object Label13: TLabel
            Left = 444
            Top = 87
            Width = 31
            Height = 13
            Caption = 'Hasta:'
          end
          object C2: TRadioButton
            Left = 2
            Top = 14
            Width = 210
            Height = 17
            Caption = 'Por Nro'#176' de Accion'
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
            Top = 36
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
          object c3: TRadioButton
            Left = 4
            Top = 60
            Width = 210
            Height = 18
            Caption = 'Por Sector y Parcela'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            OnClick = C1Click
          end
          object c5: TRadioButton
            Left = 206
            Top = 38
            Width = 124
            Height = 17
            Caption = 'Por Parcela'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
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
            TabOrder = 4
            OnKeyPress = sectorKeyPress
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
            TabOrder = 5
            OnKeyPress = nombreKeyPress
          end
          object Buscar: TJvBitBtn
            Left = 725
            Top = 55
            Width = 132
            Height = 42
            Caption = 'Buscar'
            TabOrder = 6
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
          object c4: TRadioButton
            Left = 206
            Top = 16
            Width = 125
            Height = 17
            Caption = 'Por Sector'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 7
            OnClick = C1Click
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
            TabOrder = 8
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
            TabOrder = 9
            OnKeyPress = parcelaKeyPress
          end
          object C6: TRadioButton
            Left = 206
            Top = 59
            Width = 158
            Height = 17
            Caption = 'Alfabetico General'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            TabOrder = 10
            OnClick = C1Click
          end
          object C7: TRadioButton
            Left = 4
            Top = 84
            Width = 105
            Height = 17
            Caption = 'Por fechas'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 11
            OnClick = C1Click
          end
          object FECNAC: TMaskEdit
            Left = 330
            Top = 79
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
            TabOrder = 12
            Text = '  /  /    '
            OnExit = FECNACExit
            OnKeyPress = FECNACKeyPress
          end
          object FECNACD: TMaskEdit
            Left = 482
            Top = 77
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
            TabOrder = 13
            Text = '  /  /    '
            OnExit = FECNACDExit
            OnKeyPress = FECNACDKeyPress
          end
          object lasfechas: TComboBox
            Left = 106
            Top = 80
            Width = 145
            Height = 21
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 14
            Text = 'De Defuncion'
            OnExit = lasfechasExit
            OnKeyPress = lasfechasKeyPress
            Items.Strings = (
              'De Defuncion'
              'De Inhumacion'
              'De Carga')
          end
        end
        object DBNavigator1: TDBNavigator
          Left = 2
          Top = 227
          Width = 872
          Height = 25
          DataSource = DataSource1
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alBottom
          TabOrder = 2
          OnClick = DBNavigator1Click
        end
        object grillaTestigos: TJvStringGrid
          Left = 2
          Top = 252
          Width = 872
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
        object Panel1: TPanel
          Left = 72
          Top = 136
          Width = 675
          Height = 143
          TabOrder = 4
          DesignSize = (
            675
            143)
          object Label14: TLabel
            Left = 24
            Top = 27
            Width = 36
            Height = 13
            Caption = 'Accion:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Layout = tlBottom
          end
          object Label15: TLabel
            Left = 147
            Top = 27
            Width = 24
            Height = 13
            Caption = 'Nivel'
          end
          object Label16: TLabel
            Left = 269
            Top = 27
            Width = 31
            Height = 13
            Caption = 'Sector'
          end
          object Label17: TLabel
            Left = 379
            Top = 27
            Width = 56
            Height = 13
            Caption = 'Nro Parcela'
          end
          object Label18: TLabel
            Left = 528
            Top = 27
            Width = 40
            Height = 13
            Caption = 'Posicion'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label20: TLabel
            Left = 26
            Top = 49
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
          object Label21: TLabel
            Left = 25
            Top = 114
            Width = 177
            Height = 16
            Caption = 'NRO ACTA INHUMACION'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Edit1: TEdit
            Left = 70
            Top = 19
            Width = 57
            Height = 24
            CharCase = ecUpperCase
            Color = clYellow
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 5
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            Text = '00000'
          end
          object Edit2: TEdit
            Left = 176
            Top = 19
            Width = 72
            Height = 24
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
          object Edit3: TEdit
            Left = 308
            Top = 19
            Width = 55
            Height = 24
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
          end
          object Edit4: TEdit
            Left = 444
            Top = 19
            Width = 73
            Height = 24
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
          end
          object Edit5: TEdit
            Left = 574
            Top = 19
            Width = 75
            Height = 24
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
          end
          object Edit6: TEdit
            Left = 26
            Top = 66
            Width = 623
            Height = 24
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 5
          end
          object JvBitBtn2: TJvBitBtn
            Left = 388
            Top = 96
            Width = 155
            Height = 41
            Anchors = [akTop, akRight]
            Caption = 'ACTUALIAR ACTA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            OnClick = JvBitBtn2Click
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
          object JvBitBtn3: TJvBitBtn
            Left = 551
            Top = 96
            Width = 100
            Height = 40
            Anchors = [akTop, akRight]
            Caption = 'CERRAR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            OnClick = JvBitBtn3Click
            Glyph.Data = {
              360C0000424D360C000000000000360000002800000020000000200000000100
              180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFEFFFFFAFFFFFAFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7EDD2D2BCAAAA
              8C8F8F9483839B7C7CA27878A179799D8C8C94B5B58DDADABAFCFCEDFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6CC9B9B8B5D5DAC5656DD6868
              FF7D7DFF8080FF6D6DFF5B5BFF4848FF3535FF1B1BFF1919DF3939AC9C9C8BEA
              EAC9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFF7F7DE94948B2E2ECA2A2AFF4545FF5151FF6060
              FF8585FF9595FF9898FF8E8EFF7676FF5252FF1212FF0000FF0000FF0000FF10
              10CC8E8E8DF7F7DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFDDDDAB2B2BB40000FF1818FF3434FF8A8AFFBCBCFFD3D3
              FFCDCDFFCFCFFFD4D4FFDADAFFE1E1FFEAEAFFF9F9FFCBCBFF7575FF0000F900
              00F70000FF2727B2DADAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFC7C7A00000E40000FF0909FF8B8BFFB5B5FF9292FF8C8CFF9898
              FFA1A1FFAAAAFFB0B0FFB4B4FFB5B5FFB5B5FFAFAFFFAAAAFFB4B4FFDEDEFF99
              99FC0000ED0000EF0000D7BEBE9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFCBCBA60000E80000F94343FEA4A4FF6969FF6E6EFF7979FF8181FF9191
              FF9E9EFFA6A6FFADADFFB1B1FFAFAFFFABABFF9F9FFF9898FF9595FF8989FF89
              89FFC7C7FF5656F20000E00000D9C4C4A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              F2F2C30000D70000F06969FE6C6CFF4A4AFF6060FF6363FF8989FFAFAFFF9E9E
              C9EEEEEFFEFEFEFFFFF9FFFFF9FAFAF9EDEDFADADAF9AEAEFC8E8EFF7979FF79
              79FF6868FF8989FF8888FB0000D80000C8EDEDC1FFFFFFFFFFFFFFFFFFFFFFF6
              4444B30000EC5D5DFD4848FF3D3DFF4D4DFF5353FF7575FF9A9AFF0000FF0B0B
              FF808094FFFFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE7E7F79C9CFC6D
              6DFF6363FF5A5AFF6161FF7E7EFB0000D13838ABFFFFF4FFFFFFFFFFFFCDCDB9
              0000E23737F53A3AFF2C2CFF3939FF4343FF4C4CFF5050FF6666FF9B9BFF0000
              FF0000FF5353A1F7F7CEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9B2
              B2F56060FF4D4DFF4747FF5656FF5454F00000CBC2C2B7FFFFFFFFFFFD4444B8
              0000E53F3FFF1919FF2727FF3838FF3232FF4141FF4949FF4D4DFF5757FFA3A3
              FF0606FC0000FF2424BEEAEAB5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFDAFAFF04B4BFF3D3DFF3131FF6161FF0707D43A3AADFFFFFDFFFFE20000C8
              2626FC0C0CFF1616FF1F1FFF5151FF5353FF2D2DFF3E3EFF4545FF4949FF4848
              FF9C9CFF1616F70000FF0505D9D3D39FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFC8282F33131FF2F2FFF1F1FFF4E4EFD0000B2FFFFE1D6D6D30000D8
              0F0FFF0808FF0B0BFF3838FF4141F02323FB5353FF2B2BFF3838FF3D3DFF4343
              FF3B3BFF8888FF3636F60000F30000E8B3B393FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFE93939FF1E1EFF1A1AFF3535FF0000C9CBCBD1ABABCD0000E9
              0000FF0101FF0707FF0909FFE1E1E6FFFFFA2929F94646FF2929FF3131FF3636
              FF3939FF3232FF6666FF5252F70000E80000EF90908EFFFFF4FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFF95757E11717FF1313FF1212FF0707DF9B9BCB9393CB0000F3
              0000FF0000FF0505FF1616F8FFFFEEFFFFFFFFFFFA5A5AF63232FF2727FF2626
              FF2828FF2B2BFF2626FF4242FF5959FA0000DD0000F06C6C91FCFCE2FFFFFFFF
              FFFFFFFFFFFFFFFE4747CC1C1CFF0A0AFF0202FF0000F49494C79999C90000FC
              0000FF0000FF0000FF4848DFFFFFF5FFFFFFFFFFFFFFFFFD9797F21F1FFF2C2C
              FF4444FF3B3BFF3E3EFF3131FF2F2FFF4848FD0000D70000E942429DF5F5CBFF
              FFFFFFFFFFFFFFFD3232B61717FF0000FF0000FF0000FE9696C59696C80000FF
              0000FF0000FF0000FF1F1FE0FFFFDFFFFFFFFFFFFFFFFFFFFFFFFFD4D4F11111
              FF6969FFABABFF9696FF9A9AFF9D9DFF9898FF3737FF0101D20000DB1616ABE2
              E2B6FFFFFFFFFFEB0000B30606FF0000FF0000FF0000FF9595C5B3B3D10000F5
              0000FF2727FF3232FF1212FAADADAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7
              F31B1BFD3434FFADADFF8F8FFF9090FF9191FFA4A4FF2D2DFF0000D50000CB01
              01B5D2D2AAC3C3B60000CA0000FF0000FF0000FF0000FAA4A4CEE5E5E10000E4
              9E9EFFAFAFFF6D6DFF3535FF1212A1FFFFE6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF64444FB0505FFB4B4FF9595FF9595FF9494FFB1B1FF2B2BFF0000DD00
              00BA0000BC22229C0000DA1F1FFF0000FF0000FF0000E8D9D9DDFFFFF90000CE
              7272FFA1A1FFB7B7FF0000FF2525DB727293FFFFFBFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFF87272F80000FFB2B2FF9F9FFF9C9CFF9B9BFFBABAFF5050FF00
              00EC0000B70000BA0000FAC9C9FF9898FF1414FF0000CEFFFFF8FFFFFF5757BE
              1B1BFFBBBBFFAEAEFF4242FF6464FF0000BC85858EFFFFEFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFCA0A0F50000FFABABFFAAAAFFA3A3FFA2A2FFB9B9FF7C
              7CFF0000F50000CB4444FFB1B1FFBCBCFF3434FF5050BEFFFFFFFFFFFFFFFFEE
              0000DBB0B0FFACACFFC9C9FF0000FF8C8CF30000BD4E4E90DEDEB4FFFFFCFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFD3D3F60000FF9494FFB9B9FFAAAAFFAAAAFFB9
              B9FF9A9AFF0000FFC8C8FFACACFFB6B6FF0000DEF7F7E9FFFFFFFFFFFFFFFFFF
              6060C20000FFD9D9FFB3B3FFB2B2FF0000FFA4A4F20000BC0000B55D5D8EC4C4
              9BE6E6CDF7F7E9FEFEF4FFFFF5FFFFEADCDCBF1717FF7F7FFFC9C9FFB0B0FFB1
              B1FFB6B6FFCACAFFB0B0FFD9D9FF0505FF5151C1FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF0000BE4E4EFFD7D7FFBFBFFFB6B6FF0000FF9C9CFE4545CA0000BE0000
              C30A0AA53535974141924141913636970E0EA40808BB2E2EFC6161FFD7D7FFB8
              B8FFB9B9FFB7B7FFD4D4FF5B5BFF0000BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFA0000C16E6EFFE2E2FFC3C3FFDADAFF1E1EFF2828FF9090F98888
              D81B1BC60000BA0000BD0000BD0000BA1010C54646D73737F10000FF6464FFCB
              CBFFBEBEFFDFDFFF7C7CFF0000C3FFFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFA0000C23535FFF5F5FFCCCCFFE0E0FFB7B7FF3C3CFF0000
              FF3939FF7171FF6262FF5757FF5252FF1D1DFF0000FF3F3FFFB6B6FFDCDCFFCA
              CAFFF3F3FF4646FF0000C2FFFFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF4A4AC80000E4B0B0FFF3F3FFD9D9FFDEDEFFF4F4
              FFB9B9FF8787FF7070FF7272FF8989FFB8B8FFF5F5FFDFDFFFD8D8FFF1F1FFB5
              B5FF0000E63F3FC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7ED1A1ACB0000E28787FFF6F6FFF2F2
              FFE8E8FFE7E7FFE8E8FFE8E8FFE7E7FFE9E9FFF2F2FFF7F7FF8E8EFF0000E313
              13CAE0E0EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F36565D10000D40000
              D85050ED6D6DF97D7DFF7E7EFF6D6DF95050ED0000D80000D55F5FD0F3F3F2FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFD3D3EBA5A5E18383D98181D9A4A4E0CECEEAFFFFFEFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -12
            HotTrackFont.Name = 'Arial'
            HotTrackFont.Style = []
          end
          object Edit7: TEdit
            Left = 208
            Top = 101
            Width = 119
            Height = 28
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 10
            ParentFont = False
            TabOrder = 8
            OnExit = Edit7Exit
            OnKeyPress = Edit7KeyPress
          end
        end
      end
      object JvgGroupBox5: TJvgGroupBox
        Left = 0
        Top = 306
        Width = 876
        Height = 173
        Align = alBottom
        Caption = 'Datos del inhumado Seleccionado'
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
          876
          173)
        FullHeight = 0
        object Label11: TLabel
          Left = 54
          Top = 34
          Width = 36
          Height = 13
          Caption = 'Accion:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Layout = tlBottom
        end
        object Label19: TLabel
          Left = 26
          Top = 93
          Width = 68
          Height = 13
          Caption = 'Titular Parcela'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 167
          Top = 37
          Width = 24
          Height = 13
          Caption = 'Nivel'
        end
        object Label8: TLabel
          Left = 52
          Top = 66
          Width = 40
          Height = 13
          Caption = 'Posicion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 283
          Top = 37
          Width = 31
          Height = 13
          Caption = 'Sector'
        end
        object Label1: TLabel
          Left = 61
          Top = 122
          Width = 31
          Height = 13
          Caption = 'Objeto'
        end
        object Label3: TLabel
          Left = 266
          Top = 119
          Width = 82
          Height = 13
          Caption = 'Fec Fallecimiento'
        end
        object Label10: TLabel
          Left = 421
          Top = 35
          Width = 56
          Height = 13
          Caption = 'Nro Parcela'
        end
        object Label7: TLabel
          Left = 12
          Top = 151
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
          Left = 186
          Top = 64
          Width = 79
          Height = 13
          Caption = 'Fec Inhumacion:'
        end
        object D1: TEdit
          Left = 100
          Top = 26
          Width = 57
          Height = 24
          CharCase = ecUpperCase
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 5
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          Text = '00000'
        end
        object D4: TEdit
          Left = 100
          Top = 58
          Width = 75
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object D5: TEdit
          Left = 375
          Top = 115
          Width = 141
          Height = 21
          ReadOnly = True
          TabOrder = 2
        end
        object D2: TEdit
          Left = 324
          Top = 26
          Width = 55
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
          Left = 198
          Top = 26
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
          Left = 100
          Top = 86
          Width = 457
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
        end
        object D7: TEdit
          Left = 100
          Top = 115
          Width = 157
          Height = 21
          ReadOnly = True
          TabOrder = 6
        end
        object D9: TEdit
          Left = 482
          Top = 26
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
          Left = 100
          Top = 142
          Width = 451
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
        end
        object D10: TEdit
          Left = 273
          Top = 56
          Width = 106
          Height = 21
          ReadOnly = True
          TabOrder = 9
        end
        object ImpOrdServ: TJvBitBtn
          Left = 709
          Top = 122
          Width = 154
          Height = 45
          Anchors = [akTop, akRight]
          Caption = 'REIMPRIMIR'#13#10'ORDEN SERVICIO'
          TabOrder = 10
          OnClick = ImpOrdServClick
          Glyph.Data = {
            360C0000424D360C000000000000360000002800000020000000200000000100
            180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFF8F8F8F4F4F4F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3
            F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3
            F3F3F3F3F3F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFEFEFEB6B6B6A7A7A7A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8
            A8A8A8A8A7A7A7A4A4A4A8A8A8AAAAAAA8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8
            A8A8A7A7A7AFAFAFF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFCCCCCCCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCB
            CBCACACAD2D2D2E3E3E3BCBCBCC6C6C6CFCFCFCECECECECECECECECECECECECE
            CECECECECEC7C7C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF
            E3E3E3E3E3E3E8E8E8C2C2C2FAFAFAF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0EEEEEEF4F4F4F1F1F1F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F8F8F8C5C5C5E9E9E9E3E3E3E4E4E4E2E2E2F3F3F3FFFFFFDFDFDF9F9F9F
            9F9F9FA0A0A09F9F9FA2A2A2B8B8B8D1D1D1CECECECECECECECECECECECECECE
            CECECECECECECECECECECDCDCDCECECECECECECECECECECECECECECECECECECE
            CECED7D7D7878787A2A2A2A0A0A0A0A0A0A0A0A09F9F9FEAEAEAD9D9D9C8C8C8
            C9C9C9C9C9C9C8C8C8E2E2E27B7B7BFAFAFAE9E9E9E9E9E9E9E9E9E9E9E9E9E9
            E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9F2
            F2F29E9E9EB9B9B9CCCCCCC9C9C9C9C9C9C8C8C8CACACADCDCDCD4D4D4CFCFCF
            CECECECECECECCCCCCFAFAFA0000005959595858585757575656565656565656
            5657575757575757575757575757575757575757575757575757575756565667
            67670000009C9C9CD5D5D5D2D2D2CCCCCCD3D3D3CBCBCBDFDFDFD5D5D5D6D6D6
            D4D4D4D5D5D5D3D3D3FDFDFD0000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000C2C2C2D8D8D8DDDDDDDFDFDFD8D8D8D5D5D5DDDDDDD2D2D2DCDCDC
            DADADADADADADADADADFDFDFC3C3C37676767D7D7D7D7D7D7D7D7D7D7D7D7D7D
            7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7A
            7A7A979797EFEFEFD9D9D9E1E1E1E3E3E3DDDDDDDBDBDBDADADAD2D2D2E5E5E5
            E2E2E2E2E2E2E2E2E2E2E2E2E7E7E7EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
            EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
            EEEEEBEBEBE2E2E2E4E4E4D2D2D2CCCCCCDEDEDEE5E5E5D8D8D8D1D1D1ECECEC
            E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E9EAE7EBF0E8EBF0E8EBF0E8EB
            EFE8EBEFE8EBEFE8EBEFE8EBF0E8EBF0E8ECF1E8EDF3E8EEF3E8EFF4E8EDEFE7
            E7E7E7E7E7E7E7E7E7E7E7E9E9E9E9E9E9E8E8E8ECECECD6D6D6D0D0D0F5F5F5
            EFEFEFF1F1F1F1F1F1F1F1F1F1F1F0F0F5FAFAF5E9F7DFBCF2DEBFF3E1C5F3E2
            CBF3E4CBF3E3CBF3E2C7F3E0C4F3DDBDF3D9B8F3D3B1F3CBABF3C4A2F7DAC6ED
            F5FAF1F1F1F1F1F1F1F1F1F1F1F1F2F2F2EEEEEEF5F5F5D6D6D6CFCFCFFDFDFD
            FFFFFFFEFEFEFEFEFEFEFEFEFEFFFFFFFCF5D28340AD5F1AB26C2AB26F31B273
            35B27438B27337B27235B26E2EB26B28B26420B25C18B2510EB14502BC3F00FA
            D1BCFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFBFBFBD4D4D4CECECEFFFFFF
            FCFCFCFCFCFCFCFCFCFCFCFCFCFFFFFFF4E9C97030C98247CA8A4FCA9054CA91
            58CA9159CA9159C99055CA8E52CA884DCA8046CA783ECA7037CA662EC1490BF0
            BAA0FFFFFFFCFCFCFCFCFCFCFCFCFCFCFCFDFDFDFFFFFFD2D2D2D0D0D0FFFFFF
            FEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFAE5D8EDA16EF2B485ECB17DECB983EBBD
            88EBBE8AEABC87F6CC9DEDBA88EBB17FEBAB7AEBA374EA9B6AF19C70F08B5DE9
            AE92FFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFFFFFFD1D1D1D2D2D2FFFFFF
            FDFDFDFEFEFEFEFEFEFEFEFEFEFFFFFCE2D5CB723AB86F3CB7733DBB753BBF73
            33BE7535BD7332C78248BC6D2CBE6C2DBE6527BE5F21BD5519BD4B0ECA5723E8
            AB8FFFFFFFFDFDFDFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFD8D8D8E4E4E4F6F6F6
            FFFFFFFEFEFEFEFEFEFEFEFEFFFFFFF7D6C5E29066C09C85C3A086CEA384E5AA
            7DE2AB7FE2AA7FE1A77CE2A67BE1A277E09D72DF976CE59972EFA585F19E7CE1
            9E7BFFFFFFFDFDFDFEFEFEFDFDFDFDFDFDFFFFFFDDDDDDF8F8F8FFFFFFCACACA
            FFFFFFFFFFFFFFFFFFFDFDFDFFFFFFEFC6B3ECB097EDAF99ECAF99EFBAA4ECBD
            A4E9B89DE7B799E7B497E7B395E7B296EAB396EDB39BEBAF94E9AA8FEBAF94DE
            A183FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECECEFFFFFFFFFFFFFEFEFE
            D9D9D9DEDEDEE4E4E4FFFFFFFFFFFFEFB79EF3C7B4F6CDBAF6CCB8F2C7B1F1C5
            AFF1C6B0F2C4AFF2C3ADF1C2ABF0BFA9F0BCA4F0BCA5F0BCA5F0BEA5F5C5B0DB
            9D7DFFFFFFF0F0F0E1E1E1CECECEDFDFDFDADADAFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFB4B4B4D4DADCCD9B86E49572F7CEBCFADCD0FFEBE1FFF5
            F0FFEFE7FFEEE3FFEEE4FFEDE3FFECE3FFF4EDFFE7DBFDDAC9F9CAB5EFA98BC6
            7D5AE5ECF0B8B8B8ECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFCACACAF9F9F9A8B0B4FFFFFFEBD7CEE4BBAADEA58BDFA3
            89E0B29DE0B8A4DDB5A3DBB4A3DAB2A0D29C85D2AB99D3B3A5D4C2BAD8E2E6D1
            DDE3F2F1F1C8C8C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFC7C7C7FFFFFFB9B8B8FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFCFFFFF9FEFFF5F9FBF2F6F8EFF3F5ECF1F4E9EDEFE5E9EBE2E4E5E0E0E0D0
            D0CFF0F0F0C7C7C7FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFC9C9C9FFFFFFC0C0C0FFFFFFFDFDFDFEFEFEFEFEFEFEFE
            FEFDFDFDF8F8F8F6F6F6F2F2F2EFEFEFEBEBEBE8E8E8E5E5E5E3E3E3E1E1E1D0
            D0D0EFEFEFC6C6C6FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFCBCBCBFFFFFFC6C6C6FFFFFFFDFDFDFEFEFEFEFEFEFEFE
            FEFDFDFDFBFBFBF8F8F8F4F4F4F0F0F0EEEEEEEBEBEBE8E8E8E4E4E4E4E4E4D1
            D1D1EFEFEFC6C6C6FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFC7C7C7FFFFFFCBCBCBFFFFFFFDFDFDFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEF9F9F9F6F6F6F3F3F3EFEFEFEDEDEDE9E9E9E7E7E7E4E4E4D2
            D2D2EFEFEFC5C5C5FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFBDBDBDFFFFFFCFCFCFFFFFFFFDFDFDFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFCFCFCF8F8F8F5F5F5F1F1F1EEEEEEEBEBEBE8E8E8E6E6E6D2
            D2D2EFEFEFC5C5C5FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFBDBDBDFFFFFFD7D7D7FFFFFFFDFDFDFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFAFAFAF7F7F7F3F3F3F0F0F0EDEDEDEAEAEAE9E9E9D4
            D4D4EEEEEEC4C4C4FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFF6F6F6D0D0D0BDBDBDFFFFFFFDFDFDFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFCFCFCF8F8F8F6F6F6F2F2F2EEEEEEECECECEAEAEAD4
            D4D4EEEEEEC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9C9C9FFFFFFFDFDFDFEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFDFDFDFBFBFBF7F7F7F4F4F4F1F1F1EEEEEEECECECD4
            D4D4EEEEEEC4C4C4FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFAFAFACFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF7F7F7F3F3F3F0F0F0EFEFEFD6
            D6D6EEEEEEC3C3C3FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E2E2EBEBEBEAEAEAEAEAEAEAEAEAEAEA
            EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEBEBEBEBEBEBEBEBEBECECECEEEEEED3
            D3D3F0F0F0CDCDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFEFEFEFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object ImpActaInhu: TJvBitBtn
          Left = 710
          Top = 68
          Width = 153
          Height = 45
          Anchors = [akTop, akRight]
          Caption = 'REIMPRIMIR'#13#10'ACTA INHUMACION'
          TabOrder = 11
          OnClick = ImpActaInhuClick
          Glyph.Data = {
            36080000424D3608000000000000360400002800000020000000200000000100
            08000000000000040000CE0E0000D80E00000001000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFF3C005B00
            2600B67FEC005D00300000000A000000010000000000000024005B0092000000
            6300F7BF300000000A0000000100000000000000A7006C843F00000050005B00
            2300F7BF0000000067000200E500F9BF7900F7BF8C000000F4005B002E00F7BF
            A7006C84000000006C0067470000000046000000CA0000002E000000EF000000
            3F002701000067473F002701D000FA3B0F000400000000000000F91AB6000000
            0000010000000A000000FA3B1000000000000000BC00D379FF006747D000413C
            0F00FFFF67000000000067473F000000F40000000300F91AB6000E0FD7000000
            0000000001000A0030003F01000000000000EF163C008519CF00010000000000
            000001000A00CB0CD700A71ACF0008003F005B0010000000F200F6BF00005B00
            6000FBBFFF00FFFF2800300800005B000000000001000000000000006800DE17
            0000000000000000000001000A00747F0200000000000000000000000000FFFF
            FF0000000100EF168C004F55CF0000000000FFFF5900B67F14005B0094005B00
            0700B77FFF00FFFFA0005B00E200B67F14005B00AC005B00C200B77FFF00FFFF
            B8005B00B000B67F14005B00C4005B003500B77FFF00FFFFD0005B0061004100
            14005B00DC005B006E004100FF00FFFFE8005B00C100410014005B00F4005B00
            DC004100FF00FFFF00005B001800410014005B00F4005B0025004100FF00FFFF
            00005B009C0041001100000001000000000000009800B97F0100000000000000
            0000000000000000F700D13F010000000000000000000000F000248000000000
            0000000005000000000000000000000000000000000000004C00000030000000
            00000000A4005D0000000000050000000300000040005D0004000000B4005B00
            400000000000000064005D002600080013001B00A4005D0000000000F200B77F
            0000000000000000C800BA7F00000000000000007000696E7400722E62007000
            74000200DA003103D700000017001600950012017400020036000887D3000F17
            00001700160095F01200300830001201950000000000160000000000020069C3
            0000060018000F17D600F7BF3700A83900002833000024875000170153002833
            01002F016600E14A170064132F00A83900002833000066875B004E875B000000
            00000100A400010000002833000057022F00F7000000C09D6600648700000C00
            00002C33F700504E8700400000005702BF000000C000C0B0000090A67000A62B
            200002002E0051317F0020002E009F059E00304FC8005D00A8000000AA00507F
            1700537FA800297976006E9F6E009F05EC00AC114F00420C9600000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000808080808
            0808080808080808080808080808080808080808000000000000000008080808
            0808080808080808080808080808080808080808080000000000000000080808
            0808080808080808080808080808080808080808080800000000000000000000
            0000000000000000000000000000000000000000080808000000000F08070707
            0707070707070707070707070707070707070700000808080000000F08070707
            0707070707070707070707070707070707070700080008080800000F08000000
            0707000000070707070707070700070700070700080800080808000F08000000
            0707070707070707070707070700000000070700080808000808000F08000000
            0707000000070707070707070700070700070700080808080000000F08000000
            0808080808080808080808080808080808080800080008080800000F0F0F0F0F
            0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F00080000080800000000000000
            000000000000000000000000000000000000000008080000080000000F070707
            07070707070707070707070707070707070707000008000008000000000F0700
            0000000000000000000000000000000000000707000008000800000000000F07
            000800000F0F0F0F0F0F0F0F0F0F0F0F0F00000707000008080000000000000F
            070008000F000000000000000F000F000F000800070700000800000000000000
            0F0700000F0F0F0F0F0F0F0F0F0F0F0F0F000000000707000000000000000000
            000F07000F0000000F00000F000000000F000707070707070000000000000000
            000000000F0F0F0F0F0F0F0F0F0F0F0F0F000000000000000000000000000000
            000000000F00000F00000000000F00000F000000000000000000000000000000
            000000000F0F0F0F0F0F0F0F0F0F0F0F0F000000000000000000000000000000
            000000000F0000000000000F00000F000F000000000000000000000000000000
            000000000F0F0F0F0F0F0F0F0F0F0F0F0F000000000000000000000000000000
            000000000F0F0F0F0F0F0F0F0F0F0F0F0F000000000000000000000000000000
            000000000F0F0F000000000000000F0F0F000000000000000000000000000000
            000000000F0F0F0F0F0F0F0F0F0F0F0F0F000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object ElimInhu: TJvBitBtn
          Left = 710
          Top = 20
          Width = 152
          Height = 39
          Anchors = [akTop, akRight]
          Caption = 'ELIMINAR '#13#10'INHUMADO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
          OnClick = ElimInhuClick
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
            FFFF8080808080A0A0E0E0E0E0E0E0E0E0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF8080B6B6B6B6B6B6B6B6B6B6B6B6B6B6E4E4FFFFFFFFFFFFFFFFFFFFFFFFFF
            8080B6606060606060E06060606060A0E4DBE4E4FFFFFFFFFFFFFFFFFFFFFF80
            80B66060606060606060606060606060E4E4DBEDEDFFFFFFFFFFFFFFFFFF8080
            B680600000000000000000000000006060E4EDFFF2F2FFFFFFFFFFFFFF8080B6
            8060848484848484008484848484840060EDEDF2FFEDEDFFFFFFFFFF8080B680
            808484ECECF1F1008484ECECECECEC840060F2F2EDFFE4E4FFFFFF8080B68080
            A084ECECF1FAF18484ECF1F1F1F1ECEC8460F2EDEDE4DBE4E0FF8080B68080A0
            6084ECECFAFAFAECF1F1FAFAFAF1F1EC840060EDE4E4E4DBE0E080B68080A0A0
            8484ECFAFAFAFAF1FAFAFAFAFAFAF1F1EC8460E4E4E4E0E0B6E080B680A0A0E0
            8484ECFAFAFAF1FAFAFAFAFAFAFAFAF1EC840060E4E0E0E0B6E080B6A0A0E0E0
            84ECECFAFAFAFA84FAFAFAFAFAFAFAFAF1EC8460E0E0E0E0B6E080B6A0E0E0E0
            84ECF1F1F1FAFAF184F1FAF1F184F1FAFAEC840060E0E0E0B6E0A0B6E0E0E0E0
            84ECF1F1F184ECF1F1EC84ECECEC84F1FAF1EC846060E0E0B6E0A0B6E0E0E0E0
            84ECF1F1FAF1F1EC84F1F1F1F1ECEC60F184F1EC006060E0B6E0E0B6E0E0E0E0
            84ECECFAFAFAFAFAF1FAFAF1FAFAF16060ECFAEC840060E0B6E0E0B6E0E0E0E0
            8484ECECFAFAFAFAFAFAFAFAFAFAF16060F1FAF1EC6060E0B6E0E0B6E0E0E0E0
            84ECEC8484FAFA84F1FAFAF184FAF16060E0F1FAECE0E0E0B6A0E0B6E0E0E0E0
            84ECF18484ECF18484ECEC00EC84EC6060E0E0E0E0E0E0E0B6A0E0B6E0E0E0E0
            8484EC84ECF1FA84ECF1FA84ECF1FA6060E0E0E0E0E0E0A0B680E0B6E0E0E0E0
            84ECF184ECFAFA84ECF1FA84ECF1FA6060E0E0E0E0E0A0A0B680E0B6E0E0E0E4
            8484EC8484ECF184F1F1FA8484ECEC6060E0E0E0E0A0A080B680E0B6E0E0E4E4
            E4F1F184ECFAFA8484ECEC84ECF1FA6060E0E0E0A0A08080B680E0E0DBE4E4E4
            EDE4F18484ECF184ECF1FA8484ECF16060E0E0A0A08080B68080FFE4E4DBE4ED
            EDF2E484ECF1FA84F1F1FA84ECF1FA60E0E0A0A08080B68080FFFFFFE4E4FFED
            F2F2ED84F1FAFA8484ECEC84ECF1FAE0E0A0A08080B68080FFFFFFFFFFEDEDFF
            F2EDEDE4E4F1E4E0ECF1FA60E4F1FAE0A0A08080B68080FFFFFFFFFFFFFFF2F2
            FFEDE4E4E4E0E0E0F1F1FAE0E0E4E0A0A08080B68080FFFFFFFFFFFFFFFFFFED
            EDDBE4E4E0E0E0E0E4F1E4E0E0E0A0A08080B68080FFFFFFFFFFFFFFFFFFFFFF
            E4E4DBE0E0E0E0E0E0E0E0E0E0A0A08080B68080FFFFFFFFFFFFFFFFFFFFFFFF
            FFE4E4B6B6B6B6B6B6B6B6B6B6B6B6B6B68080FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFE0E0E0E0E0E0E0E0E0A0A08080808080FFFFFFFFFFFFFFFF}
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
    Width = 884
    Height = 45
    ButtonHeight = 39
    Caption = 'ToolBar1'
    Color = clGradientInactiveCaption
    EdgeBorders = [ebLeft, ebTop, ebBottom]
    EdgeInner = esLowered
    ParentColor = False
    TabOrder = 0
    DesignSize = (
      882
      41)
    object ToolButton4: TToolButton
      Left = 0
      Top = 2
      Width = 575
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object GUARDA: TJvBitBtn
      Left = 575
      Top = 2
      Width = 114
      Height = 39
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
      Left = 689
      Top = 2
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object Limpiar: TJvBitBtn
      Left = 697
      Top = 2
      Width = 62
      Height = 39
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
      Left = 759
      Top = 2
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object JvBitBtn1: TJvBitBtn
      Left = 767
      Top = 2
      Width = 96
      Height = 39
      Anchors = [akTop, akRight]
      Caption = 'SALIR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = JvBitBtn1Click
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
      HotTrackFont.Height = -12
      HotTrackFont.Name = 'Arial'
      HotTrackFont.Style = []
    end
  end
  object Barra1: TStatusBar
    Left = 0
    Top = 552
    Width = 884
    Height = 19
    Panels = <
      item
        Width = 400
      end
      item
        Width = 300
      end>
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
  object RvG: TRvSystem
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
    OnPrint = RvGPrint
    Left = 690
    Top = 140
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
    Left = 816
    Top = 474
  end
  object RvActa: TRvSystem
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
    OnPrint = RvActaPrint
    Left = 668
    Top = 476
  end
  object PopupMenu1: TPopupMenu
    Left = 56
    Top = 259
    object ActualizarNroActaInhumacion1: TMenuItem
      Caption = 'Actualizar Nro Acta Inhumacion'
      OnClick = ActualizarNroActaInhumacion1Click
    end
  end
end

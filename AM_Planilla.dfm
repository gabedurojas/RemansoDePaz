object AM_PlanillaPago: TAM_PlanillaPago
  Left = 263
  Top = 20
  AutoScroll = False
  Caption = 'Altas y Modificaciones de Planillas de Pagos'
  ClientHeight = 626
  ClientWidth = 989
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
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
    Top = 47
    Width = 989
    Height = 560
    ActivePage = TabSheet2
    Align = alClient
    MultiLine = True
    TabOrder = 1
    TabStop = False
    object TabSheet1: TTabSheet
      Caption = 'B'#250'squedas'
      DesignSize = (
        981
        532)
      object Bevel1: TBevel
        Left = 0
        Top = 0
        Width = 123
        Height = 82
      end
      object Label15: TLabel
        Left = 134
        Top = 1
        Width = 110
        Height = 13
        Caption = 'Ingrese N'#176' Planilla:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 612
        Top = 1
        Width = 154
        Height = 64
        Alignment = taCenter
        Caption = 'ATENCION!! Al ANULAR una planilla, se eliminaran los Pagos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
      end
      object Marquecina: TLMDScrollText
        Left = 133
        Top = 66
        Width = 661
        Height = 18
        Direction = sdRightToLeft
        Lines.Strings = (
          
            'Importante!! Solo es posible modificar una Planilla sin confirma' +
            'r y Se modificar'#225'n los datos de una Planilla confirmada ANULANDO' +
            'LA.')
        ScrollStyle = ssLoopReverse
        Bevel.Mode = bmCustom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      object Buscar: TJvBitBtn
        Left = 440
        Top = 19
        Width = 104
        Height = 42
        Caption = 'Buscar'
        TabOrder = 0
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
      object C1: TRadioButton
        Left = 7
        Top = 5
        Width = 108
        Height = 17
        Caption = 'Fecha Planilla'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = C1Click
      end
      object C2: TRadioButton
        Left = 7
        Top = 24
        Width = 107
        Height = 17
        Caption = 'Por N'#176' Planilla'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        TabStop = True
        OnClick = C1Click
      end
      object C3: TRadioButton
        Left = 7
        Top = 43
        Width = 94
        Height = 17
        Caption = 'Por Cobrador'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = C1Click
      end
      object C0: TRadioButton
        Left = 7
        Top = 62
        Width = 69
        Height = 17
        Caption = 'Todos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        Visible = False
        OnClick = C0Click
      end
      object COBRA: TComboBox
        Left = 134
        Top = 17
        Width = 297
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 16
        ParentFont = False
        TabOrder = 5
        Visible = False
        OnExit = COBRAExit
        OnKeyPress = COBRAKeyPress
      end
      object FEC: TMaskEdit
        Left = 134
        Top = 16
        Width = 107
        Height = 28
        EditMask = '!99/99/9999;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 6
        Text = '  /  /    '
        Visible = False
        OnExit = FECExit
        OnKeyPress = ODNIKeyPress
      end
      object ODNI: TEdit
        Left = 134
        Top = 16
        Width = 90
        Height = 28
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 8
        ParentFont = False
        TabOrder = 7
        Text = '00000000'
        OnKeyPress = ODNIKeyPress
      end
      object JvgGroupBox3: TJvgGroupBox
        Left = 2
        Top = 84
        Width = 981
        Height = 447
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Planillas Encontradas'
        TabOrder = 8
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
          Top = 51
          Width = 977
          Height = 339
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
          OnTitleClick = DBGrid1TitleClick
        end
        object GroupBox6: TGroupBox
          Left = 2
          Top = 16
          Width = 977
          Height = 35
          Align = alTop
          Caption = 'Estados de las Planillas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          object Shape2: TShape
            Left = 20
            Top = 16
            Width = 15
            Height = 13
            Brush.Color = clLime
            Shape = stCircle
          end
          object Label14: TLabel
            Left = 36
            Top = 14
            Width = 88
            Height = 16
            Caption = 'Confirmadas'
          end
          object Shape1: TShape
            Left = 144
            Top = 16
            Width = 15
            Height = 13
            Shape = stCircle
          end
          object Label4: TLabel
            Left = 160
            Top = 14
            Width = 68
            Height = 16
            Caption = 'Normales'
          end
          object Shape5: TShape
            Left = 246
            Top = 16
            Width = 15
            Height = 13
            Brush.Color = clSkyBlue
            Shape = stCircle
          end
          object Label18: TLabel
            Left = 264
            Top = 14
            Width = 82
            Height = 16
            Caption = 'ANULADAS'
          end
          object PagoAnual: TCheckBox
            Left = 578
            Top = 12
            Width = 223
            Height = 17
            Caption = 'Planilla pagos anuales'
            TabOrder = 0
          end
        end
        object GroupBox3: TGroupBox
          Left = 2
          Top = 390
          Width = 977
          Height = 55
          Align = alBottom
          TabOrder = 2
          DesignSize = (
            977
            55)
          object Label34: TLabel
            Left = 23
            Top = 21
            Width = 751
            Height = 24
            Caption = 
              'ATENCION .. EXISTEN PLANILLAS SIN CONFIRMAR PARA ESTE PERIODO --' +
              '>'
            Color = clYellow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object JvBitBtn7: TJvBitBtn
            Left = 824
            Top = 12
            Width = 137
            Height = 37
            Anchors = [akTop, akRight]
            Caption = 'VER PLANILLAS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
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
              FFFFFFFFFF00006D6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF0000D18C006D6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF0000D1D1D18C8C006D6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
              00D1D1D1D1D18C8C8C006D6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000D1
              D1D1D1D1D1D18C8C8C8C006D6DFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000D1D1D1
              D1FAFAFAD1D18C8C8C8C8C006D6DFFFFFFFFFFFFFFFFFFFFFFFF00D1D1D1D1FA
              FA8C8CFAD1D18C8C8C8C8C8C006D6DFFFFFFFFFFFFFFFFFFFFFF00D1D1CCD18C
              8C8C8CFAD1D18CD18C8C8C8C8C006D6DFFFFFFFFFFFFFFFFFFFF00D1D1648C8C
              8C6464D1D1D18C6DD18C8C8C8C8C006D6DFFFFFFFFFFFFFFFFFF00D1D1648C64
              64D1D1D1D1FAFA6D8D8C8C8C8C8C8C006D6DFFFFFFFFFFFFFFFF00D1D16464D1
              D1D1D1FAFA6D6DB624FA8C8C8C8C8C8C006D6DFFFFFFFFFFFFFF00D1D1D1D1D1
              D1FAFA6D6DB6B6DB2400FA8C8C8C8C8C8C006D6DFFFFFFFFFFFF00D1D1D1D1FA
              FA6D6DB6B6DBDBDB49006DFA8C8C8C8C8C8C006D6DFFFFFFFFFF00D1D1FAFA6D
              6DB6B6DBDBDBDBDB49006D00FA8C8C8C8C8C8C006D6DFFFFFFFF00FAFA246DB6
              B6DBDBDBDBDBDBFF4900B6006DFA8C8C8C8C8C8C006D6DFFFFFF00FA6424B6DB
              DBDBDBDBDBFFFF496D00B6006D00FA8C8C8C8C8C8C006DFFFFFFFF00FA24FFDB
              DBDBDBFFFF4949DBFF00B600B6006DFA8C8C8C8C8C006DFFFFFFFFFF0024FFDB
              DBFFFF4949DBDBFFB600DB00B6006D00FA8C8C8C8C00FFFFFFFFFFFFFF24FFFF
              FF4949DBDBFFFF4992DBDB00B600B6006DFA8C8C8C00FFFFFFFFFFFFFF24FF49
              49DBDBFFFF4949DBDBDB4900DB00B6006D00FA8C8C00FFFFFFFFFFFFFF242424
              DBFFFF4949DBDBDBB649DBDBDB00B600B60064FA8C00FFFFFFFFFFFFFFFFFF24
              FF4924DBDBDBDB4992DBDBDB4900DB00B6006464FA00FFFFFFFFFFFFFFFFFF24
              2424FFDBDB4949DBDBDB4949DBDBDB00B60064FAFA00FFFFFFFFFFFFFFFFFFFF
              FF246D2492DBDBB692B6DBDBB692B66DDB008C6D6DFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF00FF4949DBDBDB4949DBDBDBDB4900FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF240000DBDBB649DBDBDBDB4949FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF24FF4992DBDBDB4949FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF240000DBDB4949FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF24B649FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF246DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'Arial'
            HotTrackFont.Style = []
          end
        end
      end
      object CB1: TCheckBox
        Left = 131
        Top = 48
        Width = 217
        Height = 17
        Caption = 'Correr Impresi'#243'n para Media Hoja A4?'
        Checked = True
        State = cbChecked
        TabOrder = 9
        OnClick = CB1Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Datos de Planilla Seleccionada'
      ImageIndex = 1
      DesignSize = (
        981
        532)
      object JvgGroupBox5: TJvgGroupBox
        Left = 7
        Top = 1
        Width = 299
        Height = 371
        Caption = 'Datos de la Planilla'
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
          299
          371)
        FullHeight = 0
        object Label11: TLabel
          Left = 9
          Top = 23
          Width = 48
          Height = 13
          Caption = 'Id Planilla:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Layout = tlBottom
        end
        object Label19: TLabel
          Left = 7
          Top = 103
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
          Left = 130
          Top = 21
          Width = 51
          Height = 13
          Caption = 'N'#176' Planilla:'
        end
        object Label8: TLabel
          Left = 7
          Top = 66
          Width = 51
          Height = 13
          Caption = 'Formulario:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 8
          Top = 47
          Width = 69
          Height = 13
          Caption = 'Fecha Planilla:'
        end
        object Label3: TLabel
          Left = 7
          Top = 179
          Width = 74
          Height = 13
          Caption = 'Observaciones:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 7
          Top = 140
          Width = 65
          Height = 13
          Caption = 'SubCobrador:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object D1: TEdit
          Left = 61
          Top = 18
          Width = 45
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
          TabOrder = 1
          Text = '00000'
        end
        object OBSERV: TEdit
          Left = 5
          Top = 194
          Width = 288
          Height = 21
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 50
          ParentFont = False
          TabOrder = 0
          OnKeyPress = OBSERVKeyPress
        end
        object D4: TEdit
          Left = 7
          Top = 80
          Width = 288
          Height = 21
          Color = 14277612
          ReadOnly = True
          TabOrder = 2
        end
        object D5: TEdit
          Left = 7
          Top = 116
          Width = 288
          Height = 21
          Color = 14277612
          ReadOnly = True
          TabOrder = 3
        end
        object D2: TEdit
          Left = 183
          Top = 16
          Width = 55
          Height = 21
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object D3: TEdit
          Left = 80
          Top = 42
          Width = 73
          Height = 21
          Color = 14277612
          ReadOnly = True
          TabOrder = 5
        end
        object D6: TEdit
          Left = 7
          Top = 155
          Width = 288
          Height = 21
          Color = 14277612
          ReadOnly = True
          TabOrder = 6
        end
        object Button1: TButton
          Left = 180
          Top = 44
          Width = 75
          Height = 25
          Caption = 'Button1'
          TabOrder = 7
          OnClick = Button1Click
        end
        object JvBitBtn3: TJvBitBtn
          Left = 86
          Top = 228
          Width = 203
          Height = 45
          Anchors = [akTop, akRight]
          Caption = 'CAMBIAR DE COBRADOR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          OnClick = JvBitBtn3Click
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
            FFFF00000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            000013DB130013DB130000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
            DB13DB1300130013DB13DB0000FFFFFFFFFF000000000000FFFFFFFFFF0000DB
            13DB13DB000000DB13DB13DB0000FFFFFF00FAFAFAFAFAFA00FFFFFF0000DB13
            DB13DB130013DB13DB13DB13DB0000FFFF00FAFAFAFA000000FFFFFF00DB13DB
            13DB13DB130013DB13DB136F6F000000000000FAFA00FAFA00FFFF00DB13DB13
            DB13DB13DB13DB13DB136F6F00D1D1D1D1D1D100FAFAFAFA00FFFF0013DB13DB
            13DB13DB13DB13DB13DB6F6F00D1D1D1D1000000FAFAFA0000000013DB13DB13
            DB13DB13DB13DB13DB136F6F00D1D1D100D1D100FAFAFAFAFA0000DB00DB13DB
            13DB13DB13DB13DB13DB6F6F00D1D1D1D1D1D100FAFAFAFAFA000013DB00DB13
            DB13DB13DB13DB13DB136F6F00D1D1D1D1D1000000FAFAFAFA0000DB001300DB
            13DB13DB130013DB13DB6F6F00D1D1D1D1D1D1D100FA00FAFA00001300130013
            DB13DB130000DB13DB136F6F00D1D1D1D1D1D1D100FA00FAFA0000DB130013DB
            13DB13006F0013DB13DB6F6F00D1D1D1D1D1D1D100FAFAFAFA000013DB13DB13
            DB13006F6F00DB13DB136F6F00D1D1D1D100D1D10000000000FFFF0013DB13DB
            13006FDB6F0013DB13DB6F6F00D1D1D1D100D1D1006D00FFFFFFFF00DB13FFFF
            DB6FDB136F00DB13DB136F6F00D1D1D1D1D1D1D1006D00FFFFFFFFFF00DB13FF
            FFDB13DB6F0013DB13DB136F25000000000000006D9200FFFFFFFFFF0013DB13
            FFFFDB136F00DB13DB13DB136F6F6D6D006D6D6DDB9200FFFFFFFFFF000013DB
            13FFFFDB6F0013DB13DB13DB1300FFFF00FFFFFFFF9200FFFFFFFFFF00000000
            DB13DB136F00DB13DB13DB000000000000000000000000FFFFFFFFFF00FFDB00
            000013DB13DB13DB13000000FFDBDBDB00FFDBDBDB9200FFFFFFFFFF00FFDBDB
            DB000000000000000000DB00FFDBDBDB00FFDBDBDB9200FFFFFFFFFF00FFDBDB
            DB00FFDBDBDB00FFDBDBDB00FFDBDBDB00FFDBDBDB9200FFFFFFFFFF00FFFFFF
            FF00FFFFFFFF00FFFFFFFF00FFFFFFFF00FFFFFFFF9200FFFFFFFFFF00000000
            0000000000000000000000000000000000000000000000FFFFFFFFFF00929292
            9292929292929292929292929292929292929292929200FFFFFFFFFF00FFDBDB
            DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB9200FFFFFFFFFF00FFDBDB
            DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB9200FFFFFFFFFF00FFDBDB
            DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB9200FFFFFFFFFF00FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9200FFFFFFFFFF00000000
            0000000000000000000000000000000000000000000000FFFFFF}
          HotTrackFont.Charset = ANSI_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -13
          HotTrackFont.Name = 'Times New Roman'
          HotTrackFont.Style = []
        end
        object JvBitBtn4: TJvBitBtn
          Left = 86
          Top = 280
          Width = 203
          Height = 45
          Anchors = [akTop, akRight]
          Caption = 'MODIFICAR COMISION'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
          OnClick = JvBitBtn4Click
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
            FF0080C0FF00FFC0FF0000FFFF0040FFFF0080FFFF00FFFFFF00FFFFFFFFFF02
            020202020202020202020202020002020202020202020202FFFFFFFFFFFF0273
            737373737373737373737373000064CC0073737373737302FFFFFFFFFFFF0273
            0000000000000000000000000064CCFFD10000000000000000FFFFFFFF027300
            9F9F9F9F9F9F9F9F9F9F0000ECECECFFCC9F9F9F9F9F9F9F00FFFFFFFF027300
            9F2F2F2F2F2F2F2F2F0000ECECF0F8CC2F2F2F2F2F2F2F9F00FFFFFFFF027300
            9F9F9F9F9F9F9F9F0000ECECF0F8F09F9F9F9F9F9F9F9F9F00FFFFFF0273009F
            9F2F2F2F2F2F2F0000ECECF0F8F02F2F2F2F2F2F2F2F9F00FFFFFFFF0273009F
            9F9F9F9F9F9F0000ECECF0F8F09F9F9F9F9F9F9F9F9F9F00FFFFFFFF0273009F
            9F9F9F9F9F0000ECECF0F8F09F9F2F2F2F2F2F2F2F9F9F00FFFFFF0273009F9F
            2F2F2F2F0000ECECF0F8F02F9F2F9F9F9F9F9F9F2F9F00FFFFFFFF0273009F9F
            9F9F9F000049ECF0F8F09F9F9F2F9F9F9F9F9F9F2F9F00FFFFFFFF0273009F6D
            6D6D0000496DDBF8F09F6D9F9F2F2F2F2F2F2F2F9F9F00FFFFFF0273009F9F6D
            6D6D0080C0DBB6499F9F9F9F9F9F9F9F9F9F9F9F9F00FFFFFFFF0273009F6D6D
            6D9F9FC0E0E6496D6D6D6D9F9F2F2F2F2F2F2F2F9F00FFFFFFFF0200009F9F9F
            9F9F9F9FE6C09F9F9F9F9F9F9F9F9F9F9F9F9F9F9F00FFFFFFFF020200000000
            00000000000000000000000000000000000000000000FFFFFFFF020202020202
            02020202020202020202020202020202020202020202FFFFFFFF020000DBDBDB
            DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB0002FFFFFFFF0200DB00DB00
            0000000000DB00000000000000DB000000000000DB00FFFFFFFF0200DB00DBDB
            DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB0000FFFFFFFF0200DB00DB
            000000000000DB00000000000000DB000000000000DB00FFFFFFFF0200DB00DB
            DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB00FFFFFF0200DBDB00
            DB000000000000DB00000000000000DB000000000000DB00FFFFFF020000DB00
            DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB00FFFFFF0200DBDB
            00000000000000000000000000000000000000000000000000FFFFFF0200DBDB
            DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB0002FFFFFFFF02000000
            000000000000000000000000000000000000000000000002FFFFFFFFFF020202
            0202020202020202020202020202020202020202020202FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          HotTrackFont.Charset = ANSI_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -13
          HotTrackFont.Name = 'Times New Roman'
          HotTrackFont.Style = []
        end
      end
      object JvgGroupBox1: TJvgGroupBox
        Left = 0
        Top = 360
        Width = 981
        Height = 132
        Align = alBottom
        Caption = 
          'Comprobantes de Pagos registrados del Cobrador y Planilla Selecc' +
          'ionado'
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
          Width = 823
          Height = 85
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
          OnCellClick = DBGrid2CellClick
          OnDrawColumnCell = DBGrid2DrawColumnCell
        end
        object DBGrid3: TDBGrid
          Left = 825
          Top = 16
          Width = 154
          Height = 85
          Align = alRight
          DataSource = DataSource3
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
        object GroupBox2: TGroupBox
          Left = 2
          Top = 101
          Width = 977
          Height = 29
          Align = alBottom
          Caption = 'Estados de los Comprobantes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          object Shape3: TShape
            Left = 10
            Top = 13
            Width = 15
            Height = 13
            Brush.Color = clYellow
            Shape = stCircle
          end
          object Label16: TLabel
            Left = 36
            Top = 13
            Width = 53
            Height = 13
            Caption = 'Anulados'
          end
          object Shape4: TShape
            Left = 108
            Top = 12
            Width = 15
            Height = 13
            Shape = stCircle
          end
          object Label17: TLabel
            Left = 134
            Top = 12
            Width = 53
            Height = 13
            Caption = 'Normales'
          end
          object Label20: TLabel
            Left = 288
            Top = 12
            Width = 109
            Height = 13
            Caption = 'Tipos FormasPago:'
          end
          object Label21: TLabel
            Left = 404
            Top = 12
            Width = 48
            Height = 13
            Caption = 'Efectivo'
          end
          object Label22: TLabel
            Left = 526
            Top = 12
            Width = 40
            Height = 13
            Caption = 'Posnet'
          end
          object Label23: TLabel
            Left = 652
            Top = 12
            Width = 44
            Height = 13
            Caption = 'Cheque'
          end
          object Label24: TLabel
            Left = 456
            Top = 12
            Width = 13
            Height = 13
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label25: TLabel
            Left = 570
            Top = 12
            Width = 13
            Height = 13
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label26: TLabel
            Left = 700
            Top = 12
            Width = 13
            Height = 13
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
      object JvgGroupBox2: TJvgGroupBox
        Left = 306
        Top = 0
        Width = 679
        Height = 373
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Totales'
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
        object grilla2: TJvStringGrid
          Left = 2
          Top = 16
          Width = 675
          Height = 355
          Align = alClient
          ColCount = 7
          DefaultColWidth = 55
          DefaultRowHeight = 18
          FixedCols = 0
          RowCount = 18
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
          ParentFont = False
          ScrollBars = ssNone
          TabOrder = 0
          OnDrawCell = grilla2DrawCell
          Alignment = taLeftJustify
          FixedFont.Charset = DEFAULT_CHARSET
          FixedFont.Color = clMaroon
          FixedFont.Height = -11
          FixedFont.Name = 'Arial'
          FixedFont.Style = [fsBold]
          ColWidths = (
            55
            96
            66
            69
            62
            79
            104)
        end
        object Panel1: TPanel
          Left = 10
          Top = 58
          Width = 625
          Height = 93
          TabOrder = 1
          DesignSize = (
            625
            93)
          object Label27: TLabel
            Left = 38
            Top = 25
            Width = 77
            Height = 16
            Caption = 'N'#176' Planilla:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label28: TLabel
            Left = 42
            Top = 57
            Width = 70
            Height = 16
            Caption = 'Cobrador:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Edit6: TEdit
            Left = 119
            Top = 12
            Width = 86
            Height = 28
            Color = clYellow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
          end
          object cambia: TJvBitBtn
            Left = 395
            Top = 32
            Width = 128
            Height = 41
            Anchors = [akTop, akRight]
            Caption = 'ACEPTAR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = cambiaClick
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
          object Elcobrador: TComboBox
            Left = 120
            Top = 50
            Width = 261
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 16
            ParentFont = False
            TabOrder = 0
            OnExit = ElcobradorExit
            OnKeyPress = ElcobradorKeyPress
          end
          object JvBitBtn2: TJvBitBtn
            Left = 532
            Top = 32
            Width = 87
            Height = 41
            Anchors = [akTop, akRight]
            Caption = 'CERRAR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = JvBitBtn2Click
            Glyph.Data = {
              360C0000424D360C000000000000360000002800000020000000200000000100
              180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFF8F8F8C1C1A6727297DBDBBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFCFCFED0D0B06E6E97D2D2B2FDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              F5F5F3B0B08D0202D46464FF1414B4D2D2A3FDFDFEFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7
              F7F7C2C2910000C66C6CFF0000C0CACA99FBFBFCFFFFFFFFFFFFFFFFFFF1F1EE
              A8A88A0000D50707DD9F9FEE0000E30F0FC2CACA98FAFAFBFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F1B1
              B18C0000D20000DC9F9FEC0000D90505C3C4C498F9F9F9FFFFFFF9F9F7A4A48F
              0000D20000D60606D28888E50000D50000E10505CABFBF91F7F7F6FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEE9A3A38700
              00D90000DB0000D18080E20000CD0000D40404BEC3C39FFEFEFFF4F4D60000CA
              0000CF0000C72929E8A2A2FF7878E80000D10000DD0101D1B1B18DF3F3F1FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAE19191860000DD00
              00D70000CE8888EAB5B5FF1F1FDB0000C70000CE0A0ABCFFFFEBD0D0D70000C8
              0000BF2F2FED5454FF4A4AFF9D9DFF7B7BE60000CF0000D80000D6A6A687F0F0
              EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6D77E7E880000E10000D300
              00CC9696EFABABFF6C6CFF7E7EFF2525D90000BF0000C1FFFFE4CECED80000B6
              2727F04242FF4545FF5151FF5050FF9595FF7C7CEA0000CC0000D40000D89696
              88ECECE4FFFFFFFFFFFFFFFFFFFFFFFFE0E0CA6A6A8D0000E00000D00000C99D
              9DF3A0A0FF6F6FFF6D6DFF6363FF6868FF2828DC0000B4FFFFE4CBCBD00202F0
              3131FF3535FF3F3FFF4949FF5353FF5454FF8C8CFF8181ED0000C70000CF0000
              D8868688E8E8DCFFFFFFFFFFFFDCDCBF5656950000DC0000CC0808C6A2A2F993
              93FF7070FF6E6EFF6565FF5B5BFF5050FF5454FF0000D4FFFFE2EBEBF20000FF
              2929FF3030FF3939FF4242FF4C4CFF5454FF5656FF8080FF8181F10101C50000
              CB0000D8757589E1E1D2D9D9B23A3A9F0000D90000C81111C6A1A1FB8686FF70
              70FF6C6CFF6464FF5C5CFF5252FF4A4AFF4141FF0707FFFFFFF2FFFFFF9494F4
              0000FF2B2BFF3232FF3B3BFF4242FF4C4CFF5454FF5757FF7474FF7F7FF60303
              BF0000C70000D76A6A802929A70000D10000C41616C49898FD7979FF6E6EFF69
              69FF6262FF5A5AFF5151FF4B4BFF4141FF0F0FFFE1E1F5FFFFFFFFFFFFFFFFFF
              B4B4F40000FF2C2CFF3232FF3B3BFF4242FF4B4BFF5151FF5555FF6868FF7979
              F90404BA0000C20000CD0000C80000C11717C28D8DFF6C6CFF6666FF6363FF5D
              5DFF5757FF4F4FFF4949FF3F3FFF1616FEEFEFF4FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFD4D4F30000FF2B2BFF3232FF3939FF3F3FFF4747FF4D4DFF5151FF5C5C
              FF6D6DFA0404B80000C00000BD1616C27E7EFF6060FF5F5FFF5A5AFF5757FF51
              51FF4C4CFF4646FF3A3AFF2020FCFDFDF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFE7E7F30000FF2828FF3030FF3737FF3B3BFF3E3EFF4242FF4545
              FF4A4AFF5A5AFE0000AF1010C36767FF5151FF5454FF5151FF4F4FFF4B4BFF46
              46FF4141FF3232FF2929FBFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFF3F3F60000FD2121FF2020FF3C3CFF4F4FFF5E5EFF6767
              FF6E6EFF6C6CFF4040FD4F4FFF6969FF5858FF4848FF3838FF3D3DFF3D3DFF3B
              3BFF2727FF3C3CF9FFFFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFF60505FC7777FF6F6FFF6E6EFF6E6EFF7171
              FF7272FF7676FF6969FF7878FF7777FF7878FF7C7CFF7777FF5B5BFF3535FF18
              18FF4A4AF8FFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF91818FF7373FF6C6CFF6D6DFF7070
              FF7070FF7373FF7575FF7474FF7474FF7373FF7373FF7272FF7D7DFF5D5DFF64
              64F8FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F3B9B98A0000F67A7AFF7272FF6F6F
              FF7272FF7373FF7474FF7474FF7474FF7474FF7474FF7E7EFF5B5BFF0A0AC0F3
              F3AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFF4F4F2AAAA930000A10000940000E67575FF7474
              FF7474FF7474FF7676FF7676FF7575FF7676FF7D7DFF4D4DFF0000B800009C28
              288EDDDDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFF3F3F1ABAB9400009B0000A300008F0000D32222FF8282
              FF7777FF7777FF7878FF7777FF7777FF7777FF8181FF0000FF0000A300009B00
              00A4323288DCDCC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFF2F2EFA2A29100009600009E0000870000DE3030FF9494FF7A7A
              FF7A7AFF7C7CFF7C7CFF7C7CFF7C7CFF7C7CFF7D7DFF8E8EFF0000FF0000A300
              009500009D323285DCDCC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF2F2EFA0A0900000910000990000800000E53434FF9C9CFF8181FF8282
              FF8383FF8282FF8282FF8282FF8282FF8282FF8282FF8484FF9696FF0000FF00
              009E000090000098323283DCDCC2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              F2F2EFA0A09100008C00009400007B0000E53636FFA4A4FF8989FF8A8AFF8A8A
              FF8A8AFF8989FF9C9CFF8F8FFF8A8AFF8A8AFF8A8AFF8A8AFF8B8BFF9E9EFF00
              00FF00009900008A00009232327FDCDCC2FFFFFFFFFFFFFFFFFFFFFFFFF3F3F1
              A1A19300008600008D0000740000E44646FFABABFF8F8FFF9090FF9090FF9090
              FF8F8FFFAEAEFF0000FC6B6BFF9B9BFF9090FF9090FF9090FF9090FF9292FFA6
              A6FF0000FF00009400008400008D32327EDFDFC6FFFFFFFFFFFFFFFFFFCBCBC3
              00008000008E0000730000E34D4DFFB1B1FF9696FF9797FF9797FF9797FF9696
              FFB4B4FF0000FDFFFFF36C6CF56868FFA3A3FF9797FF9797FF9797FF9797FF99
              99FFAEAEFF0000FF00009500008600008B48488CFFFFF6FFFFFFFFFFFF7F7FB1
              0000870000720000E45252FFB9B9FF9E9EFF9F9FFF9F9FFF9F9FFF9E9EFFBBBB
              FF0D0DFCF0F0F6FFFFFFFFFFFE6666F46F6FFFABABFF9F9FFF9F9FFF9F9FFF9F
              9FFFA1A1FFB6B6FF0000FF000095000085000082FFFFF1FFFFFFFFFFFF7878AF
              00006E0000ED5555FFC2C2FFA5A5FFA6A6FFA6A6FFA6A6FFA5A5FFC3C3FF0F0F
              FCFEFEF6FFFFFFFFFFFFFFFFFFFFFFFE6464F47575FFB2B2FFA6A6FFA6A6FFA6
              A6FFA6A6FFA8A8FFBFBFFF0000FF000095000078FFFFF0FFFFFFFFFFFF7C7C9C
              0000E85959FFCACAFFACACFFADADFFADADFFADADFFACACFFCCCCFF0F0FFCFDFD
              F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6363F47B7BFFBABAFFADADFFAD
              ADFFADADFFADADFFAEAEFFC8C8FF0000FF000088FFFFEDFFFFFFFFFFFF6C6CEF
              6666FFD1D1FFB3B3FFB5B5FFB5B5FFB5B5FFB4B4FFD1D1FF0A0AFCFEFEF6FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6161F48282FFC2C2FFB4
              B4FFB5B5FFB5B5FFB5B5FFB6B6FFDADAFF0000FFFFFFEDFFFFFFFFFFFFFDFDF9
              1515FCD7D7FFBCBCFFBCBCFFBCBCFFBBBBFFD9D9FF0C0CFBFEFEF6FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6060F48888FFC9
              C9FFBBBBFFBCBCFFBABAFFD1D1FF6D6DFF8B8BF5FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFF61717FBDADAFFC3C3FFC2C2FFDFDFFF1616FBFEFEF7FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E5EF48E
              8EFFD0D0FFC0C0FFDFDFFF5A5AFF9191F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFF71919FBE2E2FFF0F0FF1919FBFFFFF7FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5D
              5DF49393FFFFFFFF4242FFAAAAF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFF92929FC1E1EFDFFFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFE8585F80000FECFCFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -8
            HotTrackFont.Name = 'Arial'
            HotTrackFont.Style = []
          end
        end
        object Panel2: TPanel
          Left = 10
          Top = 158
          Width = 625
          Height = 191
          TabOrder = 2
          DesignSize = (
            625
            191)
          object Label29: TLabel
            Left = 70
            Top = 23
            Width = 77
            Height = 16
            Caption = 'N'#176' Planilla:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label30: TLabel
            Left = 26
            Top = 57
            Width = 121
            Height = 16
            Caption = 'Importe Cobrado:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label31: TLabel
            Left = 54
            Top = 127
            Width = 97
            Height = 16
            Caption = 'Total Planilla:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label32: TLabel
            Left = 76
            Top = 93
            Width = 69
            Height = 16
            Caption = 'Comision:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label33: TLabel
            Left = 244
            Top = 24
            Width = 9
            Height = 13
            Caption = '...'
          end
          object JvBitBtn5: TJvBitBtn
            Left = 395
            Top = 140
            Width = 128
            Height = 41
            Anchors = [akTop, akRight]
            Caption = 'ACEPTAR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = JvBitBtn5Click
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
          object JvBitBtn6: TJvBitBtn
            Left = 530
            Top = 140
            Width = 87
            Height = 41
            Anchors = [akTop, akRight]
            Caption = 'CERRAR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = JvBitBtn6Click
            Glyph.Data = {
              360C0000424D360C000000000000360000002800000020000000200000000100
              180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFF8F8F8C1C1A6727297DBDBBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFCFCFED0D0B06E6E97D2D2B2FDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              F5F5F3B0B08D0202D46464FF1414B4D2D2A3FDFDFEFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7
              F7F7C2C2910000C66C6CFF0000C0CACA99FBFBFCFFFFFFFFFFFFFFFFFFF1F1EE
              A8A88A0000D50707DD9F9FEE0000E30F0FC2CACA98FAFAFBFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F1B1
              B18C0000D20000DC9F9FEC0000D90505C3C4C498F9F9F9FFFFFFF9F9F7A4A48F
              0000D20000D60606D28888E50000D50000E10505CABFBF91F7F7F6FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEE9A3A38700
              00D90000DB0000D18080E20000CD0000D40404BEC3C39FFEFEFFF4F4D60000CA
              0000CF0000C72929E8A2A2FF7878E80000D10000DD0101D1B1B18DF3F3F1FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAE19191860000DD00
              00D70000CE8888EAB5B5FF1F1FDB0000C70000CE0A0ABCFFFFEBD0D0D70000C8
              0000BF2F2FED5454FF4A4AFF9D9DFF7B7BE60000CF0000D80000D6A6A687F0F0
              EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6D77E7E880000E10000D300
              00CC9696EFABABFF6C6CFF7E7EFF2525D90000BF0000C1FFFFE4CECED80000B6
              2727F04242FF4545FF5151FF5050FF9595FF7C7CEA0000CC0000D40000D89696
              88ECECE4FFFFFFFFFFFFFFFFFFFFFFFFE0E0CA6A6A8D0000E00000D00000C99D
              9DF3A0A0FF6F6FFF6D6DFF6363FF6868FF2828DC0000B4FFFFE4CBCBD00202F0
              3131FF3535FF3F3FFF4949FF5353FF5454FF8C8CFF8181ED0000C70000CF0000
              D8868688E8E8DCFFFFFFFFFFFFDCDCBF5656950000DC0000CC0808C6A2A2F993
              93FF7070FF6E6EFF6565FF5B5BFF5050FF5454FF0000D4FFFFE2EBEBF20000FF
              2929FF3030FF3939FF4242FF4C4CFF5454FF5656FF8080FF8181F10101C50000
              CB0000D8757589E1E1D2D9D9B23A3A9F0000D90000C81111C6A1A1FB8686FF70
              70FF6C6CFF6464FF5C5CFF5252FF4A4AFF4141FF0707FFFFFFF2FFFFFF9494F4
              0000FF2B2BFF3232FF3B3BFF4242FF4C4CFF5454FF5757FF7474FF7F7FF60303
              BF0000C70000D76A6A802929A70000D10000C41616C49898FD7979FF6E6EFF69
              69FF6262FF5A5AFF5151FF4B4BFF4141FF0F0FFFE1E1F5FFFFFFFFFFFFFFFFFF
              B4B4F40000FF2C2CFF3232FF3B3BFF4242FF4B4BFF5151FF5555FF6868FF7979
              F90404BA0000C20000CD0000C80000C11717C28D8DFF6C6CFF6666FF6363FF5D
              5DFF5757FF4F4FFF4949FF3F3FFF1616FEEFEFF4FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFD4D4F30000FF2B2BFF3232FF3939FF3F3FFF4747FF4D4DFF5151FF5C5C
              FF6D6DFA0404B80000C00000BD1616C27E7EFF6060FF5F5FFF5A5AFF5757FF51
              51FF4C4CFF4646FF3A3AFF2020FCFDFDF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFE7E7F30000FF2828FF3030FF3737FF3B3BFF3E3EFF4242FF4545
              FF4A4AFF5A5AFE0000AF1010C36767FF5151FF5454FF5151FF4F4FFF4B4BFF46
              46FF4141FF3232FF2929FBFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFF3F3F60000FD2121FF2020FF3C3CFF4F4FFF5E5EFF6767
              FF6E6EFF6C6CFF4040FD4F4FFF6969FF5858FF4848FF3838FF3D3DFF3D3DFF3B
              3BFF2727FF3C3CF9FFFFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFF60505FC7777FF6F6FFF6E6EFF6E6EFF7171
              FF7272FF7676FF6969FF7878FF7777FF7878FF7C7CFF7777FF5B5BFF3535FF18
              18FF4A4AF8FFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF91818FF7373FF6C6CFF6D6DFF7070
              FF7070FF7373FF7575FF7474FF7474FF7373FF7373FF7272FF7D7DFF5D5DFF64
              64F8FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F3B9B98A0000F67A7AFF7272FF6F6F
              FF7272FF7373FF7474FF7474FF7474FF7474FF7474FF7E7EFF5B5BFF0A0AC0F3
              F3AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFF4F4F2AAAA930000A10000940000E67575FF7474
              FF7474FF7474FF7676FF7676FF7575FF7676FF7D7DFF4D4DFF0000B800009C28
              288EDDDDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFF3F3F1ABAB9400009B0000A300008F0000D32222FF8282
              FF7777FF7777FF7878FF7777FF7777FF7777FF8181FF0000FF0000A300009B00
              00A4323288DCDCC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFF2F2EFA2A29100009600009E0000870000DE3030FF9494FF7A7A
              FF7A7AFF7C7CFF7C7CFF7C7CFF7C7CFF7C7CFF7D7DFF8E8EFF0000FF0000A300
              009500009D323285DCDCC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF2F2EFA0A0900000910000990000800000E53434FF9C9CFF8181FF8282
              FF8383FF8282FF8282FF8282FF8282FF8282FF8282FF8484FF9696FF0000FF00
              009E000090000098323283DCDCC2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              F2F2EFA0A09100008C00009400007B0000E53636FFA4A4FF8989FF8A8AFF8A8A
              FF8A8AFF8989FF9C9CFF8F8FFF8A8AFF8A8AFF8A8AFF8A8AFF8B8BFF9E9EFF00
              00FF00009900008A00009232327FDCDCC2FFFFFFFFFFFFFFFFFFFFFFFFF3F3F1
              A1A19300008600008D0000740000E44646FFABABFF8F8FFF9090FF9090FF9090
              FF8F8FFFAEAEFF0000FC6B6BFF9B9BFF9090FF9090FF9090FF9090FF9292FFA6
              A6FF0000FF00009400008400008D32327EDFDFC6FFFFFFFFFFFFFFFFFFCBCBC3
              00008000008E0000730000E34D4DFFB1B1FF9696FF9797FF9797FF9797FF9696
              FFB4B4FF0000FDFFFFF36C6CF56868FFA3A3FF9797FF9797FF9797FF9797FF99
              99FFAEAEFF0000FF00009500008600008B48488CFFFFF6FFFFFFFFFFFF7F7FB1
              0000870000720000E45252FFB9B9FF9E9EFF9F9FFF9F9FFF9F9FFF9E9EFFBBBB
              FF0D0DFCF0F0F6FFFFFFFFFFFE6666F46F6FFFABABFF9F9FFF9F9FFF9F9FFF9F
              9FFFA1A1FFB6B6FF0000FF000095000085000082FFFFF1FFFFFFFFFFFF7878AF
              00006E0000ED5555FFC2C2FFA5A5FFA6A6FFA6A6FFA6A6FFA5A5FFC3C3FF0F0F
              FCFEFEF6FFFFFFFFFFFFFFFFFFFFFFFE6464F47575FFB2B2FFA6A6FFA6A6FFA6
              A6FFA6A6FFA8A8FFBFBFFF0000FF000095000078FFFFF0FFFFFFFFFFFF7C7C9C
              0000E85959FFCACAFFACACFFADADFFADADFFADADFFACACFFCCCCFF0F0FFCFDFD
              F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6363F47B7BFFBABAFFADADFFAD
              ADFFADADFFADADFFAEAEFFC8C8FF0000FF000088FFFFEDFFFFFFFFFFFF6C6CEF
              6666FFD1D1FFB3B3FFB5B5FFB5B5FFB5B5FFB4B4FFD1D1FF0A0AFCFEFEF6FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6161F48282FFC2C2FFB4
              B4FFB5B5FFB5B5FFB5B5FFB6B6FFDADAFF0000FFFFFFEDFFFFFFFFFFFFFDFDF9
              1515FCD7D7FFBCBCFFBCBCFFBCBCFFBBBBFFD9D9FF0C0CFBFEFEF6FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6060F48888FFC9
              C9FFBBBBFFBCBCFFBABAFFD1D1FF6D6DFF8B8BF5FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFF61717FBDADAFFC3C3FFC2C2FFDFDFFF1616FBFEFEF7FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E5EF48E
              8EFFD0D0FFC0C0FFDFDFFF5A5AFF9191F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFF71919FBE2E2FFF0F0FF1919FBFFFFF7FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5D
              5DF49393FFFFFFFF4242FFAAAAF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFF92929FC1E1EFDFFFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFE8585F80000FECFCFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -8
            HotTrackFont.Name = 'Arial'
            HotTrackFont.Style = []
          end
          object Edit7: TEdit
            Left = 151
            Top = 12
            Width = 88
            Height = 28
            Color = clYellow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
          end
          object Edit8: TEdit
            Left = 151
            Top = 46
            Width = 138
            Height = 28
            Color = clYellow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
          end
          object Edit9: TEdit
            Left = 153
            Top = 118
            Width = 134
            Height = 28
            Color = clYellow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 5
          end
          object Edit10: TEdit
            Left = 152
            Top = 82
            Width = 135
            Height = 28
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            Text = '0000.00'
            OnExit = Edit10Exit
            OnKeyPress = Edit10KeyPress
          end
        end
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 492
        Width = 981
        Height = 40
        Align = alBottom
        Enabled = False
        TabOrder = 3
        DesignSize = (
          981
          40)
        object Label7: TLabel
          Left = 12
          Top = 18
          Width = 11
          Height = 13
          Caption = 'ID'
        end
        object Label9: TLabel
          Left = 78
          Top = 20
          Width = 63
          Height = 13
          Caption = 'Comprobante'
        end
        object Label10: TLabel
          Left = 245
          Top = 18
          Width = 57
          Height = 13
          Caption = 'Tipo Compr.'
        end
        object Label12: TLabel
          Left = 419
          Top = 18
          Width = 33
          Height = 13
          Caption = 'Accion'
        end
        object Label13: TLabel
          Left = 538
          Top = 18
          Width = 38
          Height = 13
          Caption = 'Importe:'
        end
        object borrapago: TJvBitBtn
          Left = 882
          Top = 10
          Width = 97
          Height = 27
          Anchors = [akTop, akRight]
          Caption = 'ELIMINAR'#13#10'COMPROBANTE'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = borrapagoClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
            33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
            993337777F777F3377F3393999707333993337F77737333337FF993399933333
            399377F3777FF333377F993339903333399377F33737FF33377F993333707333
            399377F333377FF3377F993333101933399377F333777FFF377F993333000993
            399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
            99333773FF777F777733339993707339933333773FF7FFF77333333999999999
            3333333777333777333333333999993333333333377777333333}
          NumGlyphs = 2
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -8
          HotTrackFont.Name = 'Arial'
          HotTrackFont.Style = []
        end
        object Edit1: TEdit
          Left = 26
          Top = 12
          Width = 47
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 1
        end
        object Edit2: TEdit
          Left = 144
          Top = 12
          Width = 95
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 2
        end
        object Edit3: TEdit
          Left = 305
          Top = 12
          Width = 109
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 3
        end
        object Edit4: TEdit
          Left = 459
          Top = 12
          Width = 73
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 4
        end
        object Edit5: TEdit
          Left = 584
          Top = 12
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 5
        end
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 989
    Height = 47
    ButtonHeight = 40
    Caption = 'ToolBar1'
    Color = clGradientInactiveCaption
    EdgeBorders = [ebLeft, ebTop, ebBottom]
    EdgeInner = esLowered
    ParentColor = False
    TabOrder = 0
    DesignSize = (
      987
      43)
    object ToolButton4: TToolButton
      Left = 0
      Top = 2
      Width = 267
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object ANULA: TJvBitBtn
      Left = 267
      Top = 2
      Width = 107
      Height = 40
      Caption = 'ANULAR'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = ANULAClick
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
      HotTrackFont.Height = -13
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object ToolButton7: TToolButton
      Left = 374
      Top = 2
      Width = 8
      Caption = 'ToolButton7'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object Exporta: TJvBitBtn
      Left = 382
      Top = 2
      Width = 113
      Height = 40
      Anchors = [akTop, akRight]
      Caption = 'Exportar '#13#10'a Excel'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
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
      HotTrackFont.Height = -13
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object ToolButton5: TToolButton
      Left = 495
      Top = 2
      Width = 8
      Caption = 'ToolButton5'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object IMPRIME: TJvBitBtn
      Left = 503
      Top = 2
      Width = 116
      Height = 40
      Anchors = [akTop, akRight]
      Caption = 'IMPRIMIR'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = IMPRIMEClick
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
      HotTrackFont.Height = -13
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object ToolButton2: TToolButton
      Left = 619
      Top = 2
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object GUARDA: TJvBitBtn
      Left = 627
      Top = 2
      Width = 132
      Height = 40
      Anchors = [akTop, akRight]
      Caption = 'CONFIRMAR'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
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
      HotTrackFont.Height = -13
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object ToolButton1: TToolButton
      Left = 759
      Top = 2
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object Limpiar: TJvBitBtn
      Left = 767
      Top = 2
      Width = 88
      Height = 40
      Anchors = [akTop, akRight]
      Caption = 'LIMPIAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
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
      HotTrackFont.Height = -13
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object ToolButton3: TToolButton
      Left = 855
      Top = 2
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object JvBitBtn1: TJvBitBtn
      Left = 863
      Top = 2
      Width = 96
      Height = 40
      Anchors = [akTop, akRight]
      Caption = 'SALIR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
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
      HotTrackFont.Height = -13
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
  end
  object Barra1: TStatusBar
    Left = 0
    Top = 607
    Width = 989
    Height = 19
    Panels = <
      item
        Width = 400
      end
      item
        Width = 550
      end
      item
        Width = 80
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
    OnPrint = RvSPrint
    Left = 112
    Top = 6
  end
  object DataSource3: TDataSource
    Left = 71
    Top = 4
  end
  object DataSource4: TDataSource
    Left = 158
    Top = 14
  end
  object PopupMenu1: TPopupMenu
    Left = 312
    Top = 207
    object CambiardeCobrador1: TMenuItem
      Caption = 'Cambiar de Cobrador'
    end
  end
end

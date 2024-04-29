object Ven_ParcelaGer: TVen_ParcelaGer
  Left = 394
  Top = 56
  AutoScroll = False
  BorderIcons = [biSystemMenu, biMinimize]
  ClientHeight = 568
  ClientWidth = 813
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
  object Label11: TLabel
    Left = 21
    Top = 92
    Width = 95
    Height = 13
    Caption = 'Precio de la Parcela'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label20: TLabel
    Left = 8
    Top = 22
    Width = 63
    Height = 13
    Caption = 'Imp. Entrega:'
  end
  object Barra1: TStatusBar
    Left = 0
    Top = 549
    Width = 813
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
  object PC1: TPageControl
    Left = 0
    Top = 36
    Width = 813
    Height = 513
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'B'#250'squedas'
      ImageIndex = 4
      DesignSize = (
        805
        485)
      object LB1: TLabel
        Left = 379
        Top = 19
        Width = 110
        Height = 13
        Alignment = taCenter
        Caption = 'N'#176' de Acci'#243'n Asociada'
      end
      object Label14: TLabel
        Left = 22
        Top = 16
        Width = 116
        Height = 13
        Caption = 'Selecciones el SECTOR'
      end
      object Label29: TLabel
        Left = 198
        Top = 18
        Width = 138
        Height = 13
        Caption = 'Selecciones el N'#176' de Parcela'
      end
      object todos: TRichEdit
        Left = 193
        Top = 268
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
        TabOrder = 5
      end
      object DBGrid1: TJvDBGrid
        Left = 0
        Top = 76
        Width = 805
        Height = 409
        Align = alBottom
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
        OnDrawColumnCell = DBGrid1DrawColumnCell
        AlternateRowColor = clGradientInactiveCaption
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 18
        TitleRowHeight = 19
      end
      object ODNI: TEdit
        Left = 392
        Top = 34
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
        TabOrder = 2
        Text = '00000000'
        OnKeyPress = ODNIKeyPress
      end
      object Busca: TJvBitBtn
        Left = 532
        Top = 19
        Width = 121
        Height = 44
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
      object GroupBox6: TGroupBox
        Left = 689
        Top = 4
        Width = 107
        Height = 69
        Anchors = [akTop, akRight]
        TabOrder = 6
        object Shape3: TShape
          Left = 8
          Top = 29
          Width = 15
          Height = 13
          Shape = stCircle
        end
        object Shape2: TShape
          Left = 8
          Top = 12
          Width = 15
          Height = 13
          Brush.Color = clSkyBlue
          Shape = stCircle
        end
        object Label55: TLabel
          Left = 28
          Top = 12
          Width = 62
          Height = 13
          Caption = 'Sin Confirmar'
        end
        object Label56: TLabel
          Left = 28
          Top = 29
          Width = 44
          Height = 13
          Caption = 'Normales'
        end
        object Shape1: TShape
          Left = 8
          Top = 46
          Width = 15
          Height = 13
          Brush.Color = clYellow
          Shape = stCircle
        end
        object Label63: TLabel
          Left = 28
          Top = 46
          Width = 39
          Height = 13
          Caption = 'Anulado'
        end
      end
      object ElSector: TComboBox
        Left = 40
        Top = 32
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
        TabOrder = 0
        OnExit = ElSectorExit
        OnKeyPress = ElSectorKeyPress
      end
      object LaAccion: TComboBox
        Left = 204
        Top = 34
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
        TabOrder = 1
        OnExit = LaAccionExit
        OnKeyPress = LaAccionKeyPress
      end
      object reserva: TJvgGroupBox
        Left = 42
        Top = 153
        Width = 699
        Height = 180
        Caption = 'DATOS DE LA RESERVA'
        TabOrder = 7
        Visible = False
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
        object Label48: TLabel
          Left = 36
          Top = 80
          Width = 73
          Height = 13
          Caption = 'Reservado por:'
        end
        object Label49: TLabel
          Left = 40
          Top = 116
          Width = 67
          Height = 13
          Caption = 'Desde Fecha:'
        end
        object Label50: TLabel
          Left = 328
          Top = 116
          Width = 64
          Height = 13
          Caption = 'Hasta Fecha:'
        end
        object Label51: TLabel
          Left = 40
          Top = 148
          Width = 68
          Height = 13
          Caption = 'Dias Vigencia:'
        end
        object Image3: TImage
          Left = 16
          Top = 24
          Width = 53
          Height = 45
          Center = True
          Picture.Data = {
            07544269746D617036080000424D360800000000000036040000280000002000
            000020000000010008000000000000040000CE0E0000D80E0000000100000000
            0000000000004000000080000000FF000000002000004020000080200000FF20
            0000004000004040000080400000FF400000006000004060000080600000FF60
            0000008000004080000080800000FF80000000A0000040A0000080A00000FFA0
            000000C0000040C0000080C00000FFC0000000FF000040FF000080FF0000FFFF
            0000000020004000200080002000FF002000002020004020200080202000FF20
            2000004020004040200080402000FF402000006020004060200080602000FF60
            2000008020004080200080802000FF80200000A0200040A0200080A02000FFA0
            200000C0200040C0200080C02000FFC0200000FF200040FF200080FF2000FFFF
            2000000040004000400080004000FF004000002040004020400080204000FF20
            4000004040004040400080404000FF404000006040004060400080604000FF60
            4000008040004080400080804000FF80400000A0400040A0400080A04000FFA0
            400000C0400040C0400080C04000FFC0400000FF400040FF400080FF4000FFFF
            4000000060004000600080006000FF006000002060004020600080206000FF20
            6000004060004040600080406000FF406000006060004060600080606000FF60
            6000008060004080600080806000FF80600000A0600040A0600080A06000FFA0
            600000C0600040C0600080C06000FFC0600000FF600040FF600080FF6000FFFF
            6000000080004000800080008000FF008000002080004020800080208000FF20
            8000004080004040800080408000FF408000006080004060800080608000FF60
            8000008080004080800080808000FF80800000A0800040A0800080A08000FFA0
            800000C0800040C0800080C08000FFC0800000FF800040FF800080FF8000FFFF
            80000000A0004000A0008000A000FF00A0000020A0004020A0008020A000FF20
            A0000040A0004040A0008040A000FF40A0000060A0004060A0008060A000FF60
            A0000080A0004080A0008080A000FF80A00000A0A00040A0A00080A0A000FFA0
            A00000C0A00040C0A00080C0A000FFC0A00000FFA00040FFA00080FFA000FFFF
            A0000000C0004000C0008000C000FF00C0000020C0004020C0008020C000FF20
            C0000040C0004040C0008040C000FF40C0000060C0004060C0008060C000FF60
            C0000080C0004080C0008080C000FF80C00000A0C00040A0C00080A0C000FFA0
            C00000C0C00040C0C00080C0C000FFC0C00000FFC00040FFC00080FFC000FFFF
            C0000000FF004000FF008000FF00FF00FF000020FF004020FF008020FF00FF20
            FF000040FF004040FF008040FF00FF40FF000060FF004060FF008060FF00FF60
            FF000080FF004080FF008080FF00FF80FF0000A0FF0040A0FF0080A0FF00FFA0
            FF0000C0FF0040C0FF0080C0FF00FFC0FF0000FFFF0040FFFF0080FFFF00FFFF
            FF00FFFFFFFFFFFFFFFF8080808080A0A0E0E0E0E0E0E0E0E0E0FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF8080B6B6B6B6B6B6B6B6B6B6B6B6B6B6E4E4FFFFFFFFFF
            FFFFFFFFFFFFFFFF8080B6606060606060E06060606060A0E4DBE4E4FFFFFFFF
            FFFFFFFFFFFFFF8080B66060606060606060606060606060E4E4DBEDEDFFFFFF
            FFFFFFFFFFFF8080B680600000000000000000000000006060E4EDFFF2F2FFFF
            FFFFFFFFFF8080B68060848484848484008484848484840060EDEDF2FFEDEDFF
            FFFFFFFF8080B680808484ECECF1F1008484ECECECECEC840060F2F2EDFFE4E4
            FFFFFF8080B68080A084ECECF1FAF18484ECF1F1F1F1ECEC8460F2EDEDE4DBE4
            E0FF8080B68080A06084ECECFAFAFAECF1F1FAFAFAF1F1EC840060EDE4E4E4DB
            E0E080B68080A0A08484ECFAFAFAFAF1FAFAFAFAFAFAF1F1EC8460E4E4E4E0E0
            B6E080B680A0A0E08484ECFAFAFAF1FAFAFAFAFAFAFAFAF1EC840060E4E0E0E0
            B6E080B6A0A0E0E084ECECFAFAFAFA84FAFAFAFAFAFAFAFAF1EC8460E0E0E0E0
            B6E080B6A0E0E0E084ECF1F1F1FAFAF184F1FAF1F184F1FAFAEC840060E0E0E0
            B6E0A0B6E0E0E0E084ECF1F1F184ECF1F1EC84ECECEC84F1FAF1EC846060E0E0
            B6E0A0B6E0E0E0E084ECF1F1FAF1F1EC84F1F1F1F1ECEC60F184F1EC006060E0
            B6E0E0B6E0E0E0E084ECECFAFAFAFAFAF1FAFAF1FAFAF16060ECFAEC840060E0
            B6E0E0B6E0E0E0E08484ECECFAFAFAFAFAFAFAFAFAFAF16060F1FAF1EC6060E0
            B6E0E0B6E0E0E0E084ECEC8484FAFA84F1FAFAF184FAF16060E0F1FAECE0E0E0
            B6A0E0B6E0E0E0E084ECF18484ECF18484ECEC00EC84EC6060E0E0E0E0E0E0E0
            B6A0E0B6E0E0E0E08484EC84ECF1FA84ECF1FA84ECF1FA6060E0E0E0E0E0E0A0
            B680E0B6E0E0E0E084ECF184ECFAFA84ECF1FA84ECF1FA6060E0E0E0E0E0A0A0
            B680E0B6E0E0E0E48484EC8484ECF184F1F1FA8484ECEC6060E0E0E0E0A0A080
            B680E0B6E0E0E4E4E4F1F184ECFAFA8484ECEC84ECF1FA6060E0E0E0A0A08080
            B680E0E0DBE4E4E4EDE4F18484ECF184ECF1FA8484ECF16060E0E0A0A08080B6
            8080FFE4E4DBE4EDEDF2E484ECF1FA84F1F1FA84ECF1FA60E0E0A0A08080B680
            80FFFFFFE4E4FFEDF2F2ED84F1FAFA8484ECEC84ECF1FAE0E0A0A08080B68080
            FFFFFFFFFFEDEDFFF2EDEDE4E4F1E4E0ECF1FA60E4F1FAE0A0A08080B68080FF
            FFFFFFFFFFFFF2F2FFEDE4E4E4E0E0E0F1F1FAE0E0E4E0A0A08080B68080FFFF
            FFFFFFFFFFFFFFEDEDDBE4E4E0E0E0E0E4F1E4E0E0E0A0A08080B68080FFFFFF
            FFFFFFFFFFFFFFFFE4E4DBE0E0E0E0E0E0E0E0E0E0A0A08080B68080FFFFFFFF
            FFFFFFFFFFFFFFFFFFE4E4B6B6B6B6B6B6B6B6B6B6B6B6B6B68080FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFE0E0E0E0E0E0E0E0E0A0A08080808080FFFFFFFFFFFF
            FFFF}
          Proportional = True
          Stretch = True
        end
        object GroupBox3: TGroupBox
          Left = 72
          Top = 21
          Width = 615
          Height = 43
          Caption = 'ATENCION'
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          object Label57: TLabel
            Left = 8
            Top = 16
            Width = 601
            Height = 20
            Caption = 
              'Parcela RESERVADA... Imposible su Venta, Consulte con el Adminis' +
              'trador'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object reserd: TEdit
          Left = 112
          Top = 108
          Width = 89
          Height = 24
          Color = clInfoBk
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
        object reserh: TEdit
          Left = 400
          Top = 108
          Width = 121
          Height = 24
          Color = clInfoBk
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
        object dif: TEdit
          Left = 112
          Top = 140
          Width = 65
          Height = 24
          Color = clInfoBk
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
        object names: TEdit
          Left = 112
          Top = 72
          Width = 573
          Height = 24
          Color = clInfoBk
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
      end
    end
    object FPago: TTabSheet
      Caption = 'Configuracion de la Venta'
      ImageIndex = 5
      object gb1: TGroupBox
        Left = 0
        Top = 0
        Width = 805
        Height = 485
        Align = alClient
        TabOrder = 0
        object GDatos: TPageControl
          Left = 2
          Top = 297
          Width = 801
          Height = 186
          ActivePage = TabSheet8
          Align = alBottom
          TabOrder = 0
          object TabSheet8: TTabSheet
            Caption = 'Titulares'
            object JvgGroupBox1: TJvgGroupBox
              Left = 0
              Top = 0
              Width = 793
              Height = 158
              Align = alClient
              Caption = '3)Selecci'#243'n y B'#250'squedas de los Titulares'
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
              object Label21: TLabel
                Left = 14
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
              object Label53: TLabel
                Left = 681
                Top = 26
                Width = 27
                Height = 13
                Caption = 'Nivel:'
                Visible = False
              end
              object Edit1: TEdit
                Left = 54
                Top = 22
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
                OnExit = Edit1Exit
                OnKeyPress = Edit1KeyPress
              end
              object Button2: TJvBitBtn
                Left = 134
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
              object NIVEL: TComboBox
                Left = 716
                Top = 20
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
                Top = 49
                Width = 789
                Height = 107
                Align = alBottom
                ColCount = 17
                DefaultColWidth = 55
                DefaultRowHeight = 20
                FixedCols = 0
                RowCount = 2
                Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
                ScrollBars = ssHorizontal
                TabOrder = 7
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
                  55
                  55
                  55
                  55
                  55)
              end
              object DBEdit2: TEdit
                Left = 163
                Top = 22
                Width = 50
                Height = 22
                CharCase = ecUpperCase
                Color = 16511969
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                MaxLength = 50
                ParentFont = False
                ReadOnly = True
                TabOrder = 8
                Visible = False
              end
              object DBEdit7: TEdit
                Left = 217
                Top = 23
                Width = 322
                Height = 22
                CharCase = ecUpperCase
                Color = 16511969
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                MaxLength = 50
                ParentFont = False
                ReadOnly = True
                TabOrder = 9
                Visible = False
              end
              object DBEdit4: TEdit
                Left = 657
                Top = 21
                Width = 24
                Height = 22
                CharCase = ecUpperCase
                Color = 16511969
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                MaxLength = 50
                ParentFont = False
                ReadOnly = True
                TabOrder = 10
                Visible = False
              end
              object DBEdit8: TEdit
                Left = 543
                Top = 22
                Width = 109
                Height = 22
                CharCase = ecUpperCase
                Color = 16511969
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                MaxLength = 50
                ParentFont = False
                ReadOnly = True
                TabOrder = 11
                Visible = False
              end
              object Agrega2: TJvBitBtn
                Left = 160
                Top = 18
                Width = 104
                Height = 29
                Hint = 'Agrega Nueva Fila'
                Caption = 'Agregar'
                Enabled = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 3
                OnClick = Agrega2Click
                HotTrackFont.Charset = DEFAULT_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -11
                HotTrackFont.Name = 'MS Sans Serif'
                HotTrackFont.Style = []
              end
              object Modifica2: TJvBitBtn
                Left = 267
                Top = 18
                Width = 95
                Height = 29
                Hint = 'Modifica los Datos de la Fila'
                Caption = 'Modificar'
                Enabled = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 4
                OnClick = Modifica2Click
                HotTrackFont.Charset = DEFAULT_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -11
                HotTrackFont.Name = 'MS Sans Serif'
                HotTrackFont.Style = []
              end
              object Quita2: TJvBitBtn
                Left = 366
                Top = 18
                Width = 103
                Height = 29
                Hint = 'Quita la Selecci'#243'n'
                Caption = 'Quitar'
                Enabled = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 5
                OnClick = Quita2Click
                HotTrackFont.Charset = DEFAULT_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -11
                HotTrackFont.Name = 'MS Sans Serif'
                HotTrackFont.Style = []
              end
              object Borra2: TJvBitBtn
                Left = 474
                Top = 18
                Width = 95
                Height = 29
                Hint = 'Borra la Fila Seleccionada'
                Caption = 'Borrar'
                Enabled = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 6
                OnClick = Borra2Click
                HotTrackFont.Charset = DEFAULT_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -11
                HotTrackFont.Name = 'MS Sans Serif'
                HotTrackFont.Style = []
              end
            end
          end
          object TabSheet9: TTabSheet
            Caption = 'Datos Parcelarios'
            ImageIndex = 1
            object GroupBox1: TGroupBox
              Left = 0
              Top = 0
              Width = 793
              Height = 158
              Align = alClient
              TabOrder = 0
              object Label15: TLabel
                Left = 18
                Top = 16
                Width = 54
                Height = 13
                Caption = 'N'#186'  Acci'#243'n:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label7: TLabel
                Left = 204
                Top = 16
                Width = 46
                Height = 13
                Caption = 'N'#186' T'#237'tulo:'
              end
              object Label9: TLabel
                Left = 415
                Top = 16
                Width = 42
                Height = 13
                Caption = 'N'#186' Color:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label6: TLabel
                Left = 221
                Top = 43
                Width = 29
                Height = 13
                Caption = 'Plaza:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label3: TLabel
                Left = 217
                Top = 70
                Width = 33
                Height = 13
                Caption = 'Activo:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label13: TLabel
                Left = 38
                Top = 43
                Width = 34
                Height = 13
                Caption = 'Sector:'
              end
              object Label4: TLabel
                Left = 33
                Top = 71
                Width = 39
                Height = 13
                Caption = 'Parcela:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label10: TLabel
                Left = 24
                Top = 97
                Width = 48
                Height = 13
                Caption = 'Mayorista:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label8: TLabel
                Left = 39
                Top = 131
                Width = 33
                Height = 13
                Caption = 'Precio:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label16: TLabel
                Left = 212
                Top = 130
                Width = 63
                Height = 13
                Caption = 'Detalle Color:'
              end
              object D1: TDBEdit
                Left = 76
                Top = 12
                Width = 77
                Height = 21
                Color = 14277612
                DataSource = DataSource1
                ReadOnly = True
                TabOrder = 0
              end
              object D2: TDBEdit
                Left = 254
                Top = 12
                Width = 77
                Height = 21
                Color = 14277612
                DataSource = DataSource1
                ReadOnly = True
                TabOrder = 1
              end
              object D8: TDBEdit
                Left = 460
                Top = 12
                Width = 45
                Height = 21
                Color = 14277612
                DataSource = DataSource1
                ReadOnly = True
                TabOrder = 2
              end
              object Panel: TJvPanel
                Left = 338
                Top = 64
                Width = 167
                Height = 25
                HotTrackFont.Charset = DEFAULT_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -11
                HotTrackFont.Name = 'MS Sans Serif'
                HotTrackFont.Style = []
                FlatBorderColor = clBlack
                BevelInner = bvRaised
                BevelOuter = bvSpace
                BorderStyle = bsSingle
                Color = clHotLight
                TabOrder = 3
              end
              object D4: TDBEdit
                Left = 254
                Top = 39
                Width = 251
                Height = 21
                Color = 14277612
                DataSource = DataSource1
                ReadOnly = True
                TabOrder = 4
              end
              object D6: TDBEdit
                Left = 254
                Top = 67
                Width = 77
                Height = 21
                Color = 14277612
                DataSource = DataSource1
                ReadOnly = True
                TabOrder = 5
              end
              object D3: TDBEdit
                Left = 76
                Top = 39
                Width = 77
                Height = 21
                Color = 14277612
                DataSource = DataSource1
                ReadOnly = True
                TabOrder = 6
              end
              object D5: TDBEdit
                Left = 76
                Top = 67
                Width = 77
                Height = 21
                Color = 14277612
                DataSource = DataSource1
                ReadOnly = True
                TabOrder = 7
              end
              object D13: TDBEdit
                Left = 76
                Top = 94
                Width = 429
                Height = 21
                Color = 14277612
                DataSource = DataSource2
                ReadOnly = True
                TabOrder = 8
              end
              object D14: TDBEdit
                Left = 76
                Top = 121
                Width = 125
                Height = 27
                Color = 14277612
                DataSource = DataSource3
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                ReadOnly = True
                TabOrder = 9
              end
              object DC: TDBEdit
                Left = 282
                Top = 124
                Width = 107
                Height = 21
                Color = 14277612
                DataSource = DataSource3
                ReadOnly = True
                TabOrder = 10
              end
            end
          end
          object TabSheet4: TTabSheet
            Caption = 'Datos del Titular de la Accion'
            ImageIndex = 2
            object grupotestigos: TJvgGroupBox
              Left = 0
              Top = 0
              Width = 793
              Height = 158
              Align = alClient
              Caption = 'Datos Del Mayorista'
              TabOrder = 0
              Border.Inner = bvSpace
              Border.Outer = bvNone
              Border.Bold = False
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
              Colors.CaptionActive = clBtnShadow
              Colors.Client = clBtnFace
              Colors.ClientActive = clBtnFace
              Gradient.FromColor = clBlack
              Gradient.ToColor = clGray
              Gradient.Active = False
              Gradient.Orientation = fgdHorizontal
              Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
              FullHeight = 0
              object Image2: TImage
                Left = 420
                Top = 48
                Width = 105
                Height = 105
              end
              object JvDBGrid1: TJvDBGrid
                Left = 2
                Top = 16
                Width = 789
                Height = 140
                Align = alClient
                DataSource = DataSource4
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
                ParentFont = False
                TabOrder = 0
                TitleFont.Charset = ANSI_CHARSET
                TitleFont.Color = clNavy
                TitleFont.Height = -11
                TitleFont.Name = 'Arial Narrow'
                TitleFont.Style = [fsBold]
                AlternateRowColor = clGradientInactiveCaption
                SelectColumnsDialogStrings.Caption = 'Select columns'
                SelectColumnsDialogStrings.OK = '&OK'
                SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
                EditControls = <>
                RowsHeight = 18
                TitleRowHeight = 19
              end
            end
          end
          object TabSheet5: TTabSheet
            Caption = 'Cr'#233'ditos ya Emitidos'
            ImageIndex = 3
            object GRILLA1: TDBGrid
              Left = 0
              Top = 0
              Width = 793
              Height = 158
              Align = alClient
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
              TitleFont.Style = []
            end
          end
          object TabSheet3: TTabSheet
            Caption = 'Detalle de las Cuotas'
            ImageIndex = 4
            object grilla5: TStringGrid
              Left = 0
              Top = 0
              Width = 793
              Height = 158
              Align = alClient
              ColCount = 7
              DefaultColWidth = 100
              DefaultRowHeight = 17
              FixedCols = 0
              RowCount = 2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
              ParentFont = False
              PopupMenu = PopupMenu1
              TabOrder = 0
              ColWidths = (
                120
                120
                120
                120
                120
                120
                100)
            end
          end
          object TabSheet6: TTabSheet
            Caption = 'Datos del Pago'
            ImageIndex = 5
            object JvgGroupBox5: TJvgGroupBox
              Left = 10
              Top = 5
              Width = 357
              Height = 53
              Caption = 'Cr'#233'dito'
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
              object Label43: TLabel
                Left = 12
                Top = 21
                Width = 78
                Height = 18
                Caption = 'N'#176' Cr'#233'dito:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clMaroon
                Font.Height = -15
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object NROCREDITO: TEdit
                Left = 100
                Top = 15
                Width = 97
                Height = 26
                CharCase = ecUpperCase
                Color = 16511969
                Enabled = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clMaroon
                Font.Height = -15
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                MaxLength = 15
                ParentFont = False
                TabOrder = 0
                Text = '000000000'
              end
              object CB1: TCheckBox
                Left = 212
                Top = 23
                Width = 97
                Height = 17
                Caption = 'Mostrar Valores?'
                TabOrder = 1
              end
            end
            object grupo7: TJvgGroupBox
              Left = 380
              Top = 9
              Width = 357
              Height = 72
              Caption = 'Importes Generados'
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
              object Label27: TLabel
                Left = 50
                Top = 23
                Width = 35
                Height = 13
                Caption = 'Capital:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label32: TLabel
                Left = 10
                Top = 45
                Width = 75
                Height = 13
                Caption = 'Inter'#233's Impreso:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label31: TLabel
                Left = 181
                Top = 45
                Width = 80
                Height = 13
                Caption = 'Total del Cr'#233'dito:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label30: TLabel
                Left = 226
                Top = 23
                Width = 35
                Height = 13
                Caption = 'Inter'#233's:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object CAPITAL: TEdit
                Left = 91
                Top = 17
                Width = 77
                Height = 22
                Color = 16511969
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
              end
              object INTERESES: TEdit
                Left = 91
                Top = 40
                Width = 77
                Height = 22
                Color = 16511969
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
              end
              object INTERTOT: TEdit
                Left = 267
                Top = 17
                Width = 77
                Height = 22
                Color = 16511969
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
              end
              object TOTAL1: TEdit
                Left = 269
                Top = 42
                Width = 77
                Height = 22
                Color = 16511969
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 3
              end
            end
            object grupo6: TJvgGroupBox
              Left = 14
              Top = 64
              Width = 204
              Height = 67
              Caption = 'Valores Aplicados'
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
              object Label33: TLabel
                Left = 32
                Top = 19
                Width = 56
                Height = 13
                Caption = 'Coeficiente:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label34: TLabel
                Left = 52
                Top = 40
                Width = 78
                Height = 13
                Caption = 'Inter'#233's Mensual:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object COEF: TEdit
                Left = 91
                Top = 13
                Width = 107
                Height = 22
                Color = 16511969
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
              end
              object INTERES: TEdit
                Left = 133
                Top = 36
                Width = 65
                Height = 22
                Color = 16511969
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
              end
            end
          end
        end
        object GBDatos: TJvgGroupBox
          Left = 5
          Top = 7
          Width = 224
          Height = 226
          Caption = '1) Forma de Pago y Precios'
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
          object Label2: TLabel
            Left = 2
            Top = 61
            Width = 82
            Height = 13
            Caption = 'Precio de Lista: $'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 11
            Top = 173
            Width = 88
            Height = 13
            Caption = 'Importe Anticipo: $'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label1: TLabel
            Left = 2
            Top = 32
            Width = 85
            Height = 13
            Caption = 'Precio Contado: $'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 7
            Top = 113
            Width = 52
            Height = 13
            Caption = 'Tipo Pago:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label35: TLabel
            Left = 60
            Top = 203
            Width = 33
            Height = 13
            Caption = 'Fecha:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label47: TLabel
            Left = 8
            Top = 89
            Width = 76
            Height = 13
            Caption = 'Porcetaje Desc.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object DPrecio: TEdit
            Left = 91
            Top = 51
            Width = 94
            Height = 26
            CharCase = ecUpperCase
            Color = clSilver
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            MaxLength = 15
            ParentFont = False
            TabOrder = 0
            Text = '00000.00'
            OnExit = DPrecioExit
            OnKeyPress = DPrecioKeyPress
          end
          object IMPORTEE: TEdit
            Left = 103
            Top = 163
            Width = 88
            Height = 26
            CharCase = ecUpperCase
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            MaxLength = 15
            ParentFont = False
            TabOrder = 1
            Text = '00000.00'
            OnExit = IMPORTEEExit
            OnKeyPress = IMPORTEEKeyPress
          end
          object tpopago: TComboBox
            Left = 4
            Top = 132
            Width = 219
            Height = 26
            CharCase = ecUpperCase
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ItemHeight = 18
            ItemIndex = 0
            ParentFont = False
            TabOrder = 2
            Text = 'CONTADO'
            OnExit = tpopagoExit
            OnKeyPress = tpopagoKeyPress
            Items.Strings = (
              'CONTADO'
              'FINANCIADO'
              'DONACION'
              'TRANSFERENCIAS'
              'CHEQUE'
              'TARJETA CREDITO'
              'FINANCIADO SIN INTERES'
              'CUENTA CORRIENTE')
          end
          object preciop: TEdit
            Left = 91
            Top = 21
            Width = 96
            Height = 26
            CharCase = ecUpperCase
            Color = clYellow
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            MaxLength = 15
            ParentFont = False
            TabOrder = 3
            Text = '00000.00'
            OnExit = preciopExit
            OnKeyPress = preciopKeyPress
          end
          object saldop: TEdit
            Left = 152
            Top = 81
            Width = 33
            Height = 26
            CharCase = ecUpperCase
            Color = clSilver
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            MaxLength = 15
            ParentFont = False
            TabOrder = 4
            Text = '00000.00'
            Visible = False
            OnExit = DPrecioExit
            OnKeyPress = DPrecioKeyPress
          end
          object FECHA: TJvDatePickerEdit
            Left = 104
            Top = 193
            Width = 105
            Height = 26
            AllowNoDate = True
            Checked = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
            OnExit = FECHAExit
            OnKeyPress = FECHAKeyPress
          end
          object Porcen: TComboBox
            Left = 90
            Top = 82
            Width = 53
            Height = 21
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 6
            Text = '5'
            Visible = False
            OnChange = PorcenChange
            OnExit = PorcenExit
            OnKeyPress = PorcenKeyPress
            Items.Strings = (
              '5'
              '3'
              '0')
          end
        end
        object grupo1: TJvgGroupBox
          Left = 232
          Top = 9
          Width = 569
          Height = 226
          TabOrder = 2
          Border.Inner = bvSpace
          Border.Outer = bvNone
          Border.Bold = False
          CaptionAlignment = fcaRight
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
          object Label12: TLabel
            Left = 17
            Top = 93
            Width = 134
            Height = 20
            Caption = 'Saldo a Pagar $:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label37: TLabel
            Left = 23
            Top = 173
            Width = 51
            Height = 13
            Caption = 'N'#176' Cuotas:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label38: TLabel
            Left = 16
            Top = 204
            Width = 58
            Height = 13
            Caption = 'Valor Cuota:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label36: TLabel
            Left = 246
            Top = 136
            Width = 87
            Height = 13
            Caption = 'Importe Solicitado:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object Label44: TLabel
            Left = 15
            Top = 117
            Width = 84
            Height = 13
            Caption = 'Tipo Financiacion'
          end
          object Label54: TLabel
            Left = 138
            Top = 160
            Width = 52
            Height = 13
            Caption = 'N'#186' Recibo:'
            Visible = False
          end
          object Saldo: TEdit
            Left = 159
            Top = 92
            Width = 69
            Height = 24
            CharCase = ecUpperCase
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            MaxLength = 15
            ParentFont = False
            TabOrder = 0
            Text = '00000.00'
            OnKeyPress = SaldoKeyPress
          end
          object VALCUOTA: TEdit
            Left = 82
            Top = 193
            Width = 101
            Height = 27
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            Text = '0'
            OnExit = VALCUOTAExit
            OnKeyPress = VALCUOTAKeyPress
          end
          object IMPORTE: TEdit
            Left = 339
            Top = 127
            Width = 69
            Height = 24
            CharCase = ecUpperCase
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            MaxLength = 15
            ParentFont = False
            TabOrder = 2
            Text = '00000.00'
            Visible = False
            OnKeyPress = IMPORTEKeyPress
          end
          object Edit2: TEdit
            Left = 81
            Top = 160
            Width = 44
            Height = 28
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
            Text = '0'
            OnChange = Edit2Change
            OnExit = Edit2Exit
            OnKeyPress = Edit2KeyPress
          end
          object CODIGO: TComboBox
            Left = 20
            Top = 134
            Width = 207
            Height = 23
            CharCase = ecUpperCase
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ItemHeight = 15
            ParentFont = False
            TabOrder = 4
            Items.Strings = (
              'CONTADO'
              'FINANCIADO CON INTERESES'
              'FINANCIADO SIN INTERESES')
          end
          object grupoTarje: TGroupBox
            Left = 237
            Top = 86
            Width = 323
            Height = 139
            Caption = 'Pagos con Tarjetas de Cr'#233'ditos '
            TabOrder = 5
            object Label18: TLabel
              Left = 25
              Top = 20
              Width = 56
              Height = 13
              Caption = 'Seleccione:'
            end
            object Label19: TLabel
              Left = 134
              Top = 70
              Width = 63
              Height = 13
              Caption = 'N'#176' Comprob.:'
            end
            object Label22: TLabel
              Left = 14
              Top = 68
              Width = 51
              Height = 13
              Caption = 'N'#176' Cuotas:'
            end
            object Label40: TLabel
              Left = 29
              Top = 95
              Width = 33
              Height = 13
              Caption = 'Fecha:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label42: TLabel
              Left = 23
              Top = 118
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
            object Label46: TLabel
              Left = 28
              Top = 44
              Width = 32
              Height = 13
              Caption = 'Titular:'
            end
            object TARJETA: TComboBox
              Left = 88
              Top = 14
              Width = 217
              Height = 21
              CharCase = ecUpperCase
              ItemHeight = 0
              TabOrder = 0
              Text = 'NARANJA ZETA'
              OnExit = TARJETAExit
              OnKeyPress = TARJETAKeyPress
            end
            object NROCB: TJvValidateEdit
              Left = 202
              Top = 62
              Width = 85
              Height = 21
              CriticalPoints.MaxValueIncluded = False
              CriticalPoints.MinValueIncluded = False
              EditText = '0000'
              MaxLength = 8
              TabOrder = 1
              OnExit = NROCBExit
              OnKeyPress = NROCBKeyPress
            end
            object NroCuota: TEdit
              Left = 68
              Top = 62
              Width = 49
              Height = 21
              TabOrder = 2
              Text = '00'
              OnExit = NroCuotaExit
              OnKeyPress = NroCuotaKeyPress
            end
            object ftarje: TMaskEdit
              Left = 68
              Top = 87
              Width = 67
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
              OnExit = ftarjeExit
              OnKeyPress = ftarjeKeyPress
            end
            object Edit3: TEdit
              Left = 68
              Top = 112
              Width = 63
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              MaxLength = 8
              ParentFont = False
              TabOrder = 4
              Text = '0000.00'
              OnExit = Edit3Exit
              OnKeyPress = Edit3KeyPress
            end
            object tittarje: TEdit
              Left = 68
              Top = 38
              Width = 235
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 5
              OnKeyPress = tittarjeKeyPress
            end
          end
          object GrupoCheq: TGroupBox
            Left = 235
            Top = 86
            Width = 332
            Height = 139
            Caption = 'Pagos con Cheques'
            TabOrder = 6
            object Label39: TLabel
              Left = 13
              Top = 21
              Width = 34
              Height = 13
              Caption = 'Banco:'
            end
            object LB12: TLabel
              Left = 22
              Top = 69
              Width = 55
              Height = 13
              Caption = 'N'#186' Cheque:'
            end
            object LB3: TLabel
              Left = 111
              Top = 63
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
            object LB5: TLabel
              Left = 5
              Top = 95
              Width = 73
              Height = 13
              Caption = 'Fecha Cheque:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object LB7: TLabel
              Left = 39
              Top = 116
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
            object Label41: TLabel
              Left = 155
              Top = 93
              Width = 64
              Height = 13
              Caption = 'Fecha Cobro:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label45: TLabel
              Left = 18
              Top = 46
              Width = 32
              Height = 13
              Caption = 'Titular:'
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
            object E1: TEdit
              Left = 81
              Top = 62
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
              OnKeyPress = E1KeyPress
            end
            object E2: TEdit
              Left = 126
              Top = 62
              Width = 86
              Height = 21
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 8
              ParentFont = False
              TabOrder = 2
              Text = '000000000000'
              OnExit = E2Exit
              OnKeyPress = E2KeyPress
            end
            object Fcheque: TMaskEdit
              Left = 80
              Top = 86
              Width = 67
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
              OnExit = FchequeExit
              OnKeyPress = FchequeKeyPress
            end
            object E5: TEdit
              Left = 80
              Top = 112
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
              TabOrder = 4
              Text = '0000.00'
              OnExit = E5Exit
              OnKeyPress = E5KeyPress
            end
            object fpagocheque: TMaskEdit
              Left = 222
              Top = 84
              Width = 67
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
              OnExit = fpagochequeExit
              OnKeyPress = fpagochequeKeyPress
            end
            object titcheq: TEdit
              Left = 54
              Top = 38
              Width = 254
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 6
              OnExit = titcheqExit
              OnKeyPress = titcheqKeyPress
            end
          end
          object recibonro: TEdit
            Left = 154
            Top = 160
            Width = 71
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 7
            Visible = False
            OnKeyPress = recibonroKeyPress
          end
          object GroupBox4: TGroupBox
            Left = 2
            Top = 16
            Width = 565
            Height = 69
            Align = alTop
            Caption = 'Datos Parcela Selecccionada'
            TabOrder = 8
            object Label23: TLabel
              Left = 27
              Top = 20
              Width = 29
              Height = 13
              Caption = 'Titular'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label24: TLabel
              Left = 26
              Top = 49
              Width = 33
              Height = 13
              Caption = 'Precio:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label25: TLabel
              Left = 448
              Top = 47
              Width = 27
              Height = 13
              Caption = 'Color:'
            end
            object Label26: TLabel
              Left = 163
              Top = 49
              Width = 66
              Height = 13
              Caption = 'Valor % Desc.'
            end
            object Label28: TLabel
              Left = 470
              Top = 16
              Width = 12
              Height = 13
              Caption = 'Id:'
            end
            object Label58: TLabel
              Left = 323
              Top = 52
              Width = 44
              Height = 13
              Caption = 'Caja Nro.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object D16: TDBEdit
              Left = 61
              Top = 13
              Width = 389
              Height = 24
              Color = clYellow
              DataSource = DataSource2
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
            end
            object D15: TDBEdit
              Left = 61
              Top = 39
              Width = 99
              Height = 27
              Color = 14277612
              DataSource = DataSource3
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
            end
            object Panel2: TJvPanel
              Left = 482
              Top = 39
              Width = 71
              Height = 25
              HotTrackFont.Charset = DEFAULT_CHARSET
              HotTrackFont.Color = clWindowText
              HotTrackFont.Height = -11
              HotTrackFont.Name = 'MS Sans Serif'
              HotTrackFont.Style = []
              FlatBorderColor = clBlack
              BevelInner = bvRaised
              BevelOuter = bvSpace
              BorderStyle = bsSingle
              Color = clHotLight
              TabOrder = 2
            end
            object D17: TDBEdit
              Left = 236
              Top = 39
              Width = 67
              Height = 27
              Color = 14277612
              DataSource = DataSource3
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
            end
            object IDVenta: TDBEdit
              Left = 492
              Top = 12
              Width = 59
              Height = 21
              Color = 14277612
              DataSource = DataSource1
              ReadOnly = True
              TabOrder = 4
            end
            object D20: TDBEdit
              Left = 372
              Top = 40
              Width = 57
              Height = 27
              Color = 14277612
              DataSource = DataSource1
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 5
            end
            object Edit13: TEdit
              Left = 456
              Top = 14
              Width = 105
              Height = 21
              TabOrder = 6
              Text = 'Edit13'
              Visible = False
            end
          end
        end
        object GroupBox5: TGroupBox
          Left = 2
          Top = 243
          Width = 801
          Height = 54
          Align = alBottom
          TabOrder = 3
          DesignSize = (
            801
            54)
          object Label52: TLabel
            Left = 1
            Top = 35
            Width = 74
            Height = 13
            Caption = 'Observaciones:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object OBSERV: TEdit
            Left = 79
            Top = 26
            Width = 714
            Height = 22
            Anchors = [akLeft, akTop, akRight]
            CharCase = ecUpperCase
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            MaxLength = 250
            ParentFont = False
            TabOrder = 0
            OnKeyPress = OBSERVKeyPress
          end
          object Coninhu: TCheckBox
            Left = 4
            Top = 10
            Width = 109
            Height = 17
            Caption = 'Con Inhumado?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
        end
      end
    end
    object TabSheet10: TTabSheet
      Caption = 'Impresion de Formularios'
      ImageIndex = 6
      object JvgGroupBox4: TJvgGroupBox
        Left = 0
        Top = 0
        Width = 805
        Height = 485
        Align = alClient
        Caption = 'Impresiones de Formularios'
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
        object Image1: TImage
          Left = 346
          Top = 238
          Width = 105
          Height = 35
        end
        object GroupBox7: TGroupBox
          Left = 2
          Top = 354
          Width = 801
          Height = 129
          Align = alBottom
          Caption = 'Colores de Impresiones'
          TabOrder = 0
          object GroupBox8: TGroupBox
            Left = 6
            Top = 14
            Width = 474
            Height = 105
            Caption = 'GroupBox8'
            TabOrder = 0
            object Label68: TLabel
              Left = 93
              Top = 50
              Width = 49
              Height = 13
              Caption = '2'#186' HOJA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label69: TLabel
              Left = 92
              Top = 20
              Width = 49
              Height = 13
              Caption = '1'#186' HOJA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object JvSIMConnector1: TJvSIMConnector
              Left = 20
              Top = 18
              Width = 59
              Height = 43
              FromGate = 0
              FromPoint.X = 0
              FromPoint.Y = 0
              ToGate = 0
              ToPoint.X = 0
              ToPoint.Y = 0
            end
            object JvSIMConnector2: TJvSIMConnector
              Left = 20
              Top = 18
              Width = 59
              Height = 9
              FromGate = 0
              FromPoint.X = 0
              FromPoint.Y = 0
              ToGate = 0
              ToPoint.X = 0
              ToPoint.Y = 0
            end
            object Edit4: TEdit
              Left = 146
              Top = 42
              Width = 71
              Height = 21
              Color = clYellow
              ReadOnly = True
              TabOrder = 0
            end
            object Edit5: TEdit
              Left = 146
              Top = 14
              Width = 71
              Height = 21
              Color = clWhite
              ReadOnly = True
              TabOrder = 1
            end
          end
          object GroupBox9: TGroupBox
            Left = 11
            Top = 14
            Width = 469
            Height = 105
            Caption = 'GroupBox8'
            TabOrder = 1
            object Label64: TLabel
              Left = 87
              Top = 48
              Width = 49
              Height = 13
              Caption = '2'#186' HOJA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label65: TLabel
              Left = 86
              Top = 22
              Width = 49
              Height = 13
              Caption = '1'#186' HOJA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label66: TLabel
              Left = 88
              Top = 76
              Width = 49
              Height = 13
              Caption = '3'#186' HOJA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object JvSIMConnector6: TJvSIMConnector
              Left = 14
              Top = 22
              Width = 59
              Height = 65
              FromGate = 0
              FromPoint.X = 0
              FromPoint.Y = 0
              ToGate = 0
              ToPoint.X = 0
              ToPoint.Y = 0
            end
            object JvSIMConnector7: TJvSIMConnector
              Left = 14
              Top = 22
              Width = 59
              Height = 37
              FromGate = 0
              FromPoint.X = 0
              FromPoint.Y = 0
              ToGate = 0
              ToPoint.X = 0
              ToPoint.Y = 0
            end
            object JvSIMConnector8: TJvSIMConnector
              Left = 14
              Top = 22
              Width = 59
              Height = 9
              FromGate = 0
              FromPoint.X = 0
              FromPoint.Y = 0
              ToGate = 0
              ToPoint.X = 0
              ToPoint.Y = 0
            end
            object Edit8: TEdit
              Left = 168
              Top = 12
              Width = 71
              Height = 21
              Color = clWhite
              ReadOnly = True
              TabOrder = 0
            end
            object Edit9: TEdit
              Left = 168
              Top = 44
              Width = 71
              Height = 21
              Color = clYellow
              ReadOnly = True
              TabOrder = 1
            end
            object Edit6: TEdit
              Left = 168
              Top = 74
              Width = 71
              Height = 21
              Color = clAqua
              ReadOnly = True
              TabOrder = 2
            end
          end
          object GroupBox10: TGroupBox
            Left = 17
            Top = 14
            Width = 463
            Height = 105
            Caption = 'GroupBox8'
            TabOrder = 2
            object Label61: TLabel
              Left = 86
              Top = 60
              Width = 49
              Height = 13
              Caption = '2'#186' HOJA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label62: TLabel
              Left = 86
              Top = 24
              Width = 49
              Height = 13
              Caption = '1'#186' HOJA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object JvSIMConnector5: TJvSIMConnector
              Left = 20
              Top = 24
              Width = 59
              Height = 46
              FromGate = 0
              FromPoint.X = 0
              FromPoint.Y = 0
              ToGate = 0
              ToPoint.X = 0
              ToPoint.Y = 0
            end
            object JvSIMConnector9: TJvSIMConnector
              Left = 20
              Top = 24
              Width = 59
              Height = 9
              FromGate = 0
              FromPoint.X = 0
              FromPoint.Y = 0
              ToGate = 0
              ToPoint.X = 0
              ToPoint.Y = 0
            end
            object Edit7: TEdit
              Left = 140
              Top = 18
              Width = 71
              Height = 21
              Color = clFuchsia
              ReadOnly = True
              TabOrder = 0
            end
            object Edit10: TEdit
              Left = 140
              Top = 56
              Width = 71
              Height = 21
              Color = clWhite
              ReadOnly = True
              TabOrder = 1
            end
          end
          object GroupBox11: TGroupBox
            Left = 23
            Top = 14
            Width = 457
            Height = 105
            Caption = 'GroupBox8'
            TabOrder = 3
            object Label59: TLabel
              Left = 88
              Top = 24
              Width = 49
              Height = 13
              Caption = '1'#186' HOJA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label60: TLabel
              Left = 88
              Top = 60
              Width = 49
              Height = 13
              Caption = '2'#186' HOJA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object JvSIMConnector3: TJvSIMConnector
              Left = 20
              Top = 24
              Width = 59
              Height = 9
              FromGate = 0
              FromPoint.X = 0
              FromPoint.Y = 0
              ToGate = 0
              ToPoint.X = 0
              ToPoint.Y = 0
            end
            object JvSIMConnector4: TJvSIMConnector
              Left = 20
              Top = 24
              Width = 59
              Height = 46
              FromGate = 0
              FromPoint.X = 0
              FromPoint.Y = 0
              ToGate = 0
              ToPoint.X = 0
              ToPoint.Y = 0
            end
            object Edit12: TEdit
              Left = 140
              Top = 18
              Width = 71
              Height = 21
              Color = clWhite
              ReadOnly = True
              TabOrder = 0
            end
            object Edit11: TEdit
              Left = 140
              Top = 54
              Width = 71
              Height = 21
              Color = clLime
              ReadOnly = True
              TabOrder = 1
            end
          end
          object GroupBox2: TGroupBox
            Left = 508
            Top = 84
            Width = 261
            Height = 45
            Caption = 'Opciones Modificadas'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            object c4: TCheckBox
              Left = 91
              Top = 18
              Width = 65
              Height = 17
              Caption = 'Titulares'
              TabOrder = 0
            end
            object C6: TCheckBox
              Left = 170
              Top = 17
              Width = 81
              Height = 17
              Caption = 'Modificaci'#243'n'
              TabOrder = 1
            end
            object CE: TCheckBox
              Left = 8
              Top = 18
              Width = 61
              Height = 17
              Caption = 'Entrega'
              TabOrder = 2
            end
          end
        end
        object GrupoPago: TGroupBox
          Left = 2
          Top = 16
          Width = 801
          Height = 75
          Align = alTop
          Caption = 'Datos de la Factura de la Venta'
          TabOrder = 2
          object Label67: TLabel
            Left = 38
            Top = 30
            Width = 90
            Height = 13
            Caption = 'Tipo Comprobante:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label70: TLabel
            Left = 64
            Top = 52
            Width = 62
            Height = 13
            Caption = 'Punto Venta:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label71: TLabel
            Left = 250
            Top = 55
            Width = 56
            Height = 13
            Caption = 'Nro Factura'
          end
          object TPOTALON: TComboBox
            Left = 136
            Top = 21
            Width = 174
            Height = 24
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ItemHeight = 0
            ParentFont = False
            TabOrder = 0
            OnExit = TPOTALONExit
            OnKeyPress = TPOTALONKeyPress
          end
          object PV: TComboBox
            Left = 136
            Top = 49
            Width = 50
            Height = 21
            CharCase = ecUpperCase
            ItemHeight = 0
            TabOrder = 1
            Text = 
              '                                                                ' +
              '                                                                ' +
              '                         '
            OnExit = PVExit
            OnKeyPress = PVKeyPress
          end
          object actu: TBitBtn
            Left = 422
            Top = 26
            Width = 127
            Height = 41
            Caption = 'Actualizar '#13#10'Comprobante'
            TabOrder = 2
            OnClick = actuClick
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
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000494949FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF0000DBDB0049494949FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF0000DBDBFFDB00494949494949FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF0000DBDBFFFFFFDB0049494949494949FFFFFFFFFFFFFF
              FFFFFFFFFFFFFF0000DBDBFFFFB6B6FFDB0049494949494949FFFFFFFFFFFFFF
              FFFFFFFFFF0000DBDBFFFFB6B6FFFFFFDB00494949494949FFFFFFFFFFFFFFFF
              FFFFFF0000DBDBFFFFB6B6FFFFFFFFFFDB0049494949FFFFFFFFFFFFFFFFFFFF
              FF0000DBDBFFFFFFFFFFFFFFFFFFFFFFDB004949FFFFFFFFFFFFFFFFFFFFFF00
              00DBDBFFFFFFFFFFFFFFFFFFFFFFFFFFDB00FFFFFFFFFFFFFFFFFFFFFF0000DB
              DBFFFFFFFFFFFFFFFFFFFFFFFFDBDBDBDB00FFFFFFFFFFFFFFFFFF0000DBDBB6
              628EFFFFFFFFFFFFFFFFFFDBDBDBDBDBDB00FFFFFFFFFFFFFFFF00DBDBDB6662
              66DBFFFFFFFFFFFFDBDBDBDBDBDBDBDBDB00FFFFFFFFFFFFFFFF00DB668222DB
              DBFFFFFFFFFFFFFFDBDBDBDB8F8EDBDBDB00FFFFFFFFFFFFFFFF00DB22DB8266
              62DBFFFFFFFFFFFFDBDB8E8EFFFFFFFFDB00FFFFFFFFFFFFFFFF00DB66DB2266
              6E8EFFFFFFFFDBDB8E8EDBDBFFFFFFFFDB00FFFFFFFFFFFFFFFF00DB66DB2266
              668EFFFFDBDB8E8FDBDBDBDBFFFFFFFFDB00FFFFFFFFFFFFFFFF00DBFFFF8E82
              2266FFFF8E8EFFFFFFDBDBFFFFFFFFFFDB00FFFFFFFFFFFFFFFF00DBFFFF22DB
              DB66FFFFFFFFFFFFFFFFFFFFFFFFFFFFDB00FFFFFFFFFFFFFFFF00DBFFDB62DB
              DB62FFFFFFFFFFFFFFFFFFFFFFFFFFFFDB00FFFFFFFFFFFFFFFF00DBFFFF6621
              666DFF8FFFFFFFFFFFFFFFFFFFFFFFDBDB00FFFFFFFFFFFFFFFF00DBDB626685
              CCECDBDBFFFFFFFFFFFFFFFFFFDBDBDBB600FFFFFFFFFFFFFFFF00D366CCECEC
              ECECDB8EFFFFFFFFFFFFFFDBDBDBB60000FFFFFFFFFFFFFFFFFF00DBECECECEC
              DBECDBDBFFFFFFFFFFDBDBDBB60000FFFFFFFFFFFFFFFFFFFFFF00DBECDBF0F1
              FBF1DB8FFFFFFFDBDBDBB60000FFFFFFFFFFFFFFFFFFFFFFFFFF00DBECFBF1F1
              F1ECDBDBFFDBDBDBB60000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00DBFBFFFAEC
              ECFADBDBDBDBB60000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00DBFFFFF1F0
              F0F1DBDBB60000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00DBFFFFF1DB
              DBDBB60000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00DBFFDBDBDB
              B60000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00DBDBDBB600
              00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00DBB60000FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          end
          object elcomprob: TEdit
            Left = 316
            Top = 48
            Width = 97
            Height = 21
            MaxLength = 8
            TabOrder = 3
            OnChange = elcomprobChange
            OnExit = elcomprobExit
            OnKeyPress = elcomprobKeyPress
          end
        end
        object GrupoImp: TGroupBox
          Left = 2
          Top = 91
          Width = 801
          Height = 263
          Align = alClient
          Caption = 'Impresiones'
          TabOrder = 3
          DesignSize = (
            801
            263)
          object ImprimirActa: TJvBitBtn
            Left = 541
            Top = 24
            Width = 126
            Height = 44
            Anchors = [akTop, akRight]
            Caption = 'Solicitud Adq. '#13#10'de Titulo'
            Enabled = False
            TabOrder = 0
            OnClick = ImprimirActaClick
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
          object ImprimirCesion: TJvBitBtn
            Left = 671
            Top = 23
            Width = 126
            Height = 44
            Anchors = [akTop, akRight]
            Caption = 'Cesi'#243'n y Transf.'#13#10'de Acciones'
            Enabled = False
            TabOrder = 1
            OnClick = ImprimirCesionClick
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
          object ImprimirClausular: TJvBitBtn
            Left = 537
            Top = 77
            Width = 126
            Height = 42
            Anchors = [akTop, akRight]
            Caption = 'Cl'#225'usulas'#13#10'Particulares'
            Enabled = False
            TabOrder = 2
            OnClick = ImprimirClausularClick
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
              FF0080C0FF00FFC0FF0000FFFF0040FFFF0080FFFF00FFFFFF00FFFFFF494949
              242424242424494949494949494949242424242424494949FFFFFFFF49DBDBDB
              49494949494949DBDBDBDBDBDBDB49494949494949DBDBDB49FFFFFF49DBDBDB
              DBDBDBDBDBDBB66D6D6D6D6D6D6DB6DBDBDBDBDBDBDBDBDB49FFFFFF49DBDBDB
              DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB49FFFFFF49B6B6B6
              B600000000000000000000000000000000000000B6B6B6B649FFFF496D6D6D6D
              6D494949494949494949494949494949494949496D6D6D6D6D49FF49DBDBDBDB
              DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB49FF49DBDBDBDB
              DBDBDBDBDBDBDBDB6DDB6DDB6DDBDBDBDBDBDBDBDBDBDBDBDB49FF49DBDBDBDB
              DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB49FF49DBDBDBDB
              DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB49FF49DBDBDBDB
              DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB49FF49DBDBDBDB
              DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB49FF49DBDBDBDB
              DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB49FF49DBDBDBDB
              DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB49FF496D6D6D6D
              6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D49FF49DBDBDBDB
              DBDBDBDBDBDBDBDBDBDBECDBDBDBDBDBDBDBDBDBDBDBDBDBDB49FF49DBDBDBDB
              DBDBDBDBDBDBB6DBDBDB14DBDBDBDBDBDBDBDBDBDBDBDBDBDB49FF49DBDBDBDB
              DBDBDBDBDBDBDBDBB6494949B6DBDBDBDBDBDBDBDBDBDBDBDB49FFFF49494949
              494949494949494949DB49DB49494949494949494949494949FFFFFFFFFFFF49
              49DB49DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB499249FFFFFFFFFFFFFFFFFF49
              6DDB49FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF49DB49FFFFFFFFFFFFFFFFFF49
              6DDB49FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF49DB49FFFFFFFFFFFFFFFFFF49
              6DDB49FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF49DB49FFFFFFFFFFFFFFFFFFFF
              49DB49FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4949FFFFFFFFFFFFFFFFFFFFFF
              FF4949FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF49FFFFFFFFFFFFFFFFFFFFFFFF
              FFFF49FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF49FFFFFFFFFFFFFFFFFFFFFFFF
              FFFF49FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF49FFFFFFFFFFFFFFFFFFFFFFFF
              FFFF49FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF49FFFFFFFFFFFFFFFFFFFFFFFF
              FFFF49FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF49FFFFFFFFFFFFFFFFFFFFFFFF
              FFFF49FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF49FFFFFFFFFFFFFFFFFFFFFFFF
              FFFF49FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF49FFFFFFFFFFFFFFFFFFFFFFFF
              FFFF494949494949494949494949494949494949FFFFFFFFFFFF}
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'MS Sans Serif'
            HotTrackFont.Style = []
          end
          object ImprimirGarantia: TJvBitBtn
            Left = 671
            Top = 76
            Width = 126
            Height = 42
            Anchors = [akTop, akRight]
            Caption = 'Constituci'#243'n de'#13#10'Garant'#237'a'
            Enabled = False
            TabOrder = 3
            OnClick = ImprimirGarantiaClick
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
          object ImprimeReglamento: TJvBitBtn
            Left = 537
            Top = 132
            Width = 126
            Height = 41
            Anchors = [akTop, akRight]
            Caption = 'Reglamento '#13#10'Interno'
            Enabled = False
            TabOrder = 4
            OnClick = ImprimeReglamentoClick
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
          object ImprimirCarta: TJvBitBtn
            Left = 672
            Top = 130
            Width = 126
            Height = 41
            Anchors = [akTop, akRight]
            Caption = 'Carta Cesi'#243'n '#13#10'de Acci'#243'n'
            Enabled = False
            TabOrder = 5
            OnClick = ImprimirCartaClick
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
          object grillaformu: TJvStringGrid
            Left = 2
            Top = 15
            Width = 492
            Height = 246
            Align = alLeft
            ColCount = 4
            DefaultColWidth = 55
            DefaultRowHeight = 20
            FixedCols = 0
            RowCount = 7
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
            ScrollBars = ssHorizontal
            TabOrder = 6
            OnClick = grillaformuClick
            Alignment = taLeftJustify
            FixedFont.Charset = ANSI_CHARSET
            FixedFont.Color = clRed
            FixedFont.Height = -11
            FixedFont.Name = 'Arial Narrow'
            FixedFont.Style = [fsBold]
            ColWidths = (
              76
              296
              73
              68)
          end
        end
        object GroupBox12: TGroupBox
          Left = 180
          Top = 198
          Width = 411
          Height = 95
          Caption = 'Reglamento Interno'
          TabOrder = 1
          DesignSize = (
            411
            95)
          object JvBitBtn1: TJvBitBtn
            Left = 20
            Top = 38
            Width = 159
            Height = 47
            Anchors = [akTop, akRight]
            Caption = 'IMPRIMIR 1'#186' CARILLA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = JvBitBtn1Click
            NumGlyphs = 2
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -13
            HotTrackFont.Name = 'Arial'
            HotTrackFont.Style = []
          end
          object JvBitBtn2: TJvBitBtn
            Left = 188
            Top = 37
            Width = 168
            Height = 48
            Anchors = [akTop, akRight]
            Caption = 'IMPRIMIR 2'#186' CARILLA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = JvBitBtn2Click
            NumGlyphs = 2
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -13
            HotTrackFont.Name = 'Arial'
            HotTrackFont.Style = []
          end
          object JvBitBtn3: TJvBitBtn
            Left = 374
            Top = 10
            Width = 29
            Height = 25
            Anchors = [akTop, akRight]
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -8
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
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
              FFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF00E000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00E0E000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              00E0E0E000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
              E0E0E0E000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00E0
              E0E0E0E000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000E0E0
              E0E0E0E00000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFF00E0E0
              E0E0E0E00092929292929200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00E0E0
              E0E0E0E00092929292929200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00E0E0
              E0E0E0E00092929292929200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00E0E0
              E0E0E0000092929292929200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00E0E0
              E0E0E0000092929292929200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00E0E0
              E0E0E0E00092929292929200FFFFFFFFFFFF02FFFFFFFFFFFFFFFFFFFF00E0E0
              E0E0E0E00092929292929200FFFFFFFFFF0202FFFFFFFFFFFFFFFFFFFF00E0E0
              E0E0E0E00092929292929200FFFFFFFF02020202020202FFFFFFFFFFFF00E0E0
              E0E0E0E00092929292929200FFFFFF0202020202020202FFFFFFFFFFFF00E0E0
              E0E0E0E00092929292929200FFFF020202020202020202FFFFFFFFFFFF00E0E0
              E0E0E0E00092929292929200FFFFFF0202020202020202FFFFFFFFFFFF00E0E0
              E0E0E0E00092929292929200FFFFFFFF02020202020202FFFFFFFFFFFF00E0E0
              E0E0E0E00092929292929200FFFFFFFFFF0202FFFFFFFFFFFFFFFFFFFF00E0E0
              E0E0E0E00092929292929200FFFFFFFFFFFF02FFFFFFFFFFFFFFFFFFFF00E0E0
              E0E0E0009292929292929200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00E0E0
              E0E000929292929292929200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00E0E0
              E00092929292929292929200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00E0E0
              009292929292929292929200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00E000
              929292929292929292929200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000092
              929292929292929292929200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
              000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
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
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 813
    Height = 36
    ButtonHeight = 29
    Caption = 'ToolBar1'
    Color = clGradientInactiveCaption
    EdgeBorders = [ebLeft, ebTop, ebBottom]
    EdgeInner = esLowered
    ParentColor = False
    TabOrder = 2
    DesignSize = (
      811
      32)
    object ToolButton4: TToolButton
      Left = 0
      Top = 2
      Width = 503
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object EXPORTAR: TJvBitBtn
      Left = 503
      Top = 2
      Width = 62
      Height = 29
      Anchors = [akTop, akRight]
      Caption = 'Exportar '#13#10'a Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = EXPORTARClick
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
      HotTrackFont.Height = -8
      HotTrackFont.Name = 'Arial'
      HotTrackFont.Style = []
    end
    object ToolButton5: TToolButton
      Left = 565
      Top = 2
      Width = 8
      Caption = 'ToolButton5'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object bGuardar: TJvBitBtn
      Left = 573
      Top = 2
      Width = 74
      Height = 29
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
      OnClick = bGuardarClick
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
      Left = 647
      Top = 2
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object BORRA: TJvBitBtn
      Left = 655
      Top = 2
      Width = 62
      Height = 29
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
    object ToolButton3: TToolButton
      Left = 717
      Top = 2
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object bSalir: TJvBitBtn
      Left = 725
      Top = 2
      Width = 76
      Height = 29
      Anchors = [akTop, akRight]
      Caption = 'Salir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = bSalirClick
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
    Left = 10
    Top = 4
  end
  object DataSource2: TDataSource
    Left = 44
    Top = 4
  end
  object DataSource3: TDataSource
    Left = 80
    Top = 4
  end
  object RvS: TRvSystem
    TitleSetup = 'Conf. Impres.'
    TitleStatus = 'Estado del Reporte'
    TitlePreview = 'Imagen Previa'
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.MarginPercent = 10.000000000000000000
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPreview.ZoomInc = 50
    SystemPrinter.Copies = 2
    SystemPrinter.Orientation = poDefault
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.Units = unMM
    SystemPrinter.UnitsFactor = 25.400000000000000000
    OnPrint = RvSPrint
    Left = 608
    Top = 88
  end
  object DataSource4: TDataSource
    Left = 724
    Top = 330
  end
  object PopupMenu1: TPopupMenu
    Left = 668
    Top = 332
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
    Left = 552
    Top = 20
  end
  object RvD: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    DefaultDest = rdPrinter
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.Units = unMM
    SystemPrinter.UnitsFactor = 25.400000000000000000
    OnPrint = RvDPrint
    Left = 590
    Top = 20
  end
  object RvRenderPDF1: TRvRenderPDF
    DisplayName = 'Adobe Acrobat (PDF)'
    FileExtension = '*.pdf'
    EmbedFonts = False
    ImageQuality = 90
    MetafileDPI = 300
    FontEncoding = feWinAnsiEncoding
    DocInfo.Creator = 'Rave (http://www.nevrona.com/rave)'
    DocInfo.Producer = 'Nevrona Designs'
    Left = 638
    Top = 19
  end
  object RvSCarta: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.Orientation = poDefault
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.Units = unMM
    SystemPrinter.UnitsFactor = 25.400000000000000000
    OnPrint = RvSCartaPrint
    Left = 742
    Top = 181
  end
end

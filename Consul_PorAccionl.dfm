object Consul_GralXAccion: TConsul_GralXAccion
  Left = 250
  Top = 64
  AutoScroll = False
  Caption = 'Consulta de General por Acciones'
  ClientHeight = 562
  ClientWidth = 818
  Color = 14801370
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
    Left = 511
    Top = 51
    Width = 153
    Height = 89
    Proportional = True
  end
  object todos: TRichEdit
    Left = 10
    Top = 172
    Width = 751
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
  object Barra1: TStatusBar
    Left = 0
    Top = 543
    Width = 818
    Height = 19
    Panels = <
      item
        Width = 300
      end
      item
        Width = 50
      end>
  end
  object PC1: TJvgPageControl
    Left = 0
    Top = 33
    Width = 818
    Height = 510
    ActivePage = TabSheet1
    Align = alClient
    DockSite = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Images = ImageList1
    TabOrder = 0
    TabStop = False
    OnChange = PC1Change
    TabStyle.Borders = [fsdLeft, fsdTop, fsdRight, fsdBottom]
    TabStyle.BevelInner = bvRaised
    TabStyle.BevelOuter = bvRaised
    TabStyle.Bold = True
    TabStyle.BackgrColor = 14801370
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
    TabSelectedStyle.Bold = True
    TabSelectedStyle.BackgrColor = clBtnHighlight
    TabSelectedStyle.Font.Charset = DEFAULT_CHARSET
    TabSelectedStyle.Font.Color = clBtnText
    TabSelectedStyle.Font.Height = -11
    TabSelectedStyle.Font.Name = 'Arial'
    TabSelectedStyle.Font.Style = []
    TabSelectedStyle.CaptionHAlign = fhaCenter
    TabSelectedStyle.Gradient.Active = False
    TabSelectedStyle.Gradient.Orientation = fgdHorizontal
    Wallpaper.FillCaptionBakgr = True
    Wallpaper.FillClient = True
    Options = [ftoAutoFontDirection, ftoExcludeGlyphs]
    object TabSheet1: TTabSheet
      Caption = 'B'#250'squedas'
      ImageIndex = 1
      DesignSize = (
        810
        481)
      object Bevel2: TBevel
        Left = 8
        Top = 2
        Width = 667
        Height = 92
      end
      object LB1: TLabel
        Left = 188
        Top = 12
        Width = 89
        Height = 13
        Caption = 'Ingrese N'#176' Acci'#243'n:'
      end
      object Label24: TLabel
        Left = 40
        Top = 78
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
      object Label25: TLabel
        Left = 168
        Top = 76
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
      object Label31: TLabel
        Left = 436
        Top = 44
        Width = 119
        Height = 13
        Caption = 'PERIODO DE CALCULO'
      end
      object DBGrid1: TJvDBGrid
        Left = 2
        Top = 96
        Width = 808
        Height = 64
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = DataSource0
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
        Visible = False
        OnCellClick = DBGrid1CellClick
        AlternateRowColor = clGradientInactiveCaption
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 18
        TitleRowHeight = 19
      end
      object RB5: TRadioButton
        Left = 91
        Top = 49
        Width = 75
        Height = 17
        Caption = 'Por Acta'
        TabOrder = 1
        Visible = False
        OnClick = RB2Click
      end
      object ODNI: TEdit
        Left = 186
        Top = 27
        Width = 125
        Height = 28
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 11
        ParentFont = False
        TabOrder = 2
        Text = '00000000'
        OnKeyPress = ODNIKeyPress
      end
      object ONOMB: TEdit
        Left = 186
        Top = 30
        Width = 187
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 25
        TabOrder = 3
        Visible = False
        OnKeyPress = ONOMBKeyPress
      end
      object Busca: TJvBitBtn
        Left = 686
        Top = 46
        Width = 109
        Height = 47
        Caption = 'BUSCAR'
        TabOrder = 4
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
      object RB3: TRadioButton
        Left = 12
        Top = 30
        Width = 75
        Height = 17
        Caption = 'Por Acci'#243'n'
        Checked = True
        TabOrder = 5
        TabStop = True
        OnClick = RB2Click
      end
      object RB7: TRadioButton
        Left = 11
        Top = 8
        Width = 156
        Height = 17
        Caption = 'Por Sector y Parcela'
        TabOrder = 6
        Visible = False
        OnClick = RB2Click
      end
      object RB4: TRadioButton
        Left = 92
        Top = 7
        Width = 78
        Height = 17
        Caption = 'Por Sector'
        TabOrder = 7
        Visible = False
        OnClick = RB2Click
      end
      object GroupBox8: TGroupBox
        Left = 0
        Top = 168
        Width = 810
        Height = 313
        Align = alBottom
        Caption = 'Detalle General de Deudas de la Accion Seleccionada'
        TabOrder = 8
        object Label20: TLabel
          Left = 80
          Top = 100
          Width = 105
          Height = 20
          Caption = 'Saldo Venta:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label21: TLabel
          Left = 16
          Top = 136
          Width = 175
          Height = 20
          Caption = 'Saldo Mantenimiento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label22: TLabel
          Left = 72
          Top = 173
          Width = 120
          Height = 20
          Caption = 'Saldo Servicio:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label23: TLabel
          Left = 28
          Top = 206
          Width = 165
          Height = 20
          Caption = 'Saldo Consolidados:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label27: TLabel
          Left = 43
          Top = 68
          Width = 148
          Height = 20
          Caption = 'Cobrador a Cargo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label28: TLabel
          Left = 199
          Top = 67
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
        object Label29: TLabel
          Left = 704
          Top = 256
          Width = 56
          Height = 13
          Caption = 'Nro Accion:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label30: TLabel
          Left = 764
          Top = 255
          Width = 38
          Height = 13
          Caption = 'Label30'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label32: TLabel
          Left = 62
          Top = 14
          Width = 131
          Height = 20
          Caption = 'Domicilio Cobro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label33: TLabel
          Left = 84
          Top = 43
          Width = 105
          Height = 20
          Caption = 'Observacion:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dventa: TEdit
          Left = 195
          Top = 90
          Width = 110
          Height = 32
          Color = clInfoBk
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          Text = '00.00'
        end
        object dmante: TEdit
          Left = 195
          Top = 126
          Width = 111
          Height = 32
          Color = clInfoBk
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          Text = '00.00'
        end
        object dservicio: TEdit
          Left = 195
          Top = 161
          Width = 109
          Height = 32
          Color = clInfoBk
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          Text = '00.00'
        end
        object dconsoli: TEdit
          Left = 195
          Top = 195
          Width = 109
          Height = 32
          Color = clInfoBk
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          Text = '00.00'
        end
        object Edit3: TEdit
          Left = 194
          Top = 14
          Width = 549
          Height = 24
          Hint = 'Maximo 200 caracteres aceptados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 200
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          Text = 'Edit3'
        end
        object Edit2: TEdit
          Left = 194
          Top = 41
          Width = 549
          Height = 24
          Hint = 'Maximo 200 caracteres aceptados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 200
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          Text = 'Edit3'
        end
        object JvBitBtn1: TJvBitBtn
          Left = 312
          Top = 128
          Width = 39
          Height = 29
          TabOrder = 6
          OnClick = JvBitBtn1Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00303333333333
            333337F3333333333333303333333333333337F33FFFFF3FF3FF303300000300
            300337FF77777F77377330000BBB0333333337777F337F33333330330BB00333
            333337F373F773333333303330033333333337F3377333333333303333333333
            333337F33FFFFF3FF3FF303300000300300337FF77777F77377330000BBB0333
            333337777F337F33333330330BB00333333337F373F773333333303330033333
            333337F3377333333333303333333333333337FFFF3FF3FFF333000003003000
            333377777F77377733330BBB0333333333337F337F33333333330BB003333333
            333373F773333333333330033333333333333773333333333333}
          NumGlyphs = 2
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object GroupBox10: TGroupBox
          Left = 196
          Top = 230
          Width = 137
          Height = 61
          Caption = 'INHUMADOS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          object Label39: TLabel
            Left = 12
            Top = 28
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
          object Button3: TButton
            Left = 82
            Top = 28
            Width = 39
            Height = 23
            Caption = 'Ver'
            TabOrder = 0
            OnClick = Button3Click
          end
        end
        object GroupBox11: TGroupBox
          Left = 342
          Top = 229
          Width = 161
          Height = 61
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          object Label40: TLabel
            Left = 9
            Top = 34
            Width = 70
            Height = 20
            Caption = 'CAJA N'#186
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object numcaja: TEdit
            Left = 84
            Top = 25
            Width = 51
            Height = 28
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
        end
      end
      object RB1: TRadioButton
        Left = 12
        Top = 49
        Width = 78
        Height = 17
        Caption = 'Por Titular'
        TabOrder = 9
        Visible = False
        OnClick = RB2Click
      end
      object Edit1: TEdit
        Left = 80
        Top = 66
        Width = 85
        Height = 24
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 10
        Text = '00000000000'
      end
      object Button2: TJvBitBtn
        Left = 12
        Top = 70
        Width = 23
        Height = 23
        TabOrder = 11
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
      object name: TEdit
        Left = 212
        Top = 66
        Width = 449
        Height = 24
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 12
      end
      object PERIODO: TComboBox
        Left = 562
        Top = 28
        Width = 95
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 20
        ParentFont = False
        TabOrder = 13
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
      object GroupBox3: TGroupBox
        Left = 0
        Top = 106
        Width = 810
        Height = 62
        Align = alBottom
        Caption = 'Titulares de la Parcela'
        TabOrder = 14
        Visible = False
        object JvDBGrid2: TJvDBGrid
          Left = 2
          Top = 15
          Width = 806
          Height = 45
          Align = alClient
          DataSource = DataSource2
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
          OnCellClick = JvDBGrid2CellClick
          AlternateRowColor = clWindow
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 18
          TitleRowHeight = 19
        end
      end
      object Edit6: TEdit
        Left = 338
        Top = 28
        Width = 81
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
        Visible = False
        OnKeyPress = Edit6KeyPress
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Parcelas e Inhumados'
      ImageIndex = 2
      object PC2: TJvgPageControl
        Left = 0
        Top = 0
        Width = 810
        Height = 481
        ActivePage = TabSheet8
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        TabOrder = 0
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
        object TabSheet4: TTabSheet
          Caption = 'Titulares Historicos'
          ImageIndex = 4
          object JvDBGrid9: TJvDBGrid
            Left = 0
            Top = 0
            Width = 802
            Height = 453
            Align = alClient
            DataSource = DataSource10
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
            AlternateRowColor = clWindow
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            EditControls = <>
            RowsHeight = 18
            TitleRowHeight = 19
          end
        end
        object TabSheet9: TTabSheet
          Caption = 'Titulares Activos'
          ImageIndex = 5
          object Splitter1: TSplitter
            Left = 0
            Top = 0
            Width = 802
            Height = 8
            Cursor = crVSplit
            Align = alTop
          end
          object PageControl1: TPageControl
            Left = 0
            Top = 8
            Width = 802
            Height = 445
            ActivePage = TabSheet10
            Align = alClient
            TabOrder = 0
            object TabSheet10: TTabSheet
              Caption = 'Datos Personales'
              object Label15: TLabel
                Left = 23
                Top = 7
                Width = 45
                Height = 13
                Caption = 'N'#186'  CUIF:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label7: TLabel
                Left = 214
                Top = 7
                Width = 49
                Height = 13
                Caption = 'Tipo DNI.:'
              end
              object Label13: TLabel
                Left = 393
                Top = 7
                Width = 37
                Height = 13
                Caption = 'N'#176' DNI:'
              end
              object Label6: TLabel
                Left = 574
                Top = 7
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
              object Label4: TLabel
                Left = 33
                Top = 30
                Width = 35
                Height = 13
                Caption = 'Cliente:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label11: TLabel
                Left = 468
                Top = 30
                Width = 25
                Height = 13
                Caption = 'Alias:'
              end
              object Label2: TLabel
                Left = 11
                Top = 54
                Width = 57
                Height = 13
                Caption = 'CUIT/CUIL:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label9: TLabel
                Left = 262
                Top = 54
                Width = 27
                Height = 13
                Caption = 'Sexo:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label10: TLabel
                Left = 507
                Top = 54
                Width = 41
                Height = 13
                Caption = 'Religi'#243'n:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label26: TLabel
                Left = 322
                Top = 79
                Width = 58
                Height = 13
                Caption = 'Estado Civil:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label12: TLabel
                Left = 3
                Top = 79
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
              object Label1: TLabel
                Left = 21
                Top = 104
                Width = 47
                Height = 13
                Caption = 'Provincia:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label14: TLabel
                Left = 196
                Top = 104
                Width = 49
                Height = 13
                Caption = 'Localidad:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label16: TLabel
                Left = 498
                Top = 104
                Width = 30
                Height = 13
                Caption = 'Barrio:'
              end
              object Label3: TLabel
                Left = 23
                Top = 129
                Width = 45
                Height = 13
                Caption = 'Domicilio:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label5: TLabel
                Left = 11
                Top = 154
                Width = 57
                Height = 13
                Caption = 'C'#243'd. Postal:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label8: TLabel
                Left = 26
                Top = 180
                Width = 42
                Height = 13
                Caption = 'Cat. IVA:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label18: TLabel
                Left = 36
                Top = 204
                Width = 32
                Height = 13
                Caption = 'E-Mail:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label17: TLabel
                Left = 28
                Top = 228
                Width = 40
                Height = 13
                Caption = 'Observ.:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label19: TLabel
                Left = 25
                Top = 254
                Width = 43
                Height = 13
                Caption = 'Dir. Foto:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Image2: TImage
                Left = 599
                Top = 156
                Width = 135
                Height = 107
                Proportional = True
              end
              object D1: TDBEdit
                Left = 70
                Top = 3
                Width = 121
                Height = 21
                Color = 14277612
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 0
              end
              object D2: TDBEdit
                Left = 272
                Top = 3
                Width = 57
                Height = 21
                Color = 14277612
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 1
              end
              object D3: TDBEdit
                Left = 434
                Top = 3
                Width = 125
                Height = 21
                Color = 14277612
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 2
              end
              object D4: TDBEdit
                Left = 638
                Top = 3
                Width = 109
                Height = 21
                Color = 14277612
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 3
              end
              object D5: TDBEdit
                Left = 70
                Top = 26
                Width = 359
                Height = 21
                Color = 14277612
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 4
              end
              object D6: TDBEdit
                Left = 498
                Top = 26
                Width = 111
                Height = 21
                Color = 14277612
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 5
              end
              object D7: TDBEdit
                Left = 70
                Top = 50
                Width = 151
                Height = 21
                Color = 14277612
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 6
              end
              object D8: TDBEdit
                Left = 292
                Top = 51
                Width = 195
                Height = 21
                Color = 14277612
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 7
              end
              object D9: TDBEdit
                Left = 552
                Top = 49
                Width = 191
                Height = 21
                Color = 14277612
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 8
              end
              object D11: TDBEdit
                Left = 386
                Top = 75
                Width = 253
                Height = 21
                Color = 14277612
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 9
              end
              object D10: TDBEdit
                Left = 70
                Top = 75
                Width = 207
                Height = 21
                Color = 14277612
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 10
              end
              object D12: TDBEdit
                Left = 70
                Top = 100
                Width = 117
                Height = 21
                Color = 14277612
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 11
              end
              object D13: TDBEdit
                Left = 247
                Top = 100
                Width = 237
                Height = 21
                Color = 14277612
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 12
              end
              object D14: TDBEdit
                Left = 530
                Top = 100
                Width = 239
                Height = 21
                Color = 14277612
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 13
              end
              object D15: TDBEdit
                Left = 70
                Top = 125
                Width = 699
                Height = 21
                Color = 14277612
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 14
              end
              object D16: TDBEdit
                Left = 70
                Top = 150
                Width = 61
                Height = 21
                Color = 14277612
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 15
              end
              object D17: TDBEdit
                Left = 133
                Top = 150
                Width = 381
                Height = 21
                Color = 14277612
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 16
              end
              object D18: TDBEdit
                Left = 70
                Top = 176
                Width = 381
                Height = 21
                Color = 14277612
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 17
              end
              object D19: TDBEdit
                Left = 70
                Top = 200
                Width = 381
                Height = 21
                Color = 14277612
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 18
              end
              object D20: TDBEdit
                Left = 70
                Top = 224
                Width = 479
                Height = 21
                Color = 14277612
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 19
              end
              object D21: TDBEdit
                Left = 70
                Top = 250
                Width = 479
                Height = 21
                Color = 14277612
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 20
              end
            end
            object TabSheet11: TTabSheet
              Caption = 'Datos Telef'#243'nicos'
              ImageIndex = 1
              object JvDBGrid1: TJvDBGrid
                Left = 0
                Top = 0
                Width = 793
                Height = 274
                Align = alClient
                DataSource = DataSource1
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
        end
        object TabSheet5: TTabSheet
          Caption = 'Inhumados'
          object GroupBox4: TGroupBox
            Left = 0
            Top = 0
            Width = 802
            Height = 453
            Align = alClient
            Caption = 'Inhumados de los Cuales es Responsable y/o Testigo'
            TabOrder = 0
            DesignSize = (
              802
              453)
            object JvDBGrid3: TJvDBGrid
              Left = 4
              Top = 42
              Width = 798
              Height = 407
              Anchors = [akLeft, akTop, akRight, akBottom]
              DataSource = DataSource3
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
              AlternateRowColor = clWindow
              SelectColumnsDialogStrings.Caption = 'Select columns'
              SelectColumnsDialogStrings.OK = '&OK'
              SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
              EditControls = <>
              RowsHeight = 18
              TitleRowHeight = 19
            end
            object Panel1: TPanel
              Left = 4
              Top = 14
              Width = 345
              Height = 25
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Enabled = False
              TabOrder = 1
              Visible = False
              object R2: TRadioButton
                Left = 175
                Top = 5
                Width = 157
                Height = 17
                Caption = 'Por Selecci'#243'n de N'#176' Acci'#243'n'
                TabOrder = 0
              end
              object R1: TRadioButton
                Left = 10
                Top = 5
                Width = 155
                Height = 17
                Caption = 'En donde es Responsable'
                Checked = True
                TabOrder = 1
                TabStop = True
              end
            end
          end
        end
        object TabSheet7: TTabSheet
          Caption = 'Estado Cuenta Ventas'
          ImageIndex = 2
          object Splitter3: TSplitter
            Left = 353
            Top = 0
            Height = 453
          end
          object GroupBox6: TGroupBox
            Left = 0
            Top = 0
            Width = 353
            Height = 453
            Align = alLeft
            Caption = 'Ventas Existentes en el N'#176' Acci'#243'n Seleccionado'
            TabOrder = 0
            object JvDBGrid4: TJvDBGrid
              Left = 2
              Top = 15
              Width = 349
              Height = 436
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
              OnCellClick = JvDBGrid4CellClick
              AlternateRowColor = clWindow
              SelectColumnsDialogStrings.Caption = 'Select columns'
              SelectColumnsDialogStrings.OK = '&OK'
              SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
              EditControls = <>
              RowsHeight = 18
              TitleRowHeight = 19
            end
          end
          object GroupBox7: TGroupBox
            Left = 356
            Top = 0
            Width = 446
            Height = 453
            Align = alClient
            Caption = 'Estado de Cuenta'
            TabOrder = 1
            object JvDBGrid5: TJvDBGrid
              Left = 2
              Top = 15
              Width = 442
              Height = 436
              Align = alClient
              DataSource = DataSource5
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
              AlternateRowColor = clWindow
              SelectColumnsDialogStrings.Caption = 'Select columns'
              SelectColumnsDialogStrings.OK = '&OK'
              SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
              EditControls = <>
              RowsHeight = 18
              TitleRowHeight = 19
            end
          end
        end
        object TabSheet6: TTabSheet
          Caption = 'Estado Cuenta Servicios'
          ImageIndex = 1
          object Splitter2: TSplitter
            Left = 353
            Top = 0
            Height = 453
          end
          object GroupBox2: TGroupBox
            Left = 0
            Top = 0
            Width = 353
            Height = 453
            Align = alLeft
            Caption = 'Servicios Existentes en el N'#176' Acci'#243'n Seleccionado'
            TabOrder = 0
            object JvDBGrid6: TJvDBGrid
              Left = 2
              Top = 15
              Width = 349
              Height = 436
              Align = alClient
              DataSource = DataSource6
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
              OnCellClick = JvDBGrid6CellClick
              AlternateRowColor = clWindow
              SelectColumnsDialogStrings.Caption = 'Select columns'
              SelectColumnsDialogStrings.OK = '&OK'
              SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
              EditControls = <>
              RowsHeight = 18
              TitleRowHeight = 19
            end
          end
          object GroupBox5: TGroupBox
            Left = 356
            Top = 0
            Width = 446
            Height = 453
            Align = alClient
            Caption = 'Estado de Cuenta'
            TabOrder = 1
            object JvDBGrid7: TJvDBGrid
              Left = 2
              Top = 15
              Width = 442
              Height = 436
              Align = alClient
              DataSource = DataSource7
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
              AlternateRowColor = clWindow
              SelectColumnsDialogStrings.Caption = 'Select columns'
              SelectColumnsDialogStrings.OK = '&OK'
              SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
              EditControls = <>
              RowsHeight = 18
              TitleRowHeight = 19
            end
            object GRILLADETSERV: TStringGrid
              Left = 2
              Top = 342
              Width = 442
              Height = 109
              ColCount = 6
              FixedCols = 0
              RowCount = 2
              TabOrder = 1
              Visible = False
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
        object TabSheet8: TTabSheet
          Caption = 'Estado Cuenta Mantenimiento'
          ImageIndex = 3
          object JvDBGrid8: TJvDBGrid
            Left = 141
            Top = 14
            Width = 407
            Height = 372
            DataSource = DataSource8
            FixedColor = clInfoBk
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
            OnCellClick = JvDBGrid8CellClick
            AlternateRowColor = cl3DLight
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            EditControls = <>
            RowsHeight = 18
            TitleRowHeight = 19
          end
          object GroupBox1: TGroupBox
            Left = 0
            Top = 372
            Width = 802
            Height = 81
            Align = alBottom
            Caption = 'Cantidad de Cuotas Adeudadas por A'#241'o'
            TabOrder = 1
            object Label34: TLabel
              Left = 606
              Top = 56
              Width = 94
              Height = 13
              Caption = 'Importe Acumulado:'
            end
            object Label35: TLabel
              Left = 592
              Top = 24
              Width = 109
              Height = 13
              Caption = 'Cuotas Seleccionadas:'
            end
            object JvDBGrid10: TJvDBGrid
              Left = 2
              Top = 15
              Width = 431
              Height = 64
              DataSource = DataSource11
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
            object Edit4: TEdit
              Left = 706
              Top = 44
              Width = 85
              Height = 28
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              Text = '00.00'
            end
            object Edit5: TEdit
              Left = 706
              Top = 18
              Width = 85
              Height = 21
              TabOrder = 2
              Text = '0'
            end
            object Button1: TButton
              Left = 444
              Top = 52
              Width = 97
              Height = 25
              Caption = 'Borrar Datos '
              TabOrder = 3
              OnClick = Button1Click
            end
            object JvBitBtn2: TJvBitBtn
              Left = 444
              Top = 18
              Width = 97
              Height = 25
              Caption = 'Estado Cuenta'
              TabOrder = 4
              OnClick = JvBitBtn2Click
              HotTrackFont.Charset = DEFAULT_CHARSET
              HotTrackFont.Color = clWindowText
              HotTrackFont.Height = -11
              HotTrackFont.Name = 'MS Sans Serif'
              HotTrackFont.Style = []
            end
          end
          object LasDeudas: TStringGrid
            Left = 16
            Top = 254
            Width = 767
            Height = 109
            ColCount = 15
            FixedCols = 0
            TabOrder = 2
            Visible = False
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
          object StringAgrupP: TStringGrid
            Left = 400
            Top = 0
            Width = 402
            Height = 372
            Align = alRight
            ColCount = 9
            FixedCols = 0
            TabOrder = 3
            ColWidths = (
              56
              64
              48
              64
              70
              80
              64
              64
              64)
          end
          object StringAgrupD: TStringGrid
            Left = 0
            Top = 0
            Width = 401
            Height = 372
            Align = alLeft
            Anchors = [akLeft, akTop, akRight, akBottom]
            ColCount = 9
            FixedCols = 0
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
            PopupMenu = PopupMenu1
            TabOrder = 4
            OnClick = StringAgrupDClick
            ColWidths = (
              55
              64
              46
              64
              82
              78
              64
              64
              64)
          end
          object Panel2: TPanel
            Left = 438
            Top = 226
            Width = 355
            Height = 67
            TabOrder = 5
            Visible = False
            object Label36: TLabel
              Left = 16
              Top = 10
              Width = 245
              Height = 13
              Caption = 'Periodos a Imprimir en el Estado de Cuenta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label37: TLabel
              Left = 8
              Top = 42
              Width = 37
              Height = 13
              Caption = 'DESDE'
            end
            object Label38: TLabel
              Left = 126
              Top = 43
              Width = 36
              Height = 13
              Caption = 'HASTA'
            end
            object Edit7: TEdit
              Left = 48
              Top = 30
              Width = 75
              Height = 28
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              Text = 'Edit7'
              OnExit = Edit7Exit
              OnKeyPress = Edit7KeyPress
            end
            object BitBtn1: TBitBtn
              Left = 249
              Top = 29
              Width = 95
              Height = 31
              Caption = 'Imprimir'
              TabOrder = 1
              OnClick = BitBtn1Click
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
            end
            object Edit8: TEdit
              Left = 168
              Top = 30
              Width = 75
              Height = 28
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
              Text = 'Edit7'
              OnExit = Edit8Exit
              OnKeyPress = Edit8KeyPress
            end
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Estado Cuenta Consolidados'
          ImageIndex = 6
          object JvDBGrid11: TJvDBGrid
            Left = 0
            Top = 0
            Width = 802
            Height = 453
            Align = alClient
            DataSource = DataSource12
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
            AlternateRowColor = clWindow
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            EditControls = <>
            RowsHeight = 18
            TitleRowHeight = 19
          end
          object StringGridUP: TStringGrid
            Left = 4
            Top = 368
            Width = 797
            Height = 85
            ColCount = 6
            FixedCols = 0
            RowCount = 2
            TabOrder = 1
            Visible = False
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
    end
    object TabSheet12: TTabSheet
      Caption = 'Novedades de Parcelas'
      ImageIndex = 2
      object textBody: TMemo
        Left = 12
        Top = 10
        Width = 795
        Height = 153
        Lines.Strings = (
          '')
        MaxLength = 500
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object rnovedad: TButton
        Left = 508
        Top = 174
        Width = 129
        Height = 33
        Caption = 'Resolver Novedad'
        TabOrder = 1
        OnClick = rnovedadClick
      end
      object gnovedad: TButton
        Left = 370
        Top = 174
        Width = 129
        Height = 33
        Caption = 'Guardar Novedad'
        TabOrder = 2
        OnClick = gnovedadClick
      end
      object GroupBox9: TGroupBox
        Left = 0
        Top = 210
        Width = 810
        Height = 271
        Align = alBottom
        Caption = 'Novedades Existentes'
        TabOrder = 3
        object DBGrid2: TDBGrid
          Left = 2
          Top = 15
          Width = 806
          Height = 254
          Align = alClient
          DataSource = DataSource15
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnCellClick = DBGrid2CellClick
        end
      end
      object impnovedad: TButton
        Left = 650
        Top = 174
        Width = 129
        Height = 33
        Caption = 'Imprimir Novedades'
        TabOrder = 4
        OnClick = impnovedadClick
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 818
    Height = 33
    ButtonHeight = 27
    Caption = 'ToolBar1'
    Color = clGradientInactiveCaption
    EdgeBorders = [ebLeft, ebTop, ebBottom]
    EdgeInner = esLowered
    ParentColor = False
    TabOrder = 1
    DesignSize = (
      816
      29)
    object ToolButton4: TToolButton
      Left = 0
      Top = 2
      Width = 533
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object ImpPDF: TBitBtn
      Left = 533
      Top = 2
      Width = 62
      Height = 27
      Hint = 'Guarda los Datos'
      Anchors = [akTop, akRight]
      Caption = 'Imprimir '#13#10'como PDF'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Visible = False
      OnClick = ImpPDFClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
        FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
        00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
        F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
        00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
        F033777777777337F73309999990FFF0033377777777FFF77333099999000000
        3333777777777777333333399033333333333337773333333333333903333333
        3333333773333333333333303333333333333337333333333333}
      Margin = 2
      NumGlyphs = 2
    end
    object ToolButton1: TToolButton
      Left = 595
      Top = 2
      Width = 8
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object Imprime: TJvBitBtn
      Left = 603
      Top = 2
      Width = 62
      Height = 27
      Anchors = [akTop, akRight]
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Visible = False
      OnClick = ImprimeClick
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
    object ToolButton2: TToolButton
      Left = 665
      Top = 2
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object Exporta: TJvBitBtn
      Left = 673
      Top = 2
      Width = 62
      Height = 27
      Anchors = [akTop, akRight]
      Caption = 'Exportar '#13#10'a Excel'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
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
      HotTrackFont.Height = -8
      HotTrackFont.Name = 'Arial'
      HotTrackFont.Style = []
    end
    object ToolButton3: TToolButton
      Left = 735
      Top = 2
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object sale: TJvBitBtn
      Left = 743
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
      TabOrder = 3
      OnClick = JvBitBtn3Click
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
  object DataSource0: TDataSource
    Left = 2
    Top = 6
  end
  object Rv: TRvSystem
    TitleSetup = 'Conf. Impres.'
    TitleStatus = 'Estado del Reporte'
    TitlePreview = 'Imagen Previa'
    SystemSetups = [ssAllowSetup, ssAllowCopies, ssAllowCollate, ssAllowDuplex, ssAllowDestPreview, ssAllowDestPrinter, ssAllowDestFile, ssAllowPreviewSetup]
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
    OnPrint = RvPrint
    Left = 596
    Top = 26
  end
  object DataSource1: TDataSource
    Left = 34
    Top = 6
  end
  object DataSource2: TDataSource
    Left = 68
    Top = 6
  end
  object DataSource3: TDataSource
    Left = 104
    Top = 4
  end
  object DataSource4: TDataSource
    Left = 138
    Top = 4
  end
  object DataSource5: TDataSource
    Left = 170
    Top = 4
  end
  object DataSource6: TDataSource
    Left = 204
    Top = 2
  end
  object DataSource7: TDataSource
    Left = 338
    Top = 4
  end
  object DataSource8: TDataSource
    Left = 274
    Top = 4
  end
  object DataSource9: TDataSource
    Left = 306
    Top = 2
  end
  object DataSource10: TDataSource
    Left = 238
    Top = 4
  end
  object ImageList1: TImageList
    Left = 622
    Top = 211
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008000000080000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8000000080008080800000000000000000000000000000000000000000000000
      0000000080000000800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000800000008000000080000000800000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8000000080000000800080808000000000000000000000000000000000000000
      8000000080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080000000800000008000000080000000800000008000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000080000000800000008000808080000000000000000000000080000000
      8000000080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008000000080000000800000000000000000000000800000008000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000800000008000000080008080800000008000000080000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      0000008000000080000000000000000000000000000000800000008000000080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000008000000080000000800000008000000080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      0000008000000000000000000000000000000000000000000000008000000080
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000080000000800000008000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008000000080
      0000008000000000000000000000000000000000000000000000000000000000
      0000000000000000000000008000000080000000800000008000000080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      0000008000008080800000000000000000000000000000000000000000000000
      0000000000000000800000008000000080000000000000008000000080000000
      8000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      0000008000000080000000000000000000000000000000000000000000000000
      0000000080000000800000008000000000000000000000000000000080000000
      8000000080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008000000080000000000000000000000000000000000000000000000000
      8000000080000000800000000000000000000000000000000000000000000000
      8000000080000000800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008000000080000000000000000000000000000000000000000000000000
      8000000080000000000000000000000000000000000000000000000000000000
      0000000080000000800000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFFFFF00000000
      FFFFFFFF00000000FE3FE3F300000000FC3FE1E300000000F81FF0C700000000
      F18FF80F00000000E38FFC1F00000000E7C7FE1F00000000FFC7FC0F00000000
      FFE3F88700000000FFE3F1C300000000FFF3E3E300000000FFF3E7F300000000
      FFFFFFFF00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object DataSource11: TDataSource
    Left = 374
    Top = 4
  end
  object DataSource12: TDataSource
    Left = 438
    Top = 64
  end
  object DataSource13: TDataSource
    Left = 330
    Top = 56
  end
  object DataSource14: TDataSource
    Left = 366
    Top = 60
  end
  object DataSource15: TDataSource
    Left = 400
    Top = 62
  end
  object RvNov: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.Orientation = poLandScape
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.Units = unMM
    SystemPrinter.UnitsFactor = 25.400000000000000000
    OnPrint = RvNovPrint
    Left = 438
    Top = 36
  end
  object T8: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 628
    Top = 27
  end
  object PopupMenu1: TPopupMenu
    Left = 206
    Top = 234
    object VerDeudaHastaFinAo1: TMenuItem
      Caption = 'Ver Deuda Hasta Fin A'#241'o'
    end
    object VerSoloDeuda1: TMenuItem
      Caption = 'Ver Solo Deuda'
    end
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
    Left = 554
    Top = 436
  end
  object TP: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 660
    Top = 26
  end
  object RvEC: TRvSystem
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
    OnPrint = RvECPrint
    OnAfterPrint = RvECAfterPrint
    Left = 696
    Top = 310
  end
end

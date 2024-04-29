object AM_Cli: TAM_Cli
  Left = 448
  Top = 77
  AutoScroll = False
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Altas y Modificaciones de Clientes'
  ClientHeight = 599
  ClientWidth = 867
  Color = 14801370
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Barra1: TStatusBar
    Left = 0
    Top = 580
    Width = 867
    Height = 19
    Panels = <
      item
        Width = 300
      end
      item
        Width = 500
      end
      item
        Width = 50
      end>
  end
  object PC1: TPageControl
    Left = 0
    Top = 39
    Width = 867
    Height = 541
    ActivePage = TabSheet4
    Align = alClient
    TabOrder = 1
    object TabSheet3: TTabSheet
      Caption = 'B'#250'squeda de Clientes Existentes'
      object grupo1: TGroupBox
        Left = 0
        Top = 0
        Width = 859
        Height = 513
        Align = alClient
        Color = 14801370
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        object DBGrid1: TJvDBGrid
          Left = 2
          Top = 91
          Width = 855
          Height = 420
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
          OnCellClick = DBGrid1CellClick
          OnTitleClick = DBGrid1TitleClick
          AlternateRowColor = clGradientInactiveCaption
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 18
          TitleRowHeight = 19
        end
        object GroupBox1: TGroupBox
          Left = 2
          Top = 15
          Width = 855
          Height = 76
          Align = alTop
          Caption = 'Criterios de Busqueda'
          TabOrder = 1
          object Bevel2: TBevel
            Left = 8
            Top = 15
            Width = 171
            Height = 56
          end
          object LB1: TLabel
            Left = 182
            Top = 51
            Width = 86
            Height = 13
            Caption = 'Ingrese el N'#176' DNI:'
          end
          object RT: TRadioButton
            Left = 8
            Top = 17
            Width = 75
            Height = 17
            Caption = 'Todos'
            TabOrder = 0
            OnClick = RTClick
          end
          object RD: TRadioButton
            Left = 10
            Top = 34
            Width = 75
            Height = 17
            Caption = 'Por DNI'
            Checked = True
            TabOrder = 1
            TabStop = True
            OnClick = RDClick
          end
          object RA: TRadioButton
            Left = 10
            Top = 48
            Width = 81
            Height = 17
            Caption = 'Por Apellido'
            TabOrder = 2
            OnClick = RAClick
          end
          object RC: TRadioButton
            Left = 96
            Top = 27
            Width = 75
            Height = 17
            Caption = 'Por CUIF'
            TabOrder = 3
            Visible = False
            OnClick = RCClick
          end
          object ONOMB: TEdit
            Left = 274
            Top = 42
            Width = 379
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 50
            TabOrder = 4
            Visible = False
            OnChange = ONOMBChange
            OnKeyPress = ONOMBKeyPress
          end
          object ODNI: TEdit
            Left = 272
            Top = 36
            Width = 137
            Height = 28
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 11
            ParentFont = False
            TabOrder = 5
            Text = '00000000'
            OnKeyPress = ODNIKeyPress
          end
          object Busca: TJvBitBtn
            Left = 670
            Top = 20
            Width = 89
            Height = 44
            Caption = 'Buscar'
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
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Datos Personales'
      ImageIndex = 1
      object Label15: TLabel
        Left = 36
        Top = 3
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
      object Label4: TLabel
        Left = 41
        Top = 27
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
      object Label19: TLabel
        Left = 56
        Top = 51
        Width = 25
        Height = 13
        Caption = 'Alias:'
      end
      object Label7: TLabel
        Left = 29
        Top = 74
        Width = 51
        Height = 13
        Caption = 'Tpo. Doc.:'
      end
      object Label11: TLabel
        Left = 54
        Top = 99
        Width = 27
        Height = 13
        Caption = 'Sexo:'
      end
      object Label20: TLabel
        Left = 40
        Top = 123
        Width = 41
        Height = 13
        Caption = 'Religion:'
      end
      object Label22: TLabel
        Left = 38
        Top = 171
        Width = 43
        Height = 13
        Caption = 'Est. Civil:'
      end
      object Label9: TLabel
        Left = 34
        Top = 243
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
      object Label12: TLabel
        Left = 51
        Top = 291
        Width = 30
        Height = 13
        Caption = 'Barrio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 13
        Top = 339
        Width = 68
        Height = 13
        Caption = 'C'#243'digo Postal:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 187
        Top = 335
        Width = 155
        Height = 13
        Caption = '(CP: 0  es DESCONOCIDO)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label24: TLabel
        Left = 349
        Top = 334
        Width = 13
        Height = 13
        Caption = '...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 50
        Top = 363
        Width = 31
        Height = 13
        Caption = 'e-Mail:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 7
        Top = 387
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
      object Label16: TLabel
        Left = 11
        Top = 430
        Width = 70
        Height = 13
        Caption = 'Categor'#237'a IVA:'
      end
      object Label13: TLabel
        Left = 171
        Top = 74
        Width = 37
        Height = 13
        Caption = 'N'#176' DNI:'
      end
      object Label2: TLabel
        Left = 321
        Top = 76
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
      object Label21: TLabel
        Left = 16
        Top = 147
        Width = 65
        Height = 13
        Caption = 'Nacionalidad:'
      end
      object Label6: TLabel
        Left = 22
        Top = 197
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
      object Label10: TLabel
        Left = 32
        Top = 267
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
      object Label26: TLabel
        Left = 36
        Top = 315
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
      object Label23: TLabel
        Left = 57
        Top = 453
        Width = 24
        Height = 13
        Caption = 'Foto:'
      end
      object Label25: TLabel
        Left = 34
        Top = 219
        Width = 47
        Height = 13
        Caption = 'Profesi'#243'n:'
      end
      object CUIF: TEdit
        Left = 84
        Top = 0
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
        TabOrder = 0
        Text = '00000000000'
      end
      object APEYNOM: TEdit
        Left = 84
        Top = 23
        Width = 397
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 1
        OnChange = TPODOCChange
        OnExit = APEYNOMExit
        OnKeyPress = APEYNOMKeyPress
      end
      object alias: TEdit
        Left = 84
        Top = 47
        Width = 157
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 2
        OnKeyPress = aliasKeyPress
      end
      object TPODOC: TComboBox
        Left = 84
        Top = 71
        Width = 60
        Height = 21
        CharCase = ecUpperCase
        ItemHeight = 13
        TabOrder = 3
        OnChange = TPODOCChange
        OnExit = TPODOCExit
        OnKeyPress = TPODOCKeyPress
      end
      object SEXO: TComboBox
        Left = 84
        Top = 95
        Width = 241
        Height = 21
        CharCase = ecUpperCase
        ItemHeight = 13
        TabOrder = 6
        OnChange = TPODOCChange
        OnExit = SEXOExit
        OnKeyPress = SEXOKeyPress
      end
      object religion: TComboBox
        Left = 84
        Top = 119
        Width = 241
        Height = 21
        CharCase = ecUpperCase
        ItemHeight = 13
        TabOrder = 7
        OnExit = religionExit
        OnKeyPress = religionKeyPress
      end
      object NroReligion: TJvBitBtn
        Left = 327
        Top = 120
        Width = 14
        Height = 19
        TabOrder = 22
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
      object EstCivil: TComboBox
        Left = 84
        Top = 167
        Width = 240
        Height = 21
        CharCase = ecUpperCase
        ItemHeight = 13
        TabOrder = 9
        OnExit = EstCivilExit
        OnKeyPress = EstCivilKeyPress
      end
      object PROVINC: TComboBox
        Left = 84
        Top = 239
        Width = 160
        Height = 21
        CharCase = ecUpperCase
        ItemHeight = 13
        TabOrder = 11
        OnChange = TPODOCChange
        OnEnter = PROVINCEnter
        OnExit = PROVINCExit
        OnKeyPress = PROVINCKeyPress
      end
      object BARRIO: TComboBox
        Left = 84
        Top = 287
        Width = 249
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        ParentFont = False
        TabOrder = 13
        OnChange = TPODOCChange
        OnExit = BARRIOExit
        OnKeyPress = BARRIOKeyPress
      end
      object NBarrio: TJvBitBtn
        Left = 337
        Top = 287
        Width = 14
        Height = 19
        TabOrder = 23
        OnClick = NBarrioClick
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
      object CODPOST: TMaskEdit
        Left = 84
        Top = 335
        Width = 49
        Height = 21
        EditMask = '99999;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 5
        ParentFont = False
        TabOrder = 15
        Text = '00000'
        OnChange = TPODOCChange
        OnExit = CODPOSTExit
        OnKeyPress = CODPOSTKeyPress
      end
      object BusCodPos: TJvBitBtn
        Left = 136
        Top = 335
        Width = 14
        Height = 19
        TabOrder = 24
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
      object MAIL: TEdit
        Left = 84
        Top = 359
        Width = 204
        Height = 21
        CharCase = ecLowerCase
        MaxLength = 50
        TabOrder = 16
        OnChange = TPODOCChange
        OnKeyPress = MAILKeyPress
      end
      object OBSERV: TEdit
        Left = 84
        Top = 383
        Width = 400
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 17
        Text = 'NUEVOSCLIENTES'
        OnChange = TPODOCChange
        OnKeyPress = OBSERVKeyPress
      end
      object CATEGORIA: TComboBox
        Left = 84
        Top = 426
        Width = 264
        Height = 21
        CharCase = ecUpperCase
        ItemHeight = 13
        TabOrder = 19
        OnChange = TPODOCChange
        OnExit = CATEGORIAExit
        OnKeyPress = CATEGORIAKeyPress
      end
      object DNI: TEdit
        Left = 214
        Top = 71
        Width = 80
        Height = 21
        MaxLength = 9
        TabOrder = 4
        Text = '00000000 '
        OnChange = TPODOCChange
        OnExit = DNIExit
        OnKeyPress = DNIKeyPress
      end
      object CUIT: TEdit
        Left = 387
        Top = 71
        Width = 83
        Height = 21
        MaxLength = 13
        TabOrder = 5
        Text = '00000000000'
        OnChange = TPODOCChange
        OnKeyPress = CUITKeyPress
      end
      object nacio: TComboBox
        Left = 84
        Top = 143
        Width = 239
        Height = 21
        CharCase = ecUpperCase
        ItemHeight = 13
        TabOrder = 8
        OnExit = nacioExit
        OnKeyPress = nacioKeyPress
      end
      object NroNacio: TJvBitBtn
        Left = 329
        Top = 120
        Width = 20
        Height = 21
        TabOrder = 25
        OnClick = NroNacioClick
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
      object FECNAC: TMaskEdit
        Left = 84
        Top = 191
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
        TabOrder = 10
        Text = '  /  /    '
        OnChange = TPODOCChange
        OnExit = FECNACExit
        OnKeyPress = FECNACKeyPress
      end
      object LOCALIDAD: TComboBox
        Left = 84
        Top = 263
        Width = 250
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        ParentFont = False
        TabOrder = 12
        OnChange = TPODOCChange
        OnEnter = LOCALIDADEnter
        OnExit = LOCALIDADExit
        OnKeyPress = LOCALIDADKeyPress
      end
      object NLocal: TJvBitBtn
        Left = 336
        Top = 263
        Width = 14
        Height = 19
        TabOrder = 26
        OnClick = NLocalClick
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
      object DOMI: TEdit
        Left = 84
        Top = 311
        Width = 352
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 14
        OnChange = TPODOCChange
        OnExit = DOMIExit
        OnKeyPress = DOMIKeyPress
      end
      object PATH: TEdit
        Left = 84
        Top = 450
        Width = 263
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 255
        TabOrder = 20
      end
      object JvBitBtn1: TJvBitBtn
        Left = 357
        Top = 450
        Width = 89
        Height = 21
        Hint = 'Saca una Foto de Captura por c'#225'mara web'
        Caption = 'Sacar Foto'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 21
        Visible = False
        OnClick = JvBitBtn1Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
          033333FFFF77777773F330000077777770333777773FFFFFF733077777000000
          03337F3F3F777777733F0797A770003333007F737337773F3377077777778803
          30807F333333337FF73707888887880007707F3FFFF333777F37070000878807
          07807F777733337F7F3707888887880808807F333333337F7F37077777778800
          08807F333FFF337773F7088800088803308073FF777FFF733737300008000033
          33003777737777333377333080333333333333F7373333333333300803333333
          33333773733333333333088033333333333373F7F33333333333308033333333
          3333373733333333333333033333333333333373333333333333}
        NumGlyphs = 2
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'MS Sans Serif'
        HotTrackFont.Style = []
      end
      object Panel1: TPanel
        Left = 542
        Top = 367
        Width = 132
        Height = 104
        Color = clSkyBlue
        TabOrder = 27
        object Foto: TImage
          Left = 4
          Top = 4
          Width = 121
          Height = 95
          Center = True
          Proportional = True
          Stretch = True
        end
      end
      object JvBitBtn2: TJvBitBtn
        Left = 356
        Top = 424
        Width = 89
        Height = 21
        Hint = 'Busca una Foto desde Archivo'
        Caption = 'Buscar Foto'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 28
        Visible = False
        OnClick = JvBitBtn2Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
          55555575555555775F55509999999901055557F55555557F75F5001111111101
          105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
          01105777F555557F7FF75500FFFFFF0F00105577F555FF7F77575550FF70000F
          0F0055575FF777757F775555000FFFFF0F005555777555FF7F77555550FF7000
          0F055555575FF777757F555555000FFFFF05555555777555FF7F55555550FF70
          0005555555575FF7777555555555000555555555555577755555555555555555
          5555555555555555555555555555555555555555555555555555}
        NumGlyphs = 2
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'MS Sans Serif'
        HotTrackFont.Style = []
      end
      object PROFES: TComboBox
        Left = 84
        Top = 215
        Width = 385
        Height = 21
        CharCase = ecUpperCase
        ItemHeight = 13
        TabOrder = 29
        OnExit = PROFESExit
        OnKeyPress = PROFESKeyPress
      end
      object NroProfes: TJvBitBtn
        Left = 477
        Top = 216
        Width = 14
        Height = 19
        TabOrder = 30
        OnClick = NroProfesClick
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
      object JUBIL: TCheckBox
        Left = 84
        Top = 407
        Width = 87
        Height = 17
        Caption = 'Es Jubilado?'
        TabOrder = 18
        OnKeyPress = JUBILKeyPress
      end
      object GroupBox2: TGroupBox
        Left = 498
        Top = 20
        Width = 357
        Height = 457
        Caption = 'LOS TELEFONOS'
        TabOrder = 31
        object Label18: TLabel
          Left = 12
          Top = 20
          Width = 64
          Height = 13
          Caption = 'Caracteristica'
        end
        object Label8: TLabel
          Left = 12
          Top = 60
          Width = 62
          Height = 13
          Caption = 'Nro Telefono'
        end
        object Label17: TLabel
          Left = 12
          Top = 103
          Width = 66
          Height = 13
          Caption = 'Tipo Telefono'
        end
        object Agrega2: TJvBitBtn
          Left = 12
          Top = 151
          Width = 88
          Height = 29
          Hint = 'Agrega Nueva Fila'
          Caption = 'Agregar'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = Agrega2Click
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object Modifica2: TJvBitBtn
          Left = 106
          Top = 151
          Width = 88
          Height = 29
          Hint = 'Modifica los Datos de la Fila'
          Caption = 'Modificar'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = Modifica2Click
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object Quita2: TJvBitBtn
          Left = 292
          Top = 151
          Width = 53
          Height = 26
          Hint = 'Quita la Selecci'#243'n'
          Caption = 'Quitar'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = Quita2Click
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object Borra2: TJvBitBtn
          Left = 200
          Top = 151
          Width = 88
          Height = 28
          Hint = 'Borra la Fila Seleccionada'
          Caption = 'Borrar'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = Borra2Click
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object CARAC: TEdit
          Left = 12
          Top = 37
          Width = 47
          Height = 21
          MaxLength = 5
          TabOrder = 4
          Text = '370'
          OnExit = CARACExit
          OnKeyPress = CARACKeyPress
        end
        object TELF: TEdit
          Left = 12
          Top = 78
          Width = 89
          Height = 21
          MaxLength = 11
          TabOrder = 5
          Text = '00000000000'
          OnKeyPress = TELFKeyPress
        end
        object ORIGEN: TComboBox
          Left = 12
          Top = 121
          Width = 198
          Height = 21
          CharCase = ecUpperCase
          ItemHeight = 13
          TabOrder = 6
          OnExit = ORIGENExit
          OnKeyPress = ORIGENKeyPress
        end
        object Button2: TJvBitBtn
          Left = 216
          Top = 122
          Width = 14
          Height = 19
          Enabled = False
          TabOrder = 7
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
        object grilla2: TJvStringGrid
          Left = 2
          Top = 198
          Width = 353
          Height = 257
          Align = alBottom
          ColCount = 7
          DefaultColWidth = 55
          DefaultRowHeight = 20
          FixedCols = 0
          RowCount = 2
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
          ScrollBars = ssHorizontal
          TabOrder = 8
          OnClick = grilla2Click
          Alignment = taLeftJustify
          FixedFont.Charset = DEFAULT_CHARSET
          FixedFont.Color = clRed
          FixedFont.Height = -11
          FixedFont.Name = 'MS Sans Serif'
          FixedFont.Style = [fsBold]
          ColWidths = (
            6
            6
            127
            85
            143
            2
            2)
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 473
        Width = 859
        Height = 40
        Align = alBottom
        Enabled = False
        TabOrder = 32
        object C3: TCheckBox
          Left = 6
          Top = 7
          Width = 113
          Height = 17
          Caption = 'Datos Personales'
          TabOrder = 0
        end
        object C4: TCheckBox
          Left = 6
          Top = 21
          Width = 111
          Height = 17
          Caption = 'Datos Telef'#243'nicos'
          TabOrder = 1
        end
        object C6: TCheckBox
          Left = 160
          Top = 21
          Width = 129
          Height = 17
          Caption = 'Modificaci'#243'n de Datos'
          TabOrder = 2
        end
        object C5: TCheckBox
          Left = 160
          Top = 7
          Width = 79
          Height = 17
          Caption = 'Con Foto'
          TabOrder = 3
          Visible = False
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Otros Datos'
      ImageIndex = 2
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 867
    Height = 39
    ButtonHeight = 32
    Caption = 'ToolBar1'
    Color = clGradientInactiveCaption
    EdgeBorders = [ebLeft, ebTop, ebBottom]
    EdgeInner = esLowered
    ParentColor = False
    TabOrder = 2
    DesignSize = (
      865
      35)
    object ToolButton4: TToolButton
      Left = 0
      Top = 2
      Width = 597
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object BORRA: TJvBitBtn
      Left = 597
      Top = 2
      Width = 62
      Height = 32
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
      Left = 659
      Top = 2
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object GUARDA: TJvBitBtn
      Left = 667
      Top = 2
      Width = 76
      Height = 32
      Anchors = [akTop, akRight]
      Caption = 'GUARDAR'
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
      Left = 743
      Top = 2
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object SALIR: TJvBitBtn
      Left = 751
      Top = 2
      Width = 80
      Height = 32
      Anchors = [akTop, akRight]
      Caption = 'Salir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = SALIRClick
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
    Left = 378
    Top = 2
  end
  object BusDir: TOpenDialog
    Filter = '*.JPG|*.jpg|Todos los Archivos|*.*'
    Left = 410
    Top = 2
  end
end

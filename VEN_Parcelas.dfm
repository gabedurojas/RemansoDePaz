object Ven_Parcela: TVen_Parcela
  Left = 273
  Top = 131
  AutoScroll = False
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Venta de Parcelas'
  ClientHeight = 528
  ClientWidth = 785
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
  object Barra1: TStatusBar
    Left = 0
    Top = 509
    Width = 785
    Height = 19
    Panels = <
      item
        Width = 300
      end
      item
        Width = 50
      end>
  end
  object PC1: TPageControl
    Left = 0
    Top = 33
    Width = 785
    Height = 476
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'B'#250'squedas'
      ImageIndex = 1
      object LB1: TLabel
        Left = 3
        Top = 7
        Width = 115
        Height = 13
        Alignment = taCenter
        Caption = 'Ingrese el N'#176' de Acci'#243'n:'
      end
      object todos: TRichEdit
        Left = 369
        Top = 90
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
        TabOrder = 1
      end
      object DBGrid1: TJvDBGrid
        Left = 124
        Top = 0
        Width = 653
        Height = 448
        Align = alRight
        Anchors = [akLeft, akTop, akRight, akBottom]
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
        AlternateRowColor = clGradientInactiveCaption
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 18
        TitleRowHeight = 19
      end
      object ODNI: TEdit
        Left = 12
        Top = 24
        Width = 89
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
        Left = 4
        Top = 59
        Width = 105
        Height = 37
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
    end
    object FPago: TTabSheet
      Caption = 'Titulares'
      ImageIndex = 3
      object gb1: TGroupBox
        Left = 0
        Top = 0
        Width = 777
        Height = 448
        Align = alClient
        TabOrder = 0
        object GDatos: TPageControl
          Left = 239
          Top = 8
          Width = 534
          Height = 181
          ActivePage = TabSheet6
          TabOrder = 0
          object TabSheet9: TTabSheet
            Caption = 'Datos Parcelarios'
            ImageIndex = 3
            object GroupBox1: TGroupBox
              Left = 0
              Top = 0
              Width = 526
              Height = 153
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
                Top = 95
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
                Top = 127
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
                Left = 78
                Top = 93
                Width = 429
                Height = 21
                Color = 14277612
                DataSource = DataSource2
                ReadOnly = True
                TabOrder = 8
              end
              object D14: TDBEdit
                Left = 76
                Top = 117
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
            end
          end
          object TabSheet4: TTabSheet
            Caption = 'Datos Personales'
            ImageIndex = 2
            object GroupBox8: TGroupBox
              Left = 0
              Top = 63
              Width = 526
              Height = 89
              Caption = 'Domicilio Declarado'
              TabOrder = 1
              object Label18: TLabel
                Left = 16
                Top = 18
                Width = 45
                Height = 13
                Caption = 'Domicilio:'
              end
              object Label19: TLabel
                Left = 23
                Top = 42
                Width = 36
                Height = 13
                Caption = 'Ciudad:'
              end
              object DBEdit4: TEdit
                Left = 65
                Top = 15
                Width = 452
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
                TabOrder = 0
              end
              object DBEdit1: TEdit
                Left = 65
                Top = 39
                Width = 107
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
                TabOrder = 1
              end
              object DBEdit3: TEdit
                Left = 182
                Top = 39
                Width = 107
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
                TabOrder = 2
              end
              object DBEdit5: TEdit
                Left = 298
                Top = 39
                Width = 107
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
                TabOrder = 3
              end
              object DBEdit6: TEdit
                Left = 410
                Top = 39
                Width = 107
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
                TabOrder = 4
              end
              object DBEdit11: TEdit
                Left = 65
                Top = 63
                Width = 107
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
                TabOrder = 5
              end
              object DBEdit12: TEdit
                Left = 182
                Top = 63
                Width = 107
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
                TabOrder = 6
              end
              object DBEdit13: TEdit
                Left = 298
                Top = 63
                Width = 107
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
                TabOrder = 7
              end
              object DBEdit14: TEdit
                Left = 410
                Top = 63
                Width = 107
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
              end
            end
            object GroupBox7: TGroupBox
              Left = 0
              Top = -2
              Width = 526
              Height = 65
              Caption = 'Datos Titular'
              TabOrder = 0
              object Label28: TLabel
                Left = 26
                Top = 43
                Width = 35
                Height = 13
                Caption = 'Cliente:'
              end
              object Label29: TLabel
                Left = 120
                Top = 16
                Width = 15
                Height = 13
                Caption = 'N'#186':'
              end
              object Label25: TLabel
                Left = 364
                Top = 16
                Width = 59
                Height = 13
                Caption = 'Fecha Nac.:'
              end
              object Label20: TLabel
                Left = 37
                Top = 16
                Width = 24
                Height = 13
                Caption = 'Tipo:'
              end
              object DBEdit7: TEdit
                Left = 65
                Top = 39
                Width = 451
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
                TabOrder = 0
              end
              object DBEdit8: TEdit
                Left = 139
                Top = 14
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
                TabOrder = 1
              end
              object DBEdit10: TEdit
                Left = 425
                Top = 14
                Width = 91
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
                TabOrder = 2
              end
              object DBEDIT9: TEdit
                Left = 251
                Top = 14
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
                TabOrder = 3
              end
              object DBEdit2: TEdit
                Left = 65
                Top = 14
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
                TabOrder = 4
              end
            end
          end
          object TabSheet5: TTabSheet
            Caption = 'Cr'#233'ditos ya Emitidos'
            ImageIndex = 1
            object GRILLA1: TDBGrid
              Left = 0
              Top = 0
              Width = 526
              Height = 153
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
          object TabSheet6: TTabSheet
            Caption = 'Documentaci'#243'n Digitalizada'
            ImageIndex = 3
            object DBGrid2: TDBGrid
              Left = 0
              Top = 0
              Width = 526
              Height = 153
              Align = alClient
              DataSource = DataSource2
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
        end
        object DIG: TJvBitBtn
          Left = 239
          Top = 191
          Width = 533
          Height = 31
          Hint = 'Digitalizaci'#243'n de Imagenes mediante Scaner'
          Caption = 'Digitalizar Documentaci'#243'n'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = DIGClick
          Glyph.Data = {
            36080000424D3608000000000000360400002800000020000000200000000100
            08000000000000040000000000000000000000010000000100001A1A1A000A5E
            8E00A6A6A2000E72CA000EAAE6007E7E7E00424456000A76E60086AADA008AAE
            BE000E7EAA00D4D6D2003B3A3A000A428200C6C2BE00D6D6EA006E96CA00567E
            8E00128ECA000E8EEA007A8EAE001A182A000599F2005A5A5600C2C2C6003236
            4A000A66DA00D2D2E20086869600AAAABE0060607200EAEAEA000E62BA00C2CE
            C600B5B5C600292A2A0056AADA00959696004E4E620012AAF6001C8CE200228E
            E600209EF2000A76DE00ACB6BA00ECECF600326A8E00AEAEAE00AAC2DA003A46
            4E00E2E2DE00727272002F3132002EDE820066666600C2C2CE00232322000A6A
            8E006E868A00464E5A003E3E3A00969AA20002A2F200CACAC6002AAAF200BEBE
            C200AEC6DE00BCBABA00D2D2DA008E8E9E00F2F2F200226ED60026628A00468A
            CE001A9AE600C4C6CA00D8DADE008E8F8E009E9E9E001AAAF6001E7ADE00B7B7
            B6004A4E4A006E6E820086868600494A5E000884E600BACEBA000692D2005E5E
            5E00126EDA00CDCFCE002F2E2E00999A9A00129EDA00369AEA007C7A7A003536
            36002A2A260042414200969AAE0002A1FA00BABABE00949292008C8A8A000A52
            9E00AAA9AA00D5D6D600E4E6EA0056829A00C5C6C60042425200696A7A00EFEE
            EE00027AAA000FACFA00167EDA00F5F5F600AAAAB600C6C6D600E5E6E6006A6A
            6A002826260002729E00C6C8DE00CEDAE6000A72E2001E221E004A8EAA006A9A
            D600365A7E000E8ABA005A8ADA002A6E86000E72BA005676960076828E000676
            D60026262A008A92A600267AD20012629A00029EEE00A6A6BA000A7292005E5E
            6E004E4E5E003292EE0086A2D6000EAAEE0032324200424652000A7EE200B6BE
            C600068AEE00728A9600127AB2001A8ED2003E3A52006EAADE00221A32005252
            52000A9EE2000662960096B2D600565656003E768600167ED200328AE2003692
            E6001E6692006A869E0022AAEA002A82E200CECEDE004A4A5A000E96CA00B2B2
            C200565666004A4A4A0012A2F600CECEDA00068AEA00464646000A4A7E00C2D6
            CA00E2EAE200A2A2A2001A6A8A000A5A9A000E7AB600327ACE000691EE003C3A
            4E003A3236000286BE009696AA00AABACA00DEDEEA00D9DADA009C9CAE005666
            6E001A82E2000C6EDE000A7EDE0083828200C1C3C200B2B1B200767676008A92
            920052504E000E96D60063626200AEAEAA001E1C1E0046465A00067AEA00029A
            F6005B5B5A00D6D6E600AEAEC20062627600515266000E6692003F413E0004A0
            F600F2F2FA00C8C8DA006E6E6E002292EA00B6BABA0026AAF600D6D2CE0012A2
            DE00DEDAD6009696A6003E3A3E00C9CACA0016AAFA00E6E6EE000A96CE00A6A6
            A600E2E2E2001A9AEA00BACEBE00369AEE00DADAE60056565A00CECEE200989A
            96001AA2F200DEDEDE00868A86008E9EAE00BDBEBE00FFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFCEF125255DD4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF5DD0D005544D255D5D0CB3CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFCD417DAD4E4D005603336A5637A3CB7FCFFFFFFFFFFFFFFFFFFFFFFFFFFDD
            6FC1069226DEAF6F1931C988767C999EC1D791FFFFFFFFFFFFFFFFFFFFD43434
            613CC2C28A633667435735F444F21F464D0CA536FFFFFFFFFFFFFF4E5C38628A
            D62359D1663FED5B5B21B9BA46464646464BD2A5794DFFFFFFFFFF23D6008A59
            25FECECECEEDE87871717D08498C301F46716C05A5D0FCFFFFFFFF7FB7685143
            66FEFE0B78787830818C5A895ACCA99F4CBA6C7851DAD0CDFFFFFFC88F1D1D22
            E3DBDBE39484471ACBCB7E0707D893F5A9A4771BF8E3537045FFFB51CEC7FB4C
            C510BF5A50ADA8CACC9856B6B6C02A40E74024995BEA0B6AE441FFEA6B0B9982
            0D692003892828E513B6C0C01616B427EEEE73AC09CF4BEDCE2FFFFF32E85B0B
            E687B8BD86A728F32A8ED91665657373279504E9B08025BB430BFFFFFFFF32CE
            516E4BFD488DBE9D4AFA65E13E8EA25EB0830A90BCA63A60544BFFFFFFFFFFFF
            710ED5D56E2C6DDF9C12D358C3727B3985119BD14DD0B723F93FFFFFFFFFFFFF
            FFFF751BBB1CC8B114AAA3012EAB8BC44570961515A0C1C499FFFFFFFFFFFFFF
            FFFFFFFFFF75E84DFC6A3D2F253623D638387A232317D5EDFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFD2387F3862235C34340C3C33511FFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF34345C346161636363B352680EFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF790CE0E0E063B752D21717DABB0BFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF3B06AF92AF9292B2B2911E70B178FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF67A5DA595959DAD4D4D4E4335D32FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFD036367979797936E47905CFC771FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            5BE4E43333D033E4055DCFE8464675FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF51
            4D684EBBBBCFED3271464675FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4C99
            774CF66C6C46E2E2E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object GBDatos: TJvgGroupBox
          Left = 4
          Top = 9
          Width = 232
          Height = 214
          Caption = 'B'#250'squeda y Precios'
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
          object Label14: TLabel
            Left = 62
            Top = 23
            Width = 37
            Height = 13
            Caption = 'N'#176' DNI:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 19
            Top = 53
            Width = 79
            Height = 13
            Caption = 'Precio de Venta:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 6
            Top = 86
            Width = 90
            Height = 13
            Caption = 'Importe Entrega : $'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label1: TLabel
            Left = 4
            Top = 119
            Width = 85
            Height = 13
            Caption = 'Fecha   Entrega : '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DNI: TEdit
            Left = 103
            Top = 17
            Width = 75
            Height = 24
            CharCase = ecUpperCase
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            MaxLength = 8
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            Text = '00000000'
            OnExit = DNIExit
            OnKeyPress = DNIKeyPress
          end
          object BCliente: TJvBitBtn
            Left = 188
            Top = 19
            Width = 17
            Height = 19
            TabOrder = 1
            OnClick = BClienteClick
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
          object DPrecio: TEdit
            Left = 103
            Top = 48
            Width = 104
            Height = 26
            CharCase = ecUpperCase
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            MaxLength = 15
            ParentFont = False
            TabOrder = 2
            Text = '00000.00'
            OnExit = DPrecioExit
            OnKeyPress = DPrecioKeyPress
          end
          object IMPORTEE: TEdit
            Left = 103
            Top = 80
            Width = 104
            Height = 26
            CharCase = ecUpperCase
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            MaxLength = 15
            ParentFont = False
            TabOrder = 3
            Text = '00000.00'
            OnExit = IMPORTEEExit
            OnKeyPress = IMPORTEEKeyPress
          end
          object FECHAE: TJvDatePickerEdit
            Left = 103
            Top = 112
            Width = 104
            Height = 26
            AllowNoDate = True
            Checked = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
            OnKeyPress = FECHAEKeyPress
          end
          object JvgGroupBox3: TJvgGroupBox
            Left = 4
            Top = 143
            Width = 224
            Height = 68
            Caption = 'Seleccione el Tipo Correcto'
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
            object RbCredito: TRadioButton
              Left = 137
              Top = 21
              Width = 76
              Height = 17
              Caption = 'Credito'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              OnKeyPress = RbCreditoKeyPress
            end
            object RBContado: TRadioButton
              Left = 7
              Top = 21
              Width = 82
              Height = 17
              Caption = 'Contado'
              Checked = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              TabStop = True
              OnExit = RBContadoExit
              OnKeyPress = RBContadoKeyPress
            end
            object rbDonacion: TRadioButton
              Left = 7
              Top = 45
              Width = 87
              Height = 17
              Caption = 'Donaci'#243'n'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
            end
          end
        end
        object JvgGroupBox1: TJvgGroupBox
          Left = 4
          Top = 225
          Width = 769
          Height = 219
          Caption = 'Selecci'#243'n y B'#250'squedas del Inhumado'
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
          object Label17: TLabel
            Left = 18
            Top = 26
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
          object Label53: TLabel
            Left = 17
            Top = 50
            Width = 27
            Height = 13
            Caption = 'Nivel:'
          end
          object Edit1: TEdit
            Left = 48
            Top = 20
            Width = 77
            Height = 21
            Color = clYellow
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
          object Button2: TJvBitBtn
            Left = 132
            Top = 24
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
            Left = 48
            Top = 42
            Width = 77
            Height = 30
            CharCase = ecUpperCase
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ItemHeight = 22
            ItemIndex = 1
            ParentFont = False
            TabOrder = 2
            Text = '2'
            OnKeyPress = NIVELKeyPress
            Items.Strings = (
              '1'
              '2'
              '3')
          end
          object Agrega2: TJvBitBtn
            Left = 194
            Top = 32
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
            Left = 353
            Top = 32
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
            Left = 508
            Top = 32
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
            Left = 665
            Top = 32
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
          object GrillaT: TJvStringGrid
            Left = 2
            Top = 76
            Width = 765
            Height = 141
            Align = alBottom
            ColCount = 11
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
              55)
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Forma de Pago'
      ImageIndex = 2
      object GDetpago: TPageControl
        Left = 0
        Top = 0
        Width = 777
        Height = 235
        ActivePage = TabSheet7
        Align = alTop
        TabOrder = 0
        object TabSheet7: TTabSheet
          Caption = 'C'#225'lculo de Cuotas e Importes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ImageIndex = 3
          ParentFont = False
          object SC1: TLMDScrollText
            Left = 220
            Top = 2
            Width = 548
            Height = 32
            Interval = 150
            Lines.Strings = (
              'TLMDScrollText')
            Steps = 50
            Bevel.Mode = bmCustom
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Visible = False
          end
          object Label16: TLabel
            Left = 565
            Top = 234
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
          object BUSCAR: TJvBitBtn
            Left = 4
            Top = 2
            Width = 199
            Height = 33
            Hint = 'Busca y Compara con Cr'#233'ditos Existentes'
            Caption = ' Buscar Coincidentes'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            Glyph.Data = {
              36080000424D3608000000000000360400002800000020000000200000000100
              08000000000000040000C40E0000C40E00000001000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
              A6000020400000206000002080000020A0000020C0000020E000004000000040
              20000040400000406000004080000040A0000040C0000040E000006000000060
              20000060400000606000006080000060A0000060C0000060E000008000000080
              20000080400000806000008080000080A0000080C0000080E00000A0000000A0
              200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
              200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
              200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
              20004000400040006000400080004000A0004000C0004000E000402000004020
              20004020400040206000402080004020A0004020C0004020E000404000004040
              20004040400040406000404080004040A0004040C0004040E000406000004060
              20004060400040606000406080004060A0004060C0004060E000408000004080
              20004080400040806000408080004080A0004080C0004080E00040A0000040A0
              200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
              200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
              200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
              20008000400080006000800080008000A0008000C0008000E000802000008020
              20008020400080206000802080008020A0008020C0008020E000804000008040
              20008040400080406000804080008040A0008040C0008040E000806000008060
              20008060400080606000806080008060A0008060C0008060E000808000008080
              20008080400080806000808080008080A0008080C0008080E00080A0000080A0
              200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
              200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
              200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
              2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
              2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
              2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
              2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
              2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
              2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
              2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
              0000372F00A4A4A4A40000000000000000A4A4A4000000000000000000000000
              3737372F2F00A4A45B0007FFEDEDEDED9B005BA4A4A400000000000000003737
              3737372F2F2F000007FFFFFFEDEDEDED9B9B5B00A4A4A4000000000037373737
              3737372F2F2F00EDFF07000000000000009B9B9B00A4A4A40000003737373737
              3737372F2F00EDED005BFFFFFFFFFFFFFF5B009B9B00A4A4A400003737373737
              3737372F2F00ED00FF075B00000000005B07FF009B00A4A4A400003737373737
              373700002F005BFF005BEDFFEDEDEDEDED5B00FF0000A4A4A400003737373737
              00009E0D0000FF0000EDEDEDFFEDEDEDEDED0700FF00A4A40000003737370000
              9E9E9E0D0100FF009B005BEDEDFFEDED5B000000FF00A4000000003700009E9E
              9E9E9E0D0100FF009B9B9B00000000009B9B9B00FF000000000000009E9E9E9E
              9E9E00000D0D00FF00009B9B9B9B9B9B9B0000FF00A4A4000000009E9E9E9E9E
              00000992000D0D00FFFF00000000000000FFFF0000A4A4000000009E9E9E0000
              0909099292000D0D0000FFFFFFFFFFFFFF0000ED00A4A4A40000009E00000909
              090909929292000D0D0000000000000000EDFFEDED00A4A4A400000009090909
              09090992929292000D000000000000000000EDFF5B0000A4A4A4000909090909
              0909099292929292000000000000000000005B0000000000A4A4000909090909
              090909929292929292000000000000000000005B000000000000000909090909
              09090992929292929200000000000000000000005B0000000000000909090909
              0909099292929292920000000000000000000000005B00005B00000909090909
              0909099292929292920000000000000000000000000000000000000909090909
              09FFFF92929292929200000000000000000000000000000000000009090909FF
              FF09090992929292920000000000000000000000000000000000000909FFFF09
              090909090992929292000000000000000000000000000000000000FFFF090909
              0909090909099292920000000000000000000000000000000000000909090909
              0909090909090992920000000000000000000000000000000000000009090909
              0909090909090909920000000000000000000000000000000000000000090909
              0909090909090900000000000000000000000000000000000000000000000909
              0909090909000000000000000000000000000000000000000000000000000009
              0909090000000000000000000000000000000000000000000000000000000000
              0900000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'MS Sans Serif'
            HotTrackFont.Style = []
          end
          object grupo1: TJvgGroupBox
            Left = 1
            Top = 37
            Width = 407
            Height = 169
            Caption = 'Datos del Cr'#233'dito'
            TabOrder = 1
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
            DesignSize = (
              407
              169)
            FullHeight = 0
            object Label12: TLabel
              Left = 52
              Top = 16
              Width = 39
              Height = 13
              Caption = 'Saldo $:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label44: TLabel
              Left = 55
              Top = 42
              Width = 36
              Height = 13
              Caption = 'C'#243'digo:'
            end
            object Label35: TLabel
              Left = 57
              Top = 68
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
            object Label37: TLabel
              Left = 39
              Top = 122
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
            object Label52: TLabel
              Left = 16
              Top = 149
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
            object Label38: TLabel
              Left = 178
              Top = 122
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
              Left = 3
              Top = 95
              Width = 87
              Height = 13
              Caption = 'Importe Solicitado:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Saldo: TEdit
              Left = 94
              Top = 11
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
            object CODIGO: TComboBox
              Left = 94
              Top = 37
              Width = 201
              Height = 23
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ItemHeight = 15
              ParentFont = False
              TabOrder = 1
              OnExit = CODIGOExit
              OnKeyPress = CODIGOKeyPress
            end
            object FECHA: TJvDatePickerEdit
              Left = 94
              Top = 62
              Width = 101
              Height = 26
              AllowNoDate = True
              Checked = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
              OnKeyPress = FECHAKeyPress
            end
            object CUOTAS: TComboBox
              Left = 94
              Top = 117
              Width = 66
              Height = 24
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ItemHeight = 16
              ParentFont = False
              TabOrder = 3
              OnExit = CUOTASExit
              OnKeyPress = CUOTASKeyPress
            end
            object OBSERV: TEdit
              Left = 94
              Top = 144
              Width = 309
              Height = 23
              Anchors = [akLeft, akTop, akRight]
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              MaxLength = 90
              ParentFont = False
              TabOrder = 4
            end
            object VALCUOTA: TEdit
              Left = 240
              Top = 117
              Width = 82
              Height = 24
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 5
              Text = '0'
            end
            object IMPORTE: TEdit
              Left = 94
              Top = 90
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
              TabOrder = 6
              Text = '00000.00'
              OnKeyPress = IMPORTEKeyPress
            end
          end
          object grupo6: TJvgGroupBox
            Left = 410
            Top = 95
            Width = 357
            Height = 41
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
              Left = 29
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
              Left = 223
              Top = 19
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
              Left = 90
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
              Left = 306
              Top = 13
              Width = 45
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
          object JvgGroupBox5: TJvgGroupBox
            Left = 410
            Top = 37
            Width = 357
            Height = 53
            Caption = 'Cr'#233'dito'
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
              Left = 92
              Top = 17
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
            Left = 410
            Top = 141
            Width = 357
            Height = 65
            Caption = 'Importes Generados'
            TabOrder = 4
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
            object TOTAL: TEdit
              Left = 267
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
              TabOrder = 3
            end
          end
        end
        object TabSheet8: TTabSheet
          Caption = 'Detalle de Cuotas'
          ImageIndex = 1
          object grilla5: TStringGrid
            Left = 0
            Top = 0
            Width = 769
            Height = 190
            Align = alTop
            ColCount = 6
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
            TabOrder = 0
            ColWidths = (
              120
              120
              120
              120
              120
              120)
          end
        end
      end
      object JvgGroupBox4: TJvgGroupBox
        Left = 0
        Top = 235
        Width = 777
        Height = 213
        Align = alClient
        Caption = 'Impresiones de Formularios'
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
          777
          213)
        FullHeight = 0
        object Image1: TImage
          Left = 354
          Top = 66
          Width = 105
          Height = 35
        end
        object grillaformu: TJvStringGrid
          Left = 1
          Top = 17
          Width = 496
          Height = 195
          Anchors = [akLeft, akTop, akRight, akBottom]
          ColCount = 4
          DefaultColWidth = 55
          DefaultRowHeight = 20
          FixedCols = 0
          RowCount = 7
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
          ScrollBars = ssHorizontal
          TabOrder = 0
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
        object ImprimirActa: TJvBitBtn
          Left = 508
          Top = 19
          Width = 126
          Height = 35
          Anchors = [akTop, akRight]
          Caption = 'Solicitud Adq. '#13#10'de Titulo'
          TabOrder = 1
          OnClick = ImprimirActaClick
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
        object ImprimirClausular: TJvBitBtn
          Left = 508
          Top = 74
          Width = 126
          Height = 35
          Anchors = [akTop, akRight]
          Caption = 'Cl'#225'usulas'#13#10'Particulares'
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
        object ImprimirGarantia: TJvBitBtn
          Left = 642
          Top = 75
          Width = 126
          Height = 35
          Anchors = [akTop, akRight]
          Caption = 'Constituci'#243'n de'#13#10'Garant'#237'a'
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
        object ImprimirCesion: TJvBitBtn
          Left = 642
          Top = 18
          Width = 126
          Height = 35
          Anchors = [akTop, akRight]
          Caption = 'Cesi'#243'n y Transf.'#13#10'de Acciones'
          TabOrder = 4
          OnClick = ImprimirCesionClick
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
        object ImprimirCarta: TJvBitBtn
          Left = 642
          Top = 127
          Width = 126
          Height = 35
          Anchors = [akTop, akRight]
          Caption = 'Carta Cesi'#243'n '#13#10'de Acci'#243'n'
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
        object ImprimeReglamento: TJvBitBtn
          Left = 508
          Top = 127
          Width = 126
          Height = 35
          Anchors = [akTop, akRight]
          Caption = 'Reglamento '#13#10'Interno'
          TabOrder = 6
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
        object GroupBox2: TGroupBox
          Left = 508
          Top = 172
          Width = 261
          Height = 35
          Caption = 'Opciones Modificadas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          object c4: TCheckBox
            Left = 91
            Top = 14
            Width = 65
            Height = 17
            Caption = 'Titulares'
            TabOrder = 0
          end
          object C6: TCheckBox
            Left = 174
            Top = 13
            Width = 81
            Height = 17
            Caption = 'Modificaci'#243'n'
            TabOrder = 1
          end
          object CE: TCheckBox
            Left = 8
            Top = 14
            Width = 61
            Height = 17
            Caption = 'Entrega'
            TabOrder = 2
          end
        end
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 785
    Height = 33
    ButtonHeight = 25
    Caption = 'ToolBar1'
    Color = clGradientInactiveCaption
    EdgeBorders = [ebLeft, ebTop, ebBottom]
    EdgeInner = esLowered
    ParentColor = False
    TabOrder = 2
    DesignSize = (
      783
      29)
    object ToolButton4: TToolButton
      Left = 0
      Top = 2
      Width = 495
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object EXPORTAR: TJvBitBtn
      Left = 495
      Top = 2
      Width = 62
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Exportar '#13#10'a Excel'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
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
      Left = 557
      Top = 2
      Width = 8
      Caption = 'ToolButton5'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object bGuardar: TJvBitBtn
      Left = 565
      Top = 2
      Width = 74
      Height = 25
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
      Left = 639
      Top = 2
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object BORRA: TJvBitBtn
      Left = 647
      Top = 2
      Width = 62
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'BORRA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
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
      Left = 709
      Top = 2
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object bSalir: TJvBitBtn
      Left = 717
      Top = 2
      Width = 62
      Height = 25
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
    SystemPrinter.Orientation = poDefault
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.Units = unMM
    SystemPrinter.UnitsFactor = 25.400000000000000000
    OnPrint = RvSPrint
    Left = 350
    Top = 2
  end
end

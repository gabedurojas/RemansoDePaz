object AM_Credito: TAM_Credito
  Left = 289
  Top = 114
  AutoScroll = False
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Altas de Cr'#233'ditos'
  ClientHeight = 540
  ClientWidth = 793
  Color = cl3DLight
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
  object Image1: TImage
    Left = 354
    Top = 46
    Width = 89
    Height = 97
    Proportional = True
  end
  object PC2: TPageControl
    Left = -2
    Top = 184
    Width = 795
    Height = 285
    ActivePage = TabSheet3
    TabOrder = 3
    object TabSheet3: TTabSheet
      Caption = 'C'#225'lculo de Cuotas e Importes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 3
      ParentFont = False
      object SC1: TLMDScrollText
        Left = 198
        Top = 2
        Width = 355
        Height = 77
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
      end
      object Label8: TLabel
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
      object grupo7: TGroupBox
        Left = 560
        Top = 134
        Width = 223
        Height = 121
        Caption = 'Importes Generados'
        Enabled = False
        TabOrder = 1
        Visible = False
        object Label6: TLabel
          Left = 50
          Top = 19
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
        object Label7: TLabel
          Left = 50
          Top = 70
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
        object Label17: TLabel
          Left = 5
          Top = 96
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
        object Label20: TLabel
          Left = 10
          Top = 44
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
        object CAPITAL: TEdit
          Left = 90
          Top = 15
          Width = 77
          Height = 24
          Color = 16511969
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object INTERESES: TEdit
          Left = 90
          Top = 40
          Width = 77
          Height = 24
          Color = 16511969
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object INTERTOT: TEdit
          Left = 90
          Top = 66
          Width = 77
          Height = 24
          Color = 16511969
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
      end
      object grupo6: TGroupBox
        Left = 560
        Top = 68
        Width = 223
        Height = 68
        Caption = 'Valores Aplicados'
        Enabled = False
        TabOrder = 0
        Visible = False
        object Label10: TLabel
          Left = 29
          Top = 18
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
        object Label5: TLabel
          Left = 7
          Top = 43
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
          Top = 15
          Width = 107
          Height = 24
          Color = 16511969
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object INTERES: TEdit
          Left = 90
          Top = 40
          Width = 45
          Height = 24
          Color = 16511969
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
      end
      object grupo1: TGroupBox
        Left = 2
        Top = 80
        Width = 555
        Height = 177
        Caption = 'Datos del Cr'#233'dito'
        Enabled = False
        TabOrder = 2
        DesignSize = (
          555
          177)
        object Label12: TLabel
          Left = 61
          Top = 18
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
        object Label3: TLabel
          Left = 7
          Top = 49
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
        object Label9: TLabel
          Left = 43
          Top = 81
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
        object Label11: TLabel
          Left = 36
          Top = 112
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
        object Label52: TLabel
          Left = 20
          Top = 144
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
        object FECHA: TMaskEdit
          Left = 98
          Top = 11
          Width = 93
          Height = 28
          EditMask = '!99/99/0000;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 0
          Text = '  /  /    '
          OnExit = FECHAExit
          OnKeyPress = FECHAKeyPress
        end
        object IMPORTE: TEdit
          Left = 98
          Top = 43
          Width = 85
          Height = 28
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 15
          ParentFont = False
          TabOrder = 1
          Text = '00000.00'
          OnKeyPress = IMPORTEKeyPress
        end
        object CUOTAS: TComboBox
          Left = 98
          Top = 76
          Width = 67
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemHeight = 20
          ParentFont = False
          TabOrder = 2
          OnExit = CUOTASExit
          OnKeyPress = CUOTASKeyPress
        end
        object VALCUOTA: TEdit
          Left = 98
          Top = 109
          Width = 83
          Height = 28
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          Text = '0'
        end
        object OBSERV: TEdit
          Left = 98
          Top = 142
          Width = 447
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 90
          ParentFont = False
          TabOrder = 5
          OnKeyPress = OBSERVKeyPress
        end
        object GroupBox9: TGroupBox
          Left = 224
          Top = 16
          Width = 145
          Height = 83
          Caption = 'Fechas Probables'
          Enabled = False
          TabOrder = 6
          object Label2: TLabel
            Left = 10
            Top = 30
            Width = 43
            Height = 13
            Caption = '1'#176' Envio:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 9
            Top = 60
            Width = 44
            Height = 13
            Caption = '1'#176' Cobro:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object VENC1: TMaskEdit
            Left = 58
            Top = 23
            Width = 75
            Height = 24
            EditMask = '!99/99/0000;1;_'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 10
            ParentFont = False
            TabOrder = 0
            Text = '  /  /    '
            OnKeyPress = VENC1KeyPress
          end
          object VENC2: TMaskEdit
            Left = 58
            Top = 52
            Width = 75
            Height = 24
            EditMask = '!99/99/0000;1;_'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 10
            ParentFont = False
            TabOrder = 1
            Text = '  /  /    '
            OnKeyPress = VENC2KeyPress
          end
        end
        object GroupBox4: TGroupBox
          Left = 372
          Top = 16
          Width = 175
          Height = 83
          Caption = 'Fechas Probables'
          Enabled = False
          TabOrder = 7
          object Label13: TLabel
            Left = 10
            Top = 30
            Width = 69
            Height = 13
            Caption = 'Envio de Baja:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label16: TLabel
            Left = 16
            Top = 60
            Width = 63
            Height = 13
            Caption = 'Ultimo Cobro:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object VENC3: TMaskEdit
            Left = 86
            Top = 23
            Width = 75
            Height = 24
            EditMask = '!99/99/0000;1;_'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 10
            ParentFont = False
            TabOrder = 0
            Text = '  /  /    '
            OnKeyPress = VENC1KeyPress
          end
          object VENC4: TMaskEdit
            Left = 86
            Top = 52
            Width = 75
            Height = 24
            EditMask = '!99/99/0000;1;_'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 10
            ParentFont = False
            TabOrder = 1
            Text = '  /  /    '
            OnKeyPress = VENC2KeyPress
          end
        end
        object EP: TCheckBox
          Left = 224
          Top = 112
          Width = 197
          Height = 17
          Caption = 'Habilitar Cl'#225'usula Especial?'
          Enabled = False
          TabOrder = 4
          OnKeyPress = EPKeyPress
        end
      end
      object BUSCAR: TLMDButton
        Left = 14
        Top = 14
        Width = 169
        Height = 41
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
        TabOrder = 3
        OnClick = BUSCARClick
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
      end
      object GroupBox1: TGroupBox
        Left = 562
        Top = -2
        Width = 223
        Height = 51
        TabOrder = 4
        object Label1: TLabel
          Left = 12
          Top = 19
          Width = 75
          Height = 20
          Caption = 'N'#176' Cr'#233'dito:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object NROCREDITO: TEdit
          Left = 92
          Top = 14
          Width = 97
          Height = 28
          CharCase = ecUpperCase
          Color = 16511969
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 15
          ParentFont = False
          TabOrder = 0
          Text = '000000000'
        end
      end
      object CB1: TCheckBox
        Left = 564
        Top = 52
        Width = 97
        Height = 17
        Caption = 'Mostrar Valores?'
        TabOrder = 5
        Visible = False
        OnClick = CB1Click
      end
      object TOTAL: TEdit
        Left = 650
        Top = 227
        Width = 77
        Height = 24
        Color = 16511969
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Detalle de Cuotas'
      ImageIndex = 1
      object grilla5: TStringGrid
        Left = 0
        Top = 0
        Width = 787
        Height = 251
        Align = alClient
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
  object Barra1: TStatusBar
    Left = 0
    Top = 521
    Width = 793
    Height = 19
    Panels = <
      item
        Width = 500
      end
      item
        Width = 50
      end>
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 267
    Height = 183
    Caption = 'Afiliados y Control de Cr'#233'ditos '
    TabOrder = 0
    object Label14: TLabel
      Left = 8
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
    object Label30: TLabel
      Left = 9
      Top = 48
      Width = 36
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object Label31: TLabel
      Left = 9
      Top = 74
      Width = 36
      Height = 13
      Caption = 'Oficina:'
    end
    object Label32: TLabel
      Left = 9
      Top = 99
      Width = 36
      Height = 13
      Caption = 'Puesto:'
    end
    object Label33: TLabel
      Left = 4
      Top = 125
      Width = 41
      Height = 13
      Caption = 'N'#186' Rec.:'
    end
    object Busca4: TLMDButton
      Left = 106
      Top = 18
      Width = 27
      Height = 23
      Hint = 'Buscar y Asignar el Diagn'#243'stico'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = Busca4Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF0000004040409F9F9F606060202020000000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000404040BFBFBFDFDFDFBF
        BFBF808080909090606060202020000000FFFFFFFFFFFFFFFFFFFFFFFF000000
        404040BFBFBFDFDFDFBFBFBF9F9F9F7F7F7F7F7F7F5050505050509090906060
        60000000FFFFFFFFFFFF505050BFBFBFDFDFDFBFBFBF9F9F9F7F7F7F7F7F7F5F
        5F5F9F5F5FFF3F00FF7F00606060505050000000FFFFFFFFFFFF404040A0A0A0
        BFBFBF7F7F7F7F7F7F5F5F5F9F9F9FEFAFAFFF3F00FFBF00BF0000505050B0B0
        B0202020FFFFFFFFFFFFFFFFFFFFFFFF404040A0A0A09F9F9FDFDFDFCF9090FF
        3F00FFBF00BF00007F7F7FEFEFAFCFCFCF707070000000FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF404040A0A0A0CF8F8FFFBF00BF00007F7F40FFFF00FFFF00EFEF
        AFB0B0B0202020FFFFFFFFFFFF0000003F3F3F7F7F3F7F7F3F505050BFBFBF7F
        40407F7F40BFBF007F7F3F7F7F00FFFF3FCFCFCF707070000000202020BFBFBF
        FFFF7FFFFF7FFFFF7FAFAF705050507F7F40AFAF30BFBFBF7F7FDF7F7F7FFFFF
        00EFEFAFB0B0B02020207F7F7FFFFF7FFFFF7FFFFF7FFFFFBFDFDF9F80808070
        7070FFFF00DFDFDFEFEFEFDFDF9FBFBF00BFBF3FC0C0C0404040BFBF7FFFFF7F
        FFFF7FFFFF7FFFFF7FFFFF7FAFAF70404040FFFF00EFEF30EFEF30BFBF006F6F
        308080807070702020207F7F40FFFF7FFFFF7FFFFF7FFFFF7FFFFF7F9F9F5F70
        70707F7F00BFBF006F6F30808080707070202020FFFFFFFFFFFF202020DFDF9F
        FFFF7FFFFF7FFFFF7FFFFF7F5F5F5FA0A0A0909090808080707070202020FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF2020207F7F40BFBF7F9F9F5F50505020202020
        2020707070202020FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object CODIGO: TComboBox
      Left = 46
      Top = 44
      Width = 213
      Height = 21
      ItemHeight = 13
      TabOrder = 3
      OnExit = CODIGOExit
      OnKeyPress = CODIGOKeyPress
    end
    object OFICINA: TComboBox
      Left = 46
      Top = 70
      Width = 193
      Height = 21
      CharCase = ecUpperCase
      ItemHeight = 13
      TabOrder = 4
      OnExit = OFICINAExit
      OnKeyPress = OFICINAKeyPress
    end
    object PUESTO: TComboBox
      Left = 46
      Top = 96
      Width = 193
      Height = 21
      CharCase = ecUpperCase
      ItemHeight = 13
      TabOrder = 5
      OnExit = PUESTOExit
      OnKeyPress = PUESTOKeyPress
    end
    object RECIBO: TEdit
      Left = 46
      Top = 122
      Width = 169
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 15
      TabOrder = 6
      Text = '000000000000000000000000000'
      OnKeyPress = RECIBOKeyPress
    end
    object DNI: TEdit
      Left = 46
      Top = 19
      Width = 57
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 15
      TabOrder = 0
      Text = '00000000'
      OnExit = DNIExit
      OnKeyPress = DNIKeyPress
    end
    object AGREGAR: TLMDButton
      Left = 151
      Top = 18
      Width = 98
      Height = 23
      Hint = 'Altas y Modificaciones'
      Caption = 'Nuevo Afiliado'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = AGREGARClick
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
    end
    object LMDButton7: TLMDButton
      Left = 240
      Top = 95
      Width = 23
      Height = 20
      Hint = 'Nueva Localidad'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      Visible = False
      OnClick = LMDButton7Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF0000004040409F9F9F606060202020000000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000404040BFBFBFDFDFDFBF
        BFBF808080909090606060202020000000FFFFFFFFFFFFFFFFFFFFFFFF000000
        404040BFBFBFDFDFDFBFBFBF9F9F9F7F7F7F7F7F7F5050505050509090906060
        60000000FFFFFFFFFFFF505050BFBFBFDFDFDFBFBFBF9F9F9F7F7F7F7F7F7F5F
        5F5F9F5F5FFF3F00FF7F00606060505050000000FFFFFFFFFFFF404040A0A0A0
        BFBFBF7F7F7F7F7F7F5F5F5F9F9F9FEFAFAFFF3F00FFBF00BF0000505050B0B0
        B0202020FFFFFFFFFFFFFFFFFFFFFFFF404040A0A0A09F9F9FDFDFDFCF9090FF
        3F00FFBF00BF00007F7F7FEFEFAFCFCFCF707070000000FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF404040A0A0A0CF8F8FFFBF00BF00007F7F40FFFF00FFFF00EFEF
        AFB0B0B0202020FFFFFFFFFFFF0000003F3F3F7F7F3F7F7F3F505050BFBFBF7F
        40407F7F40BFBF007F7F3F7F7F00FFFF3FCFCFCF707070000000202020BFBFBF
        FFFF7FFFFF7FFFFF7FAFAF705050507F7F40AFAF30BFBFBF7F7FDF7F7F7FFFFF
        00EFEFAFB0B0B02020207F7F7FFFFF7FFFFF7FFFFF7FFFFFBFDFDF9F80808070
        7070FFFF00DFDFDFEFEFEFDFDF9FBFBF00BFBF3FC0C0C0404040BFBF7FFFFF7F
        FFFF7FFFFF7FFFFF7FFFFF7FAFAF70404040FFFF00EFEF30EFEF30BFBF006F6F
        308080807070702020207F7F40FFFF7FFFFF7FFFFF7FFFFF7FFFFF7F9F9F5F70
        70707F7F00BFBF006F6F30808080707070202020FFFFFFFFFFFF202020DFDF9F
        FFFF7FFFFF7FFFFF7FFFFF7F5F5F5FA0A0A0909090808080707070202020FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF2020207F7F40BFBF7F9F9F5F50505020202020
        2020707070202020FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object LMDButton1: TLMDButton
      Left = 240
      Top = 70
      Width = 23
      Height = 20
      Hint = 'Nueva Localidad'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      Visible = False
      OnClick = LMDButton1Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF0000004040409F9F9F606060202020000000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000404040BFBFBFDFDFDFBF
        BFBF808080909090606060202020000000FFFFFFFFFFFFFFFFFFFFFFFF000000
        404040BFBFBFDFDFDFBFBFBF9F9F9F7F7F7F7F7F7F5050505050509090906060
        60000000FFFFFFFFFFFF505050BFBFBFDFDFDFBFBFBF9F9F9F7F7F7F7F7F7F5F
        5F5F9F5F5FFF3F00FF7F00606060505050000000FFFFFFFFFFFF404040A0A0A0
        BFBFBF7F7F7F7F7F7F5F5F5F9F9F9FEFAFAFFF3F00FFBF00BF0000505050B0B0
        B0202020FFFFFFFFFFFFFFFFFFFFFFFF404040A0A0A09F9F9FDFDFDFCF9090FF
        3F00FFBF00BF00007F7F7FEFEFAFCFCFCF707070000000FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF404040A0A0A0CF8F8FFFBF00BF00007F7F40FFFF00FFFF00EFEF
        AFB0B0B0202020FFFFFFFFFFFF0000003F3F3F7F7F3F7F7F3F505050BFBFBF7F
        40407F7F40BFBF007F7F3F7F7F00FFFF3FCFCFCF707070000000202020BFBFBF
        FFFF7FFFFF7FFFFF7FAFAF705050507F7F40AFAF30BFBFBF7F7FDF7F7F7FFFFF
        00EFEFAFB0B0B02020207F7F7FFFFF7FFFFF7FFFFF7FFFFFBFDFDF9F80808070
        7070FFFF00DFDFDFEFEFEFDFDF9FBFBF00BFBF3FC0C0C0404040BFBF7FFFFF7F
        FFFF7FFFFF7FFFFF7FFFFF7FAFAF70404040FFFF00EFEF30EFEF30BFBF006F6F
        308080807070702020207F7F40FFFF7FFFFF7FFFFF7FFFFF7FFFFF7F9F9F5F70
        70707F7F00BFBF006F6F30808080707070202020FFFFFFFFFFFF202020DFDF9F
        FFFF7FFFFF7FFFFF7FFFFF7F5F5F5FA0A0A0909090808080707070202020FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF2020207F7F40BFBF7F9F9F5F50505020202020
        2020707070202020FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object DIG: TLMDButton
      Left = 47
      Top = 148
      Width = 189
      Height = 29
      Hint = 'Digitalizaci'#243'n de Imagenes mediante Scaner'
      Caption = 'Digitalizar Documentaci'#243'n'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
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
    end
  end
  object PC1: TPageControl
    Left = 268
    Top = 0
    Width = 527
    Height = 183
    ActivePage = TabSheet1
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Datos Personales'
      ImageIndex = 2
      object GroupBox8: TGroupBox
        Left = 0
        Top = 62
        Width = 521
        Height = 89
        Caption = 'Domicilio Declarado'
        Enabled = False
        TabOrder = 1
        object Label18: TLabel
          Left = 16
          Top = 17
          Width = 45
          Height = 13
          Caption = 'Domicilio:'
        end
        object Label19: TLabel
          Left = 354
          Top = 17
          Width = 47
          Height = 13
          Caption = 'Provincia:'
        end
        object Label22: TLabel
          Left = 178
          Top = 42
          Width = 49
          Height = 13
          Caption = 'Localidad:'
        end
        object Label23: TLabel
          Left = 190
          Top = 68
          Width = 38
          Height = 13
          Caption = 'Colonia:'
        end
        object Label15: TLabel
          Left = 6
          Top = 68
          Width = 57
          Height = 13
          Caption = 'Cod. Postal:'
        end
        object Label21: TLabel
          Left = 31
          Top = 42
          Width = 32
          Height = 13
          Caption = 'Depto:'
        end
        object D6: TDBEdit
          Left = 66
          Top = 14
          Width = 283
          Height = 22
          CharCase = ecUpperCase
          Color = 16511969
          DataSource = DAFILIADO
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
        object D7: TDBEdit
          Left = 404
          Top = 14
          Width = 107
          Height = 22
          CharCase = ecUpperCase
          Color = 16511969
          DataSource = DAFILIADO
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
        object D9: TDBEdit
          Left = 230
          Top = 39
          Width = 217
          Height = 22
          CharCase = ecUpperCase
          Color = 16511969
          DataSource = DAFILIADO
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
        object D11: TDBEdit
          Left = 230
          Top = 64
          Width = 217
          Height = 22
          CharCase = ecUpperCase
          Color = 16511969
          DataSource = DAFILIADO
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
        object D10: TDBEdit
          Left = 66
          Top = 64
          Width = 55
          Height = 22
          CharCase = ecUpperCase
          Color = 16511969
          DataSource = DAFILIADO
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
        object D8: TDBEdit
          Left = 66
          Top = 39
          Width = 97
          Height = 22
          CharCase = ecUpperCase
          Color = 16511969
          DataSource = DAFILIADO
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
      end
      object GroupBox7: TGroupBox
        Left = 0
        Top = -2
        Width = 521
        Height = 65
        Caption = 'Datos Personales'
        Enabled = False
        TabOrder = 0
        object Label26: TLabel
          Left = 381
          Top = 43
          Width = 28
          Height = 13
          Caption = 'Edad:'
        end
        object Label28: TLabel
          Left = 26
          Top = 43
          Width = 37
          Height = 13
          Caption = 'Afiliado:'
        end
        object Label29: TLabel
          Left = 21
          Top = 16
          Width = 42
          Height = 13
          Caption = 'N'#186' CUIF:'
        end
        object Label24: TLabel
          Left = 180
          Top = 16
          Width = 45
          Height = 13
          Caption = 'Tpo Doc:'
        end
        object Label25: TLabel
          Left = 295
          Top = 16
          Width = 59
          Height = 13
          Caption = 'Fecha Nac.:'
        end
        object D5: TDBEdit
          Left = 412
          Top = 39
          Width = 35
          Height = 22
          CharCase = ecUpperCase
          Color = 16511969
          DataSource = DAFILIADO
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
        object D4: TDBEdit
          Left = 66
          Top = 39
          Width = 283
          Height = 22
          CharCase = ecUpperCase
          Color = 16511969
          DataSource = DAFILIADO
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
        object D1: TDBEdit
          Left = 66
          Top = 14
          Width = 109
          Height = 22
          CharCase = ecUpperCase
          Color = 16511969
          DataSource = DAFILIADO
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
        object D2: TDBEdit
          Left = 230
          Top = 14
          Width = 55
          Height = 22
          CharCase = ecUpperCase
          Color = 16511969
          DataSource = DAFILIADO
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
        object D3: TDBEdit
          Left = 356
          Top = 14
          Width = 91
          Height = 22
          CharCase = ecUpperCase
          Color = 16511969
          DataSource = DAFILIADO
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
    object TabSheet2: TTabSheet
      Caption = 'Cr'#233'ditos ya Emitidos'
      ImageIndex = 1
      object GRILLA1: TDBGrid
        Left = 0
        Top = 0
        Width = 519
        Height = 149
        Align = alClient
        DataSource = DataSource1
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
    object TabSheet5: TTabSheet
      Caption = 'Documentaci'#243'n Digitalizada'
      ImageIndex = 3
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 519
        Height = 149
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
  object GroupBox3: TGroupBox
    Left = 0
    Top = 470
    Width = 793
    Height = 51
    Align = alBottom
    Caption = 'Confirmaci'#243'n'
    TabOrder = 4
    object Agrega: TLMDButton
      Left = 380
      Top = 14
      Width = 87
      Height = 31
      Caption = '   Guardar'
      Enabled = False
      TabOrder = 0
      OnClick = AgregaClick
      Glyph.Data = {
        06020000424D0602000000000000760000002800000028000000140000000100
        0400000000009001000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        33333333FFFFFFFFFFFFFF3333333FFFFFFFFFFFF33333380000000000008F33
        33338888888888883F333330CC08CCF770CC0F333338F38F333338F38F333330
        CC08CCF770CC0F333338F38F333338F38F333330CC07887770CC0F333338F38F
        FFFFF8338F333330CC60000006CC0F333338F338888883338F333330CCCCCCCC
        CCCC0F333338F33FFFFFFFF38F333330C6000000006C0F333338F3888888883F
        8F333330C0FFFFFFFF0C0F333338F8F33333338F8F333330C0FFFFFFFF0C0F33
        3338F8F33333338F8F333330C0FFFFFFFF0C0F333338F8F33333338F8F333330
        C0FFFFFFFF0C0F333338F8F33333338F8F33333000FFFFFFFF000F333338F8F3
        3333338F8F333330C0FFFFFFFF0C0F333338F8FFFFFFFF8F8333333800000000
        0000833333338888888888883333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        33333333333333333333}
      NumGlyphs = 2
    end
    object Borrar: TLMDButton
      Left = 580
      Top = 14
      Width = 97
      Height = 31
      Caption = '  Limpiar'
      TabOrder = 2
      OnClick = BorrarClick
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
        FFFFFFFFFFFF6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF6C006C6CDBDBDB6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF6C00FD00006C6C6C6C6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF6C00FDFDFDFD00006C006C6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF6C00FDFDDADA91910000FC006C6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF6C00FDDADA91910000FCFCFCFC006C6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        6C00DADA91910000FCFCFCFCFCFCFC00006C6CFFFFFFFFFFFFFFFFFFFFFFFF6C
        00DA91910000FCFCFCFCFCFCFCFCFCFC0000006C6CFFFFFFFFFFFFFFFFFF6C00
        91910000FDFDFDFDFDFDFDFDFDFDFDFDFD00DA00006C6CFFFFFFFFFFFF6C0091
        0000FEFEFEFEFEFEFEFEFE6CFEFEFEFEFEFE00DADA00006C6CFFFFFF6C000000
        FEFEFEFEFEFE00006C006C6C006C6C6C6C6C6C006C6C6C00006CFF6C0000FFFF
        FFFFFFFFFFFF4900006C006C6C006C6C6C6C6C6C006C6C006C6C0000FFFFFFFF
        FFFFFFFFFF6CFF494900006CDADA6C91919191919100006C6C6CFF00FFFFFFFF
        FFFFFF6CFFFF6C4949F1F10000FFFF6CFFFFFFFFFFFF006C6CFFFFFF00FFFFFF
        FFFFFFFF6CFFFF49FFF2F1F1F100FFFFDAFFFFFFFFFFFF00FFFFFFFFFF00FFFF
        FFFFFFFFFF91FFFF49FF4900000000FFFFFFFFFFFFFFFFFF00FFFFFFFFFF00FF
        FFFFFFFFFFFF6CFF49FF49FC49F0F000FFFFFFFFFFFF0000FFFFFFFFFFFFFF00
        FFFFFFFFFFFFFF6C494949FFFC49F0F000FFFFFF0000FFFFFFFFFFFFFFFFFFFF
        00FFFFFFFFFFFFFFDA49FE92FFFC49F0F0000000FFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF49F0FE92FFFC49F0F000FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF00FFFFFFFFFFFFFF49F0FE92FFFC49F0F000FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF00FFFFFFFFFFFFFF49F0FE92FFFC49F0F000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF00FFFFFFFFFF000049F0FE92FFFC49F0F000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF00FFFF0000FFFFFF49F0FE92FFFC49F0F000FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF0000FFFFFFFFFFFF49F0FE92FFFC49494900FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF49F0FE92FF49CDCD8400FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF49F0FE49FFCDCD494900FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF49F049F2FF49F2F200FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4949F249FFF2F200FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF49F249FFF2F200FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4949FFF249FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF494949FFFF}
    end
    object Imprime: TLMDButton
      Left = 472
      Top = 14
      Width = 101
      Height = 31
      Caption = '   Planillas'
      Enabled = False
      TabOrder = 1
      OnClick = ImprimeClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
    object SALIR: TLMDButton
      Left = 682
      Top = 14
      Width = 97
      Height = 31
      BiDiMode = bdLeftToRight
      Caption = 'Salir'
      ParentBiDiMode = False
      TabOrder = 3
      OnClick = SALIRClick
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
    end
  end
  object DAFILIADO: TDataSource
    DataSet = AFILIADOS
    Left = 732
    Top = 2
  end
  object AFILIADOS: TADOTable
    Left = 764
    Top = 2
  end
  object CREDITOS: TADOTable
    Left = 688
    Top = 2
  end
  object DataSource1: TDataSource
    DataSet = CREDITOS
    Left = 656
    Top = 2
  end
  object RvS: TRvSystem
    TitleSetup = 'Conf. Impres.'
    TitleStatus = 'Estado del Reporte'
    TitlePreview = 'Imagen Previa'
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.FormState = wsMaximized
    SystemPreview.MarginPercent = 10.000000000000000000
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPreview.ZoomInc = 50
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.Units = unMM
    SystemPrinter.UnitsFactor = 25.400000000000000000
    OnPrint = RvSPrint
    Left = 16
    Top = 474
  end
  object RvS1: TRvSystem
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
    OnPrint = RvS1Print
    Left = 58
    Top = 470
  end
  object DIGITAL: TADOTable
    Left = 550
    Top = 72
  end
  object DataSource2: TDataSource
    DataSet = DIGITAL
    Left = 518
    Top = 74
  end
end

object PEspVerdes: TPEspVerdes
  Left = 298
  Top = 174
  AutoScroll = False
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Envio de Parcelas a Espacios Verdes'
  ClientHeight = 365
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
  object Label2: TLabel
    Left = 48
    Top = 222
    Width = 37
    Height = 13
    Caption = 'Caract.:'
  end
  object Barra1: TStatusBar
    Left = 0
    Top = 346
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
    Height = 313
    ActivePage = TabSheet3
    Align = alClient
    Images = Modulo2.ImageList1
    TabOrder = 1
    object TabSheet3: TTabSheet
      Caption = 'B'#250'squeda de Parcelas'
      object grupo1: TGroupBox
        Left = 0
        Top = 0
        Width = 777
        Height = 284
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
        object Bevel2: TBevel
          Left = 6
          Top = 12
          Width = 753
          Height = 65
        end
        object Label14: TLabel
          Left = 22
          Top = 16
          Width = 116
          Height = 13
          Caption = 'Selecciones el SECTOR'
        end
        object Label29: TLabel
          Left = 200
          Top = 20
          Width = 138
          Height = 13
          Caption = 'Selecciones el N'#176' de Parcela'
        end
        object LB1: TLabel
          Left = 379
          Top = 19
          Width = 110
          Height = 13
          Alignment = taCenter
          Caption = 'N'#176' de Acci'#243'n Asociada'
        end
        object Label6: TLabel
          Left = 12
          Top = 202
          Width = 65
          Height = 13
          Caption = 'Fecha Modif.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 7
          Top = 236
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
        object Busca: TJvBitBtn
          Left = 606
          Top = 22
          Width = 117
          Height = 41
          Caption = 'Busca'
          TabOrder = 0
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
        object DBGrid1: TJvDBGrid
          Left = 6
          Top = 79
          Width = 764
          Height = 110
          DataSource = DataSource1
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 1
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
        object GroupBox3: TGroupBox
          Left = 2
          Top = 254
          Width = 773
          Height = 28
          Align = alBottom
          Enabled = False
          TabOrder = 2
          object Shape2: TShape
            Left = 4
            Top = 9
            Width = 15
            Height = 13
            Brush.Color = clLime
            Shape = stCircle
          end
          object Label55: TLabel
            Left = 24
            Top = 9
            Width = 106
            Height = 13
            Caption = 'Parcela en Esp. Verde'
          end
          object Shape3: TShape
            Left = 169
            Top = 9
            Width = 15
            Height = 13
            Shape = stCircle
          end
          object Label56: TLabel
            Left = 193
            Top = 9
            Width = 72
            Height = 13
            Caption = 'Parcela Normal'
          end
          object C6: TCheckBox
            Left = 622
            Top = 9
            Width = 129
            Height = 17
            Caption = 'Modificaci'#243'n de Datos'
            TabOrder = 0
          end
        end
        object ElSector: TComboBox
          Left = 44
          Top = 36
          Width = 75
          Height = 28
          Color = clInfoBk
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemHeight = 20
          ParentFont = False
          TabOrder = 3
          OnExit = ElSectorExit
          OnKeyPress = ElSectorKeyPress
        end
        object LaAccion: TComboBox
          Left = 214
          Top = 36
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
          TabOrder = 4
          OnExit = LaAccionExit
          OnKeyPress = LaAccionKeyPress
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
          TabOrder = 5
          Text = '00000000'
        end
        object FECNAC: TMaskEdit
          Left = 84
          Top = 196
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
          TabOrder = 6
          Text = '  /  /    '
          OnExit = FECNACExit
          OnKeyPress = FECNACKeyPress
        end
        object OBSERV: TEdit
          Left = 84
          Top = 228
          Width = 675
          Height = 21
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 50
          ParentFont = False
          TabOrder = 7
          OnExit = OBSERVExit
          OnKeyPress = OBSERVKeyPress
        end
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 785
    Height = 33
    ButtonHeight = 26
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
      Width = 619
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsSeparator
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
      Width = 76
      Height = 26
      Anchors = [akTop, akRight]
      Caption = 'F4 - Guardar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
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
      Left = 703
      Top = 2
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object JvBitBtn3: TJvBitBtn
      Left = 711
      Top = 2
      Width = 62
      Height = 26
      Anchors = [akTop, akRight]
      Caption = 'Salir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
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
  object DataSource1: TDataSource
    Left = 378
    Top = 2
  end
end

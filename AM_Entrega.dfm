object AM_EntregaTalon: TAM_EntregaTalon
  Left = 318
  Top = 79
  AutoScroll = False
  Caption = 'Altas y Modificaciones de Entrega de Talonarios'
  ClientHeight = 528
  ClientWidth = 785
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  DesignSize = (
    785
    528)
  PixelsPerInch = 96
  TextHeight = 13
  object todos: TRichEdit
    Left = 29
    Top = 214
    Width = 640
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
    Top = 509
    Width = 785
    Height = 19
    Panels = <
      item
        Width = 500
      end>
  end
  object PC1: TPageControl
    Left = 0
    Top = 44
    Width = 785
    Height = 465
    ActivePage = TabSheet4
    Align = alClient
    TabOrder = 0
    OnChange = PC1Change
    object TabSheet1: TTabSheet
      Caption = 'B'#250'squedas'
      ImageIndex = 2
      DesignSize = (
        777
        437)
      object Label15: TLabel
        Left = 257
        Top = 1
        Width = 93
        Height = 13
        Caption = 'Ingrese N'#176' Entrega:'
      end
      object Bevel1: TBevel
        Left = 0
        Top = 0
        Width = 123
        Height = 59
      end
      object Splitter1: TSplitter
        Left = 0
        Top = 217
        Width = 777
        Height = 3
        Cursor = crVSplit
        Align = alBottom
      end
      object Label4: TLabel
        Left = 602
        Top = 1
        Width = 177
        Height = 26
        Caption = 'Importante!! Solo se modifican '#13#10'Entregas SIN CONFIRMAR!!'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
        WordWrap = True
      end
      object Image1: TImage
        Left = 556
        Top = 112
        Width = 153
        Height = 89
        Proportional = True
      end
      object C2: TRadioButton
        Left = 9
        Top = 3
        Width = 63
        Height = 17
        Caption = 'Fecha'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = C2Click
      end
      object C3: TRadioButton
        Left = 9
        Top = 21
        Width = 98
        Height = 17
        Caption = 'Por N'#176' Entrega'
        TabOrder = 1
        OnClick = C2Click
      end
      object C1: TRadioButton
        Left = 9
        Top = 39
        Width = 69
        Height = 17
        Caption = 'Todos'
        TabOrder = 2
        OnClick = C1Click
      end
      object ODNI: TEdit
        Left = 271
        Top = 16
        Width = 58
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 8
        TabOrder = 3
        Text = '00000000'
        Visible = False
        OnKeyPress = ODNIKeyPress
      end
      object Buscar: TJvBitBtn
        Left = 358
        Top = 7
        Width = 107
        Height = 40
        Caption = 'BUSCAR'
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
      object CB1: TCheckBox
        Left = 134
        Top = 26
        Width = 111
        Height = 17
        Caption = 'Solo sin Confirmar?'
        Checked = True
        State = cbChecked
        TabOrder = 5
      end
      object GroupBox6: TGroupBox
        Left = 468
        Top = 2
        Width = 121
        Height = 49
        Caption = 'Estados de la Entrega'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        object Shape3: TShape
          Left = 10
          Top = 32
          Width = 15
          Height = 13
          Shape = stCircle
        end
        object Shape2: TShape
          Left = 10
          Top = 14
          Width = 15
          Height = 13
          Brush.Color = 13097159
          Shape = stCircle
        end
        object Label12: TLabel
          Left = 36
          Top = 32
          Width = 44
          Height = 13
          Caption = 'Normales'
        end
        object Label14: TLabel
          Left = 36
          Top = 14
          Width = 58
          Height = 13
          Caption = 'Confirmadas'
        end
      end
      object CONFIRMA: TJvBitBtn
        Left = 604
        Top = 31
        Width = 171
        Height = 36
        Caption = 'Verificar Comprobantes'#13#10'        y Confirmar'
        Enabled = False
        TabOrder = 7
        Visible = False
        OnClick = CONFIRMAClick
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
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF0000000000000000000000000000000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF0007070707070707FFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF0007070707070707FFFFFFFFFFFFFFFF00FFFFFFFF00000000
          0000000000000000000000000007A4A4A4FFA4A4A4FFFF00FFFFFFFF00FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000707FFFFFFFFFFFFFFFF00FFFFFFFF00FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0007A4A4A4FFA4A4A4FFFF00FFFFFFFF00FFFFA4
          A4A4FFA4A4A4FFA4A4A4FFFF000707FFFFFFFFFFFFFFFF00FFFFFFFF00FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0007A4A4A4FFA4A4A4FFFF00FFFFFFFF00FFFFA4
          A4A4FFA4A4A4FFA4A4A4FFFF000707FFFFFFFFFFFFFFFF00FFFFFFFF00FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0007A4A4A4FFA4A4A4FFFF00FFFFFFFF00FFFFA4
          A4A4FFA4A4A4FFA4A4A4FFFF000707FFFFFFFFFFFFFFFF00A4FFFFFF00FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000707FFFFFFFFFFFFFF000000FFFFFF00FFFFA4
          A4A4FFA4A4A4FFA4A4A4FFFF00040404040404040400000000FFFFFF00FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000404040404040400000000FFFFFFFF00FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000404040404040000000004FFFFFFFF04040404
          04040404040404040404040404070707070700000000FFFFFFFFFFFF04040404
          04040404040404040404040404A4A4A40700000000FFFFFFFFFFFFFF04040404
          04040404040404040404040404FFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFF00FFFFA4A4A4FFA4A4A4FFA4A400000000FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF00FFFFFFFFFFFFFFFFFFFFFF0000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF00FFFFFFFFFFFFFFFFFFFF00000000FF00FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF0404040404040404040400000000040404FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF04040404040404040400FB000004040404FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF040404040404040400FBFB000404040404FFFFFFFFFF01FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FBFB00FFFFFFFFFFFFFFFF01FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFA40000FFFFFFFF01FFFF01FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF01FFFFFFFFFFFFFFFFFF01FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF01FFFFFF01FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'MS Sans Serif'
        HotTrackFont.Style = []
      end
      object GroupBox7: TGroupBox
        Left = 0
        Top = 220
        Width = 777
        Height = 217
        Align = alBottom
        Caption = 'Talonarios / Comprobantes x Talonario'
        TabOrder = 8
        object Splitter2: TSplitter
          Left = 379
          Top = 15
          Width = 4
          Height = 200
        end
        object DBGrid2: TDBGrid
          Left = 2
          Top = 15
          Width = 377
          Height = 200
          Align = alLeft
          DataSource = DataSource2
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
        object grilla4: TJvStringGrid
          Left = 383
          Top = 15
          Width = 392
          Height = 200
          Align = alClient
          ColCount = 7
          DefaultRowHeight = 17
          RowCount = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
          ParentFont = False
          TabOrder = 1
          Alignment = taLeftJustify
          FixedFont.Charset = DEFAULT_CHARSET
          FixedFont.Color = clWindowText
          FixedFont.Height = -11
          FixedFont.Name = 'MS Sans Serif'
          FixedFont.Style = []
          ColWidths = (
            54
            76
            100
            141
            197
            159
            324)
        end
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 66
        Width = 777
        Height = 151
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Lista de Entregas encontradas'
        TabOrder = 9
        object DBGrid1: TDBGrid
          Left = 2
          Top = 15
          Width = 773
          Height = 134
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
        end
      end
      object FEC: TMaskEdit
        Left = 271
        Top = 21
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
        OnExit = FECExit
        OnKeyPress = FECKeyPress
      end
      object CB3: TCheckBox
        Left = 133
        Top = 48
        Width = 215
        Height = 17
        Caption = 'Correr Impresi'#243'n para Media Hoja A4?'
        Checked = True
        Enabled = False
        State = cbChecked
        TabOrder = 11
        Visible = False
        OnClick = CB3Click
      end
      object CBtodos: TCheckBox
        Left = 362
        Top = 48
        Width = 79
        Height = 17
        Caption = 'Ver Todos'
        TabOrder = 12
        Visible = False
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Datos de la Entrega'
      ImageIndex = 1
      object Label3: TLabel
        Left = 50
        Top = 30
        Width = 33
        Height = 13
        Caption = 'Fecha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 28
        Top = 4
        Width = 55
        Height = 13
        Caption = 'N'#176' Entrega:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Layout = tlBottom
      end
      object Label19: TLabel
        Left = 37
        Top = 59
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
      object Label5: TLabel
        Left = 15
        Top = 88
        Width = 65
        Height = 13
        Caption = 'Responsable:'
      end
      object CUIP: TEdit
        Left = 85
        Top = 1
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
        TabOrder = 0
        Text = '00000'
      end
      object Grupo2: TGroupBox
        Left = 0
        Top = 116
        Width = 777
        Height = 321
        Align = alBottom
        Caption = 'Registro de Talonarios'
        Enabled = False
        TabOrder = 5
        object Label2: TLabel
          Left = 370
          Top = 15
          Width = 80
          Height = 13
          Caption = 'Cant. Talonarios:'
        end
        object Label22: TLabel
          Left = 478
          Top = 16
          Width = 99
          Height = 13
          Caption = 'Cant. Comprobantes:'
        end
        object Label1: TLabel
          Left = 9
          Top = 63
          Width = 74
          Height = 13
          Caption = 'Observaciones:'
        end
        object Agrega2: TJvBitBtn
          Left = 13
          Top = 24
          Width = 63
          Height = 21
          Hint = 'Agrega Nueva Fila'
          Caption = 'Agregar'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object Quita2: TJvBitBtn
          Left = 234
          Top = 16
          Width = 103
          Height = 33
          Hint = 'Quita la Selecci'#243'n'
          Caption = '   Quitar'#13#10'Selecci'#243'n'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnClick = Quita2Click
          Glyph.Data = {
            42010000424D4201000000000000760000002800000011000000110000000100
            040000000000CC00000000000000000000001000000010000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
            7777700000007777777777777777700000007444444444444777700000007488
            8888888847777000000074777777770747777000000074700700700047777000
            000074777777770007777000000074700700700B80777000000074777777770B
            707770000000744444444440B8077000000074F44F44F440B707700000007444
            444444440B80700000007777777777770B807000000077777777777770050000
            0000777777777777705500000000777777777777770070000000777777777777
            777770000000}
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object Borra2: TJvBitBtn
          Left = 120
          Top = 16
          Width = 103
          Height = 33
          Hint = 'Borra la Fila Seleccionada'
          Caption = '      Borrar'#13#10'Seleccionado'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = Borra2Click
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object TOT1: TEdit
          Left = 395
          Top = 30
          Width = 35
          Height = 21
          CharCase = ecUpperCase
          Color = clInfoBk
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 4
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
          Text = '0000'
        end
        object TOT2: TEdit
          Left = 505
          Top = 30
          Width = 45
          Height = 21
          CharCase = ecUpperCase
          Color = clInfoBk
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 6
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
          Text = '000000'
        end
        object PC2: TPageControl
          Left = 2
          Top = 86
          Width = 773
          Height = 233
          ActivePage = TabSheet2
          Align = alBottom
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 6
          object TabSheet2: TTabSheet
            Caption = 'Talonarios'
            object grilla2: TJvStringGrid
              Left = 0
              Top = 0
              Width = 765
              Height = 205
              Align = alClient
              ColCount = 9
              DefaultRowHeight = 17
              RowCount = 2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
              ParentFont = False
              TabOrder = 0
              OnClick = grilla2Click
              Alignment = taLeftJustify
              FixedFont.Charset = DEFAULT_CHARSET
              FixedFont.Color = clWindowText
              FixedFont.Height = -11
              FixedFont.Name = 'MS Sans Serif'
              FixedFont.Style = []
              ColWidths = (
                54
                103
                113
                194
                95
                97
                73
                2
                2)
            end
          end
          object TabSheet5: TTabSheet
            Caption = 'Comprobantes / Hojas'
            ImageIndex = 1
            object grilla3: TJvStringGrid
              Left = 0
              Top = 0
              Width = 765
              Height = 205
              Align = alClient
              ColCount = 7
              DefaultRowHeight = 17
              RowCount = 2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
              ParentFont = False
              TabOrder = 0
              Alignment = taLeftJustify
              FixedFont.Charset = DEFAULT_CHARSET
              FixedFont.Color = clWindowText
              FixedFont.Height = -11
              FixedFont.Name = 'MS Sans Serif'
              FixedFont.Style = []
              ColWidths = (
                54
                64
                83
                84
                302
                2
                2)
            end
          end
        end
        object CONTREC: TJvBitBtn
          Left = 623
          Top = 12
          Width = 147
          Height = 36
          Caption = 'Control Repetici'#243'n '#13#10'de Comprobantes'
          Enabled = False
          TabOrder = 2
          OnClick = CONTRECClick
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
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF0000000000000000000000000000000000FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF0007070707070707FFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF0007070707070707FFFFFFFFFFFFFFFF00FFFFFFFF00000000
            0000000000000000000000000007A4A4A4FFA4A4A4FFFF00FFFFFFFF00FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF000707FFFFFFFFFFFFFFFF00FFFFFFFF00FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF0007A4A4A4FFA4A4A4FFFF00FFFFFFFF00FFFFA4
            A4A4FFA4A4A4FFA4A4A4FFFF000707FFFFFFFFFFFFFFFF00FFFFFFFF00FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF0007A4A4A4FFA4A4A4FFFF00FFFFFFFF00FFFFA4
            A4A4FFA4A4A4FFA4A4A4FFFF000707FFFFFFFFFFFFFFFF00FFFFFFFF00FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF0007A4A4A4FFA4A4A4FFFF00FFFFFFFF00FFFFA4
            A4A4FFA4A4A4FFA4A4A4FFFF000707FFFFFFFFFFFFFFFF00A4FFFFFF00FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF000707FFFFFFFFFFFFFF000000FFFFFF00FFFFA4
            A4A4FFA4A4A4FFA4A4A4FFFF00040404040404040400000000FFFFFF00FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF000404040404040400000000FFFFFFFF00FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF000404040404040000000004FFFFFFFF04040404
            04040404040404040404040404070707070700000000FFFFFFFFFFFF04040404
            04040404040404040404040404A4A4A40700000000FFFFFFFFFFFFFF04040404
            04040404040404040404040404FFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFF
            FFFF00FFFFA4A4A4FFA4A4A4FFA4A400000000FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF00FFFFFFFFFFFFFFFFFFFFFF0000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF00FFFFFFFFFFFFFFFFFFFF00000000FF00FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF0404040404040404040400000000040404FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF04040404040404040400FB000004040404FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF040404040404040400FBFB000404040404FFFFFFFFFF01FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF00FBFB00FFFFFFFFFFFFFFFF01FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFA40000FFFFFFFF01FFFF01FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF01FFFFFFFFFFFFFFFFFF01FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF01FFFFFF01FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object BuscarTalon: TJvBitBtn
          Left = 6
          Top = 16
          Width = 103
          Height = 33
          Caption = 'Agregar Talonarios '#13#10'    Existentes'
          TabOrder = 0
          OnClick = BuscarTalonClick
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object OBSERV: TEdit
          Left = 85
          Top = 58
          Width = 552
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 50
          TabOrder = 1
          OnChange = FECHAChange
          OnKeyPress = OBSERVKeyPress
        end
      end
      object COBRADOR: TComboBox
        Left = 85
        Top = 55
        Width = 347
        Height = 21
        CharCase = ecUpperCase
        ItemHeight = 13
        TabOrder = 3
        OnChange = FECHAChange
        OnExit = COBRADORExit
        OnKeyPress = COBRADORKeyPress
      end
      object GroupBox3: TGroupBox
        Left = 626
        Top = 0
        Width = 151
        Height = 83
        Caption = 'Opciones Modificadas'
        Enabled = False
        TabOrder = 6
        object C4: TCheckBox
          Left = 4
          Top = 14
          Width = 127
          Height = 17
          Caption = 'Datos de la Cabecera'
          TabOrder = 0
        end
        object C7: TCheckBox
          Left = 4
          Top = 62
          Width = 130
          Height = 17
          Caption = 'Modificaci'#243'n de Datos'
          TabOrder = 1
        end
        object C5: TCheckBox
          Left = 4
          Top = 30
          Width = 119
          Height = 17
          Caption = 'Detalle de Talonarios'
          TabOrder = 2
        end
        object C6: TCheckBox
          Left = 4
          Top = 46
          Width = 143
          Height = 17
          Caption = 'Detalle de Comprobantes'
          TabOrder = 3
        end
      end
      object FECHA: TMaskEdit
        Left = 85
        Top = 27
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
        TabOrder = 1
        Text = '  /  /    '
        OnChange = FECHAChange
        OnExit = FECHAExit
        OnKeyPress = FECHAKeyPress
      end
      object CB2: TCheckBox
        Left = 157
        Top = 34
        Width = 213
        Height = 17
        Caption = 'Talonario se Entrega por Comprobante?'
        TabOrder = 2
        OnClick = CB2Click
        OnKeyPress = CB2KeyPress
      end
      object respon: TEdit
        Left = 85
        Top = 81
        Width = 474
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 50
        TabOrder = 4
        OnKeyPress = responKeyPress
      end
    end
  end
  object Proceso: TJvProgressBar
    Left = 588
    Top = 511
    Width = 196
    Height = 17
    Anchors = [akRight, akBottom]
    TabOrder = 1
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 785
    Height = 44
    ButtonHeight = 37
    Caption = 'ToolBar1'
    Color = clGradientInactiveCaption
    EdgeBorders = [ebLeft, ebTop, ebBottom]
    EdgeInner = esLowered
    ParentColor = False
    TabOrder = 4
    DesignSize = (
      783
      40)
    object ToolButton4: TToolButton
      Left = 0
      Top = 2
      Width = 375
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object EXPORTAR: TJvBitBtn
      Left = 375
      Top = 2
      Width = 62
      Height = 37
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
      Visible = False
      OnClick = ExportarClick
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
    object ToolButton2: TToolButton
      Left = 437
      Top = 2
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object IMPRIME: TJvBitBtn
      Left = 445
      Top = 2
      Width = 62
      Height = 37
      Anchors = [akTop, akRight]
      Caption = 'Imprimir'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = IMPRIMEClick
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
    object ToolButton5: TToolButton
      Left = 507
      Top = 2
      Width = 8
      Caption = 'ToolButton5'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object GUARDA: TJvBitBtn
      Left = 515
      Top = 2
      Width = 100
      Height = 37
      Anchors = [akTop, akRight]
      Caption = 'GUARDAR'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
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
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Arial'
      HotTrackFont.Style = []
    end
    object ToolButton1: TToolButton
      Left = 615
      Top = 2
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object Limpiar: TJvBitBtn
      Left = 623
      Top = 2
      Width = 62
      Height = 37
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
      Left = 685
      Top = 2
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object JvBitBtn1: TJvBitBtn
      Left = 693
      Top = 2
      Width = 76
      Height = 37
      Anchors = [akTop, akRight]
      Caption = 'SALIR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
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
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Arial'
      HotTrackFont.Style = []
    end
  end
  object DataSource1: TDataSource
    Left = 4
    Top = 2
  end
  object DataSource2: TDataSource
    Left = 38
    Top = 2
  end
  object DataSource3: TDataSource
    Left = 72
    Top = 2
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
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.Units = unMM
    SystemPrinter.UnitsFactor = 25.400000000000000000
    OnPrint = RvSPrint
    Left = 116
    Top = 4
  end
end

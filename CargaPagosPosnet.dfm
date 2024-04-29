object CargaPosnetPagos: TCargaPosnetPagos
  Left = 257
  Top = 115
  Width = 829
  Height = 462
  Caption = 'Actualiza Pagos Posnet'
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
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 813
    Height = 160
    Align = alTop
    Caption = 'Datos del Comprobante'
    TabOrder = 0
    object Label1: TLabel
      Left = 22
      Top = 26
      Width = 83
      Height = 13
      Caption = 'Nro Comprobante'
    end
    object nroaccion: TEdit
      Left = 116
      Top = 20
      Width = 89
      Height = 21
      TabOrder = 0
      OnKeyPress = nroaccionKeyPress
    end
    object DBGrid1: TDBGrid
      Left = 2
      Top = 47
      Width = 809
      Height = 111
      Align = alBottom
      DataSource = DataSource1
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
    end
  end
  object Barra1: TStatusBar
    Left = 0
    Top = 404
    Width = 813
    Height = 19
    Panels = <
      item
        Width = 550
      end
      item
        Width = 300
      end>
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 160
    Width = 813
    Height = 244
    Align = alClient
    Caption = 'Datos de la Factura Electronica'
    TabOrder = 2
    DesignSize = (
      813
      244)
    object Label20: TLabel
      Left = 38
      Top = 154
      Width = 60
      Height = 13
      Caption = 'Nro Terminal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 58
      Top = 180
      Width = 41
      Height = 13
      Caption = 'Nro Lote'
    end
    object Label3: TLabel
      Left = 528
      Top = 70
      Width = 12
      Height = 13
      Caption = 'Id:'
    end
    object Label4: TLabel
      Left = 544
      Top = 70
      Width = 9
      Height = 13
      Caption = '...'
    end
    object Label5: TLabel
      Left = 32
      Top = 24
      Width = 56
      Height = 13
      Caption = 'Nro Accion:'
    end
    object Label6: TLabel
      Left = 276
      Top = 48
      Width = 38
      Height = 13
      Caption = 'Importe:'
    end
    object Label7: TLabel
      Left = 4
      Top = 48
      Width = 81
      Height = 13
      Caption = 'Tipo Movimiento:'
    end
    object Label8: TLabel
      Left = 188
      Top = 24
      Width = 83
      Height = 13
      Caption = 'Nro Comprobante'
    end
    object Label9: TLabel
      Left = 34
      Top = 72
      Width = 46
      Height = 13
      Caption = 'Cobrador:'
    end
    object Label10: TLabel
      Left = 10
      Top = 206
      Width = 86
      Height = 13
      Caption = 'Nro Cupon/Ticket'
    end
    object Label21: TLabel
      Left = 223
      Top = 208
      Width = 84
      Height = 13
      Caption = 'Importe Abonado:'
    end
    object Label11: TLabel
      Left = 388
      Top = 24
      Width = 87
      Height = 13
      Caption = 'Tipo Comprobante'
    end
    object Label12: TLabel
      Left = 62
      Top = 127
      Width = 36
      Height = 13
      Caption = 'Tarjeta:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 32
      Top = 99
      Width = 69
      Height = 13
      Caption = 'Fecha Posnet:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object TPOTALON: TComboBox
      Left = 111
      Top = 148
      Width = 185
      Height = 21
      CharCase = ecUpperCase
      ItemHeight = 13
      TabOrder = 2
      OnExit = TPOTALONExit
      OnKeyPress = TPOTALONKeyPress
    end
    object Edit1: TEdit
      Left = 113
      Top = 174
      Width = 89
      Height = 21
      TabOrder = 3
      OnExit = Edit1Exit
      OnKeyPress = Edit1KeyPress
    end
    object actu: TBitBtn
      Left = 548
      Top = 150
      Width = 153
      Height = 33
      Caption = 'Actualizar Comprobante'
      TabOrder = 6
      OnClick = actuClick
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
    end
    object SALE: TJvBitBtn
      Left = 712
      Top = 150
      Width = 89
      Height = 33
      Anchors = [akTop, akRight]
      Caption = 'Salir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = SALEClick
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
    object Edit2: TEdit
      Left = 92
      Top = 18
      Width = 85
      Height = 21
      Color = clInfoBk
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object Edit3: TEdit
      Left = 92
      Top = 42
      Width = 177
      Height = 21
      Color = clInfoBk
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
    end
    object Edit4: TEdit
      Left = 320
      Top = 42
      Width = 85
      Height = 21
      Color = clInfoBk
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
    end
    object Edit5: TEdit
      Left = 278
      Top = 18
      Width = 85
      Height = 21
      Color = clInfoBk
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
    end
    object Edit6: TEdit
      Left = 92
      Top = 66
      Width = 423
      Height = 21
      Color = clInfoBk
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 12
    end
    object Edit7: TEdit
      Left = 115
      Top = 200
      Width = 89
      Height = 21
      TabOrder = 4
      OnExit = Edit7Exit
      OnKeyPress = Edit7KeyPress
    end
    object IMPORTE: TEdit
      Left = 316
      Top = 202
      Width = 65
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 18
      ParentFont = False
      TabOrder = 5
      Text = '0000.00'
      OnExit = IMPORTEExit
      OnKeyPress = IMPORTEKeyPress
    end
    object Edit8: TEdit
      Left = 487
      Top = 18
      Width = 186
      Height = 21
      Color = clInfoBk
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 13
    end
    object tarjeta: TComboBox
      Left = 111
      Top = 121
      Width = 185
      Height = 21
      CharCase = ecUpperCase
      ItemHeight = 13
      TabOrder = 1
      OnExit = tarjetaExit
      OnKeyPress = tarjetaKeyPress
    end
    object FECNAC: TMaskEdit
      Left = 111
      Top = 93
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
      TabOrder = 0
      Text = '  /  /    '
      OnExit = FECNACExit
      OnKeyPress = FECNACKeyPress
    end
  end
  object DataSource1: TDataSource
    Left = 226
    Top = 14
  end
end

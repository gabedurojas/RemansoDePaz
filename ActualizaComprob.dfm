object Actucomprob: TActucomprob
  Left = 233
  Top = 142
  Width = 877
  Height = 528
  Caption = 'Actualiza Comprobantes Cobrados'
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
    Width = 861
    Height = 333
    Align = alTop
    Caption = 'Datos del Comprobante'
    TabOrder = 0
    object Label1: TLabel
      Left = 394
      Top = 40
      Width = 53
      Height = 13
      Caption = 'Nro Planilla'
    end
    object Label10: TLabel
      Left = 34
      Top = 39
      Width = 43
      Height = 13
      Caption = 'Cobrador'
    end
    object nroaccion: TEdit
      Left = 456
      Top = 34
      Width = 89
      Height = 21
      TabOrder = 1
      OnExit = nroaccionExit
      OnKeyPress = nroaccionKeyPress
    end
    object DBGrid1: TDBGrid
      Left = 2
      Top = 68
      Width = 857
      Height = 263
      Align = alBottom
      DataSource = DataSource1
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
    end
    object COBRADOR: TComboBox
      Left = 85
      Top = 34
      Width = 279
      Height = 21
      CharCase = ecUpperCase
      ItemHeight = 13
      TabOrder = 0
      Text = 'COBRADOR'
      OnExit = COBRADORExit
      OnKeyPress = COBRADORKeyPress
    end
  end
  object Barra1: TStatusBar
    Left = 0
    Top = 470
    Width = 861
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
    Top = 333
    Width = 861
    Height = 137
    Align = alClient
    Caption = 'Datos de la Factura Electronica'
    TabOrder = 2
    DesignSize = (
      861
      137)
    object Label20: TLabel
      Left = 68
      Top = 111
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
    object Label2: TLabel
      Left = 356
      Top = 109
      Width = 56
      Height = 13
      Caption = 'Nro Factura'
    end
    object Label3: TLabel
      Left = 16
      Top = 110
      Width = 12
      Height = 13
      Caption = 'Id:'
    end
    object Label4: TLabel
      Left = 32
      Top = 110
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
      Top = 52
      Width = 38
      Height = 13
      Caption = 'Importe:'
    end
    object Label7: TLabel
      Left = 4
      Top = 52
      Width = 81
      Height = 13
      Caption = 'Tipo Movimiento:'
    end
    object Label8: TLabel
      Left = 186
      Top = 24
      Width = 83
      Height = 13
      Caption = 'Nro Comprobante'
    end
    object Label9: TLabel
      Left = 36
      Top = 80
      Width = 46
      Height = 13
      Caption = 'Cobrador:'
    end
    object Label11: TLabel
      Left = 388
      Top = 24
      Width = 87
      Height = 13
      Caption = 'Tipo Comprobante'
    end
    object TPOTALON: TComboBox
      Left = 164
      Top = 102
      Width = 175
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 16
      ParentFont = False
      TabOrder = 0
      OnExit = TPOTALONExit
      OnKeyPress = TPOTALONKeyPress
    end
    object Edit1: TEdit
      Left = 424
      Top = 101
      Width = 91
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnExit = Edit1Exit
      OnKeyPress = Edit1KeyPress
    end
    object actu: TBitBtn
      Left = 602
      Top = 88
      Width = 147
      Height = 33
      Caption = 'Actualizar Comprobante'
      TabOrder = 2
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
      Left = 770
      Top = 88
      Width = 76
      Height = 33
      Anchors = [akTop, akRight]
      Caption = 'Salir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
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
      TabOrder = 4
    end
    object Edit3: TEdit
      Left = 92
      Top = 46
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
      TabOrder = 5
    end
    object Edit4: TEdit
      Left = 320
      Top = 46
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
      TabOrder = 6
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
      TabOrder = 7
    end
    object Edit6: TEdit
      Left = 92
      Top = 74
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
      TabOrder = 8
    end
    object Edit8: TEdit
      Left = 487
      Top = 18
      Width = 168
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
  end
  object DataSource1: TDataSource
    Left = 226
    Top = 14
  end
end

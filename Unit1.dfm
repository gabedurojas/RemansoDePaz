object FactuMasiva: TFactuMasiva
  Left = 263
  Top = 219
  Width = 758
  Height = 480
  Caption = 'Proceso de Generacion de Facturcion Masiva'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 742
    Height = 33
    ButtonHeight = 26
    Caption = 'ToolBar1'
    Color = clGradientInactiveCaption
    EdgeBorders = [ebLeft, ebTop, ebBottom]
    EdgeInner = esLowered
    ParentColor = False
    TabOrder = 0
    DesignSize = (
      740
      29)
    object ToolButton4: TToolButton
      Left = 0
      Top = 2
      Width = 641
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object JvBitBtn1: TJvBitBtn
      Left = 641
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
      TabOrder = 0
      OnClick = JvBitBtn1Click
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
  object PC1: TPageControl
    Left = 0
    Top = 33
    Width = 742
    Height = 208
    ActivePage = TabSheet1
    Align = alTop
    Images = Modulo2.ImageList1
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Opciones de B'#250'squeda'
      object Label2: TLabel
        Left = 3
        Top = 13
        Width = 146
        Height = 13
        Caption = 'Per'#237'odo del Estado de Cuenta:'
      end
      object Image3: TImage
        Left = 400
        Top = 14
        Width = 33
        Height = 31
      end
      object Image4: TImage
        Left = 400
        Top = 48
        Width = 33
        Height = 31
      end
      object Label5: TLabel
        Left = 574
        Top = 32
        Width = 13
        Height = 13
        Caption = '...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 576
        Top = 64
        Width = 13
        Height = 13
        Caption = '...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 6
        Top = 43
        Width = 80
        Height = 13
        Caption = 'Cobrador a Filtrar'
      end
      object Label7: TLabel
        Left = 30
        Top = 69
        Width = 55
        Height = 13
        Caption = 'Tipo Objeto'
      end
      object PERIODO: TComboBox
        Left = 154
        Top = 2
        Width = 79
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 20
        ParentFont = False
        TabOrder = 0
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
      object BitBtn1: TBitBtn
        Left = 439
        Top = 12
        Width = 126
        Height = 33
        Caption = 'Proc1 Buscar Acciones'
        TabOrder = 3
      end
      object BitBtn2: TBitBtn
        Left = 440
        Top = 49
        Width = 127
        Height = 32
        Caption = 'Proc2 Buscar Morosos'
        Enabled = False
        TabOrder = 4
      end
      object COBRADOR: TComboBox
        Left = 89
        Top = 36
        Width = 293
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        ParentFont = False
        TabOrder = 1
        Text = 'COBRADOR'
      end
      object TPOOBJ: TComboBox
        Left = 89
        Top = 63
        Width = 291
        Height = 21
        CharCase = ecUpperCase
        ItemHeight = 13
        TabOrder = 2
      end
    end
  end
end

object FactuMasiva1: TFactuMasiva1
  Left = 288
  Top = 183
  Width = 755
  Height = 480
  Caption = 'Proceso de Generacion de Facturcion Masiva'
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
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 739
    Height = 33
    ButtonHeight = 26
    Caption = 'ToolBar1'
    Color = clGradientInactiveCaption
    EdgeBorders = [ebLeft, ebTop, ebBottom]
    EdgeInner = esLowered
    ParentColor = False
    TabOrder = 0
    DesignSize = (
      737
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
    Width = 739
    Height = 408
    ActivePage = TabSheet1
    Align = alClient
    Images = Modulo2.ImageList1
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Opciones de B'#250'squeda'
      object Image3: TImage
        Left = 8
        Top = 214
        Width = 33
        Height = 31
      end
      object Label1: TLabel
        Left = 14
        Top = 39
        Width = 80
        Height = 13
        Caption = 'Cobrador a Filtrar'
      end
      object Label7: TLabel
        Left = 36
        Top = 67
        Width = 55
        Height = 13
        Caption = 'Tipo Objeto'
      end
      object Image1: TImage
        Left = 8
        Top = 130
        Width = 33
        Height = 31
      end
      object Image2: TImage
        Left = 8
        Top = 172
        Width = 33
        Height = 31
      end
      object Label6: TLabel
        Left = 20
        Top = 13
        Width = 75
        Height = 13
        Caption = 'Fecha Proceso:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object BitBtn1: TBitBtn
        Left = 51
        Top = 130
        Width = 276
        Height = 33
        Caption = 'Proc1 Buscar Acciones'
        TabOrder = 2
        OnClick = BitBtn1Click
      end
      object BitBtn2: TBitBtn
        Left = 50
        Top = 173
        Width = 273
        Height = 32
        Caption = 'Proc2'
        Enabled = False
        TabOrder = 3
        OnClick = BitBtn2Click
      end
      object COBRADOR: TComboBox
        Left = 101
        Top = 32
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
        TabOrder = 0
        OnExit = COBRADORExit
        OnKeyPress = COBRADORKeyPress
      end
      object TPOOBJ: TComboBox
        Left = 101
        Top = 61
        Width = 291
        Height = 21
        CharCase = ecUpperCase
        ItemHeight = 13
        TabOrder = 1
        OnExit = TPOOBJExit
        OnKeyPress = TPOOBJKeyPress
      end
      object BitBtn3: TBitBtn
        Left = 52
        Top = 215
        Width = 271
        Height = 32
        Caption = 'Proc3 '
        Enabled = False
        TabOrder = 4
        OnClick = BitBtn3Click
      end
      object RE5: TRichEdit
        Left = 342
        Top = 102
        Width = 384
        Height = 269
        TabOrder = 5
      end
      object Solocob: TCheckBox
        Left = 10
        Top = 106
        Width = 151
        Height = 17
        Caption = 'SOLO COBRADOS?'
        TabOrder = 6
      end
      object FECNAC: TMaskEdit
        Left = 102
        Top = 5
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
        TabOrder = 7
        Text = '  /  /    '
        OnExit = FECNACExit
        OnKeyPress = FECNACKeyPress
      end
    end
  end
end

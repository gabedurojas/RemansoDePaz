object Elimina_Inhum: TElimina_Inhum
  Left = 272
  Top = 135
  AutoScroll = False
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Eliminacion de Inhumado con Error'
  ClientHeight = 303
  ClientWidth = 850
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
  object Label6: TLabel
    Left = 44
    Top = 257
    Width = 34
    Height = 13
    Caption = 'Sector:'
  end
  object Label7: TLabel
    Left = 136
    Top = 257
    Width = 39
    Height = 13
    Caption = 'Parcela:'
  end
  object Label8: TLabel
    Left = 246
    Top = 257
    Width = 56
    Height = 13
    Caption = 'Nro Accion:'
  end
  object Barra1: TStatusBar
    Left = 0
    Top = 284
    Width = 850
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
    Width = 850
    Height = 251
    ActivePage = TabSheet4
    Align = alClient
    TabOrder = 1
    object TabSheet4: TTabSheet
      Caption = 'Ultimo Inhumado Cargado'
      ImageIndex = 1
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 842
        Height = 112
        Align = alClient
        DataSource = DataSource1
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = DBGrid1CellClick
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 112
        Width = 842
        Height = 111
        Align = alBottom
        Caption = 'Inhumado Seleccionado'
        TabOrder = 1
        DesignSize = (
          842
          111)
        object Label4: TLabel
          Left = 13
          Top = 55
          Width = 47
          Height = 13
          Caption = 'Inhumado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 28
          Top = 27
          Width = 34
          Height = 13
          Caption = 'Sector:'
        end
        object Label1: TLabel
          Left = 118
          Top = 27
          Width = 39
          Height = 13
          Caption = 'Parcela:'
        end
        object Label2: TLabel
          Left = 228
          Top = 27
          Width = 56
          Height = 13
          Caption = 'Nro Accion:'
        end
        object Label3: TLabel
          Left = 378
          Top = 27
          Width = 27
          Height = 13
          Caption = 'Nivel:'
        end
        object Label5: TLabel
          Left = 468
          Top = 27
          Width = 40
          Height = 13
          Caption = 'Posici'#243'n'
        end
        object Label9: TLabel
          Left = 26
          Top = 87
          Width = 31
          Height = 13
          Caption = 'Objeto'
        end
        object Label10: TLabel
          Left = 232
          Top = 87
          Width = 68
          Height = 13
          Caption = 'Fecha Ingreso'
        end
        object Label11: TLabel
          Left = 428
          Top = 87
          Width = 90
          Height = 13
          Caption = 'Nro Orden Servicio'
        end
        object Label12: TLabel
          Left = 692
          Top = 87
          Width = 35
          Height = 13
          Caption = 'Id Hab.'
        end
        object GUARDA: TJvBitBtn
          Left = 706
          Top = 14
          Width = 109
          Height = 35
          Anchors = [akTop, akRight]
          Caption = 'ELIMINAR'
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
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
            33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
            993337777F777F3377F3393999707333993337F77737333337FF993399933333
            399377F3777FF333377F993339903333399377F33737FF33377F993333707333
            399377F333377FF3377F993333101933399377F333777FFF377F993333000993
            399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
            99333773FF777F777733339993707339933333773FF7FFF77333333999999999
            3333333777333777333333333999993333333333377777333333}
          NumGlyphs = 2
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -8
          HotTrackFont.Name = 'Arial'
          HotTrackFont.Style = []
        end
        object D6: TEdit
          Left = 68
          Top = 49
          Width = 541
          Height = 21
          CharCase = ecUpperCase
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 50
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object d1: TEdit
          Left = 68
          Top = 19
          Width = 35
          Height = 21
          CharCase = ecUpperCase
          Color = clInfoBk
          Enabled = False
          ReadOnly = True
          TabOrder = 2
        end
        object d2: TEdit
          Left = 164
          Top = 19
          Width = 41
          Height = 21
          CharCase = ecUpperCase
          Color = clInfoBk
          Enabled = False
          ReadOnly = True
          TabOrder = 3
        end
        object d3: TEdit
          Left = 288
          Top = 19
          Width = 73
          Height = 21
          CharCase = ecUpperCase
          Color = clInfoBk
          Enabled = False
          ReadOnly = True
          TabOrder = 4
        end
        object d4: TEdit
          Left = 416
          Top = 19
          Width = 35
          Height = 21
          CharCase = ecUpperCase
          Color = clInfoBk
          Enabled = False
          ReadOnly = True
          TabOrder = 5
        end
        object d5: TEdit
          Left = 514
          Top = 19
          Width = 35
          Height = 21
          CharCase = ecUpperCase
          Color = clInfoBk
          Enabled = False
          ReadOnly = True
          TabOrder = 6
        end
        object d10: TEdit
          Left = 732
          Top = 75
          Width = 83
          Height = 21
          CharCase = ecUpperCase
          Color = clInfoBk
          Enabled = False
          ReadOnly = True
          TabOrder = 7
        end
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 850
    Height = 33
    ButtonHeight = 26
    Caption = 'ToolBar1'
    Color = clGradientInactiveCaption
    EdgeBorders = [ebLeft, ebTop, ebBottom]
    EdgeInner = esLowered
    ParentColor = False
    TabOrder = 2
    DesignSize = (
      848
      29)
    object ToolButton4: TToolButton
      Left = 0
      Top = 2
      Width = 673
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object ToolButton2: TToolButton
      Left = 673
      Top = 2
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object ToolButton3: TToolButton
      Left = 681
      Top = 2
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object SALIR: TJvBitBtn
      Left = 689
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
      OnClick = SALIRClick
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
  object D7: TEdit
    Left = 70
    Top = 249
    Width = 123
    Height = 21
    CharCase = ecUpperCase
    Color = clInfoBk
    Enabled = False
    ReadOnly = True
    TabOrder = 3
  end
  object D8: TEdit
    Left = 316
    Top = 249
    Width = 97
    Height = 21
    CharCase = ecUpperCase
    Color = clInfoBk
    Enabled = False
    ReadOnly = True
    TabOrder = 4
  end
  object D9: TEdit
    Left = 538
    Top = 249
    Width = 73
    Height = 21
    CharCase = ecUpperCase
    Color = clInfoBk
    Enabled = False
    ReadOnly = True
    TabOrder = 5
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

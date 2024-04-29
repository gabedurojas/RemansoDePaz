object Anula_PlanillaCobranza: TAnula_PlanillaCobranza
  Left = 287
  Top = 190
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Anulaci'#243'n de Planilla de Cobranza'
  ClientHeight = 375
  ClientWidth = 781
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
    Width = 781
    Height = 33
    ButtonHeight = 25
    Caption = 'ToolBar1'
    Color = clGradientInactiveCaption
    EdgeBorders = [ebLeft, ebTop, ebBottom]
    EdgeInner = esLowered
    ParentColor = False
    TabOrder = 0
    DesignSize = (
      779
      29)
    object ToolButton4: TToolButton
      Left = 0
      Top = 2
      Width = 561
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object GUARDA: TJvBitBtn
      Left = 561
      Top = 2
      Width = 74
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'F4 - Anular'
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
    object ToolButton1: TToolButton
      Left = 635
      Top = 2
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object Limpiar: TJvBitBtn
      Left = 643
      Top = 2
      Width = 62
      Height = 25
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
      Left = 705
      Top = 2
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object JvBitBtn1: TJvBitBtn
      Left = 713
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
  object JvgGroupBox2: TJvgGroupBox
    Left = 0
    Top = 33
    Width = 781
    Height = 323
    Align = alClient
    Caption = 'Selecci'#243'n y B'#250'squedas'
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
    FullHeight = 0
    object Label7: TLabel
      Left = 8
      Top = 21
      Width = 75
      Height = 13
      Caption = 'Tipo Formulario:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 30
      Top = 46
      Width = 51
      Height = 13
      Caption = 'N'#176' Planilla:'
    end
    object Label4: TLabel
      Left = 249
      Top = 45
      Width = 236
      Height = 26
      Alignment = taCenter
      Caption = 'IMPORTANTE!!... Solo es Posible anular Planilllas NORMALES'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object Buscar: TJvBitBtn
      Left = 146
      Top = 44
      Width = 99
      Height = 21
      Caption = 'Buscar si Existe'
      TabOrder = 1
      OnClick = BuscarClick
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object TPOFORM: TComboBox
      Left = 85
      Top = 18
      Width = 408
      Height = 21
      CharCase = ecUpperCase
      ItemHeight = 13
      TabOrder = 0
      OnExit = TPOFORMExit
      OnKeyPress = TPOFORMKeyPress
    end
    object GroupBox1: TGroupBox
      Left = 2
      Top = 72
      Width = 777
      Height = 249
      Align = alBottom
      Caption = 'Datos de la Planilla Encontrada (Seleccionar para anular)'
      TabOrder = 2
      object DBGrid1: TJvDBGrid
        Left = 2
        Top = 15
        Width = 773
        Height = 232
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
        OnDrawColumnCell = DBGrid1DrawColumnCell
        AlternateRowColor = clGradientInactiveCaption
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 18
        TitleRowHeight = 19
      end
    end
    object INICIO: TEdit
      Left = 84
      Top = 43
      Width = 51
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 7
      ParentFont = False
      TabOrder = 3
      Text = '0000000'
      OnKeyPress = INICIOKeyPress
    end
    object GroupBox6: TGroupBox
      Left = 639
      Top = 10
      Width = 132
      Height = 65
      Caption = 'Estados de la Planilla'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      object Shape3: TShape
        Left = 10
        Top = 47
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
        Left = 31
        Top = 47
        Width = 44
        Height = 13
        Caption = 'Normales'
      end
      object Label14: TLabel
        Left = 31
        Top = 14
        Width = 94
        Height = 13
        Caption = 'Cargado con Pagos'
      end
      object Shape1: TShape
        Left = 10
        Top = 31
        Width = 15
        Height = 13
        Brush.Color = 10461183
        Shape = stCircle
      end
      object Label1: TLabel
        Left = 31
        Top = 31
        Width = 55
        Height = 13
        Caption = 'Ya Anulada'
      end
    end
  end
  object Barra1: TStatusBar
    Left = 0
    Top = 356
    Width = 781
    Height = 19
    Panels = <
      item
        Width = 400
      end
      item
        Width = 300
      end>
  end
  object DataSource1: TDataSource
    Left = 4
    Top = 3
  end
end

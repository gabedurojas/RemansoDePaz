object Busca_Talonario: TBusca_Talonario
  Left = 388
  Top = 139
  AutoScroll = False
  BorderIcons = []
  Caption = 'Selecci'#243'n de Talonarios (ESC - Cancela listado y Sale)'
  ClientHeight = 361
  ClientWidth = 465
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object JvgGroupBox2: TJvgGroupBox
    Left = 0
    Top = 0
    Width = 465
    Height = 342
    Align = alClient
    Caption = 'Selecci'#243'n y B'#250'squedas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
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
    object Label18: TLabel
      Left = 15
      Top = 51
      Width = 62
      Height = 13
      Caption = 'Punto Venta:'
    end
    object Label20: TLabel
      Left = 7
      Top = 22
      Width = 71
      Height = 13
      Caption = 'Tipo Talonario:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Buscar: TJvBitBtn
      Left = 132
      Top = 44
      Width = 123
      Height = 25
      Caption = 'Buscar Existentes'
      TabOrder = 2
      OnClick = BuscarClick
      OnKeyDown = FormKeyDown
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000000
        055557777777777775F508888888888880557F5FFFFFFFFFF75F080000000000
        88057577777777775F755080FFFFFF05088057F7FFFFFF7575F70000000000F0
        F08077777777775757F70FFFFFFFFF0F008075F5FF5FF57577F750F00F00FFF0
        F08057F775775557F7F750FFFFFFFFF0F08057FF5555555757F7000FFFFFFFFF
        0000777FF5FFFFF577770900F00000F000907F775777775777F7090FFFFFFFFF
        00907F7F555555557757000FFFFFFFFF0F00777F5FFF5FF57F77550F000F00FF
        0F05557F777577557F7F550FFFFFFFFF0005557F555FFFFF7775550FFF000000
        05555575FF777777755555500055555555555557775555555555}
      NumGlyphs = 2
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object TPOTALON: TComboBox
      Left = 82
      Top = 17
      Width = 347
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 0
      OnExit = TPOTALONExit
      OnKeyDown = FormKeyDown
      OnKeyPress = TPOTALONKeyPress
    end
    object PV: TComboBox
      Left = 82
      Top = 45
      Width = 45
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 1
      Text = '01'
      OnExit = PVExit
      OnKeyDown = FormKeyDown
      OnKeyPress = PVKeyPress
      Items.Strings = (
        '01'
        '02'
        '03'
        '04')
    end
    object LISTADO: TJvxCheckListBox
      Left = 3
      Top = 94
      Width = 461
      Height = 201
      Hint = 'Seleccione la compra y haga click en la Casilla de Selecci'#243'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 22
      ParentFont = False
      TabOrder = 3
      OnClickCheck = LISTADOClickCheck
      OnKeyDown = FormKeyDown
      InternalVersion = 202
    end
    object SALE: TButton
      Left = 164
      Top = 298
      Width = 114
      Height = 39
      Caption = 'Confirma'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = SALEClick
      OnKeyDown = FormKeyDown
    end
    object Panel1: TPanel
      Left = 22
      Top = 74
      Width = 74
      Height = 19
      Caption = 'N'#176' Talonario'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object Panel2: TPanel
      Left = 260
      Top = 74
      Width = 48
      Height = 19
      Caption = 'PV'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object Panel3: TPanel
      Left = 309
      Top = 74
      Width = 95
      Height = 19
      Caption = 'N'#176' Inicio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object Panel4: TPanel
      Left = 405
      Top = 74
      Width = 49
      Height = 19
      Caption = 'Cantidad'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object Panel5: TPanel
      Left = 97
      Top = 74
      Width = 162
      Height = 19
      Caption = 'Tipo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
  end
  object Barra1: TStatusBar
    Left = 0
    Top = 342
    Width = 465
    Height = 19
    Panels = <
      item
        Width = 500
      end>
  end
end

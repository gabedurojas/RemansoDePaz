object Selec_Pagos: TSelec_Pagos
  Left = 448
  Top = 129
  AutoScroll = False
  Caption = 'Selecci'#243'n de Periodos Pagados'
  ClientHeight = 468
  ClientWidth = 547
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  DesignSize = (
    547
    468)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 502
    Top = 430
    Width = 32
    Height = 13
    Caption = 'Label1'
  end
  object JvgGroupBox5: TJvgGroupBox
    Left = 0
    Top = 0
    Width = 547
    Height = 415
    Align = alTop
    Caption = 'Periodos e Importes Adeudados'
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
    object ListaCheck: TJvCheckListBox
      Left = 2
      Top = 40
      Width = 543
      Height = 373
      OnClickCheck = ListaCheckClickCheck
      Align = alBottom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Terminal'
      Font.Style = []
      ItemHeight = 18
      ParentFont = False
      TabOrder = 0
    end
    object Panel1: TPanel
      Left = 4
      Top = 19
      Width = 87
      Height = 17
      Caption = 'Periodo/Cuota'
      Color = clActiveCaption
      TabOrder = 1
    end
    object Panel2: TPanel
      Left = 94
      Top = 19
      Width = 99
      Height = 17
      Caption = 'Importe'
      Color = clActiveCaption
      TabOrder = 2
    end
    object Panel3: TPanel
      Left = 194
      Top = 19
      Width = 99
      Height = 17
      Caption = 'Punitorio'
      Color = clActiveCaption
      TabOrder = 3
    end
    object Panel4: TPanel
      Left = 297
      Top = 19
      Width = 115
      Height = 17
      Caption = 'Saldo'
      Color = clActiveCaption
      TabOrder = 4
    end
  end
  object GUARDA: TJvBitBtn
    Left = 206
    Top = 421
    Width = 124
    Height = 26
    Anchors = [akBottom]
    Caption = 'CONFIRMAR'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
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
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Arial'
    HotTrackFont.Style = []
  end
  object CB1: TCheckBox
    Left = 4
    Top = 424
    Width = 107
    Height = 17
    Caption = 'Pago NORMAL?'
    Checked = True
    State = cbChecked
    TabOrder = 2
  end
  object barra: TStatusBar
    Left = 0
    Top = 449
    Width = 547
    Height = 19
    Panels = <
      item
        Width = 10
      end
      item
        Width = 50
      end>
  end
end

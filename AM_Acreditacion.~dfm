object AM_Acreditaciones: TAM_Acreditaciones
  Left = 264
  Top = 157
  AutoScroll = False
  Caption = 'Altas y Modificaciones de Acreditaciones'
  ClientHeight = 446
  ClientWidth = 793
  Color = 14801370
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PC1: TPageControl
    Left = 0
    Top = 33
    Width = 793
    Height = 394
    ActivePage = TabSheet2
    Align = alClient
    Images = ImageList1
    TabOrder = 0
    object TabSheet3: TTabSheet
      Caption = 'B'#250'squeda'
      object Bevel1: TBevel
        Left = 0
        Top = 0
        Width = 125
        Height = 81
      end
      object Label15: TLabel
        Left = 131
        Top = 29
        Width = 89
        Height = 13
        Caption = 'Ingrese N'#176' Planilla:'
      end
      object Label4: TLabel
        Left = 418
        Top = 55
        Width = 340
        Height = 26
        Alignment = taCenter
        Caption = 
          'IMPORTANTE!!... Solo es Posible modificar Acreditaciones que no ' +
          'estuvieren CONFIRMADOS en alguna Planilla'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 93
        Width = 785
        Height = 242
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
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
      object GroupBox9: TGroupBox
        Left = 0
        Top = 335
        Width = 785
        Height = 30
        Align = alBottom
        Caption = 'Estados de la Acreditaci'#243'n'
        TabOrder = 1
        object Shape3: TShape
          Left = 13
          Top = 13
          Width = 15
          Height = 13
          Brush.Color = clMoneyGreen
          Shape = stCircle
        end
        object Shape1: TShape
          Left = 105
          Top = 13
          Width = 15
          Height = 13
          Brush.Color = 13553407
          Shape = stCircle
        end
        object Label45: TLabel
          Left = 123
          Top = 13
          Width = 44
          Height = 13
          Caption = 'Anuladas'
        end
        object Label46: TLabel
          Left = 31
          Top = 13
          Width = 58
          Height = 13
          Caption = 'Confirmadas'
        end
        object Label1: TLabel
          Left = 203
          Top = 13
          Width = 44
          Height = 13
          Caption = 'Normales'
        end
        object Shape2: TShape
          Left = 187
          Top = 13
          Width = 15
          Height = 13
          Shape = stCircle
        end
        object C4: TCheckBox
          Left = 508
          Top = 10
          Width = 129
          Height = 17
          Caption = 'Datos de Transacci'#243'n'
          TabOrder = 0
        end
        object C6: TCheckBox
          Left = 650
          Top = 9
          Width = 126
          Height = 17
          Caption = 'Modificacion de Datos'
          TabOrder = 1
        end
      end
      object C1: TRadioButton
        Left = 9
        Top = 3
        Width = 92
        Height = 17
        Caption = 'Fecha'
        TabOrder = 2
        OnClick = C1Click
      end
      object C2: TRadioButton
        Left = 9
        Top = 21
        Width = 94
        Height = 17
        Caption = 'N'#176' Acreditaci'#243'n'
        Checked = True
        TabOrder = 3
        TabStop = True
        OnClick = C1Click
      end
      object C3: TRadioButton
        Left = 9
        Top = 40
        Width = 94
        Height = 17
        Caption = 'N'#176' de Accion'
        TabOrder = 4
        OnClick = C1Click
      end
      object C0: TRadioButton
        Left = 9
        Top = 59
        Width = 69
        Height = 17
        Caption = 'Todos'
        TabOrder = 5
        OnClick = C0Click
      end
      object Buscar: TJvBitBtn
        Left = 262
        Top = 35
        Width = 103
        Height = 38
        Caption = 'Buscar'
        TabOrder = 6
        OnClick = BuscarClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
          FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
          00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
          F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
          00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
          F033777777777337F73309999990FFF0033377777777FFF77333099999000000
          3333777777777777333333399033333333333337773333333333333903333333
          3333333773333333333333303333333333333337333333333333}
        NumGlyphs = 2
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'MS Sans Serif'
        HotTrackFont.Style = []
      end
      object ODNI: TEdit
        Left = 132
        Top = 46
        Width = 57
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 8
        TabOrder = 7
        Text = '00000000'
        OnKeyPress = FECKeyPress
      end
      object FEC: TMaskEdit
        Left = 133
        Top = 46
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
        TabOrder = 8
        Text = '  /  /    '
        Visible = False
        OnExit = FECExit
        OnKeyPress = FECKeyPress
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Ingreso de Datos de la Acreditaci'#243'n'
      ImageIndex = 1
      object JvgGroupBox1: TJvgGroupBox
        Left = 0
        Top = 0
        Width = 785
        Height = 365
        Align = alClient
        Caption = 'B'#250'squeda de la Cuenta'
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
        DesignSize = (
          785
          365)
        FullHeight = 0
        object Label2: TLabel
          Left = 12
          Top = 84
          Width = 236
          Height = 64
          Alignment = taCenter
          Caption = 
            'Recuerde que el N'#176' de Cuenta puede hacer referencia a un T'#237'tulo ' +
            'Accionario, N'#176' de Servicio o N'#176' de Venta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
        object Label3: TLabel
          Left = 7
          Top = 24
          Width = 58
          Height = 13
          Caption = 'Tipo Objeto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 13
          Top = 56
          Width = 52
          Height = 13
          Caption = 'N'#176' Cuenta:'
        end
        object PC2: TPageControl
          Left = 260
          Top = 11
          Width = 520
          Height = 161
          ActivePage = TabSheet5
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 3
          object TabSheet5: TTabSheet
            Caption = 'Consolidados'
            Enabled = False
            object JvgGroupBox7: TJvgGroupBox
              Left = 0
              Top = 0
              Width = 512
              Height = 133
              Align = alClient
              Caption = 'Datos de la Cuenta'
              TabOrder = 0
              Border.Inner = bvSpace
              Border.Outer = bvNone
              Border.Bold = False
              CaptionAlignment = fcaCenter
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
              Colors.CaptionActive = clBackground
              Colors.Client = clBtnFace
              Colors.ClientActive = clBtnFace
              Gradient.FromColor = clBlack
              Gradient.ToColor = clGray
              Gradient.Active = False
              Gradient.Orientation = fgdHorizontal
              Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
              FullHeight = 0
              object Label50: TLabel
                Left = 38
                Top = 19
                Width = 30
                Height = 13
                Caption = 'N'#176' Id.:'
              end
              object Label51: TLabel
                Left = 211
                Top = 21
                Width = 51
                Height = 13
                Caption = 'N'#176' Acci'#243'n:'
              end
              object Label52: TLabel
                Left = 7
                Top = 119
                Width = 35
                Height = 13
                Caption = 'Cliente:'
              end
              object Label53: TLabel
                Left = 32
                Top = 94
                Width = 36
                Height = 13
                Caption = 'N'#176' Cuif:'
              end
              object Label54: TLabel
                Left = 231
                Top = 95
                Width = 37
                Height = 13
                Caption = 'N'#176' DNI:'
              end
              object Label55: TLabel
                Left = 15
                Top = 45
                Width = 54
                Height = 13
                Caption = 'N'#176' Parcela:'
              end
              object Label56: TLabel
                Left = 230
                Top = 45
                Width = 34
                Height = 13
                Caption = 'Sector:'
              end
              object Label57: TLabel
                Left = 35
                Top = 70
                Width = 33
                Height = 13
                Caption = 'Fecha:'
              end
              object Label58: TLabel
                Left = 188
                Top = 70
                Width = 78
                Height = 13
                Caption = 'Deuda Mensual:'
              end
              object D29: TEdit
                Left = 70
                Top = 16
                Width = 51
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 0
              end
              object D30: TEdit
                Left = 263
                Top = 18
                Width = 51
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 1
              end
              object D31: TEdit
                Left = 71
                Top = 42
                Width = 51
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 2
              end
              object D32: TEdit
                Left = 267
                Top = 42
                Width = 51
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 3
              end
              object D33: TEdit
                Left = 68
                Top = 67
                Width = 82
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 4
              end
              object D34: TEdit
                Left = 268
                Top = 67
                Width = 85
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 5
              end
              object D36: TEdit
                Left = 70
                Top = 91
                Width = 98
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 6
              end
              object D37: TEdit
                Left = 270
                Top = 91
                Width = 84
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 7
              end
              object D38: TEdit
                Left = 44
                Top = 116
                Width = 311
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 8
              end
            end
          end
          object TabSheet6: TTabSheet
            Caption = 'Mantenimiento'
            Enabled = False
            ImageIndex = 1
            object JvgGroupBox2: TJvgGroupBox
              Left = 0
              Top = 0
              Width = 512
              Height = 133
              Align = alClient
              Caption = 'Datos de la Cuenta'
              TabOrder = 0
              Border.Inner = bvSpace
              Border.Outer = bvNone
              Border.Bold = False
              CaptionAlignment = fcaCenter
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
              Colors.CaptionActive = clBackground
              Colors.Client = clBtnFace
              Colors.ClientActive = clBtnFace
              Gradient.FromColor = clBlack
              Gradient.ToColor = clGray
              Gradient.Active = False
              Gradient.Orientation = fgdHorizontal
              Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
              FullHeight = 0
              object Label14: TLabel
                Left = 6
                Top = 23
                Width = 51
                Height = 13
                Caption = 'N'#176' Acci'#243'n:'
              end
              object Label26: TLabel
                Left = 22
                Top = 98
                Width = 35
                Height = 13
                Caption = 'Cliente:'
              end
              object Label28: TLabel
                Left = 21
                Top = 73
                Width = 36
                Height = 13
                Caption = 'N'#176' Cuif:'
              end
              object Label29: TLabel
                Left = 263
                Top = 73
                Width = 37
                Height = 13
                Caption = 'N'#176' DNI:'
              end
              object Label31: TLabel
                Left = 128
                Top = 23
                Width = 54
                Height = 13
                Caption = 'N'#176' Parcela:'
              end
              object Label35: TLabel
                Left = 265
                Top = 23
                Width = 34
                Height = 13
                Caption = 'Sector:'
              end
              object Label36: TLabel
                Left = 13
                Top = 48
                Width = 44
                Height = 13
                Caption = 'Vigencia:'
              end
              object Label37: TLabel
                Left = 222
                Top = 48
                Width = 78
                Height = 13
                Caption = 'Deuda Mensual:'
              end
              object D1: TEdit
                Left = 59
                Top = 20
                Width = 51
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 0
              end
              object D2: TEdit
                Left = 184
                Top = 20
                Width = 51
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 1
              end
              object D3: TEdit
                Left = 302
                Top = 20
                Width = 51
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 2
              end
              object D4: TEdit
                Left = 59
                Top = 45
                Width = 82
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 3
              end
              object D5: TEdit
                Left = 302
                Top = 45
                Width = 51
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 4
              end
              object D6: TEdit
                Left = 59
                Top = 70
                Width = 98
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 5
              end
              object D7: TEdit
                Left = 302
                Top = 70
                Width = 84
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 6
              end
              object D8: TEdit
                Left = 59
                Top = 95
                Width = 328
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 7
              end
              object D9: TCheckBox
                Left = 59
                Top = 119
                Width = 81
                Height = 18
                Caption = 'Es Jubilado?'
                TabOrder = 8
              end
            end
          end
          object TabSheet7: TTabSheet
            Caption = 'Servicios'
            Enabled = False
            ImageIndex = 2
            object JvgGroupBox4: TJvgGroupBox
              Left = 0
              Top = 0
              Width = 512
              Height = 133
              Align = alClient
              Caption = 'Datos de la Cuenta'
              TabOrder = 0
              Border.Inner = bvSpace
              Border.Outer = bvNone
              Border.Bold = False
              CaptionAlignment = fcaCenter
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
              Colors.CaptionActive = clBackground
              Colors.Client = clBtnFace
              Colors.ClientActive = clBtnFace
              Gradient.FromColor = clBlack
              Gradient.ToColor = clGray
              Gradient.Active = False
              Gradient.Orientation = fgdHorizontal
              Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
              FullHeight = 0
              object Label39: TLabel
                Left = 23
                Top = 23
                Width = 30
                Height = 13
                Caption = 'N'#176' Id.:'
              end
              object Label40: TLabel
                Left = 153
                Top = 23
                Width = 51
                Height = 13
                Caption = 'N'#176' Acci'#243'n:'
              end
              object Label41: TLabel
                Left = 18
                Top = 98
                Width = 35
                Height = 13
                Caption = 'Cliente:'
              end
              object Label42: TLabel
                Left = 17
                Top = 73
                Width = 36
                Height = 13
                Caption = 'N'#176' Cuif:'
              end
              object Label43: TLabel
                Left = 231
                Top = 73
                Width = 37
                Height = 13
                Caption = 'N'#176' DNI:'
              end
              object Label44: TLabel
                Left = 278
                Top = 24
                Width = 54
                Height = 13
                Caption = 'N'#176' Parcela:'
              end
              object Label48: TLabel
                Left = 415
                Top = 24
                Width = 34
                Height = 13
                Caption = 'Sector:'
              end
              object Label49: TLabel
                Left = 20
                Top = 48
                Width = 33
                Height = 13
                Caption = 'Fecha:'
              end
              object Label60: TLabel
                Left = 190
                Top = 48
                Width = 78
                Height = 13
                Caption = 'Deuda Mensual:'
              end
              object Label61: TLabel
                Left = 3
                Top = 123
                Width = 50
                Height = 13
                Caption = 'Inhumado:'
              end
              object D10: TEdit
                Left = 56
                Top = 20
                Width = 51
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 0
              end
              object D11: TEdit
                Left = 207
                Top = 20
                Width = 51
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 1
              end
              object D12: TEdit
                Left = 334
                Top = 20
                Width = 51
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 2
              end
              object D13: TEdit
                Left = 452
                Top = 20
                Width = 51
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 3
              end
              object D14: TEdit
                Left = 56
                Top = 45
                Width = 82
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 4
              end
              object D15: TEdit
                Left = 270
                Top = 45
                Width = 51
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 5
              end
              object D16: TEdit
                Left = 56
                Top = 70
                Width = 98
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 6
              end
              object D17: TEdit
                Left = 270
                Top = 70
                Width = 84
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 7
              end
              object D18: TEdit
                Left = 56
                Top = 95
                Width = 315
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 8
              end
              object D19: TEdit
                Left = 56
                Top = 120
                Width = 315
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 9
              end
            end
          end
          object TabSheet8: TTabSheet
            Caption = 'Ventas'
            Enabled = False
            ImageIndex = 3
            object JvgGroupBox6: TJvgGroupBox
              Left = 0
              Top = 0
              Width = 512
              Height = 133
              Align = alClient
              Caption = 'Datos de la Cuenta'
              TabOrder = 0
              Border.Inner = bvSpace
              Border.Outer = bvNone
              Border.Bold = False
              CaptionAlignment = fcaCenter
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
              Colors.CaptionActive = clBackground
              Colors.Client = clBtnFace
              Colors.ClientActive = clBtnFace
              Gradient.FromColor = clBlack
              Gradient.ToColor = clGray
              Gradient.Active = False
              Gradient.Orientation = fgdHorizontal
              Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
              FullHeight = 0
              object Label62: TLabel
                Left = 12
                Top = 23
                Width = 30
                Height = 13
                Caption = 'N'#176' Id.:'
              end
              object Label63: TLabel
                Left = 125
                Top = 23
                Width = 51
                Height = 13
                Caption = 'N'#176' Acci'#243'n:'
              end
              object Label64: TLabel
                Left = 7
                Top = 98
                Width = 35
                Height = 13
                Caption = 'Cliente:'
              end
              object Label65: TLabel
                Left = 6
                Top = 73
                Width = 36
                Height = 13
                Caption = 'N'#176' Cuif:'
              end
              object Label66: TLabel
                Left = 230
                Top = 74
                Width = 37
                Height = 13
                Caption = 'N'#176' DNI:'
              end
              object Label67: TLabel
                Left = 263
                Top = 24
                Width = 54
                Height = 13
                Caption = 'N'#176' Parcela:'
              end
              object Label68: TLabel
                Left = 410
                Top = 23
                Width = 34
                Height = 13
                Caption = 'Sector:'
              end
              object Label69: TLabel
                Left = 9
                Top = 48
                Width = 33
                Height = 13
                Caption = 'Fecha:'
              end
              object Label70: TLabel
                Left = 189
                Top = 49
                Width = 78
                Height = 13
                Caption = 'Deuda Mensual:'
              end
              object D20: TEdit
                Left = 44
                Top = 20
                Width = 51
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 0
              end
              object D21: TEdit
                Left = 177
                Top = 20
                Width = 51
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 1
              end
              object D22: TEdit
                Left = 319
                Top = 20
                Width = 51
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 2
              end
              object D23: TEdit
                Left = 447
                Top = 20
                Width = 51
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 3
              end
              object D24: TEdit
                Left = 44
                Top = 45
                Width = 82
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 4
              end
              object D25: TEdit
                Left = 270
                Top = 45
                Width = 51
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 5
              end
              object D26: TEdit
                Left = 44
                Top = 70
                Width = 98
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 6
              end
              object D27: TEdit
                Left = 270
                Top = 70
                Width = 84
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 7
              end
              object D28: TEdit
                Left = 44
                Top = 95
                Width = 309
                Height = 21
                Color = 14277612
                ReadOnly = True
                TabOrder = 8
              end
            end
          end
        end
        object TPOOBJ: TComboBox
          Left = 68
          Top = 21
          Width = 185
          Height = 21
          CharCase = ecUpperCase
          ItemHeight = 13
          TabOrder = 0
          OnExit = TPOOBJExit
          OnKeyPress = TPOOBJKeyPress
        end
        object NROCUENTA: TEdit
          Left = 68
          Top = 51
          Width = 47
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 8
          ParentFont = False
          TabOrder = 1
          Text = '000000'
          OnExit = NROCUENTAExit
          OnKeyPress = NROCUENTAKeyPress
        end
        object BusCodPos: TJvBitBtn
          Left = 119
          Top = 51
          Width = 14
          Height = 19
          TabOrder = 2
          OnClick = BusCodPosClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555500000000
            0555555F7777777775F55500FFFFFFFFF0555577F5FFFFFFF7F550F0FEEEEEEE
            F05557F7F777777757F550F0FFFFFFFFF05557F7F5FFFFFFF7F550F0FEEEEEEE
            F05557F7F777777757F550F0FF777FFFF05557F7F5FFFFFFF7F550F0FEEEEEEE
            F05557F7F777777757F550F0FF7F777FF05557F7F5FFFFFFF7F550F0FEEEEEEE
            F05557F7F777777757F550F0FF77F7FFF05557F7F5FFFFFFF7F550F0FEEEEEEE
            F05557F7F777777757F550F0FFFFFFFFF05557F7FF5F5F5F57F550F00F0F0F0F
            005557F77F7F7F7F77555055070707070555575F7F7F7F7F7F55550507070707
            0555557575757575755555505050505055555557575757575555}
          NumGlyphs = 2
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object grupo1: TJvgGroupBox
          Left = 2
          Top = 184
          Width = 781
          Height = 179
          Align = alBottom
          Caption = 'Datos de la Acreditaci'#243'n'
          TabOrder = 4
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
          object Label30: TLabel
            Left = 122
            Top = 27
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
          object Label38: TLabel
            Left = 7
            Top = 49
            Width = 52
            Height = 13
            Caption = 'N'#176' Recibo:'
          end
          object Label23: TLabel
            Left = 21
            Top = 72
            Width = 38
            Height = 13
            Caption = 'Importe:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label32: TLabel
            Left = 10
            Top = 117
            Width = 35
            Height = 13
            Caption = 'Motivo:'
          end
          object Label11: TLabel
            Left = 35
            Top = 22
            Width = 27
            Height = 13
            Caption = 'N'#176' Id:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Layout = tlBottom
          end
          object FECINI: TMaskEdit
            Left = 158
            Top = 24
            Width = 76
            Height = 21
            EditMask = '!99/99/0000;1;_'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 10
            ParentFont = False
            TabOrder = 0
            Text = '  /  /    '
            OnExit = FECINIExit
            OnKeyPress = FECINIKeyPress
          end
          object RECIBO1: TEdit
            Left = 62
            Top = 43
            Width = 83
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 15
            ParentFont = False
            TabOrder = 1
            Text = '000000000000'
            OnChange = RECIBO1Change
            OnKeyPress = RECIBO1KeyPress
          end
          object IMPORTE: TEdit
            Left = 64
            Top = 69
            Width = 57
            Height = 21
            TabOrder = 2
            Text = '000.00'
            OnChange = RECIBO1Change
            OnExit = IMPORTEExit
            OnKeyPress = IMPORTEKeyPress
          end
          object CH1: TCheckBox
            Left = 10
            Top = 95
            Width = 183
            Height = 17
            Caption = 'No Procesar (No impacta en Caja)'
            TabOrder = 3
            OnClick = RECIBO1Change
            OnKeyPress = CH1KeyPress
          end
          object DESCRIP: TEdit
            Left = 8
            Top = 134
            Width = 457
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 100
            TabOrder = 4
            OnChange = RECIBO1Change
            OnKeyPress = DESCRIPKeyPress
          end
          object IDENTIF: TEdit
            Left = 64
            Top = 19
            Width = 44
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
            TabOrder = 5
            Text = '00000'
          end
        end
        object GroupBox1: TGroupBox
          Left = 472
          Top = 12
          Width = 301
          Height = 347
          Caption = 'Periodos de Mantenimiento a Acreditar'
          TabOrder = 5
          Visible = False
          DesignSize = (
            301
            347)
          object GR2: TStringGrid
            Left = 2
            Top = 13
            Width = 291
            Height = 297
            ColCount = 4
            FixedCols = 0
            RowCount = 2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
            ParentFont = False
            TabOrder = 0
            OnClick = GR2Click
            OnDblClick = GR2DblClick
            ColWidths = (
              79
              65
              69
              61)
          end
          object periodos: TJvBitBtn
            Left = 162
            Top = 315
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
            OnClick = periodosClick
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
        end
      end
    end
  end
  object Barra1: TStatusBar
    Left = 0
    Top = 427
    Width = 793
    Height = 19
    Panels = <
      item
        Width = 400
      end
      item
        Width = 300
      end>
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 793
    Height = 33
    ButtonHeight = 27
    Caption = 'ToolBar1'
    Color = clGradientInactiveCaption
    EdgeBorders = [ebLeft, ebTop, ebBottom]
    EdgeInner = esLowered
    ParentColor = False
    TabOrder = 2
    DesignSize = (
      791
      29)
    object ToolButton4: TToolButton
      Left = 0
      Top = 2
      Width = 401
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object ANULA: TJvBitBtn
      Left = 401
      Top = 2
      Width = 70
      Height = 27
      Caption = 'Anular'
      Enabled = False
      TabOrder = 4
      OnClick = ANULAClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333FFF33FF333FFF339993370733
        999333777FF37FF377733339993000399933333777F777F77733333399970799
        93333333777F7377733333333999399933333333377737773333333333990993
        3333333333737F73333333333331013333333333333777FF3333333333910193
        333333333337773FF3333333399000993333333337377737FF33333399900099
        93333333773777377FF333399930003999333337773777F777FF339993370733
        9993337773337333777333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object ToolButton1: TToolButton
      Left = 471
      Top = 2
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object CONFIRMA: TJvBitBtn
      Left = 479
      Top = 2
      Width = 84
      Height = 27
      Anchors = [akTop, akRight]
      Caption = 'F5 - Confirmar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Visible = False
      OnClick = CONFIRMAClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555550555
        555555555555F55555555505555B0555570555F55557F55555F55B50555B0555
        7B55575F5557F555575555B5055B5557B5555575F55755557555555B5550005B
        55555557555FFF575555555555BBB0055555555555777FF5555555555BBBBB00
        55555555577777FF55555000BBBBBBB050005FFF7777777F5FFFBBB5BBBBBBB0
        BBB577757777777F77755555BBBBBBB55555555577777775555555555BBBBB55
        55555555577777555555555705BBB55505555555F5777555F555557B5555055B
        505555575555F5575F5557B5555B0555B50555755557F55575F55B55555B0555
        5B5557555557F55557555555555B555555555555555755555555}
      NumGlyphs = 2
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -8
      HotTrackFont.Name = 'Arial'
      HotTrackFont.Style = []
    end
    object ToolButton2: TToolButton
      Left = 563
      Top = 2
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object GUARDA: TJvBitBtn
      Left = 571
      Top = 2
      Width = 76
      Height = 27
      Anchors = [akTop, akRight]
      Caption = 'F4 - Guardar'
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
    object ToolButton5: TToolButton
      Left = 647
      Top = 2
      Width = 8
      Caption = 'ToolButton5'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object Limpiar: TJvBitBtn
      Left = 655
      Top = 2
      Width = 62
      Height = 27
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
      Left = 717
      Top = 2
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object JvBitBtn1: TJvBitBtn
      Left = 725
      Top = 2
      Width = 62
      Height = 27
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
  object DataSource1: TDataSource
    Left = 6
    Top = 4
  end
  object ImageList1: TImageList
    Left = 80
    Top = 4
    Bitmap = {
      494C010104000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF00000000000000FF000000000000000000
      00000000000000000000000000000000000000000000BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF00000000000000FFFFFF0000000000FF0000000000
      00000000000000000000000000000000000000000000BFBFBF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BFBFBF00BFBFBF00000000000000000000000000000000000000FF000000
      FF000000FF0000000000000000007F7F7F00000000007F7F7F00000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF0000000000000000000000FFFFFF0000000000FFFFFF0000000000FF00
      0000000000000000000000000000000000000000000000000000BFBFBF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000BFBFBF00BFBFBF00000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      00000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000BFBFBF00000000000000000000000000000000000000
      00000000FF000000FF000000FF007F7F7F00000000007F7F7F000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF0000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FF000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF000000000000000000BFBFBF00000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF00000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      000000000000000000000000000000000000FF0000000000000000000000FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FF000000000000000000000000000000FFFFFF000000
      000000000000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000BFBFBF00000000000000000000000000000000000000
      000000000000000000000000FF000000FF00000000000000FF000000FF000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000FF0000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000BFBFBF00000000000000000000000000000000000000
      0000000000000000000000000000000080000000000000008000000000000000
      000000000000000000000000000000000000000000007F7F7F000000FF000000
      FF0000000000000000000000FF000000FF000000FF0000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000800000000000000080000000FF000000
      0000000000000000000000000000000000007F7F7F000000FF00000000000000
      00000000000000000000000000000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000000000000000FF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000FF00000000000000000000000000000000000000
      0000000000000000FF000000FF000000000000000000000000000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000FF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000FF00000000000000000000000000000000000000
      00000000FF000000FF000000FF000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000FFFFFF000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF00000000000000000000000000000000000000FF000000
      FF000000FF0000000000000000007F7F7F00000000007F7F7F00000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFF8007FFFFFFFFFE3F0003FFFFFFFF
      F81F0001C631F9FFF40F8010E223F0FFE0070000F007F0FF80030000F88FE07F
      40018000FC1FC07F00008000FE3F843F00000000FC1F1E3F80010000F80FFE1F
      C0030000F007FF1FE00F0000E223FF8FF07FC001C631FFC7F8FFC001FFFFFFE3
      FFFFC007FFFFFFF8FFFFE3FFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
end

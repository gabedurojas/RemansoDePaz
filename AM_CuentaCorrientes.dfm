object AM_AccionCtaCte: TAM_AccionCtaCte
  Left = 250
  Top = 86
  AutoScroll = False
  Caption = 'Altas de Cuentas Corrientes por Acciones'
  ClientHeight = 548
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
    Top = 37
    Width = 793
    Height = 492
    ActivePage = TabSheet3
    Align = alClient
    Images = ImageList1
    TabOrder = 0
    object TabSheet3: TTabSheet
      Caption = 'B'#250'squeda y Confirmacion de Pago de la Cuenta Corriente'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 453
        Height = 463
        Align = alLeft
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
      end
      object GroupBox2: TGroupBox
        Left = 460
        Top = 0
        Width = 325
        Height = 463
        Align = alRight
        Caption = 'Detalle de Periodos/Cuotas de la Cuenta Corriente'
        TabOrder = 1
        object Label1: TLabel
          Left = 12
          Top = 368
          Width = 141
          Height = 13
          Caption = 'Especifique el Nro de Recibo:'
        end
        object Buscar: TJvBitBtn
          Left = 164
          Top = 410
          Width = 155
          Height = 35
          Caption = 'CONFIRMAR PAGO'
          TabOrder = 0
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
        object DBGrid2: TDBGrid
          Left = 2
          Top = 15
          Width = 321
          Height = 340
          Align = alTop
          DataSource = DataSource2
          Enabled = False
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
        object nrorecibo: TEdit
          Left = 174
          Top = 370
          Width = 137
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnExit = nroreciboExit
          OnKeyPress = nroreciboKeyPress
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Ingreso de Datos de la Cuenta Corriente'
      ImageIndex = 1
      object JvgGroupBox1: TJvgGroupBox
        Left = 0
        Top = 0
        Width = 785
        Height = 463
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
          463)
        FullHeight = 0
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
          Width = 51
          Height = 13
          Caption = 'N'#176' Accion:'
        end
        object PC2: TPageControl
          Left = 260
          Top = 11
          Width = 520
          Height = 195
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
              Height = 167
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
              Height = 167
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
              Height = 167
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
              Height = 167
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
          Left = 121
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
          Top = 224
          Width = 781
          Height = 237
          Align = alBottom
          Caption = 'Datos de la Cuenta Corrientes'
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
            Left = 43
            Top = 113
            Width = 52
            Height = 13
            Caption = 'N'#176' Recibo:'
          end
          object Label23: TLabel
            Left = 55
            Top = 144
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
            Left = 42
            Top = 177
            Width = 50
            Height = 13
            Caption = 'NroPlanilla'
          end
          object Label11: TLabel
            Left = 35
            Top = 24
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
          object Label20: TLabel
            Left = 20
            Top = 55
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
          object Label5: TLabel
            Left = 23
            Top = 83
            Width = 62
            Height = 13
            Caption = 'Punto Venta:'
          end
          object FECINI: TMaskEdit
            Left = 162
            Top = 20
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
            Left = 100
            Top = 107
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
            Text = '000000'
            OnExit = RECIBO1Exit
            OnKeyPress = RECIBO1KeyPress
          end
          object IMPORTE: TEdit
            Left = 100
            Top = 139
            Width = 57
            Height = 21
            TabOrder = 2
            Text = '000.00'
            OnExit = IMPORTEExit
            OnKeyPress = IMPORTEKeyPress
          end
          object DESCRIP: TEdit
            Left = 100
            Top = 170
            Width = 83
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 100
            TabOrder = 3
            OnExit = DESCRIPExit
            OnKeyPress = DESCRIPKeyPress
          end
          object IDENTIF: TEdit
            Left = 64
            Top = 21
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
            TabOrder = 4
            Text = '00000'
          end
          object TPOTALON: TComboBox
            Left = 100
            Top = 49
            Width = 185
            Height = 21
            CharCase = ecUpperCase
            ItemHeight = 13
            TabOrder = 5
            OnExit = TPOTALONExit
            OnKeyPress = TPOTALONKeyPress
          end
          object PV: TComboBox
            Left = 100
            Top = 76
            Width = 51
            Height = 21
            CharCase = ecUpperCase
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 6
            Text = '1'
            OnExit = PVExit
            OnKeyPress = PVKeyPress
            Items.Strings = (
              '1'
              '2'
              '3'
              '4')
          end
        end
        object Panel1: TPanel
          Left = 440
          Top = 8
          Width = 341
          Height = 451
          TabOrder = 5
          object GroupBox1: TGroupBox
            Left = 1
            Top = 1
            Width = 339
            Height = 449
            Align = alClient
            TabOrder = 0
            DesignSize = (
              339
              449)
            object GR2: TStringGrid
              Left = 2
              Top = 15
              Width = 335
              Height = 384
              Align = alTop
              ColCount = 4
              FixedCols = 0
              RowCount = 2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
              ParentFont = False
              TabOrder = 0
              OnClick = GR2Click
              ColWidths = (
                85
                72
                79
                77)
            end
            object periodos: TJvBitBtn
              Left = 184
              Top = 406
              Width = 135
              Height = 35
              Anchors = [akBottom]
              Caption = 'CONFIRMAR'
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial Black'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              OnClick = periodosClick
              Glyph.Data = {
                360C0000424D360C000000000000360000002800000020000000200000000100
                180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7
                FDFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1F33BA5
                7073A38AFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6EB15AA6300C6
                5300C74B57A17CFFEDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2C9DF00AC5400BF50F3FF
                FAEEFBF500BD3E33A16AFFE3F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDBED000AC4608BE5AD7FEED75F2
                AE9CF9CCFFFFFF00BA4210A259FFD8EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8B3C000AB3B15BB61B5FCD957EA9483F1
                B69AF6C8A9FDD8FFFFFF02B74A00A248F2CBE2FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFADA9AC00A73123BD6B89F8BC32E37861EB9C78EF
                AD8DF3BE9DF7CB9CFACEF6FFFF15B65400A138DDBFD2FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF92A09800A3282FC0764FF09507DB5C3BE37F52E89069EC
                A079F0AE87F2B88EF3BF7FF2B6D0FFEB21B761009E2AC7B4C1FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFCFF7C9983009E2131C3792BE67B00D54C07DB5E29E07241E58354E8
                9164EA9E6EEEA674EEAA73EEAA60EB9BA4FFCE31B96E00991EAEAAADFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFF4FF59926B00961A27C77B15DB6200D04B00D65500DA590DDC622AE0723DE4
                814AE68A54E8925AE99458E99553E8903DE48069F6A746BE7A00931492A097FF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAFF
                368D5200901813CC7808D14F00CA4700CF4F00D35300D55700DA5803DB5D1BDF
                6A2BE07334E37B38E37D3AE37E35E27B2CE17412DD6326EB794BC481008C0B7C
                9781FFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECFC178537
                00891700CD7000C64000C54300C94900CC4900CD4600D1480CD65C1DDB662BE0
                7132E17837E17935E2782AE07211DD6400D95300D85300D65112E16242C98200
                8505598F66FFF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF86C297007E0A
                00CA6800BB3300BF3D00BF3800C33C34D16659DB8373E1946BE2927DE69F2FDB
                6D53E3876DE69764E59267E5936DE5976DE69549E08021D66200CD4000D44D30
                CF7F008004368649FFECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FBA9700BE4B
                00B22A00B62F00B83156D27988DD9D78DD9574DE9370DE938BE4A619D45F0DD0
                4D00CD3B53E18581E7A371E49871E59872E39875E3977DE39E80E29E34D26800
                C63416D277007A05167E2DFEE2F9FFFFFFFFFFFFFFFFFFFFFFFF81D39D00A40D
                00AE2345C5619CDFAA85DA9A81DB9981DD9A81DF9D9FE6B105CB4C06C73DFFFF
                FFFFFEFF00C62C45DA7999E9B180E4A081E5A181E3A081E39F81E19E91E2A86A
                D88800BB2300D06B007605057613F0D5EDFFFFFFFFFFFFFFFFFFFFFFFF22B441
                0DAF2DBDE7C58EDAA090DDA390DEA391DFA6ABE7BC00BF3216C750FFFFFFFFFF
                FFFFFFFFFFFFFF03C5382FD265B0EBC18EE3A890E5AA90E3A990E2A78FE1A79A
                E2AC88DC9E00B31E00CA5B007305006E00DEC8DDFFFFFFFFFFFFFFFFFFFFFFFF
                3CBC5500A611BDE8C79FDFAEA2E2B2B2E7C000B21930CA62FFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFF12C74B10C84AC3EECF9DE5B19EE4B19EE5B19EE4B09E
                E3AFA4E3B3AAE3B600AE2100C24A007205006700C6B9C5FFFFFFFFFFFFFFFFFF
                FFFFFF73CC81009B00C8EBD1B5E6C100A50060D07EFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFF34CB6200BB2DD1F1DAAEE7BDADE7BCADE5BBAD
                E5BAADE4B9B0E4BBC7EACE07A91F00B836007207005C00D1D3D1FFFFFFFFFFFF
                FFFFFFFFFFFFABDBAE009B00009D009BDBA6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF68D48600AD0DD9F2E0BFEAC9BBE8C5BC
                E9C6BCE8C4BCE6C4BDE6C5DAEFDD11A72200AC22006D0088B585FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFBEE7C7BAE4BDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1DFAD009F00DCF2E1D2F0D8CA
                ECD1CAEBD1CAEAD0CAEBD0CAE9CEF4F7F429AC39009F098ABC92FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCEBD2009300D3EFDAE7
                F5EAD7EFDBD7F0DBD7EFDCD6EED9E9F5EBE0F0E2007700BEE4BFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2F6E9008A00C2
                E6C6FFFEFFE5F3E7E5F4E7FFFFFFB3DDB4007000CFE5CDFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4FBF800
                84009ED8A1FFFFFFFFFFFF8BCC8E007100DEF2E2FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFF00850083CB886AC070007700F0F9F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFF048F04008100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              HotTrackFont.Charset = ANSI_CHARSET
              HotTrackFont.Color = clWindowText
              HotTrackFont.Height = -11
              HotTrackFont.Name = 'Arial Black'
              HotTrackFont.Style = []
            end
            object Button1: TButton
              Left = 34
              Top = 408
              Width = 121
              Height = 33
              Caption = 'CANCELAR'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial Black'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
              OnClick = Button1Click
            end
          end
        end
      end
    end
  end
  object Barra1: TStatusBar
    Left = 0
    Top = 529
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
    Height = 37
    ButtonHeight = 31
    Caption = 'ToolBar1'
    Color = clGradientInactiveCaption
    EdgeBorders = [ebLeft, ebTop, ebBottom]
    EdgeInner = esLowered
    ParentColor = False
    TabOrder = 2
    DesignSize = (
      791
      33)
    object ToolButton4: TToolButton
      Left = 0
      Top = 2
      Width = 515
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object ToolButton1: TToolButton
      Left = 515
      Top = 2
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object ToolButton2: TToolButton
      Left = 523
      Top = 2
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object GUARDA: TJvBitBtn
      Left = 531
      Top = 2
      Width = 79
      Height = 31
      Anchors = [akTop, akRight]
      Caption = 'Guardar'
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
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFEFEFEC2C2C2ADADADACACACACACAC9393938484848585858686868787
        878787878989898A8A8A8A8A8A8C8C8C8D8D8D8E8E8E8F8F8F8F8F8F9C9C9CB2
        B2B2B3B3B3B5B5B5B7B7B7BABABABBBBBBD3D3D3FFFFFFFFFFFFFFFFFFFFFFFF
        F4F4F46666663B3B3B5B5B5B6A6A6A6C6C6CEDEDEDFBFBFBFAFAFAF4F4F4EFEF
        EFE6E6E6E0E0E0DADADAD5D5D5CFCFCFC8C8C8C2C2C2BBBBBBB7B7B7ABABAB42
        4242383838282828181818060606000000000000C1C1C1FFFFFFFFFFFFDFDFDF
        3434345757579494948F8F8F8F8F8F858585FCFCFCE9E9E9CDCDCDD3D3D3D6D6
        D6F2F2F2ECECECECECECEDEDEDEFEFEFF1F1F1F2F2F2F2F2F2F1F1F1FFFFFFB6
        B6B6BABABABFBFBFC4C4C4C8C8C8CECECEBEBEBE7F7F7FFFFFFFFFFFFF131313
        656565787878666666676767676767505050F6F6F6A9A9A94F4F4F4F4F4F2D2D
        2DD9D9D9D1D1D1D4D4D4D4D4D4D3D3D3CFCFCFD0D0D0D3D3D3D5D5D5ECECEC5E
        5E5E636363636363636363636363626262595959AEAEAEFFFFFFFFFFFF373737
        676767606060616161616161626262505050ECECECA6A6A64040405050503939
        39D6D6D6D7D7D7D9D9D9DCDCDCDFDFDFE3E3E3DEDEDED1D1D1CFCFCFEBEBEB46
        4646696969646464666666616161626262515151C8C8C8FFFFFFFFFFFF373737
        5858585757575757575959595757572F2F2FE4E4E4B4B4B44747475555553E3E
        3EDADADADBDBDBDDDDDDE0E0E0E1E1E1E5E5E5E8E8E8EEEEEEDCDCDCE4E4E438
        3838545454676767686868555555595959333333F3F3F3FFFFFFFFFFFF3E3E3E
        4C4C4C4D4D4D4E4E4E4A4A4A3B3B3B2E2E2EDCDCDCB2B2B24848485656564040
        40D9D9D9DFDFDFE0E0E0E2E2E2E5E5E5E7E7E7E9E9E9ECECECF4F4F4E7E7E742
        42425A5A5A5656566464644A4A4A4E4E4E292929FFFFFFFFFFFFFFFFFF4D4D4D
        414141454545454545343434373737292929DDDDDDD9D9D97979798686867878
        78EAEAEAE9E9E9EBEBEBEEEEEEF1F1F1F4F4F4F6F6F6F8F8F8FFFFFFEDEDED49
        49495E5E5E5F5F5F535353424242444444383838FFFFFFFFFFFFFFFFFF5F5F5F
        3636363E3E3E2E2E2E2E2E2E2F2F2F3333338D8D8DB1B1B1B8B8B8B9B9B9BBBB
        BBADADADADADADADADADADADADAEAEAEAFAFAFAFAFAFAFAFAFB7B7B781818165
        65656969696B6B6B5555552D2D2D3939394C4C4CFFFFFFFFFFFFFFFFFF747474
        2C2C2C3232322525251F1F1F2121210909093E3E3E3939393939393838383838
        383838383636363434343434343535353535353535352B2B2B2B2B2B32323237
        37373838383B3B3B2121212525252D2D2D676767FFFFFFFFFFFFFFFFFF8E8E8E
        2222223131313E3E3E8484847C7C7C8181817C7C7C7D7D7D7D7D7D7E7E7E7E7E
        7E7F7F7F7D7D7D8383837D7D7D7979797A7A7A7B7B7B7D7D7D7E7E7E7F7F7F7F
        7F7F8080808A8A8A2D2D2D1D1D1D191919848484FFFFFFFFFFFFFFFFFFACACAC
        121212313131888888FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC
        FCFCF5F5F5FFFFFF4C4C4C111111070707AAAAAAFFFFFFFFFFFFFFFFFFCCCCCC
        0000003A3A3A6D6D6DF3F3F3DFDFDFE2E2E2E3E3E3E4E4E4E6E6E6E7E7E7E6E6
        E6E6E6E6E7E7E7E7E7E7E6E6E6E7E7E7E7E7E7E6E6E6E5E5E5DEDEDEDBDBDBDA
        DADAD5D5D5F5F5F52929290D0D0D000000D0D0D0FFFFFFFFFFFFFFFFFFF5F5F5
        000000484848606060FFFFFFF1F1F1F4F4F4F8F8F8FBFBFBFCFCFCFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFAFAFAF8F8F8F4F4F4EC
        ECECE7E7E7FAFAFA070707090909000000FDFDFDFFFFFFFFFFFFFFFFFFFFFFFF
        000000565656555555FCFCFCE2E2E2E4E4E4E7E7E7E9E9E9E9E9E9EAEAEAEAEA
        EAEAEAEAEAEAEAEAEAEAEAEAEAE9E9E9E8E8E8E8E8E8E8E8E8E5E5E5E4E4E4E3
        E3E3D2D2D2F9F9F9000000020202000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        000000555555525252FFFFFFF0F0F0F4F4F4F6F6F6F9F9F9FCFCFCFDFDFDFDFD
        FDFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFDFDFDFBFBFBFAFAFAF8F8F8F3F3F3F1
        F1F1EEEEEEEAEAEA000000000000080808FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0C0C0C535353575757FBFBFBE9E9E9EBEBEBEDEDEDEFEFEFF2F2F2F1F1F1F2F2
        F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F1F1F1F2F2F2EEEEEEEDEDEDEBEBEBE9
        E9E9EAEAEAD2D2D2000000000000323232FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        2C2C2C4D4D4D5D5D5DFAFAFAE8E8E8EBEBEBEDEDEDEEEEEEEFEFEFF2F2F2F2F2
        F2F1F1F1F1F1F1F1F1F1F1F1F1F2F2F2F1F1F1EFEFEFEFEFEFEDEDEDEBEBEBE9
        E9E9EAEAEADEDEDE0404040000005E5E5EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        545454414141707070E9E9E9EEEEEEEEEEEEF0F0F0F3F3F3F3F3F3F5F5F5F6F6
        F6F7F7F7F7F7F7F7F7F7F7F7F7F5F5F5F5F5F5F3F3F3F3F3F3F0F0F0EEEEEEEC
        ECECEFEFEFBFBFBF6262620000007C7C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        6A6A6A3D3D3D858585DDDDDDEAEAEAEAEAEAEBEBEBEDEDEDEDEDEDEEEEEEEEEE
        EEEEEEEEEFEFEFEFEFEFEEEEEEEFEFEFEDEDEDEEEEEEECECECEBEBEBEAEAEAE8
        E8E8EEEEEEB3B3B39C9C9C000000A3A3A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        8888882828289B9B9BD5D5D5ECECECEBEBEBECECECECECECEEEEEEEDEDEDEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEDEDEDEDEDEDEDEDEDEBEBEBEBEBEBEAEAEAE9
        E9E9EFEFEFAEAEAEA4A4A4000000CDCDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        B0B0B0141414C6C6C6E1E1E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFC4C4C4DDDDDD000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FEFEFE0000003B3B3B2E2E2E2F2F2F3030303030303030303232322222221F1F
        1F1818181717171717171717171919190C0C0C04040403030300000000000000
        0000000000000000000000090909FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFE8E8E88585858F8F8F9999999B9B9B9B9B9B9B9B9B9A9A9AA1A1A1A9A9
        A9B3B3B3B6B6B6B6B6B6B6B6B6B5B5B5BCBCBCC3C3C3CBCBCBD1D1D1D1D1D1D1
        D1D1D0D0D0D4D4D4DDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
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
    object ToolButton5: TToolButton
      Left = 610
      Top = 2
      Width = 8
      Caption = 'ToolButton5'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object Limpiar: TJvBitBtn
      Left = 618
      Top = 2
      Width = 62
      Height = 31
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
      Left = 680
      Top = 2
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object JvBitBtn1: TJvBitBtn
      Left = 688
      Top = 2
      Width = 76
      Height = 31
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
  object DataSource2: TDataSource
    Left = 38
    Top = 4
  end
end

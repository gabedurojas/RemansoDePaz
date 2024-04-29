object Consul_Panteones: TConsul_Panteones
  Left = 286
  Top = 58
  AutoScroll = False
  Caption = 'Consulta de General por Mantencion de Pateones'
  ClientHeight = 562
  ClientWidth = 818
  Color = 14801370
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
  object Image1: TImage
    Left = 511
    Top = 51
    Width = 153
    Height = 89
    Proportional = True
  end
  object todos: TRichEdit
    Left = 10
    Top = 172
    Width = 751
    Height = 49
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -4
    Font.Name = 'Arial'
    Font.Style = []
    Lines.Strings = (
      'R5')
    ParentFont = False
    TabOrder = 3
  end
  object Barra1: TStatusBar
    Left = 0
    Top = 543
    Width = 818
    Height = 19
    Panels = <
      item
        Width = 300
      end
      item
        Width = 50
      end>
  end
  object PC1: TJvgPageControl
    Left = 0
    Top = 33
    Width = 818
    Height = 510
    ActivePage = TabSheet1
    Align = alClient
    DockSite = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Images = ImageList1
    TabOrder = 0
    TabStop = False
    TabStyle.Borders = [fsdLeft, fsdTop, fsdRight, fsdBottom]
    TabStyle.BevelInner = bvRaised
    TabStyle.BevelOuter = bvRaised
    TabStyle.Bold = True
    TabStyle.BackgrColor = 14801370
    TabStyle.Font.Charset = DEFAULT_CHARSET
    TabStyle.Font.Color = clWindowText
    TabStyle.Font.Height = -11
    TabStyle.Font.Name = 'Arial'
    TabStyle.Font.Style = []
    TabStyle.CaptionHAlign = fhaCenter
    TabStyle.Gradient.Active = False
    TabStyle.Gradient.Orientation = fgdHorizontal
    TabSelectedStyle.Borders = [fsdLeft, fsdTop, fsdRight, fsdBottom]
    TabSelectedStyle.BevelInner = bvNone
    TabSelectedStyle.BevelOuter = bvNone
    TabSelectedStyle.Bold = True
    TabSelectedStyle.BackgrColor = clBtnHighlight
    TabSelectedStyle.Font.Charset = DEFAULT_CHARSET
    TabSelectedStyle.Font.Color = clBtnText
    TabSelectedStyle.Font.Height = -11
    TabSelectedStyle.Font.Name = 'Arial'
    TabSelectedStyle.Font.Style = []
    TabSelectedStyle.CaptionHAlign = fhaCenter
    TabSelectedStyle.Gradient.Active = False
    TabSelectedStyle.Gradient.Orientation = fgdHorizontal
    Wallpaper.FillCaptionBakgr = True
    Wallpaper.FillClient = True
    Options = [ftoAutoFontDirection, ftoExcludeGlyphs]
    object TabSheet1: TTabSheet
      Caption = 'B'#250'squedas'
      ImageIndex = 1
      object DBGrid1: TJvDBGrid
        Left = 0
        Top = 0
        Width = 810
        Height = 129
        Align = alTop
        DataSource = DataSource0
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
        AlternateRowColor = clGradientInactiveCaption
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 18
        TitleRowHeight = 19
      end
      object GroupBox8: TGroupBox
        Left = 0
        Top = 129
        Width = 810
        Height = 352
        Align = alClient
        Caption = 'Detalle General de Deudas de la Accion Seleccionada'
        TabOrder = 1
        object Label21: TLabel
          Left = 14
          Top = 172
          Width = 175
          Height = 20
          Caption = 'Saldo Mantenimiento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label27: TLabel
          Left = 89
          Top = 66
          Width = 97
          Height = 20
          Caption = 'Nro Cuenta:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label32: TLabel
          Left = 126
          Top = 96
          Width = 56
          Height = 20
          Caption = 'Titular:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label33: TLabel
          Left = 22
          Top = 126
          Width = 162
          Height = 20
          Caption = 'Fecha Inicio Deuda:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label31: TLabel
          Left = 66
          Top = 40
          Width = 119
          Height = 13
          Caption = 'PERIODO DE CALCULO'
        end
        object dmante: TEdit
          Left = 193
          Top = 162
          Width = 111
          Height = 32
          Color = clInfoBk
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          Text = '00.00'
        end
        object Edit3: TEdit
          Left = 192
          Top = 94
          Width = 549
          Height = 24
          Hint = 'Maximo 200 caracteres aceptados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 200
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          Text = 'Edit3'
        end
        object Edit2: TEdit
          Left = 192
          Top = 124
          Width = 111
          Height = 24
          Hint = 'Maximo 200 caracteres aceptados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 200
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          Text = 'Edit3'
        end
        object JvBitBtn1: TJvBitBtn
          Left = 310
          Top = 164
          Width = 39
          Height = 29
          TabOrder = 3
          OnClick = JvBitBtn1Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00303333333333
            333337F3333333333333303333333333333337F33FFFFF3FF3FF303300000300
            300337FF77777F77377330000BBB0333333337777F337F33333330330BB00333
            333337F373F773333333303330033333333337F3377333333333303333333333
            333337F33FFFFF3FF3FF303300000300300337FF77777F77377330000BBB0333
            333337777F337F33333330330BB00333333337F373F773333333303330033333
            333337F3377333333333303333333333333337FFFF3FF3FFF333000003003000
            333377777F77377733330BBB0333333333337F337F33333333330BB003333333
            333373F773333333333330033333333333333773333333333333}
          NumGlyphs = 2
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object GroupBox10: TGroupBox
          Left = 364
          Top = 132
          Width = 137
          Height = 61
          Caption = 'INHUMADOS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          object Label39: TLabel
            Left = 12
            Top = 28
            Width = 16
            Height = 20
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Button3: TButton
            Left = 82
            Top = 28
            Width = 39
            Height = 23
            Caption = 'Ver'
            TabOrder = 0
            OnClick = Button3Click
          end
        end
        object ODNI: TEdit
          Left = 192
          Top = 59
          Width = 125
          Height = 28
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 11
          ParentFont = False
          TabOrder = 5
          Text = '00000000'
        end
        object PERIODO: TComboBox
          Left = 192
          Top = 24
          Width = 95
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 20
          ParentFont = False
          TabOrder = 6
          OnExit = PERIODOExit
          OnKeyPress = PERIODOKeyPress
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
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Parcelas e Inhumados'
      ImageIndex = 2
      object PC2: TJvgPageControl
        Left = 0
        Top = 0
        Width = 810
        Height = 481
        ActivePage = TabSheet5
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        TabOrder = 0
        TabStop = False
        TabStyle.Borders = [fsdLeft, fsdTop, fsdRight, fsdBottom]
        TabStyle.BevelInner = bvNone
        TabStyle.BevelOuter = bvNone
        TabStyle.Bold = False
        TabStyle.BackgrColor = clBtnFace
        TabStyle.Font.Charset = DEFAULT_CHARSET
        TabStyle.Font.Color = clWindowText
        TabStyle.Font.Height = -11
        TabStyle.Font.Name = 'Arial'
        TabStyle.Font.Style = []
        TabStyle.CaptionHAlign = fhaCenter
        TabStyle.Gradient.Active = False
        TabStyle.Gradient.Orientation = fgdHorizontal
        TabSelectedStyle.Borders = [fsdLeft, fsdTop, fsdRight, fsdBottom]
        TabSelectedStyle.BevelInner = bvNone
        TabSelectedStyle.BevelOuter = bvNone
        TabSelectedStyle.Bold = False
        TabSelectedStyle.BackgrColor = 16776176
        TabSelectedStyle.Font.Charset = DEFAULT_CHARSET
        TabSelectedStyle.Font.Color = clBtnText
        TabSelectedStyle.Font.Height = -11
        TabSelectedStyle.Font.Name = 'Arial'
        TabSelectedStyle.Font.Style = []
        TabSelectedStyle.CaptionHAlign = fhaCenter
        TabSelectedStyle.Gradient.Active = False
        TabSelectedStyle.Gradient.Orientation = fgdHorizontal
        Options = [ftoAutoFontDirection, ftoExcludeGlyphs]
        object TabSheet9: TTabSheet
          Caption = 'Titulares Activos'
          ImageIndex = 5
          object Splitter1: TSplitter
            Left = 0
            Top = 0
            Width = 802
            Height = 8
            Cursor = crVSplit
            Align = alTop
          end
          object PageControl1: TPageControl
            Left = 0
            Top = 8
            Width = 802
            Height = 445
            ActivePage = TabSheet10
            Align = alClient
            TabOrder = 0
            object TabSheet10: TTabSheet
              Caption = 'Datos Personales'
              object Label15: TLabel
                Left = 23
                Top = 7
                Width = 45
                Height = 13
                Caption = 'N'#186'  CUIF:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label7: TLabel
                Left = 214
                Top = 7
                Width = 49
                Height = 13
                Caption = 'Tipo DNI.:'
              end
              object Label13: TLabel
                Left = 393
                Top = 7
                Width = 37
                Height = 13
                Caption = 'N'#176' DNI:'
              end
              object Label6: TLabel
                Left = 574
                Top = 7
                Width = 59
                Height = 13
                Caption = 'Fecha Nac.:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label4: TLabel
                Left = 33
                Top = 30
                Width = 35
                Height = 13
                Caption = 'Cliente:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label11: TLabel
                Left = 468
                Top = 30
                Width = 25
                Height = 13
                Caption = 'Alias:'
              end
              object Label2: TLabel
                Left = 11
                Top = 54
                Width = 57
                Height = 13
                Caption = 'CUIT/CUIL:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label9: TLabel
                Left = 262
                Top = 54
                Width = 27
                Height = 13
                Caption = 'Sexo:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label10: TLabel
                Left = 507
                Top = 54
                Width = 41
                Height = 13
                Caption = 'Religi'#243'n:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label26: TLabel
                Left = 322
                Top = 79
                Width = 58
                Height = 13
                Caption = 'Estado Civil:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label12: TLabel
                Left = 3
                Top = 79
                Width = 65
                Height = 13
                Caption = 'Nacionalidad:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label1: TLabel
                Left = 21
                Top = 104
                Width = 47
                Height = 13
                Caption = 'Provincia:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label14: TLabel
                Left = 196
                Top = 104
                Width = 49
                Height = 13
                Caption = 'Localidad:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label16: TLabel
                Left = 498
                Top = 104
                Width = 30
                Height = 13
                Caption = 'Barrio:'
              end
              object Label3: TLabel
                Left = 23
                Top = 129
                Width = 45
                Height = 13
                Caption = 'Domicilio:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label5: TLabel
                Left = 11
                Top = 154
                Width = 57
                Height = 13
                Caption = 'C'#243'd. Postal:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label8: TLabel
                Left = 26
                Top = 180
                Width = 42
                Height = 13
                Caption = 'Cat. IVA:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label18: TLabel
                Left = 36
                Top = 204
                Width = 32
                Height = 13
                Caption = 'E-Mail:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label17: TLabel
                Left = 28
                Top = 228
                Width = 40
                Height = 13
                Caption = 'Observ.:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label19: TLabel
                Left = 25
                Top = 254
                Width = 43
                Height = 13
                Caption = 'Dir. Foto:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Image2: TImage
                Left = 599
                Top = 156
                Width = 135
                Height = 107
                Proportional = True
              end
              object D1: TDBEdit
                Left = 70
                Top = 3
                Width = 121
                Height = 21
                Color = 14277612
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 0
              end
              object D2: TDBEdit
                Left = 272
                Top = 3
                Width = 57
                Height = 21
                Color = 14277612
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 1
              end
              object D3: TDBEdit
                Left = 434
                Top = 3
                Width = 125
                Height = 21
                Color = 14277612
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 2
              end
              object D4: TDBEdit
                Left = 638
                Top = 3
                Width = 109
                Height = 21
                Color = 14277612
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 3
              end
              object D5: TDBEdit
                Left = 70
                Top = 26
                Width = 359
                Height = 21
                Color = 14277612
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 4
              end
              object D6: TDBEdit
                Left = 498
                Top = 26
                Width = 111
                Height = 21
                Color = 14277612
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 5
              end
              object D7: TDBEdit
                Left = 70
                Top = 50
                Width = 151
                Height = 21
                Color = 14277612
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 6
              end
              object D8: TDBEdit
                Left = 292
                Top = 51
                Width = 195
                Height = 21
                Color = 14277612
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 7
              end
              object D9: TDBEdit
                Left = 552
                Top = 49
                Width = 191
                Height = 21
                Color = 14277612
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 8
              end
              object D11: TDBEdit
                Left = 386
                Top = 75
                Width = 253
                Height = 21
                Color = 14277612
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 9
              end
              object D10: TDBEdit
                Left = 70
                Top = 75
                Width = 207
                Height = 21
                Color = 14277612
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 10
              end
              object D12: TDBEdit
                Left = 70
                Top = 100
                Width = 117
                Height = 21
                Color = 14277612
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 11
              end
              object D13: TDBEdit
                Left = 247
                Top = 100
                Width = 237
                Height = 21
                Color = 14277612
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 12
              end
              object D14: TDBEdit
                Left = 530
                Top = 100
                Width = 239
                Height = 21
                Color = 14277612
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 13
              end
              object D15: TDBEdit
                Left = 70
                Top = 125
                Width = 699
                Height = 21
                Color = 14277612
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 14
              end
              object D16: TDBEdit
                Left = 70
                Top = 150
                Width = 61
                Height = 21
                Color = 14277612
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 15
              end
              object D17: TDBEdit
                Left = 133
                Top = 150
                Width = 381
                Height = 21
                Color = 14277612
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 16
              end
              object D18: TDBEdit
                Left = 70
                Top = 176
                Width = 381
                Height = 21
                Color = 14277612
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 17
              end
              object D19: TDBEdit
                Left = 70
                Top = 200
                Width = 381
                Height = 21
                Color = 14277612
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 18
              end
              object D20: TDBEdit
                Left = 70
                Top = 224
                Width = 479
                Height = 21
                Color = 14277612
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 19
              end
              object D21: TDBEdit
                Left = 70
                Top = 250
                Width = 479
                Height = 21
                Color = 14277612
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 20
              end
            end
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'Inhumados'
          object GroupBox4: TGroupBox
            Left = 0
            Top = 0
            Width = 802
            Height = 453
            Align = alClient
            Caption = 'Inhumados de los Cuales es Responsable y/o Testigo'
            TabOrder = 0
            DesignSize = (
              802
              453)
            object JvDBGrid3: TJvDBGrid
              Left = 4
              Top = 44
              Width = 798
              Height = 407
              Anchors = [akLeft, akTop, akRight, akBottom]
              DataSource = DataSource3
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
              AlternateRowColor = clWindow
              SelectColumnsDialogStrings.Caption = 'Select columns'
              SelectColumnsDialogStrings.OK = '&OK'
              SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
              EditControls = <>
              RowsHeight = 18
              TitleRowHeight = 19
            end
            object Panel1: TPanel
              Left = 4
              Top = 14
              Width = 345
              Height = 25
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Enabled = False
              TabOrder = 1
              Visible = False
              object R2: TRadioButton
                Left = 175
                Top = 5
                Width = 157
                Height = 17
                Caption = 'Por Selecci'#243'n de N'#176' Acci'#243'n'
                TabOrder = 0
              end
              object R1: TRadioButton
                Left = 10
                Top = 5
                Width = 155
                Height = 17
                Caption = 'En donde es Responsable'
                Checked = True
                TabOrder = 1
                TabStop = True
              end
            end
          end
        end
        object TabSheet8: TTabSheet
          Caption = 'Estado Cuenta Mantenimiento'
          ImageIndex = 3
          object JvDBGrid8: TJvDBGrid
            Left = 141
            Top = 14
            Width = 407
            Height = 372
            DataSource = DataSource8
            FixedColor = clInfoBk
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
            OnCellClick = JvDBGrid8CellClick
            AlternateRowColor = cl3DLight
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            EditControls = <>
            RowsHeight = 18
            TitleRowHeight = 19
          end
          object GroupBox1: TGroupBox
            Left = 0
            Top = 372
            Width = 802
            Height = 81
            Align = alBottom
            Caption = 'Cantidad de Cuotas Adeudadas por A'#241'o'
            TabOrder = 1
            object Label34: TLabel
              Left = 606
              Top = 56
              Width = 94
              Height = 13
              Caption = 'Importe Acumulado:'
            end
            object Label35: TLabel
              Left = 592
              Top = 24
              Width = 109
              Height = 13
              Caption = 'Cuotas Seleccionadas:'
            end
            object JvDBGrid10: TJvDBGrid
              Left = 4
              Top = 17
              Width = 431
              Height = 64
              DataSource = DataSource11
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
              AlternateRowColor = clGradientInactiveCaption
              SelectColumnsDialogStrings.Caption = 'Select columns'
              SelectColumnsDialogStrings.OK = '&OK'
              SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
              EditControls = <>
              RowsHeight = 18
              TitleRowHeight = 19
            end
            object Edit4: TEdit
              Left = 706
              Top = 44
              Width = 85
              Height = 28
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              Text = '00.00'
            end
            object Edit5: TEdit
              Left = 706
              Top = 18
              Width = 85
              Height = 21
              TabOrder = 2
              Text = '0'
            end
            object Button1: TButton
              Left = 444
              Top = 52
              Width = 97
              Height = 25
              Caption = 'Borrar Datos '
              TabOrder = 3
              OnClick = Button1Click
            end
            object JvBitBtn2: TJvBitBtn
              Left = 444
              Top = 18
              Width = 97
              Height = 25
              Caption = 'Estado Cuenta'
              TabOrder = 4
              OnClick = JvBitBtn2Click
              HotTrackFont.Charset = DEFAULT_CHARSET
              HotTrackFont.Color = clWindowText
              HotTrackFont.Height = -11
              HotTrackFont.Name = 'MS Sans Serif'
              HotTrackFont.Style = []
            end
          end
          object LasDeudas: TStringGrid
            Left = 16
            Top = 254
            Width = 767
            Height = 109
            ColCount = 15
            FixedCols = 0
            TabOrder = 2
            Visible = False
            ColWidths = (
              64
              64
              64
              64
              64
              64
              64
              64
              64
              64
              64
              64
              64
              64
              64)
          end
          object StringAgrupP: TStringGrid
            Left = 400
            Top = 0
            Width = 402
            Height = 372
            Align = alRight
            ColCount = 9
            FixedCols = 0
            TabOrder = 3
            ColWidths = (
              56
              64
              48
              64
              70
              80
              64
              64
              64)
          end
          object StringAgrupD: TStringGrid
            Left = 0
            Top = 0
            Width = 401
            Height = 372
            Align = alLeft
            Anchors = [akLeft, akTop, akRight, akBottom]
            ColCount = 9
            FixedCols = 0
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
            PopupMenu = PopupMenu1
            TabOrder = 4
            OnClick = StringAgrupDClick
            ColWidths = (
              55
              64
              46
              64
              82
              78
              64
              64
              64)
          end
          object Panel2: TPanel
            Left = 218
            Top = 168
            Width = 355
            Height = 67
            TabOrder = 5
            Visible = False
            object Label36: TLabel
              Left = 16
              Top = 10
              Width = 245
              Height = 13
              Caption = 'Periodos a Imprimir en el Estado de Cuenta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label37: TLabel
              Left = 8
              Top = 42
              Width = 37
              Height = 13
              Caption = 'DESDE'
            end
            object Label38: TLabel
              Left = 126
              Top = 43
              Width = 36
              Height = 13
              Caption = 'HASTA'
            end
            object Edit7: TEdit
              Left = 48
              Top = 30
              Width = 75
              Height = 28
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              Text = 'Edit7'
              OnExit = Edit7Exit
              OnKeyPress = Edit7KeyPress
            end
            object BitBtn1: TBitBtn
              Left = 249
              Top = 29
              Width = 95
              Height = 31
              Caption = 'Imprimir'
              TabOrder = 1
              OnClick = BitBtn1Click
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
                00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
                8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
                8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
                8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
                03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
                03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
                33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
                33333337FFFF7733333333300000033333333337777773333333}
              NumGlyphs = 2
            end
            object Edit8: TEdit
              Left = 168
              Top = 30
              Width = 75
              Height = 28
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
              Text = 'Edit7'
              OnExit = Edit8Exit
              OnKeyPress = Edit8KeyPress
            end
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Ultimos Pagos'
          ImageIndex = 6
          object StringGridUP: TStringGrid
            Left = 0
            Top = 0
            Width = 802
            Height = 453
            Align = alClient
            ColCount = 6
            FixedCols = 0
            RowCount = 2
            TabOrder = 0
            ColWidths = (
              96
              94
              109
              118
              101
              64)
          end
        end
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 818
    Height = 33
    ButtonHeight = 27
    Caption = 'ToolBar1'
    Color = clGradientInactiveCaption
    EdgeBorders = [ebLeft, ebTop, ebBottom]
    EdgeInner = esLowered
    ParentColor = False
    TabOrder = 1
    DesignSize = (
      816
      29)
    object ToolButton4: TToolButton
      Left = 0
      Top = 2
      Width = 533
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object ImpPDF: TBitBtn
      Left = 533
      Top = 2
      Width = 62
      Height = 27
      Hint = 'Guarda los Datos'
      Anchors = [akTop, akRight]
      Caption = 'Imprimir '#13#10'como PDF'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Visible = False
      OnClick = ImpPDFClick
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
      Margin = 2
      NumGlyphs = 2
    end
    object ToolButton1: TToolButton
      Left = 595
      Top = 2
      Width = 8
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object Imprime: TJvBitBtn
      Left = 603
      Top = 2
      Width = 62
      Height = 27
      Anchors = [akTop, akRight]
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Visible = False
      OnClick = ImprimeClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -8
      HotTrackFont.Name = 'Arial'
      HotTrackFont.Style = []
    end
    object ToolButton2: TToolButton
      Left = 665
      Top = 2
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object Exporta: TJvBitBtn
      Left = 673
      Top = 2
      Width = 62
      Height = 27
      Anchors = [akTop, akRight]
      Caption = 'Exportar '#13#10'a Excel'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = ExportaClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300030003
        0003333377737773777333333333333333333FFFFFFFFFFFFFFF770000000000
        0000777777777777777733039993BBB3CCC3337F737F737F737F37039993BBB3
        CCC3377F737F737F737F33039993BBB3CCC33F7F737F737F737F77079997BBB7
        CCC77777737773777377330399930003CCC3337F737F7773737F370399933333
        CCC3377F737F3333737F330399933333CCC33F7F737FFFFF737F770700077777
        CCC77777777777777377330333333333CCC3337F33333333737F370333333333
        0003377F33333333777333033333333333333F7FFFFFFFFFFFFF770777777777
        7777777777777777777733333333333333333333333333333333}
      NumGlyphs = 2
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -8
      HotTrackFont.Name = 'Arial'
      HotTrackFont.Style = []
    end
    object ToolButton3: TToolButton
      Left = 735
      Top = 2
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object sale: TJvBitBtn
      Left = 743
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
      TabOrder = 3
      OnClick = JvBitBtn3Click
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
  object DataSource0: TDataSource
    Left = 2
    Top = 6
  end
  object Rv: TRvSystem
    TitleSetup = 'Conf. Impres.'
    TitleStatus = 'Estado del Reporte'
    TitlePreview = 'Imagen Previa'
    SystemSetups = [ssAllowSetup, ssAllowCopies, ssAllowCollate, ssAllowDuplex, ssAllowDestPreview, ssAllowDestPrinter, ssAllowDestFile, ssAllowPreviewSetup]
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.MarginPercent = 10.000000000000000000
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPreview.ZoomInc = 50
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.Units = unMM
    SystemPrinter.UnitsFactor = 25.400000000000000000
    OnPrint = RvPrint
    Left = 596
    Top = 26
  end
  object DataSource3: TDataSource
    Left = 104
    Top = 4
  end
  object DataSource8: TDataSource
    Left = 274
    Top = 4
  end
  object DataSource9: TDataSource
    Left = 306
    Top = 2
  end
  object ImageList1: TImageList
    Left = 622
    Top = 211
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008000000080000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8000000080008080800000000000000000000000000000000000000000000000
      0000000080000000800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000800000008000000080000000800000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8000000080000000800080808000000000000000000000000000000000000000
      8000000080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080000000800000008000000080000000800000008000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000080000000800000008000808080000000000000000000000080000000
      8000000080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008000000080000000800000000000000000000000800000008000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000800000008000000080008080800000008000000080000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      0000008000000080000000000000000000000000000000800000008000000080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000008000000080000000800000008000000080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      0000008000000000000000000000000000000000000000000000008000000080
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000080000000800000008000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008000000080
      0000008000000000000000000000000000000000000000000000000000000000
      0000000000000000000000008000000080000000800000008000000080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      0000008000008080800000000000000000000000000000000000000000000000
      0000000000000000800000008000000080000000000000008000000080000000
      8000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      0000008000000080000000000000000000000000000000000000000000000000
      0000000080000000800000008000000000000000000000000000000080000000
      8000000080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008000000080000000000000000000000000000000000000000000000000
      8000000080000000800000000000000000000000000000000000000000000000
      8000000080000000800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008000000080000000000000000000000000000000000000000000000000
      8000000080000000000000000000000000000000000000000000000000000000
      0000000080000000800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFFFFF00000000
      FFFFFFFF00000000FE3FE3F300000000FC3FE1E300000000F81FF0C700000000
      F18FF80F00000000E38FFC1F00000000E7C7FE1F00000000FFC7FC0F00000000
      FFE3F88700000000FFE3F1C300000000FFF3E3E300000000FFF3E7F300000000
      FFFFFFFF00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object DataSource11: TDataSource
    Left = 100
    Top = 462
  end
  object DataSource13: TDataSource
    Left = 350
    Top = 2
  end
  object DataSource14: TDataSource
    Left = 406
    Top = 10
  end
  object T8: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 628
    Top = 27
  end
  object PopupMenu1: TPopupMenu
    Left = 360
    Top = 236
    object VerDeudaHastaFinAo1: TMenuItem
      Caption = 'Ver Deuda Hasta Fin A'#241'o'
    end
    object VerSoloDeuda1: TMenuItem
      Caption = 'Ver Solo Deuda'
    end
  end
  object RvS: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.Units = unMM
    SystemPrinter.UnitsFactor = 25.400000000000000000
    Left = 698
    Top = 216
  end
  object TP: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 660
    Top = 26
  end
  object RvEC: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.Units = unMM
    SystemPrinter.UnitsFactor = 25.400000000000000000
    OnPrint = RvECPrint
    OnAfterPrint = RvECAfterPrint
    Left = 656
    Top = 216
  end
end

object AM_LosSepelios: TAM_LosSepelios
  Left = 228
  Top = 96
  Width = 883
  Height = 575
  Caption = 'Ventana de Alta de Sepelios'
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
  OnKeyPress = actaKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object PC1: TPageControl
    Left = 0
    Top = 36
    Width = 867
    Height = 481
    ActivePage = TabSheet3
    Align = alClient
    Images = Modulo2.ImageList1
    TabOrder = 0
    object TabSheet3: TTabSheet
      Caption = 'Datos del Sepelio'
      object grupo1: TGroupBox
        Left = 0
        Top = 0
        Width = 859
        Height = 452
        Align = alClient
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        object Label35: TLabel
          Left = 28
          Top = 125
          Width = 77
          Height = 13
          Caption = 'El que Suscribe:'
        end
        object Label37: TLabel
          Left = 60
          Top = 90
          Width = 71
          Height = 13
          Caption = 'Fecha Sepelio:'
        end
        object LB7: TLabel
          Left = 32
          Top = 337
          Width = 68
          Height = 20
          Caption = 'Importe:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label31: TLabel
          Left = 20
          Top = 309
          Width = 78
          Height = 16
          Caption = 'Tipo Pago:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 58
          Top = 155
          Width = 50
          Height = 13
          Caption = 'Inhumado:'
        end
        object Bevel2: TBevel
          Left = 30
          Top = 174
          Width = 605
          Height = 60
        end
        object Label2: TLabel
          Left = 40
          Top = 187
          Width = 97
          Height = 13
          Caption = 'Fecha Fallecimiento:'
        end
        object Label16: TLabel
          Left = 239
          Top = 184
          Width = 100
          Height = 13
          Caption = 'Nro. Acta Defuncion:'
        end
        object Label17: TLabel
          Left = 541
          Top = 186
          Width = 25
          Height = 13
          Caption = 'Folio:'
        end
        object Label18: TLabel
          Left = 424
          Top = 184
          Width = 30
          Height = 13
          Caption = 'Tomo:'
        end
        object Label19: TLabel
          Left = 91
          Top = 214
          Width = 38
          Height = 13
          Caption = 'Medico:'
        end
        object Image1: TImage
          Left = 544
          Top = 308
          Width = 105
          Height = 105
          Visible = False
        end
        object Label78: TLabel
          Left = 333
          Top = 339
          Width = 73
          Height = 16
          Caption = 'N'#176' Cuotas:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label80: TLabel
          Left = 457
          Top = 340
          Width = 86
          Height = 16
          Caption = 'Valor Cuota:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 10
          Top = 20
          Width = 156
          Height = 20
          Caption = 'Origen del Servicio:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 231
          Top = 90
          Width = 64
          Height = 13
          Caption = 'Hora Sepelio:'
        end
        object Label10: TLabel
          Left = 56
          Top = 58
          Width = 73
          Height = 13
          Caption = 'Fecha Entrada:'
        end
        object Label11: TLabel
          Left = 229
          Top = 58
          Width = 66
          Height = 13
          Caption = 'Hora Entrada:'
        end
        object GroupBox1: TGroupBox
          Left = 30
          Top = 237
          Width = 575
          Height = 60
          Caption = 'Datos Accion'
          TabOrder = 20
          object Label3: TLabel
            Left = 39
            Top = 19
            Width = 53
            Height = 13
            Caption = 'Nro Accion'
          end
          object Label8: TLabel
            Left = 208
            Top = 20
            Width = 34
            Height = 13
            Caption = 'Sector:'
          end
          object Label7: TLabel
            Left = 339
            Top = 20
            Width = 39
            Height = 13
            Caption = 'Parcela:'
          end
          object Label12: TLabel
            Left = 63
            Top = 39
            Width = 29
            Height = 13
            Caption = 'Tiular:'
          end
          object accion: TEdit
            Left = 100
            Top = 12
            Width = 59
            Height = 21
            TabOrder = 0
            Text = '0'
            OnExit = accionExit
            OnKeyPress = accionKeyPress
          end
          object sector: TEdit
            Left = 249
            Top = 12
            Width = 45
            Height = 21
            Color = clInfoBk
            Enabled = False
            ReadOnly = True
            TabOrder = 1
            Text = '0'
          end
          object parcela: TEdit
            Left = 388
            Top = 12
            Width = 45
            Height = 21
            Color = clInfoBk
            Enabled = False
            ReadOnly = True
            TabOrder = 2
            Text = '0'
          end
          object eltit: TEdit
            Left = 101
            Top = 36
            Width = 334
            Height = 21
            Color = clInfoBk
            Enabled = False
            ReadOnly = True
            TabOrder = 3
            Text = '0'
          end
        end
        object apeynom: TDBEdit
          Left = 135
          Top = 116
          Width = 502
          Height = 21
          Color = clCream
          ReadOnly = True
          TabOrder = 11
        end
        object FECNAC: TMaskEdit
          Left = 136
          Top = 82
          Width = 75
          Height = 24
          EditMask = '!99/99/9999;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 1
          Text = '  /  /    '
          OnExit = FECNACExit
          OnKeyPress = FECNACKeyPress
        end
        object E5: TEdit
          Left = 103
          Top = 329
          Width = 110
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 8
          ParentFont = False
          TabOrder = 10
          Text = '0000.00'
          OnExit = E5Exit
          OnKeyPress = E5KeyPress
        end
        object tpopago: TComboBox
          Left = 103
          Top = 301
          Width = 220
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ItemHeight = 16
          ParentFont = False
          TabOrder = 9
          Text = 'CONTADO'
          OnExit = tpopagoExit
          OnKeyPress = tpopagoKeyPress
        end
        object Grupotarje: TGroupBox
          Left = 20
          Top = 360
          Width = 577
          Height = 94
          Caption = 'Tarjetas de Cr'#233'ditos '
          TabOrder = 12
          object Label47: TLabel
            Left = 5
            Top = 18
            Width = 56
            Height = 13
            Caption = 'Seleccione:'
          end
          object Label48: TLabel
            Left = 126
            Top = 71
            Width = 63
            Height = 13
            Caption = 'N'#176' Comprob.:'
          end
          object Label49: TLabel
            Left = 8
            Top = 73
            Width = 51
            Height = 13
            Caption = 'N'#176' Cuotas:'
          end
          object Label50: TLabel
            Left = 295
            Top = 73
            Width = 33
            Height = 13
            Caption = 'Fecha:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label52: TLabel
            Left = 28
            Top = 47
            Width = 32
            Height = 13
            Caption = 'Titular:'
          end
          object CUOTA: TComboBox
            Left = 200
            Top = 61
            Width = 61
            Height = 21
            CharCase = ecUpperCase
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 5
            Text = '1'
            Visible = False
            Items.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6')
          end
          object TARJETA: TComboBox
            Left = 64
            Top = 14
            Width = 235
            Height = 21
            CharCase = ecUpperCase
            ItemHeight = 13
            TabOrder = 0
            Text = 'NARANJA ZETA'
            OnExit = TARJETAExit
            OnKeyPress = TARJETAKeyPress
          end
          object NROCB: TJvValidateEdit
            Left = 192
            Top = 65
            Width = 85
            Height = 21
            CriticalPoints.MaxValueIncluded = False
            CriticalPoints.MinValueIncluded = False
            EditText = '0000'
            TabOrder = 3
            OnExit = NROCBExit
            OnKeyPress = NROCBKeyPress
          end
          object NroCuota: TEdit
            Left = 64
            Top = 65
            Width = 49
            Height = 21
            TabOrder = 2
            Text = '00'
            OnExit = NroCuotaExit
            OnKeyPress = NroCuotaKeyPress
          end
          object ftarje: TMaskEdit
            Left = 336
            Top = 65
            Width = 67
            Height = 21
            EditMask = '!99/99/9999;1;_'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 10
            ParentFont = False
            TabOrder = 4
            Text = '  /  /    '
            OnExit = ftarjeExit
            OnKeyPress = ftarjeKeyPress
          end
          object tittarje: TEdit
            Left = 64
            Top = 40
            Width = 235
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 1
            OnExit = tittarjeExit
            OnKeyPress = tittarjeKeyPress
          end
        end
        object GrupoCheq: TGroupBox
          Left = 20
          Top = 361
          Width = 576
          Height = 93
          Caption = 'Pagos con Cheques'
          TabOrder = 13
          object Label41: TLabel
            Left = 13
            Top = 21
            Width = 34
            Height = 13
            Caption = 'Banco:'
          end
          object LB12: TLabel
            Left = 18
            Top = 72
            Width = 55
            Height = 13
            Caption = 'N'#186' Cheque:'
          end
          object LB3: TLabel
            Left = 107
            Top = 66
            Width = 9
            Height = 25
            Caption = '-'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object LB5: TLabel
            Left = 219
            Top = 72
            Width = 73
            Height = 13
            Caption = 'Fecha Cheque:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label45: TLabel
            Left = 404
            Top = 72
            Width = 64
            Height = 13
            Caption = 'Fecha Cobro:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object Label46: TLabel
            Left = 16
            Top = 48
            Width = 32
            Height = 13
            Caption = 'Titular:'
          end
          object banco: TComboBox
            Left = 54
            Top = 17
            Width = 265
            Height = 21
            CharCase = ecUpperCase
            ItemHeight = 13
            TabOrder = 0
            OnExit = bancoExit
            OnKeyPress = bancoKeyPress
          end
          object E1: TEdit
            Left = 77
            Top = 65
            Width = 24
            Height = 21
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 2
            ParentFont = False
            TabOrder = 2
            Text = 'A'
            OnExit = E1Exit
            OnKeyPress = E1KeyPress
          end
          object E2: TEdit
            Left = 122
            Top = 65
            Width = 86
            Height = 21
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 12
            ParentFont = False
            TabOrder = 3
            Text = '000000000000'
            OnExit = E2Exit
            OnKeyPress = E2KeyPress
          end
          object Fcheque: TMaskEdit
            Left = 316
            Top = 69
            Width = 67
            Height = 21
            EditMask = '!99/99/9999;1;_'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 10
            ParentFont = False
            TabOrder = 4
            Text = '  /  /    '
            OnExit = FchequeExit
            OnKeyPress = FchequeKeyPress
          end
          object fpagocheque: TMaskEdit
            Left = 469
            Top = 65
            Width = 67
            Height = 21
            EditMask = '!99/99/9999;1;_'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 10
            ParentFont = False
            TabOrder = 5
            Text = '  /  /    '
            Visible = False
            OnExit = fpagochequeExit
            OnKeyPress = fpagochequeKeyPress
          end
          object titcheq: TEdit
            Left = 54
            Top = 41
            Width = 265
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 1
            OnExit = titcheqExit
            OnKeyPress = titcheqKeyPress
          end
        end
        object JvBitBtn0: TJvBitBtn
          Left = 111
          Top = 116
          Width = 19
          Height = 23
          TabOrder = 2
          OnClick = JvBitBtn0Click
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
        object cuif: TDBEdit
          Left = 516
          Top = 115
          Width = 121
          Height = 21
          Color = clCream
          ReadOnly = True
          TabOrder = 14
          Visible = False
        end
        object JvBitBtn4: TJvBitBtn
          Left = 114
          Top = 145
          Width = 15
          Height = 23
          TabOrder = 3
          OnClick = JvBitBtn4Click
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
        object inhumado: TDBEdit
          Left = 135
          Top = 146
          Width = 502
          Height = 21
          Color = clCream
          ReadOnly = True
          TabOrder = 15
        end
        object cuifinhu: TDBEdit
          Left = 516
          Top = 146
          Width = 121
          Height = 21
          Color = clCream
          ReadOnly = True
          TabOrder = 16
          Visible = False
        end
        object fecinhu: TMaskEdit
          Left = 138
          Top = 179
          Width = 75
          Height = 24
          EditMask = '!99/99/9999;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 4
          Text = '  /  /    '
          OnExit = fecinhuExit
          OnKeyPress = fecinhuKeyPress
        end
        object acta: TEdit
          Left = 346
          Top = 178
          Width = 45
          Height = 21
          TabOrder = 5
          Text = '0'
          OnKeyPress = actaKeyPress
        end
        object nrofolio: TEdit
          Left = 572
          Top = 178
          Width = 45
          Height = 21
          TabOrder = 7
          Text = '0'
          OnKeyPress = nrofolioKeyPress
        end
        object nrotomo: TEdit
          Left = 461
          Top = 178
          Width = 45
          Height = 21
          TabOrder = 6
          Text = '0'
          OnKeyPress = nrotomoKeyPress
        end
        object losMedicos: TComboBox
          Left = 138
          Top = 207
          Width = 429
          Height = 21
          CharCase = ecUpperCase
          ItemHeight = 13
          TabOrder = 8
          OnExit = losMedicosExit
          OnKeyPress = losMedicosKeyPress
        end
        object NroReligion: TJvBitBtn
          Left = 574
          Top = 209
          Width = 22
          Height = 20
          TabOrder = 17
          OnClick = NroReligionClick
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
        object Edit2: TEdit
          Left = 413
          Top = 330
          Width = 37
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 18
          Text = '0'
        end
        object VALCUOTA: TEdit
          Left = 549
          Top = 331
          Width = 94
          Height = 27
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 19
          Text = '0'
        end
        object origen: TComboBox
          Left = 170
          Top = 12
          Width = 295
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemHeight = 20
          ItemIndex = 0
          ParentFont = False
          TabOrder = 0
          Text = 'CARMELO MONTE'
          OnExit = origenExit
          OnKeyPress = origenKeyPress
          Items.Strings = (
            'CARMELO MONTE'
            'TERCEROS')
        end
        object Panel1: TPanel
          Left = 178
          Top = 110
          Width = 437
          Height = 157
          BiDiMode = bdLeftToRight
          BorderStyle = bsSingle
          Color = clYellow
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentBiDiMode = False
          ParentBackground = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 21
          Visible = False
          DesignSize = (
            433
            153)
          object Label20: TLabel
            Left = 18
            Top = 17
            Width = 134
            Height = 16
            Caption = 'Tipo Comprobante:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 70
            Top = 71
            Width = 82
            Height = 16
            Caption = 'Nro Factura'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label5: TLabel
            Left = 64
            Top = 43
            Width = 88
            Height = 16
            Caption = 'Punto Venta:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object TPOTALON: TComboBox
            Left = 166
            Top = 8
            Width = 225
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
          object actu: TBitBtn
            Left = 46
            Top = 96
            Width = 163
            Height = 41
            Caption = 'Actualizar Comprobante'
            TabOrder = 2
            OnClick = actuClick
            Glyph.Data = {
              36080000424D3608000000000000360400002800000020000000200000000100
              08000000000000040000CE0E0000D80E00000001000000000000000000004000
              000080000000FF000000002000004020000080200000FF200000004000004040
              000080400000FF400000006000004060000080600000FF600000008000004080
              000080800000FF80000000A0000040A0000080A00000FFA0000000C0000040C0
              000080C00000FFC0000000FF000040FF000080FF0000FFFF0000000020004000
              200080002000FF002000002020004020200080202000FF202000004020004040
              200080402000FF402000006020004060200080602000FF602000008020004080
              200080802000FF80200000A0200040A0200080A02000FFA0200000C0200040C0
              200080C02000FFC0200000FF200040FF200080FF2000FFFF2000000040004000
              400080004000FF004000002040004020400080204000FF204000004040004040
              400080404000FF404000006040004060400080604000FF604000008040004080
              400080804000FF80400000A0400040A0400080A04000FFA0400000C0400040C0
              400080C04000FFC0400000FF400040FF400080FF4000FFFF4000000060004000
              600080006000FF006000002060004020600080206000FF206000004060004040
              600080406000FF406000006060004060600080606000FF606000008060004080
              600080806000FF80600000A0600040A0600080A06000FFA0600000C0600040C0
              600080C06000FFC0600000FF600040FF600080FF6000FFFF6000000080004000
              800080008000FF008000002080004020800080208000FF208000004080004040
              800080408000FF408000006080004060800080608000FF608000008080004080
              800080808000FF80800000A0800040A0800080A08000FFA0800000C0800040C0
              800080C08000FFC0800000FF800040FF800080FF8000FFFF80000000A0004000
              A0008000A000FF00A0000020A0004020A0008020A000FF20A0000040A0004040
              A0008040A000FF40A0000060A0004060A0008060A000FF60A0000080A0004080
              A0008080A000FF80A00000A0A00040A0A00080A0A000FFA0A00000C0A00040C0
              A00080C0A000FFC0A00000FFA00040FFA00080FFA000FFFFA0000000C0004000
              C0008000C000FF00C0000020C0004020C0008020C000FF20C0000040C0004040
              C0008040C000FF40C0000060C0004060C0008060C000FF60C0000080C0004080
              C0008080C000FF80C00000A0C00040A0C00080A0C000FFA0C00000C0C00040C0
              C00080C0C000FFC0C00000FFC00040FFC00080FFC000FFFFC0000000FF004000
              FF008000FF00FF00FF000020FF004020FF008020FF00FF20FF000040FF004040
              FF008040FF00FF40FF000060FF004060FF008060FF00FF60FF000080FF004080
              FF008080FF00FF80FF0000A0FF0040A0FF0080A0FF00FFA0FF0000C0FF0040C0
              FF0080C0FF00FFC0FF0000FFFF0040FFFF0080FFFF00FFFFFF00FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000494949FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF0000DBDB0049494949FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF0000DBDBFFDB00494949494949FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF0000DBDBFFFFFFDB0049494949494949FFFFFFFFFFFFFF
              FFFFFFFFFFFFFF0000DBDBFFFFB6B6FFDB0049494949494949FFFFFFFFFFFFFF
              FFFFFFFFFF0000DBDBFFFFB6B6FFFFFFDB00494949494949FFFFFFFFFFFFFFFF
              FFFFFF0000DBDBFFFFB6B6FFFFFFFFFFDB0049494949FFFFFFFFFFFFFFFFFFFF
              FF0000DBDBFFFFFFFFFFFFFFFFFFFFFFDB004949FFFFFFFFFFFFFFFFFFFFFF00
              00DBDBFFFFFFFFFFFFFFFFFFFFFFFFFFDB00FFFFFFFFFFFFFFFFFFFFFF0000DB
              DBFFFFFFFFFFFFFFFFFFFFFFFFDBDBDBDB00FFFFFFFFFFFFFFFFFF0000DBDBB6
              628EFFFFFFFFFFFFFFFFFFDBDBDBDBDBDB00FFFFFFFFFFFFFFFF00DBDBDB6662
              66DBFFFFFFFFFFFFDBDBDBDBDBDBDBDBDB00FFFFFFFFFFFFFFFF00DB668222DB
              DBFFFFFFFFFFFFFFDBDBDBDB8F8EDBDBDB00FFFFFFFFFFFFFFFF00DB22DB8266
              62DBFFFFFFFFFFFFDBDB8E8EFFFFFFFFDB00FFFFFFFFFFFFFFFF00DB66DB2266
              6E8EFFFFFFFFDBDB8E8EDBDBFFFFFFFFDB00FFFFFFFFFFFFFFFF00DB66DB2266
              668EFFFFDBDB8E8FDBDBDBDBFFFFFFFFDB00FFFFFFFFFFFFFFFF00DBFFFF8E82
              2266FFFF8E8EFFFFFFDBDBFFFFFFFFFFDB00FFFFFFFFFFFFFFFF00DBFFFF22DB
              DB66FFFFFFFFFFFFFFFFFFFFFFFFFFFFDB00FFFFFFFFFFFFFFFF00DBFFDB62DB
              DB62FFFFFFFFFFFFFFFFFFFFFFFFFFFFDB00FFFFFFFFFFFFFFFF00DBFFFF6621
              666DFF8FFFFFFFFFFFFFFFFFFFFFFFDBDB00FFFFFFFFFFFFFFFF00DBDB626685
              CCECDBDBFFFFFFFFFFFFFFFFFFDBDBDBB600FFFFFFFFFFFFFFFF00D366CCECEC
              ECECDB8EFFFFFFFFFFFFFFDBDBDBB60000FFFFFFFFFFFFFFFFFF00DBECECECEC
              DBECDBDBFFFFFFFFFFDBDBDBB60000FFFFFFFFFFFFFFFFFFFFFF00DBECDBF0F1
              FBF1DB8FFFFFFFDBDBDBB60000FFFFFFFFFFFFFFFFFFFFFFFFFF00DBECFBF1F1
              F1ECDBDBFFDBDBDBB60000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00DBFBFFFAEC
              ECFADBDBDBDBB60000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00DBFFFFF1F0
              F0F1DBDBB60000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00DBFFFFF1DB
              DBDBB60000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00DBFFDBDBDB
              B60000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00DBDBDBB600
              00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00DBB60000FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          end
          object SALE: TJvBitBtn
            Left = 226
            Top = 96
            Width = 134
            Height = 41
            Anchors = [akTop, akRight]
            Caption = 'GUARDAR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = SALEClick
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
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -13
            HotTrackFont.Name = 'Arial'
            HotTrackFont.Style = []
          end
          object PV: TComboBox
            Left = 166
            Top = 38
            Width = 51
            Height = 21
            CharCase = ecUpperCase
            ItemHeight = 13
            TabOrder = 1
            Text = 
              '                                                                ' +
              '                                                                ' +
              '                         '
            OnExit = PVExit
            OnKeyPress = PVKeyPress
          end
          object elcomprob: TEdit
            Left = 166
            Top = 66
            Width = 97
            Height = 21
            MaxLength = 8
            TabOrder = 4
            OnChange = elcomprobChange
            OnExit = elcomprobExit
            OnKeyPress = elcomprobKeyPress
          end
        end
        object StringAgrupD: TStringGrid
          Left = 664
          Top = 42
          Width = 193
          Height = 413
          ColCount = 4
          FixedCols = 0
          RowCount = 2
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
          PopupMenu = PopupMenu1
          TabOrder = 22
          Visible = False
          OnClick = StringAgrupDClick
          ColWidths = (
            58
            83
            2
            34)
        end
        object horasale: TMaskEdit
          Left = 302
          Top = 84
          Width = 42
          Height = 21
          EditMask = '00:00;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentFont = False
          TabOrder = 23
          Text = '00:00'
          OnExit = horasaleExit
          OnKeyPress = horasaleKeyPress
        end
        object fecentrada: TMaskEdit
          Left = 136
          Top = 50
          Width = 73
          Height = 24
          EditMask = '!99/99/9999;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 24
          Text = '  /  /    '
          OnExit = fecentradaExit
          OnKeyPress = fecentradaKeyPress
        end
        object horaentra: TMaskEdit
          Left = 303
          Top = 52
          Width = 42
          Height = 21
          EditMask = '00:00;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentFont = False
          TabOrder = 25
          Text = '00:00'
          OnExit = horaentraExit
          OnKeyPress = horaentraKeyPress
        end
        object CheckBox1: TCheckBox
          Left = 678
          Top = 20
          Width = 151
          Height = 17
          Caption = 'Utiliza ATAUD?'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 26
          Visible = False
          OnClick = CheckBox1Click
        end
      end
      object GroupBox2: TGroupBox
        Left = 148
        Top = 112
        Width = 539
        Height = 153
        BiDiMode = bdLeftToRight
        Color = clSkyBlue
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBackground = False
        ParentBiDiMode = False
        ParentColor = False
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        object Panel2: TPanel
          Left = 2
          Top = 15
          Width = 535
          Height = 136
          Align = alClient
          BorderStyle = bsSingle
          Color = clSkyBlue
          TabOrder = 0
          DesignSize = (
            531
            132)
          object JvSIMConnector4: TJvSIMConnector
            Left = 34
            Top = 50
            Width = 59
            Height = 44
            FromGate = 0
            FromPoint.X = 0
            FromPoint.Y = 0
            ToGate = 0
            ToPoint.X = 0
            ToPoint.Y = 0
          end
          object Label59: TLabel
            Left = 102
            Top = 50
            Width = 49
            Height = 13
            Caption = '1'#186' HOJA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label60: TLabel
            Left = 102
            Top = 86
            Width = 49
            Height = 13
            Caption = '2'#186' HOJA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object JvSIMConnector3: TJvSIMConnector
            Left = 34
            Top = 50
            Width = 59
            Height = 9
            FromGate = 0
            FromPoint.X = 0
            FromPoint.Y = 0
            ToGate = 0
            ToPoint.X = 0
            ToPoint.Y = 0
          end
          object Label13: TLabel
            Left = 22
            Top = 10
            Width = 464
            Height = 20
            Caption = 'UD. esta por imprimir el Acta de Circulacion para Sepelios'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label14: TLabel
            Left = 5
            Top = 113
            Width = 64
            Height = 13
            Caption = 'Path Archivo:'
          end
          object Label15: TLabel
            Left = 71
            Top = 108
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
          object impactacircu: TJvBitBtn
            Left = 286
            Top = 64
            Width = 133
            Height = 41
            Anchors = [akTop, akRight]
            Caption = 'Imp Acta'#13#10'Circulacion'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnClick = impactacircuClick
            Glyph.Data = {
              360C0000424D360C000000000000360000002800000020000000200000000100
              180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              000000000000000000000000000000FFFFFFFFFFFFFFFFFF0000000000000000
              00000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
              0000000000FFFFFF000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000
              808080808080808080000000000000000000FFFFFF0000000000000000000000
              00000000000000000000FFFFFFFFFFFFFFFFFF00000080808080808080808080
              8080C0C0C0000000808080808080808080000000FFFFFFFFFFFFFFFFFF000000
              C0C0C00000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000808080808080C0
              C0C0C0C0C0000000000000808080C0C0C0C0C0C0000000FFFFFFFFFFFF000000
              0000000000800000800000800000800000800000800000800000800000800000
              80000080000080000080000080000080000080000080000000000000C0C0C0C0
              C0C0808080000000000080000000C0C0C0808080000000FFFFFFFFFFFF000000
              0000000000000000000000000000000000800000800000800000800000800000
              800000800000800000000000000000000000000000000000000000FF000000C0
              C0C0808080000000808080808080000000808080000000000000000000FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000
              00000000000000000000FFFFFFFFFFFFFFFFFFC0C0C0C0C0C00000000000FF00
              0000808080000000C0C0C0C0C0C0000000808080000000000000000000FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C00000000000FF00
              0000808080000000808080808080000000808080000000000000FFFFFF000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000FF0000FF00
              00008080800000000000FF0000FF000000808080000000000000000000FFFFFF
              C0C0C0C0C0C08080808080808080808080808080808080808080808080808080
              80808080808080808080FFFFFFFFFFFFC0C0C0C0C0C08080800000FF0000FF00
              0000C0C0C00000000000FF0000FF000000808080000000000000000000FFFFFF
              FFFFFFC0C0C08080808080808080808080808080808080808080808080808080
              80808080808080808080FFFFFFFFFFFFFFFFFFC0C0C08080800000FF0000FF00
              00000000000000000000FF0000FF000000808080000000000000000000FFFFFF
              C0C0C0C0C0C00000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
              FF0000FF0000FF0000FF808080808080FFFFFFC0C0C08080800000FF0000FF00
              00000000000000FF0000FF0000FF000000C0C0C0000000000000000000C0C0C0
              0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
              FF0000FF0000FF0000FF0000FF0000FF8080808080800000FF0000FF0000FF00
              00000000FF0000FF0000FF0000FF000000C0C0C00000000000000000000000FF
              0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
              FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
              00FF0000FF0000FF0000FF0000FF000000000000000000000000808080000000
              0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
              FF0000FF0000FF0000FF0000FF0000FF0000FF8080808080800000FF0000FF00
              00FF0000FF0000FF0000FF0000FF0000000000000000FF000000FFFFFF808080
              0000000000008080808080808080800000FF0000FF0000FF0000FF0000FF0000
              FF0000FF0000FF0000FF808080808080808080C0C0C0C0C0C08080800000FF80
              80808080808080800000FF0000FF0000000000FF0000FF000000FFFFFFFFFFFF
              FFFFFF000000C0C0C0C0C0C0C0C0C08080808080808080808080808080808080
              80808080808080808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08080800000FF80
              8080808080C0C0C08080800000FF0000FF0000FF000000C0C0C0FFFFFFFFFFFF
              FFFFFF000000C0C0C0FFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
              C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08080800000FF80
              8080808080C0C0C0C0C0C08080800000FF0000FF000000FFFFFFFFFFFFFFFFFF
              FFFFFF000000C0C0C0C0C0C0FFFFFFC0C0C0C0C0C0C0C0C0C0C0C0FFFFFFC0C0
              C0FFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08080800000FF80
              8080808080808080C0C0C0C0C0C08080800000FF000000FFFFFFFFFFFFFFFFFF
              FFFFFF000000C0C0C0FFFFFFC0C0C0FFFFFFC0C0C0C0C0C0C0C0C0C0C0C0FFFF
              FFC0C0C0FFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08080800000FF80
              8080C0C0C0808080C0C0C0C0C0C08080800000FF000000FFFFFFFFFFFFFFFFFF
              FFFFFF000000C0C0C0C0C0C0FFFFFFC0C0C0FFFFFFC0C0C0C0C0C0C0C0C0C0C0
              C0FFFFFFC0C0C0FFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C08080800000FF80
              8080C0C0C0808080C0C0C0C0C0C08080800000FF000000FFFFFFFFFFFFFFFFFF
              FFFFFF808080C0C0C0C0C0C0C0C0C0FFFFFFFFFFFFFFFFFFC0C0C0C0C0C0C0C0
              C0C0C0C0FFFFFFFFFFFFFFFFFFC0C0C0C0C0C0C0C0C0C0C0C08080800000FF80
              8080808080C0C0C08080808080800000FF000000808080FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF000000C0C0C0C0C0C0C0C0C0FFFFFFFFFFFFFFFFFFC0C0C0C0C0
              C0C0C0C0C0C0C0FFFFFFFFFFFFFFFFFFC0C0C0C0C0C08080800000FF80808080
              8080808080C0C0C08080808080800000FF000000FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF000000C0C0C0C0C0C0C0C0C0C0C0C0FFFFFFC0C0C0FFFFFFC0C0
              C0C0C0C0C0C0C0C0C0C0FFFFFFC0C0C0FFFFFFC0C0C08080800000FF80808080
              8080808080C0C0C08080808080800000FF000000FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FFFFFFC0C0C0FFFF
              FFC0C0C0C0C0C0C0C0C0C0C0C0FFFFFFC0C0C0C0C0C08080800000FF80808080
              8080808080C0C0C08080808080800000FF000000FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF808080000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FFFFFFC0C0
              C0FFFFFFC0C0C0C0C0C0C0C0C0C0C0C0FFFFFFC0C0C08080800000FF80808080
              8080808080C0C0C08080800000FF000000808080FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FFFF
              FFC0C0C0FFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C08080800000FF80808080
              8080808080C0C0C08080800000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF000000808080808080808080C0C0C0C0C0C0C0C0C0C0C0
              C0C0C0C0C0C0C0C0C0C0C0C0C0808080808080C0C0C00000FF0000FF0000FF80
              80808080808080800000FF000000808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF0000000000FF0000FF0000FF0000FF0000FF0000
              FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
              00FF0000FF0000FF0000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000FF0000FF0000FF0000FF0000
              FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
              00FF0000FF0000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
              FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00000000
              0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8080800000
              00000000000000000000000000000000000000000000000000000000808080FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -13
            HotTrackFont.Name = 'Arial'
            HotTrackFont.Style = []
          end
          object Edit11: TEdit
            Left = 156
            Top = 80
            Width = 71
            Height = 21
            Color = clLime
            ReadOnly = True
            TabOrder = 1
          end
          object Edit1: TEdit
            Left = 156
            Top = 46
            Width = 71
            Height = 21
            Color = clWhite
            ReadOnly = True
            TabOrder = 2
          end
          object cierra: TJvBitBtn
            Left = 427
            Top = 64
            Width = 87
            Height = 41
            Anchors = [akTop, akRight]
            Caption = 'Cerrar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = cierraClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
              03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
              0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
              0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
              0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
              0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
              0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
              0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
              0333337F777FFFFF7F3333000000000003333377777777777333}
            NumGlyphs = 2
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -13
            HotTrackFont.Name = 'Arial'
            HotTrackFont.Style = []
          end
        end
      end
    end
  end
  object Barra1: TStatusBar
    Left = 0
    Top = 517
    Width = 867
    Height = 19
    Panels = <
      item
        Width = 300
      end
      item
        Width = 50
      end>
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 867
    Height = 36
    ButtonHeight = 30
    Caption = 'ToolBar1'
    Color = clGradientInactiveCaption
    EdgeBorders = [ebLeft, ebTop, ebBottom]
    EdgeInner = esLowered
    ParentColor = False
    TabOrder = 2
    DesignSize = (
      865
      32)
    object ToolButton4: TToolButton
      Left = 0
      Top = 2
      Width = 559
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object exporta: TJvBitBtn
      Left = 559
      Top = 2
      Width = 146
      Height = 30
      Anchors = [akTop, akRight]
      Caption = 'Config. PAGO'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Visible = False
      OnClick = exportaClick
      NumGlyphs = 2
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -13
      HotTrackFont.Name = 'Arial'
      HotTrackFont.Style = []
    end
    object ToolButton2: TToolButton
      Left = 705
      Top = 2
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object ToolButton3: TToolButton
      Left = 713
      Top = 2
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object JvBitBtn3: TJvBitBtn
      Left = 721
      Top = 2
      Width = 82
      Height = 30
      Anchors = [akTop, akRight]
      Caption = 'Salir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = JvBitBtn3Click
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
      HotTrackFont.Height = -13
      HotTrackFont.Name = 'Arial'
      HotTrackFont.Style = []
    end
  end
  object RvOrden: TRvSystem
    TitleSetup = 'Conf. Impres.'
    TitleStatus = 'Estado del Reporte'
    TitlePreview = 'Imagen Previa'
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
    OnPrint = RvOrdenPrint
    Left = 676
    Top = 54
  end
  object PopupMenu1: TPopupMenu
    Left = 690
    Top = 190
    object VerDeudaHastaFinAo1: TMenuItem
      Caption = 'Borrar Periodos Seleccionados'
      OnClick = VerDeudaHastaFinAo1Click
    end
  end
  object RVActa: TRvSystem
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
    OnPrint = RVActaPrint
    Left = 554
    Top = 224
  end
  object RvRenderPDF1: TRvRenderPDF
    DisplayName = 'Adobe Acrobat (PDF)'
    FileExtension = '*.pdf'
    EmbedFonts = False
    ImageQuality = 90
    MetafileDPI = 300
    FontEncoding = feWinAnsiEncoding
    DocInfo.Creator = 'Rave (http://www.nevrona.com/rave)'
    DocInfo.Producer = 'Nevrona Designs'
    Left = 768
    Top = 59
  end
end

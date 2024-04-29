object AM_CpTwain: TAM_CpTwain
  Left = 423
  Top = 9
  AutoScroll = False
  Caption = 'Captura de Imagenes'
  ClientHeight = 546
  ClientWidth = 793
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnMouseMove = FormMouseMove
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 527
    Width = 793
    Height = 19
    Panels = <>
  end
  object PC1: TPageControl
    Left = 0
    Top = 0
    Width = 793
    Height = 527
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 1
    OnMouseMove = FormMouseMove
    object TabSheet1: TTabSheet
      Caption = 'Tratamiento de Imagenes'
      DesignSize = (
        785
        499)
      object GroupBox6: TGroupBox
        Left = 314
        Top = 336
        Width = 471
        Height = 163
        Anchors = [akLeft, akBottom]
        Caption = 'Herramientas'
        TabOrder = 0
        OnMouseMove = FormMouseMove
        object Label1: TLabel
          Left = 6
          Top = 23
          Width = 36
          Height = 13
          Caption = 'Angulo:'
        end
        object Label8: TLabel
          Left = 18
          Top = 48
          Width = 88
          Height = 13
          Caption = 'Botones Mouse'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 22
          Top = 63
          Width = 85
          Height = 28
          Caption = 'Der.  ->  Zoom +'#13#10'Izq.   ->  Zoom -'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
        object Label2: TLabel
          Left = 132
          Top = 71
          Width = 55
          Height = 24
          Caption = 'Zoom:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 6
          Top = 102
          Width = 77
          Height = 26
          Caption = 'Tama'#241'o Imagen'#13#10'  Original en Kb:'
        end
        object Label12: TLabel
          Left = 6
          Top = 132
          Width = 77
          Height = 26
          Caption = 'Tama'#241'o Imagen'#13#10'  Actual en Kb:'
        end
        object Angulo: TComboBox
          Left = 47
          Top = 17
          Width = 55
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 20
          ItemIndex = 0
          ParentFont = False
          TabOrder = 0
          Text = '0'
          Items.Strings = (
            '0'
            '90'
            '180'
            '270'
            '360')
        end
        object Button1: TButton
          Left = 109
          Top = 19
          Width = 37
          Height = 23
          Caption = 'Rotar'
          TabOrder = 1
          OnClick = Button1Click
        end
        object JvZoom1: TJvZoom
          Left = 201
          Top = 10
          Width = 265
          Height = 147
          Align = alCustom
          Active = False
          Crosshair = True
        end
        object ORI: TEdit
          Left = 92
          Top = 106
          Width = 65
          Height = 21
          TabOrder = 3
          Text = '00000'
        end
        object ACT: TEdit
          Left = 92
          Top = 136
          Width = 65
          Height = 21
          TabOrder = 4
          Text = '00000'
        end
        object LMDButton3: TLMDButton
          Left = 160
          Top = 105
          Width = 37
          Height = 22
          Caption = 'Imagen'#13#10'Original'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = LMDButton3Click
          NumGlyphs = 2
        end
      end
      object GroupBox7: TGroupBox
        Left = 0
        Top = 336
        Width = 313
        Height = 163
        Anchors = [akLeft, akBottom]
        Caption = 'Opciones'
        TabOrder = 1
        OnMouseMove = FormMouseMove
        object Label9: TLabel
          Left = 4
          Top = 98
          Width = 25
          Height = 13
          Caption = 'Path:'
        end
        object Label5: TLabel
          Left = 113
          Top = 118
          Width = 82
          Height = 13
          Caption = 'Secuencia Hash:'
        end
        object LMDButton1: TLMDButton
          Left = 74
          Top = 13
          Width = 195
          Height = 31
          Caption = 'Adquirir Im'#225'gen desde Escaner'
          TabOrder = 0
          OnClick = LMDButton1Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
            033333FFFF77777773F330000077777770333777773FFFFFF733077777000000
            03337F3F3F777777733F0797A770003333007F737337773F3377077777778803
            30807F333333337FF73707888887880007707F3FFFF333777F37070000878807
            07807F777733337F7F3707888887880808807F333333337F7F37077777778800
            08807F333FFF337773F7088800088803308073FF777FFF733737300008000033
            33003777737777333377333080333333333333F7373333333333300803333333
            33333773733333333333088033333333333373F7F33333333333308033333333
            3333373733333333333333033333333333333373333333333333}
          NumGlyphs = 2
        end
        object LMDButton2: TLMDButton
          Left = 74
          Top = 56
          Width = 195
          Height = 31
          Caption = 'Adquirir Im'#225'gen desde Archivo'
          TabOrder = 1
          OnClick = LMDButton2Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
            033333FFFF77777773F330000077777770333777773FFFFFF733077777000000
            03337F3F3F777777733F0797A770003333007F737337773F3377077777778803
            30807F333333337FF73707888887880007707F3FFFF333777F37070000878807
            07807F777733337F7F3707888887880808807F333333337F7F37077777778800
            08807F333FFF337773F7088800088803308073FF777FFF733737300008000033
            33003777737777333377333080333333333333F7373333333333300803333333
            33333773733333333333088033333333333373F7F33333333333308033333333
            3333373733333333333333033333333333333373333333333333}
          NumGlyphs = 2
        end
        object PATH: TEdit
          Left = 32
          Top = 94
          Width = 277
          Height = 21
          TabOrder = 2
        end
        object HASHFILE: TEdit
          Left = 4
          Top = 134
          Width = 301
          Height = 21
          Color = clInactiveCaptionText
          ReadOnly = True
          TabOrder = 3
        end
      end
      object ScrollBox1: TScrollBox
        Left = 26
        Top = 24
        Width = 757
        Height = 311
        Align = alCustom
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 2
        OnMouseMove = FormMouseMove
        object Image1: TJvImageRotate
          Left = 0
          Top = 0
          Width = 735
          Height = 1000
          Picture.Data = {07544269746D617000000000}
          Proportional = True
          OnMouseDown = Image1MouseDown
          OnMouseMove = Image1MouseMove
          FillColor = clWindow
        end
      end
      object HImg: TJvxSlider
        Left = 24
        Top = -4
        Width = 746
        Height = 27
        MaxValue = 850
        TabOrder = 3
        Value = 850
        OnChange = HImgChange
      end
      object VImg: TJvxSlider
        Left = -2
        Top = 22
        Width = 27
        Height = 311
        Increment = 1
        MaxValue = 1169
        Orientation = soVertical
        TabOrder = 4
        Anchors = [akLeft, akTop, akBottom]
        OnChange = HImgChange
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Confirmaci'#243'n'
      ImageIndex = 1
      object GroupBox3: TGroupBox
        Left = 0
        Top = 0
        Width = 785
        Height = 227
        Align = alTop
        Caption = 'Guardando'
        TabOrder = 0
        DesignSize = (
          785
          227)
        object Label3: TLabel
          Left = 9
          Top = 48
          Width = 35
          Height = 13
          Caption = 'Motivo:'
        end
        object Label6: TLabel
          Left = 6
          Top = 76
          Width = 40
          Height = 13
          Caption = 'Observ.:'
        end
        object Label11: TLabel
          Left = 20
          Top = 21
          Width = 24
          Height = 13
          Caption = 'Tipo:'
        end
        object Label48: TLabel
          Left = 392
          Top = 132
          Width = 79
          Height = 26
          Alignment = taCenter
          Anchors = [akLeft, akBottom]
          Caption = 'Cant. Caracteres'#13#10'M'#225'ximo 1000:'
          WordWrap = True
        end
        object GUARDA: TLMDButton
          Left = 401
          Top = 184
          Width = 103
          Height = 31
          Hint = 'Guarda los Datos'
          Caption = 'Guardar'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = GUARDAClick
          Glyph.Data = {
            06020000424D0602000000000000760000002800000028000000140000000100
            0400000000009001000000000000000000001000000010000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333333333333333333333333333333333333333333333
            33333333FFFFFFFFFFFFFF3333333FFFFFFFFFFFF33333380000000000008F33
            33338888888888883F333330CC08CCF770CC0F333338F38F333338F38F333330
            CC08CCF770CC0F333338F38F333338F38F333330CC07887770CC0F333338F38F
            FFFFF8338F333330CC60000006CC0F333338F338888883338F333330CCCCCCCC
            CCCC0F333338F33FFFFFFFF38F333330C6000000006C0F333338F3888888883F
            8F333330C0FFFFFFFF0C0F333338F8F33333338F8F333330C0FFFFFFFF0C0F33
            3338F8F33333338F8F333330C0FFFFFFFF0C0F333338F8F33333338F8F333330
            C0FFFFFFFF0C0F333338F8F33333338F8F33333000FFFFFFFF000F333338F8F3
            3333338F8F333330C0FFFFFFFF0C0F333338F8FFFFFFFF8F8333333800000000
            0000833333338888888888883333333333333333333333333333333333333333
            3333333333333333333333333333333333333333333333333333333333333333
            33333333333333333333}
          NumGlyphs = 2
        end
        object MOT: TEdit
          Left = 48
          Top = 45
          Width = 335
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 50
          TabOrder = 1
          OnChange = MOTChange
          OnKeyPress = MOTKeyPress
        end
        object GroupBox2: TGroupBox
          Left = 391
          Top = 8
          Width = 390
          Height = 119
          Caption = 'Datos del Afiliado'
          Enabled = False
          TabOrder = 4
          object Label4: TLabel
            Left = 4
            Top = 18
            Width = 51
            Height = 13
            Caption = 'ID Afiliado:'
          end
          object Label30: TLabel
            Left = 4
            Top = 43
            Width = 51
            Height = 13
            Caption = 'N'#176' Puesto:'
          end
          object Label32: TLabel
            Left = 5
            Top = 69
            Width = 50
            Height = 13
            Caption = 'Tipo Doc.:'
          end
          object Label36: TLabel
            Left = 153
            Top = 69
            Width = 37
            Height = 13
            Caption = 'N'#176' DNI:'
          end
          object Label33: TLabel
            Left = 15
            Top = 95
            Width = 40
            Height = 13
            Caption = 'Nombre:'
          end
          object D1: TEdit
            Left = 57
            Top = 16
            Width = 140
            Height = 21
            Color = clInactiveCaptionText
            TabOrder = 0
            Text = '0'
          end
          object D2: TEdit
            Left = 57
            Top = 41
            Width = 85
            Height = 21
            Color = clInactiveCaptionText
            TabOrder = 1
          end
          object D4: TEdit
            Left = 57
            Top = 66
            Width = 59
            Height = 21
            Color = clInactiveCaptionText
            TabOrder = 2
          end
          object D5: TEdit
            Left = 192
            Top = 66
            Width = 118
            Height = 21
            Color = clInactiveCaptionText
            TabOrder = 3
          end
          object D6: TEdit
            Left = 57
            Top = 92
            Width = 328
            Height = 21
            Color = clInactiveCaptionText
            TabOrder = 4
          end
        end
        object BORRA: TLMDButton
          Left = 538
          Top = 184
          Width = 95
          Height = 33
          Hint = 'Limpia las Caja de Texto para NUeva carga'
          Anchors = [akTop, akRight]
          Caption = 'Limpiar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnClick = BORRAClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
            305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
            005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
            B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
            B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
            B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
            B0557777FF577777F7F500000E055550805577777F7555575755500000555555
            05555777775555557F5555000555555505555577755555557555}
          NumGlyphs = 2
        end
        object SALE: TLMDButton
          Left = 675
          Top = 184
          Width = 97
          Height = 33
          Hint = 'Sale y Cierra Ventana'
          Anchors = [akTop, akRight]
          Caption = 'Salir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnClick = SALEClick
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
            FFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF00E000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF00E0E000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            00E0E0E000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            E0E0E0E000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00E0
            E0E0E0E000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000E0E0
            E0E0E0E00000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFF00E0E0
            E0E0E0E00092929292929200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00E0E0
            E0E0E0E00092929292929200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00E0E0
            E0E0E0E00092929292929200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00E0E0
            E0E0E0000092929292929200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00E0E0
            E0E0E0000092929292929200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00E0E0
            E0E0E0E00092929292929200FFFFFFFFFFFF02FFFFFFFFFFFFFFFFFFFF00E0E0
            E0E0E0E00092929292929200FFFFFFFFFF0202FFFFFFFFFFFFFFFFFFFF00E0E0
            E0E0E0E00092929292929200FFFFFFFF02020202020202FFFFFFFFFFFF00E0E0
            E0E0E0E00092929292929200FFFFFF0202020202020202FFFFFFFFFFFF00E0E0
            E0E0E0E00092929292929200FFFF020202020202020202FFFFFFFFFFFF00E0E0
            E0E0E0E00092929292929200FFFFFF0202020202020202FFFFFFFFFFFF00E0E0
            E0E0E0E00092929292929200FFFFFFFF02020202020202FFFFFFFFFFFF00E0E0
            E0E0E0E00092929292929200FFFFFFFFFF0202FFFFFFFFFFFFFFFFFFFF00E0E0
            E0E0E0E00092929292929200FFFFFFFFFFFF02FFFFFFFFFFFFFFFFFFFF00E0E0
            E0E0E0009292929292929200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00E0E0
            E0E000929292929292929200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00E0E0
            E00092929292929292929200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00E0E0
            009292929292929292929200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00E000
            929292929292929292929200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000092
            929292929292929292929200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
            000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        end
        object TIPO: TComboBox
          Left = 48
          Top = 19
          Width = 335
          Height = 21
          CharCase = ecUpperCase
          ItemHeight = 13
          MaxLength = 20
          TabOrder = 0
          OnExit = TIPOExit
          OnKeyPress = TIPOKeyPress
          Items.Strings = (
            ''
            ''
            '')
        end
        object RC1: TRichEdit
          Left = 48
          Top = 70
          Width = 335
          Height = 151
          Hint = 'Escriba el Texto necesario e incluya fechas. Con ESC sale!'
          Anchors = [akLeft, akTop, akRight, akBottom]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ScrollBars = ssBoth
          ShowHint = True
          TabOrder = 2
          OnChange = RC1Change
        end
        object PERIODO: TEdit
          Left = 477
          Top = 137
          Width = 36
          Height = 21
          Anchors = [akLeft, akBottom]
          Color = 16511969
          ReadOnly = True
          TabOrder = 7
          Text = '0'
        end
      end
      object GroupBox5: TGroupBox
        Left = 0
        Top = 227
        Width = 785
        Height = 272
        Align = alClient
        Caption = 'Archivos Exitentes'
        TabOrder = 1
        object DBGrid1: TDBGrid
          Left = 2
          Top = 15
          Width = 781
          Height = 255
          Align = alClient
          DataSource = DataSource1
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = DBIMAGEN
    Left = 272
    Top = 2
  end
  object BusDir: TOpenDialog
    Filter = 
      'JPG Imagen|*.jpg|BMP Imagen Mapa de Bits|*.bmp|JPEG Imagen|*.jpe' +
      'g|GIF Imagen|*.gif|GIF Compu Server Imagen|*.gif|ANI Imagen|*.an' +
      'i|Todos los Archivos|*.*'
    Left = 396
    Top = 2
  end
  object DBIMAGEN: TADOTable
    Left = 304
    Top = 2
  end
  object Twain: TDelphiTwain
    OnTwainAcquire = TwainTwainAcquire
    TransferMode = ttmMemory
    SourceCount = 0
    Info.MajorVersion = 1
    Info.MinorVersion = 0
    Info.Language = tlUserLocale
    Info.CountryCode = 1
    Info.Groups = [tgControl, tgImage]
    Info.VersionInfo = 'Application name'
    Info.Manufacturer = 'Application manufacturer'
    Info.ProductFamily = 'App product family'
    Info.ProductName = 'App product name'
    LibraryLoaded = False
    SourceManagerLoaded = False
    Left = 434
    Top = 6
  end
  object DCP_sha11: TDCP_sha1
    Id = 2
    Algorithm = 'SHA1'
    HashSize = 160
    Left = 530
    Top = 2
  end
end

object Estad_movCaja: TEstad_movCaja
  Left = 326
  Top = 53
  AutoScroll = False
  Caption = 'Movimientos De Caja (Libro Caja)'
  ClientHeight = 528
  ClientWidth = 794
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  DesignSize = (
    794
    528)
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 293
    Width = 794
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object R5: TRichEdit
    Left = 2
    Top = 368
    Width = 791
    Height = 87
    Anchors = [akLeft, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -4
    Font.Name = 'Arial'
    Font.Style = []
    Lines.Strings = (
      'R5')
    ParentFont = False
    TabOrder = 4
  end
  object Barra1: TStatusBar
    Left = 0
    Top = 509
    Width = 794
    Height = 19
    Panels = <>
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 125
    Width = 794
    Height = 168
    Align = alClient
    Caption = 'Cantidades'
    TabOrder = 1
    object Image1: TImage
      Left = 498
      Top = 58
      Width = 105
      Height = 105
    end
    object cabeza: TStringGrid
      Left = 270
      Top = 38
      Width = 320
      Height = 120
      FixedCols = 0
      TabOrder = 1
    end
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 790
      Height = 151
      Align = alClient
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnTitleClick = DBGrid1TitleClick
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 296
    Width = 794
    Height = 213
    Align = alBottom
    Caption = 'Detalles'
    TabOrder = 2
    object cuerpo: TStringGrid
      Left = 270
      Top = 38
      Width = 320
      Height = 120
      ColCount = 10
      FixedCols = 0
      TabOrder = 1
    end
    object DBGrid2: TDBGrid
      Left = 2
      Top = 15
      Width = 790
      Height = 196
      Align = alClient
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnTitleClick = DBGrid2TitleClick
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 794
    Height = 125
    Align = alTop
    Caption = 'Seleccione'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      794
      125)
    object Bevel1: TBevel
      Left = 4
      Top = 14
      Width = 263
      Height = 107
    end
    object Label6: TLabel
      Left = 280
      Top = 98
      Width = 59
      Height = 13
      Caption = 'Nro. Planilla:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 40
      Top = 44
      Width = 67
      Height = 13
      Caption = 'Fecha Desde:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 146
      Top = 44
      Width = 64
      Height = 13
      Caption = 'Fecha Hasta:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 271
      Top = 23
      Width = 46
      Height = 13
      Caption = 'Cobrador:'
    end
    object R1: TRadioButton
      Left = 16
      Top = 89
      Width = 83
      Height = 17
      Caption = 'Por Cobrador'
      TabOrder = 0
      OnClick = R1Click
    end
    object R4: TRadioButton
      Left = 206
      Top = 89
      Width = 55
      Height = 17
      Caption = 'Todos'
      TabOrder = 1
      OnClick = R4Click
    end
    object Buscar: TButton
      Left = 574
      Top = 26
      Width = 95
      Height = 35
      Anchors = [akTop, akRight, akBottom]
      Caption = 'BUSCAR'
      TabOrder = 5
      OnClick = BuscarClick
    end
    object CODIGO: TMaskEdit
      Left = 343
      Top = 90
      Width = 65
      Height = 21
      Enabled = False
      EditMask = '99999999;1; '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 8
      ParentFont = False
      TabOrder = 2
      Text = '00000000'
      OnExit = CODIGOExit
      OnKeyPress = CODIGOKeyPress
    end
    object FECEMI: TMaskEdit
      Left = 36
      Top = 60
      Width = 78
      Height = 21
      EditMask = '!99/99/0000;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 3
      Text = '  /  /    '
      OnExit = FECEMIExit
      OnKeyPress = FECEMIKeyPress
    end
    object FECVEN: TMaskEdit
      Left = 142
      Top = 60
      Width = 79
      Height = 21
      EditMask = '!99/99/0000;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 4
      Text = '  /  /    '
      OnExit = FECVENExit
      OnKeyPress = FECVENKeyPress
    end
    object R3: TRadioButton
      Left = 105
      Top = 89
      Width = 95
      Height = 17
      Caption = 'Por NroPlanilla'
      TabOrder = 6
      OnClick = R3Click
    end
    object IMPRIME: TBitBtn
      Left = 574
      Top = 68
      Width = 95
      Height = 34
      Hint = 'Configuraci'#243'n de Impresora'
      Anchors = [akTop, akRight, akBottom]
      Caption = 'Imprimir'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = IMPRIMEClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
    object Button1: TButton
      Left = 678
      Top = 26
      Width = 95
      Height = 35
      Anchors = [akTop, akRight, akBottom]
      Caption = 'Copiar a Excel'
      TabOrder = 8
      OnClick = Button1Click
    end
    object SALE: TLMDButton
      Left = 679
      Top = 69
      Width = 95
      Height = 34
      Hint = 'Sale y Cierra Ventana'
      Anchors = [akTop, akRight, akBottom]
      Caption = 'Salir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      OnClick = SALEClick
      FontFX.Style = tdRaisedShadow
      Glyph.Data = {
        36080000424D3608000000000000360400002800000020000000200000000100
        080000000000000400000000000000000000000100000000000000000000C0C0
        C0000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0000000000C116
        820063F4140063F44C0044AFA00063F4980000000100C1B3A9000001F8000000
        010063F414000000020063F3AC000000000063F43400C4F32200C11698000000
        000000000000F6447800023D4400DC08B400F644D200C115A60000021C0063F4
        4C0000C4BC0063F498002C001C00000003000000000063F7A00044AFA0000000
        01003C03200063F404000000000063F48000C4F32200C115F000FFFFFF0063F4
        6400F736630000021C000000140000196E000000000096391F0000013F0063F4
        7800F719230000000100023D4400F9289900F71A790000C4B60063F6C800F719
        2E0096391F00000000006FC496000000020046000000F40000002E0002008F00
        00003F0000000001270000000000FA012700AF3BFA000000040000000000C114
        FE000000000000196E0000001400103BFA0001000000E6000000FF7A3400FA38
        6F00AF3C41006FFFFF00000001006E386F003A98B400AC04CC00000000000000
        0000000000006E0000001C00140000196E00FFFFFF0070168F008F5927000000
        0000000000000000800000000000000000000000000000000000AC04CC000000
        00000000000000000000000005000000000070175F00FFFFFF000000000020C5
        D000000000000000000000008000000000000000000000000000000000000000
        000000000000000000000000000000000500000000005F0C0000000000000000
        0000F70069000000010000000100FFFFFF00FFFFC700FFFFC70044A65C00FFFF
        FE00FFFFFF00FFFFFF00435FEF0043602B0000021C000000800042B8AC006600
        660000008000000069000000000063F67C00F7920100435FF400FFFFFE00435F
        B800FFFFFE0044AD3800435FF4000000000078021C001000000030000000177F
        B200107FB5002F000100E1C672006401170063F65800F7126A0000040A000000
        0000435FB800FFFFFF0044A65C00FFFFFF0000000000F7729900435FB80044A6
        5C0063F82400F798CF00604F8C007EC9980077EF820063F69C0063F6FC004100
        0000000001000245D000F792880000000100F7928F00410000000000010063F6
        FC004360780000FFFF000245D00043570400F7986A0041000000F7987F006012
        D4004360780000FFFF000245D00041004C00410000000000000044ACD80063F6
        C8007740AB0063F82400FB8CF800FB8FC000FFFFFF0063F71400F74AAC000000
        000043607800435708000000000077414F007744B200436D0C00F798CF00604F
        8C000000000077EF82007E61680042B4CC000000000044ACD8007746B7000000
        06007744A6007744A90000000000741C0B0042B4CC0063F79800010101010101
        0101010100010101010101010101010101010101010101010101010101010101
        0101010000010101010101010101010101010101010101010101010101010101
        0101000900010101010101010101010101010101010101010101010101010101
        0100090900010101010101010101010101010101010101010101010101010101
        0009090900010101010101010101010101010101010101010101010101010100
        0909090900010101010101010101010101010101010101010101010101010009
        0909090900010101010101010101010101010101010101010101000000000909
        0909090900000000000000000000000000000101010101010101010101000909
        0909090900080808080808000101010101010101010101010101010101000909
        0909090900080808080808000101010101010101010101010101010101000909
        0909090900080808080808000101010101010101010101010101010101000909
        0909090000080808080808000101010101010101010101010101010101000909
        0909090000080808080808000101010101010101010101010101010101000909
        0909090900080808080808000101010101010401010101010101010101000909
        0909090900080808080808000101010101040401010101010101010101000909
        0909090900080808080808000101010104040404040404010101010101000909
        0909090900080808080808000101010404040404040404010101010101000909
        0909090900080808080808000101040404040404040404010101010101000909
        0909090900080808080808000101010404040404040404010101010101000909
        0909090900080808080808000101010104040404040404010101010101000909
        0909090900080808080808000101010101040401010101010101010101000909
        0909090900080808080808000101010101010401010101010101010101000909
        0909090008080808080808000101010101010101010101010101010101000909
        0909000808080808080808000101010101010101010101010101010101000909
        0900080808080808080808000101010101010101010101010101010101000909
        0008080808080808080808000101010101010101010101010101010101000900
        0808080808080808080808000101010101010101010101010101010101000008
        0808080808080808080808000101010101010101010101010101010101000000
        0000000000000000000000000101010101010101010101010101010101010101
        0101010101010101010101010101010101010101010101010101010101010101
        0101010101010101010101010101010101010101010101010101010101010101
        0101010101010101010101010101010101010101010101010101}
    end
    object R2: TRadioButton
      Left = 12
      Top = 19
      Width = 93
      Height = 17
      Caption = 'Por Fechas'
      Checked = True
      TabOrder = 10
      TabStop = True
      OnClick = R2Click
    end
    object COBRADOR: TComboBox
      Left = 274
      Top = 39
      Width = 291
      Height = 21
      CharCase = ecUpperCase
      Enabled = False
      ItemHeight = 13
      TabOrder = 11
      OnExit = COBRADORExit
      OnKeyPress = COBRADORKeyPress
    end
  end
  object DataSource1: TDataSource
    Left = 20
    Top = 128
  end
  object DataSource2: TDataSource
    Left = 20
    Top = 240
  end
  object Rv: TRvSystem
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
    OnPrint = RvPrint
    Left = 488
    Top = 34
  end
end

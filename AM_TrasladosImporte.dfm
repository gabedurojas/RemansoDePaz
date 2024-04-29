object AM_ImpTraslados: TAM_ImpTraslados
  Left = 297
  Top = 154
  AutoScroll = False
  Caption = 
    'Modificaciones de Importes de Valores de Kilometrajes por Trasla' +
    'dos'
  ClientHeight = 440
  ClientWidth = 785
  Color = 15579019
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  DesignSize = (
    785
    440)
  PixelsPerInch = 96
  TextHeight = 13
  object Barra1: TStatusBar
    Left = 0
    Top = 421
    Width = 785
    Height = 19
    Panels = <
      item
        Width = 500
      end>
  end
  object PC1: TPageControl
    Left = 0
    Top = 43
    Width = 785
    Height = 378
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'B'#250'squedas y Confirmaci'#243'n de Datos'
      ImageIndex = 2
      object Image1: TImage
        Left = 556
        Top = 112
        Width = 153
        Height = 89
        Proportional = True
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 777
        Height = 252
        Align = alClient
        TabOrder = 0
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
        object DBGrid1: TDBGrid
          Left = 2
          Top = 56
          Width = 773
          Height = 194
          Align = alBottom
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
        object origen: TComboBox
          Left = 170
          Top = 15
          Width = 295
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemHeight = 16
          ParentFont = False
          TabOrder = 1
          Text = 'ORIGEN'
          OnExit = origenExit
          OnKeyPress = origenKeyPress
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 252
        Width = 777
        Height = 98
        Align = alBottom
        Caption = 'Datos del Kilometraje'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Label3: TLabel
          Left = 8
          Top = 26
          Width = 113
          Height = 16
          Caption = 'Fecha Vigencia:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 237
          Top = 26
          Width = 67
          Height = 16
          Caption = 'Valor KM:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 387
          Top = 22
          Width = 42
          Height = 16
          Caption = '% IVA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 35
          Top = 58
          Width = 87
          Height = 16
          Caption = 'Importe Fijo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 211
          Top = 58
          Width = 97
          Height = 16
          Caption = 'Importe Total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object FECHA: TMaskEdit
          Left = 126
          Top = 18
          Width = 81
          Height = 21
          EditMask = '!99/99/9999;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 0
          Text = '  /  /    '
          OnExit = FECHAExit
          OnKeyPress = FECHAKeyPress
        end
        object valorkm: TEdit
          Left = 313
          Top = 15
          Width = 58
          Height = 24
          CharCase = ecUpperCase
          MaxLength = 8
          TabOrder = 1
          OnExit = valorkmExit
          OnKeyPress = valorkmKeyPress
        end
        object iva: TEdit
          Left = 437
          Top = 15
          Width = 58
          Height = 24
          CharCase = ecUpperCase
          MaxLength = 8
          TabOrder = 2
          OnExit = ivaExit
          OnKeyPress = ivaKeyPress
        end
        object impfijo: TEdit
          Left = 127
          Top = 47
          Width = 78
          Height = 24
          CharCase = ecUpperCase
          MaxLength = 8
          TabOrder = 3
          OnExit = impfijoExit
          OnKeyPress = impfijoKeyPress
        end
        object imptotal: TEdit
          Left = 313
          Top = 49
          Width = 88
          Height = 24
          CharCase = ecUpperCase
          MaxLength = 8
          TabOrder = 4
          OnExit = imptotalExit
          OnKeyPress = imptotalKeyPress
        end
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 785
    Height = 43
    ButtonHeight = 35
    Caption = 'ToolBar1'
    Color = clGradientInactiveCaption
    EdgeBorders = [ebLeft, ebTop, ebBottom]
    EdgeInner = esLowered
    ParentColor = False
    TabOrder = 2
    DesignSize = (
      783
      39)
    object ToolButton4: TToolButton
      Left = 0
      Top = 2
      Width = 469
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object ToolButton2: TToolButton
      Left = 469
      Top = 2
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object GUARDA: TJvBitBtn
      Left = 477
      Top = 2
      Width = 85
      Height = 35
      Anchors = [akTop, akRight]
      Caption = 'GUARDAR'
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
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF006D6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF000024006D6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF0000B6B62424006D6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF0000B600FFFF492424006D6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF0000B6B6FF00DB4949492424006D6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000B6B6FFFFDBDB00DB4949492424006D6DFFFFFFFFFFFFFFFFFFFFFFFF0000
        B6B6FFFFDBDBDBDBDB00DB4949492424006D6DFFFFFFFFFFFFFFFFFF0000B600
        FFFF0024DBDBDBDBDBDB00494949492424006D6DFFFFFFFFFFFFFF00B6B6FF00
        DBDB240024DBDBDB00004949494949492424006D6DFFFFFFFFFFFF00FFFF49B6
        00DBDB2449DB00004949494949DB4949492424006D6DFFFFFFFFFF0049494949
        B600DBDB00004949494949DBDB00DB4949492424006D6DFFFFFFFFFF00494949
        49B600004949494949DBDB0000FF00DB4949492424006D6DFFFFFFFFFF004949
        49494949494949DBDB0000FFFFFFFF00DB4949492424006D6DFFFFFFFFFF0049
        4949494949DBDB0000FFFFFFFFFFFFFF00DB49494924006D6D6DFFFFFFFFFF00
        49494949DB0000FFFFFFFFFFFFFFFFFFFF00DB494949006D6D6DFFFFFFFFFFFF
        0049492400FFFFFFFFFFFFFFFFFFFFFF272700DB00006D6D6D6DFFFFFFFFFFFF
        FF0049492400FFFFFFFFFFFFFFFF2727272700006D6D6D6DFFFFFFFFFFFFFFFF
        FFFF0049492400FFFFFFFFFF2727272700006D6D6D6DFFFFFFFFFFFFFFFFFFFF
        FFFFFF0049492400FFFFA080A02700006D6D6D6DFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF0049492400A080A000006D6D6D6DFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF004949240000006D6D6D6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF004900006D6D6D6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF00FFFF6D6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
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
      HotTrackFont.Height = -8
      HotTrackFont.Name = 'Arial'
      HotTrackFont.Style = []
    end
    object ToolButton5: TToolButton
      Left = 562
      Top = 2
      Width = 8
      Caption = 'ToolButton5'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object ToolButton1: TToolButton
      Left = 570
      Top = 2
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object Limpiar: TJvBitBtn
      Left = 578
      Top = 2
      Width = 62
      Height = 35
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
      Left = 640
      Top = 2
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object JvBitBtn1: TJvBitBtn
      Left = 648
      Top = 2
      Width = 74
      Height = 35
      Anchors = [akTop, akRight]
      Caption = 'SALIR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
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
      HotTrackFont.Height = -8
      HotTrackFont.Name = 'Arial'
      HotTrackFont.Style = []
    end
  end
  object Proceso: TJvProgressBar
    Left = 587
    Top = 423
    Width = 196
    Height = 17
    Anchors = [akRight, akBottom]
    TabOrder = 3
  end
  object DataSource1: TDataSource
    Left = 4
    Top = 2
  end
end

object AM_Comprob: TAM_Comprob
  Left = 258
  Top = 43
  Width = 752
  Height = 622
  BorderIcons = [biSystemMenu]
  Caption = 'Altas y Modificaciones de Pagos'
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
  object Barra1: TStatusBar
    Left = 0
    Top = 564
    Width = 736
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
    Width = 736
    Height = 37
    ButtonHeight = 27
    Caption = 'ToolBar1'
    Color = clGradientInactiveCaption
    EdgeBorders = [ebLeft, ebTop, ebBottom]
    EdgeInner = esLowered
    ParentColor = False
    TabOrder = 1
    DesignSize = (
      734
      33)
    object ToolButton4: TToolButton
      Left = 0
      Top = 2
      Width = 491
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object Limpiar: TJvBitBtn
      Left = 491
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
    object ToolButton2: TToolButton
      Left = 553
      Top = 2
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object GUARDA: TJvBitBtn
      Left = 561
      Top = 2
      Width = 76
      Height = 27
      Anchors = [akTop, akRight]
      Caption = 'GUADAR'
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
    object ToolButton3: TToolButton
      Left = 637
      Top = 2
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object JvBitBtn1: TJvBitBtn
      Left = 645
      Top = 2
      Width = 78
      Height = 27
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
  object PC1: TPageControl
    Left = 0
    Top = 37
    Width = 736
    Height = 527
    ActivePage = TabSheet4
    Align = alClient
    Images = ImageList1
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'B'#250'squeda de Pagos'
      DesignSize = (
        728
        498)
      object Label15: TLabel
        Left = 247
        Top = 7
        Width = 89
        Height = 13
        Caption = 'Ingrese N'#176' Planilla:'
      end
      object Bevel1: TBevel
        Left = 0
        Top = 0
        Width = 131
        Height = 91
      end
      object Label4: TLabel
        Left = 314
        Top = 55
        Width = 381
        Height = 32
        Alignment = taCenter
        Caption = 
          'IMPORTANTE!!... Solo es Posible modificar Pagos que no estuviere' +
          'n CONFIRMADOS en alguna Planilla'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
      end
      object C1: TRadioButton
        Left = 9
        Top = 3
        Width = 92
        Height = 17
        Caption = 'Fecha Planilla'
        TabOrder = 0
        OnClick = C1Click
      end
      object C2: TRadioButton
        Left = 9
        Top = 20
        Width = 94
        Height = 17
        Caption = 'Por N'#176' Planilla'
        Checked = True
        TabOrder = 1
        TabStop = True
        OnClick = C1Click
      end
      object C0: TRadioButton
        Left = 9
        Top = 71
        Width = 69
        Height = 17
        Caption = 'Todos'
        TabOrder = 2
        OnClick = C0Click
      end
      object ODNI: TEdit
        Left = 262
        Top = 22
        Width = 58
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 8
        TabOrder = 3
        Text = '00000000'
        OnKeyPress = ODNIKeyPress
      end
      object Buscar: TJvBitBtn
        Left = 466
        Top = 7
        Width = 107
        Height = 42
        Caption = 'Buscar'
        TabOrder = 4
        OnClick = BuscarClick
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
          FFFFFF0000000000000000006D6D6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          000000DBDBDBDBFF93FF93930000006D6D6DFFFFFFFFFFFFFFFFFFFFFFFF0000
          DBDBDBDBDBDBDBFF93FF939393939300006D6D6DFFFFFFFFFFFFFFFFFF009393
          DBDBDBDBDBDBDBFF93FF93939393939393006D6D6DFFFFFFFFFFFFFF00939393
          DBDBDBDBDBDBDBFF93FF9393939393939393006D6D6DFFFFFFFFFF0093939393
          DBDBDB00000000000000000093939393939393006D6D6DFFFFFF009393939393
          000000FFFFFFFFFFFFFFFFFF0000009393939393006D6DFFFFFF009393930000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000939393006D6D6DFFFF00939300FFFF
          FFFF00000000000000000000FFFFFFFFFF009393006D6D6DFFFF009300FFFFFF
          000093939393939393939393000000FFFFFF0093006D6D6D6DFF0000FFFFFF00
          93939393939393939393939393939300FFFFFF00006D6D6D6DFF00FFFFFF006E
          939393939393939393FFFFFF9393939300FFFFFF006D6D6D6DFF00FFFF009393
          6E9393939393939393939393FF93936E9300FFFF006D6D6DFFFF00FFFF009393
          936E6EDB9393939393939393FF6E6E939300FFFF006D6D6DFFFF00FFFF009393
          9393DBFFDB6E6E6E6E6E6E6E6E9393939300FFFF006D6DFFFFFF00FFFFFF0093
          939393DB93939393939393939393B69300FFFFFF006DFFFFFFFFFF00FFFFFF00
          93939393939393939393939393939300FFFFFF00FFFFFFFFFFFFFFFF00FFFFFF
          000000939393939393939393930000FFFFFF00FFFFFFFFFFFFFFFFFFFF00FFFF
          FFFFFF00000000000000000000FFFFFFFF006D6DFFFFFFFFFFFFFFFFFFFF0000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000092006D6DFFFFFFFFFFFFFFFFFFFFFF
          000000FFFFFFFFFFFFFFFFFFFF0000DBDBDB92006D6DFFFFFFFFFFFFFFFFFFFF
          FFFFFF00000000000000000000DBFFFFDBDBDB00006D6DFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF00DBFFFFDB000000006D6DFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000006D6DFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00246D2400000000006D6DFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00246D2400000000006DFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00246D240000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00246D2400000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00246D24000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00246D240000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'MS Sans Serif'
        HotTrackFont.Style = []
      end
      object CB1: TCheckBox
        Left = 148
        Top = 74
        Width = 111
        Height = 17
        Caption = 'Solo sin Confirmar?'
        TabOrder = 5
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 94
        Width = 728
        Height = 401
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Lista de Comprobantes Cargados'
        TabOrder = 6
        object DBGrid1: TDBGrid
          Left = 2
          Top = 15
          Width = 724
          Height = 387
          Align = alClient
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
      end
      object FEC: TMaskEdit
        Left = 261
        Top = 22
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
        TabOrder = 7
        Text = '  /  /    '
        Visible = False
        OnExit = FECExit
        OnKeyPress = ODNIKeyPress
      end
      object GroupBox6: TGroupBox
        Left = 580
        Top = 0
        Width = 121
        Height = 51
        Caption = 'Estados de los Pagos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        object Shape3: TShape
          Left = 10
          Top = 32
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
          Left = 36
          Top = 32
          Width = 44
          Height = 13
          Caption = 'Normales'
        end
        object Label14: TLabel
          Left = 36
          Top = 14
          Width = 58
          Height = 13
          Caption = 'Confirmadas'
        end
      end
      object COBRA: TComboBox
        Left = 157
        Top = 22
        Width = 280
        Height = 21
        CharCase = ecUpperCase
        ItemHeight = 13
        TabOrder = 9
        Visible = False
        OnExit = COBRAExit
        OnKeyPress = ODNIKeyPress
      end
      object C3: TRadioButton
        Left = 9
        Top = 37
        Width = 94
        Height = 17
        Caption = 'Por Cobrador'
        TabOrder = 10
        OnClick = C1Click
      end
      object C4: TRadioButton
        Left = 9
        Top = 54
        Width = 118
        Height = 17
        Caption = 'Por N'#176' Comprobante'
        TabOrder = 11
        OnClick = C1Click
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Datos del Pago'
      ImageIndex = 1
      object grupo2: TJvgGroupBox
        Left = 6
        Top = 98
        Width = 723
        Height = 405
        Caption = 'Datos Espec'#237'ficos'
        TabOrder = 1
        Enabled = False
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
        object Label8: TLabel
          Left = 32
          Top = 249
          Width = 52
          Height = 13
          Caption = 'N'#176' Cuenta:'
          Enabled = False
        end
        object Label9: TLabel
          Left = 31
          Top = 75
          Width = 58
          Height = 13
          Caption = 'Tipo Objeto:'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 108
          Top = 137
          Width = 64
          Height = 13
          Caption = 'Fecha Cobro:'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label21: TLabel
          Left = 3
          Top = 280
          Width = 84
          Height = 13
          Caption = 'Importe Abonado:'
          Enabled = False
        end
        object Label30: TLabel
          Left = 27
          Top = 100
          Width = 62
          Height = 13
          Caption = 'Punto Venta:'
          Enabled = False
        end
        object Label31: TLabel
          Left = 9
          Top = 135
          Width = 81
          Height = 13
          Caption = 'N'#176' Comprobante:'
          Enabled = False
        end
        object Label20: TLabel
          Left = 18
          Top = 19
          Width = 71
          Height = 13
          Caption = 'Tipo Talonario:'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 29
          Top = 47
          Width = 60
          Height = 13
          Caption = 'Tipo Acci'#243'n:'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object JvSIMConnector1: TJvSIMConnector
          Left = 178
          Top = 131
          Width = 43
          Height = 27
          FromGate = 0
          FromPoint.X = 0
          FromPoint.Y = 0
          ToGate = 0
          ToPoint.X = 0
          ToPoint.Y = 0
        end
        object Label99: TLabel
          Left = 335
          Top = 240
          Width = 25
          Height = 26
          Caption = 'A'#241'o'#13#10'Pago'
          Visible = False
        end
        object Label100: TLabel
          Left = 25
          Top = 218
          Width = 57
          Height = 13
          Caption = 'Forma Pago'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 334
          Top = 16
          Width = 381
          Height = 32
          Alignment = taCenter
          Caption = 
            'Recuerde que el N'#176' de Cuenta puede hacer referencia a un T'#237'tulo ' +
            'Accionario, N'#176' de Servicio o N'#176' de Venta'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
        object Label102: TLabel
          Left = 335
          Top = 13
          Width = 381
          Height = 32
          Alignment = taCenter
          Caption = 
            'Recuerde que el N'#176' de Cuenta puede hacer referencia a un T'#237'tulo ' +
            'Accionario, N'#176' de Servicio o N'#176' de Venta'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object NROCUENTA: TEdit
          Left = 91
          Top = 237
          Width = 65
          Height = 28
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 8
          ParentFont = False
          TabOrder = 9
          Text = '000000'
          OnChange = TPOFORMChange
          OnExit = NROCUENTAExit
          OnKeyPress = NROCUENTAKeyPress
        end
        object TPOOBJ: TComboBox
          Left = 92
          Top = 71
          Width = 303
          Height = 21
          CharCase = ecUpperCase
          Enabled = False
          ItemHeight = 13
          TabOrder = 2
          OnChange = TPOFORMChange
          OnExit = TPOOBJExit
          OnKeyPress = TPOOBJKeyPress
        end
        object BusCodPos: TJvBitBtn
          Left = 161
          Top = 244
          Width = 14
          Height = 19
          Enabled = False
          TabOrder = 11
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
        object FECPAGO: TMaskEdit
          Left = 154
          Top = 94
          Width = 81
          Height = 24
          Enabled = False
          EditMask = '!99/99/9999;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 5
          Text = '  /  /    '
          Visible = False
          OnChange = TPOFORMChange
          OnExit = FECPAGOExit
          OnKeyPress = FECPAGOKeyPress
        end
        object IMPORTE: TEdit
          Left = 91
          Top = 269
          Width = 100
          Height = 28
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 18
          ParentFont = False
          TabOrder = 13
          Text = '0000.00'
          OnChange = IMPORTEChange
          OnExit = IMPORTEExit
          OnKeyPress = IMPORTEKeyPress
        end
        object PV: TComboBox
          Left = 92
          Top = 97
          Width = 51
          Height = 21
          CharCase = ecUpperCase
          Enabled = False
          ItemHeight = 13
          TabOrder = 3
          Text = 
            '                                                                ' +
            '                                                                ' +
            '                         '
          OnChange = TPOFORMChange
          OnExit = PVExit
          OnKeyPress = PVKeyPress
        end
        object COMPROB: TEdit
          Left = 92
          Top = 126
          Width = 87
          Height = 28
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 7
          ParentFont = False
          TabOrder = 4
          Text = '0000000'
          OnChange = TPOFORMChange
          OnExit = COMPROBExit
          OnKeyPress = COMPROBKeyPress
        end
        object TPOTALON: TComboBox
          Left = 92
          Top = 15
          Width = 223
          Height = 21
          CharCase = ecUpperCase
          Enabled = False
          ItemHeight = 13
          TabOrder = 0
          OnChange = TPOFORMChange
          OnExit = TPOTALONExit
          OnKeyPress = TPOTALONKeyPress
        end
        object ACCION: TComboBox
          Left = 92
          Top = 43
          Width = 223
          Height = 21
          CharCase = ecUpperCase
          Enabled = False
          ItemHeight = 13
          TabOrder = 1
          OnChange = TPOFORMChange
          OnExit = ACCIONExit
          OnKeyPress = ACCIONKeyPress
          Items.Strings = (
            'NORMAL'
            'ANULACION'
            'SEMESTRAL')
        end
        object PC3: TPageControl
          Left = 411
          Top = 54
          Width = 307
          Height = 289
          ActivePage = TabSheet7
          TabOrder = 10
          object TabSheet7: TTabSheet
            Caption = 'Minoritarios'
            object PC2: TPageControl
              Left = 0
              Top = 0
              Width = 299
              Height = 261
              ActivePage = TabSheet5
              Align = alClient
              Enabled = False
              TabOrder = 0
              object TabSheet2: TTabSheet
                Caption = 'Consolidados'
                Enabled = False
                object JvgGroupBox7: TJvgGroupBox
                  Left = 0
                  Top = 0
                  Width = 291
                  Height = 233
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
                    Left = 50
                    Top = 23
                    Width = 30
                    Height = 13
                    Caption = 'N'#176' Id.:'
                  end
                  object Label51: TLabel
                    Left = 148
                    Top = 23
                    Width = 51
                    Height = 13
                    Caption = 'N'#176' Acci'#243'n:'
                  end
                  object Label52: TLabel
                    Left = 21
                    Top = 164
                    Width = 35
                    Height = 13
                    Caption = 'Cliente:'
                  end
                  object Label53: TLabel
                    Left = 20
                    Top = 138
                    Width = 36
                    Height = 13
                    Caption = 'N'#176' Cuif:'
                  end
                  object Label54: TLabel
                    Left = 165
                    Top = 138
                    Width = 37
                    Height = 13
                    Caption = 'N'#176' DNI:'
                  end
                  object Label55: TLabel
                    Left = 26
                    Top = 51
                    Width = 54
                    Height = 13
                    Caption = 'N'#176' Parcela:'
                  end
                  object Label56: TLabel
                    Left = 163
                    Top = 50
                    Width = 34
                    Height = 13
                    Caption = 'Sector:'
                  end
                  object Label57: TLabel
                    Left = 47
                    Top = 79
                    Width = 33
                    Height = 13
                    Caption = 'Fecha:'
                  end
                  object Label58: TLabel
                    Left = 16
                    Top = 106
                    Width = 63
                    Height = 13
                    Caption = 'Saldo Actual:'
                  end
                  object Label59: TLabel
                    Left = 169
                    Top = 78
                    Width = 29
                    Height = 13
                    Caption = 'Plaza:'
                  end
                  object D29: TEdit
                    Left = 82
                    Top = 20
                    Width = 51
                    Height = 21
                    Color = clInfoBk
                    ReadOnly = True
                    TabOrder = 0
                  end
                  object D30: TEdit
                    Left = 200
                    Top = 20
                    Width = 51
                    Height = 21
                    Color = clInfoBk
                    ReadOnly = True
                    TabOrder = 1
                  end
                  object D31: TEdit
                    Left = 82
                    Top = 47
                    Width = 51
                    Height = 21
                    Color = clInfoBk
                    ReadOnly = True
                    TabOrder = 2
                  end
                  object D32: TEdit
                    Left = 200
                    Top = 47
                    Width = 51
                    Height = 21
                    Color = clInfoBk
                    ReadOnly = True
                    TabOrder = 3
                  end
                  object D33: TEdit
                    Left = 82
                    Top = 75
                    Width = 82
                    Height = 21
                    Color = clInfoBk
                    ReadOnly = True
                    TabOrder = 4
                  end
                  object D34: TEdit
                    Left = 82
                    Top = 103
                    Width = 57
                    Height = 21
                    Color = clInfoBk
                    ReadOnly = True
                    TabOrder = 5
                  end
                  object D36: TEdit
                    Left = 58
                    Top = 135
                    Width = 98
                    Height = 21
                    Color = clInfoBk
                    ReadOnly = True
                    TabOrder = 6
                  end
                  object D37: TEdit
                    Left = 204
                    Top = 135
                    Width = 84
                    Height = 21
                    Color = clInfoBk
                    ReadOnly = True
                    TabOrder = 7
                  end
                  object D38: TEdit
                    Left = 58
                    Top = 161
                    Width = 230
                    Height = 21
                    Color = clInfoBk
                    ReadOnly = True
                    TabOrder = 8
                  end
                  object D35: TEdit
                    Left = 200
                    Top = 75
                    Width = 187
                    Height = 21
                    Color = clInfoBk
                    ReadOnly = True
                    TabOrder = 9
                  end
                end
              end
              object TabSheet3: TTabSheet
                Caption = 'Mantenimiento'
                Enabled = False
                ImageIndex = 1
                object JvgGroupBox2: TJvgGroupBox
                  Left = 0
                  Top = 0
                  Width = 291
                  Height = 233
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
                  object Label17: TLabel
                    Left = 29
                    Top = 23
                    Width = 51
                    Height = 13
                    Caption = 'N'#176' Acci'#243'n:'
                  end
                  object Label18: TLabel
                    Left = 19
                    Top = 165
                    Width = 35
                    Height = 13
                    Caption = 'Cliente:'
                  end
                  object Label22: TLabel
                    Left = 18
                    Top = 139
                    Width = 36
                    Height = 13
                    Caption = 'N'#176' Cuif:'
                  end
                  object Label25: TLabel
                    Left = 164
                    Top = 138
                    Width = 37
                    Height = 13
                    Caption = 'N'#176' DNI:'
                  end
                  object Label26: TLabel
                    Left = 26
                    Top = 50
                    Width = 54
                    Height = 13
                    Caption = 'N'#176' Parcela:'
                  end
                  object Label27: TLabel
                    Left = 163
                    Top = 50
                    Width = 34
                    Height = 13
                    Caption = 'Sector:'
                  end
                  object Label28: TLabel
                    Left = 36
                    Top = 78
                    Width = 44
                    Height = 13
                    Caption = 'Vigencia:'
                  end
                  object Label29: TLabel
                    Left = 2
                    Top = 106
                    Width = 78
                    Height = 13
                    Caption = 'Deuda Mensual:'
                  end
                  object D1: TEdit
                    Left = 82
                    Top = 20
                    Width = 51
                    Height = 21
                    Color = clInfoBk
                    ReadOnly = True
                    TabOrder = 0
                  end
                  object D2: TEdit
                    Left = 82
                    Top = 47
                    Width = 51
                    Height = 21
                    Color = clInfoBk
                    ReadOnly = True
                    TabOrder = 1
                  end
                  object D3: TEdit
                    Left = 200
                    Top = 47
                    Width = 51
                    Height = 21
                    Color = clInfoBk
                    ReadOnly = True
                    TabOrder = 2
                  end
                  object D4: TEdit
                    Left = 82
                    Top = 75
                    Width = 82
                    Height = 21
                    Color = clInfoBk
                    ReadOnly = True
                    TabOrder = 3
                  end
                  object D5: TEdit
                    Left = 82
                    Top = 103
                    Width = 51
                    Height = 21
                    Color = clInfoBk
                    ReadOnly = True
                    TabOrder = 4
                  end
                  object D6: TEdit
                    Left = 57
                    Top = 135
                    Width = 98
                    Height = 21
                    Color = clInfoBk
                    ReadOnly = True
                    TabOrder = 5
                  end
                  object D7: TEdit
                    Left = 203
                    Top = 135
                    Width = 84
                    Height = 21
                    Color = clInfoBk
                    ReadOnly = True
                    TabOrder = 6
                  end
                  object D8: TEdit
                    Left = 57
                    Top = 161
                    Width = 230
                    Height = 21
                    Color = clInfoBk
                    ReadOnly = True
                    TabOrder = 7
                  end
                  object D9: TCheckBox
                    Left = 57
                    Top = 186
                    Width = 81
                    Height = 18
                    Caption = 'Es Jubilado?'
                    TabOrder = 8
                  end
                end
              end
              object TabSheet5: TTabSheet
                Caption = 'Servicios'
                Enabled = False
                ImageIndex = 2
                object JvgGroupBox4: TJvgGroupBox
                  Left = 0
                  Top = 0
                  Width = 291
                  Height = 233
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
                  object Label32: TLabel
                    Left = 50
                    Top = 23
                    Width = 30
                    Height = 13
                    Caption = 'N'#176' Id.:'
                  end
                  object Label33: TLabel
                    Left = 146
                    Top = 23
                    Width = 51
                    Height = 13
                    Caption = 'N'#176' Acci'#243'n:'
                  end
                  object Label34: TLabel
                    Left = 20
                    Top = 164
                    Width = 35
                    Height = 13
                    Caption = 'Cliente:'
                  end
                  object Label35: TLabel
                    Left = 19
                    Top = 139
                    Width = 36
                    Height = 13
                    Caption = 'N'#176' Cuif:'
                  end
                  object Label36: TLabel
                    Left = 164
                    Top = 138
                    Width = 37
                    Height = 13
                    Caption = 'N'#176' DNI:'
                  end
                  object Label37: TLabel
                    Left = 26
                    Top = 51
                    Width = 54
                    Height = 13
                    Caption = 'N'#176' Parcela:'
                  end
                  object Label38: TLabel
                    Left = 163
                    Top = 51
                    Width = 34
                    Height = 13
                    Caption = 'Sector:'
                  end
                  object Label39: TLabel
                    Left = 47
                    Top = 79
                    Width = 33
                    Height = 13
                    Caption = 'Fecha:'
                  end
                  object Label40: TLabel
                    Left = 2
                    Top = 106
                    Width = 78
                    Height = 13
                    Caption = 'Deuda Mensual:'
                  end
                  object Label16: TLabel
                    Left = 5
                    Top = 194
                    Width = 50
                    Height = 13
                    Caption = 'Inhumado:'
                  end
                  object Label103: TLabel
                    Left = 169
                    Top = 83
                    Width = 27
                    Height = 13
                    Caption = 'Nivel:'
                  end
                  object D10: TEdit
                    Left = 82
                    Top = 20
                    Width = 51
                    Height = 21
                    Color = clInfoBk
                    ReadOnly = True
                    TabOrder = 0
                  end
                  object D11: TEdit
                    Left = 200
                    Top = 20
                    Width = 51
                    Height = 21
                    Color = clInfoBk
                    ReadOnly = True
                    TabOrder = 1
                  end
                  object D12: TEdit
                    Left = 82
                    Top = 47
                    Width = 51
                    Height = 21
                    Color = clInfoBk
                    ReadOnly = True
                    TabOrder = 2
                  end
                  object D13: TEdit
                    Left = 200
                    Top = 47
                    Width = 51
                    Height = 21
                    Color = clInfoBk
                    ReadOnly = True
                    TabOrder = 3
                  end
                  object D14: TEdit
                    Left = 82
                    Top = 75
                    Width = 82
                    Height = 21
                    Color = clInfoBk
                    ReadOnly = True
                    TabOrder = 4
                  end
                  object D15: TEdit
                    Left = 82
                    Top = 103
                    Width = 51
                    Height = 21
                    Color = clInfoBk
                    ReadOnly = True
                    TabOrder = 5
                  end
                  object D16: TEdit
                    Left = 58
                    Top = 131
                    Width = 98
                    Height = 21
                    Color = clInfoBk
                    ReadOnly = True
                    TabOrder = 6
                  end
                  object D17: TEdit
                    Left = 204
                    Top = 131
                    Width = 84
                    Height = 21
                    Color = clInfoBk
                    ReadOnly = True
                    TabOrder = 7
                  end
                  object D18: TEdit
                    Left = 58
                    Top = 157
                    Width = 230
                    Height = 21
                    Color = clInfoBk
                    ReadOnly = True
                    TabOrder = 8
                  end
                  object D19: TEdit
                    Left = 58
                    Top = 187
                    Width = 230
                    Height = 21
                    Color = clInfoBk
                    ReadOnly = True
                    TabOrder = 9
                  end
                  object D39: TEdit
                    Left = 200
                    Top = 75
                    Width = 51
                    Height = 21
                    Color = clInfoBk
                    ReadOnly = True
                    TabOrder = 10
                  end
                end
              end
              object TabSheet6: TTabSheet
                Caption = 'Ventas'
                Enabled = False
                ImageIndex = 3
                object JvgGroupBox6: TJvgGroupBox
                  Left = 0
                  Top = 0
                  Width = 291
                  Height = 233
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
                  object Label41: TLabel
                    Left = 50
                    Top = 23
                    Width = 30
                    Height = 13
                    Caption = 'N'#176' Id.:'
                  end
                  object Label42: TLabel
                    Left = 146
                    Top = 23
                    Width = 51
                    Height = 13
                    Caption = 'N'#176' Acci'#243'n:'
                  end
                  object Label43: TLabel
                    Left = 20
                    Top = 164
                    Width = 35
                    Height = 13
                    Caption = 'Cliente:'
                  end
                  object Label44: TLabel
                    Left = 19
                    Top = 138
                    Width = 36
                    Height = 13
                    Caption = 'N'#176' Cuif:'
                  end
                  object Label45: TLabel
                    Left = 164
                    Top = 138
                    Width = 37
                    Height = 13
                    Caption = 'N'#176' DNI:'
                  end
                  object Label46: TLabel
                    Left = 26
                    Top = 51
                    Width = 54
                    Height = 13
                    Caption = 'N'#176' Parcela:'
                  end
                  object Label47: TLabel
                    Left = 163
                    Top = 50
                    Width = 34
                    Height = 13
                    Caption = 'Sector:'
                  end
                  object Label48: TLabel
                    Left = 47
                    Top = 79
                    Width = 33
                    Height = 13
                    Caption = 'Fecha:'
                  end
                  object Label49: TLabel
                    Left = 2
                    Top = 106
                    Width = 78
                    Height = 13
                    Caption = 'Deuda Mensual:'
                  end
                  object D20: TEdit
                    Left = 82
                    Top = 20
                    Width = 51
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 0
                  end
                  object D21: TEdit
                    Left = 200
                    Top = 20
                    Width = 51
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 1
                  end
                  object D22: TEdit
                    Left = 82
                    Top = 47
                    Width = 51
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 2
                  end
                  object D23: TEdit
                    Left = 200
                    Top = 47
                    Width = 51
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 3
                  end
                  object D24: TEdit
                    Left = 82
                    Top = 75
                    Width = 82
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 4
                  end
                  object D25: TEdit
                    Left = 82
                    Top = 103
                    Width = 51
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 5
                  end
                  object D26: TEdit
                    Left = 58
                    Top = 135
                    Width = 98
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 6
                  end
                  object D27: TEdit
                    Left = 204
                    Top = 135
                    Width = 84
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 7
                  end
                  object D28: TEdit
                    Left = 58
                    Top = 161
                    Width = 230
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 8
                  end
                end
              end
            end
          end
          object TabSheet8: TTabSheet
            Caption = 'Mayoritarios'
            ImageIndex = 1
            object PC4: TPageControl
              Left = 0
              Top = -2
              Width = 316
              Height = 243
              ActivePage = TabSheet9
              Enabled = False
              TabOrder = 0
              object TabSheet9: TTabSheet
                Caption = 'Consolidados'
                Enabled = False
                object JvgGroupBox1: TJvgGroupBox
                  Left = 0
                  Top = 0
                  Width = 308
                  Height = 215
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
                  object Label60: TLabel
                    Left = 50
                    Top = 23
                    Width = 30
                    Height = 13
                    Caption = 'N'#176' Id.:'
                  end
                  object Label61: TLabel
                    Left = 146
                    Top = 23
                    Width = 52
                    Height = 13
                    Caption = 'N'#176' Cuenta:'
                  end
                  object Label62: TLabel
                    Left = 21
                    Top = 164
                    Width = 35
                    Height = 13
                    Caption = 'Cliente:'
                  end
                  object Label63: TLabel
                    Left = 20
                    Top = 138
                    Width = 36
                    Height = 13
                    Caption = 'N'#176' Cuif:'
                  end
                  object Label64: TLabel
                    Left = 165
                    Top = 138
                    Width = 37
                    Height = 13
                    Caption = 'N'#176' DNI:'
                  end
                  object Label65: TLabel
                    Left = 24
                    Top = 51
                    Width = 56
                    Height = 13
                    Caption = 'Cant. Parc.:'
                  end
                  object Label67: TLabel
                    Left = 47
                    Top = 79
                    Width = 33
                    Height = 13
                    Caption = 'Fecha:'
                  end
                  object Label68: TLabel
                    Left = 16
                    Top = 106
                    Width = 63
                    Height = 13
                    Caption = 'Saldo Actual:'
                  end
                  object Label74: TLabel
                    Left = 31
                    Top = 190
                    Width = 24
                    Height = 13
                    Caption = 'Tipo:'
                  end
                  object M1: TEdit
                    Left = 82
                    Top = 20
                    Width = 51
                    Height = 21
                    Color = clGradientInactiveCaption
                    ReadOnly = True
                    TabOrder = 0
                  end
                  object M2: TEdit
                    Left = 200
                    Top = 20
                    Width = 51
                    Height = 21
                    Color = clGradientInactiveCaption
                    ReadOnly = True
                    TabOrder = 1
                  end
                  object M3: TEdit
                    Left = 82
                    Top = 47
                    Width = 51
                    Height = 21
                    Color = clGradientInactiveCaption
                    ReadOnly = True
                    TabOrder = 2
                  end
                  object M4: TEdit
                    Left = 82
                    Top = 75
                    Width = 82
                    Height = 21
                    Color = clGradientInactiveCaption
                    ReadOnly = True
                    TabOrder = 3
                  end
                  object M5: TEdit
                    Left = 82
                    Top = 103
                    Width = 57
                    Height = 21
                    Color = clGradientInactiveCaption
                    ReadOnly = True
                    TabOrder = 4
                  end
                  object M6: TEdit
                    Left = 58
                    Top = 132
                    Width = 98
                    Height = 21
                    Color = clGradientInactiveCaption
                    ReadOnly = True
                    TabOrder = 5
                  end
                  object M7: TEdit
                    Left = 204
                    Top = 132
                    Width = 84
                    Height = 21
                    Color = clGradientInactiveCaption
                    ReadOnly = True
                    TabOrder = 6
                  end
                  object M8: TEdit
                    Left = 58
                    Top = 158
                    Width = 230
                    Height = 21
                    Color = clGradientInactiveCaption
                    ReadOnly = True
                    TabOrder = 7
                  end
                  object M9: TEdit
                    Left = 58
                    Top = 184
                    Width = 230
                    Height = 21
                    Color = clGradientInactiveCaption
                    ReadOnly = True
                    TabOrder = 8
                  end
                end
              end
              object TabSheet10: TTabSheet
                Caption = 'Mantenimiento'
                Enabled = False
                ImageIndex = 1
                object JvgGroupBox3: TJvgGroupBox
                  Left = 0
                  Top = 0
                  Width = 308
                  Height = 215
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
                  object Label70: TLabel
                    Left = 50
                    Top = 23
                    Width = 30
                    Height = 13
                    Caption = 'N'#176' Id.:'
                  end
                  object Label71: TLabel
                    Left = 20
                    Top = 165
                    Width = 35
                    Height = 13
                    Caption = 'Cliente:'
                  end
                  object Label72: TLabel
                    Left = 19
                    Top = 139
                    Width = 36
                    Height = 13
                    Caption = 'N'#176' Cuif:'
                  end
                  object Label73: TLabel
                    Left = 164
                    Top = 138
                    Width = 37
                    Height = 13
                    Caption = 'N'#176' DNI:'
                  end
                  object Label76: TLabel
                    Left = 36
                    Top = 78
                    Width = 44
                    Height = 13
                    Caption = 'Vigencia:'
                  end
                  object Label77: TLabel
                    Left = 2
                    Top = 106
                    Width = 78
                    Height = 13
                    Caption = 'Deuda Mensual:'
                  end
                  object Label66: TLabel
                    Left = 146
                    Top = 23
                    Width = 52
                    Height = 13
                    Caption = 'N'#176' Cuenta:'
                  end
                  object Label69: TLabel
                    Left = 24
                    Top = 51
                    Width = 56
                    Height = 13
                    Caption = 'Cant. Parc.:'
                  end
                  object Label75: TLabel
                    Left = 31
                    Top = 190
                    Width = 24
                    Height = 13
                    Caption = 'Tipo:'
                  end
                  object M10: TEdit
                    Left = 82
                    Top = 20
                    Width = 51
                    Height = 21
                    Color = clGradientInactiveCaption
                    ReadOnly = True
                    TabOrder = 0
                  end
                  object M13: TEdit
                    Left = 82
                    Top = 75
                    Width = 82
                    Height = 21
                    Color = clGradientInactiveCaption
                    ReadOnly = True
                    TabOrder = 1
                  end
                  object M14: TEdit
                    Left = 82
                    Top = 103
                    Width = 51
                    Height = 21
                    Color = clGradientInactiveCaption
                    ReadOnly = True
                    TabOrder = 2
                  end
                  object M15: TEdit
                    Left = 58
                    Top = 130
                    Width = 98
                    Height = 21
                    Color = clGradientInactiveCaption
                    ReadOnly = True
                    TabOrder = 3
                  end
                  object M16: TEdit
                    Left = 203
                    Top = 130
                    Width = 84
                    Height = 21
                    Color = clGradientInactiveCaption
                    ReadOnly = True
                    TabOrder = 4
                  end
                  object M17: TEdit
                    Left = 58
                    Top = 159
                    Width = 230
                    Height = 21
                    Color = clGradientInactiveCaption
                    ReadOnly = True
                    TabOrder = 5
                  end
                  object M11: TEdit
                    Left = 200
                    Top = 20
                    Width = 51
                    Height = 21
                    Color = clGradientInactiveCaption
                    ReadOnly = True
                    TabOrder = 6
                  end
                  object M12: TEdit
                    Left = 82
                    Top = 47
                    Width = 51
                    Height = 21
                    Color = clGradientInactiveCaption
                    ReadOnly = True
                    TabOrder = 7
                  end
                  object M18: TEdit
                    Left = 58
                    Top = 185
                    Width = 230
                    Height = 21
                    Color = clGradientInactiveCaption
                    ReadOnly = True
                    TabOrder = 8
                  end
                end
              end
              object TabSheet11: TTabSheet
                Caption = 'Servicios'
                Enabled = False
                ImageIndex = 2
                object JvgGroupBox8: TJvgGroupBox
                  Left = 0
                  Top = 0
                  Width = 308
                  Height = 215
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
                  object Label78: TLabel
                    Left = 50
                    Top = 23
                    Width = 30
                    Height = 13
                    Caption = 'N'#176' Id.:'
                  end
                  object Label80: TLabel
                    Left = 20
                    Top = 164
                    Width = 35
                    Height = 13
                    Caption = 'Cliente:'
                  end
                  object Label81: TLabel
                    Left = 19
                    Top = 139
                    Width = 36
                    Height = 13
                    Caption = 'N'#176' Cuif:'
                  end
                  object Label82: TLabel
                    Left = 164
                    Top = 138
                    Width = 37
                    Height = 13
                    Caption = 'N'#176' DNI:'
                  end
                  object Label85: TLabel
                    Left = 47
                    Top = 79
                    Width = 33
                    Height = 13
                    Caption = 'Fecha:'
                  end
                  object Label86: TLabel
                    Left = 2
                    Top = 106
                    Width = 78
                    Height = 13
                    Caption = 'Deuda Mensual:'
                  end
                  object Label87: TLabel
                    Left = 31
                    Top = 190
                    Width = 24
                    Height = 13
                    Caption = 'Tipo:'
                  end
                  object Label79: TLabel
                    Left = 28
                    Top = 49
                    Width = 52
                    Height = 13
                    Caption = 'N'#176' Cuenta:'
                  end
                  object M19: TEdit
                    Left = 82
                    Top = 20
                    Width = 51
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 0
                  end
                  object M21: TEdit
                    Left = 82
                    Top = 75
                    Width = 82
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 1
                  end
                  object M22: TEdit
                    Left = 82
                    Top = 103
                    Width = 51
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 2
                  end
                  object M23: TEdit
                    Left = 58
                    Top = 135
                    Width = 98
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 3
                  end
                  object M24: TEdit
                    Left = 204
                    Top = 135
                    Width = 84
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 4
                  end
                  object M25: TEdit
                    Left = 58
                    Top = 161
                    Width = 230
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 5
                  end
                  object M26: TEdit
                    Left = 58
                    Top = 187
                    Width = 230
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 6
                  end
                  object M20: TEdit
                    Left = 82
                    Top = 46
                    Width = 51
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 7
                  end
                end
              end
              object TabSheet12: TTabSheet
                Caption = 'Ventas'
                Enabled = False
                ImageIndex = 3
                object JvgGroupBox9: TJvgGroupBox
                  Left = 0
                  Top = 0
                  Width = 308
                  Height = 215
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
                  object Label88: TLabel
                    Left = 50
                    Top = 23
                    Width = 30
                    Height = 13
                    Caption = 'N'#176' Id.:'
                  end
                  object Label90: TLabel
                    Left = 20
                    Top = 164
                    Width = 35
                    Height = 13
                    Caption = 'Cliente:'
                  end
                  object Label91: TLabel
                    Left = 19
                    Top = 138
                    Width = 36
                    Height = 13
                    Caption = 'N'#176' Cuif:'
                  end
                  object Label92: TLabel
                    Left = 164
                    Top = 138
                    Width = 37
                    Height = 13
                    Caption = 'N'#176' DNI:'
                  end
                  object Label95: TLabel
                    Left = 47
                    Top = 79
                    Width = 33
                    Height = 13
                    Caption = 'Fecha:'
                  end
                  object Label96: TLabel
                    Left = 2
                    Top = 106
                    Width = 78
                    Height = 13
                    Caption = 'Deuda Mensual:'
                  end
                  object Label97: TLabel
                    Left = 31
                    Top = 190
                    Width = 24
                    Height = 13
                    Caption = 'Tipo:'
                  end
                  object Label83: TLabel
                    Left = 28
                    Top = 49
                    Width = 52
                    Height = 13
                    Caption = 'N'#176' Cuenta:'
                  end
                  object M27: TEdit
                    Left = 82
                    Top = 20
                    Width = 51
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 0
                  end
                  object M29: TEdit
                    Left = 82
                    Top = 75
                    Width = 82
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 1
                  end
                  object M30: TEdit
                    Left = 82
                    Top = 103
                    Width = 51
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 2
                  end
                  object M31: TEdit
                    Left = 58
                    Top = 135
                    Width = 98
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 3
                  end
                  object M32: TEdit
                    Left = 204
                    Top = 135
                    Width = 84
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 4
                  end
                  object M33: TEdit
                    Left = 58
                    Top = 161
                    Width = 230
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 5
                  end
                  object M34: TEdit
                    Left = 58
                    Top = 187
                    Width = 230
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 6
                  end
                  object M28: TEdit
                    Left = 82
                    Top = 46
                    Width = 51
                    Height = 21
                    Color = 14277612
                    ReadOnly = True
                    TabOrder = 7
                  end
                end
              end
            end
          end
          object TabSheet13: TTabSheet
            Caption = 'Datos Posnet'
            ImageIndex = 2
            object Label104: TLabel
              Left = 26
              Top = 19
              Width = 69
              Height = 13
              Caption = 'Fecha Posnet:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label105: TLabel
              Left = 56
              Top = 47
              Width = 36
              Height = 13
              Caption = 'Tarjeta:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label106: TLabel
              Left = 30
              Top = 74
              Width = 60
              Height = 13
              Caption = 'Nro Terminal'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label107: TLabel
              Left = 50
              Top = 100
              Width = 41
              Height = 13
              Caption = 'Nro Lote'
            end
            object Label108: TLabel
              Left = 8
              Top = 126
              Width = 86
              Height = 13
              Caption = 'Nro Cupon/Ticket'
            end
            object Label109: TLabel
              Left = 22
              Top = 154
              Width = 71
              Height = 13
              Caption = 'Importe Posnet'
            end
            object FECNAC: TMaskEdit
              Left = 100
              Top = 13
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
              TabOrder = 0
              Text = '  /  /    '
              OnExit = FECNACExit
              OnKeyPress = FECNACKeyPress
            end
            object tarjeta: TComboBox
              Left = 99
              Top = 41
              Width = 185
              Height = 21
              CharCase = ecUpperCase
              ItemHeight = 13
              TabOrder = 1
              OnExit = tarjetaExit
              OnKeyPress = tarjetaKeyPress
            end
            object Terminal: TComboBox
              Left = 99
              Top = 68
              Width = 185
              Height = 21
              CharCase = ecUpperCase
              ItemHeight = 13
              TabOrder = 2
              OnExit = TerminalExit
              OnKeyPress = TerminalKeyPress
            end
            object Edit1: TEdit
              Left = 99
              Top = 94
              Width = 89
              Height = 21
              TabOrder = 3
              OnExit = Edit1Exit
              OnKeyPress = Edit1KeyPress
            end
            object Edit7: TEdit
              Left = 99
              Top = 120
              Width = 89
              Height = 21
              TabOrder = 4
              OnExit = Edit7Exit
              OnKeyPress = Edit7KeyPress
            end
            object Edit2: TEdit
              Left = 100
              Top = 148
              Width = 87
              Height = 21
              TabOrder = 5
              OnExit = Edit2Exit
              OnKeyPress = Edit2KeyPress
            end
          end
          object TabSheet14: TTabSheet
            Caption = 'Datos Cheques'
            ImageIndex = 3
            object Label110: TLabel
              Left = 13
              Top = 21
              Width = 34
              Height = 13
              Caption = 'Banco:'
            end
            object LB12: TLabel
              Left = 2
              Top = 55
              Width = 55
              Height = 13
              Caption = 'N'#186' Cheque:'
            end
            object LB3: TLabel
              Left = 91
              Top = 49
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
            object LB7: TLabel
              Left = 19
              Top = 86
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
            object banco: TComboBox
              Left = 54
              Top = 15
              Width = 243
              Height = 21
              CharCase = ecUpperCase
              ItemHeight = 13
              TabOrder = 0
              Text = 'NARANJA ZETA'
              OnExit = bancoExit
              OnKeyPress = bancoKeyPress
            end
            object seriecheque: TEdit
              Left = 61
              Top = 48
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
              TabOrder = 1
              Text = 'A'
              OnKeyPress = seriechequeKeyPress
            end
            object nrocheque: TEdit
              Left = 106
              Top = 48
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
              TabOrder = 2
              Text = '000000000000'
              OnExit = nrochequeExit
              OnKeyPress = nrochequeKeyPress
            end
            object impcheque: TEdit
              Left = 60
              Top = 82
              Width = 63
              Height = 21
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              MaxLength = 8
              ParentFont = False
              TabOrder = 3
              Text = '0000.00'
              OnExit = impchequeExit
              OnKeyPress = impchequeKeyPress
            end
          end
        end
        object Observ: TEdit
          Left = 6
          Top = 301
          Width = 380
          Height = 21
          MaxLength = 150
          TabOrder = 14
          OnKeyPress = ObservKeyPress
        end
        object GroupBox2: TGroupBox
          Left = 228
          Top = 106
          Width = 181
          Height = 98
          Caption = 'Comprobante Especial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 15
          object Label89: TLabel
            Left = 5
            Top = 14
            Width = 165
            Height = 52
            Caption = 
              'Este Comprobante pertenece'#13#10'a Administracion Central y'#13#10'fue entr' +
              'egado a este Gestor'#13#10'el dia:'
          end
          object Label93: TLabel
            Left = 46
            Top = 54
            Width = 65
            Height = 20
            Caption = 'Label93'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label94: TLabel
            Left = 3
            Top = 78
            Width = 76
            Height = 13
            Caption = 'Talonario N'#186':'
          end
          object Label98: TLabel
            Left = 84
            Top = 76
            Width = 65
            Height = 20
            Caption = 'Label93'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object CPA: TCheckBox
          Left = 179
          Top = 247
          Width = 151
          Height = 17
          Caption = 'Pago ANUAL EXACTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
          OnClick = CPAClick
          OnKeyPress = CPAKeyPress
        end
        object Aniopago: TEdit
          Left = 368
          Top = 244
          Width = 43
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 4
          ParentFont = False
          TabOrder = 16
          Text = '0000'
          Visible = False
          OnExit = AniopagoExit
          OnKeyPress = AniopagoKeyPress
        end
        object FPAGO: TComboBox
          Left = 91
          Top = 211
          Width = 225
          Height = 21
          CharCase = ecUpperCase
          Enabled = False
          ItemHeight = 13
          TabOrder = 8
          OnChange = TPOFORMChange
          OnExit = FPAGOExit
          OnKeyPress = FPAGOKeyPress
        end
        object Edit3: TEdit
          Left = 116
          Top = 179
          Width = 83
          Height = 28
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 6
          ParentFont = False
          TabOrder = 7
          OnExit = Edit3Exit
          OnKeyPress = Edit3KeyPress
        end
        object PeriActual: TCheckBox
          Left = 18
          Top = 189
          Width = 95
          Height = 17
          Caption = 'Periodo Actual'
          Checked = True
          State = cbChecked
          TabOrder = 6
          OnKeyPress = PeriActualKeyPress
        end
      end
      object JvgGroupBox5: TJvgGroupBox
        Left = 3
        Top = 4
        Width = 563
        Height = 91
        Caption = 'Datos Generales'
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
        object Label11: TLabel
          Left = 33
          Top = 20
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
        object Label7: TLabel
          Left = 123
          Top = 25
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
        object Label19: TLabel
          Left = 14
          Top = 44
          Width = 46
          Height = 13
          Caption = 'Cobrador:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 9
          Top = 69
          Width = 51
          Height = 13
          Caption = 'N'#176' Planilla:'
        end
        object Label3: TLabel
          Left = 159
          Top = 71
          Width = 69
          Height = 13
          Caption = 'Fecha Planilla:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object IDENTIF: TEdit
          Left = 62
          Top = 17
          Width = 57
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
        object TPOFORM: TComboBox
          Left = 206
          Top = 16
          Width = 345
          Height = 21
          CharCase = ecUpperCase
          ItemHeight = 13
          TabOrder = 0
          OnChange = TPOFORMChange
          OnExit = TPOFORMExit
          OnKeyPress = TPOFORMKeyPress
        end
        object COBRADOR: TComboBox
          Left = 62
          Top = 40
          Width = 347
          Height = 21
          CharCase = ecUpperCase
          ItemHeight = 13
          TabOrder = 1
          OnChange = TPOFORMChange
          OnExit = COBRADORExit
          OnKeyPress = COBRADORKeyPress
        end
        object NROPLAN: TEdit
          Left = 64
          Top = 64
          Width = 51
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 7
          ParentFont = False
          TabOrder = 2
          Text = '0000000'
          OnChange = TPOFORMChange
          OnExit = NROPLANExit
          OnKeyPress = NROPLANKeyPress
        end
        object FECPLAN: TMaskEdit
          Left = 230
          Top = 64
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
          TabOrder = 3
          Text = '  /  /    '
          OnChange = TPOFORMChange
          OnExit = FECPLANExit
          OnKeyPress = FECPLANKeyPress
        end
        object Buscar1: TLMDButton
          Left = 116
          Top = 64
          Width = 25
          Height = 19
          Hint = 'Borra la Fecha Ingresada'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnClick = Buscar1Click
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
      end
      object grupo1: TJvgGroupBox
        Left = 6
        Top = 424
        Width = 381
        Height = 73
        Caption = 'Composici'#243'n del Importe'
        TabOrder = 2
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
        object Label23: TLabel
          Left = 6
          Top = 23
          Width = 66
          Height = 13
          Caption = 'Gasto Admin.:'
        end
        object Label24: TLabel
          Left = 254
          Top = 23
          Width = 63
          Height = 13
          Caption = 'Importe Real:'
        end
        object Label2: TLabel
          Left = 134
          Top = 22
          Width = 55
          Height = 13
          Caption = '% Aplicado:'
        end
        object Shape1: TShape
          Left = 60
          Top = 43
          Width = 89
          Height = 3
          Brush.Color = clBlue
        end
        object Label5: TLabel
          Left = 65
          Top = 47
          Width = 72
          Height = 24
          Caption = '0000.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label101: TLabel
          Left = 266
          Top = 48
          Width = 47
          Height = 13
          Caption = 'IdServicio'
          Visible = False
        end
        object IMP: TEdit
          Left = 321
          Top = 18
          Width = 53
          Height = 21
          Color = clGradientActiveCaption
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 3
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          Text = '000.00'
        end
        object GST: TEdit
          Left = 76
          Top = 19
          Width = 53
          Height = 21
          Color = clGradientActiveCaption
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 3
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          Text = '000.00'
        end
        object PORCEN: TEdit
          Left = 194
          Top = 16
          Width = 53
          Height = 21
          Color = clGradientActiveCaption
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 3
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          Text = '000.00'
        end
        object idser: TEdit
          Left = 326
          Top = 46
          Width = 45
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 3
          Visible = False
        end
      end
      object GroupBox3: TGroupBox
        Left = 568
        Top = 1
        Width = 134
        Height = 51
        Caption = 'Opciones Modificadas'
        Enabled = False
        TabOrder = 3
        object C5: TCheckBox
          Left = 4
          Top = 14
          Width = 127
          Height = 17
          Caption = 'Datos de la Cabecera'
          TabOrder = 0
        end
        object C7: TCheckBox
          Left = 4
          Top = 30
          Width = 127
          Height = 17
          Caption = 'Modificaci'#243'n de Datos'
          TabOrder = 1
        end
      end
      object CR1: TCheckBox
        Left = 310
        Top = 72
        Width = 177
        Height = 17
        Caption = 'Auto Incrementar Comprobante?'
        Checked = True
        State = cbChecked
        TabOrder = 4
        OnKeyPress = CR1KeyPress
      end
      object CR2: TCheckBox
        Left = 24
        Top = 260
        Width = 127
        Height = 16
        Caption = 'Es Cliente Minoritario?'
        Checked = True
        State = cbChecked
        TabOrder = 5
        OnExit = CR2Exit
        OnKeyPress = CR2KeyPress
      end
    end
  end
  object DataSource1: TDataSource
    Left = 136
    Top = 3
  end
  object ImageList1: TImageList
    Left = 440
    Top = 8
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
      00000000000000000000000000000000000000000000BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BFBFBF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BFBFBF00BFBFBF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BFBFBF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000BFBFBF00BFBFBF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000BFBFBF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F000000000000000000000000007F7F7F000000000000FFFF007F7F7F000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF000000000000000000BFBFBF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F00000000000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000BFBFBF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F00FFFF
      FF00BFBFBF00FFFFFF00BFBFBF00FFFFFF007F7F7F0000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000BFBFBF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F007F7F7F00FFFFFF00BFBF
      BF00FFFFFF000000FF00FFFFFF00BFBFBF00FFFFFF007F7F7F007F7F7F000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F00BFBFBF00FFFF
      FF00BFBFBF000000FF00BFBFBF00FFFFFF00BFBFBF007F7F7F00000000000000
      000000000000000000000000000000000000000000000000FF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F00FFFFFF000000
      FF000000FF000000FF000000FF000000FF00FFFFFF007F7F7F00000000000000
      000000000000000000000000000000000000000000000000FF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F00BFBFBF00FFFF
      FF00BFBFBF000000FF00BFBFBF00FFFFFF00BFBFBF007F7F7F00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F007F7F7F00FFFFFF00BFBF
      BF00FFFFFF000000FF00FFFFFF00BFBFBF00FFFFFF007F7F7F007F7F7F000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000FFFFFF000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F00FFFF
      FF00BFBFBF00FFFFFF00BFBFBF00FFFFFF007F7F7F0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F000000000000000000000000007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFD800700000000FFF8000300000000
      FFF1000100000000FFE3801000000000FFC7000000000000E08F000000000000
      C01F800000000000803F800000000000001F000000000000001F000000000000
      001F000000000000001F000000000000001FC00100000000803FC00100000000
      C07FC00700000000E0FFE3FF0000000000000000000000000000000000000000
      000000000000}
  end
  object DataSource2: TDataSource
    Left = 180
    Top = 10
  end
end

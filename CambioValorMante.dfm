object CamValorMante: TCamValorMante
  Left = 217
  Top = 161
  AutoScroll = False
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Cambio del Valor del Mantenimiento'
  ClientHeight = 446
  ClientWidth = 943
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
  object Label2: TLabel
    Left = 48
    Top = 222
    Width = 37
    Height = 13
    Caption = 'Caract.:'
  end
  object Barra1: TStatusBar
    Left = 0
    Top = 427
    Width = 943
    Height = 19
    Panels = <
      item
        Width = 300
      end
      item
        Width = 50
      end>
  end
  object PC1: TPageControl
    Left = 0
    Top = 41
    Width = 943
    Height = 386
    ActivePage = TabSheet3
    Align = alClient
    TabOrder = 1
    object TabSheet3: TTabSheet
      Caption = 'B'#250'squeda de Valores de Mantenimiento'
      object grupo1: TGroupBox
        Left = 0
        Top = 0
        Width = 935
        Height = 358
        Align = alClient
        Color = 14801370
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        object image1: TImage
          Left = 116
          Top = 90
          Width = 105
          Height = 105
          Picture.Data = {
            0A544A504547496D6167656F090000FFD8FFE000104A46494600010101006000
            600000FFDB004300080606070605080707070909080A0C140D0C0B0B0C191213
            0F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F2739
            3D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232
            3232323232323232323232323232323232323232323232323232323232323232
            32323232323232323232323232FFC0001108003500BF03012200021101031101
            FFC4001F0000010501010101010100000000000000000102030405060708090A
            0BFFC400B5100002010303020403050504040000017D01020300041105122131
            410613516107227114328191A1082342B1C11552D1F02433627282090A161718
            191A25262728292A3435363738393A434445464748494A535455565758595A63
            6465666768696A737475767778797A838485868788898A92939495969798999A
            A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
            D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
            01010101010101010000000000000102030405060708090A0BFFC400B5110002
            0102040403040705040400010277000102031104052131061241510761711322
            328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
            292A35363738393A434445464748494A535455565758595A636465666768696A
            737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
            A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
            E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F7FA
            28A2800A29A4E0F5C52839A005A28A2800A2909C7340391400B4514500145145
            0014521A01EBED400B45145001451450014514500145145001451450021FCAA9
            6A7A8C3A5584D7D72D279100DD21442E40F5C0E7BFBD375937834BBA36127977
            4226689BCBF33E6032005E339FAD7CD7AA6A1E3EBCF11CBAB9D3B51B4BB8E3DD
            2C691C8A85554EE2558918C1271D393EF4980DF881E32D6AFF00C522E61BF921
            896302D9ED27223953270EB83DFA9079FE55E89E19F8AD1691F0FEC2EBC446EA
            6BA691A188800C9708A797E4E703A127A9AF029E4F3AE24976226F24EC8F803B
            F1F974F7ABDABEAD36B4D6BE6C31A3C16C96D8895B0C178538EC71D703AE7D69
            0CFB1F4DBE8753D36DEFADDC3C1711ACB1B0EEA464557D6F568344D325BEB8C9
            541858D7EF48E78551EE4E00AF21F863AAF8B74DBD86DB5C3F64F0EC16FB435C
            2C70A2B3729CE01249CE7BD7A078C25417BE1A92E1CFD8C6A88CEC391BB63796
            4FB6E23F4AA11A165A6DF5F402E35AB99BCD939FB2DBCAC91C3FECE570588EE4
            9C7E5576DF4D4B3BB69A19EEF6ECDBE53CECE9D7390189C1FA5692F4A6BF7C8C
            8C66801C3A52D711AC6A97CDA6EA7A9697797D3ADA89190C5E4AC28501CA9DDF
            330C8209FCAA73797BAB6BBA6DBAEA53DA5B5CE946E5D20DB92DBD390C54E3AE
            2803B0A2BCF754935A84F88E1835EBB8D74BD3E29A1CAC6CCCDB1C9DC4AF39DB
            EDF5AB926AFA8695A85EBBDDCB7B1268C2FBC96500F9809E981C291EE4F1401D
            A9EA2B9EF0DCB2CBA8F88B7CB232A6A5B1159CB051E5467033D073D2B36C62D7
            AE0586AEDE20B436D21479140CC5221C7CA3A60F3C77CF155BFB624D25F5FF00
            2E48D66975A8ADE3697858BCC8A250CDF4E7F4CD0077B581E34BABDB1F07EA97
            3A7CC62BB8E02627E383F8D52D4E4D4748BAD2E683509E76B8BC8E09E09F6E24
            56382571F748193C70475AB7E32709E0DD53700DBA02833EA7007EA68025F09E
            AEFAD786AD2EE7056E82F977084F2B2AF0C0FE233F8D66F8AB5CB9B2F11F8774
            FB49665FB4DD0170100D8508380C719E48E31E949091E1DF194B0B32C7A7EB40
            CA87A04BA51F30FF008128CFD57DEB275E21ED6D35F91898E7D66D4A1CFF00CB
            0562A83E84B16FF815007A1C6495E7AD3AB9B17D3EA9E20D474D4B96B682C563
            DE223892567190738E178C0C724E6B1EEF56D5ED34EF10C23512FF0060B98120
            BB28A580729B91B03048DDD71DE803BB355ECEFADAF96636D32CA2195A190AFF
            000BAF51F85604CB7BA7F89B4D80EAF7525BDEA4C8E932C670EAA0A95C28C7F1
            7AD6468064D2B4ED72FCEA37773F65BEBD736DFBB02565CF5C2E49C0FEB8E390
            0EFE8AE2B4F5D7EF62B2D68EBF6BF677DB24888A4C4C84F2A01C63B807AE7BD7
            668723D7DE803CEFE295D78B7C8B6D37C351C845EFEEE578226F310720FEF3EE
            A0E47BF5AF01BDF0EF89ADAE235B8B2BD134FB9106D6DCC33B4F07B1278FAD7D
            87819CE39A63001C1006718A00F8E6FBC2DAD697A341AADEE9F3DBD9CEDB51E4
            5C6780791DB39E2AAE95A4EA3AC5E0B6D32D259E708CE12219240F4FFEB57D17
            F13A2D7BC41E1F9F44D1F41B994C922EF9E468D540539057E6CF5E3B719A7FC2
            EB1D5343D0E0D2B56F0F3DA4F117DB760C6C1C162704839EF8FC29586784E93E
            0DF15F8A1AF1ED2D2E27785C2DC79D26D3BF048CEE20E78F7EA2BE83F0AF86F5
            06F0145A378B245B99090542B9DF1AF0506FE0EF53D08E981CD76C8899660801
            27278EF4FC01D05160B9CED95BF892C2216E6E6CAFE24F9525B8DD14B8FF006B
            00827DC633F5AB2D67AADCCB11B8D4A3811183325AC382FDF6966CF1C7602B67
            005260118C0A62321BC3BA448B709269F0B24C4B4B11194662796DBD327B9C53
            6696DF4FBC430E8F70F245088525821042A673B41C8E381C7B0AD9C0F414B8A0
            0E71EEAD643745FC3D7EDF6940971BADD4F98A01001F9B91C9E3DE9E97F025C7
            9EBA0DF09FCA10EF16EB9118390BF7BA7B57414500729047A55B481E0F0ADDA1
            56DEA16D930ADEA06EC03F4A95E6B0923B985FC3778F1DD36FB856B642246E39
            3F372781F9574D450072F66F6360CAF0681A907404233C418A83D7196E3F0A4D
            6EE9F57D2A6B1FECBD4D04C5724C0BD981FEF7B57534500721E224B6F126966C
            2F349D5957CC122491C6159581EA0EEC8E323F1350789124D67C3C34BB5B0D4A
            D36C90B249E429D811D48C7CDE8B5DB51401CB5D7D82F2E16E67F0F6A26E146D
            12AC211C8F4DC1B38F6A97ED1686C8D9FF00C23B7BF6627262FB2AED2739C91B
            B9E79AE928A00C093518A4B88A77D0B506962CF96ED6EA4AE460E0EEE322ABDB
            3D85A5E4B770786EF52E6672EF22DBAEE2C7A9CEEEF5D3D1401CA4116936D26F
            8BC2D75190FE62816C9856F5037601F7AE82CAECDDC458DB4F6E41C6D990293E
            F804F156E8A0028C668A2801303D052E05145001451450014514500145145001
            45145001451450014514500145145001451450014514500145145007FFD9}
        end
        object RE5: TRichEdit
          Left = 326
          Top = 80
          Width = 185
          Height = 89
          Lines.Strings = (
            'RE5')
          TabOrder = 3
        end
        object DBGrid1: TJvDBGrid
          Left = 2
          Top = 42
          Width = 931
          Height = 202
          Align = alClient
          DataSource = DataSource1
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clNavy
          TitleFont.Height = -11
          TitleFont.Name = 'Arial Narrow'
          TitleFont.Style = [fsBold]
          OnCellClick = DBGrid1CellClick
          OnDrawColumnCell = DBGrid1DrawColumnCell
          AlternateRowColor = clGradientInactiveCaption
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 18
          TitleRowHeight = 19
        end
        object grupovalor: TJvgGroupBox
          Left = 2
          Top = 244
          Width = 931
          Height = 112
          Align = alBottom
          Caption = 'Nuevo Valores del Mantenimiento'
          TabOrder = 1
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
          object Label27: TLabel
            Left = 194
            Top = 59
            Width = 74
            Height = 13
            Caption = 'Importe Normal:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label32: TLabel
            Left = 219
            Top = 89
            Width = 54
            Height = 13
            Caption = 'Porcentaje:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label31: TLabel
            Left = 581
            Top = 53
            Width = 66
            Height = 13
            Caption = 'Gasto Admin.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label30: TLabel
            Left = 370
            Top = 59
            Width = 80
            Height = 13
            Caption = 'Importe Jubilado:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label35: TLabel
            Left = 14
            Top = 59
            Width = 61
            Height = 13
            Caption = 'Fecha Inicio:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label1: TLabel
            Left = 431
            Top = 84
            Width = 20
            Height = 13
            Caption = 'IVA:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 561
            Top = 81
            Width = 85
            Height = 13
            Caption = 'Descuento Anual:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 4
            Top = 20
            Width = 891
            Height = 20
            Caption = 
              'ATENCION: EL NUEVO VALOR DEBE TENER COMO FECHA DE INICIO EL PRIM' +
              'ER DIA DEL MES PROXIMO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label6: TLabel
            Left = 6
            Top = 21
            Width = 891
            Height = 20
            Caption = 
              'ATENCION: EL NUEVO VALOR DEBE TENER COMO FECHA DE INICIO EL PRIM' +
              'ER DIA DEL MES PROXIMO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object imp: TEdit
            Left = 282
            Top = 49
            Width = 77
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            Text = '00.00'
            OnExit = impExit
            OnKeyPress = impKeyPress
          end
          object adm: TEdit
            Left = 653
            Top = 46
            Width = 77
            Height = 24
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
            Text = '00.00'
            OnKeyPress = admKeyPress
          end
          object jubi: TEdit
            Left = 457
            Top = 49
            Width = 77
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            Text = '00.00'
            OnExit = jubiExit
            OnKeyPress = jubiKeyPress
          end
          object iva: TEdit
            Left = 457
            Top = 76
            Width = 77
            Height = 24
            Color = cl3DLight
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 5
            Text = '1.85'
            OnKeyPress = ivaKeyPress
          end
          object FECHA: TJvDatePickerEdit
            Left = 80
            Top = 49
            Width = 101
            Height = 26
            AllowNoDate = True
            Checked = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnExit = FECHAExit
            OnKeyPress = FECHAKeyPress
          end
          object desc: TEdit
            Left = 653
            Top = 74
            Width = 77
            Height = 24
            Color = cl3DLight
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 6
            Text = '15.00'
          end
          object porcen: TEdit
            Left = 281
            Top = 79
            Width = 77
            Height = 24
            Color = cl3DLight
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
            Text = '22'
            OnKeyPress = porcenKeyPress
          end
        end
        object GroupBox3: TGroupBox
          Left = 2
          Top = 15
          Width = 931
          Height = 27
          Align = alTop
          Enabled = False
          TabOrder = 2
          object Shape2: TShape
            Left = 4
            Top = 9
            Width = 15
            Height = 13
            Brush.Color = clLime
            Shape = stCircle
          end
          object Label55: TLabel
            Left = 24
            Top = 9
            Width = 84
            Height = 13
            Caption = 'VALOR ACTUAL '
          end
          object Label4: TLabel
            Left = 508
            Top = 13
            Width = 39
            Height = 13
            Caption = 'Id Valor:'
            Visible = False
          end
          object C6: TCheckBox
            Left = 622
            Top = 9
            Width = 129
            Height = 17
            Caption = 'Modificaci'#243'n de Datos'
            TabOrder = 0
            Visible = False
          end
          object id: TEdit
            Left = 552
            Top = 8
            Width = 49
            Height = 21
            Enabled = False
            ReadOnly = True
            TabOrder = 1
            Visible = False
          end
        end
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 943
    Height = 41
    ButtonHeight = 35
    Caption = 'ToolBar1'
    Color = clGradientInactiveCaption
    EdgeBorders = [ebLeft, ebTop, ebBottom]
    EdgeInner = esLowered
    ParentColor = False
    TabOrder = 2
    DesignSize = (
      941
      37)
    object ToolButton4: TToolButton
      Left = 0
      Top = 2
      Width = 587
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object JvBitBtn1: TJvBitBtn
      Left = 587
      Top = 2
      Width = 116
      Height = 35
      Anchors = [akTop, akRight]
      Caption = 'Imprimir '#13#10'Historico'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = JvBitBtn1Click
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
        FFFFFFFF6D6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF6D6D6D6D6D6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        6D6D6D490000496D6D6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6D6D
        6D490000DBDB0000496D6D6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6D6D6D49
        0000DBDBDBDB6D6D0000496D6D6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        DBDBDBDBDBDB6D6D6D6D0000496D6D6DFFFFFFFFFFFFFFFFFFFFFFFF0000DBDB
        DBDBDBDBDBDB6D6D6D6D6D6D0000496D6D6DFFFFFFFFFFFFFFFFFFFF00FFDBDB
        DBDBDBDBDBDB6D6D6D6D6D6D6D6D0000496D6D6DFFFFFFFFFFFFFFFF00FFDBDB
        DBDBDBDBDBDB6D6D6D6D6D6D6D6D6D490000496D6D6DFFFFFFFFFFFF00FFDBDB
        DBDBB6B6DBDB6D6D6D6D6D6D6D6D6D496D6D0000496D6D6DFFFFFFFF00FF4949
        B6B6B6B6DBDB6D6D6D6D6D6D6D6D6D496D6D6D6D0000FFFFFFFFFFFF0049B6B6
        4949B6B6DBDB6D6D6D6D6D6D6D6D6D496D6D6D6D6D6D0000FFFF0000B6B66D6D
        B6B64949DB926D6D6D6D6D6D6D6D6D496D6D6D6D6D6D4900FFFFB6B66D6DDBDB
        6D6DB6B6DBDB49496D6D6D6D6D6D6D496D246D6D6D6D4900FFFF6D6DDBDBDBDB
        DBDB6D6DDBDB929249496D6D6D6D6D496D246D6D6D6D4900FFFFDBDBDBDBDBDB
        DBDBDBDBDBDB9292929249496D6D6D496D246D6D6D6D4900FFFF0000DBDBDBDB
        DB6D49DBDBDB92929292929249496D496D6D6D6D6D6D490000FFFFFF00FFDB6D
        49DBDBDBFF6D929292929292929249496D6D6D6D6D6D49006D00FFFF00FFDBDB
        DBDBFFFFDBDB4949929292929292929249496D6D6D6D49006D49FFFF00FFDBDB
        FFFFDBDBFC1818DB4949929292929292929249496D6D4900DB49FFFF00FFFFFF
        DBDBDBDBFC0C1018DBDB4949929292929292929249492400DB6DFFFF0000DBDB
        DBDBDBDBDBDBDB0C6D6DFFB6494992929262929292924900DB6DFFFFFFFF0000
        DBDBDBDBDBDB6D6DFFFFDBDBB6B649499292646292926D00B66DFFFFFFFFFFFF
        0000DBDB6D6DFFFFDBDBDBDBDBDBB6B64949929264926D009292FFFFFFFFFFFF
        FFFF006DFFFFDBDBDBDB6D6DDBDBDBDBB6B6494992926D00FFFFFFFFFFFFFFFF
        FFFFFF00DBDBDBDB6D6DB6B6B6B6DBDBDBDB929249496D00FFFFFFFFFFFFFFFF
        FFFFFFFF0000DBDBDBDB6D6DB6B6B6DBDBDBB6B6DBDB0000FFFFFFFFFFFFFFFF
        FFFFFFFFFFFF0000DBDBDBDB6DDBDBDBB6B6DBDB0000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000DBDBDBDBB6B6DBDB0000FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF00000000DBDB0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Arial'
      HotTrackFont.Style = []
    end
    object ToolButton1: TToolButton
      Left = 703
      Top = 2
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object ToolButton2: TToolButton
      Left = 711
      Top = 2
      Width = 1
      Caption = 'ToolButton2'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object GUARDA: TJvBitBtn
      Left = 712
      Top = 2
      Width = 93
      Height = 35
      Anchors = [akTop, akRight]
      Caption = 'GUARDAR'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
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
    object ToolButton3: TToolButton
      Left = 805
      Top = 2
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object JvBitBtn3: TJvBitBtn
      Left = 813
      Top = 2
      Width = 85
      Height = 35
      Anchors = [akTop, akRight]
      Caption = 'SALIR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
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
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Arial'
      HotTrackFont.Style = []
    end
  end
  object DataSource1: TDataSource
    Left = 378
    Top = 2
  end
  object RvS1: TRvSystem
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
    OnPrint = RvS1Print
    OnBeforePrint = RvS1BeforePrint
    OnAfterPrint = RvS1AfterPrint
    Left = 656
    Top = 67
  end
  object PopupMenu1: TPopupMenu
    Left = 514
    Top = 157
    object ExportarDatos1: TMenuItem
      Caption = 'Exportar Datos'
      OnClick = ExportarDatos1Click
    end
  end
end

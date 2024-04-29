object AuditaMovim: TAuditaMovim
  Left = 406
  Top = 27
  AutoScroll = False
  Caption = 'Control de Movimientos'
  ClientHeight = 620
  ClientWidth = 794
  Color = cl3DLight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Barra1: TStatusBar
    Left = 0
    Top = 601
    Width = 794
    Height = 19
    Panels = <
      item
        Width = 500
      end
      item
        Width = 150
      end
      item
        Width = 50
      end>
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 794
    Height = 225
    Align = alTop
    Caption = 'B'#250'squeda y Selecci'#243'n'
    TabOrder = 0
    object GroupBox2: TGroupBox
      Left = 4
      Top = 15
      Width = 217
      Height = 206
      Caption = 'Opciones'
      TabOrder = 0
      object LB1: TLabel
        Left = 65
        Top = 85
        Width = 75
        Height = 13
        Caption = 'Ingrese N'#176' DNI:'
      end
      object R1: TRadioButton
        Left = 3
        Top = 14
        Width = 74
        Height = 17
        Hint = 'Muestra Aquellos Usuarios Coincidentes con lo Ingresado.'
        Caption = 'Por N'#176' DNI'
        Checked = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TabStop = True
        OnClick = R1Click
      end
      object R3: TRadioButton
        Left = 3
        Top = 31
        Width = 72
        Height = 17
        Hint = 'Muestra Aquellos Usuarios Coincidentes con lo Ingresado.'
        Caption = 'Por Fecha '
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = R1Click
      end
      object R5: TRadioButton
        Left = 96
        Top = 14
        Width = 103
        Height = 17
        Hint = 'Muestra Aquellos Usuarios Coincidentes con lo Ingresado.'
        Caption = 'Por N'#186' Acci'#243'n'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = R1Click
      end
      object R4: TRadioButton
        Left = 96
        Top = 31
        Width = 77
        Height = 17
        Hint = 'Muestra Aquellos Usuarios Coincidentes con lo Ingresado.'
        Caption = 'Por Nombre'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = R1Click
      end
      object R2: TRadioButton
        Left = 3
        Top = 48
        Width = 56
        Height = 17
        Hint = 'Muestra Todos los Usuarios, pero de a 1000.'
        Caption = 'Todos'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = R2Click
      end
      object NOMB: TEdit
        Left = 8
        Top = 103
        Width = 189
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 5
        Visible = False
        OnKeyPress = NOMBKeyPress
      end
      object DNI: TMaskEdit
        Left = 69
        Top = 103
        Width = 67
        Height = 21
        EditMask = '!99999999;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 8
        ParentFont = False
        TabOrder = 6
        Text = '00000000'
        OnKeyPress = DNIKeyPress
      end
      object BUSCAR: TLMDButton
        Left = 20
        Top = 142
        Width = 169
        Height = 39
        Hint = 'Busca y Compara con Cr'#233'ditos Existentes'
        Caption = ' Buscar Coincidentes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnClick = BUSCARClick
        Glyph.Data = {
          36080000424D3608000000000000360400002800000020000000200000000100
          08000000000000040000C40E0000C40E00000001000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
          A6000020400000206000002080000020A0000020C0000020E000004000000040
          20000040400000406000004080000040A0000040C0000040E000006000000060
          20000060400000606000006080000060A0000060C0000060E000008000000080
          20000080400000806000008080000080A0000080C0000080E00000A0000000A0
          200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
          200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
          200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
          20004000400040006000400080004000A0004000C0004000E000402000004020
          20004020400040206000402080004020A0004020C0004020E000404000004040
          20004040400040406000404080004040A0004040C0004040E000406000004060
          20004060400040606000406080004060A0004060C0004060E000408000004080
          20004080400040806000408080004080A0004080C0004080E00040A0000040A0
          200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
          200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
          200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
          20008000400080006000800080008000A0008000C0008000E000802000008020
          20008020400080206000802080008020A0008020C0008020E000804000008040
          20008040400080406000804080008040A0008040C0008040E000806000008060
          20008060400080606000806080008060A0008060C0008060E000808000008080
          20008080400080806000808080008080A0008080C0008080E00080A0000080A0
          200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
          200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
          200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
          2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
          2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
          2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
          2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
          2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
          2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
          2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
          0000372F00A4A4A4A40000000000000000A4A4A4000000000000000000000000
          3737372F2F00A4A45B0007FFEDEDEDED9B005BA4A4A400000000000000003737
          3737372F2F2F000007FFFFFFEDEDEDED9B9B5B00A4A4A4000000000037373737
          3737372F2F2F00EDFF07000000000000009B9B9B00A4A4A40000003737373737
          3737372F2F00EDED005BFFFFFFFFFFFFFF5B009B9B00A4A4A400003737373737
          3737372F2F00ED00FF075B00000000005B07FF009B00A4A4A400003737373737
          373700002F005BFF005BEDFFEDEDEDEDED5B00FF0000A4A4A400003737373737
          00009E0D0000FF0000EDEDEDFFEDEDEDEDED0700FF00A4A40000003737370000
          9E9E9E0D0100FF009B005BEDEDFFEDED5B000000FF00A4000000003700009E9E
          9E9E9E0D0100FF009B9B9B00000000009B9B9B00FF000000000000009E9E9E9E
          9E9E00000D0D00FF00009B9B9B9B9B9B9B0000FF00A4A4000000009E9E9E9E9E
          00000992000D0D00FFFF00000000000000FFFF0000A4A4000000009E9E9E0000
          0909099292000D0D0000FFFFFFFFFFFFFF0000ED00A4A4A40000009E00000909
          090909929292000D0D0000000000000000EDFFEDED00A4A4A400000009090909
          09090992929292000D000000000000000000EDFF5B0000A4A4A4000909090909
          0909099292929292000000000000000000005B0000000000A4A4000909090909
          090909929292929292000000000000000000005B000000000000000909090909
          09090992929292929200000000000000000000005B0000000000000909090909
          0909099292929292920000000000000000000000005B00005B00000909090909
          0909099292929292920000000000000000000000000000000000000909090909
          09FFFF92929292929200000000000000000000000000000000000009090909FF
          FF09090992929292920000000000000000000000000000000000000909FFFF09
          090909090992929292000000000000000000000000000000000000FFFF090909
          0909090909099292920000000000000000000000000000000000000909090909
          0909090909090992920000000000000000000000000000000000000009090909
          0909090909090909920000000000000000000000000000000000000000090909
          0909090909090900000000000000000000000000000000000000000000000909
          0909090909000000000000000000000000000000000000000000000000000009
          0909090000000000000000000000000000000000000000000000000000000000
          0900000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      object FECHA: TMaskEdit
        Left = 69
        Top = 103
        Width = 67
        Height = 21
        EditMask = '!99/99/0000;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 8
        Text = '  /  /    '
        Visible = False
        OnExit = FECHAExit
        OnKeyPress = FECHAKeyPress
      end
    end
    object DBGrid1: TDBGrid
      Left = 222
      Top = 15
      Width = 570
      Height = 208
      Align = alRight
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnCellClick = DBGrid1CellClick
      OnTitleClick = DBGrid1TitleClick
    end
  end
  object PC1: TPageControl
    Left = 0
    Top = 225
    Width = 794
    Height = 376
    ActivePage = TabSheet2
    Align = alClient
    Enabled = False
    TabOrder = 1
    OnChange = PC1Change
    object TabSheet2: TTabSheet
      Caption = 'Acciones por Pr'#233'stamo Seleccionado'
      ImageIndex = 1
      object DBGrid2: TDBGrid
        Left = 294
        Top = 0
        Width = 492
        Height = 348
        Align = alRight
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnCellClick = DBGrid2CellClick
        OnDrawColumnCell = DBGrid2DrawColumnCell
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 137
        Width = 291
        Height = 203
        Caption = 'Datos'
        TabOrder = 1
        object Label1: TLabel
          Left = 11
          Top = 15
          Width = 27
          Height = 13
          Caption = 'N'#176' Id:'
        end
        object Label2: TLabel
          Left = 4
          Top = 61
          Width = 34
          Height = 13
          Caption = 'Origen:'
        end
        object Label3: TLabel
          Left = 2
          Top = 107
          Width = 36
          Height = 13
          Caption = 'Puesto:'
        end
        object Label5: TLabel
          Left = 8
          Top = 154
          Width = 30
          Height = 13
          Caption = 'Saldo:'
        end
        object Label6: TLabel
          Left = 3
          Top = 130
          Width = 35
          Height = 13
          Caption = 'Deuda:'
        end
        object Label8: TLabel
          Left = 189
          Top = 61
          Width = 31
          Height = 13
          Caption = 'Cuota:'
        end
        object Label9: TLabel
          Left = 95
          Top = 130
          Width = 33
          Height = 13
          Caption = 'Pagos:'
        end
        object Label10: TLabel
          Left = 184
          Top = 130
          Width = 49
          Height = 13
          Caption = 'Punitorios:'
        end
        object Label4: TLabel
          Left = 2
          Top = 84
          Width = 36
          Height = 13
          Caption = 'Detalle:'
        end
        object Label13: TLabel
          Left = 5
          Top = 38
          Width = 33
          Height = 13
          Caption = 'Fecha:'
        end
        object ID: TEdit
          Left = 40
          Top = 12
          Width = 73
          Height = 21
          CharCase = ecUpperCase
          Color = clSkyBlue
          ReadOnly = True
          TabOrder = 0
          Text = 'EDIT1'
        end
        object PUESTO: TEdit
          Left = 40
          Top = 104
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
          Text = 'EDIT1'
          OnKeyPress = PUESTOKeyPress
        end
        object DEU: TEdit
          Left = 40
          Top = 127
          Width = 51
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 2
          Text = '0000.00'
          OnKeyPress = DEUKeyPress
        end
        object EDITAR: TLMDButton
          Left = 10
          Top = 175
          Width = 130
          Height = 23
          Hint = 'Modificaciones del Seleccionado'
          Caption = 'Modificar Movimientos'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = EDITARClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
            55555575555555775F55509999999901055557F55555557F75F5001111111101
            105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
            01105777F555557F7FF75500FFFFFF0F00105577F555FF7F77575550FF70000F
            0F0055575FF777757F775555000FFFFF0F005555777555FF7F77555550FF7000
            0F055555575FF777757F555555000FFFFF05555555777555FF7F55555550FF70
            0005555555575FF7777555555555000555555555555577755555555555555555
            5555555555555555555555555555555555555555555555555555}
          NumGlyphs = 2
        end
        object BORRAR: TLMDButton
          Left = 152
          Top = 175
          Width = 130
          Height = 23
          Hint = 'Borra Seleccionado y Activa anterior'
          Caption = 'Borrar Movimientos'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = BORRARClick
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
        object ORIGEN: TComboBox
          Left = 40
          Top = 58
          Width = 145
          Height = 21
          CharCase = ecUpperCase
          ItemHeight = 13
          TabOrder = 5
          Text = 'COMBOBOX1'
          OnExit = ORIGENExit
          OnKeyPress = ORIGENKeyPress
        end
        object CTA: TComboBox
          Left = 221
          Top = 58
          Width = 57
          Height = 21
          CharCase = ecUpperCase
          ItemHeight = 13
          TabOrder = 6
          Text = '1'
          OnExit = CTAExit
          OnKeyPress = CTAKeyPress
          Items.Strings = (
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9'
            '10'
            '11'
            '12'
            '13'
            '14'
            '15'
            '16'
            '17'
            '18'
            '19'
            '20'
            '21'
            '22'
            '23'
            '24'
            '25'
            '26'
            '27'
            '28'
            '29'
            '30'
            '31'
            '32'
            '33'
            '34'
            '35'
            '36'
            '37'
            '38'
            '39'
            '40'
            '41'
            '42'
            '43'
            '44'
            '45'
            '46'
            '47'
            '48')
        end
        object PAG: TEdit
          Left = 129
          Top = 128
          Width = 51
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 7
          Text = '0000.00'
          OnKeyPress = PAGKeyPress
        end
        object PUN: TEdit
          Left = 236
          Top = 128
          Width = 51
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 8
          Text = '0000.00'
          OnKeyPress = PUNKeyPress
        end
        object SAL: TEdit
          Left = 40
          Top = 151
          Width = 51
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 9
          Text = '0000.00'
          OnKeyPress = SALKeyPress
        end
        object C2: TCheckBox
          Left = 130
          Top = 153
          Width = 97
          Height = 17
          Caption = 'Activo?'
          TabOrder = 10
        end
        object DETA: TEdit
          Left = 40
          Top = 81
          Width = 143
          Height = 21
          CharCase = ecUpperCase
          Color = clSkyBlue
          ReadOnly = True
          TabOrder = 11
          Text = 'EDIT1'
        end
        object FECH: TMaskEdit
          Left = 40
          Top = 35
          Width = 67
          Height = 21
          EditMask = '!99/99/0000;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 12
          Text = '  /  /    '
          OnExit = FECHExit
          OnKeyPress = FECHKeyPress
        end
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = -2
        Width = 292
        Height = 47
        Caption = 'Recreando Movimientos'
        TabOrder = 2
        object Label11: TLabel
          Left = 21
          Top = 21
          Width = 56
          Height = 13
          Caption = 'Periodo Fin:'
        end
        object RECREA: TLMDButton
          Left = 183
          Top = 10
          Width = 100
          Height = 31
          Hint = 'Recrea la totalidad de Movimientos de Pr'#233'stamo'
          Caption = '  Recrear '#13#10'Movimientos'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = RECREAClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555550FF0559
            1950555FF75F7557F7F757000FF055591903557775F75557F77570FFFF055559
            1933575FF57F5557F7FF0F00FF05555919337F775F7F5557F7F700550F055559
            193577557F7F55F7577F07550F0555999995755575755F7FFF7F5570F0755011
            11155557F755F777777555000755033305555577755F75F77F55555555503335
            0555555FF5F75F757F5555005503335505555577FF75F7557F55505050333555
            05555757F75F75557F5505000333555505557F777FF755557F55000000355557
            07557777777F55557F5555000005555707555577777FF5557F55553000075557
            0755557F7777FFF5755555335000005555555577577777555555}
          NumGlyphs = 2
        end
        object PERIO: TComboBox
          Left = 79
          Top = 17
          Width = 71
          Height = 21
          CharCase = ecUpperCase
          ItemHeight = 13
          TabOrder = 1
          OnExit = PERIOExit
          OnKeyPress = PERIOKeyPress
        end
      end
      object GroupBox5: TGroupBox
        Left = 0
        Top = 90
        Width = 292
        Height = 47
        Caption = 'Movimiento Mensual'
        TabOrder = 3
        object Label12: TLabel
          Left = 4
          Top = 18
          Width = 72
          Height = 13
          Caption = 'Periodo Actual:'
        end
        object PERIO1: TComboBox
          Left = 80
          Top = 16
          Width = 71
          Height = 21
          CharCase = ecUpperCase
          ItemHeight = 13
          TabOrder = 0
          OnExit = PERIO1Exit
          OnKeyPress = PERIO1KeyPress
        end
        object MOVIM: TLMDButton
          Left = 180
          Top = 10
          Width = 100
          Height = 31
          Hint = 'Crea en Movimiento Mensual del Pr'#233'stamo'
          Caption = 'Movimiento'#13#10'  Mensual'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = MOVIMClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
            300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
            330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
            333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
            339977FF777777773377000BFB03333333337773FF733333333F333000333333
            3300333777333333337733333333333333003333333333333377333333333333
            333333333333333333FF33333333333330003333333333333777333333333333
            3000333333333333377733333333333333333333333333333333}
          NumGlyphs = 2
        end
      end
      object GroupBox7: TGroupBox
        Left = 0
        Top = 44
        Width = 292
        Height = 47
        Caption = 'Punitorio Mensual'
        TabOrder = 4
        object Label15: TLabel
          Left = 4
          Top = 21
          Width = 72
          Height = 13
          Caption = 'Periodo Actual:'
        end
        object PERIO3: TComboBox
          Left = 80
          Top = 17
          Width = 71
          Height = 21
          CharCase = ecUpperCase
          ItemHeight = 13
          TabOrder = 0
          OnExit = PERIO3Exit
          OnKeyPress = PERIO3KeyPress
        end
        object PUNIT: TLMDButton
          Left = 180
          Top = 10
          Width = 100
          Height = 31
          Hint = 'Calcula los Punitorios del Pr'#233'stamo'
          Caption = 'Punitorio'#13#10'Mensual'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = PUNITClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
            0000333377777777777733330FFFFFFFFFF033337F3FFF3F3FF733330F000F0F
            00F033337F777373773733330FFFFFFFFFF033337F3FF3FF3FF733330F00F00F
            00F033337F773773773733330FFFFFFFFFF033337FF3333FF3F7333300FFFF00
            F0F03333773FF377F7373330FB00F0F0FFF0333733773737F3F7330FB0BF0FB0
            F0F0337337337337373730FBFBF0FB0FFFF037F333373373333730BFBF0FB0FF
            FFF037F3337337333FF700FBFBFB0FFF000077F333337FF37777E0BFBFB000FF
            0FF077FF3337773F7F37EE0BFB0BFB0F0F03777FF3733F737F73EEE0BFBF00FF
            00337777FFFF77FF7733EEEE0000000003337777777777777333}
          NumGlyphs = 2
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Acciones por todos los Pr'#233'stamos'
      ImageIndex = 1
      object Progreso: TJvGradientProgressBar
        Left = 0
        Top = 323
        Width = 183
        Height = 17
        ParentColor = True
      end
      object GroupBox6: TGroupBox
        Left = 0
        Top = -1
        Width = 183
        Height = 97
        Caption = '1) Actulizar Pagos'
        TabOrder = 0
        object Label14: TLabel
          Left = 58
          Top = 16
          Width = 72
          Height = 13
          Caption = 'Periodo Actual:'
        end
        object PERIO2: TComboBox
          Left = 56
          Top = 30
          Width = 71
          Height = 21
          CharCase = ecUpperCase
          ItemHeight = 0
          TabOrder = 0
          OnExit = PERIO2Exit
        end
        object MOVPAG: TLMDButton
          Left = 38
          Top = 56
          Width = 100
          Height = 35
          Hint = 'Agrega los Pagos del mes'
          Caption = '  Actualizar'#13#10'    Pagos'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = MOVPAGClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
            300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
            330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
            333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
            339977FF777777773377000BFB03333333337773FF733333333F333000333333
            3300333777333333337733333333333333003333333333333377333333333333
            333333333333333333FF33333333333330003333333333333777333333333333
            3000333333333333377733333333333333333333333333333333}
          NumGlyphs = 2
        end
      end
      object grilla2: TJvStringGrid
        Left = 190
        Top = 0
        Width = 596
        Height = 348
        Align = alRight
        Anchors = [akLeft, akTop, akRight, akBottom]
        ColCount = 7
        DefaultRowHeight = 17
        FixedCols = 0
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
        ParentFont = False
        TabOrder = 1
        Alignment = taLeftJustify
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'MS Sans Serif'
        FixedFont.Style = []
        ColWidths = (
          49
          64
          217
          88
          169
          203
          201)
      end
      object GroupBox8: TGroupBox
        Left = 0
        Top = 99
        Width = 183
        Height = 97
        Caption = '2) Punitorios Mensual'
        TabOrder = 2
        object Label16: TLabel
          Left = 58
          Top = 16
          Width = 72
          Height = 13
          Caption = 'Periodo Actual:'
        end
        object PERIO4: TComboBox
          Left = 56
          Top = 30
          Width = 71
          Height = 21
          CharCase = ecUpperCase
          ItemHeight = 0
          TabOrder = 0
          OnExit = PERIO4Exit
        end
        object MOVPUN: TLMDButton
          Left = 38
          Top = 56
          Width = 100
          Height = 35
          Hint = 'Calcula y Agrega los Punitorios'
          Caption = 'Punitorios'#13#10' Mensual'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = MOVPUNClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
            0000333377777777777733330FFFFFFFFFF033337F3FFF3F3FF733330F000F0F
            00F033337F777373773733330FFFFFFFFFF033337F3FF3FF3FF733330F00F00F
            00F033337F773773773733330FFFFFFFFFF033337FF3333FF3F7333300FFFF00
            F0F03333773FF377F7373330FB00F0F0FFF0333733773737F3F7330FB0BF0FB0
            F0F0337337337337373730FBFBF0FB0FFFF037F333373373333730BFBF0FB0FF
            FFF037F3337337333FF700FBFBFB0FFF000077F333337FF37777E0BFBFB000FF
            0FF077FF3337773F7F37EE0BFB0BFB0F0F03777FF3733F737F73EEE0BFBF00FF
            00337777FFFF77FF7733EEEE0000000003337777777777777333}
          NumGlyphs = 2
        end
      end
      object GroupBox9: TGroupBox
        Left = 0
        Top = 201
        Width = 183
        Height = 97
        Caption = '3) Movimiento Mensual'
        TabOrder = 3
        object Label17: TLabel
          Left = 58
          Top = 16
          Width = 72
          Height = 13
          Caption = 'Periodo Actual:'
        end
        object PERIO5: TComboBox
          Left = 56
          Top = 30
          Width = 71
          Height = 21
          CharCase = ecUpperCase
          ItemHeight = 0
          TabOrder = 0
          OnExit = PERIO5Exit
          OnKeyPress = PERIO1KeyPress
        end
        object MOVMES: TLMDButton
          Left = 38
          Top = 56
          Width = 100
          Height = 35
          Hint = 'Agrega los Movimientos del mes'
          Caption = 'Movimiento'#13#10'  Mensual'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = MOVMESClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
            300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
            330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
            333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
            339977FF777777773377000BFB03333333337773FF733333333F333000333333
            3300333777333333337733333333333333003333333333333377333333333333
            333333333333333333FF33333333333330003333333333333777333333333333
            3000333333333333377733333333333333333333333333333333}
          NumGlyphs = 2
        end
      end
    end
  end
  object DataSource1: TDataSource
    Left = 320
    Top = 28
  end
  object DataSource2: TDataSource
    Left = 366
    Top = 230
  end
  object DataSource3: TDataSource
    Left = 468
    Top = 226
  end
end

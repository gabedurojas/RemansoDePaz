object ValidaArchivos: TValidaArchivos
  Left = 413
  Top = 228
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = '...'
  ClientHeight = 198
  ClientWidth = 485
  Color = 16771820
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 485
    Height = 198
    Align = alClient
    TabOrder = 0
    object Progress: TJvSpecialProgress
      Left = 16
      Top = 82
      Width = 453
      Height = 25
      Caption = 'Progreso'
      Color = clMaroon
      EndColor = clNavy
      ParentColor = False
    end
    object Archivo: TEdit
      Left = 52
      Top = 44
      Width = 373
      Height = 32
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clMenu
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object DCP_twofish1: TDCP_twofish
    Id = 6
    Algorithm = 'Twofish'
    MaxKeySize = 256
    BlockSize = 128
    Left = 396
    Top = 10
  end
  object DCP_sha11: TDCP_sha1
    Id = 2
    Algorithm = 'SHA1'
    HashSize = 160
    Left = 431
    Top = 10
  end
end

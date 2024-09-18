object Fouvdisponible: TFouvdisponible
  Left = 0
  Top = 0
  Caption = 'Fouvdisponible'
  ClientHeight = 322
  ClientWidth = 532
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object T1: TLabel
    Left = 30
    Top = 10
    Width = 28
    Height = 14
    Caption = 'Titre'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object T2: TLabel
    Left = 8
    Top = 10
    Width = 58
    Height = 14
    Caption = 'Sp'#233'cialit'#233
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object T3: TLabel
    Left = 8
    Top = 10
    Width = 78
    Height = 14
    Caption = 'Ane'#233' edition'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 48
    Width = 497
    Height = 257
    DataSource = DM.DSvieouvdisponible
    DrawingStyle = gdsGradient
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object T1e: TEdit
    Left = 92
    Top = 8
    Width = 177
    Height = 21
    TabOrder = 1
    OnChange = T1eChange
  end
  object T2e: TEdit
    Left = 92
    Top = 8
    Width = 177
    Height = 21
    Enabled = False
    TabOrder = 2
    Visible = False
    OnChange = T2eChange
  end
  object T3e: TEdit
    Left = 92
    Top = 8
    Width = 177
    Height = 21
    Enabled = False
    TabOrder = 3
    Visible = False
    OnChange = T3eChange
  end
  object CB1: TComboBox
    Left = 368
    Top = 8
    Width = 145
    Height = 21
    ItemIndex = 0
    TabOrder = 4
    Text = 'Recharche par titre'
    OnChange = CB1Change
    Items.Strings = (
      'Recharche par titre'
      'Recharche par sp'#233'cialite'
      'Recharche par ane'#233' edition')
  end
end

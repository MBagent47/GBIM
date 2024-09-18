object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'compte'
  ClientHeight = 312
  ClientWidth = 765
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Utilisateur: TLabel
    Left = 26
    Top = 39
    Width = 80
    Height = 18
    Caption = 'Utilisateur'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object TLabel
    Left = 26
    Top = 87
    Width = 97
    Height = 18
    Caption = 'Mot de passe'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object TLabel
    Left = 42
    Top = 136
    Width = 34
    Height = 18
    Caption = 'Role'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 8
    Top = 290
    Width = 54
    Height = 16
    Caption = 'First run'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object DBGrid1: TDBGrid
    Left = 304
    Top = 8
    Width = 453
    Height = 233
    DataSource = DM.DScompt
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 384
    Top = 247
    Width = 310
    Height = 34
    DataSource = DM.DScompt
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 144
    Top = 39
    Width = 137
    Height = 22
    DataField = 'username'
    DataSource = DM.DScompt
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 144
    Top = 87
    Width = 137
    Height = 22
    DataField = 'passeword'
    DataSource = DM.DScompt
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object DBComboBox1: TDBComboBox
    Left = 144
    Top = 136
    Width = 137
    Height = 22
    DataField = 'aRole'
    DataSource = DM.DScompt
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      'administrator'
      'utilisateur')
    ParentFont = False
    TabOrder = 4
  end
  object BitBtn1: TBitBtn
    Left = 284
    Top = 264
    Width = 59
    Height = 40
    Caption = 'Tarminaite'
    Enabled = False
    TabOrder = 5
    Visible = False
    OnClick = BitBtn1Click
  end
end

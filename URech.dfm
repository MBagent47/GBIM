object FRech: TFRech
  Left = 0
  Top = 0
  Caption = 'Recherche pr'#233't'
  ClientHeight = 389
  ClientWidth = 770
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
  object Label8: TLabel
    Left = 42
    Top = 21
    Width = 125
    Height = 16
    Caption = 'Num'#233'ro d'#39'adh'#233'rent'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 184
    Top = 16
    Width = 265
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnChange = Edit1Change
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 72
    Width = 745
    Height = 297
    DataSource = DM.DSrechPr
    DrawingStyle = gdsGradient
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ComboBox1: TComboBox
    Left = 528
    Top = 16
    Width = 225
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemIndex = 0
    ParentFont = False
    TabOrder = 2
    Text = 'Recherche par num'#233'ro d'#39'adh'#233'rent'
    OnChange = ComboBox1Change
    Items.Strings = (
      'Recherche par num'#233'ro d'#39'adh'#233'rent'
      'Recherche par nom et pr'#233'nom'
      'Recherche par titre de livre')
  end
  object Edit3: TEdit
    Left = 184
    Top = 16
    Width = 265
    Height = 26
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Visible = False
    OnChange = Edit3Change
  end
  object Panel1: TPanel
    Left = 184
    Top = 1
    Width = 276
    Height = 65
    Enabled = False
    TabOrder = 4
    Visible = False
    object Label1: TLabel
      Left = 64
      Top = 16
      Width = 20
      Height = 13
      Caption = 'nom'
    end
    object Label2: TLabel
      Left = 64
      Top = 35
      Width = 36
      Height = 13
      Caption = 'pr'#233'nom'
    end
    object Edit2: TEdit
      Left = 112
      Top = 8
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Edit4: TEdit
      Left = 112
      Top = 35
      Width = 121
      Height = 21
      TabOrder = 1
      OnChange = Edit4Change
    end
  end
end

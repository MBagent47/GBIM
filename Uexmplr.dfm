object Fexmplr: TFexmplr
  Left = 240
  Top = 25
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Exmplaire'
  ClientHeight = 399
  ClientWidth = 467
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
  object DBGrid1: TDBGrid
    Left = 38
    Top = 188
    Width = 409
    Height = 233
    DataSource = DM.DSExmplr
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 38
    Top = -9
    Width = 360
    Height = 42
    DataSource = DM.DSExmplr
    TabOrder = 1
  end
  object Panel4: TPanel
    Left = 38
    Top = 39
    Width = 337
    Height = 143
    BevelWidth = 2
    TabOrder = 2
    object Label11: TLabel
      Left = 24
      Top = 20
      Width = 68
      Height = 16
      Caption = 'Code Livre'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 23
      Top = 108
      Width = 104
      Height = 16
      Caption = 'Etat d'#39'Exmplaire'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 24
      Top = 156
      Width = 4
      Height = 16
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 25
      Top = 64
      Width = 32
      Height = 16
      Caption = 'Code'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit8: TDBEdit
      Left = 152
      Top = 106
      Width = 161
      Height = 22
      DataField = 'Etat_Exmplr'
      DataSource = DM.DSExmplr
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit9: TDBEdit
      Left = 152
      Top = 62
      Width = 161
      Height = 22
      DataField = 'Code_Exmplr'
      DataSource = DM.DSExmplr
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 152
      Top = 20
      Width = 161
      Height = 22
      DataField = 'Code_Ouv'
      DataSource = DM.DSExmplr
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Code_Ouv'
      ListField = 'Titre'
      ListSource = DM.DSouvrage
      ParentFont = False
      TabOrder = 2
    end
  end
end

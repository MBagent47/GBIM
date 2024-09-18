object FChoisirauteurs: TFChoisirauteurs
  Left = 0
  Top = 0
  Caption = 'Choisir les auteurs d'#39'un livre'
  ClientHeight = 465
  ClientWidth = 328
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
  object Label2: TLabel
    Left = 16
    Top = 7
    Width = 124
    Height = 19
    Caption = 'Titre de livre :"'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object L3: TLabel
    Left = 146
    Top = 8
    Width = 118
    Height = 19
    Caption = 'Titre de livre "'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel2: TPanel
    Left = 10
    Top = 32
    Width = 313
    Height = 97
    BevelWidth = 2
    TabOrder = 0
    object Label8: TLabel
      Left = 42
      Top = 13
      Width = 57
      Height = 16
      Caption = 'L'#39'Auteur'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton4: TSpeedButton
      Left = 274
      Top = 6
      Width = 23
      Height = 23
      Caption = '+'
      Enabled = False
    end
    object Label1: TLabel
      Left = 42
      Top = 54
      Width = 76
      Height = 16
      Caption = '(Code livre)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 136
      Top = 7
      Width = 137
      Height = 22
      DataField = 'Code_Auteur'
      DataSource = DM.DSEcrire
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Code_Auteur'
      ListField = 'Full_nameA'
      ListSource = DM.DSauteur
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 136
      Top = 51
      Width = 137
      Height = 22
      DataField = 'Code_Ouv'
      DataSource = DM.DSEcrire
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 136
      Top = 51
      Width = 137
      Height = 22
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
  end
  object DBGrid1: TDBGrid
    Left = 12
    Top = 167
    Width = 313
    Height = 250
    DataSource = DM.DSEcrire
    DrawingStyle = gdsGradient
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 52
    Top = 423
    Width = 210
    Height = 34
    DataSource = DM.DSEcrire
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
    TabOrder = 2
  end
  object Badd: TButton
    Left = 77
    Top = 135
    Width = 75
    Height = 25
    Caption = 'Add'
    TabOrder = 3
    OnClick = BaddClick
  end
  object Button2: TButton
    Left = 177
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Applay'
    TabOrder = 4
    OnClick = Button2Click
  end
end

object Fxmplr: TFxmplr
  Left = 0
  Top = 0
  Caption = 'Exemplair'
  ClientHeight = 475
  ClientWidth = 327
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
  object SpeedButton1: TSpeedButton
    Left = 275
    Top = 212
    Width = 49
    Height = 34
    Caption = 'X'
    Enabled = False
    OnClick = SpeedButton1Click
  end
  object Panel2: TPanel
    Left = 8
    Top = 31
    Width = 315
    Height = 175
    BevelWidth = 2
    TabOrder = 0
    object Label4: TLabel
      Left = 20
      Top = 144
      Width = 112
      Height = 16
      Caption = 'L'#39#201'tat exemplaire'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 20
      Top = 102
      Width = 97
      Height = 16
      Caption = 'Code Exemplair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 155
      Top = 10
      Width = 137
      Height = 22
      DataField = 'Code_Ouv'
      DataSource = DM.DSExmplr
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object edit3: TEdit
      Left = 155
      Top = 143
      Width = 137
      Height = 22
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Panel1: TPanel
      Left = 0
      Top = 1
      Width = 321
      Height = 82
      BevelWidth = 2
      TabOrder = 2
      object Label1: TLabel
        Left = 64
        Top = 26
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
      object Label3: TLabel
        Left = 8
        Top = 1
        Width = 302
        Height = 16
        Caption = 'Code Exemplair:_________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 211
        Top = 23
        Width = 36
        Height = 16
        Caption = '(Seq)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Edit1: TEdit
        Left = 64
        Top = 45
        Width = 90
        Height = 24
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object editref: TEdit
        Left = 211
        Top = 45
        Width = 34
        Height = 24
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object Edit2: TEdit
        Left = 168
        Top = 45
        Width = 28
        Height = 24
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        Text = 'Ex'
      end
    end
    object Edit4: TEdit
      Left = 155
      Top = 102
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
      TabOrder = 3
    end
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 252
    Width = 315
    Height = 188
    DataSource = DM.DSExmplr
    DrawingStyle = gdsGradient
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Badd: TButton
    Left = 146
    Top = 446
    Width = 75
    Height = 25
    Caption = 'Add'
    TabOrder = 2
    OnClick = BaddClick
  end
  object Button2: TButton
    Left = 243
    Top = 446
    Width = 75
    Height = 25
    Caption = 'Applay'
    TabOrder = 3
    OnClick = Button2Click
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 212
    Width = 220
    Height = 34
    DataSource = DM.DSEcrire
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
    TabOrder = 4
  end
  object DBEdit2: TDBEdit
    Left = 409
    Top = 148
    Width = 121
    Height = 21
    DataField = 'Code_Exmplr'
    DataSource = DM.DSExmplr
    TabOrder = 5
  end
  object DBEdit3: TDBEdit
    Left = 409
    Top = 104
    Width = 121
    Height = 21
    DataField = 'Etat_Exmplr'
    DataSource = DM.DSExmplr
    TabOrder = 6
  end
  object DBEdit4: TDBEdit
    Left = 416
    Top = 296
    Width = 121
    Height = 21
    DataField = 'Code_Exmplr_Seq'
    DataSource = DM.DSExmplr
    TabOrder = 7
  end
  object BitBtn1: TBitBtn
    Left = 227
    Top = 212
    Width = 49
    Height = 34
    Caption = #61473
    Enabled = False
    Font.Charset = SYMBOL_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Wingdings'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = BitBtn1Click
  end
  object DBEdit5: TDBEdit
    Left = 335
    Top = 77
    Width = 121
    Height = 21
    DataField = 'disp'
    DataSource = DM.DSExmplr
    TabOrder = 9
  end
  object ADOCommand1: TADOCommand
    Parameters = <>
    Left = 368
    Top = 232
  end
end

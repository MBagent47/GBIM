object Form4: TForm4
  Left = 976
  Top = 25
  Caption = 'Setting'
  ClientHeight = 246
  ClientWidth = 277
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 8
    Top = 8
    Width = 105
    Height = 41
    Caption = 'Ajouter'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 8
    Top = 55
    Width = 265
    Height = 186
    BevelWidth = 3
    TabOrder = 1
    object Label1: TLabel
      Left = 36
      Top = 32
      Width = 190
      Height = 16
      Caption = 'Ajouter un domine d'#39'ouvrage'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      OnClick = Label1Click
    end
    object Label2: TLabel
      Left = 36
      Top = 72
      Width = 188
      Height = 16
      Caption = 'Ajouter un edition d'#39'ouvrage'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      OnClick = Label2Click
    end
    object Label3: TLabel
      Left = 36
      Top = 112
      Width = 124
      Height = 16
      Caption = 'Ajouter un Auteur '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      OnClick = Label3Click
    end
  end
end

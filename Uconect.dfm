object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 81
  ClientWidth = 407
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 16
    Width = 53
    Height = 19
    Caption = 'Server'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 88
    Top = 18
    Width = 193
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 320
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Conx'
    TabOrder = 1
    OnClick = Button1Click
  end
  object BitBtn1: TBitBtn
    Left = 249
    Top = 45
    Width = 75
    Height = 25
    Caption = 'save'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 168
    Top = 45
    Width = 75
    Height = 25
    Caption = 'use to edit 1'
    TabOrder = 3
    OnClick = BitBtn2Click
  end
end

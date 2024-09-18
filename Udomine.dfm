object domine: Tdomine
  Left = 0
  Top = 0
  Caption = '*- ajeute un domine d'#39'ouvrage.'
  ClientHeight = 428
  ClientWidth = 447
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
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 431
    Height = 377
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 364
    Top = 395
    Width = 75
    Height = 25
    Caption = 'save'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
end

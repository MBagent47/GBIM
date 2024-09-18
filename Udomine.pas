unit Udomine;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  Tdomine = class(TForm)
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  domine: Tdomine;

implementation

{$R *.dfm}

procedure Tdomine.BitBtn1Click(Sender: TObject);
var
  MyFile: TStringList;
begin
  MyFile := TStringList.Create;
  try
    // تحميل النص من Memo إلى TStringList
    MyFile.Assign(Memo1.Lines);

    // حفظ النص في ملف نصي
    MyFile.SaveToFile('vdx.txt');
  finally
    MyFile.Free;
  end;
end;

procedure Tdomine.FormActivate(Sender: TObject);

var
  MyFile: TStringList;
begin
  MyFile := TStringList.Create;
  try
    // قراءة محتوى الملف النصي إلى TStringList
    MyFile.LoadFromFile('vdx.txt');

    // تعيين المحتوى إلى خاصية Lines لـ Memo
    Memo1.Lines.Assign(MyFile);
  finally
    MyFile.Free;
  end;
end;




end.

unit Uqr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.Buttons,ShellAPI;

type
  TFQR = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    Edit2: TEdit;
    Label1: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FQR: TFQR;

implementation
         uses uPret;
{$R *.dfm}

procedure TFQR.BitBtn1Click(Sender: TObject);
begin
if edit2.Text='a' then fpret.DBLookupComboBox1.Field.Value:=Edit1.Text;
if edit2.Text='b' then fpret.DBLookupComboBox2.Field.Value:=Edit1.Text;
edit1.Clear;
fqr.Close;
end;

procedure TFQR.FormActivate(Sender: TObject);
begin
edit1.SetFocus;
end;

procedure TFQR.Label1Click(Sender: TObject);
begin
ShellExecute(0, 'open', 'BarcodeServer.exe', nil, nil, SW_SHOWNORMAL);
end;

end.

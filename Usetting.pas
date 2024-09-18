unit Usetting;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Buttons;

type
  TForm4 = class(TForm)
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses Udomine, Uedition, Uauteur;

procedure TForm4.Label1Click(Sender: TObject);
begin
domine.show;
end;

procedure TForm4.Label2Click(Sender: TObject);
begin
Fedition.show;
end;

procedure TForm4.Label3Click(Sender: TObject);
begin
Fnewauteur.show;
end;

end.

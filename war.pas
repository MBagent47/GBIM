unit war;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage;

type
  TFatt = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Image2: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Timer1: TTimer;
    Label5: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);


  private
    { Private declarations }
    p:integer;
    kjh:string;
  public
    { Public declarations }
  end;

var
  Fatt: TFatt;

implementation

{$R *.dfm}



procedure TFatt.FormActivate(Sender: TObject);
begin
p:=30;
kjh:='dfd';
end;


procedure TFatt.Timer1Timer(Sender: TObject);
begin
 if kjh='dfd'  then p:=p-1;
 Label5.Caption:=inttostr(p);
 if p=1 then application.Terminate;
end;

end.

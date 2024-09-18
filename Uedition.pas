unit Uedition;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList;

type
  TFedition = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBGrid1: TDBGrid;
    image1: TBitBtn;
    image2l: TBitBtn;
    DBNavigator1: TDBNavigator;
    SpeedButton1: TSpeedButton;
    Label8: TLabel;
    ImageList1: TImageList;
    Panel3: TPanel;
    Bedit: TButton;
    Binsert: TButton;
    Button1: TButton;
    Panel2: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Edit1: TEdit;
    SpeedButton2: TSpeedButton;
    BitBtn1: TBitBtn;




    procedure SpeedButton1Click(Sender: TObject);
    procedure BinsertClick(Sender: TObject);
    procedure BeditClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);




  private
    { Private declarations }
     k:integer;
    trouve:integer;
  public
    { Public declarations }
  end;

var
  Fedition: TFedition;
    i:integer;
implementation
      uses udm;
{$R *.dfm}


procedure TFedition.BeditClick(Sender: TObject);
begin
panel2.Enabled:=false;
panel2.Visible:=false;
dm.Tedition.Edit;
Binsert.Enabled:=false;
Binsert.ImageIndex:=5;
button1.Visible:=false;
speedbutton2.Visible:=true;
speedbutton2.Enabled:=true;
BitBtn1.Enabled:=true;
 Bedit.Enabled:=false;
Bedit.ImageIndex:=3;
end;

procedure TFedition.BinsertClick(Sender: TObject);
begin
Binsert.Enabled:=false;
Binsert.ImageIndex:=5;
edit1.Enabled:=true;
edit2.Enabled:=true;
Bedit.Enabled:=false;
Bedit.ImageIndex:=3;
button1.ImageIndex:=0;
button1.Enabled:=true;
BitBtn1.Enabled:=true;
end;

procedure TFedition.BitBtn1Click(Sender: TObject);
begin
speedbutton2.Visible:=false;
speedbutton2.Enabled:=false;
button1.Visible:=true;
panel2.Enabled:=true;
panel2.Visible:=true;
edit1.Clear;
edit2.Clear;
edit1.Enabled:=false;
edit2.Enabled:=false;
Binsert.Enabled:=true;
Binsert.ImageIndex:=4;
Bedit.Enabled:=true;
Bedit.ImageIndex:=2;
 dm.Tedition.Cancel;
 BitBtn1.Enabled:=false;
 button1.Enabled:=false;
 button1.ImageIndex:=1;
end;

procedure TFedition.Button1Click(Sender: TObject);
begin
if trouve=1 then showmessage('le code deja exist')
else begin
dbedit3.Text:=edit2.Text;
dm.Tedition.Post;
Binsert.Enabled:=true;
Binsert.ImageIndex:=4;
Bedit.Enabled:=true;
Bedit.ImageIndex:=2;
button1.ImageIndex:=1;
button1.Enabled:=false;
 BitBtn1.Enabled:=false;
edit1.Clear;
edit2.Clear;
edit1.Enabled:=false;
edit2.Enabled:=false;
end;
end;

procedure TFedition.Edit1Exit(Sender: TObject);
begin
if edit1.text<>'' then
begin
k:=strtoint(edit1.Text);
Dm.Tedition.first;
trouve:=0;

while not(Dm.Tedition.eof) do
begin
  if k=DM.Tedition.fieldvalues['Code_Edition']  then
  begin
     trouve:=1;
    exit;
    end
    else

    Dm.Tedition.next;


    end;
 if trouve=0 then
      begin

dm.Tedition.insert;
dbedit2.Text:=edit1.Text;

      end;
end;
end;

procedure TFedition.SpeedButton1Click(Sender: TObject);
begin
 Fedition.Close;
end;

procedure TFedition.SpeedButton2Click(Sender: TObject);
begin
dm.Tedition.Post;
speedbutton2.Visible:=false;
speedbutton2.Enabled:=false;
button1.Visible:=true;
panel2.Enabled:=true;
panel2.Visible:=true;
Binsert.Enabled:=true;
Binsert.ImageIndex:=4;
BitBtn1.Enabled:=false;
end;

end.

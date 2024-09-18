unit Uauteur;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList;

type
  TFnewauteur = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    image2l: TBitBtn;
    image1: TBitBtn;
    DBNavigator1: TDBNavigator;
    SpeedButton1: TSpeedButton;
    Label8: TLabel;
    Panel3: TPanel;
    Bedit: TButton;
    Binsert: TButton;
    Button1: TButton;
    ImageList1: TImageList;
    Panel2: TPanel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    SpeedButton2: TSpeedButton;
    BitBtn1: TBitBtn;
   
    procedure SpeedButton1Click(Sender: TObject);
    procedure BeditClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BinsertClick(Sender: TObject);
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
  Fnewauteur: TFnewauteur;

implementation
           uses udm;
{$R *.dfm}


procedure TFnewauteur.BeditClick(Sender: TObject);
begin
panel2.Enabled:=false;
panel2.Visible:=false;
dm.Tauteur.Edit;
Binsert.Enabled:=false;
Binsert.ImageIndex:=5;
button1.Visible:=false;
speedbutton2.Visible:=true;
speedbutton2.Enabled:=true;
BitBtn1.Enabled:=true;
Bedit.Enabled:=false;
Bedit.ImageIndex:=3;
end;

procedure TFnewauteur.BinsertClick(Sender: TObject);
begin
Binsert.Enabled:=false;
Binsert.ImageIndex:=5;
edit1.Enabled:=true;
edit2.Enabled:=true;
edit3.Enabled:=true;
Bedit.Enabled:=false;
Bedit.ImageIndex:=3;
button1.ImageIndex:=0;
button1.Enabled:=true;
BitBtn1.Enabled:=true;
end;

procedure TFnewauteur.BitBtn1Click(Sender: TObject);
begin
speedbutton2.Visible:=false;
speedbutton2.Enabled:=false;
button1.Visible:=true;
panel2.Enabled:=true;
panel2.Visible:=true;
edit1.Clear;
edit2.Clear;
edit3.Clear;
edit1.Enabled:=false;
edit2.Enabled:=false;
edit3.Enabled:=false;
Binsert.Enabled:=true;
Binsert.ImageIndex:=4;
Bedit.Enabled:=true;
Bedit.ImageIndex:=2;
 dm.Tauteur.Cancel;
 BitBtn1.Enabled:=false;
 button1.Enabled:=false;
 button1.ImageIndex:=1;
end;

procedure TFnewauteur.Button1Click(Sender: TObject);
begin
if trouve=1 then showmessage('le code deja exist')
else begin
dbedit3.Text:=edit2.Text;
dbedit5.Text:=edit3.Text;
dm.Tauteur.Post;
Binsert.Enabled:=true;
Binsert.ImageIndex:=4;
Bedit.Enabled:=true;
Bedit.ImageIndex:=2;
button1.ImageIndex:=1;
button1.Enabled:=false;
BitBtn1.Enabled:=false;
edit1.Clear;
edit2.Clear;
edit3.Clear;
edit1.Enabled:=false;
edit2.Enabled:=false;
edit3.Enabled:=false;
end;
end;

procedure TFnewauteur.Edit1Exit(Sender: TObject);
begin
if edit1.text<>'' then
begin
k:=strtoint(edit1.Text);
Dm.Tauteur.first;
trouve:=0;
while not(Dm.Tauteur.eof) do
begin
  if k=DM.Tauteur.fieldvalues['Code_Auteur']  then
  begin
     trouve:=1;
    exit;
    end
    else

    Dm.Tauteur.next;


    end;
 if trouve=0 then
      begin

dm.Tauteur.insert;
dbedit2.Text:=edit1.Text;

      end;
end;
end;

procedure TFnewauteur.SpeedButton1Click(Sender: TObject);
begin
Fnewauteur.Close;
end;

procedure TFnewauteur.SpeedButton2Click(Sender: TObject);
begin
dm.Tauteur.Post;
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

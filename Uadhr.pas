unit Uadhr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  System.ImageList, Vcl.ImgList, Vcl.ExtDlgs, frxBarcode, frxClass, frxDBSet,
  Vcl.Imaging.pngimage;

type
  TAdhr = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBNavigator1: TDBNavigator;
    SpeedButton1: TSpeedButton;
    Label8: TLabel;
    Panel3: TPanel;
    Bedit: TButton;
    Binsert: TButton;
    BitBtn1: TBitBtn;
    ImageList1: TImageList;
    Button1: TButton;
    Panel2: TPanel;
    Label9: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Panel4: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    DBEdit4: TDBEdit;
    Edit9: TEdit;
    OpenPictureDialog1: TOpenPictureDialog;
    DBImage1: TDBImage;
    Image1: TImage;
    Button3x: TButton;
    Button2: TButton;
    OpenPictureDialog2: TOpenPictureDialog;
    Memo1: TMemo;
    Panel5: TPanel;
    Image2: TImage;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxBarCodeObject1: TfrxBarCodeObject;
    procedure SpeedButton1Click(Sender: TObject);
    procedure BinsertClick(Sender: TObject);
    procedure BeditClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit9Change(Sender: TObject);
    procedure DBEdit4Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button3xClick(Sender: TObject);
    procedure Image2Click(Sender: TObject);


   
  private
    { Private declarations }
      k:string;
    trouve:integer;
    n,kl:integer;
    edit: array[1..8] of TEdit;
  public
    { Public declarations }
  end;

var
  Adhr: TAdhr;

implementation
  uses udm;
{$R *.dfm}



procedure TAdhr.SpeedButton1Click(Sender: TObject);
begin
  Adhr.Close;
end;

procedure TAdhr.BeditClick(Sender: TObject);
begin
kl:=4;
panel4.Visible:=false;
dm.Tadhr.Edit;
Binsert.Enabled:=false;
Binsert.ImageIndex:=5;
button1.ImageIndex:=0;
button1.Enabled:=true;
BitBtn1.Enabled:=true;
Bedit.Enabled:=false;
Bedit.ImageIndex:=3;
end;

procedure TAdhr.BinsertClick(Sender: TObject);
begin
panel4.Enabled:=true;
edit3.Enabled:=true;
edit4.Enabled:=true;
edit5.Enabled:=true;
edit6.Enabled:=true;
edit7.Enabled:=true;
edit8.Enabled:=true;
Bedit.Enabled:=true;
Bedit.ImageIndex:=3;
edit3.SetFocus;
button1.ImageIndex:=0;
button1.Enabled:=true;
button3x.Enabled:=true;
BitBtn1.Enabled:=true;
Binsert.Enabled:=false;
Binsert.ImageIndex:=5;
end;



procedure TAdhr.BitBtn1Click(Sender: TObject);
begin
Binsert.Enabled:=true;
Binsert.ImageIndex:=4;
Bedit.Enabled:=true;
Bedit.ImageIndex:=2;
dm.Tadhr.Cancel;
button3x.Enabled:=false;
Memo1.Visible:=true;
panel4.Visible:=true;
panel4.Enabled:=false;
 BitBtn1.Enabled:=false;
 button1.Enabled:=false;
 button1.ImageIndex:=1;
end;

procedure TAdhr.Button1Click(Sender: TObject);
var
i:integer;
begin
if trouve=1 then showmessage('le code deja exist')
else begin
if kl<>4 then begin

dbedit2.Text:=edit4.Text;
dbedit3.Text:=edit5.Text;
dbedit5.Text:=edit6.Text;
dbedit6.Text:=edit7.Text;
dbedit7.Text:=edit8.Text;
dbimage1.Picture:=image1.Picture;
 end;
 kl:=0;
if dbedit1.text<>'' then i:=1;
if dbedit2.text<>'' then  i:=2;
if dbedit3.text<>'' then  i:=3;
if dbedit5.text<>''  then i:=4;
if dbedit6.text<>'' then  i:=5;
if dbedit7.Text<>'' then  i:=6;

if i=6 then begin
dm.Tadhr.Post;
panel4.Visible:=true;
panel4.Enabled:=false;
Binsert.Enabled:=true;
Binsert.ImageIndex:=4;
Bedit.Enabled:=true;
Bedit.ImageIndex:=2;
button1.ImageIndex:=1;
button1.Enabled:=false;
 BitBtn1.Enabled:=false;
 button3x.Enabled:=false;
 Memo1.Visible:=true;
edit3.Enabled:=false;
edit4.Enabled:=false;
edit5.Enabled:=false;
edit6.Enabled:=false;
edit7.Enabled:=false;
edit8.Enabled:=false;
end;
if dbedit1.text='' then showmessage('erorr,le code elle vide');
if dbedit2.text='' then  showmessage('erorr,le Nom elle vide') ;
if dbedit3.text='' then  showmessage('erorr,le Prénom elle vide');
if dbedit5.text=''  then showmessage('erorr,la Date.nais elle vide');
if dbedit6.text='' then  showmessage('erorr,le Leui.nais elle vide');
if dbedit7.Text='' then  showmessage('erorr, @email/tel elle vide');

dm.tvAdhr.Active:=false;
dm.tvAdhr.Active:=true;
end;
end;



procedure TAdhr.Button3Click(Sender: TObject);
begin
if OpenPictureDialog1.Execute then  DBImage1.Picture.LoadFromFile(OpenPictureDialog1.FileName);

end;

procedure TAdhr.Button3xClick(Sender: TObject);
begin
if OpenPictureDialog2.Execute then  Image1.Picture.LoadFromFile(OpenPictureDialog2.FileName);
Memo1.Visible:=false;
end;

procedure TAdhr.DBEdit4Change(Sender: TObject);
begin
edit9.Text:=DBEdit4.Text;
end;

procedure TAdhr.Edit1Change(Sender: TObject);
begin
if edit1.Text='' then  dm.tvAdhr.Filtered:=false
 else begin
dm.tvAdhr.Filtered:=false;
dm.tvAdhr.Filter :='num_adh'+' LIKE '+ quotedstr(edit1.Text+'%');
dm.tvAdhr.Filtered:=true;
 end;
end;

procedure TAdhr.Edit2Change(Sender: TObject);
begin
if edit2.Text='' then  dm.tvAdhr.Filtered:=false
 else begin
dm.tvAdhr.Filtered:=false;
dm.tvAdhr.Filter :='Full_Name'+' LIKE '+ quotedstr(edit2.Text+'%');
dm.tvAdhr.Filtered:=true;
 end;
end;

procedure TAdhr.Edit3Exit(Sender: TObject);
begin
if edit3.text<>'' then
begin
k:=edit3.Text;
Dm.Tadhr.first;
trouve:=0;

while not(Dm.Tadhr.eof) do
begin
  if k=DM.Tadhr.fieldvalues['Num_adh']  then
  begin
     trouve:=1;
    exit;
    end
    else

    Dm.Tadhr.next;


    end;
 if trouve=0 then
      begin

dm.Tadhr.insert;
dbedit1.Text:=edit3.Text;

      end;
end;
end;

procedure TAdhr.Edit9Change(Sender: TObject);
begin
if edit9.Text='' then  dm.Tadhr.Filtered:=false
 else begin
dm.Tadhr.Filtered:=false;
dm.Tadhr.Filter :='num_adh'+' LIKE '+ quotedstr(edit9.Text+'%');
dm.Tadhr.Filtered:=true;
 end;
end;

procedure TAdhr.Image2Click(Sender: TObject);
begin
frxReport1.LoadFromFile('carte adhr.fr3');
frxReport1.ShowReport;
end;

procedure TAdhr.RadioButton1Click(Sender: TObject);
begin
edit2.Clear;
if RadioButton1.Checked=true then begin
                                  edit1.Visible:=true;
                                  edit1.Enabled:=true;
                                  edit2.Enabled:=false;
                                  edit2.Visible:=false;
                                  end;

end;

procedure TAdhr.RadioButton2Click(Sender: TObject);
begin
edit1.Clear;
if RadioButton2.Checked=true then begin
                                  edit1.Visible:=false;
                                  edit1.Enabled:=false;
                                  edit2.Enabled:=true;
                                  edit2.Visible:=true;
                                  end;
end;

end.

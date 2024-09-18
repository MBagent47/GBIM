unit Uouv;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.Buttons,
  System.ImageList, Vcl.ImgList;

type
  Touv = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    DBEdit6: TDBEdit;
    Label1: TLabel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    Label7: TLabel;
    DBNavigator1: TDBNavigator;
    SpeedButton1: TSpeedButton;
    Label10: TLabel;
    BitBtn1: TBitBtn;
    Bedit: TButton;
    Binsert: TButton;
    Button1: TButton;
    C: TLabel;
    SpeedButton3: TSpeedButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ImageList1: TImageList;
    SpeedButton2: TSpeedButton;
    Label15: TLabel;
    DBEdit4: TDBEdit;
    DBEdit2: TDBEdit;
    bEdit2: TEdit;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    Label16: TLabel;
    DBEdit7: TDBEdit;
    BitBtn2: TBitBtn;
    DBEdit8: TDBEdit;
    Label2: TLabel;
    procedure BinsertClick(Sender: TObject);


    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BeditClick(Sender: TObject);
    procedure CClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);

    procedure Label15Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  
  private
    { Private declarations }
  k:string;
    trouve:integer;
    b:integer;
    d,mb:integer;
    cle:integer;
  public
    { Public declarations }
  end;

var
  ouv: Touv;

implementation
            uses udm, Uexmplr, Uxmplr, Uedition, Uauteur, Uouvdisponible,
  UChoisirauteurs, Ucrouv;
{$R *.dfm}



procedure Touv.BinsertClick(Sender: TObject);
begin
 if not dm.Touvrage.FieldByName('Code_Ouv_Seq').IsNull then
  d := dm.Touvrage.FieldByName('Code_Ouv_Seq').Value
  else d:=0;
b:=d+1;




ComboBox2.Enabled:=true;
ComboBox1.Enabled:=true;
DBLookupComboBox1.Enabled:=true;

Binsert.Enabled:=false;
Binsert.ImageIndex:=5;
Bedit.Enabled:=false;
Bedit.ImageIndex:=3;
button1.ImageIndex:=0;
button1.Enabled:=true;
BitBtn1.Enabled:=true;
dm.Touvrage.Insert;
cle:=12;
end;



procedure Touv.BitBtn1Click(Sender: TObject);
begin
  dm.Touvrage.Cancel;


combobox2.Enabled:=false;
combobox1.Enabled:=false;
dblookupcombobox1.Enabled:=false;
speedbutton2.Enabled:=false;
Binsert.Enabled:=true;
Binsert.ImageIndex:=4;
Bedit.Enabled:=true;
Bedit.ImageIndex:=2;
 BitBtn1.Enabled:=false;
 button1.Enabled:=false;
 button1.ImageIndex:=1;
end;

procedure Touv.BitBtn2Click(Sender: TObject);
begin
Fcr_ouv.show;
end;

procedure Touv.Button1Click(Sender: TObject);
begin

  mb:=0;
DBEdit8.Text:=combobox2.Text;
dm.Touvrage.FieldByName('spec_ouv').Value:=combobox1.Text;

dm.Touvrage.Post;


Binsert.Enabled:=true;
Binsert.ImageIndex:=4;
Bedit.Enabled:=true;
Bedit.ImageIndex:=2;
button1.ImageIndex:=1;
button1.Enabled:=false;
 BitBtn1.Enabled:=false;



DBLookupComboBox1.KeyValue := null;


ComboBox2.Enabled:=false;
ComboBox1.Enabled:=false;
DBLookupComboBox1.Enabled:=false;

 if cle=12 then  FChoisirauteurs.show;

end;


procedure Touv.CClick(Sender: TObject);
begin
Fxmplr.show;
end;


procedure Touv.FormActivate(Sender: TObject);
 var
  MyFile: TStringList;
begin
  MyFile := TStringList.Create;
  try
    // تحميل العناصر من الملف النصي
    MyFile.LoadFromFile('vdx.txt');

    // تعيين العناصر إلى ComboBox
    ComboBox1.Items.Assign(MyFile);
  finally
    MyFile.Free;
  end;
end;

procedure Touv.Label15Click(Sender: TObject);
begin
FChoisirauteurs.show;
end;

procedure Touv.BeditClick(Sender: TObject);
begin
mb:=4;


combobox2.Enabled:=true;
combobox1.Enabled:=true;
dblookupcombobox1.Enabled:=true;
speedbutton2.Enabled:=true;
dm.Touvrage.Edit;

Bedit.Enabled:=false;
Bedit.ImageIndex:=3;
Binsert.Enabled:=false;
Binsert.ImageIndex:=5;
button1.ImageIndex:=0;
button1.Enabled:=true;
BitBtn1.Enabled:=true;
end;

procedure Touv.SpeedButton1Click(Sender: TObject);
begin
ouv.Close;
end;



procedure Touv.SpeedButton2Click(Sender: TObject);
begin
Fedition.show;
end;

procedure Touv.SpeedButton3Click(Sender: TObject);
begin
 Fouvdisponible.show;
end;

procedure Touv.SpeedButton4Click(Sender: TObject);
begin
Fnewauteur.show;
end;

end.

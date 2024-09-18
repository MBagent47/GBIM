unit Uloding;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.GIFImg, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Imaging.pngimage, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TLoding = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    Button1: TButton;
    Timer1: TTimer;
    Edit2: TEdit;
    m1: TLabel;
    Image2: TImage;
    Edit3: TEdit;
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    Edit4: TEdit;

    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Edit3Change(Sender: TObject);

  private
    { Private declarations }
      ConfigFileName: string;
    PreviousValue: string;
       cnxstr:widestring;
     v:string;
     k:integer;
     d:integer;
  public
    { Public declarations }

  end;

var
  Loding: TLoding;

implementation

{$R *.dfm}

uses Uconect, Udm, UMenu, compte, Unit5;




procedure TLoding.Button1Click(Sender: TObject);
begin
  if edit1.Text='r' then form3.Show;

end;

procedure TLoding.Edit3Change(Sender: TObject);
begin
if edit3.Text='' then  dm.tcompt.Filtered:=false
 else begin
dm.tcompt.Filtered:=false;
dm.tcompt.Filter :='aRole'+' LIKE '+ quotedstr(edit3.Text+'%');
dm.tcompt.Filtered:=true;
 end;
end;

procedure TLoding.FormCreate(Sender: TObject);
var
  ConfigFile: TextFile;

begin
(image1.Picture.graphic as tgifimage).Animate:=true;
ConfigFileName := 'config.txt';

  if FileExists(ConfigFileName) then
  begin
    AssignFile(ConfigFile, ConfigFileName);
    try
      Reset(ConfigFile);
      Readln(ConfigFile, PreviousValue);
    finally
      CloseFile(ConfigFile);
    end;
  end;

  // استخدام القيمة
  v := PreviousValue;
  if v<>'' then
   Edit1.Text:=v;

end;

procedure TLoding.Timer1Timer(Sender: TObject);
begin
        d:=d+1;

if d=6 then if edit1.Text=''then k:=10
else k:=8;
     edit2.Text:=inttostr(k);
              if edit2.Text='10' then  begin
                                       edit3.Text:='administrator';


                                       k:=0
                                       end;
     if edit2.Text='8'then begin
                            DM.ADOConnection1.Connected:=false;
cnxstr:='Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security Info=False;User ID="";Initial Catalog=gstBB;Data Source='+edit1.text+';';
dm.ADOConnection1.ConnectionString:=cnxstr;
DM.ADOConnection1.Connected:=true;
                                       if dbedit1.Text='administrator' then form1.Show
                                       else
                                               begin
                                               Form5.show;
                                               edit4.Text:='t';
                                               end;
                           k:=0;
                           loding.Width:=600;
                           loding.Height:=300;
                           Image2.Visible:=true;
                           image1.Visible:=false;
                           loding.Position:=poDesktopCenter;
                           end;
end;

end.

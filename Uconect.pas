unit Uconect;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm3 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);


    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    ConfigFileName: string;
    PreviousValue: string;
    v:string;
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation
  uses udm, UMenu;

{$R *.dfm}

procedure TForm3.BitBtn1Click(Sender: TObject);
var
 ConfigFile: TextFile;
begin
    AssignFile(ConfigFile, ConfigFileName);
  try
    Rewrite(ConfigFile);
    Writeln(ConfigFile, Edit1.Text);
  finally
    CloseFile(ConfigFile);
  end;
end;

procedure TForm3.BitBtn2Click(Sender: TObject);
var
  ConfigFile: TextFile;
begin

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
  v := PreviousValue;
  Edit1.Text:=v;
end;

procedure TForm3.Button1Click(Sender: TObject);
var
cnxstr:widestring;
begin
DM.ADOConnection1.Connected:=false;
cnxstr:='Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=gstBB;Data Source='+edit1.text+';';
dm.ADOConnection1.ConnectionString:=cnxstr;
DM.ADOConnection1.Connected:=true;
dm.Tadhr.Active:=true;
dm.Tsanc.Active:=true ;
dm.Tauteur.Active:=true ;
dm.Tedition.Active:=true;
dm.TPret.Active:=true   ;
dm.TExmplr.Active:=true ;
dm.Touvrage.Active:=true;
dm.TEcrire.Active:=true;
Form2.show;

end;






end.

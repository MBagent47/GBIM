unit UMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, ComObj, Data.Win.ADODB;

type
  TForm2 = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    BitBtn4: TBitBtn;
    Panel3: TPanel;
    BitBtn7: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    Label1: TLabel;
    Timer1: TTimer;
    Label2: TLabel;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    BitBtn41: TBitBtn;
    ADOCommand1: TADOCommand;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation
{$R *.dfm}

uses Uadhr, Usanc, Uauteur, Uouv, Uedition, UPret, Uloding, Uxmplr,udm, Udomine,
  UAdhr1, Usetting;

procedure TForm2.BitBtn1Click(Sender: TObject);
begin
Adhr.show;
end;

procedure TForm2.BitBtn2Click(Sender: TObject);
begin
Fpret.show;
end;

procedure TForm2.BitBtn3Click(Sender: TObject);
begin
Fxmplr.show;
end;

procedure TForm2.BitBtn4Click(Sender: TObject);
begin
ouv.show;
end;

procedure TForm2.BitBtn5Click(Sender: TObject);
begin
Fnewauteur.show;
end;

procedure TForm2.BitBtn6Click(Sender: TObject);
begin
Fedition.show;
end;

procedure TForm2.BitBtn7Click(Sender: TObject);
begin
sanc.show;
end;

procedure TForm2.BitBtn8Click(Sender: TObject);
begin
  if MessageDlg('Êtes-vous sûr de vouloir quitter?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
    application.Terminate;
end;

procedure TForm2.BitBtn9Click(Sender: TObject);
begin
application.Minimize;
end;

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
DM.ADOConnection1.Connected:=false;
dm.Tadhr.Active:=false;
dm.Tsanc.Active:=false;
dm.Tauteur.Active:=false;
dm.Tedition.Active:=false;
dm.TPret.Active:=false;
dm.TExmplr.Active:=false;
dm.Touvrage.Active:=false;
dm.TEcrire.Active:=false;
dm.tcompt.Active:=false;
dm.TvieSanc.Active:=false;
dm.Tvieouvdisponible.Active:=false;
dm.TRechrche_pret.Active:=false;

DM.ADOConnection1.Connected:=true;
dm.Tadhr.Active:=true;
dm.Tsanc.Active:=true ;
dm.Tauteur.Active:=true ;
dm.Tedition.Active:=true;
dm.TPret.Active:=true   ;
dm.TExmplr.Active:=true ;
dm.Touvrage.Active:=true;
dm.TEcrire.Active:=true;
dm.tcompt.Active:=true;
dm.TvieSanc.Active:=true;
dm.Tvieouvdisponible.Active:=true;
dm.TRechrche_pret.Active:=true
end;

procedure TForm2.SpeedButton2Click(Sender: TObject);
begin
Adhr1.show;
end;

procedure TForm2.SpeedButton3Click(Sender: TObject);
begin
Form4.show;
end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
label1.Caption:= FormatDateTime('yyyy/mm/dd',Now);
label2.Caption:= FormatDateTime('hh:mm:ss',Now);
end;

end.

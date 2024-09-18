unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons;

type
  TForm5 = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    Utilisateur: TLabel;
    DBEdit2: TDBEdit;
    DBComboBox1: TDBComboBox;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation
           uses udm,uLoding;

{$R *.dfm}

procedure TForm5.BitBtn1Click(Sender: TObject);
begin
application.Terminate;
end;

procedure TForm5.FormActivate(Sender: TObject);
begin
if Loding.edit4.Text='t' then  begin
                               BitBtn1.Enabled:=true;
                               BitBtn1.Visible:=true;
                               Label1.Enabled:=true;
                               Label1.Visible:=true;
                               end;

end;

end.

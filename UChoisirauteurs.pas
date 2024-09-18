unit UChoisirauteurs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFChoisirauteurs = class(TForm)
    Panel2: TPanel;
    Label8: TLabel;
    SpeedButton4: TSpeedButton;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Badd: TButton;
    Button2: TButton;
    Label2: TLabel;
    L3: TLabel;
    Edit1: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure BaddClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FChoisirauteurs: TFChoisirauteurs;

implementation
         uses udm,uouv;

{$R *.dfm}

procedure TFChoisirauteurs.BaddClick(Sender: TObject);
begin
Badd.Enabled:=false;
Button2.Enabled:=true;
SpeedButton4.Enabled:=true;
DBLookupComboBox2.Enabled:=true;
Edit1.Enabled:=true;
dm.TEcrire.Insert;
dbedit1.Text:=edit1.Text;
end;

procedure TFChoisirauteurs.Button2Click(Sender: TObject);
begin
Badd.Enabled:=true;
Button2.Enabled:=false;
dm.TEcrire.Post;
SpeedButton4.Enabled:=false;
DBLookupComboBox2.Enabled:=false;
Edit1.Enabled:=false;

end;

procedure TFChoisirauteurs.FormActivate(Sender: TObject);
begin
L3.Caption:=ouv.dbedit3.Text+' ".';
edit1.Text:=ouv.dbedit2.Text;
end;

end.

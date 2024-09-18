unit UAdhr1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.pngimage, frxClass, frxDBSet, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Buttons;

type
  TAdhr1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label8: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    SpeedButton1: TSpeedButton;
    procedure Image1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Adhr1: TAdhr1;

implementation
          uses udm;
{$R *.dfm}

procedure TAdhr1.Image1Click(Sender: TObject);
begin
Adhr1.frxReport1.LoadFromFile('Releve de Statistiques.fr3');
Adhr1.frxReport1.ShowReport;
end;

procedure TAdhr1.SpeedButton1Click(Sender: TObject);
begin
Adhr1.Close;
end;

end.

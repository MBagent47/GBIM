unit Uviewsanc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls,frxAdocomponents;

type
  TFvieSanc = class(TForm)
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Image1: TImage;
    procedure Edit1Change(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FvieSanc: TFvieSanc;

implementation
       uses udm,usanc;
{$R *.dfm}

procedure TFvieSanc.Edit1Change(Sender: TObject);
begin
 if edit1.Text='' then  dm.TRechrche_pret.Filtered:=false
 else begin
dm.TvieSanc.Filtered:=false;
dm.TvieSanc.Filter :='num_adh'+' LIKE '+ quotedstr(edit1.Text+'%');
dm.TvieSanc.Filtered:=true;
 end;
end;

procedure TFvieSanc.Image1Click(Sender: TObject);
begin
sanc.frxReport1.LoadFromFile('Fiche de sanction1.fr3');
sanc.frxReport1.ShowReport;
end;

end.

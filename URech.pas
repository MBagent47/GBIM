unit URech;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFRech = class(TForm)
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    Label8: TLabel;
    ComboBox1: TComboBox;
    Edit3: TEdit;
    Panel1: TPanel;
    Edit2: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Edit1Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRech: TFRech;

implementation
      uses udm ;
{$R *.dfm}

procedure TFRech.ComboBox1Change(Sender: TObject);
begin
if ComboBox1.ItemIndex=2 then begin
  edit3.Visible:=true;
  edit3.Enabled:=true;
  edit1.clear;
  edit1.Visible:=false;
  edit1.Enabled:=false;
  panel1.Visible:=false;
 panel1.Enabled:=false;
end;
 if ComboBox1.ItemIndex=1 then begin
  edit3.Visible:=false;
  edit3.Enabled:=false;
  edit1.Visible:=false;
  edit1.Enabled:=false;
  panel1.Visible:=true;
  panel1.Enabled:=true;
end;
if ComboBox1.ItemIndex=0 then begin
edit3.clear;
  edit3.Visible:=false;
  edit3.Enabled:=false;
  edit1.Visible:=true;
  edit1.Enabled:=true;
  panel1.Visible:=false;
  panel1.Enabled:=false;
end;
end;


procedure TFRech.Edit1Change(Sender: TObject);
begin
if edit1.Text='' then  dm.TRechrche_pret.Filtered:=false
 else begin
dm.TRechrche_pret.Filtered:=false;
dm.TRechrche_pret.Filter :='num_adh'+' LIKE '+ quotedstr(edit1.Text+'%');
dm.TRechrche_pret.Filtered:=true;
 end;
end;

procedure TFRech.Edit3Change(Sender: TObject);
begin
 if edit3.Text='' then  dm.TRechrche_pret.Filtered:=false
 else begin
dm.TRechrche_pret.Filtered:=false;
dm.TRechrche_pret.Filter :='Titre'+' LIKE '+ quotedstr(edit3.Text+'%');
dm.TRechrche_pret.Filtered:=true;
end;

end;
procedure TFRech.Edit4Change(Sender: TObject);
begin
  if edit2.Text='' then  dm.TRechrche_pret.Filtered:=false
 else begin
      dm.TRechrche_pret.Filtered:=false;
      dm.TRechrche_pret.Filter :='Nom_adh'+' LIKE '+ quotedstr(edit2.Text+'%');
      dm.TRechrche_pret.Filtered:=true;
      if edit4.Text='' then  dm.TRechrche_pret.Filtered:=false
                       else begin
                       dm.TRechrche_pret.Filtered:=false;
                       dm.TRechrche_pret.Filter :='Prenom_adh'+' LIKE '+ quotedstr(edit4.Text+'%');
                       dm.TRechrche_pret.Filtered:=true;
                       end;
end;
end;

end.



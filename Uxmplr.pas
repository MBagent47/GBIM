unit Uxmplr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons,ComObj,
  Data.Win.ADODB;

type
  TFxmplr = class(TForm)
    Panel2: TPanel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Badd: TButton;
    Button2: TButton;
    DBNavigator1: TDBNavigator;
    L3: TLabel;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    edit3: TEdit;
    ADOCommand1: TADOCommand;
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    editref: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Edit4: TEdit;
    BitBtn1: TBitBtn;
    DBEdit5: TDBEdit;
    procedure FormActivate(Sender: TObject);
    procedure BaddClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    i:integer;
     f:integer;
     d:integer;
  public
    { Public declarations }
  end;

var
  Fxmplr: TFxmplr;

implementation
   uses udm,uouv;
{$R *.dfm}



procedure TFxmplr.BaddClick(Sender: TObject);
begin
if dbedit3.Text='' then begin
                                       ADOCommand1:= TADOCommand.Create(nil);
  try
    ADOCommand1.Connection := dm.ADOConnection1;
    ADOCommand1.CommandType := cmdText;
    ADOCommand1.CommandText := 'DBCC CHECKIDENT (''Exemplair'', RESEED, 0)';
    ADOCommand1.Execute;
  finally
    ADOCommand1.Free;
  end;
                        end
  else                  begin
                        dm.TExmplr.Last;
                        d:=dm.TExmplr.FieldByName('Code_Exmplr_Seq').Value;
                         ADOCommand1:= TADOCommand.Create(nil);
  try
    ADOCommand1.Connection := dm.ADOConnection1;
    ADOCommand1.CommandType := cmdText;
    ADOCommand1.CommandText :='DBCC CHECKIDENT (''Exemplair'', RESEED,'+inttostr(d)+ ')';
    ADOCommand1.Execute;
  finally
    ADOCommand1.Free
  end;
                        end;

if not dm.TExmplr.FieldByName('Code_Exmplr_Seq').IsNull then
  f := dm.TExmplr.FieldByName('Code_Exmplr_Seq').Value
  else f:=0;
i:=f+1;
editref.Text:=inttostr(i);
Badd.Enabled:=false;
Button2.Enabled:=true;
Edit1.Enabled:=true;
Edit2.Enabled:=true;
Editref.Enabled:=true;
SpeedButton1.Enabled:=true;
Edit3.Enabled:=true;
Edit4.Enabled:=true;
edit4.Text:=edit1.Text+edit2.Text+editref.Text;
dm.TExmplr.Insert;
end;

procedure TFxmplr.BitBtn1Click(Sender: TObject);
begin
dm.TExmplr.Edit;
end;

procedure TFxmplr.Button2Click(Sender: TObject);
begin
dbedit5.Text:='1';
dbedit1.Text:=edit1.Text;
dbedit3.Text:=edit3.Text;
dm.TExmplr.Post;
Badd.Enabled:=true;
Button2.Enabled:=false;
Edit1.Enabled:=false;
Edit2.Enabled:=false;
Editref.Enabled:=false;
SpeedButton1.Enabled:=false;
Edit3.Enabled:=false;
Edit4.Enabled:=false;
end;

procedure TFxmplr.FormActivate(Sender: TObject);
begin
L3.Caption:=ouv.dbedit3.Text+' ".';
edit1.Text:=ouv.dbedit2.Text;

end;

procedure TFxmplr.SpeedButton1Click(Sender: TObject);
begin
dm.TExmplr.Cancel;
 Badd.Enabled:=true;
 Button2.Enabled:=false;
  Edit1.Enabled:=false;
Edit2.Enabled:=false;
Editref.Enabled:=false;
SpeedButton1.Enabled:=false;
Edit3.Enabled:=false;
Edit4.Enabled:=false;
end;

end.

unit Ucrouv;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Data.Win.ADODB,
  Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.pngimage, Vcl.ExtCtrls, frxBarcode,
  frxClass, frxDBSet;

type
  TFcr_ouv = class(TForm)
    DBGrid1: TDBGrid;
    ADOTable1xd: TADOTable;
    DataSource1xd: TDataSource;
    CB1: TComboBox;
    T1: TLabel;
    T2: TLabel;
    Image1: TImage;
    ADOTable1xdCode_Exemplair: TWideStringField;
    ADOTable1xdTitre_Ouvrage: TWideStringField;
    ADOTable1xdAuteur: TWideStringField;
    ADOTable1xdEdition: TWideStringField;
    ADOTable1xdAnnee_Edition: TIntegerField;
    Edit1: TEdit;
    Edit3: TEdit;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxBarCodeObject1: TfrxBarCodeObject;
    procedure Edit1Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure CB1Change(Sender: TObject);
    procedure Image1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fcr_ouv: TFcr_ouv;

implementation
             uses udm;
{$R *.dfm}

procedure TFcr_ouv.CB1Change(Sender: TObject);
begin
if CB1.ItemIndex=0 then begin
                        edit1.Enabled:=true;
                        edit1.Visible:=true;
                        T1.Enabled:=true;
                        T1.Visible:=true;

                        Edit3.Enabled:=false;
                        edit3.Visible:=false;
                        T2.Enabled:=false;
                        T2.Visible:=false;


                        end;

if CB1.ItemIndex=1 then begin
                        edit1.Enabled:=false;
                        edit1.Visible:=false;
                        T1.Enabled:=false;
                        T1.Visible:=false;

                        edit3.Enabled:=true;
                        edit3.Visible:=true;
                        T2.Enabled:=true;
                        T2.Visible:=true;


                        end;

end;

procedure TFcr_ouv.Edit1Change(Sender: TObject);
begin
if Edit1.Text='' then  ADOTable1xd.Filtered:=false
 else begin
ADOTable1xd.Filtered:=false;
ADOTable1xd.Filter :='Titre_Ouvrage'+' LIKE '+ quotedstr(Edit1.Text+'%');
ADOTable1xd.Filtered:=true;
 end;
end;

procedure TFcr_ouv.Edit3Change(Sender: TObject);
begin
if edit3.Text='' then  dm.tvAdhr.Filtered:=false
 else begin
ADOTable1xd.Filtered:=false;
ADOTable1xd.Filter :='Code_Exemplair'+' LIKE '+ quotedstr(edit3.Text+'%');
ADOTable1xd.Filtered:=true;
 end;
end;

procedure TFcr_ouv.Image1Click(Sender: TObject);
begin
frxReport1.LoadFromFile('carte d''ouvrage.fr3');
frxReport1.ShowReport;
end;

end.

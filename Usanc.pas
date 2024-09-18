unit Usanc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls, Vcl.ComCtrls,
  Data.Win.ADODB, System.ImageList, Vcl.ImgList, frxClass, frxDBSet;

type
  TSanc = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBGrid1: TDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    DBNavigator1: TDBNavigator;
    SpeedButton1: TSpeedButton;
    Label8: TLabel;
    Panel3: TPanel;
    Bedit: TButton;
    Binsert: TButton;
    Button1: TButton;
    ImageList1: TImageList;
    BitBtn1: TBitBtn;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    DataSource1x: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;




    procedure SpeedButton1Click(Sender: TObject);
    procedure BinsertClick(Sender: TObject);
    procedure BeditClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Sanc: TSanc;

implementation
      uses udm, Uadhr, Uviewsanc;
{$R *.dfm}




procedure TSanc.BeditClick(Sender: TObject);
begin
dm.Tsanc.Edit;
Binsert.Enabled:=false;
Binsert.ImageIndex:=5;
button1.ImageIndex:=0;
button1.Enabled:=true;
BitBtn1.Enabled:=true;
 Bedit.Enabled:=false;
Bedit.ImageIndex:=3;
end;

procedure TSanc.BinsertClick(Sender: TObject);
begin
Bedit.Enabled:=false;
Bedit.ImageIndex:=3;
dm.Tsanc.Insert;
button1.ImageIndex:=0;
button1.Enabled:=true;
BitBtn1.Enabled:=true;
Binsert.Enabled:=false;
Binsert.ImageIndex:=5;
end;

procedure TSanc.BitBtn1Click(Sender: TObject);
begin
Binsert.Enabled:=true;
Binsert.ImageIndex:=4;
Bedit.Enabled:=true;
Bedit.ImageIndex:=2;
dm.Tsanc.Cancel;
 BitBtn1.Enabled:=false;
 button1.Enabled:=false;
 button1.ImageIndex:=1;
end;

procedure TSanc.Button1Click(Sender: TObject);
begin
 if   DateTimePicker2.DateTime > DateTimePicker1.DateTime then begin
  dm.Tsanc.FieldByName('Date_deb_sanc').Value:=DateTimePicker1.DateTime;
dm.Tsanc.FieldByName('Date_fin_sanc').Value:=DateTimePicker2.DateTime;
dm.Tsanc.Post;
Binsert.Enabled:=true;
Binsert.ImageIndex:=4;
Bedit.Enabled:=true;
Bedit.ImageIndex:=2;
button1.ImageIndex:=1;
button1.Enabled:=false;
 BitBtn1.Enabled:=false;
 end
 else showmessage('Erreur lors de enregistrement,"Date fin sanction" doit être supérieure à "Date debut sanction"')
end;

procedure TSanc.FormActivate(Sender: TObject);
begin
DateTimePicker1.Time:=now;
DateTimePicker2.Time:=now;
DateTimePicker1.Date:=now;
DateTimePicker2.Date:=now;
end;

procedure TSanc.SpeedButton1Click(Sender: TObject);
begin
 Sanc.Close;
end;

procedure TSanc.SpeedButton2Click(Sender: TObject);
begin
adhr.show;
end;

procedure TSanc.SpeedButton3Click(Sender: TObject);
begin
 FvieSanc.show;

end;

end.

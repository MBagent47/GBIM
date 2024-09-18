unit UPret;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, Data.Win.ADODB, Vcl.Imaging.pngimage, frxClass,
  frxDBSet, frxBarcode,ShellAPI;
type
  TFPret = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBNavigator1: TDBNavigator;
    DateTimePicker2: TDateTimePicker;
    SpeedButton1: TSpeedButton;
    Label8: TLabel;
    SpeedButton2: TSpeedButton;
    ImageList1: TImageList;
    Panel3: TPanel;
    Bedit: TButton;
    Binsert: TButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    g: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    RadioButton3: TRadioButton;
    Panel2: TPanel;
    Image1: TImage;
    Label6: TLabel;
    T2exb: TEdit;
    frxReport1: TfrxReport;
    frxDBDataset1XC: TfrxDBDataset;
    DBEdit2: TDBEdit;
    DBEditx: TDBEdit;
    ADOQuery1Num_adh: TWideStringField;
    ADOQuery1Code_Exmplr: TWideStringField;
    ADOQuery1Date_Emprt: TDateTimeField;
    ADOQuery1duree: TIntegerField;
    ADOQuery1Date_Retour: TDateTimeField;
    ADOQuery1Date_prvu: TDateTimeField;
    ADOQuery1Num_suivi: TAutoIncField;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    frxBarCodeObject1: TfrxBarCodeObject;
    Button1: TButton;
    BitBtn1: TBitBtn;
    Panel4: TPanel;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    Panel5: TPanel;
    SpeedButton7: TSpeedButton;
    Label7: TLabel;
    Button2: TBitBtn;
  
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BinsertClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BeditClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure T2exbChange(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
  private
    { Private declarations }
    l:integer;
  public
    { Public declarations }
  end;

var
  FPret: TFPret;

implementation
      uses udm, URech, Uadhr, Uouv, Uqr;
{$R *.dfm}





procedure TFPret.BeditClick(Sender: TObject);
begin

DBLookupComboBox1.Enabled:=true;
DateTimePicker2.Visible:=false;
DBLookupComboBox2.Visible:=false;
SpeedButton3.Enabled:=true;
SpeedButton4.Enabled:=true;
SpeedButton6.Enabled:=true;
SpeedButton5.Enabled:=true;
DBEdit1.Enabled:=true;
l:=1;
DateTimePicker1.Enabled:=true;
dm.TPret.Edit;
Binsert.Enabled:=false;
Binsert.ImageIndex:=5;
button1.ImageIndex:=0;
button1.Enabled:=true;
BitBtn1.Enabled:=true;
Bedit.Enabled:=false;
Bedit.ImageIndex:=3;
dbeditx.Text:=datetostr(ADOQuery1.FieldByName('Date_Emprt').Value);
DBLookupComboBox1.Field.Value:=ADOQuery1.FieldByName('Num_adh').Value;
DBEdit1.Text:=inttostr(ADOQuery1.FieldByName('duree').Value);
DBEdit2.Text:=ADOQuery1.FieldByName('Code_Exmplr').Value;
end;

procedure TFPret.BinsertClick(Sender: TObject);
begin
DateTimePicker1.Enabled:=false;
DBLookupComboBox1.Enabled:=true;
SpeedButton3.Enabled:=true;
DBLookupComboBox2.Enabled:=true;
SpeedButton4.Enabled:=true;
SpeedButton6.Enabled:=true;
SpeedButton5.Enabled:=true;
DateTimePicker2.Enabled:=true;
DBEdit1.Enabled:=true;
Bedit.Enabled:=false;
Bedit.ImageIndex:=3;
dm.TPret.Insert;
button1.ImageIndex:=0;
button1.Enabled:=true;
BitBtn1.Enabled:=true;
Binsert.Enabled:=false;
Binsert.ImageIndex:=5;
end;

procedure TFPret.BitBtn1Click(Sender: TObject);
begin
DateTimePicker2.Visible:=true;
DBLookupComboBox2.Visible:=true;
DateTimePicker1.Enabled:=false;
DBLookupComboBox1.Enabled:=false;
SpeedButton3.Enabled:=false;
DBLookupComboBox2.Enabled:=false;
SpeedButton4.Enabled:=false;
SpeedButton6.Enabled:=false;
SpeedButton5.Enabled:=false;
DateTimePicker2.Enabled:=false;
DBEdit1.Enabled:=false;
Binsert.Enabled:=true;
Binsert.ImageIndex:=4;
Bedit.Enabled:=true;
Bedit.ImageIndex:=2;
dm.TPret.Cancel;
 BitBtn1.Enabled:=false;
 button1.Enabled:=false;
 button1.ImageIndex:=1;
end;

procedure TFPret.Button1Click(Sender: TObject);
begin
if DateTimePicker1.Enabled=true then if (DateTimePicker1.DateTime < DateTimePicker2.DateTime) then showmessage('Erreur lors de enregistrement,"Date Retour" doit être supérieure à "Date Emprent"')
                                     else
                                     begin
                                      dm.TPret.FieldByName('Date_Emprt').Value:=DateTimePicker2.Datetime;
                                       if DateTimePicker1.Enabled=true then dm.TPret.FieldByName('Date_Retour').Value:=DateTimePicker1.Datetime;
                                      dm.TPret.Post;
                                      Binsert.Enabled:=true;
                                      Binsert.ImageIndex:=4;
                                      Bedit.Enabled:=true;
                                      Bedit.ImageIndex:=2;
                                      button1.ImageIndex:=1;
                                      button1.Enabled:=false;
                                       BitBtn1.Enabled:=false;
                                      end
else
 begin
 dm.TPret.FieldByName('Date_Emprt').Value:=DateTimePicker2.Datetime;
 if DateTimePicker1.Enabled=true then dm.TPret.FieldByName('Date_Retour').Value:=DateTimePicker1.Datetime;
 dm.TPret.Post;
 Binsert.Enabled:=true;
 Binsert.ImageIndex:=4;
 Bedit.Enabled:=true;
 Bedit.ImageIndex:=2;
 button1.ImageIndex:=1;
 button1.Enabled:=false;
 BitBtn1.Enabled:=false;
 end;
 DBLookupComboBox2.Visible:=true;
 DateTimePicker2.Visible:=true;
 DBLookupComboBox1.Enabled:=false;
SpeedButton3.Enabled:=false;
DBLookupComboBox2.Enabled:=false;
SpeedButton4.Enabled:=false;
SpeedButton6.Enabled:=false;
SpeedButton5.Enabled:=false;
DateTimePicker2.Enabled:=false;
DBEdit1.Enabled:=false;
DateTimePicker1.Enabled:=false;
 FPret.ADOQuery1.Active:=false;
 FPret.ADOQuery1.Active:=true;
end;




procedure TFPret.Button2Click(Sender: TObject);
begin
DateTimePicker1.Enabled:=true;
dm.TPret.Edit;
SpeedButton7.Enabled:=true;
end;

procedure TFPret.T2exbChange(Sender: TObject);
begin
if T2exb.Text = '' then
dm.TPret.Filtered := false
else
begin
dm.TPret.Filtered := false;
dm.TPret.Filter := 'Code_Exmplr'+' LIKE '+ quotedstr(T2exb.Text+'%');
dm.TPret.Filtered := true;
end;
end;

procedure TFPret.FormActivate(Sender: TObject);
begin
DateTimePicker1.Time:=now;
DateTimePicker2.Time:=now;
DateTimePicker1.Date:=now;
DateTimePicker2.Date:=now;
end;

procedure TFPret.Image1Click(Sender: TObject);
begin
FPret.frxReport1.LoadFromFile('Reçu de pret.fr3');
FPret.frxReport1.ShowReport;
end;

procedure TFPret.RadioButton1Click(Sender: TObject);
begin
if RadioButton1.Checked=true then begin
DBGrid1.DataSource:=DataSource1;
ADOQuery1.Active:=false;
 ADOQuery1.SQL.Text := 'SELECT * FROM Pret WHERE Date_Retour IS NULL';
ADOQuery1.Active:=true;
end;
end;

procedure TFPret.RadioButton2Click(Sender: TObject);
begin
if RadioButton2.Checked=true then begin
DBGrid1.DataSource:=DataSource1;
ADOQuery1.Active:=false;
 ADOQuery1.SQL.Text := 'SELECT * FROM Pret WHERE Date_Retour IS NOT NULL';
ADOQuery1.Active:=true;
end;
end;

procedure TFPret.RadioButton3Click(Sender: TObject);
begin
if RadioButton3.Checked=true then begin
DBGrid1.DataSource:=DM.DSPret;
end;
end;

procedure TFPret.SpeedButton1Click(Sender: TObject);
begin
FPret.Close;
end;

procedure TFPret.SpeedButton2Click(Sender: TObject);
begin
FRech.show;
end;

procedure TFPret.SpeedButton3Click(Sender: TObject);
begin
Adhr.show;
end;

procedure TFPret.SpeedButton4Click(Sender: TObject);
begin
FQR.show;
fqr.edit2.Text:='b';
ShellExecute(0, 'open', 'BarcodeServer.exe', nil, nil, SW_SHOWNORMAL);
end;

procedure TFPret.SpeedButton5Click(Sender: TObject);
begin
FQR.show;
fqr.edit2.Text:='a';
ShellExecute(0, 'open', 'BarcodeServer.exe', nil, nil, SW_SHOWNORMAL);

end;


procedure TFPret.SpeedButton6Click(Sender: TObject);
begin
 ouv.show;
end;

procedure TFPret.SpeedButton7Click(Sender: TObject);
begin
dm.TPret.FieldByName('Date_Retour').Value:=DateTimePicker1.Datetime;
 dm.TPret.Post;
 SpeedButton7.Enabled:=false;
 DateTimePicker1.Enabled:=false;
 dm.ADOConnection1.Connected:=false;
  dm.ADOConnection1.Connected:=true;
end;

end.

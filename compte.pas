unit compte;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.Imaging.jpeg, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    Utilisateur: TLabel;
    ComboBox1: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Image2: TImage;
    DBGrid1: TDBGrid;
    Edit2: TEdit;
    Edit3: TEdit;
    DBEdit1: TDBEdit;
    Edit4: TEdit;
    Panel1: TPanel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    r:integer;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
         uses udm, UMenu, war, Unit5;
{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
k:string;
d:string;
n:string;
p:integer;
begin
 k:=edit1.text;
Dm.tcompt.First;
while not(dm.tcompt.eof) do
begin
  if k=DM.tcompt.fieldvalues['username']  then
  begin
     d:='ds';
     edit4.Text:='l';
    break;
    end
    else
    Dm.tcompt.next;
end;
  Edit3.Text:=d;
 if edit2.text=dbedit1.Text then  begin
                                  edit4.Text:='zara'+d;
                                   r:=0;
                                   end;

 if edit4.Text='zarads' then Form2.show;
 if edit3.Text='' then  begin
                       showmessage('se compte ne pas exist') ;
                       n:='d';
                       edit4.Text:=n;
                        r:=r+1;
                        end;
 if edit4.Text='l' then begin
                       showmessage('eror password');
                         r:=r+1;
                        end;
if r=1 then p:=3;
if r=2 then p:=2;
if r=3 then p:=1;

if (r>0)and (r<=3) then  showmessage('Il reste '+inttostr(p)+' tentatives');
if r>=4 then begin
             Form1.Close;
             Fatt.show;
             end;



end;
procedure TForm1.Button2Click(Sender: TObject);
begin
Form5.show;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  if MessageDlg('Êtes-vous sûr de vouloir quitter?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
    application.Terminate;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
application.Minimize;
end;

end.

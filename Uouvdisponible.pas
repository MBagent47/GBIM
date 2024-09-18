unit Uouvdisponible;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls;

type
  TFouvdisponible = class(TForm)
    DBGrid1: TDBGrid;
    T1e: TEdit;
    T1: TLabel;
    T2e: TEdit;
    T2: TLabel;
    T3: TLabel;
    T3e: TEdit;
    CB1: TComboBox;
    procedure T1eChange(Sender: TObject);
    procedure CB1Change(Sender: TObject);
    procedure T2eChange(Sender: TObject);
    procedure T3eChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fouvdisponible: TFouvdisponible;

implementation
      USES UDM;
{$R *.dfm}

procedure TFouvdisponible.CB1Change(Sender: TObject);
begin
if CB1.ItemIndex=0 then begin
                        T1e.Enabled:=true;
                        T1e.Visible:=true;
                        T1.Enabled:=true;
                        T1.Visible:=true;

                        T2e.Enabled:=false;
                        T2e.Visible:=false;
                        T2.Enabled:=false;
                        T2.Visible:=false;

                        T3e.Enabled:=false;
                        T3e.Visible:=false;
                        T3.Enabled:=false;
                        T3.Visible:=false;
                        end;

if CB1.ItemIndex=1 then begin
                        T1e.Enabled:=false;
                        T1e.Visible:=false;
                        T1.Enabled:=false;
                        T1.Visible:=false;

                        T2e.Enabled:=true;
                        T2e.Visible:=true;
                        T2.Enabled:=true;
                        T2.Visible:=true;

                        T3e.Enabled:=false;
                        T3e.Visible:=false;
                        T3.Enabled:=false;
                        T3.Visible:=false;
                        end;

if CB1.ItemIndex=2 then begin
                        T1e.Enabled:=false;
                        T1e.Visible:=false;
                        T1.Enabled:=false;
                        T1.Visible:=false;

                        T2e.Enabled:=false;
                        T2e.Visible:=false;
                        T2.Enabled:=false;
                        T2.Visible:=false;

                        T3e.Enabled:=true;
                        T3e.Visible:=true;
                        T3.Enabled:=true;
                        T3.Visible:=true;
                        end;
end;

procedure TFouvdisponible.T1eChange(Sender: TObject);
begin
if T1e.Text='' then  dm.Tvieouvdisponible.Filtered:=false
 else begin
dm.Tvieouvdisponible.Filtered:=false;
dm.Tvieouvdisponible.Filter :='Titre'+' LIKE '+ quotedstr(T1e.Text+'%');
dm.Tvieouvdisponible.Filtered:=true;
 end;
end;

procedure TFouvdisponible.T2eChange(Sender: TObject);
begin
  if T2e.Text='' then  dm.Tvieouvdisponible.Filtered:=false
 else begin
dm.Tvieouvdisponible.Filtered:=false;
dm.Tvieouvdisponible.Filter :='spec_ouv'+' LIKE '+ quotedstr(T2e.Text+'%');
dm.Tvieouvdisponible.Filtered:=true;
 end;
end;

procedure TFouvdisponible.T3eChange(Sender: TObject);
var
  AneeEdValue: Integer;
begin
  // Check if the entered value is a valid integer
  if TryStrToInt( T3e.Text, AneeEdValue) then
  begin
    // Clear any existing filter
    dm.Tvieouvdisponible.Filtered := False;

    // Apply a new filter based on the Anee_ed column
    dm.Tvieouvdisponible.Filter := 'Anee_ed = ' + IntToStr(AneeEdValue);
    dm.Tvieouvdisponible.Filtered := True;
  end
  else
  begin
    // Handle the case where the entered value is not a valid integer
    ShowMessage('Please enter a valid integer for Anee_ed.');
  end;
end;


end.

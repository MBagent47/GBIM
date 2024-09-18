unit Uexmplr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls;

type
  TFexmplr = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Panel4: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBLookupComboBox3: TDBLookupComboBox;



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fexmplr: TFexmplr;

implementation
        uses udm;
{$R *.dfm}





end.

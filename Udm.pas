unit Udm;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDM = class(TDataModule)
    ADOConnection1: TADOConnection;
    Tadhr: TADOTable;
    DSadhr: TDataSource;
    Tsanc: TADOTable;
    Tauteur: TADOTable;
    Tedition: TADOTable;
    TEcrire: TADOTable;
    Touvrage: TADOTable;
    TExmplr: TADOTable;
    TPret: TADOTable;
    DSsanc: TDataSource;
    DSauteur: TDataSource;
    DSedition: TDataSource;
    DSPret: TDataSource;
    DSExmplr: TDataSource;
    DSouvrage: TDataSource;
    DSEcrire: TDataSource;
    tcompt: TADOTable;
    DScompt: TDataSource;
    tcomptnum_compt: TAutoIncField;
    tcomptusername: TWideStringField;
    tcomptpasseword: TWideStringField;
    tcomptaRole: TWideStringField;
    TRechrche_pret: TADOTable;
    DSrechPr: TDataSource;
    TvieSanc: TADOTable;
    DSvieSanc: TDataSource;
    Tvieouvdisponible: TADOTable;
    DSvieouvdisponible: TDataSource;
    tvAdhr: TADOTable;
    DS_adhr: TDataSource;
    TEcrireref: TAutoIncField;
    TEcrireCode_Auteur: TIntegerField;
    TEcrireCode_Ouv: TWideStringField;
    TouvrageCode_Ouv_Raf: TWideStringField;
    TouvrageCode_Ouv_Seq: TAutoIncField;
    TouvrageCode_Ouv_Book: TIntegerField;
    TouvrageCode_Ouv: TWideStringField;
    TouvrageTitre: TWideStringField;
    Touvragespec_ouv: TWideStringField;
    TouvrageType_ouv: TWideStringField;
    TouvrageCode_Edition: TIntegerField;
    TouvrageAnee_ed: TIntegerField;
    ADOCommand1: TADOCommand;
    TPretNum_adh: TWideStringField;
    TPretCode_Exmplr: TWideStringField;
    TPretDate_Emprt: TDateTimeField;
    TPretduree: TIntegerField;
    TPretDate_Retour: TDateTimeField;
    TPretDate_prvu: TDateTimeField;
    TvieSancNum_adh: TWideStringField;
    TvieSancNom_adh: TWideStringField;
    TvieSancPrenom_adh: TWideStringField;
    TvieSancNum_sanc: TIntegerField;
    TvieSancCause_sanc: TWideStringField;
    TvieSancType_sanc: TWideStringField;
    TvieSancDate_deb_sanc: TDateTimeField;
    TvieSancDate_fin_sanc: TDateTimeField;
    TvieSancFull_Name: TWideStringField;
    TExmplrCode_Ouv: TWideStringField;
    TExmplrCode_Exmplr_Seq: TAutoIncField;
    TExmplrCode_Exmplr: TWideStringField;
    TExmplrEtat_Exmplr: TWideStringField;
    TExmplrdisp: TWideStringField;
    TadhrNum_adh: TWideStringField;
    TadhrNom_adh: TWideStringField;
    TadhrPrenom_adh: TWideStringField;
    TadhrLieu_nais: TWideStringField;
    TadhrPhoto: TBlobField;
    TadhrTel: TWideStringField;
    Tadhrspec_adh: TWideStringField;
    TadhrAdresse: TWideStringField;
    TsancNum_sanc: TAutoIncField;
    TsancCause_sanc: TWideStringField;
    TsancType_sanc: TWideStringField;
    TsancDate_deb_sanc: TDateTimeField;
    TsancDate_fin_sanc: TDateTimeField;
    TsancNum_adh: TWideStringField;
    TeditionCode_Edition: TIntegerField;
    TeditionNom_ed: TWideStringField;
    TadhrDate_nais: TDateField;
    TauteurCode_Auteur: TIntegerField;
    TauteurNom_Auteur: TWideStringField;
    TauteurPrenom_Auteur: TWideStringField;
    TauteurFull_nameA: TWideStringField;
    procedure ADOConnection1AfterConnect(Sender: TObject);
    procedure ADOConnection1AfterDisconnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation
uses UPret, Ucrouv;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.ADOConnection1AfterConnect(Sender: TObject);
begin
dm.Tadhr.Active:=true;
dm.Tsanc.Active:=true ;
dm.Tauteur.Active:=true ;
dm.Tedition.Active:=true;
dm.TPret.Active:=true   ;
dm.TExmplr.Active:=true ;
dm.Touvrage.Active:=true;
dm.TEcrire.Active:=true;
dm.tcompt.Active:=true;
dm.TvieSanc.Active:=true;
dm.Tvieouvdisponible.Active:=true;
dm.TRechrche_pret.Active:=true;
dm.tvAdhr.Active:=true;
FPret.ADOQuery1.Active:=true;
Fcr_ouv.ADOTable1xd.Active:=true;
end;

procedure TDM.ADOConnection1AfterDisconnect(Sender: TObject);
begin
dm.Tadhr.Active:=false;
dm.Tsanc.Active:=false;
dm.Tauteur.Active:=false ;
dm.Tedition.Active:=false;
dm.TPret.Active:=false ;
dm.TExmplr.Active:=false ;
dm.Touvrage.Active:=false;
dm.TEcrire.Active:=false;
dm.tcompt.Active:=false;
dm.TvieSanc.Active:=false;
dm.Tvieouvdisponible.Active:=false;
dm.TRechrche_pret.Active:=false;
dm.tvAdhr.Active:=false;
FPret.ADOQuery1.Active:=false;
Fcr_ouv.ADOTable1xd.Active:=false;
end;

end.

program Gestion_bibliothèque;

uses
  Vcl.Forms,
  compte in 'compte.pas' {Form1},
  UMenu in 'UMenu.pas' {Form2},
  Uadhr in 'Uadhr.pas' {Adhr},
  Udm in 'Udm.pas' {DM: TDataModule},
  Usanc in 'Usanc.pas' {Sanc},
  Uauteur in 'Uauteur.pas' {Fnewauteur},
  Uouv in 'Uouv.pas' {ouv},
  Uedition in 'Uedition.pas' {Fedition},
  UPret in 'UPret.pas' {FPret},
  Uconect in 'Uconect.pas' {Form3},
  Uloding in 'Uloding.pas' {Loding},
  war in 'war.pas' {Fatt},
  URech in 'URech.pas' {FRech},
  Uxmplr in 'Uxmplr.pas' {Fxmplr},
  Uouvdisponible in 'Uouvdisponible.pas' {Fouvdisponible},
  Uviewsanc in 'Uviewsanc.pas' {FvieSanc},
  Usetting in 'Usetting.pas' {Form4},
  Udomine in 'Udomine.pas' {domine},
  UChoisirauteurs in 'UChoisirauteurs.pas' {FChoisirauteurs},
  UAdhr1 in 'UAdhr1.pas' {Adhr1},
  Uqr in 'Uqr.pas' {FQR},
  Ucrouv in 'Ucrouv.pas' {Fcr_ouv},
  Unit5 in 'Unit5.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TLoding, Loding);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TAdhr, Adhr);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TSanc, Sanc);
  Application.CreateForm(TFnewauteur, Fnewauteur);
  Application.CreateForm(Touv, ouv);
  Application.CreateForm(TFedition, Fedition);
  Application.CreateForm(TFPret, FPret);
  Application.CreateForm(TFatt, Fatt);
  Application.CreateForm(TFRech, FRech);
  Application.CreateForm(TFxmplr, Fxmplr);
  Application.CreateForm(TFouvdisponible, Fouvdisponible);
  Application.CreateForm(TFvieSanc, FvieSanc);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(Tdomine, domine);
  Application.CreateForm(TFChoisirauteurs, FChoisirauteurs);
  Application.CreateForm(TAdhr1, Adhr1);
  Application.CreateForm(TFQR, FQR);
  Application.CreateForm(TFcr_ouv, Fcr_ouv);
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.

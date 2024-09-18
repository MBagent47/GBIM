object DM: TDM
  OldCreateOrder = False
  Height = 529
  Width = 575
  object ADOConnection1: TADOConnection
    LoginPrompt = False
    Provider = 'SQLNCLI11.1'
    AfterConnect = ADOConnection1AfterConnect
    AfterDisconnect = ADOConnection1AfterDisconnect
    Left = 240
    Top = 48
  end
  object Tadhr: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Adherent'
    Left = 16
    Top = 152
    object TadhrNum_adh: TWideStringField
      FieldName = 'Num_adh'
      Size = 8
    end
    object TadhrNom_adh: TWideStringField
      FieldName = 'Nom_adh'
      Size = 25
    end
    object TadhrPrenom_adh: TWideStringField
      FieldName = 'Prenom_adh'
      Size = 25
    end
    object TadhrLieu_nais: TWideStringField
      FieldName = 'Lieu_nais'
      Size = 35
    end
    object TadhrPhoto: TBlobField
      FieldName = 'Photo'
    end
    object TadhrTel: TWideStringField
      FieldName = 'Tel'
      Size = 30
    end
    object Tadhrspec_adh: TWideStringField
      FieldName = 'spec_adh'
      Size = 15
    end
    object TadhrAdresse: TWideStringField
      FieldName = 'Adresse'
      Size = 35
    end
    object TadhrDate_nais: TDateField
      FieldName = 'Date_nais'
    end
  end
  object DSadhr: TDataSource
    DataSet = Tadhr
    Left = 16
    Top = 232
  end
  object Tsanc: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Sanction'
    Left = 64
    Top = 152
    object TsancNum_sanc: TAutoIncField
      FieldName = 'Num_sanc'
      ReadOnly = True
    end
    object TsancCause_sanc: TWideStringField
      FieldName = 'Cause_sanc'
      Size = 35
    end
    object TsancType_sanc: TWideStringField
      FieldName = 'Type_sanc'
      Size = 35
    end
    object TsancDate_deb_sanc: TDateTimeField
      FieldName = 'Date_deb_sanc'
    end
    object TsancDate_fin_sanc: TDateTimeField
      FieldName = 'Date_fin_sanc'
    end
    object TsancNum_adh: TWideStringField
      FieldName = 'Num_adh'
      Size = 8
    end
  end
  object Tauteur: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Auteur'
    Left = 112
    Top = 152
    object TauteurCode_Auteur: TIntegerField
      FieldName = 'Code_Auteur'
    end
    object TauteurNom_Auteur: TWideStringField
      FieldName = 'Nom_Auteur'
    end
    object TauteurPrenom_Auteur: TWideStringField
      FieldName = 'Prenom_Auteur'
    end
    object TauteurFull_nameA: TWideStringField
      FieldName = 'Full_nameA'
      ReadOnly = True
      Size = 40
    end
  end
  object Tedition: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Edition'
    Left = 160
    Top = 152
    object TeditionCode_Edition: TIntegerField
      FieldName = 'Code_Edition'
    end
    object TeditionNom_ed: TWideStringField
      FieldName = 'Nom_ed'
      Size = 15
    end
  end
  object TEcrire: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'Code_Ouv'
    MasterFields = 'Code_Ouv'
    MasterSource = DSouvrage
    TableName = 'Ecrire'
    Left = 512
    Top = 152
    object TEcrireref: TAutoIncField
      FieldName = 'ref'
      ReadOnly = True
    end
    object TEcrireCode_Auteur: TIntegerField
      FieldName = 'Code_Auteur'
    end
    object TEcrireCode_Ouv: TWideStringField
      FieldName = 'Code_Ouv'
      Size = 10
    end
  end
  object Touvrage: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Ouvrage'
    Left = 456
    Top = 152
    object TouvrageCode_Ouv_Raf: TWideStringField
      FieldName = 'Code_Ouv_Raf'
      Size = 2
    end
    object TouvrageCode_Ouv_Seq: TAutoIncField
      FieldName = 'Code_Ouv_Seq'
      ReadOnly = True
    end
    object TouvrageCode_Ouv_Book: TIntegerField
      FieldName = 'Code_Ouv_Book'
    end
    object TouvrageCode_Ouv: TWideStringField
      FieldName = 'Code_Ouv'
      ReadOnly = True
      Size = 11
    end
    object TouvrageTitre: TWideStringField
      FieldName = 'Titre'
    end
    object Touvragespec_ouv: TWideStringField
      FieldName = 'spec_ouv'
      Size = 15
    end
    object TouvrageType_ouv: TWideStringField
      FieldName = 'Type_ouv'
      Size = 10
    end
    object TouvrageCode_Edition: TIntegerField
      FieldName = 'Code_Edition'
    end
    object TouvrageAnee_ed: TIntegerField
      FieldName = 'Anee_ed'
    end
  end
  object TExmplr: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'Code_Ouv'
    MasterFields = 'Code_Ouv'
    MasterSource = DSouvrage
    TableName = 'Exemplair'
    Left = 400
    Top = 152
    object TExmplrCode_Ouv: TWideStringField
      FieldName = 'Code_Ouv'
      Size = 11
    end
    object TExmplrCode_Exmplr_Seq: TAutoIncField
      FieldName = 'Code_Exmplr_Seq'
      ReadOnly = True
    end
    object TExmplrCode_Exmplr: TWideStringField
      FieldName = 'Code_Exmplr'
      ReadOnly = True
      Size = 15
    end
    object TExmplrEtat_Exmplr: TWideStringField
      FieldName = 'Etat_Exmplr'
      Size = 15
    end
    object TExmplrdisp: TWideStringField
      FieldName = 'disp'
      Size = 2
    end
  end
  object TPret: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'Code_Exmplr'
    TableName = 'Pret'
    Left = 344
    Top = 152
    object TPretNum_adh: TWideStringField
      FieldName = 'Num_adh'
      Size = 8
    end
    object TPretCode_Exmplr: TWideStringField
      FieldName = 'Code_Exmplr'
      Size = 15
    end
    object TPretDate_Emprt: TDateTimeField
      FieldName = 'Date_Emprt'
    end
    object TPretduree: TIntegerField
      FieldName = 'duree'
    end
    object TPretDate_Retour: TDateTimeField
      FieldName = 'Date_Retour'
    end
    object TPretDate_prvu: TDateTimeField
      FieldName = 'Date_prvu'
      ReadOnly = True
    end
  end
  object DSsanc: TDataSource
    DataSet = Tsanc
    Left = 64
    Top = 232
  end
  object DSauteur: TDataSource
    DataSet = Tauteur
    Left = 112
    Top = 232
  end
  object DSedition: TDataSource
    DataSet = Tedition
    Left = 160
    Top = 232
  end
  object DSPret: TDataSource
    DataSet = TPret
    Left = 352
    Top = 224
  end
  object DSExmplr: TDataSource
    DataSet = TExmplr
    Left = 400
    Top = 224
  end
  object DSouvrage: TDataSource
    DataSet = Touvrage
    Left = 456
    Top = 224
  end
  object DSEcrire: TDataSource
    DataSet = TEcrire
    Left = 512
    Top = 224
  end
  object tcompt: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'compts'
    Left = 248
    Top = 160
    object tcomptnum_compt: TAutoIncField
      FieldName = 'num_compt'
      ReadOnly = True
    end
    object tcomptusername: TWideStringField
      FieldName = 'username'
      Size = 15
    end
    object tcomptpasseword: TWideStringField
      FieldName = 'passeword'
      Size = 8
    end
    object tcomptaRole: TWideStringField
      FieldName = 'aRole'
      Size = 15
    end
  end
  object DScompt: TDataSource
    DataSet = tcompt
    Left = 248
    Top = 224
  end
  object TRechrche_pret: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'my_combined_view1'
    Left = 64
    Top = 304
  end
  object DSrechPr: TDataSource
    DataSet = TRechrche_pret
    Left = 24
    Top = 304
  end
  object TvieSanc: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'vieSanc'
    Left = 304
    Top = 344
    object TvieSancNum_adh: TWideStringField
      FieldName = 'Num_adh'
      Size = 8
    end
    object TvieSancNom_adh: TWideStringField
      FieldName = 'Nom_adh'
      Size = 25
    end
    object TvieSancPrenom_adh: TWideStringField
      FieldName = 'Prenom_adh'
      Size = 25
    end
    object TvieSancNum_sanc: TIntegerField
      FieldName = 'Num_sanc'
    end
    object TvieSancCause_sanc: TWideStringField
      FieldName = 'Cause_sanc'
      Size = 35
    end
    object TvieSancType_sanc: TWideStringField
      FieldName = 'Type_sanc'
      Size = 35
    end
    object TvieSancDate_deb_sanc: TDateTimeField
      FieldName = 'Date_deb_sanc'
    end
    object TvieSancDate_fin_sanc: TDateTimeField
      FieldName = 'Date_fin_sanc'
    end
    object TvieSancFull_Name: TWideStringField
      FieldName = 'Full_Name'
      ReadOnly = True
      Size = 51
    end
  end
  object DSvieSanc: TDataSource
    DataSet = TvieSanc
    Left = 312
    Top = 416
  end
  object Tvieouvdisponible: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'Code_Ouv'
    MasterFields = 'Code_Ouv'
    MasterSource = DSouvrage
    TableName = 'vieouvdisponible'
    Left = 384
    Top = 352
  end
  object DSvieouvdisponible: TDataSource
    DataSet = Tvieouvdisponible
    Left = 392
    Top = 424
  end
  object tvAdhr: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'vAdhr'
    Left = 216
    Top = 296
  end
  object DS_adhr: TDataSource
    DataSet = tvAdhr
    Left = 216
    Top = 360
  end
  object ADOCommand1: TADOCommand
    CommandText = 'DBCC CHECKIDENT ('#39#39'Exemplair'#39#39', RESEED, 0)'
    Connection = ADOConnection1
    Parameters = <>
    Left = 104
    Top = 408
  end
end

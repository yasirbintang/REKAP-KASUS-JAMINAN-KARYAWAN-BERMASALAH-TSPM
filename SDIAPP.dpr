program Sdiapp;

uses
  Forms,
  SDIMAIN in 'SDIMAIN.PAS' {SDIAppForm},
  About in 'ABOUT.PAS' {AboutBox},
  UfrmDaftarKasus in 'UfrmDaftarKasus.pas' {frmDaftarKasus};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TSDIAppForm, SDIAppForm);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.CreateForm(TfrmDaftarKasus, frmDaftarKasus);
  Application.Run;
end.
 

program Samples;

uses
  Vcl.Forms,
  FormPrincipal in 'src\FormPrincipal.pas' {frmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  AApplication.CreateForm(TfrmPrincipal, frmPrincipal);
  pplication.Run;
end.

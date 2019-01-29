program ProjectDeliveryMan;

uses
  Vcl.Forms,
  DeliveryManForm in 'DeliveryManForm.pas' {frmDeliveryMan},
  ClientClass in 'ClientClass.pas',
  CommonFunctions in 'CommonFunctions.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmDeliveryMan, frmDeliveryMan);
  Application.Run;
end.

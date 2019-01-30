program ProjectDeliveryMan;

uses
  Vcl.Forms,
  DeliveryManForm in 'DeliveryManForm.pas' {frmDeliveryMan},
  ClientClass in 'ClientClass.pas',
  CommonFunctions in 'CommonFunctions.pas',
  DataModuleDeliveryMan in 'DataModuleDeliveryMan.pas' {dmDeliveryMan: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmDeliveryMan, frmDeliveryMan);
  Application.CreateForm(TdmDeliveryMan, dmDeliveryMan);
  Application.Run;
end.

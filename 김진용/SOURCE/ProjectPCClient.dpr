program ProjectPCClient;

uses
  Vcl.Forms,
  DeliveryManForm in 'DeliveryManForm.pas' {frmDeliveryMan},
  ClientClass in 'ClientClass.pas',
  CommonFunctions in 'CommonFunctions.pas',
  DataModulePcClient in 'DataModulePcClient.pas' {dmPcClient: TDataModule},
  InsertMenuForm in 'InsertMenuForm.pas' {frmInsertMenu},
  CustomerForm in 'CustomerForm.pas' {frmCustomer},
  OrderMenuForm in 'OrderMenuForm.pas' {frmOrderMenu};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmPcClient, dmPcClient);
  Application.CreateForm(TfrmOrderMenu, frmOrderMenu);
  Application.Run;
end.

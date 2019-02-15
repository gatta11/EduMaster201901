program ProjectPCClient;

uses
  Vcl.Forms,
  DeliveryManForm in 'DeliveryManForm.pas' {frmDeliveryMan},
  ClientClass in 'ClientClass.pas',
  CommonFunctions in 'CommonFunctions.pas',
  DataModulePcClient in 'DataModulePcClient.pas' {dmPcClient: TDataModule},
  InsertMenuForm in 'InsertMenuForm.pas' {frmInsertMenu},
  CustomerForm in 'CustomerForm.pas' {frmCustomer},
  OrderMenuForm in 'OrderMenuForm.pas' {frmOrderMenu},
  OrderForm in 'OrderForm.pas' {frmOrder},
  FindCustomerForm in 'FindCustomerForm.pas' {frmFindCustomer},
  PcClientMainForm in 'PcClientMainForm.pas' {MainForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmPcClient, dmPcClient);
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.

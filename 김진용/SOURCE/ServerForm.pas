unit ServerForm;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Buttons, JSON;

type
  TfrmServer = class(TForm)
    Label1: TLabel;
    btnSend: TSpeedButton;
    mm1: TMemo;
    procedure btnSendClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmServer: TfrmServer;

implementation

{$R *.dfm}

uses ServerMethodsUnit1, ServerContainerUnit1;

procedure TfrmServer.btnSendClick(Sender: TObject);
var
  Value : TJSONString;

begin
  //ServerMethods.gogogo;
  Value := TJSONSTring.Create(datetimetostr(now));
  ServerContainer1.DSServer1.BroadcastMessage('local', Value) ;
end;

end.


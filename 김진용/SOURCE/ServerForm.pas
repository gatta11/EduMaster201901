unit ServerForm;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Buttons, JSON, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmServer = class(TForm)
    Label1: TLabel;
    btnSend: TSpeedButton;
    Image1: TImage;
    procedure btnSendClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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

procedure TfrmServer.Button1Click(Sender: TObject);
begin
  ServerMethods.MatchDeliMan(123,5);
end;

procedure TfrmServer.Button2Click(Sender: TObject);
begin
  ServerMethods.FindDeliVeryMan(123);

end;

end.


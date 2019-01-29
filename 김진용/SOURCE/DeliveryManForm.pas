unit DeliveryManForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Datasnap.DBClient, Data.DBXDataSnap, Data.DBXCommon, IPPeerClient,
  Data.SqlExpr, Datasnap.DSConnect, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls;

type
  TfrmDeliveryMan = class(TForm)
    dtsDeliveryMan: TClientDataSet;
    DBGrid1: TDBGrid;
    SQLConnection1: TSQLConnection;
    DSProviderConnection1: TDSProviderConnection;
    dtsDeliveryManDELI_MAN_NM: TWideStringField;
    dtsDeliveryManDELI_MAN_SEX: TIntegerField;
    dtsDeliveryManDELI_MAN_AGE: TIntegerField;
    dtsDeliveryManDELI_MAN_PHONE: TWideStringField;
    dtsDeliveryManDELI_MAN_OFFICE: TWideStringField;
    dtsDeliveryManDELI_MAN_ADDR: TWideStringField;
    dtsDeliveryManDELI_MAN_DELICOUNT: TIntegerField;
    dtsDeliveryManDELI_MAN_ST: TWideStringField;
    dtsDeliveryManDELI_MAN_CMT: TWideStringField;
    dsDeliveryMan: TDataSource;
    edtName: TDBEdit;
    Label1: TLabel;
    edtAge: TDBEdit;
    Label2: TLabel;
    edtPhone: TDBEdit;
    Label3: TLabel;
    RadioGroup1: TRadioGroup;
    edtOffice: TDBEdit;
    Label4: TLabel;
    dtsDeliveryManDELI_MAN_SEQ: TIntegerField;
    dtsDeliveryManDELI_MAN_DNTIME: TWideStringField;
    dtsDeliveryManDELI_MAN_DLTIME: TWideStringField;
    DBNavigator1: TDBNavigator;
    edtAddress: TDBEdit;
    Label5: TLabel;
    edtCount: TDBEdit;
    Label6: TLabel;
    edtClosing: TDBEdit;
    Label7: TLabel;
    edtBebt: TDBEdit;
    Label8: TLabel;
    edtId: TDBEdit;
    Label9: TLabel;
    GroupBox1: TGroupBox;
    btnLoadImage: TButton;
    imgDeliveryMan: TImage;
    OpenDialog1: TOpenDialog;
    DBEdit1: TDBEdit;
    Label10: TLabel;
    btnInsert: TButton;
    btnEdit: TButton;
    btnDelete: TButton;
    btnNew: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDeliveryMan: TfrmDeliveryMan;

implementation

{$R *.dfm}

uses ClientClass;

var
  Client : TServerMethods1Client;

procedure TfrmDeliveryMan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Client.Free;
end;

procedure TfrmDeliveryMan.FormCreate(Sender: TObject);
begin
 // Client := TServerMethods1Client.Create(SqlConnection1, TDBXConnection);
end;

end.

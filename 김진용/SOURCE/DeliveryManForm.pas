unit DeliveryManForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,System.Math,
  Datasnap.DBClient, Data.DBXDataSnap, Data.DBXCommon, IPPeerClient,
  Data.SqlExpr, Datasnap.DSConnect, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls;

type
  TfrmDeliveryMan = class(TForm)
    DBGrid1: TDBGrid;
    edtName: TDBEdit;
    Label1: TLabel;
    edtAge: TDBEdit;
    Label2: TLabel;
    edtPhone: TDBEdit;
    Label3: TLabel;
    edtOffice: TDBEdit;
    Label4: TLabel;
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
    Label10: TLabel;
    btnApply: TButton;
    btnDelete: TButton;
    btnNew: TButton;
    rgSex: TDBRadioGroup;
    DBEdit2: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit3: TDBEdit;
    btnUpdate: TButton;
    btnCancel: TButton;
    btnDeleteImg: TButton;
    dsDeliveryMan: TDataSource;
    dlgLoadImage: TOpenDialog;
    cbDeliManState: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNewClick(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure dsDeliveryManStateChange(Sender: TObject);
    procedure edtNameExit(Sender: TObject);
    procedure btnLoadImageClick(Sender: TObject);
    procedure btnDeleteImgClick(Sender: TObject);
    procedure dsDeliveryManDataChange(Sender: TObject; Field: TField);
    procedure cbDeliManStateChange(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  frmDeliveryMan: TfrmDeliveryMan;
  oldMetrics: NONCLIENTMETRICS;


implementation

{$R *.dfm}

uses ClientClass, CommonFunctions, DataModulePcClient;

var
  Client : TServerMethods1Client;

procedure TfrmDeliveryMan.btnDeleteClick(Sender: TObject);
var
  Msg, ManName : string;
begin
  ManName := dmPcClient.dtsDeliveryManDELI_MAN_NM.AsString;
  Msg := Format('%s 기사님을 삭제 하시겠습니까?',[ManName]);

  if messagedlg(Msg, mtInformation, [mbYes, mbNO],0) = mrNO then
    exit;

  dmPcClient.dtsDeliveryMan.Delete;

  //type(dmPcClient.dtsDeliveryMan.State)
end;

procedure TfrmDeliveryMan.btnDeleteImgClick(Sender: TObject);
var
  Field : TField;
begin
  imgDeliveryMan.Picture.Assign(nil);

  Field := dmPcClient.dtsDeliveryMan.FieldByName('DELI_MAN_IMAGE');

  if dmPcClient.dtsDeliveryMan.State <> dsEdit then
    dmPcClient.dtsDeliveryMan.Edit;

  Field.Assign(nil);

end;

procedure TfrmDeliveryMan.btnLoadImageClick(Sender: TObject);
var
  Field : TField;
begin
  if dlgLoadImage.Execute then
    LoadImageFromFile(imgDeliveryMan, dlgLoadImage.Filename);

  Field := dmPcClient.dtsDeliveryMan.FieldByName('DELI_MAN_IMAGE');
  SaveImageToBlobField(ImgDeliveryMan, Field as TBlobField);
end;

procedure TfrmDeliveryMan.btnApplyClick(Sender: TObject);
begin
  dmPcClient.dtsDeliveryMan.Post;
  dmPcClient.dtsDeliveryMan.ApplyUpdates(-1);
  //dmPcClient.dtsDeliveryMan.Refresh;
end;

procedure TfrmDeliveryMan.btnNewClick(Sender: TObject);
begin
  dmPcClient.dtsDeliveryMan.Append;
  edtName.SetFocus;
  imgDeliveryMan.Picture.Assign(nil);
end;

procedure TfrmDeliveryMan.btnUpdateClick(Sender: TObject);
begin
  dmPcClient.dtsDeliveryMan.ApplyUpdates(-1);
  //dmPcClient.dtsDeliveryMan.Refresh;
end;

procedure TfrmDeliveryMan.cbDeliManStateChange(Sender: TObject);
begin
  if dmPcClient.dtsDeliveryMan.state <> dsEdit  then
    dmPcClient.dtsDeliveryMan.edit;

  case cbDeliManstate.ItemIndex of   //0: 미출근, 1:배송중,  2:배송대기
    0:dmPcClient.dtsDeliveryMan.FieldByName('DELI_MAN_ST').asinteger := 0;
    1:dmPcClient.dtsDeliveryMan.FieldByName('DELI_MAN_ST').asinteger := 1;
    2:dmPcClient.dtsDeliveryMan.FieldByName('DELI_MAN_ST').asinteger := 2;
  end;

end;

procedure TfrmDeliveryMan.btnCancelClick(Sender: TObject);
begin
  dmPcClient.dtsDeliveryMan.CancelUpdates;
end;

procedure TfrmDeliveryMan.dsDeliveryManDataChange(Sender: TObject;
  Field: TField);
var
  Lfield : TField;
  DeliState : integer;
begin
  if dmPcClient.dtsDeliveryMan.State <> dsBrowse then
    exit;

  Lfield := dmPcClient.dtsDeliveryMan.FieldByName('DELI_MAN_IMAGE');
  LoadImageFromBlobField(imgDeliveryMan, Lfield as TBlobField);

  DeliState := dmPcClient.dtsDeliveryMan.FieldByName('DELI_MAN_ST').asinteger;
  cbDeliManState.ItemIndex := DeliState;    //0: 미출근, 1:배송중,  2:배송대기

end;

procedure TfrmDeliveryMan.dsDeliveryManStateChange(Sender: TObject);
var
  State : TDataSetState;
begin

  State := dmPcClient.dtsDeliveryMan.State;

  btnApply.Enabled := (State <> dsBrowse); //State <> dsBrowse
  btnCancel.Enabled := (State <> dsBrowse);
  //btnUpdate.Enabled := (State <> dsBrowse);
  btnNew.Enabled := (State = dsBrowse); //<> dsEdit
  btnDelete.Enabled := (State = dsBrowse);

end;

procedure TfrmDeliveryMan.edtNameExit(Sender: TObject);
begin
  rgSex.SetFocus;
end;

procedure TfrmDeliveryMan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Client.Free;
end;

procedure TfrmDeliveryMan.FormCreate(Sender: TObject);
begin
 // Client := TServerMethods1Client.Create(SqlConnection1, TDBXConnection);

end;

end.

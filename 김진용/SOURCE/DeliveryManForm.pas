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
    DBEdit1: TDBEdit;
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

uses ClientClass, CommonFunctions, DataModuleDeliveryMan;

var
  Client : TServerMethods1Client;

procedure TfrmDeliveryMan.btnDeleteClick(Sender: TObject);
begin
  dmDeliveryMan.dtsDeliveryMan.Delete;
end;

procedure TfrmDeliveryMan.btnDeleteImgClick(Sender: TObject);
var
  Field : TField;
begin
  imgDeliveryMan.Picture.Assign(nil);

  Field := dmDeliveryMan.dtsDeliveryMan.FieldByName('DELI_MAN_IMAGE');

  if dmDeliveryMan.dtsDeliveryMan.State <> dsEdit then
    dmDeliveryMan.dtsDeliveryMan.Edit;

  Field.Assign(nil);

end;

procedure TfrmDeliveryMan.btnLoadImageClick(Sender: TObject);
var
  Field : TField;
begin
  if dlgLoadImage.Execute then
    LoadImageFromFile(imgDeliveryMan, dlgLoadImage.Filename);

  Field := dmDeliveryMan.dtsDeliveryMan.FieldByName('DELI_MAN_IMAGE');
  SaveImageToBlobField(ImgDeliveryMan, Field as TBlobField);
end;

procedure TfrmDeliveryMan.btnApplyClick(Sender: TObject);
begin
  dmDeliveryMan.dtsDeliveryMan.Post;
  dmDeliveryMan.dtsDeliveryMan.ApplyUpdates(-1);
  dmDeliveryMan.dtsDeliveryMan.Refresh;
end;

procedure TfrmDeliveryMan.btnNewClick(Sender: TObject);
begin
  dmDeliveryMan.dtsDeliveryMan.Append;
  edtName.SetFocus;
  imgDeliveryMan.Picture.Assign(nil);
end;

procedure TfrmDeliveryMan.btnUpdateClick(Sender: TObject);
begin
  dmDeliveryMan.dtsDeliveryMan.ApplyUpdates(-1);
  dmDeliveryMan.dtsDeliveryMan.Refresh;
end;

procedure TfrmDeliveryMan.btnCancelClick(Sender: TObject);
begin
  dmDeliveryMan.dtsDeliveryMan.CancelUpdates;
end;

procedure TfrmDeliveryMan.dsDeliveryManDataChange(Sender: TObject;
  Field: TField);
var
  Lfield : TField;
begin
  if dmDeliveryMan.dtsDeliveryMan.State <> dsBrowse then
    exit;

  Lfield := dmDeliveryMan.dtsDeliveryMan.FieldByName('DELI_MAN_IMAGE');
  LoadImageFromBlobField(imgDeliveryMan, Lfield as TBlobField);


end;

procedure TfrmDeliveryMan.dsDeliveryManStateChange(Sender: TObject);
var
  State : TDataSetState;
begin

  State := dmDeliveryMan.dtsDeliveryMan.State;

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
var
ps: tagSCROLLBARINFO;
begin
 // Client := TServerMethods1Client.Create(SqlConnection1, TDBXConnection);

end;

end.

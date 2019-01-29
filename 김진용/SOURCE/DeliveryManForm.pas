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
    edtOffice: TDBEdit;
    Label4: TLabel;
    dtsDeliveryManDELI_MAN_SEQ: TIntegerField;
    dtsDeliveryManDELI_MAN_DNTIME: TWideStringField;
    dtsDeliveryManDELI_MAN_DLTIME: TWideStringField;
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
    dlgLoadImage: TOpenDialog;
    DBEdit1: TDBEdit;
    Label10: TLabel;
    btnApply: TButton;
    btnDelete: TButton;
    btnNew: TButton;
    rgSex: TDBRadioGroup;
    dtsDeliveryManDELI_MAN_IMAGE: TWideMemoField;
    dtsDeliveryManDELI_MAN_ID: TWideStringField;
    dtsDeliveryManDELI_MAN_PASS: TWideStringField;
    dtsDeliveryManDELI_MAN_CLOSING: TIntegerField;
    dtsDeliveryManDELI_MAN_DEBT: TIntegerField;
    DBEdit2: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit3: TDBEdit;
    btnUpdate: TButton;
    btnCancel: TButton;
    dtsDeliveryManDELI_MAN_KORSEX: TStringField;
    btnDeleteImg: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNewClick(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure dtsDeliveryManCalcFields(DataSet: TDataSet);
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

implementation

{$R *.dfm}

uses ClientClass, CommonFunctions;

var
  Client : TServerMethods1Client;

procedure TfrmDeliveryMan.btnDeleteClick(Sender: TObject);
begin
  dtsDeliveryMan.Delete;
end;

procedure TfrmDeliveryMan.btnDeleteImgClick(Sender: TObject);
var
  Field : TField;
begin
  imgDeliveryMan.Assign(nil);

  Field := dtsDeliveryMan.FieldByName('DELI_MAN_IMAGE');

  if dtsDeliveryMan.State <> dsEdit then
    dtsDeliveryMan.Edit;

  Field.Assign(nil);

end;

procedure TfrmDeliveryMan.btnLoadImageClick(Sender: TObject);
var
  Field : TField;
begin
  if dlgLoadImage.Execute then
    LoadImageFromFile(imgDeliveryMan, dlgLoadImage.Filename);

  Field := dtsDeliveryMan.FieldByName('DELI_MAN_IMAGE');
  SaveImageToBlobField(ImgDeliveryMan, Field as TBlobField);
end;

procedure TfrmDeliveryMan.btnApplyClick(Sender: TObject);
begin
  dtsDeliveryMan.Post;
end;

procedure TfrmDeliveryMan.btnNewClick(Sender: TObject);
begin
  dtsDeliveryMan.Append;
  edtName.SetFocus;
end;

procedure TfrmDeliveryMan.btnUpdateClick(Sender: TObject);
begin
  dtsDeliveryMan.ApplyUpdates(-1);
  dtsDeliveryMan.Refresh;
end;

procedure TfrmDeliveryMan.btnCancelClick(Sender: TObject);
begin
  dtsDeliveryMan.CancelUpdates;
end;

procedure TfrmDeliveryMan.dsDeliveryManDataChange(Sender: TObject;
  Field: TField);
var
  Lfield : TField;
begin
  if dtsDeliveryMan.State <> dsBrowse then
    exit;

  Lfield := dtsDeliveryMan.FieldByName('DELI_MAN_IMAGE');
  LoadImageFromBlobField(imgDeliveryMan, Lfield as TBlobField);


end;

procedure TfrmDeliveryMan.dsDeliveryManStateChange(Sender: TObject);
var
  State : TDataSetState;
begin

  State := dtsDeliveryMan.State;

  btnApply.Enabled := (State <> dsBrowse); //State <> dsBrowse
  btnCancel.Enabled := (State <> dsBrowse);
  //btnUpdate.Enabled := (State <> dsBrowse);
  btnNew.Enabled := (State = dsBrowse); //<> dsEdit
  btnDelete.Enabled := (State = dsBrowse);

end;

procedure TfrmDeliveryMan.dtsDeliveryManCalcFields(DataSet: TDataSet);

begin
  if dtsDeliveryManDeli_Man_Sex.Asinteger = 0 then
    dtsDeliveryManDeli_Man_KorSex.AsString := '³²'
  else
    dtsDeliveryManDeli_Man_KorSex.AsString := '¿©';
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

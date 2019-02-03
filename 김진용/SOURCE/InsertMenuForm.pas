unit InsertMenuForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.DBCGrids;

type
  TfrmInsertMenu = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    edtName: TDBEdit;
    edtCookTime: TDBEdit;
    edtWaitTime: TDBEdit;
    edtComment: TDBEdit;
    edtPrice: TDBEdit;
    GroupBox1: TGroupBox;
    imgMenu: TImage;
    btnLoadImage: TButton;
    edtQuantity: TDBEdit;
    edtSeq: TDBEdit;
    btnUpdate: TButton;
    btnDeleteImg: TButton;
    dlgLoadImage: TOpenDialog;
    btnNew: TButton;
    btnDelete: TButton;
    btnApply: TButton;
    btnCancel: TButton;
    dsMenu: TDataSource;
    procedure btnLoadImageClick(Sender: TObject);
    procedure btnDeleteImgClick(Sender: TObject);
    procedure dsMenuDataChange(Sender: TObject; Field: TField);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure dsMenuStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInsertMenu: TfrmInsertMenu;

implementation

{$R *.dfm}

uses DataModulePcClient, CommonFunctions;

procedure TfrmInsertMenu.btnApplyClick(Sender: TObject);
begin
  dmPcClient.dtsMenu.Post;
  dmPcClient.dtsMenu.ApplyUpdates(-1);
end;

procedure TfrmInsertMenu.btnCancelClick(Sender: TObject);
begin
  dmPcClient.dtsMenu.CancelUpdates;
end;

procedure TfrmInsertMenu.btnDeleteClick(Sender: TObject);
var
  Msg, MenuName : string;
begin
  MenuName := dmPcClient.dtsMenuMenu_NM.AsString;
  Msg := Format('%s 메뉴를 삭제 하시겠습니까?',[MenuName]);

  if messagedlg(Msg, mtInformation, [mbYes, mbNO],0) = mrNO then
    exit;

  dmPcClient.dtsMenu.Delete;

end;

procedure TfrmInsertMenu.btnDeleteImgClick(Sender: TObject);
var
  Field : TField;
begin
  imgMenu.Picture.Assign(nil);

  Field := dmPcClient.dtsMenu.FieldByName('MENU_IMAGE');

  if dmPcClient.dtsMenu.State <> dsEdit then
    dmPcClient.dtsMenu.Edit;

  Field.Assign(nil);
end;

procedure TfrmInsertMenu.btnLoadImageClick(Sender: TObject);
var
  Field : TField;
begin
  if dlgLoadImage.Execute then
    LoadImageFromFile(imgMenu, dlgLoadImage.Filename);

  Field := dmPcClient.dtsMenu.FieldByName('MENU_IMAGE');
  SaveImageToBlobField(ImgMenu, Field as TBlobField);
end;

procedure TfrmInsertMenu.btnNewClick(Sender: TObject);
begin
  dmPcClient.dtsMenu.Append;
  edtName.SetFocus;
  imgMenu.Picture.Assign(nil);
end;

procedure TfrmInsertMenu.btnUpdateClick(Sender: TObject);
begin
  dmPcClient.dtsMenu.ApplyUpdates(-1);
end;

procedure TfrmInsertMenu.dsMenuDataChange(Sender: TObject; Field: TField);
var
  Lfield : TField;
begin
  if dmPcClient.dtsDeliveryMan.State <> dsBrowse then
    exit;

  Lfield := dmPcClient.dtsMenu.FieldByName('MENU_IMAGE');
  LoadImageFromBlobField(imgMENU, Lfield as TBlobField);
end;

procedure TfrmInsertMenu.dsMenuStateChange(Sender: TObject);
var
  State : TDataSetState;
begin

  State := dmPcClient.dtsMenu.State;

  btnApply.Enabled := (State <> dsBrowse); //State <> dsBrowse
  //btnCancel.Enabled := (State <> dsBrowse);
  //btnUpdate.Enabled := (State <> dsBrowse);
  btnNew.Enabled := (State = dsBrowse); //<> dsEdit
  btnDelete.Enabled := (State = dsBrowse);

end;

end.

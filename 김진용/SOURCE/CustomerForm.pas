unit CustomerForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids;

type
  TfrmCustomer = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    edtName: TDBEdit;
    edtPhone: TDBEdit;
    edtAddress: TDBEdit;
    edtCount: TDBEdit;
    edtTotal: TDBEdit;
    edtId: TDBEdit;
    btnApply: TButton;
    btnNew: TButton;
    edtPass: TDBEdit;
    edtSEQ: TDBEdit;
    btnUpdate: TButton;
    btnCancel: TButton;
    dsCustomer: TDataSource;
    grdCustomer: TDBGrid;
    cbDeliManState: TComboBox;
    edtRcntDate: TDBEdit;
    Label2: TLabel;
    edtRegDate: TDBEdit;
    Label4: TLabel;
    DBComboBox1: TDBComboBox;
    procedure btnNewClick(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCustomer: TfrmCustomer;

implementation

{$R *.dfm}

uses DataModulePcClient;

procedure TfrmCustomer.btnCancelClick(Sender: TObject);
begin
  dmPcClient.dtsCustomer.CancelUpdates;
end;

procedure TfrmCustomer.btnNewClick(Sender: TObject);
begin
  dmPcClient.dtsCustomer.Append;
  edtName.SetFocus;
end;

procedure TfrmCustomer.btnUpdateClick(Sender: TObject);
begin
  dmPcClient.dtsCustomer.ApplyUpdates(-1);
end;

end.

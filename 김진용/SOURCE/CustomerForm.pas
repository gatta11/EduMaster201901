unit CustomerForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBGrid1: TDBGrid;
    edtName: TDBEdit;
    edtAge: TDBEdit;
    edtPhone: TDBEdit;
    edtOffice: TDBEdit;
    edtAddress: TDBEdit;
    edtCount: TDBEdit;
    edtClosing: TDBEdit;
    edtBebt: TDBEdit;
    edtId: TDBEdit;
    btnLoadImage: TButton;
    btnApply: TButton;
    btnDelete: TButton;
    btnNew: TButton;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    btnUpdate: TButton;
    btnCancel: TButton;
    btnDeleteImg: TButton;
    cbDeliManState: TComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.

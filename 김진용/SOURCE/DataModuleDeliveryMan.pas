unit DataModuleDeliveryMan;

interface

uses
  System.SysUtils, System.Classes, Data.DBXDataSnap, Data.DBXCommon,
  IPPeerClient, Data.DB, Datasnap.DBClient, Vcl.Dialogs, Datasnap.DSConnect,
  Data.SqlExpr;

type
  TdmDeliveryMan = class(TDataModule)
    SQLConnection1: TSQLConnection;
    DSProviderConnection1: TDSProviderConnection;
    dtsDeliveryMan: TClientDataSet;
    dtsDeliveryManDELI_MAN_NM: TWideStringField;
    dtsDeliveryManDELI_MAN_SEX: TIntegerField;
    dtsDeliveryManDELI_MAN_AGE: TIntegerField;
    dtsDeliveryManDELI_MAN_PHONE: TWideStringField;
    dtsDeliveryManDELI_MAN_OFFICE: TWideStringField;
    dtsDeliveryManDELI_MAN_ADDR: TWideStringField;
    dtsDeliveryManDELI_MAN_DELICOUNT: TIntegerField;
    dtsDeliveryManDELI_MAN_ST: TWideStringField;
    dtsDeliveryManDELI_MAN_CMT: TWideStringField;
    dtsDeliveryManDELI_MAN_SEQ: TIntegerField;
    dtsDeliveryManDELI_MAN_DNTIME: TWideStringField;
    dtsDeliveryManDELI_MAN_DLTIME: TWideStringField;
    dtsDeliveryManDELI_MAN_IMAGE: TWideMemoField;
    dtsDeliveryManDELI_MAN_ID: TWideStringField;
    dtsDeliveryManDELI_MAN_PASS: TWideStringField;
    dtsDeliveryManDELI_MAN_CLOSING: TIntegerField;
    dtsDeliveryManDELI_MAN_DEBT: TIntegerField;
    dtsDeliveryManDELI_MAN_KORSEX: TStringField;
    dtsDeliveryManDELI_MAN_KORST: TStringField;
    procedure dtsDeliveryManCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmDeliveryMan: TdmDeliveryMan;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmDeliveryMan.dtsDeliveryManCalcFields(DataSet: TDataSet);
begin
  if dtsDeliveryManDeli_Man_Sex.Asinteger = 0 then
    dtsDeliveryManDeli_Man_KorSex.AsString := '남'
  else
    dtsDeliveryManDeli_Man_KorSex.AsString := '여';

  Case dtsDeliveryManDeli_Man_ST.Asinteger of
    0: dtsDeliveryManDeli_Man_KorST.AsString := '미출근';
    1: dtsDeliveryManDeli_Man_KorST.AsString := '배달중';
    2: dtsDeliveryManDeli_Man_KorST.AsString := '배달대기';
  End;


end;

end.

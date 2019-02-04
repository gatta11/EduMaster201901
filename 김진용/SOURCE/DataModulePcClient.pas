unit DataModulePcClient;

interface

uses
  System.SysUtils, System.Classes, Data.DBXDataSnap, Data.DBXCommon,
  IPPeerClient, Data.DB, Datasnap.DBClient, Vcl.Dialogs, Datasnap.DSConnect,
  Data.SqlExpr;

type
  TdmPcClient = class(TDataModule)
    SQLConnection1: TSQLConnection;
    DSProviderConnection1: TDSProviderConnection;
    dtsDeliveryMan: TClientDataSet;
    dtsMenu: TClientDataSet;
    dtsMenuMENU_SEQ: TIntegerField;
    dtsMenuMENU_NM: TWideStringField;
    dtsMenuMENU_PRICE: TIntegerField;
    dtsMenuMENU_QNT: TIntegerField;
    dtsMenuMENU_COOKTIME: TIntegerField;
    dtsMenuMENU_WAITTIME: TIntegerField;
    dtsMenuMENU_IMAGE: TBlobField;
    dtsMenuMENU_CMT: TWideStringField;
    dtsDeliveryManDELI_MAN_SEQ: TAutoIncField;
    dtsDeliveryManDELI_MAN_NM: TWideStringField;
    dtsDeliveryManDELI_MAN_SEX: TIntegerField;
    dtsDeliveryManDELI_MAN_AGE: TIntegerField;
    dtsDeliveryManDELI_MAN_PHONE: TWideStringField;
    dtsDeliveryManDELI_MAN_OFFICE: TWideStringField;
    dtsDeliveryManDELI_MAN_ADDR: TWideStringField;
    dtsDeliveryManDELI_MAN_DELICOUNT: TIntegerField;
    dtsDeliveryManDELI_MAN_DNTIME: TWideStringField;
    dtsDeliveryManDELI_MAN_DLTIME: TWideStringField;
    dtsDeliveryManDELI_MAN_ID: TWideStringField;
    dtsDeliveryManDELI_MAN_PASS: TWideStringField;
    dtsDeliveryManDELI_MAN_CLOSING: TIntegerField;
    dtsDeliveryManDELI_MAN_DEBT: TIntegerField;
    dtsDeliveryManDELI_MAN_IMAGE: TBlobField;
    dtsDeliveryManDELI_MAN_CMT: TWideStringField;
    dtsDeliveryManDELI_MAN_ST: TSmallintField;
    dtsDeliveryManDELI_MAN_KORSEX: TStringField;
    dtsDeliveryManDELI_MAN_KORST: TStringField;
    dtsMenuList: TClientDataSet;
    dtsMenuListMENU_SEQ: TIntegerField;
    dtsMenuListMENU_IMAGE: TBlobField;
    dtsMenuListMENU_NM: TWideStringField;
    dtsMenuListMENU_PRICE: TIntegerField;
    dtsMenuListMENU_QNT: TIntegerField;
    dtsOrderMenu: TClientDataSet;
    dtsTbOrderMenu: TClientDataSet;
    dtsOrderMenuMENU_IMAGE: TBlobField;
    dtsOrderMenuMENU_NM: TWideStringField;
    dtsOrderMenuMENU_QNT: TIntegerField;
    dtsOrderMenuMENU_PRICE: TIntegerField;
    dtsOrderMenuMENU_COOKTIME: TIntegerField;
    dtsTbOrderMenuORDMN_SEQ: TIntegerField;
    dtsTbOrderMenuORD_SEQ: TIntegerField;
    dtsTbOrderMenuMENU_SEQ: TIntegerField;
    dtsTbOrderMenuORDMN_QNT: TIntegerField;
    dtsTbOrderMenuORDMN_PRICE: TIntegerField;
    dtsCustomer: TClientDataSet;
    dtsCustomerCUST_SEQ: TIntegerField;
    dtsCustomerCUST_NM: TWideStringField;
    dtsCustomerCUST_PHONE: TWideStringField;
    dtsCustomerCUST_REGDATE: TWideStringField;
    dtsCustomerCUST_ADDR: TWideStringField;
    dtsCustomerCUST_ORDCNT: TIntegerField;
    dtsCustomerCUST_ST: TSmallintField;
    dtsCustomerCUST_ID: TWideStringField;
    dtsCustomerCUST_PASS: TWideStringField;
    dtsCustomerCUST_TOTALAMOUNT: TIntegerField;
    dtsCustomerCUST_RCNTDATE: TWideStringField;
    procedure dtsDeliveryManCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPcClient: TdmPcClient;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmPcClient.dtsDeliveryManCalcFields(DataSet: TDataSet);
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

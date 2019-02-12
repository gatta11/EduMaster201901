unit ServerMethodsUnit1;

interface

uses System.SysUtils, System.Classes, System.Json,
    DataSnap.DSProviderDataModuleAdapter,
    Datasnap.DSServer, Datasnap.DSAuth, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Datasnap.Provider, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Comp.UI,
  FireDAC.Phys.IBBase;

type
  TServerMethods1 = class(TDSServerModule)
    FDConnection1: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    tb_DEliveryMan: TFDTable;
    dsp_DeliveryMan: TDataSetProvider;
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    tb_Menu: TFDTable;
    tb_MenuMENU_SEQ: TIntegerField;
    tb_MenuMENU_NM: TWideStringField;
    tb_MenuMENU_PRICE: TIntegerField;
    tb_MenuMENU_QNT: TIntegerField;
    tb_MenuMENU_COOKTIME: TIntegerField;
    tb_MenuMENU_WAITTIME: TIntegerField;
    tb_MenuMENU_IMAGE: TBlobField;
    tb_MenuMENU_CMT: TWideStringField;
    dsp_Menu: TDataSetProvider;
    tb_DEliveryManDELI_MAN_SEQ: TFDAutoIncField;
    tb_DEliveryManDELI_MAN_NM: TWideStringField;
    tb_DEliveryManDELI_MAN_SEX: TIntegerField;
    tb_DEliveryManDELI_MAN_AGE: TIntegerField;
    tb_DEliveryManDELI_MAN_PHONE: TWideStringField;
    tb_DEliveryManDELI_MAN_OFFICE: TWideStringField;
    tb_DEliveryManDELI_MAN_ADDR: TWideStringField;
    tb_DEliveryManDELI_MAN_DELICOUNT: TIntegerField;
    tb_DEliveryManDELI_MAN_DNTIME: TWideStringField;
    tb_DEliveryManDELI_MAN_DLTIME: TWideStringField;
    tb_DEliveryManDELI_MAN_ID: TWideStringField;
    tb_DEliveryManDELI_MAN_PASS: TWideStringField;
    tb_DEliveryManDELI_MAN_CLOSING: TIntegerField;
    tb_DEliveryManDELI_MAN_DEBT: TIntegerField;
    tb_DEliveryManDELI_MAN_IMAGE: TBlobField;
    tb_DEliveryManDELI_MAN_CMT: TWideStringField;
    tb_DEliveryManDELI_MAN_ST: TSmallintField;
    qryMenuList: TFDQuery;
    dspMenuList: TDataSetProvider;
    qryMenuListMENU_SEQ: TIntegerField;
    qryMenuListMENU_IMAGE: TBlobField;
    qryMenuListMENU_NM: TWideStringField;
    qryMenuListMENU_PRICE: TIntegerField;
    qryMenuListMENU_QNT: TIntegerField;
    qryOrderMenu: TFDQuery;
    dspOrderMenu: TDataSetProvider;
    qryOrderMenuMENU_IMAGE: TBlobField;
    qryOrderMenuMENU_NM: TWideStringField;
    qryOrderMenuMENU_QNT: TIntegerField;
    qryOrderMenuMENU_PRICE: TIntegerField;
    qryOrderMenuMENU_COOKTIME: TIntegerField;
    tb_OrderMenu: TFDTable;
    tb_OrderMenuORDMN_SEQ: TIntegerField;
    tb_OrderMenuORD_SEQ: TIntegerField;
    tb_OrderMenuMENU_SEQ: TIntegerField;
    tb_OrderMenuORDMN_QNT: TIntegerField;
    tb_OrderMenuORDMN_PRICE: TIntegerField;
    dspTbOrderMenu: TDataSetProvider;
    tb_Customer: TFDTable;
    dspCustomer: TDataSetProvider;
    tb_CustomerCUST_SEQ: TIntegerField;
    tb_CustomerCUST_NM: TWideStringField;
    tb_CustomerCUST_PHONE: TWideStringField;
    tb_CustomerCUST_REGDATE: TWideStringField;
    tb_CustomerCUST_ADDR: TWideStringField;
    tb_CustomerCUST_ORDCNT: TIntegerField;
    tb_CustomerCUST_ST: TSmallintField;
    tb_CustomerCUST_ID: TWideStringField;
    tb_CustomerCUST_PASS: TWideStringField;
    tb_CustomerCUST_TOTALAMOUNT: TIntegerField;
    tb_CustomerCUST_RCNTDATE: TWideStringField;
    qryOrderList: TFDQuery;
    dspOrderList: TDataSetProvider;
    tb_DeliOrder: TFDTable;
    dspTbDeliOrder: TDataSetProvider;
    qryFindCustomer: TFDQuery;
    dspFindCustomer: TDataSetProvider;
    qryDeliveryList: TFDQuery;
    dspDeliveryList: TDataSetProvider;
    qryDeliveryListORDD_SEQ: TIntegerField;
    qryDeliveryListCUST_SEQ: TIntegerField;
    qryDeliveryListCUST_NM: TWideStringField;
    qryDeliveryListCUST_ADDR: TWideStringField;
    qryDeliveryListORDD_MENUES: TWideStringField;
    qryDeliveryListORDD_TPRICE: TIntegerField;
    qryDeliveryListORDD_FNTIME: TTimeField;
    qryDeliLogin: TFDQuery;
    dspDeliLogin: TDataSetProvider;
    tb_DeliOrderORDD_SEQ: TIntegerField;
    tb_DeliOrderORDD_ST: TSmallintField;
    tb_DeliOrderCUST_SEQ: TIntegerField;
    tb_DeliOrderORDD_WAITTIME: TIntegerField;
    tb_DeliOrderORDD_STNGTIME: TTimeField;
    tb_DeliOrderDELI_MAN_SEQ: TIntegerField;
    tb_DeliOrderORDD_FNTIME: TTimeField;
    tb_DeliOrderORDD_MENUES: TWideStringField;
    tb_DeliOrderORDD_TPRICE: TIntegerField;
    qryDetailOrderMenu: TFDQuery;
    dspDetailOrderMenu: TDataSetProvider;
    qryDetailOrderMenuORDMN_SEQ: TIntegerField;
    qryDetailOrderMenuORD_SEQ: TIntegerField;
    qryDetailOrderMenuMENU_SEQ: TIntegerField;
    qryDetailOrderMenuORDMN_QNT: TIntegerField;
    qryDetailOrderMenuORDMN_PRICE: TIntegerField;
    qryDetailOrderMenuMENU_NM: TWideStringField;
    qryOrderListORDD_SEQ: TIntegerField;
    qryOrderListORDD_ST: TSmallintField;
    qryOrderListCUST_SEQ: TIntegerField;
    qryOrderListORDD_MENUES: TWideStringField;
    qryOrderListCUST_NM: TWideStringField;
    qryOrderListCUST_PHONE: TWideStringField;
    qryOrderListCUST_ADDR: TWideStringField;
    qryOrderListORDD_TPRICE: TIntegerField;
    qryOrderListORDD_WAITTIME: TIntegerField;
    qryOrderListDELI_MAN_SEQ: TIntegerField;
    qryOrderListDELI_MAN_NM: TWideStringField;
    qryOrderListDELI_MAN_ST: TSmallintField;
    tb_DeliOrderORDD_DATE: TWideStringField;
    qryOrderListORDD_DATE: TWideStringField;
    qryInsertNewOrder: TFDQuery;
    dspInsertNewOrder: TDataSetProvider;
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
  end;

implementation


{$R *.dfm}


uses System.StrUtils;

function TServerMethods1.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServerMethods1.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

end.


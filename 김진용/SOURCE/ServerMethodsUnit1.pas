unit ServerMethodsUnit1;

interface

uses System.SysUtils, System.Classes, System.Json, Vcl.Dialogs,
    DataSnap.DSProviderDataModuleAdapter,
    Datasnap.DSServer, Datasnap.DSAuth, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Datasnap.Provider, Data.DB, DBXJSON,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Comp.UI,
  FireDAC.Phys.IBBase, Datasnap.DSCommon, Data.SqlExpr;

type
//  TMyCall = Class(TDBXCallBack)
//    Function Execute(Const Arg:TJSONValue):TJSONValue; override;
//  End;

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
    qryOrderListORDD_DATE: TWideStringField;
    qryInsertNewOrder: TFDQuery;
    dspInsertNewOrder: TDataSetProvider;
    tb_MOrderMenu: TFDTable;
    dspTbMOrderMenu: TDataSetProvider;
    tb_MOrderMenuMORDMN_SEQ: TFDAutoIncField;
    tb_MOrderMenuORD_SEQ: TIntegerField;
    tb_MOrderMenuMENU_SEQ: TIntegerField;
    tb_MOrderMenuMORDMN_QNT: TIntegerField;
    tb_MOrderMenuMORDMN_PRICE: TIntegerField;
    qryFindMenu: TFDQuery;
    qryOrderWorking: TFDQuery;
    dspOrderWorking: TDataSetProvider;
    FDQuery1: TFDQuery;
    dspTbDeliOrder2: TDataSetProvider;
    dspTbDeliOrderNew: TDataSetProvider;
    tbDeliOrder: TFDTable;
    qryDeliOrder: TFDQuery;
    dspQryDeliOrder: TDataSetProvider;
    qryDeliOrderORDD_SEQ: TFDAutoIncField;
    qryDeliOrderORDD_ST: TSmallintField;
    qryDeliOrderCUST_SEQ: TIntegerField;
    qryDeliOrderORDD_WAITTIME: TIntegerField;
    qryDeliOrderORDD_STNGTIME: TTimeField;
    qryDeliOrderDELI_MAN_SEQ: TIntegerField;
    qryDeliOrderORDD_FNTIME: TTimeField;
    qryDeliOrderORDD_DATE: TWideStringField;
    qryDeliOrderORDD_MENUES: TWideStringField;
    qryDeliOrderORDD_TPRICE: TIntegerField;
    qryDeliOrderORDD_FIMGSEQ: TIntegerField;
    qryDeliveryListCUST_PHONE: TWideStringField;
    procedure DSServerModuleCreate(Sender: TObject);
    procedure tb_MOrderMenuNewRecord(DataSet: TDataSet);
  private
    FCallbackId : String;
    { Private declarations }
    FDSServer: TDSServer;
  public
    { Public declarations }
    constructor Create(ADSServer: TDSServer); reintroduce;
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    procedure LogMSG(S:String);
    procedure FilaLogMsg(S:String);
    Function RandomID:string;
    procedure gogogo;
    function CALLBACK(AChanelName: string; AMessage: string): Boolean;
    function MatchDeliMan(const ORDD_SEQ, DELI_MAN_SEQ  :Integer):Boolean;
    procedure NewOrderByCust(ORDD_SEQ, CUST_SEQ: Integer);
    function FindDeliVeryMan(ORDD_SEQ: Integer):Boolean;

  end;

var
  ServerMethods: TServerMethods1;
    qryMatchDeliManToOrder: TFDQuery;

implementation


{$R *.dfm}


uses System.StrUtils, DSProxy, ServerContainerUnit1, ServerForm;

function TServerMethods1.CALLBACK(AChanelName, AMessage: string): Boolean;
begin
  FDSServer.BroadcastMessage(AChanelName, TJSONString.Create(AMessage));
end;

constructor TServerMethods1.Create(ADSServer: TDSServer);
begin
  //FDSServer := ADSServer;
end;

procedure TServerMethods1.DSServerModuleCreate(Sender: TObject);
var
  App : TDSAdminClient;
begin
 // FCallbackId := 'Deli_Server_ID';
//  DSClientCallbackChannelManager.ManagerId := 'Deli_Server_ManagerID';
//  DSClientCallbackChannelManager.RegisterCallback('Local', TMyCall.Create);
//
//
////  App := TDSAdminClient.Create(nil);
////  try
////    App.BroadcastToChannel(DSClientCallbackChannelManager.ChannelName, TJSONstring.Create('JSon 생성'));
////  finally
////    App.DisposeOf;
////
////  end;
end;

function TServerMethods1.EchoString(Value: string): string;
begin
  Result := Value;
end;

procedure TServerMethods1.FilaLogMsg(S: String);
begin
  TThread.Queue(nil,
  procedure
    begin
      LogMSg(S);
    end);
end;

function TServerMethods1.FindDeliVeryMan(ORDD_SEQ: Integer):Boolean;
var
  Value : TJSONString;
  Msg : String;
begin
  result := False;
  Msg := 'NEWDELIORDER'+'/'+inttostr(ORDD_SEQ);
  Value := TJSONSTring.Create(Msg);
  ServerContainer1.DSServer1.BroadcastMessage('Delivery', Value) ;

  showmessage('기사에게 메시지 전송완료');
  result := True;
  //Value.Free;

end;

procedure TServerMethods1.gogogo;
//var
//  App : TDSAdminClient;
//
//begin
//  App := TDSAdminClient.Create(nil);
//  try
//    App.BroadcastToChannel(DSClientCallbackChannelManager.ChannelName, TJSONstring.Create('JSon 생성'));
//  finally
//    App.DisposeOf;
//
//  end;

begin
//  FCallbackId := 'Deli_Server_ID';
//  DSClientCallbackChannelManager.ManagerId := 'Deli_Server_ManagerID';
//  DSClientCallbackChannelManager.RegisterCallback('Local', TMyCall.Create);
end;

procedure TServerMethods1.LogMSG(S: String);
var
  msg : String;
begin
//  msg := DSClientCallbackChannelManager.ManagerId + ': 나야나' + S;
//  //msg := datetimetostr(now);
//  //showmessage(msg);
//  frmServer.mm1.Lines.Add(DateTimeToStr(Now) + ' - 나야나' + ': ' + S);
end;


function TServerMethods1.MatchDeliMan(const ORDD_SEQ, DELI_MAN_SEQ : Integer):Boolean;
var
  Value : TJSONString;
  msg : String;
begin

  qryMatchDeliManToOrder.Close;
  qryMatchDeliManToOrder.Params[0].AsInteger := ORDD_SEQ;
  qryMatchDeliManToOrder.Open;

  if qryMatchDeliManToOrder.RecordCount = 1 then
  begin
    if qryMatchDeliManToOrder.FieldByName('DELI_MAN_SEQ').AsInteger > 0 then
      result := False
    else
    begin
      qryMatchDeliManToOrder.Close;
      qryMatchDeliManToOrder.Open;

      qryMatchDeliManToOrder.FieldByName('DELI_MAN_SEQ').AsInteger := DELI_MAN_SEQ;
      qryMatchDeliManToOrder.Post;
      qryMatchDeliManToOrder.ApplyUpdates(-1);

      Msg := 'MATCH_DELIVERYMAN/ ' + inttostr(ORDD_SEQ);
      Value := TJSONSTring.Create(Msg);
      ServerContainer1.DSServer1.BroadcastMessage('local', Value) ;
      result := True;
    end;
  end

  else
    result := False;
//  try
//  Msg := Format('기사가 매칭되었습니다. OrderSeq : %d, 기사SEQ : %d',[ORDD_SEQ,DELI_MAN_SEQ]);
//  Value := TJSONSTring.Create(Msg);
//  ServerContainer1.DSServer1.BroadcastMessage('local', Value) ;
//  //Value.Free;
//  finally
//    //showmessage('pc로 기사정보 발송 완료')
//  end;
//
//  try
//  Value := TJSONSTring.Create('모바일 한테만 가냐?');
//  ServerContainer1.DSServer1.BroadcastMessage('mobile', Value) ;
//
//  finally
//    //showmessage('모바일로 테스트메시지  발송 완료')
//
//  end;


end;

procedure TServerMethods1.NewOrderByCust(ORDD_SEQ, CUST_SEQ: Integer);
var
  Value : TJSONString;
  msg : String;
begin
  try
    Msg := Format('MNEWORDER/%d/%d',[ORDD_SEQ, CUST_SEQ]);
    Value := TJSONSTring.Create(Msg);
    ServerContainer1.DSServer1.BroadcastMessage('local', Value) ;
  finally

  end;
end;

function TServerMethods1.RandomID: string;
var
P1, P2, P3 : Integer;
begin
  P1 := Random(100000);
  P2 := Random(100000);
  P3 := Random(100000);
  Result := Format('%d.%d.%d',[P1,P2,P3]);
end;

function TServerMethods1.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;


procedure TServerMethods1.tb_MOrderMenuNewRecord(DataSet: TDataSet);
var
  Value : TJSONString;
  Msg : String;
  Menu : STring;
  Qnt : Integer;
begin
//  try
//    tb_MOrderMenu.Last;
//  except
//    raise Exception.Create('tb_MOrderMenu.Last 오류');
//  end;
//  Menu := tb_MOrderMenu.FieldByName('MENU_SEQ').asString;
//  Qnt :=  tb_MOrderMenu.FieldByName('MORDMN_QNT').asInteger;
//  qryFindMenu.Close;
//  qryFindMenu.Params[0].AsInteger := strtoint(Menu);
//  qryFindmenu.Open;
//
//  Menu := qryFindmenu.Fields[0].AsString;
//  Msg := Format('[모바일주문] 신규 주문이 접수되었습니다. "%s X %d개 - %s"',[Menu,Qnt,datetimetostr(now)]);

  Msg := Format('[모바일주문] 신규 주문이 접수되었습니다. %s',[datetimetostr(now)]);
  Value := TJSONSTring.Create(Msg);
  ServerContainer1.DSServer1.BroadcastMessage('local', Value) ;
  Value.Free;
end;

{ TMyCall }

//function TMyCall.Execute(const Arg: TJSONValue): TJSONValue;
//
//begin
//  ServerMethods.FilaLogMsg(Arg.ToString);
//  result := TJSONTrue.Create;
//end;

end.


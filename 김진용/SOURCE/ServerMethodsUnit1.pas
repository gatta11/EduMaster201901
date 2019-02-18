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
    qryOrderWorkingORDD_SEQ: TFDAutoIncField;
    qryOrderWorkingORDD_DATE: TWideStringField;
    qryOrderWorkingORDD_ST: TSmallintField;
    qryOrderWorkingCUST_SEQ: TIntegerField;
    qryOrderWorkingORDD_MENUES: TWideStringField;
    qryOrderWorkingORDD_FIMGSEQ: TIntegerField;
    qryOrderWorkingCUST_NM: TWideStringField;
    qryOrderWorkingCUST_PHONE: TWideStringField;
    qryOrderWorkingCUST_ADDR: TWideStringField;
    qryOrderWorkingORDD_TPRICE: TIntegerField;
    qryOrderWorkingORDD_WAITTIME: TIntegerField;
    qryOrderWorkingDELI_MAN_SEQ: TIntegerField;
    qryOrderWorkingDELI_MAN_NM: TWideStringField;
    qryOrderWorkingDELI_MAN_ST: TSmallintField;
    qryCustbyOrderSeq: TFDQuery;
    qryMatchOrder: TFDQuery;
    dspQryMatchOrder: TDataSetProvider;
    dspQryCustbyOrderSeq: TDataSetProvider;
    qryFindDelimanBySeq: TFDQuery;
    dspQryFindDelimanBySeq: TDataSetProvider;
    qryUpdateFinishOrder: TFDQuery;
    qryUpdateFinishDeliMan: TFDQuery;
    qryFindTotalPrice: TFDQuery;
    qryUpdateDeliST: TFDQuery;
    dspUpdateFinishOrder: TDataSetProvider;
    qryUpdateFinishCust: TFDQuery;
    qryOrderWorkingORDD_STNGTIME: TTimeField;
    qryOrderWorkingORDD_FNTIME: TTimeField;
    qryOrderWorkingORDD_CALC_ST: TStringField;
    procedure DSServerModuleCreate(Sender: TObject);
    procedure tb_MOrderMenuNewRecord(DataSet: TDataSet);
    function MatchDeliMan(ORDD_SEQ, DELI_MAN_SEQ  :Integer):Boolean;
    function FindDeliVeryMan(ORDD_SEQ: Integer):Boolean;
    function UpdateFinishDelivery(ORDD_SEQ, DELI_MAN_SEQ: Integer):Boolean;
    procedure qryOrderWorkingCalcFields(DataSet: TDataSet);

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

    procedure NewOrderByCust(ORDD_SEQ, CUST_SEQ: Integer);

  end;

var
  ServerMethods: TServerMethods1;


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
  //Value : TJSONString;
  ValueJSON : TJSONObject;
  CUST_NM,CUST_PHONE,CUST_ADDR : String;

  Msg : String;
begin
  result := False;
  //Msg := 'NEWDELIORDER'+'/'+inttostr(ORDD_SEQ); //이제 안씀
  //Value := TJSONSTring.Create(Msg);

  qryCustbyOrderSeq.Close;
  qryCustbyOrderSeq.Params[0].AsInteger := ORDD_SEQ;
  qryCustbyOrderSeq.Open;

  if qryCustbyOrderSeq.RecordCount = 0 then
  begin
    showmessage('[배달로]주문한 고객정보가 없습니다.');
    exit;
  end;

  CUST_NM := qryCustbyOrderSeq.FieldByName('CUST_NM').asstring;
  CUST_PHONE := qryCustbyOrderSeq.FieldByName('CUST_PHONE').asstring;
  CUST_ADDR := qryCustbyOrderSeq.FieldByName('CUST_ADDR').asstring;
  //showmessage(CUST_NM+CUST_ADDR+CUST_PHONE);

  ValueJSON := TJSONObject.Create;

  ValueJSON.AddPair('ORDD_SEQ', inttostr(ORDD_SEQ));
  ValueJSON.AddPair('CUST_NM', CUST_NM);
  ValueJSON.AddPair('CUST_PHONE', CUST_PHONE);
  ValueJSON.AddPair('CUST_ADDR', CUST_ADDR);

  ServerContainer1.DSServer1.BroadcastMessage('Delivery', ValueJSON) ;

  //showmessage('[배달로]배달기사에게 배달요청을 전송하였습니다.');
  result := True;
  //Value.Free;

end;

function TServerMethods1.UpdateFinishDelivery(ORDD_SEQ, DELI_MAN_SEQ : integer): Boolean;
var
  DeliCount : Integer;
  TPrice : Integer;
  CUST_SEQ : INTEGER;
  Amount : Integer;
begin
// 트랜잭션 묶어야됨.

  result := False;

// ORDD  정보 변경 - 상태 완료 변경, 주문 완료 시간 입력

  qryUpdateFinishOrder.ParamByName('SEQ').AsInteger := ORDD_SEQ;
  qryUpdateFinishOrder.ParamByName('FNTIME').AsDateTime := Time;
  qryUpdateFinishOrder.ParamByName('ST').AsInteger := 4;
  qryUpdateFinishOrder.ExecSQL;
//  ORDD_ST =:ST,
//ORDD_FNTIME =:FNTIME
//WHERE ORDD_SEQ =:SEQ

  //showmessage('[배달로] 주문상태 변경 완료');
// 기사 DELI_COUNT 증가,

  qryUpdateFinishDeliMan.ParamByName('SEQ').AsInteger := DELI_MAN_SEQ;
  qryUpdateFinishDeliMan.ParamByName('ST').AsInteger := 1;
  qryUpdateFinishDeliMan.ExecSQL;

  //showmessage('[배달로] 배송기사 상태 변경');

  // 고객 주문횟수, 주문금액 증가.

  qryFindTotalPrice.Close;
  qryFindTotalPrice.Params[0].AsInteger := ORDD_SEQ;
  qryFindTotalPrice.Open;
  Tprice := qryFindTotalPrice.FieldByName('ORDD_TPRICE').AsInteger;
  CUST_SEQ := qryFindTotalPrice.FieldByName('ORDD_TPRICE').AsInteger;
  AMount := qryFindTotalPrice.FieldByName('CUST_TOTALAMOUNT').AsInteger;

  qryUpdateFinishCust.ParamByName('AMOUNT').AsInteger := AMount + Tprice;
  qryUpdateFinishCust.ParamByName('SEQ').AsInteger := CUST_SEQ;
  qryUpdateFinishCust.ExecSQL;

  showmessage('[배달로] 고객정보 상태 변경');

  result := True;

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


function TServerMethods1.MatchDeliMan(ORDD_SEQ, DELI_MAN_SEQ : Integer):Boolean;
var
  Value : TJSONString;
  JSONValue : TJSONObject;
  DELI_MAN_NM : string;
  msg : String;
begin

  result := False;
  msg := format('ORDD_SEQ : %d, DELI_MAN_SEQ : %d ',[ORDD_SEQ, DELI_MAN_SEQ]);

  //showmessage(msg);

  qryMatchOrder.Close;
  qryMatchOrder.Params[0].AsInteger := ORDD_SEQ;
  qryMatchOrder.Open;
  //showmessage('쿼리 성공  '+ inttostr(qryMatchOrder.RecordCount) );

  if qryMatchOrder.RecordCount = 1 then
  begin
    //showmessage('넘버머냐' + inttostr(qryMatchOrder.FieldByName('DELI_MAN_SEQ').asinteger));

    if qryMatchOrder.FieldByName('DELI_MAN_SEQ').AsInteger > 0 then
      result := False
    else
    begin
      if qryMatchOrder.state <> dsEdit then
        qryMatchOrder.Edit;

      //showmessage('[서버]배달기사 수정전');

//      try
      //begin
        qryMatchOrder.FieldByName('DELI_MAN_SEQ').AsInteger := DELI_MAN_SEQ;
        //qryMatchOrder.FieldByName('DELI_MAN_ST').AsInteger := 2;
        qryMatchOrder.Post;
     //end;
        //qryMatchOrder.ApplyUpdates(-1);
//      except
//        raise Exception.Create('[서버] 배달기사 체결 문제 발생');
//      end;
      qryUpdateDeliST.Close;
      qryUpdateDeliST.Params[0].AsInteger := DELI_MAN_SEQ;
      qryUpdateDeliST.Open;

      if qryUpdateDeliST.state <> dsEdit then
        qryUpdateDeliST.Edit;

      qryUpdateDeliST.FieldByName('DELI_MAN_ST').AsInteger := 2;
      qryUpdateDeliST.Post;


      //showmessage('[서버]배달기사 지정완료');

      JSONValue := TJSONObject.Create;

      qryFindDelimanBySeq.Close;
      qryFindDelimanBySeq.Params[0].AsInteger :=  DELI_MAN_SEQ;
      qryFindDelimanBySeq.Open;

      DELI_MAN_NM := qryFindDelimanBySeq.FieldByName('DELI_MAN_NM').AsString;

      //showmessage('[서버] 배달기사 지정완료 : '+ DELI_MAN_NM);

      JSONValue.AddPair('KIND_CALLBACK', '기사체결');
      JSONValue.AddPair('ORDD_SEQ', inttostr(ORDD_SEQ));
      JSONValue.AddPair('DELI_MAN_NM', DELI_MAN_NM);
      JSONValue.AddPair('DELI_MAN_SEQ', inttostr(DELI_MAN_SEQ));

      ServerContainer1.DSServer1.BroadcastMessage('local', JSONValue) ;
      //ServerContainer1.DSServer1.NotifyCallback('local','PcClient','LCallBackID','sss',aResponse);
     // showmessage('[서버] 회신 완료');

      result := True;

    end;
  end

  else
    result := False;

end;

procedure TServerMethods1.NewOrderByCust(ORDD_SEQ, CUST_SEQ: Integer);
var
  Value : TJSONString;
  Value1 : TJSONValue;
  msg : String;
begin
  try
    Msg := Format('MNEWORDER/%d/%d',[ORDD_SEQ, CUST_SEQ]);
    Value := TJSONString.Create(Msg);
    ServerContainer1.DSServer1.BroadcastMessage('local', Value) ;

  finally

  end;
end;

procedure TServerMethods1.qryOrderWorkingCalcFields(DataSet: TDataSet);
var
  ORDD_ST : integer;
begin

   ORDD_ST := qryOrderWorking.FieldByName('ORDD_ST').AsInteger;
  CASE ORDD_ST OF
  0: qryOrderWorking.FieldByName('ORDD_CALC_ST').AsString := '주문준비';
  1: qryOrderWorking.FieldByName('ORDD_CALC_ST').AsString := '조리중';
  2: qryOrderWorking.FieldByName('ORDD_CALC_ST').AsString := '배달중';
  4: qryOrderWorking.FieldByName('ORDD_CALC_ST').AsString := '배달완료';

  END;

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

  Msg := Format('[모바일주문] 신규 주문이 접수되었습니다. %s',[datetimetostr(now)]);
  Value := TJSONSTring.Create(Msg);
  ServerContainer1.DSServer1.BroadcastMessage('local', Value) ;
  //Value.Free;
end;

{ TMyCall }

//function TMyCall.Execute(const Arg: TJSONValue): TJSONValue;
//
//begin
//  ServerMethods.FilaLogMsg(Arg.ToString);
//  result := TJSONTrue.Create;
//end;

end.


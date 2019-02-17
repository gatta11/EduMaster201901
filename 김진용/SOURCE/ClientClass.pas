//
// Created by the DataSnap proxy generator.
// 2019-02-18 ¿ÀÀü 12:51:08
//

unit ClientClass;

interface

uses System.JSON, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Data.DBXJSONReflect;

type
  TServerMethods1Client = class(TDSAdminClient)
  private
    FDSServerModuleCreateCommand: TDBXCommand;
    Ftb_MOrderMenuNewRecordCommand: TDBXCommand;
    FMatchDeliManCommand: TDBXCommand;
    FFindDeliVeryManCommand: TDBXCommand;
    FUpdateFinishDeliveryCommand: TDBXCommand;
    FEchoStringCommand: TDBXCommand;
    FReverseStringCommand: TDBXCommand;
    FLogMSGCommand: TDBXCommand;
    FFilaLogMsgCommand: TDBXCommand;
    FRandomIDCommand: TDBXCommand;
    FgogogoCommand: TDBXCommand;
    FCALLBACKCommand: TDBXCommand;
    FNewOrderByCustCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    procedure DSServerModuleCreate(Sender: TObject);
    procedure tb_MOrderMenuNewRecord(DataSet: TDataSet);
    function MatchDeliMan(ORDD_SEQ: Integer; DELI_MAN_SEQ: Integer): Boolean;
    function FindDeliVeryMan(ORDD_SEQ: Integer): Boolean;
    function UpdateFinishDelivery(ORDD_SEQ: Integer; DELI_MAN_SEQ: Integer): Boolean;
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    procedure LogMSG(S: string);
    procedure FilaLogMsg(S: string);
    function RandomID: string;
    procedure gogogo;
    function CALLBACK(AChanelName: string; AMessage: string): Boolean;
    procedure NewOrderByCust(ORDD_SEQ: Integer; CUST_SEQ: Integer);
  end;

implementation

procedure TServerMethods1Client.DSServerModuleCreate(Sender: TObject);
begin
  if FDSServerModuleCreateCommand = nil then
  begin
    FDSServerModuleCreateCommand := FDBXConnection.CreateCommand;
    FDSServerModuleCreateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDSServerModuleCreateCommand.Text := 'TServerMethods1.DSServerModuleCreate';
    FDSServerModuleCreateCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FDSServerModuleCreateCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FDSServerModuleCreateCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FDSServerModuleCreateCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
  end;
  FDSServerModuleCreateCommand.ExecuteUpdate;
end;

procedure TServerMethods1Client.tb_MOrderMenuNewRecord(DataSet: TDataSet);
begin
  if Ftb_MOrderMenuNewRecordCommand = nil then
  begin
    Ftb_MOrderMenuNewRecordCommand := FDBXConnection.CreateCommand;
    Ftb_MOrderMenuNewRecordCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    Ftb_MOrderMenuNewRecordCommand.Text := 'TServerMethods1.tb_MOrderMenuNewRecord';
    Ftb_MOrderMenuNewRecordCommand.Prepare;
  end;
  Ftb_MOrderMenuNewRecordCommand.Parameters[0].Value.SetDBXReader(TDBXDataSetReader.Create(DataSet, FInstanceOwner), True);
  Ftb_MOrderMenuNewRecordCommand.ExecuteUpdate;
end;

function TServerMethods1Client.MatchDeliMan(ORDD_SEQ: Integer; DELI_MAN_SEQ: Integer): Boolean;
begin
  if FMatchDeliManCommand = nil then
  begin
    FMatchDeliManCommand := FDBXConnection.CreateCommand;
    FMatchDeliManCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMatchDeliManCommand.Text := 'TServerMethods1.MatchDeliMan';
    FMatchDeliManCommand.Prepare;
  end;
  FMatchDeliManCommand.Parameters[0].Value.SetInt32(ORDD_SEQ);
  FMatchDeliManCommand.Parameters[1].Value.SetInt32(DELI_MAN_SEQ);
  FMatchDeliManCommand.ExecuteUpdate;
  Result := FMatchDeliManCommand.Parameters[2].Value.GetBoolean;
end;

function TServerMethods1Client.FindDeliVeryMan(ORDD_SEQ: Integer): Boolean;
begin
  if FFindDeliVeryManCommand = nil then
  begin
    FFindDeliVeryManCommand := FDBXConnection.CreateCommand;
    FFindDeliVeryManCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFindDeliVeryManCommand.Text := 'TServerMethods1.FindDeliVeryMan';
    FFindDeliVeryManCommand.Prepare;
  end;
  FFindDeliVeryManCommand.Parameters[0].Value.SetInt32(ORDD_SEQ);
  FFindDeliVeryManCommand.ExecuteUpdate;
  Result := FFindDeliVeryManCommand.Parameters[1].Value.GetBoolean;
end;

function TServerMethods1Client.UpdateFinishDelivery(ORDD_SEQ: Integer; DELI_MAN_SEQ: Integer): Boolean;
begin
  if FUpdateFinishDeliveryCommand = nil then
  begin
    FUpdateFinishDeliveryCommand := FDBXConnection.CreateCommand;
    FUpdateFinishDeliveryCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUpdateFinishDeliveryCommand.Text := 'TServerMethods1.UpdateFinishDelivery';
    FUpdateFinishDeliveryCommand.Prepare;
  end;
  FUpdateFinishDeliveryCommand.Parameters[0].Value.SetInt32(ORDD_SEQ);
  FUpdateFinishDeliveryCommand.Parameters[1].Value.SetInt32(DELI_MAN_SEQ);
  FUpdateFinishDeliveryCommand.ExecuteUpdate;
  Result := FUpdateFinishDeliveryCommand.Parameters[2].Value.GetBoolean;
end;

function TServerMethods1Client.EchoString(Value: string): string;
begin
  if FEchoStringCommand = nil then
  begin
    FEchoStringCommand := FDBXConnection.CreateCommand;
    FEchoStringCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEchoStringCommand.Text := 'TServerMethods1.EchoString';
    FEchoStringCommand.Prepare;
  end;
  FEchoStringCommand.Parameters[0].Value.SetWideString(Value);
  FEchoStringCommand.ExecuteUpdate;
  Result := FEchoStringCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.ReverseString(Value: string): string;
begin
  if FReverseStringCommand = nil then
  begin
    FReverseStringCommand := FDBXConnection.CreateCommand;
    FReverseStringCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FReverseStringCommand.Text := 'TServerMethods1.ReverseString';
    FReverseStringCommand.Prepare;
  end;
  FReverseStringCommand.Parameters[0].Value.SetWideString(Value);
  FReverseStringCommand.ExecuteUpdate;
  Result := FReverseStringCommand.Parameters[1].Value.GetWideString;
end;

procedure TServerMethods1Client.LogMSG(S: string);
begin
  if FLogMSGCommand = nil then
  begin
    FLogMSGCommand := FDBXConnection.CreateCommand;
    FLogMSGCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FLogMSGCommand.Text := 'TServerMethods1.LogMSG';
    FLogMSGCommand.Prepare;
  end;
  FLogMSGCommand.Parameters[0].Value.SetWideString(S);
  FLogMSGCommand.ExecuteUpdate;
end;

procedure TServerMethods1Client.FilaLogMsg(S: string);
begin
  if FFilaLogMsgCommand = nil then
  begin
    FFilaLogMsgCommand := FDBXConnection.CreateCommand;
    FFilaLogMsgCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFilaLogMsgCommand.Text := 'TServerMethods1.FilaLogMsg';
    FFilaLogMsgCommand.Prepare;
  end;
  FFilaLogMsgCommand.Parameters[0].Value.SetWideString(S);
  FFilaLogMsgCommand.ExecuteUpdate;
end;

function TServerMethods1Client.RandomID: string;
begin
  if FRandomIDCommand = nil then
  begin
    FRandomIDCommand := FDBXConnection.CreateCommand;
    FRandomIDCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRandomIDCommand.Text := 'TServerMethods1.RandomID';
    FRandomIDCommand.Prepare;
  end;
  FRandomIDCommand.ExecuteUpdate;
  Result := FRandomIDCommand.Parameters[0].Value.GetWideString;
end;

procedure TServerMethods1Client.gogogo;
begin
  if FgogogoCommand = nil then
  begin
    FgogogoCommand := FDBXConnection.CreateCommand;
    FgogogoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FgogogoCommand.Text := 'TServerMethods1.gogogo';
    FgogogoCommand.Prepare;
  end;
  FgogogoCommand.ExecuteUpdate;
end;

function TServerMethods1Client.CALLBACK(AChanelName: string; AMessage: string): Boolean;
begin
  if FCALLBACKCommand = nil then
  begin
    FCALLBACKCommand := FDBXConnection.CreateCommand;
    FCALLBACKCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCALLBACKCommand.Text := 'TServerMethods1.CALLBACK';
    FCALLBACKCommand.Prepare;
  end;
  FCALLBACKCommand.Parameters[0].Value.SetWideString(AChanelName);
  FCALLBACKCommand.Parameters[1].Value.SetWideString(AMessage);
  FCALLBACKCommand.ExecuteUpdate;
  Result := FCALLBACKCommand.Parameters[2].Value.GetBoolean;
end;

procedure TServerMethods1Client.NewOrderByCust(ORDD_SEQ: Integer; CUST_SEQ: Integer);
begin
  if FNewOrderByCustCommand = nil then
  begin
    FNewOrderByCustCommand := FDBXConnection.CreateCommand;
    FNewOrderByCustCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FNewOrderByCustCommand.Text := 'TServerMethods1.NewOrderByCust';
    FNewOrderByCustCommand.Prepare;
  end;
  FNewOrderByCustCommand.Parameters[0].Value.SetInt32(ORDD_SEQ);
  FNewOrderByCustCommand.Parameters[1].Value.SetInt32(CUST_SEQ);
  FNewOrderByCustCommand.ExecuteUpdate;
end;

constructor TServerMethods1Client.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
end;

constructor TServerMethods1Client.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
end;

destructor TServerMethods1Client.Destroy;
begin
  FDSServerModuleCreateCommand.DisposeOf;
  Ftb_MOrderMenuNewRecordCommand.DisposeOf;
  FMatchDeliManCommand.DisposeOf;
  FFindDeliVeryManCommand.DisposeOf;
  FUpdateFinishDeliveryCommand.DisposeOf;
  FEchoStringCommand.DisposeOf;
  FReverseStringCommand.DisposeOf;
  FLogMSGCommand.DisposeOf;
  FFilaLogMsgCommand.DisposeOf;
  FRandomIDCommand.DisposeOf;
  FgogogoCommand.DisposeOf;
  FCALLBACKCommand.DisposeOf;
  FNewOrderByCustCommand.DisposeOf;
  inherited;
end;

end.


//
// Created by the DataSnap proxy generator.
// 2019-02-13 ¿ÀÀü 12:15:17
//

unit ClientClass;

interface

uses System.JSON, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Data.DBXJSONReflect;

type
  TServerMethods1Client = class(TDSAdminClient)
  private
    FDSServerModuleCreateCommand: TDBXCommand;
    FEchoStringCommand: TDBXCommand;
    FReverseStringCommand: TDBXCommand;
    FLogMSGCommand: TDBXCommand;
    FFilaLogMsgCommand: TDBXCommand;
    FRandomIDCommand: TDBXCommand;
    FgogogoCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    procedure DSServerModuleCreate(Sender: TObject);
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    procedure LogMSG(S: string);
    procedure FilaLogMsg(S: string);
    function RandomID: string;
    procedure gogogo;
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
  FEchoStringCommand.DisposeOf;
  FReverseStringCommand.DisposeOf;
  FLogMSGCommand.DisposeOf;
  FFilaLogMsgCommand.DisposeOf;
  FRandomIDCommand.DisposeOf;
  FgogogoCommand.DisposeOf;
  inherited;
end;

end.


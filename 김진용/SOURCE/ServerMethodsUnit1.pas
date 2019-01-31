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


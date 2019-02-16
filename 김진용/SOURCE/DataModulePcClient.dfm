object dmPcClient: TdmPcClient
  OldCreateOrder = False
  Height = 451
  Width = 838
  object SQLConnection1: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXDataSnap'
      'HostName=localhost'
      'Port=211'
      'CommunicationProtocol=tcp/ip'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=24.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'Filters={}')
    Connected = True
    Left = 97
    Top = 71
    UniqueId = '{23397A5D-0362-4DAC-A8CC-5B6B7A1831CC}'
  end
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TServerMethods1'
    Connected = True
    SQLConnection = SQLConnection1
    Left = 209
    Top = 71
  end
  object dtsDeliveryMan: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DELI_MAN_SEQ'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'DELI_MAN_NM'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'DELI_MAN_SEX'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DELI_MAN_AGE'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DELI_MAN_PHONE'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 80
      end
      item
        Name = 'DELI_MAN_OFFICE'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 120
      end
      item
        Name = 'DELI_MAN_ADDR'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 800
      end
      item
        Name = 'DELI_MAN_DELICOUNT'
        DataType = ftInteger
      end
      item
        Name = 'DELI_MAN_DNTIME'
        DataType = ftWideString
        Size = 48
      end
      item
        Name = 'DELI_MAN_DLTIME'
        DataType = ftWideString
        Size = 48
      end
      item
        Name = 'DELI_MAN_ID'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 80
      end
      item
        Name = 'DELI_MAN_PASS'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 120
      end
      item
        Name = 'DELI_MAN_CLOSING'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DELI_MAN_DEBT'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DELI_MAN_IMAGE'
        DataType = ftBlob
      end
      item
        Name = 'DELI_MAN_CMT'
        DataType = ftWideString
        Size = 4000
      end
      item
        Name = 'DELI_MAN_ST'
        Attributes = [faRequired]
        DataType = ftSmallint
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dsp_DeliveryMan'
    RemoteServer = DSProviderConnection1
    StoreDefs = True
    OnCalcFields = dtsDeliveryManCalcFields
    Left = 97
    Top = 210
    object dtsDeliveryManDELI_MAN_SEQ: TAutoIncField
      FieldName = 'DELI_MAN_SEQ'
      Origin = 'DELI_MAN_SEQ'
      ReadOnly = True
    end
    object dtsDeliveryManDELI_MAN_NM: TWideStringField
      FieldName = 'DELI_MAN_NM'
      Origin = 'DELI_MAN_NM'
      Required = True
      Size = 40
    end
    object dtsDeliveryManDELI_MAN_AGE: TIntegerField
      FieldName = 'DELI_MAN_AGE'
      Origin = 'DELI_MAN_AGE'
      Required = True
    end
    object dtsDeliveryManDELI_MAN_SEX: TIntegerField
      FieldName = 'DELI_MAN_SEX'
      Origin = 'DELI_MAN_SEX'
      Required = True
    end
    object dtsDeliveryManDELI_MAN_PHONE: TWideStringField
      FieldName = 'DELI_MAN_PHONE'
      Origin = 'DELI_MAN_PHONE'
      Required = True
      Size = 80
    end
    object dtsDeliveryManDELI_MAN_OFFICE: TWideStringField
      FieldName = 'DELI_MAN_OFFICE'
      Origin = 'DELI_MAN_OFFICE'
      Required = True
      Size = 120
    end
    object dtsDeliveryManDELI_MAN_ADDR: TWideStringField
      FieldName = 'DELI_MAN_ADDR'
      Origin = 'DELI_MAN_ADDR'
      Required = True
      Size = 800
    end
    object dtsDeliveryManDELI_MAN_DELICOUNT: TIntegerField
      FieldName = 'DELI_MAN_DELICOUNT'
      Origin = 'DELI_MAN_DELICOUNT'
    end
    object dtsDeliveryManDELI_MAN_DNTIME: TWideStringField
      FieldName = 'DELI_MAN_DNTIME'
      Origin = 'DELI_MAN_DNTIME'
      Size = 48
    end
    object dtsDeliveryManDELI_MAN_DLTIME: TWideStringField
      FieldName = 'DELI_MAN_DLTIME'
      Origin = 'DELI_MAN_DLTIME'
      Size = 48
    end
    object dtsDeliveryManDELI_MAN_ID: TWideStringField
      FieldName = 'DELI_MAN_ID'
      Origin = 'DELI_MAN_ID'
      Required = True
      Size = 80
    end
    object dtsDeliveryManDELI_MAN_PASS: TWideStringField
      FieldName = 'DELI_MAN_PASS'
      Origin = 'DELI_MAN_PASS'
      Required = True
      Size = 120
    end
    object dtsDeliveryManDELI_MAN_CLOSING: TIntegerField
      FieldName = 'DELI_MAN_CLOSING'
      Origin = 'DELI_MAN_CLOSING'
      Required = True
    end
    object dtsDeliveryManDELI_MAN_DEBT: TIntegerField
      FieldName = 'DELI_MAN_DEBT'
      Origin = 'DELI_MAN_DEBT'
      Required = True
    end
    object dtsDeliveryManDELI_MAN_IMAGE: TBlobField
      FieldName = 'DELI_MAN_IMAGE'
      Origin = 'DELI_MAN_IMAGE'
    end
    object dtsDeliveryManDELI_MAN_ST: TSmallintField
      FieldName = 'DELI_MAN_ST'
      Origin = 'DELI_MAN_ST'
      Required = True
    end
    object dtsDeliveryManDELI_MAN_CMT: TWideStringField
      FieldName = 'DELI_MAN_CMT'
      Origin = 'DELI_MAN_CMT'
      Size = 4000
    end
    object dtsDeliveryManDELI_MAN_KORSEX: TStringField
      FieldKind = fkCalculated
      FieldName = 'DELI_MAN_KORSEX'
      Calculated = True
    end
    object dtsDeliveryManDELI_MAN_KORST: TStringField
      FieldKind = fkCalculated
      FieldName = 'DELI_MAN_KORST'
      Calculated = True
    end
  end
  object dtsMenu: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_Menu'
    RemoteServer = DSProviderConnection1
    Left = 184
    Top = 208
    object dtsMenuMENU_SEQ: TIntegerField
      FieldName = 'MENU_SEQ'
      Origin = 'MENU_SEQ'
    end
    object dtsMenuMENU_NM: TWideStringField
      FieldName = 'MENU_NM'
      Origin = 'MENU_NM'
      Required = True
      Size = 40
    end
    object dtsMenuMENU_PRICE: TIntegerField
      FieldName = 'MENU_PRICE'
      Origin = 'MENU_PRICE'
      Required = True
      DisplayFormat = '#,##0'
    end
    object dtsMenuMENU_QNT: TIntegerField
      FieldName = 'MENU_QNT'
      Origin = 'MENU_QNT'
      Required = True
    end
    object dtsMenuMENU_COOKTIME: TIntegerField
      FieldName = 'MENU_COOKTIME'
      Origin = 'MENU_COOKTIME'
      Required = True
    end
    object dtsMenuMENU_WAITTIME: TIntegerField
      FieldName = 'MENU_WAITTIME'
      Origin = 'MENU_WAITTIME'
      Required = True
    end
    object dtsMenuMENU_IMAGE: TBlobField
      FieldName = 'MENU_IMAGE'
      Origin = 'MENU_IMAGE'
    end
    object dtsMenuMENU_CMT: TWideStringField
      FieldName = 'MENU_CMT'
      Origin = 'MENU_CMT'
      Size = 40
    end
  end
  object dtsMenuList: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMenuList'
    RemoteServer = DSProviderConnection1
    Left = 272
    Top = 208
    object dtsMenuListMENU_SEQ: TIntegerField
      FieldName = 'MENU_SEQ'
      Origin = 'MENU_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtsMenuListMENU_IMAGE: TBlobField
      FieldName = 'MENU_IMAGE'
      Origin = 'MENU_IMAGE'
    end
    object dtsMenuListMENU_NM: TWideStringField
      FieldName = 'MENU_NM'
      Origin = 'MENU_NM'
      Required = True
      Size = 40
    end
    object dtsMenuListMENU_PRICE: TIntegerField
      FieldName = 'MENU_PRICE'
      Origin = 'MENU_PRICE'
      Required = True
      DisplayFormat = '#,##0'
    end
    object dtsMenuListMENU_QNT: TIntegerField
      FieldName = 'MENU_QNT'
      Origin = 'MENU_QNT'
      Required = True
    end
  end
  object dtsOrderMenu: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOrderMenu'
    RemoteServer = DSProviderConnection1
    Left = 360
    Top = 208
    object dtsOrderMenuMENU_IMAGE: TBlobField
      FieldName = 'MENU_IMAGE'
      Origin = 'MENU_IMAGE'
    end
    object dtsOrderMenuMENU_NM: TWideStringField
      FieldName = 'MENU_NM'
      Origin = 'MENU_NM'
      Required = True
      Size = 120
    end
    object dtsOrderMenuMENU_QNT: TIntegerField
      FieldName = 'MENU_QNT'
      Origin = 'MENU_QNT'
      Required = True
    end
    object dtsOrderMenuMENU_PRICE: TIntegerField
      FieldName = 'MENU_PRICE'
      Origin = 'MENU_PRICE'
      Required = True
      DisplayFormat = '#,##0'
    end
    object dtsOrderMenuMENU_COOKTIME: TIntegerField
      FieldName = 'MENU_COOKTIME'
      Origin = 'MENU_COOKTIME'
      Required = True
    end
  end
  object dtsTbOrderMenu: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTbOrderMenu'
    RemoteServer = DSProviderConnection1
    Left = 88
    Top = 296
    object dtsTbOrderMenuORDMN_SEQ: TIntegerField
      FieldName = 'ORDMN_SEQ'
      Origin = 'ORDMN_SEQ'
    end
    object dtsTbOrderMenuORD_SEQ: TIntegerField
      FieldName = 'ORD_SEQ'
      Origin = 'ORD_SEQ'
      Required = True
    end
    object dtsTbOrderMenuMENU_SEQ: TIntegerField
      FieldName = 'MENU_SEQ'
      Origin = 'MENU_SEQ'
      Required = True
    end
    object dtsTbOrderMenuORDMN_QNT: TIntegerField
      FieldName = 'ORDMN_QNT'
      Origin = 'ORDMN_QNT'
      Required = True
    end
    object dtsTbOrderMenuORDMN_PRICE: TIntegerField
      FieldName = 'ORDMN_PRICE'
      Origin = 'ORDMN_PRICE'
      Required = True
      DisplayFormat = '#,##0'
    end
  end
  object dtsCustomer: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCustomer'
    RemoteServer = DSProviderConnection1
    Left = 184
    Top = 296
    object dtsCustomerCUST_SEQ: TIntegerField
      FieldName = 'CUST_SEQ'
      Origin = 'CUST_SEQ'
    end
    object dtsCustomerCUST_NM: TWideStringField
      FieldName = 'CUST_NM'
      Origin = 'CUST_NM'
      Required = True
      Size = 40
    end
    object dtsCustomerCUST_PHONE: TWideStringField
      FieldName = 'CUST_PHONE'
      Origin = 'CUST_PHONE'
      Required = True
      Size = 80
    end
    object dtsCustomerCUST_REGDATE: TWideStringField
      FieldName = 'CUST_REGDATE'
      Origin = 'CUST_REGDATE'
      Required = True
      Size = 40
    end
    object dtsCustomerCUST_ADDR: TWideStringField
      FieldName = 'CUST_ADDR'
      Origin = 'CUST_ADDR'
      Required = True
      Size = 800
    end
    object dtsCustomerCUST_ORDCNT: TIntegerField
      FieldName = 'CUST_ORDCNT'
      Origin = 'CUST_ORDCNT'
    end
    object dtsCustomerCUST_ST: TSmallintField
      FieldName = 'CUST_ST'
      Origin = 'CUST_ST'
      Required = True
    end
    object dtsCustomerCUST_ID: TWideStringField
      FieldName = 'CUST_ID'
      Origin = 'CUST_ID'
      Required = True
      Size = 80
    end
    object dtsCustomerCUST_PASS: TWideStringField
      FieldName = 'CUST_PASS'
      Origin = 'CUST_PASS'
      Required = True
      Size = 120
    end
    object dtsCustomerCUST_TOTALAMOUNT: TIntegerField
      FieldName = 'CUST_TOTALAMOUNT'
      Origin = 'CUST_TOTALAMOUNT'
    end
    object dtsCustomerCUST_RCNTDATE: TWideStringField
      FieldName = 'CUST_RCNTDATE'
      Origin = 'CUST_RCNTDATE'
      Size = 40
    end
  end
  object dtsOrderList: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'DELIORDER.ORDD_SEQ'
        ParamType = ptInput
      end>
    ProviderName = 'dspOrderList'
    RemoteServer = DSProviderConnection1
    Left = 272
    Top = 296
    object dtsOrderListORDD_SEQ: TIntegerField
      FieldName = 'ORDD_SEQ'
      Origin = 'ORDD_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtsOrderListORDD_ST: TSmallintField
      FieldName = 'ORDD_ST'
      Origin = 'ORDD_ST'
      Required = True
    end
    object dtsOrderListORDD_DATE: TWideStringField
      FieldName = 'ORDD_DATE'
      Origin = 'ORDD_DATE'
      EditMask = '!9999/99/00;1;_'
      Size = 40
    end
    object dtsOrderListCUST_SEQ: TIntegerField
      FieldName = 'CUST_SEQ'
      Origin = 'CUST_SEQ'
    end
    object dtsOrderListORDD_MENUES: TWideStringField
      FieldName = 'ORDD_MENUES'
      Origin = 'ORDD_MENUES'
      Size = 120
    end
    object dtsOrderListCUST_NM: TWideStringField
      FieldName = 'CUST_NM'
      Origin = 'CUST_NM'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object dtsOrderListCUST_PHONE: TWideStringField
      FieldName = 'CUST_PHONE'
      Origin = 'CUST_PHONE'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object dtsOrderListCUST_ADDR: TWideStringField
      FieldName = 'CUST_ADDR'
      Origin = 'CUST_ADDR'
      ProviderFlags = []
      ReadOnly = True
      Size = 800
    end
    object dtsOrderListORDD_TPRICE: TIntegerField
      FieldName = 'ORDD_TPRICE'
      Origin = 'ORDD_TPRICE'
    end
    object dtsOrderListORDD_WAITTIME: TIntegerField
      FieldName = 'ORDD_WAITTIME'
      Origin = 'ORDD_WAITTIME'
    end
    object dtsOrderListDELI_MAN_SEQ: TIntegerField
      FieldName = 'DELI_MAN_SEQ'
      Origin = 'DELI_MAN_SEQ'
      ProviderFlags = []
      ReadOnly = True
    end
    object dtsOrderListDELI_MAN_NM: TWideStringField
      FieldName = 'DELI_MAN_NM'
      Origin = 'DELI_MAN_NM'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object dtsOrderListDELI_MAN_ST: TSmallintField
      FieldName = 'DELI_MAN_ST'
      Origin = 'DELI_MAN_ST'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object dtsFindCustomer: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFindCustomer'
    RemoteServer = DSProviderConnection1
    Left = 456
    Top = 208
    object dtsFindCustomerCUST_SEQ: TIntegerField
      DisplayLabel = #54924#50896' SEQ'
      FieldName = 'CUST_SEQ'
      Origin = 'CUST_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtsFindCustomerCUST_NM: TWideStringField
      DisplayLabel = #54924#50896' '#51060#47492
      FieldName = 'CUST_NM'
      Origin = 'CUST_NM'
      Required = True
      Size = 40
    end
    object dtsFindCustomerCUST_PHONE: TWideStringField
      DisplayLabel = #54924#50896' '#50672#46973#52376
      DisplayWidth = 70
      FieldName = 'CUST_PHONE'
      Origin = 'CUST_PHONE'
      Required = True
      Size = 80
    end
    object dtsFindCustomerCUST_REGDATE: TWideStringField
      DisplayLabel = #54924#50896' '#46321#47197#51068#51088
      FieldName = 'CUST_REGDATE'
      Origin = 'CUST_REGDATE'
      Required = True
      Size = 40
    end
    object dtsFindCustomerCUST_ADDR: TWideStringField
      DisplayLabel = #54924#50896' '#51452#49548
      DisplayWidth = 180
      FieldName = 'CUST_ADDR'
      Origin = 'CUST_ADDR'
      Required = True
      Size = 800
    end
    object dtsFindCustomerCUST_ORDCNT: TIntegerField
      DisplayLabel = #54924#50896' '#51452#47928' '#54943#49688
      FieldName = 'CUST_ORDCNT'
      Origin = 'CUST_ORDCNT'
    end
    object dtsFindCustomerCUST_ST: TSmallintField
      DisplayLabel = #54924#50896' '#51452#47928' '#49345#53468
      FieldName = 'CUST_ST'
      Origin = 'CUST_ST'
      Required = True
    end
    object dtsFindCustomerCUST_ID: TWideStringField
      FieldName = 'CUST_ID'
      Origin = 'CUST_ID'
      Required = True
      Size = 80
    end
    object dtsFindCustomerCUST_PASS: TWideStringField
      FieldName = 'CUST_PASS'
      Origin = 'CUST_PASS'
      Required = True
      Size = 120
    end
    object dtsFindCustomerCUST_TOTALAMOUNT: TIntegerField
      DisplayLabel = #54924#50896' '#51452#47928#52509#50529
      DisplayWidth = 50
      FieldName = 'CUST_TOTALAMOUNT'
      Origin = 'CUST_TOTALAMOUNT'
    end
    object dtsFindCustomerCUST_RCNTDATE: TWideStringField
      DisplayLabel = #52572#44540' '#51452#47928#51068#51088
      FieldName = 'CUST_RCNTDATE'
      Origin = 'CUST_RCNTDATE'
      Size = 40
    end
  end
  object dtsDetailOrderMenu: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'DELIORDER.ORDD_SEQ'
        ParamType = ptInput
      end>
    ProviderName = 'dspDetailOrderMenu'
    RemoteServer = DSProviderConnection1
    Left = 456
    Top = 296
    object dtsDetailOrderMenuORDMN_SEQ: TIntegerField
      FieldName = 'ORDMN_SEQ'
      Origin = 'ORDMN_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtsDetailOrderMenuORD_SEQ: TIntegerField
      FieldName = 'ORD_SEQ'
      Origin = 'ORD_SEQ'
      Required = True
    end
    object dtsDetailOrderMenuMENU_SEQ: TIntegerField
      FieldName = 'MENU_SEQ'
      Origin = 'MENU_SEQ'
      Required = True
    end
    object dtsDetailOrderMenuORDMN_QNT: TIntegerField
      FieldName = 'ORDMN_QNT'
      Origin = 'ORDMN_QNT'
      Required = True
    end
    object dtsDetailOrderMenuORDMN_PRICE: TIntegerField
      FieldName = 'ORDMN_PRICE'
      Origin = 'ORDMN_PRICE'
      Required = True
    end
    object dtsDetailOrderMenuMENU_NM: TWideStringField
      FieldName = 'MENU_NM'
      Origin = 'MENU_NM'
      ProviderFlags = []
      ReadOnly = True
      Size = 120
    end
  end
  object dtsGetNewOrderSEQ: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspInsertNewOrder'
    RemoteServer = DSProviderConnection1
    Left = 560
    Top = 208
    object dtsGetNewOrderSEQMAX: TIntegerField
      FieldName = 'MAX'
      Origin = '"MAX"'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DSClientCallbackChannelManager: TDSClientCallbackChannelManager
    DSHostname = '192.168.200.5'
    DSPort = '211'
    CommunicationProtocol = 'tcp/ip'
    ChannelName = 'local'
    ManagerId = 'ManagerJY'
    Left = 616
    Top = 72
  end
  object dtsOrderWorking: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOrderWorking'
    RemoteServer = DSProviderConnection1
    Left = 584
    Top = 296
    object dtsOrderWorkingORDD_SEQ: TAutoIncField
      FieldName = 'ORDD_SEQ'
      Origin = 'ORDD_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object dtsOrderWorkingORDD_DATE: TWideStringField
      FieldName = 'ORDD_DATE'
      Origin = 'ORDD_DATE'
      FixedChar = True
      Size = 48
    end
    object dtsOrderWorkingORDD_ST: TSmallintField
      FieldName = 'ORDD_ST'
      Origin = 'ORDD_ST'
      Required = True
    end
    object dtsOrderWorkingCUST_SEQ: TIntegerField
      FieldName = 'CUST_SEQ'
      Origin = 'CUST_SEQ'
    end
    object dtsOrderWorkingORDD_FIMGSEQ: TIntegerField
      FieldName = 'ORDD_FIMGSEQ'
      Origin = 'ORDD_FIMGSEQ'
    end
    object dtsOrderWorkingORDD_MENUES: TWideStringField
      FieldName = 'ORDD_MENUES'
      Origin = 'ORDD_MENUES'
      Size = 120
    end
    object dtsOrderWorkingCUST_NM: TWideStringField
      FieldName = 'CUST_NM'
      Origin = 'CUST_NM'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object dtsOrderWorkingCUST_PHONE: TWideStringField
      FieldName = 'CUST_PHONE'
      Origin = 'CUST_PHONE'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object dtsOrderWorkingCUST_ADDR: TWideStringField
      FieldName = 'CUST_ADDR'
      Origin = 'CUST_ADDR'
      ProviderFlags = []
      ReadOnly = True
      Size = 800
    end
    object dtsOrderWorkingORDD_TPRICE: TIntegerField
      FieldName = 'ORDD_TPRICE'
      Origin = 'ORDD_TPRICE'
    end
    object dtsOrderWorkingORDD_WAITTIME: TIntegerField
      FieldName = 'ORDD_WAITTIME'
      Origin = 'ORDD_WAITTIME'
    end
    object dtsOrderWorkingDELI_MAN_SEQ: TIntegerField
      FieldName = 'DELI_MAN_SEQ'
      Origin = 'DELI_MAN_SEQ'
      ProviderFlags = []
      ReadOnly = True
    end
    object dtsOrderWorkingDELI_MAN_NM: TWideStringField
      FieldName = 'DELI_MAN_NM'
      Origin = 'DELI_MAN_NM'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object dtsOrderWorkingDELI_MAN_ST: TSmallintField
      FieldName = 'DELI_MAN_ST'
      Origin = 'DELI_MAN_ST'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object dtsTbDeliOrder: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTbDeliOrderNew'
    RemoteServer = DSProviderConnection1
    Left = 760
    Top = 32
  end
  object dtsQryDeliOrder: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQryDeliOrder'
    RemoteServer = DSProviderConnection1
    Left = 720
    Top = 208
    object dtsQryDeliOrderORDD_SEQ: TAutoIncField
      FieldName = 'ORDD_SEQ'
      Origin = 'ORDD_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object dtsQryDeliOrderORDD_ST: TSmallintField
      FieldName = 'ORDD_ST'
      Origin = 'ORDD_ST'
      Required = True
    end
    object dtsQryDeliOrderCUST_SEQ: TIntegerField
      FieldName = 'CUST_SEQ'
      Origin = 'CUST_SEQ'
    end
    object dtsQryDeliOrderORDD_WAITTIME: TIntegerField
      FieldName = 'ORDD_WAITTIME'
      Origin = 'ORDD_WAITTIME'
    end
    object dtsQryDeliOrderORDD_STNGTIME: TTimeField
      FieldName = 'ORDD_STNGTIME'
      Origin = 'ORDD_STNGTIME'
    end
    object dtsQryDeliOrderDELI_MAN_SEQ: TIntegerField
      FieldName = 'DELI_MAN_SEQ'
      Origin = 'DELI_MAN_SEQ'
    end
    object dtsQryDeliOrderORDD_FNTIME: TTimeField
      FieldName = 'ORDD_FNTIME'
      Origin = 'ORDD_FNTIME'
    end
    object dtsQryDeliOrderORDD_DATE: TWideStringField
      FieldName = 'ORDD_DATE'
      Origin = 'ORDD_DATE'
      FixedChar = True
      Size = 48
    end
    object dtsQryDeliOrderORDD_MENUES: TWideStringField
      FieldName = 'ORDD_MENUES'
      Origin = 'ORDD_MENUES'
      Size = 120
    end
    object dtsQryDeliOrderORDD_TPRICE: TIntegerField
      FieldName = 'ORDD_TPRICE'
      Origin = 'ORDD_TPRICE'
    end
    object dtsQryDeliOrderORDD_FIMGSEQ: TIntegerField
      FieldName = 'ORDD_FIMGSEQ'
      Origin = 'ORDD_FIMGSEQ'
    end
  end
end

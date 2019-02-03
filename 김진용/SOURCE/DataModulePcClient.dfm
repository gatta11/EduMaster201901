object dmPcClient: TdmPcClient
  OldCreateOrder = False
  Height = 362
  Width = 533
  object SQLConnection1: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXDataSnap'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=24.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'DriverName=DataSnap'
      'HostName=localhost'
      'port=211'
      'Filters={}'
      'CommunicationProtocol=tcp/ip')
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
    object dtsDeliveryManDELI_MAN_SEX: TIntegerField
      FieldName = 'DELI_MAN_SEX'
      Origin = 'DELI_MAN_SEX'
      Required = True
    end
    object dtsDeliveryManDELI_MAN_AGE: TIntegerField
      FieldName = 'DELI_MAN_AGE'
      Origin = 'DELI_MAN_AGE'
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
    object dtsDeliveryManDELI_MAN_CMT: TWideStringField
      FieldName = 'DELI_MAN_CMT'
      Origin = 'DELI_MAN_CMT'
      Size = 4000
    end
    object dtsDeliveryManDELI_MAN_ST: TSmallintField
      FieldName = 'DELI_MAN_ST'
      Origin = 'DELI_MAN_ST'
      Required = True
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
end

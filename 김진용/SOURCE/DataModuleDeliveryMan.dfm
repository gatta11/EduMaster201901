object dmDeliveryMan: TdmDeliveryMan
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
    Left = 105
    Top = 95
    UniqueId = '{23397A5D-0362-4DAC-A8CC-5B6B7A1831CC}'
  end
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TServerMethods1'
    Connected = True
    SQLConnection = SQLConnection1
    Left = 217
    Top = 87
  end
  object dtsDeliveryMan: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DELI_MAN_SEQ'
        DataType = ftInteger
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
        Name = 'DELI_MAN_ST'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 4
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
        Name = 'DELI_MAN_CMT'
        DataType = ftWideString
        Size = 4000
      end
      item
        Name = 'DELI_MAN_IMAGE'
        DataType = ftWideMemo
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
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dsp_DeliveryMan'
    RemoteServer = DSProviderConnection1
    StoreDefs = True
    OnCalcFields = dtsDeliveryManCalcFields
    Left = 169
    Top = 210
    object dtsDeliveryManDELI_MAN_NM: TWideStringField
      Alignment = taCenter
      DisplayLabel = #48176#45804#44592#49324#47749
      DisplayWidth = 12
      FieldName = 'DELI_MAN_NM'
      Origin = 'DELI_MAN_NM'
      Required = True
      Size = 40
    end
    object dtsDeliveryManDELI_MAN_SEX: TIntegerField
      Alignment = taCenter
      DisplayLabel = #49457#48324
      DisplayWidth = 5
      FieldName = 'DELI_MAN_SEX'
      Origin = 'DELI_MAN_SEX'
      Required = True
    end
    object dtsDeliveryManDELI_MAN_AGE: TIntegerField
      Alignment = taCenter
      DisplayLabel = #45208#51060
      DisplayWidth = 6
      FieldName = 'DELI_MAN_AGE'
      Origin = 'DELI_MAN_AGE'
      Required = True
    end
    object dtsDeliveryManDELI_MAN_PHONE: TWideStringField
      Alignment = taCenter
      DisplayLabel = #50672#46973#52376
      DisplayWidth = 15
      FieldName = 'DELI_MAN_PHONE'
      Origin = 'DELI_MAN_PHONE'
      Required = True
      Size = 80
    end
    object dtsDeliveryManDELI_MAN_OFFICE: TWideStringField
      Alignment = taCenter
      DisplayLabel = #48176#45804#44592#49324' '#49324#47924#49548
      DisplayWidth = 2
      FieldName = 'DELI_MAN_OFFICE'
      Origin = 'DELI_MAN_OFFICE'
      Required = True
      Size = 120
    end
    object dtsDeliveryManDELI_MAN_ADDR: TWideStringField
      Alignment = taCenter
      DisplayLabel = #48176#45804#44592#49324' '#51452#49548
      DisplayWidth = 40
      FieldName = 'DELI_MAN_ADDR'
      Origin = 'DELI_MAN_ADDR'
      Required = True
      Size = 800
    end
    object dtsDeliveryManDELI_MAN_KORST: TStringField
      DisplayLabel = #48176#45804#44592#49324' '#49345#53468
      FieldKind = fkCalculated
      FieldName = 'DELI_MAN_KORST'
      Calculated = True
    end
    object dtsDeliveryManDELI_MAN_DELICOUNT: TIntegerField
      DisplayLabel = #48176#45804#54943#49688
      DisplayWidth = 5
      FieldName = 'DELI_MAN_DELICOUNT'
      Origin = 'DELI_MAN_DELICOUNT'
    end
    object dtsDeliveryManDELI_MAN_CMT: TWideStringField
      DisplayLabel = #48176#45804#44592#49324' '#47700#47784
      DisplayWidth = 50
      FieldName = 'DELI_MAN_CMT'
      Origin = 'DELI_MAN_CMT'
      Size = 4000
    end
    object dtsDeliveryManDELI_MAN_SEQ: TIntegerField
      Alignment = taCenter
      FieldName = 'DELI_MAN_SEQ'
      Origin = 'DELI_MAN_SEQ'
    end
    object dtsDeliveryManDELI_MAN_DNTIME: TWideStringField
      DisplayLabel = #48176#45804' '#51217#49688' '#49884#44036
      DisplayWidth = 15
      FieldName = 'DELI_MAN_DNTIME'
      Origin = 'DELI_MAN_DNTIME'
      Size = 48
    end
    object dtsDeliveryManDELI_MAN_DLTIME: TWideStringField
      DisplayLabel = #48176#45804' '#50756#47308' '#49884#44036
      DisplayWidth = 15
      FieldName = 'DELI_MAN_DLTIME'
      Origin = 'DELI_MAN_DLTIME'
      Size = 48
    end
    object dtsDeliveryManDELI_MAN_IMAGE: TWideMemoField
      FieldName = 'DELI_MAN_IMAGE'
      Origin = 'DELI_MAN_IMAGE'
      BlobType = ftWideMemo
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
    object dtsDeliveryManDELI_MAN_KORSEX: TStringField
      Alignment = taCenter
      FieldKind = fkCalculated
      FieldName = 'DELI_MAN_KORSEX'
      Calculated = True
    end
    object dtsDeliveryManDELI_MAN_ST: TWideStringField
      Alignment = taCenter
      DisplayLabel = #54788#51116' '#48176#45804' '#49345#53468
      FieldName = 'DELI_MAN_ST'
      Origin = 'DELI_MAN_ST'
      Required = True
      Size = 4
    end
  end
end

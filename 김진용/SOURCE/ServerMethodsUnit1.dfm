object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  Height = 478
  Width = 680
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\DB\JY_Project\TESTDB2.IB'
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=UTF8'
      'DriverID=IB')
    Connected = True
    LoginPrompt = False
    Left = 72
    Top = 32
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 200
    Top = 24
  end
  object tb_DEliveryMan: TFDTable
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'DELIVERYMAN'
    UpdateOptions.AutoIncFields = 'DELI_MAN_SEQ'
    TableName = 'DELIVERYMAN'
    Left = 72
    Top = 152
    object tb_DEliveryManDELI_MAN_SEQ: TFDAutoIncField
      FieldName = 'DELI_MAN_SEQ'
      Origin = 'DELI_MAN_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere]
      IdentityInsert = True
    end
    object tb_DEliveryManDELI_MAN_NM: TWideStringField
      FieldName = 'DELI_MAN_NM'
      Origin = 'DELI_MAN_NM'
      Required = True
      Size = 40
    end
    object tb_DEliveryManDELI_MAN_SEX: TIntegerField
      FieldName = 'DELI_MAN_SEX'
      Origin = 'DELI_MAN_SEX'
      Required = True
    end
    object tb_DEliveryManDELI_MAN_AGE: TIntegerField
      FieldName = 'DELI_MAN_AGE'
      Origin = 'DELI_MAN_AGE'
      Required = True
    end
    object tb_DEliveryManDELI_MAN_PHONE: TWideStringField
      FieldName = 'DELI_MAN_PHONE'
      Origin = 'DELI_MAN_PHONE'
      Required = True
      Size = 80
    end
    object tb_DEliveryManDELI_MAN_OFFICE: TWideStringField
      FieldName = 'DELI_MAN_OFFICE'
      Origin = 'DELI_MAN_OFFICE'
      Required = True
      Size = 120
    end
    object tb_DEliveryManDELI_MAN_ADDR: TWideStringField
      FieldName = 'DELI_MAN_ADDR'
      Origin = 'DELI_MAN_ADDR'
      Required = True
      Size = 800
    end
    object tb_DEliveryManDELI_MAN_DELICOUNT: TIntegerField
      FieldName = 'DELI_MAN_DELICOUNT'
      Origin = 'DELI_MAN_DELICOUNT'
    end
    object tb_DEliveryManDELI_MAN_DNTIME: TWideStringField
      FieldName = 'DELI_MAN_DNTIME'
      Origin = 'DELI_MAN_DNTIME'
      Size = 48
    end
    object tb_DEliveryManDELI_MAN_DLTIME: TWideStringField
      FieldName = 'DELI_MAN_DLTIME'
      Origin = 'DELI_MAN_DLTIME'
      Size = 48
    end
    object tb_DEliveryManDELI_MAN_ID: TWideStringField
      FieldName = 'DELI_MAN_ID'
      Origin = 'DELI_MAN_ID'
      Required = True
      Size = 80
    end
    object tb_DEliveryManDELI_MAN_PASS: TWideStringField
      FieldName = 'DELI_MAN_PASS'
      Origin = 'DELI_MAN_PASS'
      Required = True
      Size = 120
    end
    object tb_DEliveryManDELI_MAN_CLOSING: TIntegerField
      FieldName = 'DELI_MAN_CLOSING'
      Origin = 'DELI_MAN_CLOSING'
      Required = True
    end
    object tb_DEliveryManDELI_MAN_DEBT: TIntegerField
      FieldName = 'DELI_MAN_DEBT'
      Origin = 'DELI_MAN_DEBT'
      Required = True
    end
    object tb_DEliveryManDELI_MAN_IMAGE: TBlobField
      FieldName = 'DELI_MAN_IMAGE'
      Origin = 'DELI_MAN_IMAGE'
    end
    object tb_DEliveryManDELI_MAN_CMT: TWideStringField
      FieldName = 'DELI_MAN_CMT'
      Origin = 'DELI_MAN_CMT'
      Size = 4000
    end
    object tb_DEliveryManDELI_MAN_ST: TSmallintField
      FieldName = 'DELI_MAN_ST'
      Origin = 'DELI_MAN_ST'
      Required = True
    end
  end
  object dsp_DeliveryMan: TDataSetProvider
    DataSet = tb_DEliveryMan
    Left = 72
    Top = 224
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 312
    Top = 24
  end
  object tb_Menu: TFDTable
    IndexFieldNames = 'MENU_SEQ'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'MENU'
    UpdateOptions.AutoIncFields = 'MENU_SEQ'
    TableName = 'MENU'
    Left = 192
    Top = 152
    object tb_MenuMENU_SEQ: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'MENU_SEQ'
      Origin = 'MENU_SEQ'
    end
    object tb_MenuMENU_NM: TWideStringField
      FieldName = 'MENU_NM'
      Origin = 'MENU_NM'
      Required = True
      Size = 40
    end
    object tb_MenuMENU_PRICE: TIntegerField
      FieldName = 'MENU_PRICE'
      Origin = 'MENU_PRICE'
      Required = True
      DisplayFormat = '#,##0'
    end
    object tb_MenuMENU_QNT: TIntegerField
      FieldName = 'MENU_QNT'
      Origin = 'MENU_QNT'
      Required = True
    end
    object tb_MenuMENU_COOKTIME: TIntegerField
      FieldName = 'MENU_COOKTIME'
      Origin = 'MENU_COOKTIME'
      Required = True
    end
    object tb_MenuMENU_WAITTIME: TIntegerField
      FieldName = 'MENU_WAITTIME'
      Origin = 'MENU_WAITTIME'
      Required = True
    end
    object tb_MenuMENU_IMAGE: TBlobField
      FieldName = 'MENU_IMAGE'
      Origin = 'MENU_IMAGE'
    end
    object tb_MenuMENU_CMT: TWideStringField
      FieldName = 'MENU_CMT'
      Origin = 'MENU_CMT'
      Size = 40
    end
  end
  object dsp_Menu: TDataSetProvider
    DataSet = tb_Menu
    Left = 192
    Top = 232
  end
  object qryMenuList: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'SELECT MENU_SEQ, MENU_IMAGE, MENU_NM, MENU_PRICE, MENU_QNT FROM ' +
        'MENU')
    Left = 296
    Top = 152
    object qryMenuListMENU_SEQ: TIntegerField
      FieldName = 'MENU_SEQ'
      Origin = 'MENU_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMenuListMENU_IMAGE: TBlobField
      FieldName = 'MENU_IMAGE'
      Origin = 'MENU_IMAGE'
    end
    object qryMenuListMENU_NM: TWideStringField
      FieldName = 'MENU_NM'
      Origin = 'MENU_NM'
      Required = True
      Size = 40
    end
    object qryMenuListMENU_PRICE: TIntegerField
      FieldName = 'MENU_PRICE'
      Origin = 'MENU_PRICE'
      Required = True
      DisplayFormat = '#,##0'
    end
    object qryMenuListMENU_QNT: TIntegerField
      FieldName = 'MENU_QNT'
      Origin = 'MENU_QNT'
      Required = True
    end
  end
  object dspMenuList: TDataSetProvider
    DataSet = qryMenuList
    Left = 296
    Top = 232
  end
  object qryOrderMenu: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'SELECT MENU_IMAGE, MENU_NM, MENU_QNT, MENU_PRICE, MENU_COOKTIME ' +
        'FROM MENU, ORDERMENU'
      'WHERE '
      '    ORDERMENU.MENU_SEQ = MENU.MENU_SEQ')
    Left = 392
    Top = 152
    object qryOrderMenuMENU_IMAGE: TBlobField
      FieldName = 'MENU_IMAGE'
      Origin = 'MENU_IMAGE'
    end
    object qryOrderMenuMENU_NM: TWideStringField
      FieldName = 'MENU_NM'
      Origin = 'MENU_NM'
      Required = True
      Size = 120
    end
    object qryOrderMenuMENU_QNT: TIntegerField
      FieldName = 'MENU_QNT'
      Origin = 'MENU_QNT'
      Required = True
    end
    object qryOrderMenuMENU_PRICE: TIntegerField
      FieldName = 'MENU_PRICE'
      Origin = 'MENU_PRICE'
      Required = True
      DisplayFormat = '#,##0'
    end
    object qryOrderMenuMENU_COOKTIME: TIntegerField
      FieldName = 'MENU_COOKTIME'
      Origin = 'MENU_COOKTIME'
      Required = True
    end
  end
  object dspOrderMenu: TDataSetProvider
    DataSet = qryOrderMenu
    Left = 392
    Top = 232
  end
  object tb_OrderMenu: TFDTable
    IndexFieldNames = 'ORDMN_SEQ'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'ORDERMENU'
    UpdateOptions.AutoIncFields = 'ORDMN_SEQ'
    TableName = 'ORDERMENU'
    Left = 568
    Top = 48
    object tb_OrderMenuORDMN_SEQ: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ORDMN_SEQ'
      Origin = 'ORDMN_SEQ'
    end
    object tb_OrderMenuORD_SEQ: TIntegerField
      FieldName = 'ORD_SEQ'
      Origin = 'ORD_SEQ'
      Required = True
    end
    object tb_OrderMenuMENU_SEQ: TIntegerField
      FieldName = 'MENU_SEQ'
      Origin = 'MENU_SEQ'
      Required = True
    end
    object tb_OrderMenuORDMN_QNT: TIntegerField
      FieldName = 'ORDMN_QNT'
      Origin = 'ORDMN_QNT'
      Required = True
    end
    object tb_OrderMenuORDMN_PRICE: TIntegerField
      FieldName = 'ORDMN_PRICE'
      Origin = 'ORDMN_PRICE'
      Required = True
      DisplayFormat = '#,##0'
    end
  end
  object dspTbOrderMenu: TDataSetProvider
    DataSet = tb_OrderMenu
    Left = 568
    Top = 104
  end
  object tb_Customer: TFDTable
    Active = True
    IndexFieldNames = 'CUST_SEQ'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'CUSTOMER'
    UpdateOptions.AutoIncFields = 'CUST_SEQ'
    TableName = 'CUSTOMER'
    Left = 488
    Top = 152
    object tb_CustomerCUST_SEQ: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CUST_SEQ'
      Origin = 'CUST_SEQ'
    end
    object tb_CustomerCUST_NM: TWideStringField
      FieldName = 'CUST_NM'
      Origin = 'CUST_NM'
      Required = True
      Size = 40
    end
    object tb_CustomerCUST_PHONE: TWideStringField
      FieldName = 'CUST_PHONE'
      Origin = 'CUST_PHONE'
      Required = True
      Size = 80
    end
    object tb_CustomerCUST_REGDATE: TWideStringField
      FieldName = 'CUST_REGDATE'
      Origin = 'CUST_REGDATE'
      Required = True
      Size = 40
    end
    object tb_CustomerCUST_ADDR: TWideStringField
      FieldName = 'CUST_ADDR'
      Origin = 'CUST_ADDR'
      Required = True
      Size = 800
    end
    object tb_CustomerCUST_ORDCNT: TIntegerField
      FieldName = 'CUST_ORDCNT'
      Origin = 'CUST_ORDCNT'
    end
    object tb_CustomerCUST_ST: TSmallintField
      FieldName = 'CUST_ST'
      Origin = 'CUST_ST'
      Required = True
    end
    object tb_CustomerCUST_ID: TWideStringField
      FieldName = 'CUST_ID'
      Origin = 'CUST_ID'
      Required = True
      Size = 80
    end
    object tb_CustomerCUST_PASS: TWideStringField
      FieldName = 'CUST_PASS'
      Origin = 'CUST_PASS'
      Required = True
      Size = 120
    end
    object tb_CustomerCUST_TOTALAMOUNT: TIntegerField
      FieldName = 'CUST_TOTALAMOUNT'
      Origin = 'CUST_TOTALAMOUNT'
    end
    object tb_CustomerCUST_RCNTDATE: TWideStringField
      FieldName = 'CUST_RCNTDATE'
      Origin = 'CUST_RCNTDATE'
      Size = 40
    end
  end
  object dspCustomer: TDataSetProvider
    DataSet = tb_Customer
    Left = 488
    Top = 232
  end
end

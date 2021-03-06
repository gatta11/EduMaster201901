object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  OnCreate = DSServerModuleCreate
  Height = 694
  Width = 1108
  object FDConnection1: TFDConnection
    Params.Strings = (
      'ConnectionDef=JinyongProject')
    FormatOptions.AssignedValues = [fvSE2Null]
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
    Active = True
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
    Active = True
    IndexFieldNames = 'MENU_SEQ'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'MENU'
    UpdateOptions.AutoIncFields = 'MENU_SEQ'
    TableName = 'MENU'
    Left = 176
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
    Left = 168
    Top = 232
  end
  object qryMenuList: TFDQuery
    Active = True
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
    Active = True
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
    Active = True
    IndexFieldNames = 'ORDMN_SEQ'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'ORDERMENU'
    UpdateOptions.AutoIncFields = 'ORDMN_SEQ'
    TableName = 'ORDERMENU'
    Left = 584
    Top = 152
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
    Left = 584
    Top = 232
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
  object qryOrderList: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT DELIORDER.ORDD_SEQ,'
      '           DELIORDER.ORDD_DATE,'
      #9'   DELIORDER.ORDD_ST,'
      #9'   DELIORDER.CUST_SEQ,'
      #9'   DELIORDER.ORDD_MENUES,'#9'   '
      '       CUSTOMER.CUST_NM,'
      '       CUSTOMER.CUST_PHONE,'
      '       CUSTOMER.CUST_ADDR,'
      #9'   DELIORDER.ORDD_TPRICE,'
      #9'   DELIORDER.ORDD_WAITTIME,'
      #9'   DELIVERYMAN.DELI_MAN_SEQ,'
      '       DELIVERYMAN.DELI_MAN_NM,'
      '       DELIVERYMAN.DELI_MAN_ST'
      #9'   '
      
        '  FROM DELIORDER D LEFT JOIN CUSTOMER C ON D.CUST_SEQ = C.CUST_S' +
        'EQ'
      
        '       LEFT JOIN DELIVERYMAN DE ON D.DELI_MAN_SEQ = DE.DELI_MAN_' +
        'SEQ')
    Left = 984
    Top = 16
    object qryOrderListORDD_SEQ: TIntegerField
      FieldName = 'ORDD_SEQ'
      Origin = 'ORDD_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryOrderListORDD_ST: TSmallintField
      FieldName = 'ORDD_ST'
      Origin = 'ORDD_ST'
      Required = True
    end
    object qryOrderListORDD_DATE: TWideStringField
      FieldName = 'ORDD_DATE'
      Origin = 'ORDD_DATE'
      Size = 40
    end
    object qryOrderListCUST_SEQ: TIntegerField
      FieldName = 'CUST_SEQ'
      Origin = 'CUST_SEQ'
    end
    object qryOrderListORDD_MENUES: TWideStringField
      FieldName = 'ORDD_MENUES'
      Origin = 'ORDD_MENUES'
      Size = 120
    end
    object qryOrderListCUST_NM: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'CUST_NM'
      Origin = 'CUST_NM'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object qryOrderListCUST_PHONE: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'CUST_PHONE'
      Origin = 'CUST_PHONE'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object qryOrderListCUST_ADDR: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'CUST_ADDR'
      Origin = 'CUST_ADDR'
      ProviderFlags = []
      ReadOnly = True
      Size = 800
    end
    object qryOrderListORDD_TPRICE: TIntegerField
      FieldName = 'ORDD_TPRICE'
      Origin = 'ORDD_TPRICE'
    end
    object qryOrderListORDD_WAITTIME: TIntegerField
      FieldName = 'ORDD_WAITTIME'
      Origin = 'ORDD_WAITTIME'
    end
    object qryOrderListDELI_MAN_SEQ: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DELI_MAN_SEQ'
      Origin = 'DELI_MAN_SEQ'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryOrderListDELI_MAN_NM: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'DELI_MAN_NM'
      Origin = 'DELI_MAN_NM'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object qryOrderListDELI_MAN_ST: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'DELI_MAN_ST'
      Origin = 'DELI_MAN_ST'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object dspOrderList: TDataSetProvider
    DataSet = qryOrderList
    Left = 976
    Top = 72
  end
  object qryFindCustomer: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM CUSTOMER')
    Left = 264
    Top = 384
  end
  object dspFindCustomer: TDataSetProvider
    DataSet = qryFindCustomer
    Left = 264
    Top = 440
  end
  object qryDeliveryList: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      
        'SELECT ORDD_SEQ, CUST_SEQ,CUST_NM, CUST_ADDR,CUST_PHONE, ORDD_ME' +
        'NUES, ORDD_TPRICE, ORDD_FNTIME FROM DELIORDER, CUSTOMER'
      'WHERE'
      '     DELIORDER.DELI_MAN_SEQ = :DELI_MAN_SEQ'
      '     AND DELIORDER.CUST_SEQ = CUSTOMER.CUST_SEQ'
      '')
    Left = 384
    Top = 384
    ParamData = <
      item
        Name = 'DELI_MAN_SEQ'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryDeliveryListORDD_SEQ: TIntegerField
      FieldName = 'ORDD_SEQ'
      Origin = 'ORDD_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDeliveryListCUST_SEQ: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CUST_SEQ'
      Origin = 'CUST_SEQ'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryDeliveryListCUST_NM: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'CUST_NM'
      Origin = 'CUST_NM'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object qryDeliveryListCUST_ADDR: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'CUST_ADDR'
      Origin = 'CUST_ADDR'
      ProviderFlags = []
      ReadOnly = True
      Size = 800
    end
    object qryDeliveryListORDD_MENUES: TWideStringField
      FieldName = 'ORDD_MENUES'
      Origin = 'ORDD_MENUES'
      Size = 120
    end
    object qryDeliveryListORDD_TPRICE: TIntegerField
      FieldName = 'ORDD_TPRICE'
      Origin = 'ORDD_TPRICE'
    end
    object qryDeliveryListORDD_FNTIME: TTimeField
      FieldName = 'ORDD_FNTIME'
      Origin = 'ORDD_FNTIME'
    end
    object qryDeliveryListCUST_PHONE: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'CUST_PHONE'
      Origin = 'CUST_PHONE'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
  object dspDeliveryList: TDataSetProvider
    DataSet = qryDeliveryList
    Left = 384
    Top = 448
  end
  object qryDeliLogin: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT DELI_MAN_ID, DELI_MAN_PASS, DELI_MAN_NM FROM DELIVERYMAN'
      'WHERE'
      '    DELIVERYMAN.DELI_MAN_ID = :DELI_MAN_ID')
    Left = 488
    Top = 384
    ParamData = <
      item
        Name = 'DELI_MAN_ID'
        DataType = ftWideString
        ParamType = ptInput
        Size = 80
        Value = Null
      end>
  end
  object dspDeliLogin: TDataSetProvider
    DataSet = qryDeliLogin
    Left = 488
    Top = 456
  end
  object qryDetailOrderMenu: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT ORDERMENU.*, MENU_NM'
      'FROM ORDERMENU, MENU'
      'WHERE ORDERMENU.ORD_SEQ = :DELIORDER.ORDD_SEQ'
      '      AND MENU.MENU_SEQ = ORDERMENU.MENU_SEQ'
      'ORDER BY ORDMN_PRICE DESC')
    Left = 584
    Top = 384
    ParamData = <
      item
        Name = 'DELIORDER.ORDD_SEQ'
        DataType = ftInteger
        ParamType = ptInput
        Value = 165
      end>
    object qryDetailOrderMenuORDMN_SEQ: TIntegerField
      FieldName = 'ORDMN_SEQ'
      Origin = 'ORDMN_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDetailOrderMenuORD_SEQ: TIntegerField
      FieldName = 'ORD_SEQ'
      Origin = 'ORD_SEQ'
      Required = True
    end
    object qryDetailOrderMenuMENU_SEQ: TIntegerField
      FieldName = 'MENU_SEQ'
      Origin = 'MENU_SEQ'
      Required = True
    end
    object qryDetailOrderMenuORDMN_QNT: TIntegerField
      FieldName = 'ORDMN_QNT'
      Origin = 'ORDMN_QNT'
      Required = True
    end
    object qryDetailOrderMenuORDMN_PRICE: TIntegerField
      FieldName = 'ORDMN_PRICE'
      Origin = 'ORDMN_PRICE'
      Required = True
    end
    object qryDetailOrderMenuMENU_NM: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'MENU_NM'
      Origin = 'MENU_NM'
      ProviderFlags = []
      ReadOnly = True
      Size = 120
    end
  end
  object dspDetailOrderMenu: TDataSetProvider
    DataSet = qryDetailOrderMenu
    Left = 592
    Top = 448
  end
  object qryInsertNewOrder: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT MAX(ORDD_SEQ) FROM DELIORDER')
    Left = 352
    Top = 544
  end
  object dspInsertNewOrder: TDataSetProvider
    DataSet = qryInsertNewOrder
    Left = 352
    Top = 600
  end
  object qryFindMenu: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT MENU_NM FROM MENU'
      'WHERE MENU.MENU_SEQ = :MENU_SEQ')
    Left = 976
    Top = 176
    ParamData = <
      item
        Name = 'MENU_SEQ'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object qryOrderWorking: TFDQuery
    Active = True
    OnCalcFields = qryOrderWorkingCalcFields
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT DELIORDER.ORDD_SEQ,'
      '           DELIORDER.ORDD_DATE,'
      #9'   DELIORDER.ORDD_ST,'
      #9'   DELIORDER.CUST_SEQ,'
      #9'   DELIORDER.ORDD_MENUES,'
      #9'   DELIORDER.ORDD_STNGTIME,'
      #9'   DELIORDER.ORDD_FNTIME,'
      ''
      ''
      ' DELIORDER.ORDD_FIMGSEQ,'#9'   '
      '       CUSTOMER.CUST_NM,'
      '       CUSTOMER.CUST_PHONE,'
      '       CUSTOMER.CUST_ADDR,'
      #9'   DELIORDER.ORDD_TPRICE,'
      #9'   DELIORDER.ORDD_WAITTIME,'
      #9'   DELIVERYMAN.DELI_MAN_SEQ,'
      '       DELIVERYMAN.DELI_MAN_NM,'
      '       DELIVERYMAN.DELI_MAN_ST'
      #9'   '
      
        '  FROM DELIORDER D LEFT JOIN CUSTOMER C ON D.CUST_SEQ = C.CUST_S' +
        'EQ'
      
        '       LEFT JOIN DELIVERYMAN DE ON D.DELI_MAN_SEQ = DE.DELI_MAN_' +
        'SEQ'
      '  WHERE     D.ORDD_ST < 5 AND ORDD_DATE = CURRENT_DATE'
      'ORDER BY ORDD_SEQ'
      '')
    Left = 160
    Top = 536
    object qryOrderWorkingORDD_SEQ: TFDAutoIncField
      FieldName = 'ORDD_SEQ'
      Origin = 'ORDD_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object qryOrderWorkingORDD_DATE: TWideStringField
      FieldName = 'ORDD_DATE'
      Origin = 'ORDD_DATE'
      FixedChar = True
      Size = 48
    end
    object qryOrderWorkingORDD_ST: TSmallintField
      FieldName = 'ORDD_ST'
      Origin = 'ORDD_ST'
      Required = True
    end
    object qryOrderWorkingCUST_SEQ: TIntegerField
      FieldName = 'CUST_SEQ'
      Origin = 'CUST_SEQ'
    end
    object qryOrderWorkingORDD_MENUES: TWideStringField
      FieldName = 'ORDD_MENUES'
      Origin = 'ORDD_MENUES'
      Size = 120
    end
    object qryOrderWorkingORDD_FIMGSEQ: TIntegerField
      FieldName = 'ORDD_FIMGSEQ'
      Origin = 'ORDD_FIMGSEQ'
    end
    object qryOrderWorkingCUST_NM: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'CUST_NM'
      Origin = 'CUST_NM'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object qryOrderWorkingCUST_PHONE: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'CUST_PHONE'
      Origin = 'CUST_PHONE'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object qryOrderWorkingCUST_ADDR: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'CUST_ADDR'
      Origin = 'CUST_ADDR'
      ProviderFlags = []
      ReadOnly = True
      Size = 800
    end
    object qryOrderWorkingORDD_TPRICE: TIntegerField
      FieldName = 'ORDD_TPRICE'
      Origin = 'ORDD_TPRICE'
      DisplayFormat = '#,##0'#50896
    end
    object qryOrderWorkingORDD_WAITTIME: TIntegerField
      FieldName = 'ORDD_WAITTIME'
      Origin = 'ORDD_WAITTIME'
    end
    object qryOrderWorkingDELI_MAN_SEQ: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DELI_MAN_SEQ'
      Origin = 'DELI_MAN_SEQ'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryOrderWorkingDELI_MAN_NM: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'DELI_MAN_NM'
      Origin = 'DELI_MAN_NM'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object qryOrderWorkingDELI_MAN_ST: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'DELI_MAN_ST'
      Origin = 'DELI_MAN_ST'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryOrderWorkingORDD_STNGTIME: TTimeField
      FieldName = 'ORDD_STNGTIME'
      Origin = 'ORDD_STNGTIME'
    end
    object qryOrderWorkingORDD_FNTIME: TTimeField
      FieldName = 'ORDD_FNTIME'
      Origin = 'ORDD_FNTIME'
    end
    object qryOrderWorkingORDD_CALC_ST: TStringField
      FieldKind = fkCalculated
      FieldName = 'ORDD_CALC_ST'
      Calculated = True
    end
  end
  object dspOrderWorking: TDataSetProvider
    DataSet = qryOrderWorking
    Constraints = False
    Left = 160
    Top = 592
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SeleCT * FROM '
      'DELIORDER')
    Left = 64
    Top = 536
  end
  object dspTbDeliOrder2: TDataSetProvider
    Left = 64
    Top = 592
  end
  object dspTbDeliOrderNew: TDataSetProvider
    DataSet = tbDeliOrder
    Left = 56
    Top = 448
  end
  object tbDeliOrder: TFDTable
    Active = True
    IndexFieldNames = 'ORDD_SEQ'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'DELIORDER'
    UpdateOptions.AutoIncFields = 'ORDD_SEQ'
    TableName = 'DELIORDER'
    Left = 64
    Top = 392
  end
  object qryDeliOrder: TFDQuery
    Active = True
    Connection = FDConnection1
    UpdateOptions.AutoIncFields = 'ORDD_SEQ'
    SQL.Strings = (
      'SELECT * FROM DELIORDER'
      'ORDER BY ORDD_SEQ')
    Left = 152
    Top = 392
    object qryDeliOrderORDD_SEQ: TFDAutoIncField
      FieldName = 'ORDD_SEQ'
      Origin = 'ORDD_SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object qryDeliOrderORDD_ST: TSmallintField
      FieldName = 'ORDD_ST'
      Origin = 'ORDD_ST'
      Required = True
    end
    object qryDeliOrderCUST_SEQ: TIntegerField
      FieldName = 'CUST_SEQ'
      Origin = 'CUST_SEQ'
    end
    object qryDeliOrderORDD_WAITTIME: TIntegerField
      FieldName = 'ORDD_WAITTIME'
      Origin = 'ORDD_WAITTIME'
    end
    object qryDeliOrderORDD_STNGTIME: TTimeField
      FieldName = 'ORDD_STNGTIME'
      Origin = 'ORDD_STNGTIME'
    end
    object qryDeliOrderDELI_MAN_SEQ: TIntegerField
      FieldName = 'DELI_MAN_SEQ'
      Origin = 'DELI_MAN_SEQ'
    end
    object qryDeliOrderORDD_FNTIME: TTimeField
      FieldName = 'ORDD_FNTIME'
      Origin = 'ORDD_FNTIME'
    end
    object qryDeliOrderORDD_DATE: TWideStringField
      FieldName = 'ORDD_DATE'
      Origin = 'ORDD_DATE'
      FixedChar = True
      Size = 48
    end
    object qryDeliOrderORDD_MENUES: TWideStringField
      FieldName = 'ORDD_MENUES'
      Origin = 'ORDD_MENUES'
      Size = 120
    end
    object qryDeliOrderORDD_TPRICE: TIntegerField
      FieldName = 'ORDD_TPRICE'
      Origin = 'ORDD_TPRICE'
    end
    object qryDeliOrderORDD_FIMGSEQ: TIntegerField
      FieldName = 'ORDD_FIMGSEQ'
      Origin = 'ORDD_FIMGSEQ'
    end
  end
  object dspQryDeliOrder: TDataSetProvider
    DataSet = qryDeliOrder
    Left = 152
    Top = 456
  end
  object qryCustbyOrderSeq: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT CUST_NM, CUST_ADDR, CUST_PHONE FROM CUSTOMER, DELIORDER'
      'WHERE DELIORDER.ORDD_SEQ = :DELIORDER.ORDD_SEQ'
      '      AND DELIORDER.CUST_SEQ = CUSTOMER.CUST_SEQ')
    Left = 984
    Top = 240
    ParamData = <
      item
        Name = 'DELIORDER.ORDD_SEQ'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object qryMatchOrder: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT DELIORDER.ORDD_SEQ, DELIORDER.DELI_MAN_SEQ, DELI_MAN_ST'
      ''
      
        'FROM DELIORDER D LEFT JOIN DELIVERYMAN DE ON D.DELI_MAN_SEQ = DE' +
        '.DELI_MAN_SEQ'
      '     WHERE DELIORDER.ORDD_SEQ = :SEQ   ')
    Left = 864
    Top = 240
    ParamData = <
      item
        Name = 'SEQ'
        DataType = ftInteger
        ParamType = ptInput
        Value = 122
      end>
  end
  object dspQryMatchOrder: TDataSetProvider
    Left = 864
    Top = 312
  end
  object dspQryCustbyOrderSeq: TDataSetProvider
    Left = 976
    Top = 312
  end
  object qryFindDelimanBySeq: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT DELI_MAN_SEQ, DELI_MAN_NM FROM DELIVERYMAN'
      'WHERE DELI_MAN_SEQ = :SEQ')
    Left = 744
    Top = 240
    ParamData = <
      item
        Name = 'SEQ'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dspQryFindDelimanBySeq: TDataSetProvider
    DataSet = qryFindDelimanBySeq
    Left = 744
    Top = 304
  end
  object qryUpdateFinishOrder: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'UPDATE DELIORDER SET'
      'ORDD_ST =:ST, '
      'ORDD_FNTIME =:FNTIME'
      'WHERE ORDD_SEQ =:SEQ')
    Left = 1016
    Top = 512
    ParamData = <
      item
        Name = 'ST'
        DataType = ftSmallint
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'FNTIME'
        DataType = ftTime
        ParamType = ptInput
      end
      item
        Name = 'SEQ'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object qryUpdateFinishDeliMan: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'UPDATE DELIVERYMAN SET'
      'DELI_MAN_DELICOUNT = DELI_MAN_DELICOUNT + 1,'
      'DELI_MAN_ST =:ST'
      'WHERE DELI_MAN_SEQ =:SEQ')
    Left = 872
    Top = 512
    ParamData = <
      item
        Name = 'ST'
        DataType = ftSmallint
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'SEQ'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object qryFindTotalPrice: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      
        'SELECT ORDD_TPRICE, CUST_SEQ, CUST_TOTALAMOUNT FROM DELIORDER, C' +
        'USTOMER'
      
        'WHERE DELIORDER.ORDD_SEQ = :SEQ AND CUSTOMER.CUST_SEQ = DELIORDE' +
        'R.CUST_SEQ'
      '')
    Left = 744
    Top = 176
    ParamData = <
      item
        Name = 'SEQ'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object qryUpdateDeliST: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT DELI_MAN_SEQ, DELI_MAN_ST FROM DELIVERYMAN'
      'WHERE DELI_MAN_SEQ = :SEQ')
    Left = 864
    Top = 176
    ParamData = <
      item
        Name = 'SEQ'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object dspUpdateFinishOrder: TDataSetProvider
    DataSet = qryUpdateFinishOrder
    Left = 1012
    Top = 576
  end
  object qryUpdateFinishCust: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'UPDATE CUSTOMER SET'
      'CUST_TOTALAMOUNT = :AMOUNT,'
      'CUST_ORDCNT = CUST_ORDCNT + 1'
      'WHERE CUST_SEQ =:SEQ')
    Left = 872
    Top = 576
    ParamData = <
      item
        Name = 'AMOUNT'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'SEQ'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end

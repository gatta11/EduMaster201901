object frmDeliveryMan: TfrmDeliveryMan
  Left = 0
  Top = 0
  Caption = #44592#49324' '#46321#47197
  ClientHeight = 619
  ClientWidth = 874
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 312
    Top = 219
    Width = 24
    Height = 13
    Caption = #51060#47492
  end
  object Label2: TLabel
    Left = 312
    Top = 283
    Width = 24
    Height = 13
    Caption = #45208#51060
  end
  object Label3: TLabel
    Left = 312
    Top = 347
    Width = 36
    Height = 13
    Caption = #50672#46973#52376
  end
  object Label4: TLabel
    Left = 312
    Top = 411
    Width = 87
    Height = 13
    Caption = #48176#45804#44592#49324' '#49324#47924#49548
  end
  object Label5: TLabel
    Left = 312
    Top = 475
    Width = 75
    Height = 13
    Caption = #48176#45804#44592#49324' '#51452#49548
  end
  object Label6: TLabel
    Left = 536
    Top = 283
    Width = 51
    Height = 13
    Caption = #48176#45804' '#54943#49688
  end
  object Label7: TLabel
    Left = 536
    Top = 347
    Width = 66
    Height = 13
    Caption = #52509' '#44208#49328' '#44552#50529
  end
  object Label8: TLabel
    Left = 536
    Top = 411
    Width = 51
    Height = 13
    Caption = #52264#51077' '#44552#50529
  end
  object Label9: TLabel
    Left = 711
    Top = 411
    Width = 62
    Height = 13
    Caption = #48176#45804#44592#49324' ID'
  end
  object Label10: TLabel
    Left = 736
    Top = 283
    Width = 51
    Height = 13
    Caption = #48176#45804' '#49345#53468
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 47
    Width = 850
    Height = 146
    DataSource = dsDeliveryMan
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DELI_MAN_NM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DELI_MAN_SEX'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DELI_MAN_AGE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DELI_MAN_PHONE'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DELI_MAN_OFFICE'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DELI_MAN_ADDR'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DELI_MAN_DELICOUNT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DELI_MAN_ST'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DELI_MAN_CMT'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DELI_MAN_SEQ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DELI_MAN_DNTIME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DELI_MAN_DLTIME'
        Visible = True
      end>
  end
  object edtName: TDBEdit
    Left = 312
    Top = 238
    Width = 185
    Height = 26
    DataField = 'DELI_MAN_NM'
    DataSource = dsDeliveryMan
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object edtAge: TDBEdit
    Left = 312
    Top = 302
    Width = 185
    Height = 26
    DataField = 'DELI_MAN_AGE'
    DataSource = dsDeliveryMan
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object edtPhone: TDBEdit
    Left = 312
    Top = 366
    Width = 185
    Height = 26
    DataField = 'DELI_MAN_PHONE'
    DataSource = dsDeliveryMan
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object RadioGroup1: TRadioGroup
    Left = 536
    Top = 219
    Width = 185
    Height = 45
    Caption = #49457#48324
    Columns = 2
    Items.Strings = (
      #45224#51088
      #50668#51088)
    TabOrder = 4
  end
  object edtOffice: TDBEdit
    Left = 312
    Top = 430
    Width = 185
    Height = 26
    DataField = 'DELI_MAN_OFFICE'
    DataSource = dsDeliveryMan
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object DBNavigator1: TDBNavigator
    Left = 416
    Top = 8
    Width = 432
    Height = 33
    DataSource = dsDeliveryMan
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
    TabOrder = 6
  end
  object edtAddress: TDBEdit
    Left = 312
    Top = 494
    Width = 536
    Height = 26
    DataField = 'DELI_MAN_ADDR'
    DataSource = dsDeliveryMan
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object edtCount: TDBEdit
    Left = 536
    Top = 302
    Width = 185
    Height = 26
    DataField = 'DELI_MAN_DELICOUNT'
    DataSource = dsDeliveryMan
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object edtClosing: TDBEdit
    Left = 536
    Top = 366
    Width = 185
    Height = 26
    DataSource = dsDeliveryMan
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
  end
  object edtBebt: TDBEdit
    Left = 536
    Top = 430
    Width = 153
    Height = 26
    DataSource = dsDeliveryMan
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
  end
  object edtId: TDBEdit
    Left = 711
    Top = 430
    Width = 137
    Height = 26
    DataSource = dsDeliveryMan
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
  end
  object GroupBox1: TGroupBox
    Left = 48
    Top = 238
    Width = 201
    Height = 211
    TabOrder = 12
    object imgDeliveryMan: TImage
      Left = 3
      Top = 0
      Width = 195
      Height = 208
    end
  end
  object btnLoadImage: TButton
    Left = 48
    Top = 455
    Width = 105
    Height = 33
    Caption = #49324#51652' '#48520#47084#50724#44592'...'
    TabOrder = 13
  end
  object DBEdit1: TDBEdit
    Left = 736
    Top = 302
    Width = 112
    Height = 26
    DataField = 'DELI_MAN_ST'
    DataSource = dsDeliveryMan
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
  end
  object btnInsert: TButton
    Left = 629
    Top = 541
    Width = 101
    Height = 35
    Caption = #54869#51064
    TabOrder = 15
  end
  object btnEdit: TButton
    Left = 736
    Top = 541
    Width = 100
    Height = 35
    Caption = #51221#48372' '#49688#51221
    TabOrder = 16
  end
  object btnDelete: TButton
    Left = 168
    Top = 552
    Width = 120
    Height = 41
    Caption = #48176#45804#44592#49324' '#49325#51228
    TabOrder = 17
  end
  object btnNew: TButton
    Left = 33
    Top = 552
    Width = 120
    Height = 41
    Caption = #49888#44508' '#44592#49324' '#46321#47197
    TabOrder = 18
  end
  object dtsDeliveryMan: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_DeliveryMan'
    RemoteServer = DSProviderConnection1
    Left = 192
    Top = 392
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
    object dtsDeliveryManDELI_MAN_DELICOUNT: TIntegerField
      DisplayLabel = #48176#45804#54943#49688
      DisplayWidth = 5
      FieldName = 'DELI_MAN_DELICOUNT'
      Origin = 'DELI_MAN_DELICOUNT'
    end
    object dtsDeliveryManDELI_MAN_ST: TWideStringField
      Alignment = taCenter
      DisplayLabel = #54788#51116' '#48176#45804' '#49345#53468
      FieldName = 'DELI_MAN_ST'
      Origin = 'DELI_MAN_ST'
      Required = True
      Size = 4
    end
    object dtsDeliveryManDELI_MAN_CMT: TWideStringField
      DisplayLabel = #48176#45804#44592#49324' '#47700#47784
      DisplayWidth = 50
      FieldName = 'DELI_MAN_CMT'
      Origin = 'DELI_MAN_CMT'
      Size = 4000
    end
    object dtsDeliveryManDELI_MAN_SEQ: TIntegerField
      FieldName = 'DELI_MAN_SEQ'
      Origin = 'DELI_MAN_SEQ'
      Required = True
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
  end
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
    Left = 64
    Top = 248
    UniqueId = '{23397A5D-0362-4DAC-A8CC-5B6B7A1831CC}'
  end
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TServerMethods1'
    Connected = True
    SQLConnection = SQLConnection1
    Left = 184
    Top = 248
  end
  object dsDeliveryMan: TDataSource
    DataSet = dtsDeliveryMan
    Left = 56
    Top = 384
  end
  object OpenDialog1: TOpenDialog
    Left = 128
    Top = 328
  end
end

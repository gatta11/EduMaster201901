object frmDeliveryMan: TfrmDeliveryMan
  Left = 0
  Top = 0
  Caption = #44592#49324' '#46321#47197
  ClientHeight = 693
  ClientWidth = 926
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
    Left = 294
    Top = 243
    Width = 24
    Height = 13
    Caption = #51060#47492
  end
  object Label2: TLabel
    Left = 294
    Top = 307
    Width = 24
    Height = 13
    Caption = #45208#51060
  end
  object Label3: TLabel
    Left = 294
    Top = 371
    Width = 36
    Height = 13
    Caption = #50672#46973#52376
  end
  object Label4: TLabel
    Left = 294
    Top = 435
    Width = 87
    Height = 13
    Caption = #48176#45804#44592#49324' '#49324#47924#49548
  end
  object Label5: TLabel
    Left = 294
    Top = 491
    Width = 75
    Height = 13
    Caption = #48176#45804#44592#49324' '#51452#49548
  end
  object Label6: TLabel
    Left = 518
    Top = 307
    Width = 51
    Height = 13
    Caption = #48176#45804' '#54943#49688
  end
  object Label7: TLabel
    Left = 518
    Top = 371
    Width = 66
    Height = 13
    Caption = #52509' '#44208#49328' '#44552#50529
  end
  object Label8: TLabel
    Left = 518
    Top = 435
    Width = 51
    Height = 13
    Caption = #52264#51077' '#44552#50529
  end
  object Label9: TLabel
    Left = 294
    Top = 557
    Width = 62
    Height = 13
    Caption = #48176#45804#44592#49324' ID'
  end
  object Label10: TLabel
    Left = 686
    Top = 307
    Width = 51
    Height = 13
    Caption = #48176#45804' '#49345#53468
  end
  object Label11: TLabel
    Left = 447
    Top = 557
    Width = 108
    Height = 13
    Caption = #48176#45804#44592#49324' PASSWORD'
  end
  object Label12: TLabel
    Left = 781
    Top = 243
    Width = 20
    Height = 13
    Caption = 'SEQ'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 910
    Height = 209
    DataSource = dsDeliveryMan
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DELI_MAN_NM'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DELI_MAN_KORSEX'
        Title.Alignment = taCenter
        Title.Caption = #49457#48324
        Width = 40
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
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DELI_MAN_OFFICE'
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
        FieldName = 'DELI_MAN_SEQ'
        Title.Caption = 'SEQ'
        Width = 30
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
      end
      item
        Expanded = False
        FieldName = 'DELI_MAN_IMAGE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DELI_MAN_ID'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DELI_MAN_PASS'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DELI_MAN_CLOSING'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DELI_MAN_DEBT'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DELI_MAN_CMT'
        Width = 100
        Visible = True
      end>
  end
  object edtName: TDBEdit
    Left = 294
    Top = 262
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
    TabOrder = 2
    OnExit = edtNameExit
  end
  object edtAge: TDBEdit
    Left = 294
    Top = 326
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
    TabOrder = 5
  end
  object edtPhone: TDBEdit
    Left = 294
    Top = 390
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
    TabOrder = 6
  end
  object edtOffice: TDBEdit
    Left = 294
    Top = 454
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
    TabOrder = 7
  end
  object edtAddress: TDBEdit
    Left = 294
    Top = 510
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
    TabOrder = 8
  end
  object edtCount: TDBEdit
    Left = 518
    Top = 326
    Width = 145
    Height = 26
    DataField = 'DELI_MAN_DELICOUNT'
    DataSource = dsDeliveryMan
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
  end
  object edtClosing: TDBEdit
    Left = 518
    Top = 390
    Width = 185
    Height = 26
    DataField = 'DELI_MAN_CLOSING'
    DataSource = dsDeliveryMan
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
  end
  object edtBebt: TDBEdit
    Left = 518
    Top = 454
    Width = 185
    Height = 26
    DataField = 'DELI_MAN_DEBT'
    DataSource = dsDeliveryMan
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
  end
  object edtId: TDBEdit
    Left = 294
    Top = 576
    Width = 137
    Height = 26
    DataField = 'DELI_MAN_ID'
    DataSource = dsDeliveryMan
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
  end
  object GroupBox1: TGroupBox
    Left = 41
    Top = 294
    Width = 201
    Height = 230
    TabOrder = 16
    object imgDeliveryMan: TImage
      Left = 3
      Top = 3
      Width = 195
      Height = 222
      Proportional = True
      Stretch = True
    end
  end
  object btnLoadImage: TButton
    Left = 41
    Top = 548
    Width = 105
    Height = 33
    Caption = #49324#51652' '#48520#47084#50724#44592'...'
    TabOrder = 17
    OnClick = btnLoadImageClick
  end
  object DBEdit1: TDBEdit
    Left = 686
    Top = 326
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
    TabOrder = 10
  end
  object btnApply: TButton
    Left = 559
    Top = 633
    Width = 101
    Height = 35
    Caption = #51201#50857
    TabOrder = 15
    OnClick = btnApplyClick
  end
  object btnDelete: TButton
    Left = 414
    Top = 633
    Width = 115
    Height = 35
    Caption = #48176#45804#44592#49324' '#49325#51228
    TabOrder = 18
    OnClick = btnDeleteClick
  end
  object btnNew: TButton
    Left = 296
    Top = 632
    Width = 112
    Height = 35
    Caption = #49888#44508' '#44592#49324' '#46321#47197
    TabOrder = 0
    OnClick = btnNewClick
  end
  object rgSex: TDBRadioGroup
    Left = 518
    Top = 243
    Width = 185
    Height = 45
    Caption = #49457#48324
    Columns = 2
    DataField = 'DELI_MAN_SEX'
    DataSource = dsDeliveryMan
    Items.Strings = (
      #45224
      #50668)
    TabOrder = 3
    Values.Strings = (
      '0'
      '1')
  end
  object DBEdit2: TDBEdit
    Left = 447
    Top = 576
    Width = 137
    Height = 26
    DataField = 'DELI_MAN_PASS'
    DataSource = dsDeliveryMan
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
  end
  object DBEdit3: TDBEdit
    Left = 781
    Top = 262
    Width = 112
    Height = 32
    DataField = 'DELI_MAN_SEQ'
    DataSource = dsDeliveryMan
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
  end
  object btnUpdate: TButton
    Left = 66
    Top = 234
    Width = 155
    Height = 44
    Caption = #50629#45936#51060#53944
    TabOrder = 19
    OnClick = btnUpdateClick
  end
  object btnCancel: TButton
    Left = 666
    Top = 633
    Width = 100
    Height = 35
    Caption = #49688#51221' '#52712#49548
    TabOrder = 20
    OnClick = btnCancelClick
  end
  object btnDeleteImg: TButton
    Left = 152
    Top = 548
    Width = 87
    Height = 33
    Caption = #49324#51652' '#49325#51228
    TabOrder = 21
    OnClick = btnDeleteImgClick
  end
  object dsDeliveryMan: TDataSource
    DataSet = dmDeliveryMan.dtsDeliveryMan
    OnStateChange = dsDeliveryManStateChange
    OnDataChange = dsDeliveryManDataChange
    Left = 97
    Top = 394
  end
  object dlgLoadImage: TOpenDialog
    Left = 177
    Top = 394
  end
end

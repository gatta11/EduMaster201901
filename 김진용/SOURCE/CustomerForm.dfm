object frmCustomer: TfrmCustomer
  Left = 0
  Top = 0
  Caption = #54924#50896' '#44288#47532
  ClientHeight = 529
  ClientWidth = 1071
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 38
    Top = 235
    Width = 24
    Height = 13
    Caption = #51060#47492
  end
  object Label3: TLabel
    Left = 262
    Top = 235
    Width = 36
    Height = 13
    Caption = #50672#46973#52376
  end
  object Label5: TLabel
    Left = 40
    Top = 311
    Width = 51
    Height = 13
    Caption = #54924#50896' '#51452#49548
  end
  object Label6: TLabel
    Left = 786
    Top = 307
    Width = 51
    Height = 13
    Caption = #51452#47928' '#54943#49688
  end
  object Label7: TLabel
    Left = 391
    Top = 379
    Width = 66
    Height = 13
    Caption = #52509' '#51452#47928' '#44552#50529
  end
  object Label9: TLabel
    Left = 40
    Top = 379
    Width = 38
    Height = 13
    Caption = #54924#50896' ID'
  end
  object Label10: TLabel
    Left = 609
    Top = 306
    Width = 78
    Height = 13
    Caption = #54924#50896' '#51452#47928' '#49345#53468
  end
  object Label11: TLabel
    Left = 215
    Top = 379
    Width = 84
    Height = 13
    Caption = #54924#50896' PASSWORD'
  end
  object Label12: TLabel
    Left = 682
    Top = 226
    Width = 20
    Height = 13
    Caption = 'SEQ'
  end
  object Label2: TLabel
    Left = 609
    Top = 379
    Width = 78
    Height = 13
    Caption = #52572#44540' '#51452#47928' '#51068#51088
  end
  object Label4: TLabel
    Left = 469
    Top = 235
    Width = 75
    Height = 13
    Caption = #54924#50896' '#46321#47197#51068#51088
  end
  object edtName: TDBEdit
    Left = 38
    Top = 254
    Width = 185
    Height = 26
    DataField = 'CUST_NM'
    DataSource = dsCustomer
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object edtPhone: TDBEdit
    Left = 262
    Top = 254
    Width = 185
    Height = 26
    DataField = 'CUST_PHONE'
    DataSource = dsCustomer
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object edtAddress: TDBEdit
    Left = 40
    Top = 330
    Width = 536
    Height = 26
    DataField = 'CUST_ADDR'
    DataSource = dsCustomer
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object edtCount: TDBEdit
    Left = 786
    Top = 326
    Width = 145
    Height = 26
    DataField = 'CUST_ORDCNT'
    DataSource = dsCustomer
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object edtTotal: TDBEdit
    Left = 391
    Top = 398
    Width = 185
    Height = 26
    DataField = 'CUST_TOTALAMOUNT'
    DataSource = dsCustomer
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object edtId: TDBEdit
    Left = 40
    Top = 398
    Width = 137
    Height = 26
    DataField = 'CUST_ID'
    DataSource = dsCustomer
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object btnApply: TButton
    Left = 304
    Top = 473
    Width = 101
    Height = 35
    Caption = #51201#50857
    TabOrder = 10
  end
  object btnNew: TButton
    Left = 38
    Top = 472
    Width = 139
    Height = 35
    Caption = #54924#50896' '#46321#47197
    TabOrder = 11
    OnClick = btnNewClick
  end
  object edtPass: TDBEdit
    Left = 215
    Top = 398
    Width = 137
    Height = 26
    DataField = 'CUST_PASS'
    DataSource = dsCustomer
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object edtSEQ: TDBEdit
    Left = 682
    Top = 245
    Width = 143
    Height = 32
    DataField = 'CUST_SEQ'
    DataSource = dsCustomer
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 12
  end
  object btnUpdate: TButton
    Left = 548
    Top = 463
    Width = 155
    Height = 44
    Caption = #50629#45936#51060#53944
    TabOrder = 9
    OnClick = btnUpdateClick
  end
  object btnCancel: TButton
    Left = 411
    Top = 472
    Width = 100
    Height = 35
    Caption = #49688#51221' '#52712#49548
    TabOrder = 13
    OnClick = btnCancelClick
  end
  object grdCustomer: TDBGrid
    Left = 8
    Top = 8
    Width = 1041
    Height = 209
    DataSource = dsCustomer
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    ReadOnly = True
    TabOrder = 14
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CUST_SEQ'
        Title.Alignment = taCenter
        Title.Caption = 'SEQ'
        Width = 40
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CUST_NM'
        Title.Alignment = taCenter
        Title.Caption = #54924#50896' '#51060#47492
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CUST_PHONE'
        Title.Alignment = taCenter
        Title.Caption = #54924#50896' '#50672#46973#52376
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CUST_ADDR'
        Title.Alignment = taCenter
        Title.Caption = #54924#50896' '#51452#49548
        Width = 250
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CUST_REGDATE'
        Title.Alignment = taCenter
        Title.Caption = #54924#50896' '#46321#47197#51068#51088
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CUST_ORDCNT'
        Title.Alignment = taCenter
        Title.Caption = #51452#47928' '#54943#49688
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CUST_ST'
        Title.Alignment = taCenter
        Title.Caption = #51452#47928#49345#53468
        Width = 60
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CUST_RCNTDATE'
        Title.Alignment = taCenter
        Title.Caption = #52572#44540' '#51452#47928' '#51068#51088
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CUST_TOTALAMOUNT'
        Title.Alignment = taCenter
        Title.Caption = #52509' '#51452#47928' '#44552#50529
        Width = 100
        Visible = True
      end>
  end
  object cbDeliManState: TComboBox
    Left = 904
    Top = 494
    Width = 145
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 15
    Text = 'cbDeliManState'
    Items.Strings = (
      #48120#52636#44540
      #48176#45804#51473
      #48176#45804#45824#44592)
  end
  object edtRcntDate: TDBEdit
    Left = 609
    Top = 398
    Width = 160
    Height = 26
    DataField = 'CUST_RCNTDATE'
    DataSource = dsCustomer
    TabOrder = 5
  end
  object edtRegDate: TDBEdit
    Left = 469
    Top = 254
    Width = 137
    Height = 26
    DataField = 'CUST_REGDATE'
    DataSource = dsCustomer
    TabOrder = 3
  end
  object DBComboBox1: TDBComboBox
    Left = 609
    Top = 330
    Width = 145
    Height = 21
    DataField = 'CUST_ST'
    DataSource = dsCustomer
    Items.Strings = (
      '0'
      '1'
      '2')
    TabOrder = 16
  end
  object dsCustomer: TDataSource
    DataSet = dmPcClient.dtsCustomer
    Left = 224
    Top = 464
  end
end

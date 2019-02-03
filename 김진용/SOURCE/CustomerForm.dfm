object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 652
  ClientWidth = 917
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
    Top = 551
    Width = 62
    Height = 13
    Caption = #48176#45804#44592#49324' ID'
  end
  object Label10: TLabel
    Left = 686
    Top = 307
    Width = 75
    Height = 13
    Caption = #48176#45804#44592#49324' '#49345#53468
  end
  object Label11: TLabel
    Left = 447
    Top = 551
    Width = 108
    Height = 13
    Caption = #48176#45804#44592#49324' PASSWORD'
  end
  object Label12: TLabel
    Left = 741
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
        Alignment = taCenter
        Expanded = False
        FieldName = 'DELI_MAN_SEQ'
        Title.Alignment = taCenter
        Title.Caption = 'SEQ'
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DELI_MAN_NM'
        Title.Alignment = taCenter
        Title.Caption = #48176#45804#44592#49324' '#51060#47492
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DELI_MAN_KORSEX'
        Title.Alignment = taCenter
        Title.Caption = #49457#48324
        Width = 35
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DELI_MAN_AGE'
        Title.Alignment = taCenter
        Title.Caption = #45208#51060
        Width = 32
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DELI_MAN_KORST'
        Title.Alignment = taCenter
        Title.Caption = #48176#45804#44592#49324' '#49345#53468
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DELI_MAN_ST'
        Title.Alignment = taCenter
        Title.Caption = #49345#53468'('#49707#51088')'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DELI_MAN_PHONE'
        Title.Alignment = taCenter
        Title.Caption = #48176#45804#44592#49324' '#50672#46973#52376
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DELI_MAN_OFFICE'
        Title.Alignment = taCenter
        Title.Caption = #48176#45804#44592#49324' '#49324#47924#49548
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DELI_MAN_ADDR'
        Title.Alignment = taCenter
        Title.Caption = #51452#49548
        Width = 210
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DELI_MAN_DELICOUNT'
        Title.Alignment = taCenter
        Title.Caption = #48176#45804' '#54943#49688
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DELI_MAN_DNTIME'
        Title.Alignment = taCenter
        Title.Caption = #48176#45804' '#51217#49688' '#49884#44036
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DELI_MAN_DLTIME'
        Title.Alignment = taCenter
        Title.Caption = #48176#45804' '#51217#49688' '#49884#44036
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DELI_MAN_ID'
        Title.Alignment = taCenter
        Title.Caption = #48176#45804#44592#49324' ID'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DELI_MAN_PASS'
        Title.Caption = #48176#45804#44592#49324' '#48708#48128#48264#54840
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DELI_MAN_CLOSING'
        Title.Alignment = taCenter
        Title.Caption = #44208#49328' '#44552#50529
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DELI_MAN_DEBT'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DELI_MAN_IMAGE'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DELI_MAN_CMT'
        Title.Alignment = taCenter
        Width = 200
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DELI_MAN_SEX'
        Title.Alignment = taCenter
        Title.Caption = #49457#48324'(0)'
        Width = 40
        Visible = True
      end>
  end
  object edtName: TDBEdit
    Left = 294
    Top = 262
    Width = 185
    Height = 26
    DataField = 'DELI_MAN_NM'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object edtAge: TDBEdit
    Left = 294
    Top = 326
    Width = 185
    Height = 26
    DataField = 'DELI_MAN_AGE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object edtPhone: TDBEdit
    Left = 294
    Top = 390
    Width = 185
    Height = 26
    DataField = 'DELI_MAN_PHONE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object edtOffice: TDBEdit
    Left = 294
    Top = 454
    Width = 185
    Height = 26
    DataField = 'DELI_MAN_OFFICE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object edtAddress: TDBEdit
    Left = 258
    Top = 510
    Width = 536
    Height = 26
    DataField = 'DELI_MAN_ADDR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object edtCount: TDBEdit
    Left = 518
    Top = 326
    Width = 145
    Height = 26
    DataField = 'DELI_MAN_DELICOUNT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object edtClosing: TDBEdit
    Left = 518
    Top = 390
    Width = 185
    Height = 26
    DataField = 'DELI_MAN_CLOSING'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object edtBebt: TDBEdit
    Left = 518
    Top = 454
    Width = 185
    Height = 26
    DataField = 'DELI_MAN_DEBT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object edtId: TDBEdit
    Left = 294
    Top = 538
    Width = 137
    Height = 26
    DataField = 'DELI_MAN_ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
  end
  object btnLoadImage: TButton
    Left = 41
    Top = 531
    Width = 105
    Height = 33
    Caption = #49324#51652' '#48520#47084#50724#44592'...'
    TabOrder = 10
  end
  object btnApply: TButton
    Left = 559
    Top = 529
    Width = 101
    Height = 35
    Caption = #51201#50857
    TabOrder = 11
  end
  object btnDelete: TButton
    Left = 414
    Top = 529
    Width = 115
    Height = 35
    Caption = #48176#45804#44592#49324' '#49325#51228
    TabOrder = 12
  end
  object btnNew: TButton
    Left = 296
    Top = 529
    Width = 112
    Height = 35
    Caption = #49888#44508' '#44592#49324' '#46321#47197
    TabOrder = 13
  end
  object DBEdit2: TDBEdit
    Left = 738
    Top = 390
    Width = 137
    Height = 26
    DataField = 'DELI_MAN_PASS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
  end
  object DBEdit3: TDBEdit
    Left = 738
    Top = 262
    Width = 112
    Height = 32
    DataField = 'DELI_MAN_SEQ'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 15
  end
  object btnUpdate: TButton
    Left = 66
    Top = 234
    Width = 155
    Height = 44
    Caption = #50629#45936#51060#53944
    TabOrder = 16
  end
  object btnCancel: TButton
    Left = 666
    Top = 529
    Width = 100
    Height = 35
    Caption = #49688#51221' '#52712#49548
    TabOrder = 17
  end
  object btnDeleteImg: TButton
    Left = 152
    Top = 531
    Width = 87
    Height = 33
    Caption = #49324#51652' '#49325#51228
    TabOrder = 18
  end
  object cbDeliManState: TComboBox
    Left = 649
    Top = 326
    Width = 145
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 19
    Text = 'cbDeliManState'
    Items.Strings = (
      #48120#52636#44540
      #48176#45804#51473
      #48176#45804#45824#44592)
  end
end

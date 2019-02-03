object frmInsertMenu: TfrmInsertMenu
  Left = 0
  Top = 0
  Caption = #47700#45684' '#46321#47197
  ClientHeight = 704
  ClientWidth = 825
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
    Top = 331
    Width = 48
    Height = 13
    Caption = #47700#45684#51060#47492
  end
  object Label2: TLabel
    Left = 294
    Top = 459
    Width = 51
    Height = 13
    Caption = #51312#47532' '#49884#44036
  end
  object Label3: TLabel
    Left = 510
    Top = 459
    Width = 75
    Height = 13
    Caption = #51312#47532' '#45824#44592#49884#44036
  end
  object Label4: TLabel
    Left = 294
    Top = 523
    Width = 51
    Height = 13
    Caption = #47700#45684' '#49444#47749
  end
  object Label6: TLabel
    Left = 294
    Top = 395
    Width = 51
    Height = 13
    Caption = #47700#45684' '#44032#44201
  end
  object Label10: TLabel
    Left = 465
    Top = 395
    Width = 51
    Height = 13
    Caption = #47700#45684' '#49688#47049
  end
  object Label12: TLabel
    Left = 602
    Top = 326
    Width = 20
    Height = 13
    Caption = 'SEQ'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 800
    Height = 225
    DataSource = dsMenu
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
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
        FieldName = 'MENU_SEQ'
        Title.Alignment = taCenter
        Title.Caption = 'SEQ'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'MENU_NM'
        Title.Alignment = taCenter
        Title.Caption = #47700#45684' '#51060#47492
        Width = 160
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MENU_PRICE'
        Title.Alignment = taCenter
        Title.Caption = #44032#44201
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MENU_QNT'
        Title.Alignment = taCenter
        Title.Caption = #44592#48376#49688#47049
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'MENU_COOKTIME'
        Title.Caption = #51312#47532' '#49884#44036
        Width = 60
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'MENU_WAITTIME'
        Title.Caption = #51312#47532' '#45824#44592' '#49884#44036
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MENU_CMT'
        Title.Alignment = taCenter
        Title.Caption = #47700#45684' '#49444#47749
        Width = 280
        Visible = True
      end>
  end
  object edtName: TDBEdit
    Left = 294
    Top = 350
    Width = 222
    Height = 26
    DataField = 'MENU_NM'
    DataSource = dsMenu
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object edtCookTime: TDBEdit
    Left = 294
    Top = 478
    Width = 185
    Height = 26
    DataField = 'MENU_COOKTIME'
    DataSource = dsMenu
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object edtWaitTime: TDBEdit
    Left = 510
    Top = 478
    Width = 185
    Height = 26
    DataField = 'MENU_WAITTIME'
    DataSource = dsMenu
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object edtComment: TDBEdit
    Left = 294
    Top = 542
    Width = 514
    Height = 26
    DataField = 'MENU_CMT'
    DataSource = dsMenu
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object edtPrice: TDBEdit
    Left = 294
    Top = 414
    Width = 145
    Height = 26
    DataField = 'MENU_PRICE'
    DataSource = dsMenu
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object GroupBox1: TGroupBox
    Left = 41
    Top = 382
    Width = 201
    Height = 230
    TabOrder = 9
    object imgMenu: TImage
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
    Top = 618
    Width = 105
    Height = 33
    Caption = #49324#51652' '#48520#47084#50724#44592'...'
    TabOrder = 10
    OnClick = btnLoadImageClick
  end
  object edtQuantity: TDBEdit
    Left = 465
    Top = 414
    Width = 112
    Height = 26
    DataField = 'MENU_QNT'
    DataSource = dsMenu
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object edtSeq: TDBEdit
    Left = 602
    Top = 345
    Width = 112
    Height = 32
    DataField = 'MENU_SEQ'
    DataSource = dsMenu
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 11
  end
  object btnUpdate: TButton
    Left = 66
    Top = 332
    Width = 155
    Height = 44
    Caption = #50629#45936#51060#53944
    TabOrder = 8
    OnClick = btnUpdateClick
  end
  object btnDeleteImg: TButton
    Left = 152
    Top = 618
    Width = 87
    Height = 33
    Caption = #49324#51652' '#49325#51228
    TabOrder = 12
    OnClick = btnDeleteImgClick
  end
  object btnNew: TButton
    Left = 296
    Top = 617
    Width = 112
    Height = 35
    Caption = #47700#45684' '#46321#47197
    TabOrder = 13
    OnClick = btnNewClick
  end
  object btnDelete: TButton
    Left = 414
    Top = 617
    Width = 115
    Height = 35
    Caption = #47700#45684' '#49325#51228
    TabOrder = 14
    OnClick = btnDeleteClick
  end
  object btnApply: TButton
    Left = 559
    Top = 617
    Width = 101
    Height = 35
    Caption = #51201#50857
    TabOrder = 7
    OnClick = btnApplyClick
  end
  object btnCancel: TButton
    Left = 666
    Top = 617
    Width = 100
    Height = 35
    Caption = #49688#51221' '#52712#49548
    TabOrder = 15
    OnClick = btnCancelClick
  end
  object dlgLoadImage: TOpenDialog
    Left = 169
    Top = 482
  end
  object dsMenu: TDataSource
    DataSet = dmPcClient.dtsMenu
    OnStateChange = dsMenuStateChange
    OnDataChange = dsMenuDataChange
    Left = 104
    Top = 480
  end
end

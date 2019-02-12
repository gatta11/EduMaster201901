object frmOrderMenu: TfrmOrderMenu
  Left = 0
  Top = 0
  Caption = 'frmOrderMenu'
  ClientHeight = 772
  ClientWidth = 1359
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  DesignSize = (
    1359
    772)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 888
    Top = 488
    Width = 261
    Height = 24
    Caption = 'dmPcClient.dtsQryOrderMenu'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 888
    Top = 608
    Width = 253
    Height = 24
    Caption = 'dmPcClient.dtsTbOrderMenu'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 521
    Top = 2
    Width = 652
    Height = 24
    Caption = 
      '0          1                      2                   3         ' +
      '   4           5          6          7'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object TotalPrice: TLabel
    Left = 1172
    Top = 453
    Width = 143
    Height = 40
    BiDiMode = bdRightToLeft
    Caption = 'TotalPrice'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -33
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object sgrdMenuList: TStringGrid
    Left = 8
    Top = 32
    Width = 497
    Height = 393
    DefaultColWidth = 90
    DefaultRowHeight = 90
    DrawingStyle = gdsClassic
    RowCount = 1
    FixedRows = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Pitch = fpFixed
    Font.Style = []
    Font.Quality = fqClearType
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goRowMoving, goEditing, goRowSelect]
    ParentFont = False
    TabOrder = 0
    OnDblClick = sgrdMenuListDblClick
    OnDrawCell = sgrdMenuListDrawCell
    OnMouseDown = sgrdMenuListMouseDown
    OnSelectCell = sgrdMenuListSelectCell
  end
  object Button1: TButton
    Left = 224
    Top = 695
    Width = 161
    Height = 57
    Caption = #47700#45684' '#47785#47197' '#44032#51256#50724#44592
    TabOrder = 1
    OnClick = Button1Click
  end
  object sgrdOrderMenuList: TStringGrid
    Left = 511
    Top = 32
    Width = 840
    Height = 393
    Anchors = [akLeft, akTop, akRight, akBottom]
    BorderStyle = bsNone
    ColCount = 9
    Ctl3D = False
    DefaultColWidth = 75
    DefaultRowHeight = 75
    DoubleBuffered = True
    DrawingStyle = gdsClassic
    FixedColor = clWindow
    RowCount = 1
    FixedRows = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    GridLineWidth = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goRowMoving, goRowSelect]
    ParentCtl3D = False
    ParentDoubleBuffered = False
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 2
    OnDrawCell = sgrdOrderMenuListDrawCell
    OnExit = sgrdOrderMenuListExit
    OnSelectCell = sgrdOrderMenuListSelectCell
    OnSetEditText = sgrdOrderMenuListSetEditText
  end
  object DBGrid1: TDBGrid
    Left = 224
    Top = 441
    Width = 641
    Height = 117
    DataSource = dsOrderMenulist
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'MENU_IMAGE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MENU_NM'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MENU_QNT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MENU_PRICE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MENU_COOKTIME'
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 224
    Top = 564
    Width = 641
    Height = 125
    DataSource = dsTbOrderMenu
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button2: TButton
    Left = 400
    Top = 695
    Width = 153
    Height = 57
    Caption = 'Button2'
    TabOrder = 5
    OnClick = Button2Click
  end
  object btnOrderMenuPost: TButton
    Left = 559
    Top = 695
    Width = 153
    Height = 57
    Caption = #51452#47928' '#47785#47197' '#50732#47532#44592
    TabOrder = 6
    OnClick = btnOrderMenuPostClick
  end
  object edtORD_SEQ: TEdit
    Left = 888
    Top = 657
    Width = 149
    Height = 32
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    Text = '2'
  end
  object Button3: TButton
    Left = 1004
    Top = 535
    Width = 217
    Height = 54
    Caption = #50724#45908#54868#47732#51004#47196' '#45336#44592#44592
    ModalResult = 1
    TabOrder = 8
    OnClick = Button3Click
  end
  object dsOrderMenulist: TDataSource
    DataSet = dmPcClient.dtsOrderMenu
    Left = 912
    Top = 440
  end
  object dsTbOrderMenu: TDataSource
    DataSet = dmPcClient.dtsTbOrderMenu
    Left = 912
    Top = 560
  end
end

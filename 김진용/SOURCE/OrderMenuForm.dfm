object frmOrderMenu: TfrmOrderMenu
  Left = 0
  Top = 0
  Caption = 'frmOrderMenu'
  ClientHeight = 719
  ClientWidth = 1216
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
    1216
    719)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 704
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
    Left = 712
    Top = 592
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
  object sgrdMenuList: TStringGrid
    Left = 8
    Top = 24
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
    Left = 256
    Top = 654
    Width = 161
    Height = 57
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object sgrdOrderMenuList: TStringGrid
    Left = 511
    Top = 24
    Width = 697
    Height = 393
    Anchors = [akLeft, akTop, akRight, akBottom]
    BiDiMode = bdLeftToRight
    BorderStyle = bsNone
    ColCount = 8
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
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goRowMoving, goEditing, goRowSelect]
    ParentBiDiMode = False
    ParentDoubleBuffered = False
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 2
    OnDrawCell = sgrdOrderMenuListDrawCell
    OnExit = sgrdOrderMenuListExit
    OnSelectCell = sgrdOrderMenuListSelectCell
    OnSetEditText = sgrdOrderMenuListSetEditText
    ExplicitWidth = 588
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 441
    Width = 681
    Height = 106
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
    Left = 0
    Top = 553
    Width = 681
    Height = 95
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
    Left = 496
    Top = 654
    Width = 129
    Height = 57
    Caption = 'Button2'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 880
    Top = 536
    Width = 121
    Height = 50
    Caption = 'Button3'
    TabOrder = 6
    OnClick = Button3Click
  end
  object dsOrderMenulist: TDataSource
    DataSet = dmPcClient.dtsOrderMenu
    Left = 728
    Top = 448
  end
  object dsTbOrderMenu: TDataSource
    DataSet = dmPcClient.dtsTbOrderMenu
    Left = 816
    Top = 448
  end
end

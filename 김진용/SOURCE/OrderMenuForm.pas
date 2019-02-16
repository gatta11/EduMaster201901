unit OrderMenuForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.ExtCtrls, System.IOUtils, DATA.DB,
  Vcl.StdCtrls, System.Generics.Collections, Vcl.DBGrids, Vcl.Samples.Spin,
  Vcl.Buttons;

type

  TfrmOrderMenu = class(TForm)
    sgrdMenuList: TStringGrid;
    sgrdOrderMenuList: TStringGrid;
    DBGrid1: TDBGrid;
    dsOrderMenulist: TDataSource;
    DBGrid2: TDBGrid;
    dsTbOrderMenu: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    btnOrderMenuPost: TButton;
    Label3: TLabel;
    TotalPrice: TLabel;
    edtORD_SEQ: TEdit;
    procedure sgrdMenuListDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure sgrdMenuListDblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure sgrdMenuListMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sgrdMenuListSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure sgrdOrderMenuListDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure sgrdOrderMenuListExit(Sender: TObject);
    procedure sgrdOrderMenuListSetEditText(Sender: TObject; ACol, ARow: Integer;
      const Value: string);
    procedure sgrdOrderMenuListSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure DeleteRow(StringGrid: TStringGrid; ARow: integer);
    procedure btnOrderMenuPostClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    
  private
    { Private declarations }
    FMenuImageList: TList<TWICImage>;
    FQntImageList : TList<TWICImage>;
    procedure ClearMenuImageList;
  public
    { Public declarations }
    DownCol, DownRow: integer;
  end;

var
  frmOrderMenu: TfrmOrderMenu;
const
  C_COL = 4;

implementation

{$R *.dfm}

uses DataModulePcClient, CommonFunctions, OrderForm;

var
  SeRight:integer;
  SeLeft:integer;
  SeTop:integer;
  SeBottom:integer;
  SeCol, SeRow : integer;


procedure TfrmOrderMenu.Button1Click(Sender: TObject);

var
  i : integer ;
  wic: TWICImage; // Microsoft Windows Imaging Component
  Stream: TMemoryStream;
  Bitmap1 : TBitmap;
  Price:String;

begin
  Stream := TMemoryStream.Create;
  Bitmap1 := TBitmap.Create;

  ClearMenuImageList;

  sgrdMenuList.RowCount := dmPcClient.dtsMenuList.RecordCount;
  dmPcClient.dtsMenuList.First;
  for I := 0 to sgrdMenuList.RowCount-1 do
  begin
    //ImgMenu.Picture.Assign(NIL);
    Stream.Clear;

    try
      (dmPcClient.dtsMenuList.FieldByName('MENU_IMAGE') as TBlobField).SaveToStream(Stream);
      if Stream.Size > 0 then
      begin

        try
          wic := TWICImage.Create;
          //ImgMenu.Picture.Assign(nil);
          wic.LoadFromStream(Stream);
          FMenuImageList.Add(wic);

        except
          begin
            showmessage(inttostr(i)+' 번째 에러발생');
          end;
        end;
      end;
    except
      raise Exception.Create('이미지 load오류');

    end;
    sgrdMenuList.Cells[0,i] := dmPcClient.dtsMenuList.FieldByName('MENU_SEQ').AsString;//TBitmap;
    sgrdMenuList.Cells[2,i] := dmPcClient.dtsMenuList.FieldByName('MENU_NM').AsString; //메뉴 이름
    sgrdMenuList.Cells[3,i] := dmPcClient.dtsMenuList.FieldByName('MENU_QNT').AsString; //메뉴 수량
    Price := dmPcClient.dtsMenuList.FieldByName('MENU_PRICE').AsString;   //FormatFloat('#,0', StrToInt(cellText)
    Price := Format('%m', [strTofloat(Price)]);
    sgrdMenuList.Cells[4,i] := Price; //메뉴 가격
    dmPcClient.dtsMenuList.Next;
  end;

end;


procedure TfrmOrderMenu.Button2Click(Sender: TObject);     // V 스크롤 크기 조정
var
  i, j: Integer;
  info: TScrollInfo;
begin
  sgrdOrderMenuList.RowCount := sgrdOrderMenuList.RowCount+1; // Row의 갯수를 하나씩 증가시켜 본다

  // StringGrid에 임의의 금액을 만들어서 각 cell에 입력합니다
  for i := 1 to sgrdOrderMenuList.ColCount - 1 do
   sgrdMenuList.Cells[i, 0] := Char(Ord('A')+i-1);
  for i := 1 to sgrdOrderMenuList.RowCount - 1 do
   sgrdMenuList.Cells[0, i] := IntToStr(i);;
  for i := 1 to sgrdOrderMenuList.ColCount - 1 do
    for j := 1 to sgrdOrderMenuList.RowCount - 1 do
      sgrdOrderMenuList.Cells[i, j] := Format('%.0n', [i * j * 10000.0]);

  FillChar(info, Sizeof(info), 0);
  with info do
  begin
    cbsize := Sizeof(info);
    fmask  := SIF_ALL;
    GetScrollInfo(sgrdOrderMenuList.handle, SB_VERT, info);
    fmask  := fmask or SIF_PAGE;
    nPage  := 5 * (nmax-nmin) div sgrdMenuList.RowCount;
  end;
  SetScrollInfo(sgrdOrderMenuList.handle, SB_VERT, info, True);
end;


procedure TfrmOrderMenu.btnOrderMenuPostClick(Sender: TObject);
var
  I,J, MaxRow,MaxPrice, sRow : integer;
  MaxMenu,S : STring;
  msg :String;
begin
  if (sgrdOrderMenuList.Cells[0,0] = '') then
  begin
    showmessage('주문할 메뉴를 추가하세요.');
    exit;
  end;

  if SelectedOrderSeq = 0 then
   SelectedOrderSeq := MaxSEQ;

  for I := 0 to sgrdOrderMenuList.RowCount -1 do
  begin
    try
      dmPcClient.dtsTbOrderMenu.Close;
      dmPcClient.dtsTbOrderMenu.Open;

      dmPcClient.dtsTbOrderMenu.Append;

      dmPcClient.dtsTbOrderMenu.FieldByName('MENU_SEQ').AsInteger := StrtoInt(sgrdOrderMenuList.Cells[0, I]);
      dmPcClient.dtsTbOrderMenu.FieldByName('ORDMN_QNT').AsInteger := StrtoInt(sgrdOrderMenuList.Cells[4, I]);
      S := sgrdOrderMenuList.Cells[7, I];
      S := StringReplace(S, ',', '',[rfReplaceAll]);
      S := copy(S, 2,Length(S));
      dmPcClient.dtsTbOrderMenu.FieldByName('ORDMN_PRICE').AsInteger := StrtoInt(S);
      dmPcClient.dtsTbOrderMenu.FieldByName('ORD_SEQ').AsInteger := SelectedOrderSeq;     //MaxSeq
      dmPcClient.dtsTbOrderMenu.Post;
      dmPcClient.dtsTbOrderMenu.ApplyUpdates(-1);

    except
      begin
      raise Exception.Create('주문내역 DB전송 중 오류 발생');
      exit;
      end;
    end;

  end;


  // 대표 IMAGE 넣기
  MaxMenu := '';
  MaxRow := 0;
  MaxPrice := 0;


  for I := 0 to sgrdOrderMenuList.RowCount-1 do
  begin
    S := sgrdOrderMenuList.Cells[7, I];
    S := StringReplace(S, ',', '',[rfReplaceAll]);
    S := copy(S, 2,Length(S));
    if MaxPrice < strtoInt(S) then
    begin
      MaxPrice := strtoInt(S);
      MaxMenu := sgrdOrderMenuList.Cells[2, I];
      MaxRow := I;
    end;
  end;
//  msg := Format('%d, %s, %d',[MaxPrice, MaxMenu, MaxRow]);
//  showmessage(msg);
 // sRow := frmOrder.sgrdNewOrder.RowCount-1; // Data 넣을 Stringgrid Row

  //frmOrder.sgrdOrderList.Cells[0,sRow] := edtORD_SEQ.Text;

//  if sgrdOrderMenuList.RowCount = 1 then
//    frmOrder.sgrdNewOrder.Cells[5,sRow] := MaxMenu
//  else
//  frmOrder.sgrdNewOrder.Cells[5,sRow] := MaxMenu + '외 ' + inttostr(sgrdOrderMenuList.RowCount-1) + ' 건' ;
//  frmOrder.sgrdNewOrder.Cells[10,sRow] := TotalPrice.Caption;
//  frmOrder.sgrdNewOrder.Cells[3,sRow] := sgrdOrderMenuList.Cells[0,MaxRow];


  msg := dmPcClient.dtsQrydeliOrder.Locate('ORDD_SEQ', inttostr(SelectedOrderSeq), []).ToString();
  //showmessage(msg);

  dmPcClient.dtsQryDeliOrder.IndexFieldNames := 'ORDD_SEQ';
  if dmPcClient.dtsQrydeliOrder.Locate('ORDD_SEQ', inttostr(SelectedOrderSeq), []) then
    begin
      if dmPcClient.dtsQryDeliOrder.state <> dsEdit then
        dmPcClient.dtsQryDeliOrder.Edit;
      //showmessage(dmPcClient.dtsQryDeliOrder.FieldByName('ORDD_SEQ').AsString);
      if sgrdOrderMenuList.RowCount = 1 then
        dmPcClient.dtsQryDeliOrder.FieldByName('ORDD_MENUES').AsString :=  MaxMenu
      else
        dmPcClient.dtsQryDeliOrder.FieldByName('ORDD_MENUES').AsString :=  MaxMenu + ' 외 ' + inttostr(sgrdOrderMenuList.RowCount-1) + ' 건' ;
      dmPcClient.dtsQryDeliOrder.FieldByName('ORDD_TPRICE').AsString :=  TotalPrice.Caption;
      dmPcClient.dtsQryDeliOrder.FieldByName('ORDD_FIMGSEQ').AsInteger := strtointdef(sgrdOrderMenuList.Cells[0,MaxRow],0);

      dmPcClient.dtsQryDeliOrder.POST;
      dmPcClient.dtsQryDeliOrder.ApplyUpdates(-1);
    end;
  for I := 0 to sgrdOrderMenuList.RowCount -1 do
    DeleteRow(sgrdOrderMenuList, I);

  frmOrder.DrawWorkingOrderListGrid;
  frmOrder.sgrdDetailOrderMenu.Refresh;
  ModalResult := mrCancel;

end;

procedure TfrmOrderMenu.ClearMenuImageList;
var
  WIC: TWICImage;
begin
  for WIC in FMenuImageList do
    WIC.Free;
  FMenuImageList.Clear;
end;


procedure TfrmOrderMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmOrder.sgrdDetailOrderMenu.SetFocus;
 Action := CaFree;
end;

procedure TfrmOrderMenu.FormCreate(Sender: TObject);
var
  point: TPoint;
  btn: TSpeedButton;
  row: integer;
  rect: TRect;
  y: integer;
  wic: TWICImage;
begin
  edtORD_SEQ.Text := inttostr(MaxSeq);
  FMenuImageList := TList<TWICImage>.Create;
  FQntImageList := TList<TWICImage>.Create;

  wic := TWICImage.Create;
  wic.LoadFromFile('..\..\Resources\NewMinus.png');
  //wic.LoadFromFile('..\..\Image\NewPrevious.png');
  FQntImageList.Add(wic);

  wic := TWICImage.Create;
  wic.LoadFromFile('..\..\Resources\NewPlus.png');
//  wic.LoadFromFile('..\..\Image\next.png');
  FQntImageList.Add(wic);

  wic := TWICImage.Create;
  //wic.LoadFromFile('..\..\Image\minus.png');
  wic.LoadFromFile('..\..\Resources\NewDelete.png');
  FQntImageList.Add(wic);

  sgrdMenuList.ColWidths[0] := sgrdMenuList.GridLineWidth -2;
  sgrdMenuList.ColWidths[1] := sgrdMenuList.GridLineWidth + 100;
  sgrdMenuList.ColWidths[2] := sgrdMenuList.GridLineWidth + 180;
  sgrdMenuList.ColWidths[3] := sgrdMenuList.GridLineWidth + 80;
  sgrdMenuList.ColWidths[4] := sgrdMenuList.GridLineWidth + 100;

  sgrdOrderMenuList.ColWidths[0] := sgrdOrderMenuList.GridLineWidth + 40;
  sgrdOrderMenuList.ColWidths[1] := sgrdOrderMenuList.GridLineWidth + 80;
  sgrdOrderMenuList.ColWidths[2] := sgrdOrderMenuList.GridLineWidth + 180;
  sgrdOrderMenuList.ColWidths[3] := sgrdOrderMenuList.GridLineWidth + 80;
  sgrdOrderMenuList.ColWidths[4] := sgrdOrderMenuList.GridLineWidth + 80;
  sgrdOrderMenuList.ColWidths[5] := sgrdOrderMenuList.GridLineWidth + 80;
  sgrdOrderMenuList.ColWidths[6] := sgrdOrderMenuList.GridLineWidth + 60;
  sgrdOrderMenuList.ColWidths[7] := sgrdOrderMenuList.GridLineWidth + 100;
  sgrdOrderMenuList.ColWidths[8] := sgrdOrderMenuList.GridLineWidth + 75;

  Button1Click(self);
  
(*                                                                               // StringGrid에 Button넣기
    rect := sgrdOrderMenuList.CellRect(C_COL, sgrdOrderMenuList.TopRow);
    point := ScreenToClient(ClientToScreen(rect.TopLeft));
    y := rect.Top;
    for row := 0 to sgrdOrderMenuList.RowCount - 1 do
    begin
      btn := TSpeedButton.Create(sgrdOrderMenuList);
      btn.Name := Format('SP%d', [row]);
      btn.Parent := sgrdOrderMenuList;
      btn.OnClick := SpeedButton1Click;
      btn.tag := row;
      btn.Width := sgrdOrderMenuList.ColWidths[C_COL];
      btn.Height := sgrdOrderMenuList.DefaultRowHeight;
      btn.Visible := true;
    end;
    sgrdOrderMenuListTopLeftChanged(TStringGrid(Sender));
*)
end;


procedure TfrmOrderMenu.FormDestroy(Sender: TObject);
begin
  ClearMenuImageList;
  FMenuImageList.Free;
  FQntImageList.Free;
end;

procedure TfrmOrderMenu.sgrdMenuListDblClick(Sender: TObject);
var
  Rcnt : Integer;
  Stream: TMemoryStream;
  Bitmap : TBitmap;
  H: THandle;
  Rect : TRect;
  Seq, S2 : string;
  msg:string;
  I : Integer;
begin
  for I := 0 to sgrdOrderMenuList.RowCount-1 do
    begin
      Seq := sgrdOrderMenuList.Cells[0, I];
      if sgrdMenuList.Cells[0,sgrdMenuList.Row] = SEQ  then
      begin
        Msg := '<'+sgrdMenuList.Cells[2,sgrdMenuList.Row] + '> 메뉴가 주문목록에 있습니다.'+#13#10+ '수량을 증가 시키겠습니까?';
        if messagedlg(Msg, mtInformation, [mbYes, mbNO], 0) = mrNO then
          exit;

        //showmessage(sgrdOrderMenuList.Cells[4, I]);
        sgrdOrderMenuList.Cells[4, I] := inttostr(strtoint(sgrdOrderMenuList.Cells[4, I])+1);
        exit;
      end;
    end;

  if sgrdOrderMenuList.RowCount > 1 then
    sgrdOrderMenuList.RowCount := sgrdOrderMenuList.RowCount + 1

  else if (sgrdOrderMenuList.Cells[0,0] <> '') and (sgrdOrderMenuList.Cells[2,0] <> '')  then
    sgrdOrderMenuList.RowCount := sgrdOrderMenuList.RowCount + 1

  else
    begin
    end;
    //sgrdOrderMenuList.RowCount := sgrdOrderMenuList.RowCount + 1;
  Rcnt := sgrdOrderMenuList.RowCount;
  sgrdOrderMenuList.Cells[0,Rcnt-1] := sgrdMenuList.Cells[0,sgrdMenuList.Row];   // SEQ
  sgrdOrderMenuList.Cells[2,Rcnt-1] := sgrdMenuList.Cells[2,sgrdMenuList.Row];   // MENU 이름
  sgrdOrderMenuList.Cells[4,Rcnt-1] := sgrdMenuList.Cells[3,sgrdMenuList.Row];   // 수량

  s2 := sgrdMenuList.Cells[4,sgrdMenuList.Row];
  s2 := StringReplace(s2, ',', '',[rfReplaceAll]);
  s2 := copy(s2, 2,Length(s2));


  sgrdOrderMenuList.Cells[6,Rcnt-1] := s2; // 수량 2개이상 일때 계산용 단가저장
  sgrdOrderMenuList.Cells[7,Rcnt-1] := sgrdMenuList.Cells[4,sgrdMenuList.Row];

  sgrdOrderMenuList.Cells[8,Rcnt-1] := '삭제';

  //msg := format('Col: %d, Row: %d',[seCol, seRow]);
  //OutputDebugString(PChar(Msg));
  //dmPcClient.dtsTbOrderMenu.ApplyUpdates(-1);
  sgrdOrderMenuList.Refresh;

end;

procedure TfrmOrderMenu.sgrdMenuListDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  Bit: TBitmap;
  Idx: Integer;
  Msg: String;
  OldAlign:Integer;
  S:String;
  WPos:integer;
  HPos:integer;
begin
  //sgrdMenuList.Canvas.fillrect(Rect);
  S := sgrdMenuList.Cells[Acol,Arow];  // cell안의 글자
  HPos:= ((Rect.Top - Rect.Bottom) - sgrdMenuList.Canvas.TextHeight(S)) div 2;   //중앙정렬
  WPos:= ((Rect.Right - Rect.Left) - sgrdMenuList.Canvas.Textwidth(S)) div 2;
  sgrdMenuList.Canvas.TextRect(Rect, Rect.Left+WPos, Rect.Bottom+HPos, S);

  case ACol of
    1:begin // Menu Image
        try
        Idx := ARow - sgrdMenuList.FixedRows;
        if FMenuImageList.Count <=Idx then
          Exit;
        sgrdMenuList.Canvas.StretchDraw(Rect, FMenuImageList[Idx]);
       // sgrdMenuList.Canvas.StretchDraw(Rect, Bit);
      except
        begin
          Msg := Format('Acol=%d, ARow=%d Cell StringGrid오류 발생',[Acol, ARow]);
          OutputDebugString(PChar(Msg));
        end;
      end;
    end;

    3:begin // 메뉴 수량
      sgrdMenuList.Canvas.font.Size:= sgrdMenuList.Canvas.Font.Size + 4;
      HPos:= ((Rect.Top - Rect.Bottom) - sgrdMenuList.Canvas.TextHeight(S)) div 2;
      WPos:= ((Rect.Right - Rect.Left) - sgrdMenuList.Canvas.Textwidth(S)) div 2;
      sgrdMenuList.Canvas.TextRect(Rect, Rect.Left+WPos, Rect.Bottom+HPos, S);
    end;

    4:begin // 메뉴 가격
      sgrdMenuList.Canvas.font.Size:= sgrdMenuList.Canvas.Font.Size + 4;
      OldAlign := SetTextAlign(sgrdMenuList.Canvas.Handle, Ta_right);
      HPos:= ((Rect.Top - Rect.Bottom) - sgrdMenuList.Canvas.TextHeight(S)) div 2; //중앙정렬
      sgrdMenuList.Canvas.TextRect(Rect, Rect.Right-10, Rect.Bottom+HPos, S);      //오른쪽 출발
      SetTextAlign(sgrdMenuList.Canvas.Handle, OldAlign);
    end;

  end;
end;

procedure TfrmOrderMenu.sgrdMenuListMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  Acol, ARow :Integer;
begin
  sgrdMenuList.MouseToCell(X,Y,ACol,ARow);

  //Showmessage(Format('%d, %d, %d, %d',[X,Y,ACol,ARow]));

  SeCol := ACol;
  SeRow := ARow;
//(X,Y,ACol,ARow);
end;

procedure TfrmOrderMenu.sgrdMenuListSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  SeCol := ACol;
  SeRow := ARow;
end;

procedure TfrmOrderMenu.sgrdOrderMenuListDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  arect : TRect;
  Bit: TBitmap;
  Idx: Integer;
  Msg: String;
  OldAlign:Integer;
  S:String;
  WPos:integer;
  HPos:integer;
  UnitCost : integer;
  Price : String;
  Qnt, TotalCost : Integer;
  I:Integer;

begin

// if gdSelected in State then //if is selected use the clAqua color
//    sgrdOrderMenuList.Canvas.Brush.Color := clWhite;

//  if gdFixed in State then //if is fixed use the clBtnFace color
//    sgrdOrderMenuList.Canvas.Brush.Color := clBtnFace;


  S := sgrdOrderMenuList.Cells[Acol,Arow];  // cell안의 글자
  HPos:= ((Rect.Top - Rect.Bottom) - sgrdOrderMenuList.Canvas.TextHeight(S)) div 2;   //중앙정렬
  WPos:= ((Rect.Right - Rect.Left) - sgrdOrderMenuList.Canvas.Textwidth(S)) div 2;
  sgrdOrderMenuList.Canvas.TextRect(Rect, Rect.Left+WPos, Rect.Bottom+HPos, S);
  TotalCost := 0;

  case ACol of
    1:begin // Menu Image
        try
        Idx := strtointdef(sgrdOrderMenuList.Cells[0,Arow],0)-1;
        if idx < 0 then
          exit;
        if FMenuImageList.Count <=Idx then
          Exit;
        sgrdOrderMenuList.Canvas.StretchDraw(Rect, FMenuImageList[Idx]);
       // sgrdMenuList.Canvas.StretchDraw(Rect, Bit);
      except
        begin
          Msg := Format('Acol=%d, ARow=%d Cell StringGrid오류 발생',[Acol, ARow]);
          OutputDebugString(PChar(Msg));
        end;
      end;
    end;
    3:if (sgrdOrderMenuList.Cells[0,Arow] <> '') then
      begin
//      sgrdOrderMenuList.Canvas.StretchDraw(Rect, FQntImageList[0]);
        HPos:= ((Rect.Top - Rect.Bottom) - FQntImageList[0].Width) div 2;   //중앙정렬
        WPos:= ((Rect.Right - Rect.Left) - FQntImageList[0].Height) div 2;
        sgrdOrderMenuList.Canvas.Draw(Rect.Left+WPos, Rect.Bottom+HPos, FQntImageList[0]);
      end;



    4:if (sgrdOrderMenuList.Cells[0,Arow] <> '') then
    begin // 메뉴 수량
      UnitCost := strtoint(sgrdOrderMenuList.Cells[6, ARow]);
      Qnt := strtoint(sgrdOrderMenuList.Cells[4, ARow]);
      Price := Format('%m', [UnitCost * Qnt * 1.0]);
      sgrdOrderMenuList.Cells[7, ARow] := Price;

      sgrdOrderMenuList.Canvas.Font.Name := 'Tahoma';
      sgrdOrderMenuList.Canvas.Font.Color := clHotLight;
      sgrdOrderMenuList.Canvas.font.Size:= sgrdOrderMenuList.Canvas.Font.Size + 15;
      HPos:= ((Rect.Top - Rect.Bottom) - sgrdOrderMenuList.Canvas.TextHeight(S)) div 2;
      WPos:= ((Rect.Right - Rect.Left) - sgrdOrderMenuList.Canvas.Textwidth(S)) div 2;
      sgrdOrderMenuList.Canvas.TextRect(Rect, Rect.Left+WPos, Rect.Bottom+HPos, S);
    end;

    5:if (sgrdOrderMenuList.Cells[0,Arow] <> '') then
      begin
//      sgrdOrderMenuList.Canvas.StretchDraw(Rect, FQntImageList[1]);
        HPos:= ((Rect.Top - Rect.Bottom) - FQntImageList[0].Width) div 2;   //중앙정렬
        WPos:= ((Rect.Right - Rect.Left) - FQntImageList[0].Height) div 2;
        sgrdOrderMenuList.Canvas.Draw(Rect.Left+WPos, Rect.Bottom+HPos, FQntImageList[1]);
      end;

    7:begin // 메뉴 가격
      sgrdOrderMenuList.Canvas.font.Size:= sgrdOrderMenuList.Canvas.Font.Size + 4;
      OldAlign := SetTextAlign(sgrdOrderMenuList.Canvas.Handle, Ta_right);
      HPos:= ((Rect.Top - Rect.Bottom) - sgrdOrderMenuList.Canvas.TextHeight(S)) div 2; //세로 방향 middle정렬
      sgrdOrderMenuList.Canvas.TextRect(Rect, Rect.Right-10, Rect.Bottom+HPos, S);      //오른쪽 출발
      SetTextAlign(sgrdOrderMenuList.Canvas.Handle, OldAlign);

    end;

    8:if (sgrdOrderMenuList.Cells[0,Arow] <> '') then
      begin
//      sgrdOrderMenuList.Canvas.StretchDraw(Rect, FQntImageList[0]);
        HPos:= ((Rect.Top - Rect.Bottom) - FQntImageList[0].Width) div 2;   //중앙정렬
        WPos:= ((Rect.Right - Rect.Left) - FQntImageList[0].Height) div 2;
        sgrdOrderMenuList.Canvas.Draw(Rect.Left+WPos, Rect.Bottom+HPos, FQntImageList[2]);
      end;

    (*
      6:
      begin
      DrawFrameControl(TStringGrid(Sender).Canvas.Handle, Rect, DFC_BUTTON, DFCS_BUTTONPUSH);//DFCS_BUTTONPUSH);
      //sgrdOrderMenuList.Canvas.TextRect(Rect, Rect.Left, Rect.Top, S);
      end;
*)
  end;

  if (sgrdOrderMenuList.Cells[7,Arow] <> '') then
    for I := 0 to sgrdOrderMenuList.RowCount -1 do
    begin
    S := sgrdOrderMenuList.Cells[7, I];
    S := StringReplace(S,',','',[rfReplaceAll]);
    S := Copy(S, 2,Length(S));

    TotalCost := TotalCost + strtoint(S) ;
    end;

  TotalPrice.Caption := inttostr(TotalCost);
end;

procedure TfrmOrderMenu.sgrdOrderMenuListExit(Sender: TObject);
begin
// COL3 : 수량 ,  COL4 : 단가,  COL5 : 총액
end;

procedure TfrmOrderMenu.sgrdOrderMenuListSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var
  S:String;
  SeletedRowMenuName : String;
  Msg :String;
  i : Integer;
  Qnt : Integer;
  Price : String;
  TotalCost : Integer;

begin
(*
    if (ACol <> 3) then
    {컬럼에서 수정모드 막음}
      TStringGrid(Sender).Options := TStringGrid(Sender).Options - [goEditing]
    else
      TStringGrid(Sender).Options := TStringGrid(Sender).Options + [goEditing];
*)
  Qnt:= strtoint(sgrdOrderMenuList.Cells[4, ARow]);
  if (Acol = 3) and (Qnt > 1) then
  begin
    Qnt := Qnt - 1;
    sgrdOrderMenuList.Cells[4, ARow] := inttoStr(Qnt);
  end;

  if (Acol = 5) then
  begin
    Qnt := Qnt + 1;
    sgrdOrderMenuList.Cells[4, ARow] := inttoStr(Qnt);
  end;

  if ACol = 8 then
  begin
    SeletedRowMenuName := sgrdOrderMenuList.Cells[2, ARow];
    Msg := SeletedRowMenuName + '메뉴를 삭제 하시겠습니까?';

    if messagedlg(Msg, mtInformation, [mbYes, mbNO], 0) = mrNO then
      exit;
    DeleteRow(sgrdOrderMenuList, Arow);
  end;

end;

procedure TfrmOrderMenu.sgrdOrderMenuListSetEditText(Sender: TObject; ACol,
  ARow: Integer; const Value: string);
var
  s: string;
begin
//  s := sgrdOrderMenuList.Cells[Acol, ARow];
//  showmessage(s + '선택' + inttostr(Acol) + ' '+ inttostr(Arow));
end;

procedure TfrmOrderMenu.SpeedButton1Click(Sender: TObject);
begin
  showmessage('T스피드 버튼 눌름');
end;

procedure TfrmOrderMenu.DeleteRow(StringGrid: TStringGrid; ARow: integer);
var
  i, j: integer;
begin

  with StringGrid do
  begin
    if (RowCount = 1) then
    begin
      for I := 0 to ColCount - 1 do
        Cols[I].Clear;//Cells[I,Arow] := '';//
      RowCount := 1;
    end
    else
    begin
    for i := ARow to RowCount-2 do
      Rows[i].Assign(Rows[i+1]); // 차례대로 밑에 줄을 복사해서 덮어버림
    RowCount := RowCount - 1  //
    end;
  end;


end;

end.


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
    Button1: TButton;
    sgrdOrderMenuList: TStringGrid;
    DBGrid1: TDBGrid;
    dsOrderMenulist: TDataSource;
    DBGrid2: TDBGrid;
    dsTbOrderMenu: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Button2: TButton;
    Button3: TButton;
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
    procedure Button3Click(Sender: TObject);
    
  private
    { Private declarations }
    FMenuImageList: TList<TWICImage>;
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

uses DataModulePcClient, CommonFunctions;

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


procedure TfrmOrderMenu.Button2Click(Sender: TObject);
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


procedure TfrmOrderMenu.Button3Click(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to sgrdMenuList.ColCount - 1 do
    sgrdMenuList.Cols[I].Clear;
  sgrdMenuList.RowCount := 1;
end;

procedure TfrmOrderMenu.ClearMenuImageList;
var
  WIC: TWICImage;
begin
  for WIC in FMenuImageList do
    WIC.Free;
  FMenuImageList.Clear;
end;


procedure TfrmOrderMenu.FormCreate(Sender: TObject);
var
  point: TPoint;
  btn: TSpeedButton;
  row: integer;
  rect: TRect;
  y: integer;
begin
  FMenuImageList := TList<TWICImage>.Create;

  sgrdMenuList.ColWidths[0] := sgrdMenuList.GridLineWidth -2;
  sgrdMenuList.ColWidths[1] := sgrdMenuList.GridLineWidth + 100;
  sgrdMenuList.ColWidths[2] := sgrdMenuList.GridLineWidth + 180;
  sgrdMenuList.ColWidths[3] := sgrdMenuList.GridLineWidth + 80;
  sgrdMenuList.ColWidths[4] := sgrdMenuList.GridLineWidth + 100;
  Button1Click(self);

(*
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
end;

procedure TfrmOrderMenu.sgrdMenuListDblClick(Sender: TObject);
var
  Rcnt : Integer;
  wic: TWICImage; // Microsoft Windows Imaging Component
  Stream: TMemoryStream;
  Bitmap : TBitmap;
  H: THandle;
  Rect : TRect;
  s2 : string;

  msg:string;

begin

  if sgrdOrderMenuList.RowCount > 1 then
    sgrdOrderMenuList.RowCount := sgrdOrderMenuList.RowCount + 1

  else if (sgrdOrderMenuList.Cells[0,0] <> '') and (sgrdOrderMenuList.Cells[2,0] <> '')  then
    sgrdOrderMenuList.RowCount := sgrdOrderMenuList.RowCount + 1

  else
    begin
    end;
    //sgrdOrderMenuList.RowCount := sgrdOrderMenuList.RowCount + 1;
  Rcnt := sgrdOrderMenuList.RowCount;
  sgrdOrderMenuList.Cells[0,Rcnt-1] := sgrdMenuList.Cells[0,sgrdMenuList.Row];
  sgrdOrderMenuList.Cells[2,Rcnt-1] := sgrdMenuList.Cells[2,sgrdMenuList.Row];
  sgrdOrderMenuList.Cells[3,Rcnt-1] := sgrdMenuList.Cells[3,sgrdMenuList.Row];

  s2 := sgrdMenuList.Cells[4,sgrdMenuList.Row];
  s2 := StringReplace(s2, ',', '',[rfReplaceAll]);
  s2 := copy(s2, 2,Length(s2));


  sgrdOrderMenuList.Cells[4,Rcnt-1] := s2; // 2개이상 계산용 단가저장
  sgrdOrderMenuList.Cells[5,Rcnt-1] := sgrdMenuList.Cells[4,sgrdMenuList.Row];

  sgrdOrderMenuList.Cells[6,Rcnt-1] := '삭제';

  //  msg := format('Col: %d, Row: %d',[seCol, seRow]);
//  OutputDebugString(PChar(Msg));
  //sgrdOrderMenuList.Canvas.
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

begin
  S := sgrdOrderMenuList.Cells[Acol,Arow];  // cell안의 글자
  HPos:= ((Rect.Top - Rect.Bottom) - sgrdOrderMenuList.Canvas.TextHeight(S)) div 2;   //중앙정렬
  WPos:= ((Rect.Right - Rect.Left) - sgrdOrderMenuList.Canvas.Textwidth(S)) div 2;
  sgrdOrderMenuList.Canvas.TextRect(Rect, Rect.Left+WPos, Rect.Bottom+HPos, S);

  case ACol of
    1:begin // Menu Image
        try
        Idx := strtoint(sgrdOrderMenuList.Cells[0,Arow])-1;
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

    3:begin // 메뉴 수량
      sgrdOrderMenuList.Canvas.font.Size:= sgrdOrderMenuList.Canvas.Font.Size + 4;
      HPos:= ((Rect.Top - Rect.Bottom) - sgrdOrderMenuList.Canvas.TextHeight(S)) div 2;
      WPos:= ((Rect.Right - Rect.Left) - sgrdOrderMenuList.Canvas.Textwidth(S)) div 2;
      sgrdOrderMenuList.Canvas.TextRect(Rect, Rect.Left+WPos, Rect.Bottom+HPos, S);
    end;

    4:begin // 메뉴 가격
      sgrdOrderMenuList.Canvas.font.Size:= sgrdOrderMenuList.Canvas.Font.Size + 4;
      OldAlign := SetTextAlign(sgrdOrderMenuList.Canvas.Handle, Ta_right);
      HPos:= ((Rect.Top - Rect.Bottom) - sgrdOrderMenuList.Canvas.TextHeight(S)) div 2; //중앙정렬
      sgrdOrderMenuList.Canvas.TextRect(Rect, Rect.Right-10, Rect.Bottom+HPos, S);      //오른쪽 출발
      SetTextAlign(sgrdOrderMenuList.Canvas.Handle, OldAlign);
    end;
(*
      6:
      begin
      DrawFrameControl(TStringGrid(Sender).Canvas.Handle, Rect, DFC_BUTTON, DFCS_BUTTONPUSH);//DFCS_BUTTONPUSH);
      //sgrdOrderMenuList.Canvas.TextRect(Rect, Rect.Left, Rect.Top, S);
      end;
*)
  end;
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
begin
  if (ACol <> 3) then
  {컬럼에서 수정모드 막음}
    TStringGrid(Sender).Options := TStringGrid(Sender).Options - [goEditing]
  else
    TStringGrid(Sender).Options := TStringGrid(Sender).Options + [goEditing];

  S:= sgrdOrderMenuList.Cells[ACol, ARow];
  SeletedRowMenuName := sgrdOrderMenuList.Cells[2, ARow];
  Msg := SeletedRowMenuName + '메뉴를 삭제 하시겠습니까?';

  if ACol = 6 then
  begin
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
      Rows[i].Assign(Rows[i+1]); // 밑에 줄을 올려서 덮어버림
    RowCount := RowCount - 1
    end;
  end;


end;

end.


unit frmDay;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, ExtCtrls, DB, ADODB, ComCtrls, StdCtrls, Mask,
  DBCtrls, Buttons, DateUtils, DBGrids, iniFiles, DBClient, SimpleDS, FMTBcd,
  SqlExpr, Provider;

type
  TDayForm = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    DateTimePicker: TDateTimePicker;
    DayDS: TDataSource;
    PreDayBtn: TSpeedButton;
    YesterdayBtn: TSpeedButton;
    TodayBtn: TSpeedButton;
    TomorrowBtn: TSpeedButton;
    NextDayBtn: TSpeedButton;
    InsertBtn: TButton;
    DelBtn: TButton;
    EditBtn: TButton;
    TravelGrid: TDBGrid;
    DayDataSet: TClientDataSet;
    DayProvider: TDataSetProvider;
    DayQuery: TSQLQuery;
    DayQueryTravelId: TIntegerField;
    DayQueryBusNumber: TWideStringField;
    DayQueryTravelDate: TDateField;
    DayQueryCustom: TWideStringField;
    DayQueryTravel: TWideStringField;
    DayQueryGroups: TWideStringField;
    DayQueryTurnover: TIntegerField;
    DayQueryTurnover2: TIntegerField;
    DayQueryTravelExp: TIntegerField;
    DayQueryOilExp: TIntegerField;
    DayQueryFirstIncome: TIntegerField;
    DayQueryFirstIncomeDate: TDateField;
    DayQuerySecondIncome: TIntegerField;
    DayQuerySecondIncomeDate: TDateField;
    DayQueryTips: TIntegerField;
    DayQueryTips2: TIntegerField;
    DayQueryNote: TWideStringField;
    DayQueryNote2: TWideStringField;
    DayQueryStartTime: TWideStringField;
    DayQueryEndTime: TWideStringField;
    DayDataSetTravelId: TIntegerField;
    DayDataSetBusNumber: TWideStringField;
    DayDataSetTravelDate: TDateField;
    DayDataSetCustom: TWideStringField;
    DayDataSetTravel: TWideStringField;
    DayDataSetGroups: TWideStringField;
    DayDataSetTurnover: TIntegerField;
    DayDataSetTurnover2: TIntegerField;
    DayDataSetTravelExp: TIntegerField;
    DayDataSetOilExp: TIntegerField;
    DayDataSetFirstIncome: TIntegerField;
    DayDataSetFirstIncomeDate: TDateField;
    DayDataSetSecondIncome: TIntegerField;
    DayDataSetSecondIncomeDate: TDateField;
    DayDataSetTips: TIntegerField;
    DayDataSetTips2: TIntegerField;
    DayDataSetNote: TWideStringField;
    DayDataSetNote2: TWideStringField;
    DayDataSetStartTime: TWideStringField;
    DayDataSetEndTime: TWideStringField;
    procedure FormShow(Sender: TObject);
//    procedure OKBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DateTimePickerChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure InsertBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure DayGridDblClick(Sender: TObject);
    procedure PreDayBtnClick(Sender: TObject);
    procedure YesterdayBtnClick(Sender: TObject);
    procedure TodayBtnClick(Sender: TObject);
    procedure TomorrowBtnClick(Sender: TObject);
    procedure NextDayBtnClick(Sender: TObject);
    procedure DayDataSetGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure DayDataSetTurnoverGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure DayDSDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    procedure SetQueryDate(TravelDate: TDate);
  public
    { Public declarations }
  end;

var
  DayForm: TDayForm;

implementation

uses frmdm, frmInsertDay;

{$R *.dfm}

procedure TDayForm.FormShow(Sender: TObject);
begin
  SetQueryDate(Now);
  //if DayQuery.IsEmpty then
  //  NewTravel;
  DateTimePicker.Date := Now;

  // 判斷是否可修改
  if DM.EditEnable or DM.DayEditEnable then
  begin
    TravelGrid.Options := TravelGrid.Options + [TDBGridOption.dgEditing] - [TDBGridOption.dgRowSelect];
    InsertBtn.Enabled := true;
    DelBtn.Enabled := true;
    EditBtn.Enabled := true;
  end
  else
  begin
    TravelGrid.Options := TravelGrid.Options - [TDBGridOption.dgEditing] + [TDBGridOption.dgRowSelect];
    InsertBtn.Enabled := false;
    DelBtn.Enabled := false;
    EditBtn.Enabled := false;
  end;
end;
//
//procedure TDayForm.OKBtnClick(Sender: TObject);
//Var
//  Msg: String;
//begin
//  if DayDataSet.State in [dsEdit, dsInsert] then
//  begin
//    DayQuery.Post;
//    Msg := '車號: ' + DayQueryBusNumber.Text + #13;
//    Msg := Msg + '客戶: ' + DayQueryCustom.Text + #13;
//    Msg := Msg + '行程: ' + DayQueryTravel.Text + #13#13;
//    Msg := Msg + '修改成功！';
//    MessageDlg(Msg, mtInformation, [mbOK], 0);
//  end
//  else
//    abort();
//end;

procedure TDayForm.FormClose(Sender: TObject; var Action: TCloseAction);
var
  iniFile: TIniFile;
begin
  iniFile := TIniFile.Create(DM.AppPath + 'Config.ini');
  iniFile.WriteInteger('DayForm', 'FormTop', DayForm.Top);
  iniFile.WriteInteger('DayForm', 'FormLeft', DayForm.Left);
  iniFile.WriteInteger('DayForm', 'FormHeight', DayForm.Height);
  iniFile.WriteInteger('DayForm', 'FormWidth', DayForm.Width);
  iniFile.Free;

  if DayDataSet.Active then
    DayDataSet.ApplyUpdates(0);
  DayDataSet.Close;
  DayForm := nil;
  Action := caFree;
end;

procedure TDayForm.DateTimePickerChange(Sender: TObject);
begin
  SetQueryDate(DateTimePicker.Date);
  //if DayQuery.IsEmpty then
  //  NewTravel;
end;

{----- 設定 DayQuery 的 Years、Months、Days -----}
procedure TDayForm.SetQueryDate(TravelDate: TDate);
begin
//  DayDataSet.Close;
//  DayQuery.Close;

  DayQuery.ParamByName('Years').AsInteger := YearOf(TravelDate);
  DayQuery.ParamByName('Months').AsInteger := MonthOf(TravelDate);
  DayQuery.ParamByName('Days').AsInteger := DayOf(TravelDate);

  if (DayQuery.Active) then
  begin
    DayQuery.Refresh;
    DayDataSet.Refresh;
  end
  else
  begin
    DayQuery.Open;
    DayDataSet.Open;
  end;

//  DayQuery.Open;
//  DayDataSet.Open;
end;

procedure TDayForm.FormCreate(Sender: TObject);
var
  iniFile: TIniFile;
begin
  iniFile := TIniFile.Create(DM.AppPath + 'Config.ini');
  DayForm.Top := iniFile.ReadInteger('DayForm', 'FormTop', 0);
  DayForm.Left := iniFile.ReadInteger('DayForm', 'FormLeft', 0);
  DayForm.Height := iniFile.ReadInteger('DayForm', 'FormHeight', 500);
  DayForm.Width := iniFile.ReadInteger('DayForm', 'FormWidth', 800);
  iniFile.Free;
end;

procedure TDayForm.InsertBtnClick(Sender: TObject);
begin
  if not Assigned(TForm(InsertDayForm)) then
    Application.CreateForm(TInsertDayForm, InsertDayForm);

  DayDataSet.Append;
  DayDataSet.FieldValues['TravelId'] := 0;
  DayDataSet.FieldValues['TravelDate'] := DayForm.DateTimePicker.DateTime;
  DayDataSet.FieldValues['Turnover'] := 0;
  DayDataSet.FieldValues['TravelExp'] := 0;
  DayDataSet.FieldValues['OilExp'] := 0;
  DayDataSet.FieldValues['FirstIncome'] := 0;
  DayDataSet.FieldValues['SecondIncome'] := 0;
  DayDataSet.FieldValues['Tips'] := 0;

  InsertDayForm.ShowModal;
end;

procedure TDayForm.EditBtnClick(Sender: TObject);
begin
  if not Assigned(TForm(InsertDayForm)) then
    Application.CreateForm(TInsertDayForm, InsertDayForm);

  InsertDayForm.ShowModal;
  {if not Assigned(TForm(EditDayForm)) then
    Application.CreateForm(TEditDayForm, EditDayForm);
  EditDayForm.ShowModal;}
end;

procedure TDayForm.DelBtnClick(Sender: TObject);
begin
  if MessageDlg('確定要刪除嗎？', mtInformation, [mbYes,mbNo], 0) = mrYes then
  begin
    try
      DayDataSet.Delete;
      DayDataSet.ApplyUpdates(0);
    except
      MessageDlg('刪除失敗！', mtError, [mbOK], 0);
    end;
  end;
end;

procedure TDayForm.DayDataSetGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  DM.DataSetGetText(Sender, Text, DisplayText);
end;

procedure TDayForm.DayDataSetTurnoverGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  DM.DataSetGetText(Sender, Text, DisplayText);
end;

procedure TDayForm.DayDSDataChange(Sender: TObject; Field: TField);
begin
  DM.ImmediateUpdate(Field);
end;

procedure TDayForm.DayGridDblClick(Sender: TObject);
begin
  if not DM.EditEnable then
    exit;

  if not Assigned(TForm(InsertDayForm)) then
    Application.CreateForm(TInsertDayForm, InsertDayForm);

  InsertDayForm.ShowModal;
//
//  if not Assigned(TForm(EditDayForm)) then
//    Application.CreateForm(TEditDayForm, EditDayForm);
//  EditDayForm.ShowModal;
end;

procedure TDayForm.PreDayBtnClick(Sender: TObject);
begin
  DateTimePicker.Date := IncDay(DateTimePicker.Date, -1);
  SetQueryDate(DateTimePicker.Date);
end;

procedure TDayForm.YesterdayBtnClick(Sender: TObject);
begin
  DateTimePicker.Date := Yesterday();
  SetQueryDate(DateTimePicker.Date);
end;

procedure TDayForm.TodayBtnClick(Sender: TObject);
begin
  DateTimePicker.Date := Today();  
  SetQueryDate(DateTimePicker.Date);
end;

procedure TDayForm.TomorrowBtnClick(Sender: TObject);
begin
  DateTimePicker.Date := Tomorrow();  
  SetQueryDate(DateTimePicker.Date);
end;

procedure TDayForm.NextDayBtnClick(Sender: TObject);
begin
  DateTimePicker.Date := IncDay(DateTimePicker.Date, 1);  
  SetQueryDate(DateTimePicker.Date);
end;

end.

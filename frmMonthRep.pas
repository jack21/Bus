unit frmMonthRep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdblook, ExtCtrls, DateUtils, Buttons, Grids,
  BaseGrid, AdvGrid, DBAdvGrd, DB, ADODB, asgprint, StrUtils,
  RpBase, RpSystem, RpDefine, RpRave, RpCon, RpConDS, DBGrids, iniFiles,
  OleServer, WordXP, Word2000, Wwdbigrd, Wwdbgrid, ComCtrls, DBClient, SimpleDS;

type
  TMonthRepForm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    BusLookup: TwwDBLookupCombo;
    YearEdit: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    MonthBox: TComboBox;
    Panel2: TPanel;
    Panel3: TPanel;
    MonthDS: TDataSource;
    RvProject1: TRvProject;
    MonthsConn: TRvDataSetConnection;
    ExpDS: TDataSource;
    Panel4: TPanel;
    ExpConn: TRvDataSetConnection;
    RvProject2: TRvProject;
    OKBtn: TButton;
    MonthRepBtn: TButton;
    PayRepBtn: TButton;
    ExpDataSet: TSimpleDataSet;
    ExpDataSetExpId: TIntegerField;
    ExpDataSetBusNumber: TWideStringField;
    ExpDataSetYears: TIntegerField;
    ExpDataSetMonths: TIntegerField;
    ExpDataSetMemberFee: TIntegerField;
    ExpDataSetTax: TIntegerField;
    ExpDataSetDriverSalary: TIntegerField;
    ExpDataSetServiceSalary: TIntegerField;
    ExpDataSetUnionFee: TIntegerField;
    ExpDataSetLicenceTax: TIntegerField;
    ExpDataSetParkFee: TIntegerField;
    ExpDataSetFixFee: TIntegerField;
    ExpDataSetIncidental: TIntegerField;
    ExpDataSetCellphone: TIntegerField;
    ExpDataSetInsurance: TIntegerField;
    ExpDataSetReserve: TIntegerField;
    ExpDataSetReserve1: TIntegerField;
    ExpDataSetReserve2: TIntegerField;
    ExpDataSetReserve3: TIntegerField;
    ExpDataSetReserve4: TIntegerField;
    MonthDataSet: TSimpleDataSet;
    MonthDataSetTravelId: TIntegerField;
    MonthDataSetBusNumber: TWideStringField;
    MonthDataSetTravelDate: TDateField;
    MonthDataSetCustom: TWideStringField;
    MonthDataSetTravel: TWideStringField;
    MonthDataSetGroups: TWideStringField;
    MonthDataSetTurnover: TIntegerField;
    MonthDataSetTurnover2: TIntegerField;
    MonthDataSetTravelExp: TIntegerField;
    MonthDataSetOilExp: TIntegerField;
    MonthDataSetFirstIncome: TIntegerField;
    MonthDataSetFirstIncomeDate: TDateField;
    MonthDataSetSecondIncome: TIntegerField;
    MonthDataSetSecondIncomeDate: TDateField;
    MonthDataSetTips: TIntegerField;
    MonthDataSetTips2: TIntegerField;
    MonthDataSetNote: TWideStringField;
    MonthDataSetNote2: TWideStringField;
    MonthDataSetStartTime: TWideStringField;
    MonthDataSetEndTime: TWideStringField;
    MonthDataSetShortTravelDate: TStringField;
    MonthDataSetShortFirstIncomeDate: TStringField;
    MonthDataSetShortSecondIncomeDate: TStringField;
    MonthDataSetNoIncome: TIntegerField;
    MonthDataSetTotalIncome: TIntegerField;
    MonthGroupDataSet: TSimpleDataSet;
    Splitter1: TSplitter;
    MonthGrid: TDBGrid;
    ExpGrid: TDBGrid;
    ExpDataSetNote: TWideStringField;
    RaveSystem: TRvSystem;
    ExpDataSetToll: TIntegerField;
    ExpDataSetReserve5: TIntegerField;
    ExpDataSetReserve6: TIntegerField;
    ExpDataSetReserve7: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OKBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MonthRepBtnClick(Sender: TObject);
    procedure PayRepBtnClick(Sender: TObject);
    procedure MonthDataSetCalcFields(DataSet: TDataSet);
    procedure ExpGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ExpDataSetGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure MonthDataSetGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure MonthDSDataChange(Sender: TObject; Field: TField);
    procedure ExpDSDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MonthRepForm: TMonthRepForm;

implementation

uses frmDM, frmExp, rpMonthPay, rpMonth;

{$R *.dfm}



procedure TMonthRepForm.FormShow(Sender: TObject);
var
  I: Integer;
  Col: TColumn;
  Title: String;
begin
//  Width := 830;

  if DM.EditEnable then
  begin
    MonthGrid.Options := MonthGrid.Options + [TDBGridOption.dgEditing] - [TDBGridOption.dgRowSelect];
    ExpGrid.Options := ExpGrid.Options + [TDBGridOption.dgEditing] - [TDBGridOption.dgRowSelect];
  end;

  // 標題顯示設定的值
  DM.BuildExpCache;
  for I := 0 to ExpGrid.Columns.Count - 1 do
  begin
    Col := ExpGrid.Columns.Items[I];
    Title := DM.DefaultExpNameList.Values[Col.FieldName];
    if (not (Title = '')) then
    begin
      Col.Title.Caption := Title;
    end;
  end;
end;

procedure TMonthRepForm.ExpDataSetGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  DM.DataSetGetText(Sender, Text, DisplayText);
end;

procedure TMonthRepForm.ExpDSDataChange(Sender: TObject; Field: TField);
begin
//  DM.ImmediateUpdate(Field);
end;

procedure TMonthRepForm.ExpGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
//  ExpGrid.Columns.Items[DataCol].Title.Caption := DM.DefaultExpNameList.Values[Column.FieldName];
end;

procedure TMonthRepForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  iniFile: TIniFile;
begin
  iniFile := TIniFile.Create(DM.AppPath + 'Config.ini');
  iniFile.WriteInteger('MonthRepForm', 'FormTop', MonthRepForm.Top);
  iniFile.WriteInteger('MonthRepForm', 'FormLeft', MonthRepForm.Left);
  iniFile.WriteInteger('MonthRepForm', 'FormWidth', MonthRepForm.Width);
  iniFile.WriteInteger('MonthRepForm', 'FormHeight', MonthRepForm.Height);
  iniFile.WriteString('MonthRepForm', 'BusNumber', BusLookup.Text);
  iniFile.WriteString('MonthRepForm', 'YearEdit', YearEdit.Text);
  iniFile.WriteInteger('MonthRepForm', 'MonthBox', MonthBox.ItemIndex);
  iniFile.Free;

//  if MonthDataSet.State in [dsEdit, dsInsert] then
  if MonthDataSet.Active then
  begin
    MonthDataSet.ApplyUpdates(0);
    MonthDataSet.Close;
  end;
  MonthRepForm := nil;
  Action := caFree;
end;



procedure TMonthRepForm.MonthDataSetCalcFields(DataSet: TDataSet);
begin
//  DataSet.Edit;
  DataSet.FieldValues['ShortTravelDate'] := FormatDateTime('mm/dd', DataSet.FieldByName('TravelDate').AsDateTime);
  if (not DataSet.FieldByName('FirstIncomeDate').IsNull) then
  begin
    DataSet.FieldValues['ShortFirstIncomeDate'] := FormatDateTime('mm/dd', DataSet.FieldByName('FirstIncomeDate').AsDateTime);
  end;
  if (not DataSet.FieldByName('SecondIncomeDate').IsNull) then
  begin
    DataSet.FieldValues['ShortSecondIncomeDate'] := FormatDateTime('mm/dd', DataSet.FieldByName('SecondIncomeDate').AsDateTime);
  end;
  DataSet.FieldValues['TotalIncome'] := DataSet.FieldByName('FirstIncome').AsInteger + DataSet.FieldByName('SecondIncome').AsInteger;
  DataSet.FieldValues['NoIncome'] := DataSet.FieldByName('Turnover').AsInteger - DataSet.FieldByName('FirstIncome').AsInteger - DataSet.FieldByName('SecondIncome').AsInteger;
end;

procedure TMonthRepForm.MonthDataSetGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  DM.DataSetGetText(Sender, Text, DisplayText);
end;

procedure TMonthRepForm.MonthDSDataChange(Sender: TObject; Field: TField);
begin
//  DM.ImmediateUpdate(Field);
end;

procedure TMonthRepForm.OKBtnClick(Sender: TObject);
var
  Year: Integer;
  SQL: String;
begin
  if MonthDataSet.Active then
  begin
    MonthDataSet.ApplyUpdates(0);
    MonthDataSet.Close;
  end;

  try
    Year := StrToInt(YearEdit.Text);
  except
    MessageDlg('年份錯誤！', mtError, [mbOK], 0);
    exit;
  end;

  MonthDataSet.DataSet.ParamByName('BusNum').AsWideString := BusLookup.Text;
  MonthDataSet.DataSet.ParamByName('MyYears').AsInteger := StrToInt(YearEdit.Text);
  MonthDataSet.DataSet.ParamByName('MyMonths').AsInteger := StrToInt(MonthBox.Text);
  if MonthDataSet.Active then
    MonthDataSet.Refresh
  else
    MonthDataSet.Open;

  if not ExpForm.DetectRec(Year, StrToInt(MonthBox.Text)) then
    ExpForm.InsertNew(Year, StrToInt(MonthBox.Text));

  ExpDataSet.DataSet.ParamByName('BusNum').AsWideString := BusLookup.Text;
  ExpDataSet.DataSet.ParamByName('myYear').AsInteger := StrToInt(YearEdit.Text);
  ExpDataSet.DataSet.ParamByName('myMonth').AsInteger := StrToInt(MonthBox.Text);
  if ExpDataSet.Active then
    ExpDataSet.Refresh
  else
    ExpDataSet.Open;
end;



procedure TMonthRepForm.FormCreate(Sender: TObject);
var
  iniFile: TIniFile;
begin
  iniFile := TIniFile.Create(DM.AppPath + 'Config.ini');
  MonthRepForm.Top := iniFile.ReadInteger('MonthRepForm', 'FormTop', 0);
  MonthRepForm.Left := iniFile.ReadInteger('MonthRepForm', 'FormLeft', 0);
  MonthRepForm.Width := iniFile.ReadInteger('MonthRepForm', 'FormWidth', 500);
  MonthRepForm.Height := iniFile.ReadInteger('MonthRepForm', 'FormHeight', 500);
  BusLookup.Text := iniFile.ReadString('MonthRepForm', 'BusNumber', '');
  YearEdit.Text := iniFile.ReadString('MonthRepForm', 'YearEdit', IntToStr(YearOf(Now)));
  MonthBox.ItemIndex := iniFile.ReadInteger('MonthRepForm', 'MonthBox', MonthOf(Now)-1);
  iniFile.Free;
end;




procedure TMonthRepForm.MonthRepBtnClick(Sender: TObject);
var
  sTemp: String;
  sTemp2: String;
  Income, Outcome: Integer;
  ExpList: TStringList;
  I: Integer;
begin
  RvProject1.ProjectFile := DM.AppPath + 'Month.rav';

  sTemp := '日期:' + YearEdit.Text + '年' + MonthBox.Text + '月';
  sTemp := sTemp + '車號:' + BusLookup.LookupTable.FieldByName('BusNumber').AsWideString;
  sTemp := sTemp + '　駕駛:' + BusLookup.LookupTable.FieldByName('Driver').AsWideString;

//  if not Assigned(TForm(MonthRep)) then
//    Application.CreateForm(TMonthRep, MonthRep);
//
//  MonthRep.preview(sTemp, sTemp2);
  DM.BuildExpCache;
  ExpList := DM.DefaultExpNameList;
  for I := 0 to ExpList.Count - 1 do
  begin
    if (LeftStr(ExpList.ValueFromIndex[I], 2) = '保留') then
    begin
      RvProject1.SetParam(ExpList.Names[I] + 'Title', '');
    end
    else
    begin
      RvProject1.SetParam(ExpList.Names[I] + 'Title', ExpList.ValueFromIndex[I]);
    end;
  end;
  RvProject1.SetParam('Title',sTemp);

  // 計算支出
  DM.ExecuteQuery('Select SUM(Turnover) AS SumTurnover, SUM(OilExp) AS SumOilExp, SUM(Tips) AS SUMTips From Travel Where BusNumber=''' + MonthDataSet.DataSet.ParamByName('BusNum').AsWideString + ''' and Year(TravelDate) = ' + MonthDataSet.DataSet.ParamByName('MyYears').AsWideString + ' and Month(TravelDate)=' + MonthDataSet.DataSet.ParamByName('MyMonths').AsWideString);
  Outcome := DM.QueryDataSet.FieldByName('SumOilExp').AsInteger + DM.QueryDataSet.FieldByName('SumTips').AsInteger;
  Outcome := OutCome + ExpDataSet.FieldByName('MemberFee').AsInteger;
  Outcome := OutCome + ExpDataSet.FieldByName('Tax').AsInteger;
  Outcome := OutCome + ExpDataSet.FieldByName('DriverSalary').AsInteger;
  Outcome := OutCome + ExpDataSet.FieldByName('ServiceSalary').AsInteger;
  Outcome := OutCome + ExpDataSet.FieldByName('UnionFee').AsInteger;
  Outcome := OutCome + ExpDataSet.FieldByName('LicenceTax').AsInteger;
  Outcome := OutCome + ExpDataSet.FieldByName('ParkFee').AsInteger;
  Outcome := OutCome + ExpDataSet.FieldByName('Toll').AsInteger;
  Outcome := OutCome + ExpDataSet.FieldByName('FixFee').AsInteger;
  Outcome := OutCome + ExpDataSet.FieldByName('Incidental').AsInteger;
  Outcome := OutCome + ExpDataSet.FieldByName('Cellphone').AsInteger;
  Outcome := OutCome + ExpDataSet.FieldByName('Insurance').AsInteger;
  Outcome := OutCome + ExpDataSet.FieldByName('Reserve').AsInteger;
  Outcome := OutCome + ExpDataSet.FieldByName('Reserve1').AsInteger;
  Outcome := OutCome + ExpDataSet.FieldByName('Reserve2').AsInteger;
  Outcome := OutCome + ExpDataSet.FieldByName('Reserve3').AsInteger;
  Outcome := OutCome + ExpDataSet.FieldByName('Reserve5').AsInteger;
  Outcome := OutCome + ExpDataSet.FieldByName('Reserve6').AsInteger;
  Outcome := OutCome + ExpDataSet.FieldByName('Reserve7').AsInteger;
  RvProject1.SetParam('OutcomeTotal',IntToStr(Outcome));

  // 計算收入
  Income := DM.QueryDataSet.FieldByName('SumTurnover').AsInteger;
  Income := Income + ExpDataSet.FieldByName('Reserve4').AsInteger;
  RvProject1.SetParam('IncomeTotal',IntToStr(Income));
  RvProject1.SetParam('Net',IntToStr(Income-Outcome));

  RvProject1.Execute;
end;



procedure TMonthRepForm.PayRepBtnClick(Sender: TObject);
var
  Month: String;
  Customer: String;
begin
  RvProject2.ProjectFile := DM.AppPath + 'Pay.rav';
  RvProject2.SetParam('Month', MonthDataSet.DataSet.ParamByName('MyMonths').AsWideString);
  RvProject2.SetParam('Title', '客戶名稱：' + BusLookup.Text);
  RvProject2.Execute;
//  Month := FormatDateTime('m', MonthDataSet.FieldByName('TravelDate').AsDateTime);
//  Customer := BusLookup.Text;
//
//  if not Assigned(TForm(MonthPayRep)) then
//    Application.CreateForm(TMonthPayRep, MonthPayRep);
//
//  MonthPayRep.Preview(Month, Customer);
end;



end.

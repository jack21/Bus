unit frmCustomerMonthRep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, wwdblook, ExtCtrls, DB, ADODB,
  Wwdbigrd, Wwdbgrid, iniFiles, DateUtils, RpCon, RpConDS, RpBase,
  RpSystem, RpDefine, RpRave, ComCtrls, Mask, AdvEdit, DBAdvEd, DBClient,
  SimpleDS;

type
  TCustomerMonthRepForm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    BusLookup: TwwDBLookupCombo;
    Panel3: TPanel;
    MonthDS: TDataSource;
    CustomDS: TDataSource;
    CountLabel: TLabel;
    RvProject: TRvProject;
    RvSystem: TRvSystem;
    MonthConn: TRvDataSetConnection;
    MonthGroupConn: TRvDataSetConnection;
    GroupBox1: TGroupBox;
    YearEdit: TEdit;
    Label3: TLabel;
    MonthBox: TComboBox;
    Label4: TLabel;
    StartTime: TDateTimePicker;
    EndTime: TDateTimePicker;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Panel2: TPanel;
    OKBtn: TButton;
    CustomDataSet: TSimpleDataSet;
    CustomDataSetCustom: TWideStringField;
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
    MonthDataSetUseTime: TStringField;
    MonthDataSetIncomeTotal: TIntegerField;
    MonthDataSetNoIncome: TIntegerField;
    MonthGrid: TDBGrid;
    GroupBtn: TButton;
    CustomBtn: TButton;
    MonthGroupDataSet: TSimpleDataSet;
    RadioButton3: TRadioButton;
    GroupLookup: TwwDBLookupCombo;
    GroupDataSet: TSimpleDataSet;
    GroupDataSetGroups: TWideStringField;
    MonthGroupDataSetTravelId: TIntegerField;
    MonthGroupDataSetBusNumber: TWideStringField;
    MonthGroupDataSetTravelDate: TDateField;
    MonthGroupDataSetCustom: TWideStringField;
    MonthGroupDataSetTravel: TWideStringField;
    MonthGroupDataSetGroups: TWideStringField;
    MonthGroupDataSetTurnover: TIntegerField;
    MonthGroupDataSetTurnover2: TIntegerField;
    MonthGroupDataSetTravelExp: TIntegerField;
    MonthGroupDataSetOilExp: TIntegerField;
    MonthGroupDataSetFirstIncome: TIntegerField;
    MonthGroupDataSetFirstIncomeDate: TDateField;
    MonthGroupDataSetSecondIncome: TIntegerField;
    MonthGroupDataSetSecondIncomeDate: TDateField;
    MonthGroupDataSetTips: TIntegerField;
    MonthGroupDataSetTips2: TIntegerField;
    MonthGroupDataSetNote: TWideStringField;
    MonthGroupDataSetNote2: TWideStringField;
    MonthGroupDataSetStartTime: TWideStringField;
    MonthGroupDataSetEndTime: TWideStringField;
    MonthGroupDataSetShortTravelDate: TStringField;
    MonthGroupDataSetUseTime: TStringField;
    MonthGroupDataSetIncomeTotal: TIntegerField;
    MonthGroupDataSetNoIncome: TIntegerField;
    GroupDataSetCount: TFMTBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BusLookupBeforeDropDown(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure CustomBtnClick(Sender: TObject);
    procedure BusLookupKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure GroupBtnClick(Sender: TObject);
    procedure MonthDataSetCalcFields(DataSet: TDataSet);
    procedure MonthDataSetGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure MonthGroupDataSetCalcFields(DataSet: TDataSet);
    procedure GroupLookupBeforeDropDown(Sender: TObject);
    procedure MonthDSDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    procedure SetupDataSetField(DataSet: TDataSet);
    function GetReportSubTitle(): String;
  public
    { Public declarations }
  end;

var
  CustomerMonthRepForm: TCustomerMonthRepForm;

implementation

uses frmDM;

{$R *.dfm}

procedure TCustomerMonthRepForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  iniFile: TIniFile;
begin
  if (MonthDataSet.Active) then
  begin
    MonthDataSet.ApplyUpdates(0);
    MonthDataSet.Close;
  end;

  iniFile := TIniFile.Create(DM.AppPath + 'Config.ini');
  iniFile.WriteInteger('CustomerMonthRepForm', 'FormTop', CustomerMonthRepForm.Top);
  iniFile.WriteInteger('CustomerMonthRepForm', 'FormLeft', CustomerMonthRepForm.Left);
  iniFile.WriteInteger('CustomerMonthRepForm', 'FormHeight', CustomerMonthRepForm.Height);
  iniFile.WriteInteger('CustomerMonthRepForm', 'FormWidth', CustomerMonthRepForm.Width);
  iniFile.Free;

  CustomerMonthRepForm := nil;
  Action := caFree;
end;

procedure TCustomerMonthRepForm.FormCreate(Sender: TObject);
var
  iniFile: TIniFile;
begin
  iniFile := TIniFile.Create(DM.AppPath + 'Config.ini');
  CustomerMonthRepForm.Top := iniFile.ReadInteger('CustomerMonthRepForm', 'FormTop', 0);
  CustomerMonthRepForm.Left := iniFile.ReadInteger('CustomerMonthRepForm', 'FormLeft', 0);
  CustomerMonthRepForm.Height := iniFile.ReadInteger('CustomerMonthRepForm', 'FormHeight', 300);
  CustomerMonthRepForm.Width := iniFile.ReadInteger('CustomerMonthRepForm', 'FormWidth', 600);
  iniFile.Free;

  StartTime.Date := StartOfTheMonth(Today());
  EndTime.Date := EndOfTheMonth(Today());
end;

procedure TCustomerMonthRepForm.BusLookupBeforeDropDown(Sender: TObject);
begin
  BusLookup.LookupTable.Open;
end;

procedure TCustomerMonthRepForm.OKBtnClick(Sender: TObject);
begin
  {
  MonthDataSet.Close;
  MonthDataSet.Parameters.ParamValues['Customer'] := BusLookup.Text;
  MonthDataSet.Parameters.ParamValues['Years'] := YearEdit.Text;
  MonthDataSet.Parameters.ParamValues['Months'] := MonthBox.Text;
  MonthDataSet.Open;
  }

  if (MonthDataSet.Active) then
  begin
    MonthDataSet.ApplyUpdates(0);
  end;

  if RadioButton1.Checked then
    MonthDataSet.DataSet.CommandText := 'SELECT * FROM Travel WHERE Custom = ''' + BusLookup.Text + ''' AND YEAR(TravelDate) = ''' + YearEdit.Text + ''' AND MONTH(TravelDate) = ''' + MonthBox.Text + ''' ORDER BY TravelDate'
  else if RadioButton2.Checked then
    MonthDataSet.DataSet.CommandText := 'SELECT * FROM Travel WHERE Custom = ''' + BusLookup.Text + ''' AND DATE(TravelDate) >= ''' + FormatDateTime('yyyy-mm-dd', StartTime.Date) + ''' AND DATE(TravelDate) <= ''' + FormatDateTime('yyyy-mm-dd', EndTime.Date) + ''' ORDER BY TravelDate'
  else if RadioButton3.Checked then
    MonthDataSet.DataSet.CommandText := 'SELECT * FROM Travel WHERE Custom = ''' + BusLookup.Text + ''' AND Groups = ''' + GroupLookup.Text + '''';

  if (MonthDataSet.Active) then
    MonthDataSet.Refresh
  else
    MonthDataSet.Open;
    
  CountLabel.Caption := '共有 ' + IntToStr(MonthDataSet.RecordCount) + ' 筆行程';
end;

procedure TCustomerMonthRepForm.MonthDataSetCalcFields(DataSet: TDataSet);
begin
  SetupDataSetField(DataSet);
end;

procedure TCustomerMonthRepForm.MonthDataSetGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  DM.DataSetGetText(Sender, Text, DisplayText);
end;

procedure TCustomerMonthRepForm.MonthDSDataChange(Sender: TObject;
  Field: TField);
begin
  if (not(Field = nil)) then
    if (Field.FieldName = 'Turnover2') then
      if Field.DataSet.FieldByName('Turnover').AsInteger = 0 then
        begin
          Field.DataSet.Edit;
          Field.DataSet.FieldByName('Turnover').AsInteger := Field.AsInteger;
          DM.ImmediateUpdate(Field);
        end;
end;

procedure TCustomerMonthRepForm.SetupDataSetField(DataSet: TDataSet);
begin
  DataSet.FieldValues['ShortTravelDate'] := FormatDateTime('mm/dd', DataSet.FieldByName('TravelDate').AsDateTime);
  DataSet.FieldValues['IncomeTotal'] := DataSet.FieldByName('FirstIncome').AsInteger + DataSet.FieldByName('SecondIncome').AsInteger;
  DataSet.FieldValues['NoIncome'] := DataSet.FieldByName('Turnover2').AsInteger - DataSet.FieldByName('FirstIncome').AsInteger - DataSet.FieldByName('SecondIncome').AsInteger;
  DataSet.FieldValues['UseTime'] := DataSet.FieldByName('StartTime').AsWideString + '～' + DataSet.FieldByName('EndTime').AsWideString;
end;

procedure TCustomerMonthRepForm.MonthGroupDataSetCalcFields(DataSet: TDataSet);
begin
  SetupDataSetField(DataSet);
end;

procedure TCustomerMonthRepForm.CustomBtnClick(Sender: TObject);
begin
  RvProject.Close;
  RvProject.ProjectFile := DM.AppPath + 'CustomerMonth.rav';
  RvProject.Open;
  RvProject.SetParam('Customer', '客戶名稱：' + BusLookup.Text);
  RvProject.SetParam('Date', GetReportSubTitle());
  RvProject.Execute;
end;

procedure TCustomerMonthRepForm.BusLookupKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 40 then
    (Sender As TwwDBLookupCombo).DropDown;
end;

procedure TCustomerMonthRepForm.FormShow(Sender: TObject);
begin
//  Width := 861;
  YearEdit.Text := IntToStr(YearOf(Now));
  MonthBox.ItemIndex := MonthOf(Now)-1;

  if DM.EditEnable then
  begin
    MonthGrid.Options := MonthGrid.Options + [TDBGridOption.dgEditing] - [TDBGridOption.dgRowSelect];
  end
  else
  begin
    MonthGrid.Options := MonthGrid.Options - [TDBGridOption.dgEditing] + [TDBGridOption.dgRowSelect];
  end;
end;


procedure TCustomerMonthRepForm.GroupBtnClick(Sender: TObject);
var
  SQL: WideString;
begin
  MonthGroupDataSet.Close;
  SQL := 'SELECT * FROM Travel WHERE Groups in (SELECT distinct Groups FROM Travel WHERE ';
  if RadioButton1.Checked then
    SQL := SQL + 'YEAR(TravelDate) = ''' + YearEdit.Text + ''' AND MONTH(TravelDate) = ''' + MonthBox.Text + ''''
  else if RadioButton2.Checked then
    SQL := SQL + 'DATE(TravelDate) >= ''' + FormatDateTime('yyyy-mm-dd', StartTime.Date) + ''' AND DATE(TravelDate) <= ''' + FormatDateTime('yyyy-mm-dd', EndTime.Date) + ''''
  else if RadioButton3.Checked then
    SQL := SQL + 'Groups = ''' + GroupLookup.Text + '''';
  MonthGroupDataSet.DataSet.CommandText := SQL + ') AND Custom=''' + BusLookup.Text + ''' ORDER BY Groups, TravelDate';
  MonthGroupDataSet.Open;

  RvProject.Close;
  RvProject.ProjectFile := DM.AppPath + 'MonthGroup.rav';
  RvProject.Open;
  RvProject.SetParam('Customer', '客戶名稱：' + BusLookup.Text);
  RvProject.SetParam('Date', GetReportSubTitle());
  RvProject.Execute;
end;

procedure TCustomerMonthRepForm.GroupLookupBeforeDropDown(Sender: TObject);
begin
  if (not CustomDataSet.Active) then CustomDataSet.Open;

  GroupDataSet.Open;
  GroupDataSet.DataSet.Params.ParamByName('Customs').AsString := BusLookup.Text;
  GroupDataSet.Refresh
end;

function TCustomerMonthRepForm.GetReportSubTitle(): String;
begin
  if RadioButton1.Checked then
    Result := (YearEdit.Text + '年' + MonthBox.Text + '月')
  else if RadioButton2.Checked then
    Result := (FormatDateTime('yyyy/mm/dd', StartTime.Date) + '～' + FormatDateTime('yyyy/mm/dd', EndTime.Date))
  else if RadioButton3.Checked then
    Result := ('團號:' + GroupLookup.Text);
end;

end.

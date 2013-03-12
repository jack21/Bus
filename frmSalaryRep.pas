unit frmSalaryRep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons,
  wwdblook, ExtCtrls, DateUtils, iniFiles, RpCon, RpConDS, RpBase,
  RpSystem, RpDefine, RpRave, DBClient, SimpleDS, DBGrids, FMTBcd, SqlExpr,
  Provider;

type
  TSalaryRepForm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    BusLookup: TwwDBLookupCombo;
    YearEdit: TEdit;
    MonthBox: TComboBox;
    Tips2DS: TDataSource;
    Panel3: TPanel;
    RvProject: TRvProject;
    RvSystem: TRvSystem;
    Tips2Conn: TRvDataSetConnection;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    SalaryMiscConn: TRvDataSetConnection;
    SalaryMiscDS: TDataSource;
    OKBtn: TButton;
    Tips2DataSet: TSimpleDataSet;
    Tips2DataSetTravelId: TIntegerField;
    Tips2DataSetBusNumber: TWideStringField;
    Tips2DataSetTravelDate: TDateField;
    Tips2DataSetCustom: TWideStringField;
    Tips2DataSetTravel: TWideStringField;
    Tips2DataSetGroups: TWideStringField;
    Tips2DataSetTurnover: TIntegerField;
    Tips2DataSetTurnover2: TIntegerField;
    Tips2DataSetTravelExp: TIntegerField;
    Tips2DataSetOilExp: TIntegerField;
    Tips2DataSetFirstIncome: TIntegerField;
    Tips2DataSetFirstIncomeDate: TDateField;
    Tips2DataSetSecondIncome: TIntegerField;
    Tips2DataSetSecondIncomeDate: TDateField;
    Tips2DataSetTips: TIntegerField;
    Tips2DataSetTips2: TIntegerField;
    Tips2DataSetNote: TWideStringField;
    Tips2DataSetNote2: TWideStringField;
    Tips2DataSetStartTime: TWideStringField;
    Tips2DataSetEndTime: TWideStringField;
    Tips2DataSetShortTravelDate: TStringField;
    Tips2Grid: TDBGrid;
    InsertItemBtn: TButton;
    DelItemBtn: TButton;
    SalaryMiscGrid: TDBGrid;
    SalaryMiscDataSet2: TSimpleDataSet;
    ReportBtn: TButton;
    SalaryMiscDataSet2Item: TWideStringField;
    SalaryMiscDataSet2Cost: TIntegerField;
    SalaryMiscDataSet2SalaryMiscId: TIntegerField;
    SalaryMiscDataSet2Date: TDateField;
    SalaryMiscDataSet2BusNumber: TWideStringField;
    Splitter1: TSplitter;
    SalaryMiscDataSet: TClientDataSet;
    SalaryMiscProvider: TDataSetProvider;
    SalaryMiscQuery: TSQLQuery;
    SalaryMiscDataSetSalaryMiscId: TIntegerField;
    SalaryMiscDataSetDate: TDateField;
    SalaryMiscDataSetCost: TIntegerField;
    SalaryMiscDataSetBusNumber: TWideStringField;
    SalaryMiscDataSetItem: TWideStringField;
    SalaryMiscQuerySalaryMiscId: TIntegerField;
    SalaryMiscQueryDate: TDateField;
    SalaryMiscQueryCost: TIntegerField;
    SalaryMiscQueryBusNumber: TWideStringField;
    SalaryMiscQueryItem: TWideStringField;
    DefaultSalaryMiscDataSet: TSimpleDataSet;
    procedure Tips2QueryCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure ReportBtnClick(Sender: TObject);
    procedure InsertItemBtnClick(Sender: TObject);
    procedure DeleteItemBtnClick(Sender: TObject);
    procedure Tips2DataSetCalcFields(DataSet: TDataSet);
    procedure Tips2DataSetGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure Tips2DSDataChange(Sender: TObject; Field: TField);
    procedure SalaryMiscDSDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    SalaryMiscId: Integer;
    PreventRecursive: boolean;
    procedure Append(BusNumber, Year, Month, Item: String; Money: integer);
  public
    { Public declarations }
  end;

var
  SalaryRepForm: TSalaryRepForm;

implementation

uses frmDM;

{$R *.dfm}

procedure TSalaryRepForm.Tips2DataSetCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldValues['ShortTravelDate'] := FormatDateTime('mm/dd', DataSet.FieldByName('TravelDate').AsDateTime);
end;

procedure TSalaryRepForm.Tips2DataSetGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  DM.DataSetGetText(Sender, Text, DisplayText);
end;

procedure TSalaryRepForm.Tips2DSDataChange(Sender: TObject; Field: TField);
begin
  DM.ImmediateUpdate(Field);
end;

procedure TSalaryRepForm.Tips2QueryCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldValues['ShortTravelDate'] := FormatDateTime('mm/dd', DataSet.FieldByName('TravelDate').AsDateTime);
end;

procedure TSalaryRepForm.FormCreate(Sender: TObject);
var
  iniFile: TIniFile;
begin
  iniFile := TIniFile.Create(DM.AppPath + 'Config.ini');
  SalaryRepForm.Top := iniFile.ReadInteger('SalaryRepForm', 'FormTop', 0);
  SalaryRepForm.Left := iniFile.ReadInteger('SalaryRepForm', 'FormLeft', 0);
  SalaryRepForm.Height := iniFile.ReadInteger('SalaryRepForm', 'FormHeight', 500);
  SalaryRepForm.Width := iniFile.ReadInteger('SalaryRepForm', 'FormWidth', 520);
  BusLookup.Text := iniFile.ReadString('SalaryRepForm', 'BusNumber', '');
  YearEdit.Text := iniFile.ReadString('SalaryRepForm', 'Year', IntToStr(YearOf(Now)));
  MonthBox.ItemIndex := iniFile.ReadInteger('SalaryRepForm', 'Month', MonthOf(Now) - 1);
  iniFile.Free;

//  // 初始化欄位
//  YearEdit.Text := IntToStr(YearOf(Now));
//  MonthBox.ItemIndex := MonthOf(Now) - 1;
end;

procedure TSalaryRepForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  iniFile: TIniFile;
begin
  iniFile := TIniFile.Create(DM.AppPath + 'Config.ini');
  iniFile.WriteInteger('SalaryRepForm', 'FormTop', SalaryRepForm.Top);
  iniFile.WriteInteger('SalaryRepForm', 'FormLeft', SalaryRepForm.Left);
  iniFile.WriteInteger('SalaryRepForm', 'FormHeight', SalaryRepForm.Height);
  iniFile.WriteInteger('SalaryRepForm', 'FormWidth', SalaryRepForm.Width);
  iniFile.WriteString('SalaryRepForm', 'BusNumber', BusLookup.Text);
  iniFile.WriteString('SalaryRepForm', 'Year', YearEdit.Text);
  iniFile.WriteInteger('SalaryRepForm', 'Month', MonthBox.ItemIndex);
  iniFile.Free;

  if (Tips2DataSet.Active) then
  begin
    Tips2DataSet.ApplyUpdates(0);
  end;

  if (SalaryMiscDataSet.Active) then
  begin
    SalaryMiscDataSet.ApplyUpdates(0);
  end;

  SalaryRepForm := nil;
  Action := caFree;
end;

procedure TSalaryRepForm.FormShow(Sender: TObject);
begin
  if DM.EditEnable then
  begin
    Tips2Grid.Options := Tips2Grid.Options + [TDBGridOption.dgEditing] - [TDBGridOption.dgRowSelect];
    SalaryMiscGrid.Options := SalaryMiscGrid.Options + [TDBGridOption.dgEditing] - [TDBGridOption.dgRowSelect];
  end
  else
  begin
    Tips2Grid.Options := Tips2Grid.Options - [TDBGridOption.dgEditing] + [TDBGridOption.dgRowSelect];
    SalaryMiscGrid.Options := SalaryMiscGrid.Options - [TDBGridOption.dgEditing] + [TDBGridOption.dgRowSelect];
  end;
end;

procedure TSalaryRepForm.OKBtnClick(Sender: TObject);
var
  BusNumber: String;
  Year: Integer;
  Month: Integer;
  Item: String;
  IsFound: boolean;
  Cost: Integer;
begin
  // 參數
  BusNumber := BusLookup.Text;
  Year := StrToInt(YearEdit.Text);
  Month := MonthBox.ItemIndex+1;

  //小費
  Tips2DataSet.Close;
  Tips2DataSet.DataSet.ParamByName('BusNum').AsWideString := BusLookup.Text;
  Tips2DataSet.DataSet.ParamByName('Years').AsInteger := Year;
  Tips2DataSet.DataSet.ParamByName('Months').AsInteger := Month;
  Tips2DataSet.Open;

  // 薪水雜項
  SalaryMiscDataSet.Close;
//  SalaryMiscDataSet.DataSet.ParamByName('BusNumber').AsWideString := BusNumber;
//  SalaryMiscDataSet.DataSet.ParamByName('Year').AsWideString := Year;
//  SalaryMiscDataSet.DataSet.ParamByName('Month').AsWideString := Month;
  SalaryMiscQuery.Close;
  SalaryMiscQuery.ParamByName('BusNumber').AsWideString := BusNumber;
  SalaryMiscQuery.ParamByName('Year').AsInteger := Year;
  SalaryMiscQuery.ParamByName('Month').AsInteger := Month;
  SalaryMiscQuery.Open;
  SalaryMiscDataSet.Open;

  //如果沒有雜項記錄，加入底薪、薪水、行動、洗車、交服費、小費
  DefaultSalaryMiscDataset.Close;
  DefaultSalaryMiscDataset.Open;
  DefaultSalaryMiscDataset.First;
  while (Not DefaultSalaryMiscDataset.Eof) do
  begin
    Item := DefaultSalaryMiscDataset.FieldByName('Item').AsWideString;
    IsFound := SalaryMiscDataset.Locate('Item', Item, []);
    if (not IsFound) then
    begin
      Cost := DefaultSalaryMiscDataset.FieldByName('Cost').AsInteger;
      Append(BusNumber, IntToStr(Year), IntToStr(Month), Item, Cost);
    end;
    DefaultSalaryMiscDataset.Next;
  end;
//  SalaryMiscDataSet.ApplyUpdates(0);
//  if SalaryMiscDataSet.RecordCount = 0 then
//  begin
//    Append(BusNumber, Year, Month, '底薪', 8000);
//    Append(BusNumber, Year, Month, '車資抽成', 0);
//    Append(BusNumber, Year, Month, '行動電話', 0);
//    Append(BusNumber, Year, Month, '洗車', 0);
//    Append(BusNumber, Year, Month, '交服費', 0);
//  end;

  SalaryMiscDataSet.Refresh;
end;

procedure TSalaryRepForm.Append(BusNumber, Year, Month, Item: String;
  Money: integer);
begin
  SalaryMiscDataSet.Append;
//  Dec(SalaryMiscId);
  SalaryMiscDataSet.FieldValues['SalaryMiscId'] := 0; //SalaryMiscId;
  SalaryMiscDataSet.FieldValues['Date'] := Year + '/' + Month + '/1';
  SalaryMiscDataSet.FieldValues['BusNumber'] := BusNumber;
  SalaryMiscDataSet.FieldValues['Item'] := Item;
  SalaryMiscDataSet.FieldValues['Cost'] := Money;
  SalaryMiscDataSet.ApplyUpdates(0);
  SalaryMiscDataSet.Refresh;
end;



procedure TSalaryRepForm.ReportBtnClick(Sender: TObject);
begin
  Tips2DataSet.Filter := 'Tips2 <> 0';
  Tips2DataSet.Filtered := true;
                                       

  RvProject.Close;
  RvProject.ProjectFile := DM.AppPath + 'Salary.rav';
  RvProject.SetParam('BusNumber', '車號：' + Tips2DataSet.DataSet.ParamByName('BusNum').AsWideString);
  RvProject.SetParam('Date', Tips2DataSet.DataSet.ParamByName('Years').AsWideString + '年' + Tips2DataSet.DataSet.ParamByName('Months').AsWideString + '月');
  RvProject.Execute;

  Tips2DataSet.Filtered := false;
end;

procedure TSalaryRepForm.SalaryMiscDSDataChange(Sender: TObject; Field: TField);
begin
  DM.ImmediateUpdate(Field);
end;

procedure TSalaryRepForm.InsertItemBtnClick(Sender: TObject);
begin
  Append(BusLookup.Text, YearEdit.Text, IntToStr(MonthBox.ItemIndex+1), '', 0);
//  SalaryMiscDataSet.ApplyUpdates(0);
  SalaryMiscDataSet.Refresh;
  SalaryMiscDataSet.Last;
end;

procedure TSalaryRepForm.DeleteItemBtnClick(Sender: TObject);
begin
  if MessageDlg('是否刪除此筆資料？', mtInformation, [mbYes,mbNo], 0) = mrYes then
  begin
    SalaryMiscDataSet.Delete;
    SalaryMiscDataSet.ApplyUpdates(0);
  end;
end;

end.

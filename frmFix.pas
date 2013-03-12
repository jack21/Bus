unit frmFix;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, wwSpeedButton, wwDBNavigator,
  wwclearpanel, ExtCtrls, StdCtrls, Buttons, wwdblook, DB, ADODB, Mask,
  DBCtrls, ComCtrls, wwdbdatetimepicker, iniFiles, DateUtils, RpRave,
  RpBase, RpSystem, RpDefine, RpCon, RpConDS, DBClient, SimpleDS, DBGrids;

type
  TFixForm = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    BusLookup: TwwDBLookupCombo;
    FixDS: TDataSource;
    YearEdit: TEdit;
    Label5: TLabel;
    FactoryEdit: TDBEdit;
    Label6: TLabel;
    ItemEdit: TDBEdit;
    Label7: TLabel;
    MoneyEdit: TDBEdit;
    Label8: TLabel;
    NoteEdit: TDBEdit;
    Label4: TLabel;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    FixConn: TRvDataSetConnection;
    RvSystem1: TRvSystem;
    RvProject1: TRvProject;
    Panel4: TPanel;
    FixMasterDS: TDataSource;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    Label10: TLabel;
    DBEdit2: TDBEdit;
    Label11: TLabel;
    DBEdit3: TDBEdit;
    Label12: TLabel;
    DBEdit4: TDBEdit;
    Label13: TLabel;
    DBEdit5: TDBEdit;
    Label14: TLabel;
    DBEdit6: TDBEdit;
    Label15: TLabel;
    DBEdit7: TDBEdit;
    Label16: TLabel;
    DBEdit8: TDBEdit;
    Label17: TLabel;
    DBEdit9: TDBEdit;
    Label18: TLabel;
    DBEdit10: TDBEdit;
    Label19: TLabel;
    DBEdit11: TDBEdit;
    Label20: TLabel;
    DBEdit12: TDBEdit;
    Label21: TLabel;
    DBEdit13: TDBEdit;
    Label22: TLabel;
    DBEdit14: TDBEdit;
    Label23: TLabel;
    DBEdit15: TDBEdit;
    Label24: TLabel;
    DBEdit16: TDBEdit;
    Label25: TLabel;
    DBEdit17: TDBEdit;
    Label26: TLabel;
    DBEdit18: TDBEdit;
    FixMasterConn: TRvDataSetConnection;
    Label27: TLabel;
    DBEdit19: TDBEdit;
    Panel5: TPanel;
    Label28: TLabel;
    DBEdit20: TDBEdit;
    OKBtn: TButton;
    InsertBtn: TButton;
    DelBtn: TButton;
    PostBtn: TButton;
    PrintBtn: TButton;
    FixDataSet: TSimpleDataSet;
    FixDataSetFixId: TIntegerField;
    FixDataSetMDate: TDateField;
    FixDataSetBusNum: TWideStringField;
    FixDataSetMileage: TWideStringField;
    FixDataSetMoney: TIntegerField;
    FixDataSetItem: TWideStringField;
    FixDataSetVisa: TWideStringField;
    FixDataSetNote: TWideStringField;
    FixDataSetFactory: TWideStringField;
    FixDataSetMDate_Show: TStringField;
    FixMasterDataSet: TSimpleDataSet;
    FixMasterDataSetYear: TWideStringField;
    FixMasterDataSetBusNum: TWideStringField;
    FixMasterDataSetOwnerName: TWideStringField;
    FixMasterDataSetOwnerAddress: TWideStringField;
    FixMasterDataSetOwnerPhone: TWideStringField;
    FixMasterDataSetUserName: TWideStringField;
    FixMasterDataSetUserAddress: TWideStringField;
    FixMasterDataSetUserPhone: TWideStringField;
    FixMasterDataSetNumber: TWideStringField;
    FixMasterDataSetEngineNumber: TWideStringField;
    FixMasterDataSetInsurance1Data: TWideStringField;
    FixMasterDataSetInsurance1Category: TWideStringField;
    FixMasterDataSetInsurance1Number: TWideStringField;
    FixMasterDataSetInsurance1During: TWideStringField;
    FixMasterDataSetInsurance2Data: TWideStringField;
    FixMasterDataSetInsurance2Category: TWideStringField;
    FixMasterDataSetInsurance2Number: TWideStringField;
    FixMasterDataSetInsurance2During: TWideStringField;
    FixMasterDataSetFixMasterId: TIntegerField;
    DBGrid1: TDBGrid;
    procedure OKBtnClick(Sender: TObject);
    procedure FixQueryCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FixQueryAfterDelete(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure PostBtnClick(Sender: TObject);
    procedure PrintBtnClick(Sender: TObject);
    procedure BusLookupKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure InsertBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure FixDataSetCalcFields(DataSet: TDataSet);
    procedure FixMasterDataSetAfterDelete(DataSet: TDataSet);
    procedure FixDataSetAfterOpen(DataSet: TDataSet);
    procedure FixDataSetBeforeClose(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FixForm: TFixForm;

implementation

uses frmDM, frmDay;

{$R *.dfm}

procedure TFixForm.OKBtnClick(Sender: TObject);
begin
  // 年度防呆
  try
    StrToInt(YearEdit.Text);
  except
    MessageDlg('年度輸入錯誤！', mtWarning, [mbOK], 0);
    exit;
  end;

  // 車號防呆
  if BusLookup.Text = '' then
    exit;

  // 修車主要資料
  FixMasterDataSet.Close;
  FixMasterDataSet.DataSet.ParamByName('Years').AsInteger := StrToInt(YearEdit.Text);
  FixMasterDataSet.DataSet.ParamByName('Num').AsWideString := BusLookup.Text;
  FixMasterDataSet.Open;

  if FixMasterDataSet.IsEmpty then
  begin
    FixMasterDataSet.Append;
    FixMasterDataSet.FieldValues['FixMasterId'] := 0;
    FixMasterDataSet.FieldValues['BusNum'] := BusLookup.Text;
    FixMasterDataSet.FieldValues['Year'] := StrToInt(YearEdit.Text);
    FixMasterDataSet.ApplyUpdates(0);
  end;

  // 修車明細列表
  FixDataSet.Close;
  FixDataSet.DataSet.ParamByName('Years').AsInteger := StrToInt(YearEdit.Text);
  FixDataSet.DataSet.ParamByName('Num').AsWideString := BusLookup.Text;
  FixDataSet.Open;

//  if FixDataSet.IsEmpty then
//    FixDataSet.Append;
end;

procedure TFixForm.FixQueryCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldValues['MDate_Show'] := FormatDateTime('ee/mm/dd', DataSet.FieldByName('MDate').AsDateTime);
end;

procedure TFixForm.FormClose(Sender: TObject; var Action: TCloseAction);
var
  iniFile: TIniFile;
begin
  iniFile := TIniFile.Create(DM.AppPath + 'Config.ini');
  iniFile.WriteInteger('FixForm', 'FormTop', FixForm.Top);
  iniFile.WriteInteger('FixForm', 'FormLeft', FixForm.Left);
  iniFile.WriteInteger('FixForm', 'FormWidth', FixForm.Width);
  iniFile.WriteInteger('FixForm', 'FormHeight', FixForm.Height);
  iniFile.Free;

  // 自動儲存
  if FixMasterDataSet.Active then
  begin
    FixMasterDataSet.ApplyUpdates(0);
  end;

  if FixDataSet.Active then
  begin
    FixDataSet.ApplyUpdates(0);
  end;

  FixForm := nil;
  Action := caFree;
end;

procedure TFixForm.FormCreate(Sender: TObject);
var
  iniFile: TIniFile;
begin
  iniFile := TIniFile.Create(DM.AppPath + 'Config.ini');
  FixForm.Top := iniFile.ReadInteger('FixForm', 'FormTop', 0);
  FixForm.Left := iniFile.ReadInteger('FixForm', 'FormLeft', 0);
  FixForm.Width := iniFile.ReadInteger('FixForm', 'FormWidth', 500);
  FixForm.Height := iniFile.ReadInteger('FixForm', 'FormHeight', 500);
  iniFile.Free;

  RvProject1.ProjectFile := DM.AppPath + 'Fix.rav';
end;

procedure TFixForm.FixDataSetAfterOpen(DataSet: TDataSet);
begin
  InsertBtn.Enabled := true;
  DelBtn.Enabled := true;
  PostBtn.Enabled := true;
  PrintBtn.Enabled := true;
end;

procedure TFixForm.FixDataSetBeforeClose(DataSet: TDataSet);
begin
  InsertBtn.Enabled := false;
  DelBtn.Enabled := false;
  PostBtn.Enabled := false;
  PrintBtn.Enabled := false;
end;

procedure TFixForm.FixDataSetCalcFields(DataSet: TDataSet);
begin
  if (not DataSet.FieldByName('MDate').IsNull) then
  begin
    DataSet.FieldValues['MDate_Show'] := FormatDateTime('ee/mm/dd', DataSet.FieldByName('MDate').AsDateTime);
  end;
end;

procedure TFixForm.FixMasterDataSetAfterDelete(DataSet: TDataSet);
begin
//  if DataSet.IsEmpty then
//    DataSet.Append;
end;

procedure TFixForm.FixQueryAfterDelete(DataSet: TDataSet);
begin
//  if DataSet.IsEmpty then
//    DataSet.Append;
end;

procedure TFixForm.FormShow(Sender: TObject);
begin
  YearEdit.Text := IntToStr(YearOf(Now));
//  Width := 733;

  if DM.EditEnable then
  begin
    // 保險資料
    Panel4.Enabled := true;

    // 保養明細
    Panel5.Enabled := true;
    Panel2.Enabled := true;
  end
  else
  begin
    // 保險資料
    Panel4.Enabled := false;

    // 保養明細
    Panel5.Enabled := false;
    Panel2.Enabled := false;
  end;
end;

procedure TFixForm.PostBtnClick(Sender: TObject);
begin
//  FixMasterDataSet.Edit;
//  FixMasterDataSet.Post;
  FixMasterDataSet.ApplyUpdates(0);

//  FixDataSet.Edit;
//  FixDataSet.Post;
  FixDataSet.ApplyUpdates(0);
  FixDataSet.Refresh;
//  FixDataSet.Close;
//  FixDataSet.Open;
end;

procedure TFixForm.PrintBtnClick(Sender: TObject);
var
  sTemp: String;
begin
  RvProject1.ProjectFile := DM.AppPath + 'Fix.rav';

  sTemp := '日期:' + IntToStr(StrToInt(YearEdit.Text)-1911) + '年度';
  sTemp := sTemp + '　　　　　　　　　　　　　　　　　　　';
  sTemp := sTemp + '車號:' + BusLookup.LookupTable.FieldByName('BusNumber').AsWideString;
  sTemp := sTemp + '　駕駛:' + BusLookup.LookupTable.FieldByName('Driver').AsWideString;
  RvProject1.SetParam('Title',sTemp);

  RvProject1.Execute;
end;

procedure TFixForm.BusLookupKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 40 then
    (Sender As TwwDBLookupCombo).DropDown;
end;

procedure TFixForm.InsertBtnClick(Sender: TObject);
begin
  if (not FixDataSet.Active) then
  begin
    exit;
  end;

  FixDataSet.Append;
  FixDataSet.FieldByName('FixId').AsInteger := 0;
  FixDataSet.FieldByName('BusNum').AsWideString := BusLookup.Text;
end;

procedure TFixForm.DelBtnClick(Sender: TObject);
begin
  if (not FixDataSet.Active) then
  begin
    exit;
  end;

  if MessageDlg('是否刪除此筆資料？', mtWarning, [mbYes,mbNo], 0) = mrYes then
    FixDataSet.Delete;
end;

end.

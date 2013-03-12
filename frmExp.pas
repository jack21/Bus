unit frmExp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, wwrcdpnl, StdCtrls, Buttons, wwdblook, ExtCtrls, DB, ADODB,
  Grids, Wwdbgrid, iniFiles, DateUtils, Mask, DBCtrls, Wwdbigrd, BaseGrid,
  AdvGrid, DBClient, SimpleDS, DBGrids, SqlExpr, FMTBcd, Provider;

type
  TExpForm = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    YearEdit: TEdit;
    MonthBox: TComboBox;
    Panel3: TPanel;
    ExpDS: TDataSource;
    Label10: TLabel;
    DBMemo1: TDBMemo;
    OKBtn: TButton;
    SaveBtn: TButton;
    ExpGrid: TDBGrid;
    ExpQuery: TSQLQuery;
    ExpDataSet: TClientDataSet;
    ExpProvider: TDataSetProvider;
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
    ExpDataSetNote: TWideStringField;
    ExpDataSetToll: TIntegerField;
    ExpQueryExpId: TIntegerField;
    ExpQueryBusNumber: TWideStringField;
    ExpQueryYears: TIntegerField;
    ExpQueryMonths: TIntegerField;
    ExpQueryMemberFee: TIntegerField;
    ExpQueryTax: TIntegerField;
    ExpQueryDriverSalary: TIntegerField;
    ExpQueryServiceSalary: TIntegerField;
    ExpQueryUnionFee: TIntegerField;
    ExpQueryLicenceTax: TIntegerField;
    ExpQueryParkFee: TIntegerField;
    ExpQueryFixFee: TIntegerField;
    ExpQueryIncidental: TIntegerField;
    ExpQueryCellphone: TIntegerField;
    ExpQueryInsurance: TIntegerField;
    ExpQueryReserve: TIntegerField;
    ExpQueryReserve1: TIntegerField;
    ExpQueryReserve2: TIntegerField;
    ExpQueryReserve3: TIntegerField;
    ExpQueryReserve4: TIntegerField;
    ExpQueryNote: TWideStringField;
    ExpQueryToll: TIntegerField;
    ExpQueryReserve5: TIntegerField;
    ExpQueryReserve6: TIntegerField;
    ExpQueryReserve7: TIntegerField;
    ExpDataSetReserve5: TIntegerField;
    ExpDataSetReserve6: TIntegerField;
    ExpDataSetReserve7: TIntegerField;
    ResetButton: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ExpDataSetGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ResetButtonClick(Sender: TObject);
    procedure ExpDSDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    procedure OpenExp(Year, Month: Integer);
    function isInputFieldValid(): Boolean; // �ˬd��J�~��
  public
    { Public declarations }
    function DetectRec(Year, Month: Integer): boolean; // ���� Year �~ Month ��O�_���s�b����
    procedure InsertNew(Year, Month: Integer); // �s�W Year �~ Month �몺�Ҧ������O�ά���
  end;

var
  ExpForm: TExpForm;

implementation

uses frmDM;

{$R *.dfm}

procedure TExpForm.ExpDataSetGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  DM.DataSetGetText(Sender, Text, DisplayText);
end;

procedure TExpForm.ExpDSDataChange(Sender: TObject; Field: TField);
begin
  DM.ImmediateUpdate(Field);
end;

procedure TExpForm.FormClose(Sender: TObject; var Action: TCloseAction);
var
  iniFile: TIniFile;
  HasModify: boolean;
begin
  if ExpDataSet.Active then
  begin
    //�P�_�O�_�����ʹL�����
    HasModify := false;
    ExpDataSet.First;
    while not ExpDataSet.Eof do
    begin
      if (ExpDataSet.UpdateStatus in [usUnmodified]) then
      begin
        ExpDataSet.Next;
        continue;
      end;

      HasModify := true;
      break;
    end;

    if HasModify then
    begin
      if MessageDlg('�O�_�n�x�s��ơH', mtWarning, [mbYes,mbNo], 0) = mrYes then
      begin
        ExpDataSet.ApplyUpdates(0);
      end
      else
      begin
        ExpDataSet.CancelUpdates;
      end;
    end;
    ExpDataSet.Close;
  end;

  iniFile := TIniFile.Create(DM.AppPath + 'Config.ini');
  iniFile.WriteInteger('ExpForm', 'FormTop', ExpForm.Top);
  iniFile.WriteInteger('ExpForm', 'FormLeft', ExpForm.Left);
  iniFile.WriteInteger('ExpForm', 'FormHeight', ExpForm.Height);
  iniFile.WriteInteger('ExpForm', 'FormWidth', ExpForm.Width);
  iniFile.Free;

  ExpForm := nil;
  Action := caFree;
end;

procedure TExpForm.FormCreate(Sender: TObject);
var
  iniFile: TIniFile;
begin
//  iniFile := TIniFile.Create(DM.AppPath + 'Config.ini');
//  ExpForm.Top := iniFile.ReadInteger('ExpForm', 'FormTop', 0);
//  ExpForm.Left := iniFile.ReadInteger('ExpForm', 'FormLeft', 0);
//  ExpForm.Height := iniFile.ReadInteger('ExpForm', 'FormHeight', 500);
//  ExpForm.Width := iniFile.ReadInteger('ExpForm', 'FormWidth', 900);
//  iniFile.Free;

  // �P�_������O�_�������s�b�A���s�b�h�s�W
  //if not DetectRec(YearOf(Now), MonthOf(Now)) then
//  InsertNew(YearOf(Now), MonthOf(Now));

  // ��l�ɶ������r
  YearEdit.Text := IntToStr(YearOf(Now));
  MonthBox.ItemIndex := MonthOf(Now)-1;

  // �}�� Exp
//  OpenExp(YearOf(Now), MonthOf(Now));
end;


procedure TExpForm.ResetButtonClick(Sender: TObject);
begin
  if (Not IsInputFieldValid()) then
  begin
    exit;
  end;

  if MessageDlg('�O�_�n���]' + YearEdit.Text + '�~' + MonthBox.Text + '��O�ΡH', mtWarning, [mbYes,mbNo], 0) = mrYes then
  begin
//    ExpDataSet.Close;
//    ExpQuery.Close;
    DM.SQLConn.ExecuteDirect('DELETE FROM Exp WHERE Years=' + YearEdit.Text + ' and Months=' + MonthBox.Text);
    InsertNew(StrToInt(YearEdit.Text), StrToInt(MonthBox.Text));
    OpenExp(StrToInt(YearEdit.Text), StrToInt(MonthBox.Text));
  end;
end;


{----- ���� Year �~ Month ��O�_���s�b���� -----}
function TExpForm.DetectRec(Year, Month: Integer): boolean;
var
  Count: Integer;
begin
  Count := DM.ExecuteScalar('Select Count(*) From Exp Where Years=' + IntToStr(Year) + ' and Months=' + IntToStr(Month));

  if Count = 0 then
    Result := false
  else
    Result := true;
end;



{----- �s�W Year �~ Month �몺�Ҧ������O�ά��� -----}
procedure TExpForm.InsertNew(Year, Month: Integer);
var
  SQL: String;
  Count: Integer;
  I: Integer;
  ExpList: TStringList;
  IsFound: boolean;
begin
  DM.BusDataSet.Close;
  DM.BusDataSet.Open;

  DM.BuildExpCache();
  OpenExp(Year, Month);

  DM.BusDataSet.First;
  while not DM.BusDataSet.Eof do
  begin
    IsFound := ExpDataSet.Locate('BusNumber', DM.BusDataSet.FieldByName('BusNumber').AsWideString, []);
//    Count := DM.ExecuteScalar('Select Count(*) From Exp Where BusNumber=''' + DM.BusDataSet.FieldByName('BusNumber').AsWideString + ''' and Years=' + IntToStr(Year) + ' and Months=' + IntToStr(Month));

//    if Count = 0 then
    if (not IsFound) then
    begin
      ExpList := DM.DefaultExpValueList;
      SQL := 'Insert Into Exp (BusNumber,Years,Months,';
      for I := 0 to ExpList.Count - 1 do
      begin
        SQL := SQL + ExpList.Names[I] + ',';
      end;
      SQL := SQL + 'Note) Values ';
      SQL := SQL + ' (''' + DM.BusDataSet.FieldByName('BusNumber').AsWideString + ''',';
      SQL := SQL + IntToStr(Year) + ',';
      SQL := SQL + IntToStr(Month) + ',';
      for I := 0 to ExpList.Count - 1 do
      begin
        SQL := SQL + ExpList.ValueFromIndex[I] + ',';
      end;
      SQL := SQL + ''''')';
      DM.SQLConn.ExecuteDirect(SQL);
    end;
    DM.BusDataSet.Next;
  end;
end;

function TExpForm.isInputFieldValid: Boolean;
var
  Year: Integer;
begin
  try
    Year := StrToInt(YearEdit.Text);
  except
    MessageDlg('�~�����~�I', mtError, [mbOK], 0);
    result := false;
    exit;
  end;

  if (YearOf(Now) < Year) then
  begin
    MessageDlg('�����ܶW�L�{�b���~���I', mtError, [mbOK], 0);
    result := false;
    exit;
  end;

  if ((YearOf(Now) = Year) and (MonthOf(Now) < StrToInt(MonthBox.Text))) then
  begin
    MessageDlg('�����ܶW�L�{�b������I', mtError, [mbOK], 0);
    result := false;
    exit;
  end;
end;

{----- �}�� Year �~ Month �몺 Exp �O�� -----}
procedure TExpForm.OpenExp(Year, Month: Integer);
begin
//  ExpDataSet.Close;
//  ExpDataSet.DataSet.ParamByName('myYear').AsInteger := Year;
//  ExpDataSet.DataSet.ParamByName('myMonth').AsInteger := Month;
//  ExpDataSet.Open;
  ExpDataSet.Close;
  ExpQuery.Close;
  ExpQuery.ParamByName('myYear').AsInteger := Year;
  ExpQuery.ParamByName('myMonth').AsInteger := Month;
  ExpQuery.Open;
  ExpDataSet.Open;
end;

procedure TExpForm.SaveBtnClick(Sender: TObject);
begin
//  try
//    if ExpDataSet.State in [dsEdit, dsInsert] then
//      ExpDataSet.Post;
//    ExpDataSet.ApplyUpdates(0);
//    MessageDlg('�ק令�\�I', mtInformation, [mbOK], 0);
//  except
//    MessageDlg('�ק異�ѡI', mtError, [mbOK], 0);
//  end;
  ExpDataSet.ApplyUpdates(0);
end;

procedure TExpForm.OKBtnClick(Sender: TObject);
var
  Year: Integer;
  Month: Integer;
begin
  if (Not IsInputFieldValid()) then
  begin
    exit;
  end;

  // �P�_������O�_�������s�b�A���s�b�h�s�W
  //if not DetectRec(Year, StrToInt(MonthBox.Text)) then
  Year := StrToInt(YearEdit.Text);
  Month := StrToInt(MonthBox.Text);
  InsertNew(Year, Month);
  OpenExp(Year, Month);
end;

procedure TExpForm.FormShow(Sender: TObject);
var
  I: Integer;
  Col: TColumn;
  Title: String;
  iniFile: TIniFile;
begin
  iniFile := TIniFile.Create(DM.AppPath + 'Config.ini');
  ExpForm.Top := iniFile.ReadInteger('ExpForm', 'FormTop', 0);
  ExpForm.Left := iniFile.ReadInteger('ExpForm', 'FormLeft', 0);
  ExpForm.Height := iniFile.ReadInteger('ExpForm', 'FormHeight', 500);
  ExpForm.Width := iniFile.ReadInteger('ExpForm', 'FormWidth', 900);
  iniFile.Free;

  if DM.EditEnable then
  begin
    ExpGrid.Options := ExpGrid.Options + [TDBGridOption.dgEditing] - [TDBGridOption.dgRowSelect];
    Panel3.Enabled := true;
  end
  else
  begin
    ExpGrid.Options := ExpGrid.Options - [TDBGridOption.dgEditing] + [TDBGridOption.dgRowSelect];
    Panel3.Enabled := false;
  end;

  // ���D��ܳ]�w����
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

end.

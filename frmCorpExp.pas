unit frmCorpExp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, FMTBcd, DB, SqlExpr, Provider,
  DBClient, DateUtils, IniFiles, DBCtrls, SimpleDS, RpBase, RpSystem, RpRave,
  RpDefine, RpCon, RpConDS;

type
  TCorpExpForm = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    YearEdit: TEdit;
    MonthBox: TComboBox;
    OKBtn: TButton;
    CorpExpGrid: TDBGrid;
    Panel5: TPanel;
    InsertBtn: TButton;
    DelBtn: TButton;
    ReportBtn: TButton;
    CorpExpDS: TDataSource;
    CorpExpDataSet: TClientDataSet;
    CorpExpProvider: TDataSetProvider;
    CorpExpQuery: TSQLQuery;
    SaveBtn: TButton;
    CorpExpTypeDataSet: TSimpleDataSet;
    CorpExpConn: TRvDataSetConnection;
    RvProject: TRvProject;
    RaveSystem: TRvSystem;
    ExpDataSet: TSimpleDataSet;
    ExpConn: TRvDataSetConnection;
    CorpExpDataSetCorpExpId: TIntegerField;
    CorpExpDataSetExpTypeName: TWideStringField;
    CorpExpDataSetYears: TIntegerField;
    CorpExpDataSetMonths: TIntegerField;
    CorpExpDataSetFee: TIntegerField;
    CorpExpQueryCorpExpId: TIntegerField;
    CorpExpQueryExpTypeName: TWideStringField;
    CorpExpQueryYears: TIntegerField;
    CorpExpQueryMonths: TIntegerField;
    CorpExpQueryFee: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OKBtnClick(Sender: TObject);
    procedure InsertBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure CorpExpDataSetAfterOpen(DataSet: TDataSet);
    procedure CorpExpDataSetBeforeClose(DataSet: TDataSet);
    procedure CorpExpDataSetExpTypeNameChange(Sender: TField);
    procedure ReportBtnClick(Sender: TObject);
    procedure CorpExpDSDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CorpExpForm: TCorpExpForm;

implementation

uses frmDM;

{$R *.dfm}

procedure TCorpExpForm.CorpExpDataSetAfterOpen(DataSet: TDataSet);
begin
  InsertBtn.Enabled := true;
  DelBtn.Enabled := true;
  SaveBtn.Enabled := true;
  ReportBtn.Enabled := true;
end;

procedure TCorpExpForm.CorpExpDataSetBeforeClose(DataSet: TDataSet);
begin
  InsertBtn.Enabled := false;
  DelBtn.Enabled := false;
  SaveBtn.Enabled := false;
  ReportBtn.Enabled := false;
end;

procedure TCorpExpForm.CorpExpDataSetExpTypeNameChange(Sender: TField);
var
  DefaultFee: Integer;
begin
  if (CorpExpDataSet.FieldByName('Fee').AsInteger <> 0) then
  begin
    exit;
  end;

  DefaultFee := CorpExpTypeDataSet.Lookup('ExpTypeName', Sender.AsWideString, 'DefaultFee');
  CorpExpDataSet.FieldByName('Fee').AsInteger := DefaultFee;
end;

procedure TCorpExpForm.CorpExpDSDataChange(Sender: TObject; Field: TField);
begin
  DM.ImmediateUpdate(Field);
end;

procedure TCorpExpForm.DelBtnClick(Sender: TObject);
begin
  if MessageDlg('是否刪除此筆資料？', mtWarning, [mbYes,mbNo], 0) = mrYes then
    CorpExpDataSet.Delete;
end;

procedure TCorpExpForm.FormClose(Sender: TObject; var Action: TCloseAction);
var
  iniFile: TIniFile;
begin
  iniFile := TIniFile.Create(DM.AppPath + 'Config.ini');
  iniFile.WriteInteger('CorpExpForm', 'FormTop', Top);
  iniFile.WriteInteger('CorpExpForm', 'FormLeft', Left);
  iniFile.WriteInteger('CorpExpForm', 'FormWidth', Width);
  iniFile.WriteInteger('CorpExpForm', 'FormHeight', Height);
  iniFile.Free;

  CorpExpForm := nil;
  Action := caFree;
end;

procedure TCorpExpForm.FormCreate(Sender: TObject);
var
  iniFile: TIniFile;
begin
  iniFile := TIniFile.Create(DM.AppPath + 'Config.ini');
  Top := iniFile.ReadInteger('CorpExpForm', 'FormTop', 0);
  Left := iniFile.ReadInteger('CorpExpForm', 'FormLeft', 0);
  Width := iniFile.ReadInteger('CorpExpForm', 'FormWidth', 500);
  Height := iniFile.ReadInteger('CorpExpForm', 'FormHeight', 500);
  iniFile.Free;
end;

procedure TCorpExpForm.FormShow(Sender: TObject);
var
  PickList: TStrings;
begin
  PickList := TStringList.Create;
  CorpExpTypeDataSet.Close;
  CorpExpTypeDataSet.Open;
  while not CorpExpTypeDataSet.Eof do
  begin
    PickList.Add(CorpExpTypeDataSet.FieldByName('ExpTypeName').AsWideString);
    CorpExpTypeDataSet.Next;
  end;

  CorpExpGrid.Columns[0].PickList := PickList;

  YearEdit.Text := IntToStr(YearOf(Now));
  MonthBox.ItemIndex := MonthOf(Now)-1;
end;

procedure TCorpExpForm.InsertBtnClick(Sender: TObject);
begin
  CorpExpDataSet.Append;
  CorpExpDataSet.FieldByName('CorpExpId').AsInteger := 0;
  CorpExpDataSet.FieldByName('Years').AsInteger := StrToInt(YearEdit.Text);
  CorpExpDataSet.FieldByName('Months').AsInteger := MonthBox.ItemIndex + 1;
  CorpExpDataSet.FieldByName('ExpTypeName').AsWideString := '';
end;

procedure TCorpExpForm.OKBtnClick(Sender: TObject);
begin
  ExpDataSet.Close;
  ExpDataSet.DataSet.ParamByName('myYears').AsInteger := StrToInt(YearEdit.Text);
  ExpDataSet.DataSet.ParamByName('myMonths').AsInteger := MonthBox.ItemIndex + 1;
  ExpDataSet.Open;

  CorpExpDataSet.Close;
  CorpExpQuery.Close;
  CorpExpQuery.ParamByName('myYear').AsInteger := StrToInt(YearEdit.Text);
  CorpExpQuery.ParamByName('myMonth').AsInteger := MonthBox.ItemIndex + 1;
  CorpExpQuery.Open;
  CorpExpDataSet.Open;
end;

procedure TCorpExpForm.ReportBtnClick(Sender: TObject);
begin


  RvProject.Close;
  RvProject.ProjectFile := DM.AppPath + 'CorpExp.rav';
  RvProject.Execute;
end;

procedure TCorpExpForm.SaveBtnClick(Sender: TObject);
begin
  CorpExpDataSet.ApplyUpdates(0);
  CorpExpDataSet.Refresh;
end;

end.

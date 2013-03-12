unit frmConfig;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, iniFiles, ComCtrls, DB, DBClient, SimpleDS, Grids, DBGrids;

type
  TConfigForm = class(TForm)
    SaveButton: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DefaultExpDataSet: TSimpleDataSet;
    DefaultExpDS: TDataSource;
    DefaultExpGrid: TDBGrid;
    TabSheet2: TTabSheet;
    CorpExpTypeDataSet: TSimpleDataSet;
    CorpExpType: TDBGrid;
    CorpExpTypeDS: TDataSource;
    CorpExpTypeDataSetCorpExpTypeId: TIntegerField;
    CorpExpTypeDataSetExpTypeName: TWideStringField;
    CorpExpTypeDataSetDefaultFee: TIntegerField;
    InsertBtn: TButton;
    DelBtn: TButton;
    SaveBtn: TButton;
    TabSheet3: TTabSheet;
    DefaultSalaryMiscDataSet: TSimpleDataSet;
    DefaultSalaryMiscDS: TDataSource;
    DBGrid1: TDBGrid;
    InsertSalaryMiscBtn: TButton;
    DeleteSalaryMiscBtn: TButton;
    SaveSalaryMiscBtn: TButton;
    procedure FormShow(Sender: TObject);
    procedure SaveButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure InsertBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure InsertSalaryMiscBtnClick(Sender: TObject);
    procedure DeleteSalaryMiscBtnClick(Sender: TObject);
    procedure SaveSalaryMiscBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConfigForm: TConfigForm;

implementation

uses frmDM;

{$R *.dfm}

procedure TConfigForm.InsertSalaryMiscBtnClick(Sender: TObject);
begin
  DefaultSalaryMiscDataSet.Append;
  DefaultSalaryMiscDataSet.FieldByName('DefaultSalaryMiscId').AsInteger := 0;
end;

procedure TConfigForm.DelBtnClick(Sender: TObject);
begin
  if MessageDlg('是否刪除此筆資料？', mtWarning, [mbYes,mbNo], 0) = mrYes then
  begin
    CorpExpTypeDataSet.Delete;
    CorpExpTypeDataSet.ApplyUpdates(0);
  end;
end;

procedure TConfigForm.DeleteSalaryMiscBtnClick(Sender: TObject);
begin
  if MessageDlg('是否刪除此筆資料？', mtWarning, [mbYes,mbNo], 0) = mrYes then
  begin
    DefaultSalaryMiscDataSet.Delete;
    DefaultSalaryMiscDataSet.ApplyUpdates(0);
  end;
end;

procedure TConfigForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ConfigForm := nil;
  Action := caFree;
end;

procedure TConfigForm.FormCreate(Sender: TObject);
var
  iniFile: TIniFile;
begin
  iniFile := TIniFile.Create(DM.AppPath + 'Config.ini');
  Top := iniFile.ReadInteger('ConfigForm', 'FormTop', 0);
  Left := iniFile.ReadInteger('ConfigForm', 'FormLeft', 0);
  iniFile.Free;

  PageControl1.ActivePageIndex := 0
end;

procedure TConfigForm.FormShow(Sender: TObject);
begin
  DefaultExpDataSet.Close;
  DefaultExpDataSet.Open;

  CorpExpTypeDataSet.Close;
  CorpExpTypeDataSet.Open;

  DefaultSalaryMiscDataSet.Close;
  DefaultSalaryMiscDataSet.Open;
end;

procedure TConfigForm.InsertBtnClick(Sender: TObject);
begin
  CorpExpTypeDataSet.Append;
  CorpExpTypeDataSet.FieldByName('CorpExpTypeId').AsInteger := 0;
end;

procedure TConfigForm.SaveBtnClick(Sender: TObject);
begin
  CorpExpTypeDataSet.ApplyUpdates(0);
end;

procedure TConfigForm.SaveButtonClick(Sender: TObject);
begin
  DefaultExpDataSet.ApplyUpdates(0);
end;

procedure TConfigForm.SaveSalaryMiscBtnClick(Sender: TObject);
begin
  DefaultSalaryMiscDataSet.ApplyUpdates(0);
end;

end.

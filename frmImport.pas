unit frmImport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, iniFiles, DB, ADODB, FMTBcd, SqlExpr,
  DBClient, SimpleDS, ComCtrls;

type
  TImportForm = class(TForm)
    Label1: TLabel;
    MdbDialog: TOpenDialog;
    FileEdit: TEdit;
    OpenBtn: TButton;
    OKBtn: TButton;
    CancelBtn: TButton;
    MdbConn: TADOConnection;
    SourceTable: TADOTable;
    DestDataSet: TSimpleDataSet;
    ImportBar: TProgressBar;
    procedure OpenBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OKBtnClick(Sender: TObject);
  private
    { Private declarations }
    procedure OpenMDB(MdbPath: String);
    procedure ImportTable(Table: String);
    function TableRowCount(Table: String): Integer;
  public
    { Public declarations }
  end;

var
  ImportForm: TImportForm;

implementation

uses frmDM;

{$R *.dfm}

procedure TImportForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ImportForm := nil;
  Action := caFree;
end;

procedure TImportForm.OKBtnClick(Sender: TObject);
var
  TotalRowCount: Integer;
  Msg: String;
begin
  if (MessageBox(0, '將刪除資料庫中所有資料，確定嗎？', ' 刪除資料', MB_ICONQUESTION or MB_YESNO) <> IDYES) then
  begin
    exit;
  end;
  OKBtn.Enabled := false;

  // 刪除目的 Table 資料
  DM.SQLConn.ExecuteDirect('DELETE FROM Bus');
  DM.SQLConn.ExecuteDirect('DELETE FROM Exp');
  DM.SQLConn.ExecuteDirect('DELETE FROM Fix');
  DM.SQLConn.ExecuteDirect('DELETE FROM FixMaster');
  DM.SQLConn.ExecuteDirect('DELETE FROM SalaryMisc');
  DM.SQLConn.ExecuteDirect('DELETE FROM Travel');

  OpenMDB(FileEdit.Text);

  TotalRowCount := 0;
  TotalRowCount := TotalRowCount + TableRowCount('Bus');
  TotalRowCount := TotalRowCount + TableRowCount('Exp');
  TotalRowCount := TotalRowCount + TableRowCount('Fix');
  TotalRowCount := TotalRowCount + TableRowCount('FixMaster');
  TotalRowCount := TotalRowCount + TableRowCount('SalaryMisc');
  TotalRowCount := TotalRowCount + TableRowCount('Travel');
  ImportBar.Max := TotalRowCount;

  ImportTable('Bus');
  ImportTable('Exp');
  ImportTable('Fix');
  ImportTable('FixMaster');
  ImportTable('SalaryMisc');
  ImportTable('Travel');

  Msg := '匯入完畢，共匯入 ' + IntToStr(TotalRowCount) + ' 筆資料';
  MessageBox(0, pwchar(Msg), '匯入完畢', MB_ICONINFORMATION or MB_OK);
  OKBtn.Enabled := true;

  MdbConn.Close;

  Close();
end;

procedure TImportForm.OpenBtnClick(Sender: TObject);
var
  iniFile: TIniFile;
  InitialDir: String;
begin
  iniFile := TIniFile.Create(DM.AppPath + 'Config.ini');
  InitialDir := iniFile.ReadString('MdbDialog', 'InitialDir', 'C:\');
  if (not DirectoryExists(InitialDir)) then
  begin
    InitialDir := 'C:\';
  end;

  MdbDialog.InitialDir := InitialDir;
  if MdbDialog.Execute then
  begin
    FileEdit.Text := MdbDialog.FileName;
    InitialDir := ExtractFileDir(MdbDialog.FileName);
    iniFile.WriteString('MdbDialog', 'InitialDir', InitialDir);
  end;

  iniFile.Free;
end;

function TImportForm.TableRowCount(Table: String): Integer;
begin
  SourceTable.Close;
  SourceTable.TableName := Table;
  SourceTable.Open;
  result := SourceTable.RecordCount;
end;

procedure TImportForm.ImportTable(Table: String);
var
  I: Integer;
  FieldName: String;
begin
  // 開啟來源、目的資料表
  SourceTable.Close;
  SourceTable.TableName := Table;
  SourceTable.Open;
  DestDataSet.Close;
  DestDataSet.DataSet.CommandText := Table;
  DestDataSet.Open;

  // 一行一行匯入
  while not SourceTable.Eof do
  begin
    DestDataSet.Append;
    DestDataSet.FieldValues[Table + 'Id'] := 0;

    for I := 0 to SourceTable.FieldCount - 1 do
    begin
      FieldName := SourceTable.Fields.Fields[I].FieldName;
      if (DestDataSet.Fields.FindField(FieldName) <> nil) then
      begin
        DestDataSet.FieldValues[FieldName] := SourceTable.FieldValues[FieldName];
      end;
    end;

    ImportBar.Position := ImportBar.Position + 1;
    Application.ProcessMessages;

    SourceTable.Next;
  end;

  DestDataSet.ApplyUpdates(0);
end;

procedure TImportForm.OpenMDB(MdbPath: String);
begin
  MdbConn.Close;
  MdbConn.ConnectionString :='Provider=Microsoft.Jet.OLEDB.4.0;'+
                             'User ID=;'+
                             'Data Source='+MdbPath+';'+
                             'Mode=Share Deny None;'+
                             'Extended Properties="";'+
                             'Jet OLEDB:System database="";'+
                             'Jet OLEDB:Registry Path="";'+
                             'Jet OLEDB:Database Password="";'+
                             'Jet OLEDB:Engine Type=5;'+
                             'Jet OLEDB:Database Locking Mode=1;'+
                             'Jet OLEDB:Global Partial Bulk Ops=2;'+
                             'Jet OLEDB:Global Bulk Transactions=1;'+
                             'Jet OLEDB:New Database Password="";'+
                             'Jet OLEDB:Create System Database=False;'+
                             'Jet OLEDB:Encrypt Database=False;'+
                             'Jet OLEDB:Don''t Copy Locale on Compact=False;'+
                             'Jet OLEDB:Compact Without Replica Repair=False;'+
                             'Jet OLEDB:SFP=False';
  MdbConn.Open;
end;

end.

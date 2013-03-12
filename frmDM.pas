unit frmDM;

interface

uses
  Forms, SysUtils, Classes, DB, ADODB, ImgList, Controls, IniFiles,
  WideStrings, SqlExpr, DBXMySql, DBClient, SimpleDS, Dialogs, MIDASLIB,
  RpDefine, RpBase, RpSystem, DbxDevartMySql, CRSQLConnection;

type
  TDM = class(TDataModule)
    ImageList: TImageList;
    BusDS: TDataSource;
    BusDataSet: TSimpleDataSet;
    ImageList1: TImageList;
    BusDataSetBusId: TIntegerField;
    BusDataSetBusNumber: TWideStringField;
    BusDataSetDriver: TWideStringField;
    QueryDataSet: TSimpleDataSet;
    RaveSystem: TRvSystem;
    DefaultExpDataSet: TSimpleDataSet;
    SQLMonitor1: TSQLMonitor;
    SQLConn: TCRSQLConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    PreventRecursive: boolean;
    procedure V21ToV22();
    procedure V22ToV23();
    procedure V23ToV24();
  public
    { Public declarations }
    DefaultExpNameList: TStringList;
    DefaultExpValueList: TStringList;
    AppPath: String;
    EditEnable: Boolean;
    DayEditEnable: Boolean;
    function CheckSuperPassword(NewPassword: String): boolean;
    function CheckDayPassword(NewPassword: String): boolean;
    procedure ExecuteQuery(SQL: String);
    function ExecuteScalar(SQL: string): Variant;
    procedure BuildExpCache();
    function GetDefaultExpValue(ExpCode: String): Integer;
    procedure DataSetGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ImmediateUpdate(Field: TField);
  end;

var
  DM: TDM;

implementation

uses md5;

{$R *.dfm}

function TDM.CheckDayPassword(NewPassword: String): boolean;
var
  OldPassWord: String;
  RegIniFile: TIniFile;
begin
  RegIniFile := TIniFile.Create(AppPath + 'Config.ini');
  OldPassWord := RegIniFile.ReadString('Login', 'DayPassWord', MD5Print(MD5String('1234')));
  RegIniFile.Free;

  if MD5Print(MD5String(NewPassword)) = OldPassWord then
    result := true
  else
    result := false
end;


function TDM.CheckSuperPassword(NewPassword: String): boolean;
var
  OldPassWord: String;
  RegIniFile: TIniFile;
begin
  RegIniFile := TIniFile.Create(AppPath + 'Config.ini');
  OldPassWord := RegIniFile.ReadString('Login', 'SuperPassWord', MD5Print(MD5String('1234')));
  RegIniFile.Free;

  if MD5Print(MD5String(NewPassword)) = OldPassWord then
    result := true
  else
    result := false
end;

procedure TDM.DataModuleCreate(Sender: TObject);
var
  IP: String;
  RegIniFile: TIniFile;
begin
  AppPath := IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName));
  RegIniFile := TIniFile.Create(AppPath + 'Config.ini');
  IP := RegIniFile.ReadString('Database', 'IP', '192.168.0.1');
  RegIniFile.Free;

  try
    SQLConn.Params.Clear;

    { Devart dbExpression Driver
    SQLConn.Params.Values['User_Name'] := 'root';
    SQLConn.Params.Values['Password'] := 'aaa111';
    SQLConn.Params.Values['HostName'] := IP;
    SQLConn.Params.Values['Database'] := 'bus';
    SQLConn.Params.Values['UseUnicode'] := 'True';
    SQLConn.Params.Values['Custom String'] := 'Compress=True;Protocol=TCP';
    }

    SQLConn.Params.Values['DriverName'] := 'MySQL';
    SQLConn.Params.Values['HostName'] := IP;
    SQLConn.Params.Values['Database'] := 'bus';
    SQLConn.Params.Values['User_Name'] := 'root';
    SQLConn.Params.Values['Password'] := 'aaa111';
    SQLConn.Params.Values['ServerCharSet'] := 'UTF8';
    SQLConn.Params.Values['Compressed'] := 'True';
    SQLConn.Params.Values['Encrypted'] := 'True';
    SQLConn.Open;
    BusDataSet.Open;
//    V22ToV23();
//    V23ToV24();
  except
  end;

  BuildExpCache();

  EditEnable := false;
  DayEditEnable := false;

  EditEnable := true;
  DayEditEnable := true;
end;

procedure TDM.V22ToV23();
var
  SQL: String;
begin

  try
    SQLConn.ExecuteDirect('SELECT * FROM CorpExpType');
  except
    SQL := 'CREATE TABLE CorpExpType'
         + '('
         + '  CorpExpTypeId INTEGER NOT NULL AUTO_INCREMENT COMMENT ''PK'','
         + '  ExpTypeName VARCHAR(50) NOT NULL COMMENT ''科目名稱'','
         + '  DefaultFee INTEGER NOT NULL DEFAULT 0 COMMENT ''預設費用'','
         + '  PRIMARY KEY (CorpExpTypeId)'
         + ')  COMMENT=''公司月費用科目''';
    SQLConn.ExecuteDirect(SQL);
  end;


  try
    SQLConn.ExecuteDirect('SELECT * FROM CorpExp');
  except
    SQL := 'CREATE TABLE CorpExp'
         + '('
         + '  CorpExpId INTEGER NOT NULL AUTO_INCREMENT COMMENT ''PK'','
         + '  ExpTypeName VARCHAR(50) NOT NULL COMMENT ''費用科目名稱'','
         + '  Years INTEGER NOT NULL COMMENT ''費用年份'','
         + '  Months INTEGER NOT NULL COMMENT ''費用月份'','
         + '  Fee INTEGER NOT NULL DEFAULT 0 COMMENT ''費用'','
         + '  PRIMARY KEY (CorpExpId)'
         + ')  COMMENT=''公司月費用''';
    SQLConn.ExecuteDirect(SQL);
  end;
end;

{ V2.3 升級到 V 2.4}
procedure TDM.V23ToV24();
var
  SQL: String;
begin
  SQL := 'ALTER TABLE Exp MODIFY Note VARCHAR(255)';
  SQLConn.ExecuteDirect(SQL);
end;

{ V2.1 升級到 V 2.2}
procedure TDM.V21ToV22();
var
  SQL: String;
  ExpItemList: TStringList;
  I: Integer;
begin
  try
    SQLConn.ExecuteDirect('SELECT Toll FROM Exp');
  except
    SQLConn.ExecuteDirect('ALTER TABLE Exp ADD COLUMN Toll Integer');
  end;

  try
    SQLConn.ExecuteDirect('SELECT * FROM DefaultExp');
  except
    SQL := 'CREATE TABLE DefaultExp ' +
           '( ' +
           '    DefaultExpId INTEGER NOT NULL AUTO_INCREMENT COMMENT ''PK'', ' +
           '    ExpCode VARCHAR(50) NOT NULL COMMENT ''費用代號(對應到Exp的Column Name)'', ' +
	         '    DisplayName VARCHAR(50) NOT NULL COMMENT ''顯示名稱(對應到Exp的Column Name)'', ' +
	         '    DefaultValue INTEGER COMMENT ''預設費用'', ' +
	         '    PRIMARY KEY (DefaultExpId) ' +
	         ')  COMMENT=''月費用預設值'' ';
    SQLConn.ExecuteDirect(SQL);

    ExpItemList := TStringList.Create;
    ExpItemList.Append('MemberFee=行費');
    ExpItemList.Append('Tax=稅金');
    ExpItemList.Append('DriverSalary=司機薪資');
    ExpItemList.Append('ServiceSalary=服務員薪資');
    ExpItemList.Append('UnionFee=公會會費');
    ExpItemList.Append('LicenceTax=燃料及牌照稅');
    ExpItemList.Append('ParkFee=停車費');
    ExpItemList.Append('Toll=過路費');
    ExpItemList.Append('FixFee=修理費');
    ExpItemList.Append('Incidental=雜費');
    ExpItemList.Append('Cellphone=行動電話');
    ExpItemList.Append('Insurance=勞健保');
    ExpItemList.Append('Reserve=清潔費');
    ExpItemList.Append('Reserve1=保留一');
    ExpItemList.Append('Reserve2=保留二');
    ExpItemList.Append('Reserve3=保留三');
    ExpItemList.Append('Reserve4=保留四');

    DefaultExpDataSet.Open;
    for I := 0 to ExpItemList.Count - 1 do
    begin
      DefaultExpDataSet.Append;
      DefaultExpDataSet.FieldByName('DefaultExpId').AsInteger := 0;
      DefaultExpDataSet.FieldByName('ExpCode').AsWideString := ExpItemList.Names[I];
      DefaultExpDataSet.FieldByName('DisplayName').AsWideString := ExpItemList.ValueFromIndex[I];
      DefaultExpDataSet.FieldByName('DefaultValue').AsInteger := 0;
      DefaultExpDataSet.Post;
    end;
    DefaultExpDataSet.ApplyUpdates(0);
    DefaultExpDataSet.Close;

    ExpItemList.Free;
  end;
end;

{ 建立 DefaultExp 快取 }
procedure TDM.BuildExpCache();
var
  I: Integer;
  ExpCode: String;
  DisplayName: String;
  DefaultValue: Integer;
begin
  if (DefaultExpNameList = nil) then
  begin
    DefaultExpNameList := TStringList.Create;
  end
  else
  begin
    DefaultExpNameList.Clear;
  end;

  if (DefaultExpValueList = nil) then
  begin
    DefaultExpValueList := TStringList.Create;
  end
  else
  begin
    DefaultExpValueList.Clear;
  end;

  DefaultExpDataSet.Open;
  while (not DefaultExpDataSet.Eof) do
  begin
    ExpCode := DefaultExpDataSet.FieldByName('ExpCode').AsWideString;
    DisplayName := DefaultExpDataSet.FieldByName('DisplayName').AsWideString;
    DefaultValue := DefaultExpDataSet.FieldByName('DefaultValue').AsInteger;

    DefaultExpNameList.Append(ExpCode + '=' + DisplayName);
    DefaultExpValueList.Append(ExpCode + '=' + IntToStr(DefaultValue));

    DefaultExpDataSet.Next;
  end;
  DefaultExpDataSet.Close;
end;

{ 使用 ExpCode 取得預設值  }
function TDM.GetDefaultExpValue(ExpCode: String): Integer;
var
  value: String;
begin
  value := DefaultExpValueList.Values[ExpCode];
  result := StrToInt(value);
end;

procedure TDM.ExecuteQuery(SQL: String);
begin
  QueryDataSet.Close;
  QueryDataSet.DataSet.CommandText := SQL;
  QueryDataSet.Open;
end;

// 傳回Query中的第一筆的第一個欄位資料
function TDM.ExecuteScalar(SQL: string) : Variant;
begin
  ExecuteQuery(SQL);
  result := QueryDataSet.Fields.Fields[0].AsVariant;
end;


procedure TDM.DataSetGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if (Sender.AsInteger = 0) then
  begin
//    Text := '';
    DisplayText := false;
  end
  else
  begin
    DisplayText := true;
    Text := IntToStr(Sender.AsInteger);
  end;
end;

procedure TDM.ImmediateUpdate(Field: TField);
begin
  if Field = nil then exit;
  if (not Field.DataSet.Active) then exit;
  if (not(Field.DataSet.State in [dsEdit])) then exit;
  if (Not PreventRecursive) then
  begin
    PreventRecursive := true;
    (Field.DataSet as TCustomClientDataSet).ApplyUpdates(0);
    PreventRecursive := false;
  end;
end;
end.

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
         + '  ExpTypeName VARCHAR(50) NOT NULL COMMENT ''��ئW��'','
         + '  DefaultFee INTEGER NOT NULL DEFAULT 0 COMMENT ''�w�]�O��'','
         + '  PRIMARY KEY (CorpExpTypeId)'
         + ')  COMMENT=''���q��O�ά��''';
    SQLConn.ExecuteDirect(SQL);
  end;


  try
    SQLConn.ExecuteDirect('SELECT * FROM CorpExp');
  except
    SQL := 'CREATE TABLE CorpExp'
         + '('
         + '  CorpExpId INTEGER NOT NULL AUTO_INCREMENT COMMENT ''PK'','
         + '  ExpTypeName VARCHAR(50) NOT NULL COMMENT ''�O�ά�ئW��'','
         + '  Years INTEGER NOT NULL COMMENT ''�O�Φ~��'','
         + '  Months INTEGER NOT NULL COMMENT ''�O�Τ��'','
         + '  Fee INTEGER NOT NULL DEFAULT 0 COMMENT ''�O��'','
         + '  PRIMARY KEY (CorpExpId)'
         + ')  COMMENT=''���q��O��''';
    SQLConn.ExecuteDirect(SQL);
  end;
end;

{ V2.3 �ɯŨ� V 2.4}
procedure TDM.V23ToV24();
var
  SQL: String;
begin
  SQL := 'ALTER TABLE Exp MODIFY Note VARCHAR(255)';
  SQLConn.ExecuteDirect(SQL);
end;

{ V2.1 �ɯŨ� V 2.2}
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
           '    ExpCode VARCHAR(50) NOT NULL COMMENT ''�O�ΥN��(������Exp��Column Name)'', ' +
	         '    DisplayName VARCHAR(50) NOT NULL COMMENT ''��ܦW��(������Exp��Column Name)'', ' +
	         '    DefaultValue INTEGER COMMENT ''�w�]�O��'', ' +
	         '    PRIMARY KEY (DefaultExpId) ' +
	         ')  COMMENT=''��O�ιw�]��'' ';
    SQLConn.ExecuteDirect(SQL);

    ExpItemList := TStringList.Create;
    ExpItemList.Append('MemberFee=��O');
    ExpItemList.Append('Tax=�|��');
    ExpItemList.Append('DriverSalary=�q���~��');
    ExpItemList.Append('ServiceSalary=�A�ȭ��~��');
    ExpItemList.Append('UnionFee=���|�|�O');
    ExpItemList.Append('LicenceTax=�U�ƤεP�ӵ|');
    ExpItemList.Append('ParkFee=�����O');
    ExpItemList.Append('Toll=�L���O');
    ExpItemList.Append('FixFee=�ײz�O');
    ExpItemList.Append('Incidental=���O');
    ExpItemList.Append('Cellphone=��ʹq��');
    ExpItemList.Append('Insurance=�Ұ��O');
    ExpItemList.Append('Reserve=�M��O');
    ExpItemList.Append('Reserve1=�O�d�@');
    ExpItemList.Append('Reserve2=�O�d�G');
    ExpItemList.Append('Reserve3=�O�d�T');
    ExpItemList.Append('Reserve4=�O�d�|');

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

{ �إ� DefaultExp �֨� }
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

{ �ϥ� ExpCode ���o�w�]��  }
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

// �Ǧ^Query�����Ĥ@�����Ĥ@�������
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

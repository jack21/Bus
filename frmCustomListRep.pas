unit frmCustomListRep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, wwdblook, ExtCtrls,
  DB, ADODB, iniFiles, DateUtils, RpCon, RpConDS, RpBase, RpSystem,
  RpDefine, RpRave, DBClient, SimpleDS, DBGrids;

type
  TCustomListRepForm = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    YearEdit: TEdit;
    MonthBox: TComboBox;
    Panel3: TPanel;
    CountLabel: TLabel;
    CustomListDS: TDataSource;
    RvProject: TRvProject;
    RvSystem: TRvSystem;
    CustomListConn: TRvDataSetConnection;
    OKBtn: TButton;
    ReportBtn: TButton;
    CustomListDataSet: TSimpleDataSet;
    CustomListDataSetCustom: TWideStringField;
    CustomListDataSetTotalTurnover: TFMTBCDField;
    CustomListDataSetTotalNotIncome: TFMTBCDField;
    DBGrid1: TDBGrid;
    procedure OKBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ReportBtnClick(Sender: TObject);
    procedure CustomListDataSetGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CustomListRepForm: TCustomListRepForm;

implementation

uses frmDM, frmCustomerMonthRep;

{$R *.dfm}

procedure TCustomListRepForm.OKBtnClick(Sender: TObject);
begin
  CustomListDataSet.Close;
  CustomListDataSet.DataSet.ParamByName('Year').AsWideString := YearEdit.Text;
  CustomListDataSet.DataSet.ParamByName('Month').AsWideString := MonthBox.Text;
  CustomListDataSet.Open;
end;

procedure TCustomListRepForm.FormCreate(Sender: TObject);
var
  iniFile: TIniFile;
begin
  iniFile := TIniFile.Create(DM.AppPath + 'Config.ini');
  CustomListRepForm.Top := iniFile.ReadInteger('CustomListRepForm', 'FormTop', 0);
  CustomListRepForm.Left := iniFile.ReadInteger('CustomListRepForm', 'FormLeft', 0); 
  CustomListRepForm.Width := iniFile.ReadInteger('CustomListRepForm', 'FormWidth', 365);
  CustomListRepForm.Height := iniFile.ReadInteger('CustomListRepForm', 'FormHeight', 500);
  iniFile.Free;
   
  YearEdit.Text := IntToStr(YearOf(Now));
  MonthBox.ItemIndex := MonthOf(Now)-1;
end;

procedure TCustomListRepForm.CustomListDataSetGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  DM.DataSetGetText(Sender, Text, DisplayText);
end;

procedure TCustomListRepForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  iniFile: TIniFile;
begin
  iniFile := TIniFile.Create(DM.AppPath + 'Config.ini');
  iniFile.WriteInteger('CustomListRepForm', 'FormTop', CustomListRepForm.Top);
  iniFile.WriteInteger('CustomListRepForm', 'FormLeft', CustomListRepForm.Left);   
  iniFile.WriteInteger('CustomListRepForm', 'FormWidth', CustomListRepForm.Width);
  iniFile.WriteInteger('CustomListRepForm', 'FormHeight', CustomListRepForm.Height);
  iniFile.Free;

  CustomListRepForm := nil;
  Action := caFree;
end;

procedure TCustomListRepForm.ReportBtnClick(Sender: TObject);
begin
  RvProject.ProjectFile := DM.AppPath + 'CustomList.rav';
  RvProject.SetParam('Date', YearEdit.Text + 'ж~' + MonthBox.Text + 'ды');
  Rvproject.Execute;
end;

end.

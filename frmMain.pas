unit frmMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, XPStyleActnCtrls, ActnMan, ActnCtrls, ActnColorMaps,
  XPMan, ToolWin, ActnMenus, StdActns, Menus, StdCtrls,
  ComCtrls;

type
  TMainForm = class(TForm)
//    StatusBar: TfcStatusBar;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    VersionLabel: TLabel;
    E1: TMenuItem;
    N3: TMenuItem;
    I1: TMenuItem;
    P1: TMenuItem;
    M1: TMenuItem;
    L1: TMenuItem;
    E2: TMenuItem;
    N4: TMenuItem;
    H1: TMenuItem;
    A1: TMenuItem;
    A2: TMenuItem;
    N5: TMenuItem;
    M2: TMenuItem;
    D1: TMenuItem;
    C1: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    L2: TMenuItem;
    N8: TMenuItem;
    E3: TMenuItem;
    C2: TMenuItem;
    SaveDialog: TSaveDialog;
    D2: TMenuItem;
    N9: TMenuItem;
    C3: TMenuItem;
    N10: TMenuItem;
    StatusBar1: TStatusBar;
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure E2Click(Sender: TObject);
    procedure L1Click(Sender: TObject);
    procedure A1Click(Sender: TObject);
    procedure A2Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure L2Click(Sender: TObject);
    procedure E3Click(Sender: TObject);
    procedure C2Click(Sender: TObject);
    procedure D2Click(Sender: TObject);
    procedure C3Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

const
  AppVer = '2.0';

implementation

uses frmday, frmMonthRep, frmExp, frmFix, frmLogin, frmDM, frmPassword,
  frmDispatch, frmCustomerMonthRep, frmBusMaintain, frmSalaryRep,
  frmCustomListRep, frmImport, frmSuperPassword, frmDayPassword, frmConfig,
  frmCorpExp;

{$R *.dfm}

procedure TMainForm.N10Click(Sender: TObject);
begin
  if NOT Assigned(TForm(CorpExpForm)) then
    Application.CreateForm(TCorpExpForm, CorpExpForm);
end;

procedure TMainForm.N1Click(Sender: TObject);
begin
  if not Assigned(TForm(DayForm)) then
    Application.CreateForm(TDayForm, DayForm);
end;

procedure TMainForm.N2Click(Sender: TObject);
begin
  if not Assigned(TForm(MonthRepForm)) then
    Application.CreateForm(TMonthRepForm, MonthRepForm);
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
//  StatusBar.Panels.PanelByName('VersionPanel').Text := '版本：' + AppVer;
  if (not DM.SQLConn.Connected) then
  begin
    MessageDlg('無法連接資料庫(' + DM.SQLConn.Params.Values['HostName'] + ')', mtError, [mbOK], 0);
    Close;
  end;

  Self.StatusBar1.Panels.Items[0].Text := DM.SQLConn.Params.Values['HostName'];
end;

procedure TMainForm.E1Click(Sender: TObject);
begin
  if not Assigned(TForm(ExpForm)) then
    Application.CreateForm(TExpForm, ExpForm);
end;

procedure TMainForm.N3Click(Sender: TObject);
begin
  if not Assigned(TForm(FixForm)) then
    Application.CreateForm(TFixForm, FixForm);
end;

procedure TMainForm.E2Click(Sender: TObject);
begin
  MainForm.Close;
end;

procedure TMainForm.L1Click(Sender: TObject);
begin
  if not Assigned(TForm(LoginForm)) then
  begin
    Application.CreateForm(TLoginForm, LoginForm);
    LoginForm.ShowModal;
  end;
end;

procedure TMainForm.A1Click(Sender: TObject);
begin
  //MessageDlg(BoolToStr(DM.EditEnable, true), mtWarning, [mbOK], 0);
end;

procedure TMainForm.N5Click(Sender: TObject);
begin
  if not Assigned(TForm(DispatchForm)) then
    Application.CreateForm(TDispatchForm, DispatchForm);
end;

procedure TMainForm.C1Click(Sender: TObject);
begin
  if not Assigned(TForm(CustomerMonthRepForm)) then
    Application.CreateForm(TCustomerMonthRepForm, CustomerMonthRepForm);
end;

procedure TMainForm.N6Click(Sender: TObject);
begin
  if not Assigned(TForm(BusMaintainForm)) then
    Application.CreateForm(TBusMaintainForm, BusMaintainForm);
end;

procedure TMainForm.N7Click(Sender: TObject);
begin
  if not Assigned(TForm(SalaryRepForm)) then
    Application.CreateForm(TSalaryRepForm, SalaryRepForm);
end;

procedure TMainForm.L2Click(Sender: TObject);
begin
  if not Assigned(TForm(CustomListRepForm)) then
    Application.CreateForm(TCustomListRepForm, CustomListRepForm);
end;

procedure TMainForm.E3Click(Sender: TObject);
begin
  if SaveDialog.Execute then
    if CopyFile(PChar(DM.AppPath + 'DataBase\DB.mdb'), PChar(SaveDialog.FileName), false) = True then 
      MessageDlg('匯出成功！', mtInformation, [mbOK], 0)
    else
      MessageDlg('匯出失敗！', mtError, [mbOK], 0);
end;

procedure TMainForm.C2Click(Sender: TObject);
begin
  if not Assigned(TForm(ImportForm)) then
    Application.CreateForm(TImportForm, ImportForm);
  ImportForm.ShowModal;
end;

procedure TMainForm.C3Click(Sender: TObject);
begin
  if not Assigned(TForm(ConfigForm)) then
  begin
    Application.CreateForm(TConfigForm, ConfigForm);
    ConfigForm.Show;
  end;
end;

procedure TMainForm.D2Click(Sender: TObject);
begin
  if not Assigned(TForm(DayPasswordForm)) then
  begin
    Application.CreateForm(TDayPasswordForm, DayPasswordForm);
    DayPasswordForm.ShowModal;
  end;
end;
        
procedure TMainForm.A2Click(Sender: TObject);
begin
  if not Assigned(TForm(SuperPasswordForm)) then
  begin
    Application.CreateForm(TSuperPasswordForm, SuperPasswordForm);
    SuperPasswordForm.ShowModal;
  end;
end;

end.

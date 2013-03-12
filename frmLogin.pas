unit frmLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, iniFiles;

type
  TLoginForm = class(TForm)
    Panel1: TPanel;
    PWEdit: TEdit;
    Label1: TLabel;
    OKBtn: TButton;
    CancelBtn: TButton;
    procedure CancelBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OKBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LoginForm: TLoginForm;

implementation

uses frmDM, frmMain;

{$R *.dfm}

procedure TLoginForm.CancelBtnClick(Sender: TObject);
begin
  LoginForm.Close;
end;

procedure TLoginForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  LoginForm := nil;
  Action := caFree;
end;

procedure TLoginForm.FormShow(Sender: TObject);
begin
  PWEdit.SetFocus;
end;

procedure TLoginForm.OKBtnClick(Sender: TObject);
begin
  // 檢查管理者密碼
  if DM.CheckSuperPassword(PWEdit.Text) then
  begin
    DM.EditEnable := true;
//    MainForm.StatusBar.Panels.PanelByName('LoginStatusPanel').Text := '已登入';
    Close;
    exit;
  end;

  // 檢查日記帳密碼
  if DM.CheckDayPassword(PWEdit.Text) then
  begin
    DM.DayEditEnable := true;
//    MainForm.StatusBar.Panels.PanelByName('LoginStatusPanel').Text := '已登入';
    Close;
    exit;
  end;

  MessageDlg('密碼錯誤！', mtWarning, [mbOK], 0);
end;

end.

unit frmPassword;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, iniFiles;

type
  TPasswordForm = class(TForm)
    Panel1: TPanel;
    OldPWEdit: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    NewPWEdit: TEdit;
    Label3: TLabel;
    NewPW2Edit: TEdit;
    Bevel1: TBevel;
    OKBtn: TButton;
    CancelBtn: TButton;
    procedure OKBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
  private
    { Private declarations }
  protected
    function CheckPassword(NewPassword: String): boolean; virtual; abstract;
    procedure AfterRightPassword(); virtual; abstract;
  public
    { Public declarations }
  end;

var
  PasswordForm: TPasswordForm;

implementation

uses frmLogin, frmDM, md5;

{$R *.dfm}

procedure TPasswordForm.OKBtnClick(Sender: TObject);
begin
  if not CheckPassword(OldPWEdit.Text) then
  begin
    MessageDlg('�±K�X���~�I', mtWarning, [mbOK], 0);
    exit;
  end;

  if NewPWEdit.Text <> NewPW2Edit.Text then
  begin
    MessageDlg('�s�K�X�T�{���ŦX�I', mtWarning, [mbOK], 0);
    exit;
  end;

  AfterRightPassword;

  MessageDlg('�K�X��令�\�I'+#13+'�U���Хηs�K�X�n�J�I', mtInformation, [mbOK], 0);

  Close;
end;

procedure TPasswordForm.CancelBtnClick(Sender: TObject);
begin
  Close;
end;

end.

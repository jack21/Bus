unit frmSuperPassword;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmPassword, StdCtrls, Buttons, ExtCtrls, IniFiles;

type
  TSuperPasswordForm = class(TPasswordForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  protected
    function CheckPassword(NewPassWord: String): boolean; override;
    procedure AfterRightPassword(); override;
  public
    { Public declarations }
  end;

var
  SuperPasswordForm: TSuperPasswordForm;

implementation

uses frmDM, md5;

{$R *.dfm}

{ TSuperPasswordForm }

procedure TSuperPasswordForm.AfterRightPassword;
var
  RegIniFile: TIniFile;
begin
  RegIniFile := TIniFile.Create(DM.AppPath + 'Config.ini');
  RegIniFile.WriteString('Login', 'SuperPassWord', MD5Print(MD5String(NewPWEdit.Text)));
  RegIniFile.Free;
end;

function TSuperPasswordForm.CheckPassword(NewPassWord: String): boolean;
begin
  result := DM.CheckSuperPassword(NewPassword);
end;

procedure TSuperPasswordForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SuperPasswordForm := nil;
  Action := caFree;
end;

end.

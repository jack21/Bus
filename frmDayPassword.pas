unit frmDayPassword;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmPassword, StdCtrls, Buttons, ExtCtrls, IniFiles;

type
  TDayPasswordForm = class(TPasswordForm)
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
  DayPasswordForm: TDayPasswordForm;

implementation

uses md5, frmDM;

{$R *.dfm}

{ TDayPasswordForm }

procedure TDayPasswordForm.AfterRightPassword;
var
  RegIniFile: TIniFile;
begin
  RegIniFile := TIniFile.Create(DM.AppPath + 'Config.ini');
  RegIniFile.WriteString('Login', 'DayPassWord', MD5Print(MD5String(NewPWEdit.Text)));
  RegIniFile.Free;
end;

function TDayPasswordForm.CheckPassword(NewPassWord: String): boolean;
begin
  result := DM.CheckDayPassword(NewPassword);
end;


procedure TDayPasswordForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DayPasswordForm := nil;
  Action := caFree;
end;

end.

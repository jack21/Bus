program Bus;



uses
  Forms,
  frmMain in 'frmMain.pas' {MainForm},
  frmDay in 'frmDay.pas' {DayForm},
  frmDM in 'frmDM.pas' {DM: TDataModule},
  frmMonthRep in 'frmMonthRep.pas' {MonthRepForm},
  frmExp in 'frmExp.pas' {ExpForm},
  frmFix in 'frmFix.pas' {FixForm},
  md5 in 'md5.pas',
  frmPassword in 'frmPassword.pas' {PasswordForm},
  frmDispatch in 'frmDispatch.pas' {DispatchForm},
  frmDispatchMaintain in 'frmDispatchMaintain.pas' {DispatchMaintainForm},
  frmInsertDay in 'frmInsertDay.pas' {InsertDayForm},
  frmCustomerMonthRep in 'frmCustomerMonthRep.pas' {CustomerMonthRepForm},
  frmLogin in 'frmLogin.pas' {LoginForm},
  frmBusMaintain in 'frmBusMaintain.pas' {BusMaintainForm},
  frmSalaryRep in 'frmSalaryRep.pas' {SalaryRepForm},
  frmCustomListRep in 'frmCustomListRep.pas' {CustomListRepForm},
  frmImport in 'frmImport.pas' {ImportForm},
  frmSuperPassword in 'frmSuperPassword.pas' {SuperPasswordForm},
  frmDayPassword in 'frmDayPassword.pas' {DayPasswordForm},
  rpMonthPay in 'rpMonthPay.pas' {MonthPayRep},
  rpMonth in 'rpMonth.pas' {MonthRep},
  rpFix in 'rpFix.pas' {FixRep},
  frmConfig in 'frmConfig.pas' {ConfigForm},
  frmCorpExp in 'frmCorpExp.pas' {CorpExpForm};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '富野通運有限公司';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.

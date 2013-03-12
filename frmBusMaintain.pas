unit frmBusMaintain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, ExtCtrls, StdCtrls, Buttons, iniFiles,
  ADODB, DB, DBGrids;

type
  TBusMaintainForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    InsertBtn: TButton;
    DelBtn: TButton;
    SaveBtn: TButton;
    BusGrid: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure InsertBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BusMaintainForm: TBusMaintainForm;

implementation

uses frmDM;

{$R *.dfm}

procedure TBusMaintainForm.FormShow(Sender: TObject);
begin
  DM.BusDataSet.Refresh;
  DM.BusDataSet.First;
end;

procedure TBusMaintainForm.InsertBtnClick(Sender: TObject);
begin
  DM.BusDataSet.Append;
  DM.BusDataSet.FieldByName('BusId').AsInteger := 0;
end;

procedure TBusMaintainForm.DelBtnClick(Sender: TObject);
begin
  DM.BusDataSet.Delete;
end;

procedure TBusMaintainForm.SaveBtnClick(Sender: TObject);
begin
  DM.BusDataSet.ApplyUpdates(0);
end;

procedure TBusMaintainForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  iniFile: TIniFile;
  HasModify: boolean;
begin
  //判斷是否有異動過的資料
  HasModify := false;
  DM.BusDataSet.First;
  while not DM.BusDataSet.Eof do
  begin
    if (DM.BusDataSet.UpdateStatus in [usUnmodified]) then
    begin
      DM.BusDataSet.Next;
      continue;
    end;

    HasModify := true;
    break;
  end;

  if HasModify then
  begin
    if MessageDlg('是否要儲存資料？', mtWarning, [mbYes,mbNo], 0) = mrYes then
    begin
      DM.BusDataSet.ApplyUpdates(0);
    end
    else
    begin
      DM.BusDataSet.CancelUpdates;
    end;
  end;

  iniFile := TIniFile.Create(DM.AppPath + 'Config.ini');
  iniFile.WriteInteger('BusMaintainForm', 'FormTop', BusMaintainForm.Top);
  iniFile.WriteInteger('BusMaintainForm', 'FormLeft', BusMaintainForm.Left);
  iniFile.WriteInteger('BusMaintainForm', 'FormHeight', BusMaintainForm.Height);
  iniFile.WriteInteger('BusMaintainForm', 'FormWidth', BusMaintainForm.Width);
  iniFile.Free;

  BusMaintainForm := nil;
  Action := caFree;
end;

procedure TBusMaintainForm.FormCreate(Sender: TObject);
var
  iniFile: TIniFile;
begin
  iniFile := TIniFile.Create(DM.AppPath + 'Config.ini');
  BusMaintainForm.Top := iniFile.ReadInteger('BusMaintainForm', 'FormTop', 0);
  BusMaintainForm.Left := iniFile.ReadInteger('BusMaintainForm', 'FormLeft', 0);
  BusMaintainForm.Height := iniFile.ReadInteger('BusMaintainForm', 'FormHeight', 400);
  BusMaintainForm.Width := iniFile.ReadInteger('BusMaintainForm', 'FormWidth', 350);
  iniFile.Free;

  if DM.EditEnable then
  begin
    BusGrid.Options := BusGrid.Options + [TDBGridOption.dgEditing] - [TDBGridOption.dgRowSelect];
    InsertBtn.Enabled := true;
    DelBtn.Enabled := true;
    SaveBtn.Enabled := true;
  end
  else
  begin
    BusGrid.Options := BusGrid.Options - [TDBGridOption.dgEditing] + [TDBGridOption.dgRowSelect];
    InsertBtn.Enabled := false;
    DelBtn.Enabled := false;
    SaveBtn.Enabled := false;
  end;
end;

end.

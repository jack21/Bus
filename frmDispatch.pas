unit frmDispatch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, iniFiles, ExtCtrls, Grids, BaseGrid, AdvGrid, AdvCGrid,
  StdCtrls, Buttons;

type
  TDispatchForm = class(TForm)
    AdvColumnGrid1: TAdvColumnGrid;
    Panel1: TPanel;
    Label2: TLabel;
    YearEdit: TEdit;
    Label3: TLabel;
    OKBtn: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DispatchForm: TDispatchForm;

implementation

uses frmDM;

{$R *.dfm}

procedure TDispatchForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  iniFile: TIniFile;
begin
  iniFile := TIniFile.Create(DM.AppPath + 'Config.ini');
  iniFile.WriteInteger('DispatchForm', 'FormTop', DispatchForm.Top);
  iniFile.WriteInteger('DispatchForm', 'FormLeft', DispatchForm.Left);
  iniFile.Free;

  DispatchForm := nil;
  Action := caFree;
end;

procedure TDispatchForm.FormCreate(Sender: TObject);
var
  iniFile: TIniFile;
begin
  iniFile := TIniFile.Create(DM.AppPath + 'Config.ini');
  DispatchForm.Top := iniFile.ReadInteger('DispatchForm', 'FormTop', 0);
  DispatchForm.Left := iniFile.ReadInteger('DispatchForm', 'FormLeft', 0);
  iniFile.Free;
end;

end.

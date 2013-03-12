unit frmInsertDay;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, DBCtrls, StdCtrls, wwdblook, ExtCtrls, Buttons, DB, ADODB,
  wwdbdatetimepicker, DBClient, SimpleDS, DateUtils,
  FMTBcd, SqlExpr, AdvEdit, DBAdvEd;

type
  TInsertDayForm = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    BusLookup: TwwDBLookupCombo;
    CustomLookup: TwwDBLookupCombo;
    TravelLookup: TwwDBLookupCombo;
    TurnoverEdit: TDBEdit;
    TravelExpEdit: TDBEdit;
    OilExpEdit: TDBEdit;
    FirstIncomeEdit: TDBEdit;
    TipsEdit: TDBEdit;
    NoteEdit: TDBEdit;
    Panel1: TPanel;
    Label1: TLabel;
    Tips2Edit: TDBEdit;
    Label11: TLabel;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    Label12: TLabel;
    SecondIncomeEdit: TDBEdit;
    Label13: TLabel;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    Label14: TLabel;
    Turnover2Edit: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    DBAdvMaskEdit1: TDBAdvMaskEdit;
    DBAdvMaskEdit2: TDBAdvMaskEdit;
    Label17: TLabel;
    Label18: TLabel;
    DBEdit1: TDBEdit;
    Label19: TLabel;
    Note2Edit: TDBEdit;
    OKBtn: TButton;
    CancelBtn: TButton;
    CustomDataSet: TSimpleDataSet;
    TravelDataSet: TSimpleDataSet;
    CustomDataSetCustom: TWideStringField;
    TravelDataSetTravel: TWideStringField;
    TravelDataSet3: TSQLQuery;
    CustomDataSet3: TSQLQuery;
    procedure OKBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure CustomLookupKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TravelLookupKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BusLookupKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InsertDayForm: TInsertDayForm;

implementation

uses frmDay, frmDM;

{$R *.dfm}

procedure TInsertDayForm.OKBtnClick(Sender: TObject);
begin
  try
    if DayForm.DayDataSet.State in [dsEdit, dsInsert] then
    begin
      DayForm.DayDataSet.ApplyUpdates(0);
      DayForm.DayDataSet.Refresh;
//      DayForm.DayQuery.Refresh;
    end;
    Close;
  except
    MessageDlg('·s¼W¥¢±Ñ¡I', mtError, [mbOK], 0);
  end;
end;

procedure TInsertDayForm.CancelBtnClick(Sender: TObject);
begin
  DayForm.DayDataSet.CancelUpdates;
  Close;
end;

procedure TInsertDayForm.CustomLookupKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  IsFind: boolean;
begin
//  if (Key = 40) then
//  begin
//    (Sender As TwwDBLookupCombo).DropDown;
//  end;
end;

procedure TInsertDayForm.FormShow(Sender: TObject);
begin
  CustomDataSet.Close;
  CustomDataSet.Open;
  TravelDataSet.Close;
  TravelDataSet.DataSet.ParamByName('TravelDate').AsDate := IncYear(Now, -1);
  TravelDataSet.Open;
end;

procedure TInsertDayForm.TravelLookupKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
//  if Key = 40 then
//    (Sender As TwwDBLookupCombo).DropDown;
end;

procedure TInsertDayForm.BusLookupKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  if Key = 40 then
//    (Sender As TwwDBLookupCombo).DropDown;
end;

end.

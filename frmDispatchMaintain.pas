unit frmDispatchMaintain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, DB, ADODB, StdCtrls, ExtCtrls, Mask,
  wwdbedit, Wwdbspin;

type
  TDispatchMaintainForm = class(TForm)
    wwDBGrid1: TwwDBGrid;
    wwDBGrid2: TwwDBGrid;
    Bus: TADOQuery;
    Investor: TADOQuery;
    BusDS: TDataSource;
    InvestorDS: TDataSource;
    BusBusNumber: TWideStringField;
    BusPersonCount: TIntegerField;
    wwDBSpinEdit1: TwwDBSpinEdit;
    InvestorNo: TAutoIncField;
    InvestorBusNum: TWideStringField;
    InvestorInvestor: TWideStringField;
    InvestorNumerator: TIntegerField;
    InvestorDenominator: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DispatchMaintainForm: TDispatchMaintainForm;

implementation

uses frmDM;

{$R *.dfm}

end.

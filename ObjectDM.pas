unit ObjectDM;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDM = class(TDataModule)
    DBConn: TADOConnection;
    BusTable: TADOTable;
    BusTableBusNumber: TWideStringField;
    BusTableDriver: TWideStringField;
    ExpQuery: TADOQuery;
    UpdateExpQuery: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.

unit Bus;

interface

uses Variants, Expensive;

type
  TBus = class(TObject)
  private
    FBusNumber: String;
    FDriver: String;
    function GetExp(Year, Month: Integer): TExpensive;
  protected

  public
    property BusNumber: String read FBusNumber;
    property Driver: String read FDriver;
    property Expensive[Year, Month: Integer]: TExpensive read GetExp;
    class function GetBus(BusNumber: string): TBus; overload;
    class function GetBus(Index: Integer): TBus; overload;
  published
  end;

implementation

uses ObjectDM;

{ TBus }

class function TBus.GetBus(BusNumber: string): TBus;
var
  ABus: TBus;
begin
  ABus := TBus.Create;
  ABus.FBusNumber := BusNumber;
  ABus.FDriver := VarToStr(DM.BusTable.Lookup('BusNumber', BusNumber, 'Driver'));
  result := ABus;
end;

class function TBus.GetBus(Index: Integer): TBus;
var
  ABus: TBus;
begin
  ABus := TBus.Create;
  DM.BusTable.First;
  DM.BusTable.MoveBy(Index);
  ABus.FBusNumber := DM.BusTable.FieldByName('BusNumber').AsString;
  ABus.FDriver := DM.BusTable.FieldByName('Driver').AsString;
  result := ABus;
end;

function TBus.GetExp(Year, Month: Integer): TExpensive;
var
  AExp: TExpensive;
begin
  AExp := TExpensive.Create(FBusNumber, Year, Month);
  result := AExp;
end;

end.

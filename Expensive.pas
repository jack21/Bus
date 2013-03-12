unit Expensive;

interface

type
  TExpensive = class(TObject)
  private
    FBusNumber: String;
    FYear: Integer;
    FMonth: Integer;

    FReserve4: Integer;
    FServiceSalary: Integer;
    FReserve: Integer;
    FFixFee: Integer;
    FReserve2: Integer;
    FReserve3: Integer;
    FReserve1: Integer;
    FInsurance: Integer;
    FTax: Integer;
    FIncidental: Integer;
    FUnionFee: Integer;
    FMemberFee: Integer;
    FLicenceTax: Integer;
    FCellphone: Integer;
    FParkFee: Integer;
    FDriverSalary: Integer;
    FNote: String;
    procedure SetCellphone(const Value: Integer);
    procedure SetDriverSalary(const Value: Integer);
    procedure SetFixFee(const Value: Integer);
    procedure SetIncidental(const Value: Integer);
    procedure SetInsurance(const Value: Integer);
    procedure SetLicenceTax(const Value: Integer);
    procedure SetNote(const Value: String);
    procedure SetParkFee(const Value: Integer);
    procedure SetReserve(const Value: Integer);
    procedure SetReserve1(const Value: Integer);
    procedure SetReserve2(const Value: Integer);
    procedure SetReserve3(const Value: Integer);
    procedure SetReserve4(const Value: Integer);
    procedure SetServiceSalary(const Value: Integer);
    procedure SetTax(const Value: Integer);
    procedure SetUnionFee(const Value: Integer);
    procedure SetMemberFee(const Value: Integer);

  protected

  public
  published
    property MemberFee: Integer read FMemberFee write SetMemberFee;
    property Tax: Integer read FTax write SetTax;
    property DriverSalary: Integer read FDriverSalary write SetDriverSalary;
    property ServiceSalary: Integer read FServiceSalary write SetServiceSalary;
    property UnionFee: Integer read FUnionFee write SetUnionFee;
    property LicenceTax: Integer read FLicenceTax write SetLicenceTax;
    property ParkFee: Integer read FParkFee write SetParkFee;
    property FixFee: Integer read FFixFee write SetFixFee;
    property Incidental: Integer read FIncidental write SetIncidental;
    property Cellphone: Integer read FCellphone write SetCellphone;
    property Insurance: Integer read FInsurance write SetInsurance;
    property Reserve: Integer read FReserve write SetReserve;
    property Reserve1: Integer read FReserve1 write SetReserve1;
    property Reserve2: Integer read FReserve2 write SetReserve2;
    property Reserve3: Integer read FReserve3 write SetReserve3;
    property Reserve4: Integer read FReserve4 write SetReserve4;
    property Note: String read FNote write SetNote;
    constructor Create(BusNumber: String; Year, Month: Integer);
  end;

implementation

uses ObjectDM;

{ TExpensive }

constructor TExpensive.Create(BusNumber: String; Year, Month: Integer);
begin
  FBusNumber := BusNumber;
  FYear := Year;
  FMonth := Month;

  DM.ExpQuery.Close;
  DM.ExpQuery.Parameters.ParamValues['BusNumber'] := BusNumber;
  DM.ExpQuery.Parameters.ParamValues['Years'] := Year;
  DM.ExpQuery.Parameters.ParamValues['Months'] := Month;
  DM.ExpQuery.Open;

  FMemberFee := DM.ExpQuery.FieldByName('MemberFee').AsInteger;
  FTax := DM.ExpQuery.FieldByName('Tax').AsInteger;
  FDriverSalary := DM.ExpQuery.FieldByName('DriverSalary').AsInteger;
  FServiceSalary := DM.ExpQuery.FieldByName('ServiceSalary').AsInteger;
  FUnionFee := DM.ExpQuery.FieldByName('UnionFee').AsInteger;
  FLicenceTax := DM.ExpQuery.FieldByName('LicenceTax').AsInteger;
  FParkFee := DM.ExpQuery.FieldByName('ParkFee').AsInteger;
  FFixFee := DM.ExpQuery.FieldByName('FixFee').AsInteger;
  FIncidental := DM.ExpQuery.FieldByName('Incidental').AsInteger;
  FCellphone := DM.ExpQuery.FieldByName('Cellphone').AsInteger;
  FInsurance := DM.ExpQuery.FieldByName('Insurance').AsInteger;
  FReserve := DM.ExpQuery.FieldByName('Reserve').AsInteger;
  FReserve1 := DM.ExpQuery.FieldByName('Reserve1').AsInteger;
  FReserve2 := DM.ExpQuery.FieldByName('Reserve2').AsInteger;
  FReserve3 := DM.ExpQuery.FieldByName('Reserve3').AsInteger;
  FReserve4 := DM.ExpQuery.FieldByName('Reserve4').AsInteger;
  FNote := DM.ExpQuery.FieldByName('Note').AsString;
end;

procedure TExpensive.SetCellphone(const Value: Integer);
begin
  FCellphone := Value;
end;

procedure TExpensive.SetDriverSalary(const Value: Integer);
begin
  FDriverSalary := Value;
end;

procedure TExpensive.SetFixFee(const Value: Integer);
begin
  FFixFee := Value;
end;

procedure TExpensive.SetIncidental(const Value: Integer);
begin
  FIncidental := Value;
end;

procedure TExpensive.SetInsurance(const Value: Integer);
begin
  FInsurance := Value;
end;

procedure TExpensive.SetLicenceTax(const Value: Integer);
begin
  FLicenceTax := Value;
end;

procedure TExpensive.SetMemberFee(const Value: Integer);
begin
  FMemberFee := Value;
end;

procedure TExpensive.SetNote(const Value: String);
begin
  FNote := Value;
end;

procedure TExpensive.SetParkFee(const Value: Integer);
begin
  FParkFee := Value;
end;

procedure TExpensive.SetReserve(const Value: Integer);
begin
  FReserve := Value;
end;

procedure TExpensive.SetReserve1(const Value: Integer);
begin
  FReserve1 := Value;
end;

procedure TExpensive.SetReserve2(const Value: Integer);
begin
  FReserve2 := Value;
end;

procedure TExpensive.SetReserve3(const Value: Integer);
begin
  FReserve3 := Value;
end;

procedure TExpensive.SetReserve4(const Value: Integer);
begin
  FReserve4 := Value;
end;

procedure TExpensive.SetServiceSalary(const Value: Integer);
begin
  FServiceSalary := Value;
end;

procedure TExpensive.SetTax(const Value: Integer);
begin
  FTax := Value;
end;

procedure TExpensive.SetUnionFee(const Value: Integer);
begin
  FUnionFee := Value;
end;

end.

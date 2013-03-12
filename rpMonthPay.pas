unit rpMonthPay;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, ExtCtrls, QRCtrls;

type
  TMonthPayRep = class(TForm)
    MonthPayRep: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRLabel1: TQRLabel;
    SubTitleLabel: TQRLabel;
    CustomerLabel: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRBand4: TQRBand;
    QRLabel2: TQRLabel;
    QRExpr1: TQRExpr;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Preview(Month: String; BusNumber: String);
  end;

var
  MonthPayRep: TMonthPayRep;

implementation

uses frmMonthRep;

{$R *.dfm}

procedure TMonthPayRep.Preview(Month: String; BusNumber: String);
begin
  SubTitleLabel.Caption := Month + ' 月份  應付帳款明細';
  CustomerLabel.Caption := '客戶名稱:' + BusNumber;
  MonthPayRep.PreviewModal;
end;

end.

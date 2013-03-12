unit rpMonth;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, qrpctrls;

type
  TMonthRep = class(TForm)
    MonthReport: TQuickRep;
    TitleBand: TQRBand;
    QRBand2: TQRBand;
    SummaryBand: TQRBand;
    TimeLabel: TQRLabel;
    WhoLabel: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    DetailBand: TQRPBand;
    QRDBText1: TQRPDBText;
    Shape2: TQRPShape;
    QRDBText2: TQRPDBText;
    Shape3: TQRPShape;
    QRDBText3: TQRPDBText;
    Shape4: TQRPShape;
    QRDBText4: TQRPDBText;
    Shape5: TQRPShape;
    QRDBText5: TQRPDBText;
    Shape6: TQRPShape;
    QRPShape1: TQRPShape;
    QRPShape2: TQRPShape;
    QRPDBText1: TQRPDBText;
    QRPDBText2: TQRPDBText;
    QRPDBText3: TQRPDBText;
    QRPShape3: TQRPShape;
    QRPShape4: TQRPShape;
    QRPShape7: TQRPShape;
    QRPShape8: TQRPShape;
    QRPShape9: TQRPShape;
    Total01Label: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRPShape5: TQRPShape;
    QRPShape6: TQRPShape;
    QRPShape10: TQRPShape;
    QRPShape11: TQRPShape;
    QRPShape12: TQRPShape;
    QRPShape13: TQRPShape;
    QRPShape14: TQRPShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    LineHor01Shape: TQRShape;
    LineVer01Shape: TQRShape;
    LineHor02Shape: TQRShape;
    Item01Label: TQRLabel;
    Item02Label: TQRLabel;
    Item03Label: TQRLabel;
    Item04Label: TQRLabel;
    Item05Label: TQRLabel;
    Item06Label: TQRLabel;
    LineVer02Shape: TQRShape;
    LineVer03Shape: TQRShape;
    LineVer04Shape: TQRShape;
    LineVer05Shape: TQRShape;
    LineVer06Shape: TQRShape;
    LivnVer07Shape: TQRShape;
    LineHor03Shape: TQRShape;
    LineHor04Shape: TQRShape;
    LineHor05Shape: TQRShape;
    LineHor06Shape: TQRShape;
    LineHor07Shape: TQRShape;
    LineHor08Shape: TQRShape;
    LineHor09Shape: TQRShape;
    LineHor10Shape: TQRShape;
    LineHor11Shape: TQRShape;
    LineHor12Shape: TQRShape;
    Item07Label: TQRLabel;
    Item08Label: TQRLabel;
    Item09Label: TQRLabel;
    Item10Label: TQRLabel;
    Item11Label: TQRLabel;
    Item12Label: TQRLabel;
    Item13Label: TQRLabel;
    Item14Label: TQRLabel;
    Item15Label: TQRLabel;
    Item16Label: TQRLabel;
    Item17Label: TQRLabel;
    Item18Label: TQRLabel;
    Item19Label: TQRLabel;
    Item20Label: TQRLabel;
    Item21Label: TQRLabel;
    Item22Label: TQRLabel;
    ItemFee01: TQRExpr;
    ItemFee02: TQRDBText;
    ItemFee03: TQRDBText;
    ItemFee04: TQRDBText;
    ItemFee05: TQRDBText;
    ItemFee06: TQRDBText;
    ItemFee07: TQRDBText;
    ItemFee08: TQRDBText;
    ItemFee09: TQRDBText;
    ItemFee10: TQRDBText;
    ItemFee11: TQRDBText;
    ItemFee12: TQRDBText;
    ItemFee13: TQRExpr;
    ItemFee14: TQRExpr;
    QRShape14: TQRShape;
    QRLabel1: TQRLabel;
    QRExpr5: TQRExpr;
    QRLabel2: TQRLabel;
    QRDBRichText1: TQRDBRichText;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure preview(Time:String; Who:String);
  end;

var
  MonthRep: TMonthRep;

implementation

uses frmMonthRep, frmDM;

{$R *.dfm}


procedure TMonthRep.preview(Time:String; Who:String);
begin
  TimeLabel.Caption := Time;
  WhoLabel.Caption := Who;
  MonthReport.Preview;
end;

end.

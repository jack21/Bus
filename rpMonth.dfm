object MonthRep: TMonthRep
  Left = 0
  Top = 0
  Caption = 'MonthRep'
  ClientHeight = 765
  ClientWidth = 1592
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object MonthReport: TQuickRep
    Left = 8
    Top = 8
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = MonthRepForm.MonthDataSet
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #27161#26999#39636
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PrevShowThumbs = False
    PrevShowSearch = False
    PrevInitialZoom = qrZoomOther
    PreviewDefaultSaveType = stQRP
    object TitleBand: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 40
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = True
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object TimeLabel: TQRLabel
        Left = 0
        Top = 6
        Width = 201
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333340000
          0.000000000000000000
          15.875000000000000000
          531.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #26085#26399#65306#24180#26376
        Color = clWhite
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = #27161#26999#39636
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 16
      end
      object WhoLabel: TQRLabel
        Left = 445
        Top = 6
        Width = 273
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333340000
          1177.395833333333000000
          15.875000000000000000
          722.312500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #36554#34399#39381#39387
        Color = clWhite
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = #27161#26999#39636
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 16
      end
      object QRShape10: TQRShape
        Left = 0
        Top = 0
        Width = 1
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          105.833333333333300000
          0.000000000000000000
          0.000000000000000000
          1.322916666666667000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape11: TQRShape
        Left = 718
        Top = 0
        Width = 1
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          105.833333333333300000
          1899.708333333333000000
          0.000000000000000000
          1.322916666666667000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape12: TQRShape
        Left = 0
        Top = 0
        Width = 718
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1.322916666666667000
          0.000000000000000000
          0.000000000000000000
          1899.708333333333000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape13: TQRShape
        Left = 0
        Top = 40
        Width = 718
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1.322916666666667000
          0.000000000000000000
          105.833333333333300000
          1899.708333333333000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 78
      Width = 718
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = True
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        52.916666666666660000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel3: TQRLabel
        Left = 0
        Top = 0
        Width = 65
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          0.000000000000000000
          0.000000000000000000
          171.979166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #26085#26399
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel4: TQRLabel
        Left = 65
        Top = 0
        Width = 100
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          171.979166666666700000
          0.000000000000000000
          264.583333333333400000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #23458#25142#21517#31281
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel5: TQRLabel
        Left = 165
        Top = 0
        Width = 150
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          436.562499999999900000
          0.000000000000000000
          396.875000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #34892#31243
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel6: TQRLabel
        Left = 315
        Top = 0
        Width = 65
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          833.437500000000000000
          0.000000000000000000
          171.979166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #36554#36039
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel7: TQRLabel
        Left = 380
        Top = 0
        Width = 65
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          1005.416666666667000000
          0.000000000000000000
          171.979166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #36335#36027
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel8: TQRLabel
        Left = 445
        Top = 0
        Width = 65
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          1177.395833333333000000
          0.000000000000000000
          171.979166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #27833#36027
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel9: TQRLabel
        Left = 510
        Top = 0
        Width = 65
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          1349.375000000000000000
          0.000000000000000000
          171.979166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #20132#26381#36027
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel10: TQRLabel
        Left = 575
        Top = 0
        Width = 143
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          1521.354166666667000000
          0.000000000000000000
          378.354166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #20633#35387
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRShape4: TQRShape
        Left = 0
        Top = 20
        Width = 718
        Height = 0
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1.322916666666667000
          0.000000000000000000
          52.916666666666660000
          1899.708333333333000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape5: TQRShape
        Left = 718
        Top = 0
        Width = 0
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          1899.708333333333000000
          0.000000000000000000
          1.322916666666667000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape6: TQRShape
        Left = 0
        Top = 0
        Width = 0
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          0.000000000000000000
          0.000000000000000000
          1.322916666666667000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRPShape5: TQRPShape
        Left = 510
        Top = 0
        Width = 0
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          1349.375000000000000000
          0.000000000000000000
          1.322916666666667000)
        Pen.Color = clGray
        Shape = qrpsVertLine
        VertAdjust = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
      end
      object QRPShape6: TQRPShape
        Left = 575
        Top = 0
        Width = 1
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          1521.354166666667000000
          0.000000000000000000
          2.645833333333333000)
        Pen.Color = clGray
        Shape = qrpsVertLine
        VertAdjust = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
      end
      object QRPShape10: TQRPShape
        Left = 65
        Top = 0
        Width = 1
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          171.979166666666700000
          0.000000000000000000
          2.645833333333333000)
        Pen.Color = clGray
        Shape = qrpsVertLine
        VertAdjust = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
      end
      object QRPShape11: TQRPShape
        Left = 165
        Top = 0
        Width = 1
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          436.562499999999900000
          0.000000000000000000
          2.645833333333333000)
        Pen.Color = clGray
        Shape = qrpsVertLine
        VertAdjust = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
      end
      object QRPShape12: TQRPShape
        Left = 315
        Top = 0
        Width = 0
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          833.437500000000000000
          0.000000000000000000
          1.322916666666667000)
        Pen.Color = clGray
        Shape = qrpsVertLine
        VertAdjust = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
      end
      object QRPShape13: TQRPShape
        Left = 380
        Top = 0
        Width = 1
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          1005.416666666667000000
          0.000000000000000000
          2.645833333333333000)
        Pen.Color = clGray
        Shape = qrpsVertLine
        VertAdjust = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
      end
      object QRPShape14: TQRPShape
        Left = 445
        Top = 0
        Width = 0
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          1177.395833333333000000
          0.000000000000000000
          1.322916666666667000)
        Pen.Color = clGray
        Shape = qrpsVertLine
        VertAdjust = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
      end
    end
    object SummaryBand: TQRBand
      Left = 38
      Top = 118
      Width = 718
      Height = 422
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = True
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        1116.541666666667000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRPShape3: TQRPShape
        Left = 510
        Top = 0
        Width = 1
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          1349.375000000000000000
          0.000000000000000000
          1.322916666666667000)
        Pen.Color = clGray
        Shape = qrpsRectangle
        VertAdjust = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
      end
      object QRPShape4: TQRPShape
        Left = 575
        Top = 0
        Width = 1
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          1521.354166666667000000
          0.000000000000000000
          2.645833333333333000)
        Pen.Color = clGray
        Shape = qrpsRectangle
        VertAdjust = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
      end
      object QRPShape7: TQRPShape
        Left = 315
        Top = 0
        Width = 1
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          833.437500000000000000
          0.000000000000000000
          1.322916666666667000)
        Pen.Color = clGray
        Shape = qrpsRectangle
        VertAdjust = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
      end
      object QRPShape8: TQRPShape
        Left = 380
        Top = 0
        Width = 1
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          1005.416666666667000000
          0.000000000000000000
          1.322916666666667000)
        Pen.Color = clGray
        Shape = qrpsRectangle
        VertAdjust = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
      end
      object QRPShape9: TQRPShape
        Left = 445
        Top = 0
        Width = 1
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          1177.395833333333000000
          0.000000000000000000
          1.322916666666667000)
        Pen.Color = clGray
        Shape = qrpsRectangle
        VertAdjust = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
      end
      object Total01Label: TQRLabel
        Left = 0
        Top = 0
        Width = 315
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          0.000000000000000000
          0.000000000000000000
          833.437500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #21512#35336
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRExpr1: TQRExpr
        Left = 315
        Top = 0
        Width = 65
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          833.437500000000000000
          0.000000000000000000
          171.979166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 'SUM(MonthDataSet.Turnover)'
        ExportAs = exptText
        FontSize = 12
      end
      object QRExpr2: TQRExpr
        Left = 380
        Top = 0
        Width = 65
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          1005.416666666667000000
          0.000000000000000000
          171.979166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 'SUM(MonthDataSet.TravelExp)'
        ExportAs = exptText
        FontSize = 12
      end
      object QRExpr3: TQRExpr
        Left = 445
        Top = 0
        Width = 65
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          1177.395833333333000000
          0.000000000000000000
          171.979166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 'SUM(MonthDataSet.OilExp)'
        ExportAs = exptText
        FontSize = 12
      end
      object QRExpr4: TQRExpr
        Left = 510
        Top = 0
        Width = 65
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          1349.375000000000000000
          0.000000000000000000
          171.979166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 'SUM(MonthDataSet.Tips)'
        ExportAs = exptText
        FontSize = 12
      end
      object QRShape1: TQRShape
        Left = 718
        Top = 0
        Width = 1
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          1899.708333333333000000
          0.000000000000000000
          1.322916666666667000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape2: TQRShape
        Left = 0
        Top = 0
        Width = 1
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          0.000000000000000000
          0.000000000000000000
          1.322916666666667000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape3: TQRShape
        Left = 0
        Top = 20
        Width = 718
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1.322916666666667000
          0.000000000000000000
          52.916666666666660000
          1899.708333333333000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object Item01Label: TQRLabel
        Left = 0
        Top = 40
        Width = 120
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          0.000000000000000000
          105.833333333333300000
          317.500000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #38917#30446
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object Item03Label: TQRLabel
        Left = 240
        Top = 40
        Width = 120
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          635.000000000000000000
          105.833333333333300000
          317.500000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #25903#20986#37329#38989
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object Item04Label: TQRLabel
        Left = 360
        Top = 40
        Width = 120
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          952.500000000000000000
          105.833333333333300000
          317.500000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #38917#30446
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object Item05Label: TQRLabel
        Left = 480
        Top = 40
        Width = 120
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          1270.000000000000000000
          105.833333333333300000
          317.500000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #25910#20837#37329#38989
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object Item06Label: TQRLabel
        Left = 600
        Top = 40
        Width = 118
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          1587.500000000000000000
          105.833333333333300000
          312.208333333333400000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #25903#20986#37329#38989
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object Item02Label: TQRLabel
        Left = 120
        Top = 40
        Width = 120
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          317.500000000000000000
          105.833333333333300000
          317.500000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #25910#20837#37329#38989
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object LineHor01Shape: TQRShape
        Left = 0
        Top = 40
        Width = 718
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          105.833333333333300000
          1899.708333333333000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object LineVer01Shape: TQRShape
        Left = 0
        Top = 40
        Width = 1
        Height = 220
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          582.083333333333400000
          0.000000000000000000
          105.833333333333300000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object LineHor02Shape: TQRShape
        Left = 0
        Top = 60
        Width = 718
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          158.750000000000000000
          1899.708333333333000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object LineVer02Shape: TQRShape
        Left = 120
        Top = 40
        Width = 1
        Height = 220
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          582.083333333333400000
          317.500000000000000000
          105.833333333333300000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object LineVer03Shape: TQRShape
        Left = 240
        Top = 40
        Width = 1
        Height = 220
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          582.083333333333400000
          635.000000000000000000
          105.833333333333300000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object LineVer04Shape: TQRShape
        Left = 360
        Top = 40
        Width = 1
        Height = 220
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          582.083333333333400000
          952.500000000000000000
          105.833333333333300000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object LineVer05Shape: TQRShape
        Left = 480
        Top = 40
        Width = 1
        Height = 220
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          582.083333333333400000
          1270.000000000000000000
          105.833333333333300000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object LineVer06Shape: TQRShape
        Left = 600
        Top = 40
        Width = 1
        Height = 220
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          582.083333333333400000
          1587.500000000000000000
          105.833333333333300000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object LivnVer07Shape: TQRShape
        Left = 718
        Top = 40
        Width = 1
        Height = 220
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          582.083333333333400000
          1899.708333333333000000
          105.833333333333300000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object LineHor03Shape: TQRShape
        Left = 0
        Top = 80
        Width = 718
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          211.666666666666700000
          1899.708333333333000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object LineHor04Shape: TQRShape
        Left = 0
        Top = 100
        Width = 718
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          264.583333333333400000
          1899.708333333333000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object LineHor05Shape: TQRShape
        Left = 0
        Top = 120
        Width = 718
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          317.500000000000000000
          1899.708333333333000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object LineHor06Shape: TQRShape
        Left = 0
        Top = 140
        Width = 718
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          370.416666666666700000
          1899.708333333333000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object LineHor07Shape: TQRShape
        Left = 0
        Top = 160
        Width = 718
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          423.333333333333300000
          1899.708333333333000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object LineHor08Shape: TQRShape
        Left = 0
        Top = 180
        Width = 718
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          476.250000000000000000
          1899.708333333333000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object LineHor09Shape: TQRShape
        Left = 0
        Top = 200
        Width = 718
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          529.166666666666800000
          1899.708333333333000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object LineHor10Shape: TQRShape
        Left = 0
        Top = 220
        Width = 718
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          582.083333333333400000
          1899.708333333333000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object LineHor11Shape: TQRShape
        Left = 0
        Top = 240
        Width = 718
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          635.000000000000000000
          1899.708333333333000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object LineHor12Shape: TQRShape
        Left = 0
        Top = 260
        Width = 718
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          687.916666666666800000
          1899.708333333333000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object Item07Label: TQRLabel
        Left = 0
        Top = 60
        Width = 120
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          0.000000000000000000
          158.750000000000000000
          317.500000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #29151#26989#25910#20837
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object Item08Label: TQRLabel
        Left = 0
        Top = 80
        Width = 120
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          0.000000000000000000
          211.666666666666700000
          317.500000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #34892#36027
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object Item09Label: TQRLabel
        Left = 0
        Top = 100
        Width = 120
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          0.000000000000000000
          264.583333333333400000
          317.500000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #31237#37329
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object Item10Label: TQRLabel
        Left = 0
        Top = 120
        Width = 120
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          0.000000000000000000
          317.500000000000000000
          317.500000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #21496#27231#34218#36039
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object Item11Label: TQRLabel
        Left = 0
        Top = 140
        Width = 120
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          0.000000000000000000
          370.416666666666700000
          317.500000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #26381#21209#21729#34218#36039
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object Item12Label: TQRLabel
        Left = 0
        Top = 160
        Width = 120
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          0.000000000000000000
          423.333333333333300000
          317.500000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #20844#26371#26371#36027
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object Item13Label: TQRLabel
        Left = 0
        Top = 180
        Width = 120
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          0.000000000000000000
          476.250000000000000000
          317.500000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #29123#26009#21450#29260#29031#31237
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object Item14Label: TQRLabel
        Left = 0
        Top = 200
        Width = 120
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          0.000000000000000000
          529.166666666666800000
          317.500000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #36942#36335#21450#20572#36554#36027
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object Item15Label: TQRLabel
        Left = 0
        Top = 220
        Width = 120
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          0.000000000000000000
          582.083333333333400000
          317.500000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #27833#36027
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object Item16Label: TQRLabel
        Left = 0
        Top = 240
        Width = 120
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          0.000000000000000000
          635.000000000000000000
          317.500000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #20462#29702#36027
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object Item17Label: TQRLabel
        Left = 360
        Top = 60
        Width = 120
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          952.500000000000000000
          158.750000000000000000
          317.500000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #38620#36027
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object Item18Label: TQRLabel
        Left = 360
        Top = 80
        Width = 120
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          952.500000000000000000
          211.666666666666700000
          317.500000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #20132#26381#36027
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object Item19Label: TQRLabel
        Left = 360
        Top = 100
        Width = 120
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          952.500000000000000000
          264.583333333333400000
          317.500000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #34892#21205#38651#35441
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object Item20Label: TQRLabel
        Left = 360
        Top = 120
        Width = 120
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          952.500000000000000000
          317.500000000000000000
          317.500000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #21214#20581#20445
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object Item21Label: TQRLabel
        Left = 360
        Top = 140
        Width = 120
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          952.500000000000000000
          370.416666666666700000
          317.500000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #31449#36027#21450#27927#36554
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object Item22Label: TQRLabel
        Left = 360
        Top = 240
        Width = 120
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          952.500000000000000000
          635.000000000000000000
          317.500000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #21512#35336
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object ItemFee01: TQRExpr
        Left = 120
        Top = 60
        Width = 120
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          317.500000000000000000
          158.750000000000000000
          317.500000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 'SUM(MonthDataSet.Turnover)'
        ExportAs = exptText
        FontSize = 12
      end
      object ItemFee02: TQRDBText
        Left = 240
        Top = 80
        Width = 120
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          635.000000000000000000
          211.666666666666700000
          317.500000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = MonthRepForm.ExpDataSet
        DataField = 'MemberFee'
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object ItemFee03: TQRDBText
        Left = 240
        Top = 100
        Width = 120
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          635.000000000000000000
          264.583333333333400000
          317.500000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = MonthRepForm.ExpDataSet
        DataField = 'Tax'
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object ItemFee04: TQRDBText
        Left = 240
        Top = 120
        Width = 120
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          635.000000000000000000
          317.500000000000000000
          317.500000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = MonthRepForm.ExpDataSet
        DataField = 'DriverSalary'
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object ItemFee05: TQRDBText
        Left = 240
        Top = 140
        Width = 120
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          635.000000000000000000
          370.416666666666700000
          317.500000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = MonthRepForm.ExpDataSet
        DataField = 'ServiceSalary'
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object ItemFee06: TQRDBText
        Left = 240
        Top = 160
        Width = 120
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          635.000000000000000000
          423.333333333333300000
          317.500000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = MonthRepForm.ExpDataSet
        DataField = 'UnionFee'
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object ItemFee07: TQRDBText
        Left = 240
        Top = 180
        Width = 120
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          635.000000000000000000
          476.250000000000000000
          317.500000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = MonthRepForm.ExpDataSet
        DataField = 'LicenceTax'
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object ItemFee08: TQRDBText
        Left = 240
        Top = 200
        Width = 120
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          635.000000000000000000
          529.166666666666800000
          317.500000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = MonthRepForm.ExpDataSet
        DataField = 'ParkFee'
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object ItemFee09: TQRDBText
        Left = 240
        Top = 240
        Width = 120
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          635.000000000000000000
          635.000000000000000000
          317.500000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = MonthRepForm.ExpDataSet
        DataField = 'FixFee'
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object ItemFee10: TQRDBText
        Left = 600
        Top = 60
        Width = 118
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          1587.500000000000000000
          158.750000000000000000
          312.208333333333400000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = MonthRepForm.ExpDataSet
        DataField = 'Incidental'
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object ItemFee11: TQRDBText
        Left = 600
        Top = 100
        Width = 118
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          1587.500000000000000000
          264.583333333333400000
          312.208333333333400000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = MonthRepForm.ExpDataSet
        DataField = 'Cellphone'
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object ItemFee12: TQRDBText
        Left = 600
        Top = 120
        Width = 118
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          1587.500000000000000000
          317.500000000000000000
          312.208333333333400000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = MonthRepForm.ExpDataSet
        DataField = 'Insurance'
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object ItemFee13: TQRExpr
        Left = 600
        Top = 240
        Width = 118
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          1587.500000000000000000
          635.000000000000000000
          312.208333333333400000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 'ExpDataSet.Tax'
        ExportAs = exptText
        FontSize = 12
      end
      object ItemFee14: TQRExpr
        Left = 480
        Top = 240
        Width = 120
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          1270.000000000000000000
          635.000000000000000000
          317.500000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 'SUM(MonthDataSet.Turnover)'
        ExportAs = exptText
        FontSize = 12
      end
      object QRShape14: TQRShape
        Left = 0
        Top = 280
        Width = 718
        Height = 120
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          317.500000000000000000
          0.000000000000000000
          740.833333333333400000
          1899.708333333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel1: TQRLabel
        Left = 0
        Top = 260
        Width = 81
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          0.000000000000000000
          687.916666666666800000
          214.312500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #26412#26376#30408#39192#65306
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRExpr5: TQRExpr
        Left = 80
        Top = 260
        Width = 120
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          211.666666666666700000
          687.916666666666800000
          317.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 'SUM(MonthDataSet.Turnover)'
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel2: TQRLabel
        Left = 0
        Top = 280
        Width = 49
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          0.000000000000000000
          740.833333333333400000
          129.645833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #20633#35387#65306
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRDBRichText1: TQRDBRichText
        Left = 0
        Top = 300
        Width = 718
        Height = 100
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          264.583333333333400000
          0.000000000000000000
          793.750000000000000000
          1899.708333333333000000)
        Alignment = taLeftJustify
        AutoStretch = False
        Color = clWindow
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #27161#26999#39636
        Font.Style = []
        DataField = 'Note'
        DataSet = MonthRepForm.ExpDataSet
      end
    end
    object DetailBand: TQRPBand
      Left = 38
      Top = 98
      Width = 718
      Height = 20
      Frame.Color = clGray
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = True
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        52.916666666666660000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      AlwaysUseSpace = False
      NotOnFirstPage = False
      NotOnLastPage = False
      object QRDBText1: TQRPDBText
        Left = 0
        Top = 1
        Width = 65
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          0.000000000000000000
          1.322916666666667000
          171.979166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = MonthRepForm.MonthDataSet
        DataField = 'ShortTravelDate'
        Transparent = True
        WordWrap = False
        ExportAs = exptText
        SuppressRepeatedValues = False
        ReprintOnNewPage = False
        ReprintOnNewGroup = False
        BlankIfZero = False
        FixBottomPosition = False
        StretchHeightWithBand = False
        FontSize = 12
      end
      object Shape2: TQRPShape
        Left = 65
        Top = 0
        Width = 1
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          171.979166666666700000
          0.000000000000000000
          2.645833333333333000)
        Pen.Color = clGray
        Shape = qrpsVertLine
        VertAdjust = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
      end
      object QRDBText2: TQRPDBText
        Left = 65
        Top = 0
        Width = 100
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          171.979166666666700000
          0.000000000000000000
          264.583333333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = MonthRepForm.MonthDataSet
        DataField = 'Custom'
        Transparent = True
        WordWrap = False
        ExportAs = exptText
        SuppressRepeatedValues = False
        ReprintOnNewPage = False
        ReprintOnNewGroup = False
        BlankIfZero = False
        FixBottomPosition = False
        StretchHeightWithBand = False
        FontSize = 12
      end
      object Shape3: TQRPShape
        Left = 165
        Top = 0
        Width = 1
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          436.562499999999900000
          0.000000000000000000
          2.645833333333333000)
        Pen.Color = clGray
        Shape = qrpsVertLine
        VertAdjust = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
      end
      object QRDBText3: TQRPDBText
        Left = 164
        Top = 0
        Width = 151
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          433.916666666666800000
          0.000000000000000000
          399.520833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = MonthRepForm.MonthDataSet
        DataField = 'Travel'
        Transparent = True
        WordWrap = False
        ExportAs = exptText
        SuppressRepeatedValues = False
        ReprintOnNewPage = False
        ReprintOnNewGroup = False
        BlankIfZero = False
        FixBottomPosition = False
        StretchHeightWithBand = False
        FontSize = 12
      end
      object Shape4: TQRPShape
        Left = 315
        Top = 0
        Width = 1
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          833.437500000000000000
          0.000000000000000000
          1.322916666666667000)
        Pen.Color = clGray
        Shape = qrpsVertLine
        VertAdjust = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
      end
      object QRDBText4: TQRPDBText
        Left = 315
        Top = 0
        Width = 65
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          833.437500000000000000
          0.000000000000000000
          171.979166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = MonthRepForm.MonthDataSet
        DataField = 'Turnover'
        Transparent = True
        WordWrap = False
        ExportAs = exptText
        SuppressRepeatedValues = False
        ReprintOnNewPage = False
        ReprintOnNewGroup = False
        BlankIfZero = False
        FixBottomPosition = False
        StretchHeightWithBand = False
        FontSize = 12
      end
      object Shape5: TQRPShape
        Left = 380
        Top = 0
        Width = 1
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          1005.416666666667000000
          0.000000000000000000
          2.645833333333333000)
        Pen.Color = clGray
        Shape = qrpsVertLine
        VertAdjust = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
      end
      object QRDBText5: TQRPDBText
        Left = 380
        Top = 0
        Width = 65
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          1005.416666666667000000
          0.000000000000000000
          171.979166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = MonthRepForm.MonthDataSet
        DataField = 'TravelExp'
        Transparent = True
        WordWrap = False
        ExportAs = exptText
        SuppressRepeatedValues = False
        ReprintOnNewPage = False
        ReprintOnNewGroup = False
        BlankIfZero = False
        FixBottomPosition = False
        StretchHeightWithBand = False
        FontSize = 12
      end
      object Shape6: TQRPShape
        Left = 445
        Top = 0
        Width = 1
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          1177.395833333333000000
          0.000000000000000000
          1.322916666666667000)
        Pen.Color = clGray
        Shape = qrpsVertLine
        VertAdjust = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
      end
      object QRPShape1: TQRPShape
        Left = 510
        Top = 0
        Width = 1
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          1349.375000000000000000
          0.000000000000000000
          1.322916666666667000)
        Pen.Color = clGray
        Shape = qrpsVertLine
        VertAdjust = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
      end
      object QRPShape2: TQRPShape
        Left = 575
        Top = 0
        Width = 1
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          1521.354166666667000000
          0.000000000000000000
          2.645833333333333000)
        Pen.Color = clGray
        Shape = qrpsVertLine
        VertAdjust = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
      end
      object QRPDBText1: TQRPDBText
        Left = 445
        Top = 0
        Width = 65
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          1177.395833333333000000
          0.000000000000000000
          171.979166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = MonthRepForm.MonthDataSet
        DataField = 'OilExp'
        Transparent = True
        WordWrap = False
        ExportAs = exptText
        SuppressRepeatedValues = False
        ReprintOnNewPage = False
        ReprintOnNewGroup = False
        BlankIfZero = False
        FixBottomPosition = False
        StretchHeightWithBand = False
        FontSize = 12
      end
      object QRPDBText2: TQRPDBText
        Left = 510
        Top = 0
        Width = 65
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          1349.375000000000000000
          0.000000000000000000
          171.979166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = MonthRepForm.MonthDataSet
        DataField = 'Tips'
        Transparent = True
        WordWrap = False
        ExportAs = exptText
        SuppressRepeatedValues = False
        ReprintOnNewPage = False
        ReprintOnNewGroup = False
        BlankIfZero = False
        FixBottomPosition = False
        StretchHeightWithBand = False
        FontSize = 12
      end
      object QRPDBText3: TQRPDBText
        Left = 575
        Top = 0
        Width = 143
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          1521.354166666667000000
          0.000000000000000000
          378.354166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = MonthRepForm.MonthDataSet
        DataField = 'Note'
        Transparent = True
        WordWrap = False
        ExportAs = exptText
        SuppressRepeatedValues = False
        ReprintOnNewPage = False
        ReprintOnNewGroup = False
        BlankIfZero = False
        FixBottomPosition = False
        StretchHeightWithBand = False
        FontSize = 12
      end
      object QRShape7: TQRShape
        Left = 0
        Top = 20
        Width = 718
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1.322916666666667000
          0.000000000000000000
          52.916666666666660000
          1899.708333333333000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 718
        Top = 0
        Width = 1
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          1899.708333333333000000
          0.000000000000000000
          1.322916666666667000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape9: TQRShape
        Left = 0
        Top = 0
        Width = 1
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          0.000000000000000000
          0.000000000000000000
          1.322916666666667000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
    end
  end
end

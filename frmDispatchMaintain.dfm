object DispatchMaintainForm: TDispatchMaintainForm
  Left = 271
  Top = 287
  Width = 553
  Height = 483
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #36554#36635#37197#32929#36039#26009
  Color = clBtnFace
  Font.Charset = CHINESEBIG5_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #26032#32048#26126#39636
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  PixelsPerInch = 96
  TextHeight = 12
  object wwDBGrid1: TwwDBGrid
    Left = 8
    Top = 16
    Width = 217
    Height = 306
    DittoAttributes.ShortCutDittoField = 0
    DittoAttributes.ShortCutDittoRecord = 0
    DittoAttributes.Options = []
    DisableThemesInTitle = False
    Selected.Strings = (
      'BusNumber'#9'8'#9#36554#34399
      'PersonCount'#9'10'#9#25237#36039#20154#25976)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = BusDS
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleAlignment = taCenter
    TitleFont.Charset = CHINESEBIG5_CHARSET
    TitleFont.Color = clBlue
    TitleFont.Height = -12
    TitleFont.Name = #26032#32048#26126#39636
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object wwDBGrid2: TwwDBGrid
    Left = 240
    Top = 16
    Width = 289
    Height = 120
    DittoAttributes.ShortCutDittoField = 0
    DittoAttributes.ShortCutDittoRecord = 0
    DittoAttributes.Options = []
    DisableThemesInTitle = False
    ControlType.Strings = (
      'Numerator;CustomEdit;wwDBSpinEdit1;T')
    Selected.Strings = (
      'BusNum'#9'8'#9#36554#34399#9#9
      'Investor'#9'10'#9#25237#36039#20154#9#9
      'Numerator'#9'10'#9#37197#32929#27604#20363#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = InvestorDS
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = CHINESEBIG5_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = #26032#32048#26126#39636
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object wwDBSpinEdit1: TwwDBSpinEdit
    Left = 336
    Top = 72
    Width = 64
    Height = 20
    Increment = 1.000000000000000000
    TabOrder = 2
    UnboundDataType = wwDefault
  end
  object Bus: TADOQuery
    Connection = DM.DBConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select B.BusNumber, Count(D.Investor) As PersonCount '
      'From Bus B'
      'Left Join Dispatch D'
      'On B.BusNumber=D.BusNum'
      'Group By B.BusNumber'
      'Order By B.BusNumber')
    Left = 136
    Top = 8
    object BusBusNumber: TWideStringField
      DisplayLabel = #36554#34399
      DisplayWidth = 8
      FieldName = 'BusNumber'
      Size = 8
    end
    object BusPersonCount: TIntegerField
      DisplayLabel = #25237#36039#20154#25976
      DisplayWidth = 10
      FieldName = 'PersonCount'
    end
  end
  object Investor: TADOQuery
    Connection = DM.DBConn
    CursorType = ctStatic
    DataSource = BusDS
    Parameters = <
      item
        Name = 'BusNumber'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = 'CC-137'
      end>
    SQL.Strings = (
      'Select *'
      'From Dispatch'
      'Where BusNum=:BusNumber')
    Left = 376
    object InvestorNo: TAutoIncField
      FieldName = 'No'
      ReadOnly = True
    end
    object InvestorBusNum: TWideStringField
      FieldName = 'BusNum'
      Size = 50
    end
    object InvestorInvestor: TWideStringField
      FieldName = 'Investor'
      Size = 10
    end
    object InvestorNumerator: TIntegerField
      FieldName = 'Numerator'
    end
    object InvestorDenominator: TIntegerField
      FieldName = 'Denominator'
    end
  end
  object BusDS: TDataSource
    DataSet = Bus
    Left = 168
    Top = 8
  end
  object InvestorDS: TDataSource
    DataSet = Investor
    Left = 408
  end
end

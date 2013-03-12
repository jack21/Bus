object DayForm: TDayForm
  Left = 261
  Top = 202
  Caption = #26085#35352#24115#26126#32048#34920
  ClientHeight = 440
  ClientWidth = 786
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object Panel1: TPanel
    Left = 0
    Top = 368
    Width = 786
    Height = 72
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object InsertBtn: TButton
      Left = 12
      Top = 16
      Width = 113
      Height = 41
      Caption = #26032#22686#34892#31243
      ImageIndex = 2
      Images = DM.ImageList1
      TabOrder = 0
      OnClick = InsertBtnClick
    end
    object DelBtn: TButton
      Left = 131
      Top = 16
      Width = 113
      Height = 41
      Caption = #21034#38500#34892#31243
      ImageIndex = 3
      Images = DM.ImageList1
      TabOrder = 1
      OnClick = DelBtnClick
    end
    object EditBtn: TButton
      Left = 250
      Top = 16
      Width = 113
      Height = 41
      Caption = #20462#25913#34892#31243
      ImageIndex = 0
      Images = DM.ImageList1
      TabOrder = 2
      OnClick = EditBtnClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 786
    Height = 57
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object PreDayBtn: TSpeedButton
      Left = 175
      Top = 16
      Width = 46
      Height = 27
      Caption = #8592
      OnClick = PreDayBtnClick
    end
    object YesterdayBtn: TSpeedButton
      Left = 227
      Top = 16
      Width = 46
      Height = 27
      Caption = #26152#22825
      OnClick = YesterdayBtnClick
    end
    object TodayBtn: TSpeedButton
      Left = 279
      Top = 16
      Width = 46
      Height = 27
      Caption = #20170#22825
      OnClick = TodayBtnClick
    end
    object TomorrowBtn: TSpeedButton
      Left = 331
      Top = 16
      Width = 46
      Height = 27
      Caption = #26126#22825
      OnClick = TomorrowBtnClick
    end
    object NextDayBtn: TSpeedButton
      Left = 384
      Top = 16
      Width = 46
      Height = 27
      Caption = #8594
      OnClick = NextDayBtnClick
    end
    object DateTimePicker: TDateTimePicker
      Left = 17
      Top = 16
      Width = 152
      Height = 27
      Date = 37737.695225509260000000
      Time = 37737.695225509260000000
      DateFormat = dfLong
      TabOrder = 0
      OnChange = DateTimePickerChange
    end
  end
  object TravelGrid: TDBGrid
    Left = 0
    Top = 57
    Width = 786
    Height = 311
    Align = alClient
    DataSource = DayDS
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'BusNumber'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = #36554#34399
        Width = 85
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Groups'
        Title.Alignment = taCenter
        Title.Caption = #22296#34399
        Width = 81
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Custom'
        Title.Alignment = taCenter
        Title.Caption = #23458#25142#21517#31281
        Width = 151
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Travel'
        Title.Alignment = taCenter
        Title.Caption = #34892#31243
        Width = 213
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Turnover'
        Title.Alignment = taCenter
        Title.Caption = #36554#36039
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TravelExp'
        Title.Alignment = taCenter
        Title.Caption = #36335#36027
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OilExp'
        Title.Alignment = taCenter
        Title.Caption = #27833#37329
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tips'
        Title.Alignment = taCenter
        Title.Caption = #20132#26381#36027
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tips2'
        Title.Alignment = taCenter
        Title.Caption = #23567#36027
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Note'
        Title.Alignment = taCenter
        Title.Caption = #20633#35387
        Width = 222
        Visible = True
      end>
  end
  object DayDS: TDataSource
    DataSet = DayDataSet
    OnDataChange = DayDSDataChange
    Left = 720
    Top = 8
  end
  object DayDataSet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DayProvider'
    Left = 648
    Top = 8
    object DayDataSetTravelId: TIntegerField
      FieldName = 'TravelId'
      Required = True
    end
    object DayDataSetBusNumber: TWideStringField
      FieldName = 'BusNumber'
      Size = 8
    end
    object DayDataSetTravelDate: TDateField
      FieldName = 'TravelDate'
    end
    object DayDataSetCustom: TWideStringField
      FieldName = 'Custom'
      Size = 30
    end
    object DayDataSetTravel: TWideStringField
      FieldName = 'Travel'
      Size = 50
    end
    object DayDataSetGroups: TWideStringField
      FieldName = 'Groups'
      Size = 50
    end
    object DayDataSetTurnover: TIntegerField
      FieldName = 'Turnover'
      OnGetText = DayDataSetGetText
    end
    object DayDataSetTurnover2: TIntegerField
      FieldName = 'Turnover2'
      OnGetText = DayDataSetGetText
    end
    object DayDataSetTravelExp: TIntegerField
      FieldName = 'TravelExp'
      OnGetText = DayDataSetGetText
    end
    object DayDataSetOilExp: TIntegerField
      FieldName = 'OilExp'
      OnGetText = DayDataSetGetText
    end
    object DayDataSetFirstIncome: TIntegerField
      FieldName = 'FirstIncome'
      OnGetText = DayDataSetGetText
    end
    object DayDataSetFirstIncomeDate: TDateField
      FieldName = 'FirstIncomeDate'
    end
    object DayDataSetSecondIncome: TIntegerField
      FieldName = 'SecondIncome'
      OnGetText = DayDataSetGetText
    end
    object DayDataSetSecondIncomeDate: TDateField
      FieldName = 'SecondIncomeDate'
    end
    object DayDataSetTips: TIntegerField
      FieldName = 'Tips'
      OnGetText = DayDataSetGetText
    end
    object DayDataSetTips2: TIntegerField
      FieldName = 'Tips2'
      OnGetText = DayDataSetGetText
    end
    object DayDataSetNote: TWideStringField
      FieldName = 'Note'
      Size = 50
    end
    object DayDataSetNote2: TWideStringField
      FieldName = 'Note2'
      Size = 50
    end
    object DayDataSetStartTime: TWideStringField
      FieldName = 'StartTime'
      Size = 5
    end
    object DayDataSetEndTime: TWideStringField
      FieldName = 'EndTime'
      Size = 5
    end
  end
  object DayProvider: TDataSetProvider
    DataSet = DayQuery
    UpdateMode = upWhereKeyOnly
    Left = 576
    Top = 8
  end
  object DayQuery: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'Years'
        ParamType = ptInput
        Size = 5
        Value = '2009'
      end
      item
        DataType = ftString
        Name = 'Months'
        ParamType = ptInput
        Size = 2
        Value = '5'
      end
      item
        DataType = ftString
        Name = 'Days'
        ParamType = ptInput
        Size = 2
        Value = '1'
      end>
    SQL.Strings = (
      'Select *'
      'From Travel'
      
        'Where Year(TravelDate) = :Years and Month(TravelDate) = :Months ' +
        'and Day(TravelDate) = :Days'
      '')
    SQLConnection = DM.SQLConn
    Left = 504
    Top = 8
    object DayQueryTravelId: TIntegerField
      FieldName = 'TravelId'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DayQueryBusNumber: TWideStringField
      FieldName = 'BusNumber'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object DayQueryTravelDate: TDateField
      FieldName = 'TravelDate'
      ProviderFlags = [pfInUpdate]
    end
    object DayQueryCustom: TWideStringField
      FieldName = 'Custom'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object DayQueryTravel: TWideStringField
      FieldName = 'Travel'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object DayQueryGroups: TWideStringField
      FieldName = 'Groups'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object DayQueryTurnover: TIntegerField
      FieldName = 'Turnover'
      ProviderFlags = [pfInUpdate]
    end
    object DayQueryTurnover2: TIntegerField
      FieldName = 'Turnover2'
      ProviderFlags = [pfInUpdate]
    end
    object DayQueryTravelExp: TIntegerField
      FieldName = 'TravelExp'
      ProviderFlags = [pfInUpdate]
    end
    object DayQueryOilExp: TIntegerField
      FieldName = 'OilExp'
      ProviderFlags = [pfInUpdate]
    end
    object DayQueryFirstIncome: TIntegerField
      FieldName = 'FirstIncome'
      ProviderFlags = [pfInUpdate]
    end
    object DayQueryFirstIncomeDate: TDateField
      FieldName = 'FirstIncomeDate'
      ProviderFlags = [pfInUpdate]
    end
    object DayQuerySecondIncome: TIntegerField
      FieldName = 'SecondIncome'
      ProviderFlags = [pfInUpdate]
    end
    object DayQuerySecondIncomeDate: TDateField
      FieldName = 'SecondIncomeDate'
      ProviderFlags = [pfInUpdate]
    end
    object DayQueryTips: TIntegerField
      FieldName = 'Tips'
      ProviderFlags = [pfInUpdate]
    end
    object DayQueryTips2: TIntegerField
      FieldName = 'Tips2'
      ProviderFlags = [pfInUpdate]
    end
    object DayQueryNote: TWideStringField
      FieldName = 'Note'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object DayQueryNote2: TWideStringField
      FieldName = 'Note2'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object DayQueryStartTime: TWideStringField
      FieldName = 'StartTime'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object DayQueryEndTime: TWideStringField
      FieldName = 'EndTime'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
  end
end

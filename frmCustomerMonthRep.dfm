object CustomerMonthRepForm: TCustomerMonthRepForm
  Left = 268
  Top = 221
  Caption = #23458#25142#26376#22577#34920
  ClientHeight = 475
  ClientWidth = 907
  Color = clBtnFace
  Constraints.MinHeight = 300
  Constraints.MinWidth = 600
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
    Top = 0
    Width = 907
    Height = 145
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 10
      Top = 63
      Width = 48
      Height = 19
      Caption = #23458#25142#65306
    end
    object BusLookup: TwwDBLookupCombo
      Left = 64
      Top = 60
      Width = 112
      Height = 27
      Ctl3D = True
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'Custom'#9'30'#9#23458#25142#9'F')
      LookupTable = CustomDataSet
      LookupField = 'Custom'
      Options = [loColLines, loRowLines, loTitles]
      DropDownCount = 16
      ParentCtl3D = False
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnBeforeDropDown = BusLookupBeforeDropDown
      OnKeyDown = BusLookupKeyDown
    end
    object GroupBox1: TGroupBox
      Left = 200
      Top = 8
      Width = 281
      Height = 121
      Caption = #26178#38291
      TabOrder = 1
      object Label3: TLabel
        Left = 127
        Top = 22
        Width = 16
        Height = 19
        Caption = #24180
      end
      object Label4: TLabel
        Left = 243
        Top = 22
        Width = 16
        Height = 19
        Caption = #26376
      end
      object YearEdit: TEdit
        Left = 40
        Top = 20
        Width = 81
        Height = 25
        Ctl3D = False
        NumbersOnly = True
        ParentCtl3D = False
        TabOrder = 0
      end
      object MonthBox: TComboBox
        Left = 152
        Top = 19
        Width = 81
        Height = 27
        Style = csDropDownList
        Ctl3D = True
        ItemHeight = 19
        ParentCtl3D = False
        TabOrder = 1
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11'
          '12')
      end
      object StartTime: TDateTimePicker
        Left = 39
        Top = 53
        Width = 107
        Height = 27
        Date = 38081.074581157410000000
        Time = 38081.074581157410000000
        TabOrder = 2
      end
      object EndTime: TDateTimePicker
        Left = 152
        Top = 53
        Width = 107
        Height = 27
        Date = 38081.074581157410000000
        Time = 38081.074581157410000000
        TabOrder = 3
      end
      object RadioButton1: TRadioButton
        Left = 17
        Top = 23
        Width = 17
        Height = 17
        Checked = True
        TabOrder = 4
        TabStop = True
      end
      object RadioButton2: TRadioButton
        Left = 17
        Top = 57
        Width = 17
        Height = 17
        TabOrder = 5
      end
      object RadioButton3: TRadioButton
        Left = 17
        Top = 91
        Width = 17
        Height = 17
        TabOrder = 6
      end
      object GroupLookup: TwwDBLookupCombo
        Left = 40
        Top = 86
        Width = 219
        Height = 27
        Ctl3D = True
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'Groups'#9'20'#9#22296#34399#9'T'#9
          'Count'#9'10'#9#34892#31243#25976#9'F')
        LookupTable = GroupDataSet
        LookupField = 'Groups'
        Options = [loColLines, loRowLines, loTitles]
        DropDownCount = 16
        ParentCtl3D = False
        TabOrder = 7
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnBeforeDropDown = GroupLookupBeforeDropDown
        OnKeyDown = BusLookupKeyDown
      end
    end
    object OKBtn: TButton
      Left = 504
      Top = 52
      Width = 84
      Height = 43
      Caption = #30906#23450
      ImageIndex = 0
      Images = DM.ImageList1
      TabOrder = 2
      OnClick = OKBtnClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 406
    Width = 907
    Height = 69
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      907
      69)
    object CountLabel: TLabel
      Left = 24
      Top = 24
      Width = 129
      Height = 25
      AutoSize = False
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object GroupBtn: TButton
      Left = 682
      Top = 14
      Width = 105
      Height = 43
      Anchors = [akTop, akRight]
      Caption = #22296#39636#22577#34920
      ImageIndex = 4
      Images = DM.ImageList1
      TabOrder = 0
      OnClick = GroupBtnClick
    end
    object CustomBtn: TButton
      Left = 793
      Top = 14
      Width = 105
      Height = 43
      Anchors = [akTop, akRight]
      Caption = #38928#35261#22577#34920
      ImageIndex = 4
      Images = DM.ImageList1
      TabOrder = 1
      OnClick = CustomBtnClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 359
    Width = 907
    Height = 47
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    Visible = False
  end
  object MonthGrid: TDBGrid
    Left = 0
    Top = 145
    Width = 907
    Height = 214
    Align = alClient
    DataSource = MonthDS
    TabOrder = 3
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ShortTravelDate'
        Title.Alignment = taCenter
        Title.Caption = #26085#26399
        Width = 71
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Groups'
        Title.Alignment = taCenter
        Title.Caption = #22296#34399
        Width = 115
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'BusNumber'
        Title.Alignment = taCenter
        Title.Caption = #36554#34399
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Travel'
        Title.Alignment = taCenter
        Title.Caption = #34892#31243
        Width = 187
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'UseTime'
        Title.Alignment = taCenter
        Title.Caption = #20351#29992#26178#38291
        Width = 108
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Turnover2'
        Title.Alignment = taCenter
        Title.Caption = #36554#36039
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IncomeTotal'
        Title.Alignment = taCenter
        Title.Caption = #24050#25910
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NoIncome'
        Title.Alignment = taCenter
        Title.Caption = #26410#25910
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Note2'
        Title.Alignment = taCenter
        Title.Caption = #20633#35387
        Width = 168
        Visible = True
      end>
  end
  object MonthDS: TDataSource
    DataSet = MonthDataSet
    OnDataChange = MonthDSDataChange
    Left = 120
    Top = 264
  end
  object CustomDS: TDataSource
    DataSet = CustomDataSet
    Left = 24
    Top = 264
  end
  object RvProject: TRvProject
    Engine = RvSystem
    ProjectFile = 'CustomerMonth.rav'
    Left = 160
    Top = 416
  end
  object RvSystem: TRvSystem
    TitleSetup = #21015#21360#36984#38917
    TitleStatus = #22577#34920#29376#24907
    TitlePreview = #38928#35261#22577#34920
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.FormState = wsMaximized
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.Units = unCM
    SystemPrinter.UnitsFactor = 2.540000000000000000
    Left = 216
    Top = 416
  end
  object MonthConn: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = MonthDataSet
    Left = 288
    Top = 416
  end
  object MonthGroupConn: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = MonthGroupDataSet
    Left = 368
    Top = 416
  end
  object CustomDataSet: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLConn
    DataSet.CommandText = 'Select Distinct Custom'#13#10'From Travel'#13#10'Order By Custom'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 24
    Top = 208
    object CustomDataSetCustom: TWideStringField
      FieldName = 'Custom'
      Size = 30
    end
  end
  object MonthDataSet: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLConn
    DataSet.CommandText = 
      'Select *'#13#10'From Travel'#13#10'Where Custom = :Customer and'#13#10'      Year(' +
      'TravelDate) = :Years and'#13#10'      Month(TravelDate) = :Months'#13#10'Ord' +
      'er By TravelDate'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftWideString
        Name = 'Customer'
        ParamType = ptInput
        Value = '0'
      end
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
        Value = '6'
      end>
    Params = <>
    OnCalcFields = MonthDataSetCalcFields
    Left = 120
    Top = 208
    object MonthDataSetShortTravelDate: TStringField
      FieldKind = fkCalculated
      FieldName = 'ShortTravelDate'
      Calculated = True
    end
    object MonthDataSetGroups: TWideStringField
      FieldName = 'Groups'
      Size = 50
    end
    object MonthDataSetBusNumber: TWideStringField
      FieldName = 'BusNumber'
      Size = 8
    end
    object MonthDataSetTravel: TWideStringField
      FieldName = 'Travel'
      Size = 50
    end
    object MonthDataSetUseTime: TStringField
      FieldKind = fkCalculated
      FieldName = 'UseTime'
      Calculated = True
    end
    object MonthDataSetTurnover2: TIntegerField
      FieldName = 'Turnover2'
      OnGetText = MonthDataSetGetText
    end
    object MonthDataSetIncomeTotal: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'IncomeTotal'
      OnGetText = MonthDataSetGetText
      Calculated = True
    end
    object MonthDataSetNoIncome: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'NoIncome'
      OnGetText = MonthDataSetGetText
      Calculated = True
    end
    object MonthDataSetNote2: TWideStringField
      FieldName = 'Note2'
      Size = 50
    end
    object MonthDataSetTurnover: TIntegerField
      FieldName = 'Turnover'
      OnGetText = MonthDataSetGetText
    end
    object MonthDataSetNote: TWideStringField
      FieldName = 'Note'
      Size = 50
    end
    object MonthDataSetTravelDate: TDateField
      FieldName = 'TravelDate'
    end
    object MonthDataSetCustom: TWideStringField
      FieldName = 'Custom'
      Size = 30
    end
    object MonthDataSetTravelExp: TIntegerField
      FieldName = 'TravelExp'
      OnGetText = MonthDataSetGetText
    end
    object MonthDataSetOilExp: TIntegerField
      FieldName = 'OilExp'
      OnGetText = MonthDataSetGetText
    end
    object MonthDataSetTips: TIntegerField
      FieldName = 'Tips'
      OnGetText = MonthDataSetGetText
    end
    object MonthDataSetTravelId: TIntegerField
      FieldName = 'TravelId'
      Required = True
    end
    object MonthDataSetFirstIncome: TIntegerField
      FieldName = 'FirstIncome'
      OnGetText = MonthDataSetGetText
    end
    object MonthDataSetFirstIncomeDate: TDateField
      FieldName = 'FirstIncomeDate'
    end
    object MonthDataSetSecondIncome: TIntegerField
      FieldName = 'SecondIncome'
      OnGetText = MonthDataSetGetText
    end
    object MonthDataSetSecondIncomeDate: TDateField
      FieldName = 'SecondIncomeDate'
    end
    object MonthDataSetTips2: TIntegerField
      FieldName = 'Tips2'
      OnGetText = MonthDataSetGetText
    end
    object MonthDataSetStartTime: TWideStringField
      FieldName = 'StartTime'
      Size = 5
    end
    object MonthDataSetEndTime: TWideStringField
      FieldName = 'EndTime'
      Size = 5
    end
  end
  object MonthGroupDataSet: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLConn
    DataSet.CommandText = 'SELECT * FROM Travel'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = MonthGroupDataSetCalcFields
    Left = 224
    Top = 208
    object MonthGroupDataSetShortTravelDate: TStringField
      FieldKind = fkCalculated
      FieldName = 'ShortTravelDate'
      Calculated = True
    end
    object MonthGroupDataSetGroups: TWideStringField
      FieldName = 'Groups'
      Size = 50
    end
    object MonthGroupDataSetBusNumber: TWideStringField
      FieldName = 'BusNumber'
      Size = 8
    end
    object MonthGroupDataSetTravel: TWideStringField
      FieldName = 'Travel'
      Size = 50
    end
    object MonthGroupDataSetUseTime: TStringField
      FieldKind = fkCalculated
      FieldName = 'UseTime'
      Calculated = True
    end
    object MonthGroupDataSetTurnover2: TIntegerField
      FieldName = 'Turnover2'
    end
    object MonthGroupDataSetIncomeTotal: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'IncomeTotal'
      Calculated = True
    end
    object MonthGroupDataSetNoIncome: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'NoIncome'
      Calculated = True
    end
    object MonthGroupDataSetNote2: TWideStringField
      FieldName = 'Note2'
      Size = 50
    end
    object MonthGroupDataSetTurnover: TIntegerField
      FieldName = 'Turnover'
    end
    object MonthGroupDataSetNote: TWideStringField
      FieldName = 'Note'
      Size = 50
    end
    object MonthGroupDataSetTravelDate: TDateField
      FieldName = 'TravelDate'
    end
    object MonthGroupDataSetCustom: TWideStringField
      FieldName = 'Custom'
      Size = 30
    end
    object MonthGroupDataSetTravelExp: TIntegerField
      FieldName = 'TravelExp'
    end
    object MonthGroupDataSetOilExp: TIntegerField
      FieldName = 'OilExp'
    end
    object MonthGroupDataSetTips: TIntegerField
      FieldName = 'Tips'
    end
    object MonthGroupDataSetTravelId: TIntegerField
      FieldName = 'TravelId'
      Required = True
    end
    object MonthGroupDataSetFirstIncome: TIntegerField
      FieldName = 'FirstIncome'
    end
    object MonthGroupDataSetFirstIncomeDate: TDateField
      FieldName = 'FirstIncomeDate'
    end
    object MonthGroupDataSetSecondIncome: TIntegerField
      FieldName = 'SecondIncome'
    end
    object MonthGroupDataSetSecondIncomeDate: TDateField
      FieldName = 'SecondIncomeDate'
    end
    object MonthGroupDataSetTips2: TIntegerField
      FieldName = 'Tips2'
    end
    object MonthGroupDataSetStartTime: TWideStringField
      FieldName = 'StartTime'
      Size = 5
    end
    object MonthGroupDataSetEndTime: TWideStringField
      FieldName = 'EndTime'
      Size = 5
    end
  end
  object GroupDataSet: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLConn
    DataSet.CommandText = 
      'SELECT Groups, Count(*) As Count'#13#10'FROM Travel'#13#10'WHERE Groups <> '#39 +
      #39' and Custom=:Customs'#13#10'GROUP BY Groups'#13#10'ORDER BY Groups'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftString
        Name = 'Customs'
        ParamType = ptInput
        Size = 3
        Value = #39#39
      end>
    Params = <>
    Left = 328
    Top = 88
    object GroupDataSetGroups: TWideStringField
      DisplayLabel = #22296#34399
      DisplayWidth = 20
      FieldName = 'Groups'
      Size = 50
    end
    object GroupDataSetCount: TFMTBCDField
      DisplayLabel = #34892#31243#25976
      DisplayWidth = 10
      FieldName = 'Count'
      Required = True
      Precision = 21
      Size = 0
    end
  end
end

object MonthRepForm: TMonthRepForm
  Left = 150
  Top = 149
  Caption = #26376#22577#34920
  ClientHeight = 476
  ClientWidth = 939
  Color = clBtnFace
  Constraints.MinHeight = 500
  Constraints.MinWidth = 550
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
  object Splitter1: TSplitter
    Left = 0
    Top = 330
    Width = 939
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ExplicitTop = 65
    ExplicitWidth = 278
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 939
    Height = 65
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 20
      Width = 48
      Height = 19
      Caption = #36554#34399#65306
    end
    object Label2: TLabel
      Left = 200
      Top = 20
      Width = 48
      Height = 19
      Caption = #26178#38291#65306
    end
    object Label3: TLabel
      Left = 312
      Top = 20
      Width = 16
      Height = 19
      Caption = #24180
    end
    object Label4: TLabel
      Left = 405
      Top = 20
      Width = 16
      Height = 19
      Caption = #26376
    end
    object BusLookup: TwwDBLookupCombo
      Left = 70
      Top = 17
      Width = 89
      Height = 27
      AutoSize = False
      Ctl3D = True
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'BusNumber'#9'8'#9#36554#34399#9'F'
        'Driver'#9'10'#9#39381#39387#20154#9'F')
      LookupTable = DM.BusDataSet
      LookupField = 'BusNumber'
      Options = [loColLines, loRowLines, loTitles]
      ParentCtl3D = False
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
    object YearEdit: TEdit
      Left = 249
      Top = 18
      Width = 57
      Height = 25
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
    end
    object MonthBox: TComboBox
      Left = 334
      Top = 17
      Width = 65
      Height = 27
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 19
      ParentCtl3D = False
      TabOrder = 2
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
    object OKBtn: TButton
      Left = 440
      Top = 9
      Width = 83
      Height = 43
      Caption = #30906#23450
      ImageIndex = 0
      Images = DM.ImageList1
      TabOrder = 3
      OnClick = OKBtnClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 939
    Height = 265
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object MonthGrid: TDBGrid
      Left = 2
      Top = 2
      Width = 935
      Height = 261
      Align = alClient
      DataSource = MonthDS
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete]
      TabOrder = 0
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
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Custom'
          Title.Alignment = taCenter
          Title.Caption = #23458#25142#21517#31281
          Width = 154
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Travel'
          Title.Alignment = taCenter
          Title.Caption = #34892#31243
          Width = 254
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Turnover'
          Title.Alignment = taCenter
          Title.Caption = #36554#36039
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TravelExp'
          Title.Alignment = taCenter
          Title.Caption = #36335#36027
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OilExp'
          Title.Alignment = taCenter
          Title.Caption = #27833#37329
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Tips'
          Title.Alignment = taCenter
          Title.Caption = #20132#26381#36027
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FirstIncome'
          Title.Alignment = taCenter
          Title.Caption = #31532#19968#27425#25910#27454
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ShortFirstIncomeDate'
          Title.Alignment = taCenter
          Title.Caption = #25910#27454#26085#26399
          Width = 98
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SecondIncome'
          Title.Alignment = taCenter
          Title.Caption = #31532#20108#27425#25910#27454
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ShortSecondIncomeDate'
          Title.Alignment = taCenter
          Title.Caption = #25910#27454#26085#26399
          Width = 87
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
          FieldName = 'Note'
          Title.Alignment = taCenter
          Title.Caption = #20633#35387
          Width = 216
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 405
    Width = 939
    Height = 71
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    DesignSize = (
      939
      71)
    object MonthRepBtn: TButton
      Left = 771
      Top = 14
      Width = 145
      Height = 43
      Anchors = [akTop, akRight]
      Caption = #26376#22577#34920
      ImageIndex = 4
      Images = DM.ImageList1
      TabOrder = 0
      OnClick = MonthRepBtnClick
    end
    object PayRepBtn: TButton
      Left = 620
      Top = 14
      Width = 145
      Height = 43
      Anchors = [akTop, akRight]
      Caption = #25033#20184#24115#27454#26126#32048
      ImageIndex = 4
      Images = DM.ImageList1
      TabOrder = 1
      OnClick = PayRepBtnClick
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 333
    Width = 939
    Height = 72
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 3
    object ExpGrid: TDBGrid
      Left = 2
      Top = 2
      Width = 935
      Height = 68
      Align = alClient
      DataSource = ExpDS
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = ExpGridDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'MemberFee'
          Title.Alignment = taCenter
          Title.Caption = #34892#36027
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Tax'
          Title.Alignment = taCenter
          Title.Caption = #31237#37329
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DriverSalary'
          Title.Alignment = taCenter
          Title.Caption = #21496#27231#34218#36039
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ServiceSalary'
          Title.Alignment = taCenter
          Title.Caption = #26381#21209#21729#34218#36039
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UnionFee'
          Title.Alignment = taCenter
          Title.Caption = #20844#26371#26371#36027
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LicenceTax'
          Title.Alignment = taCenter
          Title.Caption = #29123#26009#21450#29260#29031#31237
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ParkFee'
          Title.Alignment = taCenter
          Title.Caption = #20572#36554#36027
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Toll'
          Title.Alignment = taCenter
          Title.Caption = #36942#36335#36027
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FixFee'
          Title.Alignment = taCenter
          Title.Caption = #20462#29702#36027
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Incidental'
          Title.Alignment = taCenter
          Title.Caption = #38620#38917
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cellphone'
          Title.Alignment = taCenter
          Title.Caption = #34892#21205#38651#35441
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Insurance'
          Title.Alignment = taCenter
          Title.Caption = #21214#20581#20445
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Reserve'
          Title.Alignment = taCenter
          Title.Caption = #31449#36027#27927#36554
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Reserve1'
          Title.Alignment = taCenter
          Title.Caption = #20445#30041#19968
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Reserve2'
          Title.Alignment = taCenter
          Title.Caption = #20445#30041#20108
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Reserve3'
          Title.Alignment = taCenter
          Title.Caption = #20445#30041#19977
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Reserve4'
          Title.Alignment = taCenter
          Title.Caption = #20445#30041#22235
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Reserve5'
          Title.Alignment = taCenter
          Title.Caption = #20445#30041#20116
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Reserve6'
          Title.Alignment = taCenter
          Title.Caption = #20445#30041#20845
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Reserve7'
          Title.Alignment = taCenter
          Title.Caption = #20445#30041#19971
          Visible = True
        end>
    end
  end
  object MonthDS: TDataSource
    DataSet = MonthDataSet
    OnDataChange = MonthDSDataChange
    Left = 632
    Top = 120
  end
  object RvProject1: TRvProject
    Engine = RaveSystem
    ProjectFile = 'Month.rav'
    Left = 176
    Top = 424
  end
  object MonthsConn: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = MonthDataSet
    Left = 40
    Top = 424
  end
  object ExpDS: TDataSource
    DataSet = ExpDataSet
    OnDataChange = ExpDSDataChange
    Left = 544
    Top = 120
  end
  object ExpConn: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = ExpDataSet
    Left = 352
    Top = 424
  end
  object RvProject2: TRvProject
    Engine = RaveSystem
    ProjectFile = 'Pay.rav'
    Left = 416
    Top = 424
  end
  object ExpDataSet: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLConn
    DataSet.CommandText = 
      'Select *'#13#10'From Exp'#13#10'Where Years=:myYear and Months=:myMonth and ' +
      'BusNumber=:BusNum'#13#10'Order By BusNumber'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftString
        Name = 'myYear'
        ParamType = ptInput
        Size = 5
        Value = '2009'
      end
      item
        DataType = ftString
        Name = 'myMonth'
        ParamType = ptInput
        Size = 2
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'BusNum'
        ParamType = ptInput
        Value = '111'
      end>
    Params = <>
    Left = 544
    Top = 64
    object ExpDataSetExpId: TIntegerField
      FieldName = 'ExpId'
      Required = True
    end
    object ExpDataSetBusNumber: TWideStringField
      FieldName = 'BusNumber'
      Size = 8
    end
    object ExpDataSetYears: TIntegerField
      FieldName = 'Years'
    end
    object ExpDataSetMonths: TIntegerField
      FieldName = 'Months'
    end
    object ExpDataSetMemberFee: TIntegerField
      FieldName = 'MemberFee'
      OnGetText = ExpDataSetGetText
    end
    object ExpDataSetTax: TIntegerField
      FieldName = 'Tax'
    end
    object ExpDataSetDriverSalary: TIntegerField
      FieldName = 'DriverSalary'
    end
    object ExpDataSetServiceSalary: TIntegerField
      FieldName = 'ServiceSalary'
    end
    object ExpDataSetUnionFee: TIntegerField
      FieldName = 'UnionFee'
    end
    object ExpDataSetLicenceTax: TIntegerField
      FieldName = 'LicenceTax'
    end
    object ExpDataSetParkFee: TIntegerField
      FieldName = 'ParkFee'
    end
    object ExpDataSetToll: TIntegerField
      FieldName = 'Toll'
    end
    object ExpDataSetFixFee: TIntegerField
      FieldName = 'FixFee'
    end
    object ExpDataSetIncidental: TIntegerField
      FieldName = 'Incidental'
    end
    object ExpDataSetCellphone: TIntegerField
      FieldName = 'Cellphone'
    end
    object ExpDataSetInsurance: TIntegerField
      FieldName = 'Insurance'
    end
    object ExpDataSetReserve: TIntegerField
      FieldName = 'Reserve'
    end
    object ExpDataSetReserve1: TIntegerField
      FieldName = 'Reserve1'
    end
    object ExpDataSetReserve2: TIntegerField
      FieldName = 'Reserve2'
    end
    object ExpDataSetReserve3: TIntegerField
      FieldName = 'Reserve3'
    end
    object ExpDataSetReserve4: TIntegerField
      FieldName = 'Reserve4'
    end
    object ExpDataSetReserve5: TIntegerField
      FieldName = 'Reserve5'
    end
    object ExpDataSetReserve6: TIntegerField
      FieldName = 'Reserve6'
    end
    object ExpDataSetReserve7: TIntegerField
      FieldName = 'Reserve7'
    end
    object ExpDataSetNote: TWideStringField
      FieldName = 'Note'
      Size = 50
    end
  end
  object MonthDataSet: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLConn
    DataSet.CommandText = 
      'Select *'#13#10'From Travel'#13#10'Where Year(TravelDate) = :MyYears and Mon' +
      'th(TravelDate) = :MyMonths AND  BusNumber = :BusNum'#13#10'Order By Tr' +
      'avelDate'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftString
        Name = 'MyYears'
        ParamType = ptInput
        Size = 5
        Value = '2010'
      end
      item
        DataType = ftString
        Name = 'MyMonths'
        ParamType = ptInput
        Size = 2
        Value = '2'
      end
      item
        DataType = ftWideString
        Name = 'BusNum'
        ParamType = ptInput
        Value = #35519#26032#33021
      end>
    Params = <>
    OnCalcFields = MonthDataSetCalcFields
    Left = 632
    Top = 64
    object MonthDataSetTravelDate: TDateField
      Alignment = taCenter
      DisplayLabel = #26085#26399
      FieldName = 'TravelDate'
      DisplayFormat = 'mm/dd'
    end
    object MonthDataSetTravelId: TIntegerField
      FieldName = 'TravelId'
      Required = True
    end
    object MonthDataSetBusNumber: TWideStringField
      FieldName = 'BusNumber'
      Size = 8
    end
    object MonthDataSetCustom: TWideStringField
      FieldName = 'Custom'
      Size = 30
    end
    object MonthDataSetTravel: TWideStringField
      FieldName = 'Travel'
      Size = 50
    end
    object MonthDataSetGroups: TWideStringField
      FieldName = 'Groups'
      Size = 50
    end
    object MonthDataSetTurnover: TIntegerField
      FieldName = 'Turnover'
      OnGetText = MonthDataSetGetText
    end
    object MonthDataSetTurnover2: TIntegerField
      FieldName = 'Turnover2'
      OnGetText = MonthDataSetGetText
    end
    object MonthDataSetTravelExp: TIntegerField
      FieldName = 'TravelExp'
      OnGetText = MonthDataSetGetText
    end
    object MonthDataSetOilExp: TIntegerField
      FieldName = 'OilExp'
      OnGetText = MonthDataSetGetText
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
    object MonthDataSetTips: TIntegerField
      FieldName = 'Tips'
      OnGetText = MonthDataSetGetText
    end
    object MonthDataSetTips2: TIntegerField
      FieldName = 'Tips2'
      OnGetText = MonthDataSetGetText
    end
    object MonthDataSetNote: TWideStringField
      FieldName = 'Note'
      Size = 50
    end
    object MonthDataSetNote2: TWideStringField
      FieldName = 'Note2'
      Size = 50
    end
    object MonthDataSetStartTime: TWideStringField
      FieldName = 'StartTime'
      Size = 5
    end
    object MonthDataSetEndTime: TWideStringField
      FieldName = 'EndTime'
      Size = 5
    end
    object MonthDataSetShortTravelDate: TStringField
      FieldKind = fkCalculated
      FieldName = 'ShortTravelDate'
      Calculated = True
    end
    object MonthDataSetShortFirstIncomeDate: TStringField
      FieldKind = fkCalculated
      FieldName = 'ShortFirstIncomeDate'
      Calculated = True
    end
    object MonthDataSetShortSecondIncomeDate: TStringField
      FieldKind = fkCalculated
      FieldName = 'ShortSecondIncomeDate'
      Calculated = True
    end
    object MonthDataSetNoIncome: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'NoIncome'
      OnGetText = MonthDataSetGetText
      Calculated = True
    end
    object MonthDataSetTotalIncome: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TotalIncome'
      OnGetText = MonthDataSetGetText
      Calculated = True
    end
  end
  object MonthGroupDataSet: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLConn
    DataSet.CommandText = 
      'SELECT *'#13#10'FROM Travel'#13#10'WHERE Groups in'#13#10'(SELECT distinct Groups'#13 +
      #10'FROM Travel'#13#10'where Year(TravelDate)=:Years and Month(TravelDate' +
      ')=:Month and Groups <> '#39#39')'#13#10'ORDER BY Groups, TravelDate;'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftString
        Name = 'Years'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'Month'
        ParamType = ptInput
        Value = '0'
      end>
    Params = <>
    Left = 720
    Top = 64
  end
  object RaveSystem: TRvSystem
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
    Left = 104
    Top = 424
  end
end

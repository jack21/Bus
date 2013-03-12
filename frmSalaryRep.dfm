object SalaryRepForm: TSalaryRepForm
  Left = 280
  Top = 119
  Caption = #34218#36039#26126#32048#34920
  ClientHeight = 467
  ClientWidth = 516
  Color = clBtnFace
  Constraints.MinHeight = 500
  Constraints.MinWidth = 520
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
    Top = 221
    Width = 516
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ExplicitTop = 63
    ExplicitWidth = 192
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 516
    Height = 63
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 20
      Width = 48
      Height = 19
      Caption = #36554#34399#65306
    end
    object Label2: TLabel
      Left = 160
      Top = 20
      Width = 48
      Height = 19
      Caption = #26178#38291#65306
    end
    object Label3: TLabel
      Left = 272
      Top = 20
      Width = 16
      Height = 19
      Caption = #24180
    end
    object Label4: TLabel
      Left = 365
      Top = 20
      Width = 16
      Height = 19
      Caption = #26376
    end
    object BusLookup: TwwDBLookupCombo
      Left = 56
      Top = 17
      Width = 89
      Height = 27
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
      Left = 214
      Top = 18
      Width = 57
      Height = 25
      Ctl3D = False
      NumbersOnly = True
      ParentCtl3D = False
      TabOrder = 1
    end
    object MonthBox: TComboBox
      Left = 294
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
      Left = 419
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
  object Panel3: TPanel
    Left = 0
    Top = 403
    Width = 516
    Height = 64
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      516
      64)
    object ReportBtn: TButton
      Left = 419
      Top = 12
      Width = 83
      Height = 43
      Anchors = [akTop, akRight]
      Caption = #22577#34920
      ImageIndex = 4
      Images = DM.ImageList1
      TabOrder = 0
      OnClick = ReportBtnClick
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 63
    Width = 516
    Height = 158
    Align = alClient
    Caption = #23567#36027#26126#32048
    TabOrder = 2
    object Tips2Grid: TDBGrid
      Left = 2
      Top = 21
      Width = 512
      Height = 135
      Align = alClient
      DataSource = Tips2DS
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
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
          Width = 109
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Custom'
          Title.Alignment = taCenter
          Title.Caption = #23458#25142
          Width = 217
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Tips2'
          Title.Alignment = taCenter
          Title.Caption = #23567#36027
          Visible = True
        end>
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 224
    Width = 516
    Height = 179
    Align = alBottom
    Caption = #20854#20182#38917#30446
    TabOrder = 3
    DesignSize = (
      516
      179)
    object InsertItemBtn: TButton
      Left = 419
      Top = 24
      Width = 83
      Height = 43
      Anchors = [akTop, akRight]
      Caption = #26032#22686
      ImageIndex = 2
      Images = DM.ImageList1
      TabOrder = 0
      OnClick = InsertItemBtnClick
    end
    object DelItemBtn: TButton
      Left = 419
      Top = 88
      Width = 83
      Height = 43
      Anchors = [akTop, akRight]
      Caption = #21034#38500
      ImageIndex = 3
      Images = DM.ImageList1
      TabOrder = 1
      OnClick = DeleteItemBtnClick
    end
    object SalaryMiscGrid: TDBGrid
      Left = 2
      Top = 21
      Width = 394
      Height = 156
      Align = alLeft
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = SalaryMiscDS
      TabOrder = 2
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Item'
          Title.Alignment = taCenter
          Title.Caption = #38917#30446
          Width = 248
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cost'
          Title.Alignment = taCenter
          Title.Caption = #37329#38989
          Width = 103
          Visible = True
        end>
    end
  end
  object Tips2DS: TDataSource
    DataSet = Tips2DataSet
    OnDataChange = Tips2DSDataChange
    Left = 288
    Top = 120
  end
  object RvProject: TRvProject
    Engine = RvSystem
    ProjectFile = 'Salary.rav'
    Left = 32
    Top = 424
  end
  object RvSystem: TRvSystem
    TitleSetup = #21015#21360#36984#38917
    TitleStatus = #22577#34920#29376#24907
    TitlePreview = #38928#35261#22577#34920
    SystemFiler.StatusFormat = #29986#29983#22577#34920#20013'... %p'
    SystemPreview.FormState = wsMaximized
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = #21015#21360#22577#34920#20013'%p'
    SystemPrinter.Title = #38928#35261#22577#34920
    SystemPrinter.Units = unCM
    SystemPrinter.UnitsFactor = 2.540000000000000000
    Left = 88
    Top = 424
  end
  object Tips2Conn: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = Tips2DataSet
    Left = 144
    Top = 424
  end
  object SalaryMiscConn: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = SalaryMiscDataSet
    Left = 208
    Top = 424
  end
  object SalaryMiscDS: TDataSource
    DataSet = SalaryMiscDataSet
    OnDataChange = SalaryMiscDSDataChange
    Left = 328
    Top = 304
  end
  object Tips2DataSet: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLConn
    DataSet.CommandText = 
      'Select *'#13#10'From Travel'#13#10'Where BusNumber = :BusNum and'#13#10'      Year' +
      '(TravelDate) = :Years and'#13#10'      Month(TravelDate) = :Months'#13#10'Or' +
      'der By TravelDate'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftWideString
        Name = 'BusNum'
        ParamType = ptInput
        Value = '1'
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
        Size = 3
        Value = '12'
      end>
    Params = <>
    OnCalcFields = Tips2DataSetCalcFields
    Left = 288
    Top = 64
    object Tips2DataSetShortTravelDate: TStringField
      FieldKind = fkCalculated
      FieldName = 'ShortTravelDate'
      Calculated = True
    end
    object Tips2DataSetTravelId: TIntegerField
      FieldName = 'TravelId'
      Required = True
    end
    object Tips2DataSetBusNumber: TWideStringField
      FieldName = 'BusNumber'
      Size = 8
    end
    object Tips2DataSetTravelDate: TDateField
      FieldName = 'TravelDate'
    end
    object Tips2DataSetCustom: TWideStringField
      FieldName = 'Custom'
      Size = 30
    end
    object Tips2DataSetTravel: TWideStringField
      FieldName = 'Travel'
      Size = 50
    end
    object Tips2DataSetGroups: TWideStringField
      FieldName = 'Groups'
      Size = 50
    end
    object Tips2DataSetTurnover: TIntegerField
      FieldName = 'Turnover'
      OnGetText = Tips2DataSetGetText
    end
    object Tips2DataSetTurnover2: TIntegerField
      FieldName = 'Turnover2'
      OnGetText = Tips2DataSetGetText
    end
    object Tips2DataSetTravelExp: TIntegerField
      FieldName = 'TravelExp'
      OnGetText = Tips2DataSetGetText
    end
    object Tips2DataSetOilExp: TIntegerField
      FieldName = 'OilExp'
      OnGetText = Tips2DataSetGetText
    end
    object Tips2DataSetFirstIncome: TIntegerField
      FieldName = 'FirstIncome'
      OnGetText = Tips2DataSetGetText
    end
    object Tips2DataSetFirstIncomeDate: TDateField
      FieldName = 'FirstIncomeDate'
    end
    object Tips2DataSetSecondIncome: TIntegerField
      FieldName = 'SecondIncome'
      OnGetText = Tips2DataSetGetText
    end
    object Tips2DataSetSecondIncomeDate: TDateField
      FieldName = 'SecondIncomeDate'
    end
    object Tips2DataSetTips: TIntegerField
      FieldName = 'Tips'
      OnGetText = Tips2DataSetGetText
    end
    object Tips2DataSetTips2: TIntegerField
      FieldName = 'Tips2'
      OnGetText = Tips2DataSetGetText
    end
    object Tips2DataSetNote: TWideStringField
      FieldName = 'Note'
      Size = 50
    end
    object Tips2DataSetNote2: TWideStringField
      FieldName = 'Note2'
      Size = 50
    end
    object Tips2DataSetStartTime: TWideStringField
      FieldName = 'StartTime'
      Size = 5
    end
    object Tips2DataSetEndTime: TWideStringField
      FieldName = 'EndTime'
      Size = 5
    end
  end
  object SalaryMiscDataSet2: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLConn
    DataSet.CommandText = 
      'Select * '#13#10'From SalaryMisc '#13#10'Where BusNumber=:BusNumber and '#13#10'Ye' +
      'ar(Date)=:Year and '#13#10'Month(Date)=:Month'#13#10'Order By SalaryMiscId'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftString
        Name = 'BusNumber'
        ParamType = ptInput
        Size = 2
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'Year'
        ParamType = ptInput
        Size = 5
        Value = '2009'
      end
      item
        DataType = ftString
        Name = 'Month'
        ParamType = ptInput
        Size = 3
        Value = '60'
      end>
    Params = <>
    Left = 144
    Top = 360
    object SalaryMiscDataSet2Item: TWideStringField
      FieldName = 'Item'
      Size = 50
    end
    object SalaryMiscDataSet2Cost: TIntegerField
      FieldName = 'Cost'
      OnGetText = Tips2DataSetGetText
    end
    object SalaryMiscDataSet2SalaryMiscId: TIntegerField
      FieldName = 'SalaryMiscId'
      Required = True
    end
    object SalaryMiscDataSet2Date: TDateField
      FieldName = 'Date'
      ProviderFlags = []
    end
    object SalaryMiscDataSet2BusNumber: TWideStringField
      FieldName = 'BusNumber'
      ProviderFlags = []
      Size = 8
    end
  end
  object SalaryMiscDataSet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'SalaryMiscProvider'
    Left = 224
    Top = 304
    object SalaryMiscDataSetSalaryMiscId: TIntegerField
      FieldName = 'SalaryMiscId'
    end
    object SalaryMiscDataSetDate: TDateField
      FieldName = 'Date'
      ProviderFlags = []
    end
    object SalaryMiscDataSetCost: TIntegerField
      FieldName = 'Cost'
      ProviderFlags = []
      OnGetText = Tips2DataSetGetText
    end
    object SalaryMiscDataSetBusNumber: TWideStringField
      FieldName = 'BusNumber'
      ProviderFlags = []
      Size = 8
    end
    object SalaryMiscDataSetItem: TWideStringField
      FieldName = 'Item'
      ProviderFlags = []
      Size = 50
    end
  end
  object SalaryMiscProvider: TDataSetProvider
    DataSet = SalaryMiscQuery
    UpdateMode = upWhereKeyOnly
    Left = 128
    Top = 304
  end
  object SalaryMiscQuery: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'BusNumber'
        ParamType = ptInput
        Size = 3
        Value = #39#39
      end
      item
        DataType = ftString
        Name = 'Year'
        ParamType = ptInput
        Size = 2
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'Month'
        ParamType = ptInput
        Size = 2
        Value = '0'
      end>
    SQL.Strings = (
      'Select * '
      'From SalaryMisc '
      'Where BusNumber=:BusNumber and '
      'Year(Date)=:Year and '
      'Month(Date)=:Month'
      'Order By SalaryMiscId')
    SQLConnection = DM.SQLConn
    Left = 32
    Top = 304
    object SalaryMiscQuerySalaryMiscId: TIntegerField
      FieldName = 'SalaryMiscId'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SalaryMiscQueryDate: TDateField
      FieldName = 'Date'
      ProviderFlags = [pfInUpdate]
    end
    object SalaryMiscQueryCost: TIntegerField
      FieldName = 'Cost'
      ProviderFlags = [pfInUpdate]
    end
    object SalaryMiscQueryBusNumber: TWideStringField
      FieldName = 'BusNumber'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object SalaryMiscQueryItem: TWideStringField
      FieldName = 'Item'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object DefaultSalaryMiscDataSet: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLConn
    DataSet.CommandText = 'defaultsalarymisc'
    DataSet.CommandType = ctTable
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 288
    Top = 360
  end
end

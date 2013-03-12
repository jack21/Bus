object CorpExpForm: TCorpExpForm
  Left = 0
  Top = 0
  Caption = #20844#21496#26376#36027#29992
  ClientHeight = 361
  ClientWidth = 388
  Color = clBtnFace
  Constraints.MinHeight = 375
  Constraints.MinWidth = 400
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
    Width = 388
    Height = 65
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label2: TLabel
      Left = 8
      Top = 22
      Width = 48
      Height = 19
      Caption = #26178#38291#65306
    end
    object Label3: TLabel
      Left = 119
      Top = 22
      Width = 16
      Height = 19
      Caption = #24180
    end
    object Label4: TLabel
      Left = 208
      Top = 22
      Width = 16
      Height = 19
      Caption = #26376
    end
    object YearEdit: TEdit
      Left = 56
      Top = 20
      Width = 57
      Height = 25
      Ctl3D = False
      NumbersOnly = True
      ParentCtl3D = False
      TabOrder = 0
    end
    object MonthBox: TComboBox
      Left = 140
      Top = 19
      Width = 65
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
    object OKBtn: TButton
      Left = 240
      Top = 12
      Width = 83
      Height = 41
      Caption = #30906#23450
      ImageIndex = 0
      Images = DM.ImageList1
      TabOrder = 2
      OnClick = OKBtnClick
    end
  end
  object CorpExpGrid: TDBGrid
    Left = 0
    Top = 65
    Width = 388
    Height = 234
    Align = alClient
    DataSource = CorpExpDS
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ExpTypeName'
        PickList.Strings = (
          'A'
          'B'
          'C'
          'D'
          'E')
        Title.Alignment = taCenter
        Title.Caption = #31185#30446#21517#31281
        Width = 253
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fee'
        Title.Alignment = taCenter
        Title.Caption = #36027#29992
        Visible = True
      end>
  end
  object Panel5: TPanel
    Left = 0
    Top = 299
    Width = 388
    Height = 62
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    DesignSize = (
      388
      62)
    object InsertBtn: TButton
      Left = 203
      Top = 6
      Width = 83
      Height = 43
      Anchors = [akRight, akBottom]
      Caption = #26032#22686
      Enabled = False
      ImageIndex = 2
      Images = DM.ImageList1
      TabOrder = 0
      OnClick = InsertBtnClick
    end
    object DelBtn: TButton
      Left = 292
      Top = 6
      Width = 83
      Height = 43
      Anchors = [akRight, akBottom]
      Caption = #21034#38500
      Enabled = False
      ImageIndex = 3
      Images = DM.ImageList1
      TabOrder = 1
      OnClick = DelBtnClick
    end
    object ReportBtn: TButton
      Left = 8
      Top = 6
      Width = 83
      Height = 43
      Anchors = [akLeft, akBottom]
      Caption = #22577#34920
      Enabled = False
      ImageIndex = 4
      Images = DM.ImageList1
      TabOrder = 2
      OnClick = ReportBtnClick
    end
    object SaveBtn: TButton
      Left = 114
      Top = 6
      Width = 83
      Height = 41
      Anchors = [akTop, akRight]
      Caption = #20786#23384
      Enabled = False
      ImageIndex = 0
      Images = DM.ImageList1
      TabOrder = 3
      Visible = False
      OnClick = SaveBtnClick
    end
  end
  object CorpExpDS: TDataSource
    DataSet = CorpExpDataSet
    OnDataChange = CorpExpDSDataChange
    Left = 304
    Top = 128
  end
  object CorpExpDataSet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CorpExpProvider'
    AfterOpen = CorpExpDataSetAfterOpen
    BeforeClose = CorpExpDataSetBeforeClose
    Left = 208
    Top = 128
    object CorpExpDataSetCorpExpId: TIntegerField
      FieldName = 'CorpExpId'
      Required = True
    end
    object CorpExpDataSetExpTypeName: TWideStringField
      FieldName = 'ExpTypeName'
      Required = True
      Size = 50
    end
    object CorpExpDataSetYears: TIntegerField
      FieldName = 'Years'
      Required = True
    end
    object CorpExpDataSetMonths: TIntegerField
      FieldName = 'Months'
      Required = True
    end
    object CorpExpDataSetFee: TIntegerField
      FieldName = 'Fee'
      Required = True
    end
  end
  object CorpExpProvider: TDataSetProvider
    DataSet = CorpExpQuery
    UpdateMode = upWhereKeyOnly
    Left = 112
    Top = 128
  end
  object CorpExpQuery: TSQLQuery
    MaxBlobSize = -1
    Params = <
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
        Value = '7'
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM CorpExp'
      'WHERE Years=:myYear AND Months=:myMonth'
      'Order By CorpExpId ASC')
    SQLConnection = DM.SQLConn
    Left = 24
    Top = 128
    object CorpExpQueryCorpExpId: TIntegerField
      FieldName = 'CorpExpId'
      Required = True
    end
    object CorpExpQueryExpTypeName: TWideStringField
      FieldName = 'ExpTypeName'
      Size = 50
    end
    object CorpExpQueryYears: TIntegerField
      FieldName = 'Years'
      Required = True
    end
    object CorpExpQueryMonths: TIntegerField
      FieldName = 'Months'
      Required = True
    end
    object CorpExpQueryFee: TIntegerField
      FieldName = 'Fee'
      Required = True
    end
  end
  object CorpExpTypeDataSet: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLConn
    DataSet.CommandText = 'corpexptype'
    DataSet.CommandType = ctTable
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 104
    Top = 248
  end
  object CorpExpConn: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = CorpExpDataSet
    Left = 112
    Top = 312
  end
  object RvProject: TRvProject
    Engine = RaveSystem
    ProjectFile = 'CorpExp.rav'
    Left = 200
    Top = 312
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
    Left = 248
    Top = 312
  end
  object ExpDataSet: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLConn
    DataSet.CommandText = 
      'SELECT * '#13#10'FROM Exp '#13#10'WHERE Years = :myYears AND Months = :myMon' +
      'ths'#13#10'ORDER BY ExpId ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftInteger
        Name = 'myYears'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'myMonths'
        ParamType = ptInput
      end>
    Params = <>
    Left = 40
    Top = 248
  end
  object ExpConn: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = ExpDataSet
    Left = 152
    Top = 312
  end
end

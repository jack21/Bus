object CustomListRepForm: TCustomListRepForm
  Left = 291
  Top = 111
  Caption = #23458#25142#26376#20221#32317#34920
  ClientHeight = 452
  ClientWidth = 362
  Color = clBtnFace
  Constraints.MinHeight = 300
  Constraints.MinWidth = 370
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
  PixelsPerInch = 96
  TextHeight = 19
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 362
    Height = 73
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label2: TLabel
      Left = 16
      Top = 20
      Width = 48
      Height = 19
      Caption = #26178#38291#65306
    end
    object Label3: TLabel
      Left = 128
      Top = 20
      Width = 16
      Height = 19
      Caption = #24180
    end
    object Label4: TLabel
      Left = 216
      Top = 20
      Width = 16
      Height = 19
      Caption = #26376
    end
    object YearEdit: TEdit
      Left = 70
      Top = 18
      Width = 57
      Height = 25
      Ctl3D = False
      NumbersOnly = True
      ParentCtl3D = False
      TabOrder = 0
    end
    object MonthBox: TComboBox
      Left = 150
      Top = 17
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
      Left = 264
      Top = 8
      Width = 83
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
    Top = 384
    Width = 362
    Height = 68
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      362
      68)
    object CountLabel: TLabel
      Left = 24
      Top = 24
      Width = 105
      Height = 12
      AutoSize = False
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object ReportBtn: TButton
      Left = 268
      Top = 14
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 73
    Width = 362
    Height = 311
    Align = alClient
    DataSource = CustomListDS
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Custom'
        Title.Alignment = taCenter
        Title.Caption = #23458#25142
        Width = 127
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TotalTurnover'
        Title.Alignment = taCenter
        Title.Caption = #32317#36554#36039
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TotalNotIncome'
        Title.Alignment = taCenter
        Title.Caption = #26410#25910
        Width = 97
        Visible = True
      end>
  end
  object CustomListDS: TDataSource
    DataSet = CustomListDataSet
    Left = 296
    Top = 120
  end
  object RvProject: TRvProject
    Engine = RvSystem
    ProjectFile = 'CustomList.rav'
    Left = 24
    Top = 400
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
    Top = 400
  end
  object CustomListConn: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = CustomListDataSet
    Left = 160
    Top = 400
  end
  object CustomListDataSet: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLConn
    DataSet.CommandText = 
      'Select Custom, Sum(Turnover2) As TotalTurnover, Sum(Turnover2)-S' +
      'um(FirstIncome)-Sum(SecondIncome) As TotalNotIncome '#13#10'From Trave' +
      'l '#13#10'Where Year(TravelDate)=:Year and '#13#10'Month(TravelDate)=:Month ' +
      #13#10'Group By Custom'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftUnknown
        Name = 'Year'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Month'
        ParamType = ptInput
      end>
    Params = <>
    Left = 296
    Top = 64
    object CustomListDataSetCustom: TWideStringField
      FieldName = 'Custom'
      Size = 30
    end
    object CustomListDataSetTotalTurnover: TFMTBCDField
      FieldName = 'TotalTurnover'
      OnGetText = CustomListDataSetGetText
      Precision = 32
      Size = 0
    end
    object CustomListDataSetTotalNotIncome: TFMTBCDField
      FieldName = 'TotalNotIncome'
      OnGetText = CustomListDataSetGetText
      Precision = 32
      Size = 0
    end
  end
end

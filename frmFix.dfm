object FixForm: TFixForm
  Left = 118
  Top = 96
  Caption = #36554#36635#20445#39178#26126#32048#34920
  ClientHeight = 536
  ClientWidth = 822
  Color = clBtnFace
  Constraints.MinHeight = 500
  Constraints.MinWidth = 830
  Font.Charset = CHINESEBIG5_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = #26032#32048#26126#39636
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel2: TPanel
    Left = 0
    Top = 449
    Width = 822
    Height = 87
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Enabled = False
    TabOrder = 2
    DesignSize = (
      822
      87)
    object Label28: TLabel
      Left = 127
      Top = 8
      Width = 48
      Height = 16
      Caption = #24288#21830#65306
    end
    object Label5: TLabel
      Left = 271
      Top = 8
      Width = 48
      Height = 16
      Caption = #37324#31243#65306
    end
    object Label6: TLabel
      Left = 406
      Top = 8
      Width = 80
      Height = 16
      Caption = #24037#20316#20839#23481#65306
    end
    object Label7: TLabel
      Left = 341
      Top = 8
      Width = 48
      Height = 16
      Caption = #36027#29992#65306
    end
    object Label8: TLabel
      Left = 13
      Top = 61
      Width = 48
      Height = 16
      Caption = #20633#35387#65306
    end
    object Label4: TLabel
      Left = 8
      Top = 8
      Width = 48
      Height = 16
      Caption = #26085#26399#65306
    end
    object Label27: TLabel
      Left = 544
      Top = 8
      Width = 48
      Height = 16
      Caption = #31805#35657#65306
    end
    object DBEdit20: TDBEdit
      Left = 128
      Top = 30
      Width = 137
      Height = 22
      Ctl3D = False
      DataField = 'Factory'
      DataSource = FixDS
      ParentCtl3D = False
      TabOrder = 6
    end
    object FactoryEdit: TDBEdit
      Left = 272
      Top = 30
      Width = 63
      Height = 22
      Ctl3D = False
      DataField = 'Mileage'
      DataSource = FixDS
      ParentCtl3D = False
      TabOrder = 1
    end
    object ItemEdit: TDBEdit
      Left = 406
      Top = 30
      Width = 132
      Height = 22
      Ctl3D = False
      DataField = 'Item'
      DataSource = FixDS
      ParentCtl3D = False
      TabOrder = 3
    end
    object MoneyEdit: TDBEdit
      Left = 341
      Top = 30
      Width = 59
      Height = 22
      Ctl3D = False
      DataField = 'Money'
      DataSource = FixDS
      ParentCtl3D = False
      TabOrder = 2
    end
    object NoteEdit: TDBEdit
      Left = 57
      Top = 59
      Width = 573
      Height = 22
      Ctl3D = False
      DataField = 'Note'
      DataSource = FixDS
      ParentCtl3D = False
      TabOrder = 5
    end
    object wwDBDateTimePicker1: TwwDBDateTimePicker
      Left = 8
      Top = 29
      Width = 113
      Height = 24
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'MDate'
      DataSource = FixDS
      Epoch = 1950
      ShowButton = True
      TabOrder = 0
      DisplayFormat = 'yyyy/mm/dd'
    end
    object DBEdit19: TDBEdit
      Left = 544
      Top = 30
      Width = 86
      Height = 22
      Ctl3D = False
      DataField = 'Visa'
      DataSource = FixDS
      ParentCtl3D = False
      TabOrder = 4
    end
    object PostBtn: TButton
      Left = 636
      Top = 23
      Width = 83
      Height = 43
      Anchors = [akTop, akRight]
      Caption = #30906#23450
      Enabled = False
      ImageIndex = 0
      Images = DM.ImageList1
      TabOrder = 7
      OnClick = PostBtnClick
    end
    object PrintBtn: TButton
      Left = 725
      Top = 23
      Width = 83
      Height = 43
      Anchors = [akTop, akRight]
      Caption = #22577#34920
      Enabled = False
      ImageIndex = 4
      Images = DM.ImageList1
      TabOrder = 8
      OnClick = PrintBtnClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 822
    Height = 59
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label2: TLabel
      Left = 13
      Top = 21
      Width = 48
      Height = 16
      Caption = #26178#38291#65306
    end
    object Label3: TLabel
      Left = 130
      Top = 21
      Width = 32
      Height = 16
      Caption = #24180#24230
    end
    object Label1: TLabel
      Left = 185
      Top = 21
      Width = 48
      Height = 16
      Caption = #36554#34399#65306
    end
    object BusLookup: TwwDBLookupCombo
      Left = 239
      Top = 18
      Width = 89
      Height = 24
      Ctl3D = True
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'BusNumber'#9'8'#9#36554#34399#9'F'
        'Driver'#9'10'#9#39381#39387#20154#9'F')
      DataField = 'BusNumber'
      LookupTable = DM.BusDataSet
      LookupField = 'BusNumber'
      Options = [loColLines, loRowLines, loTitles]
      Style = csDropDownList
      ParentCtl3D = False
      TabOrder = 1
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnKeyDown = BusLookupKeyDown
    end
    object YearEdit: TEdit
      Left = 67
      Top = 19
      Width = 57
      Height = 22
      Ctl3D = False
      NumbersOnly = True
      ParentCtl3D = False
      TabOrder = 0
    end
    object OKBtn: TButton
      Left = 345
      Top = 9
      Width = 83
      Height = 43
      Caption = #30906#23450
      ImageIndex = 0
      Images = DM.ImageList1
      TabOrder = 2
      OnClick = OKBtnClick
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 59
    Width = 822
    Height = 150
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Enabled = False
    TabOrder = 1
    object Label9: TLabel
      Left = 13
      Top = 12
      Width = 80
      Height = 16
      Caption = #36554#20027#21517#31281#65306
      FocusControl = DBEdit1
    end
    object Label10: TLabel
      Left = 287
      Top = 12
      Width = 48
      Height = 16
      Caption = #22320#22336#65306
      FocusControl = DBEdit2
    end
    object Label11: TLabel
      Left = 628
      Top = 12
      Width = 80
      Height = 16
      Caption = #38651#12288#12288#35441#65306
      FocusControl = DBEdit3
    end
    object Label12: TLabel
      Left = 13
      Top = 40
      Width = 76
      Height = 16
      Caption = #20351' '#29992' '#20154' '#65306
      FocusControl = DBEdit4
    end
    object Label13: TLabel
      Left = 287
      Top = 40
      Width = 48
      Height = 16
      Caption = #22320#22336#65306
      FocusControl = DBEdit5
    end
    object Label14: TLabel
      Left = 628
      Top = 40
      Width = 80
      Height = 16
      Caption = #38651#12288#12288#35441#65306
      FocusControl = DBEdit6
    end
    object Label15: TLabel
      Left = 13
      Top = 68
      Width = 80
      Height = 16
      Caption = #32113#19968#32232#34399#65306
      FocusControl = DBEdit7
    end
    object Label16: TLabel
      Left = 628
      Top = 68
      Width = 80
      Height = 16
      Caption = #24341#25806#34399#30908#65306
      FocusControl = DBEdit8
    end
    object Label17: TLabel
      Left = 287
      Top = 68
      Width = 48
      Height = 16
      Caption = #36554#34399#65306
      FocusControl = DBEdit9
    end
    object Label18: TLabel
      Left = 446
      Top = 68
      Width = 80
      Height = 16
      Caption = #24180#12288#12288#24335#65306
      FocusControl = DBEdit10
    end
    object Label19: TLabel
      Left = 13
      Top = 96
      Width = 82
      Height = 16
      Caption = #25237#20445#36039#26009'(1)'
      FocusControl = DBEdit11
    end
    object Label20: TLabel
      Left = 287
      Top = 96
      Width = 48
      Height = 16
      Caption = #38570#21029#65306
      FocusControl = DBEdit12
    end
    object Label21: TLabel
      Left = 446
      Top = 96
      Width = 80
      Height = 16
      Caption = #38570#35657#34399#30908#65306
      FocusControl = DBEdit13
    end
    object Label22: TLabel
      Left = 628
      Top = 96
      Width = 80
      Height = 16
      Caption = #36215#36804#26085#26399#65306
      FocusControl = DBEdit14
    end
    object Label23: TLabel
      Left = 13
      Top = 124
      Width = 82
      Height = 16
      Caption = #25237#20445#36039#26009'(2)'
      FocusControl = DBEdit15
    end
    object Label24: TLabel
      Left = 287
      Top = 124
      Width = 48
      Height = 16
      Caption = #38570#21029#65306
      FocusControl = DBEdit16
    end
    object Label25: TLabel
      Left = 446
      Top = 124
      Width = 80
      Height = 16
      Caption = #38570#35657#34399#30908#65306
      FocusControl = DBEdit17
    end
    object Label26: TLabel
      Left = 628
      Top = 124
      Width = 80
      Height = 16
      Caption = #36215#36804#26085#26399#65306
      FocusControl = DBEdit18
    end
    object DBEdit1: TDBEdit
      Left = 102
      Top = 10
      Width = 153
      Height = 22
      Ctl3D = False
      DataField = 'OwnerName'
      DataSource = FixMasterDS
      ParentCtl3D = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 335
      Top = 10
      Width = 257
      Height = 22
      Ctl3D = False
      DataField = 'OwnerAddress'
      DataSource = FixMasterDS
      ParentCtl3D = False
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 708
      Top = 10
      Width = 100
      Height = 22
      Ctl3D = False
      DataField = 'OwnerPhone'
      DataSource = FixMasterDS
      ParentCtl3D = False
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 102
      Top = 38
      Width = 153
      Height = 22
      Ctl3D = False
      DataField = 'UserName'
      DataSource = FixMasterDS
      ParentCtl3D = False
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 335
      Top = 38
      Width = 257
      Height = 22
      Ctl3D = False
      DataField = 'UserAddress'
      DataSource = FixMasterDS
      ParentCtl3D = False
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 708
      Top = 38
      Width = 100
      Height = 22
      Ctl3D = False
      DataField = 'UserPhone'
      DataSource = FixMasterDS
      ParentCtl3D = False
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 102
      Top = 66
      Width = 153
      Height = 22
      Ctl3D = False
      DataField = 'Number'
      DataSource = FixMasterDS
      ParentCtl3D = False
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 708
      Top = 66
      Width = 100
      Height = 22
      Ctl3D = False
      DataField = 'EngineNumber'
      DataSource = FixMasterDS
      ParentCtl3D = False
      TabOrder = 9
    end
    object DBEdit9: TDBEdit
      Left = 335
      Top = 66
      Width = 105
      Height = 22
      Ctl3D = False
      DataField = 'BusNum'
      DataSource = FixMasterDS
      ParentCtl3D = False
      TabOrder = 7
    end
    object DBEdit10: TDBEdit
      Left = 524
      Top = 66
      Width = 68
      Height = 22
      Ctl3D = False
      DataField = 'Year'
      DataSource = FixMasterDS
      ParentCtl3D = False
      TabOrder = 8
    end
    object DBEdit11: TDBEdit
      Left = 102
      Top = 94
      Width = 153
      Height = 22
      Ctl3D = False
      DataField = 'Insurance1Data'
      DataSource = FixMasterDS
      ParentCtl3D = False
      TabOrder = 10
    end
    object DBEdit12: TDBEdit
      Left = 335
      Top = 94
      Width = 105
      Height = 22
      Ctl3D = False
      DataField = 'Insurance1Category'
      DataSource = FixMasterDS
      ParentCtl3D = False
      TabOrder = 11
    end
    object DBEdit13: TDBEdit
      Left = 524
      Top = 94
      Width = 68
      Height = 22
      Ctl3D = False
      DataField = 'Insurance1Number'
      DataSource = FixMasterDS
      ParentCtl3D = False
      TabOrder = 12
    end
    object DBEdit14: TDBEdit
      Left = 708
      Top = 94
      Width = 100
      Height = 22
      Ctl3D = False
      DataField = 'Insurance1During'
      DataSource = FixMasterDS
      ParentCtl3D = False
      TabOrder = 13
    end
    object DBEdit15: TDBEdit
      Left = 102
      Top = 122
      Width = 153
      Height = 22
      Ctl3D = False
      DataField = 'Insurance2Data'
      DataSource = FixMasterDS
      ParentCtl3D = False
      TabOrder = 14
    end
    object DBEdit16: TDBEdit
      Left = 335
      Top = 122
      Width = 105
      Height = 22
      Ctl3D = False
      DataField = 'Insurance2Category'
      DataSource = FixMasterDS
      ParentCtl3D = False
      TabOrder = 15
    end
    object DBEdit17: TDBEdit
      Left = 524
      Top = 122
      Width = 68
      Height = 22
      Ctl3D = False
      DataField = 'Insurance2Number'
      DataSource = FixMasterDS
      ParentCtl3D = False
      TabOrder = 16
    end
    object DBEdit18: TDBEdit
      Left = 708
      Top = 122
      Width = 100
      Height = 22
      Ctl3D = False
      DataField = 'Insurance2During'
      DataSource = FixMasterDS
      ParentCtl3D = False
      TabOrder = 17
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 390
    Width = 822
    Height = 59
    Align = alBottom
    BevelOuter = bvNone
    Enabled = False
    TabOrder = 3
    DesignSize = (
      822
      59)
    object InsertBtn: TButton
      Left = 636
      Top = 6
      Width = 83
      Height = 43
      Anchors = [akTop, akRight]
      Caption = #26032#22686
      Enabled = False
      ImageIndex = 2
      Images = DM.ImageList1
      TabOrder = 0
      OnClick = InsertBtnClick
    end
    object DelBtn: TButton
      Left = 725
      Top = 6
      Width = 83
      Height = 43
      Anchors = [akTop, akRight]
      Caption = #21034#38500
      Enabled = False
      ImageIndex = 3
      Images = DM.ImageList1
      TabOrder = 1
      OnClick = DelBtnClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 209
    Width = 822
    Height = 181
    Align = alClient
    DataSource = FixDS
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = CHINESEBIG5_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = #26032#32048#26126#39636
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'MDate_Show'
        Title.Alignment = taCenter
        Title.Caption = #26085#26399
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Factory'
        Title.Alignment = taCenter
        Title.Caption = #24288#21830
        Width = 124
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'Mileage'
        Title.Alignment = taCenter
        Title.Caption = #37324#31243
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Money'
        Title.Alignment = taCenter
        Title.Caption = #36027#29992
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Item'
        Title.Alignment = taCenter
        Title.Caption = #24037#20316#20839#23481
        Width = 218
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Visa'
        Title.Alignment = taCenter
        Title.Caption = #31805#35657
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Note'
        Title.Alignment = taCenter
        Title.Caption = #20633#35387
        Width = 155
        Visible = True
      end>
  end
  object FixDS: TDataSource
    DataSet = FixDataSet
    Left = 618
    Top = 56
  end
  object FixConn: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = FixDataSet
    Left = 136
    Top = 392
  end
  object RvSystem1: TRvSystem
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
    Left = 80
    Top = 392
  end
  object RvProject1: TRvProject
    Engine = RvSystem1
    ProjectFile = 'Fix.rav'
    Left = 32
    Top = 392
  end
  object FixMasterDS: TDataSource
    DataSet = FixMasterDataSet
    Left = 690
    Top = 56
  end
  object FixMasterConn: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = FixMasterDataSet
    Left = 184
    Top = 392
  end
  object FixDataSet: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLConn
    DataSet.CommandText = 
      'Select *'#13#10'From Fix'#13#10'Where Year(MDate)=:Years and BusNum=:Num'#13#10'Or' +
      'der By MDate'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftString
        Name = 'Years'
        ParamType = ptInput
        Size = 5
        Value = '2009'
      end
      item
        DataType = ftString
        Name = 'Num'
        ParamType = ptInput
        Size = 2
        Value = '1'
      end>
    Params = <>
    AfterOpen = FixDataSetAfterOpen
    BeforeClose = FixDataSetBeforeClose
    OnCalcFields = FixDataSetCalcFields
    Left = 616
    object FixDataSetMDate_Show: TStringField
      FieldKind = fkCalculated
      FieldName = 'MDate_Show'
      Calculated = True
    end
    object FixDataSetFixId: TIntegerField
      FieldName = 'FixId'
      Required = True
    end
    object FixDataSetMDate: TDateField
      FieldName = 'MDate'
    end
    object FixDataSetBusNum: TWideStringField
      FieldName = 'BusNum'
      Size = 10
    end
    object FixDataSetMileage: TWideStringField
      FieldName = 'Mileage'
      Size = 50
    end
    object FixDataSetMoney: TIntegerField
      FieldName = 'Money'
    end
    object FixDataSetItem: TWideStringField
      FieldName = 'Item'
      Size = 30
    end
    object FixDataSetVisa: TWideStringField
      FieldName = 'Visa'
      Size = 50
    end
    object FixDataSetNote: TWideStringField
      FieldName = 'Note'
      Size = 30
    end
    object FixDataSetFactory: TWideStringField
      FieldName = 'Factory'
    end
  end
  object FixMasterDataSet: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLConn
    DataSet.CommandText = 'Select *'#13#10'From FixMaster'#13#10'Where Year=:Years and BusNum=:Num'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftString
        Name = 'Years'
        ParamType = ptInput
        Size = 5
        Value = '2009'
      end
      item
        DataType = ftString
        Name = 'Num'
        ParamType = ptInput
        Size = 2
        Value = '0'
      end>
    Params = <>
    AfterDelete = FixMasterDataSetAfterDelete
    Left = 688
    object FixMasterDataSetFixMasterId: TIntegerField
      FieldName = 'FixMasterId'
      Required = True
    end
    object FixMasterDataSetYear: TWideStringField
      FieldName = 'Year'
      Required = True
      Size = 4
    end
    object FixMasterDataSetBusNum: TWideStringField
      FieldName = 'BusNum'
      Required = True
      Size = 7
    end
    object FixMasterDataSetOwnerName: TWideStringField
      FieldName = 'OwnerName'
      Size = 50
    end
    object FixMasterDataSetOwnerAddress: TWideStringField
      FieldName = 'OwnerAddress'
      Size = 50
    end
    object FixMasterDataSetOwnerPhone: TWideStringField
      FieldName = 'OwnerPhone'
      Size = 12
    end
    object FixMasterDataSetUserName: TWideStringField
      FieldName = 'UserName'
      Size = 50
    end
    object FixMasterDataSetUserAddress: TWideStringField
      FieldName = 'UserAddress'
      Size = 50
    end
    object FixMasterDataSetUserPhone: TWideStringField
      FieldName = 'UserPhone'
      Size = 12
    end
    object FixMasterDataSetNumber: TWideStringField
      FieldName = 'Number'
      Size = 50
    end
    object FixMasterDataSetEngineNumber: TWideStringField
      FieldName = 'EngineNumber'
      Size = 50
    end
    object FixMasterDataSetInsurance1Data: TWideStringField
      FieldName = 'Insurance1Data'
      Size = 50
    end
    object FixMasterDataSetInsurance1Category: TWideStringField
      FieldName = 'Insurance1Category'
      Size = 50
    end
    object FixMasterDataSetInsurance1Number: TWideStringField
      FieldName = 'Insurance1Number'
      Size = 50
    end
    object FixMasterDataSetInsurance1During: TWideStringField
      FieldName = 'Insurance1During'
      Size = 50
    end
    object FixMasterDataSetInsurance2Data: TWideStringField
      FieldName = 'Insurance2Data'
      Size = 50
    end
    object FixMasterDataSetInsurance2Category: TWideStringField
      FieldName = 'Insurance2Category'
      Size = 50
    end
    object FixMasterDataSetInsurance2Number: TWideStringField
      FieldName = 'Insurance2Number'
      Size = 50
    end
    object FixMasterDataSetInsurance2During: TWideStringField
      FieldName = 'Insurance2During'
      Size = 50
    end
  end
end

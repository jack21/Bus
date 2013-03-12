object ExpForm: TExpForm
  Left = 119
  Top = 256
  Caption = #27599#26376#36027#29992#34920
  ClientHeight = 452
  ClientWidth = 884
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
    Top = 0
    Width = 884
    Height = 65
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      884
      65)
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
    object ResetButton: TButton
      Left = 784
      Top = 12
      Width = 83
      Height = 41
      Anchors = [akTop, akRight]
      Caption = #37325#35373
      ImageIndex = 6
      Images = DM.ImageList1
      TabOrder = 3
      OnClick = ResetButtonClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 368
    Width = 884
    Height = 84
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Enabled = False
    TabOrder = 1
    DesignSize = (
      884
      84)
    object Label10: TLabel
      Left = 8
      Top = 30
      Width = 48
      Height = 19
      Caption = #20633#35387#65306
    end
    object DBMemo1: TDBMemo
      Left = 62
      Top = 8
      Width = 805
      Height = 65
      Anchors = [akLeft, akTop, akRight]
      Ctl3D = False
      DataField = 'Note'
      DataSource = ExpDS
      ParentCtl3D = False
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object SaveBtn: TButton
      Left = 784
      Top = 20
      Width = 83
      Height = 41
      Anchors = [akTop, akRight]
      Caption = #20786#23384
      ImageIndex = 0
      Images = DM.ImageList1
      TabOrder = 1
      Visible = False
      OnClick = SaveBtnClick
    end
  end
  object ExpGrid: TDBGrid
    Left = 0
    Top = 65
    Width = 884
    Height = 303
    Align = alClient
    DataSource = ExpDS
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
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MemberFee'
        Title.Alignment = taCenter
        Title.Caption = #34892#36027
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tax'
        Title.Alignment = taCenter
        Title.Caption = #31237#37329
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DriverSalary'
        Title.Alignment = taCenter
        Title.Caption = #21496#27231#34218#36039
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ServiceSalary'
        Title.Alignment = taCenter
        Title.Caption = #26381#21209#21729#34218#36039
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UnionFee'
        Title.Alignment = taCenter
        Title.Caption = #20844#26371#26371#36027
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
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Incidental'
        Title.Alignment = taCenter
        Title.Caption = #38620#36027
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cellphone'
        Title.Alignment = taCenter
        Title.Caption = #34892#21205#38651#35441
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Insurance'
        Title.Alignment = taCenter
        Title.Caption = #21214#20581#20445
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Reserve'
        Title.Alignment = taCenter
        Title.Caption = #31449#36027#27927#36554
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Reserve1'
        Title.Alignment = taCenter
        Title.Caption = #20445#30041#19968
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Reserve2'
        Title.Alignment = taCenter
        Title.Caption = #20445#30041#20108
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Reserve3'
        Title.Alignment = taCenter
        Title.Caption = #20445#30041#19977
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Reserve4'
        Title.Alignment = taCenter
        Title.Caption = #20445#30041#22235
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
  object ExpDS: TDataSource
    DataSet = ExpDataSet
    OnDataChange = ExpDSDataChange
    Left = 840
    Top = 8
  end
  object ExpQuery: TSQLQuery
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
      'FROM Exp'
      
        'WHERE Years=:myYear AND Months=:myMonth and BusNumber in (Select' +
        ' BusNumber From Bus)'
      'Order By BusNumber')
    SQLConnection = DM.SQLConn
    Left = 632
    Top = 8
    object ExpQueryExpId: TIntegerField
      FieldName = 'ExpId'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ExpQueryBusNumber: TWideStringField
      FieldName = 'BusNumber'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object ExpQueryYears: TIntegerField
      FieldName = 'Years'
      ProviderFlags = [pfInUpdate]
    end
    object ExpQueryMonths: TIntegerField
      FieldName = 'Months'
      ProviderFlags = [pfInUpdate]
    end
    object ExpQueryMemberFee: TIntegerField
      FieldName = 'MemberFee'
      ProviderFlags = [pfInUpdate]
    end
    object ExpQueryTax: TIntegerField
      FieldName = 'Tax'
      ProviderFlags = [pfInUpdate]
    end
    object ExpQueryDriverSalary: TIntegerField
      FieldName = 'DriverSalary'
      ProviderFlags = [pfInUpdate]
    end
    object ExpQueryServiceSalary: TIntegerField
      FieldName = 'ServiceSalary'
      ProviderFlags = [pfInUpdate]
    end
    object ExpQueryUnionFee: TIntegerField
      FieldName = 'UnionFee'
      ProviderFlags = [pfInUpdate]
    end
    object ExpQueryLicenceTax: TIntegerField
      FieldName = 'LicenceTax'
      ProviderFlags = [pfInUpdate]
    end
    object ExpQueryParkFee: TIntegerField
      FieldName = 'ParkFee'
      ProviderFlags = [pfInUpdate]
    end
    object ExpQueryFixFee: TIntegerField
      FieldName = 'FixFee'
      ProviderFlags = [pfInUpdate]
    end
    object ExpQueryIncidental: TIntegerField
      FieldName = 'Incidental'
      ProviderFlags = [pfInUpdate]
    end
    object ExpQueryCellphone: TIntegerField
      FieldName = 'Cellphone'
      ProviderFlags = [pfInUpdate]
    end
    object ExpQueryInsurance: TIntegerField
      FieldName = 'Insurance'
      ProviderFlags = [pfInUpdate]
    end
    object ExpQueryReserve: TIntegerField
      FieldName = 'Reserve'
      ProviderFlags = [pfInUpdate]
    end
    object ExpQueryReserve1: TIntegerField
      FieldName = 'Reserve1'
      ProviderFlags = [pfInUpdate]
    end
    object ExpQueryReserve2: TIntegerField
      FieldName = 'Reserve2'
      ProviderFlags = [pfInUpdate]
    end
    object ExpQueryReserve3: TIntegerField
      FieldName = 'Reserve3'
      ProviderFlags = [pfInUpdate]
    end
    object ExpQueryReserve4: TIntegerField
      FieldName = 'Reserve4'
      ProviderFlags = [pfInUpdate]
    end
    object ExpQueryNote: TWideStringField
      DisplayWidth = 255
      FieldName = 'Note'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object ExpQueryToll: TIntegerField
      FieldName = 'Toll'
      ProviderFlags = [pfInUpdate]
    end
    object ExpQueryReserve5: TIntegerField
      FieldName = 'Reserve5'
      ProviderFlags = [pfInUpdate]
    end
    object ExpQueryReserve6: TIntegerField
      FieldName = 'Reserve6'
      ProviderFlags = [pfInUpdate]
    end
    object ExpQueryReserve7: TIntegerField
      FieldName = 'Reserve7'
      ProviderFlags = [pfInUpdate]
    end
  end
  object ExpDataSet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ExpProvider'
    Left = 776
    Top = 8
    object ExpDataSetExpId: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ExpId'
      Required = True
    end
    object ExpDataSetBusNumber: TWideStringField
      FieldName = 'BusNumber'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object ExpDataSetYears: TIntegerField
      FieldName = 'Years'
      ProviderFlags = [pfInUpdate]
    end
    object ExpDataSetMonths: TIntegerField
      FieldName = 'Months'
      ProviderFlags = [pfInUpdate]
    end
    object ExpDataSetMemberFee: TIntegerField
      FieldName = 'MemberFee'
      ProviderFlags = [pfInUpdate]
      OnGetText = ExpDataSetGetText
    end
    object ExpDataSetTax: TIntegerField
      FieldName = 'Tax'
      ProviderFlags = [pfInUpdate]
      OnGetText = ExpDataSetGetText
    end
    object ExpDataSetDriverSalary: TIntegerField
      FieldName = 'DriverSalary'
      ProviderFlags = [pfInUpdate]
      OnGetText = ExpDataSetGetText
    end
    object ExpDataSetServiceSalary: TIntegerField
      FieldName = 'ServiceSalary'
      ProviderFlags = [pfInUpdate]
      OnGetText = ExpDataSetGetText
    end
    object ExpDataSetUnionFee: TIntegerField
      FieldName = 'UnionFee'
      ProviderFlags = [pfInUpdate]
      OnGetText = ExpDataSetGetText
    end
    object ExpDataSetLicenceTax: TIntegerField
      FieldName = 'LicenceTax'
      ProviderFlags = [pfInUpdate]
      OnGetText = ExpDataSetGetText
    end
    object ExpDataSetParkFee: TIntegerField
      FieldName = 'ParkFee'
      ProviderFlags = [pfInUpdate]
      OnGetText = ExpDataSetGetText
    end
    object ExpDataSetToll: TIntegerField
      FieldName = 'Toll'
      ProviderFlags = [pfInUpdate]
      OnGetText = ExpDataSetGetText
    end
    object ExpDataSetFixFee: TIntegerField
      FieldName = 'FixFee'
      ProviderFlags = [pfInUpdate]
      OnGetText = ExpDataSetGetText
    end
    object ExpDataSetIncidental: TIntegerField
      FieldName = 'Incidental'
      ProviderFlags = [pfInUpdate]
      OnGetText = ExpDataSetGetText
    end
    object ExpDataSetCellphone: TIntegerField
      FieldName = 'Cellphone'
      ProviderFlags = [pfInUpdate]
      OnGetText = ExpDataSetGetText
    end
    object ExpDataSetInsurance: TIntegerField
      FieldName = 'Insurance'
      ProviderFlags = [pfInUpdate]
      OnGetText = ExpDataSetGetText
    end
    object ExpDataSetReserve: TIntegerField
      FieldName = 'Reserve'
      ProviderFlags = [pfInUpdate]
      OnGetText = ExpDataSetGetText
    end
    object ExpDataSetReserve1: TIntegerField
      FieldName = 'Reserve1'
      ProviderFlags = [pfInUpdate]
      OnGetText = ExpDataSetGetText
    end
    object ExpDataSetReserve2: TIntegerField
      FieldName = 'Reserve2'
      ProviderFlags = [pfInUpdate]
      OnGetText = ExpDataSetGetText
    end
    object ExpDataSetReserve3: TIntegerField
      FieldName = 'Reserve3'
      ProviderFlags = [pfInUpdate]
      OnGetText = ExpDataSetGetText
    end
    object ExpDataSetReserve4: TIntegerField
      FieldName = 'Reserve4'
      ProviderFlags = [pfInUpdate]
      OnGetText = ExpDataSetGetText
    end
    object ExpDataSetNote: TWideStringField
      DisplayWidth = 255
      FieldName = 'Note'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object ExpDataSetReserve5: TIntegerField
      FieldName = 'Reserve5'
      ProviderFlags = [pfInUpdate]
    end
    object ExpDataSetReserve6: TIntegerField
      FieldName = 'Reserve6'
      ProviderFlags = [pfInUpdate]
    end
    object ExpDataSetReserve7: TIntegerField
      FieldName = 'Reserve7'
      ProviderFlags = [pfInUpdate]
    end
  end
  object ExpProvider: TDataSetProvider
    DataSet = ExpQuery
    UpdateMode = upWhereKeyOnly
    Left = 704
    Top = 8
  end
end

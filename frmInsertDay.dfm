object InsertDayForm: TInsertDayForm
  Left = 248
  Top = 128
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = #34892#31243
  ClientHeight = 516
  ClientWidth = 385
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 385
    Height = 448
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label2: TLabel
      Left = 16
      Top = 23
      Width = 80
      Height = 19
      Caption = #36554#12288#12288#34399#65306
    end
    object Label3: TLabel
      Left = 16
      Top = 52
      Width = 80
      Height = 19
      Caption = #23458#25142#21517#31281#65306
    end
    object Label4: TLabel
      Left = 16
      Top = 81
      Width = 80
      Height = 19
      Caption = #34892#12288#12288#31243#65306
    end
    object Label5: TLabel
      Left = 16
      Top = 138
      Width = 80
      Height = 19
      Caption = #36554#12288#12288#36039#65306
    end
    object Label6: TLabel
      Left = 16
      Top = 167
      Width = 80
      Height = 19
      Caption = #36335#12288#12288#36027#65306
    end
    object Label7: TLabel
      Left = 16
      Top = 196
      Width = 80
      Height = 19
      Caption = #27833#12288#12288#37329#65306
    end
    object Label8: TLabel
      Left = 16
      Top = 225
      Width = 80
      Height = 19
      Caption = #39318#27425#25910#27454#65306
    end
    object Label9: TLabel
      Left = 16
      Top = 283
      Width = 84
      Height = 19
      Caption = #20132'  '#26381'  '#36027#65306
    end
    object Label10: TLabel
      Left = 16
      Top = 341
      Width = 80
      Height = 19
      Caption = #20633#12288#12288#35387#65306
    end
    object Label1: TLabel
      Left = 16
      Top = 312
      Width = 80
      Height = 19
      Caption = #23567#12288#12288#36027#65306
    end
    object Label11: TLabel
      Left = 181
      Top = 225
      Width = 48
      Height = 19
      Caption = #26178#38291#65306
    end
    object Label12: TLabel
      Left = 16
      Top = 254
      Width = 80
      Height = 19
      Caption = #25910#21462#39192#27454#65306
    end
    object Label13: TLabel
      Left = 181
      Top = 254
      Width = 48
      Height = 19
      Caption = #26178#38291#65306
    end
    object Label14: TLabel
      Left = 191
      Top = 138
      Width = 44
      Height = 19
      Caption = '('#20839#24115')'
    end
    object Label15: TLabel
      Left = 320
      Top = 138
      Width = 44
      Height = 19
      Caption = '('#22806#24115')'
    end
    object Label16: TLabel
      Left = 16
      Top = 399
      Width = 80
      Height = 19
      Caption = #20351#29992#26178#38291#65306
    end
    object Label17: TLabel
      Left = 230
      Top = 399
      Width = 16
      Height = 19
      Caption = #65374
    end
    object Label18: TLabel
      Left = 16
      Top = 109
      Width = 80
      Height = 19
      Caption = #22296#12288#12288#34399#65306
      FocusControl = DBEdit1
    end
    object Label19: TLabel
      Left = 16
      Top = 370
      Width = 92
      Height = 19
      Caption = #20633#35387'('#23458#25142')'#65306
    end
    object BusLookup: TwwDBLookupCombo
      Left = 112
      Top = 20
      Width = 255
      Height = 25
      AutoSize = False
      Ctl3D = True
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'BusNumber'#9'12'#9#36554#34399#9'F'#9
        'Driver'#9'18'#9#39381#39387#20154#9'F'#9)
      DataField = 'BusNumber'
      DataSource = DayForm.DayDS
      LookupTable = DM.BusDataSet
      LookupField = 'BusNumber'
      Options = [loColLines, loRowLines, loTitles, loSearchOnBackspace]
      ParentCtl3D = False
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      ShowMatchText = True
      OnKeyDown = BusLookupKeyDown
    end
    object CustomLookup: TwwDBLookupCombo
      Left = 112
      Top = 47
      Width = 255
      Height = 25
      AutoSize = False
      Ctl3D = True
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'Custom'#9'30'#9#23458#25142#21517#31281#9'F'#9)
      DataField = 'Custom'
      DataSource = DayForm.DayDS
      LookupTable = CustomDataSet
      LookupField = 'Custom'
      Options = [loColLines, loRowLines, loTitles, loSearchOnBackspace]
      DropDownCount = 12
      ParentCtl3D = False
      TabOrder = 1
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnKeyDown = CustomLookupKeyDown
    end
    object TravelLookup: TwwDBLookupCombo
      Left = 112
      Top = 78
      Width = 255
      Height = 25
      AutoSize = False
      Ctl3D = True
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'Travel'#9'20'#9#34892#31243#9'F')
      DataField = 'Travel'
      DataSource = DayForm.DayDS
      LookupTable = TravelDataSet
      LookupField = 'Travel'
      Options = [loColLines, loRowLines, loTitles, loSearchOnBackspace]
      DropDownCount = 12
      ParentCtl3D = False
      TabOrder = 2
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      ShowMatchText = True
      OnKeyDown = TravelLookupKeyDown
    end
    object TurnoverEdit: TDBEdit
      Left = 112
      Top = 136
      Width = 73
      Height = 25
      Ctl3D = False
      DataField = 'Turnover'
      DataSource = DayForm.DayDS
      ParentCtl3D = False
      TabOrder = 4
    end
    object TravelExpEdit: TDBEdit
      Left = 112
      Top = 165
      Width = 255
      Height = 25
      Ctl3D = False
      DataField = 'TravelExp'
      DataSource = DayForm.DayDS
      ParentCtl3D = False
      TabOrder = 6
    end
    object OilExpEdit: TDBEdit
      Left = 112
      Top = 194
      Width = 255
      Height = 25
      Ctl3D = False
      DataField = 'OilExp'
      DataSource = DayForm.DayDS
      ParentCtl3D = False
      TabOrder = 7
    end
    object FirstIncomeEdit: TDBEdit
      Left = 112
      Top = 223
      Width = 65
      Height = 25
      Ctl3D = False
      DataField = 'FirstIncome'
      DataSource = DayForm.DayDS
      ParentCtl3D = False
      TabOrder = 8
    end
    object TipsEdit: TDBEdit
      Left = 112
      Top = 281
      Width = 255
      Height = 25
      Ctl3D = False
      DataField = 'Tips'
      DataSource = DayForm.DayDS
      ParentCtl3D = False
      TabOrder = 12
    end
    object NoteEdit: TDBEdit
      Left = 112
      Top = 339
      Width = 255
      Height = 25
      Ctl3D = False
      DataField = 'Note'
      DataSource = DayForm.DayDS
      MaxLength = 80
      ParentCtl3D = False
      TabOrder = 14
    end
    object Tips2Edit: TDBEdit
      Left = 112
      Top = 310
      Width = 255
      Height = 25
      Ctl3D = False
      DataField = 'Tips2'
      DataSource = DayForm.DayDS
      ParentCtl3D = False
      TabOrder = 13
    end
    object wwDBDateTimePicker1: TwwDBDateTimePicker
      Left = 230
      Top = 222
      Width = 137
      Height = 27
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'FirstIncomeDate'
      DataSource = DayForm.DayDS
      Epoch = 1950
      ShowButton = True
      TabOrder = 9
      UnboundDataType = wwDTEdtDate
    end
    object SecondIncomeEdit: TDBEdit
      Left = 112
      Top = 252
      Width = 65
      Height = 25
      Ctl3D = False
      DataField = 'SecondIncome'
      DataSource = DayForm.DayDS
      ParentCtl3D = False
      TabOrder = 10
    end
    object wwDBDateTimePicker2: TwwDBDateTimePicker
      Left = 230
      Top = 251
      Width = 137
      Height = 27
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'SecondIncomeDate'
      DataSource = DayForm.DayDS
      Epoch = 1950
      ShowButton = True
      TabOrder = 11
      UnboundDataType = wwDTEdtDate
    end
    object Turnover2Edit: TDBEdit
      Left = 241
      Top = 136
      Width = 73
      Height = 25
      Ctl3D = False
      DataField = 'Turnover2'
      DataSource = DayForm.DayDS
      ParentCtl3D = False
      TabOrder = 5
    end
    object DBAdvMaskEdit1: TDBAdvMaskEdit
      Left = 112
      Top = 397
      Width = 97
      Height = 25
      Alignment = taCenter
      Color = clWindow
      Ctl3D = False
      Enabled = True
      EditMask = '00:00;1;_'
      MaxLength = 5
      ParentCtl3D = False
      TabOrder = 15
      Text = '  :  '
      Visible = True
      AutoFocus = False
      Flat = False
      FlatLineColor = clBlack
      FlatParentColor = True
      ShowModified = False
      FocusColor = clWindow
      FocusBorder = False
      FocusFontColor = clBlack
      LabelAlwaysEnabled = False
      LabelPosition = lpLeftTop
      LabelMargin = 4
      LabelTransparent = False
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'MS Sans Serif'
      LabelFont.Style = []
      ModifiedColor = clRed
      SelectFirstChar = False
      Version = '2.8.1.16'
      DataField = 'StartTime'
      DataSource = DayForm.DayDS
    end
    object DBAdvMaskEdit2: TDBAdvMaskEdit
      Left = 271
      Top = 397
      Width = 96
      Height = 25
      Alignment = taCenter
      Color = clWindow
      Ctl3D = False
      Enabled = True
      EditMask = '00:00;1;_'
      MaxLength = 5
      ParentCtl3D = False
      TabOrder = 16
      Text = '  :  '
      Visible = True
      AutoFocus = False
      Flat = False
      FlatLineColor = clBlack
      FlatParentColor = True
      ShowModified = False
      FocusColor = clWindow
      FocusBorder = False
      FocusFontColor = clBlack
      LabelAlwaysEnabled = False
      LabelPosition = lpLeftTop
      LabelMargin = 4
      LabelTransparent = False
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'MS Sans Serif'
      LabelFont.Style = []
      ModifiedColor = clRed
      SelectFirstChar = False
      Version = '2.8.1.16'
      DataField = 'EndTime'
      DataSource = DayForm.DayDS
    end
    object DBEdit1: TDBEdit
      Left = 112
      Top = 107
      Width = 255
      Height = 25
      Ctl3D = False
      DataField = 'Groups'
      DataSource = DayForm.DayDS
      ParentCtl3D = False
      TabOrder = 3
    end
    object Note2Edit: TDBEdit
      Left = 112
      Top = 368
      Width = 255
      Height = 25
      Ctl3D = False
      DataField = 'Note2'
      DataSource = DayForm.DayDS
      MaxLength = 80
      ParentCtl3D = False
      TabOrder = 17
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 448
    Width = 385
    Height = 68
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object OKBtn: TButton
      Left = 13
      Top = 16
      Width = 83
      Height = 41
      Caption = #30906#23450
      ImageIndex = 0
      Images = DM.ImageList1
      TabOrder = 0
      OnClick = OKBtnClick
    end
    object CancelBtn: TButton
      Left = 284
      Top = 16
      Width = 83
      Height = 41
      Caption = #21462#28040
      ImageIndex = 1
      Images = DM.ImageList1
      TabOrder = 1
      OnClick = CancelBtnClick
    end
  end
  object CustomDataSet: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLConn
    DataSet.CommandText = 'Select Distinct Custom'#13#10'From Travel'#13#10'Where Custom <> '#39#39
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    FieldDefs = <>
    IndexDefs = <>
    PacketRecords = 1000
    Params = <>
    StoreDefs = True
    Left = 168
    Top = 8
    object CustomDataSetCustom: TWideStringField
      DisplayLabel = #23458#25142#21517#31281
      DisplayWidth = 30
      FieldName = 'Custom'
      Size = 30
    end
  end
  object TravelDataSet: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLConn
    DataSet.CommandText = 
      'Select Distinct Travel'#13#10'From Travel'#13#10'Where TravelDate > :TravelD' +
      'ate AND Travel <> '#39#39
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftDate
        Name = 'TravelDate'
        ParamType = ptInput
      end>
    PacketRecords = 1000
    Params = <>
    Left = 336
    Top = 8
    object TravelDataSetTravel: TWideStringField
      DisplayLabel = #34892#31243
      DisplayWidth = 20
      FieldName = 'Travel'
      Size = 50
    end
  end
  object TravelDataSet3: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'TravelDate'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select Distinct Travel'
      'From Travel'
      'Where TravelDate > :TravelDate AND Travel <> '#39#39)
    SQLConnection = DM.SQLConn
    Left = 248
    Top = 8
  end
  object CustomDataSet3: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select Distinct Custom'
      'From Travel'
      'Where Custom <> '#39#39)
    SQLConnection = DM.SQLConn
    Left = 72
    Top = 8
  end
end

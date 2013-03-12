object ConfigForm: TConfigForm
  Left = 0
  Top = 0
  Caption = #35373#23450
  ClientHeight = 443
  ClientWidth = 688
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 688
    Height = 443
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #26376#36027#29992
      DesignSize = (
        680
        409)
      object DefaultExpGrid: TDBGrid
        Left = 0
        Top = 0
        Width = 680
        Height = 337
        Align = alTop
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = DefaultExpDS
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
            FieldName = 'ExpCode'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = #36027#29992#32232#34399
            Width = 112
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DisplayName'
            Title.Alignment = taCenter
            Title.Caption = #39023#31034#21517#31281
            Width = 175
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DefaultValue'
            Title.Alignment = taCenter
            Title.Caption = #38928#35373#36027#29992
            Width = 104
            Visible = True
          end>
      end
      object SaveButton: TButton
        Left = 589
        Top = 350
        Width = 83
        Height = 43
        Anchors = [akRight, akBottom]
        Caption = #20786#23384
        ImageIndex = 0
        Images = DM.ImageList1
        TabOrder = 1
        OnClick = SaveButtonClick
      end
    end
    object TabSheet2: TTabSheet
      Caption = #20844#21496#26376#36027#29992
      ImageIndex = 1
      DesignSize = (
        680
        409)
      object CorpExpType: TDBGrid
        Left = 0
        Top = 0
        Width = 680
        Height = 337
        Align = alTop
        DataSource = CorpExpTypeDS
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ExpTypeName'
            Title.Alignment = taCenter
            Title.Caption = #36027#29992#31185#30446
            Width = 227
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DefaultFee'
            Title.Alignment = taCenter
            Title.Caption = #38928#35373#36027#29992
            Width = 104
            Visible = True
          end>
      end
      object InsertBtn: TButton
        Left = 408
        Top = 350
        Width = 83
        Height = 43
        Anchors = [akRight, akBottom]
        Caption = #26032#22686
        ImageIndex = 2
        Images = DM.ImageList1
        TabOrder = 1
        OnClick = InsertBtnClick
      end
      object DelBtn: TButton
        Left = 500
        Top = 350
        Width = 83
        Height = 43
        Anchors = [akRight, akBottom]
        Caption = #21034#38500
        ImageIndex = 3
        Images = DM.ImageList1
        TabOrder = 2
        OnClick = DelBtnClick
      end
      object SaveBtn: TButton
        Left = 589
        Top = 350
        Width = 83
        Height = 43
        Anchors = [akTop, akRight]
        Caption = #20786#23384
        ImageIndex = 0
        Images = DM.ImageList1
        TabOrder = 3
        OnClick = SaveBtnClick
      end
    end
    object TabSheet3: TTabSheet
      Caption = #34218#36039#20854#20182#38917#30446
      ImageIndex = 2
      ExplicitLeft = 8
      ExplicitTop = 34
      DesignSize = (
        680
        409)
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 680
        Height = 337
        Align = alTop
        DataSource = DefaultSalaryMiscDS
        TabOrder = 0
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
            Title.Caption = #36027#29992#38917#30446
            Width = 227
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cost'
            Title.Alignment = taCenter
            Title.Caption = #38928#35373#37329#38989
            Width = 104
            Visible = True
          end>
      end
      object InsertSalaryMiscBtn: TButton
        Left = 408
        Top = 350
        Width = 83
        Height = 43
        Anchors = [akRight, akBottom]
        Caption = #26032#22686
        ImageIndex = 2
        Images = DM.ImageList1
        TabOrder = 1
        OnClick = InsertSalaryMiscBtnClick
      end
      object DeleteSalaryMiscBtn: TButton
        Left = 500
        Top = 350
        Width = 83
        Height = 43
        Anchors = [akRight, akBottom]
        Caption = #21034#38500
        ImageIndex = 3
        Images = DM.ImageList1
        TabOrder = 2
        OnClick = DeleteSalaryMiscBtnClick
      end
      object SaveSalaryMiscBtn: TButton
        Left = 589
        Top = 350
        Width = 83
        Height = 43
        Anchors = [akTop, akRight]
        Caption = #20786#23384
        ImageIndex = 0
        Images = DM.ImageList1
        TabOrder = 3
        OnClick = SaveSalaryMiscBtnClick
      end
    end
  end
  object DefaultExpDataSet: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLConn
    DataSet.CommandText = 'defaultexp'
    DataSet.CommandType = ctTable
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    DataSet.SortFieldNames = '`DefaultExpId`'
    Params = <>
    Left = 152
    Top = 224
  end
  object DefaultExpDS: TDataSource
    DataSet = DefaultExpDataSet
    Left = 152
    Top = 288
  end
  object CorpExpTypeDataSet: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLConn
    DataSet.CommandText = 'corpexptype'
    DataSet.CommandType = ctTable
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    DataSet.SortFieldNames = '`CorpExpTypeId`'
    Params = <>
    Left = 264
    Top = 224
    object CorpExpTypeDataSetCorpExpTypeId: TIntegerField
      FieldName = 'CorpExpTypeId'
      Required = True
    end
    object CorpExpTypeDataSetExpTypeName: TWideStringField
      FieldName = 'ExpTypeName'
      Required = True
      Size = 50
    end
    object CorpExpTypeDataSetDefaultFee: TIntegerField
      FieldName = 'DefaultFee'
      Required = True
    end
  end
  object CorpExpTypeDS: TDataSource
    DataSet = CorpExpTypeDataSet
    Left = 264
    Top = 288
  end
  object DefaultSalaryMiscDataSet: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLConn
    DataSet.CommandText = 'defaultsalarymisc'
    DataSet.CommandType = ctTable
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 32
    Top = 224
  end
  object DefaultSalaryMiscDS: TDataSource
    DataSet = DefaultSalaryMiscDataSet
    Left = 32
    Top = 288
  end
end

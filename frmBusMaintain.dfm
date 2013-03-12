object BusMaintainForm: TBusMaintainForm
  Left = 468
  Top = 207
  Caption = #36554#36635#36039#26009
  ClientHeight = 367
  ClientWidth = 342
  Color = clBtnFace
  Constraints.MinHeight = 400
  Constraints.MinWidth = 350
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 342
    Height = 41
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Caption = #36554#36635#36039#26009#32173#35703#34920
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 291
    Width = 342
    Height = 76
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object InsertBtn: TButton
      Left = 14
      Top = 16
      Width = 83
      Height = 41
      Caption = #26032#22686
      ImageIndex = 2
      Images = DM.ImageList1
      TabOrder = 0
      OnClick = InsertBtnClick
    end
    object DelBtn: TButton
      Left = 111
      Top = 16
      Width = 83
      Height = 41
      Caption = #21034#38500
      ImageIndex = 3
      Images = DM.ImageList1
      TabOrder = 1
      OnClick = DelBtnClick
    end
    object SaveBtn: TButton
      Left = 208
      Top = 16
      Width = 83
      Height = 41
      Caption = #20786#23384
      ImageIndex = 0
      Images = DM.ImageList1
      TabOrder = 2
      OnClick = SaveBtnClick
    end
  end
  object BusGrid: TDBGrid
    Left = 0
    Top = 41
    Width = 342
    Height = 250
    Align = alClient
    DataSource = DM.BusDS
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
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Driver'
        Title.Alignment = taCenter
        Visible = True
      end>
  end
end

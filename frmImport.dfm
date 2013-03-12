object ImportForm: TImportForm
  Left = 322
  Top = 168
  BorderStyle = bsDialog
  Caption = #21295#20837#36039#26009
  ClientHeight = 223
  ClientWidth = 421
  Color = clBtnFace
  Font.Charset = CHINESEBIG5_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = #26032#32048#26126#39636
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 32
    Top = 16
    Width = 117
    Height = 16
    Caption = #36984#25799'DB'#27284#36335#24465#65306
  end
  object FileEdit: TEdit
    Left = 32
    Top = 38
    Width = 349
    Height = 24
    ReadOnly = True
    TabOrder = 0
  end
  object OpenBtn: TButton
    Left = 244
    Top = 68
    Width = 137
    Height = 43
    Caption = #36984#25799'DB'#27284
    ImageIndex = 5
    Images = DM.ImageList1
    TabOrder = 1
    OnClick = OpenBtnClick
  end
  object OKBtn: TButton
    Left = 200
    Top = 159
    Width = 83
    Height = 43
    Caption = #30906#23450
    ImageIndex = 0
    Images = DM.ImageList1
    TabOrder = 2
    OnClick = OKBtnClick
  end
  object CancelBtn: TButton
    Left = 298
    Top = 159
    Width = 83
    Height = 43
    Caption = #21462#28040
    ImageIndex = 1
    Images = DM.ImageList1
    ModalResult = 2
    TabOrder = 3
  end
  object ImportBar: TProgressBar
    Left = 32
    Top = 128
    Width = 349
    Height = 16
    Smooth = True
    TabOrder = 4
  end
  object MdbDialog: TOpenDialog
    Filter = 'Microsoft Access '#36039#26009#24235' (2002-2003) (*.mdb)|*.mdb'
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Title = #36984#25799#36039#26009#24235
    Left = 216
    Top = 8
  end
  object MdbConn: TADOConnection
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 32
    Top = 80
  end
  object SourceTable: TADOTable
    Connection = MdbConn
    CursorType = ctStatic
    TableName = 'Bus'
    Left = 88
    Top = 80
  end
  object DestDataSet: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLConn
    DataSet.CommandType = ctTable
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 88
    Top = 152
  end
end

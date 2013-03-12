object LoginForm: TLoginForm
  Left = 444
  Top = 203
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = #31995#32113#30331#20837
  ClientHeight = 160
  ClientWidth = 245
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 245
    Height = 160
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 15
      Width = 48
      Height = 19
      Caption = #23494#30908#65306
    end
    object PWEdit: TEdit
      Left = 24
      Top = 40
      Width = 190
      Height = 27
      PasswordChar = '*'
      TabOrder = 0
      Text = '1234'
    end
    object OKBtn: TButton
      Left = 24
      Top = 88
      Width = 83
      Height = 41
      Caption = #30906#23450
      Default = True
      ImageIndex = 0
      Images = DM.ImageList1
      TabOrder = 1
      OnClick = OKBtnClick
    end
    object CancelBtn: TButton
      Left = 131
      Top = 88
      Width = 83
      Height = 41
      Caption = #21462#28040
      ImageIndex = 1
      Images = DM.ImageList1
      TabOrder = 2
      OnClick = CancelBtnClick
    end
  end
end

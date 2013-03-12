object PasswordForm: TPasswordForm
  Left = 193
  Top = 166
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = #24115#34399#31649#29702
  ClientHeight = 226
  ClientWidth = 270
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 19
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 270
    Height = 226
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    ExplicitWidth = 252
    ExplicitHeight = 191
    object Label1: TLabel
      Left = 24
      Top = 23
      Width = 96
      Height = 19
      Caption = #36664#20837#33290#23494#30908#65306
    end
    object Label2: TLabel
      Left = 24
      Top = 71
      Width = 96
      Height = 19
      Caption = #36664#20837#26032#23494#30908#65306
    end
    object Label3: TLabel
      Left = 24
      Top = 103
      Width = 96
      Height = 19
      Caption = #30906#35469#26032#23494#30908#65306
    end
    object Bevel1: TBevel
      Left = 16
      Top = 144
      Width = 233
      Height = 2
    end
    object OldPWEdit: TEdit
      Left = 120
      Top = 20
      Width = 121
      Height = 27
      PasswordChar = '*'
      TabOrder = 0
    end
    object NewPWEdit: TEdit
      Left = 120
      Top = 68
      Width = 121
      Height = 27
      PasswordChar = '*'
      TabOrder = 1
    end
    object NewPW2Edit: TEdit
      Left = 120
      Top = 100
      Width = 121
      Height = 27
      PasswordChar = '*'
      TabOrder = 2
    end
    object OKBtn: TButton
      Left = 24
      Top = 160
      Width = 83
      Height = 41
      Caption = #30906#23450
      ImageIndex = 0
      Images = DM.ImageList1
      TabOrder = 3
      OnClick = OKBtnClick
    end
    object CancelBtn: TButton
      Left = 158
      Top = 160
      Width = 83
      Height = 41
      Caption = #21462#28040
      ImageIndex = 1
      Images = DM.ImageList1
      TabOrder = 4
      OnClick = CancelBtnClick
    end
  end
end

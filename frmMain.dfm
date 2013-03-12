object MainForm: TMainForm
  Left = 276
  Top = 157
  Caption = #23500#37326#36890#36939#26377#38480#20844#21496' v2.17'
  ClientHeight = 672
  ClientWidth = 849
  Color = clGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object VersionLabel: TLabel
    Left = 53
    Top = 3
    Width = 5
    Height = 19
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 653
    Width = 849
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object MainMenu1: TMainMenu
    Left = 464
    Top = 8
    object M1: TMenuItem
      Caption = #31995#32113#31649#29702'(&S)'
      object L1: TMenuItem
        Caption = #30331#20837#31995#32113'(&L)'
        OnClick = L1Click
      end
      object A2: TMenuItem
        Caption = #31649#29702#32773#24115#34399#31649#29702'(&S)'
        OnClick = A2Click
      end
      object D2: TMenuItem
        Caption = #26085#35352#24115#24115#34399#31649#29702'(&D)'
        OnClick = D2Click
      end
      object N9: TMenuItem
        Caption = '-'
      end
      object C3: TMenuItem
        Caption = #35373#23450'(&C)'
        OnClick = C3Click
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object E2: TMenuItem
        Caption = #38626#38283'(&E)'
        OnClick = E2Click
      end
    end
    object I1: TMenuItem
      Caption = #36039#26009#36664#20837'(&I)'
      object N1: TMenuItem
        Caption = #26085#35352#24115'(&D)'
        OnClick = N1Click
      end
      object E1: TMenuItem
        Caption = #26376#36027#29992'(&E)'
        OnClick = E1Click
      end
      object N10: TMenuItem
        Caption = #20844#21496#36027#29992'(&C)'
        OnClick = N10Click
      end
    end
    object P1: TMenuItem
      Caption = #22577#34920'(&R)'
      object N2: TMenuItem
        Caption = #26376#22577#34920'(&M)'
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = #20445#39178#26126#32048#34920'(&T)'
        OnClick = N3Click
      end
      object C1: TMenuItem
        Caption = #23458#25142#26376#22577#34920'(&C)'
        OnClick = C1Click
      end
      object N7: TMenuItem
        Caption = #34218#36039#26126#32048#34920'(&P)'
        OnClick = N7Click
      end
      object L2: TMenuItem
        Caption = #23458#25142#26376#20221#32317#34920'(&L)'
        OnClick = L2Click
      end
      object N5: TMenuItem
        Caption = #30408#39192#20998#37197
        Enabled = False
        Visible = False
        OnClick = N5Click
      end
    end
    object M2: TMenuItem
      Caption = #36039#26009#32173#35703'(&M)'
      object D1: TMenuItem
        Caption = #36554#36635#37197#32929#36039#26009'(&D)'
        Enabled = False
        Visible = False
      end
      object N6: TMenuItem
        Caption = #36554#36635#36039#26009'(&B)'
        OnClick = N6Click
      end
      object N8: TMenuItem
        Caption = '-'
        Visible = False
      end
      object E3: TMenuItem
        Caption = #21295#20986#36039#26009'(&E)'
        Visible = False
        OnClick = E3Click
      end
      object C2: TMenuItem
        Caption = #21295#20837#36039#26009'(&C)'
        OnClick = C2Click
      end
    end
    object H1: TMenuItem
      Caption = #35498#26126'(&H)'
      Visible = False
      object A1: TMenuItem
        Caption = #38364#26044'(&A)'
        Enabled = False
        OnClick = A1Click
      end
    end
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'mdb'
    FileName = 'DB.mdb'
    Filter = 'Microsoft Office Access (*.mdb)|*.mdb'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Title = #21295#20986#36039#26009
    Left = 424
    Top = 40
  end
end

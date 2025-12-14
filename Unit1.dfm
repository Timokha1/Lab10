object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = #1054#1073#1095#1080#1089#1083#1077#1085#1085#1103' '#1074#1080#1088#1072#1079#1091
  ClientHeight = 637
  ClientWidth = 483
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object GroupBox1: TGroupBox
    Left = 24
    Top = 24
    Width = 329
    Height = 153
    Caption = #1042#1080#1088#1072#1079#1080
    TabOrder = 0
    object Label1: TLabel
      Left = 65
      Top = 27
      Width = 5
      Height = 15
      Caption = 'x'
    end
    object Label2: TLabel
      Left = 64
      Top = 70
      Width = 17
      Height = 15
      Caption = 'f(x)'
    end
    object Label7: TLabel
      Left = 64
      Top = 115
      Width = 6
      Height = 15
      Caption = 'y'
    end
    object Edit1: TEdit
      Left = 184
      Top = 24
      Width = 121
      Height = 23
      TabOrder = 0
      Text = '3+2'
    end
    object Edit2: TEdit
      Left = 184
      Top = 67
      Width = 121
      Height = 23
      TabOrder = 1
      Text = 'x*x+2*x+3'
    end
    object Edit9: TEdit
      Left = 184
      Top = 112
      Width = 121
      Height = 23
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 24
    Top = 183
    Width = 329
    Height = 161
    Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090#1080' '#1086#1073#1095#1080#1089#1083#1077#1085#1085#1103
    TabOrder = 1
    object Label3: TLabel
      Left = 29
      Top = 24
      Width = 13
      Height = 15
      Caption = 'x='
    end
    object Label4: TLabel
      Left = 17
      Top = 53
      Width = 25
      Height = 15
      Caption = 'f(x)='
    end
    object Label5: TLabel
      Left = 217
      Top = 21
      Width = 40
      Height = 15
      Caption = #1044#1077#1088#1077#1074#1086
    end
    object Label6: TLabel
      Left = 8
      Top = 82
      Width = 34
      Height = 15
      Caption = 'f(x,y)='
    end
    object Edit3: TEdit
      Left = 48
      Top = 24
      Width = 121
      Height = 23
      TabOrder = 0
    end
    object Edit4: TEdit
      Left = 48
      Top = 53
      Width = 121
      Height = 23
      TabOrder = 1
    end
    object Edit5: TEdit
      Left = 184
      Top = 42
      Width = 121
      Height = 23
      TabOrder = 2
    end
    object Edit6: TEdit
      Left = 184
      Top = 71
      Width = 121
      Height = 23
      TabOrder = 3
    end
    object Edit7: TEdit
      Left = 184
      Top = 100
      Width = 121
      Height = 23
      TabOrder = 4
    end
    object Edit8: TEdit
      Left = 48
      Top = 82
      Width = 121
      Height = 23
      TabOrder = 5
    end
  end
  object GroupBox3: TGroupBox
    Left = 24
    Top = 368
    Width = 321
    Height = 65
    Caption = #1047#1085#1072#1082#1080' '#1087#1110#1089#1083#1103' '#1082#1086#1084#1080
    TabOrder = 2
    object ComboBox1: TComboBox
      Left = 16
      Top = 32
      Width = 41
      Height = 23
      TabOrder = 0
      Text = '2'
      OnChange = ComboBox1Change
    end
  end
  object Button1: TButton
    Left = 24
    Top = 480
    Width = 105
    Height = 49
    Caption = #1054#1073#1095#1080#1089#1083#1080#1090#1080
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 160
    Top = 480
    Width = 121
    Height = 49
    Caption = #1055#1086#1073#1091#1076#1091#1074#1072#1090#1080' '#1076#1077#1088#1077#1074#1086
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 312
    Top = 480
    Width = 105
    Height = 49
    Caption = #1042#1080#1093#1110#1076
    TabOrder = 5
    OnClick = Button3Click
  end
end

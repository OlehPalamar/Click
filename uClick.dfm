object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 138
  ClientWidth = 438
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 8
    Top = 16
    Width = 26
    Height = 13
    Caption = #1054#1082#1085#1086
  end
  object Label4: TLabel
    Left = 8
    Top = 104
    Width = 49
    Height = 13
    Caption = #1048#1085#1090#1077#1088#1074#1072#1083
  end
  object Button1: TButton
    Left = 352
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Start'
    TabOrder = 1
    OnClick = Button1Click
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 40
    Width = 329
    Height = 57
    Caption = ' '#1055#1086#1079#1080#1094#1080#1103' '#1082#1091#1088#1089#1086#1088#1072' '
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 29
      Width = 7
      Height = 13
      Caption = #1061
    end
    object Label2: TLabel
      Left = 168
      Top = 29
      Width = 7
      Height = 13
      Caption = 'Y'
    end
    object edtX: TSpinEdit
      Left = 48
      Top = 24
      Width = 81
      Height = 22
      MaxValue = 1800
      MinValue = 10
      TabOrder = 0
      Value = 900
    end
    object edtY: TSpinEdit
      Left = 192
      Top = 24
      Width = 81
      Height = 22
      MaxValue = 900
      MinValue = 10
      TabOrder = 1
      Value = 350
    end
  end
  object cbxWindow: TComboBox
    Left = 48
    Top = 13
    Width = 289
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 2
    Text = 'Crusaders of The Lost Idols'
    Items.Strings = (
      'Crusaders of The Lost Idols')
  end
  object edtInterval: TEdit
    Left = 72
    Top = 101
    Width = 49
    Height = 21
    TabOrder = 3
    Text = '400'
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 2000
    OnTimer = Timer1Timer
    Left = 296
    Top = 56
  end
end

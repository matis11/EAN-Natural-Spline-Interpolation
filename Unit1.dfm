object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'EAN - M.Bartos'
  ClientHeight = 397
  ClientWidth = 741
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 21
    Width = 6
    Height = 13
    Caption = 'x'
  end
  object Label2: TLabel
    Left = 151
    Top = 21
    Width = 4
    Height = 13
    Caption = 'f'
  end
  object Label3: TLabel
    Left = 641
    Top = 178
    Width = 9
    Height = 13
    Caption = 'st'
  end
  object Label4: TLabel
    Left = 422
    Top = 45
    Width = 34
    Height = 13
    Caption = 'Output'
  end
  object Label5: TLabel
    Left = 263
    Top = 37
    Width = 12
    Height = 13
    Caption = 'xx'
  end
  object Label6: TLabel
    Left = 24
    Top = 186
    Width = 16
    Height = 13
    Caption = 'x.a'
  end
  object Label8: TLabel
    Left = 633
    Top = 343
    Width = 9
    Height = 13
    Caption = 'st'
  end
  object Label9: TLabel
    Left = 414
    Top = 213
    Width = 34
    Height = 13
    Caption = 'Output'
  end
  object Label10: TLabel
    Left = 269
    Top = 197
    Width = 22
    Height = 13
    Caption = 'xx.a'
  end
  object Label11: TLabel
    Left = 64
    Top = 186
    Width = 16
    Height = 13
    Caption = 'x.b'
  end
  object Label7: TLabel
    Left = 198
    Top = 183
    Width = 14
    Height = 13
    Caption = 'f.b'
  end
  object Label12: TLabel
    Left = 158
    Top = 183
    Width = 14
    Height = 13
    Caption = 'f.a'
  end
  object Label13: TLabel
    Left = 309
    Top = 197
    Width = 22
    Height = 13
    Caption = 'xx.b'
  end
  object Label14: TLabel
    Left = 620
    Top = 379
    Width = 113
    Height = 13
    Caption = 'Mateusz Bartos 122437'
  end
  object Label15: TLabel
    Left = 8
    Top = 2
    Width = 341
    Height = 13
    Caption = 
      'Obliczenie warto'#347'ci funkcji i wsp'#243#322'czynnik'#243'w naturalnej funkcji ' +
      'sklejanej'
  end
  object ListBox1: TListBox
    Left = 24
    Top = 61
    Width = 105
    Height = 108
    ItemHeight = 13
    TabOrder = 0
  end
  object ListBox2: TListBox
    Left = 152
    Top = 61
    Width = 105
    Height = 108
    ItemHeight = 13
    TabOrder = 1
  end
  object ListOutput: TListBox
    Left = 422
    Top = 64
    Width = 319
    Height = 108
    ItemHeight = 13
    TabOrder = 2
  end
  object Button2: TButton
    Left = 103
    Top = 35
    Width = 25
    Height = 25
    Caption = '+'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 231
    Top = 35
    Width = 25
    Height = 25
    Caption = '+'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 280
    Top = 88
    Width = 113
    Height = 25
    Caption = 'naturalsplinevalue'
    TabOrder = 5
    OnClick = Button4Click
  end
  object xInput: TEdit
    Left = 24
    Top = 37
    Width = 80
    Height = 21
    TabOrder = 6
  end
  object fInput: TEdit
    Left = 151
    Top = 37
    Width = 80
    Height = 21
    TabOrder = 7
  end
  object stOutput: TEdit
    Left = 657
    Top = 175
    Width = 80
    Height = 21
    TabOrder = 8
  end
  object xxInput: TEdit
    Left = 263
    Top = 53
    Width = 80
    Height = 21
    TabOrder = 9
  end
  object Button5: TButton
    Left = 16
    Top = 367
    Width = 113
    Height = 25
    Caption = 'Clear'
    TabOrder = 10
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 280
    Top = 119
    Width = 113
    Height = 25
    Caption = 'naturalsplinecoeffns'
    TabOrder = 11
    OnClick = Button6Click
  end
  object ListBox3: TListBox
    Left = 16
    Top = 229
    Width = 105
    Height = 108
    ItemHeight = 13
    TabOrder = 12
  end
  object ListBox4: TListBox
    Left = 151
    Top = 229
    Width = 105
    Height = 108
    ItemHeight = 13
    TabOrder = 13
  end
  object ListIOutput: TListBox
    Left = 416
    Top = 229
    Width = 317
    Height = 108
    ItemHeight = 13
    TabOrder = 14
  end
  object addI: TButton
    Left = 95
    Top = 203
    Width = 25
    Height = 25
    Caption = '+'
    TabOrder = 15
    OnClick = addIClick
  end
  object Button7: TButton
    Left = 230
    Top = 203
    Width = 25
    Height = 25
    Caption = '+'
    TabOrder = 16
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 279
    Top = 256
    Width = 113
    Height = 25
    Caption = 'inaturalsplinevalue'
    TabOrder = 17
    OnClick = Button8Click
  end
  object xaInput: TEdit
    Left = 17
    Top = 202
    Width = 33
    Height = 21
    TabOrder = 18
  end
  object stIOutput: TEdit
    Left = 649
    Top = 340
    Width = 80
    Height = 21
    TabOrder = 19
  end
  object xxaInput: TEdit
    Left = 269
    Top = 213
    Width = 34
    Height = 21
    TabOrder = 20
  end
  object Button9: TButton
    Left = 279
    Top = 287
    Width = 113
    Height = 25
    Caption = 'inaturalsplinecoeffns'
    TabOrder = 21
    OnClick = Button9Click
  end
  object xbInput: TEdit
    Left = 56
    Top = 202
    Width = 33
    Height = 21
    TabOrder = 22
  end
  object faInput: TEdit
    Left = 151
    Top = 202
    Width = 33
    Height = 26
    TabOrder = 23
  end
  object fbInput: TEdit
    Left = 198
    Top = 202
    Width = 33
    Height = 26
    TabOrder = 24
  end
  object xxbInput: TEdit
    Left = 309
    Top = 213
    Width = 34
    Height = 21
    TabOrder = 25
  end
  object Button1: TButton
    Left = 17
    Top = 336
    Width = 103
    Height = 20
    Caption = 'Z pliku'
    TabOrder = 26
  end
  object Button10: TButton
    Left = 152
    Top = 336
    Width = 103
    Height = 20
    Caption = 'Z pliku'
    TabOrder = 27
  end
  object Button11: TButton
    Left = 25
    Top = 160
    Width = 103
    Height = 20
    Caption = 'Z pliku'
    TabOrder = 28
  end
  object Button12: TButton
    Left = 153
    Top = 157
    Width = 102
    Height = 24
    Caption = 'Z pliku'
    TabOrder = 29
  end
end

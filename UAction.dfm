object form4: Tform4
  Left = 583
  Top = 118
  Width = 1028
  Height = 586
  Caption = 'form4'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 465
    Height = 441
    TabOrder = 0
    object lbl1: TLabel
      Left = 24
      Top = 32
      Width = 31
      Height = 13
      Caption = 'Id Film'
    end
    object lbl2: TLabel
      Left = 24
      Top = 96
      Width = 46
      Height = 13
      Caption = 'Judul Film'
    end
    object lbl3: TLabel
      Left = 24
      Top = 160
      Width = 45
      Height = 13
      Caption = 'Jenis Film'
    end
    object lbl4: TLabel
      Left = 24
      Top = 224
      Width = 108
      Height = 13
      Caption = 'Tanggal Penyimoanan '
    end
    object lbl5: TLabel
      Left = 224
      Top = 32
      Width = 71
      Height = 13
      Caption = 'Terakhir Dilihat'
    end
    object lbl6: TLabel
      Left = 224
      Top = 96
      Width = 40
      Height = 13
      Caption = 'Pengirim'
    end
    object lbl7: TLabel
      Left = 224
      Top = 160
      Width = 62
      Height = 13
      Caption = 'Nama Berkas'
    end
    object lbl8: TLabel
      Left = 224
      Top = 224
      Width = 31
      Height = 13
      Caption = 'Label8'
    end
    object edt1: TEdit
      Left = 24
      Top = 56
      Width = 145
      Height = 21
      TabOrder = 0
    end
    object edt2: TEdit
      Left = 24
      Top = 120
      Width = 145
      Height = 21
      TabOrder = 1
    end
    object edt3: TEdit
      Left = 24
      Top = 184
      Width = 145
      Height = 21
      TabOrder = 2
    end
    object edt4: TEdit
      Left = 224
      Top = 56
      Width = 145
      Height = 21
      TabOrder = 3
    end
    object edt5: TEdit
      Left = 224
      Top = 120
      Width = 145
      Height = 21
      TabOrder = 4
    end
    object edt6: TEdit
      Left = 224
      Top = 184
      Width = 145
      Height = 21
      TabOrder = 5
    end
    object cbb1: TComboBox
      Left = 24
      Top = 248
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 6
    end
    object btn1: TButton
      Left = 96
      Top = 296
      Width = 75
      Height = 25
      Caption = 'Pindai'
      TabOrder = 7
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 200
      Top = 296
      Width = 75
      Height = 25
      Caption = 'Lihat'
      TabOrder = 8
    end
  end
  object pnl2: TPanel
    Left = 464
    Top = 0
    Width = 449
    Height = 441
    TabOrder = 1
  end
end

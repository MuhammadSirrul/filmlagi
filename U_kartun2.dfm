object Form13: TForm13
  Left = 489
  Top = 276
  Width = 928
  Height = 480
  Caption = 'Form13'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 417
    Height = 441
    Caption = 'Panel1'
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 8
      Top = 0
      Width = 409
      Height = 129
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object Button1: TButton
      Left = 64
      Top = 176
      Width = 75
      Height = 25
      Caption = 'Pilih'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 176
      Top = 176
      Width = 75
      Height = 25
      Caption = 'Scan'
      TabOrder = 2
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 288
      Top = 176
      Width = 75
      Height = 25
      Caption = 'Hapus'
      TabOrder = 3
      OnClick = Button3Click
    end
  end
  object Panel2: TPanel
    Left = 416
    Top = 8
    Width = 497
    Height = 433
    Caption = 'Panel2'
    TabOrder = 1
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 473
      Height = 409
    end
  end
  object DataSource1: TDataSource
    DataSet = VirtualTable1
    Left = 456
    Top = 16
  end
  object VirtualTable1: TVirtualTable
    Options = [voPersistentData, voStored, voSkipUnSupportedFieldTypes]
    Active = True
    FieldDefs = <
      item
        Name = 'Image'
        DataType = ftString
        Size = 20
      end>
    Left = 528
    Top = 16
    Data = {030001000500496D6167650100140000000000000000000000}
  end
  object DelphiTwain1: TDelphiTwain
    OnTwainAcquire = DelphiTwain1TwainAcquire
    TransferMode = ttmMemory
    SourceCount = 0
    Info.MajorVersion = 1
    Info.MinorVersion = 0
    Info.Language = tlUserLocale
    Info.CountryCode = 1
    Info.Groups = [tgControl, tgImage]
    Info.VersionInfo = 'Application name'
    Info.Manufacturer = 'Application manufacturer'
    Info.ProductFamily = 'App product family'
    Info.ProductName = 'App product name'
    LibraryLoaded = False
    SourceManagerLoaded = False
    Left = 600
    Top = 16
  end
end

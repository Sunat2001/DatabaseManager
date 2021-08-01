object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 528
  ClientWidth = 767
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object grid1: TDBGrid
    Left = 0
    Top = 41
    Width = 532
    Height = 462
    Align = alClient
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 503
    Width = 767
    Height = 25
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = 24
    ExplicitTop = 200
    ExplicitWidth = 240
  end
  object PageControl1: TPageControl
    Left = 532
    Top = 41
    Width = 235
    Height = 462
    ActivePage = TabSheet2
    Align = alRight
    TabOrder = 2
    ExplicitLeft = 536
    ExplicitTop = 0
    ExplicitHeight = 503
    object TabSheet1: TTabSheet
      Caption = 'Databases Control'
      ExplicitLeft = 6
      ExplicitTop = 22
      ExplicitHeight = 475
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      ExplicitHeight = 475
      object ListBox1: TListBox
        Left = 3
        Top = 3
        Width = 121
        Height = 97
        ItemHeight = 13
        TabOrder = 0
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 767
    Height = 41
    Align = alTop
    TabOrder = 3
    ExplicitLeft = -8
    ExplicitTop = -6
    object cb1: TComboBox
      Left = 16
      Top = 8
      Width = 161
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 536
      Top = 8
      Width = 75
      Height = 27
      Caption = 'Search'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 183
      Top = 8
      Width = 343
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;User ID=sunat;Dat' +
      'a Source=MySQL;Initial Catalog=test2'
    LoginPrompt = False
    Left = 80
    Top = 448
  end
  object table1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'users'
    Left = 168
    Top = 440
  end
  object query1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from users')
    Left = 232
    Top = 448
  end
  object DataSource1: TDataSource
    DataSet = query1
    Left = 304
    Top = 448
  end
  object MainMenu1: TMainMenu
    Left = 376
    Top = 272
    object File1: TMenuItem
      Caption = 'File'
    end
  end
end

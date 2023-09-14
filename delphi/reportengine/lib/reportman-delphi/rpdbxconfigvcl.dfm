object FRpDBXConfigVCL: TFRpDBXConfigVCL
  Left = 245
  Top = 108
  Caption = 'Dialog'
  ClientHeight = 465
  ClientWidth = 666
  Color = clBtnFace
  ParentFont = True
  Position = poScreenCenter
  ShowHint = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 20
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 666
    Height = 52
    Align = alTop
    TabOrder = 0
    DesignSize = (
      666
      52)
    object LDriversFile: TLabel
      Left = 8
      Top = 8
      Width = 74
      Height = 20
      Caption = 'Driver'#39's file'
    end
    object LConnsFile: TLabel
      Left = 8
      Top = 31
      Width = 101
      Height = 20
      Caption = 'Conection'#39's file'
    end
    object EDriversFile: TEdit
      Left = 146
      Top = 4
      Width = 512
      Height = 28
      Anchors = [akLeft, akTop, akRight]
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 0
      Text = 'EDriversFile'
    end
    object EConnectionsFile: TEdit
      Left = 146
      Top = 27
      Width = 512
      Height = 28
      Anchors = [akLeft, akTop, akRight]
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 1
      Text = 'EDriversFile'
    end
  end
  object PanelParent: TPanel
    Left = 0
    Top = 52
    Width = 666
    Height = 413
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object PanelLeft: TPanel
      Left = 0
      Top = 0
      Width = 198
      Height = 413
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object LConnections: TListBox
        Left = 0
        Top = 73
        Width = 198
        Height = 340
        Align = alClient
        ItemHeight = 20
        TabOrder = 0
        OnClick = LConnectionsClick
        ExplicitTop = 76
        ExplicitHeight = 337
      end
      object ToolBar1: TToolBar
        Left = 0
        Top = 0
        Width = 198
        Height = 26
        AutoSize = True
        Caption = 'ToolBar1'
        EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
        Images = VirtualImageList1
        TabOrder = 1
        object BAdd: TToolButton
          Left = 0
          Top = 0
          Hint = 'Adds a connection to the selected driver'
          Caption = 'BAdd'
          ImageIndex = 0
          ImageName = 'Item1'
          OnClick = BAddClick
        end
        object BDelete: TToolButton
          Left = 23
          Top = 0
          Hint = 'Drops the selected connection'
          Caption = 'BDelete'
          ImageIndex = 1
          ImageName = 'Item2'
          OnClick = BDeleteClick
        end
        object ToolButton1: TToolButton
          Left = 46
          Top = 0
          Width = 6
          Caption = 'ToolButton1'
          ImageIndex = 2
          ImageName = 'Item3'
          Style = tbsSeparator
        end
        object BShowProps: TToolButton
          Left = 52
          Top = 0
          Hint = 'Shows properties of the selected driver'
          Caption = 'BShowProps'
          ImageIndex = 2
          ImageName = 'Item3'
          OnClick = BShowPropsClick
        end
        object ToolButton2: TToolButton
          Left = 75
          Top = 0
          Width = 6
          Caption = 'ToolButton2'
          ImageIndex = 3
          ImageName = 'Item4'
          Style = tbsSeparator
        end
        object BConnect: TToolButton
          Left = 81
          Top = 0
          Hint = 'Activates the selected connection'
          Caption = 'BConnect'
          ImageIndex = 3
          ImageName = 'Item4'
          OnClick = BConnectClick
        end
        object ToolButton4: TToolButton
          Left = 104
          Top = 0
          Caption = 'ToolButton4'
          Enabled = False
          ImageIndex = 5
        end
        object ToolButton3: TToolButton
          Left = 127
          Top = 0
          Width = 11
          Caption = 'ToolButton3'
          ImageIndex = 3
          ImageName = 'Item4'
          Style = tbsSeparator
        end
        object BClose: TToolButton
          Left = 138
          Top = 0
          Hint = 'Closes this configuration window'
          Caption = 'BClose'
          ImageIndex = 4
          ImageName = 'Item5'
          OnClick = BCloseClick
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 26
        Width = 198
        Height = 47
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        object LShowDriver: TLabel
          Left = 4
          Top = 2
          Width = 161
          Height = 20
          Caption = 'Show driver connections'
        end
        object ComboDrivers: TComboBox
          Left = 6
          Top = 20
          Width = 186
          Height = 28
          Style = csDropDownList
          TabOrder = 0
          OnClick = ComboDriversClick
        end
      end
    end
    object ScrollParams: TScrollBox
      Left = 198
      Top = 0
      Width = 468
      Height = 413
      Align = alClient
      TabOrder = 1
      Visible = False
    end
  end
  object ImageList1: TImageList
    Height = 19
    Width = 19
    Left = 228
    Top = 224
    Bitmap = {
      494C010105000900040013001300FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000004C000000260000000100200000000000202D
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000BD0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      94000000BD0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000BD00000094000000BD0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      94000000BD00000094000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000BD00000094000000BD000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      94000000BD00000094000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000BD00000094000000BD000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      94000000BD00000094000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000BD00000094000000BD000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      94000000BD000000940000FFFF000000000000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000BD00000094000000BD000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      94000000BD00000094000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000BD00FFFF00000000BD000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      9400FFFF0000FFFF00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFC6
      C600FFC6C600FFC6C600FFC6C600FFC6C600FFC6C600FFC6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000000000000000000084848400FFC6
      C600FFC6C600FFC6C600FFC6C600FFC6C600FFC6C600FFC6C600000000000000
      0000000000000000000000FFFF0000FFFF000000000000000000000000000000
      00000000000000000000FF000000848484008484840084848400848484008484
      84008484840084848400848484008484840084848400FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00000000000000000000000000FFFFFF00000000000000
      0000000000000000000084848400848484008484840084848400848484008484
      840084848400848484000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000FFFF00000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000848484000000
      0000FF000000FF000000FF000000FF000000FF00000084848400000000000000
      0000000000000000000000FFFF0000FFFF000000000000000000000000000000
      00000000000000000000FF000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF0000000000000000000000
      00000000000000000000FFFFFF00FFFFFF0000000000FFFFFF00000000000000
      000000000000000000008484840000000000FF000000FF000000FF000000FF00
      0000FF0000008484840000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000000000000000000000000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000FFFF00000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000848484000000
      0000FF000000FF000000FF000000FF000000FF00000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008484840000000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF0000000000000000000000
      00000000000000000000FFFFFF00FFFFFF0000000000FFFFFF00000000000000
      000000000000000000008484840000000000FF000000FF000000FF000000FF00
      0000FF0000008484840000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000FFFF00000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000084848400000000008484
      8400FFC6C600FFC6C600FFC6C600FFC6C600FFC6C600FFC6C600FFC6C6000000
      00000000000000000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      000000000000FFFFFF0000FFFF00000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF0000000000FFFFFF00000000000000
      0000000000000000000000000000848484008484840084848400848484008484
      8400848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF0000000000
      0000FF000000FF00000000000000FF000000FF00000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400FFFFFF00FFC6C600FFC6C600FFC6C600FFC6C600FFC6C600FFC6C6000000
      00000000000000000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF0000000000000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF00000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF0084848400848484008484
      84008484840084848400FFC6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00000000000000000000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00000000000000000000000000000000008484
      8400FFFFFF0000000000FF000000FF000000FF000000FF000000FFC6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000000000000000000000000084848400FFFFFF0000000000FF000000FF00
      0000FF000000FF000000FFC6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000000000000000008484
      8400FFFFFF0000000000FF000000FF000000FF000000FF000000FFC6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000000000000000000000000084848400FFFFFF0000000000000000000000
      00000000000000000000FFC6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000848484008484840084848400848484008484840084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      280000004C000000260000000100010000000000C80100000000000000000000
      000000000000000000000000FFFFFF00FFFFE0000000000000000000FFFFE000
      0000000000000000C007E0000000000000000000C007E0000000000000000000
      C007E0000000000000000000C007E0000000000000000000C007E00000000000
      00000000C007E0000000000000000000C007E0000000000000000000C007E000
      0000000000000000C007E0000000000000000000C007E0000000000000000000
      C007E0000000000000000000C007E0000000000000000000C007E00000000000
      00000000C007E0000000000000000000C007E0000000000000000000C007E000
      0000000000000000FFFFE0000000000000000000FFFFFFFFFFFFFFC01FF00000
      FFFFFFFFFFFFFFC01BF00000FFFFFFFFFFF001E03CF00000C003FFFFCFF001C0
      1C700000C003FF3FFE4001C018300000DFFBFE1F9E0001C01C700000D24BFE1F
      3E0001C01FB00000DFFBFF0E3E0001C01FF000005241FF847E0001C000000000
      DFF1FFC0FE0001C000000000C001FFE1FE0001E030100000D2003FC0FE0001FF
      E0000000C0003F84FFC001FBE0000000FF803E0E3FF001FCE0000000FFF1FC1F
      1FF001FC60000000FFF1FC7F8FF003F820000000FFF1FFFFFFF007FC60000000
      FFFFFFFFFFF00FFFB0100000FFFFFFFFFFFFFFFFFFF000000000000000000000
      0000000000000000000000000000}
  end
  object ImageCollection1: TImageCollection
    Images = <
      item
        Name = 'Item1'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000013000000130806000000725036
              CC000000804944415478DACD91410EC0200804D977EB91BE9B5AAB561B424D30
              A99C362A93412024B4AAF02B0C574BA9D40B3F4C72D800D68F56E6CBB0F148D0
              60208B6ADF56CB0196126A5B9F150D8F996269FD5935732D809925C480674C48
              D356F27B349799F55659806D76E749D83233E6636A9F3106FA844D91DAE71BB0
              15B52FEC04077973EEF44332900000000049454E44AE426082}
          end>
      end
      item
        Name = 'Item2'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000013000000130806000000725036
              CC000000734944415478DAD594E10AC0200884F3FD1FFA5641309A775A1B83FC
              67E897DE518682F255D819306B690D003D918D4EAD0B1BC1A0ECD2C79A11504D
              4F35BB4347633B53124803E629233D4337BD0969ED2F9331CD14D085A9D596DC
              CC68C45CDD8231205D33F3A4D206A49AA74B0FF982DEC605CC3079EE93AD1430
              0000000049454E44AE426082}
          end>
      end
      item
        Name = 'Item3'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000013000000130806000000725036
              CC0000008D4944415478DADD93510E00110C44CDFD0F6DD54652743A59F1B5FD
              20D1789E2AD452CBAD0083C15249B47DF8046B11E7801028CC981C8A1D64500F
              3C361B390F94B071A57E2D0788EAB7C17CE199D966E9613BA0ADE014D6074C20
              1653AD964758606F050CC8E6D5589AF98D3F34F3AFA98C646BD822FBE051C386
              6661FF24DF29356330491A860A761257610FC8A6BAEEA88D9D1B000000004945
              4E44AE426082}
          end>
      end
      item
        Name = 'Item4'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000013000000130806000000725036
              CC000000C54944415478DAADD341128520080660B956CBAE854BB95A1D8B27CD
              6898903E273735CA7CFE6600070E5F0D18629C4B80415E29915B8C11C1C60490
              9D3291D72B8488790EBAF2E3E0B06DD02793295653056C317E60C1C634E827FB
              0393636A6819BB5229E4891151B7F7BEE34B326314EC3CEDF5061B5D7B49EDD5
              C8692E4CA018A35994520AB2264F398E376AB21B6303A38A791BD6EF3D8B5997
              F23DA6DA6D0D33DAADC1DEE26BCC6BB7061BDDD474B2B2A38775DFCB68B7A564
              5EBB1917E08F995FE3072C30D6F66AC687000000000049454E44AE426082}
          end>
      end
      item
        Name = 'Item5'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000013000000130806000000725036
              CC0000007B4944415478DAE594D10980300C0593715CA31D47C7719DCEE138F1
              05E29F9AD446107C50520A398E40CA424259E103C67A0D063DECC256D4458CC9
              4C7282C7730CD6502B080D1D550D46606A36E16C6A380A6B065260AAD92CD628
              0F61AF997D77663F312B179BDA6D566E56BECBAC387F471846C1B8B08CA4C276
              58688CEE01196BED0000000049454E44AE426082}
          end>
      end>
    Left = 318
    Top = 228
  end
  object VirtualImageList1: TVirtualImageList
    Images = <
      item
        CollectionIndex = 0
        CollectionName = 'Item1'
        Name = 'Item1'
      end
      item
        CollectionIndex = 1
        CollectionName = 'Item2'
        Name = 'Item2'
      end
      item
        CollectionIndex = 2
        CollectionName = 'Item3'
        Name = 'Item3'
      end
      item
        CollectionIndex = 3
        CollectionName = 'Item4'
        Name = 'Item4'
      end
      item
        CollectionIndex = 4
        CollectionName = 'Item5'
        Name = 'Item5'
      end>
    ImageCollection = ImageCollection1
    Left = 398
    Top = 220
  end
end
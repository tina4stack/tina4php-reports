object FRpBrowserVCL: TFRpBrowserVCL
  Left = 0
  Top = 0
  Width = 435
  Height = 265
  Align = alClient
  TabOrder = 0
  object ATree: TTreeView
    Left = 0
    Top = 0
    Width = 435
    Height = 265
    Align = alClient
    Images = VirtualImageList1
    Indent = 22
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 0
    OnExpanding = ATreeExpanding
    OnMouseDown = ATreeMouseDown
  end
  object ImageList1: TImageList
    Height = 19
    Width = 19
    Left = 140
    Top = 108
    Bitmap = {
      494C010103000400040013001300FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000004C0000001300000001002000000000009016
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
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00000080808000808080008080800080808000808080008080
      800080808000808080008080800080808000FF00000000000000000000000000
      00000000000000000000000000007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008080800080808000FFFFFF00C0C0C0008080800000000000000000000000
      00000000000000000000000000000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF0000000000000000000000000000000000000000000000000000007B7B
      7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000C0C0C000FFFFFF008080
      8000808080000000000000000000000000000000000000000000000000000000
      000000000000FF00000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00000000000000000000000000
      00000000000000000000000000007B7B7B00FFFFFF007B0000007B0000007B00
      00007B000000FFFFFF007B0000007B0000007B0000007B000000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008080800080808000FFFFFF00C0C0C0008080800000000000000000000000
      00000000000000000000000000000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B007B0000007B000000FFFFFF007B0000007B000000FFFFFF007B0000007B00
      0000FFFFFF007B0000007B000000FFFFFF0000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000000000000000000000000080808000C0C0C000FFFFFF008080
      8000808080000000000000000000000000000000000000000000000000008080
      800000000000FF00000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF008080800000000000000000000000
      00000000000000000000000000007B7B7B007B0000007B000000FFFFFF007B00
      00007B000000FFFFFF007B0000007B000000FFFFFF007B0000007B000000FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00000000000000000000000000000000000000000000000000000000007B7B
      7B00FFFFFF007B0000007B0000007B0000007B000000FFFFFF007B0000007B00
      0000FFFFFF007B0000007B000000FFFFFF0000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF00000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF0000000000000000FFFF0080808000000000000000
      00000000000000000000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF007B00
      00007B000000FFFFFF007B0000007B000000FFFFFF007B0000007B000000FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF00000000000000FF00
      0000FF00000000000000FF000000FF00000000000000FF000000FF0000000000
      000000FFFF000000000000000000000000000000000000000000000000007B7B
      7B00FFFFFF007B0000007B0000007B000000FFFFFF00FFFFFF007B0000007B00
      00007B0000007B000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000FFFF00808080000000
      00000000000000000000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007B0000007B000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0080808000000000000000000000000000000000007B7B
      7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B0000007B00
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF0000000000000000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      FF000000000000000000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF00FF00FF00FF000000000000000000000000007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
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
      0000424D3E000000000000003E000000280000004C0000001300000001000100
      00000000E40000000000000000000000000000000000000000000000FFFFFF00
      FFFFFFFFFFFFFF8000000000FFFFFFFFFFFFFF8000000000FFFFFFFFFFFFFF80
      00000000FFFFF8007FFFFF8000000000FF07F8007E00008000000000FE03FBFD
      7E00008000000000FE03FA487E00008000000000E603FBFC7E00008000000000
      C203EA483E00008000000000C203FBFCBE00008000000000E603F8001E000080
      00000000FF07FA485E00008000000000E1FFF8000E00008000000000E107FFFF
      0E00008000000000E107FFFF8E00008000000000E18FFFFF8E00008000000000
      FF8FFFFFCFFFFF8000000000FFDFFFFFFFFFFF8000000000FFFFFFFFFFFFFF80
      0000000000000000000000000000000000000000000000000000}
  end
  object PopupMenu1: TPopupMenu
    Left = 264
    Top = 80
    object MRefresh: TMenuItem
      Caption = 'Refresh'
      OnClick = MRefreshClick
    end
  end
  object ImageCollection1: TImageCollection
    Images = <
      item
        Name = 'Item1'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000013000000130806000000725036
              CC000000934944415478DAE5915D12C0100C843727E366B819274B1B9DAA76FC
              B5BC352F06D9CF661183B1AA6814467BEBDE4BD3B003242BD002DE6022CA2F4F
              E1048CD34E8427E8EAA90387604FD10B585FF4F903A69DE5C1830B8F11158109
              1683E6D45BCDABE5AE0BB3D6426B0DA5149C73F15ECE9AB0DA98229432C62084
              00EFFD18AC14FE676735D81267F9E8BDF087606FEA27B00D35BB8DEE26166390
              0000000049454E44AE426082}
          end>
      end
      item
        Name = 'Item2'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000013000000130806000000725036
              CC0000008B4944415478DACD914B0EC020084499933B9EDC521335B5587F5DC8
              6A92CAEB031024C85F856360B8DBB594812DD80D4A906DB3DA6A1916ADB4CD7B
              0AC9F79890192AA40BD384046DE504D24ED47B5B30B3AD4CB3915D5956F1BBD2
              83A34319B35CC9CC0DAB25B3946B50E300DF661965FC787E67116CBF7DC0483F
              744FD2F5CD864879D00FD81F752EEC02EC8B8CEED1550B290000000049454E44
              AE426082}
          end>
      end
      item
        Name = 'Item3'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000013000000130806000000725036
              CC0000006D4944415478DAE592E10A80300884BDE76E3FF5B98D461323623617
              05F96737E13E4F362829CD2A7C1B56969226B2300CC6CCB1E9403D55D574BD93
              F66140D9CD7C826E40D38FC29AD19B7DEFD80F26F369AEF58D6429984804F006
              ACB7E6F003A43FADB43D07CB60B3EA27B015114FC3EE15B832C7000000004945
              4E44AE426082}
          end>
      end>
    Left = 264
    Top = 176
  end
  object VirtualImageList1: TVirtualImageList
    DisabledGrayscale = False
    DisabledSuffix = '_Disabled'
    Images = <
      item
        CollectionIndex = 0
        CollectionName = 'Item1'
        Disabled = False
        Name = 'Item1'
      end
      item
        CollectionIndex = 1
        CollectionName = 'Item2'
        Disabled = False
        Name = 'Item2'
      end
      item
        CollectionIndex = 2
        CollectionName = 'Item3'
        Disabled = False
        Name = 'Item3'
      end>
    ImageCollection = ImageCollection1
    Left = 352
    Top = 176
  end
end

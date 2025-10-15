object frmDatamodule: TfrmDatamodule
  Height = 554
  Width = 716
  PixelsPerInch = 144
  object ZConnection: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'AutoEncodeStrings=ON'
      'RawStringEncoding=DB_CP')
    AutoCommit = False
    ReadOnly = True
    DisableSavepoints = False
    HostName = 'localhost'
    Port = 33069
    Database = ''
    User = ''
    Password = 'Pass1234!'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Windows\libmysql.dll'
    Left = 180
    Top = 168
  end
  object PDFReport: TVCLReport
    AsyncExecution = False
    Preview = False
    ShowProgress = False
    Title = 'Untitled'
    ShowPrintDialog = False
    Left = 180
    Top = 72
  end
end

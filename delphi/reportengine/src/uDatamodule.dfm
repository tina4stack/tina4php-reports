object frmDatamodule: TfrmDatamodule
  Height = 369
  Width = 477
  object ZConnection: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'AutoEncodeStrings=ON')
    AutoCommit = False
    ReadOnly = True
    HostName = ''
    Port = 0
    Database = ''
    User = ''
    Password = ''
    Protocol = ''
    Left = 120
    Top = 112
  end
  object PDFReport: TVCLReport
    AsyncExecution = False
    Preview = False
    ShowProgress = False
    Title = 'Untitled'
    ShowPrintDialog = False
    Left = 120
    Top = 48
  end
end

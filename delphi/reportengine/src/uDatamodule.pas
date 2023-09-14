unit uDatamodule;

interface

uses
  SysUtils, Classes, ZAbstractConnection, ZConnection, rpalias, rpcompobase,
  rppdfreport, rpvclreport, StrUtils;

type
  TfrmDatamodule = class(TDataModule)
    ZConnection: TZConnection;
    PDFReport: TVCLReport;
  private
    { Private declarations }
  public
    { Public declarations }
    debug: boolean;
    function generateReport(reportName, fileName, SQL : String) : String;
  end;

var
  frmDatamodule: TfrmDatamodule;

implementation

{$R *.dfm}

{ TfrmDatamodule }

function TfrmDatamodule.generateReport (reportName, fileName, SQL : String): String;
var
  debugMessage: String;
  iCount: Integer;

begin
   debugMessage := '';
   Result := '{';
   try
    debugMessage := debugMessage+'Looking for '+reportName+'\n';
    if (reportName <> '') then
    begin
      debugMessage := debugMessage+'Checking if '+reportName+' exists\n';
      if (FileExists (reportName)) then
      begin
        PDFReport.Title := 'PDF '+reportName;
        PDFReport.FileName := reportName;
        debugMessage := debugMessage+'Loading '+reportName+'\n';
        PDFReport.LoadFromFile(reportName);
        debugMessage := debugMessage+'Setting SQL to '+SQL+'\n';
        PDFReport.Report.DataInfo.Items[0].SQL := SQL;
        for iCount := 0 to PDFReport.Report.DatabaseInfo.Count-1 do
        begin
          PDFReport.Report.DatabaseInfo.Items[iCount].ZConnection := ZConnection;
        end;
        try
           debugMessage := debugMessage+'Saving PDF to '+fileName+'\n';
           PDFReport.SaveToPDF ( fileName, true );
           Result := Result + '"fileName": "'+fileName+'"';
        except
          on e:exception do
            Result:= Result + '"error": "'+e.Message+'"';
        end;
      end
        else
      begin
        Result:= Result + '"error": "File '+reportName+' not found"';
      end;
    end;

    if (debug) then
    begin
      Result := Result + ',"debug": "'+debugMessage+'"';
    end;

  finally
    Result := Result + '}';
    Result := AnsiReplaceStr (Result, '\', '\\');
  end;
end;

end.

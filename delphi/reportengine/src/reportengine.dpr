program reportengine;

{$APPTYPE CONSOLE}



uses
  SysUtils,
  Classes,
  superobject,
  Winapi.Windows,
  uDatamodule in 'uDatamodule.pas' {frmDatamodule: TDataModule};

{$SETPEFLAGS IMAGE_FILE_RELOCS_STRIPPED}
{$SETPEFLAGS 1}

var
  settings: TStringList;
  jsonSettings: ISuperObject;


begin
  frmDatamodule := TfrmDatamodule.Create(nil);
  settings := TStringList.Create;
  try
    try
      if (ParamStr(4) = '') then
      begin
        settings.LoadFromFile(ExtractFileDir(ParamStr(0))+'\settings.json');
      end
        else
      begin
        settings.LoadFromFile(ParamStr(4));
      end;

      jsonSettings := SO(settings.Text);

      frmDatamodule.ZConnection.HostName := jsonSettings.S['hostName'];
      frmDatamodule.ZConnection.Database := jsonSettings.S['database'];
      frmDatamodule.ZConnection.Port := jsonSettings.I['port'];
      frmDatamodule.ZConnection.User := jsonSettings.S['username'];
      frmDatamodule.ZConnection.Password := jsonSettings.S['password'];
      frmDatamodule.ZConnection.Protocol := jsonSettings.S['driver'];
      frmDatamodule.ZConnection.Connect;

      //Use params for report name & SQL

      //Use params for output if not in config

      if (ParamStr(1) = '') then
      begin
        Writeln('{"errorMessage": "Params missing (\"<path>report.rep\" \"<path>output.pdf\" \"sql\" \"settings.json\" \"debug\")"}');
      end
       else
      begin
        if (ParamStr(5) = 'debug') then
        begin
          frmDatamodule.debug := True;
        end
          else
        begin
          frmDatamodule.debug := False;
        end;

        WriteLn(frmDatamodule.generateReport(ParamStr(1), ParamStr(2), ParamStr(3)));
        {$IFDEF DEBUG}
        ReadLn;
        {$ENDIF}
      end;
    except
      on E:Exception do
      begin
        Writeln('{"errorMessage": "'+E.Classname, ': ', E.Message+'"}');
        {$IFDEF DEBUG}
        ReadLn;
        {$ENDIF}
      end;
    end;
  finally
    settings.Free;
    frmDatamodule.Free;
  end;
end.

<?php

/**
 * Tina4 - This is not a 4ramework.
 * Copy-right 2007 - current Tina4
 * License: MIT https://opensource.org/licenses/MIT
 */

namespace Tina4;

class ReportEngine extends \Tina4\Data
{
    /**
     * @const string
     */
    const TINA4_REPORT_ENGINE = "." . DIRECTORY_SEPARATOR . "bin" . DIRECTORY_SEPARATOR . "reportengine";
    const TINA4_REPORT_SETTINGS = ".".DIRECTORY_SEPARATOR . "bin" . DIRECTORY_SEPARATOR . "settings.json";

    /**
     * @param $reportName
     * @param $outputName
     * @param string $sql
     * @param string $debug
     * @return mixed
     */
    function generate($reportName, $outputName, string $sql, string $debug = "")
    {
        if (file_exists($reportName)) {
            $reportName = realpath($reportName);
        }

        $settingsFile = realpath(self::TINA4_REPORT_SETTINGS);
        if (!file_exists(self::TINA4_REPORT_SETTINGS)) {
            $settings = json_decode('{
  "hostName": "127.0.0.1",
  "database": "",
  "port" : 3050,
  "username": "user",
  "password": "password",
  "driver" : "firebird-2.5"
}');
        } else {
            $settings = json_decode(file_get_contents($settingsFile));
        }

        try {
            $settings->database = $this->DBA->databaseName;
            $settings->hostName = $this->DBA->hostName;
            $settings->port = $this->DBA->port;
            $settings->username = $this->DBA->username;
            $settings->password = $this->DBA->password;

            file_put_contents($settingsFile, json_encode($settings));

        }
        catch (\Exception $exception)
        {
            Debug::message("Cannot create settings.json for report engine", TINA4_LOG_ERROR);
        }

        $reportEngine = realpath(self::TINA4_REPORT_ENGINE);

        if (strpos(php_uname(), "Windows") !== false) {
            $reportEngine .= ".exe";
        }

        $sql = str_replace("\n", " ", $sql);

        $sql = str_replace("\r", " ", $sql);

        $sql = str_replace("\"", "\\\"", $sql);

        $result = `{$reportEngine} "{$reportName}" "{$outputName}" "{$sql}" {$debug}`;

        return json_decode($result);
    }
}

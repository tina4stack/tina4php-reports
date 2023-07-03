<?php

//Check the checksums of files and copy over to bin folder
if (defined("TINA4_PROJECT_ROOT")) {
    \Tina4\Utilities::recurseCopy(TINA4_PROJECT_ROOT . "tina4php-reports" . DIRECTORY_SEPARATOR . "bin", TINA4_DOCUMENT_ROOT . "bin", false);
}
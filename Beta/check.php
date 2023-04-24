<?php

$Key = $_GET["Key"];
$HWID = $_GET["HWID"];

$KeyList = array(
    "KEY-A",
    "KEY-B"
);

$HWIDList = array(
    "HELLO"
);

if (in_array($Key,$KeyList,TRUE)) {
    if (in_array($HWID,$HWIDList,TRUE)) {
        echo "WHITELIST !";
    } else {
        echo "Invaid HWID !";
    };
} else {
    echo "Invaid Key";
};

?>

<?php

// FUNCTIONS
error_reporting(E_ALL ^ E_NOTICE);

function redirect($dest) {
    header("Location: $dest");
}

function form_validation($data) {
    $isNotError = true;
    foreach ($data as $item) {
        if ($item != '')
            $isNotError = false;
    }
    return isNotError;
}

function form_check($text) {
    //$args = func_get_args();
    if ($text == "")
        return "error";
}

function form_error($x) {
    global $error;
    if (isset($error[$x])) {
        if ($error[$x] != "") {
            $v = $error[$x];
            return "has-$v";
        } else
            return "";
    } else
        return "";
}

# Date Functions

function DateDiff($strDate1, $strDate2) {
    return (strtotime($strDate2) - strtotime($strDate1)) / ( 60 * 60 * 24 );  // 1 day = 60*60*24
}

function TimeDiff($strTime1, $strTime2) {
    return (strtotime($strTime2) - strtotime($strTime1)) / ( 60 * 60 ); // 1 Hour =  60*60
}

function DateTimeDiff($strDateTime1, $strDateTime2) {
    return (strtotime($strDateTime2) - strtotime($strDateTime1)) / ( 60 * 60 ); // 1 Hour =  60*60
}

# ----------------

function expirewarningcolor($date) {
    $countday = floor(DateDiff(date('Y-m-d'), $date));
    if ($countday >= 10)
        $color = "#E6E9ED";
    elseif ($countday >= 8)
        $color = "#AAB2BD";
    elseif ($countday >= 6)
        $color = "#FFCE54";
    elseif ($countday >= 4)
        $color = "#F6BB42";
    elseif ($countday >= 2)
        $color = "#FC6E51; color: #FFF";
    elseif ($countday >= 1)
        $color = "#ED5565; color: #FFF";
    else
        $color = "#967ADC; color: #FFF";

    return "background-color: $color";
}

function expireremain($date) {
    $countday = floor(DateDiff(date('Y-m-d'), $date));
    if ($countday >= 2)
        $txt = "จะหมดอายุอีก $countday วัน";
    elseif ($countday == 1)
        $txt = "จะหมดอายุ พรุ่งนี้";
    elseif ($countday == 0)
        $txt = "จะหมดอายุ วันนี้";
    elseif ($countday == -1)
        $txt = "หมดอายุแล้ว เมื่อวาน";
    else {
        $countday *= -1;
        $txt = "หมดอายุเมื่อ " . Date2Buddish($date) . " ผ่านมา $countday วัน";
    }

    return $txt;
}

function Date2Buddish($date) {
    list($y, $m, $d) = explode('-', $date);
    return "$d/$m/$y";
}

function DateTime2Buddish($input, $delim = ' ') {
    list($date, $time) = explode(' ', $input);
    list($y, $m, $d) = explode('-', $date);

    return "$d/$m/$y$delim$time";
}
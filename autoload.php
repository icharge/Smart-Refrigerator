<?php

// Autoload
session_start();
require_once("config.php");
include("db.php");
include("functions.php");

# จำนวนสินค้าที่ใกล้ และหมดอายุแล้ว
$sql = "SELECT COUNT( expire_date ) as count
        FROM slot_detail
        WHERE datediff(expire_date,now()) < " . expire_day_notify;
$expiringcount = $db->query_row($sql);
$expiringcount = $expiringcount['count'];

# จำนวนสินค้าที่หมดอายุแล้ว
$sql = "SELECT COUNT( expire_date ) as count
        FROM slot_detail
        WHERE datediff(expire_date,now()) <= 0";
$expiredcount = $db->query_row($sql);
$expiredcount = $expiredcount['count'];

$nearexpire = (int) $expiringcount - (int) $expiredcount;
if ($expiredcount > 0) {
    $noti .= "หมดอายุแล้ว $expiredcount รายการ<br>";
}
if ($nearexpire > 0) {
    $noti .= "กำลังจะหมดอายุ $nearexpire รายการ";
}

# รับ Temperature
$temper_file = '/sys/devices/w1_bus_master1/28-0000053e3575/w1_slave';
if ($lines = @file($temper_file)) {
    // Load file success
    $temperature = explode('=', $lines[1]);
    $temperature = number_format($temperature[1] / 1000, 1, ',', '');
} else {
    // File not found !!!
    $temperature = '??';
}

   


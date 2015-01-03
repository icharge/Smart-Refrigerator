<?php

// Autoload
session_start();
require_once("config.php");
include("db.php");
include("functions.php");

	# จำนวนสินค้าที่ใกล้หมดอายุ
	$sql = "SELECT COUNT( expire_date ) as count
					FROM slot_detail
					WHERE datediff(expire_date,now()) < ".expire_day_notify;
	$expiringcount = $db->query_row($sql);
	$expiringcount = $expiringcount['count'];

	$sql = "SELECT COUNT( expire_date ) as count
					FROM slot_detail
					WHERE datediff(expire_date,now()) <= 0";
	$expiredcount = $db->query_row($sql);
	$expiredcount = $expiredcount['count'];

	$nearexpire = (int)$expiringcount - (int)$expiredcount;
	$noti = "ขณะนี้มี ";
	if ($nearexpire > 0) $noti .= "$expiredcount รายการที่หมดอายุแล้ว<br>";
	$noti .= "และอีก $nearexpire รายการที่กำลังจะหมดอายุ";
	
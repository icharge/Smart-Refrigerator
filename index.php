<?php
	require_once('autoload.php');

	$header['title'] = "Smart Refrigerator";
	$header['subtitle'] = "ตู้เย็นช่วยเตือนคุณภาพอาหาร";
	include template_folder . "/t_header.php";
	# จำนวนสินค้าทั้งหมดในตู้เย็น
	$sql = "SELECT COUNT( product_barcode ) AS count FROM slot_detail";
	$allprdcount = $db->query_row($sql);
	$allprdcount = $allprdcount['count'];

	# จำนวนสินค้าที่ใกล้หมดอายุ
	$sql = "SELECT COUNT( expire_date ) as count
					FROM slot_detail
					WHERE datediff(expire_date,now()) < ".expire_day_notify;
	$expiringcount = $db->query_row($sql);
	$expiringcount = $expiringcount['count'];


	include template_folder . "/t_main.php";
	include template_folder . "/t_footer.php";


	/* Notification
	$sql = "SELECT slot_barcode, product_barcode, expire_date, 
					datediff(expire_date,now()) as countexpire
					FROM slot_detail
					WHERE datediff(expire_date,now()) < ".expire_day_notify
					ORDER BY datediff(expire_date,now()) asc
	$data = $db->query($sql);
	var_dump($data); */
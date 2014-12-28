<?php
	require_once('autoload.php');

	$header['title'] = "ใกล้หมดอายุ";
	include template_folder . "/t_header.php";
	# จำนวนสินค้าทั้งหมดในตู้เย็น
	$sql = "SELECT COUNT( product_barcode ) AS count FROM products";
	$allprdcount = $db->query_row($sql);
	$allprdcount = $allprdcount['count'];

	$sql = "SELECT sd.slot_barcode, slot_name, sd.product_barcode, name,expire_date, 
datediff(expire_date,now()) as countexpire
FROM slot_detail sd
LEFT JOIN slots s on s.slot_barcode = sd.slot_barcode
LEFT JOIN products p on p.product_barcode = sd.product_barcode
WHERE datediff(expire_date,now()) < ".expire_day_notify."
ORDER BY datediff(expire_date,now()) asc";
	$expiringdata = $db->query($sql);

	include template_folder . "/t_expiring.php";

	$loadscript = array("datatable");
	include template_folder . "/t_footer.php";

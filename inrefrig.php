<?php
	require_once('autoload.php');

	$header['title'] = "ของในตู้เย็น";
	include template_folder . "/t_header.php";

	$sql = "SELECT sd.slot_barcode, slot_name, sd.product_barcode, name,expire_date, 
datediff(expire_date,now()) as countexpire
FROM slot_detail sd
LEFT JOIN slots s on s.slot_barcode = sd.slot_barcode
LEFT JOIN products p on p.product_barcode = sd.product_barcode
ORDER BY datediff(expire_date,now()) asc";
	$itemsdata = $db->query($sql);

	include template_folder . "/t_inrefrig.php";

	$loadscript = array("datatable");
	include template_folder . "/t_footer.php";

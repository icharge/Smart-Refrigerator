<?php
	require_once('autoload.php');
	include('function_sendmail.php');

	$sql = "SELECT sd.slot_barcode, slot_name, sd.product_barcode, name,expire_date, 
datediff(expire_date,now()) as countexpire
FROM slot_detail sd
LEFT JOIN slots s on s.slot_barcode = sd.slot_barcode
LEFT JOIN products p on p.product_barcode = sd.product_barcode
WHERE datediff(expire_date,now()) <= ".expire_day_notify."
ORDER BY datediff(expire_date,now()) asc";
	$expiringdata = $db->query($sql);
	if (count($expiringdata) == 0) {
		die("Nothing to send.");
	}

	$refrige = array();
	$freshboxcolor = array();

	$html = "<h1>รายการเตือนการหมดอายุ</h1><h3>".date('d/m/Y')."</h3>";
	$html .= '<table border="1">
						 <tr>
						 	<th>รหัสสินค้า</th>
						 	<th>ชั้นวาง</th>
						 	<th>สินค้า</th>
						 	<th>สถานะ</th>
						 </tr>';
	foreach ($expiringdata as $row) {
		$refrige[$row['slot_name']] = "active";
		$freshboxcolor[$row['slot_name']] = expirewarningcolor($row['expire_date']);
		$colornoti = expirewarningcolor($row['expire_date']);
		$expiretext = expireremain($row['expire_date']);
		$html .= "<tr style='$colornoti'>
				<td>$row[product_barcode]</td>
				<td>$row[slot_name]</td>
				<td>$row[name]</td>
				<td>$expiretext</td>
			</tr>";

	}
	$html .= "</table>";
	//die($html);

	if (sendEmail($html)) {
		echo "Mail sent !.";
	} else {
		echo "Error !";
	}
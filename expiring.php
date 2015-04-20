<?php

require_once('autoload.php');

$header['title'] = "ใกล้หมดอายุ";
include template_folder . "/t_header.php";

$sql = "SELECT sd.slot_barcode, slot_name, sd.product_barcode, name,expire_date, insert_date,
datediff(expire_date,now()) as countexpire
FROM slot_detail sd
LEFT JOIN slots s on s.slot_barcode = sd.slot_barcode
LEFT JOIN products p on p.product_barcode = sd.product_barcode
WHERE datediff(expire_date,now()) <= " . expire_day_notify . "
ORDER BY datediff(expire_date,now()) asc";
$expiringdata = $db->query($sql);

$refrige = array();
$freshboxcolor = array();
if ($expiringdata) {
    foreach ($expiringdata as $v) {
        $refrige[$v['slot_name']] = "active";
        $freshboxcolor[$v['slot_name']] = expirewarningcolor($v['expire_date']);
    }
}

include template_folder . "/t_expiring.php";

$loadscript = array("datatable");
include template_folder . "/t_footer.php";

<?php

require_once('autoload.php');

$header['title'] = "ของในตู้เย็น";
include template_folder . "/t_header.php";

switch (key($_GET)) {
    case 'view':
        $barcode_prd = $_GET['product'];
        $barcode_slot = $_GET['slot'];
        $header['title'] = "ดูสินค้า $barcode_prd";
        $header['subtitle'] = "ชั้นวาง $barcode_slot";
        // $page = "t_addproduct.php";
        $formact = "inrefrig.php?edit&product=$barcode_prd&slot=$barcode_slot";
        $btnsubmit = "บันทึกข้อมูล";

        $sql = "SELECT sd.slot_barcode,slot_name,sd.product_barcode,name,netcontent,expire_date,insert_date 
				FROM slot_detail sd
				LEFT JOIN slots s on s.slot_barcode = sd.slot_barcode
				LEFT JOIN products p on p.product_barcode = sd.product_barcode 
				WHERE sd.slot_barcode = '$barcode_slot' AND sd.product_barcode = '$barcode_prd'";
        $proddata = $db->query_row($sql);

        $product_barcode = $proddata['product_barcode'];
        $slot_barcode = $proddata['slot_barcode'];
        $product_name = $proddata['name'];
        $product_netcontent = $proddata['netcontent'];
        $product_expiredate = $proddata['expire_date'];
        list($y, $m, $d) = explode("-", $product_expiredate);
        $product_expiredate = "$d/$m/$y";
        $product_insertdate = $proddata['insert_date'];
        list($y, $m, $d) = explode("-", $product_insertdate);
        $product_insertdate = "$d/$m/$y";
        include template_folder . "/t_eachproduct.php";
        break;

    case 'edit':
        $barcode_prd = $_GET['product'];
        $barcode_slot = $_GET['slot'];
        list($d, $m, $y) = explode("/", $_POST['expire_date']);
        $expire_date = "$y-$m-$d";
        $sql = "UPDATE slot_detail SET expire_date = '$expire_date'
				WHERE slot_barcode = '$barcode_slot' AND product_barcode = '$barcode_prd' ";
        $db->query_row($sql);
        redirect('inrefrig.php');
        break;

    default:
        $sql = "SELECT sd.slot_barcode, slot_name, sd.product_barcode, name,expire_date, insert_date,
				datediff(expire_date,now()) as countexpire
				FROM slot_detail sd
				LEFT JOIN slots s on s.slot_barcode = sd.slot_barcode
				LEFT JOIN products p on p.product_barcode = sd.product_barcode
				ORDER BY datediff(expire_date,now()) asc";
        $itemsdata = $db->query($sql);

        $refrige = array();
	$freshboxcolor = array();
	foreach ($itemsdata as $v) {
		$refrige[$v['slot_name']] = "active";
		$freshboxcolor[$v['slot_name']] = 'background-color: #8cc152';
	}
        include template_folder . "/t_inrefrig.php";
}

$loadscript = array("datatable");
include template_folder . "/t_footer.php";

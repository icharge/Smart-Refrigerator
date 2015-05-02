<?php

require_once('autoload.php');

$header['title'] = "ของในตู้เย็น";
include template_folder . "/t_header.php";

switch (key($_GET)) {
    case 'view':
        $id = $_GET['view'];

        $formact = "inrefrig.php?edit=$id";
        $btnsubmit = "บันทึกข้อมูล";
        $btndelete = "ลบข้อมูล";

        $sql = "SELECT sd.id,sd.slot_barcode,slot_name,sd.product_barcode,name,netcontent,expire_date,insert_date 
				FROM slot_detail sd
				LEFT JOIN slots s on s.slot_barcode = sd.slot_barcode
				LEFT JOIN products p on p.product_barcode = sd.product_barcode 
				WHERE sd.id = '$id' ";
        $proddata = $db->query_row($sql);
        $slot_id = $proddata['id'];
        $product_barcode = $proddata['product_barcode'];
        $slot_barcode = $proddata['slot_barcode'];
        $product_name = $proddata['name'];
        $product_netcontent = $proddata['netcontent'];
        $product_expiredate = Date2Buddish($proddata['expire_date']);
        $product_insertdate = DateTime2Buddish($proddata['insert_date']);
        include template_folder . "/t_eachproduct.php";
        break;

    case 'edit':
        $id = $_GET['edit'];
        list($d, $m, $y) = explode("/", $_POST['expire_date']);
        $expire_date = "$y-$m-$d";
        $sql = "UPDATE slot_detail SET expire_date = '$expire_date'
				WHERE id = '$id'";
        $db->query_row($sql);
        redirect('inrefrig.php');
        break;

    case 'delete':
        $noti = "";
        $id = $_GET['delete'];
        $sql = "DELETE FROM slot_detail WHERE id = '$id'";
        @$db->query_row($sql);
        echo <<<HTML
<div class="container documents">
    <div class="row">
        <div class="col-sm-6 col-sm-offset-3">
            <div class="well text-center">
                <span class="label label-success" style="font-size: 20px">ลบข้อมูลเรียบร้อยแล้ว</span>
                <br><br>
                <a href="inrefrig.php" class="btn btn-primary btn-block">กลับ</a>
            </div>
        </div>
    </div>
</div>
HTML;
        break;

    default:
        $sql = "SELECT sd.id, sd.slot_barcode, slot_name, sd.product_barcode, name,expire_date, insert_date,
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

<?php
	require_once('autoload.php');

	//var_dump($_GET);
	switch (key($_GET)) {
		case 'add': // เพิ่มสินค้า
			$header['title'] = "เพิ่มสินค้า";
			$page = "t_addproduct.php";
			$btnsubmit = "เพิ่มสินค้า";
			$formact = "products.php?add";

			if ($_POST) {
				$product_barcode = $_POST['productbarcode'];
				$product_name = $_POST['productname'];
				$product_netcontent = $_POST['productnet'];

				# Form Validation
				$error['productbarcode'] = form_check($product_barcode);
				$error['productname'] = form_check($product_name);
				$error['productnet'] = form_check($product_netcontent);

				if (form_validation($error)) {
					$insertsql = "INSERT INTO products 
					VALUES ('$product_barcode','$product_name','$product_netcontent')";

					$result = $db->query($insertsql);
					if ($result) {
						redirect('products.php');
					}
				} else {

				}
				
			}
			break;
		
		case 'view': // ดูสินค้า
			$barcode = $_GET['view'];
			$header['title'] = "ดูสินค้า ";
			$header['subtitle'] = "$barcode";
			$page = "t_addproduct.php";
			$formact = "products.php?update=$barcode";
			$btnsubmit = "บันทึกข้อมูล";

			$sql = "SELECT * FROM products WHERE product_barcode = '$barcode'";
			$proddata = $db->query_row($sql);

			$product_barcode = $proddata['product_barcode'];
			$product_name = $proddata['name'];
			$product_netcontent = $proddata['netcontent'];

			break;

		case 'update':
			$header['title'] = "ดูสินค้า ";
			$header['subtitle'] = "$barcode";
			$page = "t_addproduct.php";
			$formact = "products.php?update=$barcode";
			$btnsubmit = "บันทึกข้อมูล";

			$product_barcode = $_GET['update'];
			$product_name = $_POST['productname'];
			$product_netcontent = $_POST['productnet'];

			# Form Validation
			$error['productname'] = form_check($product_name);
			$error['productnet'] = form_check($product_netcontent);

			if (form_validation($error)) {
				$updatesql = "UPDATE products SET name = '$product_name', netcontent = '$product_netcontent'
				WHERE product_barcode = '$product_barcode'";

				$result = $db->query($updatesql);
				if ($result) {
					redirect('products.php');
				}
			} else {

			}

			break;

		default: // ดูสินค้าทั้งหมด
			$header['title'] = "สินค้าทั้งหมด";
			$page = "t_products.php";
			$sql = "SELECT * FROM products";
			$proddata = $db->query($sql);
			break;
	}
	

	include template_folder . "/t_header.php";

	include template_folder . "/$page";

	$loadscript = array("datatable");
	include template_folder . "/t_footer.php";

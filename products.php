<?php
	require_once('autoload.php');

	$header['title'] = "สินค้าทั้งหมด";
	include template_folder . "/t_header.php";

	$sql = "SELECT * FROM products";
	$proddata = $db->query($sql);

	include template_folder . "/t_products.php";

	$loadscript = array("datatable");
	include template_folder . "/t_footer.php";

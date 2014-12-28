<!--content-->
	<div class="container documents">
		<div class="row">
			<div class="col-sm-6">
				<div class="list-group">
					<a href="expiring.php" class="list-group-item"><span class="badge badge-danger"><?php echo $expiringcount; ?></span>ของใกล้หมดอายุ</a>
					<a href="products.php" class="list-group-item"><span class="badge badge-primary"><?php echo $allprdcount; ?></span>ของทั้งหมดในตู้เย็น</a>
				</div>
			</div>
			<div class="col-sm-6">
				<div class="btn-group-vertical" style="display: block">
					<a href="addproduct.php" class="btn btn-default btn-block"><i class="glyphicon glyphicon-plus"></i> เพิ่มสินค้าใหม่</a>
					<a href="additem.php" class="btn btn-default btn-block"><i class="glyphicon glyphicon glyphicon-log-in"></i> นำของเข้าตู้</a>
				</div>
			</div>
		</div>
	</div>
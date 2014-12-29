<!--content-->
	<div class="container documents">
		<div class="row">
			<div class="col-md-12">
				<div class="well">
					<a href="addproduct.php" class="btn btn-default btn-block"><i class="glyphicon glyphicon-plus"></i> เพิ่มสินค้า</a>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12">
				<div class="panel panel-primary">
					<div class="panel-heading">รายการของในตู้เย็น</div>
						<table id="newtable" class="table table-hover table-condensed dataTable" stryle="font-size: 12px">
							<thead>
								<tr>
									<th style="white-space: nowrap;" style="width: 68px"><i class="glyphicon glyphicon-barcode"></i> สินค้า</th>
									<th style="white-space: nowrap;">ชื่อสินค้า</th>
									<th style="white-space: nowrap;">น้ำหนักสุทธิ</th>
								</tr>
							</thead>
							<tbody>
<?php
	foreach ($proddata as $row) {
		echo "<tr>
			<td>$row[product_barcode]</td>
			<td>$row[name]</td>
			<td>$row[netcontent]</td>
		</tr>";
	}
?>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
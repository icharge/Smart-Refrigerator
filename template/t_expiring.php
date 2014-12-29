<!--content-->
	<div class="container documents">
		<div class="row">
			<div class="col-sm-6">
				<div class="jumbotron">
					<div class="jumbotron-photo"><img src="img/Jumbotron.jpg"></div>
				</div>
			</div>
			<div class="col-sm-6">
				<div class="panel panel-danger">
					<div class="panel-heading">รายการของใกล้หมดอายุ</div>
						<table id="newtable" class="table table-hover" stryle="font-size: 12px">
							<thead>
								<tr>
									<th style="white-space: nowrap;"><i class="glyphicon glyphicon-barcode"></i> ตำแหน่ง</th>
									<th style="white-space: nowrap;" class="hidden-xs" style="width: 68px"><i class="glyphicon glyphicon-barcode"></i> สินค้า</th>
									<th style="white-space: nowrap;">ชื่อสินค้า</th>
									<th style="white-space: nowrap;">วันหมดอายุ</th>
								</tr>
							</thead>
							<tbody>
<?php
	foreach ($expiringdata as $row) {
		$colornoti = expirewarningcolor($row['expire_date']);
		echo "<tr style='$colornoti'>
			<td>$row[slot_barcode]</td>
			<td class='hidden-xs'>$row[product_barcode]</td>
			<td>$row[name]</td>
			<td>$row[expire_date]</td>
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
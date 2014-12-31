<!--content-->
	<div class="container documents">
		<div class="row">
			<div class="col-sm-6">
				<!-- ส่วนหุ้ม ตู้เย็น -->
				<div class="jumbotron">
					<!-- ฝั่งซ้าย -->
					<div class="col-xs-6">
						
					</div>
					<!-- ฝั่งขวา -->
					<div class="col-xs-6" style="padding-right: 0">
						<div class="refrige">
							<table>
								<tr class="eggs">
									<td class="<?php echo $refrige['Eggs A1']; ?>" style="<?php echo $freshboxcolor['Eggs A1']; ?>"></td><td class="<?php echo $refrige['Eggs A2']; ?>" style="<?php echo $freshboxcolor['Eggs A2']; ?>"></td><td class="<?php echo $refrige['Eggs A3']; ?>" style="<?php echo $freshboxcolor['Eggs A3']; ?>"></td><td class="<?php echo $refrige['Eggs A4']; ?>" style="<?php echo $freshboxcolor['Eggs A4']; ?>"></td><td class="<?php echo $refrige['Eggs A5']; ?>" style="<?php echo $freshboxcolor['Eggs A5']; ?>"></td>
								</tr>
								<tr class="clearrow">
									<td colspan="5"></td>
								</tr>
								<tr class="eggs">
									<td class="<?php echo $refrige['Eggs B1']; ?>" style="<?php echo $freshboxcolor['Eggs B1']; ?>"></td><td class="<?php echo $refrige['Eggs B2']; ?>" style="<?php echo $freshboxcolor['Eggs B2']; ?>"></td><td class="<?php echo $refrige['Eggs B3']; ?>" style="<?php echo $freshboxcolor['Eggs B3']; ?>"></td><td class="<?php echo $refrige['Eggs B4']; ?>" style="<?php echo $freshboxcolor['Eggs B4']; ?>"></td><td class="<?php echo $refrige['Eggs B5']; ?>" style="<?php echo $freshboxcolor['Eggs B5']; ?>"></td>
								</tr>
								<tr class="clearrow">
									<td rowspan="2" colspan="2"></td><td colspan="3"></td>
								</tr>
								<tr class="milk-200">
									<td rowspan="2" class="<?php echo $refrige['Milk 200-1']; ?>" style="<?php echo $freshboxcolor['Milk 200-1']; ?>"></td><td rowspan="2" class="<?php echo $refrige['Milk 200-2']; ?>" style="<?php echo $freshboxcolor['Milk 200-2']; ?>"></td><td rowspan="2" class="<?php echo $refrige['Milk 200-3']; ?>" style="<?php echo $freshboxcolor['Milk 200-3']; ?>"></td>
								</tr>
								<tr class="milk-400">
									<td rowspan="3" class="<?php echo $refrige['Milk 400-1']; ?>" style="<?php echo $freshboxcolor['Milk 400-1']; ?>"></td><td rowspan="3" class="<?php echo $refrige['Milk 400-2']; ?>" style="<?php echo $freshboxcolor['Milk 400-2']; ?>"></td>
								</tr>
								<tr class="clearrow">
									<td colspan="3"></td>
								</tr>
								<tr class="softdrink">
									<td class="<?php echo $refrige['Soft Drink 1']; ?>" style="<?php echo $freshboxcolor['Soft Drink 1']; ?>"></td><td class="<?php echo $refrige['Soft Drink 2']; ?>" style="<?php echo $freshboxcolor['Soft Drink 2']; ?>"></td><td class="<?php echo $refrige['Soft Drink 3']; ?>" style="<?php echo $freshboxcolor['Soft Drink 3']; ?>"></td>
								</tr>
								<tr class="clearrow">
									<td colspan="2"></td><td rowspan="2" colspan="3"></td>
								</tr>
								<tr class="milk-830">
									<td rowspan="2" class="<?php echo $refrige['Milk 830-1']; ?>" style="<?php echo $freshboxcolor['Milk 830-1']; ?>"></td><td rowspan="2" class="<?php echo $refrige['Milk 830-2']; ?>" style="<?php echo $freshboxcolor['Milk 830-2']; ?>"></td>
								</tr>
								<tr class="water-600">
									<td class="<?php echo $refrige['Water 600-1']; ?>" style="<?php echo $freshboxcolor['Water 600-1']; ?>"></td><td class="<?php echo $refrige['Water 600-2']; ?>" style="<?php echo $freshboxcolor['Water 600-2']; ?>"></td><td class="<?php echo $refrige['Water 600-3']; ?>" style="<?php echo $freshboxcolor['Water 600-3']; ?>"></td>
								</tr>
							</table>
							<div class="overlay eggs-a">Eggs A</div>
							<div class="overlay eggs-b">Eggs B</div>
							<div class="overlay milk-200">Milk 200 ml.</div>
							<div class="overlay milk-400">Milk 400 ml.</div>
							<div class="overlay softdrink">Soft Drink 325 ml.</div>
							<div class="overlay milk-830">Milk 830 ml.</div>
							<div class="overlay water-600">Water 600 ml.</div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="col-sm-6">
				<div class="panel panel-danger">
					<div class="panel-heading">รายการของใกล้หมดอายุ</div>
						<table id="newtable" class="table table-hover" stryle="font-size: 12px">
							<thead class="hidden">
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
		/*echo "<tr style='$colornoti'>
			<td>$row[slot_barcode]</td>
			<td class='hidden-xs'>$row[product_barcode]</td>
			<td>$row[name]</td>
			<td>$row[expire_date]</td>
		</tr>";*/
		$expiretext = expireremain($row['expire_date']);
		echo "<tr style='$colornoti'>
			<td colspan='4'>
				<div class='card'>
					<span class='title'>$row[product_barcode]</span><span>$row[name]</span>
				</div>
				<div class='card'>
					<span>$row[slot_name]</span><span class='expire'>$expiretext</span>
				</div>

			</td>
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
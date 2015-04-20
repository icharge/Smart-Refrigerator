<!--content-->
<?php $noti = "";?>
	<div class="container documents">
		<div class="row">
			<div class="col-sm-6 col-sm-offset-3">
				<div class="well">
					<form action="<?php echo $formact; ?>" method="post">
						<div class="form-group input-group <?php echo form_error('productbarcode') ?>">
							<span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
							<input type="text" class="form-control disabled" name="productbarcode" placeholder="Barcode สินค้า" value="<?php echo (isset($product_barcode)?$product_barcode:''); ?>" disabled>
						</div>
						<div class="form-group input-group <?php echo form_error('slotbarcode') ?>">
							<span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
							<input type="text" class="form-control" name="slotbarcode" placeholder="Barcode ชั้นวาง" value="<?php echo (isset($slot_barcode)?$slot_barcode:''); ?>" disabled>
						</div>
						<div class="form-group input-group <?php echo form_error('productname') ?>">
							<span class="input-group-addon"><i class="glyphicon glyphicon-tag"></i></span>
							<input type="text" class="form-control" name="productname" placeholder="ชื่อสินค้า" value="<?php echo (isset($product_name)?$product_name:''); ?>" disabled>
						</div>
						<div class="form-group input-group <?php echo form_error('productnet') ?>">
							<span class="input-group-addon"><i class="glyphicon glyphicon-inbox"></i></span>
							<input type="text" class="form-control" name="productnet" placeholder="ปริมาณสุทธิ" value="<?php echo (isset($product_netcontent)?$product_netcontent:''); ?>" disabled>
						</div>
							<div class="form-group input-group <?php echo form_error('insert_date') ?>">
							<span class="input-group-addon"><i class="glyphicon glyphicon-inbox"></i></span>
							<input type="text" class="form-control" id="insert_date" name="insert_date" placeholder="วันซื้อสินค้า" value="<?php echo (isset($product_insertdate)?$product_insertdate:''); ?>" disabled>
						</div>
						<div class="form-group input-group <?php echo form_error('expire_date') ?>">
							<span class="input-group-addon"><i class="glyphicon glyphicon-inbox"></i></span>
							<input type="text" class="form-control" id="expire_date" name="expire_date" placeholder="วันหมดอายุ" value="<?php echo (isset($product_expiredate)?$product_expiredate:''); ?>">
						</div>
						<button type="submit" class="btn btn-primary btn-block"><?php echo $btnsubmit; ?></button>
					</form>
				</div>
			</div>
		</div>
	</div>
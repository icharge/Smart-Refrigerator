<!--content-->
	<div class="container documents">
		<div class="row">
			<div class="col-sm-6 col-sm-offset-3">
				<div class="well">
					<form action="<?php echo $formact; ?>" method="post">
						<div class="form-group input-group <?php echo form_error('productbarcode') ?>">
							<span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
							<input type="text" class="form-control" name="productbarcode" placeholder="Barcode สินค้า" value="<?php echo (isset($product_barcode)?$product_barcode:''); ?>">
						</div>
						<div class="form-group input-group <?php echo form_error('productname') ?>">
							<span class="input-group-addon"><i class="glyphicon glyphicon-tag"></i></span>
							<input type="text" class="form-control" name="productname" placeholder="ชื่อสินค้า" value="<?php echo (isset($product_name)?$product_name:''); ?>">
						</div>
						<div class="form-group input-group <?php echo form_error('productnet') ?>">
							<span class="input-group-addon"><i class="glyphicon glyphicon-inbox"></i></span>
							<input type="text" class="form-control" name="productnet" placeholder="ปริมาณสุทธิ" value="<?php echo (isset($product_netcontent)?$product_netcontent:''); ?>">
						</div>
						<button type="submit" class="btn btn-primary btn-block"><?php echo $btnsubmit; ?></button>
					</form>
				</div>
			</div>
		</div>
	</div>
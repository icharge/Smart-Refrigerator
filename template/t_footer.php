	<script type="text/javascript" src="js/jquery.min.js"></script>
	
	<script type="text/javascript" src="js/site.min.js"></script>
	<script type="text/javascript" src="js/jquery.tap.js"></script>
	<script type="text/javascript" src="jbox/jBox.min.js"></script>

<?php if ($noti != '') { ?>
	<script>
		$(function() {
			new jBox('Notice', {
				attributes: {
					x: 'right',
					y: 'top'
				},
				//theme: 'NoticeBorder',
				//color: 'black',
				audio: 'jBox/audio/tone_4',
				volume: '5',
				animation: {
					open: 'slide:top',
					close: 'slide:right'
				},
				autoClose: 10000,
				onInit: function() {
					this.options.color = 'red';
					this.options.title = 'แจ้งเตือน';
					this.options.content = '<?php echo $noti; ?>';
				},
			});
		});
	</script>
<?php } //$_SESSION['noti'] = true; ?>
<?php
	if (isset($loadscript)) {
		foreach ($loadscript as $item) {
			include "t_script_".$item.".php";
		}
	}
?>
	</body>
</html>
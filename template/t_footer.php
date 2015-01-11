	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui.min.js"></script>
 	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/bootstrap-datepicker.js"></script>
	<script type="text/javascript" src="js/bootstrap-datepicker.th.js"></script>
	
	<script type="text/javascript" src="js/jquery.tap.js"></script>
	<script type="text/javascript" src="jbox/jBox.min.js"></script>
	<script type="text/javascript">
		$(function($) {
			$('body').delegate('tr[href]', 'tap', function(e){
				var click = e.which;
				var url = $(this).attr('href');
				if(url){
					if(click <= 1){
						window.location.href = url;
					}
					else if(click == 2){
						window.open(url, '_blank');
						window.focus();
					}
					return true;
				}
			});

			$('#expire_date').datepicker({
				format: "dd/mm/yyyy",
				//todayBtn: "linked",
				language: "th",
				orientation: "bottom left",
				autoclose: true,
				//todayHighlight: true
			});
		});
	</script>
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
		<script type="text/javascript" src="js/site.min.js"></script>
	</body>
</html>
<!-- DATA TABES SCRIPT -->
<script src="js/datatables/jquery.dataTables.js" type="text/javascript"></script>
<script src="js/datatables/dataTables.bootstrap.js" type="text/javascript"></script>
<script type="text/javascript">
	$(function() {
		'use strict';
		$('#newtable').dataTable({
			"bPaginate": true,
			"bLengthChange": false,
			"bFilter": false,
			"bSort": true,
			"bInfo": false,
			"bAutoWidth": false,
			"oLanguage": {
				"sNext": "ถัดไป",
				"sPrevious": "ก่อนหน้า",
				"sInfo": "_PAGE_ / _PAGES_",
				"infoEmpty": "ไม่มีข้อมูล",
				"infoFiltered": "กรองข้อมูลแล้วจากทั้งหมด _MAX_"
			},
		});

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
		
	});
</script>
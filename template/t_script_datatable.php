<!-- DATA TABES SCRIPT -->
<script src="js/datatables/jquery.dataTables.js" type="text/javascript"></script>
<script src="js/datatables/dataTables.bootstrap.js" type="text/javascript"></script>
<script type="text/javascript">
	$(function() {
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
	});
</script>
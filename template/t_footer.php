	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/site.min.js"></script>

<?php
	if (isset($loadscript)) {
		foreach ($loadscript as $item) {
			include "t_script_".$item.".php";
		}
	}
?>
	</body>
</html>
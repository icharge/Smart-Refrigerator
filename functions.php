<?php
// FUNCTIONS
	error_reporting (E_ALL ^ E_NOTICE);

	function redirect($dest) {
		header("Location: $dest");
	}

	function form_validation($data) {
		$isError = false;
		foreach ($data as $item) {
			if ($item != '') $isError = true;
		}

		if ($isError) return false;
		else return true;
	}

	function form_check($text) {
		//$args = func_get_args();
		if ($text == "") return "error";
	}

	function form_error($x) {
		global $error;
		if (isset($error[$x])) {
			if ($error[$x] != "") {
				$v = $error[$x];
				return "has-$v";
			}
			else return "";
		} else return "";
	}

	# Date Functions
	function DateDiff($strDate1,$strDate2) {
		return (strtotime($strDate2) - strtotime($strDate1)) / ( 60 * 60 * 24 );  // 1 day = 60*60*24
	}

	function TimeDiff($strTime1,$strTime2) {
		return (strtotime($strTime2) - strtotime($strTime1)) / ( 60 * 60 ); // 1 Hour =  60*60
	}

	function DateTimeDiff($strDateTime1,$strDateTime2) {
		return (strtotime($strDateTime2) - strtotime($strDateTime1)) / ( 60 * 60 ); // 1 Hour =  60*60
	}
	# ----------------

	function expirewarningcolor($date) {
		$countday = DateDiff(date('Y-m-d'), $date);
		if ($countday >= 10) $color = "#FFFFCC";
		elseif ($countday >= 8) $color = "#FFCC99";
		elseif ($countday >= 6) $color = "#FF9966";
		elseif ($countday >= 4) $color = "#FF6633; color: #FFF";
		elseif ($countday >= 2) $color = "#FF3300; color: #FFF";
		else $color = "#FF0000; color: #FFF";

		return "background-color: $color";
	}
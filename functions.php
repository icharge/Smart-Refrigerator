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
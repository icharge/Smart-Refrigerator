<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Smart Refrigerator</title>
		<!-- Sets initial viewport load and disables zooming  -->
		<meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no">
		<meta name="format-detection" content="telephone=no">
		
		<!-- SmartAddon.com Verification -->
		<link rel="shortcut icon" href="favicon_16.ico"/>
		<link rel="bookmark" href="favicon_16.ico"/>
		<!-- site css -->
		<link rel="stylesheet" href="css/site.min.css">
		<link rel="stylesheet" href="css/jquery.dataTables.css">
		<link rel="stylesheet" href="css/style.css">
		<!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
		<!--[if lt IE 9]>
			<script src="js/html5shiv.js"></script>
			<script src="js/respond.min.js"></script>
		<![endif]-->
	</head>
	<body style="background-color: #f1f2f6;">
		<div class="docs-header">
			<?php include "t_nav.php"; ?>
			<?php if (isset($header)) { ?>
			<!--header-->
			<div class="topic">
				<div class="container">
					<div class="col-md-8">
						<?php if (isset($header['title'])) echo "<h3>$header[title]</h3>"; ?>
						<?php if (isset($header['subtitle'])) echo "<h4>$header[subtitle]</h4>"; ?>
					</div>
					<div class="col-md-4"></div>
				</div>
				<!-- <div class="topic__infos">
					<div class="container">
						Bootflat offers over a dozen reusable components, which can be combined with each other.
					</div>
				</div> -->
			</div>
			<?php } ?>
		</div>
<?php

require_once('mailer/class.phpmailer.php');

function sendEmail($content) {

	$mail = new PHPMailer();
	$mail->IsHTML(true);
	$mail->IsSMTP();
	$mail->SMTPAuth = true; // enable SMTP authentication
	$mail->SMTPSecure = "tls"; // sets the prefix to the servier
	$mail->SMTPDebug = 0; // Debugging msg

	$mail->CharSet = 'UTF-8'; // Support Thai language

	$mail->Host = "smtp.gmail.com"; // sets GMAIL as the SMTP server
	$mail->Port = 587; // set the SMTP port for the GMAIL server
	$mail->Username = "xxxx@gmail.com"; // GMAIL username
	$mail->Password = 'password'; // GMAIL password
	// =======================================================
	$mail->SetFrom($mail->Username); // From
	//$mail->AddReplyTo = "support@xxxx.com"; // Reply
	$mail->FromName = "Smart Refrigerator";  // set from Name
	$mail->AddAddress("xxxxx", "xxxxx"); // to Address


	$mail->Subject = EMAIL_SUBJECT; 
	$mail->Body = $content;

	if (!$mail->Send()) {
		echo "Error: $mail->ErrorInfo";
		return false;
	} else {
		return true;
	}
}

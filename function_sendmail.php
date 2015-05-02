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
	$mail->Username = "smartref.mu@gmail.com"; // GMAIL username
	$mail->Password = 'root1234'; // GMAIL password
	// =======================================================
	$mail->SetFrom($mail->Username); // From
	//$mail->AddReplyTo = "support@xxxx.com"; // Reply
	$mail->FromName = "Smart Refrigerator";  // set from Name
	$mail->AddAddress("parimprimmm@gmail.com", "Prim"); // to Address


	$mail->Subject = "แจ้งเตือน การหมดอายุ " . date('d/m/Y'); 
	$mail->Body = $content;

	if (!$mail->Send()) {
		echo "Error: $mail->ErrorInfo";
		return false;
	} else {
		return true;
	}
}

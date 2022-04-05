<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

require_once "PHPMailer/src/PHPMailer.php";
require_once "PHPMailer/src/SMTP.php";
require_once "PHPMailer/src/Exception.php";

function sendEmail($email, $name, $message)
{
    $mail = new PHPMailer(true);

    //Enable SMTP debugging.
    $mail->SMTPDebug = 0; //0 or 2

    //Set PHPMailer to use SMTP.
    $mail->isSMTP();

    //Set SMTP host name
    $mail->Host = "smtp.gmail.com";

    //Set this to true if SMTP host requires authentication to send email
    $mail->SMTPAuth = true;

    $mail->SMTPOptions = [
        'ssl' => [
            'verify_peer' => false,
            'verify_peer_name' => false,
            'allow_self_signed' => true,
        ],
    ];

    //Provide username and password
    $mail->Username = "childimmunizationcenter@gmail.com";
    $mail->Password = "Akash@9867";

    //If SMTP requires TLS encryption then set it
    $mail->SMTPSecure = "tls";

    //Set TCP port to connect to
    $mail->Port = 587;

    $mail->From = "childimmunizationcenter@gmail.com";
    $mail->FromName = "Child Immunization Center";

    $mail->addAddress($email, $name);

    $mail->isHTML(true);
    $mail->Subject = "Vaccine Due " . $name . " Child Immunization Center";

    $mail->Body = $message;

    try {
        $mail->send();
        echo "<h2>Email has been sent successfully</h2>";
    } catch (Exception $e) {
        echo "Mailer Error: " . $mail->ErrorInfo;
    }
}

?>

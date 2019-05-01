<?php

    $mail = new PHPMailer();
    $mail->IsSMTP();
    //$mail->SMTPDebug = 2;
    $mail->SMTPAuth = true;
    $mail->SMTPSecure = "ssl";
    $mail->Host = "smtp.gmail.com";
    $mail->Port = 465;
    $mail->Username = "web.portfolio.contact@gmail.com";
    $mail->Password = "webportfolio123456";

?>
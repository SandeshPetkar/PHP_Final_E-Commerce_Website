<?php


function sendMail($t, $s, $b)
{
  $to = $t;
  $subject = $s;
  $txt = $b;
  $headers = "From: sandeshpetkar@dainiksandesh.co.in" . "\r\n";

  $done = mail($to, $subject, $txt, $headers);
  if ($done) {
    return "Mail send successfully.";
  } else {
    return "Mail not send successfully.";
  }
}

?>
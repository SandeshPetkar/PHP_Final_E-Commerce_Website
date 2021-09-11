<?php
session_start();
include('connection.php');

// $e=$_POST['emailSandesh'];

// $sql = "select * from signup where email = '$e'";

// $query = mysqli_query($con, $sql);

// $q = mysqli_fetch_assoc($query);

// $count = mysqli_num_rows($query);

// if($count=='0'){
// 	$otp=rand(1111,9999);
// 	$html="$otp is your otp.";
// 	$_SESSION['OTP']=$otp;
	
// 	include('smtp/PHPMailerAutoload.php');
// 		$mail=new PHPMailer(true);
// 		$mail->isSMTP();
// 		$mail->Host="smtp.gmail.com";
// 		$mail->Port=587;
// 		$mail->SMTPSecure="tls";
// 		$mail->SMTPAuth=true;
// 		$mail->Username="sandeshpetkar2@gmail.com";
// 		$mail->Password="andeshpet";
// 		$mail->SetFrom("sandeshpetkar2@gmail.com");
// 		$mail->addAddress($e);
// 		$mail->IsHTML(true);
// 		$mail->Subject="New OTP";
// 		$mail->Body=$html;
// 		$mail->SMTPOptions=array('ssl'=>array(
// 			'verify_peer'=>false,
// 			'verify_peer_name'=>false,
// 			'allow_self_signed'=>false
// 		));
// 		if($mail->send()){
// 			echo "Mail send";
// 		}
// }else{
// 	echo "User Exist";
// }

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

if (isset($_POST['emailSandesh'])) {

  $e = $_POST['emailSandesh'];

  $sql = "select * from signup where email = '$e'";

  $query = mysqli_query($con, $sql);

  $q = mysqli_fetch_assoc($query);

  $count = mysqli_num_rows($query);

  if ($count == '0') {
    $otp = rand(1111, 9999);
    $html = "$otp is your otp.";
    $_SESSION['OTP'] = $otp;

    $done = sendMail($e, "New OTP", $html);

    if ($done == "Mail send successfully.") {
      echo "Mail send successfully.";
    } else {
      echo "Mail not send successfully.";
    }
  } else {
    echo "User Exist";
  }
}

?>
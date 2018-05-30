<?php
session_start();
include "qrcode/qrlib.php";
header('Content-type: image/png');
$AID=$_SESSION[A_ID];
$NAMA=$_SESSION[A_NAMA];
$STATUS=$_SESSION[A_STATUS];
$png_image = imagecreatefrompng('card.png');
$code = QRcode::png($AID,"qrcode.png",QR_ECLEVEL_H, 4, 2);
$code = imagecreatefrompng('qrcode.png');
$black = imagecolorallocate($png_image, 0, 0, 0);
$font='./font.ttf';
imagettftext($png_image, 24, 0, 343, 140, $black, $font,$AID);
imagettftext($png_image, 24, 0, 343, 187, $black, $font,$NAMA);
imagettftext($png_image, 24, 0, 343, 238, $black, $font,$STATUS);
imagecopymerge($png_image, $code, 47, 125, 0, 0, 100, 100, 100);
imagepng($png_image);
imagedestroy($png_image);
unlink("qrcode.png");
?>

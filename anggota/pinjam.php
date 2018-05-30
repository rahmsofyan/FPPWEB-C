<?php
session_start();
include("config.php");
$sql = "select * from view_buku";
$B_ID=$_GET[B_ID];
$A_ID=$_SESSION[A_ID];
$sql = "INSERT INTO peminjaman values ('free',)";
echo $B_ID.$A_ID;
//$query = mysqli_query($db, $sql)
 ?>

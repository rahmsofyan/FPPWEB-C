<?php
session_start();
include("config.php");
$A_ID=$_POST[A_ID];
echo  $A_ID;
$sql = "call hapus('$A_ID');";
$query = mysqli_query($db, $sql);
$result = mysqli_fetch_array($query);
header("location: spesialhapus.php");
 ?>

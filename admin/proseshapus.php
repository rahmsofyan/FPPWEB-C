<?php
session_start();
include("config.php");
$sql = "call hapus_anggota();";
$query = mysqli_query($db, $sql);
$result = mysqli_fetch_array($query);
header("location: semuahapus.php");
$_SESSION[semuahapus]=1;
 ?>

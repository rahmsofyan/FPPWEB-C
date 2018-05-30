<?php
session_start();
include("config.php");
$sql = "call tambah_denda_all();";
$query = mysqli_query($db, $sql);
$result = mysqli_fetch_array($query);
header("location: semuahapus.php");
$_SESSION[tambahdenda]=1;
 ?>

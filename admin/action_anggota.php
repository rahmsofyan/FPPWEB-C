<?php
session_start(); // Starting Session

  // Establishing Connection with Server by passing server_name, user_id and password as a parameter
  $server = "zphare.com";
  $userdb = "zphareco_fppweb";
  $passworddb = "@dadada123";
  $nama_database = "zphareco_FPPWEB";

  $db = mysqli_connect($server, $userdb, $passworddb, $nama_database);
  // SQL query to fetch information of registerd users and finds user match.
  $query = mysqli_query($db,"select * from user_pegawai where username='$username' AND password=md5('$password');");

  $A_ID ="TES";
  $A_NAMA =$_POST[A_NAMA];
  $A_ALAMAT=$_POST[A_ALAMAT];
  $A_TELPON=$_POST[A_TELPON];
  $A_TEMPAT_LAHIR=$_POST[A_TEMPAT_LAHIR];
  $A_TANGGAL_LAHIR=$_POST[A_TANGGAL_LAHIR];
  $A_STATUS=$_POST[A_STATUS];
  $A_EMAIL=$_POST[A_EMAIL];
  $A_KALAMIN=$_POST[A_KELAMIN];

  $query ="INSERT INTO anggota VALUES('$A_ID','$A_NAMA','$A_ALAMAT','$A_TELPON','$A_TEMPAT_LAHIR','$A_TANGGAL_LAHIR','$A_STATUS','$A_EMAIL','$A_KALAMIN');";
    $tes = mysqli_query($db,$query);
    echo "$query";
header("Location : ./regbuku.php");
?>

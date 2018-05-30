<?php
 session_start(); // Starting Session
//
  // Establishing Connection with Server by passing server_name, user_id and password as a parameter
  $server = "zphare.com";
  $userdb = "zphareco_fppweb";
  $passworddb = "@dadada123";
  $nama_database = "zphareco_FPPWEB";

   $db = mysqli_connect($server, $userdb, $passworddb, $nama_database);
 // SQL query to fetch information of registerd users and finds user match.
//
  $E_ID ="default";
  $P_ID =$_SESSION[P_ID];
  $B_ID =$_POST[B_ID];
  $A_ID =$_POST[A_ID];
  $TGL =$_POST[T_TANGGAL_PINJAM].date("Y/m/d");
  $TG2 ="null";
  $E_STATUS ="Belum Dikembalikan";

	$query ="INSERT INTO peminjaman VALUES('$E_ID','$P_ID','$A_ID','$B_ID','$TGL','$TGL2','$E_STATUS');";
  echo $query;
 $tes = mysqli_query($db,$query);
//
//    // Check if image file is a actual image or fake image
 header("location: registerpeminjaman.php");
?>

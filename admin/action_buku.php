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

  $B_ID ="TES";
  $K_ID =$_POST[K_ID];
  $C_ID =$_POST[C_ID];
  $B_JUDUL=$_POST[B_JUDUL];
  $B_TAHUN=$_POST[B_TAHUN];
  $B_TEMPAT=$_POST[B_TEMPAT];
  $B_EDISI=$_POST[B_EDISI];
  $B_PENULIS=$_POST[B_PENULIS];
  $B_INTISARI=$_POST[B_INTISARI];
  $B_EKSEMPLAR=$_POST[B_EKSEMPLAR];
  $B_STATUS ="tersedia";
  $B_ISBN = $_POST[B_ISBN];
  $B_LOKASI_FISIK = $_POST[B_LOKASI_FISIK];
	$query ="INSERT INTO buku VALUES('$B_ID','$K_ID','$C_ID','$B_JUDUL','$B_TAHUN','$B_TEMPAT','$B_EDISI','$B_PENULIS','$B_INTISARI',
    '$B_EKSEMPLAR','$B_STATUS','$B_ISBN','$B_LOKASI_FISIK');";
    $tes = mysqli_query($db,$query);

  $query = "select B_ID FROM buku order by B_ID DESC limit 2";
  $tes = mysqli_query($db,$query);;
  $baris=mysqli_fetch_array($tes);
  $baris=mysqli_fetch_array($tes);
  $k = $baris[B_ID];

   $target_dir = "../assets/buku/";
   $target_file = $target_dir . $k.".png";
   $uploadOk = 1;
   $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
   // Check if image file is a actual image or fake image
   move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file);
//header("Location : regbuku.php");
?>

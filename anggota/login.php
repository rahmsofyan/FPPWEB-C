<?php
session_start(); // Starting Session
$error=''; // Variable To Store Error Message
if (isset($_POST['submit']))
{
	if (empty($_POST['username']) || empty($_POST['password']))
	{
		$error = "Username dan Password harus diisi";
		echo "<script>window.alert(\"$error\"); </script>";
	}
}
else {
  // Define $username and $password
  $username=$_POST['username'];
  $password=$_POST['password'];

  // Establishing Connection with Server by passing server_name, user_id and password as a parameter
  $server = "zphare.com";
  $userdb = "zphareco_fppweb";
  $passworddb = "@dadada123";
  $nama_database = "zphareco_FPPWEB";

  $db = mysqli_connect($server, $userdb, $passworddb, $nama_database);
  // SQL query to fetch information of registerd users and finds user match.
  $query = mysqli_query($db,"select * from user_anggota where username='$username' AND password=md5('$password');");
  $rows = mysqli_num_rows($query);
	$baris=mysqli_fetch_assoc($query);
	$aid=$baris['a_id'];
	$query = mysqli_query($db,"select * from anggota where a_id='$aid';");
	$baris=mysqli_fetch_assoc($query);
  if ($rows == 1)
  {
    $_SESSION['login_user']=$username;
		$_SESSION['nama_user']=$baris['A_NAMA'];
		$_SESSION['A_NAMA']=$baris['A_NAMA'];
		$_SESSION['A_STATUS']=$baris['A_STATUS'];
		$_SESSION['A_ID']=$aid; // Initializing Session
    header("location: dashboard.php"); // Redirecting To Other Page
  }
  else
  {
    $error = "Username dan passowrd tidak sesuai";
    echo "<script>window.alert(\"$error\"); </script>";
  }
  mysqli_close($connection); // Closing Connection
  }

?>

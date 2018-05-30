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
	else
	{
		// Define $username and $password
		$username=$_POST['username'];
		$password=$_POST['password'];
		// Establishing Connection with Server by passing server_name, user_id and password as a parameter
		$connection = mysqli_connect("localhost", "root", "");
		$db = mysqli_select_db($connection,"prak1");
		// SQL query to fetch information of registerd users and finds user match.
		$query = mysqli_query($connection,"select * from user where user_password=md5($password) AND user_username='$username'");
		$rows = mysqli_num_rows($query);
		if ($rows == 1)
		{
			$_SESSION['login_user']=$username; // Initializing Session
			header("location: home_page.php"); // Redirecting To Other Page
		}
		else
		{
			$error = "Username atau Password salah";
			echo "<script>window.alert(\"$error\"); </script>";
		}
		mysqli_close($connection); // Closing Connection
	}
}

else if (isset($_POST['register']))
{
	$username=$_POST['username-regis'];
	$password=$_POST['password-regis'];
	$cpassword=$_POST['cpassword-regis'];

	if (empty($_POST['username-regis']) || empty($_POST['password-regis']) || empty($_POST['cpassword-regis']))
		{
			$error = "Pastikan tidak ada data yang kosong";
			echo "<script>window.alert(\"$error\"); </script>";
		}
	else if(strcmp($password,$cpassword)!=0)
		{
			$error = "password tidak sama";
			echo "<script>window.alert(\"$error\"); </script>";
		}

}
?>

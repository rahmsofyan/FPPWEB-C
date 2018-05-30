<?php
	$server = "zphare.com";
	$user = "zphareco_fppweb";
	$password = "@dadada123";
	$nama_database = "zphareco_FPPWEB";

	$db = mysqli_connect($server, $user, $password, $nama_database);

	if (!$db) {
		die ("Gagal terhubung dengan Database : ". mysqli_connect_error());
	}
?>

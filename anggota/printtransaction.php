<?php ob_start(); ?>
<html>
<head>
	<title>Transaksi</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <!-- Our Custom CSS -->
  <link rel="stylesheet" href="css/main.css">
  <link rel="stylesheet" type="text/css" href="css/main2.css">
  <!-- Scrollbar Custom CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.css">
	<style>
		table {
			border-collapse:collapse;
			table-layout:fixed;width: 630px;
		}
		table td {
			word-wrap:break-word;
			width: 20%;
		}
	</style>
</head>
<body>

<h1 style="text-align: center;">Data Peminjaman</h1>
  <table  style="text-align: center; margin-left:100px;" border="2">
    <br><br>
<tr>
	<th>ID TRANSAKSI</th>
  <th>Judul Buku</th>
	<th>Pegawai</th>
	<th>Peminjam</th>
	<th>TGL Pinjam</th>
	<th>TGL Kembali</th>
  <th>Status</th>
</tr>
<?php
// Load file koneksi.php
include "config.php";
session_start();
$query = "SELECT E_ID as A,buku.B_JUDUL AS B,pegawai.P_NAMA AS C,anggota.A_NAMA as G,E_TANGGAL_PEMINJAMAN AS D,E_TANGGAL_PENGEMBALIAN AS E,E_STATUS AS F FROM peminjaman,buku,pegawai,anggota
where anggota.A_ID='$_SESSION[A_ID]' AND anggota.A_ID = peminjaman.A_ID AND peminjaman.B_ID = buku.B_ID AND peminjaman.P_ID = pegawai.P_ID ORDER BY E_ID DESC;"; // Tampilkan semua data gambar
$sql = mysqli_query($db, $query); // Eksekusi/Jalankan query dari variabel $query
$row = mysqli_num_rows($sql); // Ambil jumlah data dari hasil eksekusi $sql

if($row > 0){ // Jika jumlah data lebih dari 0 (Berarti jika data ada)
    while($data = mysqli_fetch_array($sql)){ // Ambil semua data dari hasil eksekusi $sql
        echo "<tr>";
        echo "<td>".$data[A]."</td>";
        echo "<td>".$data[B]."</td>";
        echo "<td>".$data[C]."</td>";
        echo "<td>".$data[G]."</td>";
        echo "<td>".$data[D]."</td>";
        echo "<td>".$data[E]."</td>";
        echo "<td>".$data[F]."</td>";
        echo "</tr>";
    }
}else{ // Jika data tidak ada
    echo "<tr><td colspan='4'>Data tidak ada</td></tr>";
}
?>
</table>

</body>
</html>
<?php
$html = ob_get_contents();
ob_end_clean();

require_once('html2pdf/html2pdf.class.php');
$pdf = new HTML2PDF('L','A4','en');
$pdf->WriteHTML($html);
$pdf->Output('Transaksi.pdf', 'D');
?>

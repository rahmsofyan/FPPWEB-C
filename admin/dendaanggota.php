<?php
session_start();
 ?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <title>Collapsible sidebar using Bootstrap 3</title>

        <!-- Bootstrap CSS CDN -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <!-- Our Custom CSS -->
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" type="text/css" href="css/main2.css">
        <!-- Scrollbar Custom CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.css">
        <link rel="stylesheet" href="lib/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="lib/bootstrap/css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="lib/font-awesome-4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/teman.css">
    </head>
    <body>



        <div class="wrapper">
            <!-- Sidebar Holder -->
            <nav id="sidebar">
                <div class="sidebar-header">
                    <h3>Pegawai</h3>
                </div>

                <ul class="list-unstyled components" >
                    <p style="text-transform:capitalize; font-size:20px; font-weight:bold;">
                      <?php
                      echo $_SESSION['nama_user']
                      ?>
                    </p>
                    <li class="active">
                        <a href="#tabelSubmenu" data-toggle="collapse" aria-expanded="false">Tabel</a>
                        <ul class="collapse list-unstyled" id="tabelSubmenu">
                            <li><a href="http://fppweb.zphare.com/admin/tabelanggota.php">Anggota</a></li>
                            <li><a href="http://fppweb.zphare.com/admin/tabelpeminjaman.php">Peminjaman</a></li>
                            <li><a href="http://fppweb.zphare.com/admin/tabelpegawai.php">Pegawai</a></li>
                            <li><a href="http://fppweb.zphare.com/admin/tabelpengunjung.php">Pengunjung</a></li>
                            <li><a href="http://fppweb.zphare.com/admin/tabeldenda.php">Denda</a></li>
                            <li><a href="http://fppweb.zphare.com/admin/tabelbuku.php">Buku</a></li>
                            <li><a href="http://fppweb.zphare.com/admin/tabelkategori.php">Kategori</a></li>
                            <li><a href="http://fppweb.zphare.com/admin/tabelpenerbit.php">Penerbit</a></li>
                        </ul>
                    </li>
                    <li>
                      <a href="#keanggotaanSubmenu" data-toggle="collapse" aria-expanded="false">Keanggotaan</a>
                      <ul class="collapse list-unstyled" id="keanggotaanSubmenu">
                          <li><a href="#">Hapus Spesial</a></li>
                          <li><a href="#">Hapus Semua</a></li>
                      </ul>
                        <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false">Denda</a>
                        <ul class="collapse list-unstyled" id="pageSubmenu">
                            <li><a href="#">Pendapatan</a></li>
                            <li><a href="#">Denda Anggota</a></li>
                            <li><a href="#">Tambah Denda</a></li>
                            <li><a href="#">Hapus Denda</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">Portfolio</a>
                    </li>
                    <li>
                        <a href="#">Contact</a>
                    </li>
                </ul>

                <ul class="list-unstyled CTAs">
                    <li><a href="https://bootstrapious.com/tutorial/files/sidebar.zip" class="download">Download source</a></li>
                    <li><a href="https://bootstrapious.com/p/bootstrap-sidebar" class="article">Logout</a></li>
                </ul>
            </nav>

            <!-- Page Content Holder -->
            <div id="content">

                <nav class="navbar navbar-default">
                    <div class="container-fluid">

                        <div class="navbar-header">
                            <button type="button" id="sidebarCollapse" class="btn btn-info navbar-btn">
                                <i class="glyphicon glyphicon-align-left"></i>
                                <span>Navigation</span>
                            </button>
                        </div>

                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav navbar-right">
                                <li><a href="#">Denda Anggota</a></li>

                            </ul>
                        </div>
                    </div>
                </nav>

                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <th>Anngota Id</th>
                        <th>Nama Anggota</th>
                        <th>Buku Id</th>
                        <th>Judul Buku</th>
                        <th>Biaya Denda</th>
                        <th>Status Denda</th>
                    </tr>
                    </thead>
                    <tbody>
                      <?php
                      include("config.php");
                      // $sql="select * from anggota";

                      $sql = "select a.a_id, a.a_nama, b.b_id, b.b_judul, d.d_biaya, d.d_status
                                FROM anggota a LEFT JOIN peminjaman e ON (a.a_id = e.a_id)
                                LEFT JOIN buku b ON (e.b_id = b.b_id)
                            LEFT JOIN denda d ON (e.e_id = d.e_id);";

                      $query = mysqli_query($db, $sql);
                      // var_dump("tayar");
//                    var_dump($query);
                      while($dendaanggota = mysqli_fetch_array($query)){
//                        var_dump($dendaanggota);
                        echo "<tr>";
                        echo "<td>".$dendaanggota[a_id]."</td>";
                        echo "<td>".$dendaanggota[a_nama]."</td>";
                        echo "<td>".$dendaanggota[b_id]."</td>";
                        echo "<td>".$dendaanggota[b_judul]."</td>";
                        echo "<td>".$dendaanggota[d_biaya]."</td>";
                        echo "<td>".$dendaanggota[d_status]."</td>";
                        echo "</tr>";
                      }


                   ?>
                    </tbody>
                </table>
            </div>
        </div>





        <!-- jQuery CDN -->
        <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
        <!-- Bootstrap Js CDN -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <!-- jQuery Custom Scroller CDN -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.concat.min.js"></script>

        <script type="text/javascript">
            $(document).ready(function () {
                $("#sidebar").mCustomScrollbar({
                    theme: "minimal"
                });

                $('#sidebarCollapse').on('click', function () {
                    $('#sidebar, #content').toggleClass('active');
                    $('.collapse.in').toggleClass('in');
                    $('a[aria-expanded=true]').attr('aria-expanded', 'false');
                });
            });
        </script>
    </body>
</html>

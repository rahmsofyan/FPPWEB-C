<?php
session_start();
 ?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <title>Pegawai Dashboard</title>

        <!-- Bootstrap CSS CDN -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <!-- Our Custom CSS -->
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" type="text/css" href="css/main2.css">
        <!-- Scrollbar Custom CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.css">

    </head>
    <body>



        <div class="wrapper">
            <!-- Sidebar Holder -->
            <nav id="sidebar">
                <div class="sidebar-header">
                    <h3>Pegawai</h3>
                </div>

                <ul class="list-unstyled components" >
                    <a href="dashboard.php" style="margin-bottom:40px!important; text-transform:capitalize; font-size:30px; color:black; font-weight:bold;">
                      <?php
                      echo $_SESSION['nama_user']
                      ?>
                    </a>
                    <li class="active">
                        <a href="#tabelSubmenu" data-toggle="collapse" aria-expanded="false">Tabel</a>
                        <ul class="collapse list-unstyled" id="tabelSubmenu">
                            <li><a href="tabelanggota.php">Anggota</a></li>
                            <li><a href="tabelpeminjaman.php">Peminjaman</a></li>
                            <li><a href="tabelpegawai.php">Pegawai</a></li>
                            <li><a href="tabelpengunjung.php">Pengunjung</a></li>
                            <li><a href="tabeldenda.php">Denda</a></li>
                            <li><a href="tabelbuku.php">Buku</a></li>
                            <li><a href="tabelkategori.php">Kategori</a></li>
                            <li><a href="tabelpenerbit.php">Penerbit</a></li>

                        </ul>
                    </li>
                    <li>
                      <a href="#keanggotaanSubmenu" data-toggle="collapse" aria-expanded="false">Keanggotaan</a>
                      <ul class="collapse list-unstyled" id="keanggotaanSubmenu">
                          <li><a href="spesialhapus.php">Hapus Spesial</a></li>
                          <li><a href="semuahapus.php">Hapus Semua</a></li>
                      </ul>
                        <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false">Denda</a>
                        <ul class="collapse list-unstyled" id="pageSubmenu">
                            <li><a href="pendapatandenda.php">Pendapatan</a></li>
                            <li><a href="anggotadenda.php">Denda Anggota</a></li>
                            <li><a href="tambahdenda.php">Tambah Denda</a></li>
                            <li><a href="spesialdenda.php">Hapus Denda</a></li>
                        </ul>

                        <a href="#registerSubmenu" data-toggle="collapse" aria-expanded="false">Register</a>
                        <ul class="collapse list-unstyled" id="registerSubmenu">
                            <li><a href="reganggota.php">Register Anggota</a></li>
                            <li><a href="regbuku.php">Register Buku</a></li>
                            <li><a href="registerpeminjaman.php">Register Peminjaman</a></li>
                        </ul>
                        <ul class="list-unstyled components">
                        <li>
                              <a href="peminjamanoleh.php">Peminjaman</a>
                        </li>
                      </ul>
                    </li>
                </ul>

                <ul class="list-unstyled CTAs">
                    <li><a href="tmp.php" class="article"
                      action="logout">Logout</a></li>
                </ul>
            </nav>


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
                                <li><a href="#">Tabel Pegawai</a></li>
                            </ul>
                        </div>
                    </div>
                </nav>

                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <th>Id</th>
                        <th>Nama</th>
                        <th>Alamat</th>
                        <th>Telophon</th>
                        <th>Tempat_lahir</th>
                        <th>Tanggal_lahir</th>
                    </tr>
                    </thead>
                    <tbody>
                      <?php
                      include("config.php");
                      $sql = "select * from pegawai";
                      $query = mysqli_query($db, $sql);
                      while($pegawai = mysqli_fetch_array($query)){
                        echo "<tr>";
                        echo "<td>".$pegawai[P_ID]."</td>";
                        echo "<td>".$pegawai[P_NAMA]."</td>";
                        echo "<td>".$pegawai[P_ALAMAT]."</td>";
                        echo "<td>".$pegawai[P_TELPON]."</td>";
                        echo "<td>".$pegawai[P_TEMPAT_LAHIR]."</td>";
                        echo "<td>".$pegawai[P_TANGGAL_LAHIR]."</td>";
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

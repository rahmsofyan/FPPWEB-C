<?php
session_start();
 ?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <title>Anggota Dashboard</title>

        <!-- Bootstrap CSS CDN -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <!-- Our Custom CSS -->
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" type="text/css" href="css/main2.css">
        <link rel="stylesheet" type="text/css" href="css/top5.css">
        <!-- Scrollbar Custom CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.css">

    </head>
    <body>



        <div class="wrapper">
            <!-- Sidebar Holder -->
            <nav id="sidebar">
                <div class="sidebar-header">
                    <h3>Anggota</h3>
                </div>

                <ul class="list-unstyled components" >
                    <p style="text-transform:capitalize; font-size:20px; font-weight:bold;">
                      <?php
                      echo $_SESSION['nama_user']
                      ?>
                    </p>
                    <li>
                        <a href="adabuku.php">Buku Tersedia</a>
                    </li>
                    <li>
                        <a href="kategori.php">Kategori</a>
                    </li>
                    <li>
                        <a href="top5.php">TOP 5</a>
                    </li>
                    <li>
                        <a href="kartuanggota.php">Cetak Kartu</a>
                    </li>
                    <li>
                        <a href="transaksianggota.php">Cetak Transaksi</a>
                    </li>
                </ul>

                <ul class="list-unstyled CTAs">
                    <li><a href="logout.php" class="article"
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
                                <li><a href="#">Page</a></li>
                                <li><a href="#">Page</a></li>
                                <li><a href="#">Page</a></li>
                                <li><a href="#">Page</a></li>
                            </ul>
                        </div>
                    </div>
                </nav>


                <!-- Page Content Holder -->

                <div>
                  <?php
                  include("config.php");
                  $sql = "select * from TOP_5_BUKU";
                  $query = mysqli_query($db, $sql);
                  while($buku = mysqli_fetch_array($query)){
                    echo '<div class="gallery">';
                    echo '<a target="_blank" href="';
                    echo $buku[b_judul];
                    echo '">';
                    echo '<img src="../assets/buku/';
                    echo "$buku[b_id].png";
                    echo '" width="300" height="300">';
                    echo '</a>';
                    echo '<div class="desc">';
                    echo $buku[b_judul];
                    echo'</div>';
                    echo '</div>';
                  }
                   ?>
                </div>
                <!-- Page Content Holder end-->
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

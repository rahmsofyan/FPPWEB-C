<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Perpustakaan </title>
    <link rel="icon" type="png" href="assets/favicon.png">
    <!-- Bootstrap -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/special/slideshow.css">
    <link rel="stylesheet" href="css/special/navbar.css">
    <link rel="stylesheet" href="css/special/bg.css">
    <link rel="stylesheet" href="css/special/konten.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--js-->
      <script src="js/popper.min.js"></script>
      <script src="js/jquery.min.js"></script>
      <script src="js/bootstrap.min.js"></script>

      <style>

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
    background-color: #fefefe;
    margin: auto;
    padding: 20px;
    border: 1px solid #888;
    width: 80%;
}

/* The Close Button */
.close {
    color: #aaaaaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: #000;
    text-decoration: none;
    cursor: pointer;
}
</style>


  </head>
  <body id="custom">
<!--Navbar-->
<nav class="navbar navbar-expand-lg fixed-top navbar-light bg-light" >
  <img src="assets/favicon.png" class="navbar-brand custom-brand" href="#icon" style="width:120px; height:120px; margin-top:30px;">
  <h1 class="title-web">LIBRARY</h1>
   <button class="navbar-toggler btn btn-primary" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    Menu
  </button>
   <div class="collapse navbar-collapse menu-custom" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">
      <li class="nav-item">
        <a class="nav-link font-custom-link" href="daftarbuku.php">Daftar Buku</a>
      </li>
      <li class="nav-item">
        <a class="nav-link font-custom-link btn btn-primary" style="background-color:RGB(27,36,121);  border:none;" href="anggota/index.php">Anggota</a>
      </li>
      <li class="nav-item" style="padding-left:10px;">
        <a class="nav-link font-custom-link btn btn-primary" style="background-color:RGB(72,10,167); border:none;" href="admin/index.php">Pegawai</a>
      </li>
    <ul>
    </div>


</nav>

<!--Slideshow-->
<div id="demo" class="carousel slide bg slide-custom" data-ride="carousel" style="padding-top:75px;">
  <!-- Indicators
  <ul class="carousel-indicators" >
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>
-->
  <!-- The slideshow -->
  <div class="carousel-inner" style="padding-bottom:50px!important;">
    <div class="carousel-item active">
      <div class="row boxx">
        <div class="col-sm-4">
          <img class="shadow-lg" src="assets/buku/B0001.png" ></img>
        </div>
        <div class="col-sm-4">
          <img class="shadow-lg" src="assets/buku/B0002.png"></img>
        </div>
        <div class="col-sm-4">
          <img class="shadow-lg" src="assets/buku/B0003.png" ></img>
        </div>
    </div>
    </div>
    <div class="carousel-item">
      <div class="row boxx">
        <div class="col-sm-4">
          <img class="shadow-lg" src="assets/buku/B0004.png" ></img>
        </div>
        <div class="col-sm-4">
          <img class="shadow-lg" src="assets/buku/B0005.png"></img>
        </div>
        <div class="col-sm-4">
          <img class="shadow-lg" src="assets/buku/B0006.png" ></img>
        </div>
    </div>
    </div>

    <div class="carousel-item">
      <div class="row boxx">
        <div class="col-sm-4">
          <img class="shadow-lg" src="assets/buku/B0007.png" ></img>
        </div>
        <div class="col-sm-4">
          <img class="shadow-lg" src="assets/buku/B0008.png"></img>
        </div>
        <div class="col-sm-4">
          <img class="shadow-lg" src="assets/buku/B0009.png" ></img>
        </div>
    </div>
    </div>


    <div class="carousel-item">
      <div class="row boxx">
        <div class="col-sm-4">
          <img class="shadow-lg" src="assets/buku/B0010.png" ></img>
        </div>
        <div class="col-sm-4">
          <img class="shadow-lg" src="assets/buku/B0011.png"></img>
        </div>
        <div class="col-sm-4">
          <img class="shadow-lg" src="assets/buku/B0012.png" ></img>
        </div>
    </div>
    </div>


    <div class="carousel-item">
      <div class="row boxx">
        <div class="col-sm-4">
          <img class="shadow-lg" src="assets/buku/B0013.png" ></img>
        </div>
        <div class="col-sm-4">
          <img class="shadow-lg" src="assets/buku/B0014.png"></img>
        </div>
        <div class="col-sm-4">
          <img class="shadow-lg" src="assets/buku/B0015.png" ></img>
        </div>
    </div>
    </div>


    <div class="carousel-item">
      <div class="row boxx">
        <div class="col-sm-4">
          <img class="shadow-lg" src="assets/buku/B0016.png" ></img>
        </div>
        <div class="col-sm-4">
          <img class="shadow-lg" src="assets/buku/B0017.png"></img>
        </div>
        <div class="col-sm-4">
          <img class="shadow-lg" src="assets/buku/B0018.png" ></img>
        </div>
    </div>
    </div>
    <div class="carousel-item">
      <div class="row boxx">
        <div class="col-sm-4">
          <img class="shadow-lg" src="assets/buku/B0019.png" ></img>
        </div>
        <div class="col-sm-4">
          <img class="shadow-lg" src="assets/buku/B0020.png"></img>
        </div>
        <div class="col-sm-4">
          <img class="shadow-lg" src="assets/buku/B0021.png" ></img>
        </div>
    </div>
    </div>

    <div class="carousel-item">
      <div class="row boxx">
        <div class="col-sm-4">
          <img class="shadow-lg" src="assets/buku/B0022.png" ></img>
        </div>
        <div class="col-sm-4">
          <img class="shadow-lg" src="assets/buku/B0023.png"></img>
        </div>
        <div class="col-sm-4">
          <img class="shadow-lg" src="assets/buku/B0024.png" ></img>
        </div>
    </div>
    </div>


    <div class="carousel-item">
      <div class="row boxx">
        <div class="col-sm-4">
          <img class="shadow-lg" src="assets/buku/B0025.png" ></img>
        </div>
        <div class="col-sm-4">
          <img class="shadow-lg" src="assets/buku/B0026.png"></img>
        </div>
        <div class="col-sm-4">
          <img class="shadow-lg" src="assets/buku/B0027.png" ></img>
        </div>
    </div>
    </div>


    <div class="carousel-item">
      <div class="row boxx">
        <div class="col-sm-4">
          <img class="shadow-lg" src="assets/buku/B0028.png" ></img>
        </div>
        <div class="col-sm-4">
          <img class="shadow-lg" src="assets/buku/B0029.png"></img>
        </div>
        <div class="col-sm-4">
          <img class="shadow-lg" src="assets/buku/B0030.png" ></img>
        </div>
    </div>
    </div>
s


  </div>

  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>

<!--Pencarian aka Konten-Perpus-->
<div class="content-perpus" id="tes">
  <div class="text-center">
  <h1 style="align-text:center; font-size:80px; font-family: 'Noto Sans', sans-serif;">Perpustakaan</h1>
  <p style="font-size:25px; font-family: 'Noto Sans', sans-serif; color:white;">Cari buku disini</p>
</div>
  <div class="input-group col-md-12"  id="#custom-search-input">
      <form class="form-control input-lg" action="index.php" method="GET" enctype="multipart/form-data">
                    <input type="text" class="form-control input-lg" placeholder="Judul Buku" id="caribuku" name="caribuku" />
                    <span class="input-group-btn">
                        <button class="btn btn-info btn-lg" type="submit" id="myBtn">
                          <i class="material-icons">&#xe8b6;</i>
                        </button>
                    </span>
                  </form>
          </div>
</div>

<!-- Modal content -->
<?php


// Establishing Connection with Server by passing server_name, user_id and password as a parameter
$server = "zphare.com";
$userdb = "zphareco_fppweb";
$passworddb = "@dadada123";
$nama_database = "zphareco_FPPWEB";

$db = mysqli_connect($server, $userdb, $passworddb, $nama_database);
// SQL query to fetch information of registerd users and finds user match.
$query = mysqli_query($db,"select * from buku where B_JUDUL like '%$_GET[caribuku]%';");
$rows = mysqli_num_rows($query);
$buku=mysqli_fetch_assoc($query);

 if($_GET[caribuku])
  {
    echo '<div id="myModal" style="display:block;" class="modal">';
    echo '<div class="modal-content" style="display:block;">';

  // while($buku = mysqli_fetch_array($query)){
  //   if($buku[B_ID] == "NULL")break;


   echo '<span class="close">&times;</span>';
    echo '<a><img style="display:block;margin-left:auto; margin-right:auto;" src="../assets/buku/';
    echo "$buku[B_ID].png";
    echo '" width=300" height="300"><br>';
    echo '</a>';
    echo '<td><h1 style="text-align:center;">'.$buku[B_JUDUL]."</h1><br>";
    echo     "<td><h2>Tahun         : </h2></tr><h2>".$buku[B_TAHUN]."</h2></td><br>";
    echo     "<td><h2>Tempat Terbit :</h2></tr><h2>".$buku[B_TEMPAT_TERBIT]."</h2></td><br>";
    echo     "<td><h2>Edisi         :</h2></tr><h2>".$buku[B_EDISI]."</h2></td><br>";
    echo     "<td><h2>Penulis       :</h2></tr><h2>".$buku[B_PENULIS]."</h2></td><br>";
    echo     "<td><h2>Eksemplar     :</h2></tr><h2>".$buku[B_EKSEMPLAR]."</h2></td><br>";
    echo     "<td><h2>Status        :</h2></tr><h2>".$buku[B_STATUS]."</h2></td><br>";
    echo     "<td><h2>ISBN          :</h2></tr><h2>".$buku[B_ISBN]."</h2></td><br>";
    echo     "<td><h2>Lokasi Fisik  :</h2></tr><h2>".$buku[B_LOKASI_FISIK]."</h2></td><br>";


}
echo "</div>";
// }
echo '</div>';
?>


          <!--supportby aka Konten-Perpus-->
  <div class="support-by">
      <div class="row">
          <div class="support-item col-sm-3">
          <h1 class=" ml-auto" style="font-family:Noto Sans,sans-serif; font-size:30px; font-weight:bold; color:rgb(36, 46, 39); padding-left:75px;">support by :</h1>
        </div>
      <div class="support-item col-sm-4">
          <img height="60%"src="assets/FP2.png"></img>
          </div>
      <div class="support-item col-sm-4">
          <img height="60%" src="assets/FP1.png"></img>
      </div>
      </div>
      </div>


<!-- model content last-->
      <script>
      // Get the modal
      var modal = document.getElementById('myModal');

      // Get the button that opens the modal
      var btn = document.getElementById("myBtn");

      // Get the <span> element that closes the modal
      var span = document.getElementsByClassName("close")[0];

      // When the user clicks the button, open the modal

      // When the user clicks on <span> (x), close the modal
      span.onclick = function() {
          modal.style.display = "none";
      }

      // When the user clicks anywhere outside of the modal, close it
      window.onclick = function(event) {
          if (event.target == modal) {
              modal.style.display = "none";
          }
      }
      </script>

  </body>
</html>

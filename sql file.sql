/*
SQLyog Enterprise v12.4.3 (64 bit)
MySQL - 5.6.38-log : Database - zphareco_FPPWEB
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zphareco_FPPWEB` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `zphareco_FPPWEB`;

/*Table structure for table `anggota` */

DROP TABLE IF EXISTS `anggota`;

CREATE TABLE `anggota` (
  `A_ID` char(5) NOT NULL,
  `A_NAMA` varchar(25) DEFAULT NULL,
  `A_ALAMAT` varchar(100) DEFAULT NULL,
  `A_TELPON` varchar(14) DEFAULT NULL,
  `A_TEMPAT_LAHIR` varchar(25) DEFAULT NULL,
  `A_TANGGAL_LAHIR` date DEFAULT NULL,
  `A_STATUS` varchar(100) DEFAULT NULL,
  `A_EMAIL` varchar(25) DEFAULT NULL,
  `A_KELAMIN` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`A_ID`),
  KEY `anggota_index` (`A_NAMA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `anggota` */

insert  into `anggota`(`A_ID`,`A_NAMA`,`A_ALAMAT`,`A_TELPON`,`A_TEMPAT_LAHIR`,`A_TANGGAL_LAHIR`,`A_STATUS`,`A_EMAIL`,`A_KELAMIN`) values 
('A0001','Agus Yohanes Lie','Jl. Gundih 64 Surabaya','083232687467','Surabaya','1990-01-27','mahasiswa','AgusYohanes@gmail.com','L'),
('A0002','Amaziah Bangun','Jl. Kalisari 22 Surabaya','085326782144','Surabaya','1993-07-02','mahasiswa','AmaziahBangun@gmail.com','L'),
('A0003','Andy','Jl. Gubeng 60 Surabaya','084815679109','Gresik','1991-11-09','mahasiswa','Andy@gmail.com','L'),
('A0004','Asaph Silitonga','Jl. Kapasari 92 Surabaya','089016590395','Gresik','1998-03-01','mahasiswa','AsaphSilitonga@gmail.com','L'),
('A0005','Budi','Jl. Lakarsantri 45 Surabaya','083083739893','Malang','1990-12-03','mahasiswa','Budi@gmail.com','L'),
('A0006','Budiono Chongan','Jl. Lontar 4 Surabaya','081815828309','Surabaya','1997-01-17','mahasiswa','BudionoChongan@gmail.com','L'),
('A0007','Candace Banjarkasi','Jl. Karang Poh 3 Surabaya','087881029137','Surabaya','1997-03-01','mahasiswa','CandaceBanjarkasi@gmail.c','L'),
('A0008','Cedric Saranamual','Jl. Klampisngasem 76 Surabaya','088941466849','Surabaya','1996-11-10','mahasiswa','CedricSaranamual@gmail.co','L'),
('A0009','Coren Katipana','Jl. Ketintang 86 Surabaya','086097925500','Gresik','1987-12-10','Dosen','CorenKatipana@gmail.com','L'),
('A0010','Damarwulan','Jl. Krembangan Selatan 64 Surabaya','082341238774','Gresik','1996-12-02','mahasiswa','Damarwulan@gmail.com','L'),
('A0011','Delilah Hutahaean','Jl. Ngagel 100 Surabaya','084039853407','Malang','1996-12-06','mahasiswa','DelilahHutahaean@gmail.co','L'),
('A0012','Devi Inge Sasmita','Jl. Kapas Madya 94 Surabaya','083152976276','Surabaya','1997-02-03','mahasiswa','DeviInge@gmail.com','L'),
('A0013','Dewo Puji','Jl. Pakis 13 Surabaya','087126577461','Surabaya','1998-12-06','Dosen','DewoPuji@gmail.com','L'),
('A0014','Dyatmiyati','Jl. Medokan Ayu 16 Surabaya','085748910352','Surabaya','1992-12-01','mahasiswa','Dyatmiyati@gmail.com','L'),
('A0015','Gotama Tè','Jl. Nyamplungan 33 Surabaya','081290560404','Gresik','1994-02-04','mahasiswa','GotamaTè@gmail.com','L'),
('A0016','Iskandar Suharto Pranoto','Jl. Gunung Sari 72 Surabaya','087489630972','Gresik','1990-01-27','mahasiswa','IskandarSuharto@gmail.com','L'),
('A0017','Iwan Hamizan','Jl. Rungkut Menanggal 27 Surabaya','084137043241','Malang','1993-07-01','mahasiswa','IwanHamizan@gmail.com','L'),
('A0018','Jason Porti','Jl. Margorejo 6 Surabaya','089983111660','Surabaya','1991-01-09','mahasiswa','JasonPorti@gmail.com','L'),
('A0019','Johan Deddy Kartawijaya','Jl. Tanah Kalikedinding 89 Surabaya','088163525207','Jakarta','1998-04-12','mahasiswa','JohanDeddy@gmail.com','L'),
('A0020','Juanda Xiaobo','Jl. Simokerto 71 Surabaya','085995817531','Malang','1983-09-23','Dosen','JuandaXiaobo@gmail.com','L'),
('A0021','Kick Dissels','Jl. Simomulyo Baru 10 Surabaya','081560598102','Surabaya','1997-12-17','mahasiswa','KickDissels@gmail.com','L'),
('A0022','Kuwat','Jl. Kenjeran 54 Surabaya','085274601657','Gresik','1997-01-11','mahasiswa','Kuwat@gmail.com','L'),
('A0023','Laban Telun','Jl. Sememi 12 Surabaya','086040390924','Surabaya','1999-11-30','mahasiswa','LabanTelun@gmail.com','L'),
('A0024','Laya Meifen','Jl. Keputran 88 Surabaya','088589110996','Jakarta','1998-12-10','mahasiswa','LayaMeifen@gmail.com','P'),
('A0025','Leah Sarumpaet','Jl. Panjang Jiwo 30 Surabaya','087515087492','Malang','1996-12-22','mahasiswa','LeahSarumpaet@gmail.com','P'),
('A0026','Limarta Jinjing','Jl. Sidotopo 66 Surabaya','083140543307','Sidoarjo','1996-12-26','mahasiswa','LimartaJinjing@gmail.com','P'),
('A0027','Lutansieto Tung','Jl. Kedurus 34 Surabaya','082920322550','Sidoarjo','1997-02-03','mahasiswa','LutansietoTung@gmail.com','P'),
('A0028','Maharani','Jl. Jajar Tunggal 14 Surabaya','081326182746','Ngawi','1997-01-31','mahasiswa','Maharani@gmail.com','P'),
('A0029','Matthew Girsang','Jl. Tambak Sarioso 90 Surabaya','087642026700','Tuban','1982-02-01','Dosen','MatthewGirsang@gmail.com','P'),
('A0030','Matthias Saing','Jl. Pagesangan 42 Surabaya','088091280487','Jombang','1994-02-14','mahasiswa','MatthiasSaing@gmail.com','P'),
('A0031','Mishael Maharaja','Jl. Sumberejo 5 Surabaya','089868604457','Nganjuk','1990-04-07','mahasiswa','MishaelMaharaja@gmail.com','P'),
('A0032','Paul Jambe','Jl. Genting Kalianak 1 Surabaya','086942474775','Mojekerto','1993-07-01','mahasiswa','PaulJambe@gmail.com','P'),
('A0033','Priawan','Jl. Romokalisari 25 Surabaya','082180465924','Madiun','1991-11-29','mahasiswa','Priawan@gmail.com','P'),
('A0034','Purnama Iwan Lesmono','Jl. Bubutan 95 Surabaya','086651895839','Kediri','1998-04-12','mahasiswa','PurnamaIwan@gmail.com','P'),
('A0035','Putri Kartika','Jl. Kedungcowek 52 Surabaya','085451471824','Lamongan','1990-09-03','mahasiswa','PutriKartika@gmail.com','P'),
('A0036','Randy','Jl. Dukuh Pakis 80 Surabaya','084895125000','Magetan','1980-12-17','Dosen','Randy@gmail.com','P'),
('A0037','Rinnde','Jl. Gayungan 45 Surabaya','082917661311','Pasuruan','1997-03-11','mahasiswa','Rinnde@gmail.com','P'),
('A0038','Ratna Bethari Hardja','Jl. Genteng 77 Surabaya','088378769563','Karang Anyar','1996-11-30','mahasiswa','RatnaBethari@gmail.com','P'),
('A0039','Reuben Sipangkar','Jl. Barata Jaya 63 Surabaya','081682927839','Sragen','1995-12-10','mahasiswa','ReubenSipangkar@gmail.com','P'),
('A0040','Sandria','Jl. Gunung Anyar Tambak 43 Surabaya','087584303802','Ngawi','1996-02-22','mahasiswa','Sandria@gmail.com','P');

/*Table structure for table `buku` */

DROP TABLE IF EXISTS `buku`;

CREATE TABLE `buku` (
  `B_ID` char(13) NOT NULL,
  `K_ID` char(5) DEFAULT NULL,
  `C_ID` char(5) DEFAULT NULL,
  `B_JUDUL` varchar(50) DEFAULT NULL,
  `B_TAHUN` int(11) DEFAULT NULL,
  `B_TEMPAT_TERBIT` varchar(20) DEFAULT NULL,
  `B_EDISI` varchar(10) DEFAULT NULL,
  `B_PENULIS` varchar(100) DEFAULT NULL,
  `B_INTISARI` varchar(750) DEFAULT NULL,
  `B_EKSEMPLAR` int(11) DEFAULT NULL,
  `B_STATUS` varchar(10) DEFAULT NULL,
  `B_ISBN` varchar(15) DEFAULT NULL,
  `B_LOKASI_FISIK` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`B_ID`),
  KEY `FK_BUKU_REFERENCE_PENERBIT` (`C_ID`),
  KEY `FK_BUKU_REFERENCE_KATEGORI` (`K_ID`),
  KEY `judul_buku_idx` (`B_JUDUL`),
  CONSTRAINT `FK_BUKU_REFERENCE_KATEGORI` FOREIGN KEY (`K_ID`) REFERENCES `kategori` (`K_ID`),
  CONSTRAINT `FK_BUKU_REFERENCE_PENERBIT` FOREIGN KEY (`C_ID`) REFERENCES `penerbit` (`C_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `buku` */

insert  into `buku`(`B_ID`,`K_ID`,`C_ID`,`B_JUDUL`,`B_TAHUN`,`B_TEMPAT_TERBIT`,`B_EDISI`,`B_PENULIS`,`B_INTISARI`,`B_EKSEMPLAR`,`B_STATUS`,`B_ISBN`,`B_LOKASI_FISIK`) values 
('B0001','K0010','C0001','Tetap Sehat setelah Usia 40','2014','depok','1.000000','dr. Salma','Dalam buku ini, terdapat banyak artikel yang membahas mengenai apa itu sebuah penyakit?  Buku ini hadir sebagai pemandu kita dalam menjaga kesehatan setelah usia 40 tahun. Mudah dipahami, kaya informasi, dan berguna bagi kehidupan sehari-hari merupakan cerminan pengetahuan yang dituturkan oleh dokter yang berpengalaman di bidangnya lebih dari 17 tahun ini. Membacanya membuat kita seolah berada di sebuah ruang dokter sambil berkonsultasi langsung dengan dr. Salma. Bersama kita belajar menerapkan hidup sehat berbekal dari buku bacaan Tetap Sehat setelah Usia 40  menuju masa yang penuh dengan kebaikan.Bagaimana cara mengatasinya? Apa yang harus dikurangi atau ditambahkan dalam tubuh? Apa kaitannya dengan kebiasaan hidup kita dan hadist yang di','18','tersedia','978-602-250-233','R1A'),
('B0002','K0012','C0002','Tuhan, Izinkan Aku Pacaran','2013','depok','1.000000','Fikri Habibullah M','Tuhan, Izinkan Aku Pacaran adalah judul buku yang ditulis oleh Fikri Habibullah M ini. Terlintas di benak kita ketika membaca judul buku ini, bahwa begitu frontal sekali seolah si Penulis meminta pada Allah sekaligus mengajak pembacanya untuk melegalkan pacaran. Terasa menggelitik hati saat diri memohon pada Allah untuk menjadikan pacaran sebagai bagian dari ajaran-Nya. Melihat judul yang profokatif ini sebelum membaca isinya, hanyalah sikap men-jugde Penulis karena membahas topik yang sesungguhnya diharamkan Allah Azza wa Jalla.','21','tidak ters','978-602-250-149','R2A'),
('B0003','K0009','C0003','5 cm','2007','depok','1.000000','Donny Dhirgantoro','buku 5 cm ini menceritakan tentang persahabatan lima orang anak muda yang menjalin persahabatan selama tujuh tahun, mereka diantaranya  bernama Arial, Riani, Zafran, Ian, dan Genta. Mereka adalah sahabat yang kompak, memiliki obsesi dan impian masing- masing, mereka selalu pergi bersama dan ketemu setiap saat. Karena bosan bertemu setiap hari, akhirnya mereka memutuskan untuk tidak saling berkomunikasi selama tiga bulan. Selama tiga bulan berpisah itulah terjadi banyak hal yang membuat hati mereka lebih kaya dari sebelumnya. Arial yang jatuh cinta sama temen fitnessnya, Riani yang sukses di tempat kerjanya, Ian yang akhirnya berhasil menyelesaikan skripsinya, Genta yang sukses sebagai EO sebuah pameran dan Zafran yang semakin tergila-gila s','26','tersedia','979-759-151-4','R3A'),
('B0004','K0009','C0004','TUILET','2009','yogyakarta','1.000000','Oben Cedric','Novel ini adalah novel yang bertema humor yang dikhususkan untuk membawa pembacanya tidak hanya membaca kisahnya saja namun, akan menemukan kisah-kisah lucu seputar tokoh yang ada didalam novel ini. Di dalam novel ini dikisahkan bahwa ada seorang anak SMA, yang tidak terlalu terkenal dikelasnya ia bernama Edi Wardiman, namun karena ia memiliki gaya yang dibilang culun maka dia sering disebut oleh kawan-kawannya sebagai Edward culun. Dia memiliki sahabat dekat bernama Joko, yang sama-sama juga disebut culun dan ada juga disini dikisahkan ada gadis bernama Bella yang ternyata adalah vampir yang jatuh cinta kepada si Edward karena melihat wajah Edward mirip dengan wajah pacarnya dulu. Novel ini mengisahkan konflik-konflik yang terjadi antar pe','11','tersedia','978-602-82-6023','R3A'),
('B0005','K0009','C0005','Bunga Cantik di Balik Salju','2010','surabaya','1.000000','titik andarwati','Di usia yang masih sangat muda, 19 tahun, Lana telah memutuskan untuk mengasuh Denniz, anak dari sahabatnya yang meninggal sewaktu melahirkan. Ayah si bayi sendiri, Brian, tidak mau mengakui anaknya. Pertentangan dari keluarga Lana jelas terjadi walau akhirnya mereka menerima Denniz dan membantu merawatnya. Hidup yang berat bagi Lana. Di usianya yang ke-25, dia memutuskan untuk tinggal sendiri bersama Denniz dan membiayai sendiri hidupnya dengan bekerja sebagai staf pengajar pada sebuah lembaga pendidikan asing. Memiliki Denniz selama 6 tahun membuat Lana kebal saat orang-orang menatapnya dengan kagum, iba, sinis, ataupun jijik saat Denniz memanggilnya “mama”. Semua itu tidak mengubah apa pun, dia tetap mencintai Denniz dan menganggap keput','1','tersedia',' 978-602-97-866','R3A'),
('B0006','K0009','C0004','I Love You, Good bye','2011','surabaya','1.000000','Fifi Alfiana Rosyidah','I Love You, Good Bye adalah novel pertama dari penulis belia bernama lengkap Fifi Alfiana Rosyidah yang mengaku masih berseragam putih abu – abu di SMA Negeri 2 Jombang. Terbiasa mandiri, itu yang menyebabkan perempuan kelahiran 15 Oktober 1993 ini memilih tinggal di pondok pesantren Sunan Ampel di Jombang. Saat ini, ia merupakan salah satu Mahasiswi Sistem Informasi Institut Teknologi Sepuluh November, Surabaya. Kini, ia sibuk dengan kuliah, organisasi, tugas, liputan (ia juga memiliki pekerjaan yaitu sebagai reporter di ITS Online) dan akan menyukseskan beberapa proyek lainnya.','2','tersedia','979 – 911 – 023','R3A'),
('B0007','K0018','C0004','Kecerdasan Buatan','2011','Jakarta','1.000000','T. Sutojo, S.Si.,M.Kom., Edy Mulyanto, S.Si.,M.Kom., Dr. Vincent Suhartono (UDINUS)','Mampukah suatu kecerdasan membuat kecerdasan baru yang lebih cerdas dari dirinya sendiri?\n\nPertanyaan yang menjadi sebuah tantangan bagi kecerdasan buatan (Artificial Intelligence) di masa mendatang.\n\nPerkembangan teknologi hardware yang demikian pesat berlomba mewujudkan segala imajinasi akan teknologi canggih masa depan. Beragam hardware dengan kecanggihan performance dan ukuran kecil kian marak bermunculan. Belum lagi beragam software terbaru sebagai pendukungnya. \n\nBahkan berbagai sendi kehidupan kita pun kini tak jauh dari realisasi kecerdasan buatan yang terus berubah dalam upaya penyempurnaan. Global Positioning System (GPS) adalah salah satunya. Sistem pemantauan berdasarkan koordinat bumi ini sudah bukan lagi barang asing dalam kes','100','tersedia','978-979-29-2761','R5A'),
('B0008','K0018','C0004','Basis Data dalam Tinjauan Konseptual','2011','yogyakarta','1.000000','Edhy Sutanta','pembahasan buku: pengertian basis data & sistem basis data, tujuan dan keuntungan pemakaian basis data, batasan aturan dalam basis data, model data, entity relationship model, semantic model, hyerarchycal model, network model, relational database model, schema & sub schema, pengembangan sistem basis data ','43','tersedia','978-979-29-2494','R5A'),
('B0009','K0018','C0004','Pemrograman Web Dinamis Menggunakan PHP dan MySQL ','2011','yogyakarta','1.000000','M. Rudyanto Arief (STIMIK AMIKOM) / *KHUSUS JAWA*','Buku yang berjudul Pemrograman Web Dinamis Menggunakan PHP dan MySQL + CD ini merupakan buku yang memuat Pemrograman Web Dinamis menggunakan PHP dan MySQL. Bagi kalian yang menjadi Programmer yang menggunakan sistem PHP dan MySQL, maka buku ini dapat menjadi sangat berguna. Tak hanya itu, demi mempermudah pembaca, buku ini dilengkapi CD Tutorial nya, jadi kalian tidak perlu ragu lagi untuk tidak bisa, Selamat mencoba!','21','tersedia','978-979-29-2759','R5A'),
('B0010','K0018','C0004','Pemrograman Game 3D dengan DirectX','2011','yogyakarta','1.000000','Zamrony P. Juhara','DirectX, teknologi yang dikembangkan oleh Microsoft, digunakan dalam ribuan game komputer yang dirilis untuk sistem operasi Windows. DirectX membantu mengisolasi kerumitan implementasi akses perangkat keras yang beragam dan menawarkan kinerja tinggi.\nBuku ini mengulas topik pemrograman game memanfaatkan DirectX (terutama DirectX 9.0) meliputi pemrograman grafis 3D, pemrograman audio dan multimedia, pemrograman jaringan dan multiplayer serta topik-topik lanjut terkait pemrograman grafis 3D.','2','tersedia','978-979-29-1628','R5A'),
('B0011','K0018','C0004','Pemrograman Game dengan Java dan GTGE','2010','yogyakarta','1.000000','Andi Taru NNW','Pembuatan sebuah game tidak pernah lepas dari pemrograman. Saat ini, Java telah berkembang pesat menjadi bahasa pemrograman universal yang dapat digunakan untuk membuat berbagai macam aplikasi, mulai dari aplikasi database, web, musik, hingga game. Kemampuan Java yang stabil dan bersifat gratis, menjadi factor pendorong munculnya berbagai game engine yang dapat digunakan untuk membuat game secara lebih cepat, mudah, dan efektif.','12','tersedia','978-979-29-1776','R5A'),
('B0012','K0018','C0004','Panduan Aplikatif dan Solusi (PAS) Microsoft Visua','2012','yogyakarta','1.000000','Wahana Komputer','Aplikasi Point of Sales (POS) merupakan aplikasi penjualan yang antara lain digunakan untuk mencatat transaksi mulai dari stok barang, pembelian, penjualan, hingga membuat label harga. Anda juga dapat dengan mudah membuat aplikasi PoS sendiri menggunakan Microsoft Visual Basic 2010 dan MySQL.\nBuku Membuat Aplikasi POS dengan Microsoft Visual Basic 2010 dan MySQL ini akan membahas secara detail proses pembuatan aplikasi Point Of Sales (POS) dari mulai pembuatan database, tabel sampai dengan perancangan desain form dan laporan. Diharapkan setelah membaca buku ini Anda akan lebih optimal dalam menggunakan Microsoft Visual Basic 2010 dan MySQL untuk membuat berbagai aplikasi sejenis lainnya.','14','tersedia','978-979-29-2646','R5A'),
('B0013','K0018','C0004','Langkah Cerdas Membasmi Virus Komputer','2012','yogyakarta','1.000000','MADCOMS','Siapa yang tidak kesal kalau komputer baik itu laptop maupun PC tiba-tiba muncul pesan-pesan aneh diikuti dengan proses yang semakin lemot (lambat) hingga tidak berfungsinya beberapa fitur Windows. Awas!!! mungkin virus telah menginfeksi komputer Anda!\nMaunya pekerjaan dapat segera selesai tapi ternyata file data Anda hilang, rusak, system error dan sebagainya gara-gara ulah nakal si virus. Jangan sampai itu terjadi pada komputer Anda! \nBuku ini menyajikan langkah-langkah cerdas dalam mengamankan laptop atau PC Anda dari serangan virus. Sangat cocok dan penting untuk seluruh pengguna komputer, dan buku ini akan menuntun Anda dalam mencegah, mengatasi dan memulihkan komputer dari virus.','10','tersedia','978-979-29-2686','R5A'),
('B0014','K0018','C0004','Aplikasi Web Database dengan Dreamweaver dan PHP-M','2012','yogyakarta','1.000000','MADCOMS','Banyak sekali kita jumpai forum-forum diskusi web menanyakan bagaimana mempelajari web design dan web programming sekaligus? Apa yang harus dipelajari terlebih dahulu? bagaimana untuk menggabungkannya untuk membangun situs cantik dan interaktif?','11','tersedia','978-979-29-2685','R5A'),
('B0015','K0018','C0004','Pemrograman C++ : Dasar Pemrograman Berorientasi O','2012','yogyakarta','1.000000','R.H. Sianipar','Buku ini dikhususkan bagi pembaca yang benar-benar ingin menguasai fondasi pemrograman berbasis objek. Karena fondasi harus kokoh, buku ini sungguh-sungguh memperdalam konsep-konsep yang mendasari PBO, misalnya kompilasi terpisah, namespace dan memori statis/dinamis (terutama tentang skop dan koneksi suatu variabel), overloading fungsi, dan kelas. Kaitan antara pointer, array, dan objek juga disajikan. Overloading operator dan aplikasinya juga didiskusikan secara kritis di dalam buku ini. Setiap kode sumber ditelaah sepotong demi sepotong agar memberikan penjelasan yang integratif kepada pembaca. Berikut beberapa topik konsentrasi yang disajikan dalam buku ini: Konsep penanganan tipe data dasar: bool, char, short, int, long, float, dan doub','12','tersedia','978-979-29-3184','R5A'),
('B0016','K0018','C0004','JavaScript untuk Membangun Website Profesional','2012','yogyakarta','1.000000','Madcoms','JavaScript merupakan sebuah bahasa scripting yang dikembangkan oleh Netscape. Dengan JavaScript Anda bisa dengan mudah membuat sebuah halaman web yang interaktif. JavaScript sendiri merupakan bahasa yang mudah dipahami, jika Anda sudah terbiasa dan mengenal konsep bahasa pemrograman visual, maka akan sangat mudah untuk memahami konsep JavaScript.\nBuku panduan ini mengupas dasar-dasar pemrograman dalam Javascript sampai mengenal lebih lanjut tentang pemrograman JavaScript itu sendiri. \nSajian bahasan yang tertata rapi dengan contoh aplikasi yang tertuang dalam bentuk script-script pemrograman dapat digunakan sebagai bahan panduan dan latihan bagi pembaca untuk lebih memahami dan menguasai pemrograman JavaScript dengan baik. ','12','tersedia','978-979-29-3202','R5A'),
('B0017','K0018','C0004','Trik Dahsyat Menjadi Web Master dengan Framework C','2012','yogyakarta','1.000000','Agus Saputra','CakePHP merupakan framework terbaik untuk menciptakan aplikasi web saat ini, baik skala kecil maupun skala enterprise. Hal tersebut karena CakePHP didukung oleh berbagai macam Helper, Library, dan Plugin yang dibutuhkan oleh web. Selain itu, CakePHP juga sudah mendukung Ajax maupun ORM (Object Relational Mapping). Buku ini merupakan serial puncak dari serial buku CakePHP berkelanjutan. Pembahasan dalam buku ini merupakan pelengkap dari kedua buku CakePHP yang sudah beredar di pasaran.\nBuku ini membahas mulai dari definisi, pengenalan, konfigurasi, instalasi dasar, teknik pemrograman OOP (Object Oriented Programming), extension, tip seputar CakePHP seperti pemahaman PrimaryKey dan Field Tabel, penanganan error CakePHP, menelusuri fungsi Find','100','tersedia','978-979-29-3188','R5A'),
('B0018','K0018','C0004','Solusi Cerdas Menguasai Internetworking Packet Tra','2012','yogyakarta','1.000000','Dodi Heriadi','Buku ini pantas sebagai pegangan untuk pembaca tingkat SMA/SMK/MA sederajat (Teknik Komputer & Jaringan), Program Diploma & Strata 1 (Konsep & Praktek Konsep Jaringan, Administrasi & Praktek Administrasi Jaringan, Praktikum LAN/Jaringan Komputer, Jaringan Nirkabel, Network & Komunikasi Data, Internetworking, Keamanan Sistem Komputer & Jaringan), karena menyuguhkan solusi cerdas bukan keras dalam menguasai dunia Internetworking. Pembaca hanya perlu mengerti angka 0 dan 1 saja. Mudah bukan!','12','tersedia','978-979-29-3156','R5A'),
('B0019','K0018','C0004','MYOB v.18 : Penyelesaian Kasus Pendekatan Bukti Tr','2015','yogyakarta','1.000000','Arvian Triantoro & Ryan Bastian Saputra','MYOB merupakan salah satu program akuntansi yang sudah populer dan banyak digunakan di Indonesia dan negara-negara lain. MYOB dapat digunakan untuk pembuatan laporan akuntansi untuk berbagai jenis perusahaan jasa atau dagang maupun perusahaan yang sejenis. MYOB juga dapat digunakan untuk perusahaan kecil, menengah maupun besar. Buku “Komputer Akuntansi dengan MYOB AccountRight Premier“ memberikan tuntunan bagi pembaca untuk membuat laporan keuangan dengan langkah demi langkah dan ilustrasi gambar, sehingga memudahkan pembaca dalam mempelajari buku ini.','123','tersedia','978-979-29-3162','R5A'),
('B0020','K0018','C0004','Analisa Kebutuhan Dalam Rekayasa Perangkat Lunak','2012','yogyakarta','1.000000','Daniel Siahaan','Buku ini ditujukan bagi para mahasiswa strata-1 maupun strata-2 yang menekuni bidang rekayasa perangkat lunak, khususnya rekayasa kebutuhan perangkat lunak. Akan tetapi buku ini juga dapat menjadi bahan pengayaan bagi setiap perekayasa sistem yang hendak memahami dan menguasai metode, teknologi, kerangka kerja, ataupun aplikasi yang terkait dengan spesifikasi kebutuhan\nBuku ini ditulis ke dalam sembilan bagian. Bagian pertama dari buku ini memberikan gambaran dasar mengenai rekayasa kebutuhan. Bagian kedua memberikan perspektif tentang pihak-pihak yang mungkin berkepentingan terhadap proses spesifikasi kebutuhan yang baik. Bagian ketiga menjelaskan tentang teknis skenario sebagai salah satu teknik yang banyak dipakai dalam proses pengumpula','12','tersedia','978-979-29-3195','R5A'),
('B0021','K0018','C0004','24 Jam!! Pintar Pemrograman Android (+DVD)','2012','yogyakarta','1.000000','Arif Akbarul Huda','Semakin banyaknya materi tutorial pemrograman aplikasi android di internet, ternyata berdampak kurang baik pada calon developer android, khususnya yang benar-benar baru mulai dari nol. Besar kemungkinan calon developer ini bingung, harus mulai mempelajari dari mana. Terlebih lagi jika didesak dengan deadline bahwa bulan sekian aplikasi harus sudah jadi. Buku ini menjadi alternatif pendamping belajar yang sangat menyenangkan karena materi ditulis oleh praktisi sekaligus pengajar pemrograman Android dan disusun berurutan mulai dari level dasar menuju ke level yang lebih tinggi. Materi dalam buku ini paling banyak dicari oleh pemula yang baru mulai belajar pemrograman Android, bahkan oleh mahasiswa untuk mengerjakan tugas kuliah maupun tugas a','78','tersedia','978-979-29-3213','R5A'),
('B0022','K0018','C0004','Network Hacking Dengan Linux BackTrack','2012','yogyakarta','1.000000','Wahana Komputer','\nPeretasan jaringan adalah salah satu kegiatan yang sangat menarik, baik untuk kebutuhan pengujian maupun penyerangan. Dengan menguasai berbagai tool untuk peretasan jaringan, Anda bisa mengamankan sistem Anda dengan lebih baik dan mengetahui modus-modus penyerangan sistem. Selain itu, Anda juga akan tahu bagaimana caranya mengumpulkan informasi untuk mengenali lingkungan sistem, lalu belajar bagaimana membuat eksploit, mengecek kerentanan, dan memasukkan muatan (payload) untuk mengeksploitasi kerentanan yang ada.\n\nBuku ini akan membuat pengetahuan mengenai peretasan jaringan di BackTrackmenjadi instrumen penting dalam perancangan sistem Anda. Gunakan tool-tool yang ada untuk melakukan banyak hal penting pada jaringan Anda.','11','tersedia','978-979-29-3237','R5A'),
('B0023','K0018','C0004','Membangun Infrastruktur Komputasi Awan Privat Meng','2012','yogyakarta','1.000000','Indra Suryatama','Buku ini membahas sebuah teknologi yang sangat tren pada saat ini. Materi dalam buku ini meliputi pengetahuan tentang jenis, arsitektur, dan layanan dari komputasi awan.Selain itu juga akan dijelaskan mengenai cara membangun komputasi awan dari nol dengan disertai capture gambar untuk setiap langkahnya sehingga memudahkan pembaca dalam membangun komputasi awan privat sendiri. Pembagunan komputasi awan privat ini menggunakan Ubuntu Server dan Ubuntu Desktop.\nKomputasi awan adalah teknologi yang menyediakan layanan terhadap sumberdaya komputasi melaluijaringan. Dengan teknologi ini, biaya modal sebuah perusahaan dapat diminimalkan dan biaya operasionalnya menjadi lebih murah.Penghematan dapat dilihat dari segi biaya, waktu, tenaga kerja.maupu','2','tersedia','978-979-29-3230','R5A'),
('B0024','K0018','C0004','Buat Sendiri Aplikasi Petamu Menggunakan Codelgnit','2012','yogyakarta','1.000000','Bernadus Herdi Sirenden & Ester Laekha Dachi','Pada masa kini banyak pengembang membangun aplikasi menarik untuk menjawab kebutuhan masyarakat terhadap informasi dari internet. Buku ini mencoba untuk membahas bagaimana cara membangun sebuah aplikasi pemetaan denganmenggunakan Codeigniter dan Google Maps API. Codeigniter sendiri adalah sebuah framework PHP yang tangguh dengan ukuran kecil dan mudah untuk dikuasai.\n','3','tersedia','978-979-29-3238','R5A'),
('B0025','K0002','C0005','David Cornelis Mokalu','2018','Jakarta','1.000000','David Cornelis Mokalu & Hendri Setiadi','Mengupas fundamental sektor properti dan strategi teknikal saham-saham properti di Bursa Efek Indonesia. Bonus: • Voucher Workshop senilai Rp19,8 juta • CD Program Analisis Saham Propeti 2-Week (Full Version) • Menjadi member Komunitas “Indonesia Investment Center” • Gratis Konsultasi Pendirian dan Pengembangan Bisnis (Business Coaching)','10','tersedia','978-602-04-5992','R6A'),
('B0026','K0002','C0006','17 Proven Currency Trading Strategies  ','2014','Jakarta','1.000000','Mario Signh','Ditulis oleh Mario Singh, kepala Akademi FX1 yang prestisius, perusahaan pelatihan valas terbesar di Singapura dan Malaysia, 17 Proven Currency Trading Strategies ditujukan untuk siapa pun—dari pemula hingga profesional dan siapa pun di antara keduanya—yang ingin segera menguasai pengetahuan dan keterampilan yang dibutuhkan untuk meraih kemenangan besar di pasar valas yang tumbuh pesat.','1','tersedia','978-602-03-0713','R11A'),
('B0027','K0027','C0006','Jodoh','2018','Jakarta','1.000000','Ria Pohan','Kurang ngenes apalagi hidup Deya. Di umur 27 tahun saat semua sepupu sebayanya sudah berkeluarga dan punya anak yang lucu. Saat semua keponakan remajanya sudah bergonta-ganti pacar, putus-sambung mirip judul lagu, Deya cuma bisa pasrah dijadikan baby sitter, tukang suruh-suruh dan tenaga tambahan saat acara keluarga. Sepanjang umur tak pernah merasakan yang namanya berpacaran, membuat Deya terlihat seperti perempuan mengenaskan. Deya sendiri tak tahu apa yang salah dengan rejekinya yang satu itu. Saat kata orang ‘jodoh pasti bertemu’ yang ada di hidup Deya cuma tukang bakso pasti bertamu. Kalau sebegitu ngenes hidupnya, sampai kapan Deya ketemu jodohnya. *** “Best for all single ladies out there that enjoy light reading!” –Anave Tjandra– Pe','1','tersedia','978-602-67-3100','R3K'),
('B0028','K0003','C0005','Predator','2018','Jakarta','1.000000','Mita and Yokan Ota','E-mail berantai tentang predator marak belakangan ini. Seorang siswa SMA berhasil memecahkan teka-teki yang menyelimuti kasus kematian mendadak yang terjadi berturut-turut! Sebuah komik prekuel dari komik Predator!','1','tersedia','978-602-04-5941','R3K'),
('B0029','K0003','C0005','Kuro Memanggul Peti Mati 3','2018','Jakarta','1.000000','KIYUDUKI SATOKO','Perjalanan Kuro, si pengembara yang memanggul peti mati, masih berlanjut. Seorang pengembara pergi mengunjungi berbagai negara, melihat berbagai kehidupan orang di sana serta keajaiban dunia. Mungkin itu hal yang kecil, atau terlihat biasa, tapi di mata seorang pengembara, bisa punya makna yang berbeda.','1','tersedia','978-602-04-5869','R3K'),
('B0030','K0001','C0007','Pemasaran Produk Pertanian','2017','yogyakarta','1.000000','Ratya Anindita Nur Baladina','Buku yang berjudul Pemasaran Produk Pertanian ini membahas beberapa hal, mulai dari definisi ilmu pemasaran dan pendekatan dalam mempelajari pemasaran, Structure Conduct and Performance (SCP), hingga analisis spasial dan analisis temporal dalam pemasaran yang berakhir dengan pembahasan kebijakan pemasaran produk pertanian. Buku ini menjadi pedoman bagi mahasiswa ataupun praktisi yang ingin memahami ilmu pemasaran pertanian dan agrobisnis serta memahami bagaimana pasar di pertanian seharusnya berjalan dalam rangka mencapai kemakmuran bagi seluruh masyarakat.','1','tersedia','978-979-29-6666','R7A'),
('B0032','K0001','C0001','Angsa','1998','Ngawi','terbatas','Ashlan','tidak ada','100','tersedia','9872-112-2112-1','Rak 1'),
('NULL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `denda` */

DROP TABLE IF EXISTS `denda`;

CREATE TABLE `denda` (
  `D_ID` char(5) NOT NULL,
  `E_ID` char(5) DEFAULT NULL,
  `D_STATUS` varchar(50) DEFAULT NULL,
  `D_BIAYA` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`D_ID`),
  KEY `FK_DENDA_REFERENCE_PEMINJAM` (`E_ID`),
  CONSTRAINT `FK_DENDA_REFERENCE_PEMINJAM` FOREIGN KEY (`E_ID`) REFERENCES `peminjaman` (`E_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `denda` */

insert  into `denda`(`D_ID`,`E_ID`,`D_STATUS`,`D_BIAYA`) values 
('D0001','E0001','BELUM DIBAYAR','5000.0'),
('D0002','E0002','SUDAH DIBAYAR','5000.0'),
('D0003','E0003','BELUM DIBAYAR','5000.0'),
('D0004','E0005','SUDAH DIBAYAR','5000.0'),
('D0005','E0006','BELUM DIBAYAR','5000.0'),
('D0006','E0007','SUDAH DIBAYAR','5000.0'),
('D0007','E0008','BELUM DIBAYAR','5000.0'),
('D0008','E0009','SUDAH DIBAYAR','45000.0'),
('D0009','E0010','BELUM DIBAYAR','5000.0'),
('D0010','E0011','SUDAH DIBAYAR','5000.0'),
('D0011','E0012','SUDAH DIBAYAR','5000.0'),
('D0012','E0013','SUDAH DIBAYAR','15000.0'),
('D0013','E0014','BELUM DIBAYAR','15000.0'),
('D0014','E0015','SUDAH DIBAYAR','5000.0'),
('D0015','E0016','BELUM DIBAYAR','5000.0'),
('D0016','E0017','SUDAH DIBAYAR','5000.0'),
('D0017','E0018','BELUM DIBAYAR','35000.0'),
('D0018','E0019','SUDAH DIBAYAR','5000.0'),
('D0019','E0020','BELUM DIBAYAR','5000.0'),
('D0020','E0021','SUDAH DIBAYAR','5000.0'),
('D0021','E0022','SUDAH DIBAYAR','5000.0'),
('D0022','E0023','SUDAH DIBAYAR','5000.0'),
('D0023','E0024','BELUM DIBAYAR','15000.0'),
('D0024','E0025','SUDAH DIBAYAR','25000.0'),
('D0025','E0026','BELUM DIBAYAR','35000.0'),
('D0026','E0027','SUDAH DIBAYAR','5000.0'),
('D0027','E0028','SUDAH DIBAYAR','5000.0'),
('D0028','E0029','SUDAH DIBAYAR','5000.0'),
('D0029','E0030','SUDAH DIBAYAR','5000.0'),
('D0030','E0031','SUDAH DIBAYAR','5000.0'),
('D0031','E0032','SUDAH DIBAYAR','5000'),
('D0032','E0033','SUDAH DIBAYAR','5000'),
('D0033','E0034','SUDAH DIBAYAR','5000'),
('D0034','E0035','SUDAH DIBAYAR','5000'),
('D0035','E0036','SUDAH DIBAYAR','5000'),
('D0036','E0049','SUDAH DIBAYAR','5000'),
('D0037','E0037','SUDAH DIBAYAR','5000'),
('D0038','E0038','SUDAH DIBAYAR','5000'),
('D0039','E0039','SUDAH DIBAYAR','5000'),
('D0040','E0040','SUDAH DIBAYAR','5000'),
('D0041','E0041','SUDAH DIBAYAR','5000'),
('D0042','E0042','SUDAH DIBAYAR','5000'),
('D0043','E0042','SUDAH DIBAYAR','5000'),
('D0044','E0049','SUDAH DIBAYAR','5000'),
('D0045','E0049','SUDAH DIBAYAR','5000'),
('D0046','E0047','SUDAH DIBAYAR','5000'),
('D0047','E0048','BELUM DIBAYAR','5000'),
('D0048','E0049','BELUM DIBAYAR','5000'),
('D0049','E0047','BELUM DIBAYAR','5000'),
('D0050','E0048','BELUM DIBAYAR','5000'),
('D0051','E0049','BELUM DIBAYAR','5000'),
('D0052','E0047','BELUM DIBAYAR','5000'),
('D0053','E0048','BELUM DIBAYAR','5000'),
('D0054','E0049','BELUM DIBAYAR','5000');

/*Table structure for table `kategori` */

DROP TABLE IF EXISTS `kategori`;

CREATE TABLE `kategori` (
  `K_ID` char(5) NOT NULL,
  `K_NAMA` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`K_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `kategori` */

insert  into `kategori`(`K_ID`,`K_NAMA`) values 
('K0001','Pertanian'),
('K0002','bisnis & ekonomi'),
('K0003','komik'),
('K0004','buku masakan'),
('K0005','pendidikan'),
('K0006','keluarga'),
('K0007','sejarah'),
('K0008','hukum'),
('K0009','sastra'),
('K0010','buku medis'),
('K0011','keterampilan profesional'),
('K0012','agama'),
('K0013','sains'),
('K0014','ilmu sosial'),
('K0015','persiapan ujian'),
('K0016','seni & desain'),
('K0017','anak-anak'),
('K0018','komputer & teknologi'),
('K0019','kamus'),
('K0020','teknik'),
('K0021','finansial'),
('K0022','humaniora'),
('K0023','gaya hidup'),
('K0024','matematika'),
('K0025','fiksi populer'),
('K0026','psikologi'),
('K0027','romance'),
('K0028','pengembangan diri'),
('K0029','spiritualitas'),
('K0030','travel');

/*Table structure for table `pegawai` */

DROP TABLE IF EXISTS `pegawai`;

CREATE TABLE `pegawai` (
  `P_ID` char(5) NOT NULL,
  `P_NAMA` varchar(25) DEFAULT NULL,
  `P_KELAMIN` varbinary(1) DEFAULT NULL,
  `P_ALAMAT` varchar(100) DEFAULT NULL,
  `P_TELPON` varchar(14) DEFAULT NULL,
  `P_TEMPAT_LAHIR` varchar(50) DEFAULT NULL,
  `P_TANGGAL_LAHIR` date DEFAULT NULL,
  `P_EMAIL` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`P_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pegawai` */

insert  into `pegawai`(`P_ID`,`P_NAMA`,`P_KELAMIN`,`P_ALAMAT`,`P_TELPON`,`P_TEMPAT_LAHIR`,`P_TANGGAL_LAHIR`,`P_EMAIL`) values 
('P0001','Bastiaan Geovanni ','L','Jl. Tambak Asri No. 63 Surabaya','08123457654','Jakarta','1985-12-08','BastiaanGeovanni@gmail.co'),
('P0002','Kastara Panji Budiawan','L','JL. Embong Kemiri No. 2 Surabaya','08126790345','Surabaya','1990-01-07','KastaraPanji@gmail.com'),
('P0003','Ava Nafiza Wibowo','P','Jl. Raya gunung sari No. 211 Surabaya','08137385092','Jakarta','1994-02-06','AvaNafiza@gmail.com'),
('P0004','Calandre Kei Ashana ','P','Jl. Ciliwung 2 No. 43 Surabaya','08569076234','Surabaya','1991-03-08','CalandreKei@gmail.com'),
('P0005','Fariza Khansa Yuan','P','Jl. Sidosermo 2 No. 71 Surabaya','08819399550','Kebumen','1992-02-16','FarizaKhansa@gmail.com'),
('P0006','Naufal Nawwar','L','Jl. Brigjend Katamso 222 Waru Surabaya','08137893564','Solo','1994-03-27','NaufalNawwar@gmail.com'),
('P0007','Luthfi Hamizan Rahmani','L','Jl. Semolowaru Selatan 6/12 Surabaya','08572538960','Klaten','1991-05-05','LuthfiHamizan@gmail.com'),
('P0008','Pandji Putra Nugroho','L','Jl. Cimpedak No. 14 Surabaya','08573456584','Surabaya','1994-05-28','PandjiPutra@gmail.com'),
('P0009','Alfi Andra Aditya','L','Medokan Ayu MA3 C-14 Surabaya','08128797987','Surabaya','1992-06-10','AlfiAndra@gmail.com'),
('P0010','Desi Adiani ','P','Medayu Selatan IV / D-20 Surabaya','08563467627','Banyuwangi','1990-06-24','DesiAdiani@gmail.com'),
('P0011','Ivona Shafiqa Nismara','P','Jl. Dukuh Menanggal I-D/35 Surabaya','08816762796','Surabaya','1988-07-07','IvonaShafiqa@gmail.com'),
('P0012','Mahawira Natha ','L','Jl. Raya Diponegoro No. 48 Surabaya','08826882557','Jakarta','1994-03-07','MahawiraNatha@gmail.com'),
('P0013','Arya Dzaky Pradana','L','Jl. Sidotopo Lor I 15 Surabaya','08127975346','Ponorogo','1992-09-19','AryaDzaky@gmail.com'),
('P0014','Dimas Arman Hamzari','L','Jl. Rungkut Lor RL V F/22 Surabaya','08175897654','Solo','1990-06-21','DimasArman@gmail.com'),
('P0015','Danish Mayza','L','Jl. Tangkuban Prahu 29 Surabaya','08175875624','Kebumen','1991-11-07','DanishMayza@gmail.com'),
('P0016','Mashel Astrid Faniza','P','Jl Manyar Rejo 18 Surabaya','08126688643','Surabaya','1994-04-06','MashelAstrid@gmail.com'),
('P0017','Khalfani Reagan','L','Jl Demak 166-168 Surabaya','08568795656','Aceh','1990-09-03','KhalfaniReagan@gmail.com'),
('P0018','Keisha Ayra','P','Jl Klampis Sakarosa 13 Surabaya','08816574546','Jakarta','1990-02-01','KeishaAyra@gmail.com'),
('P0019','Talitha Meisya','P','Jl Pucang Anom 100 Surabaya','08575756745','Surabaya','1993-07-01','TalithaMeisya@gmail.com'),
('P0020','Imtiyaz Ammar Amani','L','Jl Menanggal II 9-A Surabaya','08125768539','Malang','1991-11-29','ImtiyazAmmar@gmail.com'),
('P0021','Pandu Wijaya Kusuma','L','Jl Klampis Sacharosa 11 Surabaya','08135647757','Solo','1994-05-06','PanduWijaya@gmail.com'),
('P0022','Qiana Kineta Carabella','P','Jl Perak Brt 255 Surabaya','08578785675','Malang','1993-10-11','QianaKineta@gmail.com'),
('P0023','Annisa Maulida','P','Jl Kertajaya 19-A Surabaya','08565745378','Lumajang','1990-03-19','AnnisaMaulida@gmail.com'),
('P0024','Zerina Lamia','P','Jl Raya Darmo 107 Surabaya','08135867655','Jakarta','1989-08-24','ZerinaLamia@gmail.com'),
('P0025','Radhika Aditya','L','Jl Wisma Bungurasih II/74 Surabaya','08125657678','Banyuwangi','1994-04-27','RadhikaAditya@gmail.com'),
('P0026','Slamet','L','Jl. Tambakwedi 5 Surabaya','082890334903','Ngawi','1991-11-29','Slamet@gmail.com'),
('P0027','Solihin Hop','L','Jl. Kemayoran 86 Surabaya','083179478068','Madiun','1994-05-06','SolihinHop@gmail.com'),
('P0028','Sukarno','L','Jl. Jeruk 68 Surabaya','083422611752','Magetan','1993-09-11','Sukarno@gmail.com'),
('P0029','Surya Raja Hadiman','L','Jl. Kalijudan 95 Surabaya','081252302371','Sragen','1990-03-19','SuryaRaja@gmail.com'),
('P0030','Susilo','L','Jl. Krembangan Utara 87 Surabaya','086774767027','Ponorogo','1989-02-24','Susilo@gmail.com'),
('P0031','Tuminindyah','P','Jl. Pakal 14 Surabaya','082715605674','Pacitan','2018-05-16','Tuminindyah@gmail.com'),
('P0032','Winata Kang','P','Jl. Kedung Baruk 62 Surabaya','084678531916','Blora','1988-01-24','WinataKang@gmail.com'),
('P0033','Yandi Sukarno Kusumo','L','Jl. Bringin 26 Surabaya','087324799933','Karang Anyar','1994-12-27','YandiSukarno@gmail.com');

/*Table structure for table `peminjaman` */

DROP TABLE IF EXISTS `peminjaman`;

CREATE TABLE `peminjaman` (
  `E_ID` char(5) NOT NULL,
  `P_ID` char(5) DEFAULT NULL,
  `A_ID` char(5) DEFAULT NULL,
  `B_ID` char(5) DEFAULT NULL,
  `E_TANGGAL_PEMINJAMAN` date DEFAULT NULL,
  `E_TANGGAL_PENGEMBALIAN` date DEFAULT NULL,
  `E_STATUS` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`E_ID`),
  KEY `FK_PEMINJAM_REFERENCE_PEGAWAI` (`P_ID`),
  KEY `FK_PEMINJAM_REFERENCE_ANGGOTA` (`A_ID`),
  KEY `FK_PEMINJAM_REFERENCE_BUKU` (`B_ID`),
  CONSTRAINT `FK_PEMINJAM_REFERENCE_ANGGOTA` FOREIGN KEY (`A_ID`) REFERENCES `anggota` (`A_ID`),
  CONSTRAINT `FK_PEMINJAM_REFERENCE_BUKU` FOREIGN KEY (`B_ID`) REFERENCES `buku` (`B_ID`),
  CONSTRAINT `FK_PEMINJAM_REFERENCE_PEGAWAI` FOREIGN KEY (`P_ID`) REFERENCES `pegawai` (`P_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `peminjaman` */

insert  into `peminjaman`(`E_ID`,`P_ID`,`A_ID`,`B_ID`,`E_TANGGAL_PEMINJAMAN`,`E_TANGGAL_PENGEMBALIAN`,`E_STATUS`) values 
('E0001','P0001','A0039','B0001','2017-04-01','2017-04-08','Sudah Dikembalikan'),
('E0002','P0002','A0001','B0001','2017-05-01','2017-05-07','Sudah Dikembalikan'),
('E0003','P0003','A0040','B0001','2017-05-01','2017-05-06','Sudah Dikembalikan'),
('E0004','P0004','A0024','B0001','2017-05-02','2017-05-04','Sudah Dikembalikan'),
('E0005','P0005','A0016','B0001','2017-05-03','2017-05-04','Sudah Dikembalikan'),
('E0006','P0001','A0007','B0001','2017-06-04','2017-06-06','Sudah Dikembalikan'),
('E0007','P0002','A0023','B0001','2017-06-05','2017-06-08','Sudah Dikembalikan'),
('E0008','P0003','A0026','B0001','2017-06-06','2017-06-13','Sudah Dikembalikan'),
('E0009','P0004','A0021','B0001','2017-07-07','2017-07-12','Sudah Dikembalikan'),
('E0010','P0005','A0032','B0001','2017-07-08','2017-07-15','Sudah Dikembalikan'),
('E0011','P0006','A0021','B0001','2017-07-01','2017-07-08','Sudah Dikembalikan'),
('E0012','P0007','A0003','B0001','2017-08-02','2017-08-09','Sudah Dikembalikan'),
('E0013','P0008','A0012','B0001','2017-08-04','2017-08-08','Sudah Dikembalikan'),
('E0014','P0009','A0004','B0002','2017-08-05','2017-08-10','Sudah Dikembalikan'),
('E0015','P0010','A0002','B0003','2017-08-01','2017-08-04','Sudah Dikembalikan'),
('E0016','P0011','A0015','B0004','2017-09-02','2017-09-08','Sudah Dikembalikan'),
('E0017','P0012','A0011','B0005','2017-09-03','2017-09-10','Sudah Dikembalikan'),
('E0018','P0006','A0010','B0006','2017-09-04','2017-09-05','Sudah Dikembalikan'),
('E0019','P0007','A0005','B0007','2017-10-03','2017-10-10','Sudah Dikembalikan'),
('E0020','P0008','A0006','B0008','2017-10-04','2017-10-09','Sudah Dikembalikan'),
('E0021','P0009','A0008','B0009','2017-10-05','2017-10-09','Sudah Dikembalikan'),
('E0022','P0010','A0007','B0010','2017-11-06','2017-11-08','Sudah Dikembalikan'),
('E0023','P0011','A0017','B0011','2017-11-07','2017-11-09','Sudah Dikembalikan'),
('E0024','P0012','A0014','B0012','2017-11-08','2017-11-10','Sudah Dikembalikan'),
('E0025','P0013','A0019','B0013','2017-12-09','2017-12-14','Sudah Dikembalikan'),
('E0026','P0014','A0003','B0014','2017-12-01','2017-12-04','Sudah Dikembalikan'),
('E0027','P0015','A0040','B0015','2017-12-02','2017-12-07','Sudah Dikembalikan'),
('E0028','P0016','A0002','B0016','2017-12-03','2017-12-04','Sudah Dikembalikan'),
('E0029','P0017','A0028','B0017','2018-01-04','2018-01-05','Sudah Dikembalikan'),
('E0030','P0018','A0030','B0018','2018-01-06','2018-01-07','Sudah Dikembalikan'),
('E0031','P0019','A0001','B0019','2018-02-07','2018-02-09','Sudah Dikembalikan'),
('E0032','P0020','A0033','B0020','2018-02-08','2018-02-13','Sudah Dikembalikan'),
('E0033','P0021','A0018','B0021','2018-02-11','2018-02-13','Sudah Dikembalikan'),
('E0034','P0013','A0031','B0022','2018-02-12','2018-02-17','Sudah Dikembalikan'),
('E0035','P0014','A0034','B0023','2018-02-13','2018-02-15','Sudah Dikembalikan'),
('E0036','P0015','A0009','B0024','2018-03-15','2018-03-16','Sudah Dikembalikan'),
('E0037','P0016','A0006','B0025','2018-03-16','2018-03-20','Sudah Dikembalikan'),
('E0038','P0017','A0037','B0026','2018-03-17','2018-03-22','Sudah Dikembalikan'),
('E0039','P0018','A0027','B0027','2018-04-20','2018-04-24','Sudah Dikembalikan'),
('E0040','P0019','A0022','B0028','2018-04-21','2018-04-24','Sudah Dikembalikan'),
('E0041','P0021','A0020','B0029','2018-04-02','2018-04-07','Sudah Dikembalikan'),
('E0042','P0022','A0013','B0007','2018-04-03','2018-04-05','Sudah Dikembalikan'),
('E0043','P0023','A0035','B0004','2018-04-04','2018-04-09','Sudah Dikembalikan'),
('E0044','P0024','A0029','B0001','2018-04-05','2018-04-10','Sudah Dikembalikan'),
('E0045','P0025','A0003','B0001','2018-05-01','2018-05-03','Sudah Dikembalikan'),
('E0046','P0026','A0005','B0001','2018-05-24','2018-05-25','Sudah Dikembalikan'),
('E0047','P0027','A0025','B0001','2018-05-01','2018-05-28','Belum Dikembalikan'),
('E0048','P0028','A0005','B0001','2018-05-01','2018-05-28','Belum Dikembalikan'),
('E0049','P0029','A0009','B0001','2018-05-01','2018-05-28','Belum Dikembalikan'),
('E0050','P0001','A0001','B0001','2018-05-29','2018-05-30',''),
('E0051','P0001','A0001','B0001','2018-05-30','0000-00-00','Belum Dikembalikan'),
('E0052','P0001','A0001','B0001','2018-05-30','0000-00-00','Belum Dikembalikan'),
('E0053','P0001','A0002','B0002','2018-05-30','0000-00-00','Belum Dikembalikan');

/*Table structure for table `penerbit` */

DROP TABLE IF EXISTS `penerbit`;

CREATE TABLE `penerbit` (
  `C_ID` char(5) NOT NULL,
  `C_NAMA` varchar(50) DEFAULT NULL,
  `C_ALAMAT` varchar(100) DEFAULT NULL,
  `C_EMAIL` varchar(100) DEFAULT NULL,
  `C_TELEPON` varchar(20) DEFAULT NULL,
  `C_WEB` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`C_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `penerbit` */

insert  into `penerbit`(`C_ID`,`C_NAMA`,`C_ALAMAT`,`C_EMAIL`,`C_TELEPON`,`C_WEB`) values 
('C0001','Gema Insani','Gedung Gema Insani Jl. Ir. H. Juanda, Depok 16418 Indonesia','toko@gemainsani.co.id ',' 0815 8686 8686 ','gemainsaniblog.wordpress.com'),
('C0002','PT. Grasindo','Jl. Kecilung No.2560272, Ketabang, Genteng, Kota SBY, Jawa Timur 60272','redaksi@grasindo.id','(031) 5345041','www.grasindo.id'),
('C0003','Gradien Mediatama','Jl. Wora-wari A-74 Baciro Baru. Yogjakarta','redaksi@gradienmediatama.com','(0274) 583 421','gradienmediatama.com'),
('C0004','Andi Publisher','Jl. Beo 38-40, Demangan','adm.andijkt1@gmail.com','(021) 58907190','andipublisher.com'),
('C0005','Elex Media Komputindo','Jl. Palmerah Barat 29 - 37 Jakarta Pusat, 10270',NULL,'(021)5480888','elexmedia.id'),
('C0006','Gramedia Pustaka Utama','Jl. Palmerah Selatan No. 24-26 Jakarta Pusar','jane@gramedia.com','(021)5483008','www.gpu.id'),
('C0007','Kubus Media','Pesona Telaga Cibinong Jl. Limbote No. 21 RT004/002\nKel.Harapanjaya Kec.Cibinong\nCibinong - Bogor 16','redaksi @ kubusmedia.co.id','(021)83713423 ','www.kubusmedia.co.id/'),
('C0008','Indiva media kreasi','Jalan Slamet Riyadi No.612, Jajar, Laweyan, Jajar, Laweyan, Kota Surakarta, Jawa Tengah 57145','indiva_mediakreasi@yahoo.co.id','0271-731584','indivamediakreasi.com'),
('C0009','Penerbit Diroz Pustaka','Jl. Marsam No. 09, Ngabul, Tahunan, Jepara 59428','dirozpustaka@gmail.com','(0291) 5756385','www.dirozpustaka.com'),
('C0010','PT. MIZAN PUSTAKA','Golden Plaza (Kompleks Golden Truly) Blok G No. 15-16Jl. R.S. Fatmawati, Jakarta',NULL,'(021)7661724',NULL),
('C0011','Matahati','Plaza Karinda no. B1.17Jl. Karang Tengah No.6 Jakarta 12440','info@penerbitmatahati.com','(021)7503073',NULL),
('C0012','Ufuk Press','Jln warga 23a Pejaten Barat Pasar Minggu Jakarta Selatan 12510','redaksi@ufukpress.com','(021)7976587',NULL),
('C0013','Fou','Betung 256 Pondok bamboo Jaktim 13430','foumediapublisher06@yahoo.com','(021) 8616374',NULL),
('C0014','Puspa Swara','Wisma Hijau, Mekar Sari raya 15 Cimanggis Depok 16952','swara@cbn.net.id','(021) 8729060',NULL),
('C0015','JavaMedia','Jln. Polo Kamboja Raya No. 41 g Kemandoran 1 Kebayoran Lama Jaksel 12210','Java.media@yahoo.com','(021)68882289',NULL),
('C0016','Kayla Pustaka','Ampera Raya Gg: Kancil 15 Ragunan Jaksel 12550',NULL,'(021)78847301',NULL),
('C0017','Dastan',NULL,'Layanan@dastanbooks.com','(021)8092269','www.dastanbooks.com'),
('C0018','Vanis Book','Kampung Janis 9/9 34 Jakbar','khuhernata@yahoo.com',NULL,NULL),
('C0019','Rajagrafindo Persada','Jl. Pelepah Hijau IV Tn 1. No: 14-15 Kelapa Gading Permai Jakarta 14240','rajapers@indo.net.id','(021) 4520951',NULL),
('C0020','Penerbit kharisma','Jln. Moh Toha 2 Pondok Cabe, Ciputat Tanggerang 15418',NULL,'(021)74445',NULL),
('C0021','Dian Rakyat','Jl angggur. Vll no, 36c Jajar','','(021)4604444','www.dianrakyat.co.id'),
('C0022','Zikrul Hakim','Jl. Waru No. 20B Jakarta Timur 13220','Redaksi-zikrul@yahoo.com','(021)4754428',NULL),
('C0023','Dinastindo dan Abdi Tandur','Jl. Kemiri Raya No.68 Rt 03/04 Rawa Lindung Pondok Cabe Udik Ciputat 154182','dinastindo@yahoo.com','(021)7496733',NULL),
('C0024','Al Huda ','Jl. Buncit Raya Kav.35, Pejaten Barat, Jakarta Selatan','info@icc-jakarta.com','(021)7996767','www.icc-jakarta.com'),
('C0025','Pustaka Utama Grafiti ','Jl. KH. Wahid Hasyim 166A 10250',NULL,'(021)31902906 ',NULL),
('C0026','Alinea','Jl. Gejayan Gg.Buntu II No.5 AYogyakarta 55281','jendela_yogya@plasa.com','(0274) 518886',NULL),
('C0027','Gagas Media','Pesona Depok II Estate Blok AK No. 18 Depok 16411','gagasmedia@cbn.net.id',NULL,NULL),
('C0028','Remaja Rosdakarya ','Jl. Kembang Raya No. 4 Jakarta 10420','rosda@indosat.net.id','(021)3901692',NULL),
('C0029','Robbani Press ','Jl. Raya Condet Balekambang No. 27B Batu Ampar-Kramat Jati Jakarta Timur ','robbanipress@cbn.net.id','(021)9238998','www.robbanipress.co.id'),
('C0030','Qalam Grup (Qalam, Tinta)','Jl. Kaliurang Km 7,5 Kayen 2 No.36 Gg. Anggrek 57 A Yogyakarta 55283','qalam@qalam-online.com ','(0274)7474039','www.qalam-online.com'),
('C0031','PIRAMEDIA, Pustaka Adina, PIRAC','Jl. Mampang Prapatan XI No.39 Jakarta Selatan 12790','pirac@cbn.net.id ','(021)7756071','www.pirac.web.id'),
('C0032','Erlangga EDS','(d/h Bentang Budaya) Sambilegi Baru Rt.01/Rw.53 No.35 Manguwaharjo, Depok Sleman, Yogya','editor@erlangga.net ','(021)8717006','www.erlangga.co.id'),
('C0033','Mujahid','Kotak Pos 11 Banjaran, Bandung','mujahidpress@yahoo.com','(022)5943620',NULL),
('C0034','Femina Grup ','Jl. HR. Rasuna Said Blok B Kav. 32-33 Jakarta 12910','redaksi@feminagroup.com ','(021) 5253816',NULL);

/*Table structure for table `pengunjung` */

DROP TABLE IF EXISTS `pengunjung`;

CREATE TABLE `pengunjung` (
  `z_id` char(5) NOT NULL,
  `p_id` char(5) NOT NULL,
  `z_tanggal_berkunjung` date DEFAULT NULL,
  `z_telpon` varchar(14) DEFAULT NULL,
  `z_aktivitas` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`z_id`),
  KEY `fk_pengunjung` (`p_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `pengunjung` */

/*Table structure for table `user_anggota` */

DROP TABLE IF EXISTS `user_anggota`;

CREATE TABLE `user_anggota` (
  `username` varchar(64) DEFAULT NULL,
  `password` varchar(512) DEFAULT NULL,
  `a_id` char(5) DEFAULT NULL,
  KEY `a_id` (`a_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `user_anggota` */

insert  into `user_anggota`(`username`,`password`,`a_id`) values 
('usertest','efde0426861fdda373c04ad359ab2959','A0001'),
('AP0001','4d42328436e640ed8ded61b4641e121c','A0001'),
('AP0002','7f8c8ec70afcbdb5fd8a0831779a5088','A0002'),
('AP0003','8bf0bb4833a866eeb47ba0724cd67ede','A0003'),
('AP0004','2e29c5e95c87f8074aca43abcff55797','A0004'),
('AP0005','525601861c468bf6103d0e2012229ab6','A0005'),
('AP0006','0e8cfab624de72928168f3e622beb65a','A0006'),
('AP0007','e340ca500b957b8d5a0db3f9313cab34','A0007'),
('AP0008','25bbf3779c8a67d928d8d8a406305caa','A0008'),
('AP0009','6fe015c0fd92ce88a23d370e90c12d39','A0009'),
('AP0010','404f0e22930814b7e5905a3c8d9a2804','A0010'),
('AP0011','3302e6501e37227a05a0c2463a797c27','A0011'),
('AP0012','681c45131ea019bd9f124b4127ec3f9b','A0012'),
('AP0013','6893367870c18a10d5049058f09390ee','A0013'),
('AP0014','a690db497808cc212779b01347ee8524','A0014'),
('AP0015','102d9e8f35d0af3183e2b440146dff8d','A0015'),
('AP0016','934519918a8e393b4ebacc86de53993d','A0016'),
('AP0017','b80fd3a55ef285d505186e6b33ec4f3d','A0017'),
('AP0018','99601e6cb5fe9632f3e76debb49cee15','A0018'),
('AP0019','0961ef98c922d33b8e537dcc52afc678','A0019'),
('AP0020','498be406a2cbd0f31c9c965e3038f453','A0020'),
('AP0021','1e7033be4d07ff0c616adf4d87d995d3','A0021'),
('AP0022','fe1dc9315f216049a54ab9af1d09db3a','A0022'),
('AP0023','537fc73568abad1abadc7f790db82927','A0023'),
('AP0024','d6ca69dbcca6f207ef2fcd96036b2ba4','A0024'),
('AP0025','97c2bc68e10343fd6e9622a8fface34a','A0025'),
('AP0026','6c735822973fd03a68c56f56d5052726','A0026'),
('AP0027','f85c6830ff246082ce98991492e148fd','A0027'),
('AP0028','ce6e12f90dc14728d4b469370892cac2','A0028'),
('AP0029','e9a8d924efe4e59f076a683ab903e872','A0029'),
('AP0030','6ded274a4a90a31613291034cd177bb7','A0030');

/*Table structure for table `user_pegawai` */

DROP TABLE IF EXISTS `user_pegawai`;

CREATE TABLE `user_pegawai` (
  `username` varchar(64) DEFAULT NULL,
  `password` varchar(512) DEFAULT NULL,
  `p_id` char(5) DEFAULT NULL,
  KEY `p_id` (`p_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `user_pegawai` */

insert  into `user_pegawai`(`username`,`password`,`p_id`) values 
('UP0002','7f8c8ec70afcbdb5fd8a0831779a5088','P0002'),
('UP0001','4d42328436e640ed8ded61b4641e121c','P0001'),
('UP0003','8bf0bb4833a866eeb47ba0724cd67ede','P0003'),
('UP0004','2e29c5e95c87f8074aca43abcff55797','P0004'),
('UP0005','525601861c468bf6103d0e2012229ab6','P0005'),
('UP0006','0e8cfab624de72928168f3e622beb65a','P0006'),
('UP0007','e340ca500b957b8d5a0db3f9313cab34','P0007'),
('UP0008','25bbf3779c8a67d928d8d8a406305caa','P0008'),
('UP0009','6fe015c0fd92ce88a23d370e90c12d39','P0009'),
('UP0010','404f0e22930814b7e5905a3c8d9a2804','P0010'),
('UP0011','3302e6501e37227a05a0c2463a797c27','P0011'),
('UP0012','681c45131ea019bd9f124b4127ec3f9b','P0012'),
('UP0013','6893367870c18a10d5049058f09390ee','P0013'),
('UP0014','a690db497808cc212779b01347ee8524','P0014'),
('UP0015','102d9e8f35d0af3183e2b440146dff8d','P0015'),
('UP0016','934519918a8e393b4ebacc86de53993d','P0016'),
('UP0017','b80fd3a55ef285d505186e6b33ec4f3d','P0017'),
('UP0018','99601e6cb5fe9632f3e76debb49cee15','P0018'),
('UP0019','0961ef98c922d33b8e537dcc52afc678','P0019'),
('UP0020','498be406a2cbd0f31c9c965e3038f453','P0020'),
('UP0021','1e7033be4d07ff0c616adf4d87d995d3','P0021'),
('UP0022','fe1dc9315f216049a54ab9af1d09db3a','P0022'),
('UP0023','537fc73568abad1abadc7f790db82927','P0023'),
('UP0024','d6ca69dbcca6f207ef2fcd96036b2ba4','P0024'),
('UP0025','97c2bc68e10343fd6e9622a8fface34a','P0025'),
('UP0026','6c735822973fd03a68c56f56d5052726','P0026'),
('UP0027','f85c6830ff246082ce98991492e148fd','P0027'),
('UP0028','ce6e12f90dc14728d4b469370892cac2','P0028'),
('UP0029','e9a8d924efe4e59f076a683ab903e872','P0029'),
('UP0030','6ded274a4a90a31613291034cd177bb7','P0030');

/* Trigger structure for table `anggota` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `auto_id_anggota` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'zphareco_fppweba'@'172.104.180.145' */ /*!50003 TRIGGER `auto_id_anggota` BEFORE INSERT ON `anggota` FOR EACH ROW 
BEGIN 
  declare n_anggota int;
  declare id_new char(5);
  select count(*) into n_anggota
  from anggota;
  set n_anggota := n_anggota+1;
  SET id_new:=CONCAT('A',LPAD(n_anggota,4,0));
  SET new.A_ID = id_new;
END */$$


DELIMITER ;

/* Trigger structure for table `buku` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `auto_id_buku` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'zphareco_fppweba'@'172.104.180.145' */ /*!50003 TRIGGER `auto_id_buku` BEFORE INSERT ON `buku` FOR EACH ROW 
BEGIN 
  declare n_buku int;
  declare id_new char(5);
  select count(*) into n_buku
  from buku;
  set n_buku := n_buku+1;
  SET id_new:=CONCAT('B',LPAD(n_buku,4,0));
  SET new.B_ID = id_new;
END */$$


DELIMITER ;

/* Trigger structure for table `peminjaman` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `min_eksemplar` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'zphareco_fppweba'@'172.104.180.145' */ /*!50003 TRIGGER `min_eksemplar` BEFORE INSERT ON `peminjaman` FOR EACH ROW 
BEGIN 
  DECLARE n INT;
  DECLARE id_new CHAR(5);
 
  SELECT COUNT(*) INTO n
  FROM peminjaman;
  SET n := n+1;
  SET id_new:=CONCAT('E',LPAD(n,4,0));
  SET new.E_ID = id_new;
  UPDATE buku SET buku.`B_EKSEMPLAR` = buku.`B_EKSEMPLAR` - 1 WHERE buku.`B_ID` = new.b_id;
END */$$


DELIMITER ;

/* Trigger structure for table `peminjaman` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `update_tanggal` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'zphareco_fppweba'@'172.104.180.145' */ /*!50003 TRIGGER `update_tanggal` BEFORE UPDATE ON `peminjaman` FOR EACH ROW 
BEGIN 
  SET new.e_tanggal_pengembalian = SYSDATE();
  UPDATE buku SET buku.`B_EKSEMPLAR` = buku.`B_EKSEMPLAR` + 1 WHERE buku.`B_ID` = old.B_ID;
END */$$


DELIMITER ;

/* Trigger structure for table `user_pegawai` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `auto_generate_password_pegawai` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'zphareco_fppweba'@'172.104.180.145' */ /*!50003 TRIGGER `auto_generate_password_pegawai` BEFORE INSERT ON `user_pegawai` FOR EACH ROW 
BEGIN 
  SET new.password = md5(new.password);
END */$$


DELIMITER ;

/* Function  structure for function  `hitung_jumlah` */

/*!50003 DROP FUNCTION IF EXISTS `hitung_jumlah` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`zphareco_fppweba`@`172.104.180.145` FUNCTION `hitung_jumlah`(kategorinya VARCHAR(50)) RETURNS int(11)
    DETERMINISTIC
BEGIN
    DECLARE jml INT;
    SELECT COUNT(b.k_id) AS jml_buku   INTO jml
    FROM buku b, kategori k
    WHERE b.k_id = k.k_id AND k.k_nama =  kategorinya --  'sastra'
    GROUP BY (b.k_id);
    RETURN jml;
    END */$$
DELIMITER ;

/* Function  structure for function  `total_denda` */

/*!50003 DROP FUNCTION IF EXISTS `total_denda` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`zphareco_fppweba`@`172.104.180.145` FUNCTION `total_denda`() RETURNS int(11)
    DETERMINISTIC
BEGIN
    DECLARE jml INT;
    SELECT sum(denda.`D_BIAYA`) INTO jml
    FROM denda
    WHERE denda.`D_STATUS` = 'SUDAH DIBAYAR';
    RETURN jml;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `hapus` */

/*!50003 DROP PROCEDURE IF EXISTS  `hapus` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`zphareco_fppweba`@`172.104.180.145` PROCEDURE `hapus`(id_anggota CHAR(5))
BEGIN
DECLARE n_denda INT;
SELECT COUNT(*) INTO n_denda
FROM anggota a,peminjaman p,denda d
WHERE a.a_id = p.a_id AND p.e_id=d.e_id
AND a.a_id = id_anggota;

IF n_denda > 2
THEN
DELETE FROM anggota WHERE a.a_id = id_anggota;
END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `hapus_anggota` */

/*!50003 DROP PROCEDURE IF EXISTS  `hapus_anggota` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`zphareco_fppweba`@`172.104.180.145` PROCEDURE `hapus_anggota`()
BEGIN
	DECLARE id CHAR (5);
	DECLARE banyak_denda INT (3);
	DECLARE updater INT DEFAULT 0;
	DECLARE cursor1  CURSOR FOR SELECT a.a_id, COUNT(d.d_id)
		FROM anggota a, peminjaman e, denda d
		WHERE a.a_id = e.a_id AND e.e_id = d.e_id
		GROUP BY (a.a_id);
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET updater=1;
	
	OPEN cursor1;
	REPEAT
	FETCH cursor1 INTO id, banyak_denda;
	
	IF banyak_denda >= 2 THEN 
	DELETE FROM anggota WHERE a.a_id = id AND banyak_denda >=2;
	END IF;
	
	UNTIL updater END REPEAT;
	CLOSE cursor1;
END */$$
DELIMITER ;

/* Procedure structure for procedure `hapus_denda` */

/*!50003 DROP PROCEDURE IF EXISTS  `hapus_denda` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`zphareco_fppweba`@`172.104.180.145` PROCEDURE `hapus_denda`(id_anggota char(5))
BEGIN
declare id_e char(5);

select peminjaman.`E_ID` into id_e
from peminjaman
where peminjaman.`A_ID` = id_anggota
order by E_ID DESC
limit 1;

update denda set  D_STATUS = 'SUDAH DIBAYAR'
where denda.`E_ID` = id_e ;

END */$$
DELIMITER ;

/* Procedure structure for procedure `tambah_denda` */

/*!50003 DROP PROCEDURE IF EXISTS  `tambah_denda` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`zphareco_fppweba`@`172.104.180.145` PROCEDURE `tambah_denda`(id_anggota char(5))
BEGIN
   DECLARE id_d char(5);
   DECLARE id_e CHAR(5) DEFAULT '0';
   DECLARE jumlah_id_denda INT;

   select count(*) into jumlah_id_denda
   from denda;
   set jumlah_id_denda := jumlah_id_denda+1;
   
   SELECT E_ID  into id_e
   FROM peminjaman
   WHERE A_ID = id_anggota 
   AND E_STATUS = 'Belum Dikembalikan'
   and E_TANGGAL_PEMINJAMAN + INTERVAL 10 DAY < now()
   order by E_TANGGAL_PENGEMBALIAN ASC
   LIMIT 1;
   
   set id_d:=CONCAT('D',LPAD(jumlah_id_denda,4,0));
   
   if id_e <> '0'
   then
   insert into denda values (id_d,id_e,'BELUM DIBAYAR','5000'); 
   end if;
   
END */$$
DELIMITER ;

/* Procedure structure for procedure `tambah_denda_all` */

/*!50003 DROP PROCEDURE IF EXISTS  `tambah_denda_all` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`zphareco_fppweba`@`172.104.180.145` PROCEDURE `tambah_denda_all`()
BEGIN
   DECLARE id_a    CHAR(5);
   DECLARE id_e    CHAR(5);
   DECLARE id_d    CHAR(5);
   DECLARE flag	    BOOL DEFAULT TRUE;
   DECLARE jumlah_id_denda INT;
   DECLARE id_flag_cursor CURSOR for
   SELECT DISTINCT A_ID,E_ID 
   FROM peminjaman 
   WHERE E_STATUS = 'Belum Dikembalikan' AND E_TANGGAL_PEMINJAMAN + INTERVAL 7 DAY < NOW();
   
   DECLARE CONTINUE HANDLER	FOR 	NOT FOUND SET flag=FALSE;
   

   SELECT COUNT(*) INTO jumlah_id_denda
   FROM denda;
   
   OPEN id_flag_cursor;
   satu: LOOP
      FETCH id_flag_cursor INTO id_a,id_e;
	
	IF flag = FALSE THEN LEAVE satu;
	END IF;
	
	SET jumlah_id_denda := jumlah_id_denda+1;
	SET id_d:=CONCAT('D',LPAD(jumlah_id_denda,4,0));
        insert into denda values (id_d,id_e,'BELUM DIBAYAR','5000'); 
        
   END LOOP;
   CLOSE id_flag_cursor;
END */$$
DELIMITER ;

/*View structure for view TOP_5_BUKU */

/*!50001 DROP TABLE IF EXISTS `TOP_5_BUKU` */;
/*!50001 DROP VIEW IF EXISTS `TOP_5_BUKU` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`zphareco_fppweba`@`172.104.180.145` SQL SECURITY DEFINER VIEW `TOP_5_BUKU` AS select `p`.`B_ID` AS `b_id`,`b`.`B_JUDUL` AS `b_judul`,`b`.`B_PENULIS` AS `b_penulis`,count(`p`.`B_ID`) AS `jumlah` from (`peminjaman` `p` join `buku` `b`) where (`b`.`B_ID` = `p`.`B_ID`) group by `p`.`B_ID` order by `jumlah` desc limit 5 */;

/*View structure for view view_buku */

/*!50001 DROP TABLE IF EXISTS `view_buku` */;
/*!50001 DROP VIEW IF EXISTS `view_buku` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`zphareco_fppweba`@`172.104.180.145` SQL SECURITY DEFINER VIEW `view_buku` AS select `b`.`B_ID` AS `B_ID`,`b`.`B_JUDUL` AS `B_JUDUL`,`k`.`K_NAMA` AS `K_NAMA`,`b`.`B_TAHUN` AS `B_TAHUN`,`b`.`B_EDISI` AS `B_EDISI`,`b`.`B_PENULIS` AS `B_PENULIS`,`c`.`C_NAMA` AS `C_NAMA`,`b`.`B_LOKASI_FISIK` AS `B_LOKASI_FISIK`,`b`.`B_STATUS` AS `B_STATUS` from ((`buku` `b` join `kategori` `k`) join `penerbit` `c`) where ((`c`.`C_ID` = `b`.`C_ID`) and (`b`.`K_ID` = `k`.`K_ID`) and (`b`.`B_STATUS` = 'tersedia')) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

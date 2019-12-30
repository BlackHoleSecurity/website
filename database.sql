-- MariaDB dump 10.17  Distrib 10.4.6-MariaDB, for Android (aarch64)
--
-- Host: localhost    Database: blog_db
-- ------------------------------------------------------
-- Server version	10.4.6-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_category`
--

DROP TABLE IF EXISTS `tbl_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(200) DEFAULT NULL,
  `category_slug` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_category`
--

LOCK TABLES `tbl_category` WRITE;
/*!40000 ALTER TABLE `tbl_category` DISABLE KEYS */;
INSERT INTO `tbl_category` VALUES (1,'programming','programming'),(2,'hacking','hacking'),(3,'reversing','reversing');
/*!40000 ALTER TABLE `tbl_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_comment`
--

DROP TABLE IF EXISTS `tbl_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_date` timestamp NULL DEFAULT current_timestamp(),
  `comment_name` varchar(60) DEFAULT NULL,
  `comment_email` varchar(90) DEFAULT NULL,
  `comment_message` text DEFAULT NULL,
  `comment_status` int(11) DEFAULT 0,
  `comment_parent` int(11) DEFAULT 0,
  `comment_post_id` int(11) DEFAULT NULL,
  `comment_image` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_comment`
--

LOCK TABLES `tbl_comment` WRITE;
/*!40000 ALTER TABLE `tbl_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_inbox`
--

DROP TABLE IF EXISTS `tbl_inbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_inbox` (
  `inbox_id` int(11) NOT NULL AUTO_INCREMENT,
  `inbox_name` varchar(50) DEFAULT NULL,
  `inbox_email` varchar(80) DEFAULT NULL,
  `inbox_subject` varchar(200) DEFAULT NULL,
  `inbox_message` text DEFAULT NULL,
  `inbox_created_at` timestamp NULL DEFAULT current_timestamp(),
  `inbox_status` varchar(2) DEFAULT '0' COMMENT '0=Unread, 1=Read',
  PRIMARY KEY (`inbox_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_inbox`
--

LOCK TABLES `tbl_inbox` WRITE;
/*!40000 ALTER TABLE `tbl_inbox` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_inbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_post`
--

DROP TABLE IF EXISTS `tbl_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_post` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_title` varchar(250) DEFAULT NULL,
  `post_description` text DEFAULT NULL,
  `post_contents` longtext DEFAULT NULL,
  `post_image` varchar(40) DEFAULT NULL,
  `post_date` timestamp NULL DEFAULT current_timestamp(),
  `post_last_update` datetime DEFAULT NULL,
  `post_category_id` int(11) DEFAULT NULL,
  `post_tags` varchar(225) DEFAULT NULL,
  `post_slug` varchar(250) DEFAULT NULL,
  `post_status` int(11) DEFAULT NULL COMMENT '1=Publish, 0=Unpublish',
  `post_views` int(11) DEFAULT 0,
  `post_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_post`
--

LOCK TABLES `tbl_post` WRITE;
/*!40000 ALTER TABLE `tbl_post` DISABLE KEYS */;
INSERT INTO `tbl_post` VALUES (7,'Cara install Apache di Termux','Apache, termux','<h2>\r\nTermux</h2>\r\n<i>Termux&nbsp;</i>adalah aplikasi terminal emulator untuk android sekaligus linux environment yang berjalan di android tanpa perlu proses rooting ataupun settingan khusus. Aplikasi/Package tambahan juga tersedia dan bisa diinstall menggunakan APT package manager.\r\n<br>\r\n<h2>\r\ncara install apache2 di termux</h2>\r\n<div>\r\nBuka termux kalian, setelah itu ketik</div>\r\n<div>\r\n<code>$ apt update</code></div>\r\n<div>\r\n<code>$ apt install php apache2 php-apache -y</code></div>\r\n<div>\r\nSeperti gambar dibawah ini</div>\r\n<div>\r\n<div class=\"separator\" style=\"clear: both; text-align: center;\">\r\n<a href=\"https://lh3.googleusercontent.com/-Qy2s49h8bA8/XbiYZKYeRAI/AAAAAAAABJI/15Iw65O44Eco8QOWRiCfZfo5IOhf9MA6QCNcBGAsYHQ/s1600/1572378721325450-0.png\" imageanchor=\"1\" style=\"margin-left: 1em; margin-right: 1em;\">\r\n    <img border=\"0\" src=\"https://lh3.googleusercontent.com/-Qy2s49h8bA8/XbiYZKYeRAI/AAAAAAAABJI/15Iw65O44Eco8QOWRiCfZfo5IOhf9MA6QCNcBGAsYHQ/s1600/1572378721325450-0.png\" width=\"400\">\r\n  </a>\r\n</div>\r\n<br></div>\r\n<div>\r\nTunggu proses installasi sampai selesai, lalu konfigurasi apache kalian menggunakan text editor nano atau vim, contoh</div>\r\n<div>\r\n<br></div>\r\n<div>\r\n<code>$ vi ~/../usr/etc/apache2/httpd.conf</code></div>\r\n<div>\r\n<br></div>\r\n<div>\r\nUntuk memasukan modul php7 di apache</div>\r\n<div>\r\nMasukan</div>\r\n<div>\r\n<br></div>\r\n<div>\r\n<code>LoadModule php7_module libexec/apache2/libphp7.so</code></div>\r\n<div>\r\n<code><br></code></div>\r\n<div>\r\n<div class=\"separator\" style=\"clear: both; text-align: center;\">\r\n<a href=\"https://lh3.googleusercontent.com/-9jmckrRXgZ4/XbiYYIcA1DI/AAAAAAAABJE/sCLzVAtc6bUXYoW33NP3-NI5T2cCa5wxgCNcBGAsYHQ/s1600/1572378716653890-1.png\" imageanchor=\"1\" style=\"margin-left: 1em; margin-right: 1em;\">\r\n    <img border=\"0\" src=\"https://lh3.googleusercontent.com/-9jmckrRXgZ4/XbiYYIcA1DI/AAAAAAAABJE/sCLzVAtc6bUXYoW33NP3-NI5T2cCa5wxgCNcBGAsYHQ/s1600/1572378716653890-1.png\" width=\"400\">\r\n  </a>\r\n</div>\r\n</div>\r\n<div>\r\n<br></div>\r\n<div>\r\nUbah document root sesuai yg kalian inginkan untuk menaruh project web</div>\r\n<div>\r\n<br></div>\r\n<div>\r\n<div class=\"separator\" style=\"clear: both; text-align: center;\">\r\n<a href=\"https://lh3.googleusercontent.com/-sWFUYftEwZA/XbiYW4rKZoI/AAAAAAAABJA/GnpIOA83BV0Z0beG3u7weHgcc2vvBRKCACNcBGAsYHQ/s1600/1572378711670062-2.png\" imageanchor=\"1\" style=\"margin-left: 1em; margin-right: 1em;\">\r\n    <img border=\"0\" src=\"https://lh3.googleusercontent.com/-sWFUYftEwZA/XbiYW4rKZoI/AAAAAAAABJA/GnpIOA83BV0Z0beG3u7weHgcc2vvBRKCACNcBGAsYHQ/s1600/1572378711670062-2.png\" width=\"400\">\r\n  </a>\r\n</div>\r\n<br></div>\r\n<div>\r\nUbah juga directory indexing untuk meilih file apa yg digunakan sebagai index, pisahkan dengan spasi</div>\r\n<div>\r\n<div class=\"separator\" style=\"clear: both; text-align: center;\">\r\n<a href=\"https://lh3.googleusercontent.com/-_08TvoiI39A/XbiYVuNrJzI/AAAAAAAABI8/fGX4Y5jT17k2yJuYW78wR6j6x11uTVY0QCNcBGAsYHQ/s1600/1572378706932964-3.png\" imageanchor=\"1\" style=\"margin-left: 1em; margin-right: 1em;\">\r\n    <img border=\"0\" src=\"https://lh3.googleusercontent.com/-_08TvoiI39A/XbiYVuNrJzI/AAAAAAAABI8/fGX4Y5jT17k2yJuYW78wR6j6x11uTVY0QCNcBGAsYHQ/s1600/1572378706932964-3.png\" width=\"400\">\r\n  </a>\r\n</div>\r\n</div>\r\n<div>\r\n<br></div>\r\n<div>\r\n<br></div>\r\n<div>\r\nDi bagian akhir masukan&nbsp;</div>\r\n<div>\r\n<br></div>\r\n<div>\r\n<div>\r\n<code><filesmatch .php$=\"\"></filesmatch></code></div>\r\n<div>\r\n<code>SetHandler application/x-httpd-php</code></div>\r\n<div>\r\n<code></code></div>\r\n</div>\r\n<div>\r\n<div>\r\n<br></div>\r\n<div>\r\nagar apache mengenali file ber extensi php</div>\r\n<div>\r\n<br></div>\r\n</div>\r\n<div>\r\n<div class=\"separator\" style=\"clear: both; text-align: center;\">\r\n<a href=\"https://lh3.googleusercontent.com/-P7Zff-iB4ck/XbiYUbGggII/AAAAAAAABI4/gJZvWyg2S2wz14UI5jyDjn5btUQ3ifSygCNcBGAsYHQ/s1600/1572378702245309-4.png\" imageanchor=\"1\" style=\"margin-left: 1em; margin-right: 1em;\">\r\n    <img border=\"0\" src=\"https://lh3.googleusercontent.com/-P7Zff-iB4ck/XbiYUbGggII/AAAAAAAABI4/gJZvWyg2S2wz14UI5jyDjn5btUQ3ifSygCNcBGAsYHQ/s1600/1572378702245309-4.png\" width=\"400\">\r\n  </a>\r\n</div>\r\n<br></div>\r\n<div>\r\nsave lalu close text editor kalian</div>\r\n<div>\r\n<br></div>\r\n<div>\r\nJalankan server apache dengan command</div>\r\n<div>\r\n<br></div>\r\n<div>\r\n<code>$ apachectl</code></div>\r\n<div>\r\n<br></div>\r\n<div>\r\natau bisa juga&nbsp;</div>\r\n<div>\r\n<code><br></code></div>\r\n<div>\r\n<code>$ apachectl start</code></div>\r\n<div>\r\n<br></div>\r\n<div>\r\nBuat contoh file php di folder root apache seperti ini</div>\r\n<div>\r\n<div class=\"separator\" style=\"clear: both; text-align: center;\">\r\n<a href=\"https://lh3.googleusercontent.com/-m1aiETfzGGE/XbiYTF06R1I/AAAAAAAABI0/O26j6MoefEcbgyNfRPFou8sC5l6YaMtWwCNcBGAsYHQ/s1600/1572378696785246-5.png\" imageanchor=\"1\" style=\"margin-left: 1em; margin-right: 1em;\">\r\n    <img border=\"0\" src=\"https://lh3.googleusercontent.com/-m1aiETfzGGE/XbiYTF06R1I/AAAAAAAABI0/O26j6MoefEcbgyNfRPFou8sC5l6YaMtWwCNcBGAsYHQ/s1600/1572378696785246-5.png\" width=\"400\">\r\n  </a>\r\n</div>\r\n<br></div>\r\n<div>\r\n<br></div>\r\n<div>\r\nBuka <a href=\"http://localhost:8080/\"> http://localhost:8080</a> di browser</div>\r\n<div>\r\n<div class=\"separator\" style=\"clear: both; text-align: center;\">\r\n<a href=\"https://lh3.googleusercontent.com/-hOcLCjeh4rg/XbiYRjbC6zI/AAAAAAAABIw/5oV5bfcD-zQuenrJ36okiC7MBaVfPEctQCNcBGAsYHQ/s1600/1572378691645686-6.png\" imageanchor=\"1\" style=\"margin-left: 1em; margin-right: 1em;\">\r\n    <img border=\"0\" src=\"https://lh3.googleusercontent.com/-hOcLCjeh4rg/XbiYRjbC6zI/AAAAAAAABIw/5oV5bfcD-zQuenrJ36okiC7MBaVfPEctQCNcBGAsYHQ/s1600/1572378691645686-6.png\" width=\"400\">\r\n  </a>\r\n</div>\r\n<br></div>\r\n<div>\r\nJika sudah seperti ini maka sudah berhasil</div>\r\n<div>\r\n<div class=\"separator\" style=\"clear: both; text-align: center;\">\r\n<a href=\"https://lh3.googleusercontent.com/-FABeGOrP8d8/XbiYQdjsl6I/AAAAAAAABIs/JbxnZZTA_nM1ZNHVVQTZmin6Bp4chxDGACNcBGAsYHQ/s1600/1572378686123294-7.png\" imageanchor=\"1\" style=\"margin-left: 1em; margin-right: 1em;\">\r\n    <img border=\"0\" src=\"https://lh3.googleusercontent.com/-FABeGOrP8d8/XbiYQdjsl6I/AAAAAAAABIs/JbxnZZTA_nM1ZNHVVQTZmin6Bp4chxDGACNcBGAsYHQ/s1600/1572378686123294-7.png\" width=\"400\">\r\n  </a>\r\n</div>\r\n<br></div>\r\n<div>\r\nuntuk menutup server apache kalian bisa menggunakan command</div>\r\n<div>\r\n<br></div>\r\n<div>\r\n<code>$ apachectl stop</code></div>\r\n<div>\r\n<br></div>\r\n<div>\r\nDan untuk me restart</div>\r\n<div>\r\n<br></div>\r\n<div>\r\n<code>$ apachectl restart</code></div>\r\n','616794143f9babac0fb7ce18bf0adeb5.jpg','2019-12-29 19:31:13','2019-12-30 04:17:46',1,'Programming','cara-install-apache-di-termux',1,1,1),(8,'Sqlscan','Sqlscan, Cvar1984','<h1>SQL Scanner</h1><div>sqlscan adalah tools scanner bug sql pada website yg saya buat sendiri menggunakan bahasa Objective PHP, tools ini saya buat dengan konsep scraping dan regex untuk scanner nya, sampai saat ini sqlscan masih dalam tahap pengembangan fitur dan performa nya.</div><div>Jika kalian tertarik kalian bisa mencoba nya sekarang juga.</div><div><br></div><div><h2>Installasi</h2></div><div>Download sqlscan di halaman release dan ekstrak zip nya lalu pindahkan script binary data nya ke folder bin atau local bin, atau kalian juga bisa mendownload nya langsung di branch dev dengan curl.</div><div><br></div><div>command terminal :</div><div><br></div><div><pre style=\"background-color: #f6f8fa; border-radius: 3px; box-sizing: border-box; color: #24292e; font-family: SFMono-Regular, Consolas, &quot;Liberation Mono&quot;, Menlo, monospace; font-size: 13.6px; line-height: 1.45; overflow-wrap: normal; overflow: auto; padding: 16px; word-break: normal;\">$ sudo curl https://raw.githubusercontent.com/Cvar1984/sqlscan/dev/build/main.phar --output /usr/local/bin/sqlscan</pre><pre style=\"background-color: #f6f8fa; border-radius: 3px; box-sizing: border-box; color: #24292e; font-family: SFMono-Regular, Consolas, &quot;Liberation Mono&quot;, Menlo, monospace; font-size: 13.6px; line-height: 1.45; overflow-wrap: normal; overflow: auto; padding: 16px; word-break: normal;\">$ sudo chmod +x /usr/local/bin/sqlscan</pre><br>Atau kalian bisa baca langsung di&nbsp;<a href=\"https://github.com/Cvar1984/sqlscan/blob/dev/README.md\" target=\"_blank\">README.md</a><br><br>penampakan tools nya<br><div class=\"separator\" style=\"clear: both; text-align: center;\"><a href=\"https://1.bp.blogspot.com/-X_zyhCZf8vI/XcWGQfxq8uI/AAAAAAAABKQ/2oljGVcoXKMYYoED0CVymaUFnrlzdnzNgCNcBGAsYHQ/s1600/Screenshot_2019-11-08-22-13-04-511_com.termux.png\" imageanchor=\"1\" style=\"margin-left: 1em; margin-right: 1em;\"><img border=\"0\" data-original-height=\"1280\" data-original-width=\"720\" height=\"320\" src=\"https://1.bp.blogspot.com/-X_zyhCZf8vI/XcWGQfxq8uI/AAAAAAAABKQ/2oljGVcoXKMYYoED0CVymaUFnrlzdnzNgCNcBGAsYHQ/s320/Screenshot_2019-11-08-22-13-04-511_com.termux.png\" width=\"180\"></a></div>Jangan lupa scan situs bagian sitemap nya agar result nya maksimal.<br><br>Jika kalian menemukan bug bisa send <i>issue</i> atau hubungi telegram saya di&nbsp;<a href=\"https://t.me/Cvar1984\" target=\"_blank\">https://t.me/Cvar1984</a>.<br><br><br>Atau jika kalian tertarik untuk berkontribusi silahkan fork dan pull request karna kontribusi sangatlah berarti, sekian dan terimakasih</div>','b8eb3e327b09aa27643aa6ec977f3f36.jpg','2019-12-30 00:30:00',NULL,2,'Programming,Hacking','sqlscan',1,1,3),(9,'Perbeda an encode, hash, dan encrypt','Perbeda an hash, encode, decode, encrypt, dan decrypt','<h2>Password yg aman</h2>pada hari ini saya akan menjelaskan beberapa hal yg harus diketahui para beginer khususnya seperti saya yg kerja di bidang keamanan suatu aplikasi. sebelum kita membahas main threads alangkah baiknya kita mengetahui sejarah nya terlebih dahulu.<br><h3>Sejarah Enkripsi </h3>Di bidang <a href=\"https://id.wikipedia.org/wiki/Kriptografi\" title=\"Kriptografi\">kriptografi</a>, <b>enkripsi</b> adalah proses mengamankan suatu <a href=\"https://id.wikipedia.org/wiki/Informasi\" title=\"Informasi\">informasi</a> dengan membuat informasi tersebut tidak dapat dibaca tanpa bantuan pengetahuan khusus. Dikarenakan enkripsi telah digunakan untuk mengamankan komunikasi di berbagai negara, hanya <a href=\"https://id.wikipedia.org/wiki/Organisasi\" title=\"Organisasi\">organisasi-organisasi</a> tertentu dan individu yang memiliki kepentingan yang sangat mendesak akan kerahasiaan yang menggunakan enkripsi. Di pertengahan tahun <a href=\"https://id.wikipedia.org/wiki/1970-an\" title=\"1970-an\">1970-an</a>, enkripsi kuat dimanfaatkan untuk pengamanan oleh sekretariat agen pemerintah <a href=\"https://id.wikipedia.org/wiki/Amerika_Serikat\" title=\"Amerika Serikat\">Amerika Serikat</a> pada domain publik, dan saat ini enkripsi telah digunakan pada sistem secara luas, seperti <a href=\"https://id.wikipedia.org/wiki/Internet\" title=\"Internet\">Internet</a> <i><a class=\"mw-redirect\" href=\"https://id.wikipedia.org/wiki/E-commerce\" title=\"E-commerce\">e-commerce</a></i>, jaringan <a class=\"mw-redirect\" href=\"https://id.wikipedia.org/wiki/Telepon_bergerak\" title=\"Telepon bergerak\">Telepon bergerak</a> dan <a href=\"https://id.wikipedia.org/wiki/ATM\" title=\"ATM\">ATM</a> pada bank.<br>Enkripsi dapat digunakan untuk tujuan keamanan, tetapi teknik lain masih diperlukan untuk membuat komunikasi yang aman, terutama untuk memastikan <a class=\"new\" href=\"https://id.wikipedia.org/w/index.php?title=Integritas&amp;action=edit&amp;redlink=1\" title=\"Integritas (halaman belum tersedia)\">integritas</a> dan <a class=\"new\" href=\"https://id.wikipedia.org/w/index.php?title=Autentikasi&amp;action=edit&amp;redlink=1\" title=\"Autentikasi (halaman belum tersedia)\">autentikasi</a> dari sebuah pesan. Contohnya, <i><a class=\"new\" href=\"https://id.wikipedia.org/w/index.php?title=Message_Authentication_Code&amp;action=edit&amp;redlink=1\" title=\"Message Authentication Code (halaman belum tersedia)\">Message Authentication Code</a></i> (MAC) atau <i><a class=\"new\" href=\"https://id.wikipedia.org/w/index.php?title=Digital_signature&amp;action=edit&amp;redlink=1\" title=\"Digital signature (halaman belum tersedia)\">digital signature</a></i>. Penggunaan yang lain yaitu untuk melindungi dari analisis jaringan komputer. singkatnya sistem enkripsi sudah ada sejak dulu hingga sekarang, dan masih terus di kembangkan menjadi lebih efisien. <br><h3><span lang=\"id\">Mengapa keamanan Password di perlukan</span></h3><span style=\"font-weight: normal;\"><span lang=\"id\"><span style=\"font-weight: normal;\"><span lang=\"id\">Pembuatan kata sandi adalah salah satu pertimbangan keamanan paling mendasar yang harus dilakukan ketika merancang aplikasi apa pun yang menerima kata sandi dari pengguna. Tanpa hashing, kata sandi apa pun yang disimpan dalam basis data aplikasi Anda dapat dicuri jika basis data dikompromikan atau bocor, dan kemudian segera digunakan untuk mengkompromikan tidak hanya aplikasi Anda, tetapi juga akun pengguna Anda pada layanan lain, jika mereka tidak menggunakan kata sandi yg unik.</span></span></span></span><br><br><h3><span style=\"font-weight: normal;\"><span lang=\"id\"><span style=\"font-weight: normal;\"><span lang=\"id\"><b>Perbedaan Hashing Encoding dan Enkripsi</b></span></span></span></span></h3><h4><span style=\"font-weight: normal;\"><span lang=\"id\"><span style=\"font-weight: normal;\"><span lang=\"id\"><b>Hashing </b></span></span></span></span></h4>Hashing merupakan metode untuk mengubah sebuah string atau data dalam sebuah kode yang ditujukan untuk merahasiakan data dan berjalan dalam 1 arah. Artinya kita tidak dapat melihat nilai atau data aslinya, kecuali dengan mencocokan data antara karakter yang sudah di hashing dengan karakter yang sudah di hashing lainnya tanpa key atau kunci seperti enkripsi. Terdapat beberapa algoritma populer yang sering dipakai pada hashing, seperti MD5, SHA1,SALT dan Whirlpool.<br>Berikut adalah contoh menggunakan hashing dengan beberapa algoritma di PHP.<br><div class=\"separator\" style=\"clear: both; text-align: center;\"></div><br><div class=\"separator\" style=\"clear: both; text-align: center;\"><a href=\"https://4.bp.blogspot.com/-HGLAQ_wxTkg/XCuhHLXdMLI/AAAAAAAABFw/fqPNxtikWq0RjtxFyh3zc49cekF9YyYKACLcBGAs/s1600/hash.png\" imageanchor=\"1\" style=\"margin-left: 1em; margin-right: 1em;\"><img border=\"0\" data-original-height=\"222\" data-original-width=\"939\" height=\"151\" src=\"https://4.bp.blogspot.com/-HGLAQ_wxTkg/XCuhHLXdMLI/AAAAAAAABFw/fqPNxtikWq0RjtxFyh3zc49cekF9YyYKACLcBGAs/s640/hash.png\" width=\"640\"></a></div><br><h4>Encoding</h4>Encoding merupakan sebuah metode untuk merubah bentuk atau format data. Tujuan dari encoding adalah supaya data yang dimaksud dapat dipakai pada system yang lain tetapi tidak ditujukan untuk merahasiakan data. Kita dapat dengan mudah mengetahui data aslinya dengan fungsi decode nya. Beberapa contoh dari encoding adalah ASCII, base64, str root 13, URL dan hex. Berikut adalah contoh penggunaan encoding dan decoding dengan PHP.<br><div class=\"separator\" style=\"clear: both; text-align: center;\"><a href=\"https://2.bp.blogspot.com/-tGBqiigXbkI/XCug4GzMWxI/AAAAAAAABF0/PFntLd8Rz3AB-f9uGu5jk2aiFRJQ21IiwCEwYBhgL/s1600/encode.png\" imageanchor=\"1\" style=\"margin-left: 1em; margin-right: 1em;\"><img border=\"0\" data-original-height=\"259\" data-original-width=\"942\" height=\"175\" src=\"https://2.bp.blogspot.com/-tGBqiigXbkI/XCug4GzMWxI/AAAAAAAABF0/PFntLd8Rz3AB-f9uGu5jk2aiFRJQ21IiwCEwYBhgL/s640/encode.png\" width=\"640\"></a></div><br><h4>Enkripsi</h4>Enkripsi merupakan sebuah metode untuk merahasiakan data atau informasi sehingga kita tidak akan bisa membaca nilai atau data aslinya tanpa menggunakan key atau kunci. Contoh algoritmanya adalah AES<br>Berikut adalah contoh penggunaan enkripsi dan dekripsi dengan menggunakan AES.<br><div class=\"separator\" style=\"clear: both; text-align: center;\"><a href=\"https://4.bp.blogspot.com/-JhQh3pf7Nw4/XCznfu_GiGI/AAAAAAAABGM/1AEilFL1DW85TZZOt6GtRwOOAAuCKqbvwCLcBGAs/s1600/aes1.png\" imageanchor=\"1\" style=\"margin-left: 1em; margin-right: 1em;\"><img border=\"0\" data-original-height=\"385\" data-original-width=\"798\" height=\"308\" src=\"https://4.bp.blogspot.com/-JhQh3pf7Nw4/XCznfu_GiGI/AAAAAAAABGM/1AEilFL1DW85TZZOt6GtRwOOAAuCKqbvwCLcBGAs/s640/aes1.png\" width=\"640\"></a></div><br><div class=\"separator\" style=\"clear: both; text-align: center;\"><a href=\"https://4.bp.blogspot.com/-RnGxeQkpqWo/XCzrnlifFzI/AAAAAAAABGk/13xZA_xcYKUDI8lXslQSmnGm_Ctvl7VBQCLcBGAs/s1600/aes2.png\" imageanchor=\"1\" style=\"margin-left: 1em; margin-right: 1em;\"><img border=\"0\" data-original-height=\"198\" data-original-width=\"798\" height=\"158\" src=\"https://4.bp.blogspot.com/-RnGxeQkpqWo/XCzrnlifFzI/AAAAAAAABGk/13xZA_xcYKUDI8lXslQSmnGm_Ctvl7VBQCLcBGAs/s640/aes2.png\" width=\"640\"></a></div>','20ae9c6a8b927d548303e09f8d7e2774.jpg','2019-12-30 00:34:06',NULL,1,'Programming','password-yg-aman',1,1,3);
/*!40000 ALTER TABLE `tbl_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_post_views`
--

DROP TABLE IF EXISTS `tbl_post_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_post_views` (
  `view_id` int(11) NOT NULL AUTO_INCREMENT,
  `view_date` timestamp NULL DEFAULT current_timestamp(),
  `view_ip` varchar(50) DEFAULT NULL,
  `view_post_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`view_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_post_views`
--

LOCK TABLES `tbl_post_views` WRITE;
/*!40000 ALTER TABLE `tbl_post_views` DISABLE KEYS */;
INSERT INTO `tbl_post_views` VALUES (1,'2019-04-06 13:33:39','::1',6),(2,'2019-04-06 23:04:18','::1',6),(3,'2019-04-07 03:32:54','::1',5),(4,'2019-04-07 03:33:14','::1',4),(5,'2019-04-07 04:03:50','::1',3),(6,'2019-04-09 12:19:36','::1',6),(7,'2019-04-09 13:28:30','::1',4),(8,'2019-04-10 01:33:10','::1',5),(9,'2019-04-10 10:00:27','::1',2),(10,'2019-04-10 10:58:17','::1',1),(11,'2019-04-10 13:20:32','::1',3),(12,'2019-04-10 13:20:46','::1',6),(13,'2019-04-11 03:32:18','::1',6),(14,'2019-04-11 04:24:22','::1',4),(15,'2019-04-11 07:58:35','::1',2),(16,'2019-04-12 04:23:04','::1',6),(17,'2019-04-12 10:09:30','::1',5),(18,'2019-04-13 01:42:27','::1',6),(19,'2019-04-13 02:01:01','::1',5),(20,'2019-04-13 02:01:18','::1',3),(21,'2019-04-13 03:23:34','::1',4),(22,'2019-04-14 01:39:17','::1',1),(23,'2019-04-14 03:24:24','::1',3),(24,'2019-04-14 04:08:24','::1',2),(25,'2019-04-15 03:44:42','::1',6),(26,'2019-12-29 19:31:47','::1',7),(27,'2019-12-30 00:40:00','::1',9),(28,'2019-12-30 00:41:42','::1',8);
/*!40000 ALTER TABLE `tbl_post_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_site`
--

DROP TABLE IF EXISTS `tbl_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_site` (
  `site_id` int(11) NOT NULL AUTO_INCREMENT,
  `site_name` varchar(100) DEFAULT NULL,
  `site_title` varchar(200) DEFAULT NULL,
  `site_description` text DEFAULT NULL,
  `site_logo_header` varchar(50) DEFAULT NULL,
  `site_logo_footer` varchar(50) DEFAULT NULL,
  `site_facebook` varchar(150) DEFAULT NULL,
  `site_twitter` varchar(150) DEFAULT NULL,
  `site_instagram` varchar(150) DEFAULT NULL,
  `site_pinterest` varchar(150) DEFAULT NULL,
  `site_linkedin` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_site`
--

LOCK TABLES `tbl_site` WRITE;
/*!40000 ALTER TABLE `tbl_site` DISABLE KEYS */;
INSERT INTO `tbl_site` VALUES (1,'BlackHoleSecurity','BHSec - Blog','Official Website of BlackHoleSecurity','bhs2.png','bhs21.png','https://m.facebook.com/BHSecOfficial','','','','');
/*!40000 ALTER TABLE `tbl_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_subscribe`
--

DROP TABLE IF EXISTS `tbl_subscribe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_subscribe` (
  `subscribe_id` int(11) NOT NULL AUTO_INCREMENT,
  `subscribe_email` varchar(100) DEFAULT NULL,
  `subscribe_created_at` timestamp NULL DEFAULT current_timestamp(),
  `subscribe_status` int(11) DEFAULT 0,
  `subscribe_rating` int(11) DEFAULT 0,
  PRIMARY KEY (`subscribe_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_subscribe`
--

LOCK TABLES `tbl_subscribe` WRITE;
/*!40000 ALTER TABLE `tbl_subscribe` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_subscribe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tags`
--

DROP TABLE IF EXISTS `tbl_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_tags` (
  `tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tags`
--

LOCK TABLES `tbl_tags` WRITE;
/*!40000 ALTER TABLE `tbl_tags` DISABLE KEYS */;
INSERT INTO `tbl_tags` VALUES (1,'Programming'),(2,'Hacking'),(3,'Reversing');
/*!40000 ALTER TABLE `tbl_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) DEFAULT NULL,
  `user_email` varchar(60) DEFAULT NULL,
  `user_password` varchar(40) DEFAULT NULL,
  `user_level` varchar(10) DEFAULT NULL,
  `user_status` varchar(10) DEFAULT '1',
  `user_photo` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user`
--

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` VALUES (1,'BHSec','BHSec@BlackHoleSecurity.or.id','0d107d09f5bbe40cade3de5c71e9e9b7','1','0','8444a9fdea32e752708d166d0c5091f2.jpg'),(3,'Cvar1984','gedzsarjuncomuniti@gmail.com','387bbc1fc24e1449f3a0c8455016e2b2','1','1','705621f3ba5af95ebdf1e571ba8e0009.gif');
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_visitors`
--

DROP TABLE IF EXISTS `tbl_visitors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_visitors` (
  `visit_id` int(11) NOT NULL AUTO_INCREMENT,
  `visit_date` timestamp NULL DEFAULT current_timestamp(),
  `visit_ip` varchar(50) DEFAULT NULL,
  `visit_platform` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`visit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=541343 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_visitors`
--

LOCK TABLES `tbl_visitors` WRITE;
/*!40000 ALTER TABLE `tbl_visitors` DISABLE KEYS */;
INSERT INTO `tbl_visitors` VALUES (541327,'2019-03-18 14:07:36','::1','Firefox'),(541328,'2019-03-19 03:33:51','::1','Chrome'),(541329,'2019-03-20 01:00:19','::1','Chrome'),(541330,'2019-04-05 01:53:28','::1','Firefox'),(541331,'2019-04-06 01:37:35','::1','Chrome'),(541332,'2019-04-06 23:04:12','::1','Chrome'),(541333,'2019-04-09 12:19:32','::1','Chrome'),(541334,'2019-04-10 01:33:03','::1','Chrome'),(541335,'2019-04-11 03:30:38','::1','Chrome'),(541336,'2019-04-11 03:30:38','::1','Chrome'),(541337,'2019-04-12 03:51:42','::1','Chrome'),(541338,'2019-04-12 21:55:51','::1','Chrome'),(541339,'2019-04-14 01:30:40','::1','Chrome'),(541340,'2019-04-15 01:42:53','::1','Chrome'),(541341,'2019-12-29 18:09:28','::1','Chrome'),(541342,'2019-12-29 19:50:51','127.0.0.1','Chrome');
/*!40000 ALTER TABLE `tbl_visitors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-30  8:10:28

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_post`
--

LOCK TABLES `tbl_post` WRITE;
/*!40000 ALTER TABLE `tbl_post` DISABLE KEYS */;
INSERT INTO `tbl_post` VALUES (7,'Cara install Apache di Termux','Apache, termux','<h2>\r\nTermux</h2>\r\n<i>Termux&nbsp;</i>adalah aplikasi terminal emulator untuk android sekaligus linux environment yang berjalan di android tanpa perlu proses rooting ataupun settingan khusus. Aplikasi/Package tambahan juga tersedia dan bisa diinstall menggunakan APT package manager.\r\n<br />\r\n<h2>\r\ncara install apache2 di termux</h2>\r\n<div>\r\nBuka termux kalian, setelah itu ketik</div>\r\n<div>\r\n<code>$ apt update</code></div>\r\n<div>\r\n<code>$ apt install php apache2 php-apache -y</code></div>\r\n<div>\r\nSeperti gambar dibawah ini</div>\r\n<div>\r\n<div class=\"separator\" style=\"clear: both; text-align: center;\">\r\n<a href=\"https://lh3.googleusercontent.com/-Qy2s49h8bA8/XbiYZKYeRAI/AAAAAAAABJI/15Iw65O44Eco8QOWRiCfZfo5IOhf9MA6QCNcBGAsYHQ/s1600/1572378721325450-0.png\" imageanchor=\"1\" style=\"margin-left: 1em; margin-right: 1em;\">\r\n    <img border=\"0\" src=\"https://lh3.googleusercontent.com/-Qy2s49h8bA8/XbiYZKYeRAI/AAAAAAAABJI/15Iw65O44Eco8QOWRiCfZfo5IOhf9MA6QCNcBGAsYHQ/s1600/1572378721325450-0.png\" width=\"400\" />\r\n  </a>\r\n</div>\r\n<br /></div>\r\n<div>\r\nTunggu proses installasi sampai selesai, lalu konfigurasi apache kalian menggunakan text editor nano atau vim, contoh</div>\r\n<div>\r\n<br /></div>\r\n<div>\r\n<code>$ vi ~/../usr/etc/apache2/httpd.conf</code></div>\r\n<div>\r\n<br /></div>\r\n<div>\r\nUntuk memasukan modul php7 di apache</div>\r\n<div>\r\nMasukan</div>\r\n<div>\r\n<br /></div>\r\n<div>\r\n<code>LoadModule php7_module libexec/apache2/libphp7.so</code></div>\r\n<div>\r\n<code><br /></code></div>\r\n<div>\r\n<div class=\"separator\" style=\"clear: both; text-align: center;\">\r\n<a href=\"https://lh3.googleusercontent.com/-9jmckrRXgZ4/XbiYYIcA1DI/AAAAAAAABJE/sCLzVAtc6bUXYoW33NP3-NI5T2cCa5wxgCNcBGAsYHQ/s1600/1572378716653890-1.png\" imageanchor=\"1\" style=\"margin-left: 1em; margin-right: 1em;\">\r\n    <img border=\"0\" src=\"https://lh3.googleusercontent.com/-9jmckrRXgZ4/XbiYYIcA1DI/AAAAAAAABJE/sCLzVAtc6bUXYoW33NP3-NI5T2cCa5wxgCNcBGAsYHQ/s1600/1572378716653890-1.png\" width=\"400\" />\r\n  </a>\r\n</div>\r\n</div>\r\n<div>\r\n<br /></div>\r\n<div>\r\nUbah document root sesuai yg kalian inginkan untuk menaruh project web</div>\r\n<div>\r\n<br /></div>\r\n<div>\r\n<div class=\"separator\" style=\"clear: both; text-align: center;\">\r\n<a href=\"https://lh3.googleusercontent.com/-sWFUYftEwZA/XbiYW4rKZoI/AAAAAAAABJA/GnpIOA83BV0Z0beG3u7weHgcc2vvBRKCACNcBGAsYHQ/s1600/1572378711670062-2.png\" imageanchor=\"1\" style=\"margin-left: 1em; margin-right: 1em;\">\r\n    <img border=\"0\" src=\"https://lh3.googleusercontent.com/-sWFUYftEwZA/XbiYW4rKZoI/AAAAAAAABJA/GnpIOA83BV0Z0beG3u7weHgcc2vvBRKCACNcBGAsYHQ/s1600/1572378711670062-2.png\" width=\"400\" />\r\n  </a>\r\n</div>\r\n<br /></div>\r\n<div>\r\nUbah juga directory indexing untuk meilih file apa yg digunakan sebagai index, pisahkan dengan spasi</div>\r\n<div>\r\n<div class=\"separator\" style=\"clear: both; text-align: center;\">\r\n<a href=\"https://lh3.googleusercontent.com/-_08TvoiI39A/XbiYVuNrJzI/AAAAAAAABI8/fGX4Y5jT17k2yJuYW78wR6j6x11uTVY0QCNcBGAsYHQ/s1600/1572378706932964-3.png\" imageanchor=\"1\" style=\"margin-left: 1em; margin-right: 1em;\">\r\n    <img border=\"0\" src=\"https://lh3.googleusercontent.com/-_08TvoiI39A/XbiYVuNrJzI/AAAAAAAABI8/fGX4Y5jT17k2yJuYW78wR6j6x11uTVY0QCNcBGAsYHQ/s1600/1572378706932964-3.png\" width=\"400\" />\r\n  </a>\r\n</div>\r\n</div>\r\n<div>\r\n<br /></div>\r\n<div>\r\n<br /></div>\r\n<div>\r\nDi bagian akhir masukan&nbsp;</div>\r\n<div>\r\n<br /></div>\r\n<div>\r\n<div>\r\n<code>&lt;FilesMatch \\.php$&gt;</code></div>\r\n<div>\r\n<code>SetHandler application/x-httpd-php</code></div>\r\n<div>\r\n<code>&lt;/FilesMatch&gt;</code></div>\r\n</div>\r\n<div>\r\n<div>\r\n<br /></div>\r\n<div>\r\nagar apache mengenali file ber extensi php</div>\r\n<div>\r\n<br /></div>\r\n</div>\r\n<div>\r\n<div class=\"separator\" style=\"clear: both; text-align: center;\">\r\n<a href=\"https://lh3.googleusercontent.com/-P7Zff-iB4ck/XbiYUbGggII/AAAAAAAABI4/gJZvWyg2S2wz14UI5jyDjn5btUQ3ifSygCNcBGAsYHQ/s1600/1572378702245309-4.png\" imageanchor=\"1\" style=\"margin-left: 1em; margin-right: 1em;\">\r\n    <img border=\"0\" src=\"https://lh3.googleusercontent.com/-P7Zff-iB4ck/XbiYUbGggII/AAAAAAAABI4/gJZvWyg2S2wz14UI5jyDjn5btUQ3ifSygCNcBGAsYHQ/s1600/1572378702245309-4.png\" width=\"400\" />\r\n  </a>\r\n</div>\r\n<br /></div>\r\n<div>\r\nsave lalu close text editor kalian</div>\r\n<div>\r\n<br /></div>\r\n<div>\r\nJalankan server apache dengan command</div>\r\n<div>\r\n<br /></div>\r\n<div>\r\n<code>$ apachectl</code></div>\r\n<div>\r\n<br /></div>\r\n<div>\r\natau bisa juga&nbsp;</div>\r\n<div>\r\n<code><br /></code></div>\r\n<div>\r\n<code>$ apachectl start</code></div>\r\n<div>\r\n<br /></div>\r\n<div>\r\nBuat contoh file php di folder root apache seperti ini</div>\r\n<div>\r\n<div class=\"separator\" style=\"clear: both; text-align: center;\">\r\n<a href=\"https://lh3.googleusercontent.com/-m1aiETfzGGE/XbiYTF06R1I/AAAAAAAABI0/O26j6MoefEcbgyNfRPFou8sC5l6YaMtWwCNcBGAsYHQ/s1600/1572378696785246-5.png\" imageanchor=\"1\" style=\"margin-left: 1em; margin-right: 1em;\">\r\n    <img border=\"0\" src=\"https://lh3.googleusercontent.com/-m1aiETfzGGE/XbiYTF06R1I/AAAAAAAABI0/O26j6MoefEcbgyNfRPFou8sC5l6YaMtWwCNcBGAsYHQ/s1600/1572378696785246-5.png\" width=\"400\" />\r\n  </a>\r\n</div>\r\n<br /></div>\r\n<div>\r\n<br /></div>\r\n<div>\r\nBuka <a href=\"http://localhost:8080/\"> http://localhost:8080</a> di browser</div>\r\n<div>\r\n<div class=\"separator\" style=\"clear: both; text-align: center;\">\r\n<a href=\"https://lh3.googleusercontent.com/-hOcLCjeh4rg/XbiYRjbC6zI/AAAAAAAABIw/5oV5bfcD-zQuenrJ36okiC7MBaVfPEctQCNcBGAsYHQ/s1600/1572378691645686-6.png\" imageanchor=\"1\" style=\"margin-left: 1em; margin-right: 1em;\">\r\n    <img border=\"0\" src=\"https://lh3.googleusercontent.com/-hOcLCjeh4rg/XbiYRjbC6zI/AAAAAAAABIw/5oV5bfcD-zQuenrJ36okiC7MBaVfPEctQCNcBGAsYHQ/s1600/1572378691645686-6.png\" width=\"400\" />\r\n  </a>\r\n</div>\r\n<br /></div>\r\n<div>\r\nJika sudah seperti ini maka sudah berhasil</div>\r\n<div>\r\n<div class=\"separator\" style=\"clear: both; text-align: center;\">\r\n<a href=\"https://lh3.googleusercontent.com/-FABeGOrP8d8/XbiYQdjsl6I/AAAAAAAABIs/JbxnZZTA_nM1ZNHVVQTZmin6Bp4chxDGACNcBGAsYHQ/s1600/1572378686123294-7.png\" imageanchor=\"1\" style=\"margin-left: 1em; margin-right: 1em;\">\r\n    <img border=\"0\" src=\"https://lh3.googleusercontent.com/-FABeGOrP8d8/XbiYQdjsl6I/AAAAAAAABIs/JbxnZZTA_nM1ZNHVVQTZmin6Bp4chxDGACNcBGAsYHQ/s1600/1572378686123294-7.png\" width=\"400\" />\r\n  </a>\r\n</div>\r\n<br /></div>\r\n<div>\r\nuntuk menutup server apache kalian bisa menggunakan command</div>\r\n<div>\r\n<br /></div>\r\n<div>\r\n<code>$ apachectl stop</code></div>\r\n<div>\r\n<br /></div>\r\n<div>\r\nDan untuk me restart</div>\r\n<div>\r\n<br /></div>\r\n<div>\r\n<code>$ apachectl restart</code></div>\r\n','fcaabd9e1bf2ce4fd524ebf7ce63721f.jpg','2019-12-29 19:31:13',NULL,1,'Programming','cara-install-apache-di-termux',1,1,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_post_views`
--

LOCK TABLES `tbl_post_views` WRITE;
/*!40000 ALTER TABLE `tbl_post_views` DISABLE KEYS */;
INSERT INTO `tbl_post_views` VALUES (1,'2019-04-06 13:33:39','::1',6),(2,'2019-04-06 23:04:18','::1',6),(3,'2019-04-07 03:32:54','::1',5),(4,'2019-04-07 03:33:14','::1',4),(5,'2019-04-07 04:03:50','::1',3),(6,'2019-04-09 12:19:36','::1',6),(7,'2019-04-09 13:28:30','::1',4),(8,'2019-04-10 01:33:10','::1',5),(9,'2019-04-10 10:00:27','::1',2),(10,'2019-04-10 10:58:17','::1',1),(11,'2019-04-10 13:20:32','::1',3),(12,'2019-04-10 13:20:46','::1',6),(13,'2019-04-11 03:32:18','::1',6),(14,'2019-04-11 04:24:22','::1',4),(15,'2019-04-11 07:58:35','::1',2),(16,'2019-04-12 04:23:04','::1',6),(17,'2019-04-12 10:09:30','::1',5),(18,'2019-04-13 01:42:27','::1',6),(19,'2019-04-13 02:01:01','::1',5),(20,'2019-04-13 02:01:18','::1',3),(21,'2019-04-13 03:23:34','::1',4),(22,'2019-04-14 01:39:17','::1',1),(23,'2019-04-14 03:24:24','::1',3),(24,'2019-04-14 04:08:24','::1',2),(25,'2019-04-15 03:44:42','::1',6),(26,'2019-12-29 19:31:47','::1',7);
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
INSERT INTO `tbl_site` VALUES (1,'BlackHoleSecurity','BHSec - Blog','Apaajalah','bhs1.png','bhs21.png','https://m.facebook.com/BHSecOfficial/','','','','');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user`
--

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` VALUES (1,'BHSec','BHSec@BlackHoleSecurity.or.id','0d107d09f5bbe40cade3de5c71e9e9b7','1','0','8444a9fdea32e752708d166d0c5091f2.jpg');
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

-- Dump completed on 2019-12-30  3:02:08

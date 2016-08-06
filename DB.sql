/*
SQLyog Ultimate v9.02 
MySQL - 5.6.25 : Database - latihan_ci
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`latihan_ci` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `latihan_ci`;

/*Table structure for table `barang` */

DROP TABLE IF EXISTS `barang`;

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL AUTO_INCREMENT,
  `nama_barang` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_barang`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `barang` */

insert  into `barang`(`id_barang`,`nama_barang`) values (1,'Jagung'),(2,'Beras'),(3,'Gula'),(4,'Minyak Goreng'),(5,'Gas Elpiji'),(6,'Janda Muda'),(7,'Cabe Cabean'),(8,'Anak Alay');

/*Table structure for table `continuedailyextruder` */

DROP TABLE IF EXISTS `continuedailyextruder`;

CREATE TABLE `continuedailyextruder` (
  `id_continue_daily_extruer` varchar(30) NOT NULL,
  `status_flag` enum('tampil','tidak') NOT NULL,
  PRIMARY KEY (`id_continue_daily_extruer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `continuedailyextruder` */

insert  into `continuedailyextruder`(`id_continue_daily_extruer`,`status_flag`) values ('TA20-BP0220','tampil');

/*Table structure for table `daerah` */

DROP TABLE IF EXISTS `daerah`;

CREATE TABLE `daerah` (
  `id_daerah` int(11) NOT NULL AUTO_INCREMENT,
  `nama_daerah` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_daerah`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `daerah` */

insert  into `daerah`(`id_daerah`,`nama_daerah`) values (1,'Cikarang'),(2,'Bekasi'),(3,'Bantar Gebang'),(4,'Tenda Biru'),(5,'Cibitung'),(6,'Pasar Seng'),(7,'Lemah Abang');

/*Table structure for table `harga` */

DROP TABLE IF EXISTS `harga`;

CREATE TABLE `harga` (
  `id_harga` int(11) NOT NULL AUTO_INCREMENT,
  `id_barang` int(11) DEFAULT NULL,
  `id_daerah` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_harga`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `harga` */

insert  into `harga`(`id_harga`,`id_barang`,`id_daerah`,`harga`) values (1,1,1,7000),(2,1,3,6000),(3,4,1,4444),(4,6,1,50000);

/*Table structure for table `reportdailyextruder` */

DROP TABLE IF EXISTS `reportdailyextruder`;

CREATE TABLE `reportdailyextruder` (
  `id_report_daily` varchar(50) NOT NULL,
  `id_continue_daily_extruer` varchar(30) NOT NULL,
  `kode_size` varchar(10) DEFAULT NULL,
  `kode_dies` varchar(10) DEFAULT NULL,
  `extruder_line` varchar(25) DEFAULT NULL,
  `problem` varchar(200) DEFAULT NULL,
  `analisa` text,
  `perbaikan` text,
  `tanggal_input` datetime DEFAULT NULL,
  `tanggal_update` datetime DEFAULT NULL,
  `pic` varchar(12) DEFAULT NULL,
  KEY `FK-reportdaily_ectruder` (`id_continue_daily_extruer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `reportdailyextruder` */

insert  into `reportdailyextruder`(`id_report_daily`,`id_continue_daily_extruer`,`kode_size`,`kode_dies`,`extruder_line`,`problem`,`analisa`,`perbaikan`,`tanggal_input`,`tanggal_update`,`pic`) values ('TA50-BP0890-111102938-25072016','TA50-BP0890','TA50','BP0890','Extruder Line 2','EX/T','SAFUHDKSFGDFH','FDSGDF',NULL,NULL,'4645');

/*Table structure for table `tb_level` */

DROP TABLE IF EXISTS `tb_level`;

CREATE TABLE `tb_level` (
  `level_id` int(11) NOT NULL AUTO_INCREMENT,
  `level_name` varchar(200) DEFAULT NULL,
  `level_keterangan` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`level_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `tb_level` */

insert  into `tb_level`(`level_id`,`level_name`,`level_keterangan`) values (1,'Administrator','Sebagai Admin Applikasi'),(2,'Supervisor','Sebagai Pengawas'),(3,'Forman','Sebagai Forman'),(4,'User','Sebagai User'),(5,'Guest','Sebagai Guest');

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `passwords` char(32) NOT NULL,
  `nama` varchar(32) NOT NULL,
  `level` varchar(50) NOT NULL,
  `is_blokir` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

/*Data for the table `tb_user` */

insert  into `tb_user`(`id`,`username`,`passwords`,`nama`,`level`,`is_blokir`,`created_at`,`updated_at`) values (2,'admin','202cb962ac59075b964b07152d234b70','Pokemon','Administrator','0','0000-00-00 00:00:00','2014-12-10 23:49:22'),(13,'khoirul','202cb962ac59075b964b07152d234b70','Khoirul Khoirul','Supervisor','0','2014-12-20 14:39:41','2014-12-30 04:32:40'),(14,'mustofa','202cb962ac59075b964b07152d234b70','Mustofa Mustofa','Forman','0','2014-12-30 04:48:30','2014-12-30 04:48:30'),(15,'f','f','f','f','0','2014-12-30 04:48:30','2014-12-30 04:48:30'),(16,'4','g','g','h','0','2014-12-30 04:48:30','2014-12-30 04:48:30'),(17,'e','t','u','i','0','2014-12-30 04:48:30','2014-12-30 04:48:30'),(18,'dsf','gh','gj','k','0','2014-12-30 04:48:30','2014-12-30 04:48:30'),(19,'hfg','hgjg','hty','rtut','0','2014-12-30 04:48:30','2014-12-30 04:48:30'),(20,'yer','tuyt','iyu','youi','0','2014-12-30 04:48:30','2014-12-30 04:48:30'),(21,'wrfdes','fjg','fjgh','jf','0','2014-12-30 04:48:30','2014-12-30 04:48:30'),(22,'sgd','ytj','ytjuyt','tu','0','2014-12-30 04:48:30','2014-12-30 04:48:30');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id_user`,`username`,`password`) values (1,'admin','202cb962ac59075b964b07152d234b70'),(2,'users','202cb962ac59075b964b07152d234b70');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

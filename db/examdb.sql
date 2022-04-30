/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 5.6.17 : Database - examdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`examdb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `examdb`;

/*Table structure for table `examusers` */

DROP TABLE IF EXISTS `examusers`;

CREATE TABLE `examusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `examusers` */

insert  into `examusers`(`id`,`username`,`address`) values (1,'Ynna','Bulacan'),(2,'Juan','Manila'),(3,'Joseph','Makati City'),(4,'John','Quezon City'),(5,'Richard','Pampanga'),(6,'Susan','Valenzuala'),(7,'Peter','Laguna'),(9,'Sample2','Mandaluyong'),(11,'Daddy','Bulacan'),(12,'Daddy','Bulacan'),(13,'Daddy','Bulacan');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

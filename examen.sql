/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.1.38-MariaDB : Database - challenge
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`challenge` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `challenge`;

/*Table structure for table `estudiantes` */

DROP TABLE IF EXISTS `estudiantes`;

CREATE TABLE `estudiantes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) DEFAULT NULL,
  `marca` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `estudiantes` */

insert  into `estudiantes`(`id`,`nombre`,`marca`) values (1,'Julia',88),(2,'Samantha',68),(3,'Maria',99),(4,'Scarlet',78),(5,'Ashley',63),(6,'Jane',81);

/*Table structure for table `grados` */

DROP TABLE IF EXISTS `grados`;

CREATE TABLE `grados` (
  `grado` int(11) NOT NULL AUTO_INCREMENT,
  `min_marca` int(11) DEFAULT NULL,
  `max_marca` int(11) DEFAULT NULL,
  PRIMARY KEY (`grado`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `grados` */

insert  into `grados`(`grado`,`min_marca`,`max_marca`) values (1,0,9),(2,10,19),(3,20,29),(4,30,39),(5,40,49),(6,50,59),(7,60,69),(8,70,79),(9,80,89),(10,90,100);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

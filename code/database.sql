/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.18-log : Database - student_manager
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`student_manager` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `student_manager`;

/*Table structure for table `studentinfo` */

DROP TABLE IF EXISTS `studentinfo`;

CREATE TABLE `studentinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `XH` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `XM` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `JG` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CSRQ` date NOT NULL,
  `ZZMM` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SFZH` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CCQJ` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `XB` bit(1) NOT NULL,
  `MZ` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `YX` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ZY` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `BJ` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `WYYZ` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `JTDZ` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `LXDH` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DZYX` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `BZ` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `studentinfo` */

insert  into `studentinfo`(`id`,`XH`,`XM`,`JG`,`CSRQ`,`ZZMM`,`SFZH`,`CCQJ`,`XB`,`MZ`,`YX`,`ZY`,`BJ`,`WYYZ`,`JTDZ`,`LXDH`,`DZYX`,`BZ`) values (9,'1620980126','张雨嘉','河北省','1994-05-06','共青团员','210102199405063711','葫芦岛/兴城——沈阳','','汉','软件学院','软件工程（计算机与信息类专升本）','软升本16-1','英语','辽宁省沈阳市铁西区北滑翔路10-3#4-1-1','33333333','471451942@qq.com','无'),(14,'1620980125','张雨嘉','1','1994-05-06','1','1','1','','11111111','1','1111111','软升本16-2','1','11','13800138000','11','1'),(15,'1620980107','何鑫','辽宁省','1994-03-03','党员','210904199403031018','阜新-兴城','','汉','软件','软件工程','16-1','英语','辽宁阜新','14704188737','1148804200@qq.com',NULL);

/*Table structure for table `usertable` */

DROP TABLE IF EXISTS `usertable`;

CREATE TABLE `usertable` (
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `usertable` */

insert  into `usertable`(`username`,`password`) values ('11001','11001'),('admin','admin');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

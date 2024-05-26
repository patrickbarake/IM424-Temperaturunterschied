/*
SQLyog Community v12.4.2 (64 bit)
MySQL - 10.4.32-MariaDB : Database - 107392_3_1
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`107392_3_1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `107392_3_1`;

/*Table structure for table `weather` */

DROP TABLE IF EXISTS `weather`;

CREATE TABLE `weather` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `temperature` varchar(255) DEFAULT NULL,
  `created` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `precipitation` varchar(255) DEFAULT NULL,
  `cloud_cover` varchar(255) DEFAULT NULL,
  `weather_condition` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=699 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `weather` */

insert  into `weather`(`id`,`temperature`,`created`,`city`,`precipitation`,`cloud_cover`,`weather_condition`) values 
(619,'11.5','2024-06-23T02:15','Chur','4','83','cloudy'),
(620,'10.5','2024-05-23T02:15','Bern','5','87','cloudy'),
(673,'12','2024-01-23T03:00','Chur','6','97','cloudy'),
(674,'10.5','2024-11-23T03:00','Bern','7','98','cloudy'),
(675,'12','2024-05-23T03:00','Chur','45','97','cloudy'),
(676,'10.5','2024-12-23T03:00','Bern','9','98','cloudy'),
(677,'12','2024-02-23T03:00','Chur','12','97','cloudy'),
(678,'10.5','2024-03-23T03:00','Bern','23','98','cloudy'),
(679,'12','2024-01-23T03:00','Chur','12','97','cloudy'),
(680,'10.5','2024-02-23T03:00','Bern','3','98','cloudy'),
(681,'11','2024-07-23T04:30','Chur','45','98','cloudy'),
(682,'11','2024-07-23T04:30','Bern','23','100','cloudy'),
(683,'11','2024-08-23T04:30','Chur','65','98','cloudy'),
(684,'11','2024-08-23T04:30','Bern','12','100','cloudy'),
(685,'11','2024-09-23T04:30','Chur','2','98','cloudy'),
(686,'11','2024-09-23T04:30','Bern','23','100','cloudy'),
(687,'11','2024-10-23T04:30','Chur','22','98','cloudy'),
(688,'11','2024-10-23T04:30','Bern','34','100','cloudy'),
(689,'11','2024-11-23T04:30','Chur','56','98','cloudy'),
(690,'11','2024-05-23T04:30','Bern','54','100','cloudy'),
(691,'11','2024-11-23T04:30','Chur','34','98','cloudy'),
(692,'11','2024-06-23T04:30','Bern','36','100','cloudy'),
(693,'11','2024-04-23T04:30','Chur','76','98','cloudy'),
(694,'11','2024-04-23T04:30','Bern','82','100','cloudy'),
(695,'11','2024-05-23T04:30','Chur','12','98','cloudy'),
(696,'11','2024-04-23T04:30','Bern','45','100','cloudy'),
(697,'11','2024-09-23T04:30','Chur','76','98','cloudy'),
(698,'11','2024-12-23T04:30','Bern','11','100','cloudy');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

CREATE DATABASE  IF NOT EXISTS `petpei` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `petpei`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: petpei
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `epost`
--

DROP TABLE IF EXISTS `epost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `epost` (
  `Epost_id` int NOT NULL AUTO_INCREMENT,
  `Epost_title` varchar(50) NOT NULL,
  `Epost_content` text NOT NULL,
  `Epost_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Epost_update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Epost_address` varchar(100) NOT NULL,
  `Epost_status` char(1) NOT NULL DEFAULT '0',
  `Epost_comment_count` int NOT NULL DEFAULT '0',
  `Epost_share_count` int NOT NULL DEFAULT '0',
  `Epost_collect_count` int NOT NULL DEFAULT '0',
  `Epost_like_count` int NOT NULL DEFAULT '0',
  `event_status` char(1) NOT NULL DEFAULT '0',
  `current_people_number` int NOT NULL DEFAULT '0',
  `need_people_number` int NOT NULL,
  `event_date` timestamp NOT NULL,
  `pet_breed_id` int DEFAULT NULL,
  `township_id` int DEFAULT NULL,
  `member_id` int NOT NULL,
  PRIMARY KEY (`Epost_id`),
  KEY `fk_Epost_pet_breed` (`pet_breed_id`),
  KEY `fk_Epost_township` (`township_id`),
  KEY `fk_Epost_member_info` (`member_id`),
  CONSTRAINT `fk_Epost_member_info` FOREIGN KEY (`member_id`) REFERENCES `member_info` (`member_id`),
  CONSTRAINT `fk_Epost_pet_breed` FOREIGN KEY (`pet_breed_id`) REFERENCES `pet_breed` (`pet_breed_id`),
  CONSTRAINT `fk_Epost_township` FOREIGN KEY (`township_id`) REFERENCES `township_list` (`township_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epost`
--

LOCK TABLES `epost` WRITE;
/*!40000 ALTER TABLE `epost` DISABLE KEYS */;
INSERT INTO `epost` VALUES (1,'廢廢活動','來讓各家的主子交朋友，奴才們有美食可以享用!!!!!!!','2020-03-01 07:00:00',NULL,'大安森林公園','0',0,0,0,0,'0',3,5,'2021-05-21 07:00:00',1,1,1),(2,'美食聚會','大家來分享自己為貓咪做的飯,看誰的料理最吸引主子們!!!!!!!','2020-04-01 04:00:00',NULL,'圓山公園','0',0,0,0,0,'0',6,5,'2021-05-28 08:40:00',1,5,2),(3,'爭奇鬥艷','比比看誰家的貓最可愛!!!!!!','2020-03-22 09:00:00',NULL,'森林公園','0',0,0,0,0,'0',7,6,'2021-05-15 04:00:00',1,9,3);
/*!40000 ALTER TABLE `epost` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-31 22:40:32

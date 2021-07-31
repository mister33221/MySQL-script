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
-- Table structure for table `epost_comment`
--

DROP TABLE IF EXISTS `epost_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `epost_comment` (
  `Epost_comment_id` int NOT NULL AUTO_INCREMENT,
  `Epost_comment_content` text NOT NULL,
  `Epost_comment_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Epost_comment_update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Epost_comment_like_count` int NOT NULL DEFAULT '0',
  `Epost_comment_status` char(1) NOT NULL DEFAULT '0',
  `member_id` int NOT NULL,
  `Epost_id` int NOT NULL,
  PRIMARY KEY (`Epost_comment_id`),
  KEY `fk_EpostComment_memberInfo` (`member_id`),
  KEY `fk_EpostComment_Epost` (`Epost_id`),
  CONSTRAINT `fk_EpostComment_Epost` FOREIGN KEY (`Epost_id`) REFERENCES `epost` (`Epost_id`),
  CONSTRAINT `fk_EpostComment_memberInfo` FOREIGN KEY (`member_id`) REFERENCES `member_info` (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epost_comment`
--

LOCK TABLES `epost_comment` WRITE;
/*!40000 ALTER TABLE `epost_comment` DISABLE KEYS */;
INSERT INTO `epost_comment` VALUES (1,'帶狗的能參加嗎','2021-03-22 09:00:00',NULL,5,'0',1,1),(2,'我來準備貓咪的食物','2021-03-21 07:00:00',NULL,5,'0',5,2),(3,'能帶什麼參加','2021-03-22 09:00:00',NULL,5,'0',8,2),(4,'帶狗的能參加嗎','2021-04-12 09:00:00',NULL,5,'0',8,2),(5,'我的烤肉術終於能展現了','2021-03-22 08:00:00',NULL,5,'0',8,2),(6,'我家主子最可愛','2021-03-22 09:00:00',NULL,5,'0',8,3);
/*!40000 ALTER TABLE `epost_comment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-31 22:40:42

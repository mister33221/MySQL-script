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
-- Table structure for table `invite_firend`
--

DROP TABLE IF EXISTS `invite_firend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invite_firend` (
  `invite_firend_id` int NOT NULL AUTO_INCREMENT,
  `confirm_result` char(1) DEFAULT NULL,
  `confirm_status` char(1) NOT NULL,
  `invite_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `member1_id` int NOT NULL,
  `member2_id` int NOT NULL,
  PRIMARY KEY (`invite_firend_id`),
  KEY `fk_invite_firend_member_info_1` (`member1_id`),
  KEY `fk_invite_firend_member_info_2` (`member2_id`),
  CONSTRAINT `fk_invite_firend_member_info_1` FOREIGN KEY (`member1_id`) REFERENCES `member_info` (`member_id`),
  CONSTRAINT `fk_invite_firend_member_info_2` FOREIGN KEY (`member2_id`) REFERENCES `member_info` (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invite_firend`
--

LOCK TABLES `invite_firend` WRITE;
/*!40000 ALTER TABLE `invite_firend` DISABLE KEYS */;
INSERT INTO `invite_firend` VALUES (1,NULL,'0','2021-05-14 12:26:23',NULL,1,2),(2,NULL,'0','2021-05-14 12:26:24',NULL,1,3),(3,NULL,'0','2021-05-14 12:26:24',NULL,1,4),(4,NULL,'0','2021-05-14 12:26:24',NULL,2,1),(5,NULL,'0','2021-05-14 12:26:24',NULL,2,3),(6,NULL,'0','2021-05-14 12:26:24',NULL,3,1),(7,NULL,'0','2021-05-14 12:26:25',NULL,4,1),(8,NULL,'0','2021-05-14 12:26:25',NULL,5,2),(9,NULL,'0','2021-05-14 12:26:25',NULL,6,2);
/*!40000 ALTER TABLE `invite_firend` ENABLE KEYS */;
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

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
-- Table structure for table `lapost_like`
--

DROP TABLE IF EXISTS `lapost_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lapost_like` (
  `LApost_like_id` int NOT NULL AUTO_INCREMENT,
  `LApost_like_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LApost_like_update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `LApost_id` int NOT NULL,
  `member_id` int NOT NULL,
  PRIMARY KEY (`LApost_like_id`),
  KEY `fk_LApost_like_LApost` (`LApost_id`),
  KEY `fk_LApost_like_Member_Info` (`member_id`),
  CONSTRAINT `fk_LApost_like_LApost` FOREIGN KEY (`LApost_id`) REFERENCES `lapost` (`LApost_id`),
  CONSTRAINT `fk_LApost_like_Member_Info` FOREIGN KEY (`member_id`) REFERENCES `member_info` (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lapost_like`
--

LOCK TABLES `lapost_like` WRITE;
/*!40000 ALTER TABLE `lapost_like` DISABLE KEYS */;
INSERT INTO `lapost_like` VALUES (1,'2020-10-18 05:05:42',NULL,1,2),(2,'2021-02-05 05:22:10',NULL,3,3),(3,'2021-02-17 10:03:23',NULL,2,4),(4,'2021-02-17 12:03:56',NULL,2,1),(5,'2021-03-23 04:33:21',NULL,1,7),(6,'2021-04-08 03:45:30',NULL,5,1),(7,'2021-04-10 13:03:22',NULL,3,6),(8,'2021-04-15 14:00:12',NULL,4,3),(9,'2021-04-20 16:01:11',NULL,6,1),(10,'2021-04-20 17:23:20',NULL,6,2);
/*!40000 ALTER TABLE `lapost_like` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-31 22:40:35

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
-- Table structure for table `lapost_collection`
--

DROP TABLE IF EXISTS `lapost_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lapost_collection` (
  `LApost_collect_id` int NOT NULL AUTO_INCREMENT,
  `LApost_collect_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `LApost_collect_status` char(1) NOT NULL,
  `LApost_id` int NOT NULL,
  `member_id` int NOT NULL,
  PRIMARY KEY (`LApost_collect_id`),
  KEY `LApost_collection_LApost_FK` (`LApost_id`),
  KEY `LApost_collection_member_info_FK` (`member_id`),
  CONSTRAINT `LApost_collection_LApost_FK` FOREIGN KEY (`LApost_id`) REFERENCES `lapost` (`LApost_id`),
  CONSTRAINT `LApost_collection_member_info_FK` FOREIGN KEY (`member_id`) REFERENCES `member_info` (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lapost_collection`
--

LOCK TABLES `lapost_collection` WRITE;
/*!40000 ALTER TABLE `lapost_collection` DISABLE KEYS */;
INSERT INTO `lapost_collection` VALUES (1,'2020-10-18 13:00:42','0',1,3),(2,'2021-03-05 10:03:42','0',3,3),(3,'2021-03-06 02:22:56','0',4,7),(4,'2021-03-06 04:03:33','0',2,3),(5,'2021-04-05 06:03:42','0',5,4),(6,'2021-04-05 11:23:27','0',1,1),(7,'2021-04-09 03:22:33','0',5,7),(8,'2021-04-10 05:03:33','0',2,1),(9,'2021-04-11 10:03:42','0',2,6),(10,'2021-04-12 10:03:42','0',2,7),(11,'2021-04-15 10:03:42','0',3,5),(12,'2021-04-20 10:03:42','0',6,3),(13,'2021-04-20 10:03:43','0',6,1),(14,'2021-04-20 11:03:42','0',4,1),(15,'2021-04-20 12:05:22','0',3,2),(16,'2021-04-20 16:00:01','0',4,3);
/*!40000 ALTER TABLE `lapost_collection` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-31 22:40:31

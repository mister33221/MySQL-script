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
-- Table structure for table `epost_collection`
--

DROP TABLE IF EXISTS `epost_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `epost_collection` (
  `Epost_collect_id` int NOT NULL AUTO_INCREMENT,
  `Epost_collect_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Epost_collect_status` char(1) NOT NULL DEFAULT '0',
  `Epost_id` int NOT NULL,
  `member_id` int NOT NULL,
  PRIMARY KEY (`Epost_collect_id`),
  KEY `fk_EpostCollection_memberInfo` (`member_id`),
  KEY `fk_EpostCollection_Epost` (`Epost_id`),
  CONSTRAINT `fk_EpostCollection_Epost` FOREIGN KEY (`Epost_id`) REFERENCES `epost` (`Epost_id`),
  CONSTRAINT `fk_EpostCollection_memberInfo` FOREIGN KEY (`member_id`) REFERENCES `member_info` (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epost_collection`
--

LOCK TABLES `epost_collection` WRITE;
/*!40000 ALTER TABLE `epost_collection` DISABLE KEYS */;
INSERT INTO `epost_collection` VALUES (1,'2020-03-23 09:00:00','0',1,2),(2,'2020-03-23 09:00:00','0',2,2),(3,'2020-03-23 09:00:00','0',1,3);
/*!40000 ALTER TABLE `epost_collection` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-31 22:40:37

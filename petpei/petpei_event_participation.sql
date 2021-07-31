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
-- Table structure for table `event_participation`
--

DROP TABLE IF EXISTS `event_participation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_participation` (
  `participation_id` int NOT NULL AUTO_INCREMENT,
  `participation_status` char(1) NOT NULL DEFAULT '0',
  `event_review_rank` char(1) NOT NULL DEFAULT '0',
  `member_id` int NOT NULL,
  `Epost_id` int NOT NULL,
  PRIMARY KEY (`participation_id`),
  KEY `fk_eventParticipation_memberInfo` (`member_id`),
  KEY `fk_eventParticipation_Epost` (`Epost_id`),
  CONSTRAINT `fk_eventParticipation_Epost` FOREIGN KEY (`Epost_id`) REFERENCES `epost` (`Epost_id`),
  CONSTRAINT `fk_eventParticipation_memberInfo` FOREIGN KEY (`member_id`) REFERENCES `member_info` (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_participation`
--

LOCK TABLES `event_participation` WRITE;
/*!40000 ALTER TABLE `event_participation` DISABLE KEYS */;
INSERT INTO `event_participation` VALUES (1,'0','2',2,1),(2,'0','2',4,1),(3,'0','0',3,2),(4,'0','0',4,2),(5,'0','0',5,2),(6,'0','0',6,2),(7,'0','0',7,2),(8,'0','0',8,1),(9,'0','0',8,3),(10,'0','0',7,3),(11,'0','0',6,3),(12,'0','0',5,3),(13,'0','0',4,3),(14,'0','0',9,3),(15,'0','0',10,3),(16,'0','0',11,3);
/*!40000 ALTER TABLE `event_participation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-31 22:40:34

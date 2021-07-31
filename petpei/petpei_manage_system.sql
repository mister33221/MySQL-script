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
-- Table structure for table `manage_system`
--

DROP TABLE IF EXISTS `manage_system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manage_system` (
  `manage_id` int NOT NULL AUTO_INCREMENT,
  `manage_name` varchar(50) NOT NULL,
  `manage_status` char(1) DEFAULT NULL,
  `manage_cel` varchar(20) NOT NULL,
  `manage_mail` varchar(50) NOT NULL,
  `manage_password` varchar(50) NOT NULL,
  `manage_set_time` timestamp NULL DEFAULT NULL,
  `occupation_id` int NOT NULL,
  PRIMARY KEY (`manage_id`),
  KEY `fk_manage_system_occupation_auth` (`occupation_id`),
  CONSTRAINT `fk_manage_system_occupation_auth` FOREIGN KEY (`occupation_id`) REFERENCES `occupation_auth` (`occupation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manage_system`
--

LOCK TABLES `manage_system` WRITE;
/*!40000 ALTER TABLE `manage_system` DISABLE KEYS */;
INSERT INTO `manage_system` VALUES (1,'william1','1','111','1111@gmail.com','1111','2021-05-14 12:26:02',1),(2,'william2','1','222','2222@gmail.com','1111','2021-05-14 12:26:02',2),(3,'william3','0','333','3333@gmail.com','1111','2021-05-14 12:26:02',3),(4,'william4','0','444','4444@gmail.com','1111','2021-05-14 12:26:02',4),(5,'william5','0','555','5555@gmail.com','1111','2021-05-14 12:26:02',5);
/*!40000 ALTER TABLE `manage_system` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-31 22:40:33

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
-- Table structure for table `pet_vaccination`
--

DROP TABLE IF EXISTS `pet_vaccination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pet_vaccination` (
  `pet_vaccination_id` int NOT NULL AUTO_INCREMENT,
  `vaccination_time` date DEFAULT NULL,
  `pet_id` int NOT NULL,
  `vaccination_id` int NOT NULL,
  PRIMARY KEY (`pet_vaccination_id`),
  KEY `fk_pet_vaccination_pet_info` (`pet_id`),
  KEY `fk_pet_vaccination_vaccination_list` (`vaccination_id`),
  CONSTRAINT `fk_pet_vaccination_pet_info` FOREIGN KEY (`pet_id`) REFERENCES `pet_info` (`pet_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_pet_vaccination_vaccination_list` FOREIGN KEY (`vaccination_id`) REFERENCES `vaccination_list` (`vaccination_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet_vaccination`
--

LOCK TABLES `pet_vaccination` WRITE;
/*!40000 ALTER TABLE `pet_vaccination` DISABLE KEYS */;
INSERT INTO `pet_vaccination` VALUES (1,'2020-01-14',1,1),(2,'2020-09-19',1,3),(3,'2019-08-19',2,2),(4,'2021-01-19',3,2);
/*!40000 ALTER TABLE `pet_vaccination` ENABLE KEYS */;
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

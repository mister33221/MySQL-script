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
-- Table structure for table `adopt_resume`
--

DROP TABLE IF EXISTS `adopt_resume`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adopt_resume` (
  `resume_id` int NOT NULL AUTO_INCREMENT,
  `resume_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `is_keep` char(1) NOT NULL,
  `resume_status` char(1) NOT NULL,
  `keep_time` char(1) NOT NULL,
  `pet_category` varchar(100) DEFAULT NULL,
  `is_track` char(1) NOT NULL,
  `is_income` char(1) NOT NULL,
  `resume_remark` text,
  `LApost_id` int NOT NULL,
  `township_id` int NOT NULL,
  `member_id` int NOT NULL,
  PRIMARY KEY (`resume_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adopt_resume`
--

LOCK TABLES `adopt_resume` WRITE;
/*!40000 ALTER TABLE `adopt_resume` DISABLE KEYS */;
INSERT INTO `adopt_resume` VALUES (1,'2021-05-14 12:25:18','0','0','0','','1','0','雖然我沒養過寵物,但我會好好愛他!',1,2,1),(2,'2021-05-14 12:25:18','1','0','1','拉布拉多','1','1','希望可以在多養一隻',2,1,2),(3,'2021-05-14 12:25:18','1','2','2','小貓咪','1','1','選我選我',3,4,3);
/*!40000 ALTER TABLE `adopt_resume` ENABLE KEYS */;
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

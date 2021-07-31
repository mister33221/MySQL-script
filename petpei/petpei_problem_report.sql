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
-- Table structure for table `problem_report`
--

DROP TABLE IF EXISTS `problem_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `problem_report` (
  `problem_id` int NOT NULL AUTO_INCREMENT,
  `problem_birth` timestamp NOT NULL,
  `problem_description` varchar(300) NOT NULL,
  `problem_status` char(1) DEFAULT NULL,
  `member_id` int NOT NULL,
  `problem_category_id` int NOT NULL,
  `manage_id` int DEFAULT NULL,
  PRIMARY KEY (`problem_id`),
  KEY `fk_problem_report_member_info` (`member_id`),
  KEY `fk_problem_report_problem_category` (`problem_category_id`),
  KEY `fk_problem_report_manage_system` (`manage_id`),
  CONSTRAINT `fk_problem_report_manage_system` FOREIGN KEY (`manage_id`) REFERENCES `manage_system` (`manage_id`),
  CONSTRAINT `fk_problem_report_member_info` FOREIGN KEY (`member_id`) REFERENCES `member_info` (`member_id`),
  CONSTRAINT `fk_problem_report_problem_category` FOREIGN KEY (`problem_category_id`) REFERENCES `problem_category` (`problem_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `problem_report`
--

LOCK TABLES `problem_report` WRITE;
/*!40000 ALTER TABLE `problem_report` DISABLE KEYS */;
INSERT INTO `problem_report` VALUES (1,'2021-05-14 12:26:06','好爛喔','3',1,1,1),(2,'2021-05-14 12:26:06','2好爛喔','3',2,2,2),(3,'2021-05-14 12:26:06','3好爛喔','3',3,3,3),(4,'2021-05-14 12:26:06','4好爛喔','3',4,4,4),(5,'2021-05-14 12:26:06','5好爛喔','3',5,5,5);
/*!40000 ALTER TABLE `problem_report` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-31 22:40:40

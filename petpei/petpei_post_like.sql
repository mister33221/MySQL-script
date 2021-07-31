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
-- Table structure for table `post_like`
--

DROP TABLE IF EXISTS `post_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_like` (
  `post_like_id` int NOT NULL AUTO_INCREMENT,
  `post_like_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post_like_update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `post_id` int NOT NULL,
  `member_id` int NOT NULL,
  PRIMARY KEY (`post_like_id`),
  KEY `fk_post_like_post` (`post_id`),
  KEY `fk_post_like_member_info` (`member_id`),
  CONSTRAINT `fk_post_like_member_info` FOREIGN KEY (`member_id`) REFERENCES `member_info` (`member_id`),
  CONSTRAINT `fk_post_like_post` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_like`
--

LOCK TABLES `post_like` WRITE;
/*!40000 ALTER TABLE `post_like` DISABLE KEYS */;
INSERT INTO `post_like` VALUES (1,'2021-05-14 12:25:51',NULL,1,1),(2,'2021-05-14 12:25:51',NULL,1,2),(3,'2021-05-14 12:25:51',NULL,1,3),(4,'2021-05-14 12:25:51',NULL,1,4),(5,'2021-05-14 12:25:52',NULL,1,5),(6,'2021-05-14 12:25:52',NULL,1,6),(7,'2021-05-14 12:25:52',NULL,1,7),(8,'2021-05-14 12:25:52',NULL,1,8),(9,'2021-05-14 12:25:52',NULL,2,1),(10,'2021-05-14 12:25:53',NULL,3,2),(11,'2021-05-14 12:25:53',NULL,4,3),(12,'2021-05-14 12:25:53',NULL,5,4),(13,'2021-05-14 12:25:53',NULL,6,5),(14,'2021-05-14 12:25:53',NULL,7,6),(15,'2021-05-14 12:25:53',NULL,8,7),(16,'2021-05-14 12:25:53',NULL,9,8);
/*!40000 ALTER TABLE `post_like` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-31 22:40:41

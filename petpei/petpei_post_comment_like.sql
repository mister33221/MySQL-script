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
-- Table structure for table `post_comment_like`
--

DROP TABLE IF EXISTS `post_comment_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_comment_like` (
  `post_comment_like_id` int NOT NULL AUTO_INCREMENT,
  `post_comment_like_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post_comment_like_update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `post_id` int NOT NULL,
  `member_id` int NOT NULL,
  `post_comment_id` int NOT NULL,
  PRIMARY KEY (`post_comment_like_id`),
  KEY `fk_post_comment_like_post` (`post_id`),
  KEY `fk_post_comment_like_member_info` (`member_id`),
  KEY `fk_post_comment_like_post_comment` (`post_comment_id`),
  CONSTRAINT `fk_post_comment_like_member_info` FOREIGN KEY (`member_id`) REFERENCES `member_info` (`member_id`),
  CONSTRAINT `fk_post_comment_like_post` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`),
  CONSTRAINT `fk_post_comment_like_post_comment` FOREIGN KEY (`post_comment_id`) REFERENCES `post_comment` (`post_comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_comment_like`
--

LOCK TABLES `post_comment_like` WRITE;
/*!40000 ALTER TABLE `post_comment_like` DISABLE KEYS */;
INSERT INTO `post_comment_like` VALUES (1,'2021-05-14 12:25:56',NULL,1,1,1),(2,'2021-05-14 12:25:56',NULL,2,1,2),(3,'2021-05-14 12:25:56',NULL,3,1,3),(4,'2021-05-14 12:25:56',NULL,4,7,4),(5,'2021-05-14 12:25:57',NULL,5,8,5),(6,'2021-05-14 12:25:57',NULL,6,5,6),(7,'2021-05-14 12:25:57',NULL,7,6,7),(8,'2021-05-14 12:25:57',NULL,8,4,8),(9,'2021-05-14 12:25:58',NULL,9,3,9),(10,'2021-05-14 12:25:58',NULL,10,2,10);
/*!40000 ALTER TABLE `post_comment_like` ENABLE KEYS */;
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

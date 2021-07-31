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
-- Table structure for table `member_relationship`
--

DROP TABLE IF EXISTS `member_relationship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_relationship` (
  `member_relationship_id` int NOT NULL AUTO_INCREMENT,
  `is_friend` char(1) NOT NULL,
  `is_cardfriend` char(1) NOT NULL,
  `is_follower` char(1) NOT NULL,
  `was_friend` char(1) NOT NULL,
  `was_cardfriend` char(1) NOT NULL,
  `was_follower` char(1) NOT NULL,
  `is_block` char(1) NOT NULL,
  `was_block` char(1) NOT NULL,
  `relationship_birth` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `relationship_update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `member1_id` int NOT NULL,
  `member2_id` int NOT NULL,
  PRIMARY KEY (`member_relationship_id`),
  KEY `fk_member_relationship_member_info_1` (`member1_id`),
  KEY `fk_member_relationship_member_info_2` (`member2_id`),
  CONSTRAINT `fk_member_relationship_member_info_1` FOREIGN KEY (`member1_id`) REFERENCES `member_info` (`member_id`),
  CONSTRAINT `fk_member_relationship_member_info_2` FOREIGN KEY (`member2_id`) REFERENCES `member_info` (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_relationship`
--

LOCK TABLES `member_relationship` WRITE;
/*!40000 ALTER TABLE `member_relationship` DISABLE KEYS */;
INSERT INTO `member_relationship` VALUES (1,'1','0','0','0','0','0','0','0','2021-05-14 12:25:21',NULL,1,2),(2,'0','0','1','0','0','0','0','0','2021-05-14 12:25:21',NULL,1,3),(3,'1','0','0','0','0','0','0','0','2021-05-14 12:25:21',NULL,1,4),(4,'0','0','1','0','0','0','0','0','2021-05-14 12:25:21',NULL,1,5),(5,'1','0','0','0','0','0','0','0','2021-05-14 12:25:21',NULL,1,6),(6,'0','0','1','0','0','0','0','0','2021-05-14 12:25:22',NULL,1,7),(7,'1','0','0','0','0','0','0','0','2021-05-14 12:25:22',NULL,2,1),(8,'1','0','0','0','0','0','0','0','2021-05-14 12:25:22',NULL,2,4),(9,'1','0','0','0','0','0','0','0','2021-05-14 12:25:22',NULL,2,5),(10,'1','0','0','0','0','0','0','0','2021-05-14 12:25:22',NULL,2,7),(11,'0','0','1','0','0','0','0','0','2021-05-14 12:25:22',NULL,3,1),(12,'1','0','0','0','0','0','0','0','2021-05-14 12:25:23',NULL,3,4),(13,'0','0','1','0','0','0','0','0','2021-05-14 12:25:23',NULL,3,6),(14,'1','0','0','0','0','0','0','0','2021-05-14 12:25:23',NULL,4,1),(15,'1','0','0','0','0','0','0','0','2021-05-14 12:25:23',NULL,4,2),(16,'1','0','0','0','0','0','0','0','2021-05-14 12:25:23',NULL,4,3),(17,'0','0','1','0','0','0','0','0','2021-05-14 12:25:23',NULL,4,6),(18,'1','0','0','0','0','0','0','0','2021-05-14 12:25:23',NULL,4,7),(19,'1','0','0','0','0','0','0','0','2021-05-14 12:25:23',NULL,5,2),(20,'0','0','1','0','0','0','0','0','2021-05-14 12:25:23',NULL,5,4),(21,'1','0','0','0','0','0','0','0','2021-05-14 12:25:24',NULL,5,6),(22,'1','0','0','0','0','0','0','0','2021-05-14 12:25:24',NULL,5,7),(23,'1','0','0','0','0','0','0','0','2021-05-14 12:25:24',NULL,6,1),(24,'0','0','1','0','0','0','0','0','2021-05-14 12:25:24',NULL,6,2),(25,'0','0','1','0','0','0','0','0','2021-05-14 12:25:24',NULL,6,4),(26,'1','0','0','0','0','0','0','0','2021-05-14 12:25:24',NULL,6,5),(27,'0','0','1','0','0','0','0','0','2021-05-14 12:25:24',NULL,6,7),(28,'0','0','1','0','0','0','0','0','2021-05-14 12:25:24',NULL,7,1),(29,'1','0','0','0','0','0','0','0','2021-05-14 12:25:25',NULL,7,2),(30,'1','0','0','0','0','0','0','0','2021-05-14 12:25:25',NULL,7,4),(31,'1','0','0','0','0','0','0','0','2021-05-14 12:25:25',NULL,7,5);
/*!40000 ALTER TABLE `member_relationship` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-31 22:40:26

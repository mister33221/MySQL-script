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
-- Table structure for table `lapost_comment`
--

DROP TABLE IF EXISTS `lapost_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lapost_comment` (
  `LApost_comment_id` int NOT NULL AUTO_INCREMENT,
  `LApost_comment_content` text NOT NULL,
  `LApost_comment_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `LApost_comment_update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `LApostcomment_like_count` int NOT NULL,
  `LApost_comment_status` char(1) NOT NULL,
  `LApost_id` int NOT NULL,
  `member_id` int NOT NULL,
  PRIMARY KEY (`LApost_comment_id`),
  KEY `LApost_comment_LApost_FK` (`LApost_id`),
  KEY `LApost_comment_member_info_FK` (`member_id`),
  CONSTRAINT `LApost_comment_LApost_FK` FOREIGN KEY (`LApost_id`) REFERENCES `lapost` (`LApost_id`),
  CONSTRAINT `LApost_comment_member_info_FK` FOREIGN KEY (`member_id`) REFERENCES `member_info` (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lapost_comment`
--

LOCK TABLES `lapost_comment` WRITE;
/*!40000 ALTER TABLE `lapost_comment` DISABLE KEYS */;
INSERT INTO `lapost_comment` VALUES (1,'這貓咪會畫ER model嗎???','2020-10-17 18:11:21',NULL,0,'0',1,1),(2,'這貓咪也太美了吧!!!','2020-10-19 09:32:45',NULL,0,'0',1,4),(3,'Hello World!','2020-12-11 10:21:46',NULL,0,'0',2,7),(4,'','2021-01-02 13:35:22',NULL,0,'0',2,5),(5,'好友愛心喔!!!','2021-02-05 05:33:20',NULL,0,'0',2,3),(6,'可以帶我去嗎?小孩~','2021-02-05 05:34:27',NULL,0,'0',3,2),(7,'Hello World!','2021-02-06 08:27:20',NULL,0,'0',3,7),(8,'已經有發履歷了喔!!!希望可以被選中!!','2021-02-19 04:46:21',NULL,0,'0',3,4),(9,'好可愛的小貓咪喔~喵喵喵','2021-02-20 08:33:20',NULL,0,'0',3,5),(10,'','2021-02-20 11:22:21',NULL,0,'0',3,4),(11,'阿娘喂~嚇死寶寶','2021-02-27 08:31:28',NULL,0,'0',4,1),(12,'吉吉吉吉吉GGGGG','2021-04-08 04:23:20',NULL,0,'0',5,6),(13,'小吉太兇了吧QQQQQ','2021-04-09 02:22:10',NULL,0,'0',5,1),(14,'趕快回家好嗎?小吉','2021-04-10 07:03:06',NULL,0,'0',5,2),(15,'小吉怎麼會亂跑呢???','2021-04-14 10:03:42',NULL,0,'0',5,4),(16,'','2021-04-18 10:03:42',NULL,0,'0',5,1),(17,'吉哥!!!!!','2021-04-18 14:06:22',NULL,0,'0',5,4),(18,'會JDBC不行報名嗎???QQQQQ','2021-04-20 13:03:13',NULL,0,'0',6,1),(19,'Hello World!','2021-04-21 15:11:37',NULL,0,'0',6,7);
/*!40000 ALTER TABLE `lapost_comment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-31 22:40:29

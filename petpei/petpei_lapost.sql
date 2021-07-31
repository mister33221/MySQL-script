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
-- Table structure for table `lapost`
--

DROP TABLE IF EXISTS `lapost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lapost` (
  `LApost_id` int NOT NULL AUTO_INCREMENT,
  `LApost_content` text NOT NULL,
  `LApost_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `LApost_update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `LApost_comment_count` int NOT NULL,
  `LApost_share_count` int NOT NULL,
  `LApost_collect_count` int NOT NULL,
  `LApost_like_count` int NOT NULL,
  `LApost_status` char(1) NOT NULL,
  `LAtype_status` char(1) NOT NULL,
  `LApet_gender` char(1) NOT NULL,
  `LApet_age` varchar(20) DEFAULT NULL,
  `pet_breed_id` int NOT NULL,
  `township_id` int NOT NULL,
  `member_id` int NOT NULL,
  PRIMARY KEY (`LApost_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lapost`
--

LOCK TABLES `lapost` WRITE;
/*!40000 ALTER TABLE `lapost` DISABLE KEYS */;
INSERT INTO `lapost` VALUES (1,'我家的小貓咪~求送養','2020-10-17 07:03:05',NULL,2,0,2,8,'1','1','1','0歲3個月',3,34,5),(2,'(領養文)家裡附近流浪狗生的小狗,希望有人可以領養','2020-12-10 07:03:05',NULL,3,2,4,4,'0','1','1','0歲3個月',98,3,2),(3,'我六月要移民去外太空了~所以養了兩年的貓咪想要送養!!!條件:要有養貓經驗,年齡25歲以上,要有穩動工作!!!','2021-02-01 04:00:55',NULL,5,0,3,2,'0','1','2','2歲0個月',1,5,1),(4,'有人撿到我家恰吉嗎???有的話麻煩跟我聯絡!!!他很兇猛','2021-02-05 08:33:20',NULL,1,0,3,5,'0','2','1','5歲5個月',115,258,2),(5,'拜託幫我找找我們家的小吉!!!!昨天晚上在台北火車站附近走失了特徵:臉長得像吉娃娃姓名:小吉','2021-04-03 22:00:22',NULL,6,0,2,5,'0','2','1','10歲3個月',86,258,3),(6,'要搬到更高的房子~求送養!!!要會用Spring Boot!!!非常重要!!','2021-04-20 12:02:45',NULL,2,0,2,7,'0','1','1','2歲10個月',103,2,6);
/*!40000 ALTER TABLE `lapost` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-31 22:40:27

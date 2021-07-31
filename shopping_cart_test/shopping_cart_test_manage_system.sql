CREATE DATABASE  IF NOT EXISTS `shopping_cart_test` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `shopping_cart_test`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: shopping_cart_test
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
  `manage_name` varchar(20) NOT NULL,
  `manage_status` int NOT NULL,
  `manage_cel` varchar(20) NOT NULL,
  `manage_mail` varchar(20) NOT NULL,
  `manage_password` varchar(20) NOT NULL,
  `manage_set_time` timestamp NOT NULL,
  PRIMARY KEY (`manage_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manage_system`
--

LOCK TABLES `manage_system` WRITE;
/*!40000 ALTER TABLE `manage_system` DISABLE KEYS */;
INSERT INTO `manage_system` VALUES (1,'宇智波斑',0,'0999999999','9999@gmail.com','9999','2021-05-26 14:08:24'),(2,'佩恩',0,'0988888888','8888@gmail.com','8888','2021-05-26 14:08:24'),(3,'宇智波鼬',0,'0977777777','7777@gmail.com','7777','2021-05-26 14:08:24'),(4,'大蛇丸',0,'0966666666','6666@gmail.com','6666','2021-05-26 14:08:24'),(5,'蠍',0,'0955555555','5555@gmail.com','5555','2021-05-26 14:08:24');
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

-- Dump completed on 2021-07-31 22:41:53

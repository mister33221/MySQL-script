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
-- Table structure for table `pet_breed`
--

DROP TABLE IF EXISTS `pet_breed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pet_breed` (
  `pet_breed_id` int NOT NULL AUTO_INCREMENT,
  `pet_breed_name` varchar(20) DEFAULT NULL,
  `pet_type_id` int NOT NULL,
  PRIMARY KEY (`pet_breed_id`),
  KEY `fk_petBreed_petType` (`pet_type_id`),
  CONSTRAINT `fk_petBreed_petType` FOREIGN KEY (`pet_type_id`) REFERENCES `pet_type` (`pet_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet_breed`
--

LOCK TABLES `pet_breed` WRITE;
/*!40000 ALTER TABLE `pet_breed` DISABLE KEYS */;
INSERT INTO `pet_breed` VALUES (1,'美國短毛貓',1),(2,'波米拉貓（博美拉貓）',1),(3,'黑貓',1),(4,'土耳其梵貓',1),(5,'西伯利亞貓',1),(6,'橙眼白貓',1),(7,'美國反耳貓（美國卷耳貓）',1),(8,'美國硬毛貓',1),(9,'曼島貓（ 海曼島貓',1),(10,'威爾斯貓 （長毛曼克斯貓）',1),(11,'曼切堪貓',1),(12,'布履闌珊貓',1),(13,'緬因庫恩貓（緬因貓）',1),(14,'亞洲貓',1),(15,'內華達貓（尼比龍貓）',1),(16,'家庭短毛子貓（家寶貓）',1),(17,'歐西貓',1),(18,'卡爾特貓(美國短毛貓)',1),(19,'柯拉特貓（呵叻貓、考拉特貓）',1),(20,'異國短毛貓（加菲貓）',1),(21,'埃及貓',1),(22,'暹羅貓（泰國貓)',1),(23,'加拿大無毛貓 （斯芬克斯貓）',1),(24,'土耳其安哥拉貓',1),(25,'蘇格蘭折耳貓',1),(26,'俄羅斯藍貓',1),(27,'波斯貓',1),(28,'英國長毛貓',1),(29,'喜馬拉雅貓',1),(30,'山東獅子貓',1),(31,'英國短毛貓',1),(32,'豹貓',1),(33,'布偶貓',1),(34,'伯曼貓',1),(35,'狸花貓',1),(36,'孟買貓',1),(37,'彼得禿貓',1),(38,'雲貓',1),(39,'頓斯科伊貓',1),(40,'挪威森林貓',1),(41,'孟加拉貓=豹貓',1),(42,'土耳其梵科迪斯貓',1),(43,'蒂凡尼貓',1),(44,'巴厘貓',1),(45,'東方短毛貓',1),(46,'日本短尾貓',1),(47,'荒漠貓',1),(48,'金吉拉',1),(49,'哈瓦那貓',1),(50,'拉格多爾貓',1),(51,'熱帶草原貓',1),(52,'雪鞋貓',1),(53,'緬甸貓',1),(54,'新加坡貓',1),(55,'美國玳瑁色虎斑貓',1),(56,'爪哇貓',1),(57,'阿比西尼亞貓',1),(58,'加州閃亮貓',1),(59,'德國捲毛貓',1),(60,'印度貓',1),(61,'北美洲短毛貓',1),(62,'德文捲毛貓',1),(63,'索馬利亞貓',1),(64,'非洲獅子貓',1),(65,'肯亞貓',1),(66,'庫里瑞短尾貓',1),(67,'巧克力色貓',1),(68,'賽爾凱克捲毛貓',1),(69,'越南貓',1),(70,'柯尼斯捲毛貓',1),(71,'塞席爾貓',1),(72,'德國萊克斯貓',1),(73,'塞倫蓋蒂貓',1),(74,'歐斯亞史烈斯貓',1),(75,'拉邦貓',1),(76,'哈士奇',2),(77,'藏獒',2),(78,'金毛尋回犬',2),(79,'貴賓犬',2),(80,'薩摩耶犬',2),(81,'博美(松鼠犬)',2),(82,'雪納瑞',2),(83,'蘇格蘭牧羊犬',2),(84,'松獅犬',2),(85,'北京犬',2),(86,'吉娃娃',2),(87,'阿拉斯加雪橇犬',2),(88,'喜樂蒂牧羊犬',2),(89,'美國可卡犬',2),(90,'英國可卡犬',2),(91,'英國古代牧羊犬',2),(92,'捲毛比熊犬',2),(93,'義大利靈緹',2),(94,'蝴蝶犬',2),(95,'邊境牧羊犬',2),(96,'德國牧羊犬',2),(97,'阿富汗獵犬',2),(98,'大麥町',2),(99,'拉布拉多',2),(100,'西施犬',2),(101,'臘腸犬',2),(102,'巴哥犬',2),(103,'約克夏梗',2),(104,'柯基犬',2),(105,'日本銀狐',2),(106,'迷你杜賓犬',2),(107,'大白熊犬',2),(108,'比格犬(米格魯)',2),(109,'羅威納犬',2),(110,'中國沙皮犬',2),(111,'西部高地白梗',2),(112,'巴吉度獵犬',2),(113,'美國愛斯基摩犬',2),(114,'聖伯納犬',2),(115,'英國鬥牛犬',2),(116,'米克斯(土狗)',2),(117,'拉薩犬',2),(118,'馬爾濟斯犬',2),(119,'萬能梗',2),(120,'狼狗',2),(121,'德國杜賓犬/杜賓',2),(122,'牛頭梗',2),(123,'日本柴犬',2),(124,'比利時牧羊犬',2),(125,'法國鬥牛犬',2),(126,'紐芬蘭犬',2),(127,'愛爾蘭水獵犬',2),(128,'大丹犬',2),(129,'波音達犬/指示犬',2),(130,'傑克羅素梗',2),(131,'澳大利亞梗',2),(132,'瑞士伯恩山犬',2),(133,'美國比特犬',2),(134,'愛爾蘭紅白雪達犬',2),(135,'可蒙犬/墩布狗',2),(136,'騎士查理王獵犬',2),(137,'愛爾蘭獵狼犬',2),(138,'寄居蟹',3),(139,'鴨子',3);
/*!40000 ALTER TABLE `pet_breed` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-31 22:40:38

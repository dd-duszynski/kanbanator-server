-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: kanbanator
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `boards_lists`
--

DROP TABLE IF EXISTS `boards_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `boards_lists` (
  `list_id` int NOT NULL AUTO_INCREMENT,
  `list_title` varchar(30) NOT NULL,
  `list_privacy` varchar(30) NOT NULL,
  `list_related_board` int NOT NULL,
  PRIMARY KEY (`list_id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boards_lists`
--

LOCK TABLES `boards_lists` WRITE;
/*!40000 ALTER TABLE `boards_lists` DISABLE KEYS */;
INSERT INTO `boards_lists` VALUES (70,'Backlog','private',1),(71,'Preparing Content','private',1),(72,'Awaiting Review','private',1),(75,'Planned','private',4),(76,'To Do','private',4),(77,'Doing','private',4),(80,'USEFUL STUFF','private',6),(81,'Draft','private',6),(82,'PENDING EDITING','private',6),(84,'TO DO','private',7),(85,'BLOCKING','private',7),(86,'IN PROGRESS','private',7),(87,'Done!','private',1),(88,'card x4','private',7),(89,'Test','private',7),(90,'Test2','private',7),(91,'Test1','private',4),(92,'Test2','private',4),(93,'Ok','private',4),(94,'Test dla Oli','private',4),(95,'Test','private',4),(96,'nowa lista','private',1),(97,'Lista 2','private',20),(98,'Lista 3','private',20),(99,'Lista1','private',20),(100,'Kolejna','private',20),(101,'Lista 3','private',18),(102,'Test','private',18),(103,'Oki','private',19),(104,'Oki2','private',19),(105,'Oki','private',26),(106,'Wskoczy na miejsce defaulta','private',25),(107,'Jeszcze raz','private',24),(108,'ok','private',22),(109,'ok2','private',22),(110,'a','private',32),(111,'b','private',32),(112,'Lista testowa','private',123123),(113,'Lista testowa2','private',123123),(115,'Default Title','private',141516);
/*!40000 ALTER TABLE `boards_lists` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-11 21:29:13

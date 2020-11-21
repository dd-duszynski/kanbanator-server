CREATE DATABASE  IF NOT EXISTS `kanbanator` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `kanbanator`;
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
-- Table structure for table `boards`
--

DROP TABLE IF EXISTS `boards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `boards` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `image_url` varchar(255) NOT NULL DEFAULT '',
  `author` varchar(255) NOT NULL DEFAULT '',
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_favorite` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boards`
--

LOCK TABLES `boards` WRITE;
/*!40000 ALTER TABLE `boards` DISABLE KEYS */;
INSERT INTO `boards` VALUES (1,'boards 1','Description for table 1','https://images.pexels.com/photos/5836/yellow-metal-design-decoration.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500','Damian','2020-11-15 17:09:37',0),(4,'boards 4','Description for table 4','https://images.pexels.com/photos/4144923/pexels-photo-4144923.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500','Tomasz','2020-11-15 17:09:37',0),(6,'Dom','Sprzątanie i finanse','https://images.pexels.com/photos/5836/yellow-metal-design-decoration.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500','Damian','2020-11-15 17:51:39',0),(7,'Kanbanator','This is description','','','2020-11-15 18:11:25',0),(8,'Kanbanator','This is description','','','2020-11-15 18:12:13',0),(9,'Kanbanator','This is description','','','2020-11-15 18:12:31',0),(10,'Kanbanator','This is description','','','2020-11-15 18:17:15',0),(11,'Kanbanator','This is description','','','2020-11-15 18:17:28',0),(12,'Kanbanator','This is description','','','2020-11-15 18:17:53',0),(13,'Kanbanator','This is description','','','2020-11-15 18:18:02',0),(14,'Board 11','This is description 11','','','2020-11-15 18:23:17',0),(15,'Board 11','This is description 11','','','2020-11-15 18:23:24',0),(16,'Board 12','This is description 12','','','2020-11-15 18:23:59',0);
/*!40000 ALTER TABLE `boards` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-21 19:13:14

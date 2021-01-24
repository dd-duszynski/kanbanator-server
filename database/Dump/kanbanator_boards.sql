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
  `board_id` int unsigned NOT NULL AUTO_INCREMENT,
  `board_title` varchar(60) NOT NULL DEFAULT '',
  `board_description` text NOT NULL,
  `board_image_url` varchar(255) NOT NULL DEFAULT '',
  `board_author` int NOT NULL,
  `board_creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `board_is_favorite` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`board_id`)
) ENGINE=InnoDB AUTO_INCREMENT=141517 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boards`
--

LOCK TABLES `boards` WRITE;
/*!40000 ALTER TABLE `boards` DISABLE KEYS */;
INSERT INTO `boards` VALUES (1,'board 1','Description for table 1','https://images.pexels.com/photos/5836/yellow-metal-design-decoration.jpg?auto=compress&cs=tinysrgb&dpr=1&w=1000',24,'2020-11-15 17:09:37',0),(4,'board 2','Description for table 2','https://images.pexels.com/photos/4144923/pexels-photo-4144923.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=1000',24,'2020-11-15 17:09:37',1),(6,'board 3','Description for table 3','https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=1000',24,'2020-11-15 17:51:39',0),(7,'board 4','Description for table 4','https://images.pexels.com/photos/669996/pexels-photo-669996.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=1000',24,'2020-11-15 18:11:25',0),(17,'board5','desc5','https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=1000',24,'2021-01-09 14:20:24',0),(18,'Test Board','Description fot test board','https://images.pexels.com/photos/669996/pexels-photo-669996.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=1000',24,'2021-01-09 14:41:55',0),(19,'Kanbanator #1','First board POST from fetch','https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=1000',24,'2021-01-09 15:20:54',0),(20,'Tablica testowa','Sprawdzam tylko czy utworzy się bez problemów','https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=1000',24,'2021-01-10 16:21:38',0),(21,'ad','ad','https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=1000',24,'2021-01-10 19:21:51',0),(22,'Finanse','Tu ogarniam sobie finanse','https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=1000',14,'2021-01-10 19:22:31',0),(23,'Zakupy','','https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=1000',14,'2021-01-10 19:27:11',0),(24,'Domek','','https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=1000',14,'2021-01-10 19:29:51',0),(25,'Teścik','','https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=1000',14,'2021-01-10 19:42:13',0),(26,'Teścik 2','','https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=1000',14,'2021-01-10 19:46:32',0),(27,'Remont','Tu bym sobie opisał zadania remontowe','https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=1000',14,'2021-01-10 19:47:20',0),(28,'Działa?','','https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=1000',14,'2021-01-10 19:53:30',0),(29,'Test ostateczny 666','','https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=1000',24,'2021-01-10 20:01:04',0),(30,'test','','https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=1000',14,'2021-01-10 20:07:45',0),(31,'Proba','','https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=1000',14,'2021-01-10 20:15:24',0),(32,'Próba generalna','opis','https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=1000',14,'2021-01-10 20:15:35',0),(33,'rrr','','https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=1000',14,'2021-01-10 20:40:46',0),(123123,'Test board','desc for test 123123','https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=1000',24,'2021-01-11 17:52:52',0),(141516,'Będzie raban','Opis','https://cf1-taniaksiazka.statiki.pl/images/large/497/45097701473KS.jpg',24,'2021-01-11 21:11:07',0);
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

-- Dump completed on 2021-01-11 21:29:13

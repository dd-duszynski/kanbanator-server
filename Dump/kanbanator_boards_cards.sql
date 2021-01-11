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
-- Table structure for table `boards_cards`
--

DROP TABLE IF EXISTS `boards_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `boards_cards` (
  `card_id` int NOT NULL AUTO_INCREMENT,
  `card_title` varchar(100) NOT NULL,
  `card_description` varchar(600) DEFAULT NULL,
  `card_author` int NOT NULL,
  `card_labels` int DEFAULT NULL,
  `card_related_board` int NOT NULL,
  `card_related_list` int NOT NULL,
  PRIMARY KEY (`card_id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boards_cards`
--

LOCK TABLES `boards_cards` WRITE;
/*!40000 ALTER TABLE `boards_cards` DISABLE KEYS */;
INSERT INTO `boards_cards` VALUES (16,'What top 3 problems do you face ?','Top 3 problems you face',24,0,1,70),(17,'For whom are we creating value?','For whom are we creating value? Who are our most important customers? Target customer?',24,1,1,71),(18,'What unique value do we deliver to the customer?','Single, clear, compelling message that states why you are different and worth buying\nWhich one of our customer’s problems are we helping to solve? What bundles of products and services are we offering to each Customer Segment? Which customer needs are we satisfying?',24,0,1,72),(19,'Top 3 Solutions to your Problems',NULL,24,1,4,75),(20,'Can\'t be easily copied or bought','What are your competitive advantages that mean you can\'t be easily copied or bought?',24,2,4,76),(21,'For what value are our customers really willing to pay?','Revenue model, Life time value revenue...',24,3,4,77),(22,'What are the most important costs inherent in our business model?','Revenue model, Life time value revenue...',24,3,6,80),(23,'Activity that drives retention/revenue',NULL,24,0,6,81),(24,'Through which Channels do our Customer Segments want to be reached?','Path to customers',24,0,6,82),(25,'test task 1','description for test task 1',24,1,7,84),(26,'test task 2','description for test task 2',24,0,7,85),(27,'test task 3','description for test task 3',24,0,7,86),(44,'To działa!','desc for To działa!',24,0,7,86),(45,'Serio!','desc for Serio!',24,0,7,86),(46,'Prev','desc for Prev',24,0,7,86),(47,'card x4','desc for card x2',24,0,7,86),(48,'Działa!','desc for Działa!',24,0,1,71),(49,'Ok','desc for Ok',24,0,1,70),(50,'Patrz na to !','desc for Patrz na to !',24,0,1,71),(51,'Patrz na to !','desc for Patrz na to !',24,0,1,71),(52,'','desc for ',24,0,1,71),(53,'asd','desc for asd',24,0,1,71),(54,'Działa, tylko słabo','desc for Działa, tylko słabo',24,0,1,72),(55,'refresh','desc for refresh',24,0,1,72),(56,'asd','desc for asd',24,0,1,72),(57,'Pamiętaj o tym!','desc for Pamiętaj o tym!',24,0,1,70),(58,'','desc for ',24,0,1,70),(59,'asd','desc for asd',24,0,1,70),(60,'zxc','desc for zxc',24,0,1,70),(61,'asd','desc for asd',24,0,1,72),(62,'Teraz spoko','desc for Teraz spoko',24,4,4,75),(63,'Ok','desc for Ok',24,5,4,76),(64,'Ok','desc for Ok',24,0,1,72),(65,'Działa!','desc for Działa!',24,1,4,77),(66,'Ok','desc for Ok',24,2,4,75),(67,'Ok','desc for Ok',24,0,6,80),(68,'Ola myje zęby','desc for Ola myje zęby',24,0,6,81),(69,'Test','desc for Test',24,0,1,71),(70,'Oki','desc for Oki',24,0,1,87),(71,'Done - działa!','desc for Done - działa!',24,0,1,87),(72,'','desc for ',24,0,7,89),(73,'','desc for ',24,0,7,89),(74,'a','desc for a',24,0,7,89),(75,'2ka działa!','desc for 2ka działa!',24,3,4,92),(76,'1nka działa!','desc for 1nka działa!',24,4,4,91),(77,'Ok','desc for Ok',24,5,4,75),(78,'Ola','desc for Ola',24,0,4,75),(79,'Ola1','desc for Ola1',24,0,4,94),(80,'Test','desc for Test',24,0,4,95),(81,'Test2','desc for Test2',24,0,4,95),(82,'zrób joge','desc for zrób joge',24,0,4,76),(83,'oki','desc for oki',24,0,1,96),(84,'Oki','desc for Oki',24,0,4,76),(85,'To będzie w modalu','desc for To będzie w modalu',24,0,7,85),(86,'Jest git','desc for Jest git',24,0,7,85),(87,'Dupa','desc for Dupa',24,0,7,84),(88,'a','desc for a',24,0,4,76),(89,'s','desc for s',24,0,4,76),(90,'userIdConvertedToNr','desc for userIdConvertedToNr',24,0,4,77),(91,'Dalej działa?','desc for Dalej działa?',24,0,1,96),(92,'Ok','desc for Ok',24,0,7,85),(93,'Test','desc for Test',24,0,4,75),(94,'karta 1','desc for karta 1',14,0,22,108),(95,'karta 2','desc for karta 2',14,0,22,108),(96,'karta ok2_1','desc for karta ok2_1',14,0,22,109),(97,'Oki','desc for Oki',24,0,141516,115);
/*!40000 ALTER TABLE `boards_cards` ENABLE KEYS */;
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

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
-- Table structure for table `templates_cards`
--

DROP TABLE IF EXISTS `templates_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `templates_cards` (
  `card_id` int NOT NULL AUTO_INCREMENT,
  `card_title` varchar(100) NOT NULL,
  `card_description` varchar(600) DEFAULT NULL,
  `card_related_list` int NOT NULL,
  `card_labels` int DEFAULT NULL,
  `card_related_template` varchar(30) NOT NULL,
  PRIMARY KEY (`card_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templates_cards`
--

LOCK TABLES `templates_cards` WRITE;
/*!40000 ALTER TABLE `templates_cards` DISABLE KEYS */;
INSERT INTO `templates_cards` VALUES (16,'What top 3 problems do you face ?','Top 3 problems you face',1,0,'lean-canvas'),(17,'For whom are we creating value?','For whom are we creating value? Who are our most important customers? Target customer?',2,0,'lean-canvas'),(18,'What unique value do we deliver to the customer?','Single, clear, compelling message that states why you are different and worth buying\nWhich one of our customer’s problems are we helping to solve? What bundles of products and services are we offering to each Customer Segment? Which customer needs are we satisfying?',3,0,'lean-canvas'),(19,'Top 3 Solutions to your Problems',NULL,4,0,'lean-canvas'),(20,'Can\'t be easily copied or bought','What are your competitive advantages that mean you can\'t be easily copied or bought?',5,0,'lean-canvas'),(21,'For what value are our customers really willing to pay?','Revenue model, Life time value revenue...',6,0,'lean-canvas'),(22,'What are the most important costs inherent in our business model?','Revenue model, Life time value revenue...',7,0,'lean-canvas'),(23,'Activity that drives retention/revenue',NULL,8,0,'lean-canvas'),(24,'Through which Channels do our Customer Segments want to be reached?','Path to customers',9,0,'lean-canvas');
/*!40000 ALTER TABLE `templates_cards` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-07 19:17:01

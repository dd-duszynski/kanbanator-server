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
-- Table structure for table `lists`
--

DROP TABLE IF EXISTS `lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lists` (
  `list_id` int NOT NULL AUTO_INCREMENT,
  `list_title` varchar(30) NOT NULL,
  `related_board` int NOT NULL,
  `privacy` varchar(30) NOT NULL,
  PRIMARY KEY (`list_id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lists`
--

LOCK TABLES `lists` WRITE;
/*!40000 ALTER TABLE `lists` DISABLE KEYS */;
INSERT INTO `lists` VALUES (1,'1. Problem',1,'private'),(2,'2. Customer Segments',1,'private'),(3,'3. Unique Value Propositions',1,'private'),(4,'4. Solutions',1,'private'),(5,'5. Unfair Advantage',1,'private'),(6,'6. Revenue Streams',1,'private'),(7,'7. Cost Structure',1,'private'),(8,'8. Key Metrics',1,'private'),(9,'9. Channels',1,'private'),(15,'1. Teams',3,'private'),(16,'2. Up Next',3,'private'),(17,'3. Current Projects',3,'private'),(18,'4. Completed Projects',3,'private'),(19,'5. Bravos',3,'private'),(20,'1. Value Propositions',2,'private'),(21,'2. Customer Segments',2,'private'),(22,'3. Channels',2,'private'),(23,'4. Customer Relationships',2,'private'),(24,'5. Revenue Streams',2,'private'),(25,'6. Key Resources',2,'private'),(26,'7. Key Partnerships',2,'private'),(27,'8. Key Activities',2,'private'),(28,'9. Cost Structure',2,'private'),(29,'Goals for the day',6,'private'),(30,'Monday',6,'private'),(31,'Tuesday',6,'private'),(32,'Wednesday',6,'private'),(33,'Thursday',6,'private'),(34,'Friday',6,'private'),(35,'Weekend',6,'private'),(36,'Brainstorm & Research',5,'private'),(37,'Design',5,'private'),(38,'Development',5,'private'),(39,'Testing & Evaluation',5,'private'),(40,'Branding',5,'private'),(41,'Presentation',5,'private'),(42,'To Do',4,'private'),(43,'Doing',4,'private'),(44,'Done',4,'private'),(45,'To Learn',4,'private'),(46,'Learned',4,'private'),(47,'Chest',8,'private'),(48,'Legs',8,'private'),(49,'Back',8,'private'),(50,'Shoulders',8,'private'),(51,'Triceps',8,'private'),(52,'Biceps',8,'private'),(53,'Abs',8,'private'),(54,'HIITS',8,'private'),(55,'**CURRENT WORKOUT**',8,'private'),(56,'OLD WORKOUT',8,'private'),(57,'Inbox/To Do',9,'private'),(58,'Doing',9,'private'),(59,'Ongoing',9,'private'),(60,'Keep An Eye On',9,'private'),(61,'Work/Life Balance',9,'private'),(62,'Done',9,'private'),(63,'Utilities, Phone and Internet',7,'private'),(64,'Loans',7,'private'),(65,'Financed Items',7,'private'),(66,'Subscriptions',7,'private'),(67,'Utilities',7,'private'),(68,'Credit Cards',7,'private'),(69,'Documents',7,'private'),(70,'Backlog',10,'private'),(71,'Preparing Content',10,'private'),(72,'Awaiting Review',10,'private'),(73,'Done, Needs to Be Published',10,'private'),(74,'Published',10,'private'),(75,'Planned',11,'private'),(76,'To Do',11,'private'),(77,'Doing',11,'private'),(78,'Done',11,'private'),(79,'Resources - Important Links',11,'private'),(80,'USEFUL STUFF',12,'private'),(81,'Draft',12,'private'),(82,'PENDING EDITING',12,'private'),(83,'Published',12,'private'),(84,'TO DO',13,'private'),(85,'BLOCKING',13,'private'),(86,'IN PROGRESS',13,'private'),(87,'TESTED IN TEST',13,'private'),(88,'DOCUMENTATION',13,'private'),(89,'TECH DEBT',13,'private'),(90,'DEPRECATED',13,'private'),(91,'Done',14,'private'),(92,'Current Sprint',14,'private'),(93,'In Progress',14,'private'),(94,'On Hold',14,'private'),(95,'Next-up',14,'private'),(96,'Questions',14,'private'),(97,'Marketing Ideas',14,'private'),(98,'Junk Drawer',14,'private'),(99,'Important & urgent',15,'private'),(100,'Important but less urgent',15,'private'),(101,'Urgent but less important',15,'private'),(102,'Not important & not urgent',15,'private'),(103,'Done',15,'private'),(104,'Nielsen\'s Heuristics',16,'private'),(105,'Major Usability Problem',16,'private'),(106,'Minor Usability Problem',16,'private'),(107,'No Usability Problem',16,'private'),(108,'High Concept',17,'private'),(109,'Concept Art',17,'private'),(110,'Game Description',17,'private'),(111,'Gameplay',17,'private'),(112,'Pre-Sprint Prep',18,'private'),(113,'Phase 1: Understand',18,'private'),(114,'Phase 2: Diverge',18,'private'),(115,'Phase 3: Converge',18,'private'),(116,'Phase 4: Prototype',18,'private'),(117,'Phase 5: Test & Learn',18,'private'),(118,'Team Info',19,'private'),(119,'Current Projects',19,'private'),(120,'Completed Projects',19,'private'),(121,'This Week',20,'private'),(122,'Previous Meetings',20,'private'),(123,'January 25th',20,'private'),(124,'January 26th',20,'private'),(125,'Resources',21,'private'),(126,'What problem are we solving?',21,'private'),(127,'Round 1: basic brainstorming',21,'private'),(128,'Familiarity bias',21,'private'),(129,'Self-expression',21,'private'),(130,'Finalists',21,'private');
/*!40000 ALTER TABLE `lists` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-09 17:35:38

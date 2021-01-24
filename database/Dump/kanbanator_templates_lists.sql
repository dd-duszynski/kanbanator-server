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
-- Table structure for table `templates_lists`
--

DROP TABLE IF EXISTS `templates_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `templates_lists` (
  `list_id` int NOT NULL DEFAULT '0',
  `list_title` varchar(30) NOT NULL,
  `list_privacy` varchar(30) NOT NULL,
  `list_related_template` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templates_lists`
--

LOCK TABLES `templates_lists` WRITE;
/*!40000 ALTER TABLE `templates_lists` DISABLE KEYS */;
INSERT INTO `templates_lists` VALUES (1,'1. Problem','private',1),(2,'2. Customer Segments','private',1),(3,'3. Unique Value Propositions','private',1),(4,'4. Solutions','private',1),(5,'5. Unfair Advantage','private',1),(6,'6. Revenue Streams','private',1),(7,'7. Cost Structure','private',1),(8,'8. Key Metrics','private',1),(9,'9. Channels','private',1),(15,'1. Teams','private',3),(16,'2. Up Next','private',3),(17,'3. Current Projects','private',3),(18,'4. Completed Projects','private',3),(19,'5. Bravos','private',3),(20,'1. Value Propositions','private',2),(21,'2. Customer Segments','private',2),(22,'3. Channels','private',2),(23,'4. Customer Relationships','private',2),(24,'5. Revenue Streams','private',2),(25,'6. Key Resources','private',2),(26,'7. Key Partnerships','private',2),(27,'8. Key Activities','private',2),(28,'9. Cost Structure','private',2),(29,'Goals for the day','private',6),(30,'Monday','private',6),(31,'Tuesday','private',6),(32,'Wednesday','private',6),(33,'Thursday','private',6),(34,'Friday','private',6),(35,'Weekend','private',6),(36,'Brainstorm & Research','private',5),(37,'Design','private',5),(38,'Development','private',5),(39,'Testing & Evaluation','private',5),(40,'Branding','private',5),(41,'Presentation','private',5),(42,'To Do','private',4),(43,'Doing','private',4),(44,'Done','private',4),(45,'To Learn','private',4),(46,'Learned','private',4),(47,'Chest','private',8),(48,'Legs','private',8),(49,'Back','private',8),(50,'Shoulders','private',8),(51,'Triceps','private',8),(52,'Biceps','private',8),(53,'Abs','private',8),(54,'HIITS','private',8),(55,'**CURRENT WORKOUT**','private',8),(56,'OLD WORKOUT','private',8),(57,'Inbox/To Do','private',9),(58,'Doing','private',9),(59,'Ongoing','private',9),(60,'Keep An Eye On','private',9),(61,'Work/Life Balance','private',9),(62,'Done','private',9),(63,'Utilities, Phone and Internet','private',7),(64,'Loans','private',7),(65,'Financed Items','private',7),(66,'Subscriptions','private',7),(67,'Utilities','private',7),(68,'Credit Cards','private',7),(69,'Documents','private',7),(70,'Backlog','private',10),(71,'Preparing Content','private',10),(72,'Awaiting Review','private',10),(73,'Done, Needs to Be Published','private',10),(74,'Published','private',10),(75,'Planned','private',11),(76,'To Do','private',11),(77,'Doing','private',11),(78,'Done','private',11),(79,'Resources - Important Links','private',11),(80,'USEFUL STUFF','private',12),(81,'Draft','private',12),(82,'PENDING EDITING','private',12),(83,'Published','private',12),(84,'TO DO','private',13),(85,'BLOCKING','private',13),(86,'IN PROGRESS','private',13),(87,'TESTED IN TEST','private',13),(88,'DOCUMENTATION','private',13),(89,'TECH DEBT','private',13),(90,'DEPRECATED','private',13),(91,'Done','private',14),(92,'Current Sprint','private',14),(93,'In Progress','private',14),(94,'On Hold','private',14),(95,'Next-up','private',14),(96,'Questions','private',14),(97,'Marketing Ideas','private',14),(98,'Junk Drawer','private',14),(99,'Important & urgent','private',15),(100,'Important but less urgent','private',15),(101,'Urgent but less important','private',15),(102,'Not important & not urgent','private',15),(103,'Done','private',15),(104,'Nielsen\'s Heuristics','private',16),(105,'Major Usability Problem','private',16),(106,'Minor Usability Problem','private',16),(107,'No Usability Problem','private',16),(108,'High Concept','private',17),(109,'Concept Art','private',17),(110,'Game Description','private',17),(111,'Gameplay','private',17),(112,'Pre-Sprint Prep','private',18),(113,'Phase 1: Understand','private',18),(114,'Phase 2: Diverge','private',18),(115,'Phase 3: Converge','private',18),(116,'Phase 4: Prototype','private',18),(117,'Phase 5: Test & Learn','private',18),(118,'Team Info','private',19),(119,'Current Projects','private',19),(120,'Completed Projects','private',19),(121,'This Week','private',20),(122,'Previous Meetings','private',20),(123,'January 25th','private',20),(124,'January 26th','private',20),(125,'Resources','private',21),(126,'What problem are we solving?','private',21),(127,'Round 1: basic brainstorming','private',21),(128,'Familiarity bias','private',21),(129,'Self-expression','private',21),(130,'Finalists','private',21);
/*!40000 ALTER TABLE `templates_lists` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-11 21:29:14

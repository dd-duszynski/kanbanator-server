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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (12,'krzys','krzys@op.pl','$2a$12$oVyawhNe8.Up2cyLrPaR/ekMXxDgQ36rrnEZBIoY3AOApB8PPSVS.'),(13,'marcin','marcin@op.pl','$2a$12$G9zTNF3g1DWDTZcdbyv44ef6eK11Nv7fNkPibKEv2I3S3k5g.dAUm'),(14,'ola','ola@op.pl','$2a$12$YCepNkIPbx9mnmnyXynayeRv0d5/f/wsHN94.qeCPsduooaH50uXC'),(24,'damian','damian@op.pl','$2a$12$2e7dLE/f1.QlGRuYTgKRmOH0zcQtDOUfX7oiM5Xa2C.wPKE0BzHXi'),(34,'edyta','edyta@op.pl','$2a$12$NMS/ti81MiVIjt.naNedne3C0MrWgNkwNznnGMhHyMWkSHfRd1oIi'),(35,'Viola','viola@op.pl','$2a$12$UeE8jc5nK1fdqC8ZQLE80u4Va2wqkXd7eCIBPNwrxuhYAkKdQMkJ6'),(36,'aleks','aleks@op.pl','$2a$12$fe3DWeADMgAj6oPXtqGMXORfif9wh3nHY0VXCAywD4qyHFup1U0k2'),(37,'milena','milena@op.pl','$2a$12$98xq9mXMU8BfItt/EsGwq.U8veTT808dJuz2GVtDI5dfK3IwaqlOW'),(38,'Hubert','hubert@op.pl','$2a$12$fqN6PEi3ILzCyQd.HPvTAuVTfTVBgomksoG6FrT3l.WCoVXYuC.0G'),(39,'grzegorz','grzegorz@op.pl','$2a$12$aK7U8a3hVWOXTy4JHaFLp.2ljDzNb.8tZ8F2VYOlbqL.IiLjagP8e'),(40,'Agata','agata@op.pl','$2a$12$kC6o7UtmTR1xz3i4CIJzmOYRok.1fJPpUW.jQhlpZvy8F43HOVZfm'),(41,'Zuzia','zuzia@op.pl','$2a$12$QgR4xBItPTiqrDoWbklvwOtGvxoRlYlBWzgejCqm67mx/hqmUv43C'),(42,'Grazyna','grazyna@op.pl','$2a$12$./E3RQdcNoEl3vel7x792e295oURJ22elVkfT8PxKuZjjE2vDtT5a'),(43,'','@','$2a$12$stuWIf/Fy9kMW/L6T4MQru7smejD9D76/NJOKl5auj.KZiqWZF0hi'),(44,'bozena','bozena@op.pl','$2a$12$UrBJFt9tT/2HAY9xcT4tbeZu4IdxXFslXDimFkQqbm37QyKgrIYS6');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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

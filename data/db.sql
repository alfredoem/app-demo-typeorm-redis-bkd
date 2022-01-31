-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: db_results3
-- ------------------------------------------------------
-- Server version	8.0.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `results`
--

DROP TABLE IF EXISTS `results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `results` (
  `id` int NOT NULL AUTO_INCREMENT,
  `DescripcionExamen` varchar(255) NOT NULL,
  `IdPeticionSistemaExterno` varchar(255) NOT NULL,
  `DNIPaciente` varchar(255) NOT NULL,
  `AmbitoOrigen` varchar(255) NOT NULL,
  `Sede` varchar(255) NOT NULL,
  `CodigoSede` varchar(255) NOT NULL,
  `FechaHoraTomaMuestra` datetime NOT NULL,
  `FechaHoraEnvioSistemaE` datetime NOT NULL,
  `FechaRegistroOrden` datetime NOT NULL,
  `SistemaExterno` varchar(255) NOT NULL,
  `Resultado` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `results`
--

LOCK TABLES `results` WRITE;
/*!40000 ALTER TABLE `results` DISABLE KEYS */;
INSERT INTO `results` VALUES (1,'01','test','12316049','test','test','test','2021-10-10 19:00:00','2021-10-10 19:00:00','2021-10-10 19:00:00','test','test'),(2,'02','test','12316049','test','test','test','2021-10-10 19:00:00','2021-10-10 19:00:00','2021-10-10 19:00:00','test','test'),(3,'03','test','12316049','test','test','test','2021-10-10 19:00:00','2021-10-10 19:00:00','2021-10-10 19:00:00','test','test'),(4,'04','test','12316049','test','test','test','2021-10-10 19:00:00','2021-10-10 19:00:00','2021-10-10 19:00:00','test','test'),(5,'05','test','12316049','test','test','test','2021-10-10 19:00:00','2021-10-10 19:00:00','2021-10-10 19:00:00','test','test'),(6,'06','test','12316049','test','test','test','2021-10-10 19:00:00','2021-10-10 19:00:00','2021-10-10 19:00:00','test','test'),(7,'07','test','12316049','test','test','test','2021-10-10 19:00:00','2021-10-10 19:00:00','2021-10-10 19:00:00','test','test'),(8,'08','test','12316049','test','test','test','2021-10-10 19:00:00','2021-10-10 19:00:00','2021-10-10 19:00:00','test','test'),(9,'09','test','12316049','test','test','test','2021-10-10 19:00:00','2021-10-10 19:00:00','2021-10-10 19:00:00','test','test'),(10,'10','test','12316049','test','test','test','2021-10-10 19:00:00','2021-10-10 19:00:00','2021-10-10 19:00:00','test','test'),(11,'11','test','12316049','test','test','test','2021-10-10 19:00:00','2021-10-10 19:00:00','2021-10-10 19:00:00','test','test'),(12,'12','test','12316049','test','test','test','2021-10-10 19:00:00','2021-10-10 19:00:00','2021-10-10 19:00:00','test','test'),(13,'13','test','12316049','test','test','test','2021-10-10 19:00:00','2021-10-10 19:00:00','2021-10-10 19:00:00','test','test'),(14,'14','test','12316049','test','test','test','2021-10-10 19:00:00','2021-10-10 19:00:00','2021-10-10 19:00:00','test','test'),(15,'15','test','12316049','test','test','test','2021-10-10 19:00:00','2021-10-10 19:00:00','2021-10-10 19:00:00','test','test'),(16,'16','test','12316049','test','test','test','2021-10-10 19:00:00','2021-10-10 19:00:00','2021-10-10 19:00:00','test','test'),(17,'17','test','12316049','test','test','test','2021-10-10 19:00:00','2021-10-10 19:00:00','2021-10-10 19:00:00','test','test'),(18,'18','test','12316049','test','test','test','2021-10-10 19:00:00','2021-10-10 19:00:00','2021-10-10 19:00:00','test','test'),(19,'19','test','12316049','test','test','test','2021-10-10 19:00:00','2021-10-10 19:00:00','2021-10-10 19:00:00','test','test'),(20,'20','test','12316049','test','test','test','2021-10-10 19:00:00','2021-10-10 19:00:00','2021-10-10 19:00:00','test','test'),(21,'21','test','12316049','test','test','test','2021-10-10 19:00:00','2021-10-10 19:00:00','2021-10-10 19:00:00','test','test'),(22,'22','test','12316049','test','test','test','2021-10-10 19:00:00','2021-10-10 19:00:00','2021-10-10 19:00:00','test','test'),(23,'23','test','12316049','test','test','test','2021-10-10 19:00:00','2021-10-10 19:00:00','2021-10-10 19:00:00','test','test'),(24,'24','test','12316049','test','test','test','2021-10-10 19:00:00','2021-10-10 19:00:00','2021-10-10 19:00:00','test','test'),(25,'25','test','12316049','test','test','test','2021-10-10 19:00:00','2021-10-10 19:00:00','2021-10-10 19:00:00','test','test'),(26,'26','test','12316049','test','test','test','2021-10-10 19:00:00','2021-10-10 19:00:00','2021-10-10 19:00:00','test','test'),(27,'27','test','12316049','test','test','test','2021-10-10 19:00:00','2021-10-10 19:00:00','2021-10-10 19:00:00','test','test'),(28,'28','test','12316049','test','test','test','2021-10-10 19:00:00','2021-10-10 19:00:00','2021-10-10 19:00:00','test','test'),(29,'29','test','12316049','test','test','test','2021-10-10 19:00:00','2021-10-10 19:00:00','2021-10-10 19:00:00','test','test'),(30,'30','test','12316049','test','test','test','2021-10-10 19:00:00','2021-10-10 19:00:00','2021-10-10 19:00:00','test','test'),(31,'31','test','12316049','test','test','test','2021-10-10 19:00:00','2021-10-10 19:00:00','2021-10-10 19:00:00','test','test'),(32,'32','test','12316049','test','test','test','2021-10-10 19:00:00','2021-10-10 19:00:00','2021-10-10 19:00:00','test','test'),(33,'33','test','12316049','test','test','test','2021-10-10 19:00:00','2021-10-10 19:00:00','2021-10-10 19:00:00','test','test'),(34,'34','test','12316049','test','test','test','2021-10-10 19:00:00','2021-10-10 19:00:00','2021-10-10 19:00:00','test','test');
/*!40000 ALTER TABLE `results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_results3'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-31 15:46:13

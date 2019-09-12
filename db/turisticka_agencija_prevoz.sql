CREATE DATABASE  IF NOT EXISTS `turisticka_agencija` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `turisticka_agencija`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: turisticka_agencija
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `prevoz`
--

DROP TABLE IF EXISTS `prevoz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `prevoz` (
  `pre_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pre_tip` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `pre_cena` double DEFAULT NULL,
  `mes_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prevoz`
--

LOCK TABLES `prevoz` WRITE;
/*!40000 ALTER TABLE `prevoz` DISABLE KEYS */;
INSERT INTO `prevoz` VALUES (1,'Autobus',1200,1),(2,'Bez prevoza',0,1),(3,'Autobus',1300,2),(4,'Bez prevoza ',0,2),(5,'Autobus',1350,3),(6,'Bez prevoza ',0,3),(7,'Autobus ',1400,4),(8,'Bez prevoza ',0,4),(9,'Avion',3000,5),(10,'Autobus',2000,5),(11,'Bez prevoza ',0,5),(12,'Avion',3500,6),(13,'Autobus',2500,6),(14,'Bez prevoza',0,6),(15,'Avion',4000,7),(16,'Autobus',3000,7),(17,'Bez prevoza',0,7),(18,'Avion',4500,8),(19,'Autobus',3500,8),(20,'Bez prevoza',0,8),(21,'Avion',5500,9),(22,'Autobus',4500,9),(23,'Bez prevoza',0,9),(24,'Avion',6000,10),(25,'Autobus',5000,10),(26,'Bez prevoza',0,10),(27,'Avion',6500,11),(28,'Autobus',5500,11),(29,'Bez prevoza ',0,11),(30,'Avion',7000,12),(31,'Autobus',6000,12),(32,'Bez prevoza ',0,12);
/*!40000 ALTER TABLE `prevoz` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-12 22:40:09

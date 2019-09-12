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
-- Table structure for table `arazman`
--

DROP TABLE IF EXISTS `arazman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `arazman` (
  `araz_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pre_id` int(10) unsigned DEFAULT NULL,
  `araz_cena` int(11) DEFAULT NULL,
  `araz_datum_od` date DEFAULT NULL,
  `araz_datum_do` date DEFAULT NULL,
  `araz_br_osoba` int(11) DEFAULT NULL,
  `sobe_id` int(10) unsigned DEFAULT NULL,
  `kor_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`araz_id`),
  KEY `fk_arazman_prevoz1_idx` (`pre_id`) /*!80000 INVISIBLE */,
  KEY `fk_arazman_sobe1_idx` (`sobe_id`) /*!80000 INVISIBLE */,
  KEY `bla` (`kor_id`),
  CONSTRAINT `fk_arazman_korisnici1` FOREIGN KEY (`kor_id`) REFERENCES `korisnici` (`kor_id`),
  CONSTRAINT `fk_arazman_prevoz1` FOREIGN KEY (`pre_id`) REFERENCES `prevoz` (`pre_id`),
  CONSTRAINT `fk_arazman_sobe1` FOREIGN KEY (`sobe_id`) REFERENCES `sobe` (`sobe_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arazman`
--

LOCK TABLES `arazman` WRITE;
/*!40000 ALTER TABLE `arazman` DISABLE KEYS */;
INSERT INTO `arazman` VALUES (4,7,15900,'2019-09-10','2019-09-20',2,14,1),(6,21,48000,'2019-09-09','2019-09-19',2,34,1),(7,22,47000,'2019-09-27','2019-10-07',2,34,6),(8,12,42500,'2019-09-26','2019-10-11',4,22,7),(9,24,27000,'2019-09-27','2019-10-02',2,37,6);
/*!40000 ALTER TABLE `arazman` ENABLE KEYS */;
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

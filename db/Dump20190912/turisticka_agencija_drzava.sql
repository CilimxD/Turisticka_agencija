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
-- Table structure for table `drzava`
--

DROP TABLE IF EXISTS `drzava`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `drzava` (
  `drz_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `drz_naziv` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `drz_opis` varchar(10000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `drz_jpg` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`drz_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drzava`
--

LOCK TABLES `drzava` WRITE;
/*!40000 ALTER TABLE `drzava` DISABLE KEYS */;
INSERT INTO `drzava` VALUES (1,'Srbija','Srbija, zvanično Republika Srbija, suverena je država koja se nalazi na raskrsnici puteva srednje i jugoistočne Evrope u južnom delu Panonske nizije i centru Balkanskog poluostrva. Većim delom zahvata Balkansko poluostrvo, a manjim Panonsku niziju. Srbija se na severu graniči sa Mađarskom, na severoistoku sa Rumunijom, na istoku sa Bugarskom, na jugu sa Severnom Makedonijom, na jugozapadu sa Albanijom i Crnom Gorom, a na zapadu sa Hrvatskom i Bosnom i Hercegovinom (entitetom Republika Srpska). Srbija bez Kosova i Metohije broji oko 7 miliona stanovnika, dok sa Kosmetom broji oko 8,8 miliona stanovnika. Glavni grad je Beograd, koji spada među najstarije i najveće gradove u jugoistočnoj Evropi. Sa 1.659.440 stanovnika u široj okolini, po popisu iz 2011. godine, on je administrativno i ekonomsko središte države. Zvanični jezik je srpski, a zvanična valuta je srpski dinar.','srbija'),(2,'Grcka','Grčka zvanično Republika Grčka , država je na krajnjem jugoistoku Evrope, na jugu Balkanskog poluostrva. Smeštena je na strateški veoma važnom raskršću između Evrope, Bliskog istoka i severne Afrike, između Egejskog mora na istoku, Jonskog mora na zapadu i Sredozemnog mora na jugu. Graniči se sa Albanijom na severozapadu, Severnom Makedonijom i Bugarskom na severu i Turskom na severoistoku. Sa površinom od nešto manje od 132.000 km² najveća je država na Balkanskom poluostrvu i na 97. mestu je u svetu. Pored kontinentalnog dela Grčka obuhvata i preko 1.400 ostrva od kojih su najveća i najznačajnija Krit, Evbeja, Lezbos, Rodos i Krf. Obala je jako razuđena i sa dužinom od 13.676 km Grčka je na 11. mestu u svetu. Reljef je uglavnom planinski, a najviši vrh je planina Olimp sa nadmorskom visinom od 2.917 m.','grcka'),(3,'Turska','Španija zvanično Kraljevina Španija, je južnoevropska država, smeštena na jugozapadu kontinenta na Pirinejskom poluostrvu i nekoliko susednih arhipelaga i enklava. Graniči se sa Portugalijom na zapadu i Francuskom i Andorom na severoistoku. Izlazi na Sredozemno more na jugu i istoku i Atlantski okean na severu i severozapadu, evropski deo Gibraltara graniči s Španijom. Glavni grad je Madrid. U sastavu Španije se takođe nalaze i dva arhipelaga: Balearska ostrva u Sredozemnom moru i Kanarska ostrva u Atlantskom okeanu. Seuta i Melilja (dve enklave na severu afričkog kontinenta sa statusom autonomnih gradova), kao i Livija (enklava u francuskim Pirinejima), takođe pripadaju španskoj državi.','turska');
/*!40000 ALTER TABLE `drzava` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-12 22:40:10

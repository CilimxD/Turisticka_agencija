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
-- Table structure for table `smestaj`
--

DROP TABLE IF EXISTS `smestaj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `smestaj` (
  `sme_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sme_zvezdive` int(11) DEFAULT NULL,
  `sme_naziv` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sme_tip_sobe` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sme_bazen` varchar(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sme_broj` int(10) DEFAULT NULL,
  `tip_sme_id` int(10) unsigned DEFAULT NULL,
  `mes_id` int(10) unsigned DEFAULT NULL,
  `sme_opis` varchar(10000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sme_slika` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`sme_id`),
  KEY `fk_smestaj_tip_smestaja1_idx` (`tip_sme_id`),
  KEY `fk_smestaj_mesta1_idx` (`mes_id`),
  CONSTRAINT `fk_smestaj_mesta1` FOREIGN KEY (`mes_id`) REFERENCES `mesta` (`mes_id`),
  CONSTRAINT `fk_smestaj_tip_smestaja1` FOREIGN KEY (`tip_sme_id`) REFERENCES `tip_smestaja` (`tip_sme_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smestaj`
--

LOCK TABLES `smestaj` WRITE;
/*!40000 ALTER TABLE `smestaj` DISABLE KEYS */;
INSERT INTO `smestaj` VALUES (1,3,'Putnik','soba','da',2,2,1,'Hotel Putnik je smešten na 1.650 metara nadmorske visine u Nacionalnom parku Kopaonik, na 15 minuta hoda od centra zimovališta i ski liftova. Nudi školu skijanja, uslugu iznajmljivanja ski opreme i ostavu za ski opremu.Sobe hotela Putnik Kopaonik imaju velike prozore sa panoramskim pogledom na Sunčanu dolinu. Sadrže TV sa satelitskim kanalima, sef za laptop i radni sto. U sobama je obezbeđen besplatan bežični internet.','putnik'),(2,4,'Foka Spa','duplex apartman','da',2,1,1,'Jedan od najtraženijih objekata na destinaciji Kopaonik.','foka_spa'),(3,0,'Janus','apartman','ne',2,1,2,'Vila Janus se nalazi na svega 450 m od specijalne bolnice Ribarska Banja. Ovo je novoizgrađeni objekat sa restoranom otvorenog tipa. ','janus'),(4,2,'Di Lusso','soba','ne',2,2,2,'Vila Di Lusso je smeštaj hotelskog tipa na samo 300 metara od Specijane bolnice u Rbarskoj Banji.','di_lusso'),(5,4,'Hotel Stara Planina','soba','da',2,2,3,'Hotel i spa Stara Planina nalazi se pored samog ski lifta, što omogućava direktan prilaz ski stazama. Otvoren je 2012. godine i raspolaže impresivnim velnes sadržajima, kao što su hidromasažne kade, teretana i bazen.','hotel_stara_planina'),(6,4,'Hotel Ana Lux','soba','da',2,2,3,'Jedan od najtraženijih objekata na destinaciji Pirot.','hotel_ana_lux'),(7,3,'Mlavske Terme Ždrelo','soba','da',2,2,4,'Hotel Mlavske Terme Ždrelo nalazi se u Ždrelu, a u ponudi ima raznovrsne sadržaje za sportove na vodi. Ovaj hotel sa 3 zvezdice poseduje besplatan bežični internet, kazino i besplatne bicikle.','mlavske_terme'),(8,0,'Novapark','apartman','ne',2,1,4,'bjekat Novapark nalazi se u mestu Šetonje, a u ponudi ima smeštajne jedinice sa besplatnim WiFi internetom.','novapark'),(9,3,'Perama ','soba','da',2,2,5,'Hotel Perama nalazi se u mestu Perama, na samoj plaži. Udaljen je 7 km od centra grada Krfa, 6 km od aerodroma i 4 km od malog ribarskog mesta Benitses.','perama'),(10,0,'Platania','apartman','ne',2,1,5,'Nalazi se na oko 5-7 minuta hoda od plaže i oko 600 metara od centra Dasije.','platania'),(11,0,'Vila Koula','apartman','ne',2,1,6,'Vila Koula se nalazi u centru letovališta Potos, na oko 150 metara udaljenosti od plaže.Vila Koula je odlično pozicionirana u mirnijem delu centra mesta.','koula'),(12,0,'Vila Dukas','duplex apartman','ne',2,1,6,'Nalazi se na oko 300 metara od mora i na oko 200 metara od centra Potosa.Vila Dukas se nalazi u mirnom delu Potosa, okružena zelenilom i smeštena u prostranom dvorištu sa privatnim parkingom i prostorom za igru dece.','dukas'),(13,0,'Vila Vasilis','apartman','ne',2,1,7,'Vila Vasilis se nalazi na oko 300m od centra, na oko 70m od mora, i na oko 300m od plaže.','vasilis'),(14,0,'Vila Cosmos','apartman','ne',2,1,7,'Vila Cosmos se nalazi u centru Nidrija i na oko 100m od plaže.','cosmos'),(15,0,'Socrates vila','apartman','ne',2,1,8,'Vila Socrates se nalazi u mirnom delu Laganasa, na oko 100m udaljenosti od duge peščane plaže i oko 350m od glavne ulice. ','socrates'),(16,0,'Mari vila','apartman','ne',2,1,8,'Vila Mari se nalazi u mirnom delu Laganasa, na oko 50 metara udaljenosti od duge peščane plaže i oko 200m od glavne ulice.','mari'),(17,3,'Amos Hotel','soba','da',2,2,9,'hotel Amos - od plaže ga deli šetalište, 3 km od centra grada, 100 km od aerodroma Dalaman. Hotel ima 51 sobu.','amos'),(18,4,'Sesin Hotel','soba','da',2,2,9,'Od centra Marmarisa je udaljen 1 km dok je od privatne plaže daleko 100 m. Sagrađen je 1989. godine, renoviran 2014. godine i prostire se na površini od 2150 m2.','sesin'),(19,4,'Galaxy Beach hotel','soba','da',2,2,10,' Galaxy Beach Hotel se nalazi u regiji Mahmutlar. Udaljen je cca. 14 km od centra Alanje i cca. 135 km od aerodroma u Antaliji.','galaxy'),(20,5,'Miracle Resort ','soba','da',2,2,10,'Miracle Resort Hotel se nalazi u regiji Lara. Udaljen je oko 11 km od centra Antalije i oko 12 km od od aerodroma Antalija.','miracle_resort'),(21,5,'Mandarin Resort','soba','da',2,2,11,'Udaljen je 200 m od plaže i Bodruma, a od aerodroma 35 km.','mandarin_resort'),(22,5,'Royal Asarlik Beach Hotel','soba','da',2,2,11,'Hotel se nalazi 200 m od centra mesta Gumbet, 3 km od centra grada Bodrum, 35 km od aerodroma.','royal_asarlik'),(23,0,'Hotel Sahinler','soba','da',2,2,12,'Hotel se nalazi u starom delu grada (oblast Laleli) i na oko 2-3 kim od svih većih znamenitosti. Hotel ima restoran i bar. Svaka soba poseduje kupatilo (tuš/WC), TV, telefon, klima uređaj, minibar.','sahinler');
/*!40000 ALTER TABLE `smestaj` ENABLE KEYS */;
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

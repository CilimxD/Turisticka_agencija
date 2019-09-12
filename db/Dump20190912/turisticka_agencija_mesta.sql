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
-- Table structure for table `mesta`
--

DROP TABLE IF EXISTS `mesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mesta` (
  `mes_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mes_lokacija` varchar(55) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `mes_opis` varchar(10000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `mes_slika` varchar(55) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `drz_id` int(10) unsigned DEFAULT NULL,
  `mes_kraopis` varchar(10000) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`mes_id`),
  KEY `fk_mesta_gradovi1_idx` (`drz_id`),
  CONSTRAINT `fk_mesta_gradovi1` FOREIGN KEY (`drz_id`) REFERENCES `drzava` (`drz_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mesta`
--

LOCK TABLES `mesta` WRITE;
/*!40000 ALTER TABLE `mesta` DISABLE KEYS */;
INSERT INTO `mesta` VALUES (1,'Kopaonik','Kopaonik (poznat i kao Srebrna planina) je najveći planinski masiv u Srbiji koji se pruža od severozapada ka jugoistoku dužinom od oko 75 km, dosežući u srednjem delu širinu od oko 40 km. Jedan njegov deo je zaštićena zona pod imenom nacionalni park Kopaonik u okviru koga postoji veći broj zaštićenih prirodnih celina, a na njemu se nalazi i najveći skijaški centar u Srbiji. Njegov najviši vrh je Pančićev vrh sa 2017 m nmv. na kome se nalazi mauzolej čuvenog srpskog prirodnjaka po kome je dobio ime, oko koga se nalazi baza vojske Srbije','kopaonik1',1,'Kopaonik (poznat i kao Srebrna planina) je najveći planinski masiv u Srbiji koji se pruža od severozapada  ka jugoistoku dužinom od oko 75 km'),(2,'Ribarska banja','Ribarska Banja je naseljeno mesto grada Kruševca u Rasinskom okrugu. Prema popisu iz 2011. godine bilo je 189 stanovnika a 2002. bilo je 277 stanovnika (prema popisu iz 1991. bilo je 245 stanovnika).','ribarska',1,'Ribarska Banja je naseljeno mesto grada Kruševca u Rasinskom okrugu. Prema popisu iz 2011. godine bilo je 189 stanovnika a 2002. bilo je 277 stanovnika'),(3,'Stara Planina','Stara planina, ili Balkan planina ili Ćiprovački Balkan ili po Turcima Kodža Balkan ili samo Balkan, pripada sistemu Balkanskih planina koje se pružaju od Crnog mora na istoku, pa sve do Vrške čuke na zapadu. Dužina ovog planinskog sistema iznosi 530 km. Najviša tačka Stare planine je vrh Botev (2376 m).Ova planina predstavlja deo prostranog planinskog venca koji se naziva Karpatsko – balkanski planinski luk. U Srbiji se nalazi samo njegov manji zapadni deo. Celu teritoriju Stare planine i njeno podgorje sastavlja Torlak a istočna polovina se naziva Visok (pre Visočki srez).','stara_planina1',1,'Stara planina, ili Balkan planina ili Ćiprovački Balkan ili po Turcima Kodža Balkan ili samo Balkan, pripada sistemu Balkanskih planina '),(4,'Ždrelo banja','Ždrelo je naselje u Srbiji u opštini Petrovac na Mlavi u Braničevskom okrugu. Prema popisu iz 2011. bilo je 618 stanovnika. Nedaleko od sela se nalaze ostaci tvrđave po kojoj je nazvano.','zdrelo_banja',1,'Ždrelo je naselje u Srbiji u opštini Petrovac na Mlavi u Braničevskom okrugu. Prema popisu iz 2011. bilo je 618 stanovnika.'),(5,'Krf','Krf (grč. Κέρκυρα [Kérkyra] — Kerkira, antgrč. Κόρκυρα [Kórkyra] — Korkira), drugo po veličini, od sedam većih Jonskih ostrva, a ujedno i jedno od najlepših grčkih ostrva. Krf leži u Jonskom moru, koje je deo Sredozemnog mora, a sjeverno se spaja sa Jadranskim. Takvim položajem obezbjeđuje sebi mjesto najsjevernijeg značajnijeg ostrva Grčke.','krf',2,'Krf drugo po veličini, od sedam većih Jonskih ostrva, a ujedno i jedno od najlepših grčkih ostrva. Krf leži u Jonskom moru i jedno od lepših grčkih ostrva'),(6,'Tasos','Tasos (grč. Θάσος [Thásos]) je grčko ostrvo koje se nalazi u sjevernim Egejima, tj. sjeveroistočnom dijelu Grčke. Ostrvo čini istoimeni okrug sastavljen od jedne opštine u okviru periferije Istočna Makedonija i Trakija. Glavno mesto na ostrvu i upravo središte okruga Tasos je gradić Limenas (Tasos)','tasos',2,'Tasos  je grčko ostrvo koje se nalazi u sjevernim Egejima, tj. sjeveroistočnom dijelu Grčke. Ostrvo čini istoimeni okrug'),(7,'Lefkada','Lefkada (grč. Λευκάδα [Lefkáda]; antgrč. Λευκάς [Leukás — Leukas, moderno Lefkás — Lefkas]), je grčko ostrvo koje pripada grupi Jonskih ostrva. U upravnoj podeli grčke Lefkada je zajedno sa nekoliko manjih okolnih ostrva čini okrug Lefkadu. Najvažnije i najveće mesto je istoimeni grad Lefkada.','lefkada',2,'Lefkada  je grčko ostrvo koje pripada grupi Jonskih ostrva. U upravnoj podeli grčke Lefkada je zajedno sa nekoliko okolnih ostrva čini okrug Lefkadu'),(8,'Zakintos','Zakintos ili Zante (grč. Ζάκυνθος, eng. Zante, ital. Zacinto ), treće po veličini, od sedam većih jonskih ostrva, a ujedno i jedno od najlepših grčkih ostrva. Zakintos leži u južnom delu Jonskog mora, koje je deo Sredozemnog mora. Ostrvo sa nekoliko susednih malih ostrva čini prefekturu Zakintos, a glavno naselje na ostrvu, istoimeni grad Zakintos, je njeno upravno središte.','zakintos',2,'Zakintos treće po veličini, od sedam većih jonskih ostrva, a ujedno i jedno od najlepših grčkih ostrva, leži u južnom delu Jonskog mora'),(9,'Marmaris','U Marmarisu vlada sredozemna klima, koju odlikuju topla i vlažna leta i hladne i kišne zime. Padavine su retke između maja i oktobra. Leta su topla i vlažna, a temperature može da dostigne preko 40 °C nekad u toku jula i avgusta. Oktobar je još uvek topao i svetao, mada sa kratkotrajnim pojavama kiše. Mnogi turisti žele da posete Marmaris početkom jeseni, naročito u septembru, jer temperature tada nisu visoke.','marmaris',3,'U Marmarisu vlada sredozemna klima, koju odlikuju topla i vlažna leta i hladne i kišne zime. Padavine su retke između maja i oktobra. Leta su topla i vlažna'),(10,'Antalija','Antalija (tur. Antalya, grč. Αττάλεια) je grad u Turskoj u vilajetu Antalija. Nalazi se na mediteranskoj obali. To je glavni grad plodne primorske ravnice na jugozapadu Male Azije. Danas je ovo područje zbog bogate i organizovane turističke ponude poznato kao „Turska rivijera“. Prema proceni iz 2010. u gradu je živelo 1.001.318 stanovnika.','antalija',3,'Antalija je grad u Turskoj u vilajetu Antalija. Nalazi se na mediteranskoj obali. To je glavni grad plodne primorske ravnice'),(11,'Bodrum','Bodrum (tur. Bodrum) je popularno tursko letovalište na obali Egejskog mora i luka u provinciji Mugla. U antičkoj Grčkoj je bio poznat kao Halikarnas (antgrč. Αλικαρνασσός), a u srednjem veku kao Petronium. Nalazi se na poluostrvu Bodrum, u blizini severozapadnog ulaza u zaliv Gekova, nasuprot grčkog ostrva Kos. Danas je poznati turistički i jahting centar. Nekadašnji Halikarnas je bio poznat po mauzoleju kralja Mauzola.','bodrum',3,'Bodrum  je popularno tursko letovalište na obali Egejskog mora i luka u provinciji Mugla. U antičkoj Grčkoj je bio poznat kao Halikarnas'),(12,'Instabul','Istanbul (tur. İstanbul [isˈtɑnbuɫ]), kroz istoriju poznat kao Vizantion, Konstantinopolj i Carigrad, najnaseljeniji je grad u Turskoj Republici i privredno, kulturno i istorijsko središte zemlje. Istanbul je transkontinentalni grad u Evroaziji, smješten na Bosforskom moreuzu (koji razdvaja Evropu i Aziju) između Mramornog i Crnog mora. Privredno i istorijsko središte leži u evropskom dijelu, dok na azijskoj strani živi oko trećine stanovništva grada.','instabul',3,'Istanbul kroz istoriju poznat kao Konstantinopolj i Carigrad, najnaseljeniji je grad u Turskoj Republici i privredno, kulturno i istorijsko središte zemlje');
/*!40000 ALTER TABLE `mesta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-12 22:40:08

-- MySQL dump 10.13  Distrib 8.0.21, for Linux (x86_64)
--
-- Host: localhost    Database: disku_golfs
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `disku_golfs`
--

/*!40000 DROP DATABASE IF EXISTS `disku_golfs`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `disku_golfs` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `disku_golfs`;

--
-- Table structure for table `Grozs`
--

DROP TABLE IF EXISTS `Grozs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Grozs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `soda_punkti` int DEFAULT NULL,
  `maksimalais_metienu_skaits` int DEFAULT NULL,
  `attalums_lidz_grozam` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=421 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Grozs`
--

LOCK TABLES `Grozs` WRITE;
/*!40000 ALTER TABLE `Grozs` DISABLE KEYS */;
INSERT INTO `Grozs` VALUES (1,1,3,167),(2,2,4,110),(3,1,1,180),(4,1,1,132),(5,1,1,249),(6,1,3,219),(7,2,3,100),(8,1,3,162),(9,1,4,73),(10,2,4,197),(11,1,1,139),(12,2,3,233),(13,2,4,118),(14,1,4,211),(15,2,4,71),(16,1,2,233),(17,1,4,134),(18,2,2,103),(19,2,4,240),(20,2,1,73),(21,1,3,155),(22,1,3,116),(23,1,2,246),(24,1,1,63),(25,1,1,86),(26,1,2,184),(27,2,2,220),(28,1,4,108),(29,1,4,203),(30,2,4,61),(31,2,1,208),(32,2,2,227),(33,2,3,69),(34,1,2,176),(35,2,3,235),(36,2,4,206),(37,1,4,75),(38,2,4,79),(39,2,2,109),(40,1,3,61),(41,1,3,107),(42,1,1,104),(43,1,2,141),(44,1,3,140),(45,1,2,219),(46,1,4,237),(47,1,4,89),(48,1,1,241),(49,2,2,121),(50,2,2,203),(51,2,3,212),(52,1,4,201),(53,2,2,119),(54,2,4,123),(55,1,4,200),(56,1,3,189),(57,2,2,96),(58,1,4,235),(59,1,3,66),(60,1,2,135),(61,1,1,229),(62,2,4,111),(63,2,2,187),(64,2,2,165),(65,2,1,201),(66,1,2,73),(67,2,1,83),(68,1,1,134),(69,1,3,175),(70,1,2,221),(71,1,4,140),(72,1,3,167),(73,1,1,167),(74,1,3,86),(75,1,4,247),(76,1,3,156),(77,2,3,173),(78,2,3,146),(79,1,2,151),(80,2,1,68),(81,1,3,209),(82,2,3,212),(83,2,2,184),(84,2,1,223),(85,1,1,124),(86,2,1,82),(87,2,2,169),(88,1,1,158),(89,2,1,224),(90,1,4,207),(91,2,1,115),(92,2,4,84),(93,2,1,205),(94,2,2,144),(95,2,2,235),(96,2,4,114),(97,1,2,186),(98,1,2,149),(99,2,1,127),(100,2,3,130),(101,2,4,206),(102,1,2,203),(103,1,4,148),(104,1,1,71),(105,2,1,233);
/*!40000 ALTER TABLE `Grozs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Parks`
--

DROP TABLE IF EXISTS `Parks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Parks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `adrese` varchar(200) DEFAULT NULL,
  `telefona_numurs` varchar(15) DEFAULT NULL,
  `apraksts` text,
  `darba_laiks_sakums` time DEFAULT NULL,
  `nosaukums` varchar(100) NOT NULL,
  `darba_laiks_beigas` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Parks`
--

LOCK TABLES `Parks` WRITE;
/*!40000 ALTER TABLE `Parks` DISABLE KEYS */;
INSERT INTO `Parks` VALUES (1,'Jaunatnes iela 7, Talsi LV-3201, Latvija','+37126132666','Disku golfa parks, iespēja izīrēt diskus.','09:00:00','9Hill - Devinkalnu Disku Golfa Parks','20:00:00'),(2,'Staru atputas komplekss, Dauksti,  LV-4429, Latvija','+37129352338','Disku Golfa Parks \"Stari\" ir 19 celiņu disku golfa laukums ar dabīgi skaistu reljefu. šeit būs interesanti gan profesionāļiem,gan iesācējiem.','08:00:00','Disku golfa parks \'Stari\'','21:00:00'),(3,'Perkones iela 32, Liepaja LV-3401, Latvija','+37122019491','Aktīvās atpūtas vieta ar dažādām aktivitātēm – disku golfs, batuti, galda spēles u.c. aktivitātes ģimenēm.','08:00:00','Atputas parks Perkone','20:00:00'),(4,'Jelgavas novads, Vilces pagasts, Madaru iela 4, LV-3026, Latvija','+37126216869','Laukums izveidots Ielejā pie Vilces muižas ēkas. Reljefs - līdzens. Starta laukumiņu nav, metiena vieta atzīmēta ar dēlīti. Uzstādīta saprotama DiscGolfPark norāžu sistēma un DiscGolfPark grozi. Pieejams vienmēr. Bez maksas.','00:00:00','DiscGolfPark Vilce','24:00:00'),(5,'UFOGOLF, Mežaparks, Rīga, LV-1034','+37127006118','Kārtīgs iesācēju laukums, kurā varēs apgūt dažādus metiena veidus un dažādus noteikumu līkločus. ','12:00:00','UFOGOLF mazais laukums','20:00:00'),(6,'Palasta iela, Cesis, LV-4101','+37129393403','9 grozi. laukums pieejams 24/7, disku noma iepriekš sazinoties, vai Cēsu golfa kluba nomas punktā pie parka.','00:00:00','KANEs Disku golfa parks Cēsis','24:00:00');
/*!40000 ALTER TABLE `Parks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Rezultats`
--

DROP TABLE IF EXISTS `Rezultats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Rezultats` (
  `id` int NOT NULL AUTO_INCREMENT,
  `metieni` int DEFAULT NULL,
  `trase_grozs_FK` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Rezultats_FK` (`trase_grozs_FK`),
  CONSTRAINT `Rezultats_FK` FOREIGN KEY (`trase_grozs_FK`) REFERENCES `TraseGrozs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Rezultats`
--

LOCK TABLES `Rezultats` WRITE;
/*!40000 ALTER TABLE `Rezultats` DISABLE KEYS */;
/*!40000 ALTER TABLE `Rezultats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Speletajs`
--

DROP TABLE IF EXISTS `Speletajs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Speletajs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `vards` varchar(60) DEFAULT NULL,
  `uzvards` varchar(60) DEFAULT NULL,
  `dzimsanas_dati` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Speletajs`
--

LOCK TABLES `Speletajs` WRITE;
/*!40000 ALTER TABLE `Speletajs` DISABLE KEYS */;
INSERT INTO `Speletajs` VALUES (4,'Arina','Solovjova','2020-01-01'),(5,'Elza','Rozenberga','1865-03-16'),(6,'Janis','Plieksans','1865-09-11'),(7,'Paul','McBeth','1990-07-09'),(8,'Avery','Jenkins','1978-07-24'),(9,'Valarie','Jenkins','1986-05-06');
/*!40000 ALTER TABLE `Speletajs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Trase`
--

DROP TABLE IF EXISTS `Trase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Trase` (
  `id` int NOT NULL AUTO_INCREMENT,
  `laiks_trases_iziesanai` time DEFAULT NULL,
  `parks_FK` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Trase_FK` (`parks_FK`),
  CONSTRAINT `Trase_FK` FOREIGN KEY (`parks_FK`) REFERENCES `Parks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Trase`
--

LOCK TABLES `Trase` WRITE;
/*!40000 ALTER TABLE `Trase` DISABLE KEYS */;
INSERT INTO `Trase` VALUES (11,NULL,2),(12,NULL,4),(13,NULL,2),(14,NULL,2),(15,NULL,4),(16,NULL,6),(17,NULL,3),(18,NULL,4),(19,NULL,6),(20,NULL,1),(21,NULL,5);
/*!40000 ALTER TABLE `Trase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TraseGrozs`
--

DROP TABLE IF EXISTS `TraseGrozs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TraseGrozs` (
  `numurs_pec_kartas` int DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `grozs_FK` int NOT NULL,
  `trase_FK` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `TraseGrozs_FK_1` (`trase_FK`),
  KEY `TraseGrozs_FK` (`grozs_FK`),
  CONSTRAINT `TraseGrozs_FK` FOREIGN KEY (`grozs_FK`) REFERENCES `Grozs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `TraseGrozs_FK_1` FOREIGN KEY (`trase_FK`) REFERENCES `Trase` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TraseGrozs`
--

LOCK TABLES `TraseGrozs` WRITE;
/*!40000 ALTER TABLE `TraseGrozs` DISABLE KEYS */;
/*!40000 ALTER TABLE `TraseGrozs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Turnirs`
--

DROP TABLE IF EXISTS `Turnirs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Turnirs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `turnira_datums` datetime NOT NULL,
  `turnira_nosaukums` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Turnirs`
--

LOCK TABLES `Turnirs` WRITE;
/*!40000 ALTER TABLE `Turnirs` DISABLE KEYS */;
INSERT INTO `Turnirs` VALUES (2,'2020-07-18 11:00:00','Latvijas Kausa 2.posms'),(3,'2020-08-22 09:00:00','Latvijas Kausa 3.posms'),(4,'2020-06-19 10:00:00','Arina_spele');
/*!40000 ALTER TABLE `Turnirs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TurnirsSpeletajs`
--

DROP TABLE IF EXISTS `TurnirsSpeletajs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TurnirsSpeletajs` (
  `turnirs_FK` int NOT NULL,
  `speletajs_FK` int NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `rezultats_FK` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `TurnirsSpeletajs_FK` (`speletajs_FK`),
  KEY `TurnirsSpeletajs_FK_1` (`turnirs_FK`),
  KEY `TurnirsSpeletajs_FK_2` (`rezultats_FK`),
  CONSTRAINT `TurnirsSpeletajs_FK` FOREIGN KEY (`speletajs_FK`) REFERENCES `Speletajs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `TurnirsSpeletajs_FK_1` FOREIGN KEY (`turnirs_FK`) REFERENCES `Turnirs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `TurnirsSpeletajs_FK_2` FOREIGN KEY (`rezultats_FK`) REFERENCES `Rezultats` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TurnirsSpeletajs`
--

LOCK TABLES `TurnirsSpeletajs` WRITE;
/*!40000 ALTER TABLE `TurnirsSpeletajs` DISABLE KEYS */;
/*!40000 ALTER TABLE `TurnirsSpeletajs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-16 22:33:15

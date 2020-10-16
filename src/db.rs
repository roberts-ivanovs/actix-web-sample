use mysql::prelude::*;
use mysql::Pool;
// use mysql::*;

static URL: &'static str = "mysql://root:password@localhost:3308";
static URLAFTERINIT: &'static str = "mysql://root:password@localhost:3308/disku_golfs";

pub fn init_db() -> Result<&'static str, &'static str> {
    let pool = Pool::new(URL).unwrap();
    let mut conn = pool.get_conn().unwrap();
    conn.query_drop(r#"

DROP DATABASE IF EXISTS disku_golfs;
CREATE DATABASE disku_golfs;
USE disku_golfs;

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


DROP TABLE IF EXISTS `Grozs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Grozs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `soda_punkti` int DEFAULT NULL,
  `maksimalais_metienu_skaits` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


LOCK TABLES `Grozs` WRITE;
/*!40000 ALTER TABLE `Grozs` DISABLE KEYS */;
INSERT INTO `Grozs` VALUES (1,1,3),(2,2,4),(3,1,1),(4,1,1),(5,1,1),(6,1,3),(7,2,3),(8,1,3),(9,1,4),(10,2,4),(11,1,1),(12,2,3),(13,2,4),(14,1,4),(15,2,4),(16,1,2),(17,1,4),(18,2,2),(19,2,4),(20,2,1),(21,1,3),(22,1,3),(23,1,2),(24,1,1),(25,1,1),(26,1,2),(27,2,2),(28,1,4),(29,1,4),(30,2,4),(31,2,1),(32,2,2),(33,2,3),(34,1,2),(35,2,3),(36,2,4),(37,1,4),(38,2,4),(39,2,2),(40,1,3),(41,1,3),(42,1,1),(43,1,2),(44,1,3),(45,1,2),(46,1,4),(47,1,4),(48,1,1),(49,2,2),(50,2,2),(51,2,3),(52,1,4),(53,2,2),(54,2,4),(55,1,4),(56,1,3),(57,2,2),(58,1,4),(59,1,3),(60,1,2),(61,1,1),(62,2,4),(63,2,2),(64,2,2),(65,2,1),(66,1,2),(67,2,1),(68,1,1),(69,1,3),(70,1,2),(71,1,4),(72,1,3),(73,1,1),(74,1,3),(75,1,4),(76,1,3),(77,2,3),(78,2,3),(79,1,2),(80,2,1),(81,1,3),(82,2,3),(83,2,2),(84,2,1),(85,1,1),(86,2,1),(87,2,2),(88,1,1),(89,2,1),(90,1,4),(91,2,1),(92,2,4),(93,2,1),(94,2,2),(95,2,2),(96,2,4),(97,1,2),(98,1,2),(99,2,1),(100,2,3),(101,2,4),(102,1,2),(103,1,4),(104,1,1),(105,2,1);
/*!40000 ALTER TABLE `Grozs` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `Parks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Parks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `adrese` varchar(200) DEFAULT NULL,
  `telefona_numurs` varchar(15) DEFAULT NULL,
  `apraksts` text,
  `darba_laiks` char(11) DEFAULT NULL,
  `nosaukums` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


LOCK TABLES `Parks` WRITE;
/*!40000 ALTER TABLE `Parks` DISABLE KEYS */;
INSERT INTO `Parks` VALUES (1,'Jaunatnes iela 7, Talsi LV-3201, Latvija','+37126132666','Disku golfa parks, iespēja izīrēt diskus.','09:00-20:00','9Hill - Devinkalnu Disku Golfa Parks'),(2,'Staru atputas komplekss, Dauksti,  LV-4429, Latvija','+37129352338','Disku Golfa Parks \"Stari\" ir 19 celiņu disku golfa laukums ar dabīgi skaistu reljefu. šeit būs interesanti gan profesionāļiem,gan iesācējiem.','08:00-21:00','Disku golfa parks \'Stari\''),(3,'Perkones iela 32, Liepaja LV-3401, Latvija','+37122019491','Aktīvās atpūtas vieta ar dažādām aktivitātēm – disku golfs, batuti, galda spēles u.c. aktivitātes ģimenēm.','08:00-20:00','Atputas parks Perkone');
/*!40000 ALTER TABLE `Parks` ENABLE KEYS */;
UNLOCK TABLES;


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


LOCK TABLES `Rezultats` WRITE;
/*!40000 ALTER TABLE `Rezultats` DISABLE KEYS */;
/*!40000 ALTER TABLE `Rezultats` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `Speletajs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Speletajs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `vards` varchar(60) DEFAULT NULL,
  `uzvards` varchar(60) DEFAULT NULL,
  `dzimsanas_dati` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


LOCK TABLES `Speletajs` WRITE;
/*!40000 ALTER TABLE `Speletajs` DISABLE KEYS */;
INSERT INTO `Speletajs` VALUES (4,'Arina','Solovjova','2020-01-01'),(5,'Elza','Rozenberga','1865-03-16'),(6,'Janis','Plieksans','1865-09-11');
/*!40000 ALTER TABLE `Speletajs` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `Trase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Trase` (
  `id` int NOT NULL AUTO_INCREMENT,
  `laiks_trases_iziesanai` time DEFAULT NULL,
  `parks_FK` int NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `Trase_FK` FOREIGN KEY (`id`) REFERENCES `Parks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


LOCK TABLES `Trase` WRITE;
/*!40000 ALTER TABLE `Trase` DISABLE KEYS */;
INSERT INTO `Trase` VALUES (1,'03:00:00',1),(2,'04:00:00',2),(3,'02:30:00',3);
/*!40000 ALTER TABLE `Trase` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `TraseGrozs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TraseGrozs` (
  `numurs_pec_kartas` int DEFAULT NULL,
  `id` int NOT NULL,
  `grozs_FK` int NOT NULL,
  `trase_FK` int NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `TraseGrozs_FK` FOREIGN KEY (`id`) REFERENCES `Grozs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `TraseGrozs_FK_1` FOREIGN KEY (`id`) REFERENCES `Trase` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


LOCK TABLES `TraseGrozs` WRITE;
/*!40000 ALTER TABLE `TraseGrozs` DISABLE KEYS */;
/*!40000 ALTER TABLE `TraseGrozs` ENABLE KEYS */;
UNLOCK TABLES;


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


LOCK TABLES `Turnirs` WRITE;
/*!40000 ALTER TABLE `Turnirs` DISABLE KEYS */;
INSERT INTO `Turnirs` VALUES (2,'2020-07-18 11:00:00','Latvijas Kausa 2.posms'),(3,'2020-08-22 09:00:00','Latvijas Kausa 3.posms'),(4,'2020-06-19 10:00:00','Arina_spele');
/*!40000 ALTER TABLE `Turnirs` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `TurnirsSpeletajs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TurnirsSpeletajs` (
  `turnirs_FK` int NOT NULL,
  `speletajs_FK` int NOT NULL,
  `id` int NOT NULL,
  `rezultats_FK` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `TurnirsSpeletajs_FK` (`speletajs_FK`),
  KEY `TurnirsSpeletajs_FK_1` (`turnirs_FK`),
  KEY `TurnirsSpeletajs_FK_2` (`rezultats_FK`),
  CONSTRAINT `TurnirsSpeletajs_FK` FOREIGN KEY (`speletajs_FK`) REFERENCES `Speletajs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `TurnirsSpeletajs_FK_1` FOREIGN KEY (`turnirs_FK`) REFERENCES `Turnirs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `TurnirsSpeletajs_FK_2` FOREIGN KEY (`rezultats_FK`) REFERENCES `Rezultats` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


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
    "#).unwrap();
    Ok("Everything went ok")
}

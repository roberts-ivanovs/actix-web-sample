/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `disku_golfs` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `disku_golfs`;
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

INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (1,1,3,167);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (2,2,4,110);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (3,1,1,180);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (4,1,1,132);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (5,1,1,249);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (6,1,3,219);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (7,2,3,100);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (8,1,3,162);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (9,1,4,73);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (10,2,4,197);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (11,1,1,139);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (12,2,3,233);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (13,2,4,118);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (14,1,4,211);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (15,2,4,71);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (16,1,2,233);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (17,1,4,134);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (18,2,2,103);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (19,2,4,240);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (20,2,1,73);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (21,1,3,155);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (22,1,3,116);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (23,1,2,246);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (24,1,1,63);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (25,1,1,86);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (26,1,2,184);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (27,2,2,220);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (28,1,4,108);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (29,1,4,203);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (30,2,4,61);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (31,2,1,208);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (32,2,2,227);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (33,2,3,69);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (34,1,2,176);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (35,2,3,235);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (36,2,4,206);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (37,1,4,75);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (38,2,4,79);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (39,2,2,109);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (40,1,3,61);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (41,1,3,107);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (42,1,1,104);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (43,1,2,141);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (44,1,3,140);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (45,1,2,219);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (46,1,4,237);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (47,1,4,89);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (48,1,1,241);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (49,2,2,121);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (50,2,2,203);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (51,2,3,212);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (52,1,4,201);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (53,2,2,119);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (54,2,4,123);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (55,1,4,200);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (56,1,3,189);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (57,2,2,96);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (58,1,4,235);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (59,1,3,66);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (60,1,2,135);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (61,1,1,229);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (62,2,4,111);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (63,2,2,187);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (64,2,2,165);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (65,2,1,201);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (66,1,2,73);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (67,2,1,83);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (68,1,1,134);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (69,1,3,175);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (70,1,2,221);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (71,1,4,140);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (72,1,3,167);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (73,1,1,167);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (74,1,3,86);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (75,1,4,247);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (76,1,3,156);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (77,2,3,173);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (78,2,3,146);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (79,1,2,151);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (80,2,1,68);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (81,1,3,209);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (82,2,3,212);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (83,2,2,184);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (84,2,1,223);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (85,1,1,124);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (86,2,1,82);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (87,2,2,169);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (88,1,1,158);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (89,2,1,224);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (90,1,4,207);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (91,2,1,115);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (92,2,4,84);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (93,2,1,205);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (94,2,2,144);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (95,2,2,235);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (96,2,4,114);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (97,1,2,186);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (98,1,2,149);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (99,2,1,127);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (100,2,3,130);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (101,2,4,206);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (102,1,2,203);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (103,1,4,148);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (104,1,1,71);
INSERT INTO `Grozs` (`id`, `soda_punkti`, `maksimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (105,2,1,233);
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

INSERT INTO `Parks` (`id`, `adrese`, `telefona_numurs`, `apraksts`, `darba_laiks_sakums`, `nosaukums`, `darba_laiks_beigas`) VALUES (1,'Jaunatnes iela 7, Talsi LV-3201, Latvija','+37126132666','Disku golfa parks, iespēja izīrēt diskus.','09:00:00','9Hill - Devinkalnu Disku Golfa Parks','20:00:00');
INSERT INTO `Parks` (`id`, `adrese`, `telefona_numurs`, `apraksts`, `darba_laiks_sakums`, `nosaukums`, `darba_laiks_beigas`) VALUES (2,'Staru atputas komplekss, Dauksti,  LV-4429, Latvija','+37129352338','Disku Golfa Parks \"Stari\" ir 19 celiņu disku golfa laukums ar dabīgi skaistu reljefu. šeit būs interesanti gan profesionāļiem,gan iesācējiem.','08:00:00','Disku golfa parks \'Stari\'','21:00:00');
INSERT INTO `Parks` (`id`, `adrese`, `telefona_numurs`, `apraksts`, `darba_laiks_sakums`, `nosaukums`, `darba_laiks_beigas`) VALUES (3,'Perkones iela 32, Liepaja LV-3401, Latvija','+37122019491','Aktīvās atpūtas vieta ar dažādām aktivitātēm – disku golfs, batuti, galda spēles u.c. aktivitātes ģimenēm.','08:00:00','Atputas parks Perkone','20:00:00');
INSERT INTO `Parks` (`id`, `adrese`, `telefona_numurs`, `apraksts`, `darba_laiks_sakums`, `nosaukums`, `darba_laiks_beigas`) VALUES (4,'Jelgavas novads, Vilces pagasts, Madaru iela 4, LV-3026, Latvija','+37126216869','Laukums izveidots Ielejā pie Vilces muižas ēkas. Reljefs - līdzens. Starta laukumiņu nav, metiena vieta atzīmēta ar dēlīti. Uzstādīta saprotama DiscGolfPark norāžu sistēma un DiscGolfPark grozi. Pieejams vienmēr. Bez maksas.','00:00:00','DiscGolfPark Vilce','24:00:00');
INSERT INTO `Parks` (`id`, `adrese`, `telefona_numurs`, `apraksts`, `darba_laiks_sakums`, `nosaukums`, `darba_laiks_beigas`) VALUES (5,'UFOGOLF, Mežaparks, Rīga, LV-1034','+37127006118','Kārtīgs iesācēju laukums, kurā varēs apgūt dažādus metiena veidus un dažādus noteikumu līkločus. ','12:00:00','UFOGOLF mazais laukums','20:00:00');
INSERT INTO `Parks` (`id`, `adrese`, `telefona_numurs`, `apraksts`, `darba_laiks_sakums`, `nosaukums`, `darba_laiks_beigas`) VALUES (6,'Palasta iela, Cesis, LV-4101','+37129393403','9 grozi. laukums pieejams 24/7, disku noma iepriekš sazinoties, vai Cēsu golfa kluba nomas punktā pie parka.','00:00:00','KANEs Disku golfa parks Cēsis','24:00:00');
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

DROP TABLE IF EXISTS `ShowAllParks`;
/*!50001 DROP VIEW IF EXISTS `ShowAllParks`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ShowAllParks` AS SELECT
 1 AS `id`,
 1 AS `adrese`,
 1 AS `telefona_numurs`,
 1 AS `apraksts`,
 1 AS `darba_laiks_sakums`,
 1 AS `nosaukums`,
 1 AS `darba_laiks_beigas`*/;
SET character_set_client = @saved_cs_client;
DROP TABLE IF EXISTS `ShowAllTrase`;
/*!50001 DROP VIEW IF EXISTS `ShowAllTrase`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ShowAllTrase` AS SELECT
 1 AS `id`,
 1 AS `laiks_trases_iziesanai`,
 1 AS `parks_FK`*/;
SET character_set_client = @saved_cs_client;
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

INSERT INTO `Speletajs` (`id`, `vards`, `uzvards`, `dzimsanas_dati`) VALUES (4,'Arina','Solovjova','2020-01-01');
INSERT INTO `Speletajs` (`id`, `vards`, `uzvards`, `dzimsanas_dati`) VALUES (5,'Elza','Rozenberga','1865-03-16');
INSERT INTO `Speletajs` (`id`, `vards`, `uzvards`, `dzimsanas_dati`) VALUES (6,'Janis','Plieksans','1865-09-11');
INSERT INTO `Speletajs` (`id`, `vards`, `uzvards`, `dzimsanas_dati`) VALUES (7,'Paul','McBeth','1990-07-09');
INSERT INTO `Speletajs` (`id`, `vards`, `uzvards`, `dzimsanas_dati`) VALUES (8,'Avery','Jenkins','1978-07-24');
INSERT INTO `Speletajs` (`id`, `vards`, `uzvards`, `dzimsanas_dati`) VALUES (9,'Valarie','Jenkins','1986-05-06');
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

INSERT INTO `Trase` (`id`, `laiks_trases_iziesanai`, `parks_FK`) VALUES (11,NULL,2);
INSERT INTO `Trase` (`id`, `laiks_trases_iziesanai`, `parks_FK`) VALUES (12,NULL,4);
INSERT INTO `Trase` (`id`, `laiks_trases_iziesanai`, `parks_FK`) VALUES (13,NULL,2);
INSERT INTO `Trase` (`id`, `laiks_trases_iziesanai`, `parks_FK`) VALUES (14,NULL,2);
INSERT INTO `Trase` (`id`, `laiks_trases_iziesanai`, `parks_FK`) VALUES (15,NULL,4);
INSERT INTO `Trase` (`id`, `laiks_trases_iziesanai`, `parks_FK`) VALUES (16,NULL,6);
INSERT INTO `Trase` (`id`, `laiks_trases_iziesanai`, `parks_FK`) VALUES (17,NULL,3);
INSERT INTO `Trase` (`id`, `laiks_trases_iziesanai`, `parks_FK`) VALUES (18,NULL,4);
INSERT INTO `Trase` (`id`, `laiks_trases_iziesanai`, `parks_FK`) VALUES (19,NULL,6);
INSERT INTO `Trase` (`id`, `laiks_trases_iziesanai`, `parks_FK`) VALUES (20,NULL,1);
INSERT INTO `Trase` (`id`, `laiks_trases_iziesanai`, `parks_FK`) VALUES (21,NULL,5);
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

DROP TABLE IF EXISTS `Turnirs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Turnirs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `turnira_datums` datetime NOT NULL,
  `turnira_nosaukums` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `Turnirs` (`id`, `turnira_datums`, `turnira_nosaukums`) VALUES (2,'2020-07-18 11:00:00','Latvijas Kausa 2.posms');
INSERT INTO `Turnirs` (`id`, `turnira_datums`, `turnira_nosaukums`) VALUES (3,'2020-08-22 09:00:00','Latvijas Kausa 3.posms');
INSERT INTO `Turnirs` (`id`, `turnira_datums`, `turnira_nosaukums`) VALUES (4,'2020-06-19 10:00:00','Arina_spele');
INSERT INTO `Turnirs` (`id`, `turnira_datums`, `turnira_nosaukums`) VALUES (5,'2020-06-20 12:00:00','Janis_spele');
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


USE `disku_golfs`;
/*!50001 DROP VIEW IF EXISTS `ShowAllParks`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ShowAllParks` AS select `Parks`.`id` AS `id`,`Parks`.`adrese` AS `adrese`,`Parks`.`telefona_numurs` AS `telefona_numurs`,`Parks`.`apraksts` AS `apraksts`,`Parks`.`darba_laiks_sakums` AS `darba_laiks_sakums`,`Parks`.`nosaukums` AS `nosaukums`,`Parks`.`darba_laiks_beigas` AS `darba_laiks_beigas` from `Parks` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!50001 DROP VIEW IF EXISTS `ShowAllTrase`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ShowAllTrase` AS select `t`.`id` AS `id`,`t`.`laiks_trases_iziesanai` AS `laiks_trases_iziesanai`,`t`.`parks_FK` AS `parks_FK` from `Trase` `t` where (`t`.`parks_FK` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
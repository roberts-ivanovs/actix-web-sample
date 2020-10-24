/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE `disku_golfs`;
CREATE DATABASE /*!32312 IF NOT EXISTS*/ `disku_golfs` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `disku_golfs`;
DROP TABLE IF EXISTS `Grozs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Grozs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `optimalais_metienu_skaits` int DEFAULT NULL,
  `attalums_lidz_grozam` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=421 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (1,3,167);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (3,1,180);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (4,1,132);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (5,1,249);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (6,3,219);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (7,3,100);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (8,3,162);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (9,4,73);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (11,1,139);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (12,3,233);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (13,4,118);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (14,4,211);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (15,4,71);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (16,2,233);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (17,4,134);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (18,2,103);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (19,4,240);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (20,1,73);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (21,3,155);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (22,3,116);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (23,2,246);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (24,1,63);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (25,1,86);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (26,2,184);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (27,2,220);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (28,4,108);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (29,4,203);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (30,4,61);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (31,1,208);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (32,2,227);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (33,3,69);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (34,2,176);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (35,3,235);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (36,4,206);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (37,4,75);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (38,4,79);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (39,2,109);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (40,3,61);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (41,3,107);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (42,1,104);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (43,2,141);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (44,3,140);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (45,2,219);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (46,4,237);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (47,4,89);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (48,1,241);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (49,2,121);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (50,2,203);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (51,3,212);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (52,4,201);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (53,2,119);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (54,4,123);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (55,4,200);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (56,3,189);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (57,2,96);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (58,4,235);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (59,3,66);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (60,2,135);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (61,1,229);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (62,4,111);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (63,2,187);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (64,2,165);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (65,1,201);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (66,2,73);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (67,1,83);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (68,1,134);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (69,3,175);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (70,2,221);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (71,4,140);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (72,3,167);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (73,1,167);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (74,3,86);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (75,4,247);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (76,3,156);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (77,3,173);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (78,3,146);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (79,2,151);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (80,1,68);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (81,3,209);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (82,3,212);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (83,2,184);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (84,1,223);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (85,1,124);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (86,1,82);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (87,2,169);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (88,1,158);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (89,1,224);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (90,4,207);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (91,1,115);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (92,4,84);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (93,1,205);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (94,2,144);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (95,2,235);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (96,4,114);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (97,2,186);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (98,2,149);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (99,1,127);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (100,3,130);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (101,4,206);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (102,2,203);
INSERT INTO `Grozs` (`id`, `optimalais_metienu_skaits`, `attalums_lidz_grozam`) VALUES (103,4,148);
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `on_grozs_update` AFTER UPDATE ON `Grozs` FOR EACH ROW BEGIN
UPDATE
	Rezultats AS r SET
	r.novecojis = TRUE
WHERE
	r.id IN(
	SELECT
		r.id
	FROM
		TraseGrozs tg
	JOIN Grozs g ON
		tg.grozs_FK = g.id
		AND tg.id = r.trase_grozs_FK );

END */;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `on_grozs_delete` AFTER DELETE ON `Grozs` FOR EACH ROW BEGIN

-- visu trasu skaits, kura ir dzesamais grozs

SELECT COUNT(*) INTO @trasu_skaits FROM (
	SELECT tr.id FROM Trase tr JOIN TraseGrozs tg ON tg.trase_FK = tr.id AND tg.grozs_FK = OLD.id GROUP BY tr.id
) as T;

SET @counter = 1;
WHILE @trasu_skaits > 0 DO
	-- visas trases, kuras ir dzesamais grozs. Izvelas @counter -tas trases id
	WITH
	trases AS(
		SELECT ROW_NUMBER() OVER(ORDER BY tr.id) row_num, tr.id FROM Trase tr JOIN TraseGrozs tg
			ON tg.trase_FK = tr.id AND tg.grozs_FK = OLD.id GROUP BY tr.id
		)
	SELECT id into @trase_id FROM trases WHERE row_num = @counter;

	-- cik grozu trase (traseGrozs), kuram trase_FK = noteiktas trases id;

	SELECT COUNT(tg.id) INTO @grozi_to_update FROM TraseGrozs tg WHERE tg.trase_FK = @trase_id;

	-- nakama groza kartas numurs
	SELECT tg2.numurs_pec_kartas,tg2.numurs_pec_kartas + 1 INTO @dzesama_kartas_nr, @nakama_kartas_nr FROM TraseGrozs tg2 WHERE tg2.grozs_FK = OLD.id;

	-- cik grozus vajag atjaunot
	set @grozi_to_update = @grozi_to_update - @dzesama_kartas_nr;

	SET @inner_counter = 1;
	WHILE(@grozi_to_update > 0) # and trases !<> ?
	DO
		-- visas traseGrozs, kuras ir noteiktaja trase. Izvelas inner_counter -ta groza id;
		WITH trase_grozi AS(
			SELECT ROW_NUMBER() OVER(ORDER BY tg.numurs_pec_kartas) row_num, tg.id, tg.grozs_FK FROM TraseGrozs tg WHERE tg.trase_FK = @trase_id
		)
		SELECT grozs_FK into @grozs_id FROM trase_grozi WHERE row_num = @inner_counter;

		-- atjauno groza kartas numuru trase;
		UPDATE TraseGrozs SET numurs_pec_kartas = numurs_pec_kartas - 1 WHERE grozs_FK = @grozs_id;

-- 		set @nakama_kartas_nr = @nakama_kartas_nr + 1;
		set @inner_counter = @inner_counter + 1;
		set @grozi_to_update = @grozi_to_update - 1;
	END WHILE;

	set @counter = @counter + 1;
	set @trasu_skaits = @trasu_skaits - 1;
END WHILE;

END */;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
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
  `TurnirsSpeletajs_FK` int DEFAULT NULL,
  `novecojis` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `Rezultats_FK` (`trase_grozs_FK`),
  KEY `Rezultats_FK_1` (`TurnirsSpeletajs_FK`),
  CONSTRAINT `Rezultats_FK` FOREIGN KEY (`trase_grozs_FK`) REFERENCES `TraseGrozs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Rezultats_FK_1` FOREIGN KEY (`TurnirsSpeletajs_FK`) REFERENCES `TurnirsSpeletajs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (10,3,29768,11,1);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (27,4,29768,20,1);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (29,3,29768,21,1);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (31,2,29768,3,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (32,5,29770,3,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (33,4,29771,3,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (34,5,29772,3,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (35,3,29773,3,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (36,2,29774,3,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (37,1,29775,3,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (38,6,29776,3,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (39,4,29779,3,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (40,5,29783,3,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (41,2,29770,11,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (42,3,29771,11,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (43,3,29772,11,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (44,4,29773,11,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (45,2,29774,11,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (46,3,29775,11,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (47,2,29776,11,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (48,4,29779,11,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (49,5,29783,11,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (50,2,29770,21,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (51,7,29771,21,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (52,6,29772,21,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (53,5,29773,21,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (54,3,29774,21,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (55,2,29775,21,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (56,3,29776,21,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (57,3,29779,21,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (58,5,29783,21,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (59,1,29770,20,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (60,3,29771,20,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (61,1,29772,20,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (62,2,29773,20,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (63,3,29774,20,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (64,4,29775,20,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (65,5,29776,20,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (66,3,29779,20,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (67,2,29783,20,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (68,3,29820,25,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (69,1,29821,25,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (70,2,29822,25,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (71,5,29823,25,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (72,3,29824,25,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (73,2,29825,25,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (74,2,29826,25,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (75,1,29827,25,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (76,3,29820,26,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (77,2,29821,26,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (78,4,29822,26,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (79,3,29823,26,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (80,2,29824,26,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (81,5,29825,26,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (82,1,29826,26,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (83,5,29827,26,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (84,6,29820,27,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (85,4,29821,27,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (86,3,29822,27,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (87,1,29823,27,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (88,3,29824,27,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (89,4,29825,27,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (90,5,29826,27,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (91,1,29827,27,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (92,3,29820,28,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (93,1,29821,28,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (94,4,29822,28,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (95,5,29823,28,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (96,3,29824,28,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (97,2,29825,28,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (98,1,29826,28,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (99,1,29827,28,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (100,1,29802,22,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (101,5,29803,22,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (102,6,29804,22,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (103,4,29805,22,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (104,3,29806,22,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (105,1,29807,22,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (106,3,29808,22,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (107,4,29809,22,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (108,5,29810,22,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (109,1,29811,22,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (110,3,29812,22,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (111,1,29813,22,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (112,4,29814,22,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (113,5,29815,22,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (114,3,29816,22,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (115,2,29817,22,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (116,1,29818,22,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (117,1,29819,22,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (118,1,29802,23,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (119,2,29803,23,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (120,4,29804,23,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (121,1,29805,23,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (122,2,29806,23,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (123,4,29807,23,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (124,2,29808,23,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (125,3,29809,23,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (126,2,29810,23,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (127,2,29811,23,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (128,2,29812,23,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (129,3,29813,23,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (130,4,29814,23,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (131,2,29815,23,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (132,3,29816,23,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (133,2,29817,23,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (134,3,29818,23,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (135,1,29819,23,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (136,1,29802,24,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (137,4,29803,24,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (138,2,29804,24,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (139,4,29805,24,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (140,3,29806,24,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (141,4,29807,24,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (142,3,29808,24,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (143,4,29809,24,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (144,3,29810,24,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (145,2,29811,24,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (146,3,29812,24,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (147,3,29813,24,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (148,4,29814,24,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (149,1,29815,24,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (150,2,29816,24,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (151,2,29817,24,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (152,3,29818,24,0);
INSERT INTO `Rezultats` (`id`, `metieni`, `trase_grozs_FK`, `TurnirsSpeletajs_FK`, `novecojis`) VALUES (153,2,29819,24,0);

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
DROP TABLE IF EXISTS `ShowAllTurnirs`;
/*!50001 DROP VIEW IF EXISTS `ShowAllTurnirs`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ShowAllTurnirs` AS SELECT
 1 AS `id`,
 1 AS `turnira_datums`,
 1 AS `turnira_nosaukums`*/;
SET character_set_client = @saved_cs_client;
DROP TABLE IF EXISTS `ShowAllTurnirsSummary`;
/*!50001 DROP VIEW IF EXISTS `ShowAllTurnirsSummary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ShowAllTurnirsSummary` AS SELECT
 1 AS `turnirs`,
 1 AS `speletajs`,
 1 AS `trase`,
 1 AS `speletaja_rezultats`,
 1 AS `trases_metienu_skaits`,
 1 AS `uzvaretajs`*/;
SET character_set_client = @saved_cs_client;
DROP TABLE IF EXISTS `ShowBestPlayersInTrase`;
/*!50001 DROP VIEW IF EXISTS `ShowBestPlayersInTrase`*/;
SET @saved_cs_client = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ShowBestPlayersInTrase` AS SELECT
 1 AS `trase_FK`,
 1 AS `s_id`,
 1 AS `rezultats`*/;
SET character_set_client = @saved_cs_client;
DROP TABLE IF EXISTS `ShowHardestGrozs`;
/*!50001 DROP VIEW IF EXISTS `ShowHardestGrozs`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ShowHardestGrozs` AS SELECT
 1 AS `trase_id`,
 1 AS `grozs_id`,
 1 AS `Videjais_rezultats`*/;
SET character_set_client = @saved_cs_client;
DROP TABLE IF EXISTS `Speletajs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Speletajs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `vards` varchar(60) DEFAULT NULL,
  `uzvards` varchar(60) DEFAULT NULL,
  `dzimsanas_dati` date DEFAULT NULL,
  `atjaunots` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `Speletajs` (`id`, `vards`, `uzvards`, `dzimsanas_dati`, `atjaunots`) VALUES (4,'Arina','Solovjova','2003-01-01','2020-10-23 14:14:25');
INSERT INTO `Speletajs` (`id`, `vards`, `uzvards`, `dzimsanas_dati`, `atjaunots`) VALUES (5,'Elza','Rozenberga','1865-03-16','2020-10-23 19:20:19');
INSERT INTO `Speletajs` (`id`, `vards`, `uzvards`, `dzimsanas_dati`, `atjaunots`) VALUES (6,'Janis','Plieksans','1865-09-11','2020-10-23 19:20:19');
INSERT INTO `Speletajs` (`id`, `vards`, `uzvards`, `dzimsanas_dati`, `atjaunots`) VALUES (7,'Paul','McBeth','1990-07-09','2020-10-23 19:20:19');
INSERT INTO `Speletajs` (`id`, `vards`, `uzvards`, `dzimsanas_dati`, `atjaunots`) VALUES (8,'Avery','Jenkins','1978-07-24','2020-10-23 19:20:19');
INSERT INTO `Speletajs` (`id`, `vards`, `uzvards`, `dzimsanas_dati`, `atjaunots`) VALUES (9,'Valarie','Jenkins','1986-05-06','2020-10-23 19:20:19');
INSERT INTO `Speletajs` (`id`, `vards`, `uzvards`, `dzimsanas_dati`, `atjaunots`) VALUES (10,'Arnis','Briedis','1985-01-01','2020-10-23 20:09:15');
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/
 /*!50003 TRIGGER `on_speletajs_update` BEFORE UPDATE ON `Speletajs` FOR EACH ROW BEGIN
	SET NEW.atjaunots = NOW();
END */;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
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

INSERT INTO `Trase` (`id`, `laiks_trases_iziesanai`, `parks_FK`) VALUES (11,'02:00:00',2);
INSERT INTO `Trase` (`id`, `laiks_trases_iziesanai`, `parks_FK`) VALUES (12,'03:00:00',4);
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
) ENGINE=InnoDB AUTO_INCREMENT=29829 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `TraseGrozs` (`numurs_pec_kartas`, `id`, `grozs_FK`, `trase_FK`) VALUES (1,29768,1,11);
INSERT INTO `TraseGrozs` (`numurs_pec_kartas`, `id`, `grozs_FK`, `trase_FK`) VALUES (3,29770,3,11);
INSERT INTO `TraseGrozs` (`numurs_pec_kartas`, `id`, `grozs_FK`, `trase_FK`) VALUES (4,29771,4,11);
INSERT INTO `TraseGrozs` (`numurs_pec_kartas`, `id`, `grozs_FK`, `trase_FK`) VALUES (5,29772,5,11);
INSERT INTO `TraseGrozs` (`numurs_pec_kartas`, `id`, `grozs_FK`, `trase_FK`) VALUES (6,29773,6,11);
INSERT INTO `TraseGrozs` (`numurs_pec_kartas`, `id`, `grozs_FK`, `trase_FK`) VALUES (7,29774,7,11);
INSERT INTO `TraseGrozs` (`numurs_pec_kartas`, `id`, `grozs_FK`, `trase_FK`) VALUES (8,29775,8,11);
INSERT INTO `TraseGrozs` (`numurs_pec_kartas`, `id`, `grozs_FK`, `trase_FK`) VALUES (9,29776,9,11);
INSERT INTO `TraseGrozs` (`numurs_pec_kartas`, `id`, `grozs_FK`, `trase_FK`) VALUES (2,29779,11,11);
INSERT INTO `TraseGrozs` (`numurs_pec_kartas`, `id`, `grozs_FK`, `trase_FK`) VALUES (11,29783,103,11);
INSERT INTO `TraseGrozs` (`numurs_pec_kartas`, `id`, `grozs_FK`, `trase_FK`) VALUES (1,29802,12,12);
INSERT INTO `TraseGrozs` (`numurs_pec_kartas`, `id`, `grozs_FK`, `trase_FK`) VALUES (2,29803,13,12);
INSERT INTO `TraseGrozs` (`numurs_pec_kartas`, `id`, `grozs_FK`, `trase_FK`) VALUES (3,29804,14,12);
INSERT INTO `TraseGrozs` (`numurs_pec_kartas`, `id`, `grozs_FK`, `trase_FK`) VALUES (4,29805,15,12);
INSERT INTO `TraseGrozs` (`numurs_pec_kartas`, `id`, `grozs_FK`, `trase_FK`) VALUES (5,29806,16,12);
INSERT INTO `TraseGrozs` (`numurs_pec_kartas`, `id`, `grozs_FK`, `trase_FK`) VALUES (6,29807,17,12);
INSERT INTO `TraseGrozs` (`numurs_pec_kartas`, `id`, `grozs_FK`, `trase_FK`) VALUES (7,29808,18,12);
INSERT INTO `TraseGrozs` (`numurs_pec_kartas`, `id`, `grozs_FK`, `trase_FK`) VALUES (8,29809,19,12);
INSERT INTO `TraseGrozs` (`numurs_pec_kartas`, `id`, `grozs_FK`, `trase_FK`) VALUES (9,29810,20,12);
INSERT INTO `TraseGrozs` (`numurs_pec_kartas`, `id`, `grozs_FK`, `trase_FK`) VALUES (10,29811,21,12);
INSERT INTO `TraseGrozs` (`numurs_pec_kartas`, `id`, `grozs_FK`, `trase_FK`) VALUES (11,29812,22,12);
INSERT INTO `TraseGrozs` (`numurs_pec_kartas`, `id`, `grozs_FK`, `trase_FK`) VALUES (12,29813,23,12);
INSERT INTO `TraseGrozs` (`numurs_pec_kartas`, `id`, `grozs_FK`, `trase_FK`) VALUES (13,29814,24,12);
INSERT INTO `TraseGrozs` (`numurs_pec_kartas`, `id`, `grozs_FK`, `trase_FK`) VALUES (14,29815,25,12);
INSERT INTO `TraseGrozs` (`numurs_pec_kartas`, `id`, `grozs_FK`, `trase_FK`) VALUES (15,29816,26,12);
INSERT INTO `TraseGrozs` (`numurs_pec_kartas`, `id`, `grozs_FK`, `trase_FK`) VALUES (16,29817,27,12);
INSERT INTO `TraseGrozs` (`numurs_pec_kartas`, `id`, `grozs_FK`, `trase_FK`) VALUES (17,29818,28,12);
INSERT INTO `TraseGrozs` (`numurs_pec_kartas`, `id`, `grozs_FK`, `trase_FK`) VALUES (18,29819,29,12);
INSERT INTO `TraseGrozs` (`numurs_pec_kartas`, `id`, `grozs_FK`, `trase_FK`) VALUES (1,29820,30,16);
INSERT INTO `TraseGrozs` (`numurs_pec_kartas`, `id`, `grozs_FK`, `trase_FK`) VALUES (2,29821,31,16);
INSERT INTO `TraseGrozs` (`numurs_pec_kartas`, `id`, `grozs_FK`, `trase_FK`) VALUES (3,29822,32,16);
INSERT INTO `TraseGrozs` (`numurs_pec_kartas`, `id`, `grozs_FK`, `trase_FK`) VALUES (4,29823,33,16);
INSERT INTO `TraseGrozs` (`numurs_pec_kartas`, `id`, `grozs_FK`, `trase_FK`) VALUES (5,29824,34,16);
INSERT INTO `TraseGrozs` (`numurs_pec_kartas`, `id`, `grozs_FK`, `trase_FK`) VALUES (6,29825,35,16);
INSERT INTO `TraseGrozs` (`numurs_pec_kartas`, `id`, `grozs_FK`, `trase_FK`) VALUES (7,29826,36,16);
INSERT INTO `TraseGrozs` (`numurs_pec_kartas`, `id`, `grozs_FK`, `trase_FK`) VALUES (8,29827,37,16);
INSERT INTO `TraseGrozs` (`numurs_pec_kartas`, `id`, `grozs_FK`, `trase_FK`) VALUES (9,29828,38,16);
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `TurnirsSpeletajs_UN` (`speletajs_FK`,`turnirs_FK`),
  KEY `TurnirsSpeletajs_FK` (`speletajs_FK`),
  KEY `TurnirsSpeletajs_FK_1` (`turnirs_FK`),
  CONSTRAINT `TurnirsSpeletajs_FK` FOREIGN KEY (`speletajs_FK`) REFERENCES `Speletajs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `TurnirsSpeletajs_FK_1` FOREIGN KEY (`turnirs_FK`) REFERENCES `Turnirs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `TurnirsSpeletajs` (`turnirs_FK`, `speletajs_FK`, `id`) VALUES (4,4,3);
INSERT INTO `TurnirsSpeletajs` (`turnirs_FK`, `speletajs_FK`, `id`) VALUES (5,4,21);
INSERT INTO `TurnirsSpeletajs` (`turnirs_FK`, `speletajs_FK`, `id`) VALUES (4,5,11);
INSERT INTO `TurnirsSpeletajs` (`turnirs_FK`, `speletajs_FK`, `id`) VALUES (5,6,20);
INSERT INTO `TurnirsSpeletajs` (`turnirs_FK`, `speletajs_FK`, `id`) VALUES (2,7,28);
INSERT INTO `TurnirsSpeletajs` (`turnirs_FK`, `speletajs_FK`, `id`) VALUES (3,7,22);
INSERT INTO `TurnirsSpeletajs` (`turnirs_FK`, `speletajs_FK`, `id`) VALUES (2,8,27);
INSERT INTO `TurnirsSpeletajs` (`turnirs_FK`, `speletajs_FK`, `id`) VALUES (3,8,23);
INSERT INTO `TurnirsSpeletajs` (`turnirs_FK`, `speletajs_FK`, `id`) VALUES (2,9,26);
INSERT INTO `TurnirsSpeletajs` (`turnirs_FK`, `speletajs_FK`, `id`) VALUES (3,9,24);
INSERT INTO `TurnirsSpeletajs` (`turnirs_FK`, `speletajs_FK`, `id`) VALUES (2,10,25);
/*!50003 DROP FUNCTION IF EXISTS `speletaja_uzvaras_procentuali` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
CREATE DEFINER=`root`@`localhost` FUNCTION `speletaja_uzvaras_procentuali`(speletajs_id INT) RETURNS float
    READS SQL DATA
    DETERMINISTIC
BEGIN
SELECT
	COUNT(DISTINCT ts.turnirs_FK),
	(SELECT COUNT(sats.speletajs)
			FROM ShowAllTurnirsSummary sats
			WHERE sats.speletajs = speletajs_id AND
			sats.uzvaretajs = 1)
INTO
	@turniru_skaits,
	@uzvaru_skaits
FROM
	Speletajs s
JOIN TurnirsSpeletajs ts ON
	ts.speletajs_FK = s.id
JOIN Rezultats rez ON
	ts.id = rez.TurnirsSpeletajs_FK
WHERE
	speletajs_id = s.id;

RETURN @uzvaru_skaits / @turniru_skaits;
END ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `videjais_metienu_skaits_grozam` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
CREATE DEFINER=`root`@`localhost` FUNCTION `videjais_metienu_skaits_grozam`(grozs_id INT) RETURNS float
    READS SQL DATA
    DETERMINISTIC
BEGIN
SELECT
	COUNT(r.id),
	SUM(r.metieni)
INTO
	@rezultatu_skaits,
	@metienu_skaits
FROM
	Rezultats r
JOIN TraseGrozs tg ON
	tg.id = r.trase_grozs_FK
WHERE
	tg.grozs_FK = grozs_id;
RETURN @metienu_skaits / @rezultatu_skaits;
END ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `videjais_metienu_skaits_speletajam` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
CREATE DEFINER=`root`@`localhost` FUNCTION `videjais_metienu_skaits_speletajam`(speletajs_id INT) RETURNS float
    READS SQL DATA
    DETERMINISTIC
BEGIN
SELECT
	COUNT(r.trase_grozs_FK),
	SUM(r.metieni)
INTO
	@grozu_skaits,
	@metienu_skaits
FROM
	Speletajs s
JOIN TurnirsSpeletajs tg ON
	tg.speletajs_FK = s.id
JOIN Rezultats r ON
	tg.id = r.TurnirsSpeletajs_FK
WHERE
	s.id = speletajs_id;
RETURN @metienu_skaits / @grozu_skaits;
END ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `count_trase_summary` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
CREATE DEFINER=`root`@`localhost` PROCEDURE count_trase_summary(IN trase_id INT)
BEGIN
SELECT
  tg.trase_FK,
  COUNT(g.id) as grozu_skaits,
  SUM(g.optimalais_metienu_skaits) as Optimalais_punktu_skaits,
  SUM(g.attalums_lidz_grozam) AS trases_garums
FROM
  Grozs g
JOIN TraseGrozs tg ON
  tg.grozs_FK = g.id
WHERE
  tg.trase_FK = trase_id
GROUP BY
  tg.trase_FK
ORDER BY
  tg.trase_FK desc;
END ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `count_turnirs_summary` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
CREATE DEFINER=`root`@`localhost` PROCEDURE `count_turnirs_summary`(IN turnirs_id INT)
BEGIN
SELECT
	ts.turnirs_FK as turnirs,
	ts.speletajs_FK as spletajs,
	t.id as trase,
	SUM(r.metieni) as speletaja_rezultats,
	SUM(g.optimalais_metienu_skaits) as trases_metienu_skaits
FROM
	TurnirsSpeletajs ts
JOIN Speletajs s ON
	s.id = ts.speletajs_FK
JOIN Rezultats r ON
	r.TurnirsSpeletajs_FK = ts.id
JOIN TraseGrozs tg ON
	tg.id = r.trase_grozs_FK
JOIN Grozs g ON
	tg.grozs_FK = g.id
JOIN Trase t ON
	tg.trase_FK = t.id
WHERE
	ts.turnirs_FK = turnirs_id
GROUP BY
	speletajs_FK,
	turnirs_FK,
	t.id;
END ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_trase_grozu_seciba` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
CREATE DEFINER=`root`@`localhost` PROCEDURE get_trase_grozu_seciba(IN trase_id INT)
BEGIN
SELECT
  t.id as trase,
  g.id as grozs,
  tg.numurs_pec_kartas as kartas_numurs,
  g.optimalais_metienu_skaits as punkti
FROM
  TraseGrozs tg
JOIN Trase t ON
  tg.trase_FK = t.id
JOIN Grozs g ON
  tg.grozs_FK = g.id
WHERE
  tg.trase_FK = trase_id
GROUP BY
  t.id, g.id, tg.numurs_pec_kartas
ORDER BY
  tg.numurs_pec_kartas;
END ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `hardest_grozs_in_trase` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
CREATE DEFINER=`root`@`localhost` PROCEDURE `hardest_grozs_in_trase`()
BEGIN
SELECT
	tg.trase_FK,
	g.id as grozs_id,
	SUM(r.metieni) / COUNT(r.id) as Videjais_rezultats
FROM
	Trase t
JOIN TraseGrozs tg ON
	tg.trase_FK = t.id
JOIN Rezultats r ON
	r.trase_grozs_FK = tg.id
JOIN Grozs g ON
	tg.grozs_FK = g.id
GROUP BY
	tg.trase_FK,
	g.id
ORDER BY
	Videjais_rezultats desc
LIMIT 3;
END ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
/*!50001 VIEW `ShowAllParks` AS SELECT * FROM Parks */;
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
/*!50001 VIEW `ShowAllTrase` AS SELECT * FROM Trase */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!50001 DROP VIEW IF EXISTS `ShowAllTurnirs`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ShowAllTurnirs` AS SELECT
	*
FROM
	Turnirs */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!50001 DROP VIEW IF EXISTS `ShowAllTurnirsSummary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ShowAllTurnirsSummary` AS SELECT ts.turnirs_FK as turnirs, ts.speletajs_FK as speletajs,t.id as trase, SUM(r.metieni) as speletaja_rezultats, SUM(g.optimalais_metienu_skaits) as trases_metienu_skaits,(SELECT CASE WHEN (SELECT ts2.speletajs_FK FROM Turnirs t JOIN TurnirsSpeletajs ts2 ON ts2.turnirs_FK = t.id JOIN Rezultats r2 ON r2.TurnirsSpeletajs_FK = ts2.id WHERE ts2.turnirs_FK = ts.turnirs_FK GROUP BY ts2.speletajs_FK ORDER BY SUM(r2.metieni) ASC LIMIT 1) = ts.speletajs_FK THEN 1 ELSE 0 end ) as uzvaretajs FROM TurnirsSpeletajs ts JOIN Speletajs s ON s.id = ts.speletajs_FK JOIN Rezultats r ON r.TurnirsSpeletajs_FK = ts.id JOIN TraseGrozs tg ON tg.id = r.trase_grozs_FK JOIN Grozs g ON tg.grozs_FK = g.id JOIN Trase t ON tg.trase_FK = t.id GROUP BY speletajs_FK, turnirs_FK, t.id */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!50001 DROP VIEW IF EXISTS `ShowBestPlayersInTrase`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ShowBestPlayersInTrase` AS SELECT tg.trase_FK as trase_FK, ts.speletajs_FK as s_id, SUM(r.metieni) as rezultats FROM Rezultats r JOIN TraseGrozs tg ON r.trase_grozs_FK = tg.id JOIN TurnirsSpeletajs ts ON ts.id = r.TurnirsSpeletajs_FK GROUP BY trase_FK, s_id ORDER BY rezultats ASC LIMIT 3 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!50001 DROP VIEW IF EXISTS `ShowHardestGrozs`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ShowHardestGrozs` AS SELECT tg.trase_FK as trase_id, g.id as grozs_id, SUM(r.metieni) / COUNT(r.id) as Videjais_rezultats FROM Trase t JOIN TraseGrozs tg ON tg.trase_FK = t.id JOIN Rezultats r ON r.trase_grozs_FK = tg.id JOIN Grozs g ON tg.grozs_FK = g.id GROUP BY tg.trase_FK, g.id ORDER BY Videjais_rezultats desc LIMIT 3 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

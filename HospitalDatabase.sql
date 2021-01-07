-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: localhost    Database: szachniewicz20201862
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `candidate_skills`
--

DROP TABLE IF EXISTS `candidate_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_skills` (
  `candidateid` int NOT NULL COMMENT 'Candidate ID',
  `skill` varchar(30) NOT NULL COMMENT 'Skill',
  PRIMARY KEY (`candidateid`,`skill`),
  CONSTRAINT `FK_canski_candidates_candidateid` FOREIGN KEY (`candidateid`) REFERENCES `candidates` (`candidateid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_skills`
--

LOCK TABLES `candidate_skills` WRITE;
/*!40000 ALTER TABLE `candidate_skills` DISABLE KEYS */;
INSERT INTO `candidate_skills` VALUES (119865,'Communication'),(119865,'Hand-eye coordination'),(119865,'Surgery'),(247273,'Ophthalmology'),(247273,'Research'),(247273,'Time management'),(398795,'Attention to detail'),(398795,'Compassion'),(398795,'Nursing'),(433367,'Administration'),(433367,'Time management'),(433367,'Typing'),(476899,'Communication'),(476899,'Nursing'),(476899,'Organisation'),(577802,'Communication'),(577802,'Organisation'),(577802,'Psychology'),(692345,'Communication'),(692345,'Psychology'),(692345,'Research'),(700912,'Attention to detail'),(700912,'Punctuality'),(700912,'Time management'),(826374,'Communication'),(826374,'Compassion'),(826374,'IT'),(826374,'Nursing'),(834365,'Customer service'),(834365,'Organisation'),(834365,'Typing'),(836499,'Administration'),(836499,'Compassion'),(836499,'Nursing'),(996124,'Communication'),(996124,'Hand-eye coordination'),(996124,'Research'),(996124,'Surgery');
/*!40000 ALTER TABLE `candidate_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidates`
--

DROP TABLE IF EXISTS `candidates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidates` (
  `candidateid` int NOT NULL COMMENT 'Candidate ID',
  `firstname` varchar(30) NOT NULL COMMENT 'First name',
  `surname` varchar(30) NOT NULL COMMENT 'Surname',
  `address` varchar(45) DEFAULT NULL COMMENT 'Address',
  `telephone` varchar(30) NOT NULL COMMENT 'Telephone number',
  PRIMARY KEY (`candidateid`),
  UNIQUE KEY `candidateid_UNIQUE` (`candidateid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidates`
--

LOCK TABLES `candidates` WRITE;
/*!40000 ALTER TABLE `candidates` DISABLE KEYS */;
INSERT INTO `candidates` VALUES (119865,'Brandon','Murphy','92 Merrion Strand, Sandymount, Dublin 4','0874736843'),(167844,'Patricia','Finnegan','Thomas Street, Kiltimagh, Co. Mayo','0873422678'),(247273,'Julie','Doyle','12 Innisfallen Parade, Phibsborough, Dublin 7','0862131399'),(398795,'Max','O\'Connor','Allenwood Cross, Allenwood, Co. Kildare','0895683485'),(433367,'Ciara','Smith','3 Leo Street, Dublin 1','0865446689'),(476899,'Eve','Flynn','57 Greenville, Ashbourne, Co. Meath','0859012342'),(577802,'Kate','Collins','56 Harbour Street, Mullingar, Co. Westmeath','0869006123'),(692345,'Jeremy','Nolan','21 Market Street, Portlaoise, Co. Laois','0854128890'),(700912,'Isabel','Perry','81 Main Street, Arklow, Co. Wicklow','0892335744'),(826374,'John','McGrath','89 Rathgar Ave, Roscommon, Co. Roscommon','0835578667'),(834365,'Claire','Noonan','Gneeveguilla Rathmore, Rathmore, Co. Kerry','0870998012'),(836499,'Sarah','Murphy','15 Leitrim Place, Wicklow, Co. Wicklow','0838990456'),(996124,'Tom','O\'Meara','A1 Fota Park, Mallow, Co. Cork','0851232578');
/*!40000 ALTER TABLE `candidates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospitals`
--

DROP TABLE IF EXISTS `hospitals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospitals` (
  `hospitalid` int NOT NULL COMMENT 'Hospital ID',
  `name` varchar(30) NOT NULL COMMENT 'Hospital name',
  `address` varchar(45) DEFAULT NULL COMMENT 'Hospital address',
  `telephone` varchar(30) NOT NULL COMMENT 'Hospital telephone number',
  PRIMARY KEY (`hospitalid`),
  UNIQUE KEY `hospitalid_UNIQUE` (`hospitalid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospitals`
--

LOCK TABLES `hospitals` WRITE;
/*!40000 ALTER TABLE `hospitals` DISABLE KEYS */;
INSERT INTO `hospitals` VALUES (139,'Our Lady\'s Hospital','Navan, Co. Meath','0469078500'),(212,'Louth County Hospital','Dundalk, Co. Louth','0429334701'),(248,'Beaumont Hospital','Beaumont, Co. Dublin','018093000'),(378,'Naas General Hospital','Naas, Co. Kildare','045849500'),(383,'Wexford General Hospital','Wexford, Co. Wexford','0539153000'),(445,'St. Luke\'s General Hospital','Kilkenny, Co. Kilkenny','0567785000'),(464,'St. Fintan\'s Hospital','Portlaoise, Co. Laois','0578692873'),(562,'University Hospital Kerry','Tralee, Co. Kerry','0667184000'),(638,'Midland Regional Hospital','Mullingar, Co. Westmeath','0449340221'),(733,'Mayo University Hospital','Castlebar, Co. Mayo','0949021733'),(877,'Roscommon University Hospital','Roscommon, Co. Roscommon','0906626200'),(990,'Clontarf Hospital','Clontarf, Co. Dublin','018332521');
/*!40000 ALTER TABLE `hospitals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interviews`
--

DROP TABLE IF EXISTS `interviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interviews` (
  `interviewid` int NOT NULL COMMENT 'Interview ID',
  `date` date NOT NULL,
  `candidateid` int DEFAULT NULL COMMENT 'Candidate ID',
  `positionid` int NOT NULL COMMENT 'Position ID',
  `outcome` varchar(30) NOT NULL COMMENT 'Outcome - offer or no offer',
  PRIMARY KEY (`interviewid`),
  UNIQUE KEY `interviewid_UNIQUE` (`interviewid`),
  KEY `FK_candidates_candidateid_idx` (`candidateid`),
  KEY `FK_positions_positionid_idx` (`positionid`),
  CONSTRAINT `FK_int_candidates_candidateid` FOREIGN KEY (`candidateid`) REFERENCES `candidates` (`candidateid`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_int_positions_positionid` FOREIGN KEY (`positionid`) REFERENCES `positions` (`positionid`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interviews`
--

LOCK TABLES `interviews` WRITE;
/*!40000 ALTER TABLE `interviews` DISABLE KEYS */;
INSERT INTO `interviews` VALUES (12377,'2020-01-10',119865,2578,'no_offer'),(23467,'2020-01-11',996124,2578,'offer'),(24681,'2020-02-27',577802,4556,'offer'),(25890,'2020-01-21',476899,8001,'no_offer'),(27811,'2020-01-25',476899,8001,'offer'),(32555,'2020-01-09',826374,3880,'offer'),(33359,'2020-02-18',834365,1135,'offer'),(34789,'2020-01-03',247273,7894,'no_offer'),(37589,'2020-02-17',692345,4556,'no_offer'),(40087,'2020-01-14',247273,7894,'offer'),(48576,'2020-02-13',577802,4556,'no_offer'),(50922,'2020-01-19',398795,8001,'offer'),(66643,'2020-01-28',433367,9328,'no_offer'),(67833,'2020-02-01',834365,1135,'no_offer'),(73500,'2020-02-03',433367,9328,'no_offer'),(75399,'2020-02-04',836499,6244,'offer'),(89923,'2020-02-17',700912,2679,'no_offer'),(99956,'2020-02-18',836499,8001,'offer');
/*!40000 ALTER TABLE `interviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position_skills`
--

DROP TABLE IF EXISTS `position_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position_skills` (
  `positionid` int NOT NULL COMMENT 'Position ID',
  `skill` varchar(30) NOT NULL COMMENT 'Skill',
  PRIMARY KEY (`positionid`,`skill`),
  KEY `FK_posski_positions_positionid_idx` (`positionid`),
  CONSTRAINT `FK_posski_positions_positionid` FOREIGN KEY (`positionid`) REFERENCES `positions` (`positionid`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position_skills`
--

LOCK TABLES `position_skills` WRITE;
/*!40000 ALTER TABLE `position_skills` DISABLE KEYS */;
INSERT INTO `position_skills` VALUES (1135,'Communication'),(1135,'Customer service'),(1135,'Organisation'),(2578,'Hand-eye coordination'),(2578,'Problem solving'),(2578,'Surgery'),(2679,'Attention to detail'),(2679,'Time management'),(3880,'Communication'),(3880,'Compassion'),(3880,'Nursing'),(4556,'Communication'),(4556,'Psychology'),(4556,'Research'),(5122,'Communication'),(5122,'Time management'),(6244,'Compassion'),(6244,'Nursing'),(6244,'Organisation'),(7894,'Communication'),(7894,'Hand-eye coordination'),(7894,'Ophthalmology'),(7894,'Research'),(8001,'Nursing'),(8001,'Organisation'),(8001,'Time management'),(9328,'Administration'),(9328,'Time management'),(9328,'Typing');
/*!40000 ALTER TABLE `position_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positions`
--

DROP TABLE IF EXISTS `positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `positions` (
  `positionid` int NOT NULL COMMENT 'Position ID',
  `positiontype` varchar(30) NOT NULL COMMENT 'Position type',
  `hospitalid` int NOT NULL COMMENT 'Hospital ID',
  PRIMARY KEY (`positionid`),
  UNIQUE KEY `positionid_UNIQUE` (`positionid`),
  KEY `FK_hospitals_hospitalid_idx` (`hospitalid`),
  CONSTRAINT `FK_pos_hospitals_hospitalid` FOREIGN KEY (`hospitalid`) REFERENCES `hospitals` (`hospitalid`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positions`
--

LOCK TABLES `positions` WRITE;
/*!40000 ALTER TABLE `positions` DISABLE KEYS */;
INSERT INTO `positions` VALUES (1135,'Medical Receptionist',139),(2578,'Surgeon',990),(2679,'Cleaner',638),(3880,'General Nurse',378),(4556,'Psychologist',733),(5122,'Carer',139),(6244,'General Nurse',562),(7894,'Ophthalmologist',733),(8001,'General Nurse',445),(9328,'Administrator',212);
/*!40000 ALTER TABLE `positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'szachniewicz20201862'
--
/*!50003 DROP PROCEDURE IF EXISTS `insert_candidate_info` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_candidate_info`(IN p_candidateid int, IN p_firstname varchar(30), IN p_surname varchar(30), IN p_address varchar(45), IN p_telephone varchar(30))
BEGIN
INSERT into candidates(candidateid, firstname, surname, address, telephone) values(p_candidateid, p_firstname, p_surname, p_address, p_telephone);   

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_candidate_skills_info` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_candidate_skills_info`(IN p_candidateid int, IN p_skill varchar(30))
BEGIN
INSERT into candidate_skills(candidateid, skill) values(p_candidateid, p_skill);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_hospital_info` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_hospital_info`(IN p_hospitalid int, IN p_name varchar(30), IN p_address varchar(45), IN p_telephone varchar(30) )
BEGIN
INSERT into hospitals(hospitalid, name, address, telephone) values(p_hospitalid, p_name, p_address, p_telephone);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_interviews_info` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_interviews_info`(IN p_interviewid int, IN p_date date, IN p_candidateid int, IN p_positionid int, IN p_outcome varchar(30))
BEGIN
INSERT into interviews(interviewid, date, candidateid, positionid, outcome) values(p_interviewid, p_date, p_candidateid, p_positionid, p_outcome);    

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_positions_info` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_positions_info`(IN p_positionid int, IN p_positiontype varchar(30), IN p_hospitalid int)
BEGIN
INSERT into positions(positionid, positiontype, hospitalid) values(p_positionid, p_positiontype, p_hospitalid); 

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_position_skills_info` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_position_skills_info`(IN p_positionid int, IN p_skill varchar(30))
BEGIN
INSERT into position_skills(positionid, skill) values(p_positionid, p_skill); 

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `step4_q1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `step4_q1`(IN p_hospitalid int)
BEGIN
SELECT *
	FROM hospitals
    where hospitalid=p_hospitalid;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `step4_q10` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `step4_q10`(IN p_date date)
BEGIN
SELECT candidateid
	FROM interviews
	where date = p_date 
    and candidateid in (SELECT candidateid
						FROM interviews
                        group by candidateid
                        having count(candidateid) = 1);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `step4_q11` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `step4_q11`()
BEGIN
SELECT c.firstname, c.surname, c.candidateid
	FROM candidates c, interviews i
    where c.candidateid = i.candidateid
    group by candidateid
    having count(i.candidateid) > 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `step4_q2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `step4_q2`(IN p_name varchar(30))
BEGIN
SELECT *
	FROM hospitals
    where name=p_name;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `step4_q3` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `step4_q3`(IN p_surname varchar(30))
BEGIN
SELECT *
	FROM candidates
    where surname=p_surname;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `step4_q4` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `step4_q4`(IN p_positionid int)
BEGIN
SELECT distinct c.candidateid, c.firstname, c.surname, c.address, c.telephone
	from candidates c, candidate_skills cs
    where c.candidateid = cs.candidateid
    and cs.skill in (SELECT skill
					from position_skills
                    where positionid=p_positionid);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `step4_q5` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `step4_q5`()
BEGIN
SELECT count(distinct candidateid)
	FROM interviews
	where outcome = 'offer';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `step4_q6` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `step4_q6`(IN p_skill char(30))
BEGIN
SELECT *
	FROM positions p, position_skills ps
    where p.positionid = ps.positionid 
    and ps.skill = p_skill; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `step4_q7` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `step4_q7`()
BEGIN
SELECT count(*)
	FROM positions p, position_skills ps
    where p.positionid = ps.positionid 
    and ps.skill = 'nursing'; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `step4_q8` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `step4_q8`()
BEGIN
SELECT *
	FROM positions
    order by hospitalid;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `step4_q9` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `step4_q9`(IN p_date date)
BEGIN
SELECT *
	FROM interviews
    where date=p_date;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-08 19:14:31

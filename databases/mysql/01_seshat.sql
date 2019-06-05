CREATE DATABASE seshat;
USE seshat;

-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: seshat
-- ------------------------------------------------------
-- Server version	5.7.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `khepri_apps`
--

DROP TABLE IF EXISTS `khepri_apps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `khepri_apps` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tenant_identifier` varchar(32) NOT NULL,
  `application_identifier` varchar(32) NOT NULL,
  `permittable_identifier` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `khepri_apps_uq` (`tenant_identifier`,`application_identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khepri_apps`
--

LOCK TABLES `khepri_apps` WRITE;
/*!40000 ALTER TABLE `khepri_apps` DISABLE KEYS */;
/*!40000 ALTER TABLE `khepri_apps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khepri_beats`
--

DROP TABLE IF EXISTS `khepri_beats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `khepri_beats` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tenant_identifier` varchar(32) NOT NULL,
  `application_identifier` varchar(64) NOT NULL,
  `beat_identifier` varchar(32) NOT NULL,
  `alignment_hour` int(11) NOT NULL,
  `next_beat` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  UNIQUE KEY `khepri_beats_uq` (`tenant_identifier`,`application_identifier`,`beat_identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khepri_beats`
--

LOCK TABLES `khepri_beats` WRITE;
/*!40000 ALTER TABLE `khepri_beats` DISABLE KEYS */;
/*!40000 ALTER TABLE `khepri_beats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khepri_clockoffsets`
--

DROP TABLE IF EXISTS `khepri_clockoffsets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `khepri_clockoffsets` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tenant_identifier` varchar(32) NOT NULL,
  `hours` int(11) NOT NULL,
  `minutes` int(11) NOT NULL,
  `seconds` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `khepri_clockoffsets_uq` (`tenant_identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khepri_clockoffsets`
--

LOCK TABLES `khepri_clockoffsets` WRITE;
/*!40000 ALTER TABLE `khepri_clockoffsets` DISABLE KEYS */;
/*!40000 ALTER TABLE `khepri_clockoffsets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rhythm_schema_version`
--

DROP TABLE IF EXISTS `rhythm_schema_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rhythm_schema_version` (
  `version_rank` int(11) NOT NULL,
  `installed_rank` int(11) NOT NULL,
  `version` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `type` varchar(20) NOT NULL,
  `script` varchar(1000) NOT NULL,
  `checksum` int(11) DEFAULT NULL,
  `installed_by` varchar(100) NOT NULL,
  `installed_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `execution_time` int(11) NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`version`),
  KEY `rhythm_schema_version_vr_idx` (`version_rank`),
  KEY `rhythm_schema_version_ir_idx` (`installed_rank`),
  KEY `rhythm_schema_version_s_idx` (`success`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rhythm_schema_version`
--

LOCK TABLES `rhythm_schema_version` WRITE;
/*!40000 ALTER TABLE `rhythm_schema_version` DISABLE KEYS */;
INSERT INTO `rhythm_schema_version` VALUES (1,1,'0','<< Flyway Baseline >>','BASELINE','<< Flyway Baseline >>',NULL,'root','2019-06-05 13:20:41',0,1),(2,2,'1','initial setup','SQL','V1__initial_setup.sql',-712689858,'root','2019-06-05 13:20:41',31,1),(3,3,'2','tenant clock offset','SQL','V2__tenant_clock_offset.sql',-389050276,'root','2019-06-05 13:20:41',19,1);
/*!40000 ALTER TABLE `rhythm_schema_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenants`
--

DROP TABLE IF EXISTS `tenants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tenants` (
  `identifier` varchar(32) NOT NULL,
  `driver_class` varchar(255) NOT NULL,
  `database_name` varchar(32) NOT NULL,
  `host` varchar(512) NOT NULL,
  `port` varchar(5) NOT NULL,
  `a_user` varchar(32) NOT NULL,
  `pwd` varchar(32) NOT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenants`
--

LOCK TABLES `tenants` WRITE;
/*!40000 ALTER TABLE `tenants` DISABLE KEYS */;
INSERT INTO `tenants` VALUES ('playground','org.mariadb.jdbc.Driver','playground','localhost','3306','root','mysql');
/*!40000 ALTER TABLE `tenants` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-05 15:18:31

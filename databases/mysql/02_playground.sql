CREATE DATABASE playground;
USE playground;

-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: playground
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
-- Table structure for table `accounting_schema_version`
--

DROP TABLE IF EXISTS `accounting_schema_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounting_schema_version` (
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
  KEY `accounting_schema_version_vr_idx` (`version_rank`),
  KEY `accounting_schema_version_ir_idx` (`installed_rank`),
  KEY `accounting_schema_version_s_idx` (`success`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounting_schema_version`
--

LOCK TABLES `accounting_schema_version` WRITE;
/*!40000 ALTER TABLE `accounting_schema_version` DISABLE KEYS */;
INSERT INTO `accounting_schema_version` VALUES (1,1,'0','<< Flyway Baseline >>','BASELINE','<< Flyway Baseline >>',NULL,'root','2019-06-05 13:22:18',0,1),(2,2,'1','initial setup','SQL','V1__initial_setup.sql',-310011337,'root','2019-06-05 13:22:18',68,1),(3,3,'2','add column to ledger','SQL','V2__add_column_to_ledger.sql',-1829908561,'root','2019-06-05 13:22:19',28,1),(4,4,'3','create tx type','SQL','V3__create_tx_type.sql',-519989269,'root','2019-06-05 13:22:19',83,1),(5,5,'4','adjust account identifier length','SQL','V4__adjust_account_identifier_length.sql',-1052439671,'root','2019-06-05 13:22:19',18,1),(6,6,'5','add ichq to tx types','SQL','V5__add_ichq_to_tx_types.sql',147638383,'root','2019-06-05 13:22:19',11,1),(7,7,'6','add payroll distribution','SQL','V6__add_payroll_distribution.sql',1586029398,'root','2019-06-05 13:22:19',29,1),(8,8,'7','drop payroll distributions','SQL','V7__drop_payroll_distributions.sql',1476975402,'root','2019-06-05 13:22:19',43,1),(9,9,'8','alternative account number','SQL','V8__alternative_account_number.sql',849251186,'root','2019-06-05 13:22:19',42,1),(10,10,'9','add total value ledger','SQL','V9__add_total_value_ledger.sql',-1978871551,'root','2019-06-05 13:22:19',30,1);
/*!40000 ALTER TABLE `accounting_schema_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_schema_version`
--

DROP TABLE IF EXISTS `customer_schema_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_schema_version` (
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
  KEY `customer_schema_version_vr_idx` (`version_rank`),
  KEY `customer_schema_version_ir_idx` (`installed_rank`),
  KEY `customer_schema_version_s_idx` (`success`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_schema_version`
--

LOCK TABLES `customer_schema_version` WRITE;
/*!40000 ALTER TABLE `customer_schema_version` DISABLE KEYS */;
INSERT INTO `customer_schema_version` VALUES (1,1,'0','<< Flyway Baseline >>','BASELINE','<< Flyway Baseline >>',NULL,'root','2019-06-05 13:21:40',0,1),(2,2,'1','initial setup','SQL','V1__initial_setup.sql',1610352105,'root','2019-06-05 13:21:40',107,1),(3,3,'2','customer portrait','SQL','V2__customer_portrait.sql',1948068146,'root','2019-06-05 13:21:40',58,1),(4,4,'3','added is member flag','SQL','V3__added_is_member_flag.sql',-1536713140,'root','2019-06-05 13:21:40',32,1),(5,5,'4','identification card scans','SQL','V4__identification_card_scans.sql',-2130557002,'root','2019-06-05 13:21:40',22,1),(6,6,'5','add payroll distributions','SQL','V5__add_payroll_distributions.sql',-449143393,'root','2019-06-05 13:21:40',31,1),(7,7,'6','drop pyroll distributions','SQL','V6__drop_pyroll_distributions.sql',-1272488207,'root','2019-06-05 13:21:40',14,1),(8,8,'7','documents','SQL','V7__documents.sql',-379807560,'root','2019-06-05 13:21:40',34,1),(9,9,'8','documents description','SQL','V8__documents_description.sql',-211039603,'root','2019-06-05 13:21:40',40,1),(10,10,'9','add application date to customer','SQL','V9__add_application_date_to_customer.sql',1830992267,'root','2019-06-05 13:21:40',23,1);
/*!40000 ALTER TABLE `customer_schema_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horus_addresses`
--

DROP TABLE IF EXISTS `horus_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `horus_addresses` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `office_id` bigint(20) NOT NULL,
  `street` varchar(256) NOT NULL,
  `city` varchar(256) NOT NULL,
  `region` varchar(256) DEFAULT NULL,
  `postal_code` varchar(32) DEFAULT NULL,
  `country_code` varchar(2) NOT NULL,
  `country` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `address_office_fk` (`office_id`),
  CONSTRAINT `address_office_fk` FOREIGN KEY (`office_id`) REFERENCES `horus_offices` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horus_addresses`
--

LOCK TABLES `horus_addresses` WRITE;
/*!40000 ALTER TABLE `horus_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `horus_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horus_contact_details`
--

DROP TABLE IF EXISTS `horus_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `horus_contact_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) NOT NULL,
  `a_type` varchar(256) NOT NULL,
  `a_group` varchar(256) NOT NULL,
  `a_value` varchar(256) NOT NULL,
  `preference_level` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contact_detail_employee_fk` (`employee_id`),
  CONSTRAINT `contact_detail_employee_fk` FOREIGN KEY (`employee_id`) REFERENCES `horus_employees` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horus_contact_details`
--

LOCK TABLES `horus_contact_details` WRITE;
/*!40000 ALTER TABLE `horus_contact_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `horus_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horus_employees`
--

DROP TABLE IF EXISTS `horus_employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `horus_employees` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(32) NOT NULL,
  `given_name` varchar(256) DEFAULT NULL,
  `middle_name` varchar(256) DEFAULT NULL,
  `surname` varchar(256) DEFAULT NULL,
  `assigned_office_id` bigint(20) DEFAULT NULL,
  `created_by` varchar(32) NOT NULL,
  `created_on` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `last_modified_by` varchar(32) DEFAULT NULL,
  `last_modified_on` timestamp(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employee_identifier_uq` (`identifier`),
  KEY `employee_office_fk` (`assigned_office_id`),
  CONSTRAINT `employee_office_fk` FOREIGN KEY (`assigned_office_id`) REFERENCES `horus_offices` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horus_employees`
--

LOCK TABLES `horus_employees` WRITE;
/*!40000 ALTER TABLE `horus_employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `horus_employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horus_external_references`
--

DROP TABLE IF EXISTS `horus_external_references`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `horus_external_references` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `office_identifier` varchar(32) NOT NULL,
  `a_type` varchar(32) DEFAULT NULL,
  `a_state` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `external_references_uq` (`office_identifier`,`a_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horus_external_references`
--

LOCK TABLES `horus_external_references` WRITE;
/*!40000 ALTER TABLE `horus_external_references` DISABLE KEYS */;
/*!40000 ALTER TABLE `horus_external_references` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horus_offices`
--

DROP TABLE IF EXISTS `horus_offices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `horus_offices` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_office_id` bigint(20) DEFAULT NULL,
  `identifier` varchar(32) NOT NULL,
  `a_name` varchar(256) NOT NULL,
  `description` varchar(2048) DEFAULT NULL,
  `created_by` varchar(32) NOT NULL,
  `created_on` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `last_modified_by` varchar(32) DEFAULT NULL,
  `last_modified_on` timestamp(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `office_identifier_uq` (`identifier`),
  KEY `office_parent_fk` (`parent_office_id`),
  CONSTRAINT `office_parent_fk` FOREIGN KEY (`parent_office_id`) REFERENCES `horus_offices` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horus_offices`
--

LOCK TABLES `horus_offices` WRITE;
/*!40000 ALTER TABLE `horus_offices` DISABLE KEYS */;
/*!40000 ALTER TABLE `horus_offices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maat_addresses`
--

DROP TABLE IF EXISTS `maat_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maat_addresses` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `street` varchar(256) NOT NULL,
  `city` varchar(256) NOT NULL,
  `postal_code` varchar(32) DEFAULT NULL,
  `region` varchar(256) DEFAULT NULL,
  `country_code` varchar(2) NOT NULL,
  `country` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maat_addresses`
--

LOCK TABLES `maat_addresses` WRITE;
/*!40000 ALTER TABLE `maat_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `maat_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maat_commands`
--

DROP TABLE IF EXISTS `maat_commands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maat_commands` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) NOT NULL,
  `a_type` varchar(32) NOT NULL,
  `a_comment` varchar(32) DEFAULT NULL,
  `created_by` varchar(32) NOT NULL,
  `created_on` timestamp(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `maat_commands_customers_fk` (`customer_id`),
  CONSTRAINT `maat_commands_customers_fk` FOREIGN KEY (`customer_id`) REFERENCES `maat_customers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maat_commands`
--

LOCK TABLES `maat_commands` WRITE;
/*!40000 ALTER TABLE `maat_commands` DISABLE KEYS */;
/*!40000 ALTER TABLE `maat_commands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maat_contact_details`
--

DROP TABLE IF EXISTS `maat_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maat_contact_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) NOT NULL,
  `a_type` varchar(32) NOT NULL,
  `a_group` varchar(256) NOT NULL,
  `a_value` varchar(32) NOT NULL,
  `preference_level` tinyint(4) DEFAULT NULL,
  `validated` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `maat_contact_details_cust_fk` (`customer_id`),
  CONSTRAINT `maat_contact_details_cust_fk` FOREIGN KEY (`customer_id`) REFERENCES `maat_customers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maat_contact_details`
--

LOCK TABLES `maat_contact_details` WRITE;
/*!40000 ALTER TABLE `maat_contact_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `maat_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maat_customers`
--

DROP TABLE IF EXISTS `maat_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maat_customers` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(32) NOT NULL,
  `a_type` varchar(32) NOT NULL,
  `given_name` varchar(256) NOT NULL,
  `middle_name` varchar(256) DEFAULT NULL,
  `surname` varchar(256) NOT NULL,
  `date_of_birth` date NOT NULL,
  `account_beneficiary` varchar(512) DEFAULT NULL,
  `reference_customer` varchar(32) DEFAULT NULL,
  `assigned_office` varchar(32) DEFAULT NULL,
  `assigned_employee` varchar(32) DEFAULT NULL,
  `current_state` varchar(32) NOT NULL,
  `address_id` bigint(20) NOT NULL,
  `created_by` varchar(32) DEFAULT NULL,
  `created_on` timestamp(3) NULL DEFAULT NULL,
  `last_modified_by` varchar(32) DEFAULT NULL,
  `last_modified_on` timestamp(3) NULL DEFAULT NULL,
  `is_member` tinyint(1) NOT NULL,
  `application_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `maat_customer_identifier_uq` (`identifier`),
  KEY `maat_customers_addresses_fk` (`address_id`),
  CONSTRAINT `maat_customers_addresses_fk` FOREIGN KEY (`address_id`) REFERENCES `maat_addresses` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maat_customers`
--

LOCK TABLES `maat_customers` WRITE;
/*!40000 ALTER TABLE `maat_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `maat_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maat_document_pages`
--

DROP TABLE IF EXISTS `maat_document_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maat_document_pages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `document_id` bigint(20) NOT NULL,
  `page_number` int(11) NOT NULL,
  `content_type` varchar(256) NOT NULL,
  `size` bigint(20) NOT NULL,
  `image` mediumblob NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `maat_document_pages_uq` (`document_id`,`page_number`),
  CONSTRAINT `maat_document_pages_fk` FOREIGN KEY (`document_id`) REFERENCES `maat_documents` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maat_document_pages`
--

LOCK TABLES `maat_document_pages` WRITE;
/*!40000 ALTER TABLE `maat_document_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `maat_document_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maat_documents`
--

DROP TABLE IF EXISTS `maat_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maat_documents` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) NOT NULL,
  `identifier` varchar(32) NOT NULL,
  `is_completed` tinyint(1) NOT NULL,
  `created_on` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `created_by` varchar(32) NOT NULL,
  `description` varchar(4096) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `maat_documents_uq` (`customer_id`,`identifier`),
  CONSTRAINT `maat_documents_fk` FOREIGN KEY (`customer_id`) REFERENCES `maat_customers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maat_documents`
--

LOCK TABLES `maat_documents` WRITE;
/*!40000 ALTER TABLE `maat_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `maat_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maat_identification_card_scans`
--

DROP TABLE IF EXISTS `maat_identification_card_scans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maat_identification_card_scans` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(32) NOT NULL,
  `description` varchar(4096) NOT NULL,
  `identification_card_id` bigint(20) NOT NULL,
  `content_type` varchar(256) NOT NULL,
  `size` bigint(20) NOT NULL,
  `image` mediumblob NOT NULL,
  `created_on` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `created_by` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `maat_ident_card_scans_ident_uq` (`identifier`,`identification_card_id`),
  KEY `maat_ident_card_scans_fk` (`identification_card_id`),
  CONSTRAINT `maat_ident_card_scans_fk` FOREIGN KEY (`identification_card_id`) REFERENCES `maat_identification_cards` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maat_identification_card_scans`
--

LOCK TABLES `maat_identification_card_scans` WRITE;
/*!40000 ALTER TABLE `maat_identification_card_scans` DISABLE KEYS */;
/*!40000 ALTER TABLE `maat_identification_card_scans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maat_identification_cards`
--

DROP TABLE IF EXISTS `maat_identification_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maat_identification_cards` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `a_type` varchar(128) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `a_number` varchar(32) NOT NULL,
  `expiration_date` date NOT NULL,
  `issuer` varchar(256) DEFAULT NULL,
  `created_by` varchar(32) DEFAULT NULL,
  `created_on` timestamp(3) NULL DEFAULT NULL,
  `last_modified_by` varchar(32) DEFAULT NULL,
  `last_modified_on` timestamp(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `maat_id_cards_customers_fk` (`customer_id`),
  CONSTRAINT `maat_id_cards_customers_fk` FOREIGN KEY (`customer_id`) REFERENCES `maat_customers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maat_identification_cards`
--

LOCK TABLES `maat_identification_cards` WRITE;
/*!40000 ALTER TABLE `maat_identification_cards` DISABLE KEYS */;
/*!40000 ALTER TABLE `maat_identification_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maat_portraits`
--

DROP TABLE IF EXISTS `maat_portraits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maat_portraits` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) NOT NULL,
  `content_type` varchar(256) NOT NULL,
  `size` bigint(20) NOT NULL,
  `image` mediumblob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `maat_id_portraits_customers_fk` (`customer_id`),
  CONSTRAINT `maat_id_portraits_customers_fk` FOREIGN KEY (`customer_id`) REFERENCES `maat_customers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maat_portraits`
--

LOCK TABLES `maat_portraits` WRITE;
/*!40000 ALTER TABLE `maat_portraits` DISABLE KEYS */;
/*!40000 ALTER TABLE `maat_portraits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maat_task_definitions`
--

DROP TABLE IF EXISTS `maat_task_definitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maat_task_definitions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(32) NOT NULL,
  `a_type` varchar(32) NOT NULL,
  `a_name` varchar(256) NOT NULL,
  `description` varchar(4096) DEFAULT NULL,
  `assigned_commands` varchar(512) NOT NULL,
  `mandatory` tinyint(1) DEFAULT NULL,
  `predefined` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `maat_task_def_identifier_uq` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maat_task_definitions`
--

LOCK TABLES `maat_task_definitions` WRITE;
/*!40000 ALTER TABLE `maat_task_definitions` DISABLE KEYS */;
/*!40000 ALTER TABLE `maat_task_definitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maat_task_instances`
--

DROP TABLE IF EXISTS `maat_task_instances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maat_task_instances` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `task_definition_id` bigint(20) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `a_comment` varchar(4096) DEFAULT NULL,
  `executed_on` timestamp(3) NULL DEFAULT NULL,
  `executed_by` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `maat_task_instances_def_fk` (`task_definition_id`),
  KEY `maat_task_instances_cust_fk` (`customer_id`),
  CONSTRAINT `maat_task_instances_cust_fk` FOREIGN KEY (`customer_id`) REFERENCES `maat_customers` (`id`),
  CONSTRAINT `maat_task_instances_def_fk` FOREIGN KEY (`task_definition_id`) REFERENCES `maat_task_definitions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maat_task_instances`
--

LOCK TABLES `maat_task_instances` WRITE;
/*!40000 ALTER TABLE `maat_task_instances` DISABLE KEYS */;
/*!40000 ALTER TABLE `maat_task_instances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nun_catalogs`
--

DROP TABLE IF EXISTS `nun_catalogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nun_catalogs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(32) NOT NULL,
  `a_name` varchar(256) NOT NULL,
  `description` varchar(4096) DEFAULT NULL,
  `created_by` varchar(32) DEFAULT NULL,
  `created_on` timestamp(3) NULL DEFAULT NULL,
  `last_modified_by` varchar(32) DEFAULT NULL,
  `last_modified_on` timestamp(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nun_catalogs_identifier_uq` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nun_catalogs`
--

LOCK TABLES `nun_catalogs` WRITE;
/*!40000 ALTER TABLE `nun_catalogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `nun_catalogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nun_field_values`
--

DROP TABLE IF EXISTS `nun_field_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nun_field_values` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `entity_id` bigint(20) NOT NULL,
  `field_id` bigint(20) NOT NULL,
  `a_value` varchar(4096) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nun_field_values_uq` (`entity_id`,`field_id`),
  KEY `nun_field_values_fields_fk` (`field_id`),
  CONSTRAINT `nun_field_values_entities_fk` FOREIGN KEY (`entity_id`) REFERENCES `maat_customers` (`id`),
  CONSTRAINT `nun_field_values_fields_fk` FOREIGN KEY (`field_id`) REFERENCES `nun_fields` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nun_field_values`
--

LOCK TABLES `nun_field_values` WRITE;
/*!40000 ALTER TABLE `nun_field_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `nun_field_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nun_fields`
--

DROP TABLE IF EXISTS `nun_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nun_fields` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `catalog_id` bigint(20) NOT NULL,
  `identifier` varchar(32) NOT NULL,
  `data_type` varchar(256) NOT NULL,
  `a_label` varchar(256) NOT NULL,
  `a_hint` varchar(512) DEFAULT NULL,
  `description` varchar(4096) DEFAULT NULL,
  `mandatory` tinyint(1) DEFAULT NULL,
  `a_length` bigint(20) DEFAULT NULL,
  `a_precision` bigint(20) DEFAULT NULL,
  `min_value` bigint(20) DEFAULT NULL,
  `max_value` bigint(20) DEFAULT NULL,
  `created_by` varchar(32) DEFAULT NULL,
  `created_on` timestamp(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nun_fields_uq` (`catalog_id`,`identifier`),
  CONSTRAINT `nun_fields_catalogs_fk` FOREIGN KEY (`catalog_id`) REFERENCES `nun_catalogs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nun_fields`
--

LOCK TABLES `nun_fields` WRITE;
/*!40000 ALTER TABLE `nun_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `nun_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nun_options`
--

DROP TABLE IF EXISTS `nun_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nun_options` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `field_id` bigint(20) NOT NULL,
  `a_label` varchar(256) NOT NULL,
  `a_value` bigint(20) NOT NULL,
  `created_by` varchar(32) DEFAULT NULL,
  `created_on` timestamp(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nun_options_uq` (`field_id`,`a_label`),
  CONSTRAINT `nun_options_fields_fk` FOREIGN KEY (`field_id`) REFERENCES `nun_fields` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nun_options`
--

LOCK TABLES `nun_options` WRITE;
/*!40000 ALTER TABLE `nun_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `nun_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `office_schema_version`
--

DROP TABLE IF EXISTS `office_schema_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `office_schema_version` (
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
  KEY `office_schema_version_vr_idx` (`version_rank`),
  KEY `office_schema_version_ir_idx` (`installed_rank`),
  KEY `office_schema_version_s_idx` (`success`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `office_schema_version`
--

LOCK TABLES `office_schema_version` WRITE;
/*!40000 ALTER TABLE `office_schema_version` DISABLE KEYS */;
INSERT INTO `office_schema_version` VALUES (1,1,'1','initial setup','SQL','V1__initial_setup.sql',-728313173,'root','2019-06-05 13:21:03',69,1),(2,2,'2','add external references','SQL','V2__add_external_references.sql',1333440928,'root','2019-06-05 13:21:03',19,1);
/*!40000 ALTER TABLE `office_schema_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thoth_account_entries`
--

DROP TABLE IF EXISTS `thoth_account_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thoth_account_entries` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account_id` bigint(20) DEFAULT NULL,
  `a_type` varchar(32) NOT NULL,
  `transaction_date` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `message` varchar(2048) DEFAULT NULL,
  `amount` decimal(15,5) NOT NULL,
  `balance` decimal(15,5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `thoth_account_entries_accounts_fk` (`account_id`),
  CONSTRAINT `thoth_account_entries_accounts_fk` FOREIGN KEY (`account_id`) REFERENCES `thoth_accounts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thoth_account_entries`
--

LOCK TABLES `thoth_account_entries` WRITE;
/*!40000 ALTER TABLE `thoth_account_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `thoth_account_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thoth_accounts`
--

DROP TABLE IF EXISTS `thoth_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thoth_accounts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `a_type` varchar(32) NOT NULL,
  `identifier` varchar(34) NOT NULL,
  `a_name` varchar(256) NOT NULL,
  `holders` varchar(256) DEFAULT NULL,
  `signature_authorities` varchar(256) DEFAULT NULL,
  `balance` decimal(15,5) NOT NULL,
  `reference_account_id` bigint(20) DEFAULT NULL,
  `ledger_id` bigint(20) NOT NULL,
  `a_state` varchar(32) NOT NULL,
  `created_on` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `created_by` varchar(32) NOT NULL,
  `last_modified_on` timestamp(3) NULL DEFAULT NULL,
  `last_modified_by` varchar(32) DEFAULT NULL,
  `alternative_account_number` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `thoth_accounts_identifier_uq` (`identifier`),
  UNIQUE KEY `thoth_alt_acct_no_uq` (`alternative_account_number`),
  KEY `thoth_reference_accounts_fk` (`reference_account_id`),
  KEY `thoth_accounts_ledgers_fk` (`ledger_id`),
  CONSTRAINT `thoth_accounts_ledgers_fk` FOREIGN KEY (`ledger_id`) REFERENCES `thoth_ledgers` (`id`),
  CONSTRAINT `thoth_reference_accounts_fk` FOREIGN KEY (`reference_account_id`) REFERENCES `thoth_accounts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thoth_accounts`
--

LOCK TABLES `thoth_accounts` WRITE;
/*!40000 ALTER TABLE `thoth_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `thoth_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thoth_commands`
--

DROP TABLE IF EXISTS `thoth_commands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thoth_commands` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account_id` bigint(20) NOT NULL,
  `a_type` varchar(32) NOT NULL,
  `a_comment` varchar(32) DEFAULT NULL,
  `created_by` varchar(32) NOT NULL,
  `created_on` timestamp(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `thoth_commands_accounts_fk` (`account_id`),
  CONSTRAINT `thoth_commands_accounts_fk` FOREIGN KEY (`account_id`) REFERENCES `thoth_accounts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thoth_commands`
--

LOCK TABLES `thoth_commands` WRITE;
/*!40000 ALTER TABLE `thoth_commands` DISABLE KEYS */;
/*!40000 ALTER TABLE `thoth_commands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thoth_ledgers`
--

DROP TABLE IF EXISTS `thoth_ledgers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thoth_ledgers` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `a_type` varchar(32) NOT NULL,
  `identifier` varchar(32) NOT NULL,
  `a_name` varchar(256) NOT NULL,
  `description` varchar(2048) DEFAULT NULL,
  `parent_ledger_id` bigint(20) DEFAULT NULL,
  `created_on` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `created_by` varchar(32) NOT NULL,
  `last_modified_on` timestamp(3) NULL DEFAULT NULL,
  `last_modified_by` varchar(32) DEFAULT NULL,
  `show_accounts_in_chart` tinyint(1) NOT NULL,
  `total_value` decimal(15,5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `thoth_ledgers_identifier_uq` (`identifier`),
  KEY `thoth_ledgers_parent_fk` (`parent_ledger_id`),
  CONSTRAINT `thoth_ledgers_parent_fk` FOREIGN KEY (`parent_ledger_id`) REFERENCES `thoth_ledgers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thoth_ledgers`
--

LOCK TABLES `thoth_ledgers` WRITE;
/*!40000 ALTER TABLE `thoth_ledgers` DISABLE KEYS */;
/*!40000 ALTER TABLE `thoth_ledgers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thoth_tx_types`
--

DROP TABLE IF EXISTS `thoth_tx_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thoth_tx_types` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(32) NOT NULL,
  `a_name` varchar(256) NOT NULL,
  `description` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `thoth_tx_types_identifier_uq` (`identifier`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thoth_tx_types`
--

LOCK TABLES `thoth_tx_types` WRITE;
/*!40000 ALTER TABLE `thoth_tx_types` DISABLE KEYS */;
INSERT INTO `thoth_tx_types` VALUES (1,'ACCC','Account Closing',NULL),(2,'ACCO','Account Opening',NULL),(3,'ACCT','Account Transfer',NULL),(4,'ACDT','ACH Credit',NULL),(5,'ADBT','ACH Debit',NULL),(6,'ADJT','Adjustments',NULL),(7,'APAC','ACH Pre-Authorised',NULL),(8,'ARET','ACH Return',NULL),(9,'AREV','ACH Reversal',NULL),(10,'ARPD','ARP Debit',NULL),(11,'ASET','ACH Settlement',NULL),(12,'ATXN','ACH Transaction',NULL),(13,'BACT','Branch Account Transfer',NULL),(14,'BBDD','SEPA B2B Direct Debit',NULL),(15,'BCDP','Branch Deposit',NULL),(16,'BCHQ','Branch Cheque',NULL),(17,'BCWD','Branch Withdrawal',NULL),(18,'CAJT','Credit Adjustments',NULL),(19,'CASH','Cash Letter',NULL),(20,'CCCH','Certified Customer Cheque',NULL),(21,'CCHQ','Cheque',NULL),(22,'CDIS','Controlled Disbursement',NULL),(23,'CDPT','Cash Deposit',NULL),(24,'CHRG','Charges',NULL),(25,'CQRV','Cheque Reversal',NULL),(26,'CRCQ','Crossed Cheque',NULL),(27,'CWDL','Cash Withdrawal',NULL),(28,'DAJT','Debit Adjustments',NULL),(29,'DDWN','Drawdown',NULL),(30,'DMCT','Domestic Credit Transfer',NULL),(31,'DSBR','Controlled Disbursement',NULL),(32,'ERTA','Exchange Rate Adjustment',NULL),(33,'FEES','Fees',NULL),(34,'ICCT','Intra Company Transfer',NULL),(35,'INTR','Interests',NULL),(36,'MIXD','Mixed Deposit',NULL),(37,'MSCD','Miscellaneous Deposit',NULL),(38,'NTAV','Not Available',NULL),(39,'OPCQ','Open Cheque',NULL),(40,'ORCQ','Order Cheque',NULL),(41,'OTHR','Other',NULL),(42,'PADD','Pre-Authorised Direct Debit',NULL),(43,'PMDD','Direct Debit Payment',NULL),(44,'POSC','Credit Card Payment',NULL),(45,'POSD','Point-of-Sale Payment Debit Card',NULL),(46,'POSP','Point-of-Sale Payment',NULL),(47,'PPAY','Principal Payment',NULL),(48,'PSTE','Posting Error',NULL),(49,'RCDD','Reversal Due To Payment Cancellation Request',NULL),(50,'RIMB','Reimbursement',NULL),(51,'RPCR','Reversal Due To Payment Cancellation Request',NULL),(52,'SMRT','Smart-Card Payment',NULL),(53,'TAXE','Taxes',NULL),(54,'YTDA','YTD Adjustment',NULL),(55,'ZABA','Zero Balancing',NULL),(56,'ICHQ','Issued Cheques',NULL),(57,'SALA','Payroll/Salary Payment',NULL);
/*!40000 ALTER TABLE `thoth_tx_types` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-05 15:23:59

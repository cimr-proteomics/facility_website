/*!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.6.18-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cimr2
-- ------------------------------------------------------
-- Server version	10.6.18-MariaDB-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `acquisition`
--

DROP TABLE IF EXISTS `acquisition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acquisition` (
  `acqn_type` varchar(100) NOT NULL,
  `spare_column` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`acqn_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acquisition`
--

LOCK TABLES `acquisition` WRITE;
/*!40000 ALTER TABLE `acquisition` DISABLE KEYS */;
INSERT INTO `acquisition` VALUES ('DDA','empty'),('DIA','empty'),('intact protein','empty'),('targeted','empty');
/*!40000 ALTER TABLE `acquisition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bench_hours`
--

DROP TABLE IF EXISTS `bench_hours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bench_hours` (
  `key1` varchar(50) NOT NULL,
  `bench_hrs` float DEFAULT NULL,
  `sparecol1` varchar(50) DEFAULT NULL,
  `sparecol2` varchar(50) DEFAULT NULL,
  `time_updated` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`key1`),
  CONSTRAINT `bench_hours_ibfk_1` FOREIGN KEY (`key1`) REFERENCES `experiment_request` (`key1`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bench_hours`
--

LOCK TABLES `bench_hours` WRITE;
/*!40000 ALTER TABLE `bench_hours` DISABLE KEYS */;
INSERT INTO `bench_hours` VALUES ('Athal@cam.ac.uk*at1',2,'','','05/05/2023, 15:32:09'),('donald@duck.com*dd1',1,'','','05/12/2023, 15:32:09'),('florence@cam.ac.uk*flos1',3,'','','05/08/2023, 15:32:09'),('fred@astaire.com*fred1',1,'','','05/12/2023, 15:32:09'),('Fred@Sanger.cam.ac.uk*fred1',2,'','','05/12/2023, 15:32:09'),('gene@kelly.com*kelly1',1.5,'','','05/12/2023, 15:32:09'),('iris@cam.ac.uk*is1',2.5,'','','05/12/2023, 15:32:09'),('jess_smith@cam.ac.uk*23_ex1',0,'','','05/12/2023, 15:32:09'),('jess_smith@cam.ac.uk*23_ex2',0,'','','05/12/2023, 15:32:09'),('jess_smith@cam.ac.uk*23_ex3',0,'','','05/12/2023, 15:32:09'),('jess_smith@cam.ac.uk*23_ex4',0,'','','05/12/2023, 15:32:09'),('jess_smith@cam.ac.uk*23_ex6',0,'','','05/12/2023, 15:32:09'),('jess_smith@cam.ac.uk*23_ex7',0,'','','05/12/2023, 15:32:09'),('jess_smith@cam.ac.uk*incmp1',0,'','','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk*incmp2',0,'','','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk*signd1',3,'','','10/07/2024, 11:28:21'),('jess_smith@cam.ac.uk*signd2',3,'','','10/07/2024, 11:28:21'),('jess_smith@cam.ac.uk*test1',0,'','','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk*test2',0,'','','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk*test3',0,'','','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk*test4',0,'','','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk*test5',0,'','','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk*test6',0,'','','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk*test7',0,'','','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk*test8',0,'','','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk*TP7_1',0,'','','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk*TP7_2',0,'','','10/07/2024, 10:25:32'),('marie@curie.com*mc1',3,'','','05/08/2023, 15:32:09'),('marie@curie.com*mc2',1,'','','05/08/2023, 15:32:09'),('mickey@mouse.com*mm1',1,'','','05/08/2023, 15:32:09'),('minnie@mouse.com*mm1',3,'','','05/08/2023, 15:32:09'),('taylor@swift.com*ts1',1,'','','05/06/2023, 15:32:09'),('tempeparsons@gmail.com*tp1',1,'','','05/04/2023, 15:32:09');
/*!40000 ALTER TABLE `bench_hours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bench_methods`
--

DROP TABLE IF EXISTS `bench_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bench_methods` (
  `bench_method` varchar(100) NOT NULL,
  `mins_per_method` float NOT NULL,
  PRIMARY KEY (`bench_method`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bench_methods`
--

LOCK TABLES `bench_methods` WRITE;
/*!40000 ALTER TABLE `bench_methods` DISABLE KEYS */;
INSERT INTO `bench_methods` VALUES ('gel_cleanup_gelbandID',15),('gel_cleanup_whole_sample_facilitygel',360),('gel_cleanup_whole_sample_usergel',120),('insolution_digest',60),('intact_protein_prep',60),('no_prep_required',0),('s_trap_digestion',60),('tmt_fractionation',480),('tmt_single_injection',240);
/*!40000 ALTER TABLE `bench_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_request`
--

DROP TABLE IF EXISTS `data_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_request` (
  `key1` varchar(50) NOT NULL,
  `python_hrs` float DEFAULT NULL,
  `sparecol1` varchar(50) DEFAULT NULL,
  `sparecol2` varchar(50) DEFAULT NULL,
  `time_updated` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`key1`),
  CONSTRAINT `data_request_ibfk_1` FOREIGN KEY (`key1`) REFERENCES `experiment_request` (`key1`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_request`
--

LOCK TABLES `data_request` WRITE;
/*!40000 ALTER TABLE `data_request` DISABLE KEYS */;
INSERT INTO `data_request` VALUES ('Athal@cam.ac.uk*at2',11,'','','05/05/2023, 15:32:09'),('donald@duck.com*dd1',9,'','','05/12/2023, 15:32:09'),('florence@cam.ac.uk*flos2',0,'','',NULL),('fred@astaire.com*fred1',3,'','','05/09/2023, 15:32:09'),('gene@kelly.com*kelly1',7,'','','05/09/2023, 15:32:09'),('gene@kelly.com*kelly2',5,'','','05/09/2023, 15:32:09'),('iris@cam.ac.uk*is2',3,'','','05/12/2023, 15:32:09'),('jess_smith@cam.ac.uk*data1',0,'','',NULL),('jess_smith@cam.ac.uk*data2',0,'','',NULL),('jess_smith@cam.ac.uk*data3',0,'','',NULL),('jess_smith@cam.ac.uk*data4',0,'','',NULL),('jess_smith@cam.ac.uk*data5',0,'','',NULL),('jess_smith@cam.ac.uk*data6',0,'','',NULL),('jess_smith@cam.ac.uk*data7',0,'','',NULL),('jess_smith@cam.ac.uk*data8',0,'','',NULL),('jess_smith@cam.ac.uk*signd1',2,'','',NULL),('jess_smith@cam.ac.uk*signd2',1,'','',NULL),('mickey@mouse.com*mm2',2,'','','05/12/2023, 15:32:09'),('taylor@swift.com*ts2',7,'','','05/05/2023, 15:32:09');
/*!40000 ALTER TABLE `data_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expenses_summary`
--

DROP TABLE IF EXISTS `expenses_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expenses_summary` (
  `key1` varchar(50) NOT NULL,
  `grant_or_type` varchar(50) NOT NULL,
  `CU_early_discount` varchar(50) DEFAULT NULL,
  `bench_cost` float DEFAULT NULL,
  `instrument_cost` float DEFAULT NULL,
  `wash_cost` float DEFAULT NULL,
  `dbsearch_cost` float DEFAULT NULL,
  `extras_description` varchar(100) DEFAULT NULL,
  `extras_cost` float DEFAULT NULL,
  `Yr_instr_run` int(11) DEFAULT NULL,
  `YrQ_instr_run` varchar(50) DEFAULT NULL,
  `bench_instr_db_signoff` varchar(50) DEFAULT NULL,
  `python_cost` float DEFAULT NULL,
  `YrQ_python_run` varchar(50) DEFAULT NULL,
  `python_signoff` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`key1`),
  CONSTRAINT `expenses_summary_ibfk_1` FOREIGN KEY (`key1`) REFERENCES `experiment_request` (`key1`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expenses_summary`
--

LOCK TABLES `expenses_summary` WRITE;
/*!40000 ALTER TABLE `expenses_summary` DISABLE KEYS */;
INSERT INTO `expenses_summary` VALUES ('Athal@cam.ac.uk*at1','Athal/grant1','N',60.6,216,0,72.72,NULL,NULL,2023,'2023_Q2','tempeparsons@gmail.com_2023_Q2',NULL,NULL,NULL),('Athal@cam.ac.uk*at2','Athal/grant1','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,402.6,'2023_Q2','tempeparsons@gmail.com_2023_Q2'),('donald@duck.com*dd1','quack4','N',363.6,432,0,72.72,NULL,NULL,2023,'2023_Q3','tempeparsons@gmail.com_2023_Q3',329.4,'2023_Q3','tempeparsons@gmail.com_2023_Q3'),('donald@duck.com*dd2','quack4','N',0,324,0,0,NULL,NULL,2023,'2023_Q3','tempeparsons@gmail.com_2023_Q3',NULL,NULL,NULL),('florence@cam.ac.uk*flos1','FN1/grant1','N',242.4,324,0,181.8,NULL,NULL,2023,'2023_Q3','tempeparsons@gmail.com_2023_Q3',NULL,NULL,NULL),('florence@cam.ac.uk*flos2','FN1/grant1','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,134.285,'2023_Q3','tempeparsons@gmail.com_2023_Q3'),('fred@astaire.com*fred1','Other Academia','N',518.797,387.446,0,29.6455,NULL,NULL,2023,'2023_Q3','tempeparsons@gmail.com_2023_Q3',134.285,'2023_Q3','tempeparsons@gmail.com_2023_Q3'),('Fred@Sanger.cam.ac.uk*fred1','FS/grant2','N',60.6,633.6,0,24.24,NULL,NULL,2023,'2023_Q3','tempeparsons@gmail.com_2023_Q3',NULL,NULL,NULL),('gene@kelly.com*kelly1','Other Academia','N',74.1138,792.504,176.112,88.9366,NULL,NULL,2023,'2023_Q3','tempeparsons@gmail.com_2023_Q3',313.333,'2023_Q3','tempeparsons@gmail.com_2023_Q3'),('gene@kelly.com*kelly2','Other Academia','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,223.809,'2023_Q4','tempeparsons@gmail.com_2023_Q4'),('iris@cam.ac.uk*is1','FN1/grant1','N',484.8,2707.2,144,242.4,NULL,NULL,2023,'2023_Q4','tempeparsons@gmail.com_2023_Q4',NULL,NULL,NULL),('iris@cam.ac.uk*is2','FN1/grant1','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,109.8,'2023_Q4','tempeparsons@gmail.com_2023_Q4'),('jess_smith@cam.ac.uk*23_ex1','JS3/grant3','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),('jess_smith@cam.ac.uk*23_ex2','JS3/grant3','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),('jess_smith@cam.ac.uk*23_ex3','JS3/grant3','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),('jess_smith@cam.ac.uk*23_ex4','JS3/grant3','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),('jess_smith@cam.ac.uk*23_ex5','JS3/grant3','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),('jess_smith@cam.ac.uk*23_ex6','JS3/grant3','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),('jess_smith@cam.ac.uk*23_ex7','JS3/grant3','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),('jess_smith@cam.ac.uk*data1','JS3/grant3','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),('jess_smith@cam.ac.uk*data2','JS2/grant2','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),('jess_smith@cam.ac.uk*data3','JS3/grant3','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),('jess_smith@cam.ac.uk*data4','JS1/grant1','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),('jess_smith@cam.ac.uk*data5','JS2/grant2','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),('jess_smith@cam.ac.uk*data6','JS3/grant3','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),('jess_smith@cam.ac.uk*data7','JS1/grant1','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),('jess_smith@cam.ac.uk*data8','JS2/grant2','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),('jess_smith@cam.ac.uk*incmp1','JS1/grant1','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),('jess_smith@cam.ac.uk*incmp2','JS2/grant2','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),('jess_smith@cam.ac.uk*notarv','JS2/grant2','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),('jess_smith@cam.ac.uk*signd1','JS3/grant3','N',60.6,1900.8,144,24.24,'racing donkey',5000,2024,'2024_Q2','tempeparsons@gmail.com_2024_Q2',73.2,'2024_Q2','tempeparsons@gmail.com_2024_Q2'),('jess_smith@cam.ac.uk*signd2','JS3/grant3','N',60.6,1900.8,144,24.24,'beach holiday',3000,2024,'2024_Q2','tempeparsons@gmail.com_2024_Q2',36.6,'2024_Q2','tempeparsons@gmail.com_2024_Q2'),('jess_smith@cam.ac.uk*test1','JS1/grant1','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),('jess_smith@cam.ac.uk*test2','JS3/grant3','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),('jess_smith@cam.ac.uk*test3','JS3/grant3','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),('jess_smith@cam.ac.uk*test4','JS2/grant2','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),('jess_smith@cam.ac.uk*test5','JS1/grant1','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),('jess_smith@cam.ac.uk*test6','JS1/grant1','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),('jess_smith@cam.ac.uk*test7','JS2/grant2','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),('jess_smith@cam.ac.uk*test8','JS3/grant3','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),('jess_smith@cam.ac.uk*TP7_1','JS3/grant3','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),('jess_smith@cam.ac.uk*TP7_2','JS1/grant1','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),('marie@curie.com*mc1','Other Academia','N',296.455,792.504,0,222.341,NULL,NULL,2023,'2023_Q3','tempeparsons@gmail.com_2023_Q3',NULL,NULL,NULL),('marie@curie.com*mc2','Other Academia','N',74.1138,88.056,0,74.1138,NULL,NULL,2023,'2023_Q3','tempeparsons@gmail.com_2023_Q3',NULL,NULL,NULL),('marie@curie.com*mc3','Other Academia','N',74.1138,176.112,0,0,NULL,NULL,2023,'2023_Q3','tempeparsons@gmail.com_2023_Q3',NULL,NULL,NULL),('michael@bolton.com*bolt1','Industry','N',121.2,288,0,121.2,NULL,NULL,2023,'2023_Q2','tempeparsons@gmail.com_2023_Q2',NULL,NULL,NULL),('michael@bolton.com*bolt2','Industry','N',181.8,1728,288,30.3,NULL,NULL,2023,'2023_Q2','tempeparsons@gmail.com_2023_Q2',NULL,NULL,NULL),('mickey@mouse.com*mm1','JS2/grant2','N',60.6,288,144,60.6,NULL,NULL,2023,'2023_Q3','tempeparsons@gmail.com_2023_Q3',NULL,NULL,NULL),('mickey@mouse.com*mm2','JS2/grant2','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,73.2,'2023_Q4','tempeparsons@gmail.com_2023_Q4'),('minnie@mouse.com*mm1','Other Academia','N',111.171,1056.67,176.112,18.5285,NULL,NULL,2023,'2023_Q3','tempeparsons@gmail.com_2023_Q3',NULL,NULL,NULL),('minnie@mouse.com*mm2','Other Academia','N',0,704.448,176.112,18.5285,NULL,NULL,2023,'2023_Q3','tempeparsons@gmail.com_2023_Q3',NULL,NULL,NULL),('minnie@mouse.com*mm3','Other Academia','N',0,387.446,0,29.6455,NULL,NULL,2023,'2023_Q3','tempeparsons@gmail.com_2023_Q3',NULL,NULL,NULL),('Psativum@cam.ac.uk*prm1','FS/grant1','Y',0,332.64,110.88,0,NULL,NULL,2023,'2023_Q2','tempeparsons@gmail.com_2023_Q2',NULL,NULL,NULL),('Psativum@cam.ac.uk*TMT1','FS/grant1','Y',0,3821.66,110.88,0,NULL,NULL,2023,'2023_Q2','tempeparsons@gmail.com_2023_Q2',NULL,NULL,NULL),('taylor@swift.com*ts1','Industry','N',333.3,3168,288,30.3,NULL,NULL,2023,'2023_Q2','tempeparsons@gmail.com_2023_Q2',NULL,NULL,NULL),('taylor@swift.com*ts2','Industry','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,512.4,'2023_Q2','tempeparsons@gmail.com_2023_Q2'),('tempeparsons@gmail.com*tp1','Other Academia','N',74.1138,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('tempeparsons@gmail.com*tp2','Other Academia','N',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('tempeparsons@gmail.com*tp3','Other Academia','N',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `expenses_summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experiment_request`
--

DROP TABLE IF EXISTS `experiment_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `experiment_request` (
  `email` varchar(50) DEFAULT NULL,
  `expt_code` varchar(50) NOT NULL,
  `key1` varchar(50) NOT NULL,
  `grant_code` varchar(50) NOT NULL,
  `expt_type` varchar(50) NOT NULL,
  `expt_cat` varchar(50) NOT NULL,
  `db_cat` varchar(50) NOT NULL,
  `extra_notes` text DEFAULT NULL,
  `time_requested` varchar(50) DEFAULT NULL,
  `arrived` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`key1`),
  KEY `email` (`email`),
  CONSTRAINT `experiment_request_ibfk_1` FOREIGN KEY (`email`) REFERENCES `users` (`email`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experiment_request`
--

LOCK TABLES `experiment_request` WRITE;
/*!40000 ALTER TABLE `experiment_request` DISABLE KEYS */;
INSERT INTO `experiment_request` VALUES ('Athal@cam.ac.uk','at1','Athal@cam.ac.uk*at1','Athal/grant1','Benchwork + Samples + Database search','BioID','Horse','here are some notes','05/05/2023, 15:32:09','2023_Q1'),('Athal@cam.ac.uk','at2','Athal@cam.ac.uk*at2','Athal/grant1','Data only','Other','No DB search','','05/05/2023, 15:32:09','2023_Q1'),('donald@duck.com','dd1','donald@duck.com*dd1','quack4','Benchwork + Samples + Database search','ID everything in sample','Cat','','05/12/2023, 15:32:09','2023_Q1'),('donald@duck.com','dd2','donald@duck.com*dd2','quack4','Samples only','TMT single sample','Pig','','05/12/2023, 15:32:09','2023_Q1'),('florence@cam.ac.uk','flos1','florence@cam.ac.uk*flos1','FN1/grant1','Benchwork + Samples + Database search','TMT single sample','Ecoli','notes from florence','05/04/2023, 15:32:09','2023_Q1'),('florence@cam.ac.uk','flos2','florence@cam.ac.uk*flos2','FN1/grant1','Data only','Other','No DB search','','05/04/2023, 15:32:09','2023_Q1'),('fred@astaire.com','fred1','fred@astaire.com*fred1','Other Academia','Benchwork + Samples + Database search','ID everything in sample','Plasmodium','','05/12/2023, 15:32:09','2023_Q1'),('Fred@Sanger.cam.ac.uk','fred1','Fred@Sanger.cam.ac.uk*fred1','FS/grant2','Benchwork + Samples + Database search','ID everything in sample','Human','freds notes','05/12/2023, 15:32:09','2023_Q1'),('gene@kelly.com','kelly1','gene@kelly.com*kelly1','Other Academia','Benchwork + Samples + Database search','BioID','Human','gene kelly\'s bioid experiment','05/12/2023, 15:32:09','2023_Q1'),('gene@kelly.com','kelly2','gene@kelly.com*kelly2','Other Academia','Data only','Other','No DB search','gene kelly\'s data request','05/12/2023, 15:32:09','2023_Q1'),('iris@cam.ac.uk','is1','iris@cam.ac.uk*is1','FN1/grant1','Benchwork + Samples + Database search','TMT fractions','Salmonella','notes','05/12/2023, 15:32:09','2023_Q1'),('iris@cam.ac.uk','is2','iris@cam.ac.uk*is2','FN1/grant1','Data only','Other','Influenza A','notes','05/12/2023, 15:32:09','2023_Q1'),('jess_smith@cam.ac.uk','23_ex1','jess_smith@cam.ac.uk*23_ex1','JS3/grant3','Benchwork + Samples + Database search','BioID','Human_isoforms','this experiment needs updating from ages ago','05/12/2023, 15:32:09','2023_Q4'),('jess_smith@cam.ac.uk','23_ex2','jess_smith@cam.ac.uk*23_ex2','JS3/grant3','Benchwork + Samples + Database search','BioID','Human_isoforms','needs updating from ages ago','05/12/2023, 15:32:09','2023_Q4'),('jess_smith@cam.ac.uk','23_ex3','jess_smith@cam.ac.uk*23_ex3','JS3/grant3','Benchwork + Samples + Database search','BioID','Human_isoforms','not updated from ages ago','05/12/2023, 15:32:09','2023_Q4'),('jess_smith@cam.ac.uk','23_ex4','jess_smith@cam.ac.uk*23_ex4','JS3/grant3','Benchwork + Samples + Database search','BioID','Human','not updated from ages ago','05/12/2023, 15:32:09','2023_Q4'),('jess_smith@cam.ac.uk','23_ex5','jess_smith@cam.ac.uk*23_ex5','JS3/grant3','Samples + Database search','Immunoprecipitation','Human_isoforms','npt updated from ages ago','05/12/2023, 15:32:09','2023_Q4'),('jess_smith@cam.ac.uk','23_ex6','jess_smith@cam.ac.uk*23_ex6','JS3/grant3','Benchwork + Samples + Database search','BioID','Human_isoforms','not updated from ages ago','05/12/2023, 15:32:09','N'),('jess_smith@cam.ac.uk','23_ex7','jess_smith@cam.ac.uk*23_ex7','JS3/grant3','Benchwork + Samples + Database search','Immunoprecipitation','Human_isoforms','','05/12/2023, 15:32:09','N'),('jess_smith@cam.ac.uk','data1','jess_smith@cam.ac.uk*data1','JS3/grant3','Data only','Data only','','','10/07/2024, 10:25:32','N'),('jess_smith@cam.ac.uk','data2','jess_smith@cam.ac.uk*data2','JS2/grant2','Data only','Data only','','','10/07/2024, 10:25:32','N'),('jess_smith@cam.ac.uk','data3','jess_smith@cam.ac.uk*data3','JS3/grant3','Data only','Data only','','','10/07/2024, 10:25:32','N'),('jess_smith@cam.ac.uk','data4','jess_smith@cam.ac.uk*data4','JS1/grant1','Data only','Data only','','','10/07/2024, 10:25:32','N'),('jess_smith@cam.ac.uk','data5','jess_smith@cam.ac.uk*data5','JS2/grant2','Data only','Data only','','This is a really complicated analysis; you\'ll want to discuss it in person first.','10/07/2024, 10:25:32','N'),('jess_smith@cam.ac.uk','data6','jess_smith@cam.ac.uk*data6','JS3/grant3','Data only','Data only','No_DB_search','make my data look beautiful, please','10/07/2024, 10:25:32','N'),('jess_smith@cam.ac.uk','data7','jess_smith@cam.ac.uk*data7','JS1/grant1','Data only','Data only','','','10/07/2024, 10:25:32','N'),('jess_smith@cam.ac.uk','data8','jess_smith@cam.ac.uk*data8','JS2/grant2','Data only','Data only','','','10/07/2024, 10:25:32','N'),('jess_smith@cam.ac.uk','incmp1','jess_smith@cam.ac.uk*incmp1','JS1/grant1','Benchwork + Samples + Database search','TMT fractions','Human_isoforms, Ecoli','search against both databases together, HPLC fractionation to 12 fractions.','10/07/2024, 10:25:32','2024_Q2'),('jess_smith@cam.ac.uk','incmp2','jess_smith@cam.ac.uk*incmp2','JS2/grant2','Benchwork + Samples + Database search','TMT fractions','Human, InfluenzaA','search against two databases, fractionate sample into 12 fractions before running. ','10/07/2024, 10:25:32','2024_Q2'),('jess_smith@cam.ac.uk','notarv','jess_smith@cam.ac.uk*notarv','JS2/grant2','Samples only','Immunoprecipitation','Human_isoforms','this experiment shouldn\'t get marked as arrived (testing)','21/08/2024, 15:35:34','N'),('jess_smith@cam.ac.uk','signd1','jess_smith@cam.ac.uk*signd1','JS3/grant3','Benchwork + Samples + Database search','Immunoprecipitation','Human_isoforms','6 samples from one experiment, c1, c2, c3 are controls, s1, s2, s3 are samples. protein concentation','10/07/2024, 10:25:32','2024_Q2'),('jess_smith@cam.ac.uk','signd2','jess_smith@cam.ac.uk*signd2','JS3/grant3','Benchwork + Samples + Database search','Immunoprecipitation','Human','6 samples from one experiment, c1, c2, c3 are controls, s1, s2, s3 are samples. protein concentation','10/07/2024, 10:25:32','2024_Q2'),('jess_smith@cam.ac.uk','test1','jess_smith@cam.ac.uk*test1','JS1/grant1','Benchwork + Samples + Database search','ID everything in sample','Human','cleaning up sample using gel. cut gel into 4 chunks (or as many as you think appropriate)','10/07/2024, 10:25:32','N'),('jess_smith@cam.ac.uk','test2','jess_smith@cam.ac.uk*test2','JS3/grant3','Benchwork + Samples + Database search','ID everything in sample','Human','cleaning up sample using gel. cut gel into 4 chunks (or as many as you think appropriate)','10/07/2024, 10:25:32','N'),('jess_smith@cam.ac.uk','test3','jess_smith@cam.ac.uk*test3','JS3/grant3','Benchwork + Samples + Database search','ID everything in sample','Human','cleaning up sample using gel. cut gel into 4 chunks (or as many as you think appropriate)','10/07/2024, 10:25:32','N'),('jess_smith@cam.ac.uk','test4','jess_smith@cam.ac.uk*test4','JS2/grant2','Benchwork + Samples + Database search','ID everything in sample','Human','cleaning up sample using gel. cut gel into 4 chunks (or as many as you think appropriate)','10/07/2024, 10:25:32','N'),('jess_smith@cam.ac.uk','test5','jess_smith@cam.ac.uk*test5','JS1/grant1','Benchwork + Samples + Database search','ID everything in sample','Human','cleaning up sample using gel. cut gel into 4 chunks (or as many as you think appropriate)','10/07/2024, 10:25:32','N'),('jess_smith@cam.ac.uk','test6','jess_smith@cam.ac.uk*test6','JS1/grant1','Benchwork + Samples + Database search','ID everything in sample','Human','cleaning up sample using gel. cut gel into 4 chunks (or as many as you think appropriate)','10/07/2024, 10:25:32','N'),('jess_smith@cam.ac.uk','test7','jess_smith@cam.ac.uk*test7','JS2/grant2','Benchwork + Samples + Database search','ID everything in sample','Human','cleaning up sample using gel. cut gel into 4 chunks (or as many as you think appropriate)','10/07/2024, 10:25:32','N'),('jess_smith@cam.ac.uk','test8','jess_smith@cam.ac.uk*test8','JS3/grant3','Benchwork + Samples + Database search','ID everything in sample','Human','cleaning up sample using gel. cut gel into 4 chunks (or as many as you think appropriate)','10/07/2024, 10:25:32','N'),('jess_smith@cam.ac.uk','TP7_1','jess_smith@cam.ac.uk*TP7_1','JS3/grant3','Benchwork + Samples + Database search','Mixed methods','Human_isoforms, Plasmodium, Ecoli','This is a deliberately complicated request.','10/07/2024, 10:25:32','N'),('jess_smith@cam.ac.uk','TP7_2','jess_smith@cam.ac.uk*TP7_2','JS1/grant1','Benchwork + Samples + Database search','Mixed methods','Human, Chinese_hamster, Plasmodium','intentionally complex request','10/07/2024, 10:25:32','N'),('marie@curie.com','mc1','marie@curie.com*mc1','Other Academia','Benchwork + Samples + Database search','TMT single sample','Nipah virus','notes','05/08/2023, 15:32:09','2023_Q1'),('marie@curie.com','mc2','marie@curie.com*mc2','Other Academia','Benchwork + Samples + Database search','PRM assay','Human','','05/08/2023, 15:32:09','2023_Q1'),('marie@curie.com','mc3','marie@curie.com*mc3','Other Academia','Samples only','Immunoprecipitation','Human isoforms','','05/08/2023, 15:32:09','2023_Q1'),('michael@bolton.com','bolt1','michael@bolton.com*bolt1','Industry','Samples + Database search','Immunoprecipitation','Dog','','05/05/2023, 15:32:09','2023_Q1'),('michael@bolton.com','bolt2','michael@bolton.com*bolt2','Industry','Samples + Database search','ID proteins in band(s)','Human','','05/05/2023, 15:32:09','2023_Q1'),('mickey@mouse.com','mm1','mickey@mouse.com*mm1','JS2/grant2','Benchwork + Samples + Database search','Immunoprecipitation','African green monkey','','05/08/2023, 15:32:09','2023_Q1'),('mickey@mouse.com','mm2','mickey@mouse.com*mm2','JS2/grant2','Data only','Other','No DB search','','05/08/2023, 15:32:09','2023_Q1'),('minnie@mouse.com','mm1','minnie@mouse.com*mm1','Other Academia','Benchwork + Samples + Database search','ID proteins in band(s)','Cat','','05/08/2023, 15:32:09','2023_Q1'),('minnie@mouse.com','mm2','minnie@mouse.com*mm2','Other Academia','Samples + Database search','ID proteins in band(s)','Human','','05/08/2023, 15:32:09','2023_Q1'),('minnie@mouse.com','mm3','minnie@mouse.com*mm3','Other Academia','Samples + Database search','ID everything in sample','Human','','05/08/2023, 15:32:09','2023_Q1'),('Psativum@cam.ac.uk','prm1','Psativum@cam.ac.uk*prm1','FS/grant1','Samples only','PRM assay','Other','this is a prm assay','05/06/2023, 15:32:09','2023_Q1'),('Psativum@cam.ac.uk','TMT1','Psativum@cam.ac.uk*TMT1','FS/grant1','Samples only','TMT fractions','Other','','05/06/2023, 15:32:09','2023_Q1'),('taylor@swift.com','ts1','taylor@swift.com*ts1','Industry','Benchwork + Samples + Database search','ID proteins in band(s)','Human','','05/06/2023, 15:32:09','2023_Q1'),('taylor@swift.com','ts2','taylor@swift.com*ts2','Industry','Data only','Other','No DB search','','05/06/2023, 15:32:09','2023_Q1'),('tempeparsons@gmail.com','tp1','tempeparsons@gmail.com*tp1','Other Academia','Benchwork + Samples + Database search','BioID','Human','','05/04/2023, 15:32:09','2023_Q1'),('tempeparsons@gmail.com','tp2','tempeparsons@gmail.com*tp2','Other Academia','Samples + Database search','BioID','Human','','05/04/2023, 15:32:09','2023_Q1'),('tempeparsons@gmail.com','tp3','tempeparsons@gmail.com*tp3','Other Academia','Samples + Database search','TMT fractions','Other','','05/04/2023, 15:32:09','2023_Q1');
/*!40000 ALTER TABLE `experiment_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institute_type`
--

DROP TABLE IF EXISTS `institute_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institute_type` (
  `institute_type` varchar(100) NOT NULL,
  `price_per_type` float NOT NULL,
  PRIMARY KEY (`institute_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institute_type`
--

LOCK TABLES `institute_type` WRITE;
/*!40000 ALTER TABLE `institute_type` DISABLE KEYS */;
INSERT INTO `institute_type` VALUES ('Cambridge University',1),('Industry',2),('Other Academia',1.223);
/*!40000 ALTER TABLE `institute_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instrument_data_methods`
--

DROP TABLE IF EXISTS `instrument_data_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instrument_data_methods` (
  `instrument_method` varchar(100) NOT NULL,
  `mins_per_method_instr` float NOT NULL,
  `mins_per_method_search` float NOT NULL,
  PRIMARY KEY (`instrument_method`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instrument_data_methods`
--

LOCK TABLES `instrument_data_methods` WRITE;
/*!40000 ALTER TABLE `instrument_data_methods` DISABLE KEYS */;
INSERT INTO `instrument_data_methods` VALUES ('IntactMass(60)',60,60),('IP_fromGel(90)',90,72),('IP_fromSTrap(60)',60,60),('ProximityLigation(180)',180,72),('repeat DB search(0)',0,60),('SILAC_fromGel(90)',90,72),('SingleGelBand(120)',120,15),('TMTfractionated(188)',188,240),('TMTsingle(270)',270,180),('TMTsingle(90)',90,180),('WholeSample_fromGel(90)',90,72),('WholeSample_fromSolution(264)',264,24);
/*!40000 ALTER TABLE `instrument_data_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instrument_details`
--

DROP TABLE IF EXISTS `instrument_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instrument_details` (
  `key1` varchar(50) NOT NULL,
  `method1` varchar(50) NOT NULL,
  `injections1` int(11) DEFAULT NULL,
  `search1` varchar(50) DEFAULT NULL,
  `washes1` int(11) DEFAULT NULL,
  `method2` varchar(50) DEFAULT NULL,
  `injections2` int(11) DEFAULT NULL,
  `search2` varchar(50) DEFAULT NULL,
  `washes2` int(11) DEFAULT NULL,
  `method3` varchar(50) DEFAULT NULL,
  `injections3` int(11) DEFAULT NULL,
  `search3` varchar(50) DEFAULT NULL,
  `washes3` int(11) DEFAULT NULL,
  `method4` varchar(50) DEFAULT NULL,
  `injections4` int(11) DEFAULT NULL,
  `search4` varchar(50) DEFAULT NULL,
  `washes4` int(11) DEFAULT NULL,
  `YrQ_updated` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`key1`),
  CONSTRAINT `instrument_details_ibfk_1` FOREIGN KEY (`key1`) REFERENCES `experiment_request` (`key1`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instrument_details`
--

LOCK TABLES `instrument_details` WRITE;
/*!40000 ALTER TABLE `instrument_details` DISABLE KEYS */;
INSERT INTO `instrument_details` VALUES ('Athal@cam.ac.uk*at1','ProximityLigation(180)',1,'Yes',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023_Q2'),('donald@duck.com*dd1','WholeSample_fromGel(90)',4,'Yes',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023_Q3'),('donald@duck.com*dd2','TMTsingle(270)',1,'No',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023_Q3'),('florence@cam.ac.uk*flos1','TMTsingle(270)',1,'Yes',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023_Q3'),('fred@astaire.com*fred1','WholeSample_fromSolution(264)',1,'Yes',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023_Q3'),('Fred@Sanger.cam.ac.uk*fred1','WholeSample_fromSolution(264)',2,'Yes',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023_Q3'),('gene@kelly.com*kelly1','ProximityLigation(180)',3,'Yes',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023_Q3'),('iris@cam.ac.uk*is1','TMTfractionated(188)',12,'Yes',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023_Q4'),('jess_smith@cam.ac.uk*23_ex1','needs method1',0,'Yes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('jess_smith@cam.ac.uk*23_ex2','needs method1',0,'Yes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('jess_smith@cam.ac.uk*23_ex3','needs method1',0,'Yes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('jess_smith@cam.ac.uk*23_ex4','needs method1',0,'Yes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('jess_smith@cam.ac.uk*23_ex5','needs method1',0,'Yes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('jess_smith@cam.ac.uk*23_ex6','needs method1',0,'Yes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('jess_smith@cam.ac.uk*23_ex7','needs method1',0,'Yes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('jess_smith@cam.ac.uk*incmp1','needs method1',0,'Yes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('jess_smith@cam.ac.uk*incmp2','needs method1',0,'Yes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('jess_smith@cam.ac.uk*notarv','needs method1',0,'No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('jess_smith@cam.ac.uk*signd1','WholeSample_fromSolution(264)',6,'Yes',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024_Q2'),('jess_smith@cam.ac.uk*signd2','WholeSample_fromSolution(264)',6,'Yes',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024_Q2'),('jess_smith@cam.ac.uk*test1','needs method1',0,'Yes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('jess_smith@cam.ac.uk*test2','needs method1',0,'Yes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('jess_smith@cam.ac.uk*test3','needs method1',0,'Yes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('jess_smith@cam.ac.uk*test4','needs method1',0,'Yes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('jess_smith@cam.ac.uk*test5','needs method1',0,'Yes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('jess_smith@cam.ac.uk*test6','needs method1',0,'Yes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('jess_smith@cam.ac.uk*test7','needs method1',0,'Yes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('jess_smith@cam.ac.uk*test8','needs method1',0,'Yes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('jess_smith@cam.ac.uk*TP7_1','needs method1',0,'Yes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('jess_smith@cam.ac.uk*TP7_2','needs method1',0,'Yes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('marie@curie.com*mc1','TMTsingle(270)',2,'Yes',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023_Q3'),('marie@curie.com*mc2','IP_fromSTrap(60)',1,'Yes',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023_Q3'),('marie@curie.com*mc3','IP_fromSTrap(60)',2,'No',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023_Q3'),('michael@bolton.com*bolt1','IP_fromSTrap(60)',2,'Yes',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023_Q2'),('michael@bolton.com*bolt2','SingleGelBand(120)',6,'Yes',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023_Q2'),('mickey@mouse.com*mm1','IP_fromSTrap(60)',4,'Yes',4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023_Q3'),('minnie@mouse.com*mm1','SingleGelBand(120)',6,'Yes',12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023_Q3'),('minnie@mouse.com*mm2','SingleGelBand(120)',4,'Yes',8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023_Q3'),('minnie@mouse.com*mm3','WholeSample_fromSolution(264)',1,'Yes',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023_Q3'),('Psativum@cam.ac.uk*prm1','TMTsingle(90)',4,'No',4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023_Q2'),('Psativum@cam.ac.uk*TMT1','TMTfractionated(188)',22,'No',11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023_Q2'),('taylor@swift.com*ts1','SingleGelBand(120)',11,'Yes',22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023_Q2'),('tempeparsons@gmail.com*tp1','needs method1',0,'Yes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('tempeparsons@gmail.com*tp2','needs method1',0,'No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('tempeparsons@gmail.com*tp3','needs method1',0,'No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `instrument_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instruments`
--

DROP TABLE IF EXISTS `instruments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instruments` (
  `instrument_type` varchar(100) NOT NULL,
  `price_per_min` float NOT NULL,
  PRIMARY KEY (`instrument_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instruments`
--

LOCK TABLES `instruments` WRITE;
/*!40000 ALTER TABLE `instruments` DISABLE KEYS */;
INSERT INTO `instruments` VALUES ('FusionLumos',1.2),('QExactive',1.2);
/*!40000 ALTER TABLE `instruments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `price_per_min`
--

DROP TABLE IF EXISTS `price_per_min`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `price_per_min` (
  `activity` varchar(100) NOT NULL,
  `price_per_min` float NOT NULL,
  PRIMARY KEY (`activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price_per_min`
--

LOCK TABLES `price_per_min` WRITE;
/*!40000 ALTER TABLE `price_per_min` DISABLE KEYS */;
INSERT INTO `price_per_min` VALUES ('bench',1.01),('data_bespoke',0.61),('data_standard',1.01),('instrument',1.2);
/*!40000 ALTER TABLE `price_per_min` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pwds`
--

DROP TABLE IF EXISTS `pwds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pwds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `authenticated` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pwds`
--

LOCK TABLES `pwds` WRITE;
/*!40000 ALTER TABLE `pwds` DISABLE KEYS */;
INSERT INTO `pwds` VALUES (1,'tempeparsons@gmail.com','$2b$12$vfRTSODG50wbRAHzSGST4.ZWIRJCj5QIqC7av6D9cIyR1/ci2la4y',0),(2,'marie@curie.com','$2b$12$G995qfxIfK5CgJZTfHj41ujwh4H5dv/45X.uvEHCuliL1B10xPg32',0),(3,'rosalind@franklin.com','$2b$12$.nEaOohJ5BUgEf3Z/hTFVOUdQVCKPARv1RHP6UjR4ET3he5vGe2EK',0),(4,'gene@kelly.com','$2b$12$j2hpU5hnnqUPxyy4WVaKEu16oxW5OcLraetY0.gjl.8XNuYOdG/N6',0),(5,'fred@astaire.com','$2b$12$ozjKFBqcfrqFb3Rr.OY0MO6rGqFOGoaZZFLLO9x5nODqUzvnhwTD.',0),(6,'minnie@mouse.com','$2b$12$7iebpS3D6lEKMw2QQH6rEea8mI0EsUC4TKEEOV7ZNB16WETH.VS2G',0),(7,'michael@bolton.com','$2b$12$P0KEDLu4cpZc7OKPAoJw9uFyboPhzQA88blqMsvNiy9tZNYrIV15i',0),(8,'taylor@swift.com','$2b$12$B3ZsZaeNPhGi4skQk3Rkie2ymdfv4m3hsJt3YUfj2EVr7BZcGtlVS',0),(9,'Fred@Sanger.cam.ac.uk','$2b$12$L8f4qakh3ZgnIjAabeLAoulVdGKfcMcRK5NImlk5u6BD/2hn0cKRu',0),(10,'Athal@cam.ac.uk','$2b$12$iUbrs5/7ZAWQ6eLC8A8VFODYgtvY0/ysFkG..DNJl/Jin87e.gCbG',0),(11,'Psativum@cam.ac.uk','$2b$12$OeSqfrBB6BZM2H3mvYgsYOj6on4iI/emGK3S3zVojk.e/PL6.USbG',0),(12,'florence@cam.ac.uk','$2b$12$WWC65ogV5b39FLfGJQ91GeQMAL2Er1eBYIzrC2QIeDvdLDdmwK29O',0),(13,'iris@cam.ac.uk','$2b$12$rB6MqcHeYUX942LjgWP1Be6r3pRZyTqBvcNGZXSIrkxp4xUHg1SYq',0),(14,'jess_smith@cam.ac.uk','$2b$12$M5b5Jk0EuJTCD31LmL2Zmua9fbPsJ3B3tNTd9T7Ck.OCu.kGulste',0),(15,'joe_smith@cam.ac.uk','$2b$12$EXnsUe3rWxaBILDhgU3dje8a/gODOqqGjx/uSR//ApFev3i6TSn2m',0),(16,'donald@duck.com','$2b$12$8/hXeJrzeI2t2q6qeAEmJekynX/KV6mmKS/0Z6BbL7AlPFTop8udO',0),(17,'mickey@mouse.com','$2b$12$SHe6/7yfHAUj.XrhWw9.Genrm6KCLQeAxbPlo90L81h2Gh73Ys7Rq',0);
/*!40000 ALTER TABLE `pwds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sample_details`
--

DROP TABLE IF EXISTS `sample_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sample_details` (
  `key1` varchar(50) DEFAULT NULL,
  `key2` varchar(50) NOT NULL,
  `bench_methods` varchar(50) DEFAULT NULL,
  `actual_injections` varchar(50) DEFAULT NULL,
  `sparecol1` varchar(50) DEFAULT NULL,
  `sparecol2` varchar(50) DEFAULT NULL,
  `time_updated` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`key2`),
  KEY `key1` (`key1`),
  CONSTRAINT `sample_details_ibfk_1` FOREIGN KEY (`key1`) REFERENCES `experiment_request` (`key1`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sample_details`
--

LOCK TABLES `sample_details` WRITE;
/*!40000 ALTER TABLE `sample_details` DISABLE KEYS */;
INSERT INTO `sample_details` VALUES ('Athal@cam.ac.uk*at1','Athal@cam.ac.uk*at1*a1','s_trap_cleanup','1','sparecol1','sparecol2','05/05/2023, 15:32:09'),('Athal@cam.ac.uk*at1','Athal@cam.ac.uk*at1*a2','s_trap_cleanup','1','sparecol1','sparecol2','05/05/2023, 15:32:09'),('Athal@cam.ac.uk*at1','Athal@cam.ac.uk*at1*a3','s_trap_cleanup','1','sparecol1','sparecol2','05/05/2023, 15:32:09'),('donald@duck.com*dd1','donald@duck.com*dd1*d1','gel_cleanup_whole_sample_facilitygel','4','sparecol1','sparecol2','05/12/2023, 15:32:09'),('donald@duck.com*dd1','donald@duck.com*dd1*d2','gel_cleanup_whole_sample_facilitygel','4','sparecol1','sparecol2','05/12/2023, 15:32:09'),('donald@duck.com*dd2','donald@duck.com*dd2*tmt1','no_prep_required','1','sparecol1','sparecol2','05/12/2023, 15:32:09'),('donald@duck.com*dd2','donald@duck.com*dd2*tmt2','no_prep_required','1','sparecol1','sparecol2','05/12/2023, 15:32:09'),('florence@cam.ac.uk*flos1','florence@cam.ac.uk*flos1*f1','tmt_single_injection','1','sparecol1','sparecol2','05/08/2023, 15:32:09'),('florence@cam.ac.uk*flos1','florence@cam.ac.uk*flos1*f2','tmt_single_injection','1','sparecol1','sparecol2','05/08/2023, 15:32:09'),('fred@astaire.com*fred1','fred@astaire.com*fred1*f1','s_trap_cleanup','1','sparecol1','sparecol2','05/12/2023, 15:32:09'),('fred@astaire.com*fred1','fred@astaire.com*fred1*f2','s_trap_cleanup','1','sparecol1','sparecol2','05/12/2023, 15:32:09'),('fred@astaire.com*fred1','fred@astaire.com*fred1*f3','s_trap_cleanup','1','sparecol1','sparecol2','05/12/2023, 15:32:09'),('fred@astaire.com*fred1','fred@astaire.com*fred1*f4','gel_cleanup_whole_sample_facilitygel','4','sparecol1','sparecol2','05/12/2023, 15:32:09'),('Fred@Sanger.cam.ac.uk*fred1','Fred@Sanger.cam.ac.uk*fred1*f1','s_trap_cleanup','1','sparecol1','sparecol2','05/12/2023, 15:32:09'),('Fred@Sanger.cam.ac.uk*fred1','Fred@Sanger.cam.ac.uk*fred1*f2','s_trap_cleanup','1','sparecol1','sparecol2','05/12/2023, 15:32:09'),('gene@kelly.com*kelly1','gene@kelly.com*kelly1*bio1','s_trap_cleanup','1','sparecol1','sparecol2','05/12/2023, 15:32:09'),('gene@kelly.com*kelly1','gene@kelly.com*kelly1*bio2','s_trap_cleanup','1','sparecol1','sparecol2','05/12/2023, 15:32:09'),('gene@kelly.com*kelly1','gene@kelly.com*kelly1*bio3','s_trap_cleanup','1','sparecol1','sparecol2','05/12/2023, 15:32:09'),('iris@cam.ac.uk*is1','iris@cam.ac.uk*is1*i1','tmt_fractionation','12','sparecol1','sparecol2','05/12/2023, 15:32:09'),('jess_smith@cam.ac.uk*23_ex1','jess_smith@cam.ac.uk*23_ex1*bio1','needs bench method(s)','not injected','sparecol1','sparecol2','05/12/2023, 15:32:09'),('jess_smith@cam.ac.uk*23_ex1','jess_smith@cam.ac.uk*23_ex1*bio2','needs bench method(s)','not injected','sparecol1','sparecol2','05/12/2023, 15:32:09'),('jess_smith@cam.ac.uk*23_ex2','jess_smith@cam.ac.uk*23_ex2*bid1','needs bench method(s)','not injected','sparecol1','sparecol2','05/12/2023, 15:32:09'),('jess_smith@cam.ac.uk*23_ex2','jess_smith@cam.ac.uk*23_ex2*bid2','needs bench method(s)','not injected','sparecol1','sparecol2','05/12/2023, 15:32:09'),('jess_smith@cam.ac.uk*23_ex3','jess_smith@cam.ac.uk*23_ex3*b1','needs bench method(s)','not injected','sparecol1','sparecol2','05/12/2023, 15:32:09'),('jess_smith@cam.ac.uk*23_ex3','jess_smith@cam.ac.uk*23_ex3*b2','needs bench method(s)','not injected','sparecol1','sparecol2','05/12/2023, 15:32:09'),('jess_smith@cam.ac.uk*23_ex4','jess_smith@cam.ac.uk*23_ex4*h1','needs bench method(s)','not injected','sparecol1','sparecol2','05/12/2023, 15:32:09'),('jess_smith@cam.ac.uk*23_ex4','jess_smith@cam.ac.uk*23_ex4*h2','needs bench method(s)','not injected','sparecol1','sparecol2','05/12/2023, 15:32:09'),('jess_smith@cam.ac.uk*23_ex5','jess_smith@cam.ac.uk*23_ex5*r1','no_prep_required','not injected','sparecol1','sparecol2','05/12/2023, 15:32:09'),('jess_smith@cam.ac.uk*23_ex6','jess_smith@cam.ac.uk*23_ex6*s1','needs bench method(s)','not injected','sparecol1','sparecol2','05/12/2023, 15:32:09'),('jess_smith@cam.ac.uk*23_ex6','jess_smith@cam.ac.uk*23_ex6*s2','needs bench method(s)','not injected','sparecol1','sparecol2','05/12/2023, 15:32:09'),('jess_smith@cam.ac.uk*23_ex7','jess_smith@cam.ac.uk*23_ex7*r1','needs bench method(s)','not injected','sparecol1','sparecol2','05/12/2023, 15:32:09'),('jess_smith@cam.ac.uk*23_ex7','jess_smith@cam.ac.uk*23_ex7*r2','needs bench method(s)','not injected','sparecol1','sparecol2','05/12/2023, 15:32:09'),('jess_smith@cam.ac.uk*incmp1','jess_smith@cam.ac.uk*incmp1*f1','needs bench method(s)','not injected','sparecol1','sparecol2','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk*incmp2','jess_smith@cam.ac.uk*incmp2*f1','needs bench method(s)','not injected','sparecol1','sparecol2','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk*notarv','jess_smith@cam.ac.uk*notarv*na1','no_prep_required','not injected','sparecol1','sparecol2','21/08/2024, 15:35:34'),('jess_smith@cam.ac.uk*signd1','jess_smith@cam.ac.uk*signd1*c1','insolution_digest','1','sparecol1','sparecol2','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk*signd1','jess_smith@cam.ac.uk*signd1*c2','insolution_digest','1','sparecol1','sparecol2','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk*signd1','jess_smith@cam.ac.uk*signd1*c3','insolution_digest','1','sparecol1','sparecol2','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk*signd1','jess_smith@cam.ac.uk*signd1*s1','insolution_digest','1','sparecol1','sparecol2','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk*signd1','jess_smith@cam.ac.uk*signd1*s2','insolution_digest','1','sparecol1','sparecol2','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk*signd1','jess_smith@cam.ac.uk*signd1*s3','insolution_digest','1','sparecol1','sparecol2','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk*signd2','jess_smith@cam.ac.uk*signd2*c1','insolution_digest','1','sparecol1','sparecol2','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk*signd2','jess_smith@cam.ac.uk*signd2*c2','insolution_digest','1','sparecol1','sparecol2','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk*signd2','jess_smith@cam.ac.uk*signd2*c3','insolution_digest','1','sparecol1','sparecol2','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk*signd2','jess_smith@cam.ac.uk*signd2*s1','insolution_digest','1','sparecol1','sparecol2','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk*signd2','jess_smith@cam.ac.uk*signd2*s2','insolution_digest','1','sparecol1','sparecol2','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk*signd2','jess_smith@cam.ac.uk*signd2*s3','insolution_digest','1','sparecol1','sparecol2','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk*test1','jess_smith@cam.ac.uk*test1*t1','needs bench method(s)','not injected','sparecol1','sparecol2','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk*test2','jess_smith@cam.ac.uk*test2*t1','needs bench method(s)','not injected','sparecol1','sparecol2','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk*test3','jess_smith@cam.ac.uk*test3*t1','needs bench method(s)','not injected','sparecol1','sparecol2','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk*test4','jess_smith@cam.ac.uk*test4*t1','needs bench method(s)','not injected','sparecol1','sparecol2','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk*test5','jess_smith@cam.ac.uk*test5*t1','needs bench method(s)','not injected','sparecol1','sparecol2','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk*test6','jess_smith@cam.ac.uk*test6*t1','needs bench method(s)','not injected','sparecol1','sparecol2','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk*test7','jess_smith@cam.ac.uk*test7*t1','needs bench method(s)','not injected','sparecol1','sparecol2','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk*test8','jess_smith@cam.ac.uk*test8*t1','needs bench method(s)','not injected','sparecol1','sparecol2','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk*TP7_1','jess_smith@cam.ac.uk*TP7_1*tp1','needs bench method(s)','not injected','sparecol1','sparecol2','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk*TP7_1','jess_smith@cam.ac.uk*TP7_1*tp2','needs bench method(s)','not injected','sparecol1','sparecol2','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk*TP7_1','jess_smith@cam.ac.uk*TP7_1*tp3','needs bench method(s)','not injected','sparecol1','sparecol2','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk*TP7_1','jess_smith@cam.ac.uk*TP7_1*tp4','needs bench method(s)','not injected','sparecol1','sparecol2','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk*TP7_2','jess_smith@cam.ac.uk*TP7_2*tp1','needs bench method(s)','not injected','sparecol1','sparecol2','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk*TP7_2','jess_smith@cam.ac.uk*TP7_2*tp2','needs bench method(s)','not injected','sparecol1','sparecol2','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk*TP7_2','jess_smith@cam.ac.uk*TP7_2*tp3','needs bench method(s)','not injected','sparecol1','sparecol2','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk*TP7_2','jess_smith@cam.ac.uk*TP7_2*tp4','needs bench method(s)','not injected','sparecol1','sparecol2','10/07/2024, 10:25:32'),('marie@curie.com*mc1','marie@curie.com*mc1*m1','tmt_single_injection','1','sparecol1','sparecol2','05/08/2023, 15:32:09'),('marie@curie.com*mc1','marie@curie.com*mc1*m2','tmt_single_injection','1','sparecol1','sparecol2','05/08/2023, 15:32:09'),('marie@curie.com*mc2','marie@curie.com*mc2*prm1','s_trap_cleanup','1','sparecol1','sparecol2','05/08/2023, 15:32:09'),('marie@curie.com*mc3','marie@curie.com*mc3*c1','s_trap_cleanup','1','sparecol1','sparecol2','05/08/2023, 15:32:09'),('marie@curie.com*mc3','marie@curie.com*mc3*c2','s_trap_cleanup','1','sparecol1','sparecol2','05/08/2023, 15:32:09'),('michael@bolton.com*bolt1','michael@bolton.com*bolt1*mb1','s_trap_cleanup','1','sparecol1','sparecol2','05/05/2023, 15:32:09'),('michael@bolton.com*bolt1','michael@bolton.com*bolt1*mb2','s_trap_cleanup','1','sparecol1','sparecol2','05/05/2023, 15:32:09'),('michael@bolton.com*bolt2','michael@bolton.com*bolt2*b1','gel_cleanup_gelbandID','3','sparecol1','sparecol2','05/05/2023, 15:32:09'),('michael@bolton.com*bolt2','michael@bolton.com*bolt2*b2','gel_cleanup_gelbandID','3','sparecol1','sparecol2','05/05/2023, 15:32:09'),('mickey@mouse.com*mm1','mickey@mouse.com*mm1*m1','s_trap_cleanup','1','sparecol1','sparecol2','05/08/2023, 15:32:09'),('mickey@mouse.com*mm1','mickey@mouse.com*mm1*m2','s_trap_cleanup','1','sparecol1','sparecol2','05/08/2023, 15:32:09'),('mickey@mouse.com*mm1','mickey@mouse.com*mm1*m3','s_trap_cleanup','1','sparecol1','sparecol2','05/08/2023, 15:32:09'),('mickey@mouse.com*mm1','mickey@mouse.com*mm1*m4','s_trap_cleanup','1','sparecol1','sparecol2','05/08/2023, 15:32:09'),('minnie@mouse.com*mm1','minnie@mouse.com*mm1*m1','gel_cleanup_gelbandID','1','sparecol1','sparecol2','05/08/2023, 15:32:09'),('minnie@mouse.com*mm1','minnie@mouse.com*mm1*m2','gel_cleanup_gelbandID','2','sparecol1','sparecol2','05/08/2023, 15:32:09'),('minnie@mouse.com*mm1','minnie@mouse.com*mm1*m3','gel_cleanup_gelbandID','3','sparecol1','sparecol2','05/08/2023, 15:32:09'),('minnie@mouse.com*mm2','minnie@mouse.com*mm2*m1','no_prep_required','2','sparecol1','sparecol2','05/08/2023, 15:32:09'),('minnie@mouse.com*mm2','minnie@mouse.com*mm2*m2','no_prep_required','2','sparecol1','sparecol2','05/08/2023, 15:32:09'),('minnie@mouse.com*mm3','minnie@mouse.com*mm3*g1','no_prep_required','1','sparecol1','sparecol2','05/08/2023, 15:32:09'),('Psativum@cam.ac.uk*prm1','Psativum@cam.ac.uk*prm1*p1','no_prep_required','1','sparecol1','sparecol2','05/06/2023, 15:32:09'),('Psativum@cam.ac.uk*prm1','Psativum@cam.ac.uk*prm1*p2','no_prep_required','1','sparecol1','sparecol2','05/06/2023, 15:32:09'),('Psativum@cam.ac.uk*prm1','Psativum@cam.ac.uk*prm1*p3','no_prep_required','1','sparecol1','sparecol2','05/06/2023, 15:32:09'),('Psativum@cam.ac.uk*prm1','Psativum@cam.ac.uk*prm1*p4','no_prep_required','1','sparecol1','sparecol2','05/06/2023, 15:32:09'),('Psativum@cam.ac.uk*TMT1','Psativum@cam.ac.uk*TMT1*tmt1','no_prep_required','22','sparecol1','sparecol2','05/06/2023, 15:32:09'),('taylor@swift.com*ts1','taylor@swift.com*ts1*t1','gel_cleanup_gelbandID','3','sparecol1','sparecol2','05/06/2023, 15:32:09'),('taylor@swift.com*ts1','taylor@swift.com*ts1*t2','gel_cleanup_gelbandID','3','sparecol1','sparecol2','05/06/2023, 15:32:09'),('taylor@swift.com*ts1','taylor@swift.com*ts1*t3','gel_cleanup_gelbandID','4','sparecol1','sparecol2','05/06/2023, 15:32:09'),('taylor@swift.com*ts1','taylor@swift.com*ts1*t4','gel_cleanup_gelbandID','1','sparecol1','sparecol2','05/06/2023, 15:32:09'),('tempeparsons@gmail.com*tp1','tempeparsons@gmail.com*tp1*t1','s_trap_cleanup','1','sparecol1','sparecol2','05/04/2023, 15:32:09'),('tempeparsons@gmail.com*tp2','tempeparsons@gmail.com*tp2*t1','no_prep_required','1','sparecol1','sparecol2','05/04/2023, 15:32:09'),('tempeparsons@gmail.com*tp3','tempeparsons@gmail.com*tp3*b1','no_prep_required','12','sparecol1','sparecol2','05/04/2023, 15:32:09');
/*!40000 ALTER TABLE `sample_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sample_request`
--

DROP TABLE IF EXISTS `sample_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sample_request` (
  `email` varchar(50) DEFAULT NULL,
  `expt_code` varchar(50) NOT NULL,
  `key1` varchar(50) DEFAULT NULL,
  `sample_code` varchar(50) NOT NULL,
  `key2` varchar(50) NOT NULL,
  `protein_conc` float NOT NULL,
  `est_injections` int(11) NOT NULL,
  `ms_type` varchar(50) NOT NULL,
  `instr_name` varchar(50) NOT NULL,
  `run_gel` varchar(50) DEFAULT NULL,
  `ingel_digest` varchar(50) DEFAULT NULL,
  `s_trap_digest` varchar(50) DEFAULT NULL,
  `insol_digest` varchar(50) DEFAULT NULL,
  `lysc_digest` varchar(50) DEFAULT NULL,
  `po4_enrichment` varchar(50) DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
  `fractionate` varchar(50) DEFAULT NULL,
  `intact_protein` varchar(50) DEFAULT NULL,
  `time_requested` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`key2`),
  KEY `key1` (`key1`),
  CONSTRAINT `sample_request_ibfk_1` FOREIGN KEY (`key1`) REFERENCES `experiment_request` (`key1`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sample_request`
--

LOCK TABLES `sample_request` WRITE;
/*!40000 ALTER TABLE `sample_request` DISABLE KEYS */;
INSERT INTO `sample_request` VALUES ('Athal@cam.ac.uk','at1','Athal@cam.ac.uk*at1','a1','Athal@cam.ac.uk*at1*a1',1,1,'','','0','0','0','1','0','0','0','0','0','05/05/2023, 15:32:09'),('Athal@cam.ac.uk','at1','Athal@cam.ac.uk*at1','a2','Athal@cam.ac.uk*at1*a2',1,1,'','','0','0','0','1','0','0','0','0','0','05/05/2023, 15:32:09'),('Athal@cam.ac.uk','at1','Athal@cam.ac.uk*at1','a3','Athal@cam.ac.uk*at1*a3',1,1,'','','0','0','0','1','0','0','0','0','0','05/05/2023, 15:32:09'),('donald@duck.com','dd1','donald@duck.com*dd1','d1','donald@duck.com*dd1*d1',1,4,'','','1','1','0','0','0','0','0','0','0','05/12/2023, 15:32:09'),('donald@duck.com','dd1','donald@duck.com*dd1','d2','donald@duck.com*dd1*d2',1,4,'','','1','1','0','0','0','0','0','0','0','05/12/2023, 15:32:09'),('donald@duck.com','dd2','donald@duck.com*dd2','tmt1','donald@duck.com*dd2*tmt1',1,1,'','','0','0','0','0','0','0','0','0','0','05/12/2023, 15:32:09'),('donald@duck.com','dd2','donald@duck.com*dd2','tmt2','donald@duck.com*dd2*tmt2',1,1,'','','0','0','0','0','0','0','0','0','0','05/12/2023, 15:32:09'),('florence@cam.ac.uk','flos1','florence@cam.ac.uk*flos1','f1','florence@cam.ac.uk*flos1*f1',0.5,1,'','','0','0','0','0','0','0','1','0','0','05/08/2023, 15:32:09'),('florence@cam.ac.uk','flos1','florence@cam.ac.uk*flos1','f2','florence@cam.ac.uk*flos1*f2',0.5,1,'','','0','0','0','0','0','0','1','0','0','05/08/2023, 15:32:09'),('fred@astaire.com','fred1','fred@astaire.com*fred1','f1','fred@astaire.com*fred1*f1',1.1,1,'','','0','0','1','0','1','0','0','0','0','05/12/2023, 15:32:09'),('fred@astaire.com','fred1','fred@astaire.com*fred1','f2','fred@astaire.com*fred1*f2',1.1,1,'','','0','0','0','1','0','0','0','0','0','05/12/2023, 15:32:09'),('fred@astaire.com','fred1','fred@astaire.com*fred1','f3','fred@astaire.com*fred1*f3',0.8,1,'','','0','0','0','1','0','0','0','0','0','05/12/2023, 15:32:09'),('fred@astaire.com','fred1','fred@astaire.com*fred1','f4','fred@astaire.com*fred1*f4',0.6,4,'','','1','1','0','0','0','0','0','0','0','05/12/2023, 15:32:09'),('Fred@Sanger.cam.ac.uk','fred1','Fred@Sanger.cam.ac.uk*fred1','f1','Fred@Sanger.cam.ac.uk*fred1*f1',1,1,'','','0','0','0','1','0','1','0','0','0','05/12/2023, 15:32:09'),('Fred@Sanger.cam.ac.uk','fred1','Fred@Sanger.cam.ac.uk*fred1','f2','Fred@Sanger.cam.ac.uk*fred1*f2',1,1,'','','0','0','1','0','0','1','0','0','0','05/12/2023, 15:32:09'),('gene@kelly.com','kelly1','gene@kelly.com*kelly1','bio1','gene@kelly.com*kelly1*bio1',1,1,'','','0','0','1','0','0','0','0','0','0','05/12/2023, 15:32:09'),('gene@kelly.com','kelly1','gene@kelly.com*kelly1','bio2','gene@kelly.com*kelly1*bio2',1,1,'','','0','0','1','0','0','0','0','0','0','05/12/2023, 15:32:09'),('gene@kelly.com','kelly1','gene@kelly.com*kelly1','bio3','gene@kelly.com*kelly1*bio3',1,1,'','','0','0','1','0','0','0','0','0','0','05/12/2023, 15:32:09'),('iris@cam.ac.uk','is1','iris@cam.ac.uk*is1','i1','iris@cam.ac.uk*is1*i1',1,12,'','','0','0','0','0','0','0','0','1','0','05/12/2023, 15:32:09'),('jess_smith@cam.ac.uk','23_ex1','jess_smith@cam.ac.uk*23_ex1','bio1','jess_smith@cam.ac.uk*23_ex1*bio1',0.3,1,'','','0','0','0','1','0','0','0','0','0','05/12/2023, 15:32:09'),('jess_smith@cam.ac.uk','23_ex1','jess_smith@cam.ac.uk*23_ex1','bio2','jess_smith@cam.ac.uk*23_ex1*bio2',0.6,1,'','','0','0','0','1','0','0','0','0','0','05/12/2023, 15:32:09'),('jess_smith@cam.ac.uk','23_ex2','jess_smith@cam.ac.uk*23_ex2','bid1','jess_smith@cam.ac.uk*23_ex2*bid1',0.7,1,'','','0','0','0','1','0','0','0','0','0','05/12/2023, 15:32:09'),('jess_smith@cam.ac.uk','23_ex2','jess_smith@cam.ac.uk*23_ex2','bid2','jess_smith@cam.ac.uk*23_ex2*bid2',1,1,'','','0','0','0','1','0','0','0','0','0','05/12/2023, 15:32:09'),('jess_smith@cam.ac.uk','23_ex3','jess_smith@cam.ac.uk*23_ex3','b1','jess_smith@cam.ac.uk*23_ex3*b1',1,1,'','','0','0','1','0','0','0','0','0','0','05/12/2023, 15:32:09'),('jess_smith@cam.ac.uk','23_ex3','jess_smith@cam.ac.uk*23_ex3','b2','jess_smith@cam.ac.uk*23_ex3*b2',1,1,'','','0','0','0','1','0','0','0','0','0','05/12/2023, 15:32:09'),('jess_smith@cam.ac.uk','23_ex4','jess_smith@cam.ac.uk*23_ex4','h1','jess_smith@cam.ac.uk*23_ex4*h1',0.8,1,'','','0','0','0','1','0','0','0','0','0','05/12/2023, 15:32:09'),('jess_smith@cam.ac.uk','23_ex4','jess_smith@cam.ac.uk*23_ex4','h2','jess_smith@cam.ac.uk*23_ex4*h2',0.7,1,'','','0','0','0','1','0','0','0','0','0','05/12/2023, 15:32:09'),('jess_smith@cam.ac.uk','23_ex5','jess_smith@cam.ac.uk*23_ex5','r1','jess_smith@cam.ac.uk*23_ex5*r1',0.4,1,'','','0','0','0','0','0','0','0','0','0','05/12/2023, 15:32:09'),('jess_smith@cam.ac.uk','23_ex6','jess_smith@cam.ac.uk*23_ex6','s1','jess_smith@cam.ac.uk*23_ex6*s1',0.6,1,'','','0','0','1','0','0','0','0','0','0','05/12/2023, 15:32:09'),('jess_smith@cam.ac.uk','23_ex6','jess_smith@cam.ac.uk*23_ex6','s2','jess_smith@cam.ac.uk*23_ex6*s2',0.5,2,'','','0','0','0','1','0','0','0','0','0','05/12/2023, 15:32:09'),('jess_smith@cam.ac.uk','23_ex7','jess_smith@cam.ac.uk*23_ex7','r1','jess_smith@cam.ac.uk*23_ex7*r1',0.7,1,'','','0','0','0','1','0','0','0','0','0','05/12/2023, 15:32:09'),('jess_smith@cam.ac.uk','23_ex7','jess_smith@cam.ac.uk*23_ex7','r2','jess_smith@cam.ac.uk*23_ex7*r2',0.8,1,'','','0','0','1','0','1','0','0','0','0','05/12/2023, 15:32:09'),('jess_smith@cam.ac.uk','incmp1','jess_smith@cam.ac.uk*incmp1','f1','jess_smith@cam.ac.uk*incmp1*f1',1.2,12,'','','0','0','0','0','0','0','1','1','0','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk','incmp2','jess_smith@cam.ac.uk*incmp2','f1','jess_smith@cam.ac.uk*incmp2*f1',1.1,12,'','','0','0','0','0','0','0','1','1','0','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk','notarv','jess_smith@cam.ac.uk*notarv','na1','jess_smith@cam.ac.uk*notarv*na1',0.7,1,'','','0','0','0','0','0','0','0','0','0','21/08/2024, 15:35:34'),('jess_smith@cam.ac.uk','signd1','jess_smith@cam.ac.uk*signd1','c1','jess_smith@cam.ac.uk*signd1*c1',0.5,1,'','','0','0','0','1','0','0','0','0','0','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk','signd1','jess_smith@cam.ac.uk*signd1','c2','jess_smith@cam.ac.uk*signd1*c2',0.5,1,'','','0','0','0','1','0','0','0','0','0','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk','signd1','jess_smith@cam.ac.uk*signd1','c3','jess_smith@cam.ac.uk*signd1*c3',0.5,1,'','','0','0','0','1','0','0','0','0','0','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk','signd1','jess_smith@cam.ac.uk*signd1','s1','jess_smith@cam.ac.uk*signd1*s1',0.3,1,'','','0','0','0','1','0','0','0','0','0','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk','signd1','jess_smith@cam.ac.uk*signd1','s2','jess_smith@cam.ac.uk*signd1*s2',0.3,1,'','','0','0','0','1','0','0','0','0','0','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk','signd1','jess_smith@cam.ac.uk*signd1','s3','jess_smith@cam.ac.uk*signd1*s3',0.3,1,'','','0','0','0','1','0','0','0','0','0','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk','signd2','jess_smith@cam.ac.uk*signd2','c1','jess_smith@cam.ac.uk*signd2*c1',0.4,1,'','','0','0','0','1','0','0','0','0','0','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk','signd2','jess_smith@cam.ac.uk*signd2','c2','jess_smith@cam.ac.uk*signd2*c2',0.4,1,'','','0','0','0','1','0','0','0','0','0','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk','signd2','jess_smith@cam.ac.uk*signd2','c3','jess_smith@cam.ac.uk*signd2*c3',0.4,1,'','','0','0','0','1','0','0','0','0','0','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk','signd2','jess_smith@cam.ac.uk*signd2','s1','jess_smith@cam.ac.uk*signd2*s1',0.8,1,'','','0','0','0','1','0','0','0','0','0','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk','signd2','jess_smith@cam.ac.uk*signd2','s2','jess_smith@cam.ac.uk*signd2*s2',0.8,1,'','','0','0','0','1','0','0','0','0','0','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk','signd2','jess_smith@cam.ac.uk*signd2','s3','jess_smith@cam.ac.uk*signd2*s3',0.8,1,'','','0','0','0','1','0','0','0','0','0','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk','test1','jess_smith@cam.ac.uk*test1','t1','jess_smith@cam.ac.uk*test1*t1',0.8,1,'','','0','1','0','0','0','0','0','0','0','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk','test2','jess_smith@cam.ac.uk*test2','t1','jess_smith@cam.ac.uk*test2*t1',0.8,1,'','','0','1','0','0','0','0','0','0','0','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk','test3','jess_smith@cam.ac.uk*test3','t1','jess_smith@cam.ac.uk*test3*t1',0.8,1,'','','0','1','0','0','0','0','0','0','0','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk','test4','jess_smith@cam.ac.uk*test4','t1','jess_smith@cam.ac.uk*test4*t1',0.8,1,'','','0','1','0','0','0','0','0','0','0','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk','test5','jess_smith@cam.ac.uk*test5','t1','jess_smith@cam.ac.uk*test5*t1',0.8,1,'','','0','1','0','0','0','0','0','0','0','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk','test6','jess_smith@cam.ac.uk*test6','t1','jess_smith@cam.ac.uk*test6*t1',0.8,1,'','','0','1','0','0','0','0','0','0','0','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk','test7','jess_smith@cam.ac.uk*test7','t1','jess_smith@cam.ac.uk*test7*t1',0.8,1,'','','0','1','0','0','0','0','0','0','0','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk','test8','jess_smith@cam.ac.uk*test8','t1','jess_smith@cam.ac.uk*test8*t1',0.8,1,'','','0','1','0','0','0','0','0','0','0','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk','TP7_1','jess_smith@cam.ac.uk*TP7_1','tp1','jess_smith@cam.ac.uk*TP7_1*tp1',0.5,1,'','','1','1','0','0','0','0','0','0','0','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk','TP7_1','jess_smith@cam.ac.uk*TP7_1','tp2','jess_smith@cam.ac.uk*TP7_1*tp2',0.9,1,'','','0','0','1','0','0','0','0','0','0','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk','TP7_1','jess_smith@cam.ac.uk*TP7_1','tp3','jess_smith@cam.ac.uk*TP7_1*tp3',0.2,1,'','','0','0','0','1','0','0','0','0','0','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk','TP7_1','jess_smith@cam.ac.uk*TP7_1','tp4','jess_smith@cam.ac.uk*TP7_1*tp4',0.8,4,'','','0','1','0','0','0','0','0','0','0','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk','TP7_2','jess_smith@cam.ac.uk*TP7_2','tp1','jess_smith@cam.ac.uk*TP7_2*tp1',0.8,1,'','','1','1','0','0','0','0','0','0','0','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk','TP7_2','jess_smith@cam.ac.uk*TP7_2','tp2','jess_smith@cam.ac.uk*TP7_2*tp2',0.9,1,'','','0','0','1','0','0','0','0','0','0','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk','TP7_2','jess_smith@cam.ac.uk*TP7_2','tp3','jess_smith@cam.ac.uk*TP7_2*tp3',0.2,1,'','','0','0','0','1','0','0','0','0','0','10/07/2024, 10:25:32'),('jess_smith@cam.ac.uk','TP7_2','jess_smith@cam.ac.uk*TP7_2','tp4','jess_smith@cam.ac.uk*TP7_2*tp4',0.6,4,'','','0','1','0','0','0','0','0','0','0','10/07/2024, 10:25:32'),('marie@curie.com','mc1','marie@curie.com*mc1','m1','marie@curie.com*mc1*m1',1,1,'','','0','0','0','1','0','0','0','0','0','05/08/2023, 15:32:09'),('marie@curie.com','mc1','marie@curie.com*mc1','m2','marie@curie.com*mc1*m2',1,1,'','','0','0','0','1','0','0','0','0','0','05/08/2023, 15:32:09'),('marie@curie.com','mc2','marie@curie.com*mc2','prm1','marie@curie.com*mc2*prm1',1,1,'','','0','0','0','1','0','0','0','0','0','05/08/2023, 15:32:09'),('marie@curie.com','mc3','marie@curie.com*mc3','c1','marie@curie.com*mc3*c1',0.6,1,'','','0','0','0','0','0','0','0','0','0','05/08/2023, 15:32:09'),('marie@curie.com','mc3','marie@curie.com*mc3','c2','marie@curie.com*mc3*c2',0.8,1,'','','0','0','0','0','0','0','0','0','0','05/08/2023, 15:32:09'),('michael@bolton.com','bolt1','michael@bolton.com*bolt1','mb1','michael@bolton.com*bolt1*mb1',0.7,1,'','','0','0','0','0','0','0','0','0','0','05/05/2023, 15:32:09'),('michael@bolton.com','bolt1','michael@bolton.com*bolt1','mb2','michael@bolton.com*bolt1*mb2',0.8,1,'','','0','0','0','0','0','0','0','0','0','05/05/2023, 15:32:09'),('michael@bolton.com','bolt2','michael@bolton.com*bolt2','b1','michael@bolton.com*bolt2*b1',0.5,2,'','','0','0','0','0','0','0','0','0','0','05/05/2023, 15:32:09'),('michael@bolton.com','bolt2','michael@bolton.com*bolt2','b2','michael@bolton.com*bolt2*b2',0.4,2,'','','0','0','0','0','0','0','0','0','0','05/05/2023, 15:32:09'),('mickey@mouse.com','mm1','mickey@mouse.com*mm1','m1','mickey@mouse.com*mm1*m1',1,1,'','','0','0','1','0','0','0','0','0','0','05/08/2023, 15:32:09'),('mickey@mouse.com','mm1','mickey@mouse.com*mm1','m2','mickey@mouse.com*mm1*m2',1,1,'','','0','0','1','0','0','0','0','0','0','05/08/2023, 15:32:09'),('mickey@mouse.com','mm1','mickey@mouse.com*mm1','m3','mickey@mouse.com*mm1*m3',1,1,'','','0','0','1','0','0','0','0','0','0','05/08/2023, 15:32:09'),('mickey@mouse.com','mm1','mickey@mouse.com*mm1','m4','mickey@mouse.com*mm1*m4',1,1,'','','0','0','1','0','1','0','0','0','0','05/08/2023, 15:32:09'),('minnie@mouse.com','mm1','minnie@mouse.com*mm1','m1','minnie@mouse.com*mm1*m1',1,1,'','','0','1','0','0','0','0','0','0','0','05/08/2023, 15:32:09'),('minnie@mouse.com','mm1','minnie@mouse.com*mm1','m2','minnie@mouse.com*mm1*m2',1,1,'','','0','1','0','0','0','0','0','0','0','05/08/2023, 15:32:09'),('minnie@mouse.com','mm1','minnie@mouse.com*mm1','m3','minnie@mouse.com*mm1*m3',1,3,'','','0','1','0','0','0','0','0','0','0','05/08/2023, 15:32:09'),('minnie@mouse.com','mm2','minnie@mouse.com*mm2','m1','minnie@mouse.com*mm2*m1',0.4,2,'','','0','0','0','0','0','0','0','0','0','05/08/2023, 15:32:09'),('minnie@mouse.com','mm2','minnie@mouse.com*mm2','m2','minnie@mouse.com*mm2*m2',0.5,2,'','','0','0','0','0','0','0','0','0','0','05/08/2023, 15:32:09'),('minnie@mouse.com','mm3','minnie@mouse.com*mm3','g1','minnie@mouse.com*mm3*g1',1,1,'','','0','0','0','0','0','0','0','0','0','05/08/2023, 15:32:09'),('Psativum@cam.ac.uk','prm1','Psativum@cam.ac.uk*prm1','p1','Psativum@cam.ac.uk*prm1*p1',1,1,'','','0','0','0','0','0','0','0','0','0','05/06/2023, 15:32:09'),('Psativum@cam.ac.uk','prm1','Psativum@cam.ac.uk*prm1','p2','Psativum@cam.ac.uk*prm1*p2',1,1,'','','0','0','0','0','0','0','0','0','0','05/06/2023, 15:32:09'),('Psativum@cam.ac.uk','prm1','Psativum@cam.ac.uk*prm1','p3','Psativum@cam.ac.uk*prm1*p3',1,1,'','','0','0','0','0','0','0','0','0','0','05/06/2023, 15:32:09'),('Psativum@cam.ac.uk','prm1','Psativum@cam.ac.uk*prm1','p4','Psativum@cam.ac.uk*prm1*p4',1,1,'','','0','0','0','0','0','0','0','0','0','05/06/2023, 15:32:09'),('Psativum@cam.ac.uk','TMT1','Psativum@cam.ac.uk*TMT1','tmt1','Psativum@cam.ac.uk*TMT1*tmt1',1,22,'','','0','0','0','0','0','0','0','0','0','05/06/2023, 15:32:09'),('taylor@swift.com','ts1','taylor@swift.com*ts1','t1','taylor@swift.com*ts1*t1',1,3,'','','0','1','0','0','0','0','0','0','0','05/06/2023, 15:32:09'),('taylor@swift.com','ts1','taylor@swift.com*ts1','t2','taylor@swift.com*ts1*t2',1,3,'','','0','1','0','0','0','0','0','0','0','05/06/2023, 15:32:09'),('taylor@swift.com','ts1','taylor@swift.com*ts1','t3','taylor@swift.com*ts1*t3',1,3,'','','0','1','0','0','0','0','0','0','0','05/06/2023, 15:32:09'),('taylor@swift.com','ts1','taylor@swift.com*ts1','t4','taylor@swift.com*ts1*t4',0.4,3,'','','0','1','0','0','0','0','0','0','0','05/06/2023, 15:32:09'),('tempeparsons@gmail.com','tp1','tempeparsons@gmail.com*tp1','t1','tempeparsons@gmail.com*tp1*t1',1,1,'','','0','0','1','0','0','0','0','0','0','05/04/2023, 15:32:09'),('tempeparsons@gmail.com','tp2','tempeparsons@gmail.com*tp2','t1','tempeparsons@gmail.com*tp2*t1',1,1,'','','0','0','0','1','0','0','0','0','0','05/04/2023, 15:32:09'),('tempeparsons@gmail.com','tp3','tempeparsons@gmail.com*tp3','b1','tempeparsons@gmail.com*tp3*b1',1,12,'','','0','0','0','0','0','0','0','0','0','05/04/2023, 15:32:09');
/*!40000 ALTER TABLE `sample_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `species`
--

DROP TABLE IF EXISTS `species`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `species` (
  `species` varchar(100) NOT NULL,
  PRIMARY KEY (`species`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `species`
--

LOCK TABLES `species` WRITE;
/*!40000 ALTER TABLE `species` DISABLE KEYS */;
INSERT INTO `species` VALUES ('African green monkey'),('Cat'),('Chinese hamster'),('Dog'),('Ecoli'),('Horse'),('Human'),('Human w isoforms'),('Influenza A'),('Niaph virus'),('No DB search'),('Orientia ssp. karp'),('Other'),('Pig'),('Plasmodium falciperum'),('Salmonella');
/*!40000 ALTER TABLE `species` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `access_level` varchar(50) NOT NULL,
  `position` varchar(50) NOT NULL,
  `group_id` varchar(50) NOT NULL,
  `institute_name` varchar(50) NOT NULL,
  `institute_type` varchar(50) NOT NULL,
  `grant_codes` varchar(200) DEFAULT NULL,
  `grant_years` varchar(200) DEFAULT NULL,
  `time_registered` varchar(50) NOT NULL,
  `authenticated` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (11,'Arabidopsis','thaliana','Athal@cam.ac.uk','USER','Researcher','Fred@Sanger.cam.ac.uk','CamUni','Cambridge University','Athal/grant1','2023','05/04/2023, 15:32:09',0),(18,'donald','duck','donald@duck.com','USER','Researcher','joe_smith@cam.ac.uk','CU','Cambridge University','quack4','2024','05/04/2023, 15:32:09',0),(13,'Florence','Nightingale','florence@cam.ac.uk','USER','PI/Project_Lead','florence@cam.ac.uk','Cambridge University','Cambridge University','FN1/grant1','2023','05/04/2023, 15:32:09',0),(5,'Fred','Astaire','fred@astaire.com','USER','Researcher','rosalind@franklin.com','King\'s College London','Other Academia','','','05/04/2023, 15:32:09',0),(10,'Fred','Sanger','Fred@Sanger.cam.ac.uk','USER','PI/Project_Lead','Fred@Sanger.cam.ac.uk','Cambridge University','Cambridge University','FS/grant1,FS/grant2','2021,2023','05/04/2023, 15:32:09',0),(4,'Gene','Kelly','gene@kelly.com','USER','Researcher','marie@curie.com','Curie Institute','Other Academia','','','05/04/2023, 15:32:09',0),(14,'Iris','siberica','iris@cam.ac.uk','USER','Researcher','florence@cam.ac.uk','CU','Cambridge University','FN1/grant1','2023','05/04/2023, 15:32:09',0),(19,'Jess','NotSmith','jess_notsmith@ucl.ac.uk','USER','PI/Project_Lead','jess_notsmith@ucl.ac.uk','UCL','Other Academia','','','21/08/2024, 15:35:34',0),(15,'Jess','Smith','jess_smith@cam.ac.uk','ADMIN','PI/Project_Lead','jess_smith@cam.ac.uk','Cambridge University','Cambridge University','JS1/grant1,JS2/grant2,JS3/grant3','2021,2022,2023','05/04/2023, 15:32:09',0),(16,'Joe','Smith','joe_smith@cam.ac.uk','ADMIN','PI/Project_Lead','joe_smith@cam.ac.uk','CU','Cambridge University','JoeSmith/grant1,JoeSmith/grant2','2024,2024','05/04/2023, 15:32:09',0),(2,'Marie','Curie','marie@curie.com','USER','PI/Project_Lead','marie@curie.com','Curie Institute','Other Academia','','','05/04/2023, 15:32:09',0),(8,'Michael','Bolton','michael@bolton.com','USER','PI/Project_Lead','michael@bolton.com','USA','Industry','','','05/04/2023, 15:32:09',0),(17,'mickey','mouse','mickey@mouse.com','USER','Researcher','jess_smith@cam.ac.uk','CU','Cambridge University','JS2/grant2','2023','05/04/2023, 15:32:09',0),(6,'minnie','mouse','minnie@mouse.com','USER','Researcher','rosalind@franklin.com','King\'s College London','Other Academia','','','05/04/2023, 15:32:09',0),(12,'Pisum','sativum','Psativum@cam.ac.uk','USER','Researcher','Fred@Sanger.cam.ac.uk','CU','Cambridge University','FS/grant1','2021','05/04/2023, 15:32:09',0),(3,'Rosalind','Franklin','rosalind@franklin.com','USER','PI/Project_Lead','rosalind@franklin.com','King\'s College London','Other Academia','','','05/04/2023, 15:32:09',0),(9,'Taylor','Swift','taylor@swift.com','USER','PI/Project_Lead','taylor@swift.com','USA','Industry','','','05/04/2023, 15:32:09',0),(1,'Harriet','Parsons','tempeparsons@gmail.com','ADMIN','PI/Project_Lead','tempeparsons@gmail.com','Lawrence Berkeley National Laboratory','Other Academia','LBNL/00','2020','2024-04-04 16:03:18.226644',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-21 16:03:49

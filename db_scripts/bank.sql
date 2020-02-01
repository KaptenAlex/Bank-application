CREATE DATABASE  IF NOT EXISTS `bank` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci*/ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bank`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bank
-- ------------------------------------------------------
-- Server version	8.0.16

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `currency` varchar(5) NOT NULL DEFAULT 'SEK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,1,'SEK'),(2,2,'SEK'),(3,3,'SEK'),(4,4,'SEK'),(5,5,'SEK'),(6,6,'SEK'),(7,7,'SEK'),(8,8,'SEK'),(9,9,'SEK'),(10,10,'SEK');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `from_amount` int(11) NOT NULL,
  `from_account` int(11) NOT NULL,
  `from_currency` varchar(5) NOT NULL DEFAULT 'SEK',
  `to_amount` int(11) NOT NULL,
  `to_account` int(11) NOT NULL,
  `to_currency` varchar(5) NOT NULL DEFAULT 'SEK',
  `currency_rate` decimal(10,3) NOT NULL DEFAULT '1.000',
  `date` timestamp NOT NULL,
  PRIMARY KEY (`transaction_id`),
  KEY `from_user_id` (`from_account`,`to_account`),
  KEY `to_user_id` (`to_account`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,18897,10,'SEK',18897,9,'SEK',1.000,'2020-01-01 11:00:00'),(2,14982,6,'SEK',14982,1,'SEK',1.000,'2020-01-01 11:00:00'),(3,16480,6,'SEK',16480,10,'SEK',1.000,'2020-01-01 11:00:00'),(4,23809,6,'SEK',23809,5,'SEK',1.000,'2020-01-01 11:00:00'),(5,26355,1,'SEK',26355,10,'SEK',1.000,'2020-01-01 11:00:00'),(6,3520,5,'SEK',3520,3,'SEK',1.000,'2020-01-01 11:00:00'),(7,24419,7,'SEK',24419,3,'SEK',1.000,'2020-01-01 11:00:00'),(8,45371,3,'SEK',45371,5,'SEK',1.000,'2020-01-01 11:00:00'),(9,49751,5,'SEK',49751,9,'SEK',1.000,'2020-01-01 11:00:00'),(10,26462,10,'SEK',26462,1,'SEK',1.000,'2020-01-01 11:00:00'),(11,31325,8,'SEK',31325,10,'SEK',1.000,'2020-01-01 11:00:00'),(12,24488,6,'SEK',24488,8,'SEK',1.000,'2020-01-01 11:00:00'),(13,41071,7,'SEK',41071,5,'SEK',1.000,'2020-01-01 11:00:00'),(14,1222,6,'SEK',1222,9,'SEK',1.000,'2020-01-01 11:00:00'),(15,12819,4,'SEK',12819,7,'SEK',1.000,'2020-01-01 11:00:00'),(16,16619,8,'SEK',16619,3,'SEK',1.000,'2020-01-01 11:00:00'),(17,43350,6,'SEK',43350,8,'SEK',1.000,'2020-01-01 11:00:00'),(18,14753,1,'SEK',14753,8,'SEK',1.000,'2020-01-01 11:00:00'),(19,39606,1,'SEK',39606,7,'SEK',1.000,'2020-01-01 11:00:00'),(20,5370,7,'SEK',5370,2,'SEK',1.000,'2020-01-01 11:00:00'),(21,26887,8,'SEK',26887,7,'SEK',1.000,'2020-01-01 11:00:00'),(22,33965,10,'SEK',33965,6,'SEK',1.000,'2020-01-01 11:00:00'),(23,20096,2,'SEK',20096,10,'SEK',1.000,'2020-01-01 11:00:00'),(24,15487,8,'SEK',15487,2,'SEK',1.000,'2020-01-01 11:00:00'),(25,30954,8,'SEK',30954,4,'SEK',1.000,'2020-01-01 11:00:00'),(26,35805,2,'SEK',35805,8,'SEK',1.000,'2020-01-01 11:00:00'),(27,41530,5,'SEK',41530,3,'SEK',1.000,'2020-01-01 11:00:00'),(28,39269,2,'SEK',39269,7,'SEK',1.000,'2020-01-01 11:00:00'),(29,26157,5,'SEK',26157,6,'SEK',1.000,'2020-01-01 11:00:00'),(30,43052,6,'SEK',43052,9,'SEK',1.000,'2020-01-01 11:00:00'),(31,39819,7,'SEK',39819,1,'SEK',1.000,'2020-01-01 11:00:00'),(32,43552,4,'SEK',43552,10,'SEK',1.000,'2020-01-01 11:00:00'),(33,4288,5,'SEK',4288,6,'SEK',1.000,'2020-01-01 11:00:00'),(34,49211,3,'SEK',49211,1,'SEK',1.000,'2020-01-01 11:00:00'),(35,15915,3,'SEK',15915,7,'SEK',1.000,'2020-01-01 11:00:00'),(36,43620,10,'SEK',43620,1,'SEK',1.000,'2020-01-01 11:00:00'),(37,27143,9,'SEK',27143,3,'SEK',1.000,'2020-01-01 11:00:00'),(38,26955,10,'SEK',26955,3,'SEK',1.000,'2020-01-01 11:00:00'),(39,46478,6,'SEK',46478,7,'SEK',1.000,'2020-01-01 11:00:00'),(40,49038,7,'SEK',49038,8,'SEK',1.000,'2020-01-01 11:00:00'),(41,25613,4,'SEK',25613,5,'SEK',1.000,'2020-01-01 11:00:00'),(42,12557,1,'SEK',12557,9,'SEK',1.000,'2020-01-01 11:00:00'),(43,48325,7,'SEK',48325,3,'SEK',1.000,'2020-01-01 11:00:00'),(44,885,1,'SEK',885,8,'SEK',1.000,'2020-01-01 11:00:00'),(45,9196,5,'SEK',9196,1,'SEK',1.000,'2020-01-01 11:00:00'),(46,24535,2,'SEK',24535,5,'SEK',1.000,'2020-01-01 11:00:00'),(47,23501,10,'SEK',23501,9,'SEK',1.000,'2020-01-01 11:00:00'),(48,40868,1,'SEK',40868,2,'SEK',1.000,'2020-01-01 11:00:00'),(49,38664,2,'SEK',38664,9,'SEK',1.000,'2020-01-01 11:00:00'),(50,13590,2,'SEK',13590,7,'SEK',1.000,'2020-01-01 11:00:00'),(51,31451,10,'SEK',31451,6,'SEK',1.000,'2020-01-01 11:00:00'),(52,25177,2,'SEK',25177,1,'SEK',1.000,'2020-01-01 11:00:00'),(53,8164,10,'SEK',8164,7,'SEK',1.000,'2020-01-01 11:00:00'),(54,29332,7,'SEK',29332,6,'SEK',1.000,'2020-01-01 11:00:00'),(55,41987,2,'SEK',41987,5,'SEK',1.000,'2020-01-01 11:00:00'),(56,8270,9,'SEK',8270,10,'SEK',1.000,'2020-01-01 11:00:00'),(57,3879,3,'SEK',3879,5,'SEK',1.000,'2020-01-01 11:00:00'),(58,36894,5,'SEK',36894,6,'SEK',1.000,'2020-01-01 11:00:00'),(59,36002,1,'SEK',36002,5,'SEK',1.000,'2020-01-01 11:00:00'),(60,5458,5,'SEK',5458,10,'SEK',1.000,'2020-01-01 11:00:00'),(61,32552,10,'SEK',32552,1,'SEK',1.000,'2020-01-01 11:00:00'),(62,46145,3,'SEK',46145,2,'SEK',1.000,'2020-01-01 11:00:00'),(63,23789,1,'SEK',23789,7,'SEK',1.000,'2020-01-01 11:00:00'),(64,49386,10,'SEK',49386,5,'SEK',1.000,'2020-01-01 11:00:00'),(65,11272,7,'SEK',11272,6,'SEK',1.000,'2020-01-01 11:00:00'),(66,24730,8,'SEK',24730,3,'SEK',1.000,'2020-01-01 11:00:00'),(67,8612,6,'SEK',8612,2,'SEK',1.000,'2020-01-01 11:00:00'),(68,38990,4,'SEK',38990,5,'SEK',1.000,'2020-01-01 11:00:00'),(69,44698,10,'SEK',44698,7,'SEK',1.000,'2020-01-01 11:00:00'),(70,19739,6,'SEK',19739,1,'SEK',1.000,'2020-01-01 11:00:00'),(71,28729,10,'SEK',28729,4,'SEK',1.000,'2020-01-01 11:00:00'),(72,37646,6,'SEK',37646,9,'SEK',1.000,'2020-01-01 11:00:00'),(73,40034,9,'SEK',40034,1,'SEK',1.000,'2020-01-01 11:00:00'),(74,13310,9,'SEK',13310,8,'SEK',1.000,'2020-01-01 11:00:00'),(75,46335,2,'SEK',46335,7,'SEK',1.000,'2020-01-01 11:00:00'),(76,14486,1,'SEK',14486,9,'SEK',1.000,'2020-01-01 11:00:00'),(77,45704,8,'SEK',45704,4,'SEK',1.000,'2020-01-01 11:00:00'),(78,18626,9,'SEK',18626,5,'SEK',1.000,'2020-01-01 11:00:00'),(79,18191,6,'SEK',18191,5,'SEK',1.000,'2020-01-01 11:00:00'),(80,9818,9,'SEK',9818,1,'SEK',1.000,'2020-01-01 11:00:00'),(81,49435,7,'SEK',49435,8,'SEK',1.000,'2020-01-01 11:00:00'),(82,15770,9,'SEK',15770,1,'SEK',1.000,'2020-01-01 11:00:00'),(83,29026,10,'SEK',29026,7,'SEK',1.000,'2020-01-01 11:00:00'),(84,27360,6,'SEK',27360,1,'SEK',1.000,'2020-01-01 11:00:00'),(85,36609,3,'SEK',36609,2,'SEK',1.000,'2020-01-01 11:00:00'),(86,7604,4,'SEK',7604,9,'SEK',1.000,'2020-01-01 11:00:00'),(87,34330,9,'SEK',34330,1,'SEK',1.000,'2020-01-01 11:00:00'),(88,25699,5,'SEK',25699,2,'SEK',1.000,'2020-01-01 11:00:00'),(89,2014,3,'SEK',2014,1,'SEK',1.000,'2020-01-01 11:00:00'),(90,389,1,'SEK',389,8,'SEK',1.000,'2020-01-01 11:00:00'),(91,32856,3,'SEK',32856,6,'SEK',1.000,'2020-01-01 11:00:00'),(92,38308,5,'SEK',38308,2,'SEK',1.000,'2020-01-01 11:00:00'),(93,20189,1,'SEK',20189,4,'SEK',1.000,'2020-01-01 11:00:00'),(94,47870,9,'SEK',47870,10,'SEK',1.000,'2020-01-01 11:00:00'),(95,18105,1,'SEK',18105,9,'SEK',1.000,'2020-01-01 11:00:00'),(96,3693,5,'SEK',3693,8,'SEK',1.000,'2020-01-01 11:00:00'),(97,21246,1,'SEK',21246,2,'SEK',1.000,'2020-01-01 11:00:00'),(98,3494,5,'SEK',3494,6,'SEK',1.000,'2020-01-01 11:00:00'),(99,14960,1,'SEK',14960,8,'SEK',1.000,'2020-01-01 11:00:00'),(100,17083,6,'SEK',17083,8,'SEK',1.000,'2020-01-01 11:00:00'),(101,10069,7,'SEK',10069,1,'SEK',1.000,'2020-01-01 11:00:00'),(102,8041,6,'SEK',8041,8,'SEK',1.000,'2020-01-01 11:00:00'),(103,12025,8,'SEK',12025,5,'SEK',1.000,'2020-01-01 11:00:00'),(104,12619,6,'SEK',12619,2,'SEK',1.000,'2020-01-01 11:00:00'),(105,29488,5,'SEK',29488,6,'SEK',1.000,'2020-01-01 11:00:00'),(106,11181,3,'SEK',11181,4,'SEK',1.000,'2020-01-01 11:00:00'),(107,9554,5,'SEK',9554,1,'SEK',1.000,'2020-01-01 11:00:00'),(108,15321,10,'SEK',15321,1,'SEK',1.000,'2020-01-01 11:00:00'),(109,24058,10,'SEK',24058,1,'SEK',1.000,'2020-01-01 11:00:00'),(110,45040,1,'SEK',45040,7,'SEK',1.000,'2020-01-01 11:00:00'),(111,6368,4,'SEK',6368,5,'SEK',1.000,'2020-01-01 11:00:00'),(112,34917,6,'SEK',34917,4,'SEK',1.000,'2020-01-01 11:00:00'),(113,29147,7,'SEK',29147,4,'SEK',1.000,'2020-01-01 11:00:00'),(114,32583,4,'SEK',32583,7,'SEK',1.000,'2020-01-01 11:00:00'),(115,25172,1,'SEK',25172,10,'SEK',1.000,'2020-01-01 11:00:00'),(116,18227,4,'SEK',18227,9,'SEK',1.000,'2020-01-01 11:00:00'),(117,422,4,'SEK',422,5,'SEK',1.000,'2020-01-01 11:00:00'),(118,31890,10,'SEK',31890,4,'SEK',1.000,'2020-01-01 11:00:00'),(119,9778,4,'SEK',9778,10,'SEK',1.000,'2020-01-01 11:00:00'),(120,21595,3,'SEK',21595,7,'SEK',1.000,'2020-01-01 11:00:00'),(121,15359,6,'SEK',15359,4,'SEK',1.000,'2020-01-01 11:00:00'),(122,12548,3,'SEK',12548,10,'SEK',1.000,'2020-01-01 11:00:00'),(123,35377,8,'SEK',35377,2,'SEK',1.000,'2020-01-01 11:00:00'),(124,6844,2,'SEK',6844,3,'SEK',1.000,'2020-01-01 11:00:00'),(125,44200,6,'SEK',44200,7,'SEK',1.000,'2020-01-01 11:00:00'),(126,4012,4,'SEK',4012,8,'SEK',1.000,'2020-01-01 11:00:00'),(127,49541,1,'SEK',49541,3,'SEK',1.000,'2020-01-01 11:00:00'),(128,35296,5,'SEK',35296,3,'SEK',1.000,'2020-01-01 11:00:00'),(129,5927,10,'SEK',5927,5,'SEK',1.000,'2020-01-01 11:00:00'),(130,45893,1,'SEK',45893,2,'SEK',1.000,'2020-01-01 11:00:00'),(131,4003,8,'SEK',4003,7,'SEK',1.000,'2020-01-01 11:00:00'),(132,3122,5,'SEK',3122,9,'SEK',1.000,'2020-01-01 11:00:00'),(133,18861,4,'SEK',18861,10,'SEK',1.000,'2020-01-01 11:00:00'),(134,36494,1,'SEK',36494,8,'SEK',1.000,'2020-01-01 11:00:00'),(135,4271,7,'SEK',4271,6,'SEK',1.000,'2020-01-01 11:00:00'),(136,18060,8,'SEK',18060,5,'SEK',1.000,'2020-01-01 11:00:00'),(137,27714,3,'SEK',27714,1,'SEK',1.000,'2020-01-01 11:00:00'),(138,49250,2,'SEK',49250,6,'SEK',1.000,'2020-01-01 11:00:00'),(139,20285,9,'SEK',20285,6,'SEK',1.000,'2020-01-01 11:00:00'),(140,17936,2,'SEK',17936,4,'SEK',1.000,'2020-01-01 11:00:00'),(141,3636,9,'SEK',3636,1,'SEK',1.000,'2020-01-01 11:00:00'),(142,8263,5,'SEK',8263,8,'SEK',1.000,'2020-01-01 11:00:00'),(143,3589,6,'SEK',3589,10,'SEK',1.000,'2020-01-01 11:00:00'),(144,35609,5,'SEK',35609,10,'SEK',1.000,'2020-01-01 11:00:00'),(145,16633,2,'SEK',16633,9,'SEK',1.000,'2020-01-01 11:00:00'),(146,44281,10,'SEK',44281,4,'SEK',1.000,'2020-01-01 11:00:00'),(147,19997,5,'SEK',19997,6,'SEK',1.000,'2020-01-01 11:00:00'),(148,31625,8,'SEK',31625,6,'SEK',1.000,'2020-01-01 11:00:00'),(149,34728,4,'SEK',34728,8,'SEK',1.000,'2020-01-01 11:00:00'),(150,47503,9,'SEK',47503,10,'SEK',1.000,'2020-01-01 11:00:00'),(151,15319,3,'SEK',15319,2,'SEK',1.000,'2020-01-01 11:00:00'),(152,36080,4,'SEK',36080,5,'SEK',1.000,'2020-01-01 11:00:00'),(153,44862,2,'SEK',44862,5,'SEK',1.000,'2020-01-01 11:00:00'),(154,15405,3,'SEK',15405,2,'SEK',1.000,'2020-01-01 11:00:00'),(155,47161,7,'SEK',47161,6,'SEK',1.000,'2020-01-01 11:00:00'),(156,15097,5,'SEK',15097,6,'SEK',1.000,'2020-01-01 11:00:00'),(157,42514,1,'SEK',42514,6,'SEK',1.000,'2020-01-01 11:00:00'),(158,49160,10,'SEK',49160,1,'SEK',1.000,'2020-01-01 11:00:00'),(159,39235,5,'SEK',39235,4,'SEK',1.000,'2020-01-01 11:00:00'),(160,37800,8,'SEK',37800,4,'SEK',1.000,'2020-01-01 11:00:00'),(161,3343,10,'SEK',3343,7,'SEK',1.000,'2020-01-01 11:00:00'),(162,37035,8,'SEK',37035,3,'SEK',1.000,'2020-01-01 11:00:00'),(163,28767,4,'SEK',28767,3,'SEK',1.000,'2020-01-01 11:00:00'),(164,20835,2,'SEK',20835,1,'SEK',1.000,'2020-01-01 11:00:00'),(165,341,1,'SEK',341,5,'SEK',1.000,'2020-01-01 11:00:00'),(166,4616,3,'SEK',4616,5,'SEK',1.000,'2020-01-01 11:00:00'),(167,19741,3,'SEK',19741,10,'SEK',1.000,'2020-01-01 11:00:00'),(168,19404,3,'SEK',19404,5,'SEK',1.000,'2020-01-01 11:00:00'),(169,49135,5,'SEK',49135,6,'SEK',1.000,'2020-01-01 11:00:00'),(170,35104,3,'SEK',35104,6,'SEK',1.000,'2020-01-01 11:00:00'),(171,40006,1,'SEK',40006,2,'SEK',1.000,'2020-01-01 11:00:00'),(172,2983,10,'SEK',2983,6,'SEK',1.000,'2020-01-01 11:00:00'),(173,38742,9,'SEK',38742,3,'SEK',1.000,'2020-01-01 11:00:00'),(174,39381,2,'SEK',39381,1,'SEK',1.000,'2020-01-01 11:00:00'),(175,43053,10,'SEK',43053,6,'SEK',1.000,'2020-01-01 11:00:00'),(176,33556,1,'SEK',33556,8,'SEK',1.000,'2020-01-01 11:00:00'),(177,31356,6,'SEK',31356,10,'SEK',1.000,'2020-01-01 11:00:00'),(178,38085,10,'SEK',38085,4,'SEK',1.000,'2020-01-01 11:00:00'),(179,4299,9,'SEK',4299,10,'SEK',1.000,'2020-01-01 11:00:00'),(180,26676,5,'SEK',26676,8,'SEK',1.000,'2020-01-01 11:00:00'),(181,6995,10,'SEK',6995,1,'SEK',1.000,'2020-01-01 11:00:00'),(182,37210,8,'SEK',37210,4,'SEK',1.000,'2020-01-01 11:00:00'),(183,34778,8,'SEK',34778,4,'SEK',1.000,'2020-01-01 11:00:00'),(184,2726,8,'SEK',2726,7,'SEK',1.000,'2020-01-01 11:00:00'),(185,34530,5,'SEK',34530,8,'SEK',1.000,'2020-01-01 11:00:00'),(186,29732,10,'SEK',29732,1,'SEK',1.000,'2020-01-01 11:00:00'),(187,40250,5,'SEK',40250,10,'SEK',1.000,'2020-01-01 11:00:00'),(188,34033,5,'SEK',34033,6,'SEK',1.000,'2020-01-01 11:00:00'),(189,15083,6,'SEK',15083,10,'SEK',1.000,'2020-01-01 11:00:00'),(190,13494,7,'SEK',13494,4,'SEK',1.000,'2020-01-01 11:00:00'),(191,38756,1,'SEK',38756,10,'SEK',1.000,'2020-01-01 11:00:00'),(192,14917,3,'SEK',14917,6,'SEK',1.000,'2020-01-01 11:00:00'),(193,7639,5,'SEK',7639,6,'SEK',1.000,'2020-01-01 11:00:00'),(194,9253,10,'SEK',9253,3,'SEK',1.000,'2020-01-01 11:00:00'),(195,26259,2,'SEK',26259,3,'SEK',1.000,'2020-01-01 11:00:00'),(196,45299,1,'SEK',45299,8,'SEK',1.000,'2020-01-01 11:00:00'),(197,13922,8,'SEK',13922,9,'SEK',1.000,'2020-01-01 11:00:00'),(198,1317,5,'SEK',1317,7,'SEK',1.000,'2020-01-01 11:00:00'),(199,28445,5,'SEK',28445,7,'SEK',1.000,'2020-01-01 11:00:00'),(200,34882,2,'SEK',34882,9,'SEK',1.000,'2020-01-01 11:00:00');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mobilephone` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Eugenius','McDougall','emcdougall0','MJvcqxlbNK','076-1234560'),(2,'Lion','Toyer','ltoyer1','1HUTP8BivQ17','076-1234561'),(3,'Blanca','Fussie','bfussie2','INdDBPs9UcW','076-1234562'),(4,'Giffer','Wilstead','gwilstead3','fYz2Bs','076-1234563'),(5,'Charlot','Waggatt','cwaggatt4','Qv69mr','076-1234564'),(6,'Huberto','Biggs','hbiggs5','iVulMzUQ7v1','076-1234565'),(7,'Drusi','Foskew','dfoskew6','4pShbrXSpTLK','076-1234566'),(8,'Sapphire','Vequaud','svequaud7','agN4Bzo3D','076-1234567'),(9,'Stephannie','Gotfrey','sgotfrey8','9LlRq8laWX','076-1234568'),(10,'Giulio','Arnli','garnli9','tSfZJjg','076-1234569');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_users`
--

DROP TABLE IF EXISTS `vw_users`;
/*!50001 DROP VIEW IF EXISTS `vw_users`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_users` AS SELECT 
 1 AS `id`,
 1 AS `firstName`,
 1 AS `lastName`,
 1 AS `username`,
 1 AS `password`,
 1 AS `mobilephone`,
 1 AS `account_id`,
 1 AS `balance`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_users`
--

/*!50001 DROP VIEW IF EXISTS `vw_users`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_users` AS select `u`.`id` AS `id`,`u`.`firstName` AS `firstName`,`u`.`lastName` AS `lastName`,`u`.`username` AS `username`,`u`.`password` AS `password`,`u`.`mobilephone` AS `mobilephone`,`a`.`id` AS `account_id`,((select sum(`transactions`.`to_amount`) from `transactions` where (`transactions`.`to_account` = `a`.`id`)) - (select sum(`transactions`.`from_amount`) from `transactions` where (`transactions`.`from_account` = `a`.`id`))) AS `balance` from (`users` `u` join `account` `a` on((`a`.`user_id` = `u`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-01  2:32:09

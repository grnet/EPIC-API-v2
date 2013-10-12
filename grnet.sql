-- MySQL dump 10.13  Distrib 5.1.52, for unknown-linux-gnu (x86_64)
--
-- Host: localhost    Database: epic
-- ------------------------------------------------------
-- Server version	5.1.52-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;


DROP TABLE IF EXISTS `handles`;
/*!50001 DROP VIEW IF EXISTS `handles`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001  */
CREATE TABLE `handles` (
  `handle` varchar(255),
  `idx` int(11),
  `type` varchar(255),
  `data` blob,
  `ttl_type` smallint(6),
  `ttl` int(11),
  `timestamp` int(11),
  `refs` blob,
  `admin_read` tinyint(1),
  `admin_write` tinyint(1),
  `pub_read` tinyint(1),
  `pub_write` tinyint(1)
) ENGINE=MyISAM;
SET character_set_client = @saved_cs_client;

INSERT INTO handles values ('11239/GRNET', 1, 'URL', 'http://www.grnet.gr/', 0, 86400, 1379494800, '',1,1,1,0);
INSERT INTO handles values ('11239/GRNET', 100, 'HS_ADMIN','ó\0\0\0\n0.NA/11239\0\0\0È\0\0', 0,86400,1379494800,'',1,1,1,0);

--
-- Table structure for table `handles_attic`
--

DROP TABLE IF EXISTS `handles_attic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `handles_attic` (
  `handle` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `idx` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `data` blob,
  `ttl_type` smallint(6) DEFAULT NULL,
  `ttl` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `refs` blob,
  `admin_read` tinyint(1) DEFAULT NULL,
  `admin_write` tinyint(1) DEFAULT NULL,
  `pub_read` tinyint(1) DEFAULT NULL,
  `pub_write` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`handle`,`idx`),
  KEY `idx` (`idx`),
  KEY `type` (`type`),
  KEY `timestamp` (`timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `handles_attic`
--

LOCK TABLES `handles_attic` WRITE;
/*!40000 ALTER TABLE `handles_attic` DISABLE KEYS */;
/*!40000 ALTER TABLE `handles_attic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nas`
--

DROP TABLE IF EXISTS `nas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nas` (
  `na` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `na_id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`na_id`),
  UNIQUE KEY `na` (`na`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nas`
--

LOCK TABLES `nas` WRITE;
/*!40000 ALTER TABLE `nas` DISABLE KEYS */;
INSERT INTO `nas` VALUES ('0.NA/11239',3);
/*!40000 ALTER TABLE `nas` ENABLE KEYS */;
UNLOCK TABLES;
CREATE DATABASE  IF NOT EXISTS `lux_benchmarks` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `lux_benchmarks`;
-- MySQL dump 10.13  Distrib 5.6.24, for osx10.8 (x86_64)
--
-- Host: 127.0.0.1    Database: lux_benchmarks
-- ------------------------------------------------------
-- Server version	5.7.11

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
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task` (
  `name` varchar(255) DEFAULT NULL,
  `completed` tinyint(1) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `due_date` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `list_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` VALUES ('New Task',0,1,NULL,'2016-03-14 11:50:14','2016-03-14 11:50:14',1),('New Task',0,2,NULL,'2016-03-14 11:50:14','2016-03-14 11:50:14',1),('New Task',0,3,NULL,'2016-03-14 11:50:14','2016-03-14 11:50:14',1),('New Task',0,4,NULL,'2016-03-14 11:50:14','2016-03-14 11:50:14',1),('New Task',0,5,NULL,'2016-03-14 11:50:14','2016-03-14 11:50:14',1),('New Task',0,6,NULL,'2016-03-14 11:50:14','2016-03-14 11:50:14',1),('New Task',0,7,NULL,'2016-03-14 11:50:14','2016-03-14 11:50:14',1),('New Task',0,8,NULL,'2016-03-14 11:50:14','2016-03-14 11:50:14',1),('New Task',0,9,NULL,'2016-03-14 11:50:14','2016-03-14 11:50:14',1),('New Task',0,10,NULL,'2016-03-14 11:50:14','2016-03-14 11:50:14',1),('New Task',0,11,NULL,'2016-03-14 11:50:14','2016-03-14 11:50:14',1),('New Task',0,12,NULL,'2016-03-14 11:50:14','2016-03-14 11:50:14',1),('New Task',0,13,NULL,'2016-03-14 11:50:14','2016-03-14 11:50:14',1),('New Task',0,14,NULL,'2016-03-14 11:50:14','2016-03-14 11:50:14',1),('New Task',0,15,NULL,'2016-03-14 11:50:14','2016-03-14 11:50:14',1),('New Task',0,16,NULL,'2016-03-14 11:50:14','2016-03-14 11:50:14',1),('New Task',0,17,NULL,'2016-03-14 11:50:14','2016-03-14 11:50:14',1),('New Task',0,18,NULL,'2016-03-14 11:50:14','2016-03-14 11:50:14',1),('New Task',0,19,NULL,'2016-03-14 11:50:14','2016-03-14 11:50:14',1),('New Task',0,20,NULL,'2016-03-14 11:50:14','2016-03-14 11:50:14',1),('New Task',0,21,NULL,'2016-03-14 11:50:14','2016-03-14 11:50:14',1),('New Task',0,22,NULL,'2016-03-14 11:50:14','2016-03-14 11:50:14',1),('New Task',0,23,NULL,'2016-03-14 11:50:14','2016-03-14 11:50:14',1),('New Task',0,24,NULL,'2016-03-14 11:50:14','2016-03-14 11:50:14',1),('New Task',0,25,NULL,'2016-03-14 11:50:14','2016-03-14 11:50:14',1),('New Task',0,26,NULL,'2016-03-14 11:50:14','2016-03-14 11:50:14',NULL);
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_list`
--

DROP TABLE IF EXISTS `task_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_list` (
  `name` longtext,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_list`
--

LOCK TABLES `task_list` WRITE;
/*!40000 ALTER TABLE `task_list` DISABLE KEYS */;
INSERT INTO `task_list` VALUES ('To Do',1,'2016-03-14 11:48:31','2016-03-14 11:48:31');
/*!40000 ALTER TABLE `task_list` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-14 12:17:16

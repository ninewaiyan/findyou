-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: findyoudb
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sId` bigint NOT NULL,
  `rId` bigint NOT NULL,
  `type` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `seen` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sId` (`sId`),
  KEY `rId` (`rId`),
  CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`sId`) REFERENCES `users` (`id`),
  CONSTRAINT `notifications_ibfk_2` FOREIGN KEY (`rId`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (1,5658,5659,'view','This person views you account .',1,'2024-03-02 18:33:04',NULL),(2,5658,5659,'view','This person views you account .',1,'2024-03-02 18:33:04',NULL),(3,5657,5659,'flip','This person flip you.',1,'2024-11-25 16:45:51',NULL),(4,5657,5659,'flip','This person flip you.',1,'2024-11-25 16:45:53',NULL),(5,5657,5659,'flip','This person flip you.',1,'2024-11-25 16:52:32',NULL),(6,5659,5658,'view','This person view your account.',0,'2024-11-25 19:54:43',NULL),(7,5659,5658,'flip','This person flip you.',0,'2024-11-25 19:54:46',NULL),(8,5659,5658,'flip','This person flip you.',0,'2024-11-25 19:55:06',NULL),(9,5657,5658,'view','This person view your account.',0,'2024-11-25 19:55:28',NULL),(10,5657,5658,'flip','This person flip you.',0,'2024-11-25 19:55:37',NULL),(11,5657,5658,'flip','This person flip you.',0,'2024-11-25 19:55:46',NULL),(12,5659,5657,'view','This person view your account.',1,'2024-11-25 19:56:13',NULL),(13,5659,5657,'view','This person view your account.',1,'2024-11-25 20:00:53',NULL),(14,5659,5657,'flip','This person flip you.',1,'2024-11-25 20:00:56',NULL),(15,5657,5659,'view','This person view your account.',1,'2024-11-25 20:01:33',NULL),(16,5659,5657,'view','This person view your account.',1,'2024-11-25 20:01:49',NULL),(17,5659,5660,'view','This person view your account.',1,'2024-11-25 20:09:46',NULL),(18,5660,5659,'view','This person view your account.',1,'2024-11-25 20:10:23',NULL),(19,5660,5659,'view','This person view your account.',1,'2024-11-25 20:11:31',NULL),(20,5660,5659,'view','This person view your account.',1,'2024-11-25 20:12:05',NULL),(21,5660,5659,'view','This person view your account.',1,'2024-11-25 20:12:18',NULL),(22,5660,5659,'view','This person view your account.',1,'2024-11-25 20:12:30',NULL),(23,5659,5657,'accept','This person accept you.',1,'2024-11-25 20:52:27',NULL),(24,5659,5660,'view','This person view your account.',1,'2024-11-25 20:56:21',NULL),(25,5659,5657,'accept','This person accept you.',1,'2024-11-25 20:57:06',NULL),(26,5659,5657,'accept','This person accept you.',1,'2024-11-25 21:00:23',NULL),(27,5659,5657,'accept','This person accept you.',1,'2024-11-25 21:00:26',NULL),(28,5659,5658,'view','This person view your account.',0,'2024-11-25 21:01:24',NULL),(29,5659,5658,'view','This person view your account.',0,'2024-11-25 21:04:31',NULL),(30,5657,5661,'view','This person view your account.',0,'2024-11-25 21:31:00',NULL),(31,5657,5657,'accept','This person accept you.',1,'2024-11-25 21:39:33',NULL),(32,5657,5657,'accept','This person accept you.',1,'2024-11-25 21:45:06',NULL),(33,5657,5657,'accept','This person accept you.',1,'2024-11-25 21:47:02',NULL),(34,5657,5657,'accept','This person accept you.',1,'2024-11-25 21:49:54',NULL),(35,5657,5657,'accept','This person accept you.',1,'2024-11-25 21:50:22',NULL),(36,5657,5657,'accept','This person accept you.',1,'2024-11-25 21:51:04',NULL),(37,5657,5657,'accept','This person accept you.',1,'2024-11-25 21:52:09',NULL),(38,5657,5657,'accept','This person accept you.',1,'2024-11-25 21:52:38',NULL),(39,5657,5657,'accept','This person accept you.',1,'2024-11-25 22:06:09',NULL),(40,5657,5657,'accept','This person accept you.',1,'2024-11-25 22:06:56',NULL),(41,5657,5657,'accept','This person accept you.',1,'2024-11-25 22:08:26',NULL),(42,5659,5659,'accept','This person accept you.',1,'2024-11-25 22:09:37',NULL),(43,5659,5659,'accept','This person accept you.',1,'2024-11-25 22:11:43',NULL),(44,5659,5659,'accept','This person accept you.',1,'2024-11-25 22:16:54',NULL),(45,5659,5659,'accept','This person accept you.',1,'2024-11-25 22:18:39',NULL),(46,5659,5658,'view','This person view your account.',0,'2024-11-25 22:33:05',NULL),(47,5659,5659,'accept','This person accept you.',1,'2024-11-25 22:34:04',NULL),(48,5659,5659,'accept','This person accept you.',1,'2024-11-25 22:38:24',NULL),(49,5659,5659,'accept','This person accept you.',1,'2024-11-25 22:38:27',NULL),(50,5659,5659,'accept','This person accept you.',1,'2024-11-25 22:38:38',NULL),(51,5659,5659,'accept','This person accept you.',1,'2024-11-25 22:39:21',NULL),(52,5659,5659,'accept','This person accept you.',1,'2024-11-25 22:39:50',NULL),(53,5659,5659,'accept','This person accept you.',1,'2024-11-25 22:40:30',NULL),(54,5659,5659,'accept','This person accept you.',1,'2024-11-25 22:42:09',NULL),(55,5659,5659,'accept','This person accept you.',1,'2024-11-25 22:42:36',NULL),(56,5659,5659,'accept','This person accept you.',1,'2024-11-25 22:47:40',NULL),(57,5659,5659,'accept','This person accept you.',1,'2024-11-25 22:48:02',NULL),(58,5659,5659,'accept','This person accept you.',1,'2024-11-25 22:49:28',NULL),(59,5659,5659,'accept','This person accept you.',1,'2024-11-25 22:50:15',NULL),(60,5659,5659,'accept','This person accept you.',1,'2024-11-25 22:50:26',NULL),(61,5659,5659,'accept','This person accept you.',1,'2024-11-25 22:51:18',NULL),(62,5659,5659,'accept','This person accept you.',1,'2024-11-25 22:51:35',NULL),(63,5659,5659,'accept','This person accept you.',1,'2024-11-25 22:52:31',NULL),(64,5659,5659,'accept','This person accept you.',1,'2024-11-25 22:52:48',NULL),(65,5659,5659,'accept','This person accept you.',1,'2024-11-25 22:52:59',NULL),(66,5659,5659,'accept','This person accept you.',1,'2024-11-25 22:53:54',NULL),(67,5659,5659,'accept','This person accept you.',1,'2024-11-25 22:54:04',NULL),(68,5659,5659,'accept','This person accept you.',1,'2024-11-25 22:54:21',NULL),(69,5659,5659,'accept','This person accept you.',1,'2024-11-25 22:54:29',NULL),(70,5659,5659,'accept','This person accept you.',1,'2024-11-25 22:54:54',NULL),(71,5659,5659,'accept','This person accept you.',1,'2024-11-25 22:55:04',NULL),(72,5659,5659,'accept','This person accept you.',1,'2024-11-25 22:56:12',NULL),(73,5659,5659,'accept','This person accept you.',1,'2024-11-25 22:56:32',NULL),(74,5659,5659,'accept','This person accept you.',1,'2024-11-25 23:04:27',NULL),(75,5659,5658,'accept','This person accept you.',0,'2024-11-25 23:04:30',NULL),(76,5659,5658,'accept','This person accept you.',0,'2024-11-25 23:04:36',NULL),(77,5659,5659,'accept','This person accept you.',1,'2024-11-25 23:05:39',NULL),(78,5659,5660,'view','This person view your account.',1,'2024-11-25 23:06:15',NULL),(79,5659,5660,'flip','This person flip you.',1,'2024-11-25 23:06:25',NULL),(80,5660,5659,'accept','This person accept you.',1,'2024-11-25 23:06:44',NULL),(81,5660,5660,'accept','This person accept you.',1,'2024-11-25 23:06:54',NULL),(82,5660,5660,'accept','This person accept you.',1,'2024-11-25 23:07:02',NULL),(83,5660,5659,'accept','This person accept you.',1,'2024-11-25 23:07:23',NULL),(84,5660,5660,'accept','This person accept you.',1,'2024-11-25 23:07:28',NULL),(85,5659,5659,'accept','This person accept you.',1,'2024-11-25 23:07:38',NULL),(86,5659,5660,'accept','This person accept you.',1,'2024-11-25 23:07:55',NULL),(87,5660,5660,'accept','This person accept you.',1,'2024-11-25 23:08:14',NULL),(88,5660,5660,'accept','This person accept you.',1,'2024-11-25 23:09:11',NULL),(89,5660,5660,'accept','This person accept you.',1,'2024-11-25 23:09:17',NULL),(90,5660,5659,'view','This person view your account.',1,'2024-11-25 23:09:20',NULL),(91,5660,5659,'flip','This person flip you.',1,'2024-11-25 23:09:23',NULL),(92,5659,5660,'accept','This person accept you.',0,'2024-11-25 23:09:35',NULL),(93,5659,5659,'accept','This person accept you.',1,'2024-11-25 23:09:45',NULL),(94,5659,5659,'accept','This person accept you.',1,'2024-11-25 23:10:02',NULL),(95,5659,5659,'accept','This person accept you.',1,'2024-11-25 23:10:11',NULL),(96,5659,5659,'accept','This person accept you.',1,'2024-11-25 23:13:17',NULL),(97,5659,5659,'accept','This person accept you.',1,'2024-11-25 23:14:47',NULL),(98,5659,5659,'accept','This person accept you.',1,'2024-11-25 23:17:18',NULL),(99,5659,5657,'view','This person view your account.',0,'2024-11-25 23:52:55',NULL),(100,5659,5658,'view','This person view your account.',0,'2024-11-25 23:53:13',NULL),(101,5659,5659,'accept','This person accept you.',1,'2024-11-25 23:53:31',NULL),(102,5666,5666,'accept','This person accept you.',1,'2024-11-25 23:58:39',NULL),(103,5666,5665,'view','This person view your account.',0,'2024-11-25 23:58:52',NULL),(104,5659,5665,'view','This person view your account.',0,'2024-11-25 23:59:43',NULL),(105,5667,5666,'view','This person view your account.',1,'2024-11-26 00:01:45',NULL),(106,5667,5661,'view','This person view your account.',0,'2024-11-26 00:01:50',NULL),(107,5667,5667,'accept','This person accept you.',1,'2024-11-26 00:01:53',NULL),(108,5667,5667,'accept','This person accept you.',1,'2024-11-26 00:02:15',NULL),(109,5666,5659,'view','This person view your account.',1,'2024-11-26 00:07:48',NULL),(110,5666,5659,'flip','This person flip you.',1,'2024-11-26 00:07:52',NULL),(111,5666,5667,'view','This person view your account.',0,'2024-11-26 00:08:19',NULL),(112,5666,5666,'accept','This person accept you.',1,'2024-11-26 00:08:25',NULL),(113,5666,5666,'accept','This person accept you.',1,'2024-11-26 00:08:41',NULL),(114,5666,5666,'accept','This person accept you.',1,'2024-11-26 00:10:09',NULL),(115,5666,5666,'accept','This person accept you.',1,'2024-11-26 00:10:37',NULL),(116,5666,5666,'accept','This person accept you.',1,'2024-11-26 00:10:56',NULL),(117,5666,5666,'accept','This person accept you.',1,'2024-11-26 00:12:47',NULL),(118,5666,5667,'view','This person view your account.',0,'2024-11-26 00:12:56',NULL),(119,5666,5667,'flip','This person flip you.',0,'2024-11-26 00:12:59',NULL),(120,5659,5666,'accept','This person accept you.',0,'2024-11-26 00:16:19',NULL),(121,5659,5659,'accept','This person accept you.',1,'2024-11-26 00:16:22',NULL),(122,5659,5659,'accept','This person accept you.',1,'2024-11-26 00:16:44',NULL),(123,5659,5658,'view','This person view your account.',0,'2024-11-26 00:17:33',NULL),(124,5659,5659,'accept','This person accept you.',1,'2024-11-26 00:21:10',NULL),(125,5659,5661,'view','This person view your account.',0,'2024-11-26 00:21:38',NULL),(126,5659,5661,'flip','This person flip you.',0,'2024-11-26 00:21:46',NULL),(127,5659,5661,'flip','This person flip you.',0,'2024-11-26 00:21:49',NULL),(128,5659,5661,'flip','This person flip you.',0,'2024-11-26 00:21:52',NULL),(129,5659,5661,'flip','This person flip you.',0,'2024-11-26 00:21:54',NULL),(130,5659,5661,'flip','This person flip you.',0,'2024-11-26 00:22:00',NULL),(131,5659,5661,'flip','This person flip you.',0,'2024-11-26 00:22:05',NULL),(132,5659,5657,'view','This person view your account.',0,'2024-11-26 00:22:50',NULL),(133,5659,5657,'flip','This person flip you.',0,'2024-11-26 00:22:55',NULL),(134,5659,5658,'view','This person view your account.',0,'2024-11-26 00:23:17',NULL),(135,5659,5660,'view','This person view your account.',0,'2024-11-26 00:23:21',NULL),(136,5659,5661,'view','This person view your account.',0,'2024-11-26 00:27:44',NULL),(137,5659,5661,'flip','This person flip you.',0,'2024-11-26 00:28:02',NULL),(138,5659,5666,'accept','This person accept you.',0,'2024-11-26 00:28:14',NULL),(139,5659,5659,'accept','This person accept you.',1,'2024-11-26 00:28:16',NULL),(140,5659,5665,'view','This person view your account.',0,'2024-12-09 13:43:16',NULL),(141,5659,5657,'view','This person view your account.',0,'2024-12-09 13:43:30',NULL),(142,5659,5658,'view','This person view your account.',0,'2024-12-09 13:43:48',NULL),(143,5659,5666,'accept','This person accept you.',0,'2024-12-09 13:43:55',NULL),(144,5659,5660,'accept','This person accept you.',0,'2024-12-09 13:44:05',NULL),(145,5659,5666,'accept','This person accept you.',0,'2024-12-09 13:44:11',NULL);
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-11  9:38:50

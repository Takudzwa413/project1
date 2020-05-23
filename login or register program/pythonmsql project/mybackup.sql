-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: life_choice
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` int NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('Godwin',1234,1),('Takudzwa',1234,2);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fireman`
--

DROP TABLE IF EXISTS `fireman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fireman` (
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`username`),
  KEY `id` (`id`),
  CONSTRAINT `fireman_ibfk_1` FOREIGN KEY (`id`) REFERENCES `admin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fireman`
--

LOCK TABLES `fireman` WRITE;
/*!40000 ALTER TABLE `fireman` DISABLE KEYS */;
INSERT INTO `fireman` VALUES ('Godwin','12345',1),('Takudzwa','12345',2);
/*!40000 ALTER TABLE `fireman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logout`
--

DROP TABLE IF EXISTS `logout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logout` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `logout_time` datetime DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `sign_in` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logout`
--

LOCK TABLES `logout` WRITE;
/*!40000 ALTER TABLE `logout` DISABLE KEYS */;
INSERT INTO `logout` VALUES ('Tvengai','1234',NULL,1),('Tvengai','1234','2020-05-09 15:41:33',2),('Tvengai','1234','2020-05-09 16:07:20',3),('Tristain','1234','2020-05-09 16:24:00',4),('Tvengai','1234','2020-05-09 22:13:22',5),('Tvengai','1234','2020-05-10 00:44:08',6),('Tvengai','123','2020-05-10 11:53:06',7),('Tvengai','1234','2020-05-10 11:58:05',8),('Sunjam','1234','2020-05-11 01:45:28',9),('Sunjam','1234','2020-05-11 13:18:34',10),('Tvengai','1234','2020-05-11 13:20:28',11),('Sunjam','1234','2020-05-11 13:28:33',12),('Tvengai','1234','2020-05-11 16:04:53',13),('Vengai','1234','2020-05-11 21:54:04',14),('Vengai','1234','2020-05-11 21:56:35',15),('Tboss','1234','2020-05-12 20:31:40',16),('Godwin','1234','2020-05-12 20:57:05',17);
/*!40000 ALTER TABLE `logout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sign_in`
--

DROP TABLE IF EXISTS `sign_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sign_in` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `sign_in_time` datetime DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`username`),
  KEY `id` (`id`),
  CONSTRAINT `sign_in_ibfk_1` FOREIGN KEY (`id`) REFERENCES `logout` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sign_in`
--

LOCK TABLES `sign_in` WRITE;
/*!40000 ALTER TABLE `sign_in` DISABLE KEYS */;
INSERT INTO `sign_in` VALUES ('Tboss','1234','2020-05-12 20:31:25',1);
/*!40000 ALTER TABLE `sign_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `login_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'Maxwell','maxwell','1234','',NULL),(4,'Tinashe','Tboss','1234','',NULL),(5,'Shantel','Schinangwa','1234','',NULL),(6,'Marshall','Mash','1234','',NULL),(7,'Chipato','Chipato','1234','',NULL),(9,'Chinangwa','Tristain','1234','',NULL),(10,'Saraphina','Sara','1234','',NULL),(12,'Shantel','Shanel','1234','',NULL),(13,'Hanyire','Vengai','1234','takuman456@gmail.com','2020-05-09'),(14,'Jackson','Jack','1234','jack@gmail.com','2020-05-10');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitors`
--

DROP TABLE IF EXISTS `visitors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visitors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `full_name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `login_time` datetime DEFAULT NULL,
  PRIMARY KEY (`username`),
  KEY `id` (`id`),
  CONSTRAINT `visitors_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitors`
--

LOCK TABLES `visitors` WRITE;
/*!40000 ALTER TABLE `visitors` DISABLE KEYS */;
/*!40000 ALTER TABLE `visitors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-12 21:07:20

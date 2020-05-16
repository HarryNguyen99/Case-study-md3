-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: databasetravel
-- ------------------------------------------------------
-- Server version	8.0.20

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
  `id_account` int NOT NULL,
  `id_role` int NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phonenumber` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `active` bit(1) NOT NULL DEFAULT b'1',
  `online` bit(1) NOT NULL,
  PRIMARY KEY (`id_account`),
  KEY `account_role_id_role_fk` (`id_role`),
  CONSTRAINT `account_role_id_role_fk` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `citytravel`
--

DROP TABLE IF EXISTS `citytravel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `citytravel` (
  `id_city` int NOT NULL,
  `id_destinations` int NOT NULL,
  `city` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id_city`),
  KEY `citytravel_destinationstravel_id_destinations_fk` (`id_destinations`),
  CONSTRAINT `citytravel_destinationstravel_id_destinations_fk` FOREIGN KEY (`id_destinations`) REFERENCES `destinationstravel` (`id_destinations`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citytravel`
--

LOCK TABLES `citytravel` WRITE;
/*!40000 ALTER TABLE `citytravel` DISABLE KEYS */;
/*!40000 ALTER TABLE `citytravel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `destinationstravel`
--

DROP TABLE IF EXISTS `destinationstravel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `destinationstravel` (
  `id_destinations` int NOT NULL,
  `destinations` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id_destinations`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `destinationstravel`
--

LOCK TABLES `destinationstravel` WRITE;
/*!40000 ALTER TABLE `destinationstravel` DISABLE KEYS */;
/*!40000 ALTER TABLE `destinationstravel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `postsreview`
--

DROP TABLE IF EXISTS `postsreview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `postsreview` (
  `id_review` int NOT NULL,
  `id_destinations` int NOT NULL,
  `id_account` int NOT NULL,
  `titleposts` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `pointevaluate` float NOT NULL,
  `dateposts` datetime NOT NULL,
  PRIMARY KEY (`id_review`),
  KEY `postsreview_account_id_account_fk` (`id_account`),
  KEY `postsreview_destinationstravel_id_destinations_fk` (`id_destinations`),
  CONSTRAINT `postsreview_account_id_account_fk` FOREIGN KEY (`id_account`) REFERENCES `account` (`id_account`),
  CONSTRAINT `postsreview_destinationstravel_id_destinations_fk` FOREIGN KEY (`id_destinations`) REFERENCES `destinationstravel` (`id_destinations`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postsreview`
--

LOCK TABLES `postsreview` WRITE;
/*!40000 ALTER TABLE `postsreview` DISABLE KEYS */;
/*!40000 ALTER TABLE `postsreview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id_role` int NOT NULL,
  `role` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tourtravel`
--

DROP TABLE IF EXISTS `tourtravel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tourtravel` (
  `id_tour` int NOT NULL,
  `id_city` int NOT NULL,
  `nametour` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `details` text COLLATE utf8_unicode_ci NOT NULL,
  `datetour` date NOT NULL,
  `pricetour` float NOT NULL,
  PRIMARY KEY (`id_tour`),
  KEY `tourtravel_citytravel_id_city_fk` (`id_city`),
  CONSTRAINT `tourtravel_citytravel_id_city_fk` FOREIGN KEY (`id_city`) REFERENCES `citytravel` (`id_city`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tourtravel`
--

LOCK TABLES `tourtravel` WRITE;
/*!40000 ALTER TABLE `tourtravel` DISABLE KEYS */;
/*!40000 ALTER TABLE `tourtravel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-16  7:18:57

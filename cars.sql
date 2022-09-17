-- MariaDB dump 10.19  Distrib 10.6.9-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: db_functions
-- ------------------------------------------------------
-- Server version	10.6.9-MariaDB

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
-- Table structure for table `dealership`
--

DROP TABLE IF EXISTS `dealership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dealership` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `location` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `date_established` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dealership`
--

LOCK TABLES `dealership` WRITE;
/*!40000 ALTER TABLE `dealership` DISABLE KEYS */;
INSERT INTO `dealership` VALUES (1,'Honda','Vancouver','2015-01-10'),(2,'Ford','Calgary','2013-06-11'),(3,'Toyota','Toronto','2017-10-05');
/*!40000 ALTER TABLE `dealership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `for_sale_cars`
--

DROP TABLE IF EXISTS `for_sale_cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `for_sale_cars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dealership_id` int(10) unsigned NOT NULL,
  `make` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `model` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `year` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `for_sale_cars_FK` (`dealership_id`),
  CONSTRAINT `for_sale_cars_FK` FOREIGN KEY (`dealership_id`) REFERENCES `dealership` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `for_sale_cars`
--

LOCK TABLES `for_sale_cars` WRITE;
/*!40000 ALTER TABLE `for_sale_cars` DISABLE KEYS */;
INSERT INTO `for_sale_cars` VALUES (1,1,'Honda','Civic','2022-01-01'),(2,1,'Honda','CR-V','2022-01-01'),(3,1,'Honda','Accord','2022-01-01'),(4,2,'Ford','F-150','2022-01-01'),(5,2,'Ford','Focus','2022-01-01'),(6,2,'Ford','Escape','2022-01-01'),(7,2,'Ford','Mustang','2022-01-01'),(8,3,'Toyota','Rav4','2022-01-01'),(9,3,'Toyota','Corolla','2022-01-01'),(10,3,'Toyota','Tundra','2022-01-01'),(11,2,'Ford','Edge','2019-01-01');
/*!40000 ALTER TABLE `for_sale_cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_functions'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-17 14:32:32

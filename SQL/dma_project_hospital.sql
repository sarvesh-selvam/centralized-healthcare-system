CREATE DATABASE  IF NOT EXISTS `dma_project` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dma_project`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: dma_project
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `hospital`
--

DROP TABLE IF EXISTS `hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital` (
  `Hospital_ID` int NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL,
  `Contact` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Hospital_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital`
--

LOCK TABLES `hospital` WRITE;
/*!40000 ALTER TABLE `hospital` DISABLE KEYS */;
INSERT INTO `hospital` VALUES (1,'City General Hospital','123 Main St, Cityville','555-1234'),(2,'County Medical Center','456 Oak Ave, Countytown','555-5678'),(3,'Regional Health Clinic','789 Pine Blvd, Regionville','555-9101'),(4,'Metro Health Center','101 Elm St, Metro City','555-2345'),(5,'Unity Medical Hub','202 Maple Ave, Unitytown','555-6789'),(6,'Westside Community Hospital','303 Cedar Blvd, Westside','555-1111'),(7,'East End Medical Center','404 Birch St, East End','555-2222'),(8,'Southern Health Services','505 Spruce Ave, Southville','555-3333'),(9,'Northern Regional Hospital','606 Pine St, Northside','555-4444'),(10,'Coastal Medical Institute','707 Ocean Blvd, Coastal City','555-5555'),(11,'Hilltop General Hospital','808 Hillcrest Dr, Hilltop','555-6666'),(12,'Sunrise Medical Center','909 Sunset Ave, Sunrisetown','555-7777'),(13,'Central Health Facility','1010 Central Rd, Central City','555-8888'),(14,'Valley Medical Complex','1111 Valley View, Valleytown','555-9999'),(15,'Lakeside Regional Hospital','1212 Lake Dr, Lakeside','555-0000');
/*!40000 ALTER TABLE `hospital` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-12 11:02:27

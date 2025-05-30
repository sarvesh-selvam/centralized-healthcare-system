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
-- Table structure for table `support_group`
--

DROP TABLE IF EXISTS `support_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `support_group` (
  `GroupID` int NOT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Description` text,
  PRIMARY KEY (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `support_group`
--

LOCK TABLES `support_group` WRITE;
/*!40000 ALTER TABLE `support_group` DISABLE KEYS */;
INSERT INTO `support_group` VALUES (1,'Cancer Support Group','A group for individuals affected by cancer to share experiences and support each other.'),(2,'Diabetes Management Group','Discussion and tips on managing diabetes through lifestyle and medication.'),(3,'Mental Health Wellness','Support for individuals dealing with mental health challenges, providing a safe space to discuss and seek advice.'),(4,'Chronic Pain Warriors','A community for those living with chronic pain to share coping strategies and resources.'),(5,'Parenting with Health Challenges','Support and advice for parents navigating health challenges while raising a family.'),(6,'Heart Health Matters','Discussion on maintaining a heart-healthy lifestyle and managing cardiovascular conditions.'),(7,'Womens Health Forum','A space for women to discuss various health topics, including reproductive health and wellness.'),(8,'Fitness Enthusiasts','For individuals passionate about fitness to share workout routines, tips, and motivation.'),(9,'Nutrition and Wellness','Discussion on maintaining a balanced diet and overall wellness.'),(10,'Caregiver Support Network','Support for caregivers providing care to loved ones, sharing experiences and resources.');
/*!40000 ALTER TABLE `support_group` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-12 11:02:28

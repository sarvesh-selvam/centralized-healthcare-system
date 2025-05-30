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
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment` (
  `AppointmentID` int NOT NULL,
  `PatientID` int DEFAULT NULL,
  `DoctorID` int DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Reason` text,
  PRIMARY KEY (`AppointmentID`),
  KEY `PatientID` (`PatientID`),
  KEY `DoctorID` (`DoctorID`),
  CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `patient` (`PatientID`),
  CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`DoctorID`) REFERENCES `doctor` (`DoctorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (1,1,1,'2023-01-10 09:00:00','Confirmed','Routine check-up'),(2,2,2,'2023-02-15 14:30:00','Confirmed','Follow-up on surgery'),(3,3,3,'2023-03-20 11:15:00','Pending','Vaccination discussion'),(4,4,4,'2023-04-25 16:45:00','Confirmed','Medication adjustment'),(5,5,5,'2023-05-30 10:30:00','Confirmed','Physical examination'),(6,6,6,'2023-06-05 13:00:00','Pending','Consultation on test results'),(7,7,7,'2023-07-10 08:45:00','Confirmed','Prenatal check-up'),(8,8,8,'2023-08-15 12:30:00','Pending','Ear pain assessment'),(9,9,9,'2023-09-20 15:15:00','Confirmed','Kidney stone follow-up'),(10,10,10,'2023-10-25 09:30:00','Confirmed','Back pain evaluation'),(11,11,11,'2023-11-30 14:00:00','Pending','Discussion on treatment options'),(12,12,12,'2023-12-05 10:45:00','Confirmed','Sleep apnea follow-up'),(13,13,13,'2024-01-10 11:30:00','Pending','New medication discussion'),(14,14,14,'2024-02-15 15:00:00','Confirmed','Pre-surgery consultation'),(15,15,15,'2024-03-20 09:15:00','Confirmed','Vaccination appointment');
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
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

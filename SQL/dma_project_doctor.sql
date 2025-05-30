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
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `DoctorID` int NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Specialization` varchar(255) DEFAULT NULL,
  `Contact` varchar(255) DEFAULT NULL,
  `Credentials` varchar(255) DEFAULT NULL,
  `Hospital_ID` int DEFAULT NULL,
  PRIMARY KEY (`DoctorID`),
  KEY `Hospital_ID` (`Hospital_ID`),
  CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`Hospital_ID`) REFERENCES `hospital` (`Hospital_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1,'Dr. Smith','Cardiologist','555-1111','MD, PhD',1),(2,'Dr. Johnson','Orthopedic Surgeon','555-2222','MD',2),(3,'Dr. Brown','Pediatrician','555-3333','MD, FAAP',3),(4,'Dr. Davis','Oncologist','555-4444','MD, MS',4),(5,'Dr. Miller','Dermatologist','555-5555','MD, DNB',5),(6,'Dr. Wilson','Neurologist','555-6666','MD, FACP',6),(7,'Dr. Martinez','Gynecologist','555-7777','MD, FACOG',7),(8,'Dr. Taylor','ENT Specialist','555-8888','MD, FRCS',8),(9,'Dr. Robinson','Urologist','555-9999','MD, FACS',9),(10,'Dr. Turner','Psychiatrist','555-0000','MD, MRCP',10),(11,'Dr. Harris','Endocrinologist','555-1010','MD, FACE',11),(12,'Dr. Lee','Rheumatologist','555-2020','MD, DM',12),(13,'Dr. White','General Surgeon','555-3030','MD, FRCS',13),(14,'Dr. Turner','Infectious Disease Specialist','555-4040','MD, DTM&H',14),(15,'Dr. Davis','Hematologist','555-5050','MD, PhD',15);
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
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

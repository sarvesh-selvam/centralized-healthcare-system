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
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `PatientID` int NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `Contact` varchar(255) DEFAULT NULL,
  `Insurance` varchar(255) DEFAULT NULL,
  `MedicalHistory` text,
  PRIMARY KEY (`PatientID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'John Doe','1990-05-15','123-456-7890','ABC Insurance','No significant medical history'),(2,'Jane Smith','1985-08-22','987-654-3210','XYZ Insurance','Allergic to penicillin'),(3,'Alice Johnson','1978-03-10','555-123-4567','LMN Insurance','Hypertension'),(4,'Bob Williams','1995-11-28','444-789-0123','PQR Insurance','Asthma'),(5,'Emily Davis','1982-07-17','222-333-4444','DEF Insurance','Diabetes'),(6,'Michael Brown','1973-09-05','777-888-9999','GHI Insurance','None'),(7,'Samantha White','1998-01-12','666-555-4444','JKL Insurance','Seasonal allergies'),(8,'Daniel Wilson','1989-06-20','333-222-1111','RST Insurance','High cholesterol'),(9,'Olivia Taylor','1992-04-02','888-999-0000','UVW Insurance','Migraines'),(10,'Ethan Miller','1980-12-08','111-222-3333','XYZ Insurance','Back pain'),(11,'Sophia Harris','1993-10-30','444-555-6666','ABC Insurance','Anxiety disorder'),(12,'Liam Robinson','1987-02-18','777-666-5555','GHI Insurance','Sleep apnea'),(13,'Ava Martinez','1975-05-25','222-111-0000','JKL Insurance','Osteoarthritis'),(14,'Mia Lee','1996-08-14','999-888-7777','DEF Insurance','Atrial fibrillation'),(15,'Noah Turner','1984-11-03','333-444-5555','PQR Insurance','Depression');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-12 11:02:29

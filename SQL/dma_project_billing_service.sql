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
-- Table structure for table `billing_service`
--

DROP TABLE IF EXISTS `billing_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billing_service` (
  `BillID` int NOT NULL,
  `PatientID` int DEFAULT NULL,
  `Amount` decimal(10,0) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`BillID`),
  KEY `PatientID` (`PatientID`),
  CONSTRAINT `billing_service_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `patient` (`PatientID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing_service`
--

LOCK TABLES `billing_service` WRITE;
/*!40000 ALTER TABLE `billing_service` DISABLE KEYS */;
INSERT INTO `billing_service` VALUES (1,1,150,'2023-01-05','Paid'),(2,2,201,'2023-02-10','Pending'),(3,3,75,'2023-03-15','Unpaid'),(4,4,301,'2023-04-20','Paid'),(5,5,126,'2023-05-25','Unpaid'),(6,6,181,'2023-06-30','Paid'),(7,7,90,'2023-07-05','Unpaid'),(8,8,250,'2023-08-10','Paid'),(9,9,121,'2023-09-15','Pending'),(10,10,160,'2023-10-20','Paid'),(11,11,81,'2023-11-25','Unpaid'),(12,12,300,'2023-12-30','Paid'),(13,13,101,'2024-01-05','Pending'),(14,14,135,'2024-02-10','Paid'),(15,15,220,'2024-03-15','Unpaid');
/*!40000 ALTER TABLE `billing_service` ENABLE KEYS */;
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

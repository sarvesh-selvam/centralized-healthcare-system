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
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `MessageID` int NOT NULL,
  `Sender` varchar(255) DEFAULT NULL,
  `Recipient` varchar(255) DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `Content` text,
  `Patient_ID` int DEFAULT NULL,
  `Doctor_ID` int DEFAULT NULL,
  `Hospital_ID` int DEFAULT NULL,
  PRIMARY KEY (`MessageID`),
  KEY `Patient_ID` (`Patient_ID`),
  KEY `Doctor_ID` (`Doctor_ID`),
  KEY `Hospital_ID` (`Hospital_ID`),
  CONSTRAINT `message_ibfk_1` FOREIGN KEY (`Patient_ID`) REFERENCES `patient` (`PatientID`),
  CONSTRAINT `message_ibfk_2` FOREIGN KEY (`Doctor_ID`) REFERENCES `doctor` (`DoctorID`),
  CONSTRAINT `message_ibfk_3` FOREIGN KEY (`Hospital_ID`) REFERENCES `hospital` (`Hospital_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (1,'Patient1','Doctor1','2023-01-15 10:30:00','Hello, I have a question about my medication.',1,1,1),(2,'Doctor2','Patient2','2023-02-20 14:45:00','Your test results are normal. No need to worry.',2,2,2),(3,'Hospital3','Patient3','2023-03-25 08:15:00','Reminder: Your upcoming appointment is scheduled for next week.',3,3,3),(4,'Patient4','Doctor4','2023-04-10 11:00:00','I am experiencing some side effects from the medication. What should I do?',4,4,4),(5,'Doctor5','Patient5','2023-05-05 16:20:00','Please come in for a follow-up appointment to discuss your treatment plan.',5,5,5),(6,'Hospital6','Patient6','2023-06-12 09:45:00','Your billing statement for the recent services has been generated. Please review.',6,6,6),(7,'Patient7','Doctor7','2023-07-18 13:10:00','I would like to join a support group. Can you provide more information?',7,7,7),(8,'Doctor8','Patient8','2023-08-22 17:30:00','Your appointment is confirmed. See you next week.',8,8,8),(9,'Hospital9','Patient9','2023-09-05 10:00:00','Important: Your prescription has been sent to your pharmacy.',9,9,9),(10,'Patient10','Doctor10','2023-10-15 14:15:00','I am experiencing persistent pain. Should I schedule an appointment?',10,10,10),(11,'Doctor11','Patient11','2023-11-20 11:45:00','Your latest test results are concerning. We need to discuss further treatment options.',11,11,11),(12,'Hospital12','Patient12','2023-12-25 08:30:00','Wishing you a Merry Christmas and a Happy New Year!',12,12,12),(13,'Patient13','Doctor13','2024-01-02 12:00:00','I have questions about the new medication. Can you provide more information?',13,13,13),(14,'Doctor14','Patient14','2024-02-10 15:30:00','Your surgery has been scheduled for next month. Please make necessary preparations.',14,14,14),(15,'Hospital15','Patient15','2024-03-18 09:00:00','Reminder: Your upcoming vaccination appointment is next week.',15,15,15);
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
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

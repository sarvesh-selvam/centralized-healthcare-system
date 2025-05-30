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
-- Table structure for table `disease_info`
--

DROP TABLE IF EXISTS `disease_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disease_info` (
  `DiseaseID` int NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Description` text,
  `Symptoms` text,
  PRIMARY KEY (`DiseaseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disease_info`
--

LOCK TABLES `disease_info` WRITE;
/*!40000 ALTER TABLE `disease_info` DISABLE KEYS */;
INSERT INTO `disease_info` VALUES (1,'Hypertension','High blood pressure condition','Headache, dizziness, chest pain'),(2,'Osteoarthritis','Degeneration of joint cartilage and bones','Joint pain, stiffness, swelling'),(3,'Type 2 Diabetes','Metabolic disorder affecting blood sugar levels','Increased thirst, fatigue, blurred vision'),(4,'Asthma','Chronic respiratory condition','Shortness of breath, wheezing, chest tightness'),(5,'Seasonal Allergies','Allergic reactions to seasonal pollen','Sneezing, runny nose, itchy eyes'),(6,'Sleep Apnea','Sleep disorder with interrupted breathing','Loud snoring, daytime sleepiness'),(7,'Anxiety Disorder','Chronic mental health condition','Excessive worry, restlessness, muscle tension'),(8,'Migraines','Severe headaches with neurological symptoms','Throbbing pain, nausea, sensitivity to light'),(9,'High Cholesterol','Elevated levels of cholesterol in the blood','No symptoms, but can lead to heart issues'),(10,'Back Pain','Pain in the lower or upper back','Muscle ache, shooting or stabbing pain'),(11,'Atrial Fibrillation','Irregular heart rhythm','Palpitations, fatigue, shortness of breath'),(12,'Diabetes Mellitus','Chronic condition affecting insulin production','Polyuria, polydipsia, weight loss'),(13,'Osteoporosis','Bone density loss','Fractures, height loss, stooped posture'),(14,'Atrial Flutter','Abnormal heart rhythm','Fluttering in the chest, dizziness, fatigue'),(15,'Depression','Mood disorder affecting mood and daily activities','Persistent sadness, loss of interest, fatigue');
/*!40000 ALTER TABLE `disease_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-12 11:02:26

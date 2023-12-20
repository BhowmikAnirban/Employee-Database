-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: employee_management_ab
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
-- Table structure for table `employee_work_details`
--

DROP TABLE IF EXISTS `employee_work_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_work_details` (
  `Emp_ID` int DEFAULT NULL,
  `Last_Salary_Hike` date DEFAULT NULL,
  `Reporting_Manager` varchar(40) DEFAULT NULL,
  `Senior_Manager` varchar(40) DEFAULT NULL,
  `Production_Month` varchar(30) DEFAULT NULL,
  `Production_Data` varchar(40) DEFAULT NULL,
  KEY `Emp_ID` (`Emp_ID`),
  CONSTRAINT `employee_work_details_ibfk_1` FOREIGN KEY (`Emp_ID`) REFERENCES `employee_details` (`Emp_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_work_details`
--

LOCK TABLES `employee_work_details` WRITE;
/*!40000 ALTER TABLE `employee_work_details` DISABLE KEYS */;
INSERT INTO `employee_work_details` VALUES (1,NULL,'Anirban Bhowmik','N/A','December',''),(2,NULL,'Anirban Bhowmik','Anirban Bhowmik','December',''),(3,NULL,'Anirban Bhowmik','Anirban Bhowmik','December',''),(4,NULL,'Anirban Bhowmik','Anirban Bhowmik','December',''),(5,NULL,'Anirban Bhowmik','Anirban Bhowmik','December',''),(6,NULL,'Anirban Bhowmik','Anirban Bhowmik','December','');
/*!40000 ALTER TABLE `employee_work_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-20 23:04:15

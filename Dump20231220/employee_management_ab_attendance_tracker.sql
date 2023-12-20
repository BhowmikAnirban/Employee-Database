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
-- Table structure for table `attendance_tracker`
--

DROP TABLE IF EXISTS `attendance_tracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance_tracker` (
  `Emp_ID` int DEFAULT NULL,
  `Attendance_Date` date DEFAULT NULL,
  `Login_Time` time DEFAULT NULL,
  `Logout_Time` time DEFAULT NULL,
  `Hours_worked` int DEFAULT NULL,
  KEY `Attendance_Tracker` (`Emp_ID`),
  CONSTRAINT `attendance_tracker_ibfk_1` FOREIGN KEY (`Emp_ID`) REFERENCES `employee_details` (`Emp_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance_tracker`
--

LOCK TABLES `attendance_tracker` WRITE;
/*!40000 ALTER TABLE `attendance_tracker` DISABLE KEYS */;
INSERT INTO `attendance_tracker` VALUES (1,'2023-12-20','09:00:00','06:30:00',8),(1,'2023-12-21','09:00:00','06:40:00',8),(1,'2023-12-22','09:00:00','06:15:00',8),(1,'2023-12-23','09:00:00','06:50:00',8),(1,'2023-12-24','09:00:00','05:30:00',7),(1,'2023-12-26','09:00:00','06:00:00',8),(1,'2023-12-27','09:00:00','06:10:00',8),(1,'2023-12-28','09:00:00','05:50:00',8);
/*!40000 ALTER TABLE `attendance_tracker` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-20 23:04:14

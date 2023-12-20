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

--
-- Table structure for table `department_details`
--

DROP TABLE IF EXISTS `department_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department_details` (
  `Emp_ID` int DEFAULT NULL,
  `dept_ID` int DEFAULT NULL,
  `department_name` varchar(30) DEFAULT NULL,
  KEY `Emp_ID` (`Emp_ID`),
  CONSTRAINT `department_details_ibfk_1` FOREIGN KEY (`Emp_ID`) REFERENCES `employee_details` (`Emp_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department_details`
--

LOCK TABLES `department_details` WRITE;
/*!40000 ALTER TABLE `department_details` DISABLE KEYS */;
INSERT INTO `department_details` VALUES (1,11,'VP'),(2,21,'Analyst'),(3,6,'HR'),(4,20,'Cloud Admin'),(5,30,'Financial Analyst'),(6,33,'Service Desk');
/*!40000 ALTER TABLE `department_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_details`
--

DROP TABLE IF EXISTS `employee_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_details` (
  `Emp_ID` int NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(30) DEFAULT NULL,
  `Last_Name` varchar(30) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Specialiation` varchar(30) DEFAULT NULL,
  `Phone_no` mediumtext,
  `Email_id` varchar(50) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Date_of_Join` date DEFAULT NULL,
  `Department_ID` int DEFAULT NULL,
  PRIMARY KEY (`Emp_ID`),
  UNIQUE KEY `Email_id` (`Email_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_details`
--

LOCK TABLES `employee_details` WRITE;
/*!40000 ALTER TABLE `employee_details` DISABLE KEYS */;
INSERT INTO `employee_details` VALUES (1,'Anirban','Bhowmik','2023-10-28','Admin','12345678','anirban.bhowmik11@gmail.com','India','2023-10-28',11),(2,'Aman','Singh','1887-12-01','Associate','987654321','aman_kumar_singh@gmail.com','Bangalore','2023-12-01',21),(3,'Vishal','Bhatia','1990-02-02','HR','9876543','vishak_bhatia.corporate@gmail.com','Pune','2023-11-06',6),(4,'Nitin','Banerjee','1979-01-05','Cloud','998877','banerjee.nitin@yahoo.com','Kolkata','2023-12-12',20),(5,'Ishan','Gogoi','1982-03-23','Finance','12312312','09ishan_gogoi@rediff.com','Assam','2023-12-20',30),(6,'Sandeep','Sharma','1988-08-30','General','9809809','sandeep_kumar_sharma88@yahoo.com','Gujarat','2023-12-19',33);
/*!40000 ALTER TABLE `employee_details` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `leave_data`
--

DROP TABLE IF EXISTS `leave_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leave_data` (
  `Emp_ID` int DEFAULT NULL,
  `Leave_Request_ID` int NOT NULL AUTO_INCREMENT,
  `Leave_Type` varchar(20) DEFAULT NULL,
  `Leave_Start_Date` date DEFAULT NULL,
  `Leave_End_Date` date DEFAULT NULL,
  `Number_of_days` int DEFAULT NULL,
  `Reason_for_leave` varchar(50) DEFAULT NULL,
  `Leave_Status` varchar(20) DEFAULT NULL,
  UNIQUE KEY `Leave_Request_ID` (`Leave_Request_ID`),
  KEY `Leave_Data` (`Emp_ID`),
  CONSTRAINT `leave_data_ibfk_1` FOREIGN KEY (`Emp_ID`) REFERENCES `employee_details` (`Emp_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leave_data`
--

LOCK TABLES `leave_data` WRITE;
/*!40000 ALTER TABLE `leave_data` DISABLE KEYS */;
INSERT INTO `leave_data` VALUES (1,1,'No leave','2023-12-31','2023-12-31',0,'No leave','Pending');
/*!40000 ALTER TABLE `leave_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payroll`
--

DROP TABLE IF EXISTS `payroll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payroll` (
  `Salary_ID` int NOT NULL AUTO_INCREMENT,
  `Emp_ID` int DEFAULT NULL,
  `Salary_Amount` mediumtext,
  `Salary_Start_Date` date DEFAULT NULL,
  `Salary_End_Date` date DEFAULT NULL,
  UNIQUE KEY `Salary_ID` (`Salary_ID`),
  KEY `Payroll` (`Emp_ID`),
  CONSTRAINT `payroll_ibfk_1` FOREIGN KEY (`Emp_ID`) REFERENCES `employee_details` (`Emp_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payroll`
--

LOCK TABLES `payroll` WRITE;
/*!40000 ALTER TABLE `payroll` DISABLE KEYS */;
INSERT INTO `payroll` VALUES (1,1,'10','2023-12-01','2023-12-31');
/*!40000 ALTER TABLE `payroll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `production_data`
--

DROP TABLE IF EXISTS `production_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `production_data` (
  `Number_of_projects_Assigned` int DEFAULT NULL,
  `Assigned_Date` date DEFAULT NULL,
  `Project_Status` varchar(30) DEFAULT NULL,
  `Number_of_projects_Delivered` int DEFAULT NULL,
  `Completion_Date` date DEFAULT NULL,
  `Completed_By_EmpID` int DEFAULT NULL,
  `Comments` varchar(500) DEFAULT NULL,
  KEY `Production_Data` (`Completed_By_EmpID`),
  CONSTRAINT `production_data_ibfk_1` FOREIGN KEY (`Completed_By_EmpID`) REFERENCES `employee_details` (`Emp_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `production_data`
--

LOCK TABLES `production_data` WRITE;
/*!40000 ALTER TABLE `production_data` DISABLE KEYS */;
INSERT INTO `production_data` VALUES (11,'2023-12-31','Assigned',0,NULL,1,'');
/*!40000 ALTER TABLE `production_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-20 23:04:50

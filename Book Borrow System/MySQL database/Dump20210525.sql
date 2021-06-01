CREATE DATABASE  IF NOT EXISTS `lms` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `lms`;
-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: lms
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `BookID` varchar(10) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Writer` varchar(100) DEFAULT NULL,
  `Price` varchar(10) DEFAULT NULL,
  `PublishYear` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES ('1','Rowlin','Physics Experiments','100','2022'),('1','','','',''),('1','','','',''),('1','Rowlin','Physics Experiments','100','2022'),('2','books','book','200','2014'),('2','','','',''),('2','','','',''),('1','','','','');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book1`
--

DROP TABLE IF EXISTS `book1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book1` (
  `BookID` varchar(10) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Writer` varchar(100) DEFAULT NULL,
  `Price` varchar(10) DEFAULT NULL,
  `PublishYear` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`BookID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book1`
--

LOCK TABLES `book1` WRITE;
/*!40000 ALTER TABLE `book1` DISABLE KEYS */;
INSERT INTO `book1` VALUES ('001','Mechanical Principals','Rowlin','150','2012'),('002','Electrical Engineering','Zhang','500','2019'),('003','Aerospace Engineering','Chan Lee','220','2017'),('004','Electrical Technology','Shane Clack','400','2000'),('005','Aircraft Systems','Raput Benzcavo','600','1997');
/*!40000 ALTER TABLE `book1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue`
--

DROP TABLE IF EXISTS `issue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issue` (
  `BookID` varchar(10) DEFAULT NULL,
  `StudentID` varchar(10) DEFAULT NULL,
  `DueDate` varchar(20) DEFAULT NULL,
  `ReturnBook` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue`
--

LOCK TABLES `issue` WRITE;
/*!40000 ALTER TABLE `issue` DISABLE KEYS */;
/*!40000 ALTER TABLE `issue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue1`
--

DROP TABLE IF EXISTS `issue1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issue1` (
  `BookID` varchar(10) NOT NULL,
  `StudentID` varchar(10) DEFAULT NULL,
  `IssueDate` varchar(20) DEFAULT NULL,
  `DueDate` varchar(20) DEFAULT NULL,
  `ReturnBook` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`BookID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue1`
--

LOCK TABLES `issue1` WRITE;
/*!40000 ALTER TABLE `issue1` DISABLE KEYS */;
INSERT INTO `issue1` VALUES ('001','191962113','04-05-2021','18-05-2021','YES'),('002','191962114','27-05-2021','10-06-2021','No'),('003','191961218','05-05-2021','12-05-2021','No'),('004','191966112','01-05-2021','08-05-2021','No'),('005','191961218','09-05-2021','16-05-2021','YES');
/*!40000 ALTER TABLE `issue1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `StudentID` varchar(10) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `NameOfTrustee` varchar(100) DEFAULT NULL,
  `CourseName` varchar(50) DEFAULT NULL,
  `Department` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`StudentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('191861213','abishekha','shekhe','International Business & Trade','College of Economics and Management'),('191961218','supeng','supun','Aeronautical Engineering','College of Aerospace Engineering'),('191962113','Menuka','Madhushan','Mechanical Engineering','College of Mechanical and Electrical Engineering'),('191962114','Minong','minon','Mechanical Engineering','College of Mechanical and Electrical Engineering'),('191966112','lizhong','tadashi','Aircraft Maintenance Engineering','College of Automation Engineering');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-25 23:23:49

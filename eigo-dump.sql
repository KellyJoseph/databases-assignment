-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: eigo
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alt`
--

DROP TABLE IF EXISTS `alt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `alt` (
  `empNo` int(10) NOT NULL AUTO_INCREMENT,
  `empfName` varchar(30) DEFAULT NULL,
  `emplName` varchar(30) DEFAULT NULL,
  `addressStreet` varchar(50) DEFAULT NULL,
  `addressCity` varchar(30) DEFAULT NULL,
  `addressPrefecture` varchar(15) DEFAULT NULL,
  `empEmail` varchar(30) DEFAULT NULL,
  `empPhone` varchar(20) DEFAULT NULL,
  `boeID` varchar(15) NOT NULL,
  `branchID` varchar(10) NOT NULL,
  `performance` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`empNo`),
  KEY `alt_branchID` (`branchID`),
  KEY `alt_boeID` (`boeID`),
  CONSTRAINT `alt_boeID` FOREIGN KEY (`boeID`) REFERENCES `boe` (`boeid`) ON UPDATE CASCADE,
  CONSTRAINT `alt_branchID` FOREIGN KEY (`branchID`) REFERENCES `branch` (`branchid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alt`
--

LOCK TABLES `alt` WRITE;
/*!40000 ALTER TABLE `alt` DISABLE KEYS */;
INSERT INTO `alt` VALUES (1,'Joseph','Kelly','Tanaka','Tsuchiura','Ibaraki','jkelly@eigo.co.jp','123456789','ksk01','ktk01','could do better'),(2,'Ryan','Samin','Ishimura','Tsuchiura','Ibaraki','rsamin@eigo.co.jp','234567891','ksk01','ktk01','great job'),(3,'Sonia','Funkenbsuch','Toyosu','Odaiba','Tokyo','sfunk@eigo.co.jp','345678912','tky01','ktk01','keep it up'),(4,'Keira','Kinsella','Dogenzaka','Shibuya','Tokyo','kkin@eigo.co.jp','456789123','tky01','ktk01','could do better'),(5,'Graham','Joyce','Ishigawa','Shibukawa','Gunma','grahamj@eigo.co.jp','567891234','gnm01','ktk01','could do better'),(6,'Casey','Gallagher','Hanakaze','Shibukawa','Gunma','cgal@eigo.co.jp','678912345','gnm01','ktk01','could do better');
/*!40000 ALTER TABLE `alt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boe`
--

DROP TABLE IF EXISTS `boe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `boe` (
  `boeID` varchar(15) NOT NULL,
  `boeName` varchar(30) NOT NULL,
  `prefecture` varchar(20) NOT NULL,
  `boePhone` varchar(20) DEFAULT NULL,
  `boeEmail` varchar(30) DEFAULT NULL,
  `branchID` varchar(10) NOT NULL,
  PRIMARY KEY (`boeID`),
  UNIQUE KEY `boeID` (`boeID`),
  KEY `boe_Branch` (`branchID`),
  CONSTRAINT `boe_Branch` FOREIGN KEY (`branchID`) REFERENCES `branch` (`branchid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boe`
--

LOCK TABLES `boe` WRITE;
/*!40000 ALTER TABLE `boe` DISABLE KEYS */;
INSERT INTO `boe` VALUES ('gnm01','Gunma','Gunma','23456789','gunma@nihonedu.co.jp','ktk01'),('ksk01','Kasumigaura','Kasumigaura','12345678','kasumigaura@nihonedu.co.jp','ktk01'),('tky01','Tokyo Brach 1','Tokyo','34567890','tokyobr1@nihonedu.co.jp','ktk01');
/*!40000 ALTER TABLE `boe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `branch` (
  `branchID` varchar(10) NOT NULL,
  `branchName` varchar(20) DEFAULT NULL,
  `branchEmail` varchar(30) DEFAULT NULL,
  `branchPhone` varchar(20) DEFAULT NULL,
  `branchManager` varchar(30) DEFAULT NULL,
  `addressStreet` varchar(50) DEFAULT NULL,
  `addressCity` varchar(30) DEFAULT NULL,
  `addressPrefecture` varchar(20) DEFAULT NULL,
  UNIQUE KEY `branchID` (`branchID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` VALUES ('ktk01','Kita Kanto','kitakanto@eigo.co.jp','9876543','Mr Slick','Some Street','Tokyo','Tokyo');
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `manager` (
  `empNo` int(10) NOT NULL AUTO_INCREMENT,
  `empfName` varchar(30) DEFAULT NULL,
  `emplName` varchar(30) DEFAULT NULL,
  `addressStreet` varchar(50) DEFAULT NULL,
  `addressCity` varchar(20) DEFAULT NULL,
  `addressPrefecture` varchar(20) DEFAULT NULL,
  `empEmail` varchar(25) DEFAULT NULL,
  `empPhone` varchar(20) DEFAULT NULL,
  `branchID` varchar(10) DEFAULT NULL,
  `bonus` varchar(10) DEFAULT NULL,
  UNIQUE KEY `empNo` (`empNo`),
  KEY `fk_managerBranchID` (`branchID`),
  CONSTRAINT `fk_managerBranchID` FOREIGN KEY (`branchID`) REFERENCES `branch` (`branchid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES (10,'Ryan','Slick','somestreet','somecity','Tokyo','rslick@eigo.co.jp','67891234','ktk01','housing');
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `officestaff`
--

DROP TABLE IF EXISTS `officestaff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `officestaff` (
  `empNo` int(10) NOT NULL AUTO_INCREMENT,
  `empfName` varchar(30) DEFAULT NULL,
  `emplName` varchar(30) DEFAULT NULL,
  `addressStreet` varchar(50) DEFAULT NULL,
  `addressCity` varchar(20) DEFAULT NULL,
  `addressPrefecture` varchar(20) DEFAULT NULL,
  `empEmail` varchar(30) NOT NULL,
  `empPhone` varchar(30) DEFAULT NULL,
  `branchID` varchar(10) NOT NULL,
  `officeRole` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`empNo`),
  KEY `officeStaff_BranchID` (`branchID`),
  CONSTRAINT `officeStaff_BranchID` FOREIGN KEY (`branchID`) REFERENCES `branch` (`branchid`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `officestaff`
--

LOCK TABLES `officestaff` WRITE;
/*!40000 ALTER TABLE `officestaff` DISABLE KEYS */;
INSERT INTO `officestaff` VALUES (7,'Arisa','Ando','somestreet','somecity','Tokyo','aando@eigo.co.jp','123456789','ktk01','staff manager'),(8,'Yumi','Suzuki','somestreet','somecity','Tokyo','ysuzuki@eigo.co.jp','234567891','ktk01','boe manager'),(9,'Takahiro','Kitano','somestreet','somecity','Tokyo','tkitano@eigo.co.jp','3345678912','ktk01','alt scheduler');
/*!40000 ALTER TABLE `officestaff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school`
--

DROP TABLE IF EXISTS `school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `school` (
  `schoolID` varchar(30) NOT NULL,
  `schoolName` varchar(30) NOT NULL,
  `schoolPhone` varchar(20) DEFAULT NULL,
  `schoolEmail` varchar(25) DEFAULT NULL,
  `headEngTeacher` varchar(30) DEFAULT NULL,
  `boeID` varchar(15) NOT NULL,
  PRIMARY KEY (`schoolID`),
  UNIQUE KEY `schoolID` (`schoolID`),
  KEY `fk_schoolBOE` (`boeID`),
  CONSTRAINT `fk_schoolBOE` FOREIGN KEY (`boeID`) REFERENCES `boe` (`boeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school`
--

LOCK TABLES `school` WRITE;
/*!40000 ALTER TABLE `school` DISABLE KEYS */;
INSERT INTO `school` VALUES ('gnnihari','Nihari','8765432','nihari@gunmaedu.co.jp','Ms Honda','gnm01'),('gnsakuragawa','Sakuragawa','9876543','sakuragawa@gunmaedu.co.jp','Mr Miyagi','gnm01'),('kschiyoda','Chiyoda','7654321','chiyoda@kasumigedu.co.jp','Mr Suzuki','ksk01'),('ksshimoinayoshi','Chiyoda','6543210','shimo@kasumiedu.co.jp','Mr Miyamoto','ksk01'),('tkaoyama','Aoyama','5432109','tokyobr1@eigo.co.jp','Ms Yamada','tky01'),('tktanaka','Tanaka','4321098','tokyobr1@eigo.co.jp','Ms Iwata','tky01');
/*!40000 ALTER TABLE `school` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachesat`
--

DROP TABLE IF EXISTS `teachesat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `teachesat` (
  `empNo` int(10) NOT NULL,
  `schoolID` varchar(30) NOT NULL,
  PRIMARY KEY (`empNo`,`schoolID`),
  KEY `teaches_SchoolID` (`schoolID`),
  CONSTRAINT `teaches_EmpNo` FOREIGN KEY (`empNo`) REFERENCES `alt` (`empno`),
  CONSTRAINT `teaches_SchoolID` FOREIGN KEY (`schoolID`) REFERENCES `school` (`schoolid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachesat`
--

LOCK TABLES `teachesat` WRITE;
/*!40000 ALTER TABLE `teachesat` DISABLE KEYS */;
INSERT INTO `teachesat` VALUES (6,'gnnihari'),(5,'gnsakuragawa'),(2,'kschiyoda'),(1,'ksshimoinayoshi'),(3,'tkaoyama'),(4,'tktanaka');
/*!40000 ALTER TABLE `teachesat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timetable`
--

DROP TABLE IF EXISTS `timetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `timetable` (
  `empNo` int(10) NOT NULL,
  `weekday` enum('Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday') NOT NULL,
  `timeSlot` enum('AM','PM') NOT NULL,
  `schoolID` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`empNo`,`weekday`,`timeSlot`),
  KEY `tt_schoolID` (`schoolID`),
  CONSTRAINT `tt_employeeID` FOREIGN KEY (`empNo`) REFERENCES `alt` (`empno`),
  CONSTRAINT `tt_schoolID` FOREIGN KEY (`schoolID`) REFERENCES `school` (`schoolid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timetable`
--

LOCK TABLES `timetable` WRITE;
/*!40000 ALTER TABLE `timetable` DISABLE KEYS */;
INSERT INTO `timetable` VALUES (1,'Monday','AM','ksshimoinayoshi'),(1,'Monday','PM','ksshimoinayoshi'),(1,'Tuesday','AM','ksshimoinayoshi'),(1,'Tuesday','PM','ksshimoinayoshi'),(1,'Wednesday','AM','ksshimoinayoshi'),(1,'Wednesday','PM','ksshimoinayoshi'),(1,'Thursday','AM','ksshimoinayoshi'),(1,'Thursday','PM','ksshimoinayoshi'),(1,'Friday','AM','ksshimoinayoshi'),(1,'Friday','PM','ksshimoinayoshi'),(3,'Monday','AM','tkaoyama'),(3,'Monday','PM','tkaoyama'),(3,'Tuesday','AM','tkaoyama'),(3,'Tuesday','PM','tkaoyama'),(3,'Wednesday','AM','tkaoyama'),(3,'Wednesday','PM','tkaoyama'),(3,'Thursday','AM','tkaoyama'),(3,'Thursday','PM','tkaoyama'),(3,'Friday','AM','tkaoyama'),(3,'Friday','PM','tkaoyama');
/*!40000 ALTER TABLE `timetable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'eigo'
--

--
-- Dumping routines for database 'eigo'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-28 10:28:48

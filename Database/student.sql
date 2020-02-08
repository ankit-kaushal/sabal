-- MySQL dump 10.13  Distrib 5.6.46, for Win32 (AMD64)
--
-- Host: localhost    Database: student
-- ------------------------------------------------------
-- Server version	5.6.46-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `addbook`
--

DROP TABLE IF EXISTS `addbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addbook` (
  `bookid` varchar(25) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `publisher` varchar(200) DEFAULT NULL,
  `issue` varchar(15) NOT NULL,
  UNIQUE KEY `bookid` (`bookid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addbook`
--

LOCK TABLES `addbook` WRITE;
/*!40000 ALTER TABLE `addbook` DISABLE KEYS */;
INSERT INTO `addbook` VALUES ('B001','RS AGARWAL','OSWAL','false'),('B002','XAM IDEA','VIKAS','false');
/*!40000 ALTER TABLE `addbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adminlogin`
--

DROP TABLE IF EXISTS `adminlogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adminlogin` (
  `username` varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminlogin`
--

LOCK TABLES `adminlogin` WRITE;
/*!40000 ALTER TABLE `adminlogin` DISABLE KEYS */;
INSERT INTO `adminlogin` VALUES ('admin1001','password');
/*!40000 ALTER TABLE `adminlogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assignment`
--

DROP TABLE IF EXISTS `assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assignment` (
  `date` varchar(15) DEFAULT NULL,
  `assignment` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignment`
--

LOCK TABLES `assignment` WRITE;
/*!40000 ALTER TABLE `assignment` DISABLE KEYS */;
INSERT INTO `assignment` VALUES ('11/16/19','DGHF'),('11/13/19','dvsdsbfbfdbffb vcvbffg.\nfgfgrgr'),('11/6/19','dfrutyfggfryttgrdtryt'),('11/17/19','ddcxc');
/*!40000 ALTER TABLE `assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendance` (
  `date` varchar(15) NOT NULL,
  `regno` int(11) NOT NULL,
  `semester` varchar(20) NOT NULL,
  `mark` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES ('11/17/19',1001,'3rd','Present'),('11/17/19',1002,'3rd','Absent'),('11/17/19',1001,'3rd','Present');
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fees`
--

DROP TABLE IF EXISTS `fees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fees` (
  `reg_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `month` varchar(20) NOT NULL,
  `amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fees`
--

LOCK TABLES `fees` WRITE;
/*!40000 ALTER TABLE `fees` DISABLE KEYS */;
INSERT INTO `fees` VALUES (1001,'Abhay','January',7500),(1002,'Abhishek','February',8900),(1002,'Abhishek','May',97000);
/*!40000 ALTER TABLE `fees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issuebook`
--

DROP TABLE IF EXISTS `issuebook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issuebook` (
  `regno` int(11) NOT NULL,
  `bookid` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issuebook`
--

LOCK TABLES `issuebook` WRITE;
/*!40000 ALTER TABLE `issuebook` DISABLE KEYS */;
/*!40000 ALTER TABLE `issuebook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `liblogin`
--

DROP TABLE IF EXISTS `liblogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `liblogin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `liblogin`
--

LOCK TABLES `liblogin` WRITE;
/*!40000 ALTER TABLE `liblogin` DISABLE KEYS */;
/*!40000 ALTER TABLE `liblogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `username` int(11) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1001,'password'),(1002,'password');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marks`
--

DROP TABLE IF EXISTS `marks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marks` (
  `regno` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `Semester` varchar(10) DEFAULT NULL,
  `exam` varchar(25) NOT NULL,
  `code` varchar(10) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `marks` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marks`
--

LOCK TABLES `marks` WRITE;
/*!40000 ALTER TABLE `marks` DISABLE KEYS */;
INSERT INTO `marks` VALUES (1002,'Abhishek','2nd','Mid','CS201','Data Structure and Algorithm',25),(1002,'Abhishek','1st','Mid','CS101','Programming with C',25),(1002,'Abhishek','1st','Mid','EC101','Analog Electronics',25),(1002,'Abhishek','2nd','End','CS201','Data Structure and Algorithm',30),(1001,'Abhay','1st','Mid','MA101','Mathematics - I (Linear',26),(1001,'Abhay','1st','Mid','PH101','Physics',17),(1001,'Abhay','1st','Mid','EC101','Analog Electronics',15),(1001,'Abhay','1st','Mid','CS101','Programming with C',28),(1001,'Abhay','1st','Mid','EC111','Analog Electronics',12);
/*!40000 ALTER TABLE `marks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `query`
--

DROP TABLE IF EXISTS `query`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `query` (
  `reg_no` int(11) NOT NULL,
  `queries` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `query`
--

LOCK TABLES `query` WRITE;
/*!40000 ALTER TABLE `query` DISABLE KEYS */;
INSERT INTO `query` VALUES (1001,'I want campus.'),(1001,'I want more books in Library'),(1001,'I want to conduct hackathon'),(1002,''),(1002,'Hey anyone here'),(1001,'i want help'),(1001,'I want extra class'),(1001,'gfyhkuygtdghh'),(1001,'dhyjurgfrhhy'),(1001,'gfgjhgfgfhght');
/*!40000 ALTER TABLE `query` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replyquery`
--

DROP TABLE IF EXISTS `replyquery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `replyquery` (
  `regno` int(11) NOT NULL,
  `reply` varchar(2000) DEFAULT NULL,
  `query` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replyquery`
--

LOCK TABLES `replyquery` WRITE;
/*!40000 ALTER TABLE `replyquery` DISABLE KEYS */;
INSERT INTO `replyquery` VALUES (1001,'meet me','I want to conduct hackathon'),(1002,'How may  I help yoy','Hey anyone here'),(1001,'how can i hep you','i want help'),(1001,'help you','i want help'),(1001,'help you','i want help'),(1001,'come on sunday','I want extra class'),(1001,'fuiuttrrttyytyuyttr','gfyhkuygtdghh'),(1001,'rdhyjhhgfbcvgfyht','gfgjhgfgfhght');
/*!40000 ALTER TABLE `replyquery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_details`
--

DROP TABLE IF EXISTS `student_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_details` (
  `name` varchar(80) NOT NULL,
  `reg_no` int(11) NOT NULL,
  `stream` varchar(25) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `username` int(11) NOT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `reg_no` (`reg_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_details`
--

LOCK TABLES `student_details` WRITE;
/*!40000 ALTER TABLE `student_details` DISABLE KEYS */;
INSERT INTO `student_details` VALUES ('Abhay',1001,'CSE','3RD',1001),('Abhishek',1002,'CSE','3RD',1002);
/*!40000 ALTER TABLE `student_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subjects` (
  `semester` varchar(10) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES ('1st','MA101','Mathematics - I (Linear'),('1st','PH101','Physics'),('1st','EC101','Analog Electronics'),('1st','CS101','Programming with C'),('1st','HU101','English'),('1st','CS111','Programming with C'),('1st','EC111','Analog Electronics'),('2nd','CS201','Data Structure and Algorithm');
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-08 23:34:36

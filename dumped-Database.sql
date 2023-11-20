-- MariaDB dump 10.19-11.1.2-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	11.1.2-MariaDB
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!40101 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Category`
--
DROP TABLE IF EXISTS `Category`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!40101 SET character_set_client = utf8 */;

CREATE TABLE
  `Category` (
    `CategoryID` int (11) NOT NULL AUTO_INCREMENT,
    `CategoryName` varchar(30) DEFAULT NULL,
    PRIMARY KEY (`CategoryID`)
  ) ENGINE = InnoDB AUTO_INCREMENT = 4 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Category`
--
LOCK TABLES `Category` WRITE;

/*!40000 ALTER TABLE `Category` DISABLE KEYS */;

INSERT INTO
  `Category`
VALUES
  (1, 'Project Management'),
  (2, 'Software Development'),
  (3, 'Marketing');

/*!40000 ALTER TABLE `Category` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Table structure for table `Project`
--
DROP TABLE IF EXISTS `Project`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!40101 SET character_set_client = utf8 */;

CREATE TABLE
  `Project` (
    `SquadID` int (11) DEFAULT NULL,
    `ProjectID` int (11) NOT NULL AUTO_INCREMENT,
    `ProjectName` varchar(30) DEFAULT NULL,
    `ProjectDescription` varchar(30) DEFAULT NULL,
    `DateDepart` date DEFAULT NULL,
    `DateFinal` date DEFAULT NULL,
    PRIMARY KEY (`ProjectID`),
    KEY `SquadID` (`SquadID`),
    CONSTRAINT `Project_ibfk_1` FOREIGN KEY (`SquadID`) REFERENCES `Squads` (`SquadID`)
  ) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Project`
--
LOCK TABLES `Project` WRITE;

/*!40000 ALTER TABLE `Project` DISABLE KEYS */;

INSERT INTO
  `Project`
VALUES
  (
    1,
    1,
    '1stBrief',
    'Description',
    '2023-12-10',
    '2023-12-17'
  );

/*!40000 ALTER TABLE `Project` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Table structure for table `ROLES`
--
DROP TABLE IF EXISTS `ROLES`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!40101 SET character_set_client = utf8 */;

CREATE TABLE
  `ROLES` (
    `RoleID` int (11) NOT NULL AUTO_INCREMENT,
    `RoleName` varchar(30) DEFAULT NULL,
    PRIMARY KEY (`RoleID`)
  ) ENGINE = InnoDB AUTO_INCREMENT = 4 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ROLES`
--
LOCK TABLES `ROLES` WRITE;

/*!40000 ALTER TABLE `ROLES` DISABLE KEYS */;

INSERT INTO
  `ROLES`
VALUES
  (1, 'admin'),
  (2, ' member'),
  (3, ' Leader');

/*!40000 ALTER TABLE `ROLES` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Table structure for table `Ressources`
--
DROP TABLE IF EXISTS `Ressources`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!40101 SET character_set_client = utf8 */;

CREATE TABLE
  `Ressources` (
    `ResourceID` int (11) NOT NULL AUTO_INCREMENT,
    `ResourceName` varchar(100) DEFAULT NULL,
    `SubcategoryID` int (11) DEFAULT NULL,
    `projectID` int (11) DEFAULT NULL,
    PRIMARY KEY (`ResourceID`),
    KEY `SubcategoryID` (`SubcategoryID`),
    KEY `projectID` (`projectID`),
    CONSTRAINT `Ressources_ibfk_1` FOREIGN KEY (`SubcategoryID`) REFERENCES `Subcategory` (`SubcategoryID`),
    CONSTRAINT `Ressources_ibfk_2` FOREIGN KEY (`projectID`) REFERENCES `Project` (`ProjectID`)
  ) ENGINE = InnoDB AUTO_INCREMENT = 10 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ressources`
--
LOCK TABLES `Ressources` WRITE;

/*!40000 ALTER TABLE `Ressources` DISABLE KEYS */;

INSERT INTO
  `Ressources`
VALUES
  (1, 'Agile Methodology Resource ', 1, 1),
  (2, 'Task Tracking Resource ', 2, NULL),
  (3, 'Web Development Resource ', 3, NULL),
  (4, 'Agile Methodology Resource ', 4, NULL),
  (5, 'Task Tracking Resource ', 5, NULL),
  (6, 'Web Development Resource ', 6, NULL),
  (7, 'Mobile App Development Resource ', 7, NULL),
  (8, 'Social Media Marketing Resource ', 8, NULL),
  (9, 'Content Marketing Resource ', 9, NULL);

/*!40000 ALTER TABLE `Ressources` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Table structure for table `Squads`
--
DROP TABLE IF EXISTS `Squads`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!40101 SET character_set_client = utf8 */;

CREATE TABLE
  `Squads` (
    `SquadID` int (11) NOT NULL AUTO_INCREMENT,
    `SquadName` varchar(30) DEFAULT NULL,
    PRIMARY KEY (`SquadID`)
  ) ENGINE = InnoDB AUTO_INCREMENT = 6 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Squads`
--
LOCK TABLES `Squads` WRITE;

/*!40000 ALTER TABLE `Squads` DISABLE KEYS */;

INSERT INTO
  `Squads`
VALUES
  (1, 'Brogrammers'),
  (2, 'ProDevs'),
  (3, 'CODEZILLA'),
  (4, 'cell13'),
  (5, 'Alpha');

/*!40000 ALTER TABLE `Squads` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Table structure for table `Subcategory`
--
DROP TABLE IF EXISTS `Subcategory`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!40101 SET character_set_client = utf8 */;

CREATE TABLE
  `Subcategory` (
    `SubcategoryID` int (11) NOT NULL AUTO_INCREMENT,
    `SubcategoryName` varchar(30) DEFAULT NULL,
    `CategoryID` int (11) DEFAULT NULL,
    PRIMARY KEY (`SubcategoryID`),
    KEY `CategoryID` (`CategoryID`),
    CONSTRAINT `Subcategory_ibfk_1` FOREIGN KEY (`CategoryID`) REFERENCES `Category` (`CategoryID`)
  ) ENGINE = InnoDB AUTO_INCREMENT = 10 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Subcategory`
--
LOCK TABLES `Subcategory` WRITE;

/*!40000 ALTER TABLE `Subcategory` DISABLE KEYS */;

INSERT INTO
  `Subcategory`
VALUES
  (1, 'Agile Methodology', 1),
  (2, 'Task Tracking', 1),
  (3, 'Web Development', 2),
  (4, 'Agile Methodology', 1),
  (5, 'Task Tracking', 1),
  (6, 'Web Development', 2),
  (7, 'Mobile App Development', 2),
  (8, 'Social Media Marketing', 3),
  (9, 'Content Marketing', 3);

/*!40000 ALTER TABLE `Subcategory` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Table structure for table `Users`
--
DROP TABLE IF EXISTS `Users`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!40101 SET character_set_client = utf8 */;

CREATE TABLE
  `Users` (
    `UserID` int (11) NOT NULL AUTO_INCREMENT,
    `UserName` varchar(40) DEFAULT NULL,
    `UserEmail` varchar(40) DEFAULT NULL,
    `UserRole` int (11) DEFAULT NULL,
    `SquadID` int (11) DEFAULT NULL,
    PRIMARY KEY (`UserID`),
    KEY `SquadID` (`SquadID`),
    KEY `UserRole` (`UserRole`),
    CONSTRAINT `Users_ibfk_1` FOREIGN KEY (`SquadID`) REFERENCES `Squads` (`SquadID`),
    CONSTRAINT `Users_ibfk_2` FOREIGN KEY (`UserRole`) REFERENCES `ROLES` (`RoleID`)
  ) ENGINE = InnoDB AUTO_INCREMENT = 24 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--
LOCK TABLES `Users` WRITE;

/*!40000 ALTER TABLE `Users` DISABLE KEYS */;

INSERT INTO
  `Users`
VALUES
  (
    1,
    'Abdeljabar Ait Ayoub',
    'abdeljabar.ait.ayoub@gmail.com',
    2,
    1
  ),
  (
    2,
    'Abdeljalil El Filaly',
    'abdeljalil.el.filaly@gmail.com',
    2,
    5
  ),
  (
    3,
    'Abdellah Bardich',
    'abdellah.bardich@gmail.com',
    2,
    4
  ),
  (
    4,
    'Aicha Ettabet',
    'aicha.ettabet@gmail.com',
    2,
    4
  ),
  (
    5,
    'Anass Ait Ouaguerd',
    'anass.ait.ouaguerd@gmail.com',
    2,
    3
  ),
  (6, 'Anass Drissi', 'anass.drissi@gmail.com', 3, 3),
  (
    7,
    'Hamza Ezzhar El Idrissi',
    'hamza.ezzhar.el.idrissi@gmail.com',
    3,
    4
  ),
  (
    8,
    'Khalid Zennouhi',
    'khalid.zennouhi@gmail.com',
    2,
    2
  ),
  (
    9,
    'Khalid Haiddou',
    'khalid.haiddou@gmail.com',
    2,
    5
  ),
  (
    10,
    'Khalid El Mati',
    'khalid.el.mati@gmail.com',
    3,
    1
  ),
  (
    11,
    'Latifa Chakir',
    'latifa.chakir@gmail.com',
    2,
    3
  ),
  (
    12,
    'Mbarek El Aadraoui',
    'mbarek.el.aadraoui@gmail.com',
    2,
    1
  ),
  (
    13,
    'Mohamed Amine Baih',
    'mohamed.amine.baih@gmail.com',
    2,
    3
  ),
  (
    14,
    'Mohammed-amine Benmade',
    'mohammed.amine.benmade@gmail.com',
    2,
    3
  ),
  (
    15,
    'Nabil El Hakimi',
    'nabil.el.hakimi@gmail.com',
    3,
    2
  ),
  (
    16,
    'Niama El Hrychy',
    'niama.el.hrychy@gmail.com',
    2,
    2
  ),
  (
    17,
    'Otman Kharbouch',
    'otman.kharbouch@gmail.com',
    2,
    2
  ),
  (
    18,
    'Oumaima El Baz',
    'oumaima.el.baz@gmail.com',
    2,
    5
  ),
  (
    19,
    'Rabia Ait Imghi',
    'rabia.ait.imghi@gmail.com',
    3,
    5
  ),
  (
    20,
    'Soumaya Ait Lmqaddam',
    'soumaya.ait.lmqaddam@gmail.com',
    2,
    1
  ),
  (
    21,
    'Youness Erbai',
    'youness.erbai@gmail.com',
    2,
    4
  ),
  (
    22,
    'Zouhair Zerzkhane',
    'zouhair.zerzkhane@gmail.com',
    2,
    2
  ),
  (23, 'aziz', 'aziz@gmail.com', 1, NULL);

/*!40000 ALTER TABLE `Users` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Dumping routines for database 'test'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-20 13:46:15
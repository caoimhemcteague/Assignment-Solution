CREATE DATABASE  IF NOT EXISTS `cinema` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `cinema`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: cinema
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking` (
  `Booking_Number` int(11) NOT NULL,
  `Number_of_Tickets` int(11) NOT NULL,
  `Screening_Number` int(11) NOT NULL,
  `Cost` double NOT NULL,
  PRIMARY KEY (`Booking_Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (358,6,103,42.5),(359,10,103,63);
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film`
--

DROP TABLE IF EXISTS `film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `film` (
  `Name` varchar(50) NOT NULL,
  `PG_Rating` varchar(10) NOT NULL,
  `Genre` varchar(45) NOT NULL,
  `Duration` int(11) NOT NULL,
  `Actor(s)` varchar(45) DEFAULT NULL,
  `Director` varchar(45) DEFAULT NULL,
  `trailer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film`
--

LOCK TABLES `film` WRITE;
/*!40000 ALTER TABLE `film` DISABLE KEYS */;
INSERT INTO `film` VALUES ('Black Panther','12A','Action, Drama, Sci-Fi',134,NULL,NULL,'https://www.youtube.com/watch_popup?v=dxWvtMOGAhw'),('Coco','PG','Animation, Adventure',105,NULL,NULL,'https://www.youtube.com/watch_popup?v=Rvr68u6k5sI'),('Father Figures','15','Comdy',113,NULL,NULL,'https://www.youtube.com/watch_popup?v=59uWyPklsy0'),('Game Night','15','Action, Comdy, Crime',100,NULL,NULL,'https://www.youtube.com/watch_popup?v=qmxMAdV6s4U'),('Lady Bird','15A','Comedy, Drama',94,NULL,NULL,'https://www.youtube.com/watch_popup?v=cNi_HC839Wo'),('Red Sparrow','15','Thriller',140,NULL,NULL,'https://www.youtube.com/watch_popup?v=PmUL6wMpMWw'),('Tomb Raider','12A','Action, Adventure',117,NULL,NULL,'https://www.youtube.com/watch_popup?v=3KkhD0MnaJU');
/*!40000 ALTER TABLE `film` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `screening`
--

DROP TABLE IF EXISTS `screening`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `screening` (
  `Screening_Num` int(11) NOT NULL,
  `TheatreNum` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Time` double NOT NULL,
  `FilmName` varchar(50) NOT NULL,
  PRIMARY KEY (`Screening_Num`),
  KEY `TheatreFK_idx` (`TheatreNum`),
  KEY `FilmFK_idx` (`FilmName`),
  CONSTRAINT `FilmFK` FOREIGN KEY (`FilmName`) REFERENCES `film` (`Name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `TheatreFK` FOREIGN KEY (`TheatreNum`) REFERENCES `theatre` (`Theatre_Num`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `screening`
--

LOCK TABLES `screening` WRITE;
/*!40000 ALTER TABLE `screening` DISABLE KEYS */;
INSERT INTO `screening` VALUES (101,1,'2018-03-13',13.15,'Black Panther'),(102,1,'2018-03-13',16.3,'Black Panther'),(103,1,'2018-03-13',20.45,'Black Panther'),(111,1,'2018-03-14',13.15,'Black Panther'),(112,1,'2018-03-14',16.3,'Black Panther'),(113,1,'2018-03-14',20.45,'Black Panther'),(121,1,'2018-03-15',13.15,'Black Panther'),(122,1,'2018-03-15',16.3,'Black Panther'),(123,1,'2018-03-15',20.45,'Black Panther'),(131,1,'2018-03-16',13.15,'Black Panther'),(132,1,'2018-03-16',16.3,'Black Panther'),(133,1,'2018-03-16',20.45,'Black Panther'),(141,1,'2018-03-17',13.15,'Black Panther'),(142,1,'2018-03-17',16.3,'Black Panther'),(143,1,'2018-03-17',20.45,'Black Panther'),(151,1,'2018-03-18',13.15,'Black Panther'),(152,1,'2018-03-18',16.3,'Black Panther'),(153,1,'2018-03-18',20.45,'Black Panther'),(161,1,'2018-03-19',13.15,'Black Panther'),(162,1,'2018-03-19',16.3,'Black Panther'),(163,1,'2018-03-19',20.45,'Black Panther'),(171,1,'2018-03-20',13.15,'Black Panther'),(172,1,'2018-03-20',16.3,'Black Panther'),(173,1,'2018-03-20',20.45,'Black Panther'),(181,1,'2018-03-21',13.15,'Black Panther'),(182,1,'2018-03-21',16.3,'Black Panther'),(183,1,'2018-03-21',20.45,'Black Panther'),(191,1,'2018-03-22',13.15,'Black Panther'),(192,1,'2018-03-22',16.3,'Black Panther'),(193,1,'2018-03-22',20.45,'Black Panther'),(201,2,'2018-03-13',14.1,'Lady Bird'),(202,2,'2018-03-13',16.3,'Lady Bird'),(203,2,'2018-03-13',20.3,'Lady Bird'),(211,2,'2018-03-14',14.1,'Lady Bird'),(212,2,'2018-03-14',16.3,'Lady Bird'),(213,2,'2018-03-14',20.3,'Lady Bird'),(221,2,'2018-03-15',14.1,'Lady Bird'),(222,2,'2018-03-15',16.3,'Lady Bird'),(223,2,'2018-03-15',20.3,'Lady Bird'),(231,2,'2018-03-16',14.1,'Lady Bird'),(232,2,'2018-03-16',16.3,'Lady Bird'),(233,2,'2018-03-16',20.3,'Lady Bird'),(241,2,'2018-03-17',14.1,'Lady Bird'),(242,2,'2018-03-17',16.3,'Lady Bird'),(243,2,'2018-03-17',20.3,'Lady Bird'),(251,2,'2018-03-18',14.1,'Lady Bird'),(252,2,'2018-03-18',16.3,'Lady Bird'),(253,2,'2018-03-18',20.3,'Lady Bird'),(261,2,'2018-03-19',14.1,'Lady Bird'),(262,2,'2018-03-19',16.3,'Lady Bird'),(263,2,'2018-03-19',20.3,'Lady Bird'),(271,2,'2018-03-20',14.1,'Lady Bird'),(272,2,'2018-03-20',16.3,'Lady Bird'),(273,2,'2018-03-20',20.3,'Lady Bird'),(281,2,'2018-03-21',14.1,'Lady Bird'),(282,2,'2018-03-21',16.3,'Lady Bird'),(283,2,'2018-03-21',20.3,'Lady Bird'),(291,2,'2018-03-22',14.1,'Lady Bird'),(292,2,'2018-03-22',16.3,'Lady Bird'),(293,2,'2018-03-22',20.3,'Lady Bird'),(301,3,'2018-03-13',15.45,'Coco'),(302,3,'2018-03-13',18.1,'Coco'),(311,3,'2018-03-14',15.45,'Coco'),(312,3,'2018-03-14',18.1,'Coco'),(321,3,'2018-03-15',15.45,'Coco'),(322,3,'2018-03-15',18.1,'Coco'),(331,3,'2018-03-16',15.45,'Coco'),(332,3,'2018-03-16',18.1,'Coco'),(341,3,'2018-03-17',15.45,'Coco'),(342,3,'2018-03-17',18.1,'Coco'),(351,3,'2018-03-18',15.45,'Coco'),(352,3,'2018-03-18',18.1,'Coco'),(361,3,'2018-03-19',15.45,'Coco'),(362,3,'2018-03-19',18.1,'Coco'),(371,3,'2018-03-20',15.45,'Coco'),(372,3,'2018-03-20',18.1,'Coco'),(381,3,'2018-03-21',15.45,'Coco'),(382,3,'2018-03-21',18.1,'Coco'),(391,3,'2018-03-22',15.45,'Coco'),(392,3,'2018-03-22',18.1,'Coco'),(401,4,'2018-03-13',18.1,'Father Figures'),(402,4,'2018-03-13',20.2,'Father Figures'),(411,4,'2018-03-14',18.1,'Father Figures'),(412,4,'2018-03-14',20.2,'Father Figures'),(421,4,'2018-03-15',18.1,'Father Figures'),(422,4,'2018-03-15',20.2,'Father Figures'),(431,4,'2018-03-16',18.1,'Father Figures'),(432,4,'2018-03-16',20.2,'Father Figures'),(441,4,'2018-03-17',18.1,'Father Figures'),(442,4,'2018-03-17',20.2,'Father Figures'),(451,4,'2018-03-18',18.1,'Father Figures'),(452,4,'2018-03-18',20.2,'Father Figures'),(461,4,'2018-03-19',18.1,'Father Figures'),(462,4,'2018-03-19',20.2,'Father Figures'),(471,4,'2018-03-20',18.1,'Father Figures'),(472,4,'2018-03-20',20.2,'Father Figures'),(481,4,'2018-03-21',18.1,'Father Figures'),(482,4,'2018-03-21',20.2,'Father Figures'),(491,4,'2018-03-22',18.1,'Father Figures'),(492,4,'2018-03-22',20.2,'Father Figures'),(501,5,'2018-03-13',15.45,'Game Night'),(502,5,'2018-03-13',18.05,'Game Night'),(503,5,'2018-03-13',20.3,'Game Night'),(511,5,'2018-03-14',15.45,'Game Night'),(512,5,'2018-03-14',18.05,'Game Night'),(513,5,'2018-03-14',20.3,'Game Night'),(521,5,'2018-03-15',15.45,'Game Night'),(522,5,'2018-03-15',18.05,'Game Night'),(523,5,'2018-03-15',20.3,'Game Night'),(531,5,'2018-03-16',15.45,'Game Night'),(532,5,'2018-03-16',18.05,'Game Night'),(533,5,'2018-03-16',20.3,'Game Night'),(541,5,'2018-03-17',15.45,'Game Night'),(542,5,'2018-03-17',18.05,'Game Night'),(543,5,'2018-03-17',20.3,'Game Night'),(551,5,'2018-03-18',15.45,'Game Night'),(552,5,'2018-03-18',18.05,'Game Night'),(553,5,'2018-03-18',20.3,'Game Night'),(561,5,'2018-03-19',15.45,'Game Night'),(562,5,'2018-03-19',18.05,'Game Night'),(563,5,'2018-03-19',20.3,'Game Night'),(571,5,'2018-03-20',15.45,'Game Night'),(572,5,'2018-03-20',18.05,'Game Night'),(573,5,'2018-03-20',20.3,'Game Night'),(581,5,'2018-03-21',15.45,'Game Night'),(582,5,'2018-03-21',18.05,'Game Night'),(583,5,'2018-03-21',20.3,'Game Night'),(591,5,'2018-03-22',15.45,'Game Night'),(592,5,'2018-03-22',18.05,'Game Night'),(593,5,'2018-03-22',20.3,'Game Night'),(601,6,'2018-03-13',15.2,'Red Sparrow'),(602,6,'2018-03-13',18,'Red Sparrow'),(603,6,'2018-03-13',20.35,'Red Sparrow'),(604,6,'2018-03-13',23.1,'Red Sparrow'),(611,6,'2018-03-14',15.2,'Red Sparrow'),(612,6,'2018-03-14',18,'Red Sparrow'),(613,6,'2018-03-14',20.35,'Red Sparrow'),(614,6,'2018-03-14',23.1,'Red Sparrow'),(621,6,'2018-03-15',15.2,'Red Sparrow'),(622,6,'2018-03-15',18,'Red Sparrow'),(623,6,'2018-03-15',20.35,'Red Sparrow'),(624,6,'2018-03-15',23.1,'Red Sparrow'),(631,6,'2018-03-16',15.2,'Red Sparrow'),(632,6,'2018-03-16',18,'Red Sparrow'),(633,6,'2018-03-16',20.35,'Red Sparrow'),(634,6,'2018-03-16',23.1,'Red Sparrow'),(641,6,'2018-03-17',15.2,'Red Sparrow'),(642,6,'2018-03-17',18,'Red Sparrow'),(643,6,'2018-03-17',20.35,'Red Sparrow'),(644,6,'2018-03-17',23.1,'Red Sparrow'),(651,6,'2018-03-18',15.2,'Red Sparrow'),(652,6,'2018-03-18',18,'Red Sparrow'),(653,6,'2018-03-18',20.35,'Red Sparrow'),(654,6,'2018-03-18',23.1,'Red Sparrow'),(661,6,'2018-03-19',15.2,'Red Sparrow'),(662,6,'2018-03-19',18,'Red Sparrow'),(663,6,'2018-03-19',20.35,'Red Sparrow'),(664,6,'2018-03-19',23.1,'Red Sparrow'),(671,6,'2018-03-20',15.2,'Red Sparrow'),(672,6,'2018-03-20',18,'Red Sparrow'),(673,6,'2018-03-20',20.35,'Red Sparrow'),(674,6,'2018-03-20',23.1,'Red Sparrow'),(681,6,'2018-03-21',15.2,'Red Sparrow'),(682,6,'2018-03-21',18,'Red Sparrow'),(683,6,'2018-03-21',20.35,'Red Sparrow'),(684,6,'2018-03-21',23.1,'Red Sparrow'),(691,6,'2018-03-22',15.2,'Red Sparrow'),(692,6,'2018-03-22',18,'Red Sparrow'),(693,6,'2018-03-22',20.35,'Red Sparrow'),(694,6,'2018-03-22',23.1,'Red Sparrow'),(701,7,'2018-03-13',20.4,'Tomb Raider'),(702,7,'2018-03-13',23,'Tomb Raider'),(711,7,'2018-03-14',20.4,'Tomb Raider'),(712,7,'2018-03-14',23,'Tomb Raider'),(721,7,'2018-03-15',20.4,'Tomb Raider'),(722,7,'2018-03-15',23,'Tomb Raider'),(731,7,'2018-03-16',20.4,'Tomb Raider'),(732,7,'2018-03-16',23,'Tomb Raider'),(741,7,'2018-03-17',20.4,'Tomb Raider'),(742,7,'2018-03-17',23,'Tomb Raider'),(751,7,'2018-03-18',20.4,'Tomb Raider'),(752,7,'2018-03-18',23,'Tomb Raider'),(761,7,'2018-03-19',20.4,'Tomb Raider'),(762,7,'2018-03-19',23,'Tomb Raider'),(771,7,'2018-03-20',20.4,'Tomb Raider'),(772,7,'2018-03-20',23,'Tomb Raider'),(781,7,'2018-03-21',20.4,'Tomb Raider'),(782,7,'2018-03-21',23,'Tomb Raider'),(791,7,'2018-03-22',20.4,'Tomb Raider'),(792,7,'2018-03-22',23,'Tomb Raider');
/*!40000 ALTER TABLE `screening` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theatre`
--

DROP TABLE IF EXISTS `theatre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `theatre` (
  `Theatre_Num` int(11) NOT NULL,
  `Capacity` int(11) NOT NULL,
  PRIMARY KEY (`Theatre_Num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theatre`
--

LOCK TABLES `theatre` WRITE;
/*!40000 ALTER TABLE `theatre` DISABLE KEYS */;
INSERT INTO `theatre` VALUES (1,400),(2,250),(3,250),(4,200),(5,200),(6,200),(7,200);
/*!40000 ALTER TABLE `theatre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket` (
  `Type_Name` varchar(20) NOT NULL,
  `booking_Booking_Number` int(11) NOT NULL,
  `screening_Screening_Num` int(11) NOT NULL,
  KEY `fk_Ticket_Type1_idx` (`Type_Name`),
  KEY `fk_Ticket_booking1_idx` (`booking_Booking_Number`),
  KEY `fk_Ticket_screening1_idx` (`screening_Screening_Num`),
  CONSTRAINT `fk_Ticket_Type1` FOREIGN KEY (`Type_Name`) REFERENCES `type` (`Name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Ticket_booking1` FOREIGN KEY (`booking_Booking_Number`) REFERENCES `booking` (`Booking_Number`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Ticket_screening1` FOREIGN KEY (`screening_Screening_Num`) REFERENCES `screening` (`Screening_Num`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES ('Adult',359,103),('Adult',359,103),('Child',359,103),('Child',359,103),('Child',359,103),('Child',359,103),('Child',359,103),('Student/OAP',359,103),('Student/OAP',359,103),('Student/OAP',359,103);
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type` (
  `Name` varchar(20) CHARACTER SET utf8 NOT NULL,
  `Cost` double NOT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES ('Adult',8.5),('Child',5),('Student/OAP',7);
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-26 20:36:13

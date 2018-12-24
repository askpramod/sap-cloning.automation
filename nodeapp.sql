-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: nodeapp
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.16.04.1

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
-- Table structure for table `E070L`
--

DROP TABLE IF EXISTS `E070L`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `E070L` (
  `TRKORR` varchar(20) NOT NULL,
  `LASTNUM` varchar(10) NOT NULL,
  UNIQUE KEY `LASTNUM` (`LASTNUM`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `E070L`
--

LOCK TABLES `E070L` WRITE;
/*!40000 ALTER TABLE `E070L` DISABLE KEYS */;
/*!40000 ALTER TABLE `E070L` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GitEvents`
--

DROP TABLE IF EXISTS `GitEvents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GitEvents` (
  `Id` int(7) NOT NULL AUTO_INCREMENT,
  `RepositoryName` varchar(100) NOT NULL,
  `BranchName` varchar(50) NOT NULL,
  `GitTag` varchar(15) NOT NULL,
  `Event` varchar(30) NOT NULL,
  `Status` varchar(30) NOT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GitEvents`
--

LOCK TABLES `GitEvents` WRITE;
/*!40000 ALTER TABLE `GitEvents` DISABLE KEYS */;
/*!40000 ALTER TABLE `GitEvents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TransportRequestEvents`
--

DROP TABLE IF EXISTS `TransportRequestEvents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TransportRequestEvents` (
  `Id` int(7) NOT NULL AUTO_INCREMENT,
  `TRNumber` varchar(15) NOT NULL,
  `PRNumber` varchar(15) NOT NULL,
  `SenderIP` varchar(15) NOT NULL,
  `Event` varchar(30) NOT NULL,
  `Status` varchar(15) NOT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TransportRequestEvents`
--

LOCK TABLES `TransportRequestEvents` WRITE;
/*!40000 ALTER TABLE `TransportRequestEvents` DISABLE KEYS */;
/*!40000 ALTER TABLE `TransportRequestEvents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TransportRequestLastNum`
--

DROP TABLE IF EXISTS `TransportRequestLastNum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TransportRequestLastNum` (
  `TRKORR` varchar(20) NOT NULL,
  `LASTNUM` varchar(10) NOT NULL,
  UNIQUE KEY `LASTNUM` (`LASTNUM`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TransportRequestLastNum`
--

LOCK TABLES `TransportRequestLastNum` WRITE;
/*!40000 ALTER TABLE `TransportRequestLastNum` DISABLE KEYS */;
/*!40000 ALTER TABLE `TransportRequestLastNum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TransportRequests`
--

DROP TABLE IF EXISTS `TransportRequests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TransportRequests` (
  `Id` int(7) NOT NULL AUTO_INCREMENT,
  `TransportRequestNo` varchar(30) NOT NULL,
  `Status` varchar(30) NOT NULL,
  `ServerName` varchar(20) NOT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TransportRequests`
--

LOCK TABLES `TransportRequests` WRITE;
/*!40000 ALTER TABLE `TransportRequests` DISABLE KEYS */;
/*!40000 ALTER TABLE `TransportRequests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VMCloningEvents`
--

DROP TABLE IF EXISTS `VMCloningEvents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VMCloningEvents` (
  `Id` int(7) NOT NULL AUTO_INCREMENT,
  `SenderIP` varchar(15) NOT NULL,
  `Event` varchar(30) NOT NULL,
  `Status` varchar(15) NOT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VMCloningEvents`
--

LOCK TABLES `VMCloningEvents` WRITE;
/*!40000 ALTER TABLE `VMCloningEvents` DISABLE KEYS */;
/*!40000 ALTER TABLE `VMCloningEvents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VMStatusEvents`
--

DROP TABLE IF EXISTS `VMStatusEvents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VMStatusEvents` (
  `Id` int(7) NOT NULL AUTO_INCREMENT,
  `ServerName` varchar(50) NOT NULL,
  `ServerIP` varchar(15) NOT NULL,
  `Event` varchar(30) NOT NULL,
  `Status` varchar(15) NOT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VMStatusEvents`
--

LOCK TABLES `VMStatusEvents` WRITE;
/*!40000 ALTER TABLE `VMStatusEvents` DISABLE KEYS */;
/*!40000 ALTER TABLE `VMStatusEvents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'nodeapp'
--
/*!50003 DROP PROCEDURE IF EXISTS `usp_InsertTransportRequestE070L` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_InsertTransportRequestE070L`(IN pTRKORR VARCHAR(20), IN pLASTNUM VARCHAR(10))
BEGIN
     START TRANSACTION;
        IF EXISTS(SELECT 1 FROM E070L WHERE LASTNUM = pLASTNUM)
        THEN
            UPDATE E070L SET TRKORR = pTRKORR WHERE LASTNUM = pLASTNUM; 
        ELSE
            INSERT INTO E070L (TRKORR, LASTNUM) VALUES (pTRKORR, pLASTNUM);
        END IF;
     COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_InsertTransportRequestLastNum` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_InsertTransportRequestLastNum`(IN pTRKORR VARCHAR(20), IN pLASTNUM VARCHAR(10))
BEGIN
     START TRANSACTION;
        IF EXISTS(SELECT 1 FROM TransportRequestLastNum WHERE LASTNUM = pLASTNUM)
        THEN
            UPDATE TransportRequestLastNum SET TRKORR = pTRKORR WHERE LASTNUM = pLASTNUM; 
        ELSE
            INSERT INTO TransportRequestLastNum (TRKORR, LASTNUM) VALUES (pTRKORR, pLASTNUM);
        END IF;
     COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-23 23:57:13

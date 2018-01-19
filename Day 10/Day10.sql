-- MySQL dump 10.16  Distrib 10.1.29-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: madt_database
-- ------------------------------------------------------
-- Server version	10.1.29-MariaDB

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
-- Table structure for table `ac_mast`
--

DROP TABLE IF EXISTS `ac_mast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ac_mast` (
  `ac_type` varchar(3) NOT NULL,
  `ac_no` int(4) NOT NULL,
  `cust_no` int(5) DEFAULT NULL,
  `bal` double(10,2) DEFAULT NULL,
  `od_limit` double(10,2) DEFAULT NULL,
  PRIMARY KEY (`ac_type`,`ac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ac_mast`
--

LOCK TABLES `ac_mast` WRITE;
/*!40000 ALTER TABLE `ac_mast` DISABLE KEYS */;
INSERT INTO `ac_mast` VALUES ('cur',4567,11111,1000.50,10000.50),('Mut',1112,22222,2000.50,20000.50),('NRI',3333,44444,4000.50,40000.50),('Sav',1234,72694,99999999.99,99999999.99),('Sav',2222,33333,3000.50,30000.50);
/*!40000 ALTER TABLE `ac_mast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cust_mast`
--

DROP TABLE IF EXISTS `cust_mast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cust_mast` (
  `cust_no` int(5) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `addr1` varchar(50) DEFAULT NULL,
  `addr2` varchar(50) DEFAULT NULL,
  `addr3` varchar(50) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cust_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cust_mast`
--

LOCK TABLES `cust_mast` WRITE;
/*!40000 ALTER TABLE `cust_mast` DISABLE KEYS */;
INSERT INTO `cust_mast` VALUES (10,'Sreejith','36 cedar drive','sacrborough','markam','toronto','ontario'),(20,'Anoop','36 cedar drive','sacrborough','markam','toronto','ontario'),(30,'Rohan','42 eglinton dr','eglinton','Lawrence','toronto','ontario'),(40,'Johnh','kennedy street','downtown','NYC','Manhattan','New York'),(50,'Smith','Sam cottege','Baker Street','South zone','Chicago','illionis');
/*!40000 ALTER TABLE `cust_mast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `cust_id` int(2) NOT NULL,
  `cust_name` varchar(20) NOT NULL,
  `cust_age` int(2) NOT NULL,
  PRIMARY KEY (`cust_id`,`cust_age`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dept`
--

DROP TABLE IF EXISTS `dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dept` (
  `dno` int(3) NOT NULL,
  `name` varchar(15) DEFAULT NULL,
  `loc` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`dno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dept`
--

LOCK TABLES `dept` WRITE;
/*!40000 ALTER TABLE `dept` DISABLE KEYS */;
INSERT INTO `dept` VALUES (1,'Sreejith','Toronto'),(2,'John','New York'),(3,'Smith','Chicago');
/*!40000 ALTER TABLE `dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp`
--

DROP TABLE IF EXISTS `emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp` (
  `empno` int(5) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `jdate` date DEFAULT NULL,
  `dept` int(3) DEFAULT NULL,
  `desig` varchar(20) DEFAULT NULL,
  `basic` double(10,2) DEFAULT NULL,
  `da` double(10,2) DEFAULT NULL,
  `hra` double(10,2) DEFAULT NULL,
  `pf` double(10,2) DEFAULT NULL,
  `it` double(10,2) DEFAULT NULL,
  PRIMARY KEY (`empno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp`
--

LOCK TABLES `emp` WRITE;
/*!40000 ALTER TABLE `emp` DISABLE KEYS */;
INSERT INTO `emp` VALUES (123,'Harry','2014-10-24',5,'Finance Secretary',2000.00,2100.80,1370.50,200.40,100.89),(133,'James','2016-11-24',5,'HR',5000.00,2400.80,1300.50,200.40,100.89),(5555,'Ron','2014-10-14',141,'Executive',3000.00,2000.00,1900.78,100.40,70.89),(11111,'Sreejith','2014-07-14',111,'Sales Executive',600.40,100.80,270.50,1000.40,700.89),(22222,'Smith','2014-06-24',222,'Finance Executive',6000.00,13000.00,4000.00,200.00,300.00),(33333,'John','2015-05-16',333,'HR Executive',6000.00,3000.00,4000.00,200.00,300.00),(44444,'Raymond','2010-08-10',444,'Architect',900.40,400.80,570.50,4000.40,10000.89);
/*!40000 ALTER TABLE `emp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manu`
--

DROP TABLE IF EXISTS `manu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manu` (
  `Code` int(3) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manu`
--

LOCK TABLES `manu` WRITE;
/*!40000 ALTER TABLE `manu` DISABLE KEYS */;
INSERT INTO `manu` VALUES (1,'Sony'),(2,'Creative Labs'),(3,'Hewlett-Packard'),(4,'Iomega'),(5,'Fujitsu'),(6,'Winchester'),(7,'moxDroid Labs Inc'),(8,'Dell'),(9,'Bell Labs');
/*!40000 ALTER TABLE `manu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `product_view`
--

DROP TABLE IF EXISTS `product_view`;
/*!50001 DROP VIEW IF EXISTS `product_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `product_view` (
  `Code` tinyint NOT NULL,
  `Name` tinyint NOT NULL,
  `Price` tinyint NOT NULL,
  `Manufacturer` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `Code` int(3) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Price` decimal(10,0) NOT NULL,
  `Manufacturer` int(3) DEFAULT NULL,
  PRIMARY KEY (`Code`),
  KEY `FK_PRODUCTS` (`Manufacturer`),
  CONSTRAINT `FK_PRODUCTS` FOREIGN KEY (`Manufacturer`) REFERENCES `manu` (`Code`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Hard drive',240,5),(2,'Memory',120,6),(3,'ZIP drive',150,4),(4,'Floppy disk',5,6),(5,'Monitor',240,1),(6,'DVD drive',180,2),(7,'CD drive',90,2),(8,'Printer',270,3),(9,'Toner cartridge',66,3),(10,'DVD burner',180,2),(11,'Printer',40,7),(12,'Toner cartridge',54,7),(13,'DVD burner',78,7),(14,'Floppy Drive',555,2);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans`
--

DROP TABLE IF EXISTS `trans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans` (
  `ac_type` varchar(3) NOT NULL,
  `ac_no` int(4) NOT NULL,
  `tdate` date NOT NULL,
  `counter` int(2) DEFAULT NULL,
  `amount` double(10,2) DEFAULT NULL,
  `descr` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ac_type`,`ac_no`,`tdate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans`
--

LOCK TABLES `trans` WRITE;
/*!40000 ALTER TABLE `trans` DISABLE KEYS */;
INSERT INTO `trans` VALUES ('Cur',1234,'2017-02-04',4,2000.50,'Salary for Feb'),('NRI',1234,'2015-11-24',20,4000.50,'Salary for Nov'),('Sav',1234,'2010-11-11',22,4000.50,'Credit'),('Sav',1234,'2018-01-14',2,1000.50,'Salary for January');
/*!40000 ALTER TABLE `trans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_rep`
--

DROP TABLE IF EXISTS `trans_rep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_rep` (
  `ac_type` varchar(3) NOT NULL,
  `ac_no` int(4) NOT NULL,
  `tdate` date NOT NULL,
  `counter` int(2) DEFAULT NULL,
  `amount` double(10,2) DEFAULT NULL,
  `descr` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_rep`
--

LOCK TABLES `trans_rep` WRITE;
/*!40000 ALTER TABLE `trans_rep` DISABLE KEYS */;
INSERT INTO `trans_rep` VALUES ('Sav',1234,'2010-11-11',22,4000.50,'Credit'),('Sav',1234,'2018-01-14',2,1000.50,'Salary for January');
/*!40000 ALTER TABLE `trans_rep` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_rep_2`
--

DROP TABLE IF EXISTS `trans_rep_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_rep_2` (
  `ac_type` varchar(3) NOT NULL,
  `ac_no` int(4) NOT NULL,
  `tdate` date NOT NULL,
  `counter` int(2) DEFAULT NULL,
  `amount` double(10,2) DEFAULT NULL,
  `descr` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ac_type`,`ac_no`,`tdate`),
  UNIQUE KEY `ac_no` (`ac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_rep_2`
--

LOCK TABLES `trans_rep_2` WRITE;
/*!40000 ALTER TABLE `trans_rep_2` DISABLE KEYS */;
INSERT INTO `trans_rep_2` VALUES ('NRI',3333,'0000-00-00',2,5000.00,'Debit');
/*!40000 ALTER TABLE `trans_rep_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `product_view`
--

/*!50001 DROP TABLE IF EXISTS `product_view`*/;
/*!50001 DROP VIEW IF EXISTS `product_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `product_view` AS select `products`.`Code` AS `Code`,`products`.`Name` AS `Name`,`products`.`Price` AS `Price`,`products`.`Manufacturer` AS `Manufacturer` from `products` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-19 11:38:47

-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: zerli
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `branchmanager`
--

DROP TABLE IF EXISTS `branchmanager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branchmanager` (
  `branchmanagerID` varchar(256) NOT NULL,
  `firstName` varchar(256) DEFAULT NULL,
  `lastName` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `phoneNumber` varchar(256) DEFAULT NULL,
  `accountStatus` enum('CONFIRMED','PENDING_APPROVAL','FROZEN') DEFAULT NULL,
  `isLoggedIn` tinyint DEFAULT NULL,
  `branchID` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`branchmanagerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branchmanager`
--

LOCK TABLES `branchmanager` WRITE;
/*!40000 ALTER TABLE `branchmanager` DISABLE KEYS */;
INSERT INTO `branchmanager` VALUES ('11','Joey','Shalev','joey@gmaill.com','0524567890','CONFIRMED',0,'2525'),('16','Aviel','Malayev','aviel@gmaill.com','0546789012','CONFIRMED',0,'5555'),('2','Almog','Madar','madar.almog@gmail.com','0521234567','CONFIRMED',0,'1010');
/*!40000 ALTER TABLE `branchmanager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branchs`
--

DROP TABLE IF EXISTS `branchs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branchs` (
  `branchID` varchar(256) NOT NULL,
  `branchManagerID` varchar(256) NOT NULL,
  `branchName` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`branchID`,`branchManagerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branchs`
--

LOCK TABLES `branchs` WRITE;
/*!40000 ALTER TABLE `branchs` DISABLE KEYS */;
INSERT INTO `branchs` VALUES ('1010','2','Karmiel'),('2525','2','Haifa'),('5555','5','Tel_Aviv');
/*!40000 ALTER TABLE `branchs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cancelation`
--

DROP TABLE IF EXISTS `cancelation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cancelation` (
  `CancelationID` int NOT NULL AUTO_INCREMENT,
  `orderID` varchar(256) DEFAULT NULL,
  `customerID` varchar(256) DEFAULT NULL,
  `expectedRefund` double DEFAULT NULL,
  PRIMARY KEY (`CancelationID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancelation`
--

LOCK TABLES `cancelation` WRITE;
/*!40000 ALTER TABLE `cancelation` DISABLE KEYS */;
INSERT INTO `cancelation` VALUES (1,'73','1',5),(2,'72','1',5),(10,'75','1',36.1),(11,'75','1',36.1),(12,'74','1',105.87500000000001),(13,'75','1',259.55),(14,'79','1',170.55);
/*!40000 ALTER TABLE `cancelation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complaints`
--

DROP TABLE IF EXISTS `complaints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `complaints` (
  `complaintID` int NOT NULL AUTO_INCREMENT,
  `customerID` varchar(256) DEFAULT NULL,
  `orderID` varchar(45) DEFAULT NULL,
  `customerserviceID` varchar(256) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `branchID` varchar(256) DEFAULT NULL,
  `complaintOpening` datetime DEFAULT NULL,
  `treatmentUntil` datetime DEFAULT NULL,
  `status` enum('OPEN','CLOSE') DEFAULT NULL,
  PRIMARY KEY (`complaintID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaints`
--

LOCK TABLES `complaints` WRITE;
/*!40000 ALTER TABLE `complaints` DISABLE KEYS */;
INSERT INTO `complaints` VALUES (1,'7','1','12','delivery was late','1010','2022-05-26 10:36:25','2022-05-27 10:36:25','CLOSE'),(2,'7','1','12','delivery was late','1010','2022-05-26 10:36:25','2022-05-26 10:36:25','CLOSE'),(3,'7','1','12','late','1010','2022-05-27 12:17:45','2022-05-28 12:17:45','CLOSE'),(4,'7','1','12','late3','1010','2022-05-27 12:32:53','2022-05-28 12:32:53','CLOSE'),(5,'7','1','12','fsdf','1010','2022-05-27 12:45:49','2022-05-28 12:45:49','CLOSE'),(6,'7','1','12','fdsfs','1010','2022-05-27 12:47:37','2022-05-28 12:47:37','CLOSE'),(7,'7','1','12','dasd','1010','2022-05-27 12:52:50','2022-05-28 12:52:50','CLOSE'),(8,'7','1','12','dsfsd','1010','2022-05-27 12:55:25','2022-05-28 12:55:25','CLOSE'),(9,'7','1','12','dasd','1010','2022-05-27 13:17:40','2022-05-28 13:17:40','CLOSE'),(10,'7','1','12','sdsad','2525','2022-05-27 13:30:01','2022-05-28 13:30:01','CLOSE'),(11,'7','1','12','dsadas','2525','2022-05-27 13:41:19','2022-05-28 13:41:19','CLOSE'),(12,'7','1','12','adsd','2525','2022-05-26 10:36:25','2022-05-27 10:36:25','CLOSE'),(13,'7','1','12','sdsa','2525','2022-05-27 14:04:35','2022-05-28 14:04:35','CLOSE'),(14,'1','73','12','dasdasd\ndasdasdasda\nasd\nasda\nsd','1010','2022-06-03 13:06:59','2022-06-04 13:06:59','CLOSE'),(15,'72','1','12','cssdsds','1010','2022-06-03 14:31:12','2022-06-04 14:31:12','CLOSE'),(16,'72','1','12','dsadasd','1010','2022-06-03 14:33:07','2022-06-04 14:33:07','CLOSE'),(17,'1','73','12','sdasdasd','1010','2022-06-03 14:40:38','2022-06-04 14:40:38','CLOSE'),(18,'1','73','12','sdasdasd','1010','2022-06-03 14:40:49','2022-06-04 14:40:49','CLOSE'),(19,'1','73','12','jhgyg','1010','2022-06-03 14:46:27','2022-06-04 14:46:27','CLOSE'),(20,'1','73','12','ghjghg','1010','2022-06-03 14:46:39','2022-06-04 14:46:39','CLOSE'),(21,'1','73','12','cssdasd','1010','2022-06-03 14:54:38','2022-06-04 14:54:38','CLOSE'),(22,'1','73','12','dasdasd','1010','2022-06-03 15:04:17','2022-06-04 15:04:17','CLOSE'),(23,'1','72','12','asdasd','1010','2022-06-03 15:10:23','2022-06-04 15:10:23','CLOSE'),(24,'1','73','12','dasdas','1010','2022-06-03 15:17:33','2022-06-04 15:17:33','CLOSE'),(25,'1','1','12','adsad','1010','2022-06-03 15:20:31','2022-06-04 15:20:31','CLOSE'),(26,'1','4','12','dada','1010','2022-06-03 16:10:10','2022-06-04 16:10:10','CLOSE'),(30,'1','74','12','sdasda\ndasdasd','2525','2022-06-03 16:57:58','2022-06-04 16:57:58','CLOSE'),(31,'1','78','12','dasda','2525','2022-06-05 18:29:37','2022-06-06 18:29:37','CLOSE');
/*!40000 ALTER TABLE `complaints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creditcards`
--

DROP TABLE IF EXISTS `creditcards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `creditcards` (
  `creditCardNumber` varchar(16) NOT NULL,
  `creditCardCvvCode` varchar(3) DEFAULT NULL,
  `creditCardDateOfExpiration` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`creditCardNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creditcards`
--

LOCK TABLES `creditcards` WRITE;
/*!40000 ALTER TABLE `creditcards` DISABLE KEYS */;
INSERT INTO `creditcards` VALUES ('0123456789101112','111','09-2024'),('2345234523452345','666','07-2025'),('3456345634563456','555','04-2028'),('4567456745674567','444','10-2023'),('5678567856785678','333','12-2029'),('6789678967896789','222','05-2027'),('7890789078907890','888','01-2026'),('8901890189018901','999','02-2025');
/*!40000 ALTER TABLE `creditcards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customerID` varchar(256) NOT NULL,
  `firstName` varchar(256) DEFAULT NULL,
  `lastName` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `phoneNumber` varchar(256) DEFAULT NULL,
  `accountStatus` enum('CONFIRMED','PENDING_APPROVAL','FROZEN','NOT_FROZEN') DEFAULT NULL,
  `isLoggedIn` tinyint DEFAULT NULL,
  `balance` varchar(256) DEFAULT NULL,
  `isNewCustomer` tinyint DEFAULT NULL,
  `creditCardNumber` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`customerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('1','Dvir','Bublil','dvirbublil02@gmail.com','0541234567','CONFIRMED',0,'0',0,'0123456789101112'),('18','Alon','Moshe','alon@gmaill.com','0506789012','CONFIRMED',0,'0',0,'6789678967896789'),('20','Liron','Buhbut','liron@gmaill.com','0527890123','FROZEN',0,'0',1,'5678567856785678'),('23','Alin','Migdalovich','alon@gmaill.com','0528901234','CONFIRMED',0,'0',0,'4567456745674567'),('24','Nave','Belosesky','nave@gmaill.com','0508901234','PENDING_APPROVAL',0,'0',1,'3456345634563456'),('26','Lebron','James','lebron@gmaill.com','0529012345','PENDING_APPROVAL',0,'0',1,'7890789078907890'),('27','Steph','Curry','steph@gmaill.com','0509012345','PENDING_APPROVAL',0,'0',1,'8901890189018901'),('7','Naor','Barda','naor@gmaill.com','0543456789','FROZEN',0,'0',1,'2345234523452345');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customerservice`
--

DROP TABLE IF EXISTS `customerservice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customerservice` (
  `customerserviceID` varchar(256) NOT NULL,
  `firstName` varchar(256) DEFAULT NULL,
  `lastName` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `phoneNumber` varchar(256) DEFAULT NULL,
  `accountStatus` enum('CONFIRMED','PENDING_APPROVAL','FROZEN') DEFAULT NULL,
  `isLoggedIn` tinyint DEFAULT NULL,
  PRIMARY KEY (`customerserviceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerservice`
--

LOCK TABLES `customerservice` WRITE;
/*!40000 ALTER TABLE `customerservice` DISABLE KEYS */;
INSERT INTO `customerservice` VALUES ('13','Yarden','Gabay','yarden@gmaill.com','0545678901','CONFIRMED',0),('14','Shula','Bar','shula@gmaill.com','0525678901','CONFIRMED',0);
/*!40000 ALTER TABLE `customerservice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliveries`
--

DROP TABLE IF EXISTS `deliveries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deliveries` (
  `deliveryID` int NOT NULL AUTO_INCREMENT,
  `orderID` varchar(256) DEFAULT NULL,
  `branchID` varchar(45) DEFAULT NULL,
  `customerID` varchar(256) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `orderDate` varchar(256) DEFAULT NULL,
  `expectedDelivery` varchar(256) DEFAULT NULL,
  `arrivedDate` varchar(256) DEFAULT NULL,
  `receiverName` varchar(256) DEFAULT NULL,
  `address` varchar(256) DEFAULT NULL,
  `phoneNumber` varchar(10) DEFAULT NULL,
  `status` enum('WAIT_FOR_MANAGER_APPROVED','READY_TO_GO','ARRIVED') DEFAULT NULL,
  PRIMARY KEY (`deliveryID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveries`
--

LOCK TABLES `deliveries` WRITE;
/*!40000 ALTER TABLE `deliveries` DISABLE KEYS */;
INSERT INTO `deliveries` VALUES (18,'92','2525','1',20.55,'2022-06-07 10:43:52','2022-06-23 16:30:00','','Dvir Bublil','Haztzaim Hifa','0521234567','WAIT_FOR_MANAGER_APPROVED'),(19,'93','1010','1',20.55,'2022-06-07 10:45:03','2022-06-07 13:45:03','','Dvir Bubil','Hatzavim 52\\1 ramat yishay','0524757186','WAIT_FOR_MANAGER_APPROVED'),(20,'96','1010','1',20.55,'2022-06-07 10:52:43','2022-06-30 14:00:00','','Dvir Bublil','Haifa 42/1','0524757899','WAIT_FOR_MANAGER_APPROVED');
/*!40000 ALTER TABLE `deliveries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliveryagent`
--

DROP TABLE IF EXISTS `deliveryagent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deliveryagent` (
  `deliveryagentID` varchar(256) NOT NULL,
  `firstName` varchar(256) DEFAULT NULL,
  `lastName` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `phoneNumber` varchar(256) DEFAULT NULL,
  `accountStatus` enum('CONFIRMED','PENDING_APPROVAL','FROZEN') DEFAULT NULL,
  `isLoggedIn` tinyint DEFAULT NULL,
  `branchID` varchar(256) DEFAULT NULL,
  `ordersID` varchar(6000) DEFAULT NULL,
  PRIMARY KEY (`deliveryagentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveryagent`
--

LOCK TABLES `deliveryagent` WRITE;
/*!40000 ALTER TABLE `deliveryagent` DISABLE KEYS */;
INSERT INTO `deliveryagent` VALUES ('21','Omri','Gawi','omrig@gmaill.com','0507890123','CONFIRMED',0,'2525',NULL),('3','Omri','Shalev','shalevomri10@gmail.com','0501234567','CONFIRMED',0,'1010',NULL),('8','Roee','Erez','roee@gmaill.com','0523456789','CONFIRMED',0,'5555',NULL);
/*!40000 ALTER TABLE `deliveryagent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `userName` varchar(250) NOT NULL,
  `password` varchar(250) DEFAULT NULL,
  `userType` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ID`,`userName`)
) ENGINE=InnoDB AUTO_INCREMENT=31573158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'dvir','dvir1234','customer'),(2,'almog','almog1234','branchmanager'),(3,'omri','omri1234','deliveryagent'),(4,'shir','shir1234','networkmanager'),(5,'mor','mor1234','serviceexpert'),(6,'ran','ran1234','marketingworker'),(7,'naor','naor1234','customer'),(8,'roee','roee1234','deliveryagent'),(9,'kfir','kfir1234','shopworker'),(10,'patrick','patrick1234','shopworker'),(11,'joey','joey1234','branchmanager'),(12,'bob','bob1234','shopworker'),(13,'yarden','yarden1234','customerservice'),(14,'shula','shula1234','customerservice'),(15,'roni','roni1234','shopworker'),(16,'aviel','aviel1234','branchmanager'),(17,'natalie','natalie1234','shopworker'),(18,'alon','alon1234','customer'),(19,'bar','bar1234','shopworker'),(20,'liron','liron1234','customer'),(21,'omrig','omrig1234','deliveryagent'),(22,'alex','alex1234','marketingworker'),(23,'alin','alin1234','customer'),(24,'nave','nave1234','customer'),(25,'lior','lior1234','serviceexpert'),(26,'lebron','lebron1234','customer'),(27,'steph','steph1234','customer');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketingworker`
--

DROP TABLE IF EXISTS `marketingworker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketingworker` (
  `marketingworkerID` varchar(256) NOT NULL,
  `firstName` varchar(256) DEFAULT NULL,
  `lastName` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `phoneNumber` varchar(256) DEFAULT NULL,
  `accountStatus` enum('CONFIRMED','PENDING_APPROVAL','FROZEN') DEFAULT NULL,
  `isLoggedIn` tinyint DEFAULT NULL,
  PRIMARY KEY (`marketingworkerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketingworker`
--

LOCK TABLES `marketingworker` WRITE;
/*!40000 ALTER TABLE `marketingworker` DISABLE KEYS */;
INSERT INTO `marketingworker` VALUES ('22','Alex','Kovtonyuk','alex@gmaill.com','0548901234','CONFIRMED',0),('6','Ran','Polac','ran@gmaill.com','0502345678','CONFIRMED',0);
/*!40000 ALTER TABLE `marketingworker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `networkmanager`
--

DROP TABLE IF EXISTS `networkmanager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `networkmanager` (
  `networkManagerID` varchar(256) NOT NULL,
  `firstName` varchar(256) DEFAULT NULL,
  `lastName` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `phoneNumber` varchar(256) DEFAULT NULL,
  `accountStatus` enum('CONFIRMED','PENDING_APPROVAL','FROZEN') DEFAULT NULL,
  `isLoggedIn` tinyint DEFAULT NULL,
  PRIMARY KEY (`networkManagerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `networkmanager`
--

LOCK TABLES `networkmanager` WRITE;
/*!40000 ALTER TABLE `networkmanager` DISABLE KEYS */;
INSERT INTO `networkmanager` VALUES ('4','Shir','Cohen','shir.cohen83@gmail.com','0542345678','CONFIRMED',0);
/*!40000 ALTER TABLE `networkmanager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `orderID` int NOT NULL AUTO_INCREMENT,
  `customerID` int NOT NULL,
  `branchID` varchar(256) NOT NULL,
  `price` varchar(256) DEFAULT NULL,
  `greetingCard` varchar(256) DEFAULT NULL,
  `status` enum('PENDING','APPROVE','CANCEL','ARRIVED','PENDING_WITH_DELIVERY','PENDING_WITH_IMIDATE_DELIVERY','APPROVE_WITH_IMIDATE_DELIVERY','APPROVE_WITH_DELIVERY','CANCEL_WITH_DELIVERY','TAKEAWAY','CANCEL_ORDER_BY_CUSTOMER','CANCEL_ORDER_DELIVERY_BY_CUSTOMER','DECLINE_ORDER_DELIVERY_CANCELATION','DECLINE_ORDER_CANCELATION','APPROVE_ORDER_DELIVERY_CANCELATION','APPROVE_ORDER_CANCELATION') DEFAULT NULL,
  `orderDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expectedDelivery` datetime DEFAULT NULL,
  PRIMARY KEY (`orderID`,`customerID`,`branchID`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (92,1,'2525','107.55','','PENDING_WITH_DELIVERY','2022-06-07 10:43:52','2022-06-23 16:30:00'),(93,1,'1010','430.55','','PENDING_WITH_IMIDATE_DELIVERY','2022-06-07 10:45:03','2022-06-07 13:45:03'),(94,18,'1010','197.52','THANKS ALOT','PENDING','2022-06-07 10:46:37','2022-06-07 10:46:37'),(95,23,'5555','273.6','Thanks ','PENDING','2022-06-07 10:51:01','2022-06-07 10:51:01'),(96,1,'1010','215.55','','PENDING_WITH_DELIVERY','2022-06-07 10:52:43','2022-06-30 14:00:00'),(97,1,'5555','54.9','','PENDING','2022-06-07 11:07:10','2022-06-07 11:07:10');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `productID` varchar(256) NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `backGroundColor` varchar(256) DEFAULT NULL,
  `picture` varchar(256) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `itemType` varchar(256) DEFAULT NULL,
  `dominateColor` varchar(256) DEFAULT NULL,
  `isOnSale` tinyint DEFAULT NULL,
  `fixPrice` double DEFAULT NULL,
  PRIMARY KEY (`productID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('1','Rose Bouquet',199,'920000','/javafx_images/Catalog/roseBouquet.jpg',100,'Product','Red',1,185),('10','Casual Bouquet',54.9,'8588A1','/javafx_images/Catalog/casualBouquet.jpg',100,'Product','UNDEFINED',0,0),('11','Colorful Bouquet',100,'F9B94E','/javafx_images/Catalog/colorfulBouquet.jpg',100,'Product','UNDEFINED',0,0),('12','Holiday Bouquet',150,'980204','/javafx_images/Catalog/holidayBouquet.jpg',100,'Product','UNDEFINED',0,0),('13','Bazil Plant',50,'3E684E','/javafx_images/Catalog/bazilPlant.jpg',100,'Item','Green',0,0),('14','Blue Rose',15,'05108E','/javafx_images/Catalog/blueRose.jpg',100,'Item','Blue',0,0),('15','Cutton Branch',20,'A96B5C','/javafx_images/Catalog/cuttonBranch.jpg',100,'Item','White',0,0),('16','Pampas Branch',22,'B29175','/javafx_images/Catalog/pampasBranch.jpg',100,'Item','Brown',0,0),('17','Pink Tulip',15,'A66A9E','/javafx_images/Catalog/pinkTulip.jpg',100,'Item','Pink',1,10),('18','Red Rose',15,'920000','/javafx_images/Catalog/redRose.jpg',100,'Item','Red',0,0),('19','White Tulip',15,'5F6C36','/javafx_images/Catalog/whiteTulip.jpg',100,'Item','White',1,12),('20','Yellow Tulip',15,'EECB00','/javafx_images/Catalog/yellowTulip.jpg',100,'Item','Yellow',0,0),('8','Birth Bouquet',180,'D090AC','/javafx_images/Catalog/birthdayBouquet.jpg',100,'Product','UNDEFINED',1,172),('9','Bride Bouquet',320,'E58C72','/javafx_images/Catalog/brideBouquet.jpeg',100,'Product','Pink',0,0);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productinbranch`
--

DROP TABLE IF EXISTS `productinbranch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productinbranch` (
  `branchID` varchar(256) NOT NULL,
  `productID` varchar(256) NOT NULL,
  `quantity` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`branchID`,`productID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productinbranch`
--

LOCK TABLES `productinbranch` WRITE;
/*!40000 ALTER TABLE `productinbranch` DISABLE KEYS */;
INSERT INTO `productinbranch` VALUES ('1010','1','47'),('1010','10','33'),('1010','11','33'),('1010','12','33'),('1010','13','33'),('1010','14','33'),('1010','15','33'),('1010','16','33'),('1010','17','33'),('1010','18','33'),('1010','19','33'),('1010','20','33'),('1010','8','33'),('1010','9','33'),('2525','1','33'),('2525','10','33'),('2525','11','33'),('2525','12','33'),('2525','13','33'),('2525','14','33'),('2525','15','33'),('2525','16','33'),('2525','17','33'),('2525','18','33'),('2525','19','33'),('2525','20','33'),('2525','8','33'),('2525','9','33'),('5555','1','33'),('5555','10','33'),('5555','11','33'),('5555','12','33'),('5555','13','33'),('5555','14','33'),('5555','15','33'),('5555','16','33'),('5555','17','33'),('5555','18','33'),('5555','19','33'),('5555','20','33'),('5555','8','33'),('5555','9','33');
/*!40000 ALTER TABLE `productinbranch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productinorder`
--

DROP TABLE IF EXISTS `productinorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productinorder` (
  `productID` varchar(255) NOT NULL,
  `orderID` varchar(255) NOT NULL,
  `nameOfproduct` varchar(255) NOT NULL,
  `price` varchar(255) DEFAULT NULL,
  `backGroundColor` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `itemType` varchar(255) DEFAULT NULL,
  `dominateColor` varchar(255) DEFAULT NULL,
  `productQuantityInOrder` varchar(255) DEFAULT NULL,
  `nameOfItem` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`productID`,`orderID`,`nameOfproduct`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productinorder`
--

LOCK TABLES `productinorder` WRITE;
/*!40000 ALTER TABLE `productinorder` DISABLE KEYS */;
INSERT INTO `productinorder` VALUES ('1','93','Regular','185.0','920000','/javafx_images/Catalog/roseBouquet.jpg','100','Product','Red','2','Rose Bouquet'),('1','96','Regular','185.0','920000','/javafx_images/Catalog/roseBouquet.jpg','100','Product','Red','1','Rose Bouquet'),('10','94','Regular','54.9','8588A1','/javafx_images/Catalog/casualBouquet.jpg','100','Product','UNDEFINED','1','Casual Bouquet'),('10','97','Regular','54.9','8588A1','/javafx_images/Catalog/casualBouquet.jpg','100','Product','UNDEFINED','1','Casual Bouquet'),('11','95','WALLA','100.0','F9B94E','/javafx_images/Catalog/colorfulBouquet.jpg','100','Product','UNDEFINED','1','Colorful Bouquet'),('12','94','Regular','150.0','980204','/javafx_images/Catalog/holidayBouquet.jpg','100','Product','UNDEFINED','1','Holiday Bouquet'),('13','92','Regular','50.0','3E684E','/javafx_images/Catalog/bazilPlant.jpg','100','Item','Green','1','Bazil Plant'),('14','92','Regular','15.0','05108E','/javafx_images/Catalog/blueRose.jpg','100','Item','Blue','1','Blue Rose'),('14','94','ALON','15.0','05108E','/javafx_images/Catalog/blueRose.jpg','100','Item','Blue','1','Blue Rose'),('14','95','WALLA','15.0','05108E','/javafx_images/Catalog/blueRose.jpg','100','Item','Blue','2','Blue Rose'),('15','95','WALLA','20.0','A96B5C','/javafx_images/Catalog/cuttonBranch.jpg','100','Item','White','2','Cutton Branch'),('16','92','Regular','22.0','B29175','/javafx_images/Catalog/pampasBranch.jpg','100','Item','Brown','1','Pampas Branch'),('17','93','ALMOG','10.0','A66A9E','/javafx_images/Catalog/pinkTulip.jpg','100','Item','Pink','1','Pink Tulip'),('17','96','Regular','10.0','A66A9E','/javafx_images/Catalog/pinkTulip.jpg','100','Item','Pink','1','Pink Tulip'),('18','93','ALMOG','15.0','920000','/javafx_images/Catalog/redRose.jpg','100','Item','Red','1','Red Rose'),('19','94','ALON','12.0','5F6C36','/javafx_images/Catalog/whiteTulip.jpg','100','Item','White','1','White Tulip'),('20','93','ALMOG','15.0','EECB00','/javafx_images/Catalog/yellowTulip.jpg','100','Item','Yellow','1','Yellow Tulip'),('20','94','ALON','15.0','EECB00','/javafx_images/Catalog/yellowTulip.jpg','100','Item','Yellow','1','Yellow Tulip'),('8','95','Regular','172.0','D090AC','/javafx_images/Catalog/birthdayBouquet.jpg','100','Product','UNDEFINED','1','Birth Bouquet');
/*!40000 ALTER TABLE `productinorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refunds`
--

DROP TABLE IF EXISTS `refunds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `refunds` (
  `refundID` int NOT NULL AUTO_INCREMENT,
  `orderID` varchar(256) DEFAULT NULL,
  `customerID` varchar(256) DEFAULT NULL,
  `ammount` varchar(256) DEFAULT NULL,
  `reason` enum('Cancelation','Complaint','Delivery') DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`refundID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refunds`
--

LOCK TABLES `refunds` WRITE;
/*!40000 ALTER TABLE `refunds` DISABLE KEYS */;
INSERT INTO `refunds` VALUES (1,'59','1','226.5','Delivery','2022-06-05 20:57:02'),(2,'72','1','12','Complaint','2022-06-05 18:30:25'),(3,'72','1','12','Complaint','2022-06-05 18:31:22'),(4,'74','1','12','Complaint','2022-06-05 18:31:22'),(5,'4','1','12','Complaint','2022-06-05 18:34:22'),(6,'90','1','20.55','Delivery','2022-06-07 12:57:05');
/*!40000 ALTER TABLE `refunds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reports` (
  `reportID` int NOT NULL AUTO_INCREMENT,
  `reportType` enum('ORDERS','INCOME','SPEICEL','SURVEY','COMPLAINTS') DEFAULT NULL,
  `branchID` varchar(256) DEFAULT NULL,
  `reportCreator` varchar(256) DEFAULT NULL,
  `reportDuration` enum('MONTHLY','QUARTERLY') DEFAULT NULL,
  `reportFile` blob,
  `reportDate` date DEFAULT NULL,
  PRIMARY KEY (`reportID`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports`
--

LOCK TABLES `reports` WRITE;
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
INSERT INTO `reports` VALUES (2,'ORDERS','2525','System','MONTHLY',_binary '2525 Haifa 05\nProduct 5 Rose Bouquet\nItem 7 Cactus Flower\nProduct 15 Sun Bouquet\nItem 3 Bazil Plant\nProduct 7 Colorful Bouquet\nProduct 10 Holiday Bouqet\nItem 20 Pink Tulip\nProduct 14 Casual Bouquet\nProduct 17 Birth Bouquet\nItem 23 Bride Bouquet','2022-05-26'),(3,'INCOME','2525','System','MONTHLY',_binary '2525 Haifa 05\nproduct 12 4 23.3\nitem 6 3 23.3\nproduct 5 4 23.3\nitem 9 3 4\nproduct 1 4 12\nitem 2 5 53\nproduct 10 18 20\nitem 24 3 14\nproduct 26 14 2.3\nitem 14 10 2\nproduct 7 1 14\nitem 5 2 53\nitem 3 7 2','2022-05-26'),(16,'INCOME','2525','System','QUARTERLY',_binary '2525 Haifa 2 2022\nmonth1 item 12 12 23.3\nmonth1 item 1 4 5\nmonth1 item 2 12 25.3\nmonth1 item 15 2 4\nmonth1 item 4 23 23.3\nmonth1 item 16 4 5\nmonth1 item 3 3 25.3\nmonth1 item 25 14 4\nmonth1 item 25 12 23.3\nmonth1 item 1 23 5\nmonth1 item 2 3 25.3\nmonth1 item 15 2 4\nmonth2 product 1 4 1.3\nmonth2 product 5 8 63\nmonth2 product 14 6 15.3\nmonth2 product 25 3 1.3\nmonth2 product 20 2 63\nmonth2 product 1 15 15.3\nmonth2 product 4 15 1.3\nmonth2 product 23 23 63\nmonth2 product 18 12 15.3\nmonth3 item 2 4 34\nmonth3 item 8 6 4\nmonth3 item 15 2 67\nmonth3 item 14 5 5\nmonth3 item 2 6 67\nmonth3 item 3 5 5','2022-06-27'),(17,'INCOME','2525','System','QUARTERLY',_binary '2525 Haifa 1 2022\nmonth1 item 4 12 24\nmonth1 item 8 4 65\nmonth1 item 3 3 22\nmonth1 item 15 2 4\nmonth2 product 12 4 1.3\nmonth2 product 13 8 63\nmonth2 product 14 6 15.3\nmonth3 item 8 34 6\nmonth3 item 12 2 4\nmonth3 item 19 1 67\nmonth3 item 3 4 5\nmonth3 item 8 0 0','2022-03-27'),(20,'SURVEY','2525','Service Expert','QUARTERLY',_binary '%PDF-1.4\n%\�\�\�\�\n1 0 obj\n<</Type/XObject/Subtype/Image/Width 550/Height 298/Length 182/ColorSpace/DeviceGray/BitsPerComponent 8/Filter/FlateDecode>>stream\nx�\��1\0\0\0 ��g	O�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0���\�\nendstream\nendobj\n2 0 obj\n<</Type/XObject/Subtype/Image/Width 550/Height 298/SMask 1 0 R/Length 9426/ColorSpace/DeviceRGB/BitsPerComponent 8/Filter/FlateDecode>>stream\nx�\�\�E����?X\���\"��ޮ\�\�lp�A.wp\r\�D8�v\�uԽQ���axљF�Q^V�<\\�u\�;<yu_�\�~\�I\�dWw\�twUeV\�<�xb�;��:s*+�ά\�\�[��ƕ�\�~�\��c\';{�߲\�\��[�lk�u��5/\0\0�wH.͸4\�ҤK\�.ͻ4�\�\�G\�E\�q�\�7C�\�ut��<�1�z\0\0di\���f_\Zk��y�\�\�\�\�\�7�h\0\0� \���D��Dus�̹\�=��\0\0�#:)$\�/��jg\�\�\�Z\�;/#\0\0����A�nFN}\��r��\0@\nA�&��\�\�\�7z��\\��\0@jM�,D\r\�\�\�\�\�\���;/\0\0x�(C\�рn\�_�\�\�\�\�<�\0\0\�\"\�G��t\0\0\r �����\���\0@ÈDj��\�;p\�yn\0�kD%�\�f\�ԇ\�L��`QS!\�\�\�˚\�Ӆ�\\bnV1\0\0ҏ�$��\�/��\�\�\�n�=ն��U,Y�J\\�+G��<�\�r\��|\0\0\0!B	�q\�ξ\�63��#N\r^�~�z 2�\r��\�\0\0�^D+us�\�9��؈b�p�E\r�))���qF�\�X!�{��<\�߱b�BJ])/n\�}\��ғ��R��R\��\��S\�ӊ�V\�\�^�y�\�):�w��0&��;;f\�4QE\�8\�2_���#r��̓�j9\�C\�\�q��\�<IC�\�鯱\"��,ӧ?:g\�\�CF\�L\r�\�qʯ��8v\��\�\�\�\�\�E�Ř\�ٱo\�\�G�G����o]S���J1*���8΍�Җݿ^��\�<X �\�\�8�4�bjlf�Ɗb�n\�_�ƻ\�\��0qn\0\0��(F�:4����\�\�o^x\�Ĺq�Ƙ��\�jlf�Ɗh�q20��s\�0*���563�RcE4��+\�׽R+\�؁�73Pc3�/5VD#���\�O�\�\�vt�`;p�f\�5viˆ�\�Y��\�%\�;CXXB�bK\���\'^\r\�O��&>\�̒\�m\�C\���_�lp{(=�����\�N:\�Ft\�\�3qnF\�3�/�\�q^c^�mƜc3\�=cn��sG��Μ\'���5\�\�<M\�q�\��\�\�RN�Q�A���\�?��ɉʕ\�\�B�ߚ1gX�>���h\�V��ң\Z+�\�\�=\�<\�qn\0��3ݬ߲\�y6�\�\�8ο1ځ>Nfp^c1N\\xTcE7O��R\�-mL�\��������\�X�\�X\�͓m\�γ\�\0����`;`�\�\�\�b���Ɗnl\��\�\'38��\'.<����ɯ�i\�\�q>*n�\�d\�5\�ąG5Vt�q\0�>g\n\�q\�6���o�\�\�r�l�G8\�q�?\n�\���\�\�\�\�|&�r\�\�y\�\�|!�\Z\�l��r\�?\�\����[A>\�\�GK6$K,d|n\�\n\��|\�~\��\r�|�\��ɹ=�}c���\Z;E��\�{~���\"����pH�y+\��|(\�����H/\�T�\�om�3���E�\��χ��2s�wB!�\��l�@�sy\�|���7b9\��\Z\'m3y:\��ܣ׷L�nk��ߖ\�a�?�ӎ<.�\�	��\�\�o]wN\�}\�\�ːDs�joz\�\�\��|�d@r���<7�\�!��߾:m�\�i\�^�vU\�<�\�\�G\�J�Fţ\�\�N\�<3�o��c/\�x[�\�̑�\�\�y\�6�\�\��7\�8\�\���\�q\�Ɋ�lf�=�g���\�s�2�\�L\�\��y\�z!\��\�G��ӏ\�r\�]G/���.^\�l���X\�ܪ�љt�\�\�Ʊ\��8vX�T�ZpM����֢1\�\0�e�i\r\��8q�q\�q0�e�q4�q\�U�ˣ\�ؾ�\"b�\�\�~\���N\�L���\�R��\�\�r�\�\��5\�0\�ލO����_�}egO��\"e��:\�Of��b�ސ��{h 3\�	9�\�i��#=���\\b�\�SI4���\�\�\�Rk\�)��R0Ʊ�\�\�\�\�b5\�V\�#�./\�\�p>�\��\�F\�\�{\�\�\�0�V;N�#f��)����\�H\�\�8\�G\�1N\\p\�\�\�A�I(\�4!r�De%�Г���`���8v�8\�#\��P\�\�/Ɖ�c��q�Źq���c��\�:�0\��\�\�q\���8\�_�\��7F��q\�q0�G�\"[\0�\\Ǳ\��8��\�0N\\`;`�\�/\�\�Ʊ\��8�\�\�8\�G\�1N\\p\�\�xDמ>\�\�q\���8\�#\�vt�87��o�\'.\�\�\�\�`qn\�\�\'.��c��q�\�`���8v�8\�#�\�3\0Ɖ�c��q<\"m3y:\�8q�u;`�c����\�ӥͭ\�i`\��5@�\�\�8\��8\�\�\�a\�Smj��%+W)ň�\�z\��A\�X��5@k\�\�};`�ceQ�\�\�\�S-�0h���\�87��Qq�\\Ǳ\��86Ѣ�Z(�q��L\�V��Bt��\�f�w�S$\�\���a�#=kBJ�zx�\�\�f\�\�=�oN�\�\�3��ܹoys\�7\�\�\�/e`�����`lc�=�\�7\�ɇ�OW�Qy��\�ym���\�\��\��<�\�\��\�\���q\�\�\��u\�`HI7.>�\�S�4�\��\�.L���\�r�}����r\�\�L�>΂�K�a�\�5\r563ơ�S;N�S>Jf^\�щ\�u��j87��Qq��q���\�\�A<\�T�}��R�$*Ũ\�I/\�\�R`\�`�\�\�x�\�	�q0�_5\�`�`΁\0\��Uc1\����q0�_5\�`�8\��Uc1\��\�\�	�q0�_5\�`�`\r\�\0\��\��8�\�\�8ο1b�\�W�\�8\�_�\���8\��8~\�X��q<��m�	\��8ǯ\Z�q0�G\Z:j�q0\��\�b�\�/΍\�|T\�`�j,\��8�\�\�8\��8\�/0\��\�\�q��\�`�j,\��8���<���c�\�W�\�8\�#�\�3\0\��8~\�X��ql�d\�*��Ͳ�ښ�ЫN\�Es$&\�\��8ǯ\Z�q0�5\�/X$�/����\�նشƹq���c�\�W�\�8\�&\�kO�_\�ե����;��\�+\"\�\�\�\��o\�\�\�z:uR�w�Ɇq�n|\"��\��?�\r㤭�\�OɌqV�\�R\�u\rd\�8!\�T=�\�8jj\�8jH\�\���\�8�GF��a�\�qv�H\�`��i��=\Z�lV\�%��Q5\�〉�e�\�5\r563\�aT�v\�c\�\�,{��▲�9\�V��q0�_5\�`��c�\�c��\ZU+�� \�\�\�e`�\�W�\�8\�#\��P\�w�`�\�W�\�8\�_�\�9\��\��8�\�\�8ο1b�\�W�\�8\�_�\���8\��8~\�X��q<�\�`�\�W�\�8�1��U\Z�F�����:\0\�`�j,\��8u�o��_��\�\�W{�\���8\��8~\�X��q\�d\�\�ف�\rv�\�a��:7�s0\����q\�k\�JIGf\�Y5�6>Ԟxu\�\�\�g\�\�8ο1b�\�W�\�8�N\�\\9�\\�i~$Muy\�O]2\�bmG��s\�8\�8ǯ\Z�q0N��\�8sK��I\�\�\�x�\�`�\�W�\�8�^v��=��\�y�\0\�q\0\��8~\�X��q\�G�6�0n!\��%?����<���c�\�W�\�8\�#\�6��s0\����ql�d\�*��\�e\�jas�O�bbE�\��7F��q���\�\�\�\�\�q\�/X$�\�)_sM/�\�\Z���q0�_5\�`���\�\�sE6yP�\0�^�-�v[E0\��8~\�X��qb�\�4\�\�\�\r�`��\�h�+Dwo�l&Ǌ1ER�<�9\�9ҳ&����Wg\�8\�\�ϩ�?\�8���1N\�\����n\\|$3\�	9�\�i\�\�)ިV!\�3�F�5��c�qLU\�y\���8}��㶺��\�f\�8�qj\�\�Ռ��\�qʯ�pn\�`�\�\�\�\�4��F��)\�\�S��8\�E�\\\n�\��#\��8~\�X��q\�$ҨZD\��{\�\�a1\��\�b�\�i�s����q0�_5\�`�:a}�	���\��Uc1Ʃ\�\0-\�|T\�`�j,\��8���bF��b\'m\�\�8\�`��8\�#X4\0\��8~\�X��q�Źq���c�\�W�\�8\�_0\��8~\�X��q<��m�	\��8ǯ\Z�q0N��)Y�\�ƪӇ���87��Qq��q���\�4J�8g��s �s\�8\�`��8�v��4\�M\�/C���q�c\�8ǯ\Z�q0N��8pn\�\�\��Uc1\��f��q0�_5\�`�\�)Lwcs\�hf��q0�_5\�`�F8sk|���w-Y�J/|�xYsS!\��8��ͭMŘto΍\�|T\�`�j,\��8�R�u��	\�8Z4\�\Z��,6�qn\�`�\�\�4\�s#\��\�=\�Ӣ!�ˣ\�ؾ�\"b�\�\�~\���N\�L���\�R��\�\�r�\�\��5\�0\�ލO��t��ǳa�uU��w@�8�>]g\�8+V\�\r)麇2c��c��\�2N�b��_\�)7\�\�_.Y�T�i5�&\�\�7Ω�?\�`�\�q��{�\�-�1\��\�8�0��ER*n)��wv8Us~�Q5��㶺��\�f\�8��\�NJ�c��#�U��\�`�\�W�\�8�Q���5!\�\" ��J)�ܓK\�\�\�\�\���8Y2ο<�irڄ\�\�X2�\�^{\�\��m�\�<$Wy~{�_=�!��\�\�þ1k��\��\��8Y2\��Ǧ\�x{zg��#3��3�\�\�\��\�̝\�\�\�9np\"Ϯ	f\�:9�nũRN�l�\���\���>���\�|~$W�#�|\�3|l����o�q\�Q\���{Cʈq0NLؘ;:�s\�\�\��8㔃qL1N��KSo\�h\�\�\�`�35���S\�os��q0\��8gj\�i[�\r\�`��q\��8&�\Z\'m�Ns\�`�S\�1�\�8\�����r�\�9\�`�35�\�5tŘ;��\�%\�\�qn�8\�`�r0�I2sG۸;�kO�I�q�\�l\�aſ\���9�#�es��1\�[\�~�\�\�\'��e��Շ�Q\�X1�KgX:{\�%!e\�8\�`��aQ�qھ1kk;:Msi�]�\�R\�j�k�\�V��Vx�\�\�ߕq㑟����\r{0�/7~;����I>%\�\���\�O�.�\�?�dx\�\�Bʈq0\��8S\�8\�Jo���c�\�d�j\�`��q2d\�`��q0ƙ*\�\�7V\�L��k&O��q0\��8Y1\��\�#iu\�\�q0\��8\';Ʃ�V�%+W\�e�6���	/k6�Q�\�\Z�\��8\�`�35��n\�\��\�R��`�`�Ȧ֛\�r\�ҟ\�\�\0\�8\�`��\�4pG�\�&�ѽ\�\�h�\�A\�Sc��q0ƙ\�\�8s˘s�6L\�h��\�\�\Z2�3Z=\�\n\�\�\�/�\�߱b\�\�\�\'P.��_�؜\r\�\�YS~u\�\�\�\�\�0N���R�a�o9+3c�ֵ�\�\�J����d\�8!\�zj\�8�_ǩ\�Ǒt�\�\�\��\�C�>�_\�	�\�\�0}�}�D�����8�\�\�8z�:�\�P50\��8\�L\r\�Wd�\�:NθWM)F���\'���q0\��8g\�\��\'\0\��8\�LE\�\�\�[c\���q0\��8\�\'?�t!\�o-:\�`��q��q�W��te��߁\�\��8\�`�L�x\��ف\\Q=֌\��80\��8g*\�\�HWκq\�Z\�`��q0�\�ƹMqTm�\�YF\�0\��8g�c�̝��q0\��8y0���wG��m0�8\�`�3�c�CCGM0\��8\�`;`��q0\��8v�8\�`��q\�q0\��8\�$3y�8\�`��\�\�\0\�`��q0Τ,^\�\�dDy�^!4��q0\��8�v�K�+PO\n\��8\�`�S;��\�#�.WKQ�tl\�]1Nwo��|{�l&\�S��\�\�e�txךlg\�\�\'ʏ�NY���l�Z]U)\�0\�\�]�C\�\�\�g\�\�\�\�Ja\�C�1NH���zd�%+W�e5�f�c��q0\��8	�X3���\�N\0F\�U�\�8\��9\�aT-ǨZ))1�%\�8�\�\�`��q0ƩsHM\�\�XѨQ5y��-\�\0\�`��q0NB�\�\0\�`��q\�q0\��8\�\�\�`��q0Ʊ\��8\�`���\�\0\�`��q0NB�\�t\0��q0\��8v�8\�`��q\�q0\��8\�$Dמ>��q0\��8\'!\�vt�`��q0\��8v�8\�`��q\�q0\��8\�$3y�8\�`��\�\�\0\�`��q0N-T\\�`is�J�\rZ��q0\��8�*.Ǧ��d\rP���8\�`���\�\\T�8e3�8\�`��qj���/#yty�\�8�\�c�ݽ����+�<Όq\�2K�\�\�\�0Α�5\�GP��^�\r\�T��*%\�Y�\��23\�i];X\�ظ�Hf�\�����G���U�k}y)���q\�\��e����\r\�\�\�\�\�\�I�qt�&Wzg\��b��q0\��8��\�I�\�z7\�N��\"N\�`��q0\�I~�\0\�`��q0NB0\�@\0��q0\��8v�8\�`��q\�q0\��8\�$\�\��8\�`���\Z\0\�`��q0�0\��8\�`;`��q0\��8	\�Ҷ�\�`��q0\�I�CCGM0\��8\�`;`��q0\��8v�8\�`��q\�q0\��8\�$3y�8\�`��\�\�\0\�`��q0N-\�_���f\�\�e\�*Q/\Z\��8\�`�3)˞jS�J/Y�J,�\�kYlZ�q0\��8\�\�N�8�<�\\�:mұ}wE\�8ݽ�\��흲��UOUJf�(�Y\�\�]k�a���(?�:e��ǳa�juU�d\�8w9+3c���V;+�u\rd\�8!\�z\�qD.�\�31�\ZU35�q0\��8\�DAz7�,����T\�\�	��\Z�j~\'�>g\�8��\�U+%\r\�Y\�\�*ݙ�\rBd��8\�`��q&E:8M\�P\�uӚ��M6(wGc��q0Ʊ�\0\r�q0\��8\�\�`��q0�0\��8\�`;`��q0\��8	��l0\��8\�$�N�8\�`�c��q0\��8\�\�`��q0NBt\�\�3�8\�`��qbmG�	\��8\�`�c��q0\��8\�\�`��q0NB0�g\0��q0\��8	�L�0\��8\�Ԃ^\�\�\\ymis�J4\�\0�\��8\�`�3)b�޴~�\�K�(\�\�`��q0N��\�\\\�\�}�b�}\�\r��q�M�q\�\�8&\�`���nre\�\�KQ�\�%� RKW�xd-ݯ	�q��RKO\�\�7lw���\r\�Kf9�r4�g#i�����\Z�\�\�qt�&Wz\��?jR83�G\�o�����\Z�\�\�{\�r�ލz�\�U��\"N\Z\��\���Q�\�f�jlJ��83�G\�o�����\Z�q\��73xt�F�\Z�<��\'.83�G\�o�����\Z�q\��73xt�F�\Z�<��\'.83�G\�o�����\Z�q\0\0�\0\0\�q\0\0�\0\0\�q\0\0�\0\0\�qrř\�T�K\�5����\Zۃ�+\���\�SϒgN֚�b.^\�\\�µ��1\�})���j�Ǭ3gTZS�c��WK{\�@�(�\�FU\��%}�\�\�\\�b\�]�-�&\�	\�\�PF9�I\����\�׆�3\�/�&G�T\�`��B�r8T}\�\\�SN7�\�@?ч���\�P}��\�\�O\�v1s	\'=\�L\�8i(�Z�*Q\�8/�4\�f�w^L帐�/�|�7\�$������3�\�\�1�\�Z^R)ꈫ�\�d\�IC1kY@\�\�b\��l�Qm��q\�S\�<\�Ŕ���\�\�K�S\�w=ԩ��\n�V\���Kf\�\'�\�a\�V7%}�D�)$]�\�PL��.��2\��4�q,ʊߝ2SL}\��a��T7zU u��\�H�:�5~\�\�U:\�z?�\Z\�y1�.`J��I\�V�e\�\�������C�h\�u^L\�S�8\�0\�1��9:�3N\�%�uƩ�\�Q͚��l\�8΋�w\�d�>.�\�\�p\�\�&WF\�\�\�\�Ml\�]\�\�h\�KM	j0N\0�\�\�\��bRF�9E��q\0\0�\0\0\�q\0\0�\0\0\�q\0\0�\0\0\�q\0\0�\0\0\�q\0\0�\0\0\�q\0\0�q\�g7\�9p�g?�t� �\�HH�.\r�4\�\�ȧ\�8��\��ϟ?\�ҥk׮�A�iҥa�\�]\Z�\�҉\�8[w���ϯ^��A���\�]\Zyi\�\�`�\��_}�ƍ?A�iޥ���>�qk]q\'=�\rJ�\�G� \"�!��4�e!�y��\�A!�qD7O�ߊq� ���\�8���[�\�n�ow����\�\Z_t���\�����G~��#?��ꩤ_[t\�\�w]|\�\'\�v�u�o�7���37�N�a۴?\�\�/�w�U\�\�o]w���N�+�%E\�\�~\�w[���:\��\�g\\g9�\�:\�5�oΜs\�1w^��<����\�<V��\�\�\�\���;]g9�\��\�\��ηgt�\�\��\�̞\�3{N\�\�ub֮��v����8�\�s|F��l6}�p\�\��\�:\��Ħ\�sߞ9wt\�wf5�\�tB�\�\'\��\�)���J�\�y��ٌ9Û�2R�\�Mc/\�x����f�\�>븰q։���\�\���\�*�噣�\�3�G6e�\�Gt\�\�{0�q._�l\�\r\�`��q0N��#�|t\�n;�q\�\n��q0\��8\�\�|��\�4\�\'��\�\�\�r(\�ݡ�{�6}q��qRZ�|��\�)㤳\�����X��΂����X��҂�\�*\�U,\�Ii�4rV��X�#��2~�%\�/Iw��\�8�rO�j-|!��\�\�\Zޖ�\�{�n�\��Цb\r�T��\'�?tH\��\\�n�\�\\�j��0Nz��\�\�Io��9��#i䥩�b\n�\�\�֭[\�}\�2N��KR�/k���\��\�8\�/���s\�8^�\��\Z\'\�?\�ҴiS��E5N��/t\�|D5N���\�\�\�\�*\�\�\�{�s\�\�3oQ�S�䷿a�\'𸤏Z�|bD(�c�FﶘTx���j !㤿\�U2\�8>�\�1�j�t\\��r�#\Z\'\���#�\Z\'��\�[6UT�Q\Z��\�\�(㜿�M���؍S�ow�T<(fb��\�H)>\���>�X\r�*I+�d�\�A���\�8\�.�\�3���\"\Z\'\�/�9	㤺\�f&\�^�h�\�x�ҿ%�qD1\"�[\�ر��KBv�8ae\�����^�/�pPJ;υ�>�j7\�b\'E�>\�D\'E�^�$�8�(��\�\��8�(�d�L������X�<��#��e\�\�\�5��ݯ�\�8!C�\�J�JSr\�\�㤹\�gf�\�q���_HJ�:�ӂڹ�a��\�\�\�l��\���\�Ƒ��aM�bL\�ܼyssO�3Q\�oU\�\'J��qsǄ�\'��{��\\=Og\�Io��c�U\�\�8\�UKk���j�\�C�߫�ւW\�qI�#߫���W<\�\�\�UKm�\'\�[�\�Q�#r\�\�*�\�g\�56��d\�\�իf\�\��=N��ZZJF8\�M\'���\�{\�.�o�\�%���������\�KO��������t\�\��{��|\"2Nj>�JG<�\�㤦\�\�{*�\\\Z�ƌ#Z�ܪ;��\�8��Pק&\�s���\�?\�\'�\�_\n���<�9<)x\�\��Tԍ\�_~\��rg\Z�\�I0\�\r�\�0\�\r�\�dr��ƌ#B�T3�\�ȩWֹ*\��1�\n��q0\�ɪq���K\r�J�nT�\�8�\��8\�`��dR\�H|{�ƶ���\�v\�C׮]s�� � �\ni䥩�\�\"QI-Ƒ�p�r퓭a� �lG]\�}�Djԍ��.\�(5��\�?���A�4﵏��8Du\�F�tj^\�\�;��\�o��\�;\��� \"��\�]\Zyi\�kL��wcƷ\�o��{\�m��\�O._�,���C���&]\Zviޥ���>D�	�E\�\�nBb\�ԇ!�\�i�\�K=�������_}��\�	� �L�4\�ҰK�.��4�\�, ��\�F\�\�\�/�\�\�w�\�48���\��\�N|�ѹ\�\�}v\0\02�4\�ҰK�^M7\"QC�\�<�\�g\�5<\�\'\0\0d	\�A�9\�⊛7o��\�܎}�Qq\0\0O�\�_ \"(�:�8ᛡ\��:��P\0@摦^\Z|i�\�\�<\�Ǖ�\�~�\��c\';{�߲\�\��[�lk�u��5/\0\0�wH.͸4\�ҤK\�.ͻ4�\�\�G�\���%,\�\nendstream\nendobj\n4 0 obj\n<</Length 211/Filter/FlateDecode>>stream\nx��QKo\�0�\�W|Gv��]�{prڭ�ftj�\�i\���k5M\Z\ZE\�>X��=\�Nt\�ZbL��c�\�b�a\�ڽgx�؈�\�ē\�.�K�JH$Y>6\�:C�`b�\�x#n\�\�z#>Ֆ�`�Dg�=c\�ek�	�V\ZU䲯}[@\�TI�̇�e��#�\"l)Ħ/��\�r:��I�4��I\�\��\�61\�\�u�2TC\�#\�?8��\�Q[�X��I�j��|^q\�\nendstream\nendobj\n6 0 obj\n<</Type/Page/MediaBox[0 0 595 842]/Resources<</Font<</F1 3 0 R>>/XObject<</img0 1 0 R/img1 2 0 R>>>>/Contents 4 0 R/Parent 5 0 R>>\nendobj\n3 0 obj\n<</Type/Font/Subtype/Type1/BaseFont/Helvetica/Encoding/WinAnsiEncoding>>\nendobj\n5 0 obj\n<</Type/Pages/Count 1/Kids[6 0 R]>>\nendobj\n7 0 obj\n<</Type/Catalog/Pages 5 0 R>>\nendobj\n8 0 obj\n<</Producer(iText� 5.5.13.2 �2000-2020 iText Group NV \\(AGPL-version\\))/CreationDate(D:20220530200528+03\'00\')/ModDate(D:20220530200528+03\'00\')>>\nendobj\nxref\n0 9\n0000000000 65535 f \n0000000015 00000 n \n0000000353 00000 n \n0000010371 00000 n \n0000009947 00000 n \n0000010459 00000 n \n0000010225 00000 n \n0000010510 00000 n \n0000010555 00000 n \ntrailer\n<</Size 9/Root 7 0 R/Info 8 0 R/ID [<fc953932a0b57c7d1e9af57468cec29d><fc953932a0b57c7d1e9af57468cec29d>]>>\n%iText-5.5.13.2\nstartxref\n10715\n%%EOF\n','2022-03-30'),(21,'COMPLAINTS','2525','System','QUARTERLY',_binary '2525 Haifa 2 2022\n5 6 8 66.25','2022-06-27'),(23,'SURVEY','2525','Service Expert','MONTHLY',_binary '%PDF-1.4\n%\�\�\�\�\n1 0 obj\n<</Type/XObject/Subtype/Image/Width 550/Height 298/Length 182/ColorSpace/DeviceGray/BitsPerComponent 8/Filter/FlateDecode>>stream\nx�\��1\0\0\0 ��g	O�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0���\�\nendstream\nendobj\n2 0 obj\n<</Type/XObject/Subtype/Image/Width 550/Height 298/SMask 1 0 R/Length 9898/ColorSpace/DeviceRGB/BitsPerComponent 8/Filter/FlateDecode>>stream\nx�\��wU���\���\����|��]�V+Ea�&\�\�p#�:=��=\�t�\�A@	A�J\�G�`	D\Z�	J\�\�apD\�L���U�Ou>�yO6��9uN\�S�ߪͳ׳�N\�S�\�ީw\���:Uw\�ԛ�޸y�\�Ϗ�t�ݰm\���?\�\��\�5��\�z\0\0(ҁK7.��t\�ұK�.��t�u\�b�\�\�_��cW_닛��\�\�\0\00\�\�K�/ݾt�\�Ds��\�3�\\\�\�\�\0\0܇H\�/\n�2\�͙s^\�sм�\0\0`�\�@���k��\�/w���\�5\�\�\0\09A� jA����\�g\�^\�2�\Z\0\0\��h�~\�|s�Vo�\�\�߬7�\0\0\�ф\�B�1m\�|q\�ʎ7�W\0\0\n�(C\�1\r\�\\�\�RǮ>��\0@�q�>\�ut�n\0\0`\Z�>j\�|s��i\0\00mD\"5�\�\�\�4/-\0\0\ZQɔ�:}\�Õi�,jKnqiS�[l\\�:Zgy˚��d��\0�{BT�|\�������\�\�4�j�\��ƽpo���\�d�.\0\0JCw��\�0�q\"�q\�]=\�\0�\�!Z���3\�.�����t.i\�9�(�Ѣ\�\�M�\�Ն��ѱ���t̓�O\�sO9����\�\��)OF9RG�i~\�CN�s\�bED+�{�ݾ}\�\�-:\�&z8#�Y\�T[�\�\�VL9\�\�x+|E���k[Hh��!kd?\�\�4/F\��������\�e�\�\'�}��E$�s\�\�S��\\MF\��\�` b��+�\�\�\�\�\�\�WG\�e��k\ZT�H���\�)\�SE̍�ʶ��]��m<�0vُ�\�]1��XQL���_|]�ǫ��~�\�\�8\0\0q~\�\��W+_K\�uǳ\��\�\n����\�M��QL�\�\�c\��\�{\���~��q8b�B1\�\�\�\�\�\�0sp\�\���\�\Z\ZcXx�\�Ia�0�}��\��ͳOM��$:�Ȥ\�\�\�˶\�q�\0����m�%�\�P\�\��%N�<㸰n\�\�\��W�h�q����q��B̊\�\��!�\�\\�q�pSjq0�\�ۯ0NH�G,Ɖшn\�~��yT\�\��y��\0\�		�\�8\Z\�\�\���;{4\�\�aV<8�\��q4���ޣ\�Q1\r�f\0�8G#�ٰm��N�s\�p\��qB\�<b1�Ft���\�\�QQ?\�\�aV<8�\��q4��g\�\�ͣ�~0�\�ۯ0NH�G,\�шn|\�/:E���i0�\�ۯ0NH�G,\�шn�\����Y���KcnfŃ��8!a�G#�)�q\�07\0@���8i�c00\�		�\�8\Z��̊\�qB\�<b1���\�8v\\�q�`\�~=�qB\�<b1���\�imۤ�8~0o��8!a�Gce���\�{�\�\�-k\�\�Ҧ��\�\\��q\�\r��Y�`\�<NH�G,\�ј�iU�(�y\��\�N1\" \�\�/�\�\�V\�\n�E\�\�\0��q4��j\�8��h#��\\\�>\�\�I�\�^�M�\�Y�\�\�v���We5�\��\�l\��\�\�:���\�[\��C\�\�<Y\�ȑ�\�\���)OF9RG�i~ʓQ�D�my^l8�qj\��l�H4�\"�6N�!m�����=\'l\����&ݢ���]8�ɧV\�\�-gtt4W\�\�\"g㶞S�\�Oy2ʑ:JM�S��r$bm˳iɱ`��PS��[\�V�!L\�\�M�5O㔝߉c>�\�y\�`\�ʁ�0�Xf\�4&\�\�c�>�e\��8����q�`\�~=�qB\�<b1�\�\�8⑆�\�]�\�#�N1.�LO17W�ת��y\�bMq���;y\0\��8�\�\Z\'oO+\��1㄄y\�bMq�S��q�\�㄄y\�b\r\�I\�o0`��0�X���8iA�\r�\��q4\�5N\�\���q�\�㄄y\�b\r\�\0\���)�q\�07G���\'$\�#\�h0NZ0+�\�		�\�8\Z���\�`�8!a�GS\\\�8د�8~0o��8!a�GS\\㼰~�\�\�8̊\�qB\�<b1���\�)\�\�8\0\0q0�\�G���\'$\�#\�h0NZ0+�\�		�\�8�\�\Zg8�l\�C�\r�\��q4\�5N\�\�\�\�\'$\�#\�h�Ӹr�{�gӪ��\�c@�ՃA%M�5s\�0+�\�		�\�8\Z+\�\�_�H�?Nz\�\�\�giSK�47\0@��1\�Pʌ#~�\�hQ;\�x\'�\�g8��8kۻ�\�\�v\�j�\�-z\�\�\�ۿ�s�շ{\�94�n�ʓE��o\��f~ʓQ�\�Qj���d�#k[���\n\�8	5u�\�2��z��\�\�M�\�O٭�=O�\�\�\�j�\�-z\�9�ɧ���շ{\�\�Uy�\�ٸ�\�\�\�G�)OF9RG�i~ʓQ�D�my^yj \�$\�\�-\�8G4Y�\�[\�j��\r�	�eVM�\�\�@�iU[\�5e5=\�V�\���\��\��q4�1��R�\�\�]7��� ��q��\'�V-$\�#\�h��{�\n\0�\�h0NZp\��qB\�<b1���\�)\�\�8̊\�qB\�<b1�\�\�70NH�G,\�\�`����\�		�\�8�\�\Z�{_�\�\�8̊\�qB\�<b1���\�Y\�ѥ17\0@��)�q\�07G���\'$\�#\�h0NZ0+�\�		�\�8\Z���\�`�8!a�GS\\\�;��8~0o��8!a�GS\\㴶mҘ�Y�`\�<NH�G,\�\�\�8e�\0 \�\�`��\��1㄄y\�bMq���Y5fŃ��8!a�GS\\\�p\�	\�\�\�\'$\�#\�h�k�20�\�ۯ0NH�G,\�\�\Z�q\�\�\�\�K�Z\�\�>.i\�\�T̬��q�\�㄄y\�b��q\�/X$h\�,oYS���+V\�/07\0@��1\�b\"\�ȋ�Ume+��\�k�\��S\�\�ss\�~\���\�d5�\��\�8���7Y}����\��g9r俳\�`~ʓQ�\�Qj���d�#k[�\�\�?�qj\�d7�&��h�h2M�Y�����C\�\n\�_\�#�\�_�\�-\�\�\�s�\'G��\�[\�\�\�h�ʓE\�\�m=C|���d�#u��\�<\�H\�ږg\�£�\'��n�(Ɖ�qM4\�\�cm���Ϫq6�r $\�#�Y5M*\�yi\�Ɲ\�\��P����f�\�>�?\�S\��y��\0\�		�\�8�z����_��\�\�O��6��\�ͪ9\�ȢS�ˌ�)��q��\'�V-$\�#\�h\�3N����	+t�\�\�l?v\�\�ј\0 \�\�\�g�\�cW\'\rd:ϻI�\�\�3ߏy3G���\'$\�#\�h\�\�\\=�\��bi&\�\ry\�O_V�~07�\���y��0�X��I\�8�\�\�Dsh2�\�p>�\"\�\�\�\�\'$\�#\�h\�r���\�	�\�����,\�\�\�\'$\�#\�h\�:Z�6cI]BP�^\�~V\���~��q�\�㄄y\�bMq\��\���\Zs\�\0\0\��8�\�\Z�s\�p\��qB\�<b1�&\�p\'X\�g\�=�y��0�X���8iA�\r�\��q4\�5\�p,\�\�\�70NH�G,\�\�\��{�;\�\�}7\�aV<8�\��q4\\9\0\0�G�q҂#\�``�\��q4ŝU\�\�\�q�\�㄄y\�bMq\�8y�\�\0\�70NH�G,\�\���8e`?��_`��0�X��1|h\�\�\�\�\�=�6�\�g�:���iOS�\�\�8̊\�qB\�<b1�&�Y5\��\�*c��EBd�H4��#\�\�Xs\�\0\0\��8\Z\��8\"�\�8\�8�!=\�q�=�S?Tf��\�]���u�\�r��~\��\�cV\�\�-g�\�H�ʓE��\�\�\�\�Oy2ʑ:JM�S��r$bm\�����\'��nqJre��K\Z�V�i\�)5\�ϿqN�\�c�N�\�Z9����*O9���?���d�#u��\�<\�H\�ږ\�\�\�8bɩ���\�a>�\�y\�`\�ʁ�0�Xf\�491��L�#�U�Q\��y��\0\�		�\�8���\�n\�C?k���6N�J�/rﺜ�\�8\�\�\�ʟ`\�Z��0�X��\�\�8�粿\�@��>��q\0\0\�`M�\�\�<_\�&7��M�u]\Zs\�p\��qB\�<b1�&�1�\�\�aV<8�\��q4Ž�Z\�\�\�\�\'$\�#\�hR3\�\�\�n\�\�\'�\�~�㄄y\�bMj�jwnk���ט�Y�`\�<NH�G,\�\��<Nk\�&��q\0\0\�`MZ�j/\r\�H�St֘�#\�``�\��q4\�ͪ�~h\�\�aV<8�\��q4ŽV-o�j�\�`�8!a�GS\\\�\�\�\�\�o0`��0�X��aV--�\�㄄y\�bM&c���S>4u̍\0\�h��U�\�\�\�\�bn���1NH�G,\�\�db��ӗ��U\�۝<�\�㄄y\�bMF\�q<�6\'oO+��\�		�\�8�\�^�V\��y��\0\�		�\�8\ZC\�4�\\=\�sy\�\Z��ϥM-z��pI\�[37�\���y��0�X��I\�8jb��{�\�_�H��#��V�\���+V\�/07\0@��I\�8\�Ǯ�{G���\\�td\\\�#��F12Ɖ\�\"�)[S\�\�\�S1�\�kۻd5�\��\���Ё\�Ǭ�\�[\�\�ɑ\\�\'�9�\�\�۟��d�#u��\�<\�H\�ږ\�\�\'��1NBMݢ/\�\�;�����q\"�h\�D\Z*�qN�\�c�N�\�Z9����*O9���?���d�#u��\�<\�H\�ږ\�d`Q��>m�h-k\�\�8�\�㔝߉c>�\�y\�`\�ʁ�0�Xf\�4��ǩ\�\�8z\�\�\�D+\��8����q�`\�~=�qB\�<b1�\��Z5m�\�Z5��S�ˌVK�\�8\\�\\�\��q4�g��\�;y8د17\0@��I\��o��\���\Zs\�p\��qB\�<b1�&�k\�07�\���y��0�X��IkV��{�%�q�`\�~=�qB\�<b1���\�q\��8~0o��8!a�G�\�yu\�/\�R\�ʗ<tű�c\\\����8n���\�On*��qk�O\��n2�ʶ��/_w\�nJ\�qe�rJ��\�ғ?�j�/���\��m\�d4\�\�\�<NH�G,\�\�\�\'\�q0\0��q4iͪ�44\�y�S\����㄄y\�bMFOd\�\�y��\�\�\�<NH�G,\�\���l��{��\�\�\�\'$\�#\�h21N麵|\�s\0㤅y��\0\�		�\�8�T�S���X�}\�Z3�j�0��\0\�qB\�<b1�&\�4tÙ\��\�V�\�8\0�C0��>\�_0p�\�\�z0N\�\�1?b�\0c��0�X��I\�8���]�O\�ğ��2\�I�Yq\�\�<\��u�\�\�]\�e͞���\��D\"z��۷\�_\�u$q��MM���_}�0\�e+�v\�]����1��5��O��\��\�\��M�x�ĞrV\�NOO�\�i\��I�:U�<Q�R�\�K��\�/ݎ��mO�&\�Ѥ:�v\�\�y��q\nO�3�spF\�{3�J\�\�\Z�\�\���\�q�\�v�_b\��S%�N0{\�\�=�ӓ��\�\���\r�\�}\�X�K\�Ru\r�\�Y*�\���\�\�\�yB�_;��joB�zf\�\�9�3\�7sn�Ys�\��5O8\�=\��\r\��Se<�\�\�dNǘ�B|j㥯/��ĕʕsp�\�\�ΜsB��\�qa\�3\���q4\�\\9po�-mjiP)�=�:�\��\���q0N�L�\�\�\�-k\�2Ѣ���a\�\�\�\�\�\�y��q0N֔�e/[Ѵ��\�\�b	��q0N�4�\\�8\�c\�q�j:�{__E\�8�\�ֿ�GV��n\�\�c��z\�k�uΩ\�~��\�\�{\�my\�0\�ҽ\�j\Z�q~����}�a\�\�`���n�@\�I8Y3��h�����\"b�͝��\�\�o�\�\�[t9���^�f�3::j�\�~r6n\�91|ʶ<a\�Gj\Z�q�V\�Mا��8\�$D�[,�qD(\�ƙr̪��+��q�UkfVm291��R��+\�D4nVMޝr\�\�\�`�<�q���j~�8\�䊁c\�5\�>a\�뿘�o~\�\�\��p<\�;΁\'��9��՘�VU>�xߤ\�}i�\0\r��H�\��	�\�\�y|��Wxl\�ǒ��q0\�\��m�4\�\�c�\�}�\�G��\�7�\�[c,1�\�ܹ�\�y{\�8<��	\Z�&q�\nj���-�=O�\�}�+�+��ě�>r\�������\�?\���\�jb��q�\���y��q0\�1\��\�`��q�Mq�ì�	\�`�3m�k�0��8\�`�iS\\㔁q\�0\��8\��\�\�8\�`�i�q0\�=�y��q0δ)�q\�w�LX�~0\�_�Y�\�KOOb\�ӯ\�\�\Z��\�6_�~-y�\n��:])XT\�-/>\�1�T$��\�`�\��\�\nV���\�K\�nn{\�\�\�%n��ݎ\�;�a�\�,�\�c�G\��\�\�࿺4���w\�\�\�\�Ϻ�E���\�\�\��J�$\�\�(qk��RN)��\�\�nl}\��\�\\^{�\�\�e	\�\�8\�`s0\��8\�`?`��q0\��8~�8\�`��q2�cg�\�`��q0\�\��S\��8\�`�Z���\�\�-k\\f�x\�0\��8\�`�ZX��1�)\ZjZզ_$�q0\��8\�\�B\�8��(S\�8z\�S��q0\��8�\Z\�S4�����h�\������qO��;�\�j�\�-��`�SV/]ӳG�!㼽cU|F9�\�o\r\�8\�b\�\�a��\�Lh����\�j�Rx婁`��\���ŢǱ�eM4�)\�\�[\��\�VD����Kxnm��&ݢ\�	\�8e�\�5\�\��U\�\�|��\��`��{V�a�j�\�r\�0N\�\�o\'�\�`��\�vUk�%;�q��X8\�D\�\�\�\�q��,�j̪\�8\���q�UkfV-Ɖ�I�\�<6�q/��)O\�4c��q0\��8��8\�`��q2b8�V\�8\�`��q\�\�`��q0\��\��8\�`�\���q0\��8\'#\�\�IX\�`��q0ƙ6�{$��q0\��8\�\��8\�`�\���q0\��8\�\�`��q0NF�\�20\��8\�d\�)\�`��q0�0\��8\�`?`��q0\��8~�8\�`��q2�{_�\�`��q0\�Ɉu]\Z��q0\��8�\�/X\�0�t\�Ҧ��pI\�[�8\�`��q��iU\��5�q\�j�L�/�]~-`��q0\��8�Sf�\�\�V��j�,\��8\�`�S#\"��\�31��U\�\Z\Z8v�\"b��Ϟ�\�}KV��n\�\�c��z\��˻��a��\�߃Q\�\�w�\�8\�b\�\�a��7�Ze0\����?\\�U\n��\�8	��[,�qdt3��j\�\�[\�`��mSE\�8ϭ\�~�w�\�j�\�-��`�SV/]Ӯ�+\�0ζ\��\"���\�]\�\�0N�Xu9a\�\�}	�2\�,�Ug�V)�\�p0\�$�?n�\�Y޲F�3	+$\�(�Y5fՊe�\�x\�8̪53�6�<G8\r\�\�\rg\�Ek\�l��8\�`��q2\">���2\��8\�`�3m\�W$��q0\��8\�\��8\�`�\���q0\��8\�\�`��q0NFp\'\�20\��8\�dO+(\�`��q0�0\��8\�`?`��q0\��8~�8\�`��q2�cg�\�`��q0\�\��S\��8\�`?`��q0\��8~�8\�`��q��q0\��8\�dā��\Z��q0\��8\'#^X�U�q0\��8\�\�\�\�e+\Z\�RӪ�(sy\�\Z����e\�-`��q0\��8S\"fY��Q�p�\'P\�	`��q0\��8S\"C�ƕ��\�-\�^�b\"�\���q0\��f���I\�8=)\Z\�]���8��GF7\�1\�,^�\"Z!2\�0�D\"�r���l-�q\"�D㚲1N��ܲ��\�\�M;͋�5Éc\�0��({ӼYC\�C�\"6\�\�\�q�qM�\��8\���)��C�\�o=��P��̓q�յj\�c��\"�Vmʓ8y��j��@\�C�\"6\'\�	\0\�o0��\��X���\�`(P��\"6\n�\'-h��P��[Dl0(b1NZ\�~��@\��\�`(P\�b����C�\�o=��P��\�8\0\0\��\0\0~�8\0\0\��\0\0~�8\0\0\��\0\0~�8\�\�wrsI?n\Z4�\\=�-ȧ��?�m5��\�雵�WͥM-�?���u��E�f�\�6��V�Y��[�cA���?�F�(;z\�=�\��e��m��H1\�]�[͈Lox��:\�~\�\�8\�\r3\�Æ�T3\�@\rƑ=U��\\_��;\\<D7�v�4�\�� :>�v_�\0I6\�%*�Eѷ�]\�挍��jfg�<\�\�=�*S\�WS�qw�7��s\\B$�Ɖ?\�\�u�e{<:�p��\��kV\�\��v��\�r\�w�G�\�䡚�<@�\�ՌfH®�[!k\�\�VS^G=y�Ք\�Ÿ��\0\�\�x�MuF. \�\�*\�\���\�\�\�\r3\�`\�^7\'c�L�)+d\�y��#:\r��Q~\�8ve\�c�`�\�D?\�k\��F�C4�\Z\� w��\�L�ۿ5c4W\�\�\�v25�y5��`N��ݥ �u����>�\�Ϯ\�4tͫ��1�7��\"z�\�\�\�f5q*oEq-\�-V�GՑmٿq̫m��\�u\\�\�����\�\�Ѽ�\�y�WW�\�My�!\�\�\��S�;��y�դ�ԑj\�\'\�\�8\0\0\��\0\0~�8\0\0\��\0\0~�8\0\0\��\0\0~�8\0\0\��\0\0~�8\0\0\��\0\0~�8\0\0\�����\�\�\����\�\�?�|�D\"�H�$\�ҥc�\�]:��GJ�֑/^�|���\�\�o�H$)�$]�t\�ҽK\'_�tR1\���?�\�?^�v\�[�D\"��{�N^��<gׁ����t\�֭\�I$�\\�\�]:y\�\�\�7\�/\�l�s#{\�<\"îH$�h�N^��:e!�y��\�H$)!�b\�\���c�D\"%�T�#�ٰm_\�\���\�\�����~r�|;ƭ\�?�n�O\�[��\���\�KO���\�uV�\�t\�w��\���\����u>�]��\��\�u�\�w�H�\�kɑ�v>�\��nl}\�\�\�o���N\�>\�=�oΜ�s\��;\����\Z�\Z�4\�_y\�2\�\�G�}\��#]�\�e]\�tҖ�Fgt�7�{x\��|0kϩY{O\�\�;2�\���ץ�=\�\�5,�\�\�y�\�\��.r:iˮљsߛ5wxּ��>�\�pJx����;-ݢ\�Ϛ7,�͜sbKw \�2�q\�{�\�\Z\�4\�d�\��ͳOm~�T\�\�#�W^�\�Wg\r\�j\�g�\�H\�S1�覫�h�ƹr\�.\��8\�`���#�|�\�\��8i%��q0\��8\�ݜ���|\Z\�-\r?�R\�@����֟5l��\�-T,R*\�\�i\�Ku�Z�T��ϊO��\�&R1N>+��Q�P�\'�\�Ŋ�*\�\�\�?��Ŷ��qD7Wo\�l�{���n��zO\�j=�=$\�D*{v�\�mm������ۊl��J1]�q�[�h{�\\�qr[q�\\��q�[�\�\�\�o��V�T���N^��zL!�\�ܹs�cW_��S�\�U\��Z�Ͱ\�\�\�5N�+�C\�\�k�BT�\�\�5N\�+>\�ڰeK�\�\�k�<W�T\�\�\�89�x�f\�7��\�\�X:6�Q�ƹz��.[�ƩT�G�z甽�4F��<1#T��ڼ\Zݎg��;��j; #\�\�\�U\nY�q�P���^\�\�\�\�\�+^�qr\\�\nP�^\�\�\�~떪�j?H\'_�qD4\�8������ԍSqlwwT\�):�Z#Q9\�/Kߣ?\�^�i��Iy���q\nP�*o\�i�|W�n�\�:��늏8\�\�⺐�7\�4N�+�ެ�o�\�8�͝�Թ�����q�vʄ\�\�\�\�\�}ҿ�\�N�<x\�ZٗWfz\�\�\�\�g��\�\�\�\�k�\�\'W\�\�m����OU\�,\�8���$\�ċY�qD1wT:�Ʌio�筁���0\�Ym�T\n�I\'=a�<W<�efxǼ\��eY�\�1�xY?�f\��<N\��x\�\�\�o\��\�W6�t�\�ք(F\��\�ۯ\�杨\�7���\��.\��ĸ�\�\�\�w/O3\�\�\�9ު\�2�k\��Z�\�R�\��!�_��׊W\��\�}�Z�+^q�\��Zn+>Q\�J5�\�8\"Q̝\�\�̹ӻ��\�ڵk�l\���|�e��N�\�ԫN,\��\�b\'\�\�\�\�wY坒�F��\�\�K\�cc�\�M �\�\�\�\�P�\�}��\�\�K\�\'RF\�\�m\�\'>Pi���{�\�T\\}�Bͥ���qD+\"�;�\�\�w�c�J{��\�s�ҿ\�@A*��=\nR��\�9P���~ρ�T<�{�\�\�6�h��n$�\�\�_��ڕG\�$q�\�r\�]n�\�M�w���qD(��jƑ4t�\�\�{|*较\�`�0\��8\'T\�HWOj��Pt\�Ro� ƙ^\�8\�`�\��L�I\�ܼ�\�õo��CǮ_�n�� �H$RVI:y\�\�k��HDTR�q$}q\�J\�7[\�8$�v�\'\�>D\"5\�ƥ�_\\�Q:nV\��￷���H$)�$\�{\�j\"\�\�=\�&\Z\�\�2���o\�K_�\�\���D\"���{�N^��Z&\�\�ut�\�77o��&_��ʎ���\�gW�\\�R1\�!�H�`�t\�ұK�.��t�	\"M�,j?w���N�M��N\��\�y\�\������_~�\�W�H$�D�.]:v\�ޥ�����D�\\]{�ӟ�\�\��N�\�\�HIڻ������\0 \0�K��]��j�)�\Z�\�9\�t\�܅i\��\0\0BBtP\�ii�۷o��\�B\��#�<\�\r\0\0\n�t��\0A��\�٥�_|}l���]}�\0 x���_�}�4O�\�ꍛg?��\�\�HW\�\�\r\��=�a��m\�\\�\�߬\0�\�!�t\�ҙK�.�t\�\�\�KW_�/�\'!�\�\nendstream\nendobj\n4 0 obj\n<</Length 280/Filter/FlateDecode>>stream\nx��R\�n�0��+��HA��4\�>rOé\�e\�:\r\�\�`Ch����R�b�^�4�<3+��!�\�f�\�\�f#�\���-�v`-�˙�e\�rb	Di6�x�B\�!?�ϳ���\�5ZZ8J{)	{{���7^-\�\�9.�\0\�-v��w���\'�/�w6\Z���\�\��\�\'\�z\�\�fip}�Nn��2򣑶�\�ԅ\�w\�\�< āБ3\n	��Y.:ES\�	�H+R~�&�B7\�\�/\��D�\�\�\�h-k�^���\�T\r5�y}oP��\�i\nX$\�*\�\�TE��^\�x\����l���\nendstream\nendobj\n6 0 obj\n<</Type/Page/MediaBox[0 0 595 842]/Resources<</Font<</F1 3 0 R>>/XObject<</img0 1 0 R/img1 2 0 R>>>>/Contents 4 0 R/Parent 5 0 R>>\nendobj\n3 0 obj\n<</Type/Font/Subtype/Type1/BaseFont/Helvetica/Encoding/WinAnsiEncoding>>\nendobj\n5 0 obj\n<</Type/Pages/Count 1/Kids[6 0 R]>>\nendobj\n7 0 obj\n<</Type/Catalog/Pages 5 0 R>>\nendobj\n8 0 obj\n<</Producer(iText� 5.5.13.2 �2000-2020 iText Group NV \\(AGPL-version\\))/CreationDate(D:20220601142413+03\'00\')/ModDate(D:20220601142413+03\'00\')>>\nendobj\nxref\n0 9\n0000000000 65535 f \n0000000015 00000 n \n0000000353 00000 n \n0000010912 00000 n \n0000010419 00000 n \n0000011000 00000 n \n0000010766 00000 n \n0000011051 00000 n \n0000011096 00000 n \ntrailer\n<</Size 9/Root 7 0 R/Info 8 0 R/ID [<2beb5b53b5cecc160fb5e31bede1e13e><2beb5b53b5cecc160fb5e31bede1e13e>]>>\n%iText-5.5.13.2\nstartxref\n11256\n%%EOF\n','2021-09-15'),(24,'ORDERS','1010','System','MONTHLY',_binary '1010 Karmiel 06\nProduct 10 Rose Bouquet\nItem 4 Cactus Flower\nProduct 2 Sun Bouquet\nItem 15 Bazil Plant\nProduct 20 Colorful Bouquet\nProduct 1 Holiday Bouqet\nItem 28 Pink Tulip\nProduct 30 Casual Bouquet\nProduct 3 Birth Bouquet\nItem 17 Bride Bouquet','2022-06-02'),(34,'SURVEY','2525','Service Expert','MONTHLY',_binary '%PDF-1.4\n%\�\�\�\�\n1 0 obj\n<</Type/XObject/Subtype/Image/Width 550/Height 298/Length 182/ColorSpace/DeviceGray/BitsPerComponent 8/Filter/FlateDecode>>stream\nx�\��1\0\0\0 ��g	O�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0���\�\nendstream\nendobj\n2 0 obj\n<</Type/XObject/Subtype/Image/Width 550/Height 298/SMask 1 0 R/Length 9875/ColorSpace/DeviceRGB/BitsPerComponent 8/Filter/FlateDecode>>stream\nx�\�ksՙ�\��\�K�_�<5U_��\�\�ԙ0�pDR��\�\�d���1������/�2�-!	,\�c\�\�AN\�\�\�fa`�\�\�y��\�z�{\�ֶv�z���UO�v�ݻ�Z\�w��\�\�\�\�ss��\�\�\�~tdt���Hs[\�3\�\�Omn���\�\'\�\0\0�C:p\�ƥ3�.]:v\�ޥ����n]�<]����{\Z�\�\���/\0\0@�HW/�t�\��{͍7N��\�\�w\�\0\0܆H\�/\n�2\�ͩ3^\�7h^_\0\00Gt R\�\�5�\�\'{\����f�:\0@N)�\ZD)\�f\�\�\�\�/u�W\r\0\0r�B4Q�k���\�?4��_5�\�\0\0r�hBd!\�X�n>�\�\�\�W�W\0\0\n�(Cı\�\\���\�=\�\�\0�!\�}\�\�\�\�\0\0�\n}\�>\��r�:�i\0\0�bD\"5�\�\�\Z5/-\0\0\ZQɲ�;q\�Õi\��y\�\�\�ȸ[\�\��\�in\�Je��\0�[BT�|\����\�\�lj*\�N^�_\�5\�{KL�&\�w\0���P~�w\�M������#\�\�!\0\0\�JEݜ:s�\�Mld�s�\�%�#��-�n\\��j\�\�\�\�|\�\�_�\�A�N-$rȹ��mm=\'~�~~ʓQ�\�Qj���S\��X\�J�\�k7n\��y�N��\�R7\�g\�\�\�v\�8\�\n_�\�GǤ�ږ�Z\�e\�\Zُ�7͋�5Dl0\�?bE.ew�>u���o��DtN�}ʐ��\�(\����Dl0\"bE1\�8�}��}u4]67��І�N�D.�\�\�r\��Ts\�\�\��O[_�-�\�\�� ��\�۠+&b��+��:�\�^�ǫ=۴Kcn\0�8������\�ˉ�\�x\�;_]�T��ܩ��� ���:2~\�|�\�*�4\�\�\�1\nq\�X?D�~�~�y�\�\�o;^\\36ϸ�R�	a�����Ļ�k�/r�ZȒ\�\�\�˶\�q�\0����m[#�m.�VS�c/�:*l]����\"\Zg�\0n�fnfŃ��\��C\��\�D�hܙ�\�M�\��8~0o��8!a�\'BD#�9�\�G\�QQ?\�\�\�\�\'$\�#\�hD7GF\'ͣb�v�h̍ìx0p\'$\�#\�hD7]�G̣b\�\�8\0\0q0�Ft�\�+��q8b\�8!a�G#�y��=�M\�bnfŃ��8!a�G#�yjs�yT\�\��y��\0\�		�\�8\Zэ\��E�Hw\�\�����z\0㄄y\�b�\�\�\�\���[[�4\�\�aV<8�\��q4���\Z�s\�\0\0\��8\Z��1c��0�X���8i��x0p\'$\�#\�h�k�ᑣ\Z�\���\��\��q4\�5N\�\�\�\Z�\���\��\��q4Vƙ��uJp�\�m�nqpd�8\\\�����ݠ�q�\�㄄y\�b��q65��[\�t�\r9ň�$S�&N~ +\�	�\0 \�\�\�Ϊ9\�b�Q�,Fr���\'��{]6��g՞\�\�*��\�/\�j�\�-z\�ٵ��߶v[}�����o\�<Y\�ȑ��ξ��\'���\�4?\�\�(G\"ֶ<\�m\�8	5u�y6N$\Zy	E\'Ґ6N\��ʁ�O�\���.�\�_�\�-\�\��g\�~h�\�\�r���rU�,r���\�T~ʓQ�\�Qj���d�#k[�\�1�qj\�sk\�J4�)\�D��\�c���;q\�g\�8\\9\�ˬ�\�\�8z\�\�\�\�q�L}g\�G*`?��_`��0�X��11�xdn!9\�Dת9\�H�S�\�,\�SE̍Õ?���j!a�GS\�\�\�\�\�N�\0\0q0���\�\�\�\�\n8b\�8!a�GS\\\�anfŃ��8!a�G�q҂�\'$\�#\�h0NZ\�~�㄄y\�bMq�\�\�ѣ17�\���y��0�X���8\0\0فq4\�5N\�\�\�1㄄y\�b\r\�IfŃ��8!a�G�q҂�\'$\�#\�h�k��C\Z�\���\��\��q4\�5γM�4\�\�aV<8�\��q4\�5N\�\�\0��q4\'-8b\�8!a�G�q҂Y�`\�<NH�G,\�\�\�8\�d[\�o0`��0�X��)�q\��8~0o��8!a�Gch���!�p\�MM\�s*�ǀ6��JZvk\�\�aV<8�\��q4Vƙ��⏓>�R�Z�38R�G̍\0\�h\�8\"�2\�_$3Z��N4މ(���=Ζ�.\�\�-����u�\�r��\�\�\��vo9�\�\�Uy�ȑ#�]{_\�Oy2ʑ:JM�S��r$bm˳徃�\'��n�XƑQ�^ݸ)5=�)�Հ�\��\�Ĥ ݾ�&ݢ��3g?<�����\�[\�\�\�T�ʓEζ���ɓ�)OF9RG�i~ʓQ�D�my^|t8\�$\�\�-\�8G4Y�\�[\�j��\r�	�eVM�\�\�@fSS{\�5e5=\�V�\���\��\��q4�1��R�\�\�]7��� ��q��\'�V-$\�#\�h��{�\n\0�\�h0NZp\��qB\�<b1���\�)\�\�8̊\�qB\�<b1�\�\�70NH�G,\�\�`����\�		�\�8�\�\Z��w@cnfŃ��8!a�GS\\\�lm\�Ҙ\0 \�\�\�8e��#\�``�\��q4\'-�\�㄄y\�b\r\�I\�o0`��0�X��)�q�G�j0�\�ۯ0NH�G,\�\�\�8���k̍ìx0p\'$\�#\�h�k�2̍\0\�h0NZp\��qB\�<b1���\�\�۬\Z�\���y��0�X��)�q�r���\��\��q4\�5N\�\�\�\�\'$\�#\�h�\�\�7=\�spd\�=\���\�Kz���17�\���y��0�X���2\��̬��\�\�\�[���+V\�/07\0@��1\�b\"\�ȋMM\�e+��\�k�\��S\�\�sGg��LS��&ݢ���~\��\�A�o��3|\���\�!G��;z�S��r��R\���\'��X\�����C�\'��n�@\�qh2؉V�&\���e)\�O+88��\��\�>YM��Eo9�N�����vo9SSS�*O9\�\�z\�\�}/?\�\�(G\�(5\�Oy2ʑ��-O�\�G�1NBM\�bQ�!\�h��\�8\�D1�U\�<l0p\�@H�G,�j�T���\�\�\�\�te�{\�OU3N�Z�ǉ�\�)\�����z\0㄄y\�bM�\�雪\�\�3}I�\�\�\�8U9\�ȢS�ˌ�)��q��\'�V-$\�#\�h\�3\�ЙsI��u��\�\�l?�v�h̍\0\�h\�3N�\����L\�97(�i\�|?\�\�81c��0�X���w�3}\���\�\�L�򴜸���`nfŃ��8!a�G��q�\�\�Esh2�\�p>�\"\�\�\�\�\'$\�#\�h\�r��\�\�	�\�s���,\�\�\�\'$\�#\�h\�:Z�6�I]BP�^\�~V\��\��\�\�8̊\�qB\�<b1�����~�i�\�\�8\0\0q0���\�)\�\�81c��0�X��\�\�8�\�	�Yqp\'$\�#\�h0NZ\�~�㄄y\�bMq�3K�qE�\r�\��q4��g�Z�\�\�8̊\�qB\�<b1��+\0\0�\�h0NZp\��qB\�<b1����jy�=�\���y��0�X��)\�\'o���\�		�\�8�\�>��\���\��\��q4�\�\0\�\��\�982��\�hn\�&\�-��q�\�㄄y\�bM*�j\�/:\�T\��̬\'�dF\�q\�D5��\�8\0\0q0�\��<�%2N�6�hHye��\�\�\0��aKK��&ݢ��ÿ;ph\�\�۽\�NL\�<Y\�ȑ�\�����\'���\�4?\�\�(G\"ֶ</<4�qj\��%W\�9�Ҧ�vm7b���\�\�\�\�\�䪭e�355���d����g��\���\'���\�4?\�\�(G\"ֶ<\'�\��HN\�5e��`��Y5\�\�W��y\�2��ɉq�dZY���\"0�\�ۯ0NH�G,\�Ѥd��3K�Yӝ<�q�U�/rﺜ�\�8\�\�\�ʟ`\�Z��0�X��\�\�8Cg��\�@w\�\�\�8\0\0q0��~\�t��t��\�_��\�\�\�.��q8b\�8!a�G�\�\�\0s\�0+�\�		�\�8�\�\�W��\���\��\��q4�g�v7��\�h���qB\�<b1�&�Y������qx\�\�\�8̊\�qB\�<b1���\�q\Z7oט\0 \�Ѥ5���\�L򝢳\�\�81c��0�X��IoV\��3@\�07�\���y��0�X��)\�jy�U��\�		�\�8�\�\Z\'oW\�~�㄄y\�b\r�ji��x0p\'$\�#\�h2\��M-�\�\�17\0@��\�fV��{G���q8b\�8!a�G��qZN\\\�~V-ow�dV<8�\��q4�\���ۜ�=���\'$\�#\�h�{�Z\�\�\�\�\'$\�#\�h�\�\�7=ܳ��\�\r�G��\�e��xi٭��Y�`\�<NH�G,\�Ѥg5�V\�=֦gf�\�8�zSS�~!Ȼb%�\"s\�\0\0\��8���\�=2�\�\�r\�J\rґq�3�(&\Z\�\�\'��اlM����\"b9���t\�j�\�-z\�9����F��\�[\�\�\�d�ʓE��\�\�\�Oy2ʑ:JM�S��r$bm\��\�CC�\'��nїq\�\�]\�\�\�\�8�P�q\"\r\�8\'~��H\'Wm-�����\\�\'��mm=�\�L\�<\�H���)OF9��\��8G��O뛪eb�\�G�bc���;q\�g\�8\\9\�ˬ�&��8��G�\\�y�h}\'\�P50�\�ۯ0NH�G,\�\�^���]�\�#\�q�q�\�j	��+��k\�B\�<b1�&5\��My��\��!��q\0\0\�`Mz��}#�g�vi̍\�c00\�		�\�8�l�U3�\�8̊\�qB\�<b1�&�Y�\�s>\0\��y��\0\�		�\�8�\�\�)\�����z\0㄄y\�bMz\�q\�=�0K	+_�\�]W\�5=\��\\{\�{��y��ެ\�\��~_/%�B\���\�\�fn��TW6)���y>{軟\��Ƀ\�=�Wf\�d4\�\�\�<NH�G,\�\�\�&\�q0\0��q4iͪ=?6\�y�S\����㄄y\�bMFOd\�\�y��\�\�\�<NH�G,\�\���l��{��\�\�\�\'$\�#\�h21N麵|\�s\0㤅y��\0\�		�\�8�T�S���|�}\�Z�j�0��\0\�qB\�<b1�&\�<?6\�Lsez\�\�w�\0r\�\�\�g��\�\�|���\�m�#F0\�		�\�8�T�se�\�\��4N��	+c��0��@\�\�<�u\�[��xA�\�&M�,�9�\'�z\�\'�\'�����_q�of�l�\�\�ɿt\�?\�c\�\�J�\�\�-�d\�?]%���\��\��$�\�=-g�ש�\�\��J�P\�=%~\�\�v<�TKB51�&\�Y��3\�0\�)<y0Ϊ\�\�U�o�\�*��klu�c|�\�D��k��Sb߻�\�%�/�v�\�\"=�K�\\�\��I���\r�\�\�\�|\�K\�Ru��\�Y*�誎�Vu�\�\��ԟP\�G�ܽz\�\�\�uo�^_b\���\�\�l&k7�Sb��\�xw\�7��1��߂\�x\�\�\n %q�r\��/�[�\�V\�{Tx\�\���jbM6W\�څj�#\���<��\�\�	`?`?`��qje�WG7���e�Ey�\�æ#0�\�g\�=���8\�`��)\�L��`SSҮ\�`	��q0N�t�\r\�Nüqܬ�\�\�\���\�\��[B\�+�d5�\�]N0\�)�W��Y\�\�\��ɑ1N\�\�Gl\��q�r�ф�c�_<s a�6?|$\�$D�[,�qN\�L\�\�F����]\�\�\�\��ij�\�\�[t9���^�f�355e�\�~r���?n[�0��\�\�\�	5\r\�8?���	���\n\�8	\�\��bJ�q�\��j~\�\�?�af\�\Z�U[JN���\�\�>\�5��U�w�\�\��\��\��8\'\�`?p��0\��8�bx\�\�\�&<�\�O6�>��\�����/p\�!\���-e\�G\�x\���$|\���%۟�\�R6��\"�J�A\�\�\�\�s�za�p\��}�%W\�`��+\Z7o\�`?��q~\��W��v\���XW\��yK�\\��\�o�\��Ɔ��2�\�ơ�K8\\���x��\�\� _\�ݕǕM�Z\�{\�9pO��{~\��\���0��\�`�<�q�`~\�`��q\��8~�8\�`�S\\\�0�f\��8㬘\�\Z�+L\�<\��8g\�\�8e`�\���q0\�1\���1\��8g\�`�sKp\�`��b�k���<V���7mz��Ǘ�\��Wb\��\�\n�-ǧ\'^N^�\�f\�N�A\nrg\�s��\�#I�&\��8\��\'�����o\����g\�\����\��y�\�]\��\�\�o\���\��>\�t-�\�E���;�\��\�ǐL����\�Z��\�*}�|�@J��\�\�\�\�rJ��/w\�1�\�k�\�����\��8��\�`�c\��8\�`�\���q0\��8\�\�`��q0NF�v�h0\��8\�`���8e`��q0Ʃ����ln\�u�\�\�A�8\�`��qj\��\�K�L\�Ц�v�\"��q0\��8�\�\�\�D�2\�\�c��`��q0\��8�0�������8�AC\�8�*\"\���vt�\�j�\�-��`�SV/]\�Ӈ�%㼱�\�\�{0\��\�PcƩ�.\'\�<�\�hB�\�8��_�\�*�\�8	��[,�q\�m�Ѹ�l�#o�\�\�6\�gKK����VYM��E��q\�\�k\�\���0�\��\���\��(\�\�{\"\�T�U��q6��FB�\�8?�\�=\�Ze��c���\�-\�8Ѹ�a\�y�e?ˬ\Z�j\�2Nr<�af\�\Z�U˟q�k\�$5̏n܋(ٓ8\r\�`��q0�/0\��8\�`������1\��8\�`���8\�`��q��q0\��8\��\�`��q0\�Ɉ�\�qV\�8\�`��qVL��	+c��q0\��8i�q0\��8\��\�`��q0\��\��8\�`��<���q0\��8�q\��8\�`�\���q0\��8\�\�`��q0�0\��8\�`��\�\�\�`��q0\��8���K�q0\��8\�\�\��\�l�Ј��q�y�\�e��q0\��8\�,˦��\�^y\�\�7$���\�˯��q0\��8�vʌ3q��Q��\�8\�`��qjD\�R6{&\�q�jZC\�#G+\"\�y���}�벚�u�.\'\�\�K\��_\�z)\�\�����r��ͧ\�0N�Xu9a积%�\�`���|�Z���\�H0\�I\�\�bQ�#��\�\�j\�\�[\�`�q����q�\�\�*��\�/\�j�\�-��`�SV/]Ӯ�\'\�0N\�o߃Q\�c]�q�Ū\�	\�8�\�Hh��\�/\�Y�U\n\�m\�8	��[,�q�\�ze8��B��\"�UcV�X\�I�\�0�ìZ�jKɃqd�3��\�p\�]�]�&+,���q0\��8\'#\�j	+c��q0\��8+&~\�@\�\�\�`��q0NZ`��q0\��8~�8\�`��q��q0\��8\�dw�,\�`��q0NF�20\��8\��\�`��q0\��\��8\�`�\���q0\��8\'#Z;z4\�`��q0NF`�20\��8\��\�`��q0\��\��8\�`�\���q0\��8\'#i0\��8\�`��x�i�\�`��q0Ʃ����\�}njZ\�w\�m�.sp$\�&��q0\��8gY\�,\�/^\�/\�	\��E\�`��q0β\���o�a�2\�(&��^�\Z\�\�nƹ��T�ӓ�q\�\�8\Z��ɉqdt\�3\�\�\��\"㌓H$)g\�\�X \�DB�\�5ec�HI�e_�\��\�\�\�Ț�ıd\�~��i^��!b��@�\�\��8Ѹ�a\�y�Բ\�~��@\��\�`(P\�\��8\r\�Z���э{]��\�I�<@�\r��\�z b��@�\�\0\�7\n\�~끈\r�E,\�I\�o0��\��X���\�`(P��\"6\n�\'-h��P��[Dl0(b1NZ\�~��@\��\�`(P\�b\0\0�\�\0\0?`\0\0�\�\0\0?`\0\0�\�\0\0?`���;���	�:��V��T\��Ƕ�ft�<}�\��982^��kZ\�:?X�jF\�n�j5T\�z�E?\���Z�\�t���W\�ø����\�zw\�VS?�b\�\'����\��<u����q\�f��\r��f\��\Z�#{�lg��\"\�1dw�x�np\�:LinсAt|\���l\�KT싢o	��\r\'?\�\�\�8y��{dU�\�1��t\�\�Zo^M縄HN�ܛ\�\��xt\��נ�1�=\�hy\�\�=\�6�d\�\�C5ky�x��͐�]G�B\�Ʊ����z�)\�q�q�eƩ�#�\�\\@��U�\��#�\Zf����nN\�8�VSV\�:��PMGt,\Z^��<�q<\�ʊ\�N�T3ډ~�\�0�;(�:�h5\�A\�K��R�k<\�h��ǣ\�dj�jf]��T3\"�KAl\��g}���]�i\�W3�)co\�kE�~ѳ�\rj\�Tފ>\�Z�[�8��#\'ڲ\�W3\�\�\�\��pue���y5��&>��4ٛ�\�\\Ɠ��w\��\�\r�I5�#ռM��q\0\0�\0\0��q\0\0�\0\0��q\0\0�\0\0��q\0\0�\0\0��q\0\0�\0\0��q\0\0�i\�\�\�\�;�\��=w��)�D\"��K��]�w\�\�sb)\�뇏]�|�ʕ+׮]�!�H$RI�t\�إ{�N�~\�b����]�\�_|��D\"��KҽK\'/]}��\��Ч�~v���oH$�\\�\�]:y\�\�\�7\�\�75׹�}��a׷$�D\n4I\'/]}��\�<��\�H$)!�b\�\�3\�\��D\"�H	)\�n\�C�\�5Η=/L?|\�\�5�\��f�\�W�\\\��_?�}�\�%�\�#w]�\�]�=�\�k��Z�\�M_���\�\�w|���\��?�\��O��\��\��\�\�����ג#�\�v\��U�3���u�\�I\�g�\�\r�[7�n���m(1�a\�\�ƍ�7\�_y\�2\�\�{\�\��=]tY9���\�Ԫ��Ww��\�;�f߻k�_���\���k{N\�_y]\�\��\�\�=\�ڪ�c�\���u�\�I;�L�^����\�k6L�\��\�ڍǅ����\�-J��\r\�\�\�u\�vvR��S\�V��\��\�k&Z־+\�X{|\�\�\�[��\�e��f\\VkZ}llg O\�8����#�\�\�ի�l\�`��qB2�t��Gtsdt㤕0\��8\�TCts�Ï�i��;7� J�\�)�\��q\��:�P�H�\'�/չj�R1N>+�X�J�H\�8���\�F�B�b��V\\+V�T��ӊ�J\�J*\�\�L\�\�6\��K\��GR7\�|��D���l\"�=;\��66V\�Z�\�\�mŇw.D`���\�8����p��x[�\�8���K�\�\�8��x\�v\�7N~+^*Y\�\rI\'/]}=�шn\�\�\�Z�\�\�8*.Y���\��m�^\�\�\�\�V.Q�\�)D\�+m�^\�\�\�Íw�z��犗*]��\Z\'\�O\�L�\�\�\�ͧ��u\ZgzzZ��^\�T��\�#L�s\�^/�.]^�*}@m^�n�\�\�]�@���q�_�*��\�8E�x\�}^�q�]q��\��\�89�x��T�q�[qY�qg\�I�o���\�8\"\Zg�\�^\�\�Z\�Ʃ8���*\��Y�������\�џs�ݴ\��X\�\�8�x��\�4N�+~��VtQ�\�\�u\�>��qr]q]\�؛u\Z\'\�WoV��\�iQ��fn!u������1N\�NY��M=;�/��U\�)K\��[+��\�L�c�U���sc�U�z\�\�\�\�\�۽�qrQ�\�J�\�\'_b�x1\�4�(fN�Sg/�xS=��l���\�j;�R\�,9\�Y\�\�\�-3\��8\�_�/(\�\��<�i\�\����4K�\�qr�\�S6N~+����q��_�&D1\�87n\�xy\�\n\�D��q\\�/\�����cQċ\�Ɗ�߲ܭ<͌�ߊ�\�x��\�4�U\�kţK\�*χ\��Z^+^a\�K*^��j��x\�=^��j���b}+ռ\�\\D1sKө3Vvi)\�_|�˖�\�q\��\�|Vc\�N�\�\��� vrM}�|�U\�)\�o��{��T<6�_\�\��=N^*�\nU�ݧ�{��T|1ed�\�V|���x��\�\�M\�\�g*\�\\:��G�\"r������\�T\�CU\\����=\nR��\�9P���ρ�T<�{�\�\�\�s� _�qD+u#\��d�K]y4NAw�\�.7\�冻\�y���G�\"Z�fIc\'N�\��\n\�;�&\�q	\�`��qB5�t���Q�%A7.��b��%��q0\��8Qɲ���\�\��ݯ�}���v\����D\"�HY%\�䥫�\�\"QI-Ƒ��gWk�\�\Z\�!�H��\�-G�!�Q7.]���\Z�\�fվ�\�\�	�D\"�\�Oҽ\�>�&\�}ܒn��N-\�k��?�\���\���B\"�H���t\�\�\�KW_\�dڭ�nt�r�z�\�h�\�k/\�\��?g\�_�zUJ\�H�D\"��IҥK\�.ݻt�\�\�\'�@4!���\�MB\Z;q:\�w:�\��^�?\\��駟~F\"�H� �t\�ұK�.��t�\�, ��\�B\�\�\���\�ށ7�\�GJ\�\�u`���g/�\�\�\�\�\0\0\0ҥK\�.\�{5݈D\r\�?�\\q:u\�o�	\0\0!!:�vϴ�ҍ7N��\�\�w����\0@A�\�_ \"�\�:�t�\�\�G\�O�\�@=\0\0�#]�t�\�\�\�y�O\�3��?�\�\�\�dW��\�\�g�۟\�\���M\�O��	\0\0\n�t\�ҍKg.]�t\�ҽK\'/]}����\��7\nendstream\nendobj\n4 0 obj\n<</Length 218/Filter/FlateDecode>>stream\nx��Q�N\�0�\�+\�q��\�2ʎvˉ[I=V\�4\�m&�{ZҐZaK֓���-���1\Zc\�]�\�\Z����H+��\�!`���U�V\r�\\�aK��d�\�]��`�j�\�xf��m\�$xX.�c$8D��\'vA�\"E\�N	ȐA�\�\�l�MJ�\�ƾ�q�k\�=�\�w�\�7�4�\�.�\�\��6��\�\�Å\�ձ6립|���bZ\�_ya�\��9~�^Ґc�ot\�y�Û�\0��s\nendstream\nendobj\n6 0 obj\n<</Type/Page/MediaBox[0 0 595 842]/Resources<</Font<</F1 3 0 R>>/XObject<</img0 1 0 R/img1 2 0 R>>>>/Contents 4 0 R/Parent 5 0 R>>\nendobj\n3 0 obj\n<</Type/Font/Subtype/Type1/BaseFont/Helvetica/Encoding/WinAnsiEncoding>>\nendobj\n5 0 obj\n<</Type/Pages/Count 1/Kids[6 0 R]>>\nendobj\n7 0 obj\n<</Type/Catalog/Pages 5 0 R>>\nendobj\n8 0 obj\n<</Producer(iText� 5.5.13.2 �2000-2020 iText Group NV \\(AGPL-version\\))/CreationDate(D:20220603165817+03\'00\')/ModDate(D:20220603165817+03\'00\')>>\nendobj\nxref\n0 9\n0000000000 65535 f \n0000000015 00000 n \n0000000353 00000 n \n0000010827 00000 n \n0000010396 00000 n \n0000010915 00000 n \n0000010681 00000 n \n0000010966 00000 n \n0000011011 00000 n \ntrailer\n<</Size 9/Root 7 0 R/Info 8 0 R/ID [<9d507c3fd55bcf78e09eea0f111b85da><9d507c3fd55bcf78e09eea0f111b85da>]>>\n%iText-5.5.13.2\nstartxref\n11171\n%%EOF\n','2022-06-03'),(37,'ORDERS','5555','System','MONTHLY',_binary '5555 Tel-Aviv 02\nProduct 5 Rose Bouquet\nItem 1 Cactus Flower\nProduct 1 Sun Bouquet\nItem 7 Bazil Plant\nProduct 7 Colorful Bouquet\nProduct 10 Holiday Bouqet\nItem 5 Pink Tulip\nProduct 14 Casual Bouquet\nProduct 17 Birth Bouquet\nItem 23 Bride Bouquet','2022-02-26'),(39,'INCOME','5555','System','MONTHLY',_binary '5555 Tel-Aviv 02\nproduct 7 16 5.3\nitem 14 7 23.3\nproduct 25 5 23.3\nitem 4 15 4\nproduct 16 7 5\nitem 27 8 20\nproduct 1 13 20\nitem 19 5 14\nproduct 25 3 2.3\nitem 3 19 2\nproduct 25 1 14\nitem 23 27 53\nitem 12 7 21','2022-02-26'),(40,'INCOME','5555','System','QUARTERLY',_binary '5555 Tel-Aviv 3 2022\nmonth1 item 13 12 24\nmonth1 item 4 8 15\nmonth1 item 27 3 22\nmonth1 item 15 2 4.6\nmonth2 product 12 4 1.3\nmonth2 product 19 8 63\nmonth2 product 24 6 15.3\nmonth2 product 3 4 5\nmonth2 product 2 8 30\nmonth2 product 27 6 13\nmonth3 item 4 34 6\nmonth3 item 12 2 4\nmonth3 item 19 1 67\nmonth3 item 3 4 5\nmonth3 item 8 3 20\nmonth3 item 5 11 4\nmonth3 item 25 4 5.5\nmonth3 item 23 5 4','2022-09-20'),(41,'INCOME','1010','System','MONTHLY',_binary '1010 Karmiel 01\nproduct 27 4 5.3\nitem 17 4 23.3\nproduct 12 10 23.3\nitem 4 15 2\nproduct 16 7 7\nitem 27 5 20\nproduct 5 20 20\nitem 14 8 14\nproduct 25 6 2.3\nitem 17 22 3\nproduct 2 5 14\nitem 7 4 53\nitem 15 10 21','2022-01-10'),(42,'INCOME','1010','System','QUARTERLY',_binary '5555 Karmiel 3 2022\nmonth1 item 6 5 24\nmonth1 item 4 9 15\nmonth1 item 27 6 22\nmonth1 item 15 2 4.6\nmonth1 item 18 3 22\nmonth1 item 2 8 4.6\nmonth2 product 12 4 1.3\nmonth2 product 19 8 63\nmonth2 product 24 6 15.3\nmonth2 product 3 4 5\nmonth2 product 2 8 30\nmonth2 product 5 2 13\nmonth2 product 15 8 1.3\nmonth2 product 12 26 63\nmonth2 product 26 3 15.3\nmonth3 item 5 6 6\nmonth3 item 12 2 4\nmonth3 item 19 1 67\nmonth3 item 3 4 5\nmonth3 item 8 3 20\nmonth3 item 5 11 4\nmonth3 item 25 4 5.5\nmonth3 item 23 5 4\nmonth3 item 7 2 42\nmonth3 item 17 4 5.5\nmonth3 item 13 5 20','2022-03-10'),(43,'ORDERS','1010','System','MONTHLY',_binary '1010 Karmiel 02\nProduct 17 Rose Bouquet\nItem 8 Cactus Flower\nProduct 2 Sun Bouquet\nItem 27 Bazil Plant\nProduct 5 Colorful Bouquet\nProduct 18 Holiday Bouqet\nItem 1 Pink Tulip\nProduct 23 Casual Bouquet\nProduct 14 Birth Bouquet\nItem 28 Bride Bouquet','2021-02-28'),(44,'COMPLAINTS','1010','System','QUARTERLY',_binary '1010 Karmiel 2 2021\n13 6 2 70','2021-06-28'),(45,'COMPLAINTS','5555','System','QUARTERLY',_binary '5555 Tel-Aviv 1 2021\n3 6 2 88.7','2021-03-23');
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serviceexpert`
--

DROP TABLE IF EXISTS `serviceexpert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `serviceexpert` (
  `serviceexpertID` varchar(256) NOT NULL,
  `firstName` varchar(256) DEFAULT NULL,
  `lastName` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `phoneNumber` varchar(256) DEFAULT NULL,
  `accountStatus` enum('CONFIRMED','PENDING_APPROVAL','FROZEN') DEFAULT NULL,
  `isLoggedIn` tinyint DEFAULT NULL,
  PRIMARY KEY (`serviceexpertID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serviceexpert`
--

LOCK TABLES `serviceexpert` WRITE;
/*!40000 ALTER TABLE `serviceexpert` DISABLE KEYS */;
INSERT INTO `serviceexpert` VALUES ('25 ','Lior','Guzovsky','lior@gmaill.com','0549012345','CONFIRMED',0),('5','Mor','Ben-Haim','mor.ben.haim@e.braude.ac.il','0522345678','CONFIRMED',0);
/*!40000 ALTER TABLE `serviceexpert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopworker`
--

DROP TABLE IF EXISTS `shopworker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopworker` (
  `shopworkerID` varchar(256) NOT NULL,
  `firstName` varchar(256) DEFAULT NULL,
  `lastName` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `phoneNumber` varchar(256) DEFAULT NULL,
  `accountStatus` enum('CONFIRMED','PENDING_APPROVAL','FROZEN') DEFAULT NULL,
  `isLoggedIn` tinyint DEFAULT NULL,
  `branchID` varchar(256) DEFAULT NULL,
  `acctivityStatus` enum('SURVEY','GENERAL') DEFAULT NULL,
  PRIMARY KEY (`shopworkerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopworker`
--

LOCK TABLES `shopworker` WRITE;
/*!40000 ALTER TABLE `shopworker` DISABLE KEYS */;
INSERT INTO `shopworker` VALUES ('10','Patrick','Star','patrick@gmaill.com','0544567890','CONFIRMED',0,'1010','SURVEY'),('12','Bob','Sponge','bob@gmaill.com','0504567890','CONFIRMED',0,'1010','SURVEY'),('15','Roni','Hayak','roni@gmaill.com','0505678901','CONFIRMED',0,'5555','SURVEY'),('17','Natalie','Krief','natalie@gmaill.com','0526789012','CONFIRMED',0,'5555','SURVEY'),('19','Bar','Ohayon','bar@gmaill.com','0547890123','CONFIRMED',0,'2525','SURVEY'),('9','Kfir','Amoyal','kfir@gmaill.com','0503456789','CONFIRMED',0,'2525','SURVEY');
/*!40000 ALTER TABLE `shopworker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestions`
--

DROP TABLE IF EXISTS `surveyquestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveyquestions` (
  `topic` varchar(265) NOT NULL,
  `questionNumber` int NOT NULL,
  `question` varchar(265) DEFAULT NULL,
  PRIMARY KEY (`topic`,`questionNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestions`
--

LOCK TABLES `surveyquestions` WRITE;
/*!40000 ALTER TABLE `surveyquestions` DISABLE KEYS */;
INSERT INTO `surveyquestions` VALUES ('Customer Service',1,'How satisfied are you with your in-store experience today?'),('Customer Service',2,'How likely are you to recommend (insert product or service) to others?'),('Customer Service',3,'Rate your satisfaction with our team in resolving your issue.'),('Customer Service',4,'Did you feel that our team answered your inquiry promptly?'),('Customer Service',5,'How likely are you to purchase again from us?'),('Customer Service',6,'How likely are you to return to our system?'),('Sales',1,'Are You Satisfied with the Products in your Order?'),('Sales',2,'Did the price reducing encrouge you to order more from as?'),('Sales',3,'Rate your satisfaction with our price in the sale'),('Sales',4,'Did you feel that our team answered your inquiry promptly?'),('Sales',5,'How likely are you to purchase again from us?'),('Sales',6,'How likely are you to return to our system?'),('Specific Branch',1,'Are You Satisfied with the Products in your Order?'),('Specific Branch',2,'Are you satisfied with the branch quantity? '),('Specific Branch',3,'Did the branch have a wide enough range of products?'),('Specific Branch',4,'What is the availability of the products that were in the branch?'),('Specific Branch',5,'How likely are you to purchase this branch again ?'),('Specific Branch',6,'How likely are you to return to our system?');
/*!40000 ALTER TABLE `surveyquestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveys`
--

DROP TABLE IF EXISTS `surveys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveys` (
  `surveysresultsID` int NOT NULL AUTO_INCREMENT,
  `branchID` varchar(256) DEFAULT NULL,
  `topic` varchar(256) DEFAULT NULL,
  `questionNumber1` int DEFAULT NULL,
  `questionNumber2` int DEFAULT NULL,
  `questionNumber3` int DEFAULT NULL,
  `questionNumber4` int DEFAULT NULL,
  `questionNumber5` int DEFAULT NULL,
  `questionNumber6` int DEFAULT NULL,
  `answerNumber1` int DEFAULT NULL,
  `answerNumber2` int DEFAULT NULL,
  `answerNumber3` int DEFAULT NULL,
  `answerNumber4` int DEFAULT NULL,
  `answerNumber5` int DEFAULT NULL,
  `answerNumber6` int DEFAULT NULL,
  `targetAudience` varchar(256) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`surveysresultsID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveys`
--

LOCK TABLES `surveys` WRITE;
/*!40000 ALTER TABLE `surveys` DISABLE KEYS */;
INSERT INTO `surveys` VALUES (2,'2525','Customer Service',1,2,3,4,5,6,3,2,3,3,3,7,'Customers','2022-05-30'),(3,'2525','Customer Service',1,2,3,4,5,6,3,2,2,2,3,8,'Customer','2022-05-30'),(4,'2525','Sales',1,2,3,4,5,6,2,3,3,4,5,7,'Buy flower On Sales','2022-05-30'),(5,'2525','Customer Service',1,2,3,4,5,6,3,2,2,3,2,7,'Customer','2022-05-30'),(6,'2525','Sales',1,2,3,4,5,6,3,2,2,2,2,2,'Buy flower On Sales','2022-05-30'),(7,'2525','Customer Service',1,2,3,4,5,6,3,3,2,3,2,2,'Customer','2022-05-30'),(8,'2525','Customer Service',1,2,3,4,5,6,2,2,2,6,2,7,'Customer','2022-05-31'),(9,'2525','Customer Service',1,2,3,4,5,6,4,4,4,3,2,2,'Customer','2022-05-31'),(10,'2525','Specific Branch',1,2,3,4,5,6,6,3,3,4,2,7,'Buy flower On this branch','2022-05-31'),(11,'2525','Customer Service',1,2,3,4,5,6,3,1,2,3,2,7,'Customer','2022-05-31'),(12,'2525','CustomerService',1,2,3,4,5,6,2,3,4,3,3,2,'Customer','2022-05-31'),(13,'2525','Customer Service',1,2,3,4,5,6,5,3,3,3,2,7,'Customer','2022-06-05'),(14,'2525','Customer Service',1,2,3,4,5,6,4,3,3,4,3,2,'Customer','2022-06-06');
/*!40000 ALTER TABLE `surveys` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-07 11:14:14
